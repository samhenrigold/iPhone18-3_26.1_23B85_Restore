uint64_t sub_24E04901C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v57 = a1;
  v60 = a2;
  v56 = sub_24E345658();
  v68 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v54 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_24E343AA8();
  v86 = sub_24E343788();
  v87 = v3;
  v58 = sub_24DF90C4C();
  v4 = sub_24E3464E8();
  v6 = v5;
  v8 = v7;
  sub_24E346268();
  v9 = sub_24E3464B8();
  v11 = v10;
  v13 = v12;

  sub_24DFA92EC(v4, v6, v8 & 1);

  v64 = sub_24E346498();
  v61 = v14;
  v62 = v15;
  v17 = v16;
  sub_24DFA92EC(v9, v11, v13 & 1);

  v18 = v54;
  sub_24E045818();
  LOBYTE(v4) = sub_24E345638();
  v19 = *(v68 + 8);
  v68 += 8;
  v55 = v19;
  v20 = v56;
  v19(v18, v56);
  v67 = (v4 & 1) == 0;
  KeyPath = swift_getKeyPath();
  v66 = sub_24E3461F8();
  sub_24E3451B8();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v63 = v17 & 1;
  v110 = v17 & 1;
  v106 = 0;
  v86 = sub_24E3437D8();
  v87 = v29;
  v30 = sub_24E3464E8();
  v32 = v31;
  v34 = v33;
  sub_24E346288();
  v58 = sub_24E3464B8();
  v59 = v35;
  v53 = v36;
  LOBYTE(v6) = v37;

  sub_24DFA92EC(v30, v32, v34 & 1);

  sub_24E045818();
  LOBYTE(v30) = sub_24E345638();
  v55(v18, v20);
  v38 = (v30 & 1) == 0;
  v39 = swift_getKeyPath();
  LOBYTE(v30) = sub_24E3461F8();
  sub_24E3451B8();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LOBYTE(v20) = v6 & 1;
  v105 = v6 & 1;
  v101 = 0;
  v70[0] = v64;
  v70[1] = v61;
  LOBYTE(v70[2]) = v63;
  *(&v70[2] + 1) = *v109;
  HIDWORD(v70[2]) = *&v109[3];
  v70[3] = v62;
  v70[4] = KeyPath;
  LOBYTE(v70[5]) = v67;
  HIDWORD(v70[5]) = *&v108[3];
  *(&v70[5] + 1) = *v108;
  LOBYTE(v70[6]) = v66;
  HIDWORD(v70[6]) = *&v107[3];
  *(&v70[6] + 1) = *v107;
  v70[7] = v22;
  v70[8] = v24;
  v70[9] = v26;
  v70[10] = v28;
  LOBYTE(v70[11]) = 0;
  memcpy(v69, v70, 0x59uLL);
  v49 = v58;
  v48 = v59;
  v50 = v53;
  v71[0] = v58;
  v71[1] = v53;
  LOBYTE(v71[2]) = v20;
  *(&v71[2] + 1) = *v104;
  HIDWORD(v71[2]) = *&v104[3];
  v71[3] = v59;
  v71[4] = v39;
  LOBYTE(v71[5]) = v38;
  *(&v71[5] + 1) = *v103;
  HIDWORD(v71[5]) = *&v103[3];
  LOBYTE(v71[6]) = v30;
  *(&v71[6] + 1) = *v102;
  HIDWORD(v71[6]) = *&v102[3];
  v71[7] = v41;
  v71[8] = v43;
  v71[9] = v45;
  v71[10] = v47;
  LOBYTE(v71[11]) = 0;
  memcpy(&v69[96], v71, 0x59uLL);
  memcpy(v60, v69, 0xB9uLL);
  v72[0] = v49;
  v72[1] = v50;
  v73 = v20;
  *v74 = *v104;
  *&v74[3] = *&v104[3];
  v75 = v48;
  v76 = v39;
  v77 = v38;
  *v78 = *v103;
  *&v78[3] = *&v103[3];
  v79 = v30;
  *v80 = *v102;
  *&v80[3] = *&v102[3];
  v81 = v41;
  v82 = v43;
  v83 = v45;
  v84 = v47;
  v85 = 0;
  sub_24DF95B98(v70, &v86, &qword_27F1E1B18, qword_24E3715C0);
  sub_24DF95B98(v71, &v86, &qword_27F1E1B18, qword_24E3715C0);
  sub_24DFA9298(v72, &qword_27F1E1B18, qword_24E3715C0);
  v86 = v64;
  v87 = v61;
  v88 = v63;
  *v89 = *v109;
  *&v89[3] = *&v109[3];
  v90 = v62;
  v91 = KeyPath;
  v92 = v67;
  *v93 = *v108;
  *&v93[3] = *&v108[3];
  v94 = v66;
  *v95 = *v107;
  *&v95[3] = *&v107[3];
  v96 = v22;
  v97 = v24;
  v98 = v26;
  v99 = v28;
  v100 = 0;
  return sub_24DFA9298(&v86, &qword_27F1E1B18, qword_24E3715C0);
}

uint64_t sub_24E0495AC(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySharingRepromptView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  sub_24E32E900(6, 17, 1, 26, 7, a1 + *(v2 + 48));
  v9 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  sub_24E04AA44(a1, &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E348068();
  v10 = sub_24E348058();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_24E04AAA8(v5, v12 + v11);
  sub_24DFC8700(0, 0, v8, &unk_24E371490, v12);
}

uint64_t sub_24E0497A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = *(type metadata accessor for ActivitySharingRepromptView(0) - 8);
  v4[11] = v5;
  v4[12] = *(v5 + 64);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  v4[14] = swift_task_alloc();
  v4[15] = sub_24E348068();
  v4[16] = sub_24E348058();
  v7 = sub_24E347FF8();
  v4[17] = v7;
  v4[18] = v6;

  return MEMORY[0x2822009F8](sub_24E0498DC, v7, v6);
}

uint64_t sub_24E0498DC()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(v0 + 80);
  v2 = *(v1 + 120);
  *(v0 + 188) = v2;
  v3 = *(v1 + 128);
  *(v0 + 16) = v2;
  *(v0 + 152) = v3;
  *(v0 + 24) = v3;
  *(v0 + 184) = 1;
  *(v0 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B98();
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_24E0499BC;

  return sub_24E049D40(1);
}

uint64_t sub_24E0499BC()
{
  v2 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  if (v0)
  {
    v7 = sub_24E049C54;
  }

  else
  {
    v7 = sub_24E049AF4;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_24E049AF4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 188);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);

  *(v0 + 64) = v2;
  *(v0 + 72) = v1;
  *(v0 + 187) = 0;
  sub_24E346B98();
  v7 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v7);
  sub_24E04AA44(v6, v4);
  v8 = sub_24E348058();
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  sub_24E04AAA8(v4, v10 + v9);
  sub_24DFC8700(0, 0, v3, &unk_24E3714A8, v10);

  OUTLINED_FUNCTION_12_5();

  return v12();
}

uint64_t sub_24E049C54()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 188);
  v4 = *(v0 + 80);

  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  *(v0 + 185) = 0;
  sub_24E346B98();
  v5 = *(v4 + 144);
  *(v0 + 48) = *(v4 + 136);
  *(v0 + 56) = v5;
  *(v0 + 186) = 1;

  sub_24E346B98();

  OUTLINED_FUNCTION_12_5();

  return v6();
}

uint64_t sub_24E049D40(int a1)
{
  *(v1 + 80) = a1;
  *(v1 + 16) = sub_24E348068();
  *(v1 + 24) = sub_24E348058();
  v3 = sub_24E347FF8();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;

  return MEMORY[0x2822009F8](sub_24E049DDC, v3, v2);
}

uint64_t sub_24E049DDC()
{
  v1 = [objc_opt_self() currentDevice];
  if (v1)
  {
    sub_24E1A3838(v1);
    v3 = v2;
    v4 = [objc_opt_self() proxyForLocalPlayer];
    v5 = [v4 accountService];

    if (v3)
    {
      OUTLINED_FUNCTION_19_1();
      v6 = sub_24E347CB8();
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v0 + 80);
    [v5 setLastProfilePrivacyVersionDisplayedForSignedInPlayer_];

    swift_unknownObjectRelease();
    *(v0 + 48) = sub_24E348058();
    v8 = swift_task_alloc();
    *(v0 + 56) = v8;
    *(v8 + 16) = v7;
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_24E049F94;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822008A0](v1);
}

uint64_t sub_24E049F94()
{
  OUTLINED_FUNCTION_9_7();
  v2 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_9_10();
  *v5 = v4;
  v2[9] = v0;

  if (v0)
  {
    v6 = v2[4];
    v7 = v2[5];
    v8 = sub_24E04A108;
  }

  else
  {

    v6 = v2[4];
    v7 = v2[5];
    v8 = sub_24E04A0AC;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_24E04A0AC()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E04A108()
{
  OUTLINED_FUNCTION_9_7();

  OUTLINED_FUNCTION_12_5();

  return v0();
}

uint64_t sub_24E04A178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24E348068();
  *(v4 + 24) = sub_24E348058();
  v6 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E04A210, v6, v5);
}

uint64_t sub_24E04A210()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *(v0 + 16);

  (*(v1 + 104))(v2);
  OUTLINED_FUNCTION_12_5();

  return v3();
}

uint64_t sub_24E04A274@<X0>(uint64_t a1@<X8>)
{
  sub_24E343AA8();
  sub_24E3439C8();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_24E04A2D8(uint64_t a1)
{
  if (qword_27F1DDF20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ActivitySharingRepromptView(0);
  v3 = sub_24E32E900(6, 17, 1, 27, 1, a1 + *(v2 + 48));
  return (*(a1 + 104))(v3);
}

uint64_t sub_24E04A364@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19E0, &qword_24E37DD00);
  MEMORY[0x28223BE20](v33);
  v2 = &v33 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1A10, &qword_24E3714B8);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19D8, &unk_24E371400);
  MEMORY[0x28223BE20](v34);
  v35 = &v33 - v5;
  sub_24E343AA8();
  __src[0] = sub_24E3439F8();
  __src[1] = v6;
  sub_24DF90C4C();
  v7 = sub_24E3464E8();
  v9 = v8;
  v11 = v10;
  sub_24E346288();
  v12 = sub_24E3464B8();
  v14 = v13;
  v16 = v15;

  sub_24DFA92EC(v7, v9, v11 & 1);

  sub_24E3462E8();
  v17 = sub_24E346448();
  v19 = v18;
  LOBYTE(v9) = v20;
  v22 = v21;
  sub_24DFA92EC(v12, v14, v16 & 1);

  __src[0] = v17;
  __src[1] = v19;
  v23 = v9 & 1;
  LOBYTE(__src[2]) = v9 & 1;
  __src[3] = v22;
  v24 = *MEMORY[0x277CDF998];
  v25 = sub_24E345658();
  (*(*(v25 - 8) + 104))(v2, v24, v25);
  sub_24E04B790(&qword_27F1E1A18, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24E347CA8();
  if (result)
  {
    sub_24DFB4C28(&qword_27F1E19E8, &qword_27F1E19E0, &qword_24E37DD00, MEMORY[0x277D84470]);
    v27 = v36;
    sub_24E346678();
    sub_24DFA9298(v2, &qword_27F1E19E0, &qword_24E37DD00);
    sub_24DFA92EC(v17, v19, v23);

    sub_24E346E28();
    sub_24E3457F8();
    v28 = v35;
    (*(v37 + 32))(v35, v27, v38);
    memcpy(&v28[*(v34 + 36)], __src, 0x70uLL);
    v29 = sub_24E3461E8();
    v30 = v28;
    v31 = v39;
    sub_24E04B898(v30, v39, &qword_27F1E19D8, &unk_24E371400);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E19C0, &qword_24E3713F8);
    v32 = v31 + *(result + 36);
    *v32 = v29;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    *(v32 + 40) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_24E04A7D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = [objc_opt_self() proxyForLocalPlayer];
  v9 = [v8 profileServicePrivate];

  (*(v5 + 16))(v7, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v7, v4);
  aBlock[4] = sub_24E04B700;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_23;
  v12 = _Block_copy(aBlock);

  [v9 setProfilePrivacy:a2 handler:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24E04A9CC(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
    return sub_24E348008();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
    return sub_24E348018();
  }
}

uint64_t sub_24E04AA44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingRepromptView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E04AAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingRepromptView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E04AB0C(uint64_t a1)
{
  v3 = type metadata accessor for ActivitySharingRepromptView(0);
  OUTLINED_FUNCTION_4_5(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_24E045BC4(a1, v5);
}

void sub_24E04ABE4(uint64_t a1)
{
  sub_24DFA1058();
  if (v1 <= 0x3F)
  {
    sub_24E02FD6C();
    if (v2 <= 0x3F)
    {
      sub_24DFB4374(319);
      if (v3 <= 0x3F)
      {
        sub_24E04ACC8(319);
        if (v4 <= 0x3F)
        {
          sub_24E347638();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E04ACC8(uint64_t a1)
{
  if (!qword_27F1DF770)
  {
    sub_24E345658();
    v1 = sub_24E345278();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1DF770);
    }
  }
}

unint64_t sub_24E04AD20()
{
  result = qword_27F1E1960;
  if (!qword_27F1E1960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1948, &qword_24E371318);
    sub_24E04ADAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1960);
  }

  return result;
}

unint64_t sub_24E04ADAC()
{
  result = qword_27F1E1968;
  if (!qword_27F1E1968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1940, &qword_24E371310);
    sub_24E04AE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1968);
  }

  return result;
}

unint64_t sub_24E04AE38()
{
  result = qword_27F1E1970;
  if (!qword_27F1E1970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1930, &qword_24E371300);
    sub_24DFB4C28(&qword_27F1E1978, &qword_27F1E1980, &qword_24E3713B8, MEMORY[0x277CDF7D8]);
    sub_24DFB4C28(&qword_27F1E1988, &qword_27F1E1938, &qword_24E371308, MEMORY[0x277CE01C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1970);
  }

  return result;
}

unint64_t sub_24E04AF34()
{
  result = qword_27F1E19C8;
  if (!qword_27F1E19C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E19C0, &qword_24E3713F8);
    sub_24E04AFC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E19C8);
  }

  return result;
}

unint64_t sub_24E04AFC0()
{
  result = qword_27F1E19D0;
  if (!qword_27F1E19D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E19D8, &unk_24E371400);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E19E0, &qword_24E37DD00);
    sub_24DFB4C28(&qword_27F1E19E8, &qword_27F1E19E0, &qword_24E37DD00, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E19D0);
  }

  return result;
}

uint64_t sub_24E04B0D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24E345AF8();
  *a1 = result & 1;
  return result;
}

unint64_t sub_24E04B128()
{
  result = qword_27F1E19F8;
  if (!qword_27F1E19F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E19F8);
  }

  return result;
}

unint64_t sub_24E04B194()
{
  result = qword_27F1E1A00;
  if (!qword_27F1E1A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1A00);
  }

  return result;
}

uint64_t sub_24E04B23C()
{
  v1 = type metadata accessor for ActivitySharingRepromptView(0);
  OUTLINED_FUNCTION_4_5(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_23_10(v2);

  return sub_24E0497A8(v3, v4, v5, v6);
}

uint64_t sub_24E04B314()
{
  OUTLINED_FUNCTION_9_7();
  v1 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;

  OUTLINED_FUNCTION_12_5();

  return v3();
}

uint64_t objectdestroy_37Tm_0()
{
  OUTLINED_FUNCTION_32();
  type metadata accessor for ActivitySharingRepromptView(0);
  OUTLINED_FUNCTION_3_13();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;

  v6 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24E345F38();
    if (!OUTLINED_FUNCTION_18_11(v7))
    {
      OUTLINED_FUNCTION_22_0();
      (*(v8 + 8))(v5 + v6, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_13();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24E345F38();
    if (!OUTLINED_FUNCTION_20_11(v9))
    {
      OUTLINED_FUNCTION_22_0();
      v10 = OUTLINED_FUNCTION_16_13();
      v11(v10);
    }
  }

  else
  {
  }

  v12 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_0_26();
    (*(v13 + 8))(v5 + v12);
  }

  else
  {
  }

  v14 = v0[12];
  sub_24E347638();
  OUTLINED_FUNCTION_0_26();
  (*(v15 + 8))(v5 + v14);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v16, v17, v18);
}

uint64_t sub_24E04B620()
{
  v1 = type metadata accessor for ActivitySharingRepromptView(0);
  OUTLINED_FUNCTION_4_5(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = OUTLINED_FUNCTION_23_10(v2);

  return sub_24E04A178(v3, v4, v5, v6);
}

uint64_t sub_24E04B700(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EAA40, &qword_24E3714B0);
  OUTLINED_FUNCTION_4_5(v2);

  return sub_24E04A9CC(a1);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E04B790(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E04B7E0()
{
  result = qword_27F1E1A28;
  if (!qword_27F1E1A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1A20, &qword_24E3714C8);
    sub_24DFB4C28(&qword_27F1E1A30, &qword_27F1E1A38, &qword_24E3714D0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1A28);
  }

  return result;
}

uint64_t sub_24E04B898(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_11_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_5_2();
  v5 = OUTLINED_FUNCTION_19_1();
  v6(v5);
  return v4;
}

unint64_t sub_24E04B8E4()
{
  result = qword_27F1E1A98;
  if (!qword_27F1E1A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1A90, &qword_24E371528);
    sub_24E04B970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1A98);
  }

  return result;
}

unint64_t sub_24E04B970()
{
  result = qword_27F1E1AA0;
  if (!qword_27F1E1AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E1AA8, &qword_24E371530);
    sub_24DFB4C28(&qword_27F1E1AB0, &qword_27F1E1AB8, &qword_24E371538, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1AA0);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  OUTLINED_FUNCTION_32();
  type metadata accessor for ActivitySharingRepromptView(0);
  OUTLINED_FUNCTION_3_13();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A0, &qword_24E36B070);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24E345F38();
    if (!OUTLINED_FUNCTION_18_11(v6))
    {
      OUTLINED_FUNCTION_22_0();
      (*(v7 + 8))(v4 + v5, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_13();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_24E345F38();
    if (!OUTLINED_FUNCTION_20_11(v8))
    {
      OUTLINED_FUNCTION_22_0();
      v9 = OUTLINED_FUNCTION_16_13();
      v10(v9);
    }
  }

  else
  {
  }

  v11 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF940, &qword_24E36BCD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24E345658();
    OUTLINED_FUNCTION_0_26();
    (*(v12 + 8))(v4 + v11);
  }

  else
  {
  }

  v13 = v0[12];
  sub_24E347638();
  OUTLINED_FUNCTION_0_26();
  (*(v14 + 8))(v4 + v13);
  OUTLINED_FUNCTION_18();

  return MEMORY[0x2821FE8E8](v15, v16, v17);
}

uint64_t sub_24E04BC44(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for ActivitySharingRepromptView(0);
  OUTLINED_FUNCTION_4_5(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

uint64_t OUTLINED_FUNCTION_18_11(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_19_11()
{

  return type metadata accessor for ActivitySharingRepromptView(0);
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_22_9@<X0>(uint64_t a1@<X8>)
{

  return sub_24DF95B98(v1 + a1, v2, v3, v4);
}

uint64_t sub_24E04BD50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CC0, &qword_24E36D988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24E36D920;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 56) = 0x6E6564646968;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 80) = 0x49726564724F6E6FLL;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 104) = 0x4F726564724F6E6FLL;
  *(inited + 112) = 0xEA00000000007475;
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 128) = 0x726579616C627573;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 152) = 0x73746E65746E6F63;
  *(inited + 160) = 0xE800000000000000;
  *(inited + 168) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  *(inited + 176) = 0x73646E756F62;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BE0, &qword_24E36D980);
  result = sub_24E347C28();
  qword_27F1E1B20 = result;
  return result;
}

void sub_24E04BF24()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1EA7D0, &unk_24E36C0E0);
  OUTLINED_FUNCTION_0_14();
  v52 = v16;
  v53 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_3();
  v51 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CD0, &unk_24E36D1A0);
  OUTLINED_FUNCTION_0_14();
  v48 = v20;
  v49 = v19;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_15_3();
  v47 = v22;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_launchContext) = 13;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_retryAfterAuthentication) = 0;
  v23 = OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_clippingLayer;
  *(v0 + v23) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v24 = OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_badgeablePhotoView;
  v25 = objc_allocWithZone(type metadata accessor for BadgeablePlayerPhotoView());
  *(v0 + v24) = OUTLINED_FUNCTION_6_28(v25, sel_initWithFrame_);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_navigationBarBadgeablePhotoView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_profileBadgeCount) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController__rootController) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController__specifier) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_request) = v2;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter) = v14;
  v55 = v12;
  sub_24DF9DEAC(v12, v56, &qword_27F1E1B70, qword_24E3756A0);

  v26 = v14;

  v54 = v2;
  swift_unknownObjectRetain();
  sub_24E171C64();
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E9810, &qword_24E371680);
  OUTLINED_FUNCTION_1_30(v29);
  v30 = v28;
  v56[0] = sub_24E347578();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CE0, &unk_24E36C110);
  OUTLINED_FUNCTION_1_30(v31);
  sub_24DFB4C28(&qword_27F1E9820, &unk_27F1E9810, &qword_24E371680, MEMORY[0x277D22080]);
  v50 = v26;
  *&v30[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_statePresenter] = sub_24E344898();

  v32 = v30;
  if (v2)
  {
    v33 = [v54 gameRecord];
  }

  else
  {
    v33 = 0;
  }

  sub_24DF9DEAC(v55, v56, &qword_27F1E1B70, qword_24E3756A0);
  v34 = objc_allocWithZone(type metadata accessor for BootstrapPresenter());
  v46 = v33;
  v35 = v32;

  swift_unknownObjectRetain();

  v36 = v35;
  v37 = sub_24E190B5C(v32, v56, v33, v8, v6, v4, v10);
  v38 = swift_allocObject();
  *(v38 + 24) = &off_28611E878;
  OUTLINED_FUNCTION_34_3(v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CF0, &unk_24E36C120);
  OUTLINED_FUNCTION_10_9();
  sub_24DFB4C28(v39, &unk_27F1E1CF0, &unk_24E36C120, v40);
  sub_24E347198();
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v56);
  (*(v48 + 8))(v47, v49);
  v41 = swift_allocObject();
  *(v41 + 24) = &off_28611E878;
  OUTLINED_FUNCTION_34_3(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D00, &qword_24E375EB0);
  sub_24DFB4C28(&qword_27F1DFB18, &unk_27F1E1D00, &qword_24E375EB0, v34);
  sub_24E347198();
  sub_24E3471B8();

  __swift_destroy_boxed_opaque_existential_1(v56);
  (*(v52 + 8))(v51, v53);

  v42 = *&v36[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter];
  *&v36[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter] = v37;

  v43 = [v36 navigationItem];
  sub_24E343AA8();
  v44 = sub_24E343648();
  sub_24DFF79C8(v44, v45, v43);

  swift_unknownObjectRelease();

  sub_24DF8C95C(v55, &qword_27F1E1B70, qword_24E3756A0);
  OUTLINED_FUNCTION_18();
}

id JetDashboardViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void JetDashboardViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_launchContext) = 13;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_retryAfterAuthentication) = 0;
  v1 = OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_clippingLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  v2 = OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_badgeablePhotoView;
  v3 = objc_allocWithZone(type metadata accessor for BadgeablePlayerPhotoView());
  *(v0 + v2) = OUTLINED_FUNCTION_6_28(v3, sel_initWithFrame_);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_navigationBarBadgeablePhotoView) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_profileBadgeCount) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController__rootController) = 0;
  *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController__specifier) = 0;
  sub_24E348AE8();
  __break(1u);
}

void JetDashboardViewController.__allocating_init(launchContext:request:navigationProxy:)()
{
  OUTLINED_FUNCTION_32();
  v55 = v0;
  v56 = v4;
  v57 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v53 = v10;
  OUTLINED_FUNCTION_18_1();
  sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v49 = v12;
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v52 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  OUTLINED_FUNCTION_0_14();
  v48 = v16;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  v54 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_0_14();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_21();
  MEMORY[0x28223BE20](v21);
  v58 = &v45 - v22;
  OUTLINED_FUNCTION_18_1();
  v46 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27_6();
  v51 = *v7;
  if (qword_27F1DDF20 != -1)
  {
    OUTLINED_FUNCTION_4_34(&qword_27F1DDF20);
  }

  v26 = qword_27F20B960;
  sub_24E3477D8();
  v47 = v26;
  sub_24E32EA08();
  v27 = sub_24E3477C8();
  sub_24E343C98();

  v28 = sub_24E343F78();
  v29 = sub_24E348248();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v45 = v19;
    v19 = v15;
    v15 = v30;
    *v30 = 134217984;
    sub_24E3477B8();
    *(v15 + 4) = v31;
    OUTLINED_FUNCTION_31_4(&dword_24DE53000, v32, v33, "Impressionable threshold returned to impressionTracker: %f");
    OUTLINED_FUNCTION_17_12();
  }

  (*(v24 + 8))(v2, v46);
  sub_24E347628();
  v59[0] = v27;
  v59[1] = MEMORY[0x277D221C0];

  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  v34 = v58;
  sub_24E3475B8();
  (*(v48 + 8))(v1, v15);

  v48 = *(v19 + 8);
  v35 = v54;
  (v48)(v3, v54);
  (*(v49 + 16))(v52, v47 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v50);
  (*(v19 + 16))(v3, v34, v35);
  v36 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v53, 1, 1, v36);
  v37 = sub_24E3476A8();
  OUTLINED_FUNCTION_1_30(v37);
  OUTLINED_FUNCTION_16_14();
  v38 = v51;
  LOBYTE(v59[0]) = v51;
  v39 = objc_allocWithZone(type metadata accessor for DashboardPresenter(0));
  v40 = v56;

  sub_24E264C14();
  v41 = v57;
  sub_24DF9DEAC(v57, v59, &qword_27F1E1B70, qword_24E3756A0);
  v42 = objc_allocWithZone(v55);
  OUTLINED_FUNCTION_13_20();
  sub_24E04BF24();
  v44 = v43;
  sub_24DF8C95C(v41, &qword_27F1E1B70, qword_24E3756A0);
  (v48)(v58, v35);
  *(v44 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_launchContext) = v38;
  OUTLINED_FUNCTION_18();
}

void JetDashboardViewController.__allocating_init(nibName:bundle:launchContext:request:)()
{
  OUTLINED_FUNCTION_32();
  v56 = v0;
  v57 = v4;
  v6 = v5;
  v58 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E6C60, &unk_24E36C0F0);
  OUTLINED_FUNCTION_4_5(v8);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v54 = v10;
  OUTLINED_FUNCTION_18_1();
  sub_24E347388();
  OUTLINED_FUNCTION_0_14();
  v50 = v12;
  v51 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_7_1();
  v53 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  OUTLINED_FUNCTION_0_14();
  v47 = v16;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  v55 = OUTLINED_FUNCTION_30_6();
  OUTLINED_FUNCTION_0_14();
  v49 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_21();
  MEMORY[0x28223BE20](v20);
  v48 = &v45 - v21;
  OUTLINED_FUNCTION_18_1();
  v22 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27_6();

  v52 = *v6;
  if (qword_27F1DDF20 != -1)
  {
    OUTLINED_FUNCTION_4_34(&qword_27F1DDF20);
  }

  v26 = qword_27F20B960;
  sub_24E3477D8();
  v46 = v26;
  sub_24E32EA08();
  v27 = sub_24E3477C8();
  sub_24E343C98();

  v28 = sub_24E343F78();
  v29 = sub_24E348248();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v45 = v22;
    v22 = v15;
    v15 = v30;
    *v30 = 134217984;
    sub_24E3477B8();
    *(v15 + 4) = v31;
    OUTLINED_FUNCTION_31_4(&dword_24DE53000, v32, v33, "Impressionable threshold nib init returned to impressionTracker: %f");
    OUTLINED_FUNCTION_17_12();
  }

  (*(v24 + 8))(v2, v22);
  sub_24E347628();
  *&v59 = v27;
  *(&v59 + 1) = MEMORY[0x277D221C0];

  sub_24E3475D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  v34 = v48;
  sub_24E3475B8();
  (*(v47 + 8))(v1, v15);

  v35 = v49;
  v36 = *(v49 + 8);
  v37 = v55;
  v36(v3, v55);
  (*(v50 + 16))(v53, v46 + OBJC_IVAR____TtC12GameCenterUI9GKMetrics_pipeline, v51);
  (*(v35 + 16))(v3, v34, v37);
  v38 = sub_24E347118();
  __swift_storeEnumTagSinglePayload(v54, 1, 1, v38);
  v39 = sub_24E3476A8();
  OUTLINED_FUNCTION_1_30(v39);
  OUTLINED_FUNCTION_16_14();
  v40 = v52;
  LOBYTE(v59) = v52;
  v41 = objc_allocWithZone(type metadata accessor for DashboardPresenter(0));
  v42 = v57;

  sub_24E264C14();
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  objc_allocWithZone(v56);

  OUTLINED_FUNCTION_13_20();
  sub_24E04BF24();
  v44 = v43;

  v36(v34, v37);
  *(v44 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_launchContext) = v40;
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E04D118(void *a1)
{
  type metadata accessor for DashboardPresenter(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter);
    *(v1 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter) = v3;
  }

  else
  {

    v3 = sub_24E348AE8();
    __break(1u);
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

void sub_24E04D1C8()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_profileBadgeCount;
  [*(*(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_badgeablePhotoView) + OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeContainerView) setHidden_];
  sub_24E216950();
  v2 = *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_navigationBarBadgeablePhotoView);
  if (v2)
  {
    v3 = *(v0 + v1) == 0;
    v4 = *(v2 + OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeContainerView);

    [v4 setHidden_];
  }
}

Swift::Void __swiftcall JetDashboardViewController.viewDidLoad()()
{
  v2 = v0;
  ObjectType = swift_getObjectType();
  v4 = sub_24E343EE8();
  OUTLINED_FUNCTION_0_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27_6();
  v48.receiver = v2;
  v48.super_class = ObjectType;
  objc_msgSendSuper2(&v48, sel_viewDidLoad);
  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32(&qword_27F1DD988);
  }

  v8 = sub_24E343F18();
  __swift_project_value_buffer(v8, qword_27F20B110);
  sub_24E343ED8();
  v9 = sub_24E343EF8();
  v10 = sub_24E348408();
  if (sub_24E348688())
  {
    v11 = OUTLINED_FUNCTION_41_2();
    *v11 = 0;
    v12 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v9, v10, v12, "JetDashboardViewController_viewDidLoad", "", v11, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  (*(v6 + 8))(v1, v4);
  v13 = *&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter];
  sub_24E260410();

  v14 = OUTLINED_FUNCTION_23_12();
  [v14 setBackButtonDisplayMode_];

  v15 = [v2 navigationController];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 navigationBar];

    [v17 setBarStyle_];
  }

  v18 = *&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_badgeablePhotoView];
  v19 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_photoView;
  [*(v18 + OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_photoView) setUserInteractionEnabled_];
  [*(v18 + v19) setDelegate_];
  [*(v18 + v19) setFocusable_];
  ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
  v21 = [v2 navigationController];
  v22 = v21;
  if (ShouldUsePadUI)
  {
    if (v21)
    {
      v23 = [v21 navigationBar];

      [v23 setPrefersLargeTitles_];
    }

    v24 = OUTLINED_FUNCTION_6_28(objc_allocWithZone(MEMORY[0x277D75D18]), sel_initWithFrame_);
    [v24 addSubview_];
    v25 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    v26 = OUTLINED_FUNCTION_23_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_24E369990;
    *(v27 + 32) = v25;
    v28 = v25;
    sub_24E052820(v27, v26);

    v29 = OUTLINED_FUNCTION_23_12();
    [v29 setLargeTitleDisplayMode_];
  }

  else
  {
    if (v21)
    {
      v30 = [v21 navigationBar];

      [v30 setPrefersLargeTitles_];
    }

    v31 = OUTLINED_FUNCTION_23_12();
    [v31 _setLargeTitleAccessoryView_alignToBaseline_horizontalAlignment_];

    v29 = OUTLINED_FUNCTION_23_12();
    [v29 setLargeTitleDisplayMode_];
  }

  v32 = *&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_clippingLayer];
  if (qword_27F1DD780 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BE0, &qword_24E36D980);
  v33 = sub_24E347BE8();
  [v32 setActions_];

  [v32 setAnchorPoint_];
  v34 = [objc_opt_self() blackColor];
  v35 = [v34 CGColor];

  [v32 setBackgroundColor_];
  v36 = [v2 collectionView];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 layer];

    [v38 setMask_];
    v39 = *&v2[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_bootstrapPresenter];
    if (v39)
    {
      v40 = v39;
      sub_24E19116C(v40, v41, v42, v43, v44, v45, v46, v47);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Void __swiftcall JetDashboardViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v6 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7_1();
  OUTLINED_FUNCTION_27_6();
  v23.receiver = v3;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, sel_viewWillAppear_, a1);
  v10 = OUTLINED_FUNCTION_22_10();
  [v10 setBackButtonDisplayMode_];

  v11 = [v3 navigationController];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 navigationBar];

    [v13 setBarStyle_];
  }

  v14 = OUTLINED_FUNCTION_22_10();
  [v14 setLargeTitleDisplayMode_];

  v15 = OUTLINED_FUNCTION_22_10();
  v16 = *&v3[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_badgeablePhotoView];
  [v15 _setLargeTitleAccessoryView_alignToBaseline_horizontalAlignment_];

  v17 = OUTLINED_FUNCTION_22_10();
  [v17 setIsAccessibilityElement_];

  v18 = OUTLINED_FUNCTION_22_10();
  sub_24DFD8050(0xD000000000000026, 0x800000024E3A2E90, v18);

  [v16 setIsAccessibilityElement_];
  sub_24DFD8050(0xD000000000000025, 0x800000024E3A2EC0, v16);
  if (sub_24E04DB4C())
  {
    sub_24E343C88();
    v19 = sub_24E343F78();
    v20 = sub_24E348238();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_41_2();
      *v21 = 0;
      _os_log_impl(&dword_24DE53000, v19, v20, "Dashboard: Appearing after the the deeplinked view is popped. Fetching the feed data if not already fetched...", v21, 2u);
      OUTLINED_FUNCTION_22_4();
    }

    (*(v8 + 8))(v2, v6);
    v22 = *&v3[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter];
    sub_24E2604EC(0);
  }
}

void *sub_24E04DB4C()
{
  result = *&v0[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_request];
  if (result)
  {
    v2 = [result state];
    if (v2 == -1 || v2 == 4)
    {
      return 0;
    }

    else
    {
      return ([v0 isMovingToParentViewController] ^ 1);
    }
  }

  return result;
}

Swift::Void __swiftcall JetDashboardViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillDisappear_, a1);
  v3 = [v1 presentedViewController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

Swift::Void __swiftcall JetDashboardViewController.willMove(toParent:)(UIViewController_optional *toParent)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  [(UIViewController_optional *)&v3 willMoveToParentViewController:toParent];
  if (!toParent)
  {
    if (qword_27F1DD990 != -1)
    {
      swift_once();
    }

    sub_24E1D7A70();
  }
}

Swift::Void __swiftcall JetDashboardViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1);
  if (!a1)
  {
    v3 = [v1 collectionView];
    if (v3)
    {
      v4 = v3;
      sub_24E010F0C(v3);
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall JetDashboardViewController.viewDidLayoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLayoutSubviews);
  sub_24E04DEEC();
}

void sub_24E04DEEC()
{
  v1 = v0;
  v2 = type metadata accessor for PlayerCardTheme(0);
  MEMORY[0x28223BE20](v2);
  v4 = v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F1DE118 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v2, qword_27F20BF00);
  sub_24E052A30(v5, v4);
  v6 = [v1 traitCollection];
  v7 = [v1 collectionView];
  if (!v7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = v7;
  v9 = objc_allocWithZone(type metadata accessor for CollectionViewLayoutEnvironment());
  v10 = sub_24E12AAC0(v8);
  sub_24E0D03A0(v6, v10);
  v12 = v11;

  sub_24E052A94(v4);
  v13 = [v1 view];
  if (!v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = v13;
  [v13 safeAreaInsets];

  v15 = [v1 view];
  if (!v15)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v16 = v15;
  [v15 safeAreaInsets];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = v17;
  [v17 bounds];
  v20 = v19;

  v21 = *&v1[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_clippingLayer];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v23 = v22;
  v62[1] = v20;
  v62[2] = v12;
  [v22 safeAreaInsets];

  v24 = [v1 view];
  if (!v24)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v63.origin.x = v27;
  v63.origin.y = v29;
  v63.size.width = v31;
  v63.size.height = v33;
  CGRectGetMinY(v63);
  v34 = [v1 collectionView];
  if (!v34)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v35 = v34;
  [v34 contentSize];

  v36 = [v1 view];
  if (!v36)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v37 = v36;
  [v36 bounds];

  [v21 setFrame_];
  sub_24E171FBC();
  v39 = v38;
  v40 = [v1 collectionView];
  if (!v40)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v41 = v40;
  [v40 frame];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;

  v64.origin.x = v43;
  v64.origin.y = v45;
  v64.size.width = v47;
  v64.size.height = v49;
  v50 = v39 + CGRectGetMinX(v64);
  if (GKIsPadUIIdiom() || (v51 = v50, GKIsXRUIIdiomShouldUsePadUI()))
  {
    v51 = v50;
    if (sub_24E1742B8())
    {
      v52 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
      swift_beginAccess();
      v53 = *&v1[v52];
      if (v53)
      {
        [v53 frame];
        Width = CGRectGetWidth(v65);
        ShouldUsePadUI = GKIsXRUIIdiomShouldUsePadUI();
        v56 = 22.0;
        if (ShouldUsePadUI)
        {
          v56 = 12.0;
        }

        v51 = Width + v56;
        goto LABEL_19;
      }

LABEL_31:
      __break(1u);
      return;
    }
  }

LABEL_19:
  v57 = [v1 navigationItem];
  if (qword_27F1DDC28 != -1)
  {
    swift_once();
  }

  v58 = sub_24E3444F8();
  __swift_project_value_buffer(v58, qword_27F20B488);
  sub_24E3444E8();
  v60 = v59;
  sub_24E3444E8();
  [v57 setLargeTitleInsets_];
}

Swift::Void __swiftcall JetDashboardViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v3 = v1;
  isa = a1.value.super.isa;
  v21.receiver = v3;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_traitCollectionDidChange_, isa);
  v5 = *&v3[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter];
  v6 = OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView;
  v7 = v5[OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView];
  v8 = v5;
  OUTLINED_FUNCTION_25_9();
  if (v7 != (sub_24E1742B8() & 1))
  {
    v5[v6] = sub_24E1742B8() & 1;
    sub_24E263294();
  }

  v9 = [v3 traitCollection];
  v10 = [v9 userInterfaceIdiom];

  if (!v10 || (ShouldUsePhoneUI = GKIsXRUIIdiomShouldUsePhoneUI(), ShouldUsePhoneUI))
  {
    sub_24E04E628(ShouldUsePhoneUI);
  }

  if (sub_24E1742B8())
  {
    v12 = [v3 collectionView];
    if (!v12)
    {
      __break(1u);
      goto LABEL_15;
    }

    v13 = v12;
    [v12 setAlwaysBounceVertical_];
  }

  v14 = OBJC_IVAR____TtC12GameCenterUI28BaseCollectionViewController_overlayView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v15 = *&v3[v14];
  if (v15)
  {
    type metadata accessor for ErrorView();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = v16;
      v18 = v15;
      v19 = [v3 view];
      if (v19)
      {
        v20 = v19;
        [v19 frame];

        sub_24E3484F8();
        [v17 setFrame_];

        return;
      }

LABEL_15:
      __break(1u);
    }
  }
}

void sub_24E04E628(uint64_t a1)
{
  v2 = v1;
  if ((sub_24E1742B8() & 1) != 0 || GKIsXRUIIdiomShouldUsePhoneUI())
  {
    v3 = [objc_allocWithZone(type metadata accessor for BadgeablePlayerPhotoView()) initWithFrame_];
    v4 = OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_photoView;
    v5 = *&v3[OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_photoView];
    v6 = objc_opt_self();
    v7 = v5;
    v8 = [v6 local];
    [v7 setPlayer_];

    [*&v3[v4] setFocusable_];
    [*&v3[v4] setUserInteractionEnabled_];
    [*&v3[v4] setDelegate_];
    [*&v3[OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeContainerView] setHidden_];
    [*&v3[OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_badgeLabel] setHidden_];
    v9 = *&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_navigationBarBadgeablePhotoView];
    *&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_navigationBarBadgeablePhotoView] = v3;
    v10 = v3;

    v33 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    v11 = [v33 customView];
    if (v11)
    {
      v12 = v11;
      [v11 setTranslatesAutoresizingMaskIntoConstraints_];
    }

    v13 = [v2 navigationItem];
    v14 = [v13 rightBarButtonItem];

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_24E369990;
      *(v15 + 32) = v14;
      v34 = v15;
      v16 = v14;
      v17 = v33;
      MEMORY[0x25303EA30]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24E347F48();
      }

      sub_24E347F88();
      v18 = [v2 navigationItem];
      sub_24E052820(v34, v18);
    }

    v19 = [v33 customView];
    if (v19)
    {
      v20 = v19;
      v21 = [v19 widthAnchor];

      v22 = [v21 constraintEqualToConstant_];
      [v22 setActive_];
    }

    v23 = [v33 customView];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 heightAnchor];

      v26 = [v25 constraintEqualToConstant_];
      [v26 setActive_];
    }

    goto LABEL_14;
  }

  v27 = sub_24E05F2EC([v1 navigationItem]);
  if (!v27)
  {
    return;
  }

  v28 = v27;
  if (sub_24DFD8654())
  {
    sub_24DFFA844();
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x25303F560](0, v28);
    }

    else
    {
      v29 = *(v28 + 32);
    }

    v30 = v29;

    v33 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_24E369990;
    *(v31 + 32) = v30;
    v32 = v30;
    sub_24E052820(v31, v33);

LABEL_14:

    return;
  }
}

void sub_24E04EB6C()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v102 = v2;
  ObjectType = swift_getObjectType();
  v91 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v90 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v89 = v6 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1C28, &unk_24E371650);
  OUTLINED_FUNCTION_0_14();
  v96 = v8;
  v97 = v7;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_15_3();
  v95 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C30, &unk_24E36C0A0);
  OUTLINED_FUNCTION_0_14();
  v93 = v12;
  v94 = v11;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_15_3();
  v92 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CA0, &unk_24E36BFD0);
  OUTLINED_FUNCTION_0_14();
  v100 = v16;
  v101 = v15;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_15_3();
  v99 = v18;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C40, &unk_24E375E80);
  OUTLINED_FUNCTION_0_14();
  v20 = v19;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v89 - v22;
  v24 = sub_24E343EE8();
  OUTLINED_FUNCTION_0_14();
  v26 = v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7_1();
  v30 = v29 - v28;
  if (qword_27F1DD988 != -1)
  {
    OUTLINED_FUNCTION_5_32(&qword_27F1DD988);
  }

  v31 = sub_24E343F18();
  __swift_project_value_buffer(v31, qword_27F20B110);
  sub_24E343ED8();
  v32 = sub_24E343EF8();
  v33 = sub_24E348408();
  if (sub_24E348688())
  {
    v34 = OUTLINED_FUNCTION_41_2();
    *v34 = 0;
    v35 = sub_24E343EC8();
    _os_signpost_emit_with_name_impl(&dword_24DE53000, v32, v33, v35, "JetDashboardViewController_onDidFinishBootstrapping", "", v34, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  (*(v26 + 8))(v30, v24);
  v36 = OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CC0, &unk_24E36FA60);
  OUTLINED_FUNCTION_10_9();
  sub_24DFB4C28(v37, &unk_27F1E6CC0, &unk_24E36FA60, v38);

  sub_24E347198();
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_15_13();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v104);
  (*(v20 + 8))(v23, v98);
  sub_24E287BB0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6CB0, qword_24E381AB0);
  sub_24DFB4C28(&unk_27F1E1C60, &unk_27F1E6CB0, qword_24E381AB0, v24);
  sub_24E347198();
  OUTLINED_FUNCTION_14_13();
  v39 = v99;
  OUTLINED_FUNCTION_15_13();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v104);
  (*(v100 + 8))(v39, v101);

  v40 = OUTLINED_FUNCTION_21_9();
  if (!v40)
  {
    __break(1u);
    goto LABEL_25;
  }

  v41 = v40;
  sub_24E1E086C();

  v42 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  OUTLINED_FUNCTION_8_11();
  swift_beginAccess();
  v43 = *(v0 + v42);
  v44 = v102;
  if (!v43)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v45 = v43;
  sub_24E1E086C();

  if (!OUTLINED_FUNCTION_21_9())
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_21_2();
  v46 = swift_allocObject();
  OUTLINED_FUNCTION_34_3(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E97E0, &unk_24E371660);
  objc_allocWithZone(v47);
  v48 = sub_24E344CB8();
  v49 = OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource;
  v50 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource) = v48;

  v51 = *(v0 + v42);
  if (!v51)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_21_2();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_34_3(v52);
  objc_allocWithZone(v47);
  v53 = v51;
  v54 = sub_24E344CB8();
  v55 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource;
  v56 = *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource);
  *(v0 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource) = v54;

  v57 = OUTLINED_FUNCTION_21_9();
  if (!v57)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v58 = *(v0 + v49);
  if (!v58)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v59 = v57;
  v60 = v58;
  sub_24E0B0548(v59, v60, v44);

  v61 = *(v1 + v42);
  if (!v61)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v62 = *(v1 + v55);
  if (!v62)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v63 = v62;
  v64 = v61;
  sub_24E0B0548(v64, v63, v44);

  v65 = OUTLINED_FUNCTION_21_9();
  if (!v65)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v66 = v65;
  [v65 setDataSource_];

  if (!OUTLINED_FUNCTION_21_9())
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_25_9();
  sub_24E1364D4();
  v68 = v67;
  [v64 setCollectionViewLayout_];

  v69 = *(v1 + v42);
  if (!v69)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  [v69 setDataSource_];
  v70 = *(v1 + v42);
  if (!v70)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v71 = v70;
  OUTLINED_FUNCTION_25_9();
  sub_24E174668();
  v73 = v72;
  [v64 setCollectionViewLayout_];

  v74 = *(v1 + v36);
  OUTLINED_FUNCTION_25_9();
  *(v64 + OBJC_IVAR____TtC12GameCenterUI18BaseSplitPresenter_displayInSplitView) = sub_24E1742B8() & 1;
  sub_24E263294();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C70, &unk_24E36C0B0);
  v100 = MEMORY[0x277D21A98];
  sub_24DFB4C28(&unk_27F1E97F0, &unk_27F1E1C70, &unk_24E36C0B0, MEMORY[0x277D21A98]);

  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_14_13();
  v101 = v36;
  v75 = v92;
  OUTLINED_FUNCTION_15_13();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v104);
  v76 = v94;
  v77 = *(v93 + 8);
  v77(v75, v94);

  OUTLINED_FUNCTION_29_7();
  OUTLINED_FUNCTION_14_13();
  OUTLINED_FUNCTION_15_13();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v104);
  v78 = v75;
  v79 = v101;
  v77(v78, v76);
  v80 = *(v1 + v79);
  sub_24E265FCC(v102);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1C80, &unk_24E371670);
  sub_24DFB4C28(&qword_27F1E1C88, &qword_27F1E1C80, &unk_24E371670, v100);

  sub_24E347198();
  OUTLINED_FUNCTION_14_13();
  v81 = v95;
  OUTLINED_FUNCTION_15_13();
  sub_24E3471A8();

  __swift_destroy_boxed_opaque_existential_1(v104);
  (*(v96 + 8))(v81, v97);
  if (*(v1 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_launchContext) == 13 || (v82 = *(v1 + v79), LOBYTE(v104[0]) = *(v1 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_launchContext), v83 = v82, v84 = sub_24E287D40(v104), v83, (v84 & 1) == 0))
  {
    sub_24E050E50(0);
  }

  else
  {
    v85 = v89;
    sub_24E343C58();
    v86 = sub_24E343F78();
    v87 = sub_24E348238();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = OUTLINED_FUNCTION_41_2();
      *v88 = 0;
      _os_log_impl(&dword_24DE53000, v86, v87, "JetDashboardViewController: stop, inline onboarding should present at this moment.", v88, 2u);
      OUTLINED_FUNCTION_22_4();
    }

    (*(v90 + 8))(v85, v91);
    *(v1 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_retryAfterAuthentication) = 1;
  }

  OUTLINED_FUNCTION_18();
}

void (*sub_24E04F698(void *a1))(__int128 *a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E052A28;
}

void sub_24E04F6FC(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *a1;
  v3 = v1;
  sub_24E04F73C(&v2);
}

void sub_24E04F73C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24E343EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v94 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v94 - v12;
  v14 = *a1;
  if (*a1 == 2)
  {
    v24 = *(*&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_badgeablePhotoView] + OBJC_IVAR____TtC12GameCenterUI24BadgeablePlayerPhotoView_photoView);
    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 local];
    [v26 setPlayer_];

    sub_24DFFE6D0(0);
    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v28 = sub_24E343F18();
    __swift_project_value_buffer(v28, qword_27F20B110);
    sub_24E343ED8();
    v29 = sub_24E343EF8();
    v30 = sub_24E348408();
    if (sub_24E348688())
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v29, v30, v32, "JetDashboardViewController_completed", "", v31, 2u);
      MEMORY[0x253040EE0](v31, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v33 = [v2 navigationController];
    if (v33)
    {
      v34 = v33;
      [v33 setNeedsFocusUpdate];
    }

    v35 = [v2 traitCollection];
    v36 = [v35 userInterfaceIdiom];

    if (!v36 || (ShouldUsePhoneUI = GKIsXRUIIdiomShouldUsePhoneUI(), ShouldUsePhoneUI))
    {
      sub_24E04E628(ShouldUsePhoneUI);
    }

    v38 = OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_retryAfterAuthentication;
    if (v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_retryAfterAuthentication] == 1)
    {
      v39 = *&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_request];
      if (!v39 || ((v40 = [*&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_request] state], v40 != -1) ? (v41 = v40 == 4) : (v41 = 1), v41))
      {
        v42 = *&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter];
        v43 = *&v42[OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_gameRecord];
        if (v43)
        {
          v2[v38] = 0;
          v44 = v43;
          v45 = v42;
          sub_24E2604EC(1);
        }

        else
        {
          v80 = objc_opt_self();
          v81 = v42;
          v82 = [v80 currentGame];
          v83 = [v82 bundleIdentifier];

          sub_24E347CF8();
          sub_24E2607D4();
        }

        return;
      }

      v84 = *&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter];
      v85 = *&v84[OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_gameRecord];
      if (v85)
      {
        v2[v38] = 0;
        v86 = v85;
        v87 = v39;
        [v87 setGameRecord_];
        v88 = v87;
        sub_24E050E50(v39);

        return;
      }

      v89 = v39;
      v90 = v84;
      v91 = [v89 gameRecord];
      if (v91)
      {
        v92 = v91;
        v93 = [v91 bundleIdentifier];

        sub_24E347CF8();
        sub_24E2607D4();

        return;
      }

LABEL_45:
      __break(1u);
    }
  }

  else
  {
    if (v14 == 1)
    {
      type metadata accessor for LoadingView();
      v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v16 = [v2 view];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 backgroundColor];

        [v15 setBackgroundColor_];
        sub_24DFFE6D0(v15);
        if (qword_27F1DD988 != -1)
        {
          swift_once();
        }

        v19 = sub_24E343F18();
        __swift_project_value_buffer(v19, qword_27F20B110);
        sub_24E343ED8();
        v20 = sub_24E343EF8();
        v21 = sub_24E348408();
        if (sub_24E348688())
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          v23 = sub_24E343EC8();
          _os_signpost_emit_with_name_impl(&dword_24DE53000, v20, v21, v23, "JetDashboardViewController_started", "", v22, 2u);
          MEMORY[0x253040EE0](v22, -1, -1);
        }

        else
        {
        }

        (*(v5 + 8))(v13, v4);
        return;
      }

      __break(1u);
      goto LABEL_43;
    }

    v95 = v5;
    v96 = v4;
    v47 = *(a1 + 8);
    v46 = *(a1 + 16);
    v99 = 0x800000024E39EA90;
    v48 = v14;
    sub_24DF88BEC(v47, v46);
    v49 = sub_24E347CB8();
    v50 = GKGameCenterUIFrameworkBundle();
    v51 = GKGetLocalizedStringFromTableInBundle();

    v52 = sub_24E347CF8();
    v97 = v53;
    v98 = v52;

    v54 = sub_24E347CB8();
    v55 = GKGameCenterUIFrameworkBundle();
    v56 = GKGetLocalizedStringFromTableInBundle();

    v57 = sub_24E347CF8();
    v59 = v58;

    v60 = sub_24E347CB8();
    v61 = GKGameCenterUIFrameworkBundle();
    v62 = GKGetLocalizedStringFromTableInBundle();

    v63 = sub_24E347CF8();
    v65 = v64;

    v100[0] = 0xD000000000000016;
    v100[1] = v99;
    v100[2] = v14;
    v100[3] = v98;
    v100[4] = v97;
    v100[5] = v57;
    v100[6] = v59;
    v100[7] = v63;
    v100[8] = v65;
    v100[9] = v47;
    v100[10] = v46;
    v66 = objc_allocWithZone(type metadata accessor for ErrorView());
    v67 = sub_24E1DE940(v100);
    v68 = [v2 view];
    if (!v68)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v69 = v68;
    [v68 frame];

    sub_24E3484F8();
    [v67 setFrame_];
    v70 = [v2 view];
    if (!v70)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v71 = v70;
    v72 = [v70 backgroundColor];

    [v67 setBackgroundColor_];
    sub_24DFFE6D0(v67);
    v74 = v95;
    v73 = v96;
    if (qword_27F1DD988 != -1)
    {
      swift_once();
    }

    v75 = sub_24E343F18();
    __swift_project_value_buffer(v75, qword_27F20B110);
    sub_24E343ED8();
    v76 = sub_24E343EF8();
    v77 = sub_24E348408();
    if (sub_24E348688())
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      v79 = sub_24E343EC8();
      _os_signpost_emit_with_name_impl(&dword_24DE53000, v76, v77, v79, "JetDashboardViewController_failed", "", v78, 2u);
      MEMORY[0x253040EE0](v78, -1, -1);
    }

    else
    {
    }

    (*(v74 + 8))(v10, v73);
  }
}

void (*sub_24E05013C(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E052A04;
}

uint64_t (*sub_24E0501A0(void *a1))(void *a1)
{
  v1 = sub_24E05013C(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24DFC147C;
}

char *sub_24E0501F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  MEMORY[0x28223BE20](v40);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x28223BE20](v12);
  v43 = &v37 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v38 = a1;
  v39 = a3;
  v22 = *&result[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource];
  if (v22)
  {
    v23 = a2;
    v24 = result;
    v25 = v22;
    v26 = sub_24E3434D8();
    sub_24DFB8854(v26, v16);

    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      v37 = v18;
      (*(v18 + 32))(v20, v16, v17);

      sub_24E3448C8();

      v28 = v40;
      v29 = *(v40 + 48);
      v30 = *&v24[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter];
      v31 = sub_24E3434D8();
      sub_24DFC15B4(v11, &v11[v29], v31);

      v32 = *&v24[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_components];

      sub_24DF9DEAC(v11, v8, &unk_27F1E1CA0, &unk_24E36C0D0);
      v33 = *(v28 + 48);
      v34 = sub_24DFC15B8();
      v35 = v23;
      v36 = v43;
      v27 = (*(*v32 + 104))(v39, v35, v20, v8, &v8[v33], v43, v34, v38);

      sub_24DF8C95C(v11, &unk_27F1E1CA0, &unk_24E36C0D0);
      (*(v41 + 8))(v36, v42);
      (*(v37 + 8))(v20, v17);
      sub_24DF8C95C(&v8[v33], &unk_27F1E1CB0, &unk_24E36D160);
      sub_24DF8C95C(v8, &unk_27F1E1CB0, &unk_24E36D160);
      return v27;
    }

    sub_24DF8C95C(v16, &unk_27F1E1CB0, &unk_24E36D160);
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  __break(1u);
  return result;
}

char *sub_24E050680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  MEMORY[0x28223BE20](v41);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C90, &unk_24E36BFF0);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v45 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CB0, &unk_24E36D160);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E96D0, &unk_24E36C000);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  v21 = result;
  v39 = a1;
  v40 = a3;
  v22 = *&result[OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource];
  if (v22)
  {
    v23 = v22;
    v24 = v44;
    v25 = sub_24E3434D8();
    sub_24DFB8854(v25, v15);

    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      v38 = v17;
      (*(v17 + 32))(v19, v15, v16);
      v27 = v21;

      sub_24E3448C8();

      v28 = v41;
      v29 = *(v41 + 48);
      v30 = *&v27[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter];
      v31 = sub_24E3434D8();
      sub_24E0CAA54(v10, &v10[v29], v31);

      v32 = *&v27[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_components];

      sub_24DF9DEAC(v10, v7, &unk_27F1E1CA0, &unk_24E36C0D0);
      v33 = *(v28 + 48);
      v34 = sub_24DFC15B8();
      v35 = v24;
      v36 = v45;
      v26 = (*(*v32 + 104))(v40, v35, v19, v7, &v7[v33], v45, v34, v39);

      sub_24DF8C95C(v10, &unk_27F1E1CA0, &unk_24E36C0D0);
      (*(v42 + 8))(v36, v43);
      (*(v38 + 8))(v19, v16);
      sub_24DF8C95C(&v7[v33], &unk_27F1E1CB0, &unk_24E36D160);
      sub_24DF8C95C(v7, &unk_27F1E1CB0, &unk_24E36D160);
      return v26;
    }

    sub_24DF8C95C(v15, &unk_27F1E1CB0, &unk_24E36D160);
    return [objc_allocWithZone(MEMORY[0x277D752A8]) init];
  }

  __break(1u);
  return result;
}

void (*sub_24E050B08(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E0529E0;
}

void sub_24E050B6C(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource];
  if (!v2)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return;
  }

  v3 = v2;
  sub_24E344CE8();

  if (sub_24E1742B8())
  {
    return;
  }

  v4 = [v1 collectionView];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v4;
  sub_24E05181C(v4);
}

void (*sub_24E050C44(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E0529BC;
}

void sub_24E050CA8(uint64_t a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource);
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  sub_24E344CE8();

  if ((sub_24E1742B8() & 1) == 0)
  {
    return;
  }

  v5 = OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryCollectionView;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  sub_24E05181C(v7);
}

void (*sub_24E050D64(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_24E0529B4;
}

uint64_t (*sub_24E050DF8(void *a1))()
{
  v1 = sub_24E050D64(a1);
  v3 = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  return sub_24E052988;
}

void sub_24E050E50(void *a1)
{
  v2 = v1;
  v4 = sub_24E346EE8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24E346F08();
  v51 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v52 = a1;
  }

  else
  {
    v11 = *&v2[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_request];
    if (!v11)
    {
      return;
    }

    v52 = v11;
  }

  v12 = a1;
  v13 = [v52 state];
  switch(v13)
  {
    case 0xFFFFFFFFFFFFFFFFLL:
    case 4uLL:
      goto LABEL_20;
    case 0uLL:
      v27 = sub_24E268D58(v52);
      if (!v28)
      {
        goto LABEL_15;
      }

      v29 = v27;
      v30 = v28;
      if (sub_24E347DD8() < 1)
      {

LABEL_15:
        v41 = [v52 gameRecord];
        if (v41)
        {
          v37 = v41;
          sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
          v50 = sub_24E348368();
          v42 = swift_allocObject();
          v43 = v52;
          v42[2] = v2;
          v42[3] = v43;
          v42[4] = v37;
          v57 = sub_24E052970;
          v58 = v42;
          aBlock = MEMORY[0x277D85DD0];
          v54 = 1107296256;
          v40 = &block_descriptor_77;
LABEL_17:
          v55 = sub_24E00B24C;
          v56 = v40;
          v44 = _Block_copy(&aBlock);
          v45 = v2;
          v52 = v52;
          v49 = v37;

          sub_24E346EF8();
          aBlock = MEMORY[0x277D84F90];
          sub_24DFC151C();
          v25 = v10;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
          sub_24DFB4C28(&qword_27F1DFD10, &unk_27F1E1C90, &qword_24E36C170, MEMORY[0x277D83970]);
          sub_24E3487E8();
          v46 = v50;
          MEMORY[0x25303EED0](0, v10, v7, v44);
          _Block_release(v44);

          (*(v5 + 8))(v7, v4);
LABEL_18:
          (*(v51 + 8))(v25, v8);
        }

        else
        {
LABEL_20:
          v47 = v52;
        }
      }

      else
      {
        sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
        v50 = sub_24E348368();
        v31 = swift_allocObject();
        v32 = v52;
        v31[2] = v2;
        v31[3] = v32;
        v31[4] = v29;
        v31[5] = v30;
        v57 = sub_24E05297C;
        v58 = v31;
        aBlock = MEMORY[0x277D85DD0];
        v54 = 1107296256;
        v55 = sub_24E00B24C;
        v56 = &block_descriptor_83_0;
        v33 = _Block_copy(&aBlock);
        v34 = v2;
        v52 = v52;

        sub_24E346EF8();
        aBlock = MEMORY[0x277D84F90];
        sub_24DFC151C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
        sub_24DFB4C28(&qword_27F1DFD10, &unk_27F1E1C90, &qword_24E36C170, MEMORY[0x277D83970]);
        sub_24E3487E8();
        v35 = v50;
        MEMORY[0x25303EED0](0, v10, v7, v33);
        _Block_release(v33);

        (*(v5 + 8))(v7, v4);
        (*(v51 + 8))(v10, v8);
      }

      break;
    case 1uLL:
      v36 = [v52 gameRecord];
      if (!v36)
      {
        goto LABEL_20;
      }

      v37 = v36;
      sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
      v50 = sub_24E348368();
      v38 = swift_allocObject();
      v39 = v52;
      v38[2] = v2;
      v38[3] = v39;
      v38[4] = v37;
      v57 = sub_24E05291C;
      v58 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v40 = &block_descriptor_71;
      goto LABEL_17;
    case 2uLL:
      v20 = [v52 gameRecord];
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = v20;
      sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
      v50 = sub_24E348368();
      v22 = swift_allocObject();
      v22[2] = v2;
      v22[3] = v21;
      v22[4] = v52;
      v57 = sub_24E052910;
      v58 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_24E00B24C;
      v56 = &block_descriptor_65;
      v23 = _Block_copy(&aBlock);
      v24 = v2;
      v52 = v52;
      v49 = v21;

      sub_24E346EF8();
      aBlock = MEMORY[0x277D84F90];
      sub_24DFC151C();
      v25 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
      sub_24DFB4C28(&qword_27F1DFD10, &unk_27F1E1C90, &qword_24E36C170, MEMORY[0x277D83970]);
      sub_24E3487E8();
      v26 = v50;
      MEMORY[0x25303EED0](0, v10, v7, v23);
      _Block_release(v23);

      (*(v5 + 8))(v7, v4);
      goto LABEL_18;
    case 3uLL:
    case 5uLL:
      sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
      v50 = sub_24E348368();
      v14 = swift_allocObject();
      v15 = v52;
      *(v14 + 16) = v2;
      *(v14 + 24) = v15;
      v57 = sub_24E0528F0;
      v58 = v14;
      aBlock = MEMORY[0x277D85DD0];
      v54 = 1107296256;
      v55 = sub_24E00B24C;
      v56 = &block_descriptor_24;
      v16 = _Block_copy(&aBlock);
      v17 = v2;
      v52 = v52;

      sub_24E346EF8();
      aBlock = MEMORY[0x277D84F90];
      sub_24DFC151C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
      v18 = v51;
      v49 = v8;
      sub_24DFB4C28(&qword_27F1DFD10, &unk_27F1E1C90, &qword_24E36C170, MEMORY[0x277D83970]);
      sub_24E3487E8();
      v19 = v50;
      MEMORY[0x25303EED0](0, v10, v7, v16);
      _Block_release(v16);

      (*(v5 + 8))(v7, v4);
      (*(v18 + 8))(v10, v49);
      return;
    default:
      v48 = v13;
      type metadata accessor for GKGameCenterViewControllerState(0);
      aBlock = v48;
      sub_24E348C58();
      __break(1u);
      return;
  }
}

void sub_24E05181C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80, qword_24E3715F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_24E343518();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter;
  v12 = *(v2 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter);
  if ((*(v12 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_didScrollToIndexPath) & 1) == 0)
  {
    v13 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_scrollToIndexPath;
    swift_beginAccess();
    sub_24DF9DEAC(v12 + v13, v6, &unk_27F1E6C80, qword_24E3715F0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_24DF8C95C(v6, &unk_27F1E6C80, qword_24E3715F0);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      v14 = sub_24E343488();
      [a1 scrollToItemAtIndexPath:v14 atScrollPosition:2 animated:0];

      (*(v8 + 8))(v10, v7);
      *(*(v2 + v11) + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_didScrollToIndexPath) = 1;
    }
  }
}

Swift::Void __swiftcall JetDashboardViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1BF0, &unk_24E36C060);
  OUTLINED_FUNCTION_0_14();
  v57 = v6;
  v58 = v5;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_3();
  v59 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C70, &unk_24E3715E0);
  OUTLINED_FUNCTION_4_5(v9);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C00, &qword_24E36A0E0);
  OUTLINED_FUNCTION_0_14();
  v56 = v14;
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E6C80, qword_24E3715F0);
  OUTLINED_FUNCTION_4_5(v18);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  v22 = sub_24E343518();
  OUTLINED_FUNCTION_0_14();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7_1();
  v28 = v27 - v26;
  v60.receiver = v1;
  v60.super_class = ObjectType;
  objc_msgSendSuper2(&v60, sel_viewDidDisappear_, v3 & 1);
  v29 = *&v1[OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter];
  if (*(v29 + OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_didScrollToIndexPath) == 1)
  {
    v30 = OBJC_IVAR____TtC12GameCenterUI18DashboardPresenter_scrollToIndexPath;
    OUTLINED_FUNCTION_8_11();
    swift_beginAccess();
    sub_24DF9DEAC(v29 + v30, v21, &unk_27F1E6C80, qword_24E3715F0);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      v31 = &unk_27F1E6C80;
      v32 = qword_24E3715F0;
      v33 = v21;
LABEL_4:
      sub_24DF8C95C(v33, v31, v32);
      goto LABEL_16;
    }

    (*(v24 + 32))(v28, v21, v22);
    v34 = [v1 navigationController];
    if (v34)
    {
      v35 = v34;
      v36 = [v34 topViewController];
      if (v36)
      {
        v37 = v36;

        if (v37 == v1)
        {
          goto LABEL_13;
        }
      }

      v38 = sub_24E1742B8();
      v39 = &OBJC_IVAR____TtC12GameCenterUI33BaseSplitCollectionViewController_secondaryDiffableDataSource;
      if ((v38 & 1) == 0)
      {
        v39 = &OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_diffableDataSource;
      }

      v40 = *&v1[*v39];
      if (!v40)
      {
LABEL_13:
        v44 = OUTLINED_FUNCTION_10_20();
        v45(v44);

        goto LABEL_16;
      }

      v41 = v40;
      sub_24E344CD8();
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        v42 = OUTLINED_FUNCTION_10_20();
        v43(v42);

        v31 = &unk_27F1E6C70;
        v32 = &unk_24E3715E0;
        v33 = v12;
        goto LABEL_4;
      }

      v46 = v56;
      (*(v56 + 32))(v17, v12, v13);
      sub_24E344CF8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1C10, qword_24E381A20);
      v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v48 = swift_allocObject();
      v55 = v41;
      *(v48 + 16) = xmmword_24E367D20;
      (*(v46 + 16))(v48 + v47, v17, v13);
      v50 = v58;
      v49 = v59;
      sub_24E344B08();

      v51 = v49;
      OUTLINED_FUNCTION_8_11();
      v52 = v55;
      sub_24E344CE8();

      (*(v57 + 8))(v51, v50);
      (*(v46 + 8))(v17, v13);
    }

    v53 = OUTLINED_FUNCTION_10_20();
    v54(v53);
  }

LABEL_16:
  OUTLINED_FUNCTION_18();
}

void *sub_24E051F7C()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController__rootController);
  v2 = v1;
  return v1;
}

void *sub_24E052048()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController__specifier);
  v2 = v1;
  return v1;
}

void sub_24E0520E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter);
  sub_24E260928(a1, a2, a3, a4);
}

void sub_24E0521B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter);
  sub_24E260D0C();
}

void sub_24E052228(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter);
  [a3 shouldShowPlayForChallenge];
  sub_24E2611A8();
}

void sub_24E0522AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter);
  sub_24E2614D4();
}

Swift::Void __swiftcall JetDashboardViewController.didSelectPlayerAvatarView(_:)(GKDashboardPlayerPhotoView_optional *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter);
  sub_24E2614D4();
}

uint64_t sub_24E0523DC()
{
  v1 = v0 + OBJC_IVAR____TtC12GameCenterUI31BaseJetCollectionViewController_dismissHandler;
  OUTLINED_FUNCTION_8_11();
  result = swift_beginAccess();
  v3 = *v1;
  if (*v1)
  {
    v4 = *(v1 + 8);

    v3(v5);
    return sub_24DE73FA0(v3, v4);
  }

  return result;
}

void sub_24E0524CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController__specifier);
}

id JetDashboardViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E052630(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC12GameCenterUI26JetDashboardViewController_dashboardPresenter);
  sub_24E262988();
}

uint64_t sub_24E05272C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_24E0527E8(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void sub_24E052820(uint64_t a1, void *a2)
{
  sub_24DF88A8C(0, &unk_27F1E21B0, 0x277D751E0);
  v3 = sub_24E347EE8();

  [a2 setRightBarButtonItems_];
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_61Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24E052A30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlayerCardTheme(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E052A94(uint64_t a1)
{
  v2 = type metadata accessor for PlayerCardTheme(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_4_34(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_32(uint64_t a1)
{

  return swift_once();
}

id OUTLINED_FUNCTION_6_28(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_16_14()
{

  return sub_24E347658();
}

void OUTLINED_FUNCTION_17_12()
{

  JUMPOUT(0x253040EE0);
}

id OUTLINED_FUNCTION_21_9()
{

  return [v0 (v1 + 2424)];
}

id OUTLINED_FUNCTION_22_10()
{

  return [v0 (v1 + 138)];
}

id OUTLINED_FUNCTION_23_12()
{

  return [v0 (v1 + 138)];
}

uint64_t OUTLINED_FUNCTION_29_7()
{

  return sub_24E347198();
}

uint64_t OUTLINED_FUNCTION_30_6()
{

  return sub_24E347638();
}

void OUTLINED_FUNCTION_31_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

double OUTLINED_FUNCTION_34_3(uint64_t a1)
{

  swift_unknownObjectWeakInit();
  return result;
}

void sub_24E052CF0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id SettingsContainerViewController.__deallocating_deinit()
{
  v1 = &v0[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_viewDidLayoutSubviewsCallback];
  v2 = *&v0[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_viewDidLayoutSubviewsCallback];
  v3 = *&v0[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_viewDidLayoutSubviewsCallback + 8];
  *v1 = 0;
  *(v1 + 1) = 0;
  sub_24DE73FA0(v2, v3);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SettingsContainerViewController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_24E052ED4()
{
  OUTLINED_FUNCTION_42_3();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for SettingsContainerViewController();
  v26.receiver = v0;
  v26.super_class = v5;
  objc_msgSendSuper2(&v26, sel_viewDidLoad);
  v6 = [v0 view];
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = v6;
  v8 = [objc_opt_self() systemBackgroundColor];
  [v7 setBackgroundColor_];

  v9 = [v1 navigationItem];
  [v9 setLargeTitleDisplayMode_];

  v10 = [v1 navigationItem];
  sub_24E343AA8();
  v11 = sub_24E343648();
  sub_24DFF79C8(v11, v12, v10);

  type metadata accessor for LoadingView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v14 = *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_overlayView];
  *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_overlayView] = v13;
  v15 = v13;

  v16 = [v1 view];
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v17 = v16;
  v18 = [v16 backgroundColor];

  [v15 setBackgroundColor_];
  v19 = [v1 view];
  if (v19)
  {
    v20 = v19;
    [v19 addSubview_];

    v21 = sub_24E348098();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v21);
    sub_24E348068();
    v22 = v1;
    v23 = sub_24E348058();
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v22;
    sub_24DFC8700(0, 0, v4, &unk_24E371690, v24);

    OUTLINED_FUNCTION_29_8();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_24E053190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_24E348068();
  v4[4] = sub_24E348058();
  type metadata accessor for GameCenterSettings(0);
  swift_allocObject();
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_24E053254;

  return GameCenterSettings.init()();
}

uint64_t sub_24E053254()
{
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v4 = v3;
  *(v6 + 48) = v5;

  v8 = sub_24E347FF8();

  return MEMORY[0x2822009F8](sub_24E053390, v8, v7);
}

uint64_t sub_24E053390()
{
  OUTLINED_FUNCTION_8_9();
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  *(v2 + OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_settings) = v1;

  v3 = type metadata accessor for SettingsContactsIntegrationInitiator(0);
  OUTLINED_FUNCTION_1_30(v3);
  *(v2 + OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_contactsIntegrationInitiator) = sub_24DFFD04C();

  v4 = sub_24DFECF6C();
  LOBYTE(v1) = sub_24E245A0C();

  if ((v1 & 1) != 0 && (v5 = sub_24DFECF6C(), v6 = [v5 shouldShowAnyOnboardingScreen], v5, v6))
  {
    sub_24E0534E8();
  }

  else
  {
    sub_24E0537B8();
  }

  OUTLINED_FUNCTION_12_5();

  return v7();
}

void sub_24E0534E8()
{
  v1 = v0;
  v2 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  sub_24E343C58();
  v9 = sub_24E343F78();
  v10 = sub_24E348238();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_24DE53000, v9, v10, "SettingsContainerViewController.showOnboardingUI: Onboarding flow is going to start from Settings", v11, 2u);
    OUTLINED_FUNCTION_22_4();
  }

  (*(v4 + 8))(v8, v2);
  v12 = objc_opt_self();
  v13 = [v12 shared];
  v14 = [v13 landingViewControllerWithGameBundleId_];

  v15 = [v12 shared];
  [v15 setOrigin_];

  v16 = [v12 shared];
  [v16 setDelegate_];

  v17 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v17 setModalPresentationStyle_];
  v18 = [objc_opt_self() sharedTheme];
  if (v18)
  {
    v19 = v18;
    [v18 authenticateExtensionFormSheetSize];
    v21 = v20;
    v23 = v22;

    [v17 setPreferredContentSize_];
    [v17 setModalInPresentation_];

    [v1 presentViewController:v17 animated:1 completion:0];
    v24 = *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_onboardingNavigationController];
    *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_onboardingNavigationController] = v17;
    v25 = v17;

    sub_24E2AD940(2, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_24E0537B8()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v2 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v81 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_1();
  v7 = v6 - v5;
  v8 = type metadata accessor for GameCenterSettingsContainerView(0);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_1();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1EE8, &qword_24E371850);
  OUTLINED_FUNCTION_0_14();
  v83 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v82 = &v80 - v19;
  [*&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_overlayView] removeFromSuperview];
  v20 = OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_childViewController;
  v21 = *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_childViewController];
  if (v21)
  {
    [v21 willMoveToParentViewController_];
    v21 = *&v1[v20];
    if (v21)
    {
      v22 = [v21 view];
      if (!v22)
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v23 = v22;
      [v22 removeFromSuperview];

      v21 = *&v1[v20];
    }
  }

  [v21 removeFromParentViewController];
  v24 = *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_settings];
  if (!v24)
  {
    sub_24E343C98();
    v77 = sub_24E343F78();
    v78 = sub_24E348258();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_24DE53000, v77, v78, "Cannot display view without settings.", v79, 2u);
      OUTLINED_FUNCTION_22_4();
    }

    (*(v81 + 8))(v7, v2);
    goto LABEL_24;
  }

  GameCenterSettingsContainerView.init()(v11);
  v25 = type metadata accessor for GameCenterSettingsState(0);
  OUTLINED_FUNCTION_1_30(v25);
  GameCenterSettingsState.init()();
  v81 = v12;
  sub_24E05982C(&unk_27F1E1EF0, type metadata accessor for GameCenterSettingsContainerView, &protocol conformance descriptor for GameCenterSettingsContainerView);
  sub_24E05982C(&qword_27F1E03D8, type metadata accessor for GameCenterSettingsState, &protocol conformance descriptor for GameCenterSettingsState);
  v26 = v82;
  sub_24E3465A8();
  v27 = v81;

  sub_24E059874(v11);
  v28 = v83;
  (*(v83 + 16))(v16, v26, v27);
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1F00, &qword_24E371858));
  v30 = sub_24E345D58();
  v31 = *&v1[v20];
  *&v1[v20] = v30;

  v32 = &v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_viewDidLayoutSubviewsCallback];
  v33 = *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_viewDidLayoutSubviewsCallback];
  v34 = *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_viewDidLayoutSubviewsCallback + 8];
  *v32 = sub_24E0598D0;
  v32[1] = v24;

  sub_24DE73FA0(v33, v34);
  v35 = *&v1[v20];
  if (!v35)
  {
    (*(v28 + 8))(v26, v27);

    goto LABEL_24;
  }

  v36 = v35;
  [v1 addChildViewController_];
  v37 = OUTLINED_FUNCTION_30_7();
  if (!v37)
  {
    goto LABEL_26;
  }

  v38 = v37;
  v39 = OUTLINED_FUNCTION_25_10();
  if (!v39)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v40 = v39;
  [v38 addSubview_];

  [v36 didMoveToParentViewController_];
  v41 = OUTLINED_FUNCTION_25_10();
  if (!v41)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v42 = v41;
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFEE0, &unk_24E369A20);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_24E36D5F0;
  v44 = OUTLINED_FUNCTION_25_10();
  if (!v44)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v45 = v44;
  v46 = [v44 leadingAnchor];

  v47 = OUTLINED_FUNCTION_30_7();
  if (!v47)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v48 = v47;
  v49 = [v47 safeAreaLayoutGuide];

  v50 = [v49 leadingAnchor];
  v51 = [v46 constraintEqualToAnchor_];

  *(v43 + 32) = v51;
  v52 = OUTLINED_FUNCTION_25_10();
  if (!v52)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v53 = v52;
  v54 = [v52 topAnchor];

  v55 = OUTLINED_FUNCTION_30_7();
  if (!v55)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v56 = v55;
  v57 = [v55 topAnchor];

  v58 = [v54 constraintEqualToAnchor_];
  *(v43 + 40) = v58;
  v59 = OUTLINED_FUNCTION_25_10();
  if (!v59)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v60 = v59;
  v61 = [v59 trailingAnchor];

  v62 = OUTLINED_FUNCTION_30_7();
  if (!v62)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v63 = v62;
  v64 = [v62 safeAreaLayoutGuide];

  v65 = [v64 trailingAnchor];
  v66 = [v61 constraintEqualToAnchor_];

  *(v43 + 48) = v66;
  v67 = OUTLINED_FUNCTION_25_10();
  if (!v67)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v68 = v67;
  v69 = [v67 bottomAnchor];

  v70 = OUTLINED_FUNCTION_30_7();
  if (v70)
  {
    v71 = v70;
    v72 = objc_opt_self();
    v73 = [v71 safeAreaLayoutGuide];

    v74 = [v73 bottomAnchor];
    v75 = [v69 constraintEqualToAnchor_];

    *(v43 + 56) = v75;
    sub_24DF88A8C(0, &qword_27F1E1F10, 0x277CCAAD0);
    v76 = sub_24E347EE8();

    [v72 activateConstraints_];

    (*(v83 + 8))(v82, v81);
LABEL_24:
    OUTLINED_FUNCTION_18();
    return;
  }

LABEL_36:
  __break(1u);
}

void sub_24E053FC0(char a1)
{
  v19.receiver = v1;
  v19.super_class = type metadata accessor for SettingsContainerViewController();
  objc_msgSendSuper2(&v19, sel_viewWillAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_childViewController];
  if (!v3 || (type metadata accessor for PlayerProfileViewController(), (v4 = swift_dynamicCastClass()) == 0))
  {
LABEL_18:
    OUTLINED_FUNCTION_39_2();
    return;
  }

  v5 = v4;
  v6 = v3;
  v7 = [v5 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 subviews];

    sub_24DF88A8C(0, &qword_27F1E1D30, 0x277D75D18);
    v10 = sub_24E347F08();

    v11 = sub_24DFD8654();
    for (i = 0; ; ++i)
    {
      if (v11 == i)
      {

        goto LABEL_15;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x25303F560](i, v10);
      }

      else
      {
        if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClassUnconditional();
    v16 = *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_scrollView];
    *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_scrollView] = v15;

LABEL_15:
    v17 = *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_scrollView];
    if (v17)
    {
      v18 = v17;
      sub_24E3482D8();
    }

    goto LABEL_18;
  }

LABEL_21:
  __break(1u);
}

void sub_24E054200(char a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SettingsContainerViewController();
  objc_msgSendSuper2(&v5, sel_viewDidAppear_, a1 & 1);
  Current = CFAbsoluteTimeGetCurrent();
  v4 = &v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_startTime];
  *v4 = Current;
  *(v4 + 8) = 0;
}

void sub_24E0542B0(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SettingsContainerViewController();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1 & 1);
  if ((v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_startTime + 8] & 1) == 0)
  {
    v3 = *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_startTime];
    v4 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    v5 = sub_24E347CF8();
    sub_24E0595AC(v5, v6, v4, v3);
  }
}

void sub_24E0543A4()
{
  v11.receiver = v0;
  v11.super_class = type metadata accessor for SettingsContainerViewController();
  objc_msgSendSuper2(&v11, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_overlayView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      [v3 bounds];
      OUTLINED_FUNCTION_40_3();
      OUTLINED_FUNCTION_28_7(v4, sel_setFrame_);
      v5 = [v0 view];
      if (v5)
      {
        [v5 layoutMargins];
        OUTLINED_FUNCTION_40_3();
        OUTLINED_FUNCTION_28_7(v6, sel_setLayoutMargins_);

        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_5:
  v7 = *&v0[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_viewDidLayoutSubviewsCallback];
  if (!v7)
  {
    return;
  }

  v8 = *&v0[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_viewDidLayoutSubviewsCallback + 8];

  v9 = [v0 view];
  if (!v9)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v10 = v9;
  v7();

  sub_24DE73FA0(v7, v8);
}

void *_s12GameCenterUI31SettingsContainerViewControllerC9specifierSo11PSSpecifierCSgyF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController__specifier);
  v2 = v1;
  return v1;
}

id SettingsContainerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SettingsContainerViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_35_5(OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_startTime);
  *&v3[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_settings] = 0;
  *&v3[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_childViewController] = 0;
  *&v3[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_overlayView] = 0;
  *&v3[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_scrollView] = 0;
  *&v3[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_onboardingNavigationController] = 0;
  v7 = &v3[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_viewDidLayoutSubviewsCallback];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_metricsHandler;
  v9 = type metadata accessor for AuthenticationMetricsHandler(0);
  OUTLINED_FUNCTION_1_30(v9);
  *&v3[v8] = sub_24E2AE048(0xD00000000000001CLL, 0x800000024E3A3140);
  *&v3[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_contactsIntegrationInitiator] = 0;
  v10 = OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_gameCenterSettingsState;
  v11 = type metadata accessor for GameCenterSettingsState(0);
  OUTLINED_FUNCTION_1_30(v11);
  *&v3[v10] = GameCenterSettingsState.init()();
  *&v3[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController__rootController] = 0;
  *&v3[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController__specifier] = 0;
  if (a2)
  {
    v12 = sub_24E347CB8();
  }

  else
  {
    v12 = 0;
  }

  v15.receiver = v4;
  v15.super_class = type metadata accessor for SettingsContainerViewController();
  v13 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, v12, a3);

  return v13;
}

id SettingsContainerViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SettingsContainerViewController.init(coder:)(void *a1)
{
  OUTLINED_FUNCTION_35_5(OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_startTime);
  *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_settings] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_childViewController] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_overlayView] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_scrollView] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_onboardingNavigationController] = 0;
  v3 = &v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_viewDidLayoutSubviewsCallback];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_metricsHandler;
  v5 = type metadata accessor for AuthenticationMetricsHandler(0);
  OUTLINED_FUNCTION_1_30(v5);
  *&v1[v4] = sub_24E2AE048(0xD00000000000001CLL, 0x800000024E3A3140);
  *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_contactsIntegrationInitiator] = 0;
  v6 = OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_gameCenterSettingsState;
  v7 = type metadata accessor for GameCenterSettingsState(0);
  OUTLINED_FUNCTION_1_30(v7);
  *&v1[v6] = GameCenterSettingsState.init()();
  *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController__rootController] = 0;
  *&v1[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController__specifier] = 0;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SettingsContainerViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithCoder_, a1);

  if (v8)
  {
  }

  return v8;
}

void SettingsContainerViewController.setRoot(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController__rootController);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController__rootController) = a1;
  v2 = a1;
}

void *SettingsContainerViewController.rootController()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController__rootController);
  v2 = v1;
  return v1;
}

void SettingsContainerViewController.setSpecifier(_:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController__specifier);
  *(v1 + OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController__specifier) = a1;
  v2 = a1;
}

void SettingsContainerViewController.handleURL(_:withCompletion:)(Swift::OpaquePointer a1, void (*a2)(uint64_t), uint64_t a3)
{
  if (a1._rawValue)
  {
    GameCenterSettingsState.handleURL(_:)(a1);
    if (a2)
    {

      a2(v5);

      sub_24DE73FA0(a2, a3);
    }
  }
}

void SettingsContainerViewController.signInController(_:didCompleteWithSuccess:error:)(void *a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_21_2();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_16_4();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a3;
  v10[4] = sub_24E059620;
  v10[5] = v6;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_6_29();
  v10[2] = v7;
  v10[3] = &block_descriptor_25;
  v8 = _Block_copy(v10);
  v9 = a3;

  [a1 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

void sub_24E05501C(uint64_t a1, uint64_t a2)
{
  v3 = sub_24E343F88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v11 = Strong;
  if (!*&Strong[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_settings])
  {

LABEL_8:
    sub_24E343C98();
    v15 = sub_24E343F78();
    v16 = sub_24E348258();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24DE53000, v15, v16, "Cannot proceed after sign in without settings.", v17, 2u);
      MEMORY[0x253040EE0](v17, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    return;
  }

  if (a2)
  {

    sub_24E343C98();
    v12 = sub_24E343F78();
    v13 = sub_24E348258();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24DE53000, v12, v13, "Cannot proceed due to sign in error", v14, 2u);
      MEMORY[0x253040EE0](v14, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    sub_24DFECE04(0);
  }

  else
  {
    v18 = objc_opt_self();

    v19 = [v18 local];
    v20 = [v19 shouldShowAnyOnboardingScreen];

    if (!v20)
    {
      v21 = [v18 local];
      v22 = sub_24E245A0C();

      sub_24DFECE04(v22 & 1);
      v23 = [v18 local];
      sub_24DFECFDC();

      return;
    }

    sub_24E0534E8();
  }
}

Swift::Void __swiftcall SettingsContainerViewController.signInControllerDidCancel(_:)(AAUISignInController *a1)
{
  OUTLINED_FUNCTION_21_2();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_24E059640;
  v5[5] = v2;
  OUTLINED_FUNCTION_1_35();
  OUTLINED_FUNCTION_6_29();
  v5[2] = v3;
  v5[3] = &block_descriptor_11;
  v4 = _Block_copy(v5);

  [(AAUISignInController *)a1 dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

uint64_t sub_24E055450(uint64_t a1)
{
  v1 = sub_24E343F88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (*&Strong[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_settings])
    {
      v7 = objc_opt_self();

      v8 = [v7 local];
      LOBYTE(v7) = sub_24E245A0C();

      sub_24DFECE04(v7 & 1);
    }
  }

  sub_24E343C98();
  v10 = sub_24E343F78();
  v11 = sub_24E348258();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_24DE53000, v10, v11, "Cannot proceed after canelling sign in without settings.", v12, 2u);
    MEMORY[0x253040EE0](v12, -1, -1);
  }

  return (*(v2 + 8))(v4, v1);
}

Swift::Void __swiftcall SettingsContainerViewController.openAvatarEditor()()
{
  v0 = [objc_opt_self() local];
  OUTLINED_FUNCTION_21_2();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3[4] = sub_24E059648;
  v3[5] = v1;
  OUTLINED_FUNCTION_1_35();
  v3[1] = 1107296256;
  v3[2] = sub_24E055980;
  v3[3] = &block_descriptor_15;
  v2 = _Block_copy(v3);

  [v0 loadPlayerContactForAvatarControllerWithImageSize:65537 completion:v2];
  _Block_release(v2);
}

void sub_24E055770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [objc_opt_self() photoPickerForGameCenterWithContact_];
    [v6 setDelegate_];
    v7 = sub_24E347CB8();
    v8 = GKGameCenterUIFrameworkBundle();
    v9 = GKGetLocalizedStringFromTableInBundle();

    v10 = sub_24E347CF8();
    v12 = v11;

    sub_24E14D064(v10, v12, v6);
    v13 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    v14 = [v5 traitCollection];
    v15 = [v14 horizontalSizeClass];

    if (v15 == 2)
    {
      [v13 setModalPresentationStyle_];
    }

    aBlock[4] = CGSizeMake;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E00B24C;
    aBlock[3] = &block_descriptor_85;
    v16 = _Block_copy(aBlock);
    [v5 presentViewController:v13 animated:1 completion:v16];
    _Block_release(v16);
  }
}

void sub_24E055980(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void SettingsContainerViewController.photoPickerDidCancel(_:)(void *a1)
{
  v1 = [a1 presentingViewController];
  if (v1)
  {
    v2 = v1;
    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void SettingsContainerViewController.photoPicker(_:didUpdatePhotoFor:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_settings);
  if (v4)
  {
    v8 = objc_opt_self();

    v9 = [v8 local];
    swift_unknownObjectWeakInit();
    MEMORY[0x253040FB0](v14);
    OUTLINED_FUNCTION_16_4();
    v10 = swift_allocObject();
    *(v10 + 16) = v4;
    *(v10 + 24) = a1;
    aBlock[4] = sub_24E059650;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E052CF0;
    aBlock[3] = &block_descriptor_21_0;
    v11 = _Block_copy(aBlock);

    v12 = a1;

    [v9 setPhotoFromCNContactImage:a3 pendingContact:a2 withCompletionHandler:v11];
    _Block_release(v11);
  }
}

uint64_t sub_24E055C70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_24E346EE8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_24E346F08();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24DF88A8C(0, &qword_27F1DFCD0, 0x277D85C78);
  v12 = sub_24E348368();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_24E059A74;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E00B24C;
  aBlock[3] = &block_descriptor_82_0;
  v14 = _Block_copy(aBlock);

  v15 = a3;

  sub_24E346EF8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E05982C(&qword_27F1DFD00, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1C90, &qword_24E36C170);
  sub_24DFCD5F4();
  sub_24E3487E8();
  MEMORY[0x25303EED0](0, v11, v8, v14);
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  return (*(v9 + 8))(v11, v18);
}

void sub_24E055F40(uint64_t a1, void *a2)
{
  v3 = objc_opt_self();
  v4 = [v3 local];
  [v4 clearInMemoryCachedAvatars];

  v5 = [v3 local];
  sub_24DFECFDC();
  v6 = [a2 presentingViewController];
  if (v6)
  {
    v7 = v6;
    [v6 dismissViewControllerAnimated:1 completion:0];
  }
}

GameCenterUI::SettingsContainerViewController::DashboardInvocationType_optional __swiftcall SettingsContainerViewController.DashboardInvocationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24E348B78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SettingsContainerViewController.DashboardInvocationType.rawValue.getter()
{
  v1 = 0x6E656972466C6C61;
  if (*v0 != 1)
  {
    v1 = 0x6552646E65697266;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C69666F7270;
  }
}

uint64_t sub_24E0561BC@<X0>(uint64_t *a1@<X8>)
{
  result = SettingsContainerViewController.DashboardInvocationType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall SettingsContainerViewController.openDashboardView(for:)(GameCenterUI::SettingsContainerViewController::DashboardInvocationType a1)
{
  OUTLINED_FUNCTION_32();
  v38 = *v1;
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 connectedScenes];

  sub_24DF88A8C(0, &unk_280BDFA70, 0x277D75940);
  v4 = sub_24DFFCE00();
  v5 = sub_24E348138();

  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24E348838();
    sub_24E348168();
    v7 = v45;
    v6 = v46;
    v4 = v47;
    v8 = v48;
    v9 = v49;
  }

  else
  {
    v6 = v5 + 56;
    OUTLINED_FUNCTION_24_7();
    v9 = v10 & v11;

    v8 = 0;
    v7 = v5;
  }

  v37 = v4;
  v12 = (v4 + 64) >> 6;
  if (v7 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_9:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v7 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      while (1)
      {
        objc_opt_self();
        v18 = swift_dynamicCastObjCClass();
        if (v18)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        if ((v7 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (sub_24E3488A8())
        {
          swift_dynamicCast();
          v17 = aBlock;
          v15 = v8;
          v16 = v9;
          if (aBlock)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      v34 = v18;
      OUTLINED_FUNCTION_32_5();
      v35 = [v34 session];
      v36 = [v35 persistentIdentifier];

      sub_24E347CF8();
    }

    else
    {
LABEL_16:
      OUTLINED_FUNCTION_32_5();
      v17 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D80, &qword_24E371698);
    inited = swift_initStackObject();
    v20 = OUTLINED_FUNCTION_8_23(inited, xmmword_24E36A270);
    v21 = *&aAllfrienfriend[8 * v38 + 16];
    v20[3].n128_u64[0] = *&aProfile_7[8 * v38];
    v20[3].n128_u64[1] = v21;
    OUTLINED_FUNCTION_9_22(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0, qword_24E36CB90);
    v22 = sub_24E347C28();
    v23 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    sub_24DF88A8C(0, &unk_27F1E1D90, 0x277D0AD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80, &qword_24E37B8A0);
    v24 = swift_initStackObject();
    *(v24 + 16) = xmmword_24E36A270;
    sub_24E347CF8();
    sub_24E348918();
    sub_24DF88A8C(0, &qword_27F1E1DA0, 0x277CBEBC0);
    v25 = sub_24E056700(0xD00000000000002BLL, 0x800000024E3A3190);
    *(v24 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1DA8, &qword_24E3716A0);
    *(v24 + 72) = v25;
    aBlock = sub_24E347CF8();
    v40 = v26;
    sub_24E348918();
    *(v24 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1DB0, &qword_24E3716A8);
    *(v24 + 144) = v22;
    v27 = sub_24E347C28();
    v28 = sub_24E056774(v27);
    if (v23)
    {
      v29 = *MEMORY[0x277D0BAC0];
      v43 = sub_24E056800;
      v44 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      OUTLINED_FUNCTION_7_24();
      v41 = v30;
      v42 = &block_descriptor_24;
      v31 = _Block_copy(&aBlock);
      v32 = v23;
      v33 = v29;
      [v32 openApplication:v33 withOptions:v28 completion:v31];

      _Block_release(v31);
    }

    else
    {

      v33 = v28;
    }

    OUTLINED_FUNCTION_18();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v12)
      {
        goto LABEL_16;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

id sub_24E056700(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_24E347CB8();

  v4 = [v2 initWithString_];

  return v4;
}

id sub_24E056774(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_24E347BE8();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t sub_24E056800(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_24E348998();

    v3 = [v2 description];
    v4 = sub_24E347CF8();
    v6 = v5;

    MEMORY[0x25303E950](v4, v6);

    sub_24E3433B8();
  }

  else
  {
    sub_24E348998();
    MEMORY[0x25303E950](0xD00000000000001DLL, 0x800000024E3A3460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1F50, &unk_24E3718A0);
    sub_24E348AA8();
    sub_24E3433B8();
  }
}

Swift::Void __swiftcall SettingsContainerViewController.openPlayerProfileView(playerID:)(Swift::String_optional playerID)
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v38 = v3;
  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 connectedScenes];

  sub_24DF88A8C(0, &unk_280BDFA70, 0x277D75940);
  sub_24DFFCE00();
  v6 = sub_24E348138();

  v39 = v2;
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24E348838();
    sub_24E348168();
    v8 = v46;
    v7 = v47;
    v2 = v48;
    v9 = v49;
    v10 = v50;
  }

  else
  {
    v7 = v6 + 56;
    OUTLINED_FUNCTION_24_7();
    v10 = v11 & v12;

    v9 = 0;
    v8 = v6;
  }

  v13 = (v2 + 64) >> 6;
  if (v8 < 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_9:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v8 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          break;
        }

        v9 = v16;
        v10 = v17;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_5;
        }

LABEL_11:
        if (sub_24E3488A8())
        {
          swift_dynamicCast();
          v18 = aBlock;
          v16 = v9;
          v17 = v10;
          if (aBlock)
          {
            continue;
          }
        }

        goto LABEL_16;
      }

      v35 = v19;
      OUTLINED_FUNCTION_33_5();
      v36 = [v35 session];
      v37 = [v36 persistentIdentifier];

      sub_24E347CF8();
    }

    else
    {
LABEL_16:
      OUTLINED_FUNCTION_33_5();
      v18 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1D80, &qword_24E371698);
    inited = swift_initStackObject();
    v21 = OUTLINED_FUNCTION_8_23(inited, xmmword_24E36A270);
    v21[3].n128_u64[0] = 0xD000000000000014;
    v21[3].n128_u64[1] = 0x800000024E39C8D0;
    OUTLINED_FUNCTION_9_22(v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFEF0, qword_24E36CB90);
    v22 = sub_24E347C28();
    if (v39)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v22;
      sub_24E058568(v38, v39, 0x4449726579616C70, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
    }

    v24 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    sub_24DF88A8C(0, &unk_27F1E1D90, 0x277D0AD60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80, &qword_24E37B8A0);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_24E36A270;
    sub_24E347CF8();
    sub_24E348918();
    sub_24DF88A8C(0, &qword_27F1E1DA0, 0x277CBEBC0);
    v26 = sub_24E056700(0xD00000000000002BLL, 0x800000024E3A3190);
    *(v25 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1DA8, &qword_24E3716A0);
    *(v25 + 72) = v26;
    aBlock = sub_24E347CF8();
    v41 = v27;
    sub_24E348918();
    *(v25 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1DB0, &qword_24E3716A8);
    *(v25 + 144) = v22;
    v28 = sub_24E347C28();
    v29 = sub_24E056774(v28);
    if (v24)
    {
      v30 = *MEMORY[0x277D0BAC0];
      v44 = sub_24E056EF0;
      v45 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      OUTLINED_FUNCTION_7_24();
      v42 = v31;
      v43 = &block_descriptor_27;
      v32 = _Block_copy(&aBlock);
      v33 = v24;
      v34 = v30;
      [v33 openApplication:v34 withOptions:v29 completion:v32];

      _Block_release(v32);
    }

    else
    {

      v34 = v29;
    }

    OUTLINED_FUNCTION_18();
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        goto LABEL_16;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24E056EF0(void *a1, void *a2)
{
  v4 = sub_24E343F88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  if (a1)
  {
    v11 = a1;
    sub_24E343C98();
    v12 = sub_24E343F78();
    v13 = sub_24E348238();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v29 = v15;
      *v14 = 136315138;
      v16 = sub_24E347CF8();
      v18 = sub_24E1C2BE0(v16, v17, &v29);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_24DE53000, v12, v13, "Successfully launched process: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x253040EE0](v15, -1, -1);
      MEMORY[0x253040EE0](v14, -1, -1);
    }

    return (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_24E343C98();
    v20 = a2;
    v21 = sub_24E343F78();
    v22 = sub_24E348258();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      if (a2)
      {
        v25 = a2;
        v26 = _swift_stdlib_bridgeErrorToNSError();
        v27 = v26;
      }

      else
      {
        v26 = 0;
        v27 = 0;
      }

      *(v23 + 4) = v26;
      *v24 = v27;
      _os_log_impl(&dword_24DE53000, v21, v22, "Failed to launch with error: %@", v23, 0xCu);
      sub_24DF8C95C(v24, &unk_27F1DF730, &qword_24E36DA40);
      MEMORY[0x253040EE0](v24, -1, -1);
      MEMORY[0x253040EE0](v23, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

void SettingsContainerViewController.onboardingFlowFinished(with:)(uint64_t a1)
{
  OUTLINED_FUNCTION_42_3();
  v2 = v1;
  v4 = v3;
  v5 = sub_24E343F88();
  OUTLINED_FUNCTION_0_14();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  sub_24E2AD940(v4, 0);
  if (v4 > 9)
  {
    type metadata accessor for GKOnboardingFlowAction(0);
    v24[1] = v4;
    sub_24E348C58();
    __break(1u);
  }

  else
  {
    if (v4 == 4)
    {
      sub_24E343C58();
      v18 = sub_24E343F78();
      v19 = sub_24E348238();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_24DE53000, v18, v19, "SettingsContainerViewController.onboardingFlowFinished: The user signed out during onboarding.", v20, 2u);
        OUTLINED_FUNCTION_22_4();
      }

      (*(v7 + 8))(v10, v5);
      v21 = [v2 navigationController];
      if (v21)
      {
        v22 = v21;
        v23 = [v21 navigationController];

        if (v23)
        {
        }
      }
    }

    else
    {
      sub_24E343C58();
      v14 = sub_24E343F78();
      v15 = sub_24E348238();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        *(v16 + 4) = v4;
        _os_log_impl(&dword_24DE53000, v14, v15, "SettingsContainerViewController.onboardingFlowFinished: Onboarding flow finished with action %lu", v16, 0xCu);
        OUTLINED_FUNCTION_22_4();
      }

      (*(v7 + 8))(v13, v5);
    }

    sub_24E057504();
    v17 = *&v2[OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_onboardingNavigationController];
    if (v17)
    {
      [v17 dismissViewControllerAnimated:1 completion:0];
    }

    OUTLINED_FUNCTION_29_8();
  }
}

uint64_t sub_24E057504()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFC70, &qword_24E36BAF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_24E348098();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  sub_24E348068();
  v5 = v0;
  v6 = sub_24E348058();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;
  sub_24DFC8700(0, 0, v3, &unk_24E371880, v7);
}

uint64_t sub_24E057658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_24E348068();
  v4[19] = sub_24E348058();
  v6 = sub_24E347FF8();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x2822009F8](sub_24E0576F0, v6, v5);
}

uint64_t sub_24E0576F0()
{
  v1 = v0[18];
  v2 = OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_settings;
  v0[22] = OBJC_IVAR____TtC12GameCenterUI31SettingsContainerViewController_settings;
  if (*(v1 + v2))
  {

    v3 = sub_24DFECF6C();
    v0[23] = v3;

    v0[2] = v0;
    v0[7] = v0 + 24;
    v0[3] = sub_24E0578E8;
    v4 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1298, &unk_24E370670);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_24E0BEDB0;
    v0[13] = &block_descriptor_76_0;
    v0[14] = v4;
    [v3 refreshInternalWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {

    if (*(v0[18] + v0[22]))
    {
      v5 = objc_opt_self();

      v6 = [v5 local];
      v7 = sub_24E245A0C();

      sub_24DFECE04(v7 & 1);
    }

    sub_24E0537B8();
    OUTLINED_FUNCTION_12_5();

    return v8();
  }
}

uint64_t sub_24E0578E8()
{
  OUTLINED_FUNCTION_9_10();
  *v1 = v0;
  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x2822009F8](sub_24E0579EC, v4, v3);
}

uint64_t sub_24E0579EC()
{
  OUTLINED_FUNCTION_8_9();
  v1 = v0[23];

  if (*(v0[18] + v0[22]))
  {
    v2 = objc_opt_self();

    v3 = [v2 local];
    v4 = sub_24E245A0C();

    sub_24DFECE04(v4 & 1);
  }

  sub_24E0537B8();
  OUTLINED_FUNCTION_12_5();

  return v5();
}

id sub_24E057AC0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PreferencesModalController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);
  [v3 setModalPresentationStyle_];
  [v3 setOverrideUserInterfaceStyle_];
  [v3 setDelegate_];

  return v3;
}

void sub_24E057C1C()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for PreferencesModalController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  v1 = [v0 navigationBar];
  v2 = [objc_opt_self() systemWhiteColor];
  [v1 setTintColor_];
}

void sub_24E057D28(int a1, id a2)
{
  v4 = [a2 navigationItem];
  v15 = [v4 rightBarButtonItem];

  v5 = v15;
  if (!v15)
  {
    v6 = [a2 navigationItem];
    v18 = type metadata accessor for PreferencesModalController();
    objc_allocWithZone(MEMORY[0x277D751E0]);
    v7 = v2;
    sub_24E05E770(0, v17, sel_didTapDone, v8, v9, v10, v11, v12, v14, 0, v2, v17[1], v17[2], v18, v19, v20, v21, v22, vars0, vars8);
    v16 = v13;
    [v6 setRightBarButtonItem_];

    v5 = v16;
  }
}

void sub_24E057EAC()
{
  v1 = [v0 presentingViewController];
  if (v1)
  {
    v2 = v1;
    v9 = CGSizeMake;
    v10 = 0;
    v5 = MEMORY[0x277D85DD0];
    v6 = 1107296256;
    v7 = sub_24E00B24C;
    v8 = &block_descriptor_66;
    v3 = _Block_copy(&v5);
    [v2 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }

  else
  {
    v9 = CGSizeMake;
    v10 = 0;
    v5 = MEMORY[0x277D85DD0];
    v6 = 1107296256;
    v7 = sub_24E00B24C;
    v8 = &block_descriptor_63;
    v4 = _Block_copy(&v5);
    [v0 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

uint64_t sub_24E058124(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v7 = sub_24E347CF8();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return a5(v7, v9, a4);
}

id sub_24E058198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreferencesModalController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_24E0581D0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24E0581F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24E058224(char a1, double a2, double a3)
{
  sub_24E26AD30(a3);
  OUTLINED_FUNCTION_0_65();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1E98, &qword_24E3717F8);
  result = sub_24E348AB8();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_24E26AD30(a3);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_24E348C98();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    *(v13[7] + 8 * v9) = a2;
  }

  else
  {

    return sub_24E059110(v9, v13, a3, a2);
  }

  return result;
}

_OWORD *sub_24E058328(uint64_t a1)
{
  OUTLINED_FUNCTION_42_3();
  v6 = v5;
  v8 = v7;
  v10 = OUTLINED_FUNCTION_17_13(v9, v7);
  sub_24E26AE3C(v10);
  OUTLINED_FUNCTION_0_65();
  if (v11)
  {
    __break(1u);
LABEL_14:
    result = sub_24E348C98();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_21_10();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1E90, &qword_24E3717F0);
  if (OUTLINED_FUNCTION_5_33(v12))
  {
    sub_24E26AE3C(v8);
    OUTLINED_FUNCTION_2_37();
    if (!v14)
    {
      goto LABEL_14;
    }

    v4 = v13;
  }

  v15 = *v2;
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1((v15[7] + 32 * v4));
    OUTLINED_FUNCTION_29_8();

    return sub_24E024710(v16, v17);
  }

  else
  {
    sub_24E059154(v4, v8, v6, v1, v15);
    OUTLINED_FUNCTION_29_8();
  }
}

uint64_t sub_24E058434()
{
  OUTLINED_FUNCTION_32();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_19_12();
  sub_24E26AE3C(v7);
  OUTLINED_FUNCTION_0_65();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1EB8, &qword_24E371820);
  OUTLINED_FUNCTION_18_12();
  if ((sub_24E348AB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_24E26AE3C(v6);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_24E348C98();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v0;
  if (v12)
  {
    v16 = (v15[7] + 16 * v11);
    *v16 = v2;
    v16[1] = v1;
    OUTLINED_FUNCTION_18();
  }

  else
  {
    sub_24E0591C0(v11, v6, v4, v2, v1, v15);
    OUTLINED_FUNCTION_18();
  }
}

uint64_t sub_24E058568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_24E26AE3C(a3);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1F40, &unk_24E371890);
  if ((sub_24E348AB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_24E26AE3C(a3);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_24E348C98();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_24E0591C0(v14, a3, a4, a1, a2, v18);
  }
}

void sub_24E0586BC(uint64_t a1)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_3_40(v3, v4, v5);
  OUTLINED_FUNCTION_0_65();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_24E348C98();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_21_10();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1F30, &qword_24E371870);
  v8 = OUTLINED_FUNCTION_5_33(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_26_8();
    OUTLINED_FUNCTION_2_37();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_16_15(v8, v9, v10, v11, *v1);
    OUTLINED_FUNCTION_29_8();

    swift_unknownObjectRelease();
  }

  else
  {
    v14 = OUTLINED_FUNCTION_10_21();
    sub_24E059210(v14, v15, v16, v17, v18);
    OUTLINED_FUNCTION_29_8();
  }
}

void sub_24E058784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_19_12();
  sub_24E26AEE8(v11);
  OUTLINED_FUNCTION_0_65();
  if (v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1F58, &qword_24E3718B0);
  if ((sub_24E348AB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_24E26AEE8(a4);
  if ((v16 & 1) != (v18 & 1))
  {
LABEL_13:
    sub_24E348C98();
    __break(1u);
    return;
  }

  v15 = v17;
LABEL_5:
  if (v16)
  {
    v19 = (*(*v6 + 56) + 24 * v15);
    *v19 = v8;
    v19[1] = v7;
    v19[2] = a3;

    OUTLINED_FUNCTION_39_2();
  }

  else
  {
    OUTLINED_FUNCTION_39_2();

    sub_24E059258(v22, v23, v24, v25, v26, v27, v28);
  }
}

void sub_24E0588EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  OUTLINED_FUNCTION_17_13(a1, a2);
  sub_24E26AE00();
  OUTLINED_FUNCTION_0_65();
  if (v12)
  {
    __break(1u);
LABEL_12:
    sub_24E348C98();
    __break(1u);
    return;
  }

  v13 = v10;
  v14 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (OUTLINED_FUNCTION_12_15(v15))
  {
    sub_24E26AE00();
    OUTLINED_FUNCTION_2_37();
    if (!v17)
    {
      goto LABEL_12;
    }

    v13 = v16;
  }

  if (v14)
  {
    *(*(*v6 + 56) + 8 * v13) = v5;
    OUTLINED_FUNCTION_20_12();
  }

  else
  {
    sub_24DF8BD34(a2, v24);
    v20 = OUTLINED_FUNCTION_38_2();
    sub_24E0592AC(v20, v21, v22, v23);
    OUTLINED_FUNCTION_20_12();
  }
}

uint64_t sub_24E0589DC(uint64_t a1)
{
  OUTLINED_FUNCTION_42_3();
  v2 = v1;
  sub_24E26AFB8(v1);
  OUTLINED_FUNCTION_0_65();
  if (v4)
  {
    __break(1u);
LABEL_13:
    result = sub_24E348C98();
    __break(1u);
    return result;
  }

  v5 = v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1ED8, &unk_24E371840);
  if (OUTLINED_FUNCTION_12_15(v6))
  {
    sub_24E26AFB8(v2);
    OUTLINED_FUNCTION_2_37();
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  if (v5)
  {
    type metadata accessor for AppStorePlatterData(0);
    OUTLINED_FUNCTION_29_8();

    return sub_24E0597C8(v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_29_8();

    return sub_24E059304(v12, v13, v14, v15);
  }
}

uint64_t sub_24E058B14()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_3_40(v6, v7, v8);
  OUTLINED_FUNCTION_0_65();
  if (v9)
  {
    __break(1u);
LABEL_13:
    result = sub_24E348C98();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_21_10();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v11 = OUTLINED_FUNCTION_5_33(v10);
  if (v11)
  {
    OUTLINED_FUNCTION_26_8();
    OUTLINED_FUNCTION_2_37();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_16_15(v11, v12, v13, v14, *v0);
    OUTLINED_FUNCTION_18();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_21();
    sub_24E059210(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_18();
  }
}

void sub_24E058BDC(uint64_t a1)
{
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_3_40(v3, v4, v5);
  OUTLINED_FUNCTION_0_65();
  if (v6)
  {
    __break(1u);
LABEL_13:
    sub_24E348C98();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_21_10();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1EC0, &qword_24E371828);
  v8 = OUTLINED_FUNCTION_5_33(v7);
  if (v8)
  {
    OUTLINED_FUNCTION_26_8();
    OUTLINED_FUNCTION_2_37();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v2)
  {
    OUTLINED_FUNCTION_16_15(v8, v9, v10, v11, *v1);
    OUTLINED_FUNCTION_29_8();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_10_21();
    sub_24E059210(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_29_8();
  }
}

void sub_24E058CA4()
{
  OUTLINED_FUNCTION_32();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_24E26B0F8(v1);
  OUTLINED_FUNCTION_0_65();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1EA0, qword_24E371800);
  OUTLINED_FUNCTION_18_12();
  if ((sub_24E348AB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_24E26B0F8(v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_24E348C98();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 24 * v12);
    *v17 = v8;
    v17[1] = v6;
    v17[2] = v4;

    OUTLINED_FUNCTION_18();
  }

  else
  {
    sub_24E059398(v12, v2, v8, v6, v4, v16);
    OUTLINED_FUNCTION_18();

    swift_unknownObjectRetain();
  }
}

void sub_24E058DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_19_12();
  sub_24E26AE00();
  OUTLINED_FUNCTION_0_65();
  if (v11)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1EB0, &qword_24E384C00);
  OUTLINED_FUNCTION_18_12();
  if ((sub_24E348AB8() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_24E26AE00();
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_24E348C98();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v4;
  if (v13)
  {
    v17 = (v16[7] + 24 * v12);
    *v17 = v6;
    v17[1] = v5;
    v17[2] = a3;

    OUTLINED_FUNCTION_20_12();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_24DF8BD34(a4, v19);
    sub_24E0593E8(v12, v19, v6, v5, a3, v16);
    OUTLINED_FUNCTION_20_12();
  }
}

unint64_t sub_24E058F0C(uint64_t a1)
{
  OUTLINED_FUNCTION_42_3();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_24E26B168(v4);
  OUTLINED_FUNCTION_0_65();
  if (v10)
  {
    __break(1u);
LABEL_14:
    result = sub_24E348C98();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_21_10();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1F20, &qword_24E371860);
  if (OUTLINED_FUNCTION_5_33(v11))
  {
    sub_24E26B168(v5);
    OUTLINED_FUNCTION_2_37();
    if (!v13)
    {
      goto LABEL_14;
    }

    v3 = v12;
  }

  if (v2)
  {
    v14 = (*(*v1 + 56) + 16 * v3);
    *v14 = v9;
    v14[1] = v7;
    OUTLINED_FUNCTION_29_8();
  }

  else
  {
    OUTLINED_FUNCTION_29_8();

    return sub_24E05944C(v17, v18, v19, v20, v21);
  }
}

_OWORD *sub_24E059008(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  OUTLINED_FUNCTION_17_13(a1, a2);
  sub_24E26AE00();
  OUTLINED_FUNCTION_0_65();
  if (v8)
  {
    __break(1u);
LABEL_12:
    result = sub_24E348C98();
    __break(1u);
    return result;
  }

  v9 = v6;
  v10 = v7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1F60, &unk_24E38D380);
  if (OUTLINED_FUNCTION_12_15(v11))
  {
    sub_24E26AE00();
    OUTLINED_FUNCTION_2_37();
    if (!v13)
    {
      goto LABEL_12;
    }

    v9 = v12;
  }

  if (v10)
  {
    v14 = (*(*v3 + 56) + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1((*(*v4 + 56) + 32 * v9));

    return sub_24E024710(v2, v14);
  }

  else
  {
    sub_24DF8BD34(a2, v20);
    v16 = OUTLINED_FUNCTION_38_2();
    return sub_24E059494(v16, v17, v18, v19);
  }
}

unint64_t sub_24E059110(unint64_t result, void *a2, double a3, double a4)
{
  a2[(result >> 6) + 8] |= 1 << result;
  *(a2[6] + 8 * result) = a3;
  *(a2[7] + 8 * result) = a4;
  v4 = a2[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a2[2] = v6;
  }

  return result;
}

_OWORD *sub_24E059154(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24E024710(a4, (a5[7] + 32 * a1));
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

unint64_t sub_24E0591C0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_24E059210(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
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

unint64_t sub_24E059258(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
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

unint64_t sub_24E0592AC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
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

uint64_t sub_24E059304(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for AppStorePlatterData(0);
  result = sub_24DFC7750(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_24E059398(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  *(a6[6] + 8 * result) = a2;
  v6 = (a6[7] + 24 * result);
  *v6 = a3;
  v6[1] = a4;
  v6[2] = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

unint64_t sub_24E0593E8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 40 * result;
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a2 + 32);
  v8 = (a6[7] + 24 * result);
  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

unint64_t sub_24E05944C(unint64_t result, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
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

_OWORD *sub_24E059494(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_24E024710(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_24E059510()
{
  OUTLINED_FUNCTION_8_9();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_21(v1);

  return sub_24E053190(v2, v3, v4, v5);
}

void sub_24E0595AC(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v6 = sub_24E347CB8();

  [a3 reportScreenTimeEventForType:v6 withStartTimestamp:a4];
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E05965C()
{
  result = qword_27F1E1DB8;
  if (!qword_27F1E1DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E1DB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SettingsContainerViewController.DashboardInvocationType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_24E0597C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStorePlatterData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E05982C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E059874(uint64_t a1)
{
  v2 = type metadata accessor for GameCenterSettingsContainerView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24E0598D4()
{
  OUTLINED_FUNCTION_8_9();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_21(v1);

  return sub_24E057658(v2, v3, v4, v5);
}

uint64_t sub_24E059970()
{
  v1 = *v0;
  OUTLINED_FUNCTION_9_10();
  *v2 = v1;

  OUTLINED_FUNCTION_12_5();

  return v3();
}

unint64_t OUTLINED_FUNCTION_3_40(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_24E26AE3C(a2);
}

uint64_t OUTLINED_FUNCTION_5_33(uint64_t a1)
{

  return sub_24E348AB8();
}

__n128 *OUTLINED_FUNCTION_8_23(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "invocationType");
  result[2].n128_u8[15] = -18;
  return result;
}

void *OUTLINED_FUNCTION_9_22(void *result)
{
  result[8] = 0x656449656E656373;
  result[9] = 0xEF7265696669746ELL;
  result[10] = v1;
  result[11] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1)
{

  return sub_24E348AB8();
}

uint64_t OUTLINED_FUNCTION_16_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 56);
  result = *(v7 + 8 * v6);
  *(v7 + 8 * v6) = v5;
  return result;
}

id OUTLINED_FUNCTION_25_10()
{

  return [v0 (v1 + 2808)];
}

unint64_t OUTLINED_FUNCTION_26_8()
{

  return sub_24E26AE3C(v0);
}

id OUTLINED_FUNCTION_28_7(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id OUTLINED_FUNCTION_30_7()
{

  return [v1 (v0 + 2808)];
}

uint64_t OUTLINED_FUNCTION_32_5()
{
  sub_24DFFCE68();
}

uint64_t OUTLINED_FUNCTION_33_5()
{
  sub_24DFFCE68();
}

void OUTLINED_FUNCTION_35_5(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 1;
}

void OUTLINED_FUNCTION_40_3()
{
}

uint64_t type metadata accessor for PlayerProfileInfoBarData(uint64_t a1)
{
  result = qword_27F1E1FD8;
  if (!qword_27F1E1FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PlayerProfileInfoBarData.init(infoItems:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24E3433A8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  v11 = type metadata accessor for PlayerProfileInfoBarData(0);
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  v12 = *(v11 + 28);
  v13 = sub_24E3474B8();
  __swift_storeEnumTagSinglePayload(a2 + v12, 1, 1, v13);
  *(a2 + 40) = a1;
  sub_24E343398();
  (*(v5 + 16))(v7, v10, v4);
  sub_24E05A1C0(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24E348918();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_24E05A1C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24E05A23C(uint64_t a1)
{
  sub_24E05A340(319, &qword_27F1E1FE8, &qword_27F1E1FF0, &unk_24E3719A0, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24E05A340(319, &qword_280BE0130, &qword_27F1DF158, &unk_24E37CFA0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24DF9E0E0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24E05A340(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24E05A3B4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E05A408(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_24E05A494@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for GameCenterSettings(0);
  sub_24E05BEF8(&qword_27F1E01A0, type metadata accessor for GameCenterSettings, &protocol conformance descriptor for GameCenterSettings);
  v2 = sub_24E345848();
  v4 = v3;
  sub_24E346B78();
  result = sub_24E346B78();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_24E05A574()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E1FF8, &qword_24E371AC8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E2000, &qword_24E371AD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830, &qword_24E36BC10);
  sub_24E05BB6C();
  sub_24DF90C4C();
  sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830, &qword_24E36BC10, MEMORY[0x277CDF028]);
  swift_getOpaqueTypeConformance2();
  return sub_24E346D28();
}

uint64_t sub_24E05A6B0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v52 = sub_24E345738();
  v51 = *(v52 - 1);
  MEMORY[0x28223BE20](v52);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2038, &qword_24E371AE8);
  v4 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v6 = &v44 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2028, &qword_24E371AE0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2010, &qword_24E371AD8);
  MEMORY[0x28223BE20](v48);
  v12 = &v44 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2050, &qword_24E371AF0);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v44 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2000, &qword_24E371AD0);
  MEMORY[0x28223BE20](v53);
  v55 = &v44 - v14;
  v15 = *a1;
  v61 = a1[1];
  v62 = v15;
  v60 = a1[2];
  v16 = swift_allocObject();
  v17 = a1[1];
  v16[1] = *a1;
  v16[2] = v17;
  v16[3] = a1[2];
  v56 = a1;
  sub_24DF8BD90(&v62, v57, &qword_27F1E2058, &qword_24E371AF8);
  sub_24DF8BD90(&v61, v57, &qword_27F1E34E0, &qword_24E371440);
  sub_24DF8BD90(&v60, v57, &qword_27F1E34E0, &qword_24E371440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2060, &qword_24E371B00);
  sub_24DFB4C28(&qword_27F1E2068, &qword_27F1E2060, &qword_24E371B00, MEMORY[0x277CE1138]);
  sub_24E346BD8();
  type metadata accessor for GameCenterSettings(0);
  v18 = sub_24DFF2054();
  v19 = objc_opt_self();
  v20 = &selRef_systemRedColor;
  if ((v18 & 1) == 0)
  {
    v20 = &selRef_tertiaryLabelColor;
  }

  v21 = [v19 *v20];
  v22 = sub_24E346948();
  KeyPath = swift_getKeyPath();
  (*(v4 + 32))(v10, v6, v45);
  v24 = &v10[*(v8 + 44)];
  *v24 = KeyPath;
  v24[1] = v22;
  if (sub_24DFF2054())
  {
    v57[0] = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
    sub_24E346B88();
    v25 = v58;
  }

  else
  {
    v25 = 1;
  }

  v26 = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  sub_24E05BE10(v10, v12);
  v28 = v48;
  v29 = &v12[*(v48 + 36)];
  *v29 = v26;
  v29[1] = sub_24DFEB7E4;
  v29[2] = v27;
  *&v57[0] = MEMORY[0x277D84F90];
  sub_24E05BEF8(&qword_27F1DFB98, MEMORY[0x277CDDA80], MEMORY[0x277CDDA88]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFBA0, &unk_24E37EA60);
  sub_24DFB4C28(&qword_27F1DFBA8, &qword_27F1DFBA0, &unk_24E37EA60, MEMORY[0x277D83970]);
  v30 = v50;
  v31 = v52;
  sub_24E3487E8();
  v32 = sub_24E05BC64();
  v33 = v46;
  sub_24E3468F8();
  (*(v51 + 8))(v30, v31);
  sub_24DF8BFF4(v12, &qword_27F1E2010, &qword_24E371AD8);
  *&v57[0] = v28;
  *(&v57[0] + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v49;
  sub_24E346648();
  (*(v47 + 8))(v33, v34);
  v35 = sub_24E347CB8();
  v36 = GKGameCenterUIFrameworkBundle();
  v37 = GKGetLocalizedStringFromTableInBundle();

  v38 = sub_24E347CF8();
  v40 = v39;

  v58 = v38;
  v59 = v40;
  v57[2] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  v41 = sub_24E346BA8();
  v52 = &v44;
  MEMORY[0x28223BE20](v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF830, &qword_24E36BC10);
  sub_24E05BB6C();
  sub_24DF90C4C();
  sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830, &qword_24E36BC10, MEMORY[0x277CDF028]);
  v42 = v55;
  sub_24E346838();

  return sub_24DE5D8B4(v42);
}

uint64_t sub_24E05AF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24E345BF8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2070, &qword_24E371B68);
  return sub_24E05AFF4(a1, a2 + *(v4 + 44));
}

uint64_t sub_24E05AFF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2078, &qword_24E371B70);
  MEMORY[0x28223BE20](v4);
  v6 = &v29[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DE230, &qword_24E37C830);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2080, &qword_24E371B78);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v29[-v15];
  v30 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B88();
  if (v29[15] == 1)
  {
    sub_24E345348();
    (*(v8 + 16))(v6, v10, v7);
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E2088, &qword_27F1DE230, &qword_24E37C830, MEMORY[0x277CDD7F8]);
    sub_24E345E38();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v17 = sub_24E347CB8();
    v18 = GKGameCenterUIFrameworkBundle();
    v19 = GKGetLocalizedStringFromTableInBundle();

    v20 = sub_24E347CF8();
    v22 = v21;

    *&v30 = v20;
    *(&v30 + 1) = v22;
    sub_24DF90C4C();
    *v6 = sub_24E3464E8();
    *(v6 + 1) = v23;
    v6[16] = v24 & 1;
    *(v6 + 3) = v25;
    swift_storeEnumTagMultiPayload();
    sub_24DFB4C28(&qword_27F1E2088, &qword_27F1DE230, &qword_24E37C830, MEMORY[0x277CDD7F8]);
    sub_24E345E38();
  }

  sub_24DF8BD90(v16, v13, &qword_27F1E2080, &qword_24E371B78);
  *a2 = 0;
  *(a2 + 8) = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2090, &qword_24E371B80);
  sub_24DF8BD90(v13, a2 + *(v26 + 48), &qword_27F1E2080, &qword_24E371B78);
  v27 = a2 + *(v26 + 64);
  *v27 = 0;
  *(v27 + 8) = 1;
  sub_24DF8BFF4(v16, &qword_27F1E2080, &qword_24E371B78);
  return sub_24DF8BFF4(v13, &qword_27F1E2080, &qword_24E371B78);
}

uint64_t sub_24E05B3F0(__int128 *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DF8A8, &qword_24E37A270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16[-v3];
  v5 = sub_24E347CB8();
  v6 = GKGameCenterUIFrameworkBundle();
  v7 = GKGetLocalizedStringFromTableInBundle();

  v8 = sub_24E347CF8();
  v10 = v9;

  v17 = v8;
  v18 = v10;
  sub_24E345178();
  v11 = sub_24E345198();
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v11);
  v12 = *a1;
  v20 = a1[1];
  v21 = v12;
  v19 = a1[2];
  v13 = swift_allocObject();
  v14 = a1[1];
  v13[1] = *a1;
  v13[2] = v14;
  v13[3] = a1[2];
  sub_24DF8BD90(&v21, v16, &qword_27F1E2058, &qword_24E371AF8);
  sub_24DF8BD90(&v20, v16, &qword_27F1E34E0, &qword_24E371440);
  sub_24DF8BD90(&v19, v16, &qword_27F1E34E0, &qword_24E371440);
  sub_24DF90C4C();
  return sub_24E346BF8();
}

void sub_24E05B5D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
  sub_24E346B98();
  sub_24E05B638();
}

void sub_24E05B638()
{
  v1 = [objc_opt_self() local];
  v2 = v0[1];
  v10 = *v0;
  v8 = v0[2];
  v9 = v2;
  v3 = swift_allocObject();
  v4 = v0[1];
  v3[1] = *v0;
  v3[2] = v4;
  v3[3] = v0[2];
  aBlock[4] = sub_24E05BED8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E052CF0;
  aBlock[3] = &block_descriptor_26;
  v5 = _Block_copy(aBlock);
  sub_24DF8BD90(&v10, v6, &qword_27F1E2058, &qword_24E371AF8);
  sub_24DF8BD90(&v9, v6, &qword_27F1E34E0, &qword_24E371440);
  sub_24DF8BD90(&v8, v6, &qword_27F1E34E0, &qword_24E371440);

  [v1 signOutAndOptOut:1 completionHandler:v5];
  _Block_release(v5);
}

uint64_t sub_24E05B7AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24E347CB8();
  v3 = GKGameCenterUIFrameworkBundle();
  v4 = GKGetLocalizedStringFromTableInBundle();

  sub_24E347CF8();
  sub_24DF90C4C();
  result = sub_24E3464E8();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

void sub_24E05B870(uint64_t a1, void *a2)
{
  if (*a2)
  {

    v2 = sub_24DFECF6C();
    v3 = sub_24E245A0C();

    sub_24DFECE04(v3 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E34E0, &qword_24E371440);
    sub_24E346B98();
    v4 = [objc_allocWithZone(MEMORY[0x277D0C1F8]) init];
    v5 = sub_24E347CF8();
    v7 = v6;
    v8 = sub_24E347CF8();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DFF80, &qword_24E37B8A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24E367D20;
    v12 = MEMORY[0x277D837D0];
    sub_24E348918();
    if (qword_27F1DD788 != -1)
    {
      swift_once();
    }

    if (byte_27F1E20F0)
    {
      v13 = 0xE900000000000072;
      v14 = 0x6579614C656D6167;
    }

    else
    {
      if (qword_27F1DD790 != -1)
      {
        swift_once();
      }

      v14 = 0x73676E6974746573;
      if (!byte_27F1E20F1)
      {
        v14 = 0x65726F7453707061;
      }

      v13 = 0xE800000000000000;
    }

    *(inited + 96) = v12;
    *(inited + 72) = v14;
    *(inited + 80) = v13;
    v15 = sub_24E347C28();
    sub_24E32BF38(v5, v7, v8, v10, v15, v4);
  }

  else
  {
    type metadata accessor for GameCenterSettings(0);
    sub_24E05BEF8(&qword_27F1E01A0, type metadata accessor for GameCenterSettings, &protocol conformance descriptor for GameCenterSettings);
    sub_24E345828();
    __break(1u);
  }
}

unint64_t sub_24E05BB6C()
{
  result = qword_27F1E2008;
  if (!qword_27F1E2008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E2000, &qword_24E371AD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E2010, &qword_24E371AD8);
    sub_24E05BC64();
    swift_getOpaqueTypeConformance2();
    sub_24E05BEF8(&qword_27F1DF850, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2008);
  }

  return result;
}

unint64_t sub_24E05BC64()
{
  result = qword_27F1E2018;
  if (!qword_27F1E2018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E2010, &qword_24E371AD8);
    sub_24E05BD1C();
    sub_24DFB4C28(&qword_27F1E0160, &qword_27F1E0168, &unk_24E37BF60, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2018);
  }

  return result;
}

unint64_t sub_24E05BD1C()
{
  result = qword_27F1E2020;
  if (!qword_27F1E2020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E2028, &qword_24E371AE0);
    sub_24DFB4C28(&qword_27F1E2030, &qword_27F1E2038, &qword_24E371AE8, MEMORY[0x277CDF028]);
    sub_24DFB4C28(&qword_27F1E2040, &qword_27F1E2048, &unk_24E37DE20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2020);
  }

  return result;
}

uint64_t sub_24E05BE10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2028, &qword_24E371AE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E05BEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E05BF40()
{
  result = qword_27F1E2098;
  if (!qword_27F1E2098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E20A0, &unk_24E371B88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E2000, &qword_24E371AD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1DF830, &qword_24E36BC10);
    sub_24E05BB6C();
    sub_24DF90C4C();
    sub_24DFB4C28(&qword_27F1DF868, &qword_27F1DF830, &qword_24E36BC10, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E2098);
  }

  return result;
}

uint64_t type metadata accessor for AlertAction(uint64_t a1)
{
  result = qword_27F1E20A8;
  if (!qword_27F1E20A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E05C110(uint64_t a1)
{
  sub_24E05C1A4(319);
  if (v1 <= 0x3F)
  {
    sub_24E347208();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24E05C1A4(uint64_t a1)
{
  if (!qword_27F1E20B8)
  {
    sub_24E05C1FC();
    v1 = sub_24E347FC8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F1E20B8);
    }
  }
}

unint64_t sub_24E05C1FC()
{
  result = qword_27F1E2900;
  if (!qword_27F1E2900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E2900);
  }

  return result;
}

char *sub_24E05C2AC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  type metadata accessor for EmptyStateView();
  *&v4[OBJC_IVAR____TtC12GameCenterUI32GKMultiplayerPickerNoFriendsCell_noFriendsView] = static EmptyStateView.addFriendsWithButtonEmptyStateView.getter();
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = *MEMORY[0x277D768C8];
  v12 = *(MEMORY[0x277D768C8] + 8);
  v13 = *(MEMORY[0x277D768C8] + 16);
  v14 = *(MEMORY[0x277D768C8] + 24);
  v15 = v10;
  [v15 setLayoutMargins_];
  v16 = [v15 contentView];
  [v16 _setContinuousCornerRadius_];

  v17 = [v15 contentView];
  if (qword_27F1DDDD0 != -1)
  {
    swift_once();
  }

  [v17 setBackgroundColor_];

  v18 = [v15 contentView];
  [v18 addSubview_];

  return v15;
}

uint64_t GKMultiplayerPickerNoFriendsCell.addFriendsHandler.getter()
{
  v1 = (*(v0 + OBJC_IVAR____TtC12GameCenterUI32GKMultiplayerPickerNoFriendsCell_noFriendsView) + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_24DE56C38(*v1, v1[1]);
  return v2;
}

uint64_t GKMultiplayerPickerNoFriendsCell.addFriendsHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (*(v2 + OBJC_IVAR____TtC12GameCenterUI32GKMultiplayerPickerNoFriendsCell_noFriendsView) + OBJC_IVAR____TtC12GameCenterUI14EmptyStateView_buttonActionBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  sub_24DE56C38(a1, a2);
  sub_24DE73FA0(v6, v7);
  return sub_24DE73FA0(a1, a2);
}

uint64_t sub_24E05C73C@<X0>(uint64_t (**a1)()@<X8>)
{
  result = GKMultiplayerPickerNoFriendsCell.addFriendsHandler.getter();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFA0D30;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24E05C7AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFA0D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1, v2);
  return GKMultiplayerPickerNoFriendsCell.addFriendsHandler.setter(v4, v3);
}

uint64_t (*GKMultiplayerPickerNoFriendsCell.addFriendsHandler.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = GKMultiplayerPickerNoFriendsCell.addFriendsHandler.getter();
  a1[1] = v3;
  return sub_24E05C884;
}

uint64_t sub_24E05C884(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = OUTLINED_FUNCTION_27_1();
    sub_24DE56C38(v2, v3);
    v4 = OUTLINED_FUNCTION_27_1();
    GKMultiplayerPickerNoFriendsCell.addFriendsHandler.setter(v4, v5);
    v6 = OUTLINED_FUNCTION_27_1();

    return sub_24DE73FA0(v6, v7);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_27_1();
    return GKMultiplayerPickerNoFriendsCell.addFriendsHandler.setter(v9, v10);
  }
}

void GKMultiplayerPickerNoFriendsCell.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  swift_getObjectType();

  sub_24E2DE0F8();
}

double static GKMultiplayerPickerNoFriendsCell.itemHeight(fitting:in:)(uint64_t a1, double a2, double a3)
{
  v4 = type metadata accessor for EmptyStateData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EmptyStateView();
  sub_24DFC2E68();
  v7 = sub_24E2D9D54(v6, a1);
  sub_24DFE22E0(v6);
  return v7;
}

Swift::Void __swiftcall GKMultiplayerPickerNoFriendsCell.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12GameCenterUI32GKMultiplayerPickerNoFriendsCell_noFriendsView];
  [v0 bounds];
  v3 = v2;
  v5 = v4;
  [v0 layoutMargins];
  [v1 setFrame_];
}

id GKMultiplayerPickerNoFriendsCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_24E05CC64()
{
  OUTLINED_FUNCTION_29();
  MoreCollectionViewCell = type metadata accessor for ActivityFeedLoadMoreCollectionViewCell(0);
  v1 = OUTLINED_FUNCTION_28();
  return objc_msgSendSuper2(v2, v3, v1, v0, MoreCollectionViewCell);
}

double sub_24E05CD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_12_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  OUTLINED_FUNCTION_3_18(a2, &v18 - v14);
  OUTLINED_FUNCTION_3_18(a3, &v15[*(v6 + 56)]);
  sub_24DFC5400(v15, v12);
  v16 = *(v6 + 56);
  OUTLINED_FUNCTION_3_18(v12, v9);
  OUTLINED_FUNCTION_3_18(&v12[v16], v9 + *(v6 + 56));
  sub_24DF8C95C(v9, &unk_27F1E1CA0, &unk_24E36C0D0);
  sub_24DF8C95C(&v12[v16], &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8C95C(v12, &unk_27F1E1CB0, &unk_24E36D160);
  return 0.0;
}

double sub_24E05CEB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_24DF9DEAC(a2, &v19 - v14, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF9DEAC(a3, &v15[*(v9 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  type metadata accessor for ActivityFeedBaseCollectionViewCell(0);
  sub_24DF9DEAC(v15, v12, &unk_27F1E1CA0, &unk_24E36C0D0);
  v16 = *(v9 + 56);
  v17 = sub_24E17B0B4(a1, v12, v12 + v16, a4);
  sub_24DF8C95C(v15, &unk_27F1E1CA0, &unk_24E36C0D0);
  sub_24DF8C95C(v12 + v16, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF8C95C(v12, &unk_27F1E1CB0, &unk_24E36D160);
  return v17;
}

uint64_t sub_24E05D050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18[0] = a1;
  v18[1] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E1CA0, &unk_24E36C0D0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_12_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v18 - v14;
  sub_24DF9DEAC(a2, v18 - v14, &unk_27F1E1CB0, &unk_24E36D160);
  sub_24DF9DEAC(a3, &v15[*(v9 + 56)], &unk_27F1E1CB0, &unk_24E36D160);
  type metadata accessor for ActivityFeedBaseCollectionViewCell(0);
  sub_24DF9DEAC(v15, v12, &unk_27F1E1CA0, &unk_24E36C0D0);
  v16 = *(v9 + 56);
  sub_24E17B1EC(v12, v12 + v16, a5);
  sub_24DF8C95C(v15, &unk_27F1E1CA0, &unk_24E36C0D0);
  sub_24DF8C95C(v12 + v16, &unk_27F1E1CB0, &unk_24E36D160);
  return sub_24DF8C95C(v12, &unk_27F1E1CB0, &unk_24E36D160);
}

id sub_24E05D1C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityFeedLoadMoreCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ActivityFeedLoadMoreCollectionViewCell(uint64_t a1)
{
  result = qword_27F1E20C8;
  if (!qword_27F1E20C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E05D284(uint64_t a1)
{
  result = sub_24E05D3C4(&qword_27F1E20D8, type metadata accessor for ActivityFeedLoadMoreCollectionViewCell, &unk_24E371C68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E05D36C(uint64_t a1)
{
  result = sub_24E05D3C4(&qword_27F1E20E8, type metadata accessor for ActivityFeedLoadMoreCollectionViewCell, &unk_24E371C98);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24E05D3C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SourceEnvironment.rawValue.getter()
{
  v1 = 0x73676E6974746573;
  if (*v0 != 1)
  {
    v1 = 0x65726F7453707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6579614C656D6167;
  }
}

uint64_t sub_24E05D474()
{
  result = GKIsRemoteUI();
  byte_27F1E20F0 = result;
  return result;
}

id sub_24E05D494()
{
  result = [objc_opt_self() isPreferences];
  byte_27F1E20F1 = result;
  return result;
}

GameCenterUI::SourceEnvironment_optional __swiftcall SourceEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24E348B78();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_24E05D534()
{
  result = qword_27F1E20F8;
  if (!qword_27F1E20F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E20F8);
  }

  return result;
}

uint64_t sub_24E05D5AC@<X0>(uint64_t *a1@<X8>)
{
  result = SourceEnvironment.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SourceEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

id GameLayerNavigationController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id GameLayerNavigationController.init(rootViewController:)(void *a1)
{
  v1[OBJC_IVAR____TtC12GameCenterUI29GameLayerNavigationController_showsDoneButton] = 1;
  v3 = &v1[OBJC_IVAR____TtC12GameCenterUI29GameLayerNavigationController_doneHandler];
  v4 = type metadata accessor for GameLayerNavigationController();
  *v3 = 0;
  v3[1] = 0;
  v8.receiver = v1;
  v8.super_class = v4;
  v5 = objc_msgSendSuper2(&v8, sel_initWithRootViewController_, a1);
  if (GKIsRemoteUI())
  {
    [v5 setOverrideUserInterfaceStyle_];
  }

  v6 = v5;
  [v6 setModalPresentationStyle_];
  [v6 setTransitioningDelegate_];
  [v6 setDelegate_];

  return v6;
}

void sub_24E05D818()
{
  *(v0 + OBJC_IVAR____TtC12GameCenterUI29GameLayerNavigationController_showsDoneButton) = 1;
  v1 = (v0 + OBJC_IVAR____TtC12GameCenterUI29GameLayerNavigationController_doneHandler);
  *v1 = 0;
  v1[1] = 0;
  sub_24E348AE8();
  __break(1u);
}

void sub_24E05D8EC()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 1)
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      v15.origin.x = v6;
      v15.origin.y = v8;
      v15.size.width = v10;
      v15.size.height = v12;
      CGRectGetWidth(v15);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = [v0 traitCollection];
    v14 = [v13 userInterfaceIdiom];

    if (v14)
    {
      GKIsXRUIIdiomShouldUsePhoneUI();
    }
  }
}

uint64_t sub_24E05DA10()
{
  v1 = OBJC_IVAR____TtC12GameCenterUI29GameLayerNavigationController_showsDoneButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_24E05DA54(char a1)
{
  v3 = OBJC_IVAR____TtC12GameCenterUI29GameLayerNavigationController_showsDoneButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_24E05DAF4@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_24E05DBF4();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_24DFA0D30;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_24E05DB64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_24DFA0D28;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_24DE56C38(v1, v2);
  return sub_24E05DC48(v4, v3);
}

uint64_t sub_24E05DBF4()
{
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_1_19();
  sub_24DE56C38(v0, v1);
  return OUTLINED_FUNCTION_1_19();
}

uint64_t sub_24E05DC48(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameCenterUI29GameLayerNavigationController_doneHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_24DE73FA0(v6, v7);
}

void sub_24E05DCF8()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for GameLayerNavigationController();
  objc_msgSendSuper2(&v3, sel_viewDidLoad);
  if (GKIsRemoteUI())
  {
    v1 = [v0 navigationBar];
    v2 = [objc_opt_self() systemWhiteColor];
    [v1 setTintColor_];
  }
}

id sub_24E05DDE0(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for GameLayerNavigationController();
  return objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
}

void sub_24E05DE80(int a1, id a2)
{
  v3 = a2;
  v4 = sub_24E05F2EC([a2 navigationItem]);
  if (!v4)
  {
LABEL_12:
    v11 = OBJC_IVAR____TtC12GameCenterUI29GameLayerNavigationController_showsDoneButton;
    swift_beginAccess();
    if (v2[v11] != 1)
    {
      return;
    }

    v30 = type metadata accessor for GameLayerNavigationController();
    objc_allocWithZone(MEMORY[0x277D751E0]);
    v12 = v2;
    sub_24E05E770(0, v29, sel_didTapDone, v13, v14, v15, v16, v17, v28, v2, v29[1], v29[2], v30, *v31, *&v31[8], *&v31[16], v32, v33, v34, v35);
    v19 = v18;
    [v18 setTag_];
    v20 = sub_24E05F2EC([v3 navigationItem]);
    if (v20)
    {
      v21 = v20;
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v29[0] = v21;
    sub_24E05F294(0, v21);
    if (sub_24DFD2A5C(v21) < 0)
    {
LABEL_25:
      __break(1u);
    }

    else
    {
      v22 = sub_24DFD8654();
      v23 = v22 + 1;
      if (!__OFADD__(v22, 1))
      {
        v24 = v19;
        sub_24E05E9C0(v23, 1);
        sub_24E05ED04(0, 0, 1, v24);
        v25 = [v3 navigationItem];
        v26 = OUTLINED_FUNCTION_1_19();
        sub_24E052820(v26, v27);

        return;
      }
    }

    __break(1u);
    return;
  }

  v5 = v4;
  v28 = v3;
  v6 = sub_24DFD8654();
  v7 = 0;
  do
  {
    if (v6 == v7)
    {

      v3 = v28;
      goto LABEL_12;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x25303F560](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = [v8 tag];

    ++v7;
  }

  while (v10 != 8002);
}

id sub_24E05E164(void *a1, uint64_t a2, void *a3)
{
  sub_24DF88A8C(0, &unk_27F1E2110, 0x277D76240);
  v5 = a1;
  v6 = a3;
  v7 = OUTLINED_FUNCTION_1_19();
  v9 = sub_24E05E1F0(v7, v8);
  [v9 _setWantsBottomAttachedInCompactHeight_];
  [v9 _setWidthFollowsPreferredContentSizeWhenBottomAttached_];
  return v9;
}

id sub_24E05E1F0(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPresentedViewController:a1 presentingViewController:a2];

  return v4;
}

void sub_24E05E2E0()
{
  v1 = swift_allocObject();
  v2 = [v0 presentationController];
  swift_unknownObjectWeakInit();

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v0;
  v4 = v0;
  v5 = [v4 presentingViewController];
  if (v5)
  {
    v6 = v5;
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_6_29();
    v12 = v7;
    v13 = &block_descriptor_10_0;
    v8 = _Block_copy(v11);

    [v6 dismissViewControllerAnimated:1 completion:v8];

    _Block_release(v8);
  }

  else
  {
    OUTLINED_FUNCTION_2_38();
    OUTLINED_FUNCTION_6_29();
    v12 = v9;
    v13 = &block_descriptor_28;
    v10 = _Block_copy(v11);

    [v4 dismissViewControllerAnimated:1 completion:v10];

    _Block_release(v10);
  }
}

uint64_t sub_24E05E460(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong delegate];
    if (v5)
    {
      v6 = v5;
      if ([v5 respondsToSelector_])
      {
        [v6 presentationControllerDidDismiss_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  v7 = a2 + OBJC_IVAR____TtC12GameCenterUI29GameLayerNavigationController_doneHandler;
  result = swift_beginAccess();
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v7 + 8);

    v9(v11);
    return sub_24DE73FA0(v9, v10);
  }

  return result;
}

id GameLayerNavigationController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id GameLayerNavigationController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_24E347CB8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id GameLayerNavigationController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameLayerNavigationController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24E05E770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_32();
  a19 = v21;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = v22[3];
  if (v28)
  {
    v29 = v22;
    v30 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v31 = *(v28 - 8);
    v32 = MEMORY[0x28223BE20](v30);
    v34 = &a9 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34, v32);
    v35 = sub_24E348BE8();
    (*(v31 + 8))(v34, v28);
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    v35 = 0;
  }

  [v20 initWithBarButtonSystemItem:v27 target:v35 action:v25];
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_18();
}

uint64_t sub_24E05E948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_24E05E9C0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_24E348878();
LABEL_9:
  result = sub_24E348A18();
  *v2 = result;
  return result;
}

uint64_t sub_24E05EA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = sub_24E344688();
  v11 = *(result - 8);
  v12 = *(v11 + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = result;
  v15 = v9 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v16 = v15 + v12 * a1;
  result = swift_arrayDestroy();
  v17 = __OFSUB__(a3, v13);
  v18 = a3 - v13;
  if (v17)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v24 = v16 + v12 * a3;
  if (v18)
  {
    v19 = *(v9 + 16);
    if (!__OFSUB__(v19, a2))
    {
      result = sub_24E12EC4C(v15 + v12 * a2, v19 - a2, v24);
      v20 = *(v9 + 16);
      v17 = __OFADD__(v20, v18);
      v21 = v20 + v18;
      if (!v17)
      {
        *(v9 + 16) = v21;
        goto LABEL_7;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (a3 < 1 || v12 * a3 < 1)
  {
    return sub_24DF8C95C(a4, &qword_27F1E21A8, &qword_24E3848E0);
  }

  for (i = 0; (i & 1) == 0; i = 1)
  {
    result = (*(v11 + 16))(v16, a4, v14);
    v16 += v12;
    if (v16 >= v24)
    {
      return sub_24DF8C95C(a4, &qword_27F1E21A8, &qword_24E3848E0);
    }
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_24E05EBFC()
{
  OUTLINED_FUNCTION_32();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = *v0 + 32;
  v11 = v10 + 40 * v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E2180, &unk_24E36CD20);
  swift_arrayDestroy();
  v12 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v11 + 40 * v7;
  if (!v12)
  {
LABEL_7:
    if (v7 < 1)
    {
LABEL_11:
      sub_24DF8C95C(v6, &qword_27F1E2188, &qword_24E371DF8);
      OUTLINED_FUNCTION_18();
      return;
    }

    v18 = 0;
    while ((v18 & 1) == 0)
    {
      sub_24DF89628(v6, v11);
      v11 += 40;
      v18 = 1;
      if (v11 >= v13)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_15;
  }

  v14 = *(v9 + 16);
  if (__OFSUB__(v14, v8))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_24E130EC4(v10 + 40 * v8, v14 - v8, (v11 + 40 * v7));
  v15 = *(v9 + 16);
  v16 = __OFADD__(v15, v12);
  v17 = v15 + v12;
  if (!v16)
  {
    *(v9 + 16) = v17;
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
}

void sub_24E05ED04(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_24DF88A8C(0, &unk_27F1E21B0, 0x277D751E0);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_24E348878();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_24E130EB0(v8 + 8 * v6, &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_24E348878();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

void sub_24E05EE94()
{
  OUTLINED_FUNCTION_32();
  v13 = v8 - v7;
  if (__OFSUB__(v8, v7))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v12;
  v0 = v9;
  v4 = v8;
  v14 = *v1;
  v1 = (*v1 & 0xFFFFFFFFFFFFFF8);
  v5 = v1 + 4;
  v3 = &v1[v7 + 4];
  sub_24DF88A8C(0, v10, v11);
  swift_arrayDestroy();
  v15 = __OFSUB__(v0, v13);
  v13 = v0 - v13;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v6 = v14 >> 62;
  if (!(v14 >> 62))
  {
    v16 = v1[2];
    goto LABEL_6;
  }

LABEL_16:
  v16 = sub_24E348878();
LABEL_6:
  if (__OFSUB__(v16, v4))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2(&v5[v4], v16 - v4, v3 + 8 * v0);
  if (v6)
  {
    v17 = sub_24E348878();
  }

  else
  {
    v17 = v1[2];
  }

  if (__OFADD__(v17, v13))
  {
    goto LABEL_18;
  }

  v1[2] = v17 + v13;
LABEL_12:
  if (v0 <= 0)
  {
    OUTLINED_FUNCTION_18();
    return;
  }

LABEL_19:
  __break(1u);
}

void sub_24E05EF84(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  type metadata accessor for GKSuggestedPlayerGroup();
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_24E348878();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_24E130EB0(v8 + 8 * v6, &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_24E348878();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_24E05F0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for PlayerProfileSection();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_24E348878();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_24E130EB0(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_24E348878();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_24E05F19C()
{
  OUTLINED_FUNCTION_32();
  v5 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = v4;
  v7 = v3;
  v8 = v2;
  v9 = *v0;
  v10 = *v0 + 32;
  v11 = v10 + 160 * v1;
  swift_arrayDestroy();
  v12 = v7 - v5;
  if (__OFSUB__(v7, v5))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = v11 + 160 * v7;
  if (!v12)
  {
LABEL_7:
    if (v7 < 1)
    {
LABEL_11:
      sub_24DF8C95C(v6, &unk_27F1E2190, qword_24E371E00);
      OUTLINED_FUNCTION_18();
      return;
    }

    v18 = 0;
    while ((v18 & 1) == 0)
    {
      sub_24E05F5E4(v6, v11);
      v11 += 160;
      v18 = 1;
      if (v11 >= v13)
      {
        goto LABEL_11;
      }
    }

    goto LABEL_15;
  }

  v14 = *(v9 + 16);
  if (__OFSUB__(v14, v8))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_24E12ED34((v10 + 160 * v8), v14 - v8, (v11 + 160 * v7));
  v15 = *(v9 + 16);
  v16 = __OFADD__(v15, v12);
  v17 = v15 + v12;
  if (!v16)
  {
    *(v9 + 16) = v17;
    goto LABEL_7;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_24E05F294(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_24E348878();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_24E05F2EC(void *a1)
{
  v2 = [a1 rightBarButtonItems];

  if (!v2)
  {
    return 0;
  }

  sub_24DF88A8C(0, &unk_27F1E21B0, 0x277D751E0);
  v3 = sub_24E347F08();

  return v3;
}

uint64_t sub_24E05F364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_1_52(a1, a2, a3);
  sub_24DFFA838(v5);
  OUTLINED_FUNCTION_0_66();
  sub_24DFFA844();
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_5_34();
  }

  else
  {
    OUTLINED_FUNCTION_6_30();
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_4_35();
}

uint64_t sub_24E05F3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_1_52(a1, a2, a3);
  sub_24DFFA838(v5);
  OUTLINED_FUNCTION_0_66();
  sub_24DFFA844();
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_5_34();
  }

  else
  {
    OUTLINED_FUNCTION_6_30();
  }

  *v3 = v6;
  return OUTLINED_FUNCTION_4_35();
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id OUTLINED_FUNCTION_5_34()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

void OUTLINED_FUNCTION_6_30()
{

  JUMPOUT(0x25303F560);
}

double sub_24E05F70C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1DFCC0, &unk_24E36C770);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_24E347628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E28E0, &unk_24E36C100);
  sub_24E347328();
  if (v5)
  {
    sub_24E3475D8();
    sub_24E347618();
    (*(v1 + 8))(v3, v0);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_24E05F8B0(uint64_t a1)
{
  sub_24DF9E030(319, &qword_280BE0128, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_24DF9E030(319, &unk_280BE0138, &type metadata for Accessory);
    if (v2 <= 0x3F)
    {
      sub_24DF9E07C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for AppStorePlatterData.ContentData(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Highlight.IconStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppStorePlatterData.ContentType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_24E05FB08(uint64_t a1)
{
  type metadata accessor for EmptyStateData(319);
  if (v1 <= 0x3F)
  {
    sub_24E05FB88(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_24E05FB88(uint64_t a1)
{
  if (!qword_27F1E21E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E21E8, &qword_24E372BA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F1E0058, qword_24E371E60);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F1E21E0);
    }
  }
}

unint64_t sub_24E05FC14()
{
  result = qword_27F1E21F0;
  if (!qword_27F1E21F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F1E21F0);
  }

  return result;
}

id sub_24E05FCE8()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v3, sel_attributedText);

  return v1;
}

void sub_24E05FD90(void *a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setAttributedText_, a1);
  sub_24E05FDE0();
}

void sub_24E05FDE0()
{
  ObjectType = swift_getObjectType();
  v19.receiver = v0;
  v19.super_class = ObjectType;
  isEscapingClosureAtFileLocation = &selRef_applyTextStyle_;
  v3 = objc_msgSendSuper2(&v19, sel_attributedText);
  v4 = &qword_27F1E2000;
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v18.receiver = v0;
    v18.super_class = ObjectType;
    v5 = objc_msgSendSuper2(&v18, *(isEscapingClosureAtFileLocation + 224));
    if (!v5)
    {
      break;
    }

    v6 = v5;
    if (*&v0[v4[64]])
    {
      goto LABEL_9;
    }

    v15 = ObjectType;
    v14[0] = v0;
    objc_allocWithZone(MEMORY[0x277D75B80]);
    ObjectType = v0;
    v0 = sub_24E2BE570(v14, sel_labelTapped_);
    [v0 setNumberOfTapsRequired_];
    [(objc_class *)ObjectType addGestureRecognizer:v0];
    [(objc_class *)ObjectType setUserInteractionEnabled:1];
    v7 = [v6 length];
    v4 = swift_allocObject();
    v4[2] = ObjectType;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_24E060DA0;
    *(v8 + 24) = v4;
    v16 = sub_24E060DA8;
    v17 = v8;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_24E060530;
    v15 = &block_descriptor_29;
    v9 = _Block_copy(v14);
    v10 = ObjectType;

    [v6 enumerateAttributesInRange:0 options:v7 usingBlock:{0, v9}];

    _Block_release(v9);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
LABEL_7:
    v11 = v4[64];
    v12 = *&v0[v11];
    if (v12)
    {
      v6 = v12;
      [v0 removeGestureRecognizer_];
      v13 = *&v0[v11];
      *&v0[v11] = 0;

      [v0 setUserInteractionEnabled_];
LABEL_9:

      return;
    }
  }
}

uint64_t sub_24E060080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v49 = OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_items;
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  v47 = result;
  v48 = a5;
  if (v10)
  {
LABEL_8:
    while (1)
    {
      v15 = __clz(__rbit64(v10)) | (v13 << 6);
      v16 = *(*(v6 + 48) + 8 * v15);
      sub_24DFB4104(*(v6 + 56) + 32 * v15, v53);
      v52 = v16;
      v17 = sub_24E347CF8();
      v19 = v18;
      if (v17 == sub_24E347CF8() && v19 == v20)
      {
        break;
      }

      v22 = sub_24E348C08();
      v23 = v16;

      if (v22)
      {
        goto LABEL_21;
      }

      v24 = sub_24E347CF8();
      v26 = v25;
      if (v24 == sub_24E347CF8() && v26 == v27)
      {
        goto LABEL_20;
      }

      v29 = sub_24E348C08();

      if (v29)
      {
        goto LABEL_21;
      }

LABEL_29:
      v10 &= v10 - 1;
      result = sub_24DF8C95C(&v52, &qword_27F1E2218, &qword_24E371F48);
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    v30 = v16;
LABEL_20:

LABEL_21:
    sub_24DFB4104(v53, v51);
    sub_24E060DE8();
    if (swift_dynamicCast())
    {
      v31 = sub_24E060E2C(v50);
      if (v32)
      {
        v33 = v31;
        v34 = v32;
        v35 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v36 = swift_allocObject();
        v36[2] = v35;
        v36[3] = v33;
        v36[4] = v34;
        v37 = swift_allocObject();
        *(v37 + 16) = sub_24E060E90;
        *(v37 + 24) = v36;
        swift_beginAccess();
        v38 = *(a5 + v49);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a5 + v49) = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {

          sub_24E077908();
          v43 = v42;
          *(a5 + v49) = v42;

          v38 = v43;
        }

        v40 = *(v38 + 16);
        if (v40 >= *(v38 + 24) >> 1)
        {
          sub_24E077908();
          v38 = v44;
        }

        *(v38 + 16) = v40 + 1;
        v41 = (v38 + 32 * v40);
        v41[4] = a2;
        v41[5] = a3;
        v41[6] = sub_24DFA92FC;
        v41[7] = v37;
        a5 = v48;
        *(v48 + v49) = v38;
        swift_endAccess();

        v6 = v47;
      }

      else
      {
      }
    }

    goto LABEL_29;
  }

LABEL_4:
  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E060434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_linkInteractionDelegate;
    swift_beginAccess();
    sub_24DF9DEAC(v6 + v7, &v9, &qword_27F1E2220, qword_24E371F50);

    if (*(&v10 + 1))
    {
      sub_24DE56CE8(&v9, v12);
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      sub_24E00E084(a2, a3, 0);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  return sub_24DF8C95C(&v9, &qword_27F1E2220, qword_24E371F50);
}

uint64_t sub_24E060530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_24DFEA7B4();
  v9 = sub_24E347C08();
  v8(v9, a3, a4, a5);
}

uint64_t sub_24E0605D0()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setAttributedText_, 0);
  sub_24E05FDE0();
  v1 = OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_items;
  swift_beginAccess();
  *&v0[v1] = MEMORY[0x277D84F90];
}

unint64_t sub_24E060648(void *a1)
{
  result = sub_24E06073C(a1);
  if ((v3 & 1) == 0)
  {
    v4 = result;
    v5 = OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_items;
    swift_beginAccess();
    v6 = *(v1 + v5);
    v7 = *(v6 + 16);

    v8 = 0;
    for (i = v6 + 56; ; i += 32)
    {
      if (v7 == v8)
      {
      }

      if (v8 >= *(v6 + 16))
      {
        break;
      }

      v10 = *(i - 8);
      v12 = *(i - 24);
      v11 = *(i - 16);

      if (v4 >= v12 && v4 - v12 < v11)
      {

        v10(v14);
      }

      ++v8;
    }

    __break(1u);
  }

  return result;
}

id sub_24E06073C(void *a1)
{
  v2 = v1;
  v25.receiver = v1;
  v25.super_class = swift_getObjectType();
  v4 = objc_msgSendSuper2(&v25, sel_attributedText);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v12 = [objc_allocWithZone(MEMORY[0x277D742D8]) initWithAttributedString_];
    v13 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
    v14 = [objc_allocWithZone(MEMORY[0x277D74238]) init];
    [v14 addTextContainer_];
    [v12 addLayoutManager_];
    [v13 setLineFragmentPadding_];
    [v13 setLineBreakMode_];
    [v13 setMaximumNumberOfLines_];
    [a1 locationInView_];
    v16 = v15;
    v18 = v17;
    [v14 usedRectForTextContainer_];
    v23 = [v14 characterIndexForPoint:v13 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v16 - ((v9 - v19) * 0.5 - v20), v18 - ((v11 - v21) * 0.5 - v22)}];

    v5 = v14;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

char *sub_24E060A5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F1E5CE0, qword_24E369F80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v18 - v14;
  *(v6 + OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_items) = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_tapGestureRecognizer) = 0;
  OUTLINED_FUNCTION_0_67(OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_linkInteractionDelegate);
  sub_24DF9DEAC(a1, v15, &unk_27F1E5CE0, qword_24E369F80);
  v16 = sub_24E0AEF24(v15, a2, a3, a4, a5 & 1, v7);
  sub_24DF8C95C(a1, &unk_27F1E5CE0, qword_24E369F80);
  return v16;
}

id sub_24E060B7C(void *a1)
{
  swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_items] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_tapGestureRecognizer] = 0;
  v3 = OUTLINED_FUNCTION_0_67(OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_linkInteractionDelegate);
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1, v3);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_24E060C3C()
{

  return sub_24DF8C95C(v0 + OBJC_IVAR____TtC12GameCenterUI22DynamicTypeLinkedLabel_linkInteractionDelegate, &qword_27F1E2220, qword_24E371F50);
}

uint64_t type metadata accessor for DynamicTypeLinkedLabel(uint64_t a1)
{
  result = qword_27F1E2208;
  if (!qword_27F1E2208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24E060DE8()
{
  result = qword_27F1E1DA0;
  if (!qword_27F1E1DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F1E1DA0);
  }

  return result;
}

uint64_t sub_24E060E2C(void *a1)
{
  v1 = [a1 absoluteString];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_24E347CF8();

  return v3;
}

double OUTLINED_FUNCTION_0_67@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  result = 0.0;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0;
  return result;
}

uint64_t sub_24E060EB0()
{
  type metadata accessor for NearbyPlayersProfileSection();
  result = swift_allocObject();
  *(result + 16) = 271;
  return result;
}

_OWORD *sub_24E060EDC(uint64_t a1, void (*a2)(char *, char *, uint64_t))
{
  v3 = *v2;
  v64 = a2;
  v65 = v3;
  v4 = sub_24E347458();
  v5 = OUTLINED_FUNCTION_4_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7_1();
  v8 = v7 - v6;
  v9 = sub_24E347478();
  v10 = OUTLINED_FUNCTION_4_5(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_1();
  v66 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1E58A0, &unk_24E36BF80);
  OUTLINED_FUNCTION_4_5(v13);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_15_3();
  v67 = v15;
  OUTLINED_FUNCTION_18_1();
  v16 = sub_24E3433A8();
  OUTLINED_FUNCTION_0_14();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v59 - v23;
  v25 = objc_opt_self();
  result = [v25 shared];
  if (result)
  {
    v27 = result;
    v28 = [result multiplayerAllowedPlayerType];

    if (!v28)
    {
      return v28;
    }

    v63 = v8;
    result = [v25 shared];
    if (result)
    {
      v29 = result;
      v30 = [result shouldAllowNearbyMultiplayer];

      v72[0] = v30;
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_24E343398();
      v64 = *(v18 + 16);
      v64(v21, v24, v16);
      v62 = sub_24DF9D4DC(&qword_27F1DE1B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_24E348918();
      v61 = *(v18 + 8);
      v61(v24, v16);

      v73 = sub_24E061F20;
      v74 = v31;
      v75 = 6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE78, &unk_24E369E80);
      v28 = swift_allocObject();
      *(v28 + 1) = xmmword_24E367D20;
      v32 = sub_24E347CB8();
      v33 = GKGameCenterUIFrameworkBundle();
      v34 = GKGetLocalizedStringFromTableInBundle();

      v60 = sub_24E347CF8();
      v36 = v35;

      sub_24DF9D480(v72, v71);
      LOBYTE(v33) = sub_24E32CE4C();
      v70 = 0;
      memset(v69, 0, sizeof(v69));
      sub_24E343398();
      v64(v21, v24, v16);
      sub_24E348918();
      v61(v24, v16);
      v37 = type metadata accessor for DetailData(0);
      *(v28 + 7) = v37;
      *(v28 + 8) = sub_24DF9D4DC(&qword_27F1DEE80, type metadata accessor for DetailData, &unk_24E3885B0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28 + 4);
      *(boxed_opaque_existential_1 + 25) = 0u;
      boxed_opaque_existential_1[27] = 0;
      *(boxed_opaque_existential_1 + 23) = 0u;
      v39 = *(v37 + 56);
      v40 = sub_24E3474B8();
      OUTLINED_FUNCTION_8_6();
      __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
      v44 = boxed_opaque_existential_1 + *(v37 + 60);
      sub_24DF8BD34(v68, boxed_opaque_existential_1);
      *(boxed_opaque_existential_1 + 40) = 0;
      v45 = v60;
      boxed_opaque_existential_1[6] = v60;
      boxed_opaque_existential_1[7] = v36;
      boxed_opaque_existential_1[9] = 0;
      boxed_opaque_existential_1[10] = 0;
      boxed_opaque_existential_1[8] = 0;
      sub_24DFAE87C(v71, (boxed_opaque_existential_1 + 11), &qword_27F1DEE88, &unk_24E36BF90);
      boxed_opaque_existential_1[20] = 0;
      boxed_opaque_existential_1[21] = 0;
      *(boxed_opaque_existential_1 + 176) = 0;
      *(boxed_opaque_existential_1 + 177) = v33 & 1;
      *v44 = 0;
      v44[8] = 0;

      sub_24DFAE710(v69, (boxed_opaque_existential_1 + 23), &qword_27F1DEE90, &unk_24E369E90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F1DEE98, &unk_24E36BFA0);
      inited = swift_initStackObject();
      v47 = OUTLINED_FUNCTION_3_41(inited, xmmword_24E369E30);
      v48 = MEMORY[0x277D837D0];
      v47[3].n128_u64[0] = 0x74656C63696863;
      v47[3].n128_u64[1] = 0xE700000000000000;
      v47[4].n128_u64[1] = v48;
      v47[5].n128_u64[0] = v49;
      OUTLINED_FUNCTION_11_14();
      v52 = OUTLINED_FUNCTION_2_39(v50, v51);
      v52[21] = v48;
      v52[22] = v53;
      v52[27] = v48;
      v52[23] = 0xE400000000000000;
      v52[24] = v45;
      v52[25] = v36;

      sub_24E347C28();
      sub_24E347468();
      sub_24E347448();
      v54 = MEMORY[0x277D84F90];
      sub_24E0241AC(MEMORY[0x277D84F90]);
      sub_24E0241AC(v54);
      v55 = v67;
      sub_24E347488();
      sub_24DF8BE60(v68);
      sub_24DF8BFF4(v69, &qword_27F1DEE90, &unk_24E369E90);
      sub_24DF8BFF4(v71, &qword_27F1DEE88, &unk_24E36BF90);
      OUTLINED_FUNCTION_22_1();
      __swift_storeEnumTagSinglePayload(v56, v57, v58, v40);
      sub_24DF8BEB4(v55, boxed_opaque_existential_1 + v39);
      sub_24DF9D524(v72);
      return v28;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}