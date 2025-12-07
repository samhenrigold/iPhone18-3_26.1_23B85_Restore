unint64_t sub_213DF8C64()
{
  result = qword_27C8F80D8;
  if (!qword_27C8F80D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F80D8);
  }

  return result;
}

unint64_t sub_213DF8CBC()
{
  result = qword_27C8F80E0;
  if (!qword_27C8F80E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F80E0);
  }

  return result;
}

uint64_t sub_213DF8D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8210, &qword_213F53690);
  MEMORY[0x28223BE20](v80);
  v4 = &v66 - v3;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8218, &qword_213F53698);
  MEMORY[0x28223BE20](v79);
  v78 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8220, &qword_213F536A0);
  v84 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v77 = &v66 - v7;
  v8 = type metadata accessor for CardHeaderText(0);
  v74 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v75 = v9;
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8228, &qword_213F536A8);
  MEMORY[0x28223BE20](v11);
  v76 = &v66 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8230, &qword_213F536B0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v83 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v82 = &v66 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8238, &qword_213F536B8);
  MEMORY[0x28223BE20](v73);
  v18 = &v66 - v17;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8240, &qword_213F536C0);
  MEMORY[0x28223BE20](v72);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8248, &qword_213F536C8);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v71 = &v66 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8250, &qword_213F536D0);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v81 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = *(a1 + 48);
  v87 = &v66 - v28;
  v86 = v6;
  if (v27)
  {
    v66 = v22;
    v67 = v21;
    v68 = v10;
    v69 = v11;
    v70 = v4;
    *&v93 = *(a1 + 40);
    *(&v93 + 1) = v27;
    sub_213DBC9EC();

    v29 = sub_213F4E310();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v36 = sub_213F4DDB0();
    if (*(a1 + 88))
    {
      v37 = 0;
      v38 = 1;
    }

    else
    {
      sub_213F4DA40();
      v44 = sub_213F4DA30();
      v37 = v44;
      v38 = ~v44 & 1;
    }

    KeyPath = swift_getKeyPath();
    v97 = v33 & 1;
    v96 = v37 & 1;
    *&v93 = v29;
    *(&v93 + 1) = v31;
    LOBYTE(v94) = v33 & 1;
    *(&v94 + 1) = v35;
    *v95 = v36;
    *&v95[8] = KeyPath;
    *&v95[16] = v38;
    v95[24] = v37 & 1;
    v46 = *(a1 + 72);
    v90 = v93;
    v91 = v94;
    *v92 = *v95;
    *&v92[9] = *&v95[9];
    if (v46 == 255)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8298, &qword_213F536F8);
      sub_213DFA984();
      sub_213F4E6D0();
    }

    else
    {
      v88 = *(a1 + 56);
      v89 = v46;
      sub_213DD76C0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8298, &qword_213F536F8);
      sub_213DFA984();
      sub_213F4E6D0();
    }

    v6 = v86;
    v40 = v84;
    v39 = v70;
    v47 = v67;
    sub_213DE3164(v20, v18, &qword_27C8F8240, &qword_213F536C0);
    swift_storeEnumTagMultiPayload();
    sub_213DFA560(&qword_27C8F82C0, &qword_27C8F8240, &qword_213F536C0, sub_213DFA984);
    v48 = v71;
    sub_213F4DBA0();
    sub_213DE36FC(&v93, &qword_27C8F8298, &qword_213F536F8);
    sub_213DE36FC(v20, &qword_27C8F8240, &qword_213F536C0);
    v49 = v87;
    sub_213DE2B44(v48, v87, &qword_27C8F8248, &qword_213F536C8);
    (*(v66 + 56))(v49, 0, 1, v47);
    v11 = v69;
    v10 = v68;
    v41 = *(a1 + 88);
    if (v41)
    {
      goto LABEL_11;
    }

LABEL_5:
    v42 = 1;
    v43 = v82;
    goto LABEL_15;
  }

  (*(v22 + 56))();
  v39 = v4;
  v40 = v84;
  v41 = *(a1 + 88);
  if (!v41)
  {
    goto LABEL_5;
  }

LABEL_11:
  v50 = *(a1 + 80);
  sub_213DFA6B4(a1, v10);
  v51 = (*(v74 + 80) + 16) & ~*(v74 + 80);
  v52 = swift_allocObject();
  v53 = sub_213DFA718(v10, v52 + v51);
  MEMORY[0x28223BE20](v53);
  *(&v66 - 2) = v50;
  *(&v66 - 1) = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8260, &qword_213F536E0);
  sub_213DFA7E8();
  v54 = v76;
  sub_213F4EB00();
  v55 = sub_213F4DD90();
  v56 = (v54 + *(v11 + 36));
  *v56 = v55;
  v56[1] = 1061997773;
  v57 = *(a1 + 112);
  if (v57 == 255)
  {
    *&v93 = 0xD000000000000013;
    *(&v93 + 1) = 0x8000000213FA4E40;
    MEMORY[0x216052710](0x6C6562614CLL, 0xE500000000000000);
  }

  else
  {
    v93 = *(a1 + 96);
    LOBYTE(v94) = v57;
    sub_213DD76C0();
  }

  sub_213DFA8A0();
  v58 = v78;
  sub_213F4E6D0();

  v6 = v86;
  sub_213DE3164(v58, v39, &qword_27C8F8218, &qword_213F53698);
  swift_storeEnumTagMultiPayload();
  sub_213DFA560(&qword_27C8F8290, &qword_27C8F8218, &qword_213F53698, sub_213DFA8A0);
  v59 = v77;
  sub_213F4DBA0();
  sub_213DE36FC(v58, &qword_27C8F8218, &qword_213F53698);
  sub_213DE36FC(v54, &qword_27C8F8228, &qword_213F536A8);
  v43 = v82;
  sub_213DE2B44(v59, v82, &qword_27C8F8220, &qword_213F536A0);
  v42 = 0;
LABEL_15:
  (*(v40 + 56))(v43, v42, 1, v6);
  v60 = v87;
  v61 = v81;
  sub_213DE3164(v87, v81, &qword_27C8F8250, &qword_213F536D0);
  v62 = v83;
  sub_213DE3164(v43, v83, &qword_27C8F8230, &qword_213F536B0);
  v63 = v85;
  sub_213DE3164(v61, v85, &qword_27C8F8250, &qword_213F536D0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8258, &qword_213F536D8);
  sub_213DE3164(v62, v63 + *(v64 + 48), &qword_27C8F8230, &qword_213F536B0);
  sub_213DE36FC(v43, &qword_27C8F8230, &qword_213F536B0);
  sub_213DE36FC(v60, &qword_27C8F8250, &qword_213F536D0);
  sub_213DE36FC(v62, &qword_27C8F8230, &qword_213F536B0);
  return sub_213DE36FC(v61, &qword_27C8F8250, &qword_213F536D0);
}

uint64_t sub_213DF98D4@<X0>(uint64_t *a3@<X8>)
{
  v25 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = sub_213F4D910();
  MEMORY[0x28223BE20](v6 - 8);
  sub_213F4D900();
  sub_213F4D8F0();
  sub_213F4D8E0();
  sub_213F4D8F0();
  sub_213F4D8E0();
  sub_213F4D8F0();
  sub_213F4E9F0();
  v7 = sub_213F4E320();
  v9 = v8;
  v11 = v10;
  v12 = sub_213F4E0F0();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  sub_213F4E190();
  sub_213DE36FC(v5, &qword_27C8F7668, &qword_213F52190);
  v13 = sub_213F4E2E0();
  v15 = v14;
  LOBYTE(v5) = v16;

  sub_213DBCA40(v7, v9, v11 & 1);

  sub_213F4D8C0();
  sub_213DBCA40(v13, v15, v5 & 1);

  sub_213F4D8F0();
  sub_213F4D930();
  v17 = sub_213F4E2F0();
  v19 = v18;
  LOBYTE(v13) = v20;
  v22 = v21;
  result = swift_getKeyPath();
  v24 = v25;
  *v25 = v17;
  v24[1] = v19;
  *(v24 + 16) = v13 & 1;
  v24[3] = v22;
  v24[4] = result;
  v24[5] = 1;
  *(v24 + 48) = 0;
  return result;
}

uint64_t sub_213DF9B98@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_213F4D8A0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F80C8, &qword_213F52D40) + 44);
  *v4 = *(v2 + 120);
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F80D0, &qword_213F52D48);
  return sub_213DF7C7C(v2, v4 + *(v5 + 44));
}

uint64_t getEnumTagSinglePayload for CardHeaderExpansionState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CardHeaderExpansionState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t get_enum_tag_for_layout_string_10MapsDesign0aB19AccessibilityStringOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 0x11)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_213DF9DCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_213DF9E14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for CardHeaderText(uint64_t a1)
{
  result = qword_281187C10;
  if (!qword_281187C10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213DF9F00(uint64_t a1)
{
  sub_213DF9FAC();
  if (v1 <= 0x3F)
  {
    sub_213DEEDC8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213DF9FAC()
{
  if (!qword_281183560)
  {
    v0 = sub_213F4F6B0();
    if (!v1)
    {
      atomic_store(v0, &qword_281183560);
    }
  }
}

unint64_t sub_213DF9FFC()
{
  result = qword_27C8F8168;
  if (!qword_27C8F8168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8160, &qword_213F53620);
    sub_213DFA0B4();
    sub_213DE3AE4(&qword_281182C30, &qword_27C8F7A78, &unk_213F5D5E0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8168);
  }

  return result;
}

unint64_t sub_213DFA0B4()
{
  result = qword_27C8F8170;
  if (!qword_27C8F8170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8178, &qword_213F53628);
    sub_213DFA140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8170);
  }

  return result;
}

unint64_t sub_213DFA140()
{
  result = qword_27C8F8180;
  if (!qword_27C8F8180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8188, &qword_213F53630);
    sub_213DFA1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8180);
  }

  return result;
}

unint64_t sub_213DFA1CC()
{
  result = qword_27C8F8190;
  if (!qword_27C8F8190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8198, &qword_213F53638);
    sub_213DFA258();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8190);
  }

  return result;
}

unint64_t sub_213DFA258()
{
  result = qword_27C8F81A0;
  if (!qword_27C8F81A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F81A8, &qword_213F53640);
    sub_213DFA310();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F81A0);
  }

  return result;
}

unint64_t sub_213DFA310()
{
  result = qword_27C8F81B0;
  if (!qword_27C8F81B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F81B8, &qword_213F53648);
    sub_213DFA3C8();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F81B0);
  }

  return result;
}

unint64_t sub_213DFA3C8()
{
  result = qword_27C8F81C0;
  if (!qword_27C8F81C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F81C8, &qword_213F53650);
    sub_213DFA480();
    sub_213DE3AE4(&qword_281182888, &qword_27C8F7CA8, &unk_213F53660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F81C0);
  }

  return result;
}

unint64_t sub_213DFA480()
{
  result = qword_27C8F81D0;
  if (!qword_27C8F81D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F81D8, &qword_213F53658);
    sub_213DFA50C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F81D0);
  }

  return result;
}

unint64_t sub_213DFA50C()
{
  result = qword_27C8F81E0;
  if (!qword_27C8F81E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F81E0);
  }

  return result;
}

uint64_t sub_213DFA560(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_213DFA614(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213DFA614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213DFA6B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardHeaderText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DFA718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardHeaderText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_213DFA7E8()
{
  result = qword_27C8F8268;
  if (!qword_27C8F8268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8260, &qword_213F536E0);
    sub_213DFA480();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8268);
  }

  return result;
}

unint64_t sub_213DFA8A0()
{
  result = qword_27C8F8270;
  if (!qword_27C8F8270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8228, &qword_213F536A8);
    sub_213DE3AE4(&qword_27C8F8278, &qword_27C8F8280, &qword_213F536E8, MEMORY[0x277CDF028]);
    sub_213DE3AE4(&qword_281182900, &qword_27C8F8288, &qword_213F536F0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8270);
  }

  return result;
}

unint64_t sub_213DFA984()
{
  result = qword_27C8F82A0;
  if (!qword_27C8F82A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8298, &qword_213F536F8);
    sub_213DFAA3C();
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F82A0);
  }

  return result;
}

unint64_t sub_213DFAA3C()
{
  result = qword_27C8F82A8;
  if (!qword_27C8F82A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F82B0, &unk_213F53700);
    sub_213DFA480();
    sub_213DE3AE4(&qword_2811828F8, &qword_27C8F82B8, &qword_213F5EBF0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F82A8);
  }

  return result;
}

uint64_t CoverPhotoCardOrnamentViewModel.__allocating_init(imageProvider:placeholderColor:editing:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = sub_213DFDB0C(v9, a2, v4, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t CoverPhotoCardOrnamentViewModel.init(imageProvider:placeholderColor:editing:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v13 = sub_213DFDA60(v11, a2, v4, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v13;
}

uint64_t CoverPhotoCardOrnamentViewModel.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC10MapsDesign31CoverPhotoCardOrnamentViewModel___observationRegistrar;
  v2 = sub_213F4CBC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t CoverPhotoCardOrnamentViewModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = OBJC_IVAR____TtC10MapsDesign31CoverPhotoCardOrnamentViewModel___observationRegistrar;
  v2 = sub_213F4CBC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_213DFADD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

void *CoverPhotoCardOrnament.init(viewModel:expansionProgress:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for CoverPhotoCardOrnament(0);
  v7 = a2 + v6[7];
  result = sub_213F4EA90();
  *v7 = v9;
  *(v7 + 1) = v10;
  *(a2 + v6[5]) = a1;
  *(a2 + v6[6]) = a3;
  return result;
}

double sub_213DFB090()
{
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_213DFADD0(&v15 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v8(v7, v1);
  v9 = *(v0 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 24));
  if (v9 >= 0.0 && v9 < 0.95)
  {
    v13 = v9 * 72.0;
    v14 = 0.0;
    return v13 + v14;
  }

  result = 0.0;
  if (v9 >= 0.95 && v9 <= 2.0)
  {
    v13 = (v9 + -1.0) * 88.0;
    v14 = 72.0;
    return v13 + v14;
  }

  return result;
}

double sub_213DFB214()
{
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_213DFADD0(&v15 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v8(v7, v1);
  v9 = *(v0 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 24));
  if (v9 >= 0.0 && v9 < 0.95)
  {
    v13 = v9 * 16.0;
    v14 = 0.0;
    return v13 + v14;
  }

  result = 0.0;
  if (v9 >= 0.95 && v9 <= 2.0)
  {
    v13 = (v9 + -1.0) * 10.0;
    v14 = 16.0;
    return v13 + v14;
  }

  return result;
}

double sub_213DFB38C()
{
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - v6;
  sub_213DFADD0(&v15 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v8(v7, v1);
  v9 = *(v0 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 24));
  if (v9 >= 0.0 && v9 < 0.95)
  {
    v13 = v9 * 24.0;
    v14 = 0.0;
    return v13 + v14;
  }

  result = 0.0;
  if (v9 >= 0.95 && v9 <= 2.0)
  {
    v13 = (v9 + -1.0) * 12.0;
    v14 = 24.0;
    return v13 + v14;
  }

  return result;
}

double sub_213DFB504()
{
  v1 = sub_213F4D290();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  sub_213DFADD0(&v16 - v6);
  sub_213F4D280();
  sub_213F4D270();
  v8 = *(v2 + 8);
  v8(v5, v1);
  v8(v7, v1);
  v9 = *(v0 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 24));
  if (v9 >= 0.0 && v9 < 0.95)
  {
    v15 = v9 * 4.0;
    v14 = 0.0;
    return v15 + v14;
  }

  result = 0.0;
  if (v9 >= 0.95 && v9 <= 2.0)
  {
    v13 = v9 + -1.0;
    v14 = 4.0;
    v15 = v13 * 4.0;
    return v15 + v14;
  }

  return result;
}

uint64_t CoverPhotoCardOrnament.body.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F82D0, &qword_213F53778);
  MEMORY[0x28223BE20](v1);
  v3 = (v23 - v2);
  v4 = type metadata accessor for CoverPhotoCardOrnament(0);
  v5 = *(*(v0 + *(v4 + 20)) + 56);
  if (v5)
  {
    v6 = *(*(v0 + *(v4 + 20)) + 56);
  }

  else
  {
    v6 = [objc_opt_self() systemBackgroundColor];
    v5 = 0;
  }

  v7 = v5;
  *v3 = sub_213F4EEC0();
  v3[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F82D8, &qword_213F53780);
  sub_213DFB90C(v0, v6, v3 + *(v9 + 44));
  v10 = sub_213DFB214();
  v11 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F82E0, &qword_213F53788) + 36));
  v12 = type metadata accessor for ClipShadowModifier(0);
  v13 = v12[5];
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_213F4D950();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  sub_213F4E8C0();
  v16 = sub_213F4E900();

  *v11 = v10;
  *(v11 + v12[6]) = v16;
  *(v11 + v12[7]) = 6.0;
  *(v11 + v12[8]) = 0.0;
  *(v11 + v12[9]) = 2.0;
  v17 = sub_213F4EEE0();
  v19 = v18;
  v20 = v3 + *(v1 + 36);
  sub_213DFC75C(v0, v20);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F82E8, &qword_213F53790) + 36));
  *v21 = v17;
  v21[1] = v19;
  v23[0] = 0x6F68507265766F43;
  v23[1] = 0xEA00000000006F74;
  MEMORY[0x216052710](0x6567616D49, 0xE500000000000000);
  sub_213DFDC34();
  sub_213F4E6D0();

  return sub_213DC1CFC(v3);
}

uint64_t sub_213DFB90C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v123 = a3;
  v5 = sub_213F4EA00();
  v109 = *(v5 - 8);
  v110 = v5;
  MEMORY[0x28223BE20](v5);
  v108 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8460, &unk_213F53C68);
  MEMORY[0x28223BE20](v7 - 8);
  v107 = &v107 - v8;
  v9 = type metadata accessor for CoverPhotoCardOrnament(0);
  v10 = v9 - 8;
  v111 = *(v9 - 8);
  v11 = *(v111 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MapsDesignImage(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v107 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) - 8;
  MEMORY[0x28223BE20](v113);
  v114 = &v107 - v17;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8468, &qword_213F53C78);
  MEMORY[0x28223BE20](v119);
  v121 = &v107 - v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8470, &qword_213F53C80);
  MEMORY[0x28223BE20](v120);
  v118 = &v107 - v19;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8478, &qword_213F53C88);
  v20 = MEMORY[0x28223BE20](v117);
  v122 = &v107 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v116 = &v107 - v23;
  MEMORY[0x28223BE20](v22);
  v124 = &v107 - v24;
  v25 = *(v10 + 28);
  v112 = a1;
  v26 = *(a1 + v25);
  v27 = v14[10];
  v115 = v26;
  sub_213DEBAA8(v26 + 16, &v16[v27]);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  sub_213DFE7E8(a1, v12, type metadata accessor for CoverPhotoCardOrnament);
  v29 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v30 = swift_allocObject();
  sub_213DFE8B8(v12, v30 + v29);
  v31 = a2;
  v32 = sub_213F4EEE0();
  v111 = v33;
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v34 = v14[7];
  *&v16[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v35 = v14[8];
  *&v16[v35] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v36 = v14[9];
  *&v16[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v37 = &v16[v14[14]];
  v38 = &v16[v14[15]];
  v39 = &v16[v14[16]];
  v138 = 0uLL;
  *(&v139 + 7) = 0;
  *&v139 = 0;
  sub_213F4EA90();
  v40 = v151;
  v41 = BYTE8(v151);
  v42 = BYTE9(v151);
  v43 = BYTE10(v151);
  v44 = v152;
  *v39 = v150;
  *(v39 + 2) = v40;
  v39[24] = v41;
  v39[25] = v42;
  v39[26] = v43;
  *(v39 + 4) = v44;
  v45 = v14[17];
  *&v138 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v16[v45] = v150;
  v16[v14[11]] = 1;
  v46 = &v16[v14[12]];
  v47 = v111;
  *v46 = v32;
  v46[1] = v47;
  v16[v14[13]] = 1;
  *v37 = sub_213DFE8B0;
  v37[1] = v28;
  *v38 = sub_213DFE91C;
  v38[1] = v30;
  v48 = v114;
  v49 = v112;
  sub_213DFB090();
  sub_213DFB090();
  sub_213F4EEE0();
  sub_213F4D0C0();
  sub_213DFE7E8(v16, v48, type metadata accessor for MapsDesignImage);
  v50 = (v48 + *(v113 + 44));
  v51 = v163;
  *v50 = v162;
  v50[1] = v51;
  v50[2] = v164;
  sub_213DFE850(v16, type metadata accessor for MapsDesignImage);
  v52 = *(v49 + *(v10 + 32));
  v53 = v52 < 0.95 && v52 >= 0.0;
  if (v53)
  {
    v54 = v48;
    v55 = v121;
    sub_213DE2B44(v54, v121, &qword_27C8F7BE8, &unk_213F52220);
    *(v55 + *(v119 + 36)) = v52 + 0.0;
    v56 = 8.0 - v52 * 8.0;
  }

  else
  {
    v57 = v52 >= 0.95;
    v58 = v52 <= 2.0;
    v59 = (v52 + -1.0) * 0.0;
    v60 = v48;
    v55 = v121;
    sub_213DE2B44(v60, v121, &qword_27C8F7BE8, &unk_213F52220);
    if (v57 && v58)
    {
      v61 = v59 + 1.0;
    }

    else
    {
      v61 = 0.0;
    }

    *(v55 + *(v119 + 36)) = v61;
    if (v57 && v58)
    {
      v56 = v59 + 0.0;
    }

    else
    {
      v56 = 8.0;
    }
  }

  v62 = v118;
  sub_213DE2B44(v55, v118, &qword_27C8F8468, &qword_213F53C78);
  v63 = v62 + *(v120 + 36);
  *v63 = v56;
  *(v63 + 8) = 0;
  v64 = v62;
  v65 = v116;
  sub_213DE2B44(v64, v116, &qword_27C8F8470, &qword_213F53C80);
  *(v65 + *(v117 + 36)) = 0x3FF0000000000000;
  sub_213DE2B44(v65, v124, &qword_27C8F8478, &qword_213F53C88);
  if (*(v115 + 64) == 1)
  {
    sub_213F4E9F0();
    v66 = v107;
    sub_213F4DA80();
    v67 = sub_213F4DA90();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    sub_213F4EA20();

    sub_213DE36FC(v66, &qword_27C8F8460, &unk_213F53C68);
    v69 = v108;
    v68 = v109;
    v70 = v110;
    (*(v109 + 104))(v108, *MEMORY[0x277CE0FE0], v110);
    v71 = 0.0;
    v121 = sub_213F4EA40();

    (*(v68 + 8))(v69, v70);
    sub_213DFB38C();
    sub_213DFB38C();
    sub_213F4EEE0();
    sub_213F4D0C0();
    v72 = v166;
    v119 = v167;
    v120 = v165;
    v73 = v168;
    v117 = v170;
    v118 = v169;
    v74 = sub_213F4E8F0();
    v75 = [objc_opt_self() systemBlueColor];
    v76 = sub_213F4E870();
    LOBYTE(v150) = v72;
    LOBYTE(v138) = v73;
    sub_213F4E8C0();
    v77 = sub_213F4E900();

    sub_213DFB504();
    v78 = sub_213F4E050();
    sub_213F4CDA0();
    v80 = v79;
    v82 = v81;
    v84 = v83;
    v86 = v85;
    LOBYTE(v137[0]) = 0;
    if (v53)
    {
      v71 = v52 + 0.0;
    }

    else if (v52 >= 0.95 && v52 <= 2.0)
    {
      v71 = (v52 + -1.0) * 0.0 + 1.0;
    }

    if (v53)
    {
      v87 = 8.0 - v52 * 8.0;
    }

    else
    {
      v87 = 8.0;
      if (v52 >= 0.95 && v52 <= 2.0)
      {
        v87 = (v52 + -1.0) * 0.0 + 0.0;
      }
    }

    sub_213F4F010();
    sub_213F4D0F0();
    sub_213F4D100();
    sub_213F4D110();

    sub_213F4D0E0();
    sub_213F4D110();

    MEMORY[0x216052350](v88, 0.5, 0.7, 0.0);
    v89 = sub_213F4D120();

    *&v138 = v121;
    *(&v138 + 1) = v120;
    LOBYTE(v139) = v72;
    *(&v139 + 1) = v119;
    LOBYTE(v140) = v73;
    *(&v140 + 1) = v118;
    *&v141 = v117;
    *(&v141 + 1) = v74;
    *&v142 = v76;
    *(&v142 + 1) = v77;
    v143 = 0x4040000000000000uLL;
    *&v144 = 0;
    *(&v144 + 1) = 0x4000000000000000;
    LOBYTE(v145) = v78;
    *(&v145 + 1) = v80;
    *&v146 = v82;
    *(&v146 + 1) = v84;
    *&v147 = v86;
    BYTE8(v147) = 0;
    *&v148 = v71;
    *(&v148 + 1) = v87;
    LOBYTE(v149) = 0;
    *(&v149 + 1) = v89;
    nullsub_1();
    v158 = v146;
    v159 = v147;
    v160 = v148;
    v161 = v149;
    v154 = v142;
    v155 = v143;
    v156 = v144;
    v157 = v145;
    v150 = v138;
    v151 = v139;
    v152 = v140;
    v153 = v141;
  }

  else
  {
    sub_213DFE97C(&v150);
  }

  v90 = v124;
  v91 = v122;
  sub_213DE3164(v124, v122, &qword_27C8F8478, &qword_213F53C88);
  v133 = v158;
  v134 = v159;
  v135 = v160;
  v136 = v161;
  v129 = v154;
  v130 = v155;
  v131 = v156;
  v132 = v157;
  v125 = v150;
  v126 = v151;
  v127 = v152;
  v128 = v153;
  v92 = v123;
  sub_213DE3164(v91, v123, &qword_27C8F8478, &qword_213F53C88);
  v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8480, &qword_213F53C90) + 48);
  v94 = v134;
  v137[8] = v133;
  v137[9] = v134;
  v95 = v135;
  v96 = v136;
  v137[10] = v135;
  v137[11] = v136;
  v97 = v129;
  v98 = v130;
  v137[4] = v129;
  v137[5] = v130;
  v99 = v131;
  v100 = v132;
  v137[6] = v131;
  v137[7] = v132;
  v101 = v125;
  v102 = v126;
  v137[0] = v125;
  v137[1] = v126;
  v103 = v127;
  v104 = v128;
  v137[2] = v127;
  v137[3] = v128;
  v105 = (v92 + v93);
  v105[8] = v133;
  v105[9] = v94;
  v105[10] = v95;
  v105[11] = v96;
  v105[4] = v97;
  v105[5] = v98;
  v105[6] = v99;
  v105[7] = v100;
  *v105 = v101;
  v105[1] = v102;
  v105[2] = v103;
  v105[3] = v104;
  sub_213DE3164(v137, &v138, &qword_27C8F8488, &qword_213F53C98);
  sub_213DE36FC(v90, &qword_27C8F8478, &qword_213F53C88);
  v146 = v133;
  v147 = v134;
  v148 = v135;
  v149 = v136;
  v142 = v129;
  v143 = v130;
  v144 = v131;
  v145 = v132;
  v138 = v125;
  v139 = v126;
  v140 = v127;
  v141 = v128;
  sub_213DE36FC(&v138, &qword_27C8F8488, &qword_213F53C98);
  return sub_213DE36FC(v91, &qword_27C8F8478, &qword_213F53C88);
}

uint64_t sub_213DFC65C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = sub_213F4E870();
  *(a2 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8490, &unk_213F53CA0);
  result = sub_213DE3AE4(&qword_27C8F8498, &qword_27C8F8490, &unk_213F53CA0, MEMORY[0x277CDF3A0]);
  *(a2 + 32) = result;
  *a2 = v4;
  *(a2 + 8) = 256;
  return result;
}

uint64_t sub_213DFC6E8(uint64_t a1)
{
  type metadata accessor for CoverPhotoCardOrnament(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  return sub_213F4EAB0();
}

uint64_t sub_213DFC75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_213F4D470();
  MEMORY[0x28223BE20](v4);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31[-v9];
  v11 = (a1 + *(type metadata accessor for CoverPhotoCardOrnament(0) + 28));
  v12 = *v11;
  v13 = *(v11 + 1);
  LOBYTE(v32) = v12;
  *(&v32 + 1) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8440, &qword_213F56EC0);
  sub_213F4EAA0();
  if (v31[7])
  {
    v14 = 1;
  }

  else
  {
    v15 = sub_213DFB214();
    v16 = *(v4 + 20);
    v17 = *MEMORY[0x277CE0118];
    v18 = sub_213F4D950();
    (*(*(v18 - 8) + 104))(v6 + v16, v17, v18);
    *v6 = v15;
    v6[1] = v15;
    sub_213F4E8C0();
    v19 = sub_213F4E900();

    sub_213F4CF60();
    v20 = MEMORY[0x277CDFC08];
    sub_213DFE7E8(v6, v10, MEMORY[0x277CDFC08]);
    v21 = *&v32 * 0.5;
    v22 = &v10[*(v7 + 68)];
    sub_213DFE7E8(v6, v22, v20);
    *(v22 + *(sub_213F4D460() + 20)) = v21;
    v23 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
    v24 = v33;
    *v23 = v32;
    *(v23 + 16) = v24;
    *(v23 + 32) = v34;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
    *(v22 + *(v25 + 52)) = v19;
    *(v22 + *(v25 + 56)) = 256;
    v26 = sub_213F4EEE0();
    v28 = v27;
    sub_213DFE850(v6, MEMORY[0x277CDFC08]);
    v29 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
    *v29 = v26;
    v29[1] = v28;
    sub_213DC1F6C(v10, a2);
    v14 = 0;
  }

  return (*(v8 + 56))(a2, v14, 1, v7);
}

__n128 PhotoFanCardOrnamentViewModel.init(leadingImageProvider:trailingImageProvider:)@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_213DD7500(a1, a3);
  result = *a2;
  v6 = *(a2 + 16);
  *(a3 + 40) = *a2;
  *(a3 + 56) = v6;
  *(a3 + 72) = *(a2 + 32);
  return result;
}

__n128 PhotoFanCardOrnament.init(viewModel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_213DFCAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8410, &qword_213F644F0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - v6;
  v8 = type metadata accessor for MapsDesignImage(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DEBAA8(a1, &v11[v9[10]]);
  v12 = sub_213F4EEE0();
  v14 = v13;
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v15 = v9[7];
  *&v11[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v16 = v9[8];
  *&v11[v16] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v17 = v9[9];
  *&v11[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v18 = &v11[v9[14]];
  v19 = &v11[v9[15]];
  v20 = &v11[v9[16]];
  v62 = 0uLL;
  *(&v63 + 7) = 0;
  *&v63 = 0;
  sub_213F4EA90();
  v21 = v60;
  v22 = BYTE8(v60);
  v23 = BYTE9(v60);
  v24 = BYTE10(v60);
  v25 = v61;
  *v20 = v59;
  *(v20 + 2) = v21;
  v20[24] = v22;
  v20[25] = v23;
  v20[26] = v24;
  *(v20 + 4) = v25;
  v26 = v9[17];
  *&v62 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v11[v26] = v59;
  v11[v9[11]] = 1;
  v27 = &v11[v9[12]];
  *v27 = v12;
  v27[1] = v14;
  v11[v9[13]] = 1;
  *v18 = 0;
  *(v18 + 1) = 0;
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_213DFE7E8(v11, a2, type metadata accessor for MapsDesignImage);
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8360, &unk_213F537D0) + 36);
  *v28 = 0x3FF0000000000000;
  *(v28 + 8) = 0;
  sub_213DFE850(v11, type metadata accessor for MapsDesignImage);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8358, &qword_213F537C8) + 36));
  v30 = v60;
  *v29 = v59;
  v29[1] = v30;
  v29[2] = v61;
  v31 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8348, &qword_213F537C0) + 36));
  v32 = sub_213F4D470();
  v33 = *(v32 + 20);
  v34 = *MEMORY[0x277CE0118];
  v35 = sub_213F4D950();
  v36 = *(*(v35 - 8) + 104);
  v36(&v31[v33], v34, v35);
  __asm { FMOV            V0.2D, #10.0 }

  v57 = _Q0;
  *v31 = _Q0;
  *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)] = 256;
  v42 = sub_213F4EEE0();
  v58 = v43;
  v44 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8318, &qword_213F537A0) + 36);
  v36(&v7[*(v32 + 20)], v34, v35);
  *v7 = v57;
  *&v7[*(v5 + 60)] = sub_213F4E8D0();
  *&v7[*(v5 + 64)] = 256;
  v45 = sub_213F4E8F0();
  sub_213F4CF60();
  sub_213DFE7E8(v7, v44, MEMORY[0x277CDFC08]);
  v46 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8418, &qword_213F53C20) + 36);
  v47 = v63;
  *v46 = v62;
  *(v46 + 16) = v47;
  *(v46 + 32) = v64;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8420, &qword_213F53C28);
  *(v44 + *(v48 + 52)) = v45;
  *(v44 + *(v48 + 56)) = 256;
  v49 = v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8428, &qword_213F53C30) + 36);
  sub_213DE3164(v7, v49, &qword_27C8F8410, &qword_213F644F0);
  v50 = sub_213F4EEE0();
  v52 = v51;
  sub_213DE36FC(v7, &qword_27C8F8410, &qword_213F644F0);
  v53 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8430, &qword_213F53C38) + 36));
  *v53 = v50;
  v53[1] = v52;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8378, &qword_213F537E0);
  v55 = (v44 + *(result + 36));
  v56 = v58;
  *v55 = v42;
  v55[1] = v56;
  return result;
}

uint64_t PhotoFanCardOrnament.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8318, &qword_213F537A0);
  MEMORY[0x28223BE20](v4);
  v6 = v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8320, &qword_213F537A8);
  MEMORY[0x28223BE20](v7);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8328, &unk_213F537B0);
  MEMORY[0x28223BE20](v10);
  v12 = (v31 - v11);
  sub_213DE3164(v2 + 40, &v32, &qword_27C8F7AB8, &qword_213F522C0);
  if (*(&v33 + 1))
  {
    sub_213DD7500(&v32, v38);
    *v12 = sub_213F4EEE0();
    v12[1] = v13;
    v14 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8380, &qword_213F537E8) + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8388, &qword_213F537F0);
    v15 = swift_allocObject();
    v31[2] = v4;
    v16 = v15;
    *(v15 + 16) = xmmword_213F51DE0;
    *(v15 + 32) = -1;
    sub_213DEBAA8(v2, v15 + 40);
    *(v16 + 80) = 1;
    sub_213DEBAA8(v38, v16 + 88);
    v37 = v16;
    swift_getKeyPath();
    sub_213DFE08C(v2, &v32);
    v17 = swift_allocObject();
    v18 = v35;
    v17[3] = v34;
    v17[4] = v18;
    v17[5] = v36;
    v19 = v33;
    v17[1] = v32;
    v17[2] = v19;
    v31[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8390, &qword_213F53818);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8398, &qword_213F53820);
    v31[0] = a1;
    sub_213DE3AE4(&qword_27C8F83A0, &qword_27C8F8390, &qword_213F53818, MEMORY[0x277D83980]);
    sub_213DFE0CC();
    sub_213F4ECC0();
    v20 = sub_213F4E070();
    sub_213F4CDA0();
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v29 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F83C0, &qword_213F53830) + 36)];
    *v29 = v20;
    *(v29 + 1) = v22;
    *(v29 + 2) = v24;
    *(v29 + 3) = v26;
    *(v29 + 4) = v28;
    v29[40] = 0;
    sub_213DE3164(v12, v9, &qword_27C8F8328, &unk_213F537B0);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_27C8F8330, &qword_27C8F8328, &unk_213F537B0, MEMORY[0x277CE11A8]);
    sub_213DFDDD4();
    sub_213F4DBA0();
    sub_213DE36FC(v12, &qword_27C8F8328, &unk_213F537B0);
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_213DE36FC(&v32, &qword_27C8F7AB8, &qword_213F522C0);
    sub_213DFCAE8(v2, v6);
    sub_213DE3164(v6, v9, &qword_27C8F8318, &qword_213F537A0);
    swift_storeEnumTagMultiPayload();
    sub_213DE3AE4(&qword_27C8F8330, &qword_27C8F8328, &unk_213F537B0, MEMORY[0x277CE11A8]);
    sub_213DFDDD4();
    sub_213F4DBA0();
    return sub_213DE36FC(v6, &qword_27C8F8318, &qword_213F537A0);
  }
}

uint64_t sub_213DFD528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8318, &qword_213F537A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16[-1] - v5;
  sub_213DE3164(a1, &v15, &qword_27C8F8408, &unk_213F53C10);
  v7 = v15;
  __swift_destroy_boxed_opaque_existential_1(v16);
  result = sub_213DFCAE8(a1 + 8, v6);
  if ((v7 * 14) >> 64 == (14 * v7) >> 63)
  {
    sub_213DE3164(v6, a2, &qword_27C8F8318, &qword_213F537A0);
    v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F83B8, &qword_213F53828) + 36));
    *v9 = (14 * v7);
    v9[1] = (2 * v7);
    sub_213F4F040();
    v11 = v10;
    v13 = v12;
    sub_213DE36FC(v6, &qword_27C8F8318, &qword_213F537A0);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8398, &qword_213F53820);
    v14 = a2 + *(result + 36);
    *v14 = v7 * 15.0 * 0.0174532925;
    *(v14 + 8) = v11;
    *(v14 + 16) = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 BusinessPhotoCardOrnament.init(viewModel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t BusinessPhotoCardOrnament.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MapsDesignImage(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DFE1E4(v2, v44);
  sub_213DD7500(v44, &v7[v5[10]]);
  v8 = sub_213F4EEE0();
  v10 = v9;
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v11 = v5[7];
  *&v7[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v12 = v5[8];
  *&v7[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v13 = v5[9];
  *&v7[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v14 = &v7[v5[14]];
  v15 = &v7[v5[15]];
  v16 = &v7[v5[16]];
  memset(v37, 0, 27);
  sub_213F4EA90();
  v17 = v39;
  v18 = v40;
  v19 = v41;
  v20 = v42;
  v21 = v43;
  *v16 = v38;
  *(v16 + 2) = v17;
  v16[24] = v18;
  v16[25] = v19;
  v16[26] = v20;
  *(v16 + 4) = v21;
  v22 = v5[17];
  v37[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v7[v22] = v38;
  v7[v5[11]] = 1;
  v23 = &v7[v5[12]];
  *v23 = v8;
  v23[1] = v10;
  v7[v5[13]] = 1;
  *v14 = 0;
  *(v14 + 1) = 0;
  *v15 = 0;
  *(v15 + 1) = 0;
  sub_213DFE7E8(v7, a1, type metadata accessor for MapsDesignImage);
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8360, &unk_213F537D0) + 36);
  *v24 = 0x3FF0000000000000;
  *(v24 + 8) = 0;
  sub_213DFE850(v7, type metadata accessor for MapsDesignImage);
  sub_213F4EEE0();
  sub_213F4D0C0();
  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8358, &qword_213F537C8) + 36));
  v26 = v44[1];
  *v25 = v44[0];
  v25[1] = v26;
  v25[2] = v44[2];
  v27 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8348, &qword_213F537C0) + 36));
  v28 = *(sub_213F4D470() + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_213F4D950();
  (*(*(v30 - 8) + 104))(&v27[v28], v29, v30);
  __asm { FMOV            V0.2D, #10.0 }

  *v27 = _Q0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0);
  *&v27[*(result + 36)] = 256;
  return result;
}

uint64_t sub_213DFDA60(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a5;
  v15 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  sub_213F4CBB0();
  sub_213DD7500(&v13, a4 + 16);
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return a4;
}

uint64_t sub_213DFDB0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CoverPhotoCardOrnamentViewModel(0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a1, a5);
  return sub_213DFDA60(v13, a2, a3, v14, a5, a6);
}

unint64_t sub_213DFDC34()
{
  result = qword_27C8F82F0;
  if (!qword_27C8F82F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F82D0, &qword_213F53778);
    sub_213DFDCEC();
    sub_213DE3AE4(&qword_27C8F8310, &qword_27C8F82E8, &qword_213F53790, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F82F0);
  }

  return result;
}

unint64_t sub_213DFDCEC()
{
  result = qword_27C8F82F8;
  if (!qword_27C8F82F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F82E0, &qword_213F53788);
    sub_213DE3AE4(&qword_27C8F8300, &qword_27C8F8308, &qword_213F53798, MEMORY[0x277CE11A8]);
    sub_213DFE6E8(&qword_281185AD8, type metadata accessor for ClipShadowModifier, &unk_213F64B3C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F82F8);
  }

  return result;
}

unint64_t sub_213DFDDD4()
{
  result = qword_27C8F8338;
  if (!qword_27C8F8338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8318, &qword_213F537A0);
    sub_213DFDE8C();
    sub_213DE3AE4(&qword_27C8F8370, &qword_27C8F8378, &qword_213F537E0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8338);
  }

  return result;
}

unint64_t sub_213DFDE8C()
{
  result = qword_27C8F8340;
  if (!qword_27C8F8340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8348, &qword_213F537C0);
    sub_213DFDF44();
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8340);
  }

  return result;
}

unint64_t sub_213DFDF44()
{
  result = qword_27C8F8350;
  if (!qword_27C8F8350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8358, &qword_213F537C8);
    sub_213DFDFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8350);
  }

  return result;
}

unint64_t sub_213DFDFD0()
{
  result = qword_281183478;
  if (!qword_281183478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8360, &unk_213F537D0);
    sub_213DFE6E8(&qword_2811887E8, type metadata accessor for MapsDesignImage, &protocol conformance descriptor for MapsDesignImage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183478);
  }

  return result;
}

unint64_t sub_213DFE0CC()
{
  result = qword_27C8F83A8;
  if (!qword_27C8F83A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8398, &qword_213F53820);
    sub_213DFE158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F83A8);
  }

  return result;
}

unint64_t sub_213DFE158()
{
  result = qword_27C8F83B0;
  if (!qword_27C8F83B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F83B8, &qword_213F53828);
    sub_213DFDDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F83B0);
  }

  return result;
}

uint64_t sub_213DFE298(uint64_t a1)
{
  result = sub_213F4CBC0();
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

void sub_213DFE39C(uint64_t a1)
{
  sub_213DF29DC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CoverPhotoCardOrnamentViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_213DFE440();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_213DFE440()
{
  if (!qword_2811827B0)
  {
    v0 = sub_213F4EAD0();
    if (!v1)
    {
      atomic_store(v0, &qword_2811827B0);
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_213DFE4BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_213DFE504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_213DFE58C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_213DFE5D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_213DFE62C()
{
  result = qword_27C8F83E8;
  if (!qword_27C8F83E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F83F0, &qword_213F53C00);
    sub_213DFDC34();
    sub_213DFE6E8(&qword_281182838, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F83E8);
  }

  return result;
}

uint64_t sub_213DFE6E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213DFE730()
{
  result = qword_27C8F83F8;
  if (!qword_27C8F83F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8400, &qword_213F53C08);
    sub_213DE3AE4(&qword_27C8F8330, &qword_27C8F8328, &unk_213F537B0, MEMORY[0x277CE11A8]);
    sub_213DFDDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F83F8);
  }

  return result;
}

uint64_t sub_213DFE7E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213DFE850(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213DFE8B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoverPhotoCardOrnament(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_213DFE91C()
{
  v1 = *(type metadata accessor for CoverPhotoCardOrnament(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_213DFC6E8(v2);
}

double sub_213DFE97C(_OWORD *a1)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_213DFEA10()
{
  v0 = sub_213F4DBE0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213F4D140();
  v5 = v4;
  sub_213F4DDF0();
  sub_213F4D150();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v1 + 8))(v3, v0);
  v24.origin.x = v7;
  v24.origin.y = v9;
  v24.size.width = v11;
  v24.size.height = v13;
  MinY = CGRectGetMinY(v24);
  if (MinY < 0.0)
  {
    MinY = 0.0;
  }

  v15 = (v5 + MinY) / v5;
  sub_213F4F030();
  v17 = v16;
  v19 = v18;
  v20 = sub_213F4D580();
  v21 = sub_213E05BDC(&qword_27C8F8650, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
  return MEMORY[0x2160504B0](v20, v21, v15, v15, v17, v19);
}

uint64_t CenteredCardHeaderBackgroundImageStyle.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

__n128 CenteredCardHeaderContentViewModel.init(textViewModel:size:backgroundImageProvider:backgroundImageStyle:editing:)@<Q0>(_OWORD *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = a1[7];
  *(a6 + 96) = a1[6];
  *(a6 + 112) = v6;
  v7 = a1[9];
  *(a6 + 128) = a1[8];
  *(a6 + 144) = v7;
  v8 = a1[3];
  *(a6 + 32) = a1[2];
  *(a6 + 48) = v8;
  v9 = a1[5];
  *(a6 + 64) = a1[4];
  *(a6 + 80) = v9;
  v10 = a1[1];
  *a6 = *a1;
  *(a6 + 16) = v10;
  result = *a3;
  v12 = *(a3 + 16);
  *(a6 + 168) = *a3;
  v13 = *a4;
  *(a6 + 160) = *a2;
  *(a6 + 184) = v12;
  *(a6 + 200) = *(a3 + 32);
  *(a6 + 208) = v13;
  *(a6 + 209) = a5;
  return result;
}

uint64_t sub_213DFECA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61[1] = a1;
  v66 = a2;
  v65 = sub_213F4D290();
  v64 = *(v65 - 8);
  v2 = MEMORY[0x28223BE20](v65);
  v4 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v61 - v8;
  v10 = sub_213F4E230();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8558, &qword_213F54538) - 8;
  MEMORY[0x28223BE20](v62);
  v15 = v61 - v14;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8560, &qword_213F54540) - 8;
  MEMORY[0x28223BE20](v63);
  v67 = v61 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8568, &qword_213F54548);
  sub_213DE3AE4(&qword_27C8F8570, &qword_27C8F8568, &qword_213F54548, MEMORY[0x277CDF1A8]);
  sub_213F4E850();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0A70], v10);
  v17 = sub_213F4E0F0();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  sub_213F4E110();
  v18 = sub_213F4E1A0();
  sub_213DE36FC(v9, &qword_27C8F7668, &qword_213F52190);
  (*(v11 + 8))(v13, v10);
  KeyPath = swift_getKeyPath();
  v20 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8578, &qword_213F54580) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = swift_getKeyPath();
  v22 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8580, &qword_213F545B8) + 36)];
  *v22 = v21;
  v22[8] = 1;
  LOBYTE(v21) = sub_213F4E0B0();
  sub_213F4CDA0();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8588, &qword_213F545C0) + 36)];
  *v31 = v21;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v21) = sub_213F4E040();
  sub_213DBBD08(v6);
  sub_213F4D280();
  sub_213F4D270();
  v32 = *(v64 + 8);
  v33 = v65;
  v32(v4, v65);
  v32(v6, v33);
  sub_213F4CDA0();
  v34 = &v15[*(v62 + 44)];
  *v34 = v21;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  sub_213DBBD08(v6);
  sub_213F4D280();
  sub_213F4D270();
  v32(v4, v33);
  v32(v6, v33);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v39 = v67;
  sub_213DE2B44(v15, v67, &qword_27C8F8558, &qword_213F54538);
  v40 = (v39 + *(v63 + 44));
  v41 = v73;
  v40[4] = v72;
  v40[5] = v41;
  v40[6] = v74;
  v42 = v69;
  *v40 = v68;
  v40[1] = v42;
  v43 = v71;
  v40[2] = v70;
  v40[3] = v43;
  v44 = sub_213F4EEE0();
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8590, &qword_213F545C8);
  v48 = v66;
  v49 = (v66 + *(v47 + 36));
  sub_213DBBD08(v6);
  sub_213F4D280();
  sub_213F4D270();
  v32(v4, v33);
  v32(v6, v33);
  v50 = *(sub_213F4D470() + 20);
  v51 = *MEMORY[0x277CE0118];
  v52 = sub_213F4D950();
  (*(*(v52 - 8) + 104))(&v49[v50], v51, v52);
  __asm { FMOV            V0.2D, #26.0 }

  *v49 = _Q0;
  LODWORD(v51) = sub_213F4DDA0();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8598, &qword_213F545D0);
  *&v49[*(v58 + 52)] = v51;
  *&v49[*(v58 + 56)] = 256;
  v59 = &v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85A0, &qword_213F545D8) + 36)];
  *v59 = v44;
  v59[1] = v46;
  return sub_213DE2B44(v67, v48, &qword_27C8F8560, &qword_213F54540);
}

uint64_t sub_213DFF394@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_213DFF594(uint64_t a1)
{
  v2 = (v1 + *(a1 + 44));
  v3 = *v2;
  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87A8, &qword_213F547C0);
  MEMORY[0x216052020](&v8, v6);
  return v8;
}

double sub_213DFF658(uint64_t a1)
{
  v2 = (v1 + *(a1 + 48));
  v3 = v2[1];
  v4 = v2[2];
  v7[1] = *v2;
  v7[2] = v3;
  v7[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87B0, &qword_213F547C8);
  MEMORY[0x216052020](v7, v5);
  return *v7;
}

double sub_213DFF6B8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 52));
  v3 = v2[1];
  v4 = v2[2];
  v7[1] = *v2;
  v7[2] = v3;
  v7[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87B0, &qword_213F547C8);
  MEMORY[0x216052020](v7, v5);
  return *v7;
}

uint64_t sub_213DFF784(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76E8, &unk_213F523C0);
  sub_213F4CDE0();
  return v2;
}

uint64_t CenteredCardHeaderContent.init(viewModel:expansionProgress:editableTitle:leadingButtonsWidthBinding:trailingButtonsWidthBinding:ornamentViewVisibilityRange:submitHandler:ornamentViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v54 = *a15;
  v55 = *a14;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for CenteredCardHeaderContent(0, a20, a21, v29);
  v31 = a9 + v30[17];
  *v31 = sub_213F4CDF0() & 1;
  *(v31 + 1) = v32;
  v31[16] = v33 & 1;
  sub_213E04588(a1, a9 + v30[9]);
  *(a9 + v30[10]) = a10;
  if (a3)
  {
    v34 = a5;
    v35 = a4;
    v36 = a3;
    v37 = a2;
  }

  else
  {
    sub_213F4EC70();
    v37 = v56;
    v36 = v57;
    v35 = v58;
    v34 = v59;
  }

  v38 = a12;
  v39 = (a9 + v30[11]);
  *v39 = v37;
  v39[1] = v36;
  v39[2] = v35;
  v39[3] = v34;
  sub_213E045C0(a2, a3, a4, a5);
  if (a7)
  {
    v41 = a6;
    v40 = a8;
  }

  else
  {
    sub_213F4EC70();
    v41 = v56;
    a7 = v57;
    v40 = v58;
  }

  v42 = (a9 + v30[12]);
  *v42 = v41;
  v42[1] = a7;
  v42[2] = v40;
  if (a12)
  {
    v43 = a5;
    v44 = a1;
    sub_213E0460C(a2, a3, a4, v43);
    result = sub_213E0465C(v44);
  }

  else
  {
    sub_213F4EC70();
    sub_213E0460C(a2, a3, a4, a5);
    result = sub_213E0465C(a1);
    a11 = v56;
    v38 = v57;
    a13 = v58;
  }

  v48 = (a9 + v30[13]);
  *v48 = a11;
  v48[1] = v38;
  v48[2] = a13;
  v49 = a9 + v30[14];
  *v49 = v55;
  v49[1] = v54;
  v50 = (a9 + v30[15]);
  *v50 = a18;
  v50[1] = a19;
  v51 = (a9 + v30[16]);
  *v51 = a16;
  v51[1] = a17;
  return result;
}

double sub_213DFFB18(uint64_t a1)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_213DFF394(&v17 - v8);
  sub_213F4D280();
  sub_213F4D270();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v10(v9, v3);
  v11 = *(v1 + *(a1 + 40));
  if (v11 >= 0.0 && v11 < 1.0)
  {
    v15 = v11 * 12.0;
    v16 = 0.0;
    return round(v15 + v16);
  }

  result = 0.0;
  if (v11 >= 1.0 && v11 <= 2.0)
  {
    v15 = (v11 + -1.0) * 4.0;
    v16 = 12.0;
    return round(v15 + v16);
  }

  return result;
}

double sub_213DFFC90(uint64_t a1)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = v1 + *(a1 + 36);
  if (*(v10 + 208) == 1)
  {
    sub_213DFF394(&v19 - v8);
    sub_213F4D280();
    sub_213F4D270();
    v11 = *(v4 + 8);
    v11(v7, v3);
    v11(v9, v3);
    v12 = 20.0;
    if (!*(v10 + 208))
    {
      v12 = 16.0;
    }

    v13 = 32.0;
  }

  else
  {
    v12 = 16.0;
    v13 = 116.0;
  }

  v14 = *(v1 + *(a1 + 40));
  if (v14 >= 0.0 && v14 < 1.0)
  {
    v18 = v12 * v14 + 0.0;
    return round(v18);
  }

  result = 0.0;
  if (v14 >= 1.0 && v14 <= 2.0)
  {
    v18 = v12 + (v13 - v12) * (v14 + -1.0);
    return round(v18);
  }

  return result;
}

double sub_213DFFE40(uint64_t a1)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_213DFF394(&v17 - v8);
  sub_213F4D280();
  sub_213F4D270();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v10(v9, v3);
  v11 = *(v1 + *(a1 + 40));
  if (v11 >= 0.0 && v11 < 1.0)
  {
    v15 = v11 * 16.0;
    v16 = 0.0;
    return round(v15 + v16);
  }

  result = 0.0;
  if (v11 >= 1.0 && v11 <= 2.0)
  {
    v15 = (v11 + -1.0) * 0.0;
    v16 = 16.0;
    return round(v15 + v16);
  }

  return result;
}

double sub_213DFFFB8(uint64_t a1)
{
  v3 = sub_213F4D290();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  sub_213DFF394(&v17 - v8);
  sub_213F4D280();
  sub_213F4D270();
  v10 = *(v4 + 8);
  v10(v7, v3);
  v10(v9, v3);
  v11 = *(v1 + *(a1 + 40));
  if (v11 >= 0.0 && v11 < 1.0)
  {
    v15 = v11 * 80.0;
    v16 = 0.0;
    return round(v15 + v16);
  }

  result = 0.0;
  if (v11 >= 1.0 && v11 <= 2.0)
  {
    v15 = (v11 + -1.0) * 160.0;
    v16 = 80.0;
    return round(v15 + v16);
  }

  return result;
}

uint64_t CenteredCardHeaderContent.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F84A0, &qword_213F53D28);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F84A8, &qword_213F53D30);
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EBC0();
  sub_213F4D400();
  sub_213F4D400();
  sub_213F4D400();
  swift_getTupleTypeMetadata2();
  sub_213F4EFE0();
  swift_getWitnessTable();
  v4 = sub_213F4EBE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = sub_213F4D400();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_213F4EED0();
  v15 = *(v22 + 24);
  v25 = v3;
  v26 = v15;
  v27 = v23;
  sub_213F4EBD0();
  v30 = xmmword_213F53CB0;
  v31 = 15;
  WitnessTable = swift_getWitnessTable();
  View.mapsDesignAXContainer(withID:)(&v30, v4, WitnessTable);
  sub_213DD9350(v30, *(&v30 + 1), v31);
  (*(v5 + 8))(v7, v4);
  v17 = sub_213DD9674();
  v28 = WitnessTable;
  v29 = v17;
  swift_getWitnessTable();
  v18 = *(v9 + 16);
  v18(v14, v12, v8);
  v19 = *(v9 + 8);
  v19(v12, v8);
  v18(v24, v14, v8);
  return (v19)(v14, v8);
}

uint64_t sub_213E0054C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v125 = a1;
  v123 = a4;
  swift_getTupleTypeMetadata3();
  sub_213F4EFE0();
  swift_getWitnessTable();
  sub_213F4EB40();
  sub_213F4D400();
  sub_213F4F6B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F84A8, &qword_213F53D30);
  swift_getTupleTypeMetadata2();
  v110 = sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_213F4EBC0();
  v113 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v107 = &v90 - v7;
  v114 = v8;
  v9 = sub_213F4D400();
  v116 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v111 = &v90 - v10;
  v117 = v11;
  v12 = sub_213F4D400();
  v118 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v115 = &v90 - v13;
  v119 = v14;
  v108 = sub_213F4D400();
  v122 = *(v108 - 8);
  v15 = MEMORY[0x28223BE20](v108);
  v112 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v121 = &v90 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85A8, &qword_213F545E0);
  MEMORY[0x28223BE20](v103);
  v19 = &v90 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85B0, &qword_213F545E8);
  v97 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v96 = &v90 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85B8, &qword_213F545F0);
  MEMORY[0x28223BE20](v99);
  v102 = &v90 - v22;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85C0, &qword_213F545F8);
  MEMORY[0x28223BE20](v98);
  v24 = &v90 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85C8, &qword_213F54600);
  v95 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v26 = &v90 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85D0, &unk_213F54608);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v100 = &v90 - v29;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F84A0, &qword_213F53D28);
  v30 = MEMORY[0x28223BE20](v106);
  v105 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v90 - v32;
  v120 = a2;
  v104 = a3;
  v35 = type metadata accessor for CenteredCardHeaderContent(0, a2, a3, v34);
  v36 = v125 + *(v35 + 36);
  sub_213DE3164(v36 + 168, &v139, &qword_27C8F7AB8, &qword_213F522C0);
  v124 = v33;
  if (*(&v140 + 1))
  {
    v94 = v27;
    v93 = v20;
    sub_213DD7500(&v139, v138);
    v37 = *(v36 + 208);
    v92 = v28;
    if (v37)
    {
      v38 = v125;
      sub_213E01AA0(v138, v19);
      sub_213DFFFB8(v35);
      sub_213F4EEE0();
      sub_213F4D0C0();
      v39 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8668, &qword_213F54658) + 36)];
      v40 = v141;
      *(v39 + 1) = v140;
      *(v39 + 2) = v40;
      *v39 = v139;
      v41 = *(v38 + *(v35 + 40));
      if (v41 < 0.0 || v41 >= 1.0)
      {
        v48 = 0.0;
        if (v41 < 1.0 || v41 > 2.0)
        {
          goto LABEL_14;
        }

        v42 = -1.0;
      }

      else
      {
        v42 = 0.0;
        v41 = v41 * 0.0;
      }

      v48 = round(v41 + v42);
LABEL_14:
      v49 = v103;
      *&v19[*(v103 + 36)] = v48;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85E8, &qword_213F54618);
      v51 = sub_213E05000();
      v95 = v51;
      v52 = sub_213F4D580();
      v53 = sub_213E05BDC(&qword_27C8F8650, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
      v126 = v52;
      v127 = v53;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v55 = v96;
      MEMORY[0x2160518A0](sub_213DFEA10, 0, v49, v50, v51, OpaqueTypeConformance2);
      sub_213DE36FC(v19, &qword_27C8F85A8, &qword_213F545E0);
      v56 = v97;
      v57 = v93;
      (*(v97 + 16))(v102, v55, v93);
      swift_storeEnumTagMultiPayload();
      v58 = sub_213E04D2C();
      v126 = v98;
      v127 = v50;
      v128 = v58;
      v129 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v126 = v49;
      v127 = v50;
      v128 = v95;
      v129 = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v59 = v100;
      sub_213F4DBA0();
      (*(v56 + 8))(v55, v57);
LABEL_20:
      __swift_destroy_boxed_opaque_existential_1(v138);
      v44 = v124;
      sub_213DE2B44(v59, v124, &qword_27C8F85D0, &unk_213F54608);
      v43 = (*(v92 + 56))(v44, 0, 1, v94);
      goto LABEL_21;
    }

    v45 = v125;
    sub_213DFFFB8(v35);
    sub_213E015D4(v138, v35, v24);
    v46 = *(v45 + *(v35 + 40));
    v91 = v35;
    if (v46 < 0.0 || v46 >= 1.0)
    {
      v60 = 0.0;
      if (v46 < 1.0 || v46 > 2.0)
      {
        goto LABEL_19;
      }

      v47 = -1.0;
    }

    else
    {
      v47 = 0.0;
      v46 = v46 * 0.0;
    }

    v60 = round(v46 + v47);
LABEL_19:
    v61 = v98;
    *&v24[*(v98 + 36)] = v60;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F85E8, &qword_213F54618);
    v63 = sub_213E04D2C();
    v64 = sub_213F4D580();
    v65 = sub_213E05BDC(&qword_27C8F8650, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
    *&v139 = v64;
    *(&v139 + 1) = v65;
    v66 = swift_getOpaqueTypeConformance2();
    MEMORY[0x2160518A0](sub_213DFEA10, 0, v61, v62, v63, v66);
    sub_213DE36FC(v24, &qword_27C8F85C0, &qword_213F545F8);
    v67 = v95;
    v68 = v101;
    (*(v95 + 16))(v102, v26, v101);
    swift_storeEnumTagMultiPayload();
    *&v139 = v61;
    *(&v139 + 1) = v62;
    *&v140 = v63;
    *(&v140 + 1) = v66;
    swift_getOpaqueTypeConformance2();
    v69 = sub_213E05000();
    *&v139 = v103;
    *(&v139 + 1) = v62;
    *&v140 = v69;
    *(&v140 + 1) = v66;
    swift_getOpaqueTypeConformance2();
    v59 = v100;
    sub_213F4DBA0();
    (*(v67 + 8))(v26, v68);
    v35 = v91;
    goto LABEL_20;
  }

  sub_213DE36FC(&v139, &qword_27C8F7AB8, &qword_213F522C0);
  v43 = (*(v28 + 56))(v33, 1, 1, v27);
  v44 = v33;
LABEL_21:
  MEMORY[0x28223BE20](v43);
  v70 = v104;
  *(&v90 - 4) = v120;
  *(&v90 - 3) = v70;
  *(&v90 - 2) = v125;
  sub_213F4DA40();
  v71 = v107;
  sub_213F4EBB0();
  sub_213F4E060();
  sub_213DFFC90(v35);
  v72 = v114;
  v73 = swift_getWitnessTable();
  v74 = v111;
  sub_213F4E7D0();
  (*(v113 + 8))(v71, v72);
  sub_213F4E040();
  v75 = MEMORY[0x277CDF918];
  v136 = v73;
  v137 = MEMORY[0x277CDF918];
  v76 = v117;
  v77 = swift_getWitnessTable();
  v78 = v115;
  sub_213F4E7D0();
  (*(v116 + 8))(v74, v76);
  sub_213F4E070();
  sub_213DFFE40(v35);
  v134 = v77;
  v135 = v75;
  v79 = v119;
  v80 = swift_getWitnessTable();
  v81 = v112;
  sub_213F4E7D0();
  (*(v118 + 8))(v78, v79);
  v132 = v80;
  v133 = v75;
  v82 = v108;
  v125 = swift_getWitnessTable();
  v83 = v122;
  v84 = *(v122 + 16);
  v85 = v121;
  v84(v121, v81, v82);
  v86 = *(v83 + 8);
  v86(v81, v82);
  v87 = v44;
  v88 = v105;
  sub_213DE3164(v87, v105, &qword_27C8F84A0, &qword_213F53D28);
  v138[0] = v88;
  v84(v81, v85, v82);
  v138[1] = v81;
  v126 = v106;
  v127 = v82;
  v130 = sub_213E053E0(&qword_27C8F85D8, &qword_27C8F84A0, &qword_213F53D28, sub_213E04B98);
  v131 = v125;
  sub_213E95270(v138, 2uLL, &v126);
  v86(v85, v82);
  sub_213DE36FC(v124, &qword_27C8F84A0, &qword_213F53D28);
  v86(v81, v82);
  return sub_213DE36FC(v88, &qword_27C8F84A0, &qword_213F53D28);
}

__n128 sub_213E015D4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v6 = type metadata accessor for MapsDesignImage(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DEBAA8(a1, &v9[v7[10]]);
  v10 = sub_213F4EEE0();
  v12 = v11;
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v13 = v7[7];
  *&v9[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v14 = v7[8];
  *&v9[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v15 = v7[9];
  *&v9[v15] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v16 = &v9[v7[14]];
  v17 = &v9[v7[15]];
  v18 = &v9[v7[16]];
  v61 = 0uLL;
  *(&v62 + 7) = 0;
  *&v62 = 0;
  sub_213F4EA90();
  v19 = v71;
  v20 = BYTE8(v71);
  v21 = BYTE9(v71);
  v22 = BYTE10(v71);
  v23 = v72;
  *v18 = v70;
  *(v18 + 2) = v19;
  v18[24] = v20;
  v18[25] = v21;
  v18[26] = v22;
  *(v18 + 4) = v23;
  v24 = v7[17];
  *&v61 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v9[v24] = v70;
  v9[v7[11]] = 1;
  v25 = &v9[v7[12]];
  *v25 = v10;
  v25[1] = v12;
  v9[v7[13]] = 1;
  *v16 = 0;
  *(v16 + 1) = 0;
  *v17 = 0;
  *(v17 + 1) = 0;
  sub_213F4EEE0();
  sub_213F4D0C0();
  sub_213DEEFF0(v9, a3);
  v26 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) + 36));
  v27 = v59;
  *v26 = v58;
  v26[1] = v27;
  v26[2] = v60;
  sub_213E05D2C(v9, type metadata accessor for MapsDesignImage);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8620, &unk_213F54630) + 36)) = 0;
  v28 = sub_213F4EEE0();
  v30 = v29;
  sub_213E0430C(*(v46 + 16), *(v46 + 24), &v50);
  v65 = v54;
  v66 = v55;
  v67 = v56;
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v64 = v53;
  *&v68 = v57;
  *(&v68 + 1) = v28;
  v69 = v30;
  v31 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8610, &qword_213F54628) + 36);
  v32 = v68;
  *(v31 + 96) = v67;
  *(v31 + 112) = v32;
  *(v31 + 128) = v69;
  v33 = v64;
  *(v31 + 32) = v63;
  *(v31 + 48) = v33;
  v34 = v66;
  *(v31 + 64) = v65;
  *(v31 + 80) = v34;
  v35 = v62;
  *v31 = v61;
  *(v31 + 16) = v35;
  v74 = v54;
  v75 = v55;
  v76 = v56;
  v70 = v50;
  v71 = v51;
  v72 = v52;
  v73 = v53;
  v77 = v57;
  v78 = v28;
  v79 = v30;
  sub_213DE3164(&v61, &v47, &qword_27C8F8640, &qword_213F54648);
  sub_213DE36FC(&v70, &qword_27C8F8640, &qword_213F54648);
  v36 = sub_213F4EEE0();
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_213F53CC0;
  sub_213F4E8F0();
  *(v39 + 32) = sub_213F4EDB0();
  *(v39 + 40) = v40;
  sub_213F4E8F0();
  *(v39 + 48) = sub_213F4EDB0();
  *(v39 + 56) = v41;
  sub_213F4E8D0();
  *(v39 + 64) = sub_213F4EDB0();
  *(v39 + 72) = v42;
  sub_213F4F020();
  sub_213F4F030();
  sub_213F4EDC0();
  sub_213F4D2C0();
  v43 = v47;
  v44 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8600, &qword_213F54620) + 36);
  *v44 = v36;
  *(v44 + 8) = v38;
  *(v44 + 16) = v43;
  result = v48;
  *(v44 + 40) = v49;
  *(v44 + 24) = result;
  return result;
}

__n128 sub_213E01AA0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapsDesignImage(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213DEBAA8(a1, &v7[v5[10]]);
  v8 = sub_213F4EEE0();
  v10 = v9;
  *v7 = swift_getKeyPath();
  v7[8] = 0;
  v11 = v5[7];
  *&v7[v11] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v12 = v5[8];
  *&v7[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
  swift_storeEnumTagMultiPayload();
  v13 = v5[9];
  *&v7[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
  swift_storeEnumTagMultiPayload();
  v14 = &v7[v5[14]];
  v15 = &v7[v5[15]];
  v16 = &v7[v5[16]];
  memset(v39, 0, 27);
  sub_213F4EA90();
  v17 = *&v40[16];
  v18 = v41;
  v19 = BYTE1(v41);
  v20 = BYTE2(v41);
  v21 = *(&v41 + 1);
  *v16 = *v40;
  *(v16 + 2) = v17;
  v16[24] = v18;
  v16[25] = v19;
  v16[26] = v20;
  *(v16 + 4) = v21;
  v22 = v5[17];
  v39[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
  sub_213F4EA90();
  *&v7[v22] = *v40;
  v7[v5[11]] = 1;
  v23 = &v7[v5[12]];
  *v23 = v8;
  v23[1] = v10;
  v7[v5[13]] = 1;
  *v14 = 0;
  *(v14 + 1) = 0;
  *v15 = 0;
  *(v15 + 1) = 0;
  sub_213F4F040();
  v25 = v24;
  v27 = v26;
  sub_213DEEFF0(v7, a2);
  v28 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86A8, &qword_213F54678) + 36);
  *v28 = xmmword_213F53CD0;
  *(v28 + 16) = v25;
  *(v28 + 24) = v27;
  sub_213E05D2C(v7, type metadata accessor for MapsDesignImage);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8698, &qword_213F54670) + 36)) = 0x3FE70A3D70A3D70ALL;
  v29 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8688, &qword_213F54668) + 36);
  *v29 = 0x4049000000000000;
  *(v29 + 8) = 0;
  v30 = sub_213F4EEE0();
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86B0, &qword_213F5A010);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_213F51DE0;
  sub_213F4E8F0();
  *(v33 + 32) = sub_213F4EDB0();
  *(v33 + 40) = v34;
  sub_213F4E8D0();
  *(v33 + 48) = sub_213F4EDB0();
  *(v33 + 56) = v35;
  sub_213F4F020();
  sub_213F4F030();
  sub_213F4EDC0();
  sub_213F4D2C0();
  v36 = *v40;
  v37 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8678, &qword_213F54660) + 36);
  *v37 = v30;
  *(v37 + 8) = v32;
  *(v37 + 16) = v36;
  result = *&v40[8];
  *(v37 + 40) = v41;
  *(v37 + 24) = result;
  return result;
}

uint64_t sub_213E01E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v281 = a1;
  v270 = a4;
  v6 = sub_213F4E230();
  v212 = *(v6 - 8);
  v213 = v6;
  MEMORY[0x28223BE20](v6);
  v211 = &v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86C0, &qword_213F54728);
  MEMORY[0x28223BE20](v214);
  v215 = (&v201 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86C8, &qword_213F54730);
  v206 = *(v9 - 8);
  v207 = v9;
  MEMORY[0x28223BE20](v9);
  v220 = &v201 - v10;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86D0, &qword_213F54738);
  MEMORY[0x28223BE20](v203);
  v205 = &v201 - v11;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86D8, &qword_213F54740);
  MEMORY[0x28223BE20](v204);
  v209 = &v201 - v12;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86E0, &qword_213F54748);
  v13 = MEMORY[0x28223BE20](v264);
  v208 = &v201 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v210 = &v201 - v15;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86E8, &qword_213F54750);
  MEMORY[0x28223BE20](v262);
  v263 = &v201 - v16;
  v17 = sub_213F4DC60();
  v253 = *(v17 - 8);
  v254 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v251 = &v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v252 = &v201 - v20;
  v259 = sub_213F4DC80();
  v256 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v255 = &v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86F0, &qword_213F54758);
  v260 = *(v22 - 8);
  v261 = v22;
  v23 = MEMORY[0x28223BE20](v22);
  v257 = &v201 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v258 = &v201 - v25;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  MEMORY[0x28223BE20](v249);
  v265 = &v201 - v26;
  v27 = sub_213F4CF80();
  v247 = *(v27 - 8);
  v248 = v27;
  MEMORY[0x28223BE20](v27);
  v246 = &v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for CapsuleTextFieldStyle(0);
  MEMORY[0x28223BE20](v245);
  v242 = (&v201 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v275 = a3;
  v31 = type metadata accessor for CenteredCardHeaderContent(0, a2, a3, v30);
  v233 = *(v31 - 8);
  v273 = *(v233 + 64);
  MEMORY[0x28223BE20](v31);
  v232 = &v201 - v32;
  v33 = sub_213F4CB60();
  MEMORY[0x28223BE20](v33 - 8);
  v230 = &v201 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_213F4F210();
  v229 = *(v231 - 8);
  v35 = MEMORY[0x28223BE20](v231);
  v227 = &v201 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v228 = &v201 - v37;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F86F8, &qword_213F54768);
  v235 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v234 = &v201 - v38;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8700, &qword_213F54770);
  v238 = *(v240 - 8);
  MEMORY[0x28223BE20](v240);
  v236 = &v201 - v39;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8708, &qword_213F54778);
  v241 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v239 = &v201 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8710, &qword_213F54780);
  v217 = *(v41 - 8);
  v218 = v41;
  MEMORY[0x28223BE20](v41);
  v244 = &v201 - v42;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8718, &qword_213F54788);
  MEMORY[0x28223BE20](v250);
  v219 = &v201 - v43;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F84A8, &qword_213F53D30);
  v44 = MEMORY[0x28223BE20](v267);
  v269 = &v201 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v268 = &v201 - v46;
  swift_getTupleTypeMetadata3();
  v47 = sub_213F4EFE0();
  WitnessTable = swift_getWitnessTable();
  v222 = v47;
  v48 = sub_213F4EB40();
  v225 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v223 = &v201 - v49;
  v279 = v50;
  v51 = sub_213F4D400();
  v272 = *(v51 - 8);
  v52 = MEMORY[0x28223BE20](v51);
  v226 = &v201 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v224 = &v201 - v54;
  v55 = sub_213F4F6B0();
  v56 = *(v55 - 8);
  v57 = MEMORY[0x28223BE20](v55);
  v59 = &v201 - v58;
  v60 = *(a2 - 8);
  MEMORY[0x28223BE20](v57);
  v271 = &v201 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = sub_213F4F6B0();
  v276 = *(v277 - 8);
  v62 = MEMORY[0x28223BE20](v277);
  v64 = &v201 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v62);
  v278 = &v201 - v66;
  v280 = v31;
  (*(v281 + *(v31 + 60)))(v65);
  v67 = (*(v60 + 48))(v59, 1, a2);
  v68 = MEMORY[0x277CDF918];
  v274 = a2;
  if (v67 == 1)
  {
    (*(v56 + 8))(v59, v55);
    (*(v272 + 56))(v64, 1, 1, v51);
    v311 = swift_getWitnessTable();
    v312 = v68;
    swift_getWitnessTable();
    sub_213F43E1C(v64, v278);
    v69 = v276;
    v70 = v277;
    (*(v276 + 8))(v64, v277);
  }

  else
  {
    v202 = v60;
    v71 = (*(v60 + 32))();
    MEMORY[0x28223BE20](v71);
    sub_213F4D8A0();
    v72 = v223;
    sub_213F4EB30();
    sub_213F4E070();
    sub_213DFFB18(v280);
    v73 = v279;
    v74 = swift_getWitnessTable();
    v75 = v226;
    sub_213F4E7D0();
    (*(v225 + 8))(v72, v73);
    v282 = v74;
    v283 = v68;
    v225 = swift_getWitnessTable();
    v76 = v272;
    v77 = *(v272 + 16);
    v78 = v224;
    v77(v224, v75, v51);
    v79 = *(v76 + 8);
    v79(v75, v51);
    v77(v75, v78, v51);
    v79(v78, v51);
    (*(v76 + 32))(v64, v75, v51);
    (*(v76 + 56))(v64, 0, 1, v51);
    sub_213F43E1C(v64, v278);
    v69 = v276;
    v70 = v277;
    (*(v276 + 8))(v64, v277);
    (*(v202 + 8))(v271, v274);
  }

  v80 = v281 + *(v280 + 36);
  v81 = *(v80 + 209);
  v82 = v281;
  v266 = v64;
  if (v81 == 1)
  {
    v83 = v281;
    v216 = v51;
    v84 = v228;
    sub_213F4F200();
    v85 = v229;
    v86 = v231;
    (*(v229 + 16))(v227, v84, v231);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v87 = qword_281182518;
    sub_213F4CB50();
    v88 = sub_213F4F260();
    v90 = v89;
    (*(v85 + 8))(v84, v86);
    *&v291 = v88;
    *(&v291 + 1) = v90;
    v92 = v232;
    v91 = v233;
    v272 = *(v233 + 16);
    v93 = v280;
    (v272)(v232, v83, v280);
    v271 = sub_213F4F460();
    v94 = sub_213F4F450();
    v95 = (*(v91 + 80) + 48) & ~*(v91 + 80);
    v96 = swift_allocObject();
    v97 = MEMORY[0x277D85700];
    v96[2] = v94;
    v96[3] = v97;
    v98 = v275;
    v96[4] = v274;
    v96[5] = v98;
    v233 = *(v91 + 32);
    (v233)(v96 + v95, v92, v93);
    (v272)(v92, v83, v93);
    v99 = sub_213F4F450();
    v100 = swift_allocObject();
    v100[2] = v99;
    v101 = v274;
    v100[3] = MEMORY[0x277D85700];
    v100[4] = v101;
    v100[5] = v275;
    v102 = v92;
    v103 = v93;
    (v233)(v100 + v95, v102, v93);
    sub_213F4EC50();
    sub_213DBC9EC();
    v104 = v234;
    sub_213F4EFD0();
    KeyPath = swift_getKeyPath();
    v106 = v242;
    *v242 = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v107 = sub_213DE3AE4(&qword_27C8F8750, &qword_27C8F86F8, &qword_213F54768, MEMORY[0x277CDF1A8]);
    v108 = sub_213E05BDC(&qword_27C8F8758, type metadata accessor for CapsuleTextFieldStyle, &unk_213F544F8);
    v110 = v236;
    v109 = v237;
    v111 = v245;
    sub_213F4E550();
    sub_213E05D2C(v106, type metadata accessor for CapsuleTextFieldStyle);
    (*(v235 + 8))(v104, v109);
    v112 = v246;
    sub_213F4CF70();
    *&v301 = v109;
    *(&v301 + 1) = v111;
    *&v302 = v107;
    *(&v302 + 1) = v108;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v115 = v239;
    v114 = v240;
    sub_213F4E430();
    (*(v247 + 8))(v112, v248);
    (*(v238 + 8))(v110, v114);
    sub_213DFF784(v103);
    *&v301 = v114;
    *(&v301 + 1) = OpaqueTypeConformance2;
    v116 = swift_getOpaqueTypeConformance2();
    v117 = v243;
    v118 = v244;
    sub_213F4E780();

    (*(v241 + 8))(v115, v117);
    v119 = *MEMORY[0x277CDFA00];
    v120 = sub_213F4D390();
    v121 = v265;
    (*(*(v120 - 8) + 104))(v265, v119, v120);
    sub_213E05BDC(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_213F4F1F0();
    if (result)
    {
      *&v301 = v117;
      *(&v301 + 1) = v116;
      swift_getOpaqueTypeConformance2();
      sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
      v123 = v218;
      v124 = v219;
      sub_213F4E570();
      sub_213DE36FC(v121, &qword_27C8F75C0, &qword_213F54760);
      (*(v217 + 8))(v118, v123);
      *(v124 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8748, &qword_213F54798) + 36)) = 0x4000000000000000;
      v125 = v252;
      sub_213F4DC50();
      v127 = v253;
      v126 = v254;
      (*(v253 + 16))(v251, v125, v254);
      v128 = v255;
      sub_213F4DC70();
      (*(v127 + 8))(v125, v126);
      sub_213F4EF80();
      v129 = sub_213E05BDC(&qword_27C8F87A0, MEMORY[0x277CE0418], MEMORY[0x277CE0410]);
      v131 = v258;
      v130 = v259;
      sub_213F4CE80();

      (*(v256 + 8))(v128, v130);
      v133 = v260;
      v132 = v261;
      (*(v260 + 16))(v257, v131, v261);
      *&v301 = v130;
      *(&v301 + 1) = v129;
      swift_getOpaqueTypeConformance2();
      v134 = sub_213F4D130();
      (*(v133 + 8))(v131, v132);
      *(v124 + *(v250 + 36)) = v134;
      v135 = &qword_27C8F8718;
      v136 = &qword_213F54788;
      sub_213DE3164(v124, v263, &qword_27C8F8718, &qword_213F54788);
      swift_storeEnumTagMultiPayload();
      sub_213E054E8();
      sub_213E0582C();
      v137 = v268;
      sub_213F4DBA0();
      v138 = v124;
LABEL_17:
      sub_213DE36FC(v138, v135, v136);
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8720, &qword_213F54790);
      (*(*(v196 - 8) + 56))(v137, 0, 1, v196);
      v70 = v277;
      v69 = v276;
      goto LABEL_18;
    }

    __break(1u);
  }

  else
  {
    v139 = v280;
    v140 = *(v80 + 112);
    v141 = *(v80 + 80);
    v297 = *(v80 + 96);
    v298 = v140;
    v142 = *(v80 + 112);
    v143 = *(v80 + 144);
    v299 = *(v80 + 128);
    v300 = v143;
    v144 = *(v80 + 48);
    v145 = *(v80 + 16);
    v293 = *(v80 + 32);
    v294 = v144;
    v146 = *(v80 + 48);
    v147 = *(v80 + 80);
    v295 = *(v80 + 64);
    v296 = v147;
    v148 = *(v80 + 16);
    v291 = *v80;
    v292 = v148;
    v307 = v297;
    v308 = v142;
    v149 = *(v80 + 144);
    v309 = v299;
    v310 = v149;
    v303 = v293;
    v304 = v146;
    v305 = v295;
    v306 = v141;
    v301 = v291;
    v302 = v145;
    if (sub_213E053C8(&v301) == 1)
    {
      v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8720, &qword_213F54790);
      v137 = v268;
      (*(*(v150 - 8) + 56))(v268, 1, 1, v150);
LABEL_18:
      v197 = v266;
      v198 = v278;
      (*(v69 + 16))(v266, v278, v70);
      *&v301 = v197;
      v199 = v269;
      sub_213DE3164(v137, v269, &qword_27C8F84A8, &qword_213F53D30);
      *(&v301 + 1) = v199;
      *&v291 = v70;
      *(&v291 + 1) = v267;
      v289 = swift_getWitnessTable();
      v290 = MEMORY[0x277CDF918];
      v288 = swift_getWitnessTable();
      *&v287[0] = swift_getWitnessTable();
      *(&v287[0] + 1) = sub_213E053E0(&qword_27C8F8728, &qword_27C8F84A8, &qword_213F53D30, sub_213E0545C);
      sub_213E95270(&v301, 2uLL, &v291);
      sub_213DE36FC(v137, &qword_27C8F84A8, &qword_213F53D30);
      v200 = *(v69 + 8);
      v200(v198, v70);
      sub_213DE36FC(v199, &qword_27C8F84A8, &qword_213F53D30);
      return (v200)(v197, v70);
    }

    v216 = v51;
    v151 = *(v80 + 160);
    v152 = *(v82 + *(v139 + 40));
    v153 = v302;
    v154 = v215;
    *v215 = v301;
    *(v154 + 16) = v153;
    v155 = v308;
    *(v154 + 96) = v307;
    *(v154 + 112) = v155;
    v156 = v310;
    *(v154 + 128) = v309;
    *(v154 + 144) = v156;
    v157 = v304;
    *(v154 + 32) = v303;
    *(v154 + 48) = v157;
    v158 = v306;
    *(v154 + 64) = v305;
    *(v154 + 80) = v158;
    *(v154 + 160) = v151;
    *(v154 + 168) = v152;
    *(v154 + 176) = 256;
    type metadata accessor for CardHeaderText(0);
    v284 = 0x403E000000000000;
    LODWORD(v275) = *MEMORY[0x277CE0A70];
    v159 = v211;
    v160 = *(v212 + 104);
    v161 = v213;
    v160(v211);
    v287[6] = v297;
    v287[7] = v298;
    v287[8] = v299;
    v287[9] = v300;
    v287[2] = v293;
    v287[3] = v294;
    v287[4] = v295;
    v287[5] = v296;
    v287[0] = v291;
    v287[1] = v292;
    sub_213DE3164(&v291, v286, &qword_27C8F8798, &unk_213F547B0);
    sub_213E05B80(v287, v286);
    sub_213DEC3D4();
    sub_213F4CFE0();
    *&v286[0] = 0x4034000000000000;
    (v160)(v159, *MEMORY[0x277CE0A90], v161);
    sub_213F4CFE0();
    *&v286[0] = 0x403C000000000000;
    v162 = v161;
    v163 = v280;
    (v160)(v159, v275, v162);
    v164 = v281;
    sub_213F4CFE0();
    v165 = sub_213F4E040();
    sub_213DFFA80(v163);
    sub_213F4CDA0();
    v166 = v154 + *(v214 + 36);
    *v166 = v165;
    *(v166 + 8) = v167;
    *(v166 + 16) = v168;
    *(v166 + 24) = v169;
    *(v166 + 32) = v170;
    *(v166 + 40) = 0;
    v171 = *MEMORY[0x277CDFA00];
    v172 = sub_213F4D390();
    v173 = v265;
    (*(*(v172 - 8) + 104))(v265, v171, v172);
    sub_213E05BDC(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_213F4F1F0();
    if (result)
    {
      sub_213E05AC4();
      sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
      sub_213F4E570();
      sub_213DE36FC(v173, &qword_27C8F75C0, &qword_213F54760);
      sub_213DE36FC(v154, &qword_27C8F86C0, &qword_213F54728);
      v174 = *(v164 + *(v163 + 40));
      if (v174 < 0.0 || v174 >= 1.0)
      {
        v176 = v263;
        v175 = v264;
        v177 = v207;
      }

      else
      {
        v176 = v263;
        v175 = v264;
        v177 = v207;
      }

      sub_213F4EEE0();
      sub_213F4D4E0();
      v178 = v205;
      (*(v206 + 32))(v205, v220, v177);
      v179 = (v178 + *(v203 + 36));
      v180 = v286[5];
      v179[4] = v286[4];
      v179[5] = v180;
      v179[6] = v286[6];
      v181 = v286[1];
      *v179 = v286[0];
      v179[1] = v181;
      v182 = v286[3];
      v179[2] = v286[2];
      v179[3] = v182;
      v183 = v209;
      sub_213DE2B44(v178, v209, &qword_27C8F86D0, &qword_213F54738);
      *(v183 + *(v204 + 36)) = 0x3FF0000000000000;
      v184 = v252;
      sub_213F4DC50();
      v186 = v253;
      v185 = v254;
      (*(v253 + 16))(v251, v184, v254);
      v187 = v255;
      sub_213F4DC70();
      (*(v186 + 8))(v184, v185);
      sub_213F4EF80();
      v188 = sub_213E05BDC(&qword_27C8F87A0, MEMORY[0x277CE0418], MEMORY[0x277CE0410]);
      v190 = v258;
      v189 = v259;
      sub_213F4CE80();

      (*(v256 + 8))(v187, v189);
      v192 = v260;
      v191 = v261;
      (*(v260 + 16))(v257, v190, v261);
      v284 = v189;
      v285 = v188;
      swift_getOpaqueTypeConformance2();
      v193 = sub_213F4D130();
      (*(v192 + 8))(v190, v191);
      v194 = v208;
      sub_213DE2B44(v183, v208, &qword_27C8F86D8, &qword_213F54740);
      *(v194 + *(v175 + 36)) = v193;
      v135 = &qword_27C8F86E0;
      v136 = &qword_213F54748;
      v195 = v210;
      sub_213DE2B44(v194, v210, &qword_27C8F86E0, &qword_213F54748);
      sub_213DE3164(v195, v176, &qword_27C8F86E0, &qword_213F54748);
      swift_storeEnumTagMultiPayload();
      sub_213E054E8();
      sub_213E0582C();
      v137 = v268;
      sub_213F4DBA0();
      sub_213DE36FC(&v291, &qword_27C8F8798, &unk_213F547B0);
      v138 = v195;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_213E04090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v14 - v9;
  v11 = *(v5 + 16);
  v11(v14 - v9);
  v18 = 0;
  v19 = 1;
  v20[0] = &v18;
  (v11)(v8, v10, a2);
  v16 = 0;
  v17 = 1;
  v20[1] = v8;
  v20[2] = &v16;
  v15[0] = MEMORY[0x277CE1180];
  v15[1] = a2;
  v15[2] = MEMORY[0x277CE1180];
  v14[1] = MEMORY[0x277CE1170];
  v14[2] = a3;
  v14[3] = MEMORY[0x277CE1170];
  sub_213E95270(v20, 3uLL, v15);
  v12 = *(v5 + 8);
  v12(v10, a2);
  return (v12)(v8, a2);
}

uint64_t sub_213E0422C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a1;
  v11 = a1[1];
  v19[0] = 10;
  v19[1] = 0xE100000000000000;
  v18[2] = v19;
  sub_213E05D98(sub_213E05E9C, v18, v10, v11);
  v13 = v12;
  v15 = type metadata accessor for CenteredCardHeaderContent(0, a6, a7, v14);
  if (v13)
  {

    return sub_213DFF5F4(v10, v11, v15);
  }

  else
  {
    v17 = sub_213DFF718(0, v15);
    return (*(a5 + *(v15 + 64)))(v17);
  }
}

double sub_213E0430C@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_213F4DA40();
  v21 = 0;
  sub_213E04460(a2, a3, &v15, v8);
  v24 = v17;
  v25 = v18;
  v26[0] = v19[0];
  *(v26 + 9) = *(v19 + 9);
  v22 = v15;
  v23 = v16;
  *(v28 + 9) = *(v19 + 9);
  v27[2] = v17;
  v27[3] = v18;
  v28[0] = v19[0];
  v27[0] = v15;
  v27[1] = v16;
  sub_213DE3164(&v22, &v14, &qword_27C8F86B8, &qword_213F54720);
  sub_213DE36FC(v27, &qword_27C8F86B8, &qword_213F54720);
  *&v20[39] = v24;
  *&v20[55] = v25;
  *&v20[71] = v26[0];
  *&v20[80] = *(v26 + 9);
  *&v20[7] = v22;
  *&v20[23] = v23;
  v9 = *&v20[48];
  *(a4 + 49) = *&v20[32];
  *(a4 + 65) = v9;
  v10 = *&v20[80];
  *(a4 + 81) = *&v20[64];
  *(a4 + 97) = v10;
  result = *&v20[16];
  v12 = *v20;
  *(a4 + 33) = *&v20[16];
  v13 = v21;
  *a4 = v7;
  *(a4 + 8) = 0;
  *(a4 + 16) = v13;
  *(a4 + 17) = v12;
  return result;
}

double sub_213E04460@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for CenteredCardHeaderContent(0, a1, a2, a4);
  sub_213DFFC90(v5);
  sub_213F4EEE0();
  sub_213F4D0C0();
  KeyPath = swift_getKeyPath();
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  *(a3 + 48) = v12;
  *(a3 + 56) = v13;
  *(a3 + 64) = KeyPath;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0x4034000000000000;
  *(a3 + 88) = 1;
  sub_213E053B0(KeyPath, 0);

  return sub_213E053BC(KeyPath, 0);
}

uint64_t sub_213E045C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return v4;
}

double sub_213E0460C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_213E0469C()
{
  result = qword_27C8F84B0[0];
  if (!qword_27C8F84B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27C8F84B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10MapsDesign23CardHeaderTextViewModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy210_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_213E047A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 210))
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

uint64_t sub_213E047FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *(result + 208) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 210) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 210) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_213E048A0(uint64_t a1)
{
  sub_213DF29DC(319);
  if (v1 <= 0x3F)
  {
    sub_213E049E4(319, &qword_27C8F8538, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_213E049E4(319, &qword_281182630, MEMORY[0x277D85048]);
      if (v3 <= 0x3F)
      {
        sub_213E04A30();
        if (v4 <= 0x3F)
        {
          sub_213DE22E8();
          if (v5 <= 0x3F)
          {
            sub_213DE2394();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_213E049E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_213F4EC80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_213E04A30()
{
  if (!qword_27C8F8540)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C8F8540);
    }
  }
}

uint64_t type metadata accessor for CapsuleTextFieldStyle(uint64_t a1)
{
  result = qword_27C8F8548;
  if (!qword_27C8F8548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_213E04B04(uint64_t a1)
{
  sub_213DF29DC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_213E04B98()
{
  result = qword_27C8F85E0;
  if (!qword_27C8F85E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85D0, &unk_213F54608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85C0, &qword_213F545F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85E8, &qword_213F54618);
    sub_213E04D2C();
    sub_213F4D580();
    sub_213E05BDC(&qword_27C8F8650, MEMORY[0x277CDFCB0], MEMORY[0x277CDFCA8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85A8, &qword_213F545E0);
    sub_213E05000();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F85E0);
  }

  return result;
}

unint64_t sub_213E04D2C()
{
  result = qword_27C8F85F0;
  if (!qword_27C8F85F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85C0, &qword_213F545F8);
    sub_213E04DB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F85F0);
  }

  return result;
}

unint64_t sub_213E04DB8()
{
  result = qword_27C8F85F8;
  if (!qword_27C8F85F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8600, &qword_213F54620);
    sub_213E04E70();
    sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F85F8);
  }

  return result;
}

unint64_t sub_213E04E70()
{
  result = qword_27C8F8608;
  if (!qword_27C8F8608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8610, &qword_213F54628);
    sub_213E04F28();
    sub_213DE3AE4(&qword_27C8F8638, &qword_27C8F8640, &qword_213F54648, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8608);
  }

  return result;
}

unint64_t sub_213E04F28()
{
  result = qword_27C8F8618;
  if (!qword_27C8F8618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8620, &unk_213F54630);
    sub_213E05308(&qword_27C8F7C10, &qword_27C8F7BE8, &unk_213F52220);
    sub_213DE3AE4(&qword_27C8F8628, &qword_27C8F8630, &qword_213F54640, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8618);
  }

  return result;
}

unint64_t sub_213E05000()
{
  result = qword_27C8F8658;
  if (!qword_27C8F8658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F85A8, &qword_213F545E0);
    sub_213E0508C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8658);
  }

  return result;
}

unint64_t sub_213E0508C()
{
  result = qword_27C8F8660;
  if (!qword_27C8F8660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8668, &qword_213F54658);
    sub_213E05118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8660);
  }

  return result;
}

unint64_t sub_213E05118()
{
  result = qword_27C8F8670;
  if (!qword_27C8F8670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8678, &qword_213F54660);
    sub_213E051D0();
    sub_213DE3AE4(&qword_2811829A0, &qword_27C8F8648, &qword_213F54650, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8670);
  }

  return result;
}

unint64_t sub_213E051D0()
{
  result = qword_27C8F8680;
  if (!qword_27C8F8680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8688, &qword_213F54668);
    sub_213E0525C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8680);
  }

  return result;
}

unint64_t sub_213E0525C()
{
  result = qword_27C8F8690;
  if (!qword_27C8F8690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8698, &qword_213F54670);
    sub_213E05308(&qword_27C8F86A0, &qword_27C8F86A8, &qword_213F54678);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8690);
  }

  return result;
}

uint64_t sub_213E05308(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_213E05BDC(&qword_2811887E8, type metadata accessor for MapsDesignImage, &protocol conformance descriptor for MapsDesignImage);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_213E053B0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

double sub_213E053BC(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_213E053C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_213E053E0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213E0545C()
{
  result = qword_27C8F8730;
  if (!qword_27C8F8730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8720, &qword_213F54790);
    sub_213E054E8();
    sub_213E0582C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8730);
  }

  return result;
}

unint64_t sub_213E054E8()
{
  result = qword_27C8F8738;
  if (!qword_27C8F8738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8718, &qword_213F54788);
    sub_213E055A0();
    sub_213DE3AE4(&qword_281182970, &qword_27C8F8770, &unk_213F62EF0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8738);
  }

  return result;
}

unint64_t sub_213E055A0()
{
  result = qword_27C8F8740;
  if (!qword_27C8F8740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8748, &qword_213F54798);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8710, &qword_213F54780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8708, &qword_213F54778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8700, &qword_213F54770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86F8, &qword_213F54768);
    type metadata accessor for CapsuleTextFieldStyle(255);
    sub_213DE3AE4(&qword_27C8F8750, &qword_27C8F86F8, &qword_213F54768, MEMORY[0x277CDF1A8]);
    sub_213E05BDC(&qword_27C8F8758, type metadata accessor for CapsuleTextFieldStyle, &unk_213F544F8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_27C8F8760, &qword_27C8F8768, &unk_213F547A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8740);
  }

  return result;
}

unint64_t sub_213E0582C()
{
  result = qword_27C8F8778;
  if (!qword_27C8F8778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86E0, &qword_213F54748);
    sub_213E058E4();
    sub_213DE3AE4(&qword_281182970, &qword_27C8F8770, &unk_213F62EF0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8778);
  }

  return result;
}

unint64_t sub_213E058E4()
{
  result = qword_27C8F8780;
  if (!qword_27C8F8780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86D8, &qword_213F54740);
    sub_213E0599C();
    sub_213DE3AE4(&qword_27C8F8760, &qword_27C8F8768, &unk_213F547A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8780);
  }

  return result;
}

unint64_t sub_213E0599C()
{
  result = qword_27C8F8788;
  if (!qword_27C8F8788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86D0, &qword_213F54738);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86C0, &qword_213F54728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F75C0, &qword_213F54760);
    sub_213E05AC4();
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8788);
  }

  return result;
}

unint64_t sub_213E05AC4()
{
  result = qword_27C8F8790;
  if (!qword_27C8F8790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F86C0, &qword_213F54728);
    sub_213E05BDC(qword_281187C20, type metadata accessor for CardHeaderText, &protocol conformance descriptor for CardHeaderText);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8790);
  }

  return result;
}

uint64_t sub_213E05BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213E05C24@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CenteredCardHeaderContent(0, *(v2 + 32), *(v2 + 40), a1);
  result = sub_213DFF594(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_213E05C8C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4[4];
  v8 = v4[5];
  v9 = *(type metadata accessor for CenteredCardHeaderContent(0, v7, v8, a4) - 8);
  v10 = v4[2];
  v11 = v4[3];
  v12 = v4 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_213E0422C(a1, a2, v10, v11, v12, v7, v8);
}

uint64_t sub_213E05D2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_213E05D98(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_213F4F2F0();
    v13[0] = sub_213F4F390();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_213E05E9C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_213F4F830() & 1;
  }
}

unint64_t sub_213E05EF4()
{
  result = qword_27C8F87B8;
  if (!qword_27C8F87B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8590, &qword_213F545C8);
    sub_213E05FAC();
    sub_213DE3AE4(&qword_27C8F87E8, &qword_27C8F85A0, &qword_213F545D8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87B8);
  }

  return result;
}

unint64_t sub_213E05FAC()
{
  result = qword_27C8F87C0;
  if (!qword_27C8F87C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8560, &qword_213F54540);
    sub_213E06038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87C0);
  }

  return result;
}

unint64_t sub_213E06038()
{
  result = qword_27C8F87C8;
  if (!qword_27C8F87C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8558, &qword_213F54538);
    sub_213E060C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87C8);
  }

  return result;
}

unint64_t sub_213E060C4()
{
  result = qword_27C8F87D0;
  if (!qword_27C8F87D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8588, &qword_213F545C0);
    sub_213E06150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87D0);
  }

  return result;
}

unint64_t sub_213E06150()
{
  result = qword_27C8F87D8;
  if (!qword_27C8F87D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8580, &qword_213F545B8);
    sub_213E06208();
    sub_213DE3AE4(&qword_281182888, &qword_27C8F7CA8, &unk_213F53660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87D8);
  }

  return result;
}

unint64_t sub_213E06208()
{
  result = qword_27C8F87E0;
  if (!qword_27C8F87E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8578, &qword_213F54580);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8568, &qword_213F54548);
    sub_213DE3AE4(&qword_27C8F8570, &qword_27C8F8568, &qword_213F54548, MEMORY[0x277CDF1A8]);
    swift_getOpaqueTypeConformance2();
    sub_213DE3AE4(&qword_281182860, &qword_27C8F76E0, &unk_213F518D0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87E0);
  }

  return result;
}

__n128 CenteredCardHeaderNavigationViewModel.init(textViewModel:visible:leadingButtons:trailingButtons:size:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a1 + 112);
  *(a6 + 96) = *(a1 + 96);
  *(a6 + 112) = v7;
  v8 = *(a1 + 144);
  *(a6 + 128) = *(a1 + 128);
  *(a6 + 144) = v8;
  v9 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v9;
  v10 = *(a1 + 80);
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = v10;
  result = *a1;
  v12 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v12;
  *(a6 + 160) = a2;
  *(a6 + 168) = a3;
  *(a6 + 176) = a4;
  *(a6 + 184) = v6;
  return result;
}

double CenteredCardHeaderNavigation.init(viewModel:leadingButtonsWidthBinding:trailingButtonsWidthBinding:)@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v27 = a1[8];
  v28 = a1[9];
  *v29 = a1[10];
  *&v29[9] = *(a1 + 169);
  v23 = a1[4];
  v24 = a1[5];
  v25 = a1[6];
  v26 = a1[7];
  v19 = *a1;
  v20 = a1[1];
  v21 = a1[2];
  v22 = a1[3];
  sub_213F4EA90();
  sub_213F4EA90();
  if (!a3)
  {
    sub_213F4EC70();
    a2 = v16;
    a3 = v17;
    a4 = v18;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_213F4EC70();
    a5 = v16;
    a6 = v17;
    a7 = v18;
    goto LABEL_3;
  }

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  *(a8 + 128) = v27;
  *(a8 + 144) = v28;
  *(a8 + 160) = *v29;
  *(a8 + 176) = *&v29[16];
  *(a8 + 64) = v23;
  *(a8 + 80) = v24;
  *(a8 + 96) = v25;
  *(a8 + 112) = v26;
  *a8 = v19;
  *(a8 + 16) = v20;
  result = *&v21;
  *(a8 + 32) = v21;
  *(a8 + 48) = v22;
  *(a8 + 192) = a2;
  *(a8 + 200) = a3;
  *(a8 + 208) = a4;
  *(a8 + 216) = a5;
  *(a8 + 224) = a6;
  *(a8 + 232) = a7;
  *(a8 + 240) = v16;
  *(a8 + 248) = v17;
  *(a8 + 256) = v16;
  *(a8 + 264) = v17;
  return result;
}

uint64_t CenteredCardHeaderNavigation.body.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87F0, &qword_213F547D0);
  sub_213E06670();
  return sub_213F4DD40();
}

uint64_t sub_213E0657C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_213F4EEE0();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8830, &qword_213F554E8);
  sub_213E067D0(a1, a2 + *(v5 + 44));
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8808, &qword_213F547D8) + 36);
  *v6 = 0xD000000000000014;
  *(v6 + 1) = 0x8000000213FA4F00;
  v6[16] = 11;
  LOBYTE(a1) = sub_213F4E040();
  sub_213F4CDA0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87F0, &qword_213F547D0);
  v16 = a2 + *(result + 36);
  *v16 = a1;
  *(v16 + 1) = v8;
  *(v16 + 2) = v10;
  *(v16 + 3) = v12;
  *(v16 + 4) = v14;
  v16[40] = 0;
  return result;
}

unint64_t sub_213E06670()
{
  result = qword_27C8F87F8;
  if (!qword_27C8F87F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F87F0, &qword_213F547D0);
    sub_213E066FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F87F8);
  }

  return result;
}

unint64_t sub_213E066FC()
{
  result = qword_27C8F8800;
  if (!qword_27C8F8800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8808, &qword_213F547D8);
    sub_213DE3AE4(&qword_27C8F8810, &qword_27C8F8818, &qword_213F547E0, MEMORY[0x277CE11A8]);
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8800);
  }

  return result;
}

uint64_t sub_213E067D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8838, &qword_213F554F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v108 - v4;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8840, &qword_213F554F8);
  MEMORY[0x28223BE20](v111);
  v114 = &v108 - v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8848, &qword_213F55500);
  MEMORY[0x28223BE20](v112);
  v116 = &v108 - v7;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8850, &qword_213F55508);
  v8 = MEMORY[0x28223BE20](v115);
  v119 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v113 = &v108 - v11;
  MEMORY[0x28223BE20](v10);
  v118 = &v108 - v12;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8858, &qword_213F55510);
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v14 = &v108 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8860, &qword_213F55518);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v117 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v108 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8868, &qword_213F55520);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v108 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8870, &qword_213F55528);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v110 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v108 - v27;
  v29 = a1[22];
  if (*(a1[21] + 16))
  {
    *v23 = sub_213F4D8A0();
    *(v23 + 1) = 0;
    v23[16] = 1;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8898, &qword_213F55550);
    v31 = a1;
    sub_213E070F8(a1, &v23[*(v30 + 44)]);
    v32 = v19;
    v33 = sub_213F4E060();
    sub_213F4CDA0();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88A0, &qword_213F55558) + 36)];
    *v42 = v33;
    *(v42 + 1) = v35;
    *(v42 + 2) = v37;
    *(v42 + 3) = v39;
    *(v42 + 4) = v41;
    v42[40] = 0;
    v43 = sub_213F4E070();
    sub_213F4CDA0();
    v44 = &v23[*(v20 + 36)];
    *v44 = v43;
    v19 = v32;
    *(v44 + 1) = v45;
    *(v44 + 2) = v46;
    *(v44 + 3) = v47;
    *(v44 + 4) = v48;
    v44[40] = 0;
    sub_213DE2B44(v23, v28, &qword_27C8F8868, &qword_213F55520);
    (*(v21 + 56))(v28, 0, 1, v20);
  }

  else
  {
    v31 = a1;
    (*(v21 + 56))(&v108 - v27, 1, 1, v20);
  }

  if (*(v29 + 16))
  {
    *v14 = sub_213F4D8A0();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8888, &qword_213F55540);
    v50 = v31;
    sub_213E07594(v31, &v14[*(v49 + 44)]);
    v51 = sub_213F4E060();
    sub_213F4CDA0();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8890, &qword_213F55548) + 36)];
    *v60 = v51;
    *(v60 + 1) = v53;
    *(v60 + 2) = v55;
    *(v60 + 3) = v57;
    *(v60 + 4) = v59;
    v60[40] = 0;
    v61 = sub_213F4E070();
    sub_213F4CDA0();
    v62 = v109;
    v63 = &v14[*(v109 + 36)];
    *v63 = v61;
    *(v63 + 1) = v64;
    *(v63 + 2) = v65;
    *(v63 + 3) = v66;
    *(v63 + 4) = v67;
    v63[40] = 0;
    sub_213DE2B44(v14, v19, &qword_27C8F8858, &qword_213F55510);
    v68 = 0;
  }

  else
  {
    v68 = 1;
    v50 = v31;
    v62 = v109;
  }

  (*(v108 + 56))(v19, v68, 1, v62);
  *v5 = sub_213F4D8A0();
  *(v5 + 1) = 0x4028000000000000;
  v5[16] = 0;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8878, &qword_213F55530);
  sub_213E0790C(v50, &v5[*(v69 + 44)]);
  sub_213F4EEE0();
  sub_213F4D4E0();
  v70 = v114;
  sub_213DE2B44(v5, v114, &qword_27C8F8838, &qword_213F554F0);
  v71 = (v70 + *(v111 + 36));
  v72 = v126;
  v71[4] = v125;
  v71[5] = v72;
  v71[6] = v127;
  v73 = v122;
  *v71 = v121;
  v71[1] = v73;
  v74 = v124;
  v71[2] = v123;
  v71[3] = v74;
  v75 = sub_213F4E060();
  sub_213F4CDA0();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  v84 = v70;
  v85 = v116;
  sub_213DE2B44(v84, v116, &qword_27C8F8840, &qword_213F554F8);
  v86 = v85 + *(v112 + 36);
  *v86 = v75;
  *(v86 + 8) = v77;
  *(v86 + 16) = v79;
  *(v86 + 24) = v81;
  *(v86 + 32) = v83;
  *(v86 + 40) = 0;
  v87 = sub_213F4E070();
  sub_213F4CDA0();
  v89 = v88;
  v91 = v90;
  v93 = v92;
  v95 = v94;
  v96 = v85;
  v97 = v113;
  sub_213DE2B44(v96, v113, &qword_27C8F8848, &qword_213F55500);
  v98 = v97 + *(v115 + 36);
  *v98 = v87;
  *(v98 + 8) = v89;
  *(v98 + 16) = v91;
  *(v98 + 24) = v93;
  *(v98 + 32) = v95;
  *(v98 + 40) = 0;
  v99 = v19;
  v100 = v118;
  sub_213DE2B44(v97, v118, &qword_27C8F8850, &qword_213F55508);
  v101 = v110;
  sub_213DE3164(v28, v110, &qword_27C8F8870, &qword_213F55528);
  v102 = v28;
  v103 = v117;
  sub_213DE3164(v99, v117, &qword_27C8F8860, &qword_213F55518);
  v104 = v119;
  sub_213DC264C(v100, v119);
  v105 = v120;
  sub_213DE3164(v101, v120, &qword_27C8F8870, &qword_213F55528);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8880, &qword_213F55538);
  sub_213DE3164(v103, v105 + *(v106 + 48), &qword_27C8F8860, &qword_213F55518);
  sub_213DC264C(v104, v105 + *(v106 + 64));
  sub_213DC26BC(v100);
  sub_213DE36FC(v99, &qword_27C8F8860, &qword_213F55518);
  sub_213DE36FC(v102, &qword_27C8F8870, &qword_213F55528);
  sub_213DC26BC(v104);
  sub_213DE36FC(v103, &qword_27C8F8860, &qword_213F55518);
  return sub_213DE36FC(v101, &qword_27C8F8870, &qword_213F55528);
}

uint64_t sub_213E070F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88A8, &qword_213F55560);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  *v9 = sub_213F4D8A0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B0, &qword_213F55568);
  sub_213EA9CC0(a1[21]);
  v20[0] = v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B8, &qword_213F55590);
  type metadata accessor for CardButton(0);
  sub_213DE3AE4(&qword_281182470, &qword_27C8F88B8, &qword_213F55590, MEMORY[0x277D83980]);
  sub_213E081A4(qword_2811886A8, type metadata accessor for CardButton, &unk_213F52AFC);
  sub_213F4ECC0();
  v11 = swift_allocObject();
  v12 = v18;
  memcpy((v11 + 16), v18, 0x110uLL);
  v13 = &v9[*(v4 + 44)];
  *v13 = sub_213E08248;
  v13[1] = 0;
  v13[2] = sub_213E0815C;
  v13[3] = v11;
  sub_213DE3164(v9, v7, &qword_27C8F88A8, &qword_213F55560);
  v14 = v19;
  sub_213DE3164(v7, v19, &qword_27C8F88A8, &qword_213F55560);
  v15 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88C0, &qword_213F55598) + 48);
  *v15 = 0;
  *(v15 + 8) = 1;
  sub_213E08164(v12, v20);
  sub_213DE36FC(v9, &qword_27C8F88A8, &qword_213F55560);
  return sub_213DE36FC(v7, &qword_27C8F88A8, &qword_213F55560);
}

uint64_t sub_213E073BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 152);
  v17[8] = *(a1 + 136);
  v17[9] = v4;
  v17[10] = *(a1 + 168);
  v18 = *(a1 + 184);
  v5 = *(a1 + 88);
  v17[4] = *(a1 + 72);
  v17[5] = v5;
  v6 = *(a1 + 120);
  v17[6] = *(a1 + 104);
  v17[7] = v6;
  v7 = *(a1 + 24);
  v17[0] = *(a1 + 8);
  v17[1] = v7;
  v8 = *(a1 + 56);
  v17[2] = *(a1 + 40);
  v17[3] = v8;
  v9 = *(type metadata accessor for CardButton(0) + 24);
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v10 = *(a1 + 152);
  *(a2 + 128) = *(a1 + 136);
  *(a2 + 144) = v10;
  *(a2 + 160) = *(a1 + 168);
  *(a2 + 176) = *(a1 + 184);
  v11 = *(a1 + 88);
  *(a2 + 64) = *(a1 + 72);
  *(a2 + 80) = v11;
  v12 = *(a1 + 120);
  *(a2 + 96) = *(a1 + 104);
  *(a2 + 112) = v12;
  v13 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v13;
  v14 = *(a1 + 56);
  *(a2 + 32) = *(a1 + 40);
  *(a2 + 48) = v14;
  *(a2 + 177) = 1;
  return sub_213DF73EC(v17, v16);
}

uint64_t sub_213E074E0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAB0();
  sub_213F4EAA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87B0, &qword_213F547C8);
  return sub_213F4EC30();
}

uint64_t sub_213E07594@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v19 = a1;
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88A8, &qword_213F55560);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  *v9 = sub_213F4D8A0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B0, &qword_213F55568);
  sub_213EA9CC0(a1[22]);
  v21[0] = v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B8, &qword_213F55590);
  type metadata accessor for CardButton(0);
  sub_213DE3AE4(&qword_281182470, &qword_27C8F88B8, &qword_213F55590, MEMORY[0x277D83980]);
  sub_213E081A4(qword_2811886A8, type metadata accessor for CardButton, &unk_213F52AFC);
  sub_213F4ECC0();
  v11 = swift_allocObject();
  v12 = v19;
  memcpy((v11 + 16), v19, 0x110uLL);
  v13 = &v9[*(v4 + 44)];
  *v13 = sub_213E08248;
  v13[1] = 0;
  v13[2] = sub_213E0819C;
  v13[3] = v11;
  sub_213DE3164(v9, v7, &qword_27C8F88A8, &qword_213F55560);
  v14 = v20;
  *v20 = 0;
  *(v14 + 8) = 1;
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88C8, &unk_213F555E8);
  sub_213DE3164(v7, v15 + *(v16 + 48), &qword_27C8F88A8, &qword_213F55560);
  sub_213E08164(v12, v21);
  sub_213DE36FC(v9, &qword_27C8F88A8, &qword_213F55560);
  return sub_213DE36FC(v7, &qword_27C8F88A8, &qword_213F55560);
}

uint64_t sub_213E07858(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAB0();
  sub_213F4EAA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87B0, &qword_213F547C8);
  return sub_213F4EC30();
}

uint64_t sub_213E0790C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  MEMORY[0x28223BE20](v53);
  v56 = &v48 - v3;
  v55 = sub_213F4E230();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CardHeaderText(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88D0, &qword_213F555F8);
  v51 = *(v10 - 8);
  v52 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v50 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v48 - v13;
  v58[0] = *(a1 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F76F8, &unk_213F555A0);
  sub_213F4EAA0();
  v14 = *v57;
  v58[0] = *(a1 + 256);
  sub_213F4EAA0();
  v15 = *(a1 + 112);
  v16 = *(a1 + 80);
  v63 = *(a1 + 96);
  v64 = v15;
  v17 = *(a1 + 112);
  v18 = *(a1 + 144);
  v65 = *(a1 + 128);
  v19 = v65;
  v66 = v18;
  v20 = *(a1 + 48);
  v22 = *(a1 + 16);
  v59 = *(a1 + 32);
  v21 = v59;
  v60 = v20;
  v23 = *(a1 + 48);
  v24 = *(a1 + 80);
  v61 = *(a1 + 64);
  v25 = v61;
  v62 = v24;
  v26 = *(a1 + 16);
  v58[0] = *a1;
  v27 = v58[0];
  v58[1] = v26;
  *(v9 + 6) = v63;
  *(v9 + 7) = v17;
  v28 = *(a1 + 144);
  *(v9 + 8) = v19;
  *(v9 + 9) = v28;
  *(v9 + 2) = v21;
  *(v9 + 3) = v23;
  *(v9 + 4) = v25;
  *(v9 + 5) = v16;
  v29 = *v57;
  v30 = *(a1 + 160);
  v31 = *(a1 + 184);
  *v9 = v27;
  *(v9 + 1) = v22;
  v9[160] = v31 & 1;
  *(v9 + 21) = 0;
  v9[176] = 1;
  v9[177] = v30;
  v57[20] = 0x403E000000000000;
  v32 = *MEMORY[0x277CE0A70];
  v33 = *(v4 + 104);
  v34 = v55;
  v33(v6, v32, v55);
  sub_213E05B80(v58, v57);
  sub_213DEC3D4();
  sub_213F4CFE0();
  v57[0] = 0x4034000000000000;
  v33(v6, *MEMORY[0x277CE0A90], v34);
  sub_213F4CFE0();
  v48 = v7;
  v57[0] = 0x403C000000000000;
  v33(v6, v32, v34);
  v35 = v56;
  sub_213F4CFE0();
  v36 = *MEMORY[0x277CDFA00];
  v37 = sub_213F4D390();
  (*(*(v37 - 8) + 104))(v35, v36, v37);
  sub_213E081A4(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_213F4F1F0();
  if (result)
  {
    if (v14 <= v29)
    {
      v14 = v29;
    }

    sub_213E081A4(qword_281187C20, type metadata accessor for CardHeaderText, &protocol conformance descriptor for CardHeaderText);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    v39 = v49;
    sub_213F4E570();
    sub_213DE36FC(v35, &qword_27C8F75C0, &qword_213F54760);
    sub_213E081EC(v9);
    v41 = v50;
    v40 = v51;
    v42 = *(v51 + 16);
    v43 = v52;
    v42(v50, v39, v52);
    v44 = v54;
    *v54 = v14;
    *(v44 + 8) = 0;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88D8, &qword_213F55600);
    v42(v44 + *(v45 + 48), v41, v43);
    v46 = (v44 + *(v45 + 64));
    *v46 = v14;
    *(v46 + 8) = 0;
    v47 = *(v40 + 8);
    v47(v39, v43);
    return (v47)(v41, v43);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E07EE0()
{
  memcpy(__dst, v0, sizeof(__dst));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F87F0, &qword_213F547D0);
  sub_213E06670();
  return sub_213F4DD40();
}

__n128 __swift_memcpy185_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 169) = *(a2 + 169);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_213E07FB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 185))
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

uint64_t sub_213E07FF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 184) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 185) = 1;
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

    *(result + 185) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213E08080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_213E080C8(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_213E081A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_213E081EC(uint64_t a1)
{
  v2 = type metadata accessor for CardHeaderText(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213E08254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 152);
  v17[8] = *(a1 + 136);
  v17[9] = v4;
  v17[10] = *(a1 + 168);
  v18 = *(a1 + 184);
  v5 = *(a1 + 88);
  v17[4] = *(a1 + 72);
  v17[5] = v5;
  v6 = *(a1 + 120);
  v17[6] = *(a1 + 104);
  v17[7] = v6;
  v7 = *(a1 + 24);
  v17[0] = *(a1 + 8);
  v17[1] = v7;
  v8 = *(a1 + 56);
  v17[2] = *(a1 + 40);
  v17[3] = v8;
  v9 = *(type metadata accessor for CardButton(0) + 24);
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v10 = *(a1 + 152);
  *(a2 + 128) = *(a1 + 136);
  *(a2 + 144) = v10;
  *(a2 + 160) = *(a1 + 168);
  *(a2 + 176) = *(a1 + 184);
  v11 = *(a1 + 88);
  *(a2 + 64) = *(a1 + 72);
  *(a2 + 80) = v11;
  v12 = *(a1 + 120);
  *(a2 + 96) = *(a1 + 104);
  *(a2 + 112) = v12;
  v13 = *(a1 + 24);
  *a2 = *(a1 + 8);
  *(a2 + 16) = v13;
  v14 = *(a1 + 56);
  *(a2 + 32) = *(a1 + 40);
  *(a2 + 48) = v14;
  *(a2 + 177) = 1;
  return sub_213DF73EC(v17, v16);
}

__n128 LeadingCardHeaderViewModel.init(title:titleAXID:subtitle:interactiveSubtitle:badgeText:size:leadingImageProvider:leadingImagePlaceholder:trailingButtons:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *(a3 + 16);
  v15 = *a11;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = *a3;
  *(a9 + 32) = v14;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = v15;
  result = *a12;
  v17 = *(a12 + 16);
  v18 = *(a12 + 32);
  *(a9 + 96) = *a12;
  *(a9 + 112) = v17;
  *(a9 + 128) = v18;
  *(a9 + 136) = a13;
  *(a9 + 144) = a14;
  return result;
}

uint64_t Badge.init(text:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_213F4E230();
  MEMORY[0x28223BE20](v6);
  v11[1] = 0x4024000000000000;
  (*(v8 + 104))(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0AA8]);
  sub_213DE15D0();
  sub_213F4CFE0();
  result = type metadata accessor for Badge(0);
  v10 = (a3 + *(result + 20));
  *v10 = a1;
  v10[1] = a2;
  return result;
}

uint64_t Badge.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7668, &qword_213F52190);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v54 - v4;
  v6 = (v1 + *(type metadata accessor for Badge(0) + 20));
  v7 = v6[1];
  v57 = *v6;
  v58 = v7;
  sub_213DBC9EC();

  v8 = sub_213F4E310();
  v10 = v9;
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7638, &qword_213F516E8);
  sub_213F4CFF0();
  sub_213F4E180();
  v13 = *MEMORY[0x277CE09A0];
  v14 = sub_213F4E0F0();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  sub_213F4E190();
  sub_213DE36FC(v5, &qword_27C8F7668, &qword_213F52190);
  v16 = sub_213F4E2E0();
  v18 = v17;
  LOBYTE(v14) = v19;

  sub_213DBCA40(v8, v10, v12 & 1);

  v57 = sub_213F4E8F0();
  v20 = sub_213F4E2B0();
  v55 = v22;
  v56 = v21;
  LOBYTE(v8) = v23;
  sub_213DBCA40(v16, v18, v14 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v7) = sub_213F4E0B0();
  sub_213F4CDA0();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  LOBYTE(v15) = v8 & 1;
  v61 = v8 & 1;
  v60 = 0;
  v59 = 0;
  LOBYTE(v8) = sub_213F4E040();
  sub_213F4CDA0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  LOBYTE(v57) = 0;
  v41 = sub_213F4EEE0();
  v43 = v42;
  v44 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88E0, &qword_213F55660) + 36);
  v45 = *MEMORY[0x277CE0118];
  v46 = sub_213F4D950();
  (*(*(v46 - 8) + 104))(v44, v45, v46);
  v47 = [objc_opt_self() tertiaryLabelColor];
  v48 = sub_213F4E870();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88E8, &qword_213F55668);
  *(v44 + *(v49 + 52)) = v48;
  *(v44 + *(v49 + 56)) = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88F0, &qword_213F55670);
  v51 = (v44 + *(result + 36));
  *v51 = v41;
  v51[1] = v43;
  v52 = v55;
  v53 = v56;
  *a1 = v20;
  *(a1 + 8) = v53;
  *(a1 + 16) = v15;
  *(a1 + 24) = v52;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v7;
  *(a1 + 64) = v26;
  *(a1 + 72) = v28;
  *(a1 + 80) = v30;
  *(a1 + 88) = v32;
  *(a1 + 96) = 0;
  *(a1 + 104) = v8;
  *(a1 + 112) = v34;
  *(a1 + 120) = v36;
  *(a1 + 128) = v38;
  *(a1 + 136) = v40;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_213E088F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_213F4D7F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_213DE3164(v2, &v14 - v9, &qword_27C8F7B68, &qword_213F53770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_213F4D290();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_213F4F520();
    v13 = sub_213F4E000();
    sub_213F4CC10();

    sub_213F4D7E0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

__n128 LeadingCardHeader.init(viewModel:interactiveSubtitleTapHandler:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for LeadingCardHeader(0);
  v9 = a4 + *(v8 + 20);
  v10 = *(a1 + 112);
  *(v9 + 6) = *(a1 + 96);
  *(v9 + 7) = v10;
  *(v9 + 8) = *(a1 + 128);
  *(v9 + 18) = *(a1 + 144);
  v11 = *(a1 + 48);
  *(v9 + 2) = *(a1 + 32);
  *(v9 + 3) = v11;
  v12 = *(a1 + 80);
  *(v9 + 4) = *(a1 + 64);
  *(v9 + 5) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *v9 = *a1;
  *(v9 + 1) = v14;
  v15 = (a4 + *(v8 + 24));
  *v15 = a2;
  v15[1] = a3;
  return result;
}

uint64_t sub_213E08BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a2;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  MEMORY[0x28223BE20](v186);
  v196 = &v173 - v3;
  v4 = sub_213F4E230();
  v193 = *(v4 - 8);
  v194 = v4;
  MEMORY[0x28223BE20](v4);
  v192 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for CardHeaderText(0);
  MEMORY[0x28223BE20](v205);
  v195 = &v173 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88D0, &qword_213F555F8);
  v184 = *(v7 - 8);
  v185 = v7;
  MEMORY[0x28223BE20](v7);
  v183 = &v173 - v8;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A58, &qword_213F55B40);
  v9 = MEMORY[0x28223BE20](v181);
  v188 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v182 = &v173 - v12;
  MEMORY[0x28223BE20](v11);
  v187 = &v173 - v13;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A60, &qword_213F55B48);
  MEMORY[0x28223BE20](v197);
  v176 = (&v173 - v14);
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A68, &qword_213F55B50);
  MEMORY[0x28223BE20](v178);
  v179 = &v173 - v15;
  v200 = sub_213F4D470();
  MEMORY[0x28223BE20](v200);
  v177 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_213F4D290();
  v190 = *(v199 - 8);
  v17 = MEMORY[0x28223BE20](v199);
  v19 = &v173 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v173 - v20;
  v22 = type metadata accessor for LeadingCardHeader(0);
  v175 = *(v22 - 8);
  v23 = *(v175 + 64);
  MEMORY[0x28223BE20](v22);
  v24 = type metadata accessor for MapsDesignImage(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v173 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A70, &qword_213F55B58);
  MEMORY[0x28223BE20](v198);
  v203 = &v173 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A78, &qword_213F55B60);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v180 = &v173 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v32 = &v173 - v31;
  v191 = v22;
  v33 = (a1 + *(v22 + 20));
  sub_213DE3164((v33 + 12), &v206, &qword_27C8F7AB8, &qword_213F522C0);
  v201 = v32;
  v202 = v33;
  if (*(&v207 + 1))
  {
    sub_213DD7500(&v206, &v214);
    sub_213DEBAA8(&v214, &v26[v24[8]]);
    v204 = a1;
    sub_213E0C840(a1, &v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LeadingCardHeader);
    v34 = (*(v175 + 80) + 16) & ~*(v175 + 80);
    v35 = swift_allocObject();
    sub_213E0C8A8(&v173 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for LeadingCardHeader);
    v36 = sub_213F4EEE0();
    v176 = v37;
    *v26 = swift_getKeyPath();
    v26[8] = 0;
    v38 = v24[5];
    *&v26[v38] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7B68, &qword_213F53770);
    swift_storeEnumTagMultiPayload();
    v39 = v24[6];
    *&v26[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    v40 = v24[7];
    *&v26[v40] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7AC0, &qword_213F52760);
    swift_storeEnumTagMultiPayload();
    v41 = &v26[v24[12]];
    v42 = &v26[v24[13]];
    v43 = &v26[v24[14]];
    v223 = 0uLL;
    *(&v224 + 7) = 0;
    *&v224 = 0;
    sub_213F4EA90();
    v44 = v207;
    v45 = BYTE8(v207);
    v46 = BYTE9(v207);
    v47 = BYTE10(v207);
    v48 = v208;
    *v43 = v206;
    *(v43 + 2) = v44;
    v43[24] = v45;
    v43[25] = v46;
    v43[26] = v47;
    *(v43 + 4) = v48;
    v49 = v24[15];
    *&v223 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7C28, &unk_213F522B0);
    sub_213F4EA90();
    *&v26[v49] = v206;
    v26[v24[9]] = 1;
    v50 = &v26[v24[10]];
    v51 = v176;
    *v50 = v36;
    v50[1] = v51;
    v26[v24[11]] = 1;
    *v41 = sub_213E0C910;
    v41[1] = v35;
    *v42 = 0;
    *(v42 + 1) = 0;
    sub_213E088F0(v21);
    sub_213F4D280();
    sub_213F4D270();
    v52 = *(v190 + 8);
    v53 = v199;
    v52(v19, v199);
    v52(v21, v53);
    sub_213E088F0(v21);
    sub_213F4D280();
    sub_213F4D270();
    v52(v19, v53);
    v52(v21, v53);
    sub_213F4EEE0();
    sub_213F4D0C0();
    v54 = v203;
    sub_213E0C840(v26, v203, type metadata accessor for MapsDesignImage);
    v55 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7BE8, &unk_213F52220) + 36));
    v56 = v224;
    *v55 = v223;
    v55[1] = v56;
    v55[2] = v225;
    sub_213E0C980(v26, type metadata accessor for MapsDesignImage);
    sub_213E088F0(v21);
    sub_213F4D280();
    sub_213F4D270();
    v174 = v52;
    v52(v19, v53);
    v52(v21, v53);
    v57 = (v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AB8, &unk_213F55BD0) + 36));
    v58 = *(v200 + 20);
    v59 = *MEMORY[0x277CE0118];
    v60 = sub_213F4D950();
    v61 = *(*(v60 - 8) + 104);
    v62 = v57 + v58;
    v63 = v59;
    v61(v62, v59, v60);
    __asm { FMOV            V0.2D, #10.0 }

    v173 = _Q0;
    *v57 = _Q0;
    *(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)) = 256;
    v190 = sub_213F4EEE0();
    v175 = v203 + *(v198 + 36);
    v176 = v69;
    sub_213E088F0(v21);
    sub_213F4D280();
    sub_213F4D270();
    v70 = v19;
    v71 = v199;
    v72 = v174;
    v174(v70, v199);
    v72(v21, v71);
    v73 = v177;
    v61(&v177[*(v200 + 20)], v63, v60);
    *v73 = v173;
    sub_213F4E8C0();
    v74 = sub_213F4E900();

    sub_213F4CF60();
    v75 = MEMORY[0x277CDFC08];
    v76 = v175;
    sub_213E0C840(v73, v175, MEMORY[0x277CDFC08]);
    v77 = *&v226 * 0.5;
    v78 = v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40) + 68);
    sub_213E0C840(v73, v78, v75);
    *(v78 + *(sub_213F4D460() + 20)) = v77;
    v79 = v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
    v80 = v227;
    *v79 = v226;
    *(v79 + 16) = v80;
    *(v79 + 32) = v228;
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
    *(v78 + *(v81 + 52)) = v74;
    *(v78 + *(v81 + 56)) = 256;
    v82 = sub_213F4EEE0();
    v84 = v83;
    sub_213E0C980(v73, MEMORY[0x277CDFC08]);
    v85 = (v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
    *v85 = v82;
    v85[1] = v84;
    v86 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AA0, &qword_213F5EAF0) + 36));
    v87 = v176;
    *v86 = v190;
    v86[1] = v87;
    v88 = v203;
    sub_213DE3164(v203, v179, &qword_27C8F8A70, &qword_213F55B58);
    swift_storeEnumTagMultiPayload();
    sub_213E0C4A4();
    sub_213E0C614();
    v89 = v201;
    v33 = v202;
    sub_213F4DBA0();
    sub_213DE36FC(v88, &qword_27C8F8A70, &qword_213F55B58);
    __swift_destroy_boxed_opaque_existential_1(&v214);
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A80, &qword_213F55B68);
    (*(*(v90 - 8) + 56))(v89, 0, 1, v90);
    a1 = v204;
  }

  else
  {
    v91 = v176;
    v92 = v190;
    v93 = v199;
    sub_213DE36FC(&v206, &qword_27C8F7AB8, &qword_213F522C0);
    v94 = v33[17];
    if (v94)
    {
      *v91 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
      swift_storeEnumTagMultiPayload();
      *(v91 + *(type metadata accessor for ImageComposerView(0) + 20)) = v94;

      sub_213E088F0(v21);
      sub_213F4D280();
      sub_213F4D270();
      v95 = *(v92 + 8);
      v95(v19, v93);
      v95(v21, v93);
      v204 = a1;
      sub_213E088F0(v21);
      sub_213F4D280();
      sub_213F4D270();
      v95(v19, v93);
      v95(v21, v93);
      sub_213F4EEE0();
      sub_213F4D0C0();
      v96 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A90, &qword_213F55BB0) + 36));
      v97 = v224;
      *v96 = v223;
      v96[1] = v97;
      v96[2] = v225;
      sub_213E088F0(v21);
      sub_213F4D280();
      sub_213F4D270();
      v174 = v95;
      v95(v19, v93);
      v95(v21, v93);
      v98 = (v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A98, &qword_213F55BB8) + 36));
      v99 = *(v200 + 20);
      v100 = *MEMORY[0x277CE0118];
      v101 = sub_213F4D950();
      v102 = *(*(v101 - 8) + 104);
      v103 = v98 + v99;
      v104 = v101;
      v102(v103, v100);
      __asm { FMOV            V0.2D, #10.0 }

      v173 = _Q0;
      *v98 = _Q0;
      *(v98 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8368, &unk_213F55BC0) + 36)) = 256;
      v203 = sub_213F4EEE0();
      v190 = v106;
      v175 = v176 + *(v197 + 36);
      v107 = v204;
      sub_213E088F0(v21);
      sub_213F4D280();
      sub_213F4D270();
      v108 = v19;
      v109 = v174;
      v174(v108, v93);
      v109(v21, v93);
      v110 = v177;
      v111 = v100;
      a1 = v107;
      (v102)(&v177[*(v200 + 20)], v111, v104);
      *v110 = v173;
      sub_213F4E8C0();
      v112 = sub_213F4E900();

      sub_213F4CF60();
      v113 = MEMORY[0x277CDFC08];
      v114 = v175;
      sub_213E0C840(v110, v175, MEMORY[0x277CDFC08]);
      v115 = *&v226 * 0.5;
      v116 = v114 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8438, &unk_213F53C40) + 68);
      sub_213E0C840(v110, v116, v113);
      *(v116 + *(sub_213F4D460() + 20)) = v115;
      v117 = v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8448, &unk_213F53C50) + 36);
      v118 = v227;
      *v117 = v226;
      *(v117 + 16) = v118;
      *(v117 + 32) = v228;
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8450, &unk_213F5EB70);
      *(v116 + *(v119 + 52)) = v112;
      *(v116 + *(v119 + 56)) = 256;
      v120 = sub_213F4EEE0();
      v122 = v121;
      sub_213E0C980(v110, MEMORY[0x277CDFC08]);
      v123 = (v116 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8458, &qword_213F53C60) + 36));
      *v123 = v120;
      v123[1] = v122;
      v124 = (v114 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AA0, &qword_213F5EAF0) + 36));
      v125 = v190;
      *v124 = v203;
      v124[1] = v125;
      v126 = v176;
      sub_213DE3164(v176, v179, &qword_27C8F8A60, &qword_213F55B48);
      swift_storeEnumTagMultiPayload();
      sub_213E0C4A4();
      sub_213E0C614();
      v127 = v201;
      v33 = v202;
      sub_213F4DBA0();
      sub_213DE36FC(v126, &qword_27C8F8A60, &qword_213F55B48);
      v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A80, &qword_213F55B68);
      (*(*(v128 - 8) + 56))(v127, 0, 1, v128);
    }

    else
    {
      v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A80, &qword_213F55B68);
      (*(*(v129 - 8) + 56))(v32, 1, 1, v129);
    }
  }

  v203 = *v33;
  v130 = v33;
  v131 = v33[1];
  v132 = v130[2];
  v133 = v130[3];
  v134 = *(v130 + 32);
  v135 = v130[6];
  v136 = v130[7];
  v137 = v130[8];
  v199 = v130[5];
  v200 = v136;

  sub_213E0C42C(v132, v133, v134);

  v198 = sub_213F4DA50();
  v138 = (a1 + *(v191 + 24));
  v140 = *v138;
  v139 = v138[1];
  v204 = v139;
  if (v140)
  {
    v141 = v139;
    v142 = swift_allocObject();
    *(v142 + 16) = v140;
    *(v142 + 24) = v141;
    v143 = sub_213E0C49C;
  }

  else
  {
    v143 = nullsub_1;
    v142 = 0;
  }

  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v142;
  *&v214 = v203;
  *(&v214 + 1) = v131;
  *&v215 = v132;
  *(&v215 + 1) = v133;
  LOBYTE(v216) = v134;
  *(&v216 + 1) = v199;
  *&v217[0] = v135;
  *(v217 + 8) = xmmword_213F55610;
  BYTE8(v217[1]) = 17;
  *&v218 = v200;
  *(&v218 + 1) = v137;
  v219 = xmmword_213F55620;
  LOBYTE(v220) = 17;
  *(&v220 + 1) = v198;
  *&v221 = sub_213E0C440;
  *(&v221 + 1) = v144;
  v222 = 0uLL;
  v145 = *(v202 + 88);
  v146 = v220;
  v147 = v195;
  *(v195 + 6) = xmmword_213F55620;
  *(v147 + 112) = v146;
  v148 = v215;
  *v147 = v214;
  *(v147 + 16) = v148;
  v149 = v216;
  v150 = v217[0];
  v151 = v218;
  *(v147 + 64) = v217[1];
  *(v147 + 80) = v151;
  *(v147 + 32) = v149;
  *(v147 + 48) = v150;
  v152 = v222;
  *(v147 + 128) = v221;
  *(v147 + 144) = v152;
  *(v147 + 160) = v145;
  *(v147 + 168) = 0;
  *(v147 + 176) = 257;
  v213 = 0x403E000000000000;
  v153 = *MEMORY[0x277CE0A70];
  v154 = v192;
  v155 = *(v193 + 104);
  v156 = v194;
  v155(v192, v153, v194);
  sub_213DD74C4(v140, v204);
  sub_213E05B80(&v214, &v206);
  sub_213DEC3D4();
  sub_213F4CFE0();
  *&v206 = 0x4034000000000000;
  v155(v154, *MEMORY[0x277CE0A90], v156);
  sub_213F4CFE0();
  *&v206 = 0x403C000000000000;
  v155(v154, v153, v156);
  sub_213F4CFE0();
  v157 = *MEMORY[0x277CDFA00];
  v158 = sub_213F4D390();
  v159 = v196;
  (*(*(v158 - 8) + 104))(v196, v157, v158);
  sub_213E0C328(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_213F4F1F0();
  if (result)
  {
    sub_213E0C328(qword_281187C20, type metadata accessor for CardHeaderText, &protocol conformance descriptor for CardHeaderText);
    sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
    v161 = v183;
    sub_213F4E570();
    sub_213DE36FC(v159, &qword_27C8F75C0, &qword_213F54760);
    sub_213E0C980(v147, type metadata accessor for CardHeaderText);
    sub_213F4EEE0();
    sub_213F4D4E0();
    v162 = v182;
    (*(v184 + 32))(v182, v161, v185);
    v163 = (v162 + *(v181 + 36));
    v164 = v211;
    v163[4] = v210;
    v163[5] = v164;
    v163[6] = v212;
    v165 = v207;
    *v163 = v206;
    v163[1] = v165;
    v166 = v209;
    v163[2] = v208;
    v163[3] = v166;
    v167 = v187;
    sub_213DE2B44(v162, v187, &qword_27C8F8A58, &qword_213F55B40);
    v168 = v201;
    v169 = v180;
    sub_213DE3164(v201, v180, &qword_27C8F8A78, &qword_213F55B60);
    v170 = v188;
    sub_213DE3164(v167, v188, &qword_27C8F8A58, &qword_213F55B40);
    v171 = v189;
    sub_213DE3164(v169, v189, &qword_27C8F8A78, &qword_213F55B60);
    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A88, &qword_213F55B70);
    sub_213DE3164(v170, v171 + *(v172 + 48), &qword_27C8F8A58, &qword_213F55B40);
    sub_213E0C448(&v214);
    sub_213DE36FC(v167, &qword_27C8F8A58, &qword_213F55B40);
    sub_213DE36FC(v168, &qword_27C8F8A78, &qword_213F55B60);
    sub_213DE36FC(v170, &qword_27C8F8A58, &qword_213F55B40);
    return sub_213DE36FC(v169, &qword_27C8F8A78, &qword_213F55B60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_213E0A3AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for LeadingCardHeader(0) + 20) + 136);
  if (v3)
  {
    v4 = type metadata accessor for ImageComposerView(0);
    v10 = v4;
    v11 = sub_213E0C328(&qword_27C8F8AE0, type metadata accessor for ImageComposerView, &unk_213F64D74);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
    *boxed_opaque_existential_1 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F7A20, &qword_213F526E0);
    swift_storeEnumTagMultiPayload();
    *(boxed_opaque_existential_1 + *(v4 + 20)) = v3;
  }

  else
  {
    v6 = [objc_opt_self() tertiarySystemFillColor];
    v7 = sub_213F4E870();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8AE8, &unk_213F55C40);
    v11 = sub_213E0C9E0();
    *&v9 = v7;
  }

  sub_213DD7500(&v9, a2);
}

uint64_t sub_213E0A4EC@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v55 = a1;
  v58 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F75C0, &qword_213F54760);
  MEMORY[0x28223BE20](v54);
  v57 = &v51 - v3;
  v4 = sub_213F4E230();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Badge(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A28, &qword_213F55B20);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A30, &qword_213F55B28);
  MEMORY[0x28223BE20](v56);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A38, &unk_213F55B30);
  v59 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v53 = &v51 - v17;
  v18 = v2 + *(type metadata accessor for LeadingCardHeader(0) + 20);
  v19 = *(v18 + 80);
  if (v19)
  {
    v52 = v16;
    v20 = *(v18 + 72);
    v60 = 0x4024000000000000;
    (*(v5 + 104))(v7, *MEMORY[0x277CE0AA8], v4);
    sub_213DE15D0();

    sub_213F4CFE0();
    v21 = &v10[*(v8 + 20)];
    *v21 = v20;
    *(v21 + 1) = v19;
    v22 = sub_213F4E060();
    sub_213F4CDA0();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    sub_213E0C8A8(v10, v13, type metadata accessor for Badge);
    v31 = &v13[*(v11 + 36)];
    *v31 = v22;
    *(v31 + 1) = v24;
    *(v31 + 2) = v26;
    *(v31 + 3) = v28;
    *(v31 + 4) = v30;
    v31[40] = 0;
    v32 = sub_213F4E080();
    sub_213F4CDA0();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_213DE2B44(v13, v15, &qword_27C8F8A28, &qword_213F55B20);
    v41 = &v15[*(v56 + 36)];
    *v41 = v32;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    v42 = *MEMORY[0x277CDFA00];
    v43 = sub_213F4D390();
    v44 = v57;
    (*(*(v43 - 8) + 104))(v57, v42, v43);
    sub_213E0C328(&qword_281183488, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    result = sub_213F4F1F0();
    if (result)
    {
      sub_213E0BB90(&qword_27C8F8A40, &qword_27C8F8A30, &qword_213F55B28, sub_213E0C370);
      sub_213DE3AE4(&unk_2811822E8, &qword_27C8F75C0, &qword_213F54760, MEMORY[0x277D84470]);
      v46 = v53;
      sub_213F4E570();
      sub_213DE36FC(v44, &qword_27C8F75C0, &qword_213F54760);
      sub_213DE36FC(v15, &qword_27C8F8A30, &qword_213F55B28);
      v47 = v58;
      v48 = v52;
      (*(v59 + 32))(v58, v46, v52);
      return (*(v59 + 56))(v47, 0, 1, v48);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v49 = v58;
    v50 = *(v59 + 56);

    return v50(v49, 1, 1, v16);
  }

  return result;
}

uint64_t LeadingCardHeader.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88F8, &qword_213F556B0);
  sub_213E0BAA8();
  return sub_213F4DD40();
}

double sub_213E0AB50@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8950, &qword_213F556D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v56 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8940, &qword_213F556D0);
  MEMORY[0x28223BE20](v56);
  v7 = &v56 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8930, &qword_213F556C8);
  MEMORY[0x28223BE20](v57);
  v9 = &v56 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8920, &qword_213F556C0);
  MEMORY[0x28223BE20](v58);
  v11 = &v56 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8910, &qword_213F556B8);
  MEMORY[0x28223BE20](v59);
  v13 = &v56 - v12;
  *v5 = sub_213F4D890();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89A0, &unk_213F55A58);
  sub_213E0AF84(a1, &v5[*(v14 + 44)]);
  v15 = sub_213F4E080();
  v16 = type metadata accessor for LeadingCardHeader(0);
  sub_213DE3164(a1 + *(v16 + 20) + 96, v61, &qword_27C8F7AB8, &qword_213F522C0);
  sub_213DE36FC(v61, &qword_27C8F7AB8, &qword_213F522C0);
  sub_213F4CDA0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_213DE2B44(v5, v7, &qword_27C8F8950, &qword_213F556D8);
  v25 = &v7[*(v56 + 36)];
  *v25 = v15;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  LOBYTE(a1) = sub_213F4E0A0();
  sub_213F4CDA0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_213DE2B44(v7, v9, &qword_27C8F8940, &qword_213F556D0);
  v34 = &v9[*(v57 + 36)];
  *v34 = a1;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  LOBYTE(a1) = sub_213F4E060();
  sub_213F4CDA0();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_213DE2B44(v9, v11, &qword_27C8F8930, &qword_213F556C8);
  v43 = &v11[*(v58 + 36)];
  *v43 = a1;
  *(v43 + 1) = v36;
  *(v43 + 2) = v38;
  *(v43 + 3) = v40;
  *(v43 + 4) = v42;
  v43[40] = 0;
  LOBYTE(a1) = sub_213F4E070();
  sub_213F4CDA0();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  sub_213DE2B44(v11, v13, &qword_27C8F8920, &qword_213F556C0);
  v52 = &v13[*(v59 + 36)];
  *v52 = a1;
  *(v52 + 1) = v45;
  *(v52 + 2) = v47;
  *(v52 + 3) = v49;
  *(v52 + 4) = v51;
  v52[40] = 0;
  v53 = v60;
  sub_213DE2B44(v13, v60, &qword_27C8F8910, &qword_213F556B8);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88F8, &qword_213F556B0) + 36);
  *&result = 1685217603;
  *v54 = xmmword_213F53CB0;
  *(v54 + 16) = 15;
  return result;
}

uint64_t sub_213E0AF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89A8, &qword_213F55A68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v38 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89B0, &qword_213F55A70) - 8;
  MEMORY[0x28223BE20](v43);
  v41 = &v38 - v6;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89B8, &qword_213F55A78) - 8;
  MEMORY[0x28223BE20](v45);
  v42 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89C0, &qword_213F55A80);
  v9 = v8 - 8;
  v10 = MEMORY[0x28223BE20](v8);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v40 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89C8, &qword_213F55A88);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v39 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - v19;
  *v20 = sub_213F4E010();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89D0, &unk_213F55A90);
  sub_213E0B530(a1, &v20[*(v21 + 44)]);
  *v5 = sub_213F4D890();
  *(v5 + 1) = 0x4024000000000000;
  v5[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B0, &qword_213F55568);
  v22 = type metadata accessor for LeadingCardHeader(0);
  sub_213EA9CC0(*(a1 + *(v22 + 20) + 144));
  *&v47 = v23;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88B8, &qword_213F55590);
  type metadata accessor for CardButton(0);
  sub_213DE3AE4(&qword_281182470, &qword_27C8F88B8, &qword_213F55590, MEMORY[0x277D83980]);
  sub_213E0C328(qword_2811886A8, type metadata accessor for CardButton, &unk_213F52AFC);
  sub_213F4ECC0();
  sub_213F4EEE0();
  sub_213F4D4E0();
  v24 = v41;
  sub_213DE2B44(v5, v41, &qword_27C8F89A8, &qword_213F55A68);
  v25 = (v24 + *(v43 + 44));
  v26 = v52;
  v25[4] = v51;
  v25[5] = v26;
  v25[6] = v53;
  v27 = v48;
  *v25 = v47;
  v25[1] = v27;
  v28 = v50;
  v25[2] = v49;
  v25[3] = v28;
  v29 = v24;
  v30 = v42;
  sub_213DE2B44(v29, v42, &qword_27C8F89B0, &qword_213F55A70);
  *(v30 + *(v45 + 44)) = 256;
  sub_213DE2B44(v30, v14, &qword_27C8F89B8, &qword_213F55A78);
  *&v14[*(v9 + 44)] = 0x3FF0000000000000;
  v31 = v40;
  sub_213DE2B44(v14, v40, &qword_27C8F89C0, &qword_213F55A80);
  v32 = v39;
  sub_213DE3164(v20, v39, &qword_27C8F89C8, &qword_213F55A88);
  v33 = v44;
  sub_213DE3164(v31, v44, &qword_27C8F89C0, &qword_213F55A80);
  v34 = v46;
  sub_213DE3164(v32, v46, &qword_27C8F89C8, &qword_213F55A88);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89D8, &qword_213F55AC8);
  v36 = v34 + *(v35 + 48);
  *v36 = 0;
  *(v36 + 8) = 1;
  sub_213DE3164(v33, v34 + *(v35 + 64), &qword_27C8F89C0, &qword_213F55A80);
  sub_213DE36FC(v31, &qword_27C8F89C0, &qword_213F55A80);
  sub_213DE36FC(v20, &qword_27C8F89C8, &qword_213F55A88);
  sub_213DE36FC(v33, &qword_27C8F89C0, &qword_213F55A80);
  return sub_213DE36FC(v32, &qword_27C8F89C8, &qword_213F55A88);
}

uint64_t sub_213E0B530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89E0, &qword_213F55AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89E8, &qword_213F55AD8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  *v15 = sub_213F4D8A0();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89F0, &qword_213F55AE0);
  sub_213E0B77C(a1, 1, &v15[*(v16 + 44)]);
  *v9 = sub_213F4DA50();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F89F8, &qword_213F55AE8);
  sub_213E0B77C(a1, 0, &v9[*(v17 + 44)]);
  sub_213DE3164(v15, v13, &qword_27C8F89E8, &qword_213F55AD8);
  sub_213DE3164(v9, v7, &qword_27C8F89E0, &qword_213F55AD0);
  sub_213DE3164(v13, a2, &qword_27C8F89E8, &qword_213F55AD8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A00, &qword_213F55AF0);
  sub_213DE3164(v7, a2 + *(v18 + 48), &qword_27C8F89E0, &qword_213F55AD0);
  sub_213DE36FC(v9, &qword_27C8F89E0, &qword_213F55AD0);
  sub_213DE36FC(v15, &qword_27C8F89E8, &qword_213F55AD8);
  sub_213DE36FC(v7, &qword_27C8F89E0, &qword_213F55AD0);
  return sub_213DE36FC(v13, &qword_27C8F89E8, &qword_213F55AD8);
}

uint64_t sub_213E0B77C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A08, &qword_213F55AF8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A10, &qword_213F55B00);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v20[-v15];
  *v16 = sub_213F4D8A0();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A18, &qword_213F55B08);
  sub_213E08BA8(a1, &v16[*(v17 + 44)]);
  sub_213E0A4EC(v21, v10);
  sub_213DE3164(v16, v14, &qword_27C8F8A10, &qword_213F55B00);
  sub_213DE3164(v10, v8, &qword_27C8F8A08, &qword_213F55AF8);
  sub_213DE3164(v14, a3, &qword_27C8F8A10, &qword_213F55B00);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8A20, &unk_213F55B10);
  sub_213DE3164(v8, a3 + *(v18 + 48), &qword_27C8F8A08, &qword_213F55AF8);
  sub_213DE36FC(v10, &qword_27C8F8A08, &qword_213F55AF8);
  sub_213DE36FC(v16, &qword_27C8F8A10, &qword_213F55B00);
  sub_213DE36FC(v8, &qword_27C8F8A08, &qword_213F55AF8);
  return sub_213DE36FC(v14, &qword_27C8F8A10, &qword_213F55B00);
}

uint64_t sub_213E0B9A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F88F8, &qword_213F556B0);
  sub_213E0BAA8();
  return sub_213F4DD40();
}

uint64_t sub_213E0BA1C@<X0>(uint64_t a1@<X8>)
{
  result = sub_213F4D7B0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_213E0BAA8()
{
  result = qword_27C8F8900;
  if (!qword_27C8F8900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F88F8, &qword_213F556B0);
    sub_213E0BB90(&qword_27C8F8908, &qword_27C8F8910, &qword_213F556B8, sub_213E0BB60);
    sub_213DD9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8900);
  }

  return result;
}

uint64_t sub_213E0BB90(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_213E0BC44()
{
  result = qword_27C8F8938;
  if (!qword_27C8F8938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8940, &qword_213F556D0);
    sub_213DE3AE4(&qword_27C8F8948, &qword_27C8F8950, &qword_213F556D8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8938);
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_213E0BD68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_213E0BDB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_213E0BE4C(uint64_t a1)
{
  sub_213DE2338(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    v10 = *(v9 + 48);

    return v10(a1, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 20) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    v12 = *(v11 + 56);

    return v12(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_213E0C06C(uint64_t a1)
{
  sub_213DF29DC(319);
  if (v1 <= 0x3F)
  {
    sub_213E0C0F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_213E0C0F8(uint64_t a1)
{
  if (!qword_2811822D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8958, &qword_213F58650);
    v1 = sub_213F4F6B0();
    if (!v2)
    {
      atomic_store(v1, &qword_2811822D8);
    }
  }
}

unint64_t sub_213E0C15C()
{
  result = qword_27C8F8960;
  if (!qword_27C8F8960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F88E0, &qword_213F55660);
    sub_213E0BB90(&qword_27C8F8968, &qword_27C8F8970, &unk_213F55A30, sub_213E0C240);
    sub_213DE3AE4(&qword_27C8F8988, &qword_27C8F88F0, &qword_213F55670, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8960);
  }

  return result;
}

unint64_t sub_213E0C270()
{
  result = qword_281183310;
  if (!qword_281183310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8980, &unk_213F55A40);
    sub_213DE3AE4(&qword_281182840, &qword_27C8F81E8, &unk_213F53670, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183310);
  }

  return result;
}

uint64_t sub_213E0C328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_213E0C370()
{
  result = qword_27C8F8A48;
  if (!qword_27C8F8A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8A28, &qword_213F55B20);
    sub_213E0C328(&qword_27C8F8A50, type metadata accessor for Badge, &protocol conformance descriptor for Badge);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8A48);
  }

  return result;
}

uint64_t sub_213E0C42C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_213DD8630(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_213E0C4A4()
{
  result = qword_27C8F8AA8;
  if (!qword_27C8F8AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8A70, &qword_213F55B58);
    sub_213E0C55C();
    sub_213DE3AE4(&qword_27C8F8AC0, &qword_27C8F8AA0, &qword_213F5EAF0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8AA8);
  }

  return result;
}

unint64_t sub_213E0C55C()
{
  result = qword_27C8F8AB0;
  if (!qword_27C8F8AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8AB8, &unk_213F55BD0);
    sub_213DEB968();
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8AB0);
  }

  return result;
}

unint64_t sub_213E0C614()
{
  result = qword_27C8F8AC8;
  if (!qword_27C8F8AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8A60, &qword_213F55B48);
    sub_213E0C6CC();
    sub_213DE3AE4(&qword_27C8F8AC0, &qword_27C8F8AA0, &qword_213F5EAF0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8AC8);
  }

  return result;
}

unint64_t sub_213E0C6CC()
{
  result = qword_27C8F8AD0;
  if (!qword_27C8F8AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8A98, &qword_213F55BB8);
    sub_213E0C784();
    sub_213DE3AE4(&qword_2811834E0, &qword_27C8F8368, &unk_213F55BC0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8AD0);
  }

  return result;
}

unint64_t sub_213E0C784()
{
  result = qword_27C8F8AD8;
  if (!qword_27C8F8AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8A90, &qword_213F55BB0);
    sub_213E0C328(&qword_27C8F8AE0, type metadata accessor for ImageComposerView, &unk_213F64D74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8F8AD8);
  }

  return result;
}

uint64_t sub_213E0C840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E0C8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213E0C910@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LeadingCardHeader(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_213E0A3AC(v4, a1);
}

uint64_t sub_213E0C980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_213E0C9E0()
{
  result = qword_281183130;
  if (!qword_281183130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8F8AE8, &unk_213F55C40);
    sub_213E0CA98();
    sub_213DE3AE4(&qword_2811828F0, &qword_27C8F7820, &unk_213F519E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281183130);
  }

  return result;
}

unint64_t sub_213E0CA98()
{
  result = qword_2811825B0;
  if (!qword_2811825B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811825B0);
  }

  return result;
}

uint64_t ActionBarButtonViewModel.ActionBarToastType.hashValue.getter()
{
  v1 = *v0;
  sub_213F4F880();
  MEMORY[0x216052C90](v1);
  return sub_213F4F8C0();
}

void ActionBarButtonViewModel.ActionBarButtonType.id.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  sub_213E0CBA0(v2, v3, v4, v5, v6, v7, v8);
}

void sub_213E0CBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 3 && a7 != 5)
  {
    if (a7 != 4)
    {
      return;
    }
  }
}

uint64_t ActionBarButtonViewModel.ActionBarButtonType.axID.getter()
{
  v1 = *(v0 + 48);
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0x6F69746365726944;
    }

    else if (v1 == 4)
    {
      v4 = *(v0 + 32);

      return v4;
    }

    else if (*v0)
    {
      return 0x657469726F766146;
    }

    else
    {
      return 0x547972617262694CLL;
    }
  }

  else
  {
    v2 = 0x657469726F766146;
    if (v1 != 1)
    {
      v2 = 1702125906;
    }

    if (*(v0 + 48))
    {
      return v2;
    }

    else
    {
      return 6579265;
    }
  }
}

uint64_t ActionBarButtonViewModel.ActionBarButtonType.accessibilityLabel.getter()
{
  v1 = sub_213F4CB60();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_213F4F210();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v25[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v25[-v14];
  MEMORY[0x28223BE20](v13);
  v17 = &v25[-v16];
  v18 = *(v0 + 48);
  if (v18 > 2)
  {
    if (v18 == 4)
    {
      v20 = *(v0 + 32);
    }

    else
    {
      sub_213F4F200();
      (*(v3 + 16))(v6, v15, v2);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v23 = qword_281182518;
      sub_213F4CB50();
      v20 = sub_213F4F260();
      (*(v3 + 8))(v15, v2);
    }
  }

  else if (*(v0 + 48))
  {
    if (v18 == 1)
    {
      sub_213F4F200();
      (*(v3 + 16))(v15, v12, v2);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v19 = qword_281182518;
      sub_213F4CB50();
      v20 = sub_213F4F260();
      (*(v3 + 8))(v12, v2);
    }

    else
    {
      sub_213F4F200();
      (*(v3 + 16))(v15, v9, v2);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v22 = qword_281182518;
      sub_213F4CB50();
      v20 = sub_213F4F260();
      (*(v3 + 8))(v9, v2);
    }
  }

  else
  {
    sub_213F4F200();
    (*(v3 + 16))(v15, v17, v2);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v21 = qword_281182518;
    sub_213F4CB50();
    v20 = sub_213F4F260();
    (*(v3 + 8))(v17, v2);
  }

  return v20;
}

uint64_t ActionBarButtonViewModel.ActionBarButtonType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 48);
  if (v3 <= 2)
  {
    if (*(v1 + 48))
    {
      if (v3 == 1)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x216052C90](v4);
    return sub_213F4F8A0();
  }

  v5 = v1[3];
  if (v3 == 3)
  {
    MEMORY[0x216052C90](3);
    sub_213F4F2C0();
    if (!v5)
    {
      return sub_213F4F8A0();
    }

    sub_213F4F8A0();
  }

  else if (v3 == 4)
  {
    MEMORY[0x216052C90](4);
    sub_213F4F2C0();
    sub_213F4F8A0();
    if (v5)
    {
      sub_213F4F2C0();
    }
  }

  else
  {
    MEMORY[0x216052C90](5);
    MEMORY[0x216052C90](v2 & 1);
    sub_213F4F2C0();
  }

  return sub_213F4F2C0();
}

uint64_t ActionBarButtonViewModel.ActionBarButtonType.hashValue.getter()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_213F4F880();
  ActionBarButtonViewModel.ActionBarButtonType.hash(into:)(v4);
  return sub_213F4F8C0();
}

uint64_t sub_213E0D470()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_213F4F880();
  ActionBarButtonViewModel.ActionBarButtonType.hash(into:)(v4);
  return sub_213F4F8C0();
}

uint64_t sub_213E0D4D0(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v1[2];
  v9 = v2;
  sub_213F4F880();
  ActionBarButtonViewModel.ActionBarButtonType.hash(into:)(v5);
  return sub_213F4F8C0();
}

void _s10MapsDesign24ActionBarButtonViewModelV2idAC0cdE4TypeOvg_0(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 48);
  *(a1 + 48) = v8;
  sub_213E0CBA0(v2, v3, v4, v5, v6, v7, v8);
}

__n128 ActionBarButtonViewModel.type.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_213E14680(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 48) = v5;
  return result;
}

uint64_t ActionBarButtonViewModel.accessibilityLabel.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t ActionBarButtonViewModel.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

__n128 ActionBarButtonViewModel.init(type:accessibilityLabel:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *(a1 + 32);
  *(a4 + 32) = result;
  *(a4 + 48) = v4;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return result;
}

uint64_t UIActionBarViewModel.leadingActions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t UIActionBarViewModel.trailingActions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t UIActionBarViewModel.leadingEditActions.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t UIActionBarViewModel.trailingEditActions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void *UIActionBarViewModel.menu.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_213E0D83C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_213E15018;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_213DD74C4(v3, v4);
}

uint64_t sub_213E0D8BC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_213E14FD8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  sub_213DD74C4(v3, v4);
  result = sub_213DD7558(v7, v8);
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  return result;
}

uint64_t UIActionBarViewModel.menuProvider.getter()
{
  v1 = *(v0 + 40);
  sub_213DD74C4(v1, *(v0 + 48));
  return v1;
}

uint64_t UIActionBarViewModel.menuProvider.setter(uint64_t a1, uint64_t a2)
{
  result = sub_213DD7558(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t UIActionBarViewModel.init(leadingActions:trailingActions:leadingEditActions:trailingEditActions:menu:menuProvider:hidden:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  return result;
}

__n128 UIActionBarViewModel.init(model:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  *(a2 + 32) = *(a1 + 32);
  result = *(a1 + 41);
  *(a2 + 41) = result;
  return result;
}

uint64_t ActionBarSelection.viewModel.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_213E14704(v8, v7);
}

void sub_213E0DB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_213F4F220();
  [v6 setAccessibilityIdentifier_];

  v63 = objc_opt_self();
  v8 = [v63 systemFontOfSize:22.0 weight:*MEMORY[0x277D74418]];
  v65 = [objc_opt_self() configurationWithFont_];

  v9 = *&v6[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolView];
  v10 = sub_213F4F220();
  v11 = [objc_opt_self() systemImageNamed_];

  [v9 setImage_];
  [v9 setPreferredSymbolConfiguration_];
  v62 = objc_opt_self();
  v12 = [v62 labelColor];
  [v9 setTintColor_];

  [v9 setContentMode_];
  LODWORD(v13) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v9 setContentHuggingPriority:0 forAxis:v14];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = sub_213F4F220();
  [v9 asc_2781746F8];

  v16 = *&v6[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolContainerView];
  [v16 addSubview_];
  v64 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_213F55C50;
  v18 = [v9 centerXAnchor];
  v19 = [v16 centerXAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v20;
  v21 = [v9 centerYAnchor];
  v22 = [v16 centerYAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v17 + 40) = v23;
  v24 = [v16 widthAnchor];
  v25 = [v24 constraintEqualToConstant_];

  *(v17 + 48) = v25;
  v26 = [v16 heightAnchor];
  v27 = [v26 constraintEqualToConstant_];

  *(v17 + 56) = v27;
  sub_213E15130(0, &qword_2811823D8, 0x277CCAAD0);
  v28 = sub_213F4F3E0();

  [v64 activateConstraints_];

  v29 = *&v6[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_titleView];
  v30 = sub_213F4F220();
  [v29 setText_];

  [v29 setNumberOfLines_];
  v31 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v32 = [v63 systemFontOfSize:11.0 weight:*MEMORY[0x277D74420]];
  v33 = [v31 scaledFontForFont_];

  [v29 setFont_];
  [v29 setAdjustsFontForContentSizeCategory_];
  LODWORD(v34) = 1144750080;
  [v29 setContentCompressionResistancePriority:0 forAxis:v34];
  LODWORD(v35) = 1148846080;
  [v29 setContentHuggingPriority:0 forAxis:v35];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  v36 = [v62 secondaryLabelColor];
  [v29 setTextColor_];

  v37 = sub_213F4F220();
  [v29 setAccessibilityIdentifier_];

  v38 = *&v6[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_subtitleView];
  v39 = sub_213F4F220();
  [v38 setText_];

  [v38 setNumberOfLines_];
  v40 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v41 = [v63 systemFontOfSize:14.0 weight:*MEMORY[0x277D74410]];
  v42 = [v40 scaledFontForFont_];

  [v38 setFont_];
  [v38 setAdjustsFontForContentSizeCategory_];
  LODWORD(v43) = 1144750080;
  [v38 setContentCompressionResistancePriority:0 forAxis:v43];
  LODWORD(v44) = 1148846080;
  [v38 setContentHuggingPriority:0 forAxis:v44];
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  v45 = [v62 labelColor];
  [v38 setTextColor_];

  v46 = sub_213F4F220();
  [v38 setAccessibilityIdentifier_];

  v47 = sub_213E0E644(&OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___mainStack, sub_213E0E6A8);
  [v6 addSubview_];

  v48 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___mainStack;
  [*&v6[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___mainStack] setTranslatesAutoresizingMaskIntoConstraints_];
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_213F55C50;
  v50 = [*&v6[v48] topAnchor];
  v51 = [v6 topAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  *(v49 + 32) = v52;
  v53 = [*&v6[v48] bottomAnchor];
  v54 = [v6 bottomAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  *(v49 + 40) = v55;
  v56 = [*&v6[v48] leadingAnchor];
  v57 = [v6 leadingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v49 + 48) = v58;
  v59 = [*&v6[v48] trailingAnchor];
  v60 = [v6 trailingAnchor];
  v61 = [v59 constraintEqualToAnchor:v60 constant:-12.0];

  *(v49 + 56) = v61;
  v66 = sub_213F4F3E0();

  [v64 activateConstraints_];
}

id sub_213E0E50C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_213F55C60;
  v3 = *(a1 + OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_titleView);
  v4 = *(a1 + OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_subtitleView);
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_213E15130(0, &qword_281182328, 0x277D75D18);
  v6 = v3;
  v7 = v4;
  v8 = sub_213F4F3E0();

  v9 = [v5 initWithArrangedSubviews_];

  [v9 setAxis_];
  [v9 setSpacing_];
  [v9 setAlignment_];
  [v9 setUserInteractionEnabled_];
  return v9;
}

id sub_213E0E644(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

id sub_213E0E6A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_213F55C60;
  v3 = *(a1 + OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolContainerView);
  *(v2 + 32) = v3;
  v4 = v3;
  *(v2 + 40) = sub_213E0E644(&OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___textsStack, sub_213E0E50C);
  v5 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_213E15130(0, &qword_281182328, 0x277D75D18);
  v6 = sub_213F4F3E0();

  v7 = [v5 initWithArrangedSubviews_];

  [v7 setAxis_];
  [v7 setAlignment_];
  [v7 setSpacing_];
  [v7 setUserInteractionEnabled_];
  return v7;
}

double ActionBarToastButton.intrinsicContentSize.getter()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_intrinsicContentSize);
  [*&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolContainerView] intrinsicContentSize];
  v2 = v1;
  [*&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_titleView] intrinsicContentSize];
  v4 = v3;
  [*&v0[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_subtitleView] intrinsicContentSize];
  if (v4 > v5)
  {
    v5 = v4;
  }

  return v2 + 2.0 + v5 + 12.0;
}

void sub_213E0EA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_213F4F220();
  [v4 setAccessibilityIdentifier_];

  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v4 setContentHuggingPriority:0 forAxis:v7];
  v8 = objc_opt_self();
  v9 = *MEMORY[0x277D743F8];
  v10 = [v8 systemFontOfSize:17.0 weight:*MEMORY[0x277D743F8]];
  v43 = [objc_opt_self() configurationWithFont_];

  v11 = *&v4[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_symbolImageView];
  v12 = sub_213F4F220();
  v13 = [objc_opt_self() systemImageNamed_];

  [v11 setImage_];
  [v11 setPreferredSymbolConfiguration_];
  v14 = objc_opt_self();
  v15 = [v14 whiteColor];
  [v11 setTintColor_];

  LODWORD(v16) = 1148846080;
  [v11 aL];
  LODWORD(v17) = 1148846080;
  [v11 setContentHuggingPriority:0 forAxis:v17];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = sub_213F4F220();
  [v11 setAccessibilityIdentifier_];

  v19 = *&v4[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_textLabel];
  v20 = sub_213F4F220();
  [v19 setText_];

  v21 = [v14 whiteColor];
  [v19 setTextColor_];

  v22 = [v8 systemFontOfSize:17.0 weight:v9];
  [v19 setFont_];

  LODWORD(v23) = 1148846080;
  [v19 setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [v19 setContentHuggingPriority:0 forAxis:v24];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = sub_213F4F220();
  [v19 setAccessibilityIdentifier_];

  [v4 addSubview_];
  [v4 addSubview_];
  v42 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_213F55C70;
  v27 = [v11 leadingAnchor];
  v28 = [v4 leadingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:14.0];

  *(v26 + 32) = v29;
  v30 = [v11 centerYAnchor];
  v31 = [v4 centerYAnchor];
  v32 = [v30 constraintEqualToAnchor_];

  *(v26 + 40) = v32;
  v33 = [v19 leadingAnchor];
  v34 = [v11 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34 constant:4.0];

  *(v26 + 48) = v35;
  v36 = [v19 trailingAnchor];
  v37 = [v4 trailingAnchor];
  v38 = [v36 constraintEqualToAnchor:v37 constant:-16.0];

  *(v26 + 56) = v38;
  v39 = [v19 centerYAnchor];
  v40 = [v4 centerYAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v26 + 64) = v41;
  sub_213E15130(0, &qword_2811823D8, 0x277CCAAD0);
  v44 = sub_213F4F3E0();

  [v42 activateConstraints_];
}

double ActionBarDirectionButton.intrinsicContentSize.getter()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_intrinsicContentSize);
  [*&v0[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_symbolImageView] intrinsicContentSize];
  v2 = v1 + 14.0 + 4.0;
  [*&v0[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_textLabel] intrinsicContentSize];
  return v2 + v3 + 16.0;
}

uint64_t sub_213E0F368@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *a1;
  swift_beginAccess();
  v5 = *(v4 + 48);
  v12 = *(v4 + 32);
  v13 = v5;
  v14 = *(v4 + 64);
  v6 = v14;
  v7 = *(v4 + 16);
  v11[0] = *v4;
  v8 = v11[0];
  v11[1] = v7;
  *(a2 + 32) = v12;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *a2 = v8;
  *(a2 + 16) = v7;
  return sub_213E14704(v11, &v10);
}

uint64_t sub_213E0F3E8(uint64_t a1, void *a2)
{
  v4 = v2 + *a2;
  swift_beginAccess();
  v5 = *(v4 + 48);
  v10[2] = *(v4 + 32);
  v10[3] = v5;
  v11 = *(v4 + 64);
  v6 = *(v4 + 16);
  v10[0] = *v4;
  v10[1] = v6;
  v7 = *(a1 + 48);
  *(v4 + 32) = *(a1 + 32);
  *(v4 + 48) = v7;
  *(v4 + 64) = *(a1 + 64);
  v8 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v8;
  return sub_213E1473C(v10);
}

id ActionBarButton.__allocating_init(style:target:action:model:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  v11 = &v10[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  v12 = *(a4 + 16);
  *v11 = *a4;
  *(v11 + 1) = v12;
  v13 = *(a4 + 48);
  *(v11 + 2) = *(a4 + 32);
  *(v11 + 3) = v13;
  *(v11 + 8) = *(a4 + 64);
  v16.receiver = v10;
  v16.super_class = v5;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [v14 setStyle_];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  [v14 setTarget_];
  swift_unknownObjectRelease();
  [v14 setAction_];

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

id ActionBarButton.init(style:target:action:model:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = &v5[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  v12 = *(a4 + 48);
  *(v11 + 2) = *(a4 + 32);
  *(v11 + 3) = v12;
  *(v11 + 8) = *(a4 + 64);
  v13 = *(a4 + 16);
  *v11 = *a4;
  *(v11 + 1) = v13;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);
  [v14 setStyle_];
  __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  [v14 setTarget_];
  swift_unknownObjectRelease();
  [v14 setAction_];

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

id ActionBarButton.__allocating_init(customView:model:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  v7 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 1) = v7;
  v8 = *(a2 + 48);
  *(v6 + 2) = *(a2 + 32);
  *(v6 + 3) = v8;
  *(v6 + 8) = *(a2 + 64);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v9 setCustomView_];

  return v9;
}

id ActionBarButton.init(customView:model:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  v7 = *(a2 + 48);
  *(v6 + 2) = *(a2 + 32);
  *(v6 + 3) = v7;
  *(v6 + 8) = *(a2 + 64);
  v8 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 1) = v8;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  [v9 setCustomView_];

  return v9;
}

id ActionBarButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ActionBarButton.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[48] = 0;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id ActionBarButton.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ActionBar.model.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 9) = *(v3 + 41);
  v6 = *(v10 + 9);
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  *(a1 + 41) = v6;
  return sub_213E147B0(v9, v8);
}

uint64_t sub_213E0FA68@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *&v11[9] = *(v3 + 41);
  v10[1] = v5;
  *v11 = v6;
  v10[0] = v4;
  v7 = v3[1];
  *a2 = *v3;
  a2[1] = v7;
  a2[2] = v3[2];
  *(a2 + 41) = *(v3 + 41);
  return sub_213E147B0(v10, v9);
}

void sub_213E0FAF0(__int128 *a1, void *a2)
{
  v2 = a1[1];
  v11 = *a1;
  v12 = v2;
  v13[0] = a1[2];
  *(v13 + 9) = *(a1 + 41);
  v3 = (*a2 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *(v15 + 9) = *(v3 + 41);
  v14[1] = v5;
  v15[0] = v6;
  v14[0] = v4;
  v7 = v11;
  v8 = v12;
  v9 = v13[0];
  *(v3 + 41) = *(v13 + 9);
  v3[1] = v8;
  v3[2] = v9;
  *v3 = v7;
  sub_213E147B0(&v11, v10);
  sub_213E147E8(v14);
  sub_213E105E4();
}

void ActionBar.model.setter(_OWORD *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model);
  swift_beginAccess();
  v4 = v3[1];
  v6[0] = *v3;
  v6[1] = v4;
  v7[0] = v3[2];
  *(v7 + 9) = *(v3 + 41);
  v5 = a1[1];
  *v3 = *a1;
  v3[1] = v5;
  v3[2] = a1[2];
  *(v3 + 41) = *(a1 + 41);
  sub_213E147E8(v6);
  sub_213E105E4();
}

void (*ActionBar.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_213E0FC94;
}

void sub_213E0FC94(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_213E105E4();
  }
}

uint64_t sub_213E0FCC8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_213E14FB0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_213DD74C4(v4, v5);
}

uint64_t sub_213E0FD68(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_213E14F88;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_213DD74C4(v3, v4);
  return sub_213DD7558(v8, v9);
}

uint64_t ActionBar.onSelect.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  swift_beginAccess();
  v2 = *v1;
  sub_213DD74C4(*v1, v1[1]);
  return v2;
}

uint64_t ActionBar.onSelect.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_213DD7558(v6, v7);
}

_OWORD *ActionBar.init(model:)(_OWORD *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_lastWidth] = 0xBFF0000000000000;
  v4 = &v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_onSelect];
  *v4 = 0;
  v4[1] = 0;
  v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_showAddedToast] = 0;
  v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_showFavoritedToast] = 0;
  v5 = &v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_model];
  v6 = a1[1];
  *v5 = *a1;
  v5[1] = v6;
  v5[2] = a1[2];
  *(v5 + 41) = *(a1 + 41);
  v7 = [objc_allocWithZone(MEMORY[0x277D75C58]) init];
  *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar] = v7;
  v8 = [objc_allocWithZone(MEMORY[0x277D75C58]) init];
  *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_sizingToolBar] = v8;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_213E10098();
  sub_213E105E4();

  return v9;
}

void sub_213E10098()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8F8BB0, &qword_213F51CE0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_213F55C50;
  v4 = [v2 leadingAnchor];
  v5 = [v1 a1];
  v6 = [v4 constraintEqualToAnchor_];

  *(v3 + 32) = v6;
  v7 = [v2 trailingAnchor];
  v8 = [v1 byte_2781749CC];
  v9 = [v7 constraintEqualToAnchor_];

  *(v3 + 40) = v9;
  v10 = [v2 topAnchor];
  v11 = [v1 property descriptor for SharedTripCellViewModel.handleSubtitle];
  v12 = [v10 constraintEqualToAnchor_];

  *(v3 + 48) = v12;
  v13 = [v2 bottomAnchor];
  v14 = [v1 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v3 + 56) = v15;
  sub_213E15130(0, &qword_2811823D8, 0x277CCAAD0);
  v16 = sub_213F4F3E0();

  [v31 activateConstraints_];

  v17 = *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_sizingToolBar];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  [v17 setHidden_];
  [v17 setUserInteractionEnabled_];
  [v1 addSubview_];
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_213F55C50;
  v19 = [v17 leadingAnchor];
  v20 = [v2 leadingAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v18 + 32) = v21;
  v22 = [v17 trailingAnchor];
  v23 = [v2 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v18 + 40) = v24;
  v25 = [v17 topAnchor];
  v26 = [v2 topAnchor];
  v27 = [v25 constraintEqualToAnchor_];

  *(v18 + 48) = v27;
  v28 = [v17 bottomAnchor];
  v29 = [v2 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v18 + 56) = v30;
  v32 = sub_213F4F3E0();

  [v31 activateConstraints_];
}

void sub_213E105E4()
{
  v1 = v0;
  v2 = sub_213E10C08(0);
  v3 = v2;
  v53 = v2;
  if (v2 >> 62)
  {
LABEL_60:
    v4 = sub_213F4F7E0();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x216052B30](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v9 = [v6 menu];
      if (v9)
      {
        break;
      }

      v10 = [v7 _secondaryActionsProvider];
      if (v10)
      {
        v12 = v10;

        _Block_release(v12);
        goto LABEL_17;
      }

      ++v5;
      if (v8 == v4)
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    [v1 layoutIfNeeded];
    v13 = *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_sizingToolBar];
    sub_213E15130(0, &qword_281182400, 0x277D751E0);

    v14 = sub_213F4F3E0();
    [v13 setItems:v14 animated:0];

    [v13 layoutIfNeeded];
    v15 = [v1 traitCollection];
    v16 = [v15 layoutDirection];

    v17 = sub_213E123D8(v7, v3);
    v19 = v18;

    if ((v19 & 1) == 0 && v17 >= 1)
    {
      while (2)
      {
        v20 = v3 >> 62;
        if (v16 == 1)
        {
          if (v20)
          {
            v21 = sub_213F4F7E0();
            if (!v21)
            {
              goto LABEL_37;
            }

LABEL_22:
            v22 = __OFSUB__(v21, 1);
            v23 = v21 - 1;
            if (v22)
            {
              goto LABEL_55;
            }

            if ((v3 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x216052B30](v23, v3);
            }

            else
            {
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_57;
              }

              if (v23 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_58;
              }

              v24 = *(v3 + 8 * v23 + 32);
            }

            v25 = v24;
          }

          else
          {
            v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v21)
            {
              goto LABEL_22;
            }

LABEL_37:
            v25 = 0;
          }

          [v13 _frameOfBarButtonItem_];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;

          v55.origin.x = v31;
          v55.origin.y = v33;
          v55.size.width = v35;
          v55.size.height = v37;
          MinX = CGRectGetMinX(v55);
          [v1 bounds];
          if (MinX >= CGRectGetMinX(v56))
          {
            goto LABEL_48;
          }

LABEL_43:

          v3 = v53;

          v48 = sub_213F4F3E0();
          [v13 setItems:v48 animated:0];

          [v13 layoutIfNeeded];
          v17 = sub_213E123D8(v7, v53);
          v50 = v49;

          if ((v50 & 1) != 0 || v17 <= 0)
          {
            goto LABEL_48;
          }

          continue;
        }

        break;
      }

      if (v20)
      {
        v26 = sub_213F4F7E0();
        if (!v26)
        {
          goto LABEL_41;
        }

LABEL_30:
        v22 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v22)
        {
          goto LABEL_54;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x216052B30](v27, v3);
        }

        else
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_56;
          }

          if (v27 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v28 = *(v3 + 8 * v27 + 32);
        }

        v29 = v28;
      }

      else
      {
        v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v26)
        {
          goto LABEL_30;
        }

LABEL_41:
        v29 = 0;
      }

      [v13 _frameOfBarButtonItem_];
      v40 = v39;
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v57.origin.x = v40;
      v57.origin.y = v42;
      v57.size.width = v44;
      v57.size.height = v46;
      MaxX = CGRectGetMaxX(v57);
      [v1 bounds];
      if (CGRectGetMaxX(v58) >= MaxX)
      {
        goto LABEL_48;
      }

      goto LABEL_43;
    }

LABEL_48:
    v51 = *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar];
    v52 = sub_213F4F3E0();
    [v51 setItems_animated_];
  }

  else
  {
LABEL_14:

    v11 = *&v1[OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar];
    sub_213E15130(0, &qword_281182400, 0x277D751E0);
    v52 = sub_213F4F3E0();
    [v11 setItems_animated_];
  }
}

Swift::Void __swiftcall ActionBar.layoutSubviews()()
{
  v5.receiver = v0;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v1 = OBJC_IVAR____TtC10MapsDesign9ActionBar_lastWidth;
  v2 = *&v0[OBJC_IVAR____TtC10MapsDesign9ActionBar_lastWidth];
  [v0 frame];
  if (v2 != v3)
  {
    sub_213E105E4();
    [v0 frame];
    *&v0[v1] = v4;
  }
}

uint64_t sub_213E10C08(int a1)
{
  LODWORD(v167) = a1;
  v2 = &v197;
  v3 = sub_213F4CB60();
  MEMORY[0x28223BE20](v3 - 8);
  v165 = &v159 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_213F4F210();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v159 - v10;
  v214 = MEMORY[0x277D84F90];
  v12 = *(v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_showAddedToast);
  v171 = v1;
  if (v12 == 1)
  {
    sub_213F4F200();
    v190 = *(v6 + 16);
    v190(v9, v11, v5);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v13 = qword_281182518;
    sub_213F4CB50();
    v14 = v13;
    v15 = sub_213F4F260();
    v189 = v16;
    v17 = *(v6 + 8);
    v17(v11, v5);
    sub_213F4F200();
    v190(v9, v11, v5);
    sub_213F4CB50();
    v18 = sub_213F4F260();
    v20 = v19;
    v17(v11, v5);
    *&v197 = 0;
    *(&v197 + 1) = v15;
    goto LABEL_9;
  }

  v163 = v9;
  v164 = v6;
  if (*(v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_showFavoritedToast) == 1)
  {
    v21 = &v159 - v10;
    sub_213F4F200();
    v22 = v163;
    v23 = v164;
    v24 = *(v164 + 16);
    v24(v163, v21, v5);
    if (qword_281182510 != -1)
    {
      swift_once();
    }

    v25 = qword_281182518;
    sub_213F4CB50();
    v26 = v25;
    v27 = sub_213F4F260();
    v189 = v28;
    v190 = v27;
    v29 = *(v23 + 8);
    v29(v21, v5);
    sub_213F4F200();
    v24(v22, v21, v5);
    sub_213F4CB50();
    v18 = sub_213F4F260();
    v20 = v30;
    v29(v21, v5);
    *&v197 = 1;
    *(&v197 + 1) = v190;
LABEL_9:
    v2 = &v197;
    *&v198 = v189;
    *(&v198 + 1) = v18;
    v199 = v20;
    LOBYTE(v200) = 5;
    DWORD1(v200) = *(&v209 + 3);
    *(&v200 + 1) = v209;
    *(&v200 + 1) = 0;
    v201 = 0;
    v211 = v20;
    v212 = v200;
    v213 = 0;
    v209 = v197;
    v210 = v198;
    sub_213E12578(0, &v209);
    v32 = v31;
    sub_213E1473C(&v197);
    v33 = v32;
    MEMORY[0x2160527D0]();
    if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_122;
    }

    goto LABEL_10;
  }

  v161 = &v159 - v10;
  v162 = v5;
  v88 = (v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model);
  v33 = v1;
  swift_beginAccess();
  v89 = v88 + 2;
  if ((v167 & 1) == 0)
  {
    v89 = v88;
  }

  v90 = *v89;
  v170 = *(*v89 + 16);
  if (!v170)
  {
    v34 = MEMORY[0x277D84F90];
    v35 = v33;
    v132 = v88[5];
    if (!v132)
    {
LABEL_109:
      v146 = v88[4];
      if (v146 && (v167 & 1) == 0)
      {
        sub_213E15130(0, &qword_281182400, 0x277D751E0);
        v147 = v146;
        v148 = sub_213F4F220();
        v149 = [objc_opt_self() systemImageNamed_];

        v33 = v147;
        v150 = sub_213F4F540();
        [v150 setPreferredMenuElementOrder_];
        v151 = v150;
        v152 = v161;
        sub_213F4F200();
        v153 = v164;
        v154 = v162;
        (*(v164 + 16))(v163, v152, v162);
        if (qword_281182510 != -1)
        {
          swift_once();
        }

        v155 = qword_281182518;
        sub_213F4CB50();
        sub_213F4F260();
        (*(v153 + 8))(v152, v154);
        v156 = sub_213F4F220();

        [v151 setAccessibilityLabel_];

        v157 = sub_213F4F220();
        [v151 setAccessibilityIdentifier_];

        v158 = v151;
        MEMORY[0x2160527D0]();
        v2 = &v197;
        if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_213F4F400();
        }

        sub_213F4F420();

        goto LABEL_11;
      }

      goto LABEL_13;
    }

LABEL_103:
    if ((v167 & 1) == 0)
    {
      v133 = v88[6];
      sub_213E15130(0, &qword_281182400, 0x277D751E0);

      v134 = sub_213F4F220();
      v135 = [objc_opt_self() systemImageNamed_];

      v136 = sub_213F4F540();
      [v136 setPreferredMenuElementOrder_];
      *&v199 = v132;
      *(&v199 + 1) = v133;
      *&v197 = MEMORY[0x277D85DD0];
      *(&v197 + 1) = 1107296256;
      *&v198 = sub_213E13270;
      *(&v198 + 1) = &block_descriptor_72;
      v137 = _Block_copy(&v197);

      [v136 _setSecondaryActionsProvider_];
      _Block_release(v137);
      v138 = v136;
      v139 = v161;
      sub_213F4F200();
      v140 = v164;
      v141 = v162;
      (*(v164 + 16))(v163, v139, v162);
      if (qword_281182510 != -1)
      {
        swift_once();
      }

      v142 = qword_281182518;
      sub_213F4CB50();
      sub_213F4F260();
      (*(v140 + 8))(v139, v141);
      v143 = sub_213F4F220();

      [v138 setAccessibilityLabel_];

      v144 = sub_213F4F220();
      [v138 setAccessibilityIdentifier_];

      v145 = v138;
      MEMORY[0x2160527D0]();
      v2 = &v197;
      if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_213F4F400();
        v2 = &v197;
      }

      sub_213F4F420();
      sub_213DD7558(v132, v133);

      goto LABEL_12;
    }

    goto LABEL_109;
  }

  v160 = v88;
  v91 = *(v1 + OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar);
  v168 = v90 + 32;
  v169 = v91;

  v92 = 0;
  v166 = v90;
  do
  {
    v93 = v168 + 72 * v92;
    v209 = *v93;
    v94 = *(v93 + 16);
    v95 = *(v93 + 32);
    v96 = *(v93 + 48);
    v213 = *(v93 + 64);
    v211 = v95;
    v212 = v96;
    v210 = v94;
    sub_213E14704(&v209, &v197);
    v97 = [v169 items];
    if (!v97)
    {
      goto LABEL_92;
    }

    v98 = v97;
    sub_213E15130(0, &qword_281182400, 0x277D751E0);
    v33 = sub_213F4F3F0();

    v172 = v92;
    if (v33 >> 62)
    {
      v99 = sub_213F4F7E0();
      if (!v99)
      {
LABEL_91:

        v90 = v166;
        v92 = v172;
LABEL_92:
        v198 = v210;
        v199 = v211;
        v200 = v212;
        v201 = v213;
        v197 = v209;
        sub_213E12578(0, &v197);
        v130 = v129;
        sub_213E1473C(&v209);
        v128 = v130;
        MEMORY[0x2160527D0]();
        if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v33 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_213F4F400();
        }

        sub_213F4F420();
        goto LABEL_95;
      }
    }

    else
    {
      v99 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v99)
      {
        goto LABEL_91;
      }
    }

    v100 = 0;
    v175 = v99;
    *&v176 = *(&v211 + 1);
    v182 = v33 & 0xC000000000000001;
    v183 = v209;
    v180 = v33;
    v181 = v33 & 0xFFFFFFFFFFFFFF8;
    v188 = v212;
    v178 = v210;
    v179 = *(&v209 + 1);
    *(&v176 + 1) = v211;
    v177 = *(&v210 + 1);
    while (1)
    {
      if (v182)
      {
        v112 = MEMORY[0x216052B30](v100, v33);
      }

      else
      {
        if (v100 >= *(v181 + 16))
        {
          goto LABEL_119;
        }

        v112 = *(v33 + 8 * v100 + 32);
      }

      v2 = v112;
      if (__OFADD__(v100, 1))
      {
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
        goto LABEL_120;
      }

      v189 = v100 + 1;
      v113 = type metadata accessor for ActionBarButton();
      v190 = v2;
      v114 = swift_dynamicCastClass();
      if (!v114)
      {
        v119 = 0;
        v120 = 0;
        v117 = 0;
        v118 = 0;
        v115 = 0;
        v116 = 0;
LABEL_80:
        v121 = v183;
        if (v188 == 255)
        {
          sub_213E0CBA0(v183, v179, v178, v177, *(&v176 + 1), v176, 255);

          sub_213E150A0(v116, v115, v118, v117, v120, v119, 255);
          v2 = &v197;
          goto LABEL_85;
        }

        v184 = v116;
        v185 = v120;
        v186 = v115;
        v187 = v118;
        v108 = v117;
        v110 = v119;
        v102 = v178;
        v101 = v179;
        v106 = *(&v176 + 1);
        v103 = v177;
        v105 = v176;
        sub_213E0CBA0(v183, v179, v178, v177, *(&v176 + 1), v176, v188);

        v111 = v121;
        LOBYTE(v121) = -1;
        goto LABEL_68;
      }

      v121 = v114 + OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model;
      swift_beginAccess();
      v116 = *v121;
      v115 = *(v121 + 8);
      v118 = *(v121 + 16);
      v117 = *(v121 + 24);
      v120 = *(v121 + 32);
      v119 = *(v121 + 40);
      LODWORD(v121) = *(v121 + 48);
      sub_213E0CBA0(v116, v115, v118, v117, v120, v119, v121);
      if (v121 == 255)
      {
        goto LABEL_80;
      }

      v186 = v113;
      *&v197 = v116;
      *(&v197 + 1) = v115;
      *&v198 = v118;
      *(&v198 + 1) = v117;
      *&v199 = v120;
      *(&v199 + 1) = v119;
      LOBYTE(v200) = v121;
      if (v188 != 255)
      {
        break;
      }

      v173 = v119;
      v174 = v117;
      v101 = v179;
      v186 = v115;
      v187 = v118;
      v103 = v177;
      v102 = v178;
      v104 = v116;
      v106 = *(&v176 + 1);
      v105 = v176;
      sub_213E0CBA0(v183, v179, v178, v177, *(&v176 + 1), v176, 255);
      sub_213E150B4(v104, v186, v187, v174, v120, v173, v121);

      v184 = v104;
      v185 = v120;
      v107 = v104;
      v108 = v174;
      v109 = v120;
      v110 = v173;
      sub_213E14680(v107, v186, v187, v174, v109, v173, v121);
      v111 = v183;
LABEL_68:
      *&v197 = v184;
      *(&v197 + 1) = v186;
      *&v198 = v187;
      *(&v198 + 1) = v108;
      *&v199 = v185;
      *(&v199 + 1) = v110;
      v2 = &v197;
      LOBYTE(v200) = v121;
      *(&v200 + 1) = v208[0];
      DWORD1(v200) = *(v208 + 3);
      *(&v200 + 1) = v111;
      v201 = v101;
      v202 = v102;
      v203 = v103;
      v204 = v106;
      v205 = v105;
      v206 = v188;
      sub_213DE36FC(&v197, &qword_27C8F8BB8, &qword_213F563E8);
LABEL_69:
      v33 = v180;
      ++v100;
      if (v189 == v175)
      {
        goto LABEL_91;
      }
    }

    v191 = v183;
    v192 = v179;
    v193 = v178;
    v194 = v177;
    *&v195 = *(&v176 + 1);
    *(&v195 + 1) = v176;
    v196 = v188;
    sub_213E0CBA0(v183, v179, v178, v177, *(&v176 + 1), v176, v188);
    sub_213E150B4(v116, v115, v118, v117, v120, v119, v121);
    LODWORD(v187) = _s10MapsDesign24ActionBarButtonViewModelV0cdE4TypeO2eeoiySbAE_AEtFZ_0(&v197, &v191);
    sub_213E14680(v191, v192, v193, v194, v195, *(&v195 + 1), v196);
    sub_213E14680(v197, *(&v197 + 1), v198, *(&v198 + 1), v199, *(&v199 + 1), v200);
    sub_213E150A0(v116, v115, v118, v117, v120, v119, v121);
    if ((v187 & 1) == 0)
    {

      v2 = &v197;
      goto LABEL_69;
    }

    v2 = &v197;
LABEL_85:
    v122 = v190;
    v123 = swift_dynamicCastClass();
    v90 = v166;
    v92 = v172;
    v124 = v122;
    if (v123)
    {
      v125 = v122;
    }

    v198 = v210;
    v199 = v211;
    v200 = v212;
    v201 = v213;
    v197 = v209;
    sub_213E12578(v123, &v197);
    v127 = v126;

    sub_213E1473C(&v209);
    v33 = v127;
    MEMORY[0x2160527D0]();
    if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_213F4F400();
    }

    sub_213F4F420();

    v128 = v124;
LABEL_95:
    ++v92;

    if (v92 == v170)
    {
      v34 = v214;

      v35 = v171;
      v88 = v160;
      v132 = v160[5];
      if (!v132)
      {
        goto LABEL_109;
      }

      goto LABEL_103;
    }
  }

  while (v92 < *(v90 + 16));
  while (2)
  {
    __break(1u);
LABEL_122:
    sub_213F4F400();
LABEL_10:
    sub_213F4F420();
LABEL_11:

LABEL_12:
    v34 = *(v2 + 248);
    v35 = v171;
LABEL_13:
    v33 = v35 + OBJC_IVAR____TtC10MapsDesign9ActionBar_model;
    swift_beginAccess();
    v36 = 8;
    if (v167)
    {
      v36 = 24;
    }

    if (!*(*(v33 + v36) + 16))
    {
      return v34;
    }

    [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:5 target:0 action:0];
    MEMORY[0x2160527D0]();
    if (*((*(v2 + 248) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 248) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_213F4F400();
    }

    sub_213F4F420();
    v37 = 8;
    if (v167)
    {
      v37 = 24;
    }

    v38 = *(v33 + v37);
    v170 = *(v38 + 16);
    if (!v170)
    {
      return *(v2 + 248);
    }

    v39 = *(v171 + OBJC_IVAR____TtC10MapsDesign9ActionBar_toolBar);
    v168 = v38 + 32;
    v169 = v39;
    v167 = v38;

    v40 = 0;
LABEL_22:
    v172 = v40;
    v41 = v168 + 72 * v40;
    *(v2 + 144) = *v41;
    v42 = *(v41 + 16);
    v43 = *(v41 + 32);
    v44 = *(v41 + 48);
    *(v2 + 208) = *(v41 + 64);
    *(v2 + 176) = v43;
    *(v2 + 192) = v44;
    *(v2 + 160) = v42;
    sub_213E14704(&v209, &v197);
    v45 = [v169 items];
    if (!v45)
    {
      goto LABEL_52;
    }

    v46 = v45;
    sub_213E15130(0, &qword_281182400, 0x277D751E0);
    v47 = sub_213F4F3F0();

    if (v47 >> 62)
    {
      v48 = sub_213F4F7E0();
      if (!v48)
      {
LABEL_51:

        v2 = &v197;
LABEL_52:
        v83 = *(v2 + 176);
        v84 = *(v2 + 192);
        v85 = *(v2 + 144);
        *(v2 + 16) = *(v2 + 160);
        *(v2 + 32) = v83;
        *(v2 + 48) = v84;
        *(v2 + 64) = *(v2 + 208);
        v197 = v85;
        sub_213E12578(0, &v197);
        v87 = v86;
        sub_213E1473C(&v209);
        v33 = v87;
        MEMORY[0x2160527D0]();
        if (*((*(v2 + 248) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 248) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_213F4F400();
        }

        sub_213F4F420();
        goto LABEL_55;
      }
    }

    else
    {
      v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v48)
      {
        goto LABEL_51;
      }
    }

    v2 = 0;
    v185 = *(&v210 + 1);
    v186 = v210;
    v176 = v211;
    v180 = v47 & 0xC000000000000001;
    v181 = v209;
    v178 = v47;
    v179 = v47 & 0xFFFFFFFFFFFFFF8;
    v188 = v212;
    v175 = v48;
    v177 = *(&v209 + 1);
    while (2)
    {
      if (v180)
      {
        v59 = MEMORY[0x216052B30](v2, v47);
      }

      else
      {
        if (v2 >= *(v179 + 16))
        {
          goto LABEL_117;
        }

        v59 = *(v47 + 8 * v2 + 32);
      }

      v60 = v59;
      v58 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }

      v61 = type metadata accessor for ActionBarButton();
      v62 = swift_dynamicCastClass();
      if (!v62)
      {
        v184 = v61;
        v189 = 0;
        v76 = 0;
        v71 = 0;
        v57 = 0;
        v187 = 0;
        v33 = 0;
        v77 = v181;
        v72 = v186;
LABEL_40:
        if (v188 == 255)
        {
          sub_213E0CBA0(v77, v177, v72, v185, v176, *(&v176 + 1), 255);

          sub_213E150A0(v33, v187, v57, v71, v76, v189, 255);
          goto LABEL_45;
        }

        v184 = v71;
        v190 = v76;
        v182 = v2 + 1;
        v49 = *(&v176 + 1);
        v50 = v177;
        v51 = v176;
        v52 = v188;
        v69 = v60;
        v56 = v77;
        sub_213E0CBA0(v77, v177, v72, v185, v176, *(&v176 + 1), v188);

        LOBYTE(v69) = -1;
        goto LABEL_27;
      }

      v69 = (v62 + OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model);
      swift_beginAccess();
      v63 = *v69;
      v64 = v69[1];
      v65 = v69[2];
      v66 = v69[3];
      v67 = v69[4];
      v68 = v69[5];
      LODWORD(v69) = *(v69 + 48);
      v183 = v63;
      v70 = v65;
      v71 = v66;
      v190 = v67;
      sub_213E0CBA0(v63, v64, v65, v66, v67, v68, v69);
      v72 = v186;
      v189 = v68;
      v187 = v64;
      if (v69 == 255)
      {
        v184 = v61;
        v77 = v181;
        v76 = v190;
        v57 = v70;
        v33 = v183;
        goto LABEL_40;
      }

      v174 = v60;
      *&v197 = v183;
      *(&v197 + 1) = v64;
      v73 = v64;
      *&v198 = v70;
      *(&v198 + 1) = v71;
      *&v199 = v190;
      *(&v199 + 1) = v68;
      LOBYTE(v200) = v69;
      if (v188 == 255)
      {
        v182 = v2 + 1;
        v49 = *(&v176 + 1);
        v50 = v177;
        v173 = v70;
        v51 = v176;
        v184 = v71;
        v52 = -1;
        sub_213E0CBA0(v181, v177, v186, v185, v176, *(&v176 + 1), 255);
        v53 = v183;
        sub_213E150B4(v183, v73, v173, v184, v190, v68, v69);

        v33 = v53;
        v54 = v53;
        v55 = v73;
        v56 = v181;
        v57 = v173;
        sub_213E14680(v54, v55, v173, v184, v190, v189, v69);
LABEL_27:
        *&v197 = v33;
        *(&v197 + 1) = v187;
        *&v198 = v57;
        *(&v198 + 1) = v184;
        *&v199 = v190;
        *(&v199 + 1) = v189;
        LOBYTE(v200) = v69;
        *(&v200 + 1) = *v207;
        DWORD1(v200) = *&v207[3];
        *(&v200 + 1) = v56;
        v201 = v50;
        v202 = v186;
        v203 = v185;
        v204 = v51;
        v205 = v49;
        v206 = v52;
        sub_213DE36FC(&v197, &qword_27C8F8BB8, &qword_213F563E8);
        v47 = v178;
        v58 = v182;
        goto LABEL_28;
      }

      v191 = v181;
      v192 = v177;
      v193 = v186;
      v194 = v185;
      v195 = v176;
      v196 = v188;
      sub_213E0CBA0(v181, v177, v186, v185, v176, *(&v176 + 1), v188);
      v74 = v68;
      v33 = v183;
      v75 = v190;
      sub_213E150B4(v183, v64, v70, v71, v190, v74, v69);
      LODWORD(v184) = _s10MapsDesign24ActionBarButtonViewModelV0cdE4TypeO2eeoiySbAE_AEtFZ_0(&v197, &v191);
      sub_213E14680(v191, v192, v193, v194, v195, *(&v195 + 1), v196);
      sub_213E14680(v197, *(&v197 + 1), v198, *(&v198 + 1), v199, *(&v199 + 1), v200);
      sub_213E150A0(v33, v187, v70, v71, v75, v189, v69);
      if ((v184 & 1) == 0)
      {

        v47 = v178;
LABEL_28:
        ++v2;
        if (v58 == v175)
        {
          goto LABEL_51;
        }

        continue;
      }

      break;
    }

    v60 = v174;
LABEL_45:
    v78 = swift_dynamicCastClass();
    v2 = &v197;
    if (v78)
    {
      v79 = v60;
    }

    v198 = v210;
    v199 = v211;
    v200 = v212;
    v201 = v213;
    v197 = v209;
    sub_213E12578(v78, &v197);
    v81 = v80;

    sub_213E1473C(&v209);
    v82 = v81;
    MEMORY[0x2160527D0]();
    if (*((v214 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v214 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_213F4F400();
    }

    sub_213F4F420();

    v33 = v60;
LABEL_55:
    v40 = v172 + 1;

    if (v40 != v170)
    {
      if (v40 >= *(v167 + 16))
      {
LABEL_120:
        __break(1u);
        continue;
      }

      goto LABEL_22;
    }

    break;
  }

  v34 = *(v2 + 248);

  return v34;
}

unint64_t sub_213E123D8(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_213F4F7E0();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216052B30](v5, a2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    sub_213E15130(0, &qword_281182400, 0x277D751E0);
    v8 = sub_213F4F610();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

unint64_t sub_213E124E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_213E13F54(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_213E12578(void *a1, __int128 *a2)
{
  v90 = sub_213F4F0A0();
  v89 = *(v90 - 1);
  MEMORY[0x28223BE20](v90);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_213F4F080();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v109 = a2[2];
  v110 = v11;
  v111 = *(a2 + 8);
  v12 = a2[1];
  v107 = *a2;
  v108 = v12;
  v13 = type metadata accessor for ActionBarButton();
  v14 = objc_allocWithZone(v13);
  v15 = &v14[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
  v16 = a2[3];
  *(v15 + 2) = a2[2];
  *(v15 + 3) = v16;
  *(v15 + 8) = *(a2 + 8);
  v17 = a2[1];
  *v15 = *a2;
  *(v15 + 1) = v17;
  sub_213E14704(&v107, &v100);
  v99.receiver = v14;
  v99.super_class = v13;
  v18 = objc_msgSendSuper2(&v99, sel_init);
  [v18 setStyle_];
  v87 = v2;
  [v18 setTarget_];
  [v18 setAction_];

  if (a1)
  {
    v19 = a1;

    v18 = v19;
  }

  v21 = *(&v107 + 1);
  v20 = v107;
  v22 = *(&v108 + 1);
  v23 = v108;
  v93 = *(&v109 + 1);
  v94 = v109;
  v24 = v110;
  v91 = v108;
  if (v110 > 2u)
  {
LABEL_14:
    if (v24 != 3)
    {
      if (v24 != 4)
      {
        v50 = 0x72616D6B63656863;
        if (v20)
        {
          v50 = 0x6C69662E72617473;
        }

        v90 = v50;
        v51 = 0xE90000000000006BLL;
        if (v20)
        {
          v51 = 0xE90000000000006CLL;
        }

        v89 = v51;
        v52 = v20;
        v53 = type metadata accessor for ActionBarToastButton();
        v54 = objc_allocWithZone(v53);
        v55 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolContainerView;
        v56 = objc_allocWithZone(MEMORY[0x277D75D18]);
        v57 = v22;
        v92 = v22;
        v58 = v56;
        sub_213E14704(&v107, &v100);
        v59 = v52;
        v60 = v91;
        v61 = v94;
        sub_213E0CBA0(v59, v21, v91, v57, v94, v93, 5);
        *&v54[v55] = [v58 init];
        v62 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_symbolView;
        *&v54[v62] = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
        v63 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_titleView;
        *&v54[v63] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        v64 = OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_subtitleView;
        *&v54[v64] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        *&v54[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___textsStack] = 0;
        *&v54[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton____lazy_storage___mainStack] = 0;
        v65 = &v54[OBJC_IVAR____TtC10MapsDesign20ActionBarToastButton_model];
        *v65 = v107;
        v67 = v109;
        v66 = v110;
        v68 = v108;
        *(v65 + 8) = v111;
        *(v65 + 2) = v67;
        *(v65 + 3) = v66;
        *(v65 + 1) = v68;
        v98.receiver = v54;
        v98.super_class = v53;
        v69 = objc_msgSendSuper2(&v98, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        sub_213E0DB14(v90, v89, v21, v60, v92, v61);

        [v69 addTarget:v87 action:sel_toastSelectedWithSender_ forControlEvents:64];
        v70 = objc_allocWithZone(v13);
        v71 = &v70[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
        *v71 = v107;
        v73 = v109;
        v72 = v110;
        v74 = v108;
        *(v71 + 8) = v111;
        *(v71 + 2) = v73;
        *(v71 + 3) = v72;
        *(v71 + 1) = v74;
        sub_213E14704(&v107, &v100);
        v97.receiver = v70;
        v97.super_class = v13;
        v75 = v69;
        v76 = objc_msgSendSuper2(&v97, sel_init);
        [v76 setCustomView_];

        v77 = v18;
        v18 = v75;
        goto LABEL_53;
      }

      v88 = v20;

      v86 = v21;
      if (v22)
      {

        v25 = v18;
        v26 = sub_213F4F220();

        v27 = &selRef_setTitle_;
        v28 = v94;
        v29 = v93;
LABEL_35:
        [v18 *v27];

        if (v111)
        {
          v47 = v18;
        }

        else
        {
          v100 = v88;
          v101 = v86;
          v102 = v91;
          v103 = v22;
          v104 = v28;
          v105 = v29;
          v106 = v24;
          v48 = v18;
          ActionBarButtonViewModel.ActionBarButtonType.accessibilityLabel.getter();
        }

        v49 = sub_213F4F220();

        [v18 setAccessibilityLabel_];

        v100 = 0;
        v101 = 0xE000000000000000;
        if (v24 <= 1)
        {
          if (v24)
          {
            v29 = 0xE800000000000000;
            v28 = 0x657469726F766146;
          }

          else
          {
            v29 = 0xE300000000000000;
            v28 = 6579265;
          }
        }

        else if (v24 == 2)
        {
          v29 = 0xE400000000000000;
          v28 = 1702125906;
        }

        else if (v24 == 3)
        {
          v29 = 0xEA0000000000736ELL;
          v28 = 0x6F69746365726944;
        }

        else
        {
        }

        MEMORY[0x216052710](v28, v29);

        MEMORY[0x216052710](0x6E6F74747542, 0xE600000000000000);
        v75 = sub_213F4F220();

        [v18 setAccessibilityIdentifier_];
        v77 = v18;
LABEL_53:

        return;
      }

      v92 = 0;
LABEL_34:
      v28 = v94;
      v29 = v93;
      v45 = v18;
      v46 = sub_213F4F220();

      v26 = [objc_opt_self() systemImageNamed_];

      v27 = &selRef_setImage_;
      v22 = v92;
      goto LABEL_35;
    }

LABEL_26:
    v88 = v20;
    v86 = v21;
    if (v22)
    {
      v30 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v30 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v30)
      {
        v90 = type metadata accessor for ActionBarDirectionButton();
        v31 = objc_allocWithZone(v90);
        v32 = OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_symbolImageView;
        v33 = v22;
        v34 = objc_allocWithZone(MEMORY[0x277D755E8]);
        sub_213E14704(&v107, &v100);
        v35 = v88;
        v36 = v86;
        sub_213E0CBA0(v88, v86, v23, v33, v94, v93, 3);
        *&v31[v32] = [v34 init];
        v37 = OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_textLabel;
        *&v31[v37] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
        v38 = &v31[OBJC_IVAR____TtC10MapsDesign24ActionBarDirectionButton_model];
        *v38 = v107;
        v40 = v109;
        v39 = v110;
        v41 = v108;
        *(v38 + 8) = v111;
        *(v38 + 2) = v40;
        *(v38 + 3) = v39;
        *(v38 + 1) = v41;
        v96.receiver = v31;
        v96.super_class = v90;
        v42 = objc_msgSendSuper2(&v96, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
        sub_213E0EA78(v35, v36, v23, v33);

        if (v111)
        {
          v43 = v42;
        }

        else
        {
          v100 = v35;
          v101 = v36;
          v102 = v23;
          v103 = v33;
          v104 = v94;
          v105 = v93;
          v106 = 3;
          v78 = v42;
          ActionBarButtonViewModel.ActionBarButtonType.accessibilityLabel.getter();
        }

        v79 = sub_213F4F220();

        [v42 setAccessibilityLabel_];

        v80 = sub_213F4F220();
        [v42 setAccessibilityIdentifier_];

        [v42 addTarget:v87 action:sel_directionSelectedWithSender_ forControlEvents:1];
        v81 = objc_allocWithZone(v13);
        v82 = &v81[OBJC_IVAR____TtC10MapsDesign15ActionBarButton_model];
        *v82 = v107;
        v84 = v109;
        v83 = v110;
        v85 = v108;
        *(v82 + 8) = v111;
        *(v82 + 2) = v84;
        *(v82 + 3) = v83;
        *(v82 + 1) = v85;
        sub_213E14704(&v107, &v100);
        v95.receiver = v81;
        v95.super_class = v13;
        v75 = v42;
        v77 = objc_msgSendSuper2(&v95, sel_init);
        [v77 setCustomView_];

        [v77 setStyle_];
        goto LABEL_53;
      }
    }

    v92 = v22;
    [v18 setStyle_];
    goto LABEL_34;
  }

  v92 = *(&v108 + 1);
  v86 = *(&v107 + 1);
  v88 = v107;
  if (!v110)
  {
    if (v107)
    {
      v23 = 0x72616D6B63656863;
    }

    else
    {
      v23 = 1937075312;
    }

    if (v107)
    {
      v13 = 0xE90000000000006BLL;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

    v21 = sub_213F4F220();
    v22 = [objc_opt_self() systemImageNamed_];

    if (!v22)
    {
      __break(1u);
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  if (v110 == 1)
  {
    if (v107)
    {
      v23 = 0x6C69662E72617473;
    }

    else
    {
      v23 = 1918989427;
    }

    if (v107)
    {
      v13 = 0xE90000000000006CLL;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

    v21 = sub_213F4F220();
    v22 = [objc_opt_self() systemImageNamed_];

    if (!v22)
    {
      __break(1u);
      goto LABEL_14;
    }

LABEL_33:
    sub_213F4F070();
    sub_213F4F090();
    sub_213E150D8();
    sub_213F4F530();

    (*(v89 + 8))(v6, v90);
    (*(v8 + 8))(v10, v7);
    goto LABEL_34;
  }

  v44 = sub_213F4F220();
  v22 = [objc_opt_self() systemImageNamed_];

  if (v22)
  {
    goto LABEL_33;
  }

  __break(1u);
}