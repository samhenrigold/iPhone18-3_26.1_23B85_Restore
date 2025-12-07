uint64_t sub_2296E316C(uint64_t a1)
{
  v2 = sub_2296E87B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E31A8(uint64_t a1)
{
  v2 = sub_2296E87B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AssociatedReaderJSON.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F578, &qword_22A57E790);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E87B0();
  sub_22A4DE80C();
  v13 = 0;
  sub_22A4DE54C();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F588, &qword_22A57E798);
    sub_2296E8804();
    sub_22A4DE59C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2296E33B4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2296E88DC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_2296E3404()
{
  v1 = 0x6C6569466B636162;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6946726564616568;
  }
}

uint64_t sub_2296E3470@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2296E8DBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2296E3498(uint64_t a1)
{
  v2 = sub_2296E8AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E34D4(uint64_t a1)
{
  v2 = sub_2296E8AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PaymentCardJSON.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5A0, &qword_22A57E7A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E8AE0();
  sub_22A4DE80C();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5B0, &qword_22A57E7A8);
  sub_2296E8B34();
  sub_22A4DE59C();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5C8, &qword_22A57E7B0);
    sub_2296E8C0C();
    sub_22A4DE53C();
    v15 = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5E0, &qword_22A57E7B8);
    sub_2296E8CE4();
    sub_22A4DE53C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2296E3754(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = a2(a1);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2296E3780@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2296E8EE8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2296E37D0()
{
  v1 = 7955819;
  v2 = 0x65756C6176;
  if (*v0 != 2)
  {
    v2 = 1802398060;
  }

  if (*v0)
  {
    v1 = 0x6C6562616CLL;
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

uint64_t sub_2296E3834@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2296E91CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2296E3868(uint64_t a1)
{
  v2 = sub_2296E9178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E38A4(uint64_t a1)
{
  v2 = sub_2296E9178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BackFieldsJSON.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5F8, &qword_22A57E7C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E9178();
  sub_22A4DE80C();
  v8[15] = 0;
  sub_22A4DE54C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_22A4DE51C();
  v8[13] = 2;
  sub_22A4DE51C();
  v8[12] = 3;
  sub_22A4DE51C();
  return (*(v4 + 8))(v6, v3);
}

double BackFieldsJSON.init(from:)@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2296E9328(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

double sub_2296E3AE4@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2296E9328(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_2296E3B40()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_2296E3B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296E3C48(uint64_t a1)
{
  v2 = sub_2296E9610();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E3C84(uint64_t a1)
{
  v2 = sub_2296E9610();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2296E3D10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v20[2] = a3;
  v20[0] = a4;
  v20[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  (a8)(v15, v16, v17);
  sub_22A4DE80C();
  v22 = 0;
  v18 = v20[3];
  sub_22A4DE54C();
  if (!v18)
  {
    v21 = 1;
    sub_22A4DE54C();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2296E3EE4(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  result = sub_2296E9664(a1, a2, a3, a4, a5);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_2296E3F54@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = sub_2296E9664(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
    a6[2] = v10;
    a6[3] = v11;
  }

  return result;
}

uint64_t sub_2296E3FB4()
{
  v1 = 0x6E6564646968;
  if (*v0 != 1)
  {
    v1 = 0x696669746E656469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1937207154;
  }
}

uint64_t sub_2296E4008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2296E9890(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2296E4030(uint64_t a1)
{
  v2 = sub_2296E983C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296E406C(uint64_t a1)
{
  v2 = sub_2296E983C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PassDetailsSectionJSON.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F618, &qword_22A57E7D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E983C();
  sub_22A4DE80C();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  sub_2296E65D0(&qword_27D87F4E0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22A4DE59C();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[6] = 1;
  sub_22A4DE52C();
  v10[5] = 2;
  sub_22A4DE51C();
  return (*(v6 + 8))(v8, v5);
}

double PassDetailsSectionJSON.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2296E99AC(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

double sub_2296E42E4@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2296E99AC(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_2296E4344(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x800000022A592400 == a2;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E65526576696CLL && a2 == 0xEE00657079547265 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_22A4DE60C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C79654B656D6F68 && a2 == 0xEF65707954657669 || (sub_22A4DE60C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000022A592420 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372 || (sub_22A4DE60C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7462755364726163 && a2 == 0xEB00000000657079 || (sub_22A4DE60C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6564496D616574 && a2 == 0xEE00726569666974 || (sub_22A4DE60C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022A592440 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022A592460 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022A592480 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_22A4DE60C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x756F726765726F66 && a2 == 0xEF726F6C6F43646ELL || (sub_22A4DE60C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C6F436C6562616CLL && a2 == 0xEA0000000000726FLL || (sub_22A4DE60C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022A5924A0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022A5924C0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000021 && 0x800000022A5924E0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022A592510 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022A592530 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000025 && 0x800000022A592550 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000002DLL && 0x800000022A592580 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022A5925B0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022A5925D0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x43746E656D796170 && a2 == 0xEB00000000647261 || (sub_22A4DE60C() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022A5925F0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEF7265746E756F43 || (sub_22A4DE60C() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022A592610 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6E6172626F437369 && a2 == 0xEB00000000646564 || (sub_22A4DE60C() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61 || (sub_22A4DE60C() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000022A592630 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022A592650 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022A592670 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022A592690 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x6570795464726163 && a2 == 0xE800000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x6F666E4972657375 && a2 == 0xE800000000000000)
  {

    return 35;
  }

  else
  {
    v6 = sub_22A4DE60C();

    if (v6)
    {
      return 35;
    }

    else
    {
      return 36;
    }
  }
}

void *sub_2296E4E5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v95 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F818, &qword_22A57FC98);
  v96 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v5 = &v54 - v4;
  sub_22A4DD5EC();
  v97 = v6;
  v104 = 0x800000022A589290;
  v114 = 0x800000022A5892F0;
  v7 = a1[3];
  v109 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v7);
  sub_2296E0EA4();
  v98 = v5;
  sub_22A4DE7FC();
  if (v2)
  {
    v189 = v2;
    v8 = 0;
    v9 = 0;
    LODWORD(v98) = 0;
    LODWORD(v99) = 0;
    v108 = 0xEA00000000004554;
    v102 = 0xEB00000000656D61;
    v106 = 0xE300000000000000;
    v107 = 0xE400000000000000;
    v105 = MEMORY[0x277D84F90];
    v103 = 0xE600000000000000;
    v100 = 0x800000022A589350;
    v101 = 0x800000022A589310;
    v110 = v114;
    v111 = 0x800000022A5892D0;
    v10 = 0;
    v112 = 0x800000022A5892D0;
    v113 = v104;
    v104 = &unk_283CDBAC0;
  }

  else
  {
    v11 = v96;
    v93 = 0x800000022A589310;
    v94 = 0x800000022A5892D0;
    LOBYTE(v116) = 0;
    v12 = sub_22A4DE49C();
    v189 = 0;
    v15 = v12;
    v85 = v13;

    LOBYTE(v116) = 1;
    v16 = v189;
    v17 = sub_22A4DE49C();
    v19 = v114;
    if (v16)
    {
      v189 = v16;
      (*(v11 + 8))(v98, v99);
      v8 = 0;
      v9 = 0;
      LODWORD(v98) = 0;
      LODWORD(v99) = 0;
      v108 = 0xEA00000000004554;
      v102 = 0xEB00000000656D61;
      v106 = 0xE300000000000000;
      v107 = 0xE400000000000000;
      v105 = MEMORY[0x277D84F90];
      v103 = 0xE600000000000000;
      v100 = 0x800000022A589350;
      v101 = v93;
      v10 = 0;
      v110 = v19;
      v111 = v94;
      v112 = v94;
      v113 = v104;
      v104 = &unk_283CDBAC0;
    }

    else
    {
      v97 = v17;
      v92 = v18;
      LOBYTE(v116) = 2;
      v83 = sub_22A4DE49C();
      v84 = v20;
      LOBYTE(v116) = 3;
      v82 = sub_22A4DE49C();
      v91 = v21;
      LOBYTE(v116) = 4;
      v81 = sub_22A4DE49C();
      v90 = v22;
      LOBYTE(v116) = 5;
      v80 = sub_22A4DE4CC();
      LOBYTE(v116) = 6;
      v78 = sub_22A4DE4CC();
      LOBYTE(v116) = 7;
      v23 = sub_22A4DE49C();
      v79 = v24;
      v77 = v23;
      LOBYTE(v116) = 8;
      v76 = sub_22A4DE49C();
      v189 = 0;
      v25 = v15;
      v108 = v26;
      LOBYTE(v116) = 9;
      v27 = sub_22A4DE49C();
      v113 = v28;
      v189 = 0;
      v29 = v27;
      LOBYTE(v116) = 10;
      v30 = sub_22A4DE49C();
      v75 = v31;
      v189 = 0;
      v32 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F480, &qword_22A57E728);
      LOBYTE(v115[0]) = 11;
      sub_2296EBD90(&qword_27D87F820, MEMORY[0x277D83BB8], MEMORY[0x277D83978]);
      v33 = v189;
      sub_22A4DE4EC();
      v189 = v33;
      if (v33)
      {
        (*(v11 + 8))(v98, v99);
        LODWORD(v98) = 0;
        LODWORD(v99) = 0;
        v106 = 0xE300000000000000;
        v107 = 0xE400000000000000;
        v105 = MEMORY[0x277D84F90];
        v10 = 1;
        v102 = 0xEB00000000656D61;
        v103 = 0xE600000000000000;
        v8 = 1;
        v9 = 1;
        v100 = 0x800000022A589350;
        v101 = v93;
        v110 = v114;
        v111 = v94;
        v112 = v94;
        v104 = &unk_283CDBAC0;
      }

      else
      {
        v104 = v116;
        LOBYTE(v116) = 12;
        v74 = sub_22A4DE49C();
        v112 = v34;
        v189 = 0;
        LOBYTE(v116) = 13;
        v73 = sub_22A4DE49C();
        v111 = v35;
        v189 = 0;
        LOBYTE(v116) = 14;
        v72 = sub_22A4DE49C();
        v110 = v36;
        v189 = 0;
        LOBYTE(v116) = 15;
        v114 = sub_22A4DE49C();
        v107 = v37;
        v189 = 0;
        LOBYTE(v116) = 16;
        v71 = sub_22A4DE4AC();
        v189 = 0;
        LOBYTE(v116) = 17;
        v70 = sub_22A4DE49C();
        v106 = v38;
        v189 = 0;
        LOBYTE(v116) = 18;
        v69 = sub_22A4DE49C();
        v101 = v39;
        v189 = 0;
        LOBYTE(v116) = 19;
        v93 = sub_22A4DE49C();
        v100 = v40;
        v189 = 0;
        LOBYTE(v116) = 20;
        v68 = sub_22A4DE4AC();
        v189 = 0;
        LOBYTE(v116) = 21;
        v67 = sub_22A4DE4AC();
        v189 = 0;
        LOBYTE(v116) = 22;
        v41 = sub_22A4DE4CC();
        v189 = 0;
        v42 = v41;
        LOBYTE(v116) = 23;
        v66 = sub_22A4DE4CC();
        v189 = 0;
        LOBYTE(v115[0]) = 24;
        sub_2296EBDFC();
        v43 = v189;
        sub_22A4DE4EC();
        v189 = v43;
        if (v43)
        {
          (*(v11 + 8))(v98, v99);
          LODWORD(v98) = 0;
          LODWORD(v99) = 0;
          v105 = MEMORY[0x277D84F90];
          v10 = 1;
          v102 = 0xEB00000000656D61;
          v103 = 0xE600000000000000;
          v8 = 1;
          v9 = 1;
        }

        else
        {
          v88 = v117;
          v89 = v116;
          v87 = v118;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F498, &qword_22A57E730);
          LOBYTE(v115[0]) = 25;
          sub_2296EBE50();
          v44 = v189;
          sub_22A4DE4EC();
          v189 = v44;
          if (v44)
          {
            (*(v11 + 8))(v98, v99);
            LODWORD(v99) = 0;
            v105 = MEMORY[0x277D84F90];
            v10 = 1;
            v102 = 0xEB00000000656D61;
            v103 = 0xE600000000000000;
            v8 = 1;
            v9 = 1;
            LODWORD(v98) = 1;
          }

          else
          {
            v86 = v116;
            LOBYTE(v116) = 26;
            v65 = sub_22A4DE4CC();
            v189 = 0;
            LOBYTE(v115[0]) = 27;
            sub_22A4DE4EC();
            v189 = 0;
            v105 = v116;
            LOBYTE(v116) = 28;
            v64 = sub_22A4DE4AC();
            v189 = 0;
            LOBYTE(v116) = 29;
            v63 = sub_22A4DE49C();
            v102 = v45;
            v189 = 0;
            LOBYTE(v116) = 30;
            v62 = sub_22A4DE4AC();
            v189 = 0;
            LOBYTE(v116) = 31;
            v61 = sub_22A4DE4AC();
            v189 = 0;
            LOBYTE(v116) = 32;
            v60 = sub_22A4DE4AC();
            v189 = 0;
            LOBYTE(v116) = 33;
            v59 = sub_22A4DE49C();
            v189 = 0;
            v47 = v46;
            LOBYTE(v116) = 34;
            v94 = sub_22A4DE49C();
            v103 = v48;
            v189 = 0;
            v180 = 35;
            sub_2296EBF28();
            v49 = v189;
            sub_22A4DE48C();
            v189 = v49;
            if (!v49)
            {
              v58 = v68 & 1;
              v56 = v71 & 1;
              v57 = v67 & 1;
              v64 &= 1u;
              v71 = v62 & 1;
              v67 = v60 & 1;
              v68 = v61 & 1;
              (*(v11 + 8))(v98, v99);
              *(&v115[36] + 2) = v186;
              *(&v115[45] + 1) = *v185;
              *(&v115[29] + 1) = v188[0];
              HIDWORD(v115[29]) = *(v188 + 3);
              HIWORD(v115[36]) = v187;
              HIDWORD(v115[45]) = *&v185[3];
              *(&v115[48] + 3) = v183;
              HIBYTE(v115[48]) = v184;
              v98 = v182;
              v99 = v181;
              v55 = v25;
              v50 = v84;
              v115[0] = v25;
              v115[1] = v85;
              v115[2] = v97;
              v115[3] = v92;
              v115[4] = v83;
              v115[5] = v84;
              v115[6] = v82;
              v51 = v90;
              v115[7] = v91;
              v115[8] = v81;
              v115[9] = v90;
              v115[10] = v80;
              v115[11] = v78;
              v115[12] = v77;
              v115[13] = v79;
              v115[14] = v76;
              v115[15] = v108;
              v115[16] = v29;
              v115[17] = v113;
              v115[18] = v32;
              v115[19] = v75;
              v115[20] = v104;
              v115[21] = v74;
              v115[22] = v112;
              v115[23] = v73;
              v115[24] = v111;
              v115[25] = v72;
              v115[26] = v110;
              v115[27] = v114;
              v52 = v107;
              v115[28] = v107;
              LOBYTE(v115[29]) = v56;
              v115[30] = v70;
              v115[31] = v106;
              v115[32] = v69;
              v115[33] = v101;
              v115[34] = v93;
              v115[35] = v100;
              LOBYTE(v115[36]) = v58;
              BYTE1(v115[36]) = v57;
              v115[37] = v42;
              v53 = v66;
              v115[38] = v66;
              v115[39] = v89;
              v115[40] = v88;
              v115[41] = v87;
              v115[42] = v86;
              v115[43] = v65;
              v115[44] = v105;
              LOBYTE(v115[45]) = v64;
              v115[46] = v63;
              v115[47] = v102;
              LOBYTE(v115[48]) = v71;
              BYTE1(v115[48]) = v68;
              BYTE2(v115[48]) = v67;
              v115[49] = v59;
              v115[50] = v47;
              v115[51] = v94;
              v115[52] = v103;
              v115[53] = v181;
              v115[54] = v182;
              sub_2296EBF7C(v115, &v116);
              __swift_destroy_boxed_opaque_existential_0(v109);
              v116 = v55;
              v117 = v85;
              v118 = v97;
              v119 = v92;
              v120 = v83;
              v121 = v50;
              v122 = v82;
              v123 = v91;
              v124 = v81;
              v125 = v51;
              v126 = v80;
              v127 = v78;
              v128 = v77;
              v129 = v79;
              v130 = v76;
              v131 = v108;
              v132 = v29;
              v133 = v113;
              v134 = v32;
              v135 = v75;
              v136 = v104;
              v137 = v74;
              v138 = v112;
              v139 = v73;
              v140 = v111;
              v141 = v72;
              v142 = v110;
              v143 = v114;
              v144 = v52;
              v145 = v56;
              *v146 = v188[0];
              *&v146[3] = *(v188 + 3);
              v147 = v70;
              v148 = v106;
              v149 = v69;
              v150 = v101;
              v151 = v93;
              v152 = v100;
              v153 = v58;
              v154 = v57;
              v155 = v186;
              v156 = v187;
              v157 = v42;
              v158 = v53;
              v159 = v89;
              v160 = v88;
              v161 = v87;
              v162 = v86;
              v163 = v65;
              v164 = v105;
              v165 = v64;
              *v166 = *v185;
              *&v166[3] = *&v185[3];
              v167 = v63;
              v168 = v102;
              v169 = v71;
              v170 = v68;
              v171 = v67;
              v172 = v183;
              v173 = v184;
              v174 = v59;
              v175 = v47;
              v176 = v94;
              v177 = v103;
              v178 = v99;
              v179 = v98;
              sub_2296EBFB4(&v116);
              return memcpy(v95, v115, 0x1B8uLL);
            }

            (*(v11 + 8))(v98, v99);
            v10 = 1;
            v8 = 1;
            v9 = 1;
            LODWORD(v98) = 1;
            LODWORD(v99) = 1;
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v109);

  if (v10)
  {
  }

  if (v8)
  {
  }

  if (v9)
  {
  }

  if (v98)
  {
  }

  if (v99)
  {
  }
}

unint64_t sub_2296E6528()
{
  result = qword_27D87F4C0;
  if (!qword_27D87F4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4C0);
  }

  return result;
}

unint64_t sub_2296E657C()
{
  result = qword_27D87F4D8;
  if (!qword_27D87F4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4D8);
  }

  return result;
}

uint64_t sub_2296E65D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87E400, "ll\b");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2296E663C()
{
  result = qword_27D87F4F0;
  if (!qword_27D87F4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F4E8, &qword_22A57E758);
    sub_2296E66C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4F0);
  }

  return result;
}

unint64_t sub_2296E66C0()
{
  result = qword_27D87F4F8;
  if (!qword_27D87F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F4F8);
  }

  return result;
}

unint64_t sub_2296E674C()
{
  result = qword_27D87F500;
  if (!qword_27D87F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F500);
  }

  return result;
}

unint64_t sub_2296E67D0()
{
  result = qword_27D87F510;
  if (!qword_27D87F510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F508, &qword_22A57E760);
    sub_2296E6854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F510);
  }

  return result;
}

unint64_t sub_2296E6854()
{
  result = qword_27D87F518;
  if (!qword_27D87F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F518);
  }

  return result;
}

uint64_t sub_2296E68A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E656D796170 && a2 == 0xEB00000000657079;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022A5926D0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022A5926F0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6564494E415044 && a2 == 0xEE00726569666974 || (sub_22A4DE60C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x666675534E415044 && a2 == 0xEA00000000007869 || (sub_22A4DE60C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022A592710 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x800000022A592730 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x800000022A592750 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022A592770 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000019 && 0x800000022A592790 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022A5927B0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000022 && 0x800000022A5927D0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022A592800 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000022A592820 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6564657263627573 && a2 == 0xED00006C6169746ELL || (sub_22A4DE60C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022A592840 == a2)
  {

    return 16;
  }

  else
  {
    v6 = sub_22A4DE60C();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

void *sub_2296E6DE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F7E8, &qword_22A57FC90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  v9 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v9);
  sub_2296E657C();
  sub_22A4DE7FC();
  if (v2)
  {
    v101 = v2;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    LODWORD(v55) = 0;
    LODWORD(v56) = 0;
    v58 = 0xE400000000000000;
    goto LABEL_4;
  }

  v10 = a2;
  LOBYTE(v60) = 0;
  v16 = sub_22A4DE49C();
  v50 = v17;
  LOBYTE(v60) = 1;
  v18 = sub_22A4DE4CC();
  LOBYTE(v60) = 2;
  v19 = sub_22A4DE49C();
  v54 = v20;
  LOBYTE(v60) = 3;
  v56 = sub_22A4DE49C();
  v53 = v21;
  LOBYTE(v60) = 4;
  v55 = sub_22A4DE49C();
  v52 = v22;
  LOBYTE(v60) = 5;
  v49 = sub_22A4DE49C();
  v51 = v23;
  LOBYTE(v60) = 6;
  v48 = sub_22A4DE4CC();
  LOBYTE(v60) = 7;
  v24 = sub_22A4DE4CC();
  *(&v46 + 1) = v19;
  v47 = v24;
  LOBYTE(v60) = 8;
  v25 = sub_22A4DE4CC();
  v101 = 0;
  v26 = v25;
  *&v46 = v18;
  v44 = v16;
  v27 = v6;
  LOBYTE(v60) = 9;
  v45 = sub_22A4DE49C();
  v58 = v28;
  v101 = 0;
  LOBYTE(v60) = 10;
  LODWORD(v43) = sub_22A4DE4AC();
  v101 = 0;
  LOBYTE(v60) = 11;
  v42 = sub_22A4DE4CC();
  v101 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  LOBYTE(v59[0]) = 12;
  sub_2296E65D0(&qword_27D87F750, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v29 = v101;
  sub_22A4DE4EC();
  v101 = v29;
  if (v29)
  {
    (*(v6 + 8))(v8, v5);
    LODWORD(v55) = 0;
    LODWORD(v56) = 0;
    v11 = 1;
    v12 = 1;
    v13 = 1;
    v14 = 1;
    goto LABEL_4;
  }

  v30 = v60;
  LOBYTE(v60) = 13;
  v40 = sub_22A4DE49C();
  v41 = v31;
  v101 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F4E8, &qword_22A57E758);
  LOBYTE(v59[0]) = 14;
  sub_2296EBB24();
  v32 = v101;
  sub_22A4DE4EC();
  v101 = v32;
  if (v32)
  {
    (*(v6 + 8))(v8, v5);
    LODWORD(v56) = 0;
LABEL_24:
    v11 = 1;
    v12 = 1;
    v13 = 1;
    v14 = 1;
    LODWORD(v55) = 1;
    goto LABEL_4;
  }

  v33 = v60;
  v87 = 15;
  sub_2296EBBFC();
  v34 = v101;
  sub_22A4DE4EC();
  v101 = v34;
  if (v34)
  {
    (*(v27 + 8))(v8, v5);
    LODWORD(v56) = 0;
    goto LABEL_24;
  }

  v96 = v90;
  v97 = v91;
  v98 = v92;
  v99 = v93;
  v94 = v88;
  v95 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F508, &qword_22A57E760);
  v85 = 16;
  sub_2296EBC50();
  v35 = v101;
  sub_22A4DE4EC();
  v101 = v35;
  if (!v35)
  {
    v36 = v43 & 1;
    (*(v27 + 8))(v8, v5);
    v43 = v86;
    v37 = v44;
    v38 = v50;
    *&v59[0] = v44;
    *(&v59[0] + 1) = v50;
    v59[1] = v46;
    v39 = v54;
    *&v59[2] = v54;
    *(&v59[2] + 1) = v56;
    *&v59[3] = v53;
    *(&v59[3] + 1) = v55;
    *&v59[4] = v52;
    *(&v59[4] + 1) = v49;
    *&v59[5] = v51;
    *(&v59[5] + 1) = v48;
    *&v59[6] = v47;
    *(&v59[6] + 1) = v26;
    *&v59[7] = v45;
    *(&v59[7] + 1) = v58;
    LOBYTE(v59[8]) = v36;
    *(&v59[8] + 1) = v42;
    *&v59[9] = v30;
    *(&v59[9] + 1) = v40;
    *&v59[10] = v41;
    *(&v59[10] + 1) = v33;
    v59[13] = v96;
    v59[14] = v97;
    v59[15] = v98;
    v59[11] = v94;
    v59[12] = v95;
    *&v59[16] = v99;
    *(&v59[16] + 1) = v86;
    sub_2296EBD28(v59, &v60);
    __swift_destroy_boxed_opaque_existential_0(v57);
    *&v60 = v37;
    *(&v60 + 1) = v38;
    v61 = v46;
    *&v62 = v39;
    *(&v62 + 1) = v56;
    *&v63 = v53;
    *(&v63 + 1) = v55;
    *&v64 = v52;
    *(&v64 + 1) = v49;
    v65 = v51;
    v66 = v48;
    v67 = v47;
    v68 = v26;
    v69 = v45;
    v70 = v58;
    v71 = v36;
    *&v72[3] = *(v100 + 3);
    *v72 = v100[0];
    v73 = v42;
    v74 = v30;
    v75 = v40;
    v76 = v41;
    v77 = v33;
    v80 = v96;
    v81 = v97;
    v82 = v98;
    v78 = v94;
    v79 = v95;
    v83 = v99;
    v84 = v43;
    sub_2296EBD60(&v60);
    return memcpy(v10, v59, 0x110uLL);
  }

  (*(v27 + 8))(v8, v5);
  v11 = 1;
  v12 = 1;
  v13 = 1;
  v14 = 1;
  LODWORD(v55) = 1;
  LODWORD(v56) = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v57);

  if (v11)
  {

    if (!v12)
    {
      goto LABEL_6;
    }

LABEL_16:

    if (!v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v12)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v13)
  {
LABEL_7:
  }

LABEL_8:

  if (v14)
  {
  }

  if (v55)
  {
  }

  if (v56)
  {
    v62 = v96;
    v63 = v97;
    v64 = v98;
    v65 = v99;
    v60 = v94;
    v61 = v95;
    return sub_2296E67A0(&v60);
  }

  return result;
}

unint64_t sub_2296E779C()
{
  result = qword_27D87F528;
  if (!qword_27D87F528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F528);
  }

  return result;
}

uint64_t sub_2296E77F0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022A592860 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022A592800 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000022A592880 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x616D726F466F7369 && a2 == 0xE900000000000074 || (sub_22A4DE60C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000017 && 0x800000022A5928A0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

uint64_t sub_2296E7A4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F7E0, &qword_22A57FC88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E779C();
  sub_22A4DE7FC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v38[0]) = 0;
    v9 = sub_22A4DE4CC();
    LOBYTE(v38[0]) = 1;
    v29 = sub_22A4DE49C();
    v31 = v10;
    LOBYTE(v38[0]) = 2;
    v11 = sub_22A4DE49C();
    v30 = v12;
    v27 = v11;
    LOBYTE(v38[0]) = 3;
    v26 = sub_22A4DE49C();
    v28 = v13;
    LOBYTE(v38[0]) = 4;
    v25 = sub_22A4DE4DC();
    LOBYTE(v38[0]) = 5;
    *&v24 = sub_22A4DE46C();
    *(&v24 + 1) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    v41 = 6;
    sub_2296E65D0(&qword_27D87F750, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22A4DE48C();
    (*(v6 + 8))(v8, v5);
    v23 = v42;
    *&v32 = v9;
    v15 = v29;
    *(&v32 + 1) = v29;
    v16 = v31;
    v17 = v27;
    *&v33 = v31;
    *(&v33 + 1) = v27;
    v18 = v30;
    *&v34 = v30;
    *(&v34 + 1) = v26;
    v19 = v28;
    *&v35 = v28;
    *(&v35 + 1) = v25;
    v36 = v24;
    v37 = v42;
    sub_2296E6714(&v32, v38);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v38[0] = v9;
    v38[1] = v15;
    v38[2] = v16;
    v38[3] = v17;
    v38[4] = v18;
    v38[5] = v26;
    v38[6] = v19;
    v38[7] = v25;
    v39 = v24;
    v40 = v23;
    result = sub_2296E67A0(v38);
    v21 = v35;
    *(a2 + 32) = v34;
    *(a2 + 48) = v21;
    *(a2 + 64) = v36;
    *(a2 + 80) = v37;
    v22 = v33;
    *a2 = v32;
    *(a2 + 16) = v22;
  }

  return result;
}

unint64_t sub_2296E7F30()
{
  result = qword_27D87F538;
  if (!qword_27D87F538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F538);
  }

  return result;
}

unint64_t sub_2296E7F84()
{
  result = qword_27D87F548;
  if (!qword_27D87F548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F540, &qword_22A57E778);
    sub_2296E8008();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F548);
  }

  return result;
}

unint64_t sub_2296E8008()
{
  result = qword_27D87F550;
  if (!qword_27D87F550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F550);
  }

  return result;
}

uint64_t sub_2296E805C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1936286580 && a2 == 0xE400000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEF73736572707845 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000022A5928C0 == a2 || (sub_22A4DE60C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4449726564616572 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

uint64_t sub_2296E8224@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F7C8, &qword_22A57FC80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E7F30();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v23) = 0;
  v20 = sub_22A4DE49C();
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v22 = 1;
  v10 = sub_2296E65D0(&qword_27D87F750, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_22A4DE4EC();
  v19 = v10;
  v11 = v23;
  LOBYTE(v23) = 2;
  v12 = sub_22A4DE4AC();
  v13 = v11;
  LOBYTE(v11) = v12;
  v18 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F540, &qword_22A57E778);
  v22 = 3;
  sub_2296EBA4C();
  sub_22A4DE48C();
  v17 = v23;
  v22 = 4;
  sub_22A4DE48C();
  (*(v6 + 8))(v8, v5);
  v14 = v23;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v16 = v21;
  *a2 = v20;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18;
  *(a2 + 24) = v11 & 1;
  *(a2 + 32) = v17;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_2296E8530()
{
  result = qword_27D87F560;
  if (!qword_27D87F560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F560);
  }

  return result;
}

uint64_t sub_2296E8584(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F7C0, &qword_22A57FC78);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E8530();
  sub_22A4DE7FC();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_22A4DE49C();
    v9[14] = 1;
    sub_22A4DE4CC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_2296E875C()
{
  result = qword_27D87F570;
  if (!qword_27D87F570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F570);
  }

  return result;
}

unint64_t sub_2296E87B0()
{
  result = qword_27D87F580;
  if (!qword_27D87F580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F580);
  }

  return result;
}

unint64_t sub_2296E8804()
{
  result = qword_27D87F590;
  if (!qword_27D87F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F588, &qword_22A57E798);
    sub_2296E8888();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F590);
  }

  return result;
}

unint64_t sub_2296E8888()
{
  result = qword_27D87F598;
  if (!qword_27D87F598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F598);
  }

  return result;
}

uint64_t sub_2296E88DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F7A0, &qword_22A57FC68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E87B0();
  sub_22A4DE7FC();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_22A4DE49C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F588, &qword_22A57E798);
    v9[15] = 1;
    sub_2296EB974();
    sub_22A4DE4EC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_2296E8AE0()
{
  result = qword_27D87F5A8;
  if (!qword_27D87F5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5A8);
  }

  return result;
}

unint64_t sub_2296E8B34()
{
  result = qword_27D87F5B8;
  if (!qword_27D87F5B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5B0, &qword_22A57E7A8);
    sub_2296E8BB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5B8);
  }

  return result;
}

unint64_t sub_2296E8BB8()
{
  result = qword_27D87F5C0;
  if (!qword_27D87F5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5C0);
  }

  return result;
}

unint64_t sub_2296E8C0C()
{
  result = qword_27D87F5D0;
  if (!qword_27D87F5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5C8, &qword_22A57E7B0);
    sub_2296E8C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5D0);
  }

  return result;
}

unint64_t sub_2296E8C90()
{
  result = qword_27D87F5D8;
  if (!qword_27D87F5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5D8);
  }

  return result;
}

unint64_t sub_2296E8CE4()
{
  result = qword_27D87F5E8;
  if (!qword_27D87F5E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5E0, &qword_22A57E7B8);
    sub_2296E8D68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5E8);
  }

  return result;
}

unint64_t sub_2296E8D68()
{
  result = qword_27D87F5F0;
  if (!qword_27D87F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F5F0);
  }

  return result;
}

uint64_t sub_2296E8DBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6946726564616568 && a2 == 0xEC00000073646C65;
  if (v4 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6569466B636162 && a2 == 0xEA00000000007364 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000022A5928E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

uint64_t sub_2296E8EE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F768, &qword_22A57FC60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E8AE0();
  sub_22A4DE7FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5B0, &qword_22A57E7A8);
  HIBYTE(v8) = 0;
  sub_2296EB6EC();
  sub_22A4DE4EC();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5C8, &qword_22A57E7B0);
  HIBYTE(v8) = 1;
  sub_2296EB7C4();
  sub_22A4DE48C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F5E0, &qword_22A57E7B8);
  HIBYTE(v8) = 2;
  sub_2296EB89C();
  sub_22A4DE48C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_2296E9178()
{
  result = qword_27D87F600;
  if (!qword_27D87F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F600);
  }

  return result;
}

uint64_t sub_2296E91CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_22A4DE60C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2296E9328@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F760, &qword_22A57FC58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E9178();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = sub_22A4DE49C();
  v11 = v10;
  v28 = v9;
  LOBYTE(v33[0]) = 1;
  *&v27 = sub_22A4DE46C();
  *(&v27 + 1) = v12;
  LOBYTE(v33[0]) = 2;
  v13 = sub_22A4DE46C();
  v15 = v14;
  v26 = v13;
  v39 = 3;
  v16 = sub_22A4DE46C();
  v17 = v8;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  v20 = v28;
  *&v29 = v28;
  *(&v29 + 1) = v11;
  v21 = v27;
  v30 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v15;
  *&v32 = v16;
  *(&v32 + 1) = v19;
  sub_2296EB684(&v29, v33);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v33[0] = v20;
  v33[1] = v11;
  v34 = __PAIR128__(*(&v27 + 1), v21);
  v35 = v26;
  v36 = v15;
  v37 = v16;
  v38 = v19;
  result = sub_2296EB6BC(v33);
  v23 = v30;
  *a2 = v29;
  a2[1] = v23;
  v24 = v32;
  a2[2] = v31;
  a2[3] = v24;
  return result;
}

unint64_t sub_2296E9610()
{
  result = qword_27D87F610;
  if (!qword_27D87F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F610);
  }

  return result;
}

uint64_t sub_2296E9664(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v15 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_0(a1, v11);
  a4();
  sub_22A4DE7FC();
  if (!v5)
  {
    v12 = v15;
    v17 = 0;
    v11 = sub_22A4DE49C();
    v16 = 1;
    sub_22A4DE49C();
    (*(v12 + 8))(v10, v8);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

unint64_t sub_2296E983C()
{
  result = qword_27D87F620;
  if (!qword_27D87F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F620);
  }

  return result;
}

uint64_t sub_2296E9890(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1937207154 && a2 == 0xE400000000000000;
  if (v3 || (sub_22A4DE60C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000 || (sub_22A4DE60C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    return 2;
  }

  else
  {
    v6 = sub_22A4DE60C();

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

uint64_t sub_2296E99AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F748, &qword_22A57FC48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296E983C();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  v21 = 0;
  sub_2296E65D0(&qword_27D87F750, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_22A4DE4EC();
  v9 = v22;
  v20 = 1;
  v10 = sub_22A4DE47C();
  v18 = v11;
  v17 = v10;
  v19 = 2;
  v12 = sub_22A4DE46C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v16 = v17;
  *a2 = v9;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  return result;
}

uint64_t sub_2296E9C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 440))
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

uint64_t sub_2296E9C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 440) = 1;
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

    *(result + 440) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2296E9D28(uint64_t a1, int a2)
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

uint64_t sub_2296E9D70(uint64_t result, int a2, int a3)
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

uint64_t sub_2296E9DC4(uint64_t a1, int a2)
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

uint64_t sub_2296E9E0C(uint64_t result, int a2, int a3)
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

uint64_t sub_2296E9EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2296E9F0C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2296E9F84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2296E9FCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2296EA048(uint64_t a1, int a2)
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

uint64_t sub_2296EA090(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2296EA104(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2296EA14C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2296EA1AC(uint64_t a1, int a2)
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

uint64_t sub_2296EA1F4(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DefaultEnergyGuidanceServerV2.GuidanceForecastValueStruct.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AutomaticSelectionCriteriaJSON.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutomaticSelectionCriteriaJSON.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubcredentialJSON.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SubcredentialJSON.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PaymentApplicationJSON.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_17;
  }

  if (a2 + 16 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 16) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 16;
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

      return (*a1 | (v4 << 8)) - 16;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 16;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v8 = v6 - 17;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PaymentApplicationJSON.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF0)
  {
    v4 = 0;
  }

  if (a2 > 0xEF)
  {
    v5 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserInfoJSON.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UserInfoJSON.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for PassJSON.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PassJSON.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2296EAA28()
{
  result = qword_27D87F628;
  if (!qword_27D87F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F628);
  }

  return result;
}

unint64_t sub_2296EAA80()
{
  result = qword_27D87F630;
  if (!qword_27D87F630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F630);
  }

  return result;
}

unint64_t sub_2296EAAD8()
{
  result = qword_27D87F638;
  if (!qword_27D87F638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F638);
  }

  return result;
}

unint64_t sub_2296EAB30()
{
  result = qword_27D87F640;
  if (!qword_27D87F640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F640);
  }

  return result;
}

unint64_t sub_2296EAB88()
{
  result = qword_27D87F648;
  if (!qword_27D87F648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F648);
  }

  return result;
}

unint64_t sub_2296EABE0()
{
  result = qword_27D87F650;
  if (!qword_27D87F650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F650);
  }

  return result;
}

unint64_t sub_2296EAC38()
{
  result = qword_27D87F658;
  if (!qword_27D87F658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F658);
  }

  return result;
}

unint64_t sub_2296EAC90()
{
  result = qword_27D87F660;
  if (!qword_27D87F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F660);
  }

  return result;
}

unint64_t sub_2296EACE8()
{
  result = qword_27D87F668;
  if (!qword_27D87F668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F668);
  }

  return result;
}

unint64_t sub_2296EAD40()
{
  result = qword_27D87F670;
  if (!qword_27D87F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F670);
  }

  return result;
}

unint64_t sub_2296EAD98()
{
  result = qword_27D87F678;
  if (!qword_27D87F678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F678);
  }

  return result;
}

unint64_t sub_2296EADF0()
{
  result = qword_27D87F680;
  if (!qword_27D87F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F680);
  }

  return result;
}

unint64_t sub_2296EAE48()
{
  result = qword_27D87F688;
  if (!qword_27D87F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F688);
  }

  return result;
}

unint64_t sub_2296EAEA0()
{
  result = qword_27D87F690;
  if (!qword_27D87F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F690);
  }

  return result;
}

unint64_t sub_2296EAEF8()
{
  result = qword_27D87F698;
  if (!qword_27D87F698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F698);
  }

  return result;
}

unint64_t sub_2296EAF50()
{
  result = qword_27D87F6A0;
  if (!qword_27D87F6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6A0);
  }

  return result;
}

unint64_t sub_2296EAFA8()
{
  result = qword_27D87F6A8;
  if (!qword_27D87F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6A8);
  }

  return result;
}

unint64_t sub_2296EB000()
{
  result = qword_27D87F6B0;
  if (!qword_27D87F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6B0);
  }

  return result;
}

unint64_t sub_2296EB058()
{
  result = qword_27D87F6B8;
  if (!qword_27D87F6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6B8);
  }

  return result;
}

unint64_t sub_2296EB0B0()
{
  result = qword_27D87F6C0;
  if (!qword_27D87F6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6C0);
  }

  return result;
}

unint64_t sub_2296EB108()
{
  result = qword_27D87F6C8;
  if (!qword_27D87F6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6C8);
  }

  return result;
}

unint64_t sub_2296EB160()
{
  result = qword_27D87F6D0;
  if (!qword_27D87F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6D0);
  }

  return result;
}

unint64_t sub_2296EB1B8()
{
  result = qword_27D87F6D8;
  if (!qword_27D87F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6D8);
  }

  return result;
}

unint64_t sub_2296EB210()
{
  result = qword_27D87F6E0;
  if (!qword_27D87F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6E0);
  }

  return result;
}

unint64_t sub_2296EB268()
{
  result = qword_27D87F6E8;
  if (!qword_27D87F6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6E8);
  }

  return result;
}

unint64_t sub_2296EB2C0()
{
  result = qword_27D87F6F0;
  if (!qword_27D87F6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6F0);
  }

  return result;
}

unint64_t sub_2296EB318()
{
  result = qword_27D87F6F8;
  if (!qword_27D87F6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F6F8);
  }

  return result;
}

unint64_t sub_2296EB370()
{
  result = qword_27D87F700;
  if (!qword_27D87F700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F700);
  }

  return result;
}

unint64_t sub_2296EB3C8()
{
  result = qword_27D87F708;
  if (!qword_27D87F708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F708);
  }

  return result;
}

unint64_t sub_2296EB420()
{
  result = qword_27D87F710;
  if (!qword_27D87F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F710);
  }

  return result;
}

unint64_t sub_2296EB478()
{
  result = qword_27D87F718;
  if (!qword_27D87F718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F718);
  }

  return result;
}

unint64_t sub_2296EB4D0()
{
  result = qword_27D87F720;
  if (!qword_27D87F720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F720);
  }

  return result;
}

unint64_t sub_2296EB528()
{
  result = qword_27D87F728;
  if (!qword_27D87F728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F728);
  }

  return result;
}

unint64_t sub_2296EB580()
{
  result = qword_27D87F730;
  if (!qword_27D87F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F730);
  }

  return result;
}

unint64_t sub_2296EB5D8()
{
  result = qword_27D87F738;
  if (!qword_27D87F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F738);
  }

  return result;
}

unint64_t sub_2296EB630()
{
  result = qword_27D87F740;
  if (!qword_27D87F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F740);
  }

  return result;
}

unint64_t sub_2296EB6EC()
{
  result = qword_27D87F770;
  if (!qword_27D87F770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5B0, &qword_22A57E7A8);
    sub_2296EB770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F770);
  }

  return result;
}

unint64_t sub_2296EB770()
{
  result = qword_27D87F778;
  if (!qword_27D87F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F778);
  }

  return result;
}

unint64_t sub_2296EB7C4()
{
  result = qword_27D87F780;
  if (!qword_27D87F780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5C8, &qword_22A57E7B0);
    sub_2296EB848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F780);
  }

  return result;
}

unint64_t sub_2296EB848()
{
  result = qword_27D87F788;
  if (!qword_27D87F788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F788);
  }

  return result;
}

unint64_t sub_2296EB89C()
{
  result = qword_27D87F790;
  if (!qword_27D87F790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F5E0, &qword_22A57E7B8);
    sub_2296EB920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F790);
  }

  return result;
}

unint64_t sub_2296EB920()
{
  result = qword_27D87F798;
  if (!qword_27D87F798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F798);
  }

  return result;
}

unint64_t sub_2296EB974()
{
  result = qword_27D87F7A8;
  if (!qword_27D87F7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F588, &qword_22A57E798);
    sub_2296EB9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7A8);
  }

  return result;
}

unint64_t sub_2296EB9F8()
{
  result = qword_27D87F7B0;
  if (!qword_27D87F7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7B0);
  }

  return result;
}

unint64_t sub_2296EBA4C()
{
  result = qword_27D87F7D0;
  if (!qword_27D87F7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F540, &qword_22A57E778);
    sub_2296EBAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7D0);
  }

  return result;
}

unint64_t sub_2296EBAD0()
{
  result = qword_27D87F7D8;
  if (!qword_27D87F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7D8);
  }

  return result;
}

unint64_t sub_2296EBB24()
{
  result = qword_27D87F7F0;
  if (!qword_27D87F7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F4E8, &qword_22A57E758);
    sub_2296EBBA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7F0);
  }

  return result;
}

unint64_t sub_2296EBBA8()
{
  result = qword_27D87F7F8;
  if (!qword_27D87F7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F7F8);
  }

  return result;
}

unint64_t sub_2296EBBFC()
{
  result = qword_27D87F800;
  if (!qword_27D87F800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F800);
  }

  return result;
}

unint64_t sub_2296EBC50()
{
  result = qword_27D87F808;
  if (!qword_27D87F808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F508, &qword_22A57E760);
    sub_2296EBCD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F808);
  }

  return result;
}

unint64_t sub_2296EBCD4()
{
  result = qword_27D87F810;
  if (!qword_27D87F810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F810);
  }

  return result;
}

uint64_t sub_2296EBD90(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F480, &qword_22A57E728);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2296EBDFC()
{
  result = qword_27D87F828;
  if (!qword_27D87F828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F828);
  }

  return result;
}

unint64_t sub_2296EBE50()
{
  result = qword_27D87F830;
  if (!qword_27D87F830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F498, &qword_22A57E730);
    sub_2296EBED4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F830);
  }

  return result;
}

unint64_t sub_2296EBED4()
{
  result = qword_27D87F838;
  if (!qword_27D87F838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F838);
  }

  return result;
}

unint64_t sub_2296EBF28()
{
  result = qword_27D87F840;
  if (!qword_27D87F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F840);
  }

  return result;
}

void sub_2296EC0BC(uint64_t a1)
{
  sub_2296EC784(319, &qword_27D87F860, MEMORY[0x277CC95F0], &off_2818936F8);
  if (v1 <= 0x3F)
  {
    sub_2296EC1B4(319);
    if (v2 <= 0x3F)
    {
      sub_2296EC83C(319, &qword_27D87F878, MEMORY[0x277D839B0], &off_281893718);
      if (v3 <= 0x3F)
      {
        sub_2296EC24C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2296EC1B4(uint64_t a1)
{
  if (!qword_27D87E728)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87D2A0, &unk_22A578BD0);
    v3 = sub_2296EC2E4(&qword_27D87E730, &unk_27D87D2A0, &unk_22A578BD0);
    v5 = _s7SecuredVMa(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D87E728);
    }
  }
}

void sub_2296EC24C(uint64_t a1)
{
  if (!qword_27D87F880)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D87EC90, &unk_22A57CFD0);
    v3 = sub_2296EC2E4(&qword_27D87F888, &unk_27D87EC90, &unk_22A57CFD0);
    v5 = _s7SecuredVMa(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D87F880);
    }
  }
}

uint64_t sub_2296EC2E4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F848, "\b1\b");
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F848, "\b1\b");
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2296EC488(uint64_t a1)
{
  sub_2296EC784(319, &qword_27D87F860, MEMORY[0x277CC95F0], &off_2818936F8);
  if (v1 <= 0x3F)
  {
    sub_2296EC83C(319, &qword_27D87CC08, MEMORY[0x277D84CC0], &off_281893698);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2296EC590(uint64_t a1)
{
  sub_2296EC83C(319, &qword_27D87CC08, MEMORY[0x277D84CC0], &off_281893698);
  if (v1 <= 0x3F)
  {
    sub_2296EC83C(319, &qword_27D87F8B8, MEMORY[0x277D837D0], &off_2818936D8);
    if (v2 <= 0x3F)
    {
      sub_2296EC784(319, &qword_27D87F860, MEMORY[0x277CC95F0], &off_2818936F8);
      if (v3 <= 0x3F)
      {
        sub_2296EC784(319, &qword_27D87F8C0, MEMORY[0x277CC9578], &off_281893738);
        if (v4 <= 0x3F)
        {
          _s21EventMetadataInternalV4HomeVMa(319);
          if (v5 <= 0x3F)
          {
            sub_2296EC7E8(319, &qword_27D87F8C8, _s21EventMetadataInternalV6DeviceVMa);
            if (v6 <= 0x3F)
            {
              _s21EventMetadataInternalV6DeviceVMa(319);
              if (v7 <= 0x3F)
              {
                sub_2296EC7E8(319, &qword_27D87F8D0, _s21EventMetadataInternalV4UserVMa);
                if (v8 <= 0x3F)
                {
                  sub_2296EC83C(319, &qword_27D87F8D8, MEMORY[0x277D84D38], &off_2818936B8);
                  if (v9 <= 0x3F)
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

void sub_2296EC784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = _s7SecuredVMa(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2296EC7E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22A4DDF9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2296EC83C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = _s7SecuredVMa(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2296EC8D4(__int128 *a1)
{
  v3 = sub_22A4DD34C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  v10 = sub_22A4DB7DC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1[2])
  {
    (*(v11 + 16))(v13, v1, v10);
  }

  else
  {
    v24 = *a1;
    v25 = v24;
    sub_229588C00(&v25, &v22);
    sub_22A4DD33C();
    v15 = *(a1 + 2);
    v14 = *(a1 + 3);

    *&v24 = sub_22958F6F4(v15, v14);
    *(&v24 + 1) = v16;
    v22 = sub_22970DA38();
    v23 = v17;
    sub_22A4DD36C();
    sub_2296EEA2C(&qword_27D87D2D0, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_229588CA4();
    sub_22A4DD35C();
    v18 = *(v4 + 8);
    v18(v7, v3);
    sub_2295798D4(v22, v23);
    sub_2295798D4(v24, *(&v24 + 1));
    sub_22A4DD32C();
    v18(v9, v3);
  }

  v19 = sub_22A4DB76C();
  (*(v11 + 8))(v13, v10);
  return v19;
}

uint64_t sub_2296ECBC4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  v13 = *v1;
  *(&v39 + 1) = MEMORY[0x277D84CC0];
  v40 = &off_283CDFC58;
  LODWORD(v38) = v13;
  sub_229890DC4(&v38, 0x6556616D65686373, 0xED00006E6F697372);
  v15 = *(v1 + 1);
  v14 = *(v1 + 2);
  v16 = MEMORY[0x277D837D0];
  *(&v39 + 1) = MEMORY[0x277D837D0];
  v40 = &off_283CDFC68;
  *&v38 = v15;
  *(&v38 + 1) = v14;

  sub_229890DC4(&v38, 0x6D614E746E657665, 0xE900000000000065);
  v17 = _s21EventMetadataInternalVMa(0);
  v42 = *(a1 + 32);
  v18 = *(a1 + 16);
  v41[0] = *a1;
  v41[1] = v18;
  *(&v39 + 1) = v16;
  v40 = &off_283CDFC68;
  *&v38 = sub_2296EC8D4(v41);
  *(&v38 + 1) = v19;
  sub_229890DC4(&v38, 0x495555746E657665, 0xE900000000000044);
  v20 = v17[7];
  *(&v39 + 1) = v16;
  v40 = &off_283CDFC68;
  v21 = sub_22A4DB74C();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v12, v2 + v20, v21);
  (*(v22 + 56))(v12, 0, 1, v21);
  v23 = sub_2297C337C(v12);
  v25 = v24;
  sub_22953EAE4(v12, &unk_27D881AA0, &qword_22A57BC20);
  *&v38 = v23;
  *(&v38 + 1) = v25;
  sub_229890DC4(&v38, 0x6D617473656D6974, 0xE900000000000070);
  v26 = v17[8];
  *(&v39 + 1) = _s21EventMetadataInternalV4HomeVMa(0);
  v40 = &off_283CE1708;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
  sub_2296EEB04(v2 + v26, boxed_opaque_existential_1, _s21EventMetadataInternalV4HomeVMa);
  sub_2297A1124(1701670760, 0xE400000000000000, &v38);
  sub_22953EAE4(&v38, &qword_27D882000, &qword_22A578390);
  sub_229564F88(v2 + v17[9], v9, &qword_27D87CBE8, &qword_22A577890);
  v28 = _s21EventMetadataInternalV6DeviceVMa(0);
  if ((*(*(v28 - 8) + 48))(v9, 1, v28) == 1)
  {
    sub_22953EAE4(v9, &qword_27D87CBE8, &qword_22A577890);
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
  }

  else
  {
    *(&v39 + 1) = v28;
    v40 = &off_283CE16E8;
    v29 = __swift_allocate_boxed_opaque_existential_1(&v38);
    sub_2296EEB6C(v9, v29, _s21EventMetadataInternalV6DeviceVMa);
  }

  sub_2297A1124(0x656369766564, 0xE600000000000000, &v38);
  sub_22953EAE4(&v38, &qword_27D882000, &qword_22A578390);
  v30 = v17[10];
  *(&v39 + 1) = v28;
  v40 = &off_283CE16E8;
  v31 = __swift_allocate_boxed_opaque_existential_1(&v38);
  sub_2296EEB04(v2 + v30, v31, _s21EventMetadataInternalV6DeviceVMa);
  sub_2297A1124(0xD000000000000010, 0x800000022A592900, &v38);
  sub_22953EAE4(&v38, &qword_27D882000, &qword_22A578390);
  sub_229564F88(v2 + v17[11], v6, &qword_27D87CBE0, &unk_22A577880);
  v32 = _s21EventMetadataInternalV4UserVMa(0);
  if ((*(*(v32 - 8) + 48))(v6, 1, v32) == 1)
  {
    sub_22953EAE4(v6, &qword_27D87CBE0, &unk_22A577880);
    v38 = 0u;
    v39 = 0u;
    v40 = 0;
  }

  else
  {
    *(&v39 + 1) = v32;
    v40 = &off_283CE16C8;
    v33 = __swift_allocate_boxed_opaque_existential_1(&v38);
    sub_2296EEB6C(v6, v33, _s21EventMetadataInternalV4UserVMa);
  }

  sub_2297A1124(1919251317, 0xE400000000000000, &v38);
  sub_22953EAE4(&v38, &qword_27D882000, &qword_22A578390);
  v34 = *(v2 + v17[12]);
  v35 = MEMORY[0x277D84D38];
  *(&v39 + 1) = MEMORY[0x277D84D38];
  v40 = &off_283CDFC60;
  *&v38 = v34;
  sub_229890DC4(&v38, 0x70556D6574737973, 0xEC000000656D6974);
  v36 = *(v2 + v17[13]);
  *(&v39 + 1) = v35;
  v40 = &off_283CDFC60;
  *&v38 = v36;
  return sub_229890DC4(&v38, 0xD000000000000011, 0x800000022A592920);
}

uint64_t sub_2296ED1FC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v66 - v10;
  v12 = *v2;
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E788, &qword_22A57FE00) + 36);
  v14 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v13 + v14);
  v67 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v17 = sub_22961F6EC(v16);

    *(v13 + v14) = v17;
    v16 = v17;
  }

  swift_beginAccess();
  *(v16 + 16) = v12;
  *(v16 + 20) = 0;
  v19 = *(v2 + 1);
  v18 = *(v2 + 2);
  swift_bridgeObjectRetain_n();
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v13 + v14);
  if ((v20 & 1) == 0)
  {
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v22 = sub_22961F6EC(v21);

    *(v13 + v14) = v22;
    v21 = v22;
  }

  swift_beginAccess();
  *(v21 + 24) = v19;
  *(v21 + 32) = v18;

  v23 = _s21EventMetadataInternalVMa(0);
  v73 = *(a1 + 32);
  v24 = *(a1 + 16);
  v72[0] = *a1;
  v72[1] = v24;
  v25 = sub_2296EC8D4(v72);
  v27 = v26;

  v28 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v13 + v14);
  if ((v28 & 1) == 0)
  {
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v30 = sub_22961F6EC(v29);

    *(v13 + v14) = v30;
    v29 = v30;
  }

  swift_beginAccess();
  *(v29 + 40) = v25;
  *(v29 + 48) = v27;

  v31 = v23[7];
  v32 = sub_22A4DB74C();
  v33 = *(v32 - 8);
  (*(v33 + 16))(v11, v2 + v31, v32);
  (*(v33 + 56))(v11, 0, 1, v32);
  v34 = sub_2297C337C(v11);
  v36 = v35;
  sub_22953EAE4(v11, &unk_27D881AA0, &qword_22A57BC20);

  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v13 + v14);
  v39 = v13;
  if ((v37 & 1) == 0)
  {
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v40 = sub_22961F6EC(v38);

    *(v13 + v14) = v40;
    v38 = v40;
  }

  swift_beginAccess();
  *(v38 + 56) = v34;
  *(v38 + 64) = v36;

  KeyPath = swift_getKeyPath();
  v42 = v23[8];
  *(&v70 + 1) = _s21EventMetadataInternalV4HomeVMa(0);
  v71 = sub_2296EEA2C(&qword_27D87F8E0, _s21EventMetadataInternalV4HomeVMa, &unk_22A57FDAC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v69);
  sub_2296EEB04(v2 + v42, boxed_opaque_existential_1, _s21EventMetadataInternalV4HomeVMa);
  sub_229679328(KeyPath, &v69);

  if (*(&v70 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v69);
  }

  v44 = swift_getKeyPath();
  v45 = v67;
  sub_229564F88(v2 + v23[9], v67, &qword_27D87CBE8, &qword_22A577890);
  v46 = _s21EventMetadataInternalV6DeviceVMa(0);
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
  {
    sub_22953EAE4(v45, &qword_27D87CBE8, &qword_22A577890);
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
  }

  else
  {
    *(&v70 + 1) = v46;
    v71 = sub_2296EEA2C(&qword_27D87F8E8, _s21EventMetadataInternalV6DeviceVMa, &unk_22A57FD70);
    v47 = __swift_allocate_boxed_opaque_existential_1(&v69);
    sub_2296EEB6C(v45, v47, _s21EventMetadataInternalV6DeviceVMa);
  }

  sub_229679528(v44, &v69);

  if (*(&v70 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v69);
  }

  v48 = swift_getKeyPath();
  v49 = v23[10];
  *(&v70 + 1) = v46;
  v71 = sub_2296EEA2C(&qword_27D87F8E8, _s21EventMetadataInternalV6DeviceVMa, &unk_22A57FD70);
  v50 = __swift_allocate_boxed_opaque_existential_1(&v69);
  sub_2296EEB04(v2 + v49, v50, _s21EventMetadataInternalV6DeviceVMa);
  sub_229679528(v48, &v69);

  if (*(&v70 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v69);
  }

  v51 = swift_getKeyPath();
  v52 = v68;
  sub_229564F88(v2 + v23[11], v68, &qword_27D87CBE0, &unk_22A577880);
  v53 = _s21EventMetadataInternalV4UserVMa(0);
  if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
  {
    sub_22953EAE4(v52, &qword_27D87CBE0, &unk_22A577880);
    v69 = 0u;
    v70 = 0u;
    v71 = 0;
  }

  else
  {
    *(&v70 + 1) = v53;
    v71 = sub_2296EEA2C(&qword_27D87F8F0, _s21EventMetadataInternalV4UserVMa, &unk_22A57FD34);
    v54 = __swift_allocate_boxed_opaque_existential_1(&v69);
    sub_2296EEB6C(v52, v54, _s21EventMetadataInternalV4UserVMa);
  }

  sub_229679728(v51, &v69);

  if (*(&v70 + 1))
  {
    __swift_destroy_boxed_opaque_existential_0(&v69);
  }

  v55 = *(v2 + v23[12]);
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *(v39 + v14);
  if ((v56 & 1) == 0)
  {
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v58 = sub_22961F6EC(v57);

    *(v39 + v14) = v58;
    v57 = v58;
  }

  v59 = v57 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime;
  swift_beginAccess();
  *v59 = v55;
  *(v59 + 8) = 0;
  v60 = *(v2 + v23[13]);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *(v39 + v14);
  if ((v61 & 1) == 0)
  {
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v63 = sub_22961F6EC(v62);

    *(v39 + v14) = v63;
    v62 = v63;
  }

  v64 = v62 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime;
  result = swift_beginAccess();
  *v64 = v60;
  *(v64 + 8) = 0;
  return result;
}

uint64_t sub_2296EDAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E060, &qword_22A57B0D8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296EEB04(a1, v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  v11 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v14 = sub_22961F6EC(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_2296EEB6C(v10, v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  swift_beginAccess();
  sub_2295E90C8(v6, v13 + v15, &qword_27D87E060, &qword_22A57B0D8);
  return swift_endAccess();
}

uint64_t sub_2296EDCE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296EEB04(a1, v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  v11 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v14 = sub_22961F6EC(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_2296EEB6C(v10, v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  swift_beginAccess();
  sub_2295E90C8(v6, v13 + v15, &qword_27D87E058, &qword_22A57B0D0);
  return swift_endAccess();
}

uint64_t sub_2296EDED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296EEB04(a1, v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  v11 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v14 = sub_22961F6EC(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_2296EEB6C(v10, v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  swift_beginAccess();
  sub_2295E90C8(v6, v13 + v15, &qword_27D87E058, &qword_22A57B0D0);
  return swift_endAccess();
}

uint64_t sub_2296EE0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E050, &qword_22A57B0C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296EEB04(a1, v10, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  v11 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v14 = sub_22961F6EC(v13);

    *(a2 + v11) = v14;
    v13 = v14;
  }

  sub_2296EEB6C(v10, v6, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  (*(v8 + 56))(v6, 0, 1, v7);
  v15 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  swift_beginAccess();
  sub_2295E90C8(v6, v13 + v15, &qword_27D87E050, &qword_22A57B0C8);
  return swift_endAccess();
}

uint64_t sub_2296EE2C8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v4;
  v12 = *(a1 + 32);
  v9 = MEMORY[0x277D837D0];
  v10 = &off_283CDFC68;
  v8[0] = sub_2296EC8D4(v11);
  v8[1] = v5;
  sub_229890DC4(v8, 0x44495555656D6F68, 0xE800000000000000);
  v6 = *(v2 + *(a2 + 20));
  v9 = MEMORY[0x277D84CC0];
  v10 = &off_283CDFC58;
  LODWORD(v8[0]) = v6;
  return sub_229890DC4(v8, 0x73726573556D756ELL, 0xE800000000000000);
}

uint64_t sub_2296EE3B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v17[0] = *a1;
  v17[1] = v2;
  v18 = *(a1 + 32);
  v15 = MEMORY[0x277D837D0];
  v16 = &off_283CDFC68;
  v13 = sub_2296EC8D4(v17);
  v14 = v3;
  sub_229890DC4(&v13, 0x5555656369766564, 0xEA00000000004449);
  v4 = _s21EventMetadataInternalV6DeviceVMa(0);
  sub_2297C2ED4(0x444955556D6F6F72, 0xE800000000000000, v1 + v4[5]);
  v5 = *(v1 + v4[6]);
  v6 = MEMORY[0x277D839B0];
  v15 = MEMORY[0x277D839B0];
  v16 = &off_283CDFC70;
  LOBYTE(v13) = v5;
  sub_229890DC4(&v13, 0xD000000000000013, 0x800000022A592940);
  v7 = *(v1 + v4[7]);
  v15 = v6;
  v16 = &off_283CDFC70;
  LOBYTE(v13) = v7;
  sub_229890DC4(&v13, 0x69766544654D7369, 0xEA00000000006563);
  v8 = *(v1 + v4[8]);
  v15 = v6;
  v16 = &off_283CDFC70;
  LOBYTE(v13) = v8;
  sub_229890DC4(&v13, 0xD000000000000011, 0x800000022A592960);
  v9 = (v1 + v4[9]);
  v11 = *v9;
  v10 = v9[1];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87EC90, &unk_22A57CFD0);
  v16 = sub_2296B26B4();
  v13 = v11;
  v14 = v10;

  return sub_229890DC4(&v13, 0x726F6C6F63, 0xE500000000000000);
}

uint64_t sub_2296EE57C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v10;
  v35 = *(a1 + 32);
  v11 = sub_2296EC8D4(v34);
  v13 = v12;
  v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E7A0, &unk_22A57FDF0) + 36);
  v15 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v16 = (v14 + v15[5]);

  *v16 = v11;
  v16[1] = v13;
  v17 = _s21EventMetadataInternalV6DeviceVMa(0);
  v18 = v17[5];
  v33 = *(a1 + 32);
  v19 = *(a1 + 16);
  v32[0] = *a1;
  v32[1] = v19;
  sub_229564F88(v2 + v18, v9, &unk_27D87D2A0, &unk_22A578BD0);
  result = (*(v5 + 48))(v9, 1, v4);
  if (result != 1)
  {
    v21 = v31;
    (*(v5 + 32))(v31, v9, v4);
    v22 = sub_2296B2730(v32);
    v24 = v23;
    (*(v5 + 8))(v21, v4);
    v25 = (v14 + v15[6]);

    *v25 = v22;
    v25[1] = v24;
  }

  *(v14 + v15[7]) = *(v2 + v17[6]);
  *(v14 + v15[8]) = *(v2 + v17[7]);
  *(v14 + v15[9]) = *(v2 + v17[8]);
  v26 = (v2 + v17[9]);
  v27 = v26[1];
  if (v27)
  {
    v28 = *v26;
    v29 = (v14 + v15[10]);

    *v29 = v28;
    v29[1] = v27;
  }

  return result;
}

uint64_t sub_2296EE820(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v2;
  v10 = *(a1 + 32);
  v7 = MEMORY[0x277D837D0];
  v8 = &off_283CDFC68;
  v6[0] = sub_2296EC8D4(v9);
  v6[1] = v3;
  sub_229890DC4(v6, 0x4449555572657375, 0xE800000000000000);
  v4 = *(v1 + *(_s21EventMetadataInternalV4UserVMa(0) + 20));
  v7 = MEMORY[0x277D84CC0];
  v8 = &off_283CDFC58;
  LODWORD(v6[0]) = v4;
  return sub_229890DC4(v6, 0x67656C6976697270, 0xE900000000000065);
}

uint64_t sub_2296EE91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v12 = *(a1 + 16);
  v21[0] = *a1;
  v21[1] = v12;
  v22 = *(a1 + 32);
  v13 = sub_2296EC8D4(v21);
  v15 = v14;
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) + 36);
  v17 = a6(0);
  v18 = (v16 + *(v17 + 20));

  *v18 = v13;
  v18[1] = v15;
  v20 = v16 + *(v17 + 24);
  *v20 = *(v6 + *(a2 + 20));
  *(v20 + 4) = 0;
  return result;
}

uint64_t sub_2296EEA2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2296EEB04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2296EEB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_2296EEE98()
{
  result = [objc_allocWithZone(type metadata accessor for DemoModeManagerDataSource()) init];
  qword_281402230 = result;
  return result;
}

id sub_2296EEFE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DemoModeManagerDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2296EF0D8()
{
  v1 = _s22DefaultSwiftExtensionsCMa();
  v2 = objc_allocWithZone(v1);
  v3 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDUser22DefaultSwiftExtensions_isNotifyingAdaptiveTemperatureAutomationsDisclosure];
  *v3 = 0;
  v3[4] = 0;
  v4 = type metadata accessor for DefaultUserStorage();
  swift_allocObject();
  v5 = v0;
  v6 = sub_2297C9E60(v5);

  v7 = &v2[OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDUser22DefaultSwiftExtensions_storage];
  v7[3] = v4;
  v7[4] = &off_283CE5890;
  *v7 = v6;
  v9.receiver = v2;
  v9.super_class = v1;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  [v5 setSwiftExtensions_];
}

HMDCameraStreamManagerDataSource __swiftcall HMDCameraStreamManagerDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDCameraStreamManagerDataSource()
{
  result = qword_27D87F9E8;
  if (!qword_27D87F9E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87F9E8);
  }

  return result;
}

uint64_t sub_2296EF344()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_281401F30);
  __swift_project_value_buffer(v0, qword_281401F30);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296EF3BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  swift_defaultActor_initialize();
  *(v6 + 136) = sub_22A4DBC7C();
  *(v6 + 144) = sub_22953E188(&qword_281403838, MEMORY[0x277D0EFE0], MEMORY[0x277D0EFD8]);
  __swift_allocate_boxed_opaque_existential_1((v6 + 112));
  sub_22A4DBC6C();
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = a1;
  *(v6 + 240) = a2;
  *(v6 + 248) = a3;
  *(v6 + 256) = a4;
  *(v6 + 264) = a5;
  *(v6 + 272) = 0;
  v12 = qword_281401F28;
  v13 = a1;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = sub_22A4DD07C();
  __swift_project_value_buffer(v14, qword_281401F30);
  v15 = v13;
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = v29;
    *v18 = 136315650;
    v19 = sub_22A4DDDDC();
    v21 = sub_2295A3E30(v19, v20, &v30);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v22 = sub_22A4DE82C();
    v24 = sub_2295A3E30(v22, v23, &v30);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    v25 = sub_22A4DE82C();
    v27 = sub_2295A3E30(v25, v26, &v30);

    *(v18 + 24) = v27;
    _os_log_impl(&dword_229538000, v16, v17, "Configured to monitor queue %s, interval: %s, threshold: %s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  else
  {
  }

  return v6;
}

uint64_t sub_2296EF648(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_22A4DB74C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    v36 = a3;
    sub_22A4DB73C();
    sub_22A4DB69C();
    sub_22A4DE88C();
    v15 = sub_22A4DE84C();
    v37 = v10;
    if (v15)
    {
      if (qword_281401F28 != -1)
      {
        swift_once();
      }

      v16 = sub_22A4DD07C();
      __swift_project_value_buffer(v16, qword_281401F30);

      v17 = sub_22A4DD05C();
      v18 = sub_22A4DDCDC();

      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_12;
      }

      v19 = swift_slowAlloc();
      v35 = v9;
      v20 = v19;
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_2295A3E30(v36, a4, &v38);
      *(v20 + 12) = 2080;
      v22 = sub_22A4DE82C();
      v24 = sub_2295A3E30(v22, v23, &v38);

      *(v20 + 14) = v24;
      v25 = "Healthy Queue: %s, delay: %s";
    }

    else
    {
      if (qword_281401F28 != -1)
      {
        swift_once();
      }

      v26 = sub_22A4DD07C();
      __swift_project_value_buffer(v26, qword_281401F30);

      v17 = sub_22A4DD05C();
      v18 = sub_22A4DDCEC();

      if (!os_log_type_enabled(v17, v18))
      {
        goto LABEL_12;
      }

      v27 = swift_slowAlloc();
      v35 = v9;
      v20 = v27;
      v21 = swift_slowAlloc();
      v38 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_2295A3E30(v36, a4, &v38);
      *(v20 + 12) = 2080;
      v28 = sub_22A4DE82C();
      v30 = sub_2295A3E30(v28, v29, &v38);

      *(v20 + 14) = v30;
      v25 = "Slow Queue: %s, delay: %s";
    }

    _os_log_impl(&dword_229538000, v17, v18, v25, v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v21, -1, -1);
    v31 = v20;
    v9 = v35;
    MEMORY[0x22AAD4E50](v31, -1, -1);
LABEL_12:

    v32 = sub_22A4DD9DC();
    (*(*(v32 - 8) + 56))(v8, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = v14;

    sub_22957F3C0(0, 0, v8, &unk_22A57FFB8, v33);

    return (*(v37 + 8))(v12, v9);
  }

  return result;
}

uint64_t sub_2296EFAE4()
{
  v1 = v0[15];
  swift_beginAccess();
  sub_2295B23D0(v1 + 192, (v0 + 2));
  if (v0[5])
  {
    sub_22957F1C4((v0 + 2), (v0 + 7));
    sub_22953EAE4((v0 + 2), &qword_27D87EA00, &qword_22A579B80);
    __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
    sub_22A4DBC8C();
    __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  }

  else
  {
    sub_22953EAE4((v0 + 2), &qword_27D87EA00, &qword_22A579B80);
  }

  sub_22953E86C();
  v2 = v0[1];

  return v2();
}

uint64_t sub_2296EFBE0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));
  sub_22953EAE4(v0 + 152, &qword_27D87EA00, &qword_22A579B80);
  sub_22953EAE4(v0 + 192, &qword_27D87EA00, &qword_22A579B80);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2296EFC84()
{
  v1 = *(sub_22A4DB74C() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_2296EF648(v3, v0 + v2, v5, v6);
}

uint64_t sub_2296EFD18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_2296EFAC4(a1, v4, v5, v6);
}

uint64_t getEnumTagSinglePayload for ThermostatSuggestedPreset.Scenario(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ThermostatSuggestedPreset.Scenario(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2296EFF30()
{
  result = qword_27D87F9F0;
  if (!qword_27D87F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87F9F8, qword_22A57FFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87F9F0);
  }

  return result;
}

uint64_t sub_2296EFF94()
{
  sub_22A4DE77C();
  sub_22A4DE79C();
  return sub_22A4DE7BC();
}

uint64_t sub_2296F0008(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DE79C();
  return sub_22A4DE7BC();
}

uint64_t sub_2296F004C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2296F0214(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2296F0148()
{
  result = qword_27D87FA00;
  if (!qword_27D87FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FA00);
  }

  return result;
}

uint64_t sub_2296F019C()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D8AB940);
  __swift_project_value_buffer(v0, qword_27D8AB940);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

uint64_t sub_2296F0214(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

unint64_t sub_2296F0228()
{
  result = qword_27D87FA08;
  if (!qword_27D87FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FA08);
  }

  return result;
}

uint64_t sub_2296F027C(uint64_t a1, char a2)
{
  v4 = sub_22A4DC8EC();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 88))(a1, v4);
  if (v6 == *MEMORY[0x277D172E0])
  {
    if (a2)
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (v6 != *MEMORY[0x277D172B8])
    {
      if (v6 == *MEMORY[0x277D172D8])
      {
        return 7;
      }

      if (v6 != *MEMORY[0x277D172D0])
      {
        if (v6 == *MEMORY[0x277D172E8])
        {
          return 5;
        }

        if (v6 != *MEMORY[0x277D172C8] && v6 != *MEMORY[0x277D172C0])
        {
          (*(v5 + 8))(a1, v4);
        }
      }

      return 0;
    }

    if (a2)
    {
      return 4;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2296F0434(uint64_t a1)
{
  result = sub_22A4DB74C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2296F04F8(uint64_t a1)
{
  result = sub_22A4DB74C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2296F057C()
{
  if (*(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter17MediaRemoteVolume_notificationTask))
  {

    sub_22A4DDA7C();
  }

  sub_2296792B0(v0 + OBJC_IVAR____TtCOO13HomeKitDaemon16DeviceMediaState16FrameworkAdapter17MediaRemoteVolume_updateStream);

  return swift_deallocClassInstance();
}

uint64_t _s17MediaRemoteVolumeCMa(uint64_t a1)
{
  result = qword_27D87FA98;
  if (!qword_27D87FA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2296F069C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2296791B4(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void *sub_2296F0760(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22958A648(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for HMFMessageName(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_2296F0858(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22958A53C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2296F097C(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_22A4DE0EC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_22A4DE0EC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2296F3B00(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_2296F0AA0(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22958B580(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2296F0BE8(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2296F0D54(uint64_t a1, uint64_t (*a2)(uint64_t *, uint64_t, uint64_t, uint64_t), unint64_t *a3, void *a4)
{
  v11 = v4;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = sub_22A4DE0EC();
  }

  else
  {
    v13 = *(a1 + 16);
  }

  if (!(*v4 >> 62))
  {
    v14 = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v15 = __OFADD__(v14, v13);
    result = v14 + v13;
    if (!v15)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v21 = sub_22A4DE0EC();
  v15 = __OFADD__(v21, v13);
  result = v21 + v13;
  if (v15)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_2296F3B00(result, 1);
  v5 = *v4;
  v6 = *v4 & 0xFFFFFFFFFFFFFF8;
  v17 = *(v6 + 0x10);
  v18 = (*(v6 + 0x18) >> 1) - v17;
  result = a2(&v42, v6 + 8 * v17 + 32, v18, a1);
  if (result < v13)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v19 = *(v6 + 16);
    v15 = __OFADD__(v19, result);
    v20 = v19 + result;
    if (v15)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v6 + 16) = v20;
  }

  if (result != v18)
  {
LABEL_11:
    result = sub_22953EE84(v42);
    *v11 = v5;
    return result;
  }

LABEL_16:
  a2 = *(v6 + 16);
  v13 = v43;
  v6 = v45;
  v37 = v44;
  v38 = v42;
  v7 = v46;
  if (v42 < 0)
  {
LABEL_20:
    if (!sub_22A4DE12C())
    {
      goto LABEL_11;
    }

    sub_229562F68(0, a3, a4);
    result = swift_dynamicCast();
    v23 = v41;
    goto LABEL_31;
  }

  if (!v46)
  {
    v24 = (v44 + 64) >> 6;
    if (v24 <= v45 + 1)
    {
      v25 = v45 + 1;
    }

    else
    {
      v25 = (v44 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v22 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_59;
      }

      if (v22 >= v24)
      {
        v23 = 0;
        v7 = 0;
        goto LABEL_30;
      }

      v7 = *(v43 + 8 * v22);
      ++v6;
      if (v7)
      {
        goto LABEL_29;
      }
    }
  }

  v22 = v45;
LABEL_29:
  v27 = __clz(__rbit64(v7));
  v7 &= v7 - 1;
  v23 = *(*(v42 + 48) + ((v22 << 9) | (8 * v27)));
  result = v23;
  v26 = v22;
LABEL_30:
  v45 = v26;
  v46 = v7;
  v6 = v26;
LABEL_31:
  v28 = v38;
  v29 = a2;
  if (!v23)
  {
    goto LABEL_11;
  }

  v30 = (v37 + 64) >> 6;
LABEL_33:
  if (v29 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_22A4DD85C();
    v28 = v38;
  }

  v5 = *v11;
  v31 = *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v36 = *v11 & 0xFFFFFFFFFFFFFF8;
  if (v29 > v31)
  {
    v31 = v29;
  }

  v39 = v31;
  while (1)
  {
    while (1)
    {
      if (v29 == v39)
      {
        v29 = v39;
        *(v36 + 16) = v39;
        goto LABEL_33;
      }

      *(v36 + 32 + 8 * v29++) = v23;
      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_22A4DE12C())
      {
        sub_229562F68(0, a3, a4);
        result = swift_dynamicCast();
        v28 = v38;
        v23 = v41;
        if (v41)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    v40 = v29;
    if (!v7)
    {
      break;
    }

    v32 = v6;
LABEL_54:
    v35 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v23 = *(*(v28 + 48) + ((v32 << 9) | (8 * v35)));
    result = v23;
    v28 = v38;
    v34 = v32;
LABEL_39:
    v42 = v28;
    v43 = v13;
    v44 = v37;
    v45 = v34;
    v6 = v34;
    v46 = v7;
    v29 = v40;
    if (!v23)
    {
LABEL_56:
      *(v36 + 16) = v29;
      goto LABEL_11;
    }
  }

  if (v30 <= v6 + 1)
  {
    v33 = v6 + 1;
  }

  else
  {
    v33 = (v37 + 64) >> 6;
  }

  v34 = v33 - 1;
  while (1)
  {
    v32 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v32 >= v30)
    {
      v23 = 0;
      v7 = 0;
      goto LABEL_39;
    }

    v7 = *(v13 + 8 * v32);
    ++v6;
    if (v7)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_2296F1108(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_22A4DE22C();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F10, &qword_22A5804F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2296F1220@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22A4DE60C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2296F12A4(uint64_t a1)
{
  v2 = sub_2296F145C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296F12E0(uint64_t a1)
{
  v2 = sub_2296F145C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeUtilTestFailure.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAA8, &qword_22A5801A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F145C();
  sub_22A4DE80C();
  sub_22A4DE54C();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2296F145C()
{
  result = qword_27D87FAB0;
  if (!qword_27D87FAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAB0);
  }

  return result;
}

void *HomeUtilTestFailure.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAB8, &qword_22A5801A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F145C();
  sub_22A4DE7FC();
  if (!v1)
  {
    v7 = sub_22A4DE49C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_2296F160C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAB8, &qword_22A5801A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F145C();
  sub_22A4DE7FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = sub_22A4DE49C();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_2296F1788(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAA8, &qword_22A5801A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F145C();
  sub_22A4DE80C();
  sub_22A4DE54C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t runHomeUtilOnDeviceTests(_:)(uint64_t a1)
{
  sub_22A4DD63C();
  v1[9] = swift_task_alloc();
  sub_22A4DB0DC();
  v1[10] = swift_task_alloc();
  v1[8] = a1;
  v3 = swift_task_alloc();
  v1[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAC0, &qword_22A5801C0);
  v5 = sub_229590C00(&qword_27D87FAC8, &qword_27D87FAC0, &qword_22A5801C0, MEMORY[0x277D83970]);
  *v3 = v1;
  v3[1] = sub_2296F1A3C;

  return MEMORY[0x282167810](&unk_22A5801B8, 0, v4, &type metadata for Group, v5);
}

void sub_2296F1A3C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_2296F1B64, 0, 0);
  }
}

void sub_2296F1B64()
{
  v1 = v0[12];
  v2 = MEMORY[0x277D84F90];
  v38 = MEMORY[0x277D84F90];
  v34 = *(v1 + 16);
  if (v34)
  {
    v3 = 0;
    v32 = v0[12];
    v33 = v1 + 32;
    while (2)
    {
      if (v3 >= *(v1 + 16))
      {
LABEL_30:
        __break(1u);
        return;
      }

      v4 = (v33 + 24 * v3);
      v36 = *v4;
      v37 = v4[1];
      v5 = v4[2];
      ++v3;
      v6 = *(v5 + 16);

      v7 = 0;
      v8 = MEMORY[0x277D84F90];
LABEL_6:
      v9 = v5 + 32 * v7;
      while (v6 != v7)
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v10 = (v9 + 32);
        ++v7;
        v11 = *(v9 + 56);
        v9 += 32;
        if (v11)
        {
          v35 = v3;
          v13 = *v10;
          v12 = v10[1];
          v14 = v10[2];
          v0[2] = 0;
          v0[3] = 0xE000000000000000;

          MEMORY[0x22AAD08C0](v36, v37);
          MEMORY[0x22AAD08C0](2112032, 0xE300000000000000);
          MEMORY[0x22AAD08C0](v13, v12);
          MEMORY[0x22AAD08C0](2112032, 0xE300000000000000);
          v0[4] = v14;
          v0[5] = v11;
          sub_22A4DE31C();

          v15 = v0[2];
          v16 = v0[3];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_22958A53C(0, *(v8 + 2) + 1, 1, v8);
          }

          v18 = *(v8 + 2);
          v17 = *(v8 + 3);
          v1 = v32;
          if (v18 >= v17 >> 1)
          {
            v8 = sub_22958A53C((v17 > 1), v18 + 1, 1, v8);
          }

          *(v8 + 2) = v18 + 1;
          v19 = &v8[16 * v18];
          *(v19 + 4) = v15;
          *(v19 + 5) = v16;
          v3 = v35;
          goto LABEL_6;
        }
      }

      sub_2296F0858(v8);
      if (v3 != v34)
      {
        continue;
      }

      break;
    }

    v2 = v38;
    v1 = v0[12];
  }

  v20 = v0[13];
  sub_22A4DB11C();
  swift_allocObject();
  sub_22A4DB10C();
  sub_22A4DB0CC();
  sub_22A4DB0EC();
  v0[6] = v1;
  v0[7] = v2;
  sub_2296F3838();
  v21 = sub_22A4DB0FC();
  if (v20)
  {

    v23 = v0[1];

    v23();
  }

  else
  {
    v24 = v21;
    v25 = v22;

    sub_22A4DD62C();
    v26 = sub_22A4DD60C();
    v28 = v27;
    sub_2295798D4(v24, v25);

    if (v28)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0xD000000000000016;
    }

    if (v28)
    {
      v30 = v28;
    }

    else
    {
      v30 = 0x800000022A592D70;
    }

    v31 = v0[1];

    v31(v29, v30);
  }
}

uint64_t sub_2296F1F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_2296F1F44, 0, 0);
}

uint64_t sub_2296F1F44()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 88);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_2296F2024;

  return MEMORY[0x2821677B0]();
}

uint64_t sub_2296F2024()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2296F21C4;
  }

  else
  {

    v2 = sub_2296F2140;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2296F2140()
{
  v4 = v0[1];
  v1 = v0[9];
  v2 = v0[10];

  return v4(v1, v2, 0, 0);
}

uint64_t sub_2296F21C4()
{
  v1 = *(v0 + 120);

  *(v0 + 56) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
  }

  else
  {
    v5 = *(v0 + 120);
    swift_getErrorValue();
    sub_22A4DE5EC();

    v4 = 0;
    v3 = 0xE000000000000000;
  }

  v9 = *(v0 + 8);
  v7 = *(v0 + 72);
  v6 = *(v0 + 80);

  return v9(v7, v6, v4, v3);
}

uint64_t sub_2296F22E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2296F2308, 0, 0);
}

uint64_t sub_2296F2308(uint64_t a1)
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  v2 = static PassUpdater.shared;
  *(v1 + 32) = static PassUpdater.shared;
  *(v1 + 40) = sub_22A4DBCDC();

  return MEMORY[0x2822009F8](sub_2296F23B0, v2, 0);
}

uint64_t sub_2296F23B0()
{
  v1 = swift_task_alloc();
  v2 = *(v0 + 32);
  *(v0 + 48) = v1;
  *(v1 + 16) = v2;
  v5 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_2296F2498;

  return v5();
}

uint64_t sub_2296F2498()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_2296F27A8;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_2296F25C0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2296F25C0()
{
  v1 = *(v0 + 16);

  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_2296F26B4;

  return v4();
}

uint64_t sub_2296F26B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2296F27A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296F2814(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = swift_task_alloc();
  v2[3] = v6;
  *(v6 + 16) = *(a2 + 16);
  v7 = swift_task_alloc();
  v2[4] = v7;
  *v7 = v2;
  v7[1] = sub_2296F28EC;

  return sub_2296F1F20(v4, v5, &unk_22A580520, v6);
}

uint64_t sub_2296F28EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 16);
  v12 = *v4;

  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  v10 = *(v12 + 8);

  return v10();
}

uint64_t sub_2296F2A3C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v2[3] = a1;
  v2[4] = v3;
  v2[5] = v4;
  v2[2] = a2[2];
  v5 = swift_task_alloc();
  v2[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB90, &qword_22A580510);
  v7 = sub_229590C00(&qword_27D87FB98, &qword_27D87FB90, &qword_22A580510, MEMORY[0x277D83970]);
  *v5 = v2;
  v5[1] = sub_2296F2B68;

  return MEMORY[0x282167810](&unk_22A580508, 0, v6, &type metadata for TestResult, v7);
}

void sub_2296F2B68(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 56) = a1;

    MEMORY[0x2822009F8](sub_2296F2CA4, 0, 0);
  }
}

uint64_t sub_2296F2CA4()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[3];
  *v3 = v0[4];
  v3[1] = v2;
  v3[2] = v1;
  v5 = v0[1];

  return v5();
}

uint64_t sub_2296F2D20(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FAF0, &qword_22A5804B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F3A58();
  sub_22A4DE80C();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB00, &unk_22A5804B8);
  sub_2296F4320(&qword_27D87FB08, sub_2296F3AAC, MEMORY[0x277D83948]);
  sub_22A4DE59C();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
    sub_2296E65D0(&qword_27D87F4E0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22A4DE59C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2296F2F34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB58, &unk_22A5804E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F4620();
  sub_22A4DE80C();
  v13 = 0;
  sub_22A4DE54C();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB40, &qword_22A5804D8);
    sub_2296F4674(&qword_27D87FB60, sub_2296F4740, MEMORY[0x277D83948]);
    sub_22A4DE59C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2296F3108(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FBE8, &qword_22A5807E8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F4DCC();
  sub_22A4DE80C();
  LOBYTE(v14) = 0;
  sub_22A4DE54C();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_2296F4E74();
    sub_22A4DE53C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2296F3298()
{
  if (*v0)
  {
    return 0x736572756C696166;
  }

  else
  {
    return 0x7370756F7267;
  }
}

uint64_t sub_2296F32D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7370756F7267 && a2 == 0xE600000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736572756C696166 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296F33A8(uint64_t a1)
{
  v2 = sub_2296F3A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296F33E4(uint64_t a1)
{
  v2 = sub_2296F3A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2296F3420@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2296F40BC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2296F3468()
{
  if (*v0)
  {
    return 0x7573655274736574;
  }

  else
  {
    return 0x6D614E70756F7267;
  }
}

uint64_t sub_2296F34B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7573655274736574 && a2 == 0xEB0000000073746CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296F3598(uint64_t a1)
{
  v2 = sub_2296F4620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296F35D4(uint64_t a1)
{
  v2 = sub_2296F4620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2296F3610@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2296F43EC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_2296F3660()
{
  if (*v0)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x656D614E74736574;
  }
}

uint64_t sub_2296F3698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E74736574 && a2 == 0xE800000000000000;
  if (v6 || (sub_22A4DE60C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22A4DE60C();

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

uint64_t sub_2296F3770(uint64_t a1)
{
  v2 = sub_2296F4DCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2296F37AC(uint64_t a1)
{
  v2 = sub_2296F4DCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2296F37E8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2296F4BD8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_2296F3838()
{
  result = qword_27D87FAD0;
  if (!qword_27D87FAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAD0);
  }

  return result;
}

uint64_t sub_2296F389C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2296F38E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2296F3954()
{
  result = qword_27D87FAD8;
  if (!qword_27D87FAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAD8);
  }

  return result;
}

unint64_t sub_2296F39AC()
{
  result = qword_27D87FAE0;
  if (!qword_27D87FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAE0);
  }

  return result;
}

unint64_t sub_2296F3A04()
{
  result = qword_27D87FAE8;
  if (!qword_27D87FAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAE8);
  }

  return result;
}

unint64_t sub_2296F3A58()
{
  result = qword_27D87FAF8;
  if (!qword_27D87FAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FAF8);
  }

  return result;
}

unint64_t sub_2296F3AAC()
{
  result = qword_27D87FB10;
  if (!qword_27D87FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FB10);
  }

  return result;
}

uint64_t sub_2296F3B00(uint64_t a1, char a2)
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

  sub_22A4DE0EC();
LABEL_9:
  result = sub_22A4DE22C();
  *v2 = result;
  return result;
}

uint64_t sub_2296F3BA0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22A4DE0EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22A4DE0EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_229590C00(&qword_27D87FB88, &qword_27D87FB80, &qword_22A580500, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB80, &qword_22A580500);
            v9 = sub_22958C03C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_229562F68(0, &qword_27D87D108, 0x277D287E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2296F3D54(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22A4DE0EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22A4DE0EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_229590C00(&qword_27D87D568, &qword_27D87D398, &qword_22A578518, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D398, &qword_22A578518);
            v9 = sub_22958C03C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_229562F68(0, &qword_281401B70, off_278666148);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2296F3F08(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22A4DE0EC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22A4DE0EC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_229590C00(&qword_27D87FB78, &qword_27D87FB70, &qword_22A5804F8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB70, &qword_22A5804F8);
            v9 = sub_22958C0E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_229562F68(0, &qword_27D87DEE0, 0x277CFEC40);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2296F40BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB18, &qword_22A5804C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F3A58();
  sub_22A4DE7FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB00, &unk_22A5804B8);
  HIBYTE(v8) = 0;
  sub_2296F4320(&qword_27D87FB20, sub_2296F4398, MEMORY[0x277D83978]);
  sub_22A4DE4EC();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b");
  HIBYTE(v8) = 1;
  sub_2296E65D0(&qword_27D87F750, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_22A4DE4EC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_2296F4320(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87FB00, &unk_22A5804B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2296F4398()
{
  result = qword_27D87FB28;
  if (!qword_27D87FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FB28);
  }

  return result;
}

uint64_t sub_2296F43EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB30, &qword_22A5804D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F4620();
  sub_22A4DE7FC();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_22A4DE49C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FB40, &qword_22A5804D8);
    v9[15] = 1;
    sub_2296F4674(&qword_27D87FB48, sub_2296F46EC, MEMORY[0x277D83978]);
    sub_22A4DE4EC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_2296F4620()
{
  result = qword_27D87FB38;
  if (!qword_27D87FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FB38);
  }

  return result;
}

uint64_t sub_2296F4674(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D87FB40, &qword_22A5804D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2296F46EC()
{
  result = qword_27D87FB50;
  if (!qword_27D87FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FB50);
  }

  return result;
}

unint64_t sub_2296F4740()
{
  result = qword_27D87FB68;
  if (!qword_27D87FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FB68);
  }

  return result;
}

uint64_t sub_2296F4794()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_229586D38;

  return sub_229844CA4(v2);
}

uint64_t sub_2296F4840(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229569B30;

  return sub_2296F22E8(a1, v5, v4);
}

uint64_t sub_2296F48EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_22985007C(a1, v5, v4);
}

unint64_t sub_2296F49CC()
{
  result = qword_27D87FBA0;
  if (!qword_27D87FBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBA0);
  }

  return result;
}

unint64_t sub_2296F4A24()
{
  result = qword_27D87FBA8;
  if (!qword_27D87FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBA8);
  }

  return result;
}

unint64_t sub_2296F4A7C()
{
  result = qword_27D87FBB0;
  if (!qword_27D87FBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBB0);
  }

  return result;
}

unint64_t sub_2296F4AD4()
{
  result = qword_27D87FBB8;
  if (!qword_27D87FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBB8);
  }

  return result;
}

unint64_t sub_2296F4B2C()
{
  result = qword_27D87FBC0;
  if (!qword_27D87FBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBC0);
  }

  return result;
}

unint64_t sub_2296F4B84()
{
  result = qword_27D87FBC8;
  if (!qword_27D87FBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBC8);
  }

  return result;
}

uint64_t sub_2296F4BD8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FBD0, &qword_22A5807E0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2296F4DCC();
  sub_22A4DE7FC();
  if (!v1)
  {
    v9[16] = 0;
    v7 = sub_22A4DE49C();
    v9[15] = 1;
    sub_2296F4E20();
    sub_22A4DE48C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_2296F4DCC()
{
  result = qword_27D87FBD8;
  if (!qword_27D87FBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBD8);
  }

  return result;
}

unint64_t sub_2296F4E20()
{
  result = qword_27D87FBE0;
  if (!qword_27D87FBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBE0);
  }

  return result;
}

unint64_t sub_2296F4E74()
{
  result = qword_27D87FBF0;
  if (!qword_27D87FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBF0);
  }

  return result;
}

unint64_t sub_2296F4EDC()
{
  result = qword_27D87FBF8;
  if (!qword_27D87FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FBF8);
  }

  return result;
}

unint64_t sub_2296F4F34()
{
  result = qword_27D87FC00;
  if (!qword_27D87FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FC00);
  }

  return result;
}

unint64_t sub_2296F4F8C()
{
  result = qword_27D87FC08;
  if (!qword_27D87FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87FC08);
  }

  return result;
}

void sub_2296F4FE4(void *a1)
{
  v3 = [objc_msgSend(v1 featuresDataSource)];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = [v1 roomUUIDsSupportingLocalPresence];
    sub_22A4DB7DC();
    sub_2295E9190(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v5 = sub_22A4DDB6C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 40) = v7;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FC18, &qword_22A582940);
    *(inited + 48) = v5;
    sub_22956AC5C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v8 = sub_22A4DD47C();

    [a1 respondWithPayload:v8 error:0];
  }

  else
  {
    v9 = [objc_opt_self() hmErrorWithCode_];
    v10 = sub_22A4DB3DC();

    [a1 respondWithError_];
  }
}

uint64_t sub_2296F5280()
{
  v28 = sub_22A4DB7DC();
  v25 = *(v28 - 8);
  v1 = MEMORY[0x28223BE20](v28);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - v3;
  v5 = [v0 hapAccessories];
  sub_229690ADC();
  v6 = sub_22A4DD83C();

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v8 = 0;
    v26 = v6 & 0xFFFFFFFFFFFFFF8;
    v27 = v6 & 0xC000000000000001;
    v9 = (v25 + 32);
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v27)
      {
        v11 = MEMORY[0x22AAD13F0](v8, v6);
      }

      else
      {
        if (v8 >= *(v26 + 16))
        {
          goto LABEL_19;
        }

        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ([v11 supportsPresenceDetectionViaHAP] & 1) != 0 || (objc_msgSend(v12, sel_supportsPresenceDetectionViaMatter))
      {
        v14 = v6;
        v15 = [v12 room];
        v16 = [v15 uuid];

        v17 = v24;
        sub_22A4DB79C();

        v18 = *v9;
        (*v9)(v4, v17, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_22958B1F0(0, *(v10 + 2) + 1, 1, v10);
        }

        v20 = *(v10 + 2);
        v19 = *(v10 + 3);
        if (v20 >= v19 >> 1)
        {
          v10 = sub_22958B1F0((v19 > 1), v20 + 1, 1, v10);
        }

        *(v10 + 2) = v20 + 1;
        v18(&v10[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20], v4, v28);
        v6 = v14;
      }

      else
      {
      }

      ++v8;
      if (v13 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_22:

  v21 = sub_2296727F4(v10);

  return v21;
}

char *sub_2296F5638()
{
  swift_getObjectType();
  v1 = sub_22A4DB74C();
  v72 = *(v1 - 8);
  v73 = v1;
  MEMORY[0x28223BE20](v1);
  v71 = &v64[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_22A4DB7DC();
  v70 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v64[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22A4DD07C();
  v74 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v64[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v64[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v64[-v13];
  v15 = [objc_msgSend(v0 featuresDataSource)];
  result = swift_unknownObjectRelease();
  if (!v15)
  {
    return result;
  }

  v69 = [v0 backingStore];
  if (v69)
  {
    result = [v0 swiftExtensions];
    if (result)
    {
      v17 = result;
      v68 = v6;
      swift_getObjectType();
      v67 = &_s15SwiftExtensionsPMp_0;
      result = swift_conformsToProtocol2();
      if (result)
      {
        v18 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresenceStorage;
        swift_beginAccess();
        sub_229564F88(&v17[v18], &v77, &qword_27D87FC10, &unk_22A5832B0);
        swift_unknownObjectRelease();
        v19 = v79;
        sub_22953EAE4(&v77, &qword_27D87FC10, &unk_22A5832B0);
        if (v19)
        {
          sub_2297A46D4();
          v20 = v0;
          v21 = sub_22A4DD05C();
          v22 = sub_22A4DDCCC();

          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v75[0] = v24;
            *v23 = 136315394;
            v77 = 91;
            v78 = 0xE100000000000000;
            v25 = [v20 logIdentifier];
            v26 = sub_22A4DD5EC();
            v28 = v27;

            MEMORY[0x22AAD08C0](v26, v28);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v29 = sub_2295A3E30(v77, v78, v75);

            *(v23 + 4) = v29;
            *(v23 + 12) = 2080;
            *(v23 + 14) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A592DD0, v75);
            _os_log_impl(&dword_229538000, v21, v22, "%s %s reusing RoomPresenceStorage", v23, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v24, -1, -1);
            MEMORY[0x22AAD4E50](v23, -1, -1);
          }

          return (*(v74 + 8))(v12, v68);
        }

        sub_2297A46D4();
        v41 = v0;
        v42 = sub_22A4DD05C();
        v43 = sub_22A4DDCCC();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v75[0] = v66;
          *v44 = 136315394;
          v77 = 91;
          v78 = 0xE100000000000000;
          v45 = v41;
          v46 = [v41 logIdentifier];
          v47 = sub_22A4DD5EC();
          v49 = v48;

          v65 = v43;
          MEMORY[0x22AAD08C0](v47, v49);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v50 = sub_2295A3E30(v77, v78, v75);
          v41 = v45;

          *(v44 + 4) = v50;
          *(v44 + 12) = 2080;
          *(v44 + 14) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A592DD0, v75);
          _os_log_impl(&dword_229538000, v42, v65, "%s %s initializing DefaultRoomPresenceStorage", v44, 0x16u);
          v51 = v66;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v51, -1, -1);
          MEMORY[0x22AAD4E50](v44, -1, -1);
        }

        (*(v74 + 8))(v14, v68);
        v52 = v69;
        v53 = [v69 context];
        v54 = v41;
        v55 = [v41 uuid];
        sub_22A4DB79C();

        v79 = sub_22A4DBC7C();
        v80 = sub_2295E9190(&qword_281403838, MEMORY[0x277D0EFE0], MEMORY[0x277D0EFD8]);
        __swift_allocate_boxed_opaque_existential_1(&v77);
        sub_22A4DBC6C();
        v56 = [objc_allocWithZone(MEMORY[0x277D0F798]) init];
        v57 = _s26DefaultRoomPresenceStorageCMa(0);
        v58 = swift_allocObject();
        swift_defaultActor_initialize();
        v59 = v58 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timer;
        *v59 = 0u;
        *(v59 + 16) = 0u;
        *(v59 + 32) = 0;
        *(v58 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_pendingUpdatesByRoom) = MEMORY[0x277D84F98];
        *(v58 + 112) = v53;
        v60 = v70;
        (*(v70 + 16))(v58 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_homeUUID, v5, v3);
        sub_22957F1C4(&v77, v58 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_timerProvider);
        *(v58 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_dateProvider) = v56;
        v61 = v71;
        sub_22A4DB68C();
        (*(v60 + 8))(v5, v3);
        __swift_destroy_boxed_opaque_existential_0(&v77);
        (*(v72 + 32))(v58 + OBJC_IVAR____TtCO13HomeKitDaemon13LocalPresence26DefaultRoomPresenceStorage_lastWriteDate, v61, v73);
        result = [v54 swiftExtensions];
        if (result)
        {
          v62 = result;
          swift_getObjectType();
          result = swift_conformsToProtocol2();
          if (result)
          {
            v79 = v57;
            v80 = &off_283CDFB68;

            v77 = v58;
            v63 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresenceStorage;
            swift_beginAccess();
            sub_2296F6D80(&v77, &v62[v63]);
            swift_endAccess();
            return swift_unknownObjectRelease();
          }

LABEL_22:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  v30 = v6;
  sub_2297A46D4();
  v31 = v0;
  v32 = sub_22A4DD05C();
  v33 = sub_22A4DDCEC();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v76[0] = v35;
    *v34 = 136315394;
    v77 = 91;
    v78 = 0xE100000000000000;
    v36 = [v31 logIdentifier];
    v37 = sub_22A4DD5EC();
    v39 = v38;

    MEMORY[0x22AAD08C0](v37, v39);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v40 = sub_2295A3E30(v77, v78, v76);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_2295A3E30(0xD00000000000001FLL, 0x800000022A592DD0, v76);
    _os_log_impl(&dword_229538000, v32, v33, "%s %s backingStore is nil", v34, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v35, -1, -1);
    MEMORY[0x22AAD4E50](v34, -1, -1);
  }

  return (*(v74 + 8))(v9, v30);
}

uint64_t (**sub_2296F6028())(__int128 *, uint64_t, id)
{
  v1 = v0;
  swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v59 - v3;
  v5 = sub_22A4DD07C();
  v61 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v62 = v59 - v9;
  v10 = [objc_msgSend(v0 featuresDataSource)];
  result = swift_unknownObjectRelease();
  if (!v10)
  {
    return result;
  }

  v60 = v4;
  result = [v0 swiftExtensions];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  ObjectType = swift_getObjectType();
  v59[1] = &_s15SwiftExtensionsPMp_0;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = result[8](&v64, ObjectType, result);
  v15 = v14;
  os_unfair_lock_lock(v14);
  sub_229564F88(&v15[2], &v66, &qword_27D881140, &qword_22A5855F0);
  os_unfair_lock_unlock(v15);
  v13(&v64, 0);
  swift_unknownObjectRelease();
  v16 = v68;
  result = sub_22953EAE4(&v66, &qword_27D881140, &qword_22A5855F0);
  v17 = v5;
  v18 = v60;
  if (v16)
  {
    return result;
  }

  v19 = v8;
  sub_2296F5638();
  v20 = &selRef_supportsFaceClassification;
  result = [v1 swiftExtensions];
  if (!result)
  {
    goto LABEL_20;
  }

  v21 = result;
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  v22 = v62;
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v23 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresenceStorage;
  swift_beginAccess();
  sub_229564F88(v21 + v23, &v64, &qword_27D87FC10, &unk_22A5832B0);
  swift_unknownObjectRelease();
  if (v65)
  {
    sub_229557188(&v64, &v66);
    sub_2297A46D4();
    v24 = v1;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCCC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v59[0] = v17;
      v29 = v28;
      v63 = v28;
      *v27 = 136315394;
      *&v64 = 91;
      *(&v64 + 1) = 0xE100000000000000;
      v30 = [v24 logIdentifier];
      v31 = sub_22A4DD5EC();
      v32 = v24;
      v34 = v33;

      v35 = v31;
      v20 = &selRef_supportsFaceClassification;
      MEMORY[0x22AAD08C0](v35, v34);
      v24 = v32;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v36 = sub_2295A3E30(v64, *(&v64 + 1), &v63);

      *(v27 + 4) = v36;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A592DA0, &v63);
      _os_log_impl(&dword_229538000, v25, v26, "%s %s initializing DefaultRoomPresencePublisher", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v29, -1, -1);
      v37 = v27;
      v18 = v60;
      MEMORY[0x22AAD4E50](v37, -1, -1);

      (*(v61 + 8))(v22, v59[0]);
    }

    else
    {

      (*(v61 + 8))(v22, v17);
    }

    sub_22957F1C4(&v66, &v64);
    v48 = __swift_mutable_project_boxed_opaque_existential_0(&v64, v65);
    MEMORY[0x28223BE20](v48);
    v50 = (v59 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v51 + 16))(v50);
    v52 = sub_2296F7048(*v50);
    __swift_destroy_boxed_opaque_existential_0(&v64);
    result = [v24 v20[125]];
    if (result)
    {
      v53 = swift_getObjectType();
      result = swift_conformsToProtocol2();
      if (result)
      {
        v54 = result[8](&v64, v53, result);
        v56 = v55;
        os_unfair_lock_lock(v55);
        sub_22953EAE4(&v56[2], &qword_27D881140, &qword_22A5855F0);
        *&v56[8]._os_unfair_lock_opaque = _s28DefaultRoomPresencePublisherCMa();
        *&v56[10]._os_unfair_lock_opaque = &off_283CDFA78;
        *&v56[2]._os_unfair_lock_opaque = v52;

        os_unfair_lock_unlock(v56);
        v54(&v64, 0);
        swift_unknownObjectRelease();
        v57 = sub_22A4DD9DC();
        (*(*(v57 - 8) + 56))(v18, 1, 1, v57);
        v58 = swift_allocObject();
        v58[2] = 0;
        v58[3] = 0;
        v58[4] = v52;

        sub_22957F3C0(0, 0, v18, &unk_22A580910, v58);

        return __swift_destroy_boxed_opaque_existential_0(&v66);
      }

LABEL_23:
      __break(1u);
      return result;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_22953EAE4(&v64, &qword_27D87FC10, &unk_22A5832B0);
  sub_2297A46D4();
  v38 = v1;
  v39 = sub_22A4DD05C();
  v40 = sub_22A4DDCEC();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *&v64 = v42;
    *v41 = 136315394;
    v66 = 91;
    v67 = 0xE100000000000000;
    v43 = [v38 logIdentifier];
    v44 = sub_22A4DD5EC();
    v46 = v45;

    MEMORY[0x22AAD08C0](v44, v46);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v47 = sub_2295A3E30(v66, v67, &v64);

    *(v41 + 4) = v47;
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_2295A3E30(0xD000000000000029, 0x800000022A592DA0, &v64);
    _os_log_impl(&dword_229538000, v39, v40, "%s %s cannot initialize DefaultRoomPresencePublisher because roomPresenceStorage does not exist", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v42, -1, -1);
    MEMORY[0x22AAD4E50](v41, -1, -1);
  }

  return (*(v61 + 8))(v19, v17);
}

uint64_t sub_2296F68CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296F696C, a4, 0);
}

uint64_t sub_2296F696C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_22A4DD9DC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  *(v1 + 192) = sub_22957F3C0(0, 0, v2, &unk_22A580918, v5);

  v6 = v0[1];

  return v6();
}

void sub_2296F6A90()
{
  v1 = [v0 swiftExtensions];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  if (!v1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = (*&v1[16]._os_unfair_lock_opaque)(v8, ObjectType, v1);
  v5 = v4;
  os_unfair_lock_lock(v4);
  sub_2296F6C08(&v5[2]);
  os_unfair_lock_unlock(v5);
  v3(v8, 0);
  swift_unknownObjectRelease();
  v1 = [v0 swiftExtensions];
  if (!v1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = v1;
  swift_getObjectType();
  v1 = swift_conformsToProtocol2();
  if (v1)
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    v7 = OBJC_IVAR____TtCE13HomeKitDaemonCSo7HMDHomeP33_0B6F54D380C02F3DBB7BB084234D6AED22DefaultSwiftExtensions_roomPresenceStorage;
    swift_beginAccess();
    sub_2296F6D80(v8, v6 + v7);
    swift_endAccess();
    swift_unknownObjectRelease();
    return;
  }

LABEL_9:
  __break(1u);
  os_unfair_lock_unlock(v1);
  __break(1u);
}

double sub_2296F6C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - v3;
  v5 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v5;
  v10 = *(a1 + 32);
  if (*(&v5 + 1))
  {
    sub_229557188(v9, v11);
    v6 = sub_22A4DD9DC();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_22957F1C4(v11, v9);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    sub_229557188(v9, v7 + 32);
    sub_22957F3C0(0, 0, v4, &unk_22A580900, v7);

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_22953EAE4(v9, &qword_27D881140, &qword_22A5855F0);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_2296F6D80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FC10, &unk_22A5832B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296F6E10()
{
  __swift_project_boxed_opaque_existential_0(*(v0 + 16), *(*(v0 + 16) + 24));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_2295C9EFC;

  return sub_22969A8EC();
}

uint64_t sub_2296F6EAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_229586D38;

  return sub_2296F6DF0(a1, v4, v5, v1 + 32);
}

void *sub_2296F6F5C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15 = _s35AggregatedAccessoryPresenceDetectorCMa(0);
  v16 = &off_283CDF6A8;
  *&v14 = a1;
  v12 = _s26DefaultRoomPresenceStorageCMa(0);
  v13 = &off_283CDFB68;
  *&v11 = a2;
  swift_defaultActor_initialize();
  a4[24] = 0;
  v8 = [objc_opt_self() weakToStrongObjectsMapTable];
  v9 = MEMORY[0x277D84F98];
  a4[25] = v8;
  a4[26] = v9;
  a4[27] = [objc_opt_self() weakToStrongObjectsMapTable];
  a4[29] = MEMORY[0x277D84F90];
  sub_229557188(&v14, (a4 + 14));
  sub_229557188(&v11, (a4 + 19));
  a4[28] = a3;
  return a4;
}

void *sub_2296F7048(uint64_t a1)
{
  v2 = _s26DefaultRoomPresenceStorageCMa(0);
  v22[3] = v2;
  v22[4] = &off_283CDFB68;
  v22[0] = a1;
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  v5 = sub_22967DF30(v4);

  sub_22957F1C4(v22, v21);
  v6 = [v3 defaultCenter];
  v7 = __swift_mutable_project_boxed_opaque_existential_0(v21, v21[3]);
  MEMORY[0x28223BE20](v7);
  v9 = (&v20[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v20[3] = v2;
  v20[4] = &off_283CDFB68;
  v20[0] = v11;
  _s28DefaultRoomPresencePublisherCMa();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_0(v20, v2);
  MEMORY[0x28223BE20](v13);
  v15 = (&v20[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_2296F6F5C(v5, *v15, v6, v12);
  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v20);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v17;
}

uint64_t sub_2296F7278(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229586D38;

  return sub_2296F68CC(a1, v4, v5, v6);
}

uint64_t sub_2296F732C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229699748(a1, v4, v5, v6);
}

uint64_t sub_2296F73E0(uint64_t a1)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_22A4DE0EC();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v49 = MEMORY[0x277D84F90];
    sub_22958345C(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_22A4DE08C();
    }

    else
    {
      result = sub_22A4DE04C();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_22962F698(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 UUID];
        sub_22A4DB79C();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22958345C((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_22A4DE0AC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FD70, qword_22A580948);
          v12 = sub_22A4DDB9C();
          sub_22A4DE15C();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_22962F424(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_22962F424(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_22962F424(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

void sub_2296F77EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CE00, &unk_22A577C80);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2295404B0(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_229543C5C(v33, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_229543C5C(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_229543C5C(v31, v32);
    v16 = sub_22A4DE16C();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_229543C5C(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_2296F7AE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882050, &unk_22A577C10);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_2295404B0(*(a1 + 56) + 32 * v12, v29);
        *&v28 = v14;
        *(&v28 + 1) = v15;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v16 = v28;
        sub_229543C5C(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        swift_dynamicCast();
        sub_229543C5C(&v23, v25);
        sub_229543C5C(v25, v26);
        sub_229543C5C(v26, &v24);
        v17 = sub_229543DBC(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v16;
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          __swift_destroy_boxed_opaque_existential_0(v9);
          sub_229543C5C(&v24, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v16;
          sub_229543C5C(&v24, (v2[7] + 32 * v17));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2296F7D74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D882050, &unk_22A577C10);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_229543C5C(&v22, v24);
        sub_229543C5C(v24, v25);
        sub_229543C5C(v25, &v23);
        v16 = sub_229543DBC(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_229543C5C(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_229543C5C(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2296F7FBC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CE50, &qword_22A577CC8);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + 16 * (v12 | (v11 << 6)));
        v15 = *v13;
        v14 = v13[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        swift_dynamicCast();
        sub_229543C5C(&v22, v24);
        sub_229543C5C(v24, v25);
        sub_229543C5C(v25, &v23);
        v16 = sub_229543DBC(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_0(v10);
          sub_229543C5C(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_229543C5C(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}