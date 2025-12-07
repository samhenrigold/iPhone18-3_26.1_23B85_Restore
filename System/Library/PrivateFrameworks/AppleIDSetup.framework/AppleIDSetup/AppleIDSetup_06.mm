uint64_t static IdMSAccount.reservedNewAccount.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27E4B5F00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IdMSAccount(0);
  v3 = __swift_project_value_buffer(v2, qword_27E4B8D18);

  return sub_240618544(v3, a1);
}

uint64_t IdMSAccount.isReservedNewAccount.getter()
{
  if (qword_27E4B5F00 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IdMSAccount(0);
  v2 = __swift_project_value_buffer(v1, qword_27E4B8D18);

  return _s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(v0, v2);
}

uint64_t IdMSAccount.description.getter()
{
  strcpy(v2, "IdMSAccount(");
  v0 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v0);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return v2[0];
}

uint64_t IdMSAccount.debugDescription.getter()
{
  sub_24075A864();
  MEMORY[0x245CC5E60](0x6F636341534D6449, 0xEB00000000746E75);
  MEMORY[0x245CC5E60](32, 0xE100000000000000);
  v0 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v0);

  MEMORY[0x245CC5E60](0x3A656D616E202D20, 0xE800000000000000);
  type metadata accessor for IdMSAccount(0);
  v1 = sub_240759574();
  MEMORY[0x245CC5E60](v1);

  MEMORY[0x245CC5E60](0x6E6564657263202CLL, 0xEE00203A6C616974);
  sub_24075A994();
  MEMORY[0x245CC5E60](0x636976726573202CLL, 0xEB000000003A7365);
  type metadata accessor for AIDAServiceType(0);
  sub_24061CCEC(&qword_280FAD720, type metadata accessor for AIDAServiceType, &unk_24075D60C);
  v2 = sub_24075A544();
  MEMORY[0x245CC5E60](v2);

  return 0;
}

uint64_t static IdMSAccount.ID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24075ACF4();
  }
}

uint64_t sub_24060ACF0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x7365636976726573;
  v4 = 0x6E49796C696D6166;
  if (v1 != 4)
  {
    v4 = 0x676E61526567615FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1701667182;
  if (v1 != 1)
  {
    v5 = 0x69746E6564657263;
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

uint64_t sub_24060ADA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406192E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24060ADD0(uint64_t a1)
{
  v2 = sub_2406185A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060AE0C(uint64_t a1)
{
  v2 = sub_2406185A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8DD0, &unk_240769210);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406185A8();
  sub_24075AF74();
  v8 = v2[2];
  v9 = *v2;
  v71 = v2[1];
  v72 = v8;
  v10 = v2[2];
  v11 = v2[4];
  v73 = v2[3];
  v74 = v11;
  v12 = *v2;
  v67 = v10;
  v68 = v73;
  v69 = v2[4];
  v70 = v12;
  v65 = v9;
  v66 = v71;
  v64 = 0;
  sub_2405AF99C(&v70, &v52);
  sub_2406185FC();
  v13 = v4;
  v14 = v75;
  sub_24075ABE4();
  if (v14)
  {
    v54 = v67;
    v55 = v68;
    v56 = v69;
    v52 = v65;
    v53 = v66;
    sub_240618468(&v52);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v36 = v5;
    v63[2] = v67;
    v63[3] = v68;
    v63[4] = v69;
    v63[0] = v65;
    v63[1] = v66;
    sub_240618468(v63);
    v16 = type metadata accessor for IdMSAccount(0);
    v75 = v7;
    v17 = v16;
    v62 = 1;
    sub_2407595A4();
    sub_24061CCEC(&qword_27E4B8DE8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E58]);
    sub_24075ABE4();
    v18 = v17;
    v19 = (v2 + v17[6]);
    v20 = v19[7];
    v21 = v19[5];
    v58 = v19[6];
    v59 = v20;
    v22 = v19[7];
    v23 = v19[9];
    v60 = v19[8];
    v61 = v23;
    v24 = v19[3];
    v25 = v19[1];
    v54 = v19[2];
    v55 = v24;
    v26 = v19[3];
    v27 = v19[5];
    v56 = v19[4];
    v57 = v27;
    v28 = v19[1];
    v52 = *v19;
    v53 = v28;
    v48 = v58;
    v49 = v22;
    v29 = v19[9];
    v50 = v60;
    v51 = v29;
    v44 = v54;
    v45 = v26;
    v46 = v56;
    v47 = v21;
    v42 = v52;
    v43 = v25;
    v41 = 2;
    sub_240618498(&v52, v40);
    sub_240618650();
    sub_24075ABE4();
    v30 = v36;
    v40[7] = v49;
    v40[8] = v50;
    v40[9] = v51;
    v40[2] = v44;
    v40[3] = v45;
    v40[4] = v46;
    v40[5] = v47;
    v40[6] = v48;
    v40[0] = v42;
    v40[1] = v43;
    sub_2406184D0(v40);
    v37 = *(v2 + v18[7]);
    v39 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    sub_2406187A0(&qword_27E4B8280, &qword_27E4B6470, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83B50]);
    sub_24075ABE4();
    v31 = v2 + v18[8];
    v32 = *(v31 + 1);
    v37 = *v31;
    v38 = v32;
    v39 = 4;
    sub_240618500(v37, v32);
    sub_2406186A4();
    sub_24075AB94();
    sub_2405AFA1C(v37, v38);
    v33 = v2 + v18[9];
    v34 = *v33;
    LOBYTE(v33) = v33[8];
    v37 = v34;
    LOBYTE(v38) = v33;
    v39 = 5;
    type metadata accessor for AKUserAgeRange(0);
    sub_24061CCEC(&qword_27E4B8E00, type metadata accessor for AKUserAgeRange, &protocol conformance descriptor for AKUserAgeRange);
    v35 = v75;
    sub_24075AB94();
    return (*(v30 + 8))(v35, v13);
  }
}

uint64_t IdMSAccount.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_24075A114();
  v4 = type metadata accessor for IdMSAccount(0);
  sub_2407595A4();
  sub_24061CCEC(&qword_27E4B84E8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E60]);
  sub_24075A004();
  IdMSAccount.Credential.hash(into:)(a1);
  sub_2405F115C();
  v5 = v1 + *(v4 + 32);
  v6 = *v5;
  if (*v5 != 1)
  {
    v7 = *(v5 + 8);
    sub_24075AE94();
    if (v6)
    {
      sub_24075AE94();
      v8 = v6;
      sub_24075A6E4();

      if (v7)
      {
LABEL_4:
        sub_24075AE94();
        v9 = v7;
        sub_24075A6E4();

        goto LABEL_7;
      }
    }

    else
    {
      sub_24075AE94();
      if (v7)
      {
        goto LABEL_4;
      }
    }
  }

  sub_24075AE94();
LABEL_7:
  v10 = (v2 + *(v4 + 36));
  if (v10[1])
  {
    return sub_24075AE94();
  }

  v12 = *v10;
  sub_24075AE94();
  return MEMORY[0x245CC6BA0](v12);
}

uint64_t IdMSAccount.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v1);
  return sub_24075AED4();
}

void IdMSAccount.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_2407595A4();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E08, &qword_240769220);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for IdMSAccount(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = &v12[*(v10 + 32)];
  *v36 = xmmword_24075D8C0;
  v13 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_2406185A8();
  v34 = v8;
  v14 = v35;
  sub_24075AF34();
  if (v14)
  {
    v15 = v36;
    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_2405AFA1C(*v15, v15[1]);
  }

  else
  {
    v41 = 0;
    sub_2406186F8();
    sub_24075AAF4();
    v16 = v45;
    *(v12 + 2) = v44;
    *(v12 + 3) = v16;
    *(v12 + 4) = v46;
    v17 = v43;
    *v12 = v42;
    *(v12 + 1) = v17;
    LOBYTE(v47) = 1;
    sub_24061CCEC(&qword_27E4B8E18, MEMORY[0x277CC8E50], MEMORY[0x277CC8E70]);
    sub_24075AAF4();
    v18 = v36;
    v35 = v9;
    (*(v31 + 32))(&v12[*(v9 + 20)], v5, v3);
    v40 = 2;
    sub_24061874C();
    sub_24075AAF4();
    v19 = v35;
    v20 = &v12[*(v35 + 24)];
    v21 = v54;
    *(v20 + 6) = v53;
    *(v20 + 7) = v21;
    v22 = v56;
    *(v20 + 8) = v55;
    *(v20 + 9) = v22;
    v23 = v50;
    *(v20 + 2) = v49;
    *(v20 + 3) = v23;
    v24 = v52;
    *(v20 + 4) = v51;
    *(v20 + 5) = v24;
    v25 = v48;
    *v20 = v47;
    *(v20 + 1) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8278, &qword_240765670);
    v39 = 3;
    sub_2406187A0(&qword_27E4B82F8, &qword_27E4B64A0, &protocol conformance descriptor for AIDAServiceType, MEMORY[0x277D83B70]);
    sub_24075AAF4();
    *&v12[*(v19 + 28)] = v37;
    v39 = 4;
    sub_24061883C();
    sub_24075AAA4();
    v26 = v37;
    v27 = v38;
    sub_2405AFA1C(*v18, v18[1]);
    *v18 = v26;
    v18[1] = v27;
    type metadata accessor for AKUserAgeRange(0);
    v39 = 5;
    sub_24061CCEC(&qword_27E4B8E30, type metadata accessor for AKUserAgeRange, &protocol conformance descriptor for AKUserAgeRange);
    sub_24075AAA4();
    v28 = &v12[*(v35 + 36)];
    (*(v32 + 8))(v34, v33);
    v29 = v38;
    *v28 = v37;
    v28[8] = v29;
    sub_240618544(v12, v30);
    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_240618890(v12);
  }
}

uint64_t sub_24060BC44(uint64_t a1)
{
  strcpy(v3, "IdMSAccount(");
  v1 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v1);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return v3[0];
}

uint64_t sub_24060BCEC()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24060BD30(uint64_t a1)
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v2);
  return sub_24075AED4();
}

unint64_t sub_24060BD74()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x7773736150776172;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F696E61706D6F63;
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

uint64_t sub_24060BE24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406194EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24060BE4C(uint64_t a1)
{
  v2 = sub_2406188EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060BE88(uint64_t a1)
{
  v2 = sub_2406188EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24060BEC4(uint64_t a1)
{
  v2 = sub_240618AAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060BF00(uint64_t a1)
{
  v2 = sub_240618AAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24060BF50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406196B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24060BF78(uint64_t a1)
{
  v2 = sub_240618A04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060BFB4(uint64_t a1)
{
  v2 = sub_240618A04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24060BFF0(uint64_t a1)
{
  v2 = sub_240618B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060C02C(uint64_t a1)
{
  v2 = sub_240618B00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24060C068()
{
  if (*v0)
  {
    return 0x61746144736D6469;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_24060C0B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000240787330 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61746144736D6469 && a2 == 0xED00006E656B6F54)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_24075ACF4();

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

uint64_t sub_24060C1A4(uint64_t a1)
{
  v2 = sub_2406189B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060C1E0(uint64_t a1)
{
  v2 = sub_2406189B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24060C21C(uint64_t a1)
{
  v2 = sub_24061895C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060C258(uint64_t a1)
{
  v2 = sub_24061895C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.Credential.encode(to:)(void *a1)
{
  v2 = v1;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E38, &qword_240769228);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v54 - v4;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E40, &qword_240769230);
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v57 = &v54 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E48, &qword_240769238);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E50, &qword_240769240);
  v62 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E58, &qword_240769248);
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v11 = &v54 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8E60, &qword_240769250);
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v13 = &v54 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406188EC();
  v66 = v13;
  sub_24075AF74();
  v14 = v2[6];
  v15 = v2[8];
  v16 = v2[9];
  v75[7] = v2[7];
  v75[8] = v15;
  v75[9] = v16;
  v17 = v2[2];
  v18 = v2[4];
  v19 = v2[5];
  v75[3] = v2[3];
  v75[4] = v18;
  v75[5] = v19;
  v75[6] = v14;
  v20 = v2[1];
  v75[0] = *v2;
  v75[1] = v20;
  v75[2] = v17;
  v21 = sub_240618940(v75);
  if (v21 <= 1)
  {
    v26 = v9;
    v27 = v62;
    v28 = v7;
    v29 = v63;
    v30 = v64;
    v31 = v65;
    if (!v21)
    {
      v32 = sub_24057D704(v75);
      LOBYTE(v70) = 1;
      sub_240618AAC();
      v33 = v67;
      v34 = v66;
      sub_24075AB54();
      v70 = *v32;
      v35 = *(v32 + 16);
      v36 = *(v32 + 32);
      v37 = *(v32 + 48);
      v74 = *(v32 + 64);
      v73 = v37;
      v72 = v36;
      v71 = v35;
      sub_240618A58();
      sub_24075ABE4();
      (*(v27 + 8))(v26, v28);
      return (*(v68 + 8))(v34, v33);
    }

    v46 = sub_24057D704(v75);
    LOBYTE(v70) = 2;
    sub_240618A04();
    v23 = v67;
    v24 = v66;
    sub_24075AB54();
    v70 = *v46;
    v47 = *(v46 + 16);
    v48 = *(v46 + 32);
    v49 = *(v46 + 48);
    v74 = *(v46 + 64);
    v73 = v49;
    v72 = v48;
    v71 = v47;
    v69 = 0;
    sub_240618A58();
    v50 = v76;
    sub_24075ABE4();
    if (v50)
    {
      (*(v30 + 8))(v29, v31);
      return (*(v68 + 8))(v24, v23);
    }

    v51 = *(v46 + 88);
    v52 = *(v46 + 120);
    v72 = *(v46 + 104);
    v73 = v52;
    LOBYTE(v74) = *(v46 + 136);
    v53 = *(v46 + 72);
    v71 = v51;
    v70 = v53;
    v69 = 1;
    sub_240602058();
    sub_24075ABE4();
    LOBYTE(v70) = 2;
    sub_24075ABB4();
    (*(v30 + 8))(v29, v31);
    return (*(v68 + 8))(v24, v23);
  }

  if (v21 != 2)
  {
    if (v21 != 3)
    {
      LOBYTE(v70) = 0;
      sub_240618B00();
      v44 = v67;
      v45 = v66;
      sub_24075AB54();
      (*(v54 + 8))(v11, v55);
      return (*(v68 + 8))(v45, v44);
    }

    sub_24057D704(v75);
    LOBYTE(v70) = 4;
    sub_24061895C();
    v22 = v56;
    v23 = v67;
    v24 = v66;
    sub_24075AB54();
    v25 = v59;
    sub_24075ABB4();
    (*(v58 + 8))(v22, v25);
    return (*(v68 + 8))(v24, v23);
  }

  sub_24057D704(v75);
  LOBYTE(v70) = 3;
  sub_2406189B0();
  v39 = v57;
  v40 = v67;
  v41 = v66;
  sub_24075AB54();
  LOBYTE(v70) = 0;
  v42 = v61;
  v43 = v76;
  sub_24075ABB4();
  if (!v43)
  {
    LOBYTE(v70) = 1;
    sub_24075AB64();
  }

  (*(v60 + 8))(v39, v42);
  return (*(v68 + 8))(v41, v40);
}

uint64_t IdMSAccount.Credential.hash(into:)(uint64_t a1)
{
  v3 = v1[7];
  v13[6] = v1[6];
  v13[7] = v3;
  v4 = v1[9];
  v13[8] = v1[8];
  v13[9] = v4;
  v5 = v1[3];
  v13[2] = v1[2];
  v13[3] = v5;
  v6 = v1[5];
  v13[4] = v1[4];
  v13[5] = v6;
  v7 = v1[1];
  v13[0] = *v1;
  v13[1] = v7;
  v8 = sub_240618940(v13);
  if (v8 <= 1)
  {
    if (!v8)
    {
      v12 = *(sub_24057D704(v13) + 64);
      MEMORY[0x245CC6BA0](1);
      sub_24075A114();
      sub_24075A114();
      sub_24075A114();
      sub_24075A114();
      return MEMORY[0x245CC6BE0](v12);
    }

    v11 = *(sub_24057D704(v13) + 64);
    MEMORY[0x245CC6BA0](2);
    sub_24075A114();
    sub_24075A114();
    sub_24075A114();
    sub_24075A114();
    MEMORY[0x245CC6BE0](v11);
    IdMSAccount.DeviceInfo.hash(into:)(a1);
  }

  else if (v8 == 2)
  {
    v10 = *(sub_24057D704(v13) + 24);
    MEMORY[0x245CC6BA0](3);
    sub_24075A114();
    if (!v10)
    {
      return sub_24075AE94();
    }

    sub_24075AE94();
  }

  else
  {
    if (v8 != 3)
    {
      return MEMORY[0x245CC6BA0](0);
    }

    sub_24057D704(v13);
    MEMORY[0x245CC6BA0](4);
  }

  return sub_24075A114();
}

uint64_t IdMSAccount.Credential.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.Credential.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t IdMSAccount.Credential.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EA0, &qword_240769258);
  v4 = *(v3 - 8);
  v74 = v3;
  v75 = v4;
  MEMORY[0x28223BE20](v3);
  v82 = &v69 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EA8, &qword_240769260);
  v7 = *(v6 - 8);
  v76 = v6;
  v77 = v7;
  MEMORY[0x28223BE20](v6);
  v79 = &v69 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EB0, &qword_240769268);
  v78 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v81 = &v69 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EB8, &qword_240769270);
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v69 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EC0, &qword_240769278);
  v70 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EC8, &unk_240769280);
  v80 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v19 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_2406188EC();
  v20 = v137;
  sub_24075AF34();
  if (v20)
  {
    goto LABEL_12;
  }

  v21 = v15;
  v69 = v13;
  v137 = 0;
  v22 = v81;
  v23 = v82;
  v24 = v83;
  v25 = sub_24075AB34();
  v26 = (2 * *(v25 + 16)) | 1;
  v133 = v25;
  v134 = v25 + 32;
  v135 = 0;
  v136 = v26;
  v27 = sub_2405B8AFC();
  if (v27 == 5 || v135 != v136 >> 1)
  {
    v34 = sub_24075A8C4();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6620, &qword_24075DA40);
    *v36 = &type metadata for IdMSAccount.Credential;
    sub_24075AA64();
    sub_24075A8A4();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
  }

  else
  {
    if (v27 > 1u)
    {
      if (v27 == 2)
      {
        LOBYTE(v113) = 2;
        sub_240618A04();
        v40 = v137;
        sub_24075AA54();
        v41 = v80;
        if (!v40)
        {
          v107 = 0;
          sub_240618B7C();
          v42 = v73;
          sub_24075AAF4();
          v104 = v110;
          v105 = v111;
          v106 = v112;
          v102 = v108;
          v103 = v109;
          v96 = 1;
          sub_2406020F4();
          sub_24075AAF4();
          v93 = v99;
          v94 = v100;
          v95 = v101;
          v91 = v97;
          v92 = v98;
          v90 = 2;
          v137 = sub_24075AAC4();
          v68 = v67;
          (*(v78 + 8))(v22, v42);
          (*(v41 + 8))(v18, v16);
          swift_unknownObjectRelease();
          v87 = v104;
          v88 = v105;
          *&v89[0] = v106;
          v85 = v102;
          v86 = v103;
          *(&v89[2] + 8) = v93;
          *(&v89[1] + 8) = v92;
          *(&v89[3] + 8) = v94;
          BYTE8(v89[4]) = v95;
          *(v89 + 8) = v91;
          v115 = v104;
          v116 = v105;
          v113 = v102;
          v114 = v103;
          v120 = v89[3];
          v121 = v89[4];
          v118 = v89[1];
          v119 = v89[2];
          v117 = v89[0];
          *&v122 = v137;
          *(&v122 + 1) = v68;
          sub_240618C00(&v113);
          goto LABEL_28;
        }

        v44 = *(v80 + 8);
        v45 = v18;
        goto LABEL_27;
      }

      v28 = v24;
      v29 = v80;
      if (v27 == 3)
      {
        LOBYTE(v113) = 3;
        sub_2406189B0();
        v30 = v79;
        v31 = v18;
        v32 = v137;
        sub_24075AA54();
        if (!v32)
        {
          LOBYTE(v113) = 0;
          v33 = v76;
          v50 = v30;
          v51 = v16;
          v137 = sub_24075AAC4();
          v53 = v52;
          LOBYTE(v85) = 1;
          v63 = sub_24075AA74();
          v64 = v50;
          v66 = v65;
          (*(v77 + 8))(v64, v33);
          (*(v29 + 8))(v18, v51);
          swift_unknownObjectRelease();
          *&v113 = v137;
          *(&v113 + 1) = v53;
          *&v114 = v63;
          *(&v114 + 1) = v66;
          sub_240618B68(&v113);
LABEL_28:
          v129 = v119;
          v130 = v120;
          v131 = v121;
          v132 = v122;
          v125 = v115;
          v126 = v116;
          v127 = v117;
          v128 = v118;
          v123 = v113;
          v124 = v114;
          v28 = v83;
          v37 = v84;
          goto LABEL_25;
        }

        goto LABEL_20;
      }

      LOBYTE(v113) = 4;
      sub_24061895C();
      v31 = v18;
      v43 = v137;
      sub_24075AA54();
      if (v43)
      {
LABEL_20:
        v44 = *(v29 + 8);
        v45 = v31;
LABEL_27:
        v44(v45, v16);
        goto LABEL_11;
      }

      v49 = v74;
      v54 = sub_24075AAC4();
      v55 = v49;
      v57 = v56;
      (*(v75 + 8))(v23, v55);
      (*(v29 + 8))(v18, v16);
      swift_unknownObjectRelease();
      *&v113 = v54;
      *(&v113 + 1) = v57;
      sub_240618B54(&v113);
      v129 = v119;
      v130 = v120;
      v131 = v121;
      v132 = v122;
      v125 = v115;
      v126 = v116;
      v127 = v117;
      v128 = v118;
      v123 = v113;
      v124 = v114;
      v37 = v84;
LABEL_25:
      v58 = v130;
      v28[6] = v129;
      v28[7] = v58;
      v59 = v132;
      v28[8] = v131;
      v28[9] = v59;
      v60 = v126;
      v28[2] = v125;
      v28[3] = v60;
      v61 = v128;
      v28[4] = v127;
      v28[5] = v61;
      v62 = v124;
      *v28 = v123;
      v28[1] = v62;
      return __swift_destroy_boxed_opaque_existential_1(v37);
    }

    if (v27)
    {
      LOBYTE(v113) = 1;
      sub_240618AAC();
      v46 = v137;
      sub_24075AA54();
      if (!v46)
      {
        sub_240618B7C();
        v47 = v72;
        sub_24075AAF4();
        v48 = (v80 + 8);
        (*(v71 + 8))(v12, v47);
        (*v48)(v18, v16);
        swift_unknownObjectRelease();
        v115 = v87;
        v116 = v88;
        *&v117 = *&v89[0];
        v113 = v85;
        v114 = v86;
        sub_240618C14(&v113);
        v129 = v119;
        v130 = v120;
        v131 = v121;
        v132 = v122;
        v125 = v115;
        v126 = v116;
        v127 = v117;
        v128 = v118;
        v123 = v113;
        v124 = v114;
        goto LABEL_24;
      }
    }

    else
    {
      LOBYTE(v113) = 0;
      sub_240618B00();
      v39 = v137;
      sub_24075AA54();
      if (!v39)
      {
        (*(v70 + 8))(v21, v69);
        (*(v80 + 8))(v18, v16);
        swift_unknownObjectRelease();
        sub_2405AF9F8(&v123);
LABEL_24:
        v37 = v84;
        v28 = v24;
        goto LABEL_25;
      }
    }
  }

  (*(v80 + 8))(v18, v16);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v37 = v84;
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_24060DA28()
{
  sub_24075AE64();
  IdMSAccount.Credential.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24060DA6C(uint64_t a1)
{
  sub_24075AE64();
  IdMSAccount.Credential.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t IdMSAccount.ID.altDsid.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdMSAccount.ID.altDsid.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IdMSAccount.ID.username.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IdMSAccount.ID.username.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IdMSAccount.ID.dsid.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t IdMSAccount.ID.dsid.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t IdMSAccount.ID.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t IdMSAccount.ID.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t IdMSAccount.ID.deviceUserId.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t IdMSAccount.ID.deviceUserId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_24060DD50()
{
  xmmword_27E4B8D70 = 0uLL;
  *&xmmword_27E4B8D30 = 0xD00000000000001BLL;
  *(&xmmword_27E4B8D30 + 1) = 0x80000002407873D0;
  xmmword_27E4B8D40 = 0u;
  xmmword_27E4B8D50 = 0u;
  xmmword_27E4B8D60 = 0u;

  xmmword_27E4B8D70 = 0uLL;
}

uint64_t static IdMSAccount.ID.reservedNewAccountID.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27E4B5F08 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = xmmword_27E4B8D60;
  v8[2] = xmmword_27E4B8D50;
  v8[3] = xmmword_27E4B8D60;
  v2 = xmmword_27E4B8D70;
  v8[4] = xmmword_27E4B8D70;
  v4 = xmmword_27E4B8D30;
  v3 = xmmword_27E4B8D40;
  v8[0] = xmmword_27E4B8D30;
  v8[1] = xmmword_27E4B8D40;
  a1[2] = xmmword_27E4B8D50;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_2405AF99C(v8, &v7);
}

uint64_t sub_24060DE54()
{
  xmmword_27E4B8DC0 = 0uLL;
  *&xmmword_27E4B8D80 = 0xD00000000000001FLL;
  *(&xmmword_27E4B8D80 + 1) = 0x80000002407873F0;
  xmmword_27E4B8D90 = 0u;
  xmmword_27E4B8DA0 = 0u;
  xmmword_27E4B8DB0 = 0u;

  xmmword_27E4B8DC0 = 0uLL;
}

uint64_t static IdMSAccount.ID.reservedUnknownAccountID.getter@<X0>(__int128 *a1@<X8>)
{
  if (qword_27E4B5F10 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = xmmword_27E4B8DB0;
  v8[2] = xmmword_27E4B8DA0;
  v8[3] = xmmword_27E4B8DB0;
  v2 = xmmword_27E4B8DC0;
  v8[4] = xmmword_27E4B8DC0;
  v4 = xmmword_27E4B8D80;
  v3 = xmmword_27E4B8D90;
  v8[0] = xmmword_27E4B8D80;
  v8[1] = xmmword_27E4B8D90;
  a1[2] = xmmword_27E4B8DA0;
  a1[3] = v1;
  a1[4] = v2;
  *a1 = v4;
  a1[1] = v3;
  return sub_2405AF99C(v8, &v7);
}

uint64_t sub_24060DFA8(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = *v4;
  v8 = v4[1];
  if (*a1 != -1)
  {
    v11 = *v4;
    v12 = v8;
    v13 = a3;
    swift_once();
    a3 = v13;
    v8 = v12;
    v7 = v11;
  }

  if (v7 == *a2 && v8 == *a3)
  {
    return 1;
  }

  return sub_24075ACF4();
}

uint64_t IdMSAccount.ID.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[9];
  if (v7)
  {
    v17 = v0[8];
    sub_24075A864();

    MEMORY[0x245CC5E60](v1, v2);
    MEMORY[0x245CC5E60](3831084, 0xE300000000000000);
    if (v3)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0x296C6C756E28;
    }

    if (v3)
    {
      v9 = v3;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    MEMORY[0x245CC5E60](v8, v9);

    MEMORY[0x245CC5E60](3826732, 0xE300000000000000);
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0x296C6C756E28;
    }

    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0xE600000000000000;
    }

    MEMORY[0x245CC5E60](v10, v11);

    MEMORY[0x245CC5E60](0x3A646975642CLL, 0xE600000000000000);
    MEMORY[0x245CC5E60](v17, v7);
  }

  else
  {
    sub_24075A864();

    MEMORY[0x245CC5E60](v1, v2);
    MEMORY[0x245CC5E60](3831084, 0xE300000000000000);
    if (v3)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0x296C6C756E28;
    }

    if (v3)
    {
      v13 = v3;
    }

    else
    {
      v13 = 0xE600000000000000;
    }

    MEMORY[0x245CC5E60](v12, v13);

    MEMORY[0x245CC5E60](3826732, 0xE300000000000000);
    if (v5)
    {
      v14 = v6;
    }

    else
    {
      v14 = 0x296C6C756E28;
    }

    if (v5)
    {
      v15 = v5;
    }

    else
    {
      v15 = 0xE600000000000000;
    }

    MEMORY[0x245CC5E60](v14, v15);
  }

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return 3825960;
}

uint64_t sub_24060E284()
{
  v1 = *v0;
  v2 = 0x64697344746C61;
  v3 = 1684632420;
  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x7355656369766564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656D616E72657375;
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

uint64_t sub_24060E318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2406197B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24060E340(uint64_t a1)
{
  v2 = sub_240618C24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060E37C(uint64_t a1)
{
  v2 = sub_240618C24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.ID.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8ED8, &qword_240769290);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240618C24();
  sub_24075AF74();
  v18 = 0;
  v11 = v13[9];
  sub_24075ABB4();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_24075AB64();
  v16 = 2;
  sub_24075AB64();
  v15 = 3;
  sub_24075AB64();
  v14 = 4;
  sub_24075AB64();
  return (*(v4 + 8))(v6, v3);
}

uint64_t IdMSAccount.ID.hashValue.getter()
{
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t IdMSAccount.ID.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EE8, &qword_240769298);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240618C24();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v33[0]) = 0;
  v9 = sub_24075AAC4();
  v11 = v10;
  LOBYTE(v33[0]) = 1;
  *&v27 = sub_24075AA74();
  *(&v27 + 1) = v12;
  LOBYTE(v33[0]) = 2;
  *&v26 = sub_24075AA74();
  *(&v26 + 1) = v13;
  LOBYTE(v33[0]) = 3;
  *&v25 = sub_24075AA74();
  *(&v25 + 1) = v14;
  v39 = 4;
  v15 = sub_24075AA74();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  *&v28 = v9;
  *(&v28 + 1) = v11;
  v19 = *(&v27 + 1);
  v29 = v27;
  v30 = v26;
  v20 = *(&v25 + 1);
  v31 = v25;
  *&v32 = v15;
  *(&v32 + 1) = v18;
  v21 = v25;
  a2[2] = v26;
  a2[3] = v21;
  a2[4] = v32;
  v22 = v29;
  *a2 = v28;
  a2[1] = v22;
  sub_2405AF99C(&v28, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v9;
  v33[1] = v11;
  v33[2] = v27;
  v33[3] = v19;
  v34 = v26;
  v35 = v25;
  v36 = v20;
  v37 = v15;
  v38 = v18;
  return sub_240618468(v33);
}

uint64_t sub_24060EA1C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24075ACF4();
  }
}

uint64_t sub_24060EA4C()
{
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t sub_24060EAA0(uint64_t a1)
{
  sub_24075AE64();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t IdMSAccount.SRPResults.id.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2405AF99C(v8, &v7);
}

__n128 IdMSAccount.SRPResults.id.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_240618468(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t IdMSAccount.SRPResults.archivedData.getter()
{
  v1 = *(v0 + 80);
  sub_240618C78(v1, *(v0 + 88));
  return v1;
}

uint64_t IdMSAccount.SRPResults.archivedData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24058C9E4(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t IdMSAccount.SRPResults.init(id:archivedData:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[3];
  *(a4 + 32) = a1[2];
  *(a4 + 48) = v7;
  *(a4 + 64) = a1[4];
  v8 = a1[1];
  *a4 = *a1;
  *(a4 + 16) = v8;
  result = sub_24058C9E4(0, 0xF000000000000000);
  *(a4 + 80) = a2;
  *(a4 + 88) = a3;
  return result;
}

uint64_t IdMSAccount.SRPResults.description.getter()
{
  v1 = *(v0 + 88);
  strcpy(v6, "SRPResults(id:");
  HIBYTE(v6[1]) = -18;
  v2 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v2);

  v3 = 0xE400000000000000;
  MEMORY[0x245CC5E60](979657004, 0xE400000000000000);
  if (v1 >> 60 == 15)
  {
    v4 = 0x65736C6166;
  }

  else
  {
    v4 = 1702195828;
  }

  if (v1 >> 60 == 15)
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v4, v3);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return v6[0];
}

uint64_t IdMSAccount.SRPResults.debugDescription.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  strcpy(v7, "SRPResults(id:");
  HIBYTE(v7[1]) = -18;
  v3 = IdMSAccount.ID.description.getter();
  MEMORY[0x245CC5E60](v3);

  v4 = 0xE400000000000000;
  MEMORY[0x245CC5E60](979657004, 0xE400000000000000);
  if (v2 >> 60 == 15)
  {
    v5 = 0x65736C6166;
  }

  else
  {
    v5 = 1702195828;
  }

  if (v2 >> 60 == 15)
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x245CC5E60](v5, v4);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  MEMORY[0x245CC5E60](0x3A646128202B20, 0xE700000000000000);
  sub_240618C78(v1, v2);
  sub_240618C8C();
  sub_24075ACD4();
  sub_24058C9E4(v1, v2);
  MEMORY[0x245CC5E60](41, 0xE100000000000000);

  MEMORY[0x245CC5E60](0, 0xE000000000000000);

  return v7[0];
}

uint64_t sub_24060EEE8()
{
  if (*v0)
  {
    return 0x6465766968637261;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_24060EF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465766968637261 && a2 == 0xEC00000061746144)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_24060EFF8(uint64_t a1)
{
  v2 = sub_240618E20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060F034(uint64_t a1)
{
  v2 = sub_240618E20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.SRPResults.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8EF8, &qword_2407692A0);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = v1[3];
  v26 = v1[2];
  v27 = v7;
  v28 = v1[4];
  v8 = v1[1];
  v24 = *v1;
  v25 = v8;
  v9 = *(v1 + 10);
  v12 = *(v1 + 11);
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2405AF99C(&v24, &v19);
  sub_240618E20();
  sub_24075AF74();
  v20 = v25;
  v21 = v26;
  v22 = v27;
  v23 = v28;
  v19 = v24;
  v18 = 0;
  sub_2406185FC();
  sub_24075ABE4();
  v17[2] = v21;
  v17[3] = v22;
  v17[4] = v23;
  v17[0] = v19;
  v17[1] = v20;
  sub_240618468(v17);
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v14 = 1;
    sub_240618C78(v13, v12);
    sub_240618E74();
    sub_24075AB94();
    sub_24058C9E4(v15, v16);
  }

  return (*(v29 + 8))(v6, v4);
}

uint64_t IdMSAccount.SRPResults.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 88);
  sub_24075A114();
  if (v2 >> 60 == 15)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();

  return sub_2407596D4();
}

uint64_t IdMSAccount.SRPResults.hashValue.getter()
{
  v1 = *(v0 + 88);
  sub_24075AE64();
  sub_24075A114();
  sub_24075AE94();
  if (v1 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

uint64_t IdMSAccount.SRPResults.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F08, &qword_2407692A8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240618E20();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24058C9E4(0, 0xF000000000000000);
  }

  else
  {
    v8 = v18;
    v37 = 0;
    sub_2406186F8();
    sub_24075AAF4();
    v33 = v28;
    v34 = v29;
    v35 = v30;
    v31 = v26;
    v32 = v27;
    v36 = 1;
    sub_240618EC8();
    sub_24075AAA4();
    (*(v5 + 8))(v7, v4);
    v9 = v24;
    v10 = v25;
    sub_24058C9E4(0, 0xF000000000000000);
    v11 = v34;
    v19[2] = v33;
    v19[3] = v34;
    v12 = v35;
    v19[4] = v35;
    v14 = v31;
    v13 = v32;
    v19[0] = v31;
    v19[1] = v32;
    *&v20 = v9;
    *(&v20 + 1) = v10;
    v8[2] = v33;
    v8[3] = v11;
    *v8 = v14;
    v8[1] = v13;
    v15 = v20;
    v8[4] = v12;
    v8[5] = v15;
    sub_240618F1C(v19, v21);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v21[2] = v33;
    v21[3] = v34;
    v21[4] = v35;
    v21[0] = v31;
    v21[1] = v32;
    v22 = v9;
    v23 = v10;
    return sub_240618F54(v21);
  }
}

uint64_t sub_24060F6A0()
{
  v1 = *(v0 + 88);
  sub_24075AE64();
  sub_24075A114();
  sub_24075AE94();
  if (v1 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

uint64_t sub_24060F734(uint64_t a1)
{
  v2 = *(v1 + 88);
  sub_24075A114();
  if (v2 >> 60 == 15)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();

  return sub_2407596D4();
}

uint64_t sub_24060F7B8(uint64_t a1)
{
  v2 = *(v1 + 88);
  sub_24075AE64();
  sub_24075A114();
  sub_24075AE94();
  if (v2 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

uint64_t IdMSAccount.AnisettePackage.machineID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdMSAccount.AnisettePackage.oneTimePassword.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IdMSAccount.AnisettePackage.init(machineID:oneTimePassword:routingInfo:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t IdMSAccount.AnisettePackage.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24075A864();

  MEMORY[0x245CC5E60](v1, v2);
  MEMORY[0x245CC5E60](0x3A70746F2CLL, 0xE500000000000000);
  MEMORY[0x245CC5E60](v3, v4);
  MEMORY[0x245CC5E60](979989036, 0xE400000000000000);
  v5 = sub_24075AC34();
  MEMORY[0x245CC5E60](v5);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return 0xD000000000000014;
}

BOOL static IdMSAccount.AnisettePackage.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_24075ACF4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_24075ACF4()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24060FAA4()
{
  v1 = 0x50656D6954656E6FLL;
  if (*v0 != 1)
  {
    v1 = 0x49676E6974756F72;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x49656E696863616DLL;
  }
}

uint64_t sub_24060FB18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24061996C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24060FB40(uint64_t a1)
{
  v2 = sub_240618F84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24060FB7C(uint64_t a1)
{
  v2 = sub_240618F84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.AnisettePackage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F18, &qword_2407692B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[1] = v1[3];
  v10[2] = v7;
  v10[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240618F84();
  sub_24075AF74();
  v13 = 0;
  v8 = v10[3];
  sub_24075ABB4();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 1;
  sub_24075ABB4();
  v11 = 2;
  sub_24075AC14();
  return (*(v4 + 8))(v6, v3);
}

uint64_t IdMSAccount.AnisettePackage.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_24075A114();
  sub_24075A114();
  return MEMORY[0x245CC6BE0](v2);
}

uint64_t IdMSAccount.AnisettePackage.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v1);
  return sub_24075AED4();
}

uint64_t IdMSAccount.AnisettePackage.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F28, &qword_2407692B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240618F84();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_24075AAC4();
  v11 = v10;
  v19 = v9;
  v21 = 1;
  v17 = sub_24075AAC4();
  v18 = v12;
  v20 = 2;
  v13 = sub_24075AB24();
  (*(v6 + 8))(v8, v5);
  v14 = v18;
  *a2 = v19;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

BOOL sub_240610124(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_24075ACF4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_24075ACF4()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2406101C0()
{
  v1 = *(v0 + 32);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v1);
  return sub_24075AED4();
}

uint64_t sub_240610240(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_24075A114();
  sub_24075A114();
  return MEMORY[0x245CC6BE0](v2);
}

uint64_t sub_240610294(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v2);
  return sub_24075AED4();
}

uint64_t IdMSAccount.DeviceInfo.deviceIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdMSAccount.DeviceInfo.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IdMSAccount.DeviceInfo.serverFriendlyDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IdMSAccount.DeviceInfo.serverFriendlyDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t IdMSAccount.DeviceInfo.localeInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_240618FD8(v2, v3);
}

__n128 IdMSAccount.DeviceInfo.localeInfo.setter(uint64_t a1)
{
  sub_240604C2C(v1[4], v1[5], v1[6], v1[7]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 2) = *a1;
  *(v1 + 3) = v4;
  return result;
}

__n128 IdMSAccount.DeviceInfo.init(deviceIdentifier:serverFriendlyDescription:localeInfo:isLegacy:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  sub_240604C2C(0, 0, 0, 0);
  result = *a5;
  v11 = *(a5 + 16);
  *(a7 + 32) = *a5;
  *(a7 + 48) = v11;
  *(a7 + 64) = a6;
  return result;
}

void static IdMSAccount.DeviceInfo.current.getter(uint64_t a1@<X8>)
{
  v2 = sub_2407597F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() currentDevice];
  if (v6)
  {
    v7 = v6;
    sub_2407597E4();
    v8 = sub_2407597C4();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    v11 = sub_2407597D4();
    v12 = sub_24075A084();
    v13 = CFPreferencesCopyValue(v12, *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);

    if (v13 && (v16[0] = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F30, &unk_2407692C0), swift_dynamicCast()))
    {
      v14 = v15[1];
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v16[0] = v8;
    v16[1] = v10;
    v16[2] = v11;
    v16[3] = v14;
    AKDevice.into(with:)(v16, a1);

    sub_240604C2C(v8, v10, v11, v14);
  }

  else
  {
    __break(1u);
  }
}

double AKDevice.into(with:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = [v3 uniqueDeviceIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_24075A0B4();
    v13 = v12;

    v14 = [v3 serverFriendlyDescription];
    if (v14)
    {
      v15 = v14;
      v16 = sub_24075A0B4();
      v18 = v17;

      sub_240618FD8(v5, v6);
      sub_240604C2C(0, 0, 0, 0);
      *a2 = v11;
      *(a2 + 8) = v13;
      *(a2 + 16) = v16;
      *(a2 + 24) = v18;
      *(a2 + 32) = v5;
      *(a2 + 40) = v6;
      *(a2 + 48) = v7;
      *(a2 + 56) = v8;
      *(a2 + 64) = 0;
      return result;
    }
  }

  *(a2 + 64) = 0;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t IdMSAccount.DeviceInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 64);
  sub_24075A864();

  strcpy(v9, "DeviceInfo(id:");
  HIBYTE(v9[1]) = -18;
  MEMORY[0x245CC5E60](v1, v2);
  v6 = 0xE500000000000000;
  MEMORY[0x245CC5E60](0x3A6466732CLL, 0xE500000000000000);
  MEMORY[0x245CC5E60](v3, v4);
  MEMORY[0x245CC5E60](979856428, 0xE400000000000000);
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v5)
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x245CC5E60](v7, v6);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return v9[0];
}

uint64_t IdMSAccount.DeviceInfo.debugDescription.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = IdMSAccount.DeviceInfo.description.getter();
  sub_240618FD8(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F38, &qword_24077A740);
  v4 = sub_24075A0E4();
  MEMORY[0x245CC5E60](v4);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);

  MEMORY[0x245CC5E60](0x3A696C28202B20, 0xE700000000000000);

  return v3;
}

unint64_t sub_240610A38()
{
  v1 = 0x6E49656C61636F6CLL;
  if (*v0 != 2)
  {
    v1 = 0x79636167654C7369;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_240610AC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240619A98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_240610AE8(uint64_t a1)
{
  v2 = sub_240619028();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240610B24(uint64_t a1)
{
  v2 = sub_240619028();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.DeviceInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F40, &qword_2407692D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v7;
  v8 = *(v1 + 32);
  v19 = *(v1 + 40);
  v20 = v8;
  v9 = *(v1 + 48);
  v17 = *(v1 + 56);
  v18 = v9;
  v28 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240619028();
  sub_24075AF74();
  LOBYTE(v24) = 0;
  v10 = v23;
  sub_24075ABB4();
  if (!v10)
  {
    v11 = v17;
    v12 = v18;
    v14 = v19;
    v13 = v20;
    LOBYTE(v24) = 1;
    sub_24075ABB4();
    v24 = v13;
    v25 = v14;
    v26 = v12;
    v27 = v11;
    v29 = 2;
    sub_240618FD8(v13, v14);
    sub_24061907C();
    sub_24075AB94();
    sub_240604C2C(v24, v25, v26, v27);
    LOBYTE(v24) = 3;
    sub_24075ABC4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IdMSAccount.DeviceInfo.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  v4 = v1[6];
  v3 = v1[7];
  sub_24075A114();
  sub_24075A114();
  if (v2)
  {
    sub_24075AE94();
    sub_24075A114();
    MEMORY[0x245CC6BA0](*(v4 + 16));
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {

        sub_24075A114();

        v6 += 16;
        --v5;
      }

      while (v5);
    }

    MEMORY[0x245CC6BA0](*(v3 + 16));
    v7 = *(v3 + 16);
    if (v7)
    {
      v8 = v3 + 40;
      do
      {

        sub_24075A114();

        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  else
  {
    sub_24075AE94();
  }

  return sub_24075AE94();
}

uint64_t IdMSAccount.DeviceInfo.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.DeviceInfo.hash(into:)(v1);
  return sub_24075AED4();
}

void IdMSAccount.DeviceInfo.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F58, &qword_2407692D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_240619028();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_240604C2C(0, 0, 0, 0);
  }

  else
  {
    LOBYTE(v31) = 0;
    v9 = sub_24075AAC4();
    v11 = v10;
    v21 = v9;
    LOBYTE(v31) = 1;
    *&v20 = sub_24075AAC4();
    *(&v20 + 1) = v12;
    LOBYTE(v26) = 2;
    sub_2406190D0();
    sub_24075AAA4();
    v23 = v32;
    v24 = v31;
    v25 = *(&v33 + 1);
    v22 = v33;
    sub_240604C2C(0, 0, 0, 0);
    v39 = 3;
    v13 = sub_24075AAD4();
    (*(v6 + 8))(v8, v5);
    v14 = v21;
    *&v26 = v21;
    *(&v26 + 1) = v11;
    v27 = v20;
    v16 = v23;
    v15 = v24;
    *&v28 = v24;
    *(&v28 + 1) = v23;
    v17 = v22;
    *&v29 = v22;
    *(&v29 + 1) = v25;
    v13 &= 1u;
    v30 = v13;
    *(a2 + 64) = v13;
    v18 = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v18;
    v19 = v27;
    *a2 = v26;
    *(a2 + 16) = v19;
    sub_240619124(&v26, &v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v31 = v14;
    v32 = v11;
    v33 = v20;
    v34 = v15;
    v35 = v16;
    v36 = v17;
    v37 = v25;
    v38 = v13;
    sub_240602EAC(&v31);
  }
}

uint64_t sub_2406112D8()
{
  sub_24075AE64();
  IdMSAccount.DeviceInfo.hash(into:)(v1);
  return sub_24075AED4();
}

uint64_t sub_24061131C(uint64_t a1)
{
  sub_24075AE64();
  IdMSAccount.DeviceInfo.hash(into:)(v2);
  return sub_24075AED4();
}

id IdMSAccount.FamilyInfo.circle.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void (*IdMSAccount.FamilyInfo.circle.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_24058F504();
  return sub_2405A261C;
}

void *IdMSAccount.FamilyInfo.member.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void (*IdMSAccount.FamilyInfo.member.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_24058F504();
  return sub_2405B8B5C;
}

uint64_t IdMSAccount.FamilyInfo.init(circle:member:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static IdMSAccount.FamilyInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B8F70, 0x277D08248);
    v6 = v4;
    v7 = v2;
    v8 = sub_24075A6D4();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_240590794(0, &qword_27E4B8F68, 0x277D08268);
      v9 = v5;
      v10 = v3;
      v11 = sub_24075A6D4();

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2406115D0()
{
  if (*v0)
  {
    return 0x7265626D656DLL;
  }

  else
  {
    return 0x656C63726963;
  }
}

uint64_t sub_2406115FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C63726963 && a2 == 0xE600000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265626D656DLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_2406116D0(uint64_t a1)
{
  v2 = sub_24061915C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24061170C(uint64_t a1)
{
  v2 = sub_24061915C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.FamilyInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F78, &qword_2407692E0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v12 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061915C();
  v9 = v8;
  sub_24075AF74();
  v14 = v8;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F88, &qword_2407692E8);
  sub_240590128(&qword_27E4B8F90, &qword_27E4B8F88, &qword_2407692E8, &protocol conformance descriptor for _objcCodable<A>);
  sub_24075ABE4();

  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    v10 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F98, &qword_2407692F0);
    sub_240590128(&qword_27E4B8FA0, &qword_27E4B8F98, &qword_2407692F0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075ABE4();
  }

  return (*(v5 + 8))(v7, v4);
}

void IdMSAccount.FamilyInfo.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  if (!*v1)
  {
    sub_24075AE94();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_24075AE94();
    return;
  }

  sub_24075AE94();
  v4 = v3;
  sub_24075A6E4();

  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_24075AE94();
  v5 = v2;
  sub_24075A6E4();
}

uint64_t IdMSAccount.FamilyInfo.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  sub_24075AE64();
  if (!v2)
  {
    sub_24075AE94();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24075AE94();
    return sub_24075AED4();
  }

  sub_24075AE94();
  v3 = v2;
  sub_24075A6E4();

  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24075AE94();
  v4 = v1;
  sub_24075A6E4();

  return sub_24075AED4();
}

void IdMSAccount.FamilyInfo.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FA8, &qword_2407692F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061915C();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F88, &qword_2407692E8);
    v14 = 0;
    sub_240590128(&qword_27E4B8FB0, &qword_27E4B8F88, &qword_2407692E8, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v9 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F98, &qword_2407692F0);
    v14 = 1;
    sub_240590128(&qword_27E4B8FB8, &qword_27E4B8F98, &qword_2407692F0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    (*(v6 + 8))(v8, v5);
    v10 = v15;
    *a2 = v9;
    a2[1] = v10;
    v11 = v10;
    v12 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_240611D98(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B8F70, 0x277D08248);
    v6 = v4;
    v7 = v2;
    v8 = sub_24075A6D4();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      sub_240590794(0, &qword_27E4B8F68, 0x277D08268);
      v9 = v5;
      v10 = v3;
      v11 = sub_24075A6D4();

      if (v11)
      {
        return 1;
      }
    }
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_240611E7C()
{
  v3 = *v0;
  sub_24075AE64();
  IdMSAccount.FamilyInfo.hash(into:)(v2);
  return sub_24075AED4();
}

uint64_t sub_240611ECC(uint64_t a1)
{
  v4 = *v1;
  sub_24075AE64();
  IdMSAccount.FamilyInfo.hash(into:)(v3);
  return sub_24075AED4();
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.continuationKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.passwordResetKey.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.anisettePackage.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

__n128 IdMSAccount.Credential.CompanionKeyEnvelope.init(continuationKey:passwordResetKey:anisettePackage:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  result = *a5;
  v7 = *(a5 + 16);
  v8 = *(a5 + 32);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = result;
  *(a6 + 48) = v7;
  *(a6 + 64) = v8;
  return result;
}

unint64_t IdMSAccount.Credential.CompanionKeyEnvelope.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_24075A864();

  MEMORY[0x245CC5E60](v1, v2);
  MEMORY[0x245CC5E60](0x3A6B72702CLL, 0xE500000000000000);
  MEMORY[0x245CC5E60](v3, v4);
  MEMORY[0x245CC5E60](980640044, 0xE400000000000000);
  v5 = IdMSAccount.AnisettePackage.description.getter();
  MEMORY[0x245CC5E60](v5);

  MEMORY[0x245CC5E60](41, 0xE100000000000000);
  return 0xD000000000000018;
}

unint64_t sub_240612100()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x6574746573696E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61756E69746E6F63;
  }
}

uint64_t sub_240612178@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240619C14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2406121A0(uint64_t a1)
{
  v2 = sub_2406191B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406121DC(uint64_t a1)
{
  v2 = sub_2406191B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FC0, &qword_240769300);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = v1[2];
  v22 = v1[3];
  v23 = v7;
  v8 = v1[4];
  v20 = v1[5];
  v21 = v8;
  v9 = v1[6];
  v18 = v1[7];
  v19 = v9;
  v17 = v1[8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406191B0();
  sub_24075AF74();
  LOBYTE(v25) = 0;
  v10 = v24;
  sub_24075ABB4();
  if (!v10)
  {
    v13 = v19;
    v12 = v20;
    v14 = v21;
    v15 = v18;
    LOBYTE(v25) = 1;
    sub_24075ABB4();
    v25 = v14;
    v26 = v12;
    v27 = v13;
    v28 = v15;
    v29 = v17;
    v30 = 2;
    sub_240619204();

    sub_24075ABE4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  return MEMORY[0x245CC6BE0](v2);
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.hashValue.getter()
{
  v1 = *(v0 + 64);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v1);
  return sub_24075AED4();
}

uint64_t IdMSAccount.Credential.CompanionKeyEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FD8, &unk_240769308);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2406191B0();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_24075AAC4();
  v11 = v10;
  v28 = a2;
  v12 = v9;
  LOBYTE(v34[0]) = 1;
  v13 = sub_24075AAC4();
  *(&v27 + 1) = v14;
  *&v27 = v13;
  v44 = 2;
  sub_240619258();
  sub_24075AAF4();
  (*(v6 + 8))(v8, v5);
  v26 = v41;
  v15 = v42;
  v25 = *(&v41 + 1);
  v16 = *(&v42 + 1);
  v17 = v43;
  *&v29 = v12;
  *(&v29 + 1) = v11;
  v18 = v27;
  v30 = v27;
  v31 = v41;
  v32 = v42;
  v33 = v43;
  v19 = v28;
  *(v28 + 64) = v43;
  v21 = v30;
  v20 = v31;
  *v19 = v29;
  v19[1] = v21;
  v22 = v32;
  v19[2] = v20;
  v19[3] = v22;
  sub_2406192AC(&v29, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v12;
  v34[1] = v11;
  v35 = v18;
  v36 = v26;
  v37 = v25;
  v38 = v15;
  v39 = v16;
  v40 = v17;
  return sub_240618BD0(v34);
}

uint64_t sub_2406128E0()
{
  v1 = *(v0 + 64);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v1);
  return sub_24075AED4();
}

uint64_t sub_240612998(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  return MEMORY[0x245CC6BE0](v2);
}

uint64_t sub_240612A24(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_24075AE64();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  sub_24075A114();
  MEMORY[0x245CC6BE0](v2);
  return sub_24075AED4();
}

Swift::Void __swiftcall IdMSAccount.Credential.apply(to:with:)(AKAppleIDAuthenticationContext *to, AppleIDSetup::IdMSAccount::ID *with)
{
  object = with->username.value._object;
  v5 = v2[7];
  v21[6] = v2[6];
  v21[7] = v5;
  v6 = v2[9];
  v21[8] = v2[8];
  v21[9] = v6;
  v7 = v2[3];
  v21[2] = v2[2];
  v21[3] = v7;
  v8 = v2[5];
  v21[4] = v2[4];
  v21[5] = v8;
  v9 = v2[1];
  v21[0] = *v2;
  v21[1] = v9;
  v10 = sub_240618940(v21);
  if (v10 <= 1)
  {
    if (v10)
    {
      sub_24057D704(v21);
    }

    else
    {
      sub_24057D704(v21);
      if (object)
      {
        v12 = sub_24075A084();
      }

      else
      {
        v12 = 0;
      }

      v15 = objc_allocWithZone(MEMORY[0x277CF0200]);
      v16 = sub_24075A084();
      v17 = sub_24075A084();
      v18 = sub_24075A084();
      v19 = sub_24075A084();
      v20 = [v15 initWithUsername:v12 altDSID:v16 machineID:v17 continuationKey:v18 passwordResetKey:v19];

      [(AKAppleIDAuthenticationContext *)to setCompanionKeyEnvelope:v20];
    }
  }

  else
  {
    if (v10 == 2)
    {
      v13 = *(sub_24057D704(v21) + 24);
      v14 = sub_24075A084();
      [(AKAppleIDAuthenticationContext *)to setPasswordlessToken:v14];

      if (v13)
      {
        v11 = sub_24075A084();
      }

      else
      {
        v11 = 0;
      }

      [(AKAppleIDAuthenticationContext *)to setIdmsDataToken:v11];
    }

    else
    {
      if (v10 != 3)
      {
        return;
      }

      sub_24057D704(v21);
      v11 = sub_24075A084();
      [(AKAppleIDAuthenticationContext *)to _setPassword:v11];
    }
  }
}

id IdMSAccount.Credential.CompanionKeyEnvelope.into(with:)(uint64_t *a1)
{
  if (a1[3])
  {
    v1 = sub_24075A084();
  }

  else
  {
    v1 = 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x277CF0200]);
  v3 = sub_24075A084();
  v4 = sub_24075A084();
  v5 = sub_24075A084();
  v6 = sub_24075A084();
  v7 = [v2 initWithUsername:v1 altDSID:v3 machineID:v4 continuationKey:v5 passwordResetKey:v6];

  return v7;
}

id IdMSAccount.into(with:)(void *a1)
{
  v3 = v1[1];
  v4 = v1[3];
  v16 = v1[2];
  v17 = v4;
  v5 = v1[3];
  v18 = v1[4];
  v6 = v1[1];
  v15[0] = *v1;
  v15[1] = v6;
  v12 = v16;
  v13 = v5;
  v14 = v1[4];
  v10 = v15[0];
  v11 = v3;
  sub_2405AF99C(v15, v9);
  v7 = sub_240619D44(&v10, a1);
  v9[2] = v12;
  v9[3] = v13;
  v9[4] = v14;
  v9[0] = v10;
  v9[1] = v11;
  sub_240618468(v9);
  return v7;
}

id IdMSAccount.intoAppleAccountACAccount(with:)()
{
  v1 = v0[1];
  v2 = v0[3];
  v16 = v0[2];
  v17 = v2;
  v3 = v0[3];
  v18 = v0[4];
  v4 = v0[1];
  v15[0] = *v0;
  v15[1] = v4;
  v12 = v16;
  v13 = v3;
  v14 = v0[4];
  v10 = v15[0];
  v11 = v1;
  v5 = objc_opt_self();
  sub_2405AF99C(v15, v9);
  result = [v5 defaultStore];
  if (result)
  {
    v7 = result;
    v8 = sub_240619ED8(&v10, 0xD00000000000001ELL, 0x8000000240787260, result);
    v9[2] = v12;
    v9[3] = v13;
    v9[4] = v14;
    v9[0] = v10;
    v9[1] = v11;
    sub_240618468(v9);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static IdMSAccount.fetch(for:with:)(_OWORD *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = a1[3];
  v10[2] = a1[2];
  v10[3] = v6;
  v10[4] = a1[4];
  v7 = a1[1];
  v10[0] = *a1;
  v10[1] = v7;
  v8 = sub_240619D44(v10, a2);
  if (!v3)
  {
    v9 = v8;
    ACAccount.into(with:)(a2, a3);
  }
}

void ACAccount.into(with:)(void *a1@<X0>, char *a2@<X8>)
{
  v6 = sub_2407595A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ACAccount.id(with:)(a1, v51);
  if (v3)
  {
    return;
  }

  v41 = 0;
  v48 = v51[2];
  v49 = v51[3];
  v50 = v51[4];
  v46 = v51[0];
  v47 = v51[1];
  ACAccount.name(with:)(a1);
  v10 = [a1 servicesUsingAccount_];
  v11 = v9;
  if (!v10)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_23:
    v24 = type metadata accessor for IdMSAccount(0);
    (*(v7 + 16))(&a2[v24[5]], v11, v6);
    sub_2405AF9F8(v45);
    v25 = sub_24061A2F8(v18);

    (*(v7 + 8))(v11, v6);
    v26 = &a2[v24[8]];
    v44 = xmmword_24075D8C0;
    *v26 = xmmword_24075D8C0;
    v27 = &a2[v24[9]];
    *v27 = 0;
    v27[8] = 1;
    v28 = v49;
    *(a2 + 2) = v48;
    *(a2 + 3) = v28;
    *(a2 + 4) = v50;
    v29 = v47;
    *a2 = v46;
    *(a2 + 1) = v29;
    v30 = &a2[v24[6]];
    v31 = v45[7];
    *(v30 + 6) = v45[6];
    *(v30 + 7) = v31;
    v32 = v45[9];
    *(v30 + 8) = v45[8];
    *(v30 + 9) = v32;
    v33 = v45[3];
    *(v30 + 2) = v45[2];
    *(v30 + 3) = v33;
    v34 = v45[5];
    *(v30 + 4) = v45[4];
    *(v30 + 5) = v34;
    v35 = v45[1];
    *v30 = v45[0];
    *(v30 + 1) = v35;
    *&a2[v24[7]] = v25;
    sub_2405AFA1C(*v26, v26[1]);
    *v26 = v44;
    *v27 = 0;
    v27[8] = 0;
    return;
  }

  v36 = v9;
  v37 = v7;
  v38 = v6;
  v39 = a2;
  v12 = v10;
  v13 = sub_24075A534();

  v14 = v41;
  v15 = sub_2406149A8(v13);
  v41 = v14;

  v16 = *(v15 + 16);
  if (!v16)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_22:

    v6 = v38;
    a2 = v39;
    v11 = v36;
    v7 = v37;
    goto LABEL_23;
  }

  v17 = 0;
  *&v44 = *MEMORY[0x277CED1A0];
  v52 = *MEMORY[0x277CED1A8];
  v40 = *MEMORY[0x277CED1B8];
  v43 = *MEMORY[0x277CED1B0];
  v42 = *MEMORY[0x277CED1C0];
  v18 = MEMORY[0x277D84F90];
  while (v17 < *(v15 + 16))
  {
    v19 = *(v15 + 32 + 8 * v17);
    if (v19 > 4)
    {
      v20 = v52;
      if (v19 != 5)
      {
        v20 = v43;
        if (v19 != 6)
        {
          v20 = v44;
          if (v19 != 7)
          {
            goto LABEL_26;
          }
        }
      }
    }

    else
    {
      v20 = v44;
      if (v19 != 1)
      {
        v20 = v42;
        if (v19 != 2)
        {
          v20 = v40;
          if (v19 != 4)
          {
            goto LABEL_26;
          }
        }
      }
    }

    v21 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_240617298(0, v18[2] + 1, 1, v18);
    }

    v23 = v18[2];
    v22 = v18[3];
    if (v23 >= v22 >> 1)
    {
      v18 = sub_240617298((v22 > 1), v23 + 1, 1, v18);
    }

    ++v17;
    v18[2] = v23 + 1;
    v18[v23 + 4] = v21;
    if (v16 == v17)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_26:
  sub_24075A9C4();
  __break(1u);
}

void static IdMSAccount.fetchPrimary(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = [a1 primaryAuthKitAccount];
  if (v8)
  {
    v9 = v8;
    ACAccount.into(with:)(a1, v7);

    if (!v2)
    {
      v10 = type metadata accessor for IdMSAccount(0);
      (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
      sub_24061A408(v7, a2);
    }
  }

  else
  {
    v11 = type metadata accessor for IdMSAccount(0);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    sub_2405B8A50(v7, &qword_27E4B6418, &unk_24075D910);
    sub_24061A3B4();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t IdMSAccount.companionKeyEnvelope(with:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[54] = a3;
  v4[55] = v3;
  v4[52] = a1;
  v4[53] = a2;
  return MEMORY[0x2822009F8](sub_240613844, 0, 0);
}

uint64_t sub_240613844()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  *(v0 + 16) = *v1;
  v3 = v1[4];
  v5 = v1[1];
  v4 = v1[2];
  *(v0 + 64) = v1[3];
  *(v0 + 80) = v3;
  *(v0 + 32) = v5;
  *(v0 + 48) = v4;
  v7 = v1[1];
  v6 = v1[2];
  v8 = v1[4];
  *(v0 + 144) = v1[3];
  *(v0 + 160) = v8;
  *(v0 + 112) = v7;
  *(v0 + 128) = v6;
  *(v0 + 96) = *v1;
  sub_2405AF99C(v0 + 16, v0 + 176);
  *(v0 + 448) = sub_240619D44((v0 + 96), v2);
  v9 = *(v0 + 144);
  *(v0 + 368) = *(v0 + 128);
  *(v0 + 384) = v9;
  *(v0 + 400) = *(v0 + 160);
  v10 = *(v0 + 112);
  *(v0 + 336) = *(v0 + 96);
  *(v0 + 352) = v10;
  sub_240618468(v0 + 336);
  v11 = swift_task_alloc();
  *(v0 + 456) = v11;
  *v11 = v0;
  v11[1] = sub_2406139B8;
  v12 = *(v0 + 424);
  v13 = *(v0 + 432);
  v14 = *(v0 + 416);

  return ACAccount.companionKeyEnvelope(with:with:)(v14, v12, v13);
}

uint64_t sub_2406139B8()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_240613B30;
  }

  else
  {
    v2 = sub_240613ACC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_240613ACC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240613B30()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ACAccount.companionKeyEnvelope(with:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[39] = a3;
  v4[40] = v3;
  v4[37] = a1;
  v4[38] = a2;
  return MEMORY[0x2822009F8](sub_240613BB8, 0, 0);
}

uint64_t sub_240613BB8()
{
  v33 = v0;
  v1 = [*(v0 + 312) continuationTokenForAccount_];
  if (v1)
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = v1;
    v5 = sub_24075A0B4();
    v7 = v6;

    *(v0 + 328) = v5;
    *(v0 + 336) = v7;
    v8 = [v3 passwordResetTokenForAccount_];
    if (v8)
    {
      v9 = *(v0 + 304);
      v10 = v8;
      v11 = sub_24075A0B4();
      v13 = v12;

      *(v0 + 344) = v11;
      *(v0 + 352) = v13;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 152;
      *(v0 + 24) = sub_240613F3C;
      v14 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FF8, &qword_240769328);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_240614C9C;
      *(v0 + 104) = &block_descriptor_1;
      *(v0 + 112) = v14;
      [v9 anisetteDataWithCompletion_];

      return MEMORY[0x282200938](v0 + 16);
    }
  }

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 320);
  v16 = sub_240759AE4();
  __swift_project_value_buffer(v16, qword_280FADA00);
  v17 = v15;
  v18 = sub_240759AC4();
  v19 = sub_24075A5E4();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 320);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32 = v22;
    *v21 = 136315138;
    v23 = v20;
    v24 = [v23 description];
    v25 = sub_24075A0B4();
    v27 = v26;

    v28 = sub_2405BBA7C(v25, v27, &v32);

    *(v21 + 4) = v28;
    _os_log_impl(&dword_240579000, v18, v19, "Unable to generate companion key envelope for account (%s, missing CK and/or PRK.", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x245CC76B0](v22, -1, -1);
    MEMORY[0x245CC76B0](v21, -1, -1);
  }

  sub_24061A46C();
  swift_allocError();
  *v29 = 0xD000000000000015;
  *(v29 + 8) = 0x80000002407872A0;
  *(v29 + 16) = 3;
  swift_willThrow();
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_240613F3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 360) = v1;
  if (v1)
  {

    v2 = sub_240614448;
  }

  else
  {
    v2 = sub_240614060;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_240614060()
{
  v45 = v0;
  v1 = *(v0 + 152);
  if (!v1)
  {

    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v32 = sub_240759AE4();
    __swift_project_value_buffer(v32, qword_280FADA00);
    v33 = sub_240759AC4();
    v34 = sub_24075A5E4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_240579000, v33, v34, "Unable to generate CK envelope, no anisette data", v35, 2u);
      MEMORY[0x245CC76B0](v35, -1, -1);
    }

    sub_24061A46C();
    swift_allocError();
    *v36 = 0xD000000000000015;
    *(v36 + 8) = 0x80000002407872F0;
    *(v36 + 16) = 3;
    swift_willThrow();
    v31 = *(v0 + 8);
    goto LABEL_14;
  }

  result = [*(v0 + 152) machineID];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  v38 = sub_24075A0B4();
  v5 = v4;

  result = [v1 oneTimePassword];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = (v0 + 80);
  v8 = *(v0 + 344);
  v9 = *(v0 + 352);
  v37 = *(v0 + 328);
  v10 = sub_24075A0B4();
  v12 = v11;

  v13 = [v1 routingInfo];
  *(v0 + 80) = v37;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  *(v0 + 112) = v38;
  *(v0 + 120) = v5;
  *(v0 + 128) = v10;
  *(v0 + 136) = v12;
  *(v0 + 144) = v13;
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  __swift_project_value_buffer(v14, qword_280FADA00);
  sub_2406192AC(v0 + 80, v0 + 152);
  v15 = sub_240759AC4();
  v16 = sub_24075A5D4();
  sub_240618BD0(v0 + 80);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v39 = v18;
    *v17 = 136642819;
    v19 = *(v0 + 128);
    v42 = *(v0 + 112);
    v43 = v19;
    v44 = *(v0 + 144);
    v20 = *(v0 + 96);
    v40 = *v7;
    v41 = v20;
    sub_2406192AC(v0 + 80, v0 + 224);
    v21 = IdMSAccount.Credential.CompanionKeyEnvelope.description.getter();
    v23 = v22;
    v24 = v43;
    *(v0 + 184) = v42;
    *(v0 + 200) = v24;
    *(v0 + 216) = v44;
    v25 = v41;
    *(v0 + 152) = v40;
    *(v0 + 168) = v25;
    sub_240618BD0(v0 + 152);
    v26 = sub_2405BBA7C(v21, v23, &v39);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_240579000, v15, v16, "Built CK envelope: %{sensitive}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245CC76B0](v18, -1, -1);
    MEMORY[0x245CC76B0](v17, -1, -1);
  }

  v27 = *(v0 + 296);
  *v27 = *v7;
  v28 = *(v0 + 96);
  v29 = *(v0 + 112);
  v30 = *(v0 + 128);
  *(v27 + 64) = *(v0 + 144);
  *(v27 + 32) = v29;
  *(v27 + 48) = v30;
  *(v27 + 16) = v28;
  v31 = *(v0 + 8);
LABEL_14:

  return v31();
}

uint64_t sub_240614448(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

void ACAccount.id(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = [v3 accountType];
  if (!v6)
  {
    __break(1u);
    goto LABEL_35;
  }

  v7 = v6;
  v8 = [v6 identifier];

  if (!v8)
  {
    sub_24075A0B4();
    goto LABEL_11;
  }

  v9 = sub_24075A0B4();
  v11 = v10;

  v12 = sub_24075A0B4();
  if (!v11)
  {
LABEL_11:

    goto LABEL_12;
  }

  if (v9 == v12 && v11 == v13)
  {
    goto LABEL_17;
  }

  v15 = sub_24075ACF4();

  if ((v15 & 1) == 0)
  {
LABEL_12:
    v16 = [v3 accountType];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 identifier];

      if (v18)
      {
        v19 = sub_24075A0B4();
        v21 = v20;

        v22 = sub_24075A0B4();
        if (v21)
        {
          if (v19 == v22 && v21 == v23)
          {
LABEL_17:

            goto LABEL_18;
          }

          v39 = sub_24075ACF4();

          if (v39)
          {
            goto LABEL_18;
          }

          goto LABEL_23;
        }
      }

      else
      {
        sub_24075A0B4();
      }

LABEL_23:
      v35 = [v3 accountType];
      if (v35)
      {
        v36 = v35;
        sub_24061A46C();
        swift_allocError();
        *v37 = v36;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
LABEL_26:
        swift_willThrow();
        return;
      }

LABEL_36:
      __break(1u);
      return;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_18:
  v24 = [a1 altDSIDForAccount_];
  if (!v24)
  {
    sub_24061A46C();
    swift_allocError();
    *v38 = 0;
    *(v38 + 8) = 0;
    *(v38 + 16) = 4;
    goto LABEL_26;
  }

  v25 = v24;
  v26 = sub_24075A0B4();
  v28 = v27;

  v29 = [a1 DSIDForAccount_];
  if (v29)
  {
    v30 = v29;
    v31 = [v30 stringValue];
    v32 = sub_24075A0B4();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v40 = [v3 username];
  if (v40)
  {
    v41 = v40;
    v42 = sub_24075A0B4();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0;
  }

  *a2 = v26;
  *(a2 + 8) = v28;
  *(a2 + 16) = v42;
  *(a2 + 24) = v44;
  *(a2 + 32) = v32;
  *(a2 + 40) = v34;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
}

uint64_t ACAccount.name(with:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9000, &qword_240769330);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = [a1 givenNameForAccount_];
  if (v7)
  {
    v8 = v7;
    sub_24075A0B4();
  }

  v9 = [a1 familyNameForAccount_];
  if (v9)
  {
    v10 = v9;
    sub_24075A0B4();
  }

  v11 = sub_2407595A4();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  return sub_240759564();
}

uint64_t sub_2406149A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v27 = MEMORY[0x277D84F90];
  sub_2406B818C(0, v1, 0);
  v2 = v27;
  v3 = a1 + 56;
  result = sub_24075A7A4();
  v5 = result;
  v6 = a1;
  v7 = 0;
  v22 = v1;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v6 + 32))
  {
    v10 = v5 >> 6;
    if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(v6 + 36);
    sub_2405BE44C(*(v6 + 48) + 40 * v5, v25);
    sub_2405BE44C(v25, v24);
    swift_dynamicCast();
    result = sub_2405BD160(v25);
    v11 = v26;
    v27 = v2;
    v13 = *(v2 + 16);
    v12 = *(v2 + 24);
    if (v13 >= v12 >> 1)
    {
      result = sub_2406B818C((v12 > 1), v13 + 1, 1);
      v2 = v27;
    }

    *(v2 + 16) = v13 + 1;
    *(v2 + 8 * v13 + 32) = v11;
    v8 = 1 << *(v6 + 32);
    if (v5 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v14 = *(a1 + 56 + 8 * v10);
    if ((v14 & (1 << v5)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(v6 + 36))
    {
      goto LABEL_24;
    }

    v15 = v14 & (-2 << (v5 & 0x3F));
    if (v15)
    {
      v8 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      v9 = v22;
    }

    else
    {
      v16 = v10 << 6;
      v17 = v10 + 1;
      v18 = (a1 + 64 + 8 * v10);
      v9 = v22;
      while (v17 < (v8 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          result = sub_24061CD88(v5, v23, 0);
          v6 = a1;
          v8 = __clz(__rbit64(v19)) + v16;
          goto LABEL_4;
        }
      }

      result = sub_24061CD88(v5, v23, 0);
      v6 = a1;
    }

LABEL_4:
    ++v7;
    v5 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

__C::AIDAServiceType __swiftcall AKAppleIDServiceType.into()()
{
  v2 = v0 - 1;
  if (v0 - 1) < 7 && ((0x7Bu >> v2))
  {
    v3 = **(&unk_278CACB98 + v2);

    return v3;
  }

  else
  {
    result._rawValue = sub_24075A9C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_240614C9C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t ACAccount.directFromCredentialItemCompanionKeyEnvelope(with:)(uint64_t a1, uint64_t a2)
{
  v3[38] = a2;
  v3[39] = v2;
  v3[37] = a1;
  return MEMORY[0x2822009F8](sub_240614D90, 0, 0);
}

uint64_t sub_240614D90()
{
  v34 = v0;
  v1 = [*(v0 + 312) credential];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 credentialItemForKey_];

    if (v3)
    {
      v4 = *(v0 + 312);
      v5 = sub_24075A0B4();
      v7 = v6;

      *(v0 + 320) = v5;
      *(v0 + 328) = v7;
      v8 = [v4 credential];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 credentialItemForKey_];

        if (v10)
        {
          v11 = *(v0 + 304);
          v12 = sub_24075A0B4();
          v14 = v13;

          *(v0 + 336) = v12;
          *(v0 + 344) = v14;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 152;
          *(v0 + 24) = sub_240615168;
          v15 = swift_continuation_init();
          *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8FF8, &qword_240769328);
          *(v0 + 80) = MEMORY[0x277D85DD0];
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_240614C9C;
          *(v0 + 104) = &block_descriptor_10;
          *(v0 + 112) = v15;
          [v11 anisetteDataWithCompletion_];

          return MEMORY[0x282200938](v0 + 16);
        }
      }
    }
  }

  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 312);
  v17 = sub_240759AE4();
  __swift_project_value_buffer(v17, qword_280FADA00);
  v18 = v16;
  v19 = sub_240759AC4();
  v20 = sub_24075A5E4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 312);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33 = v23;
    *v22 = 136315138;
    v24 = v21;
    v25 = [v24 description];
    v26 = sub_24075A0B4();
    v28 = v27;

    v29 = sub_2405BBA7C(v26, v28, &v33);

    *(v22 + 4) = v29;
    _os_log_impl(&dword_240579000, v19, v20, "Unable to generate companion key envelope for account (%s, missing CK and/or PRK.", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245CC76B0](v23, -1, -1);
    MEMORY[0x245CC76B0](v22, -1, -1);
  }

  sub_24061A46C();
  swift_allocError();
  *v30 = 0xD000000000000015;
  *(v30 + 8) = 0x80000002407872A0;
  *(v30 + 16) = 3;
  swift_willThrow();
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_240615168()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {

    v2 = sub_2406156D8;
  }

  else
  {
    v2 = sub_24061528C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

id sub_24061528C()
{
  v51 = v0;
  v1 = *(v0 + 152);
  if (!v1)
  {

    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v37 = sub_240759AE4();
    __swift_project_value_buffer(v37, qword_280FADA00);
    v38 = sub_240759AC4();
    v39 = sub_24075A5E4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_240579000, v38, v39, "Unable to generate CK envelope, no anisette data", v40, 2u);
      MEMORY[0x245CC76B0](v40, -1, -1);
    }

    sub_24061A46C();
    swift_allocError();
    *v41 = 0xD000000000000015;
    *(v41 + 8) = 0x80000002407872F0;
    *(v41 + 16) = 3;
    swift_willThrow();
    v36 = *(v0 + 8);
    goto LABEL_14;
  }

  result = [*(v0 + 152) machineID];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  v44 = sub_24075A0B4();
  v5 = v4;

  result = [v1 oneTimePassword];
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = (v0 + 80);
  v8 = *(v0 + 336);
  v9 = *(v0 + 344);
  v42 = *(v0 + 320);
  v10 = sub_24075A0B4();
  v12 = v11;

  v43 = v1;
  v13 = [v1 routingInfo];
  *(v0 + 80) = v42;
  *(v0 + 96) = v8;
  *(v0 + 104) = v9;
  *(v0 + 112) = v44;
  *(v0 + 120) = v5;
  *(v0 + 128) = v10;
  *(v0 + 136) = v12;
  *(v0 + 144) = v13;
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 312);
  v15 = sub_240759AE4();
  __swift_project_value_buffer(v15, qword_280FADA00);
  v16 = v14;
  sub_2406192AC(v0 + 80, v0 + 152);
  v17 = sub_240759AC4();
  v18 = sub_24075A5D4();

  sub_240618BD0(v0 + 80);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 312);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v45 = v22;
    *v20 = 138412547;
    *(v20 + 4) = v19;
    *v21 = v19;
    *(v20 + 12) = 2085;
    v23 = *(v0 + 128);
    v48 = *(v0 + 112);
    v49 = v23;
    v50 = *(v0 + 144);
    v24 = *(v0 + 96);
    v46 = *v7;
    v47 = v24;
    v25 = v19;
    sub_2406192AC(v0 + 80, v0 + 224);
    v26 = IdMSAccount.Credential.CompanionKeyEnvelope.description.getter();
    v28 = v27;
    v29 = v49;
    *(v0 + 184) = v48;
    *(v0 + 200) = v29;
    *(v0 + 216) = v50;
    v30 = v47;
    *(v0 + 152) = v46;
    *(v0 + 168) = v30;
    sub_240618BD0(v0 + 152);
    v31 = sub_2405BBA7C(v26, v28, &v45);

    *(v20 + 14) = v31;
    _os_log_impl(&dword_240579000, v17, v18, "Built CK envelope directly from %@: %{sensitive}s", v20, 0x16u);
    sub_2405B8A50(v21, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x245CC76B0](v22, -1, -1);
    MEMORY[0x245CC76B0](v20, -1, -1);
  }

  v32 = *(v0 + 296);
  *v32 = *v7;
  v33 = *(v0 + 96);
  v34 = *(v0 + 112);
  v35 = *(v0 + 128);
  *(v32 + 64) = *(v0 + 144);
  *(v32 + 32) = v34;
  *(v32 + 48) = v35;
  *(v32 + 16) = v33;
  v36 = *(v0 + 8);
LABEL_14:

  return v36();
}

uint64_t sub_2406156D8(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

id AKAnisetteData.into()@<X0>(uint64_t *a1@<X8>)
{
  result = [v1 machineID];
  if (result)
  {
    v4 = result;
    v5 = sub_24075A0B4();
    v7 = v6;

    result = [v1 oneTimePassword];
    if (result)
    {
      v8 = result;
      v9 = sub_24075A0B4();
      v11 = v10;

      result = [v1 routingInfo];
      *a1 = v5;
      a1[1] = v7;
      a1[2] = v9;
      a1[3] = v11;
      a1[4] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id IdMSAccount.AnisettePackage.into()()
{
  v1 = *(v0 + 32);
  v2 = [objc_allocWithZone(MEMORY[0x277CF0160]) init];
  v3 = sub_24075A084();
  [v2 setMachineID_];

  v4 = sub_24075A084();
  [v2 setOneTimePassword_];

  [v2 setRoutingInfo_];
  return v2;
}

id IdMSAccount.DeviceInfo.into(with:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CF0218]) init];
  [v0 setLinkType_];
  v1 = sub_24075A084();
  [v0 setUniqueDeviceIdentifier_];

  v2 = sub_24075A084();
  [v0 setServerFriendlyDescription_];

  return v0;
}

uint64_t UserProfileInfo.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserProfileInfo.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserProfileInfo.shortName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void __swiftcall UserProfileInfo.init(identifier:name:shortName:)(AppleIDSetup::UserProfileInfo *__return_ptr retstr, Swift::String identifier, Swift::String_optional name, Swift::String_optional shortName)
{
  retstr->identifier = identifier;
  retstr->name = name;
  retstr->shortName = shortName;
}

uint64_t sub_240615A14()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x6D614E74726F6873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_240615A70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24061CBC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_240615A98(uint64_t a1)
{
  v2 = sub_24061A4EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_240615AD4(uint64_t a1)
{
  v2 = sub_24061A4EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserProfileInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9008, &qword_240769348);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061A4EC();
  sub_24075AF74();
  v14 = 0;
  v9 = v11[5];
  sub_24075ABB4();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24075AB64();
  v12 = 2;
  sub_24075AB64();
  return (*(v4 + 8))(v6, v3);
}

uint64_t UserProfileInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_24075A114();
  if (!v2)
  {
    sub_24075AE94();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();
  if (!v3)
  {
    return sub_24075AE94();
  }

LABEL_3:
  sub_24075AE94();

  return sub_24075A114();
}

uint64_t UserProfileInfo.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  sub_24075AE64();
  sub_24075A114();
  if (!v1)
  {
    sub_24075AE94();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24075AE94();
    return sub_24075AED4();
  }

  sub_24075AE94();
  sub_24075A114();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  return sub_24075AED4();
}

uint64_t UserProfileInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9018, &qword_240769350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061A4EC();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24075AAC4();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24075AA74();
  v21 = v12;
  v23 = 2;
  v13 = sub_24075AA74();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_240616108(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_24075A114();
  if (!v2)
  {
    sub_24075AE94();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_24075AE94();
  }

  sub_24075AE94();
  sub_24075A114();
  if (!v3)
  {
    return sub_24075AE94();
  }

LABEL_3:
  sub_24075AE94();

  return sub_24075A114();
}

uint64_t sub_2406161C4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  sub_24075AE64();
  sub_24075A114();
  if (!v2)
  {
    sub_24075AE94();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24075AE94();
    return sub_24075AED4();
  }

  sub_24075AE94();
  sub_24075A114();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24075AE94();
  sub_24075A114();
  return sub_24075AED4();
}

void FAFamilyMember.accountID.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v2 altDSID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_24075A0B4();
    v8 = v7;

    v9 = [v2 appleID];
    if (v9)
    {
      v10 = v9;
      v11 = sub_24075A0B4();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = [v2 dsid];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 stringValue];

      v17 = sub_24075A0B4();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    *a1 = v6;
    *(a1 + 8) = v8;
    *(a1 + 16) = v11;
    *(a1 + 24) = v13;
    *(a1 + 32) = v17;
    *(a1 + 40) = v19;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
  }

  else
  {
    sub_24061A540();
    swift_allocError();
    swift_willThrow();
  }
}

double FAFamilyMember.into()@<D0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  v3 = v1;
  sub_24058C9E4(0, 0xF000000000000000);
  result = 0.0;
  *(a1 + 8) = xmmword_2407691F0;
  return result;
}

uint64_t IdMSAccount.FamilyMember.init(from:withImageData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  result = sub_24058C9E4(0, 0xF000000000000000);
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void IdMSAccount.FamilyMember.accountID.getter(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v3 = *v1;
    FAFamilyMember.accountID.getter(a1);
  }

  else
  {
    __break(1u);
  }
}

id IdMSAccount.FamilyMember.member.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t IdMSAccount.FamilyMember.imageData.getter()
{
  v1 = *(v0 + 8);
  sub_240618C78(v1, *(v0 + 16));
  return v1;
}

uint64_t IdMSAccount.FamilyMember.imageData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_24058C9E4(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

id IdMSAccount.FamilyMember.into()()
{
  result = *v0;
  if (*v0)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_240616580()
{
  if (*v0)
  {
    return 0x7461446567616D69;
  }

  else
  {
    return 0x7265626D656DLL;
  }
}

uint64_t sub_2406165BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265626D656DLL && a2 == 0xE600000000000000;
  if (v6 || (sub_24075ACF4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24075ACF4();

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

uint64_t sub_24061669C(uint64_t a1)
{
  v2 = sub_24061A594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2406166D8(uint64_t a1)
{
  v2 = sub_24061A594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IdMSAccount.FamilyMember.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9028, &qword_240769358);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061A594();
  v10 = v9;
  sub_24075AF74();
  v14 = v9;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F98, &qword_2407692F0);
  sub_240590128(&qword_27E4B8FA0, &qword_27E4B8F98, &qword_2407692F0, &protocol conformance descriptor for _objcCodable<A>);
  sub_24075ABE4();

  if (!v2)
  {
    v14 = v13;
    v15 = v12;
    v16 = 1;
    sub_240618C78(v13, v12);
    sub_240618E74();
    sub_24075AB94();
    sub_24058C9E4(v14, v15);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t IdMSAccount.FamilyMember.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*v1)
  {
    sub_24075AE94();
    v4 = v2;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  if (v3 >> 60 == 15)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();

  return sub_2407596D4();
}

uint64_t IdMSAccount.FamilyMember.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_24075AE64();
  sub_24075AE94();
  if (v1)
  {
    v3 = v1;
    sub_24075A6E4();
  }

  sub_24075AE94();
  if (v2 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

uint64_t IdMSAccount.FamilyMember.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9038, &qword_240769360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24061A594();
  sub_24075AF34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B8F98, &qword_2407692F0);
    v17 = 0;
    sub_240590128(&qword_27E4B8FB8, &qword_27E4B8F98, &qword_2407692F0, &protocol conformance descriptor for _objcCodable<A>);
    sub_24075AAF4();
    v10 = v16[0];
    v17 = 1;
    sub_240618EC8();
    sub_24075AAA4();
    (*(v6 + 8))(v8, v5);
    v11 = v16[0];
    v12 = v16[1];
    sub_24058C9E4(0, 0xF000000000000000);
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v12;
    v13 = v10;
    sub_240618C78(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(a1);

    v14 = v11;
    v15 = v12;
  }

  return sub_24058C9E4(v14, v15);
}

uint64_t sub_240616D10()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_24075AE64();
  sub_24075AE94();
  if (v1)
  {
    v3 = v1;
    sub_24075A6E4();
  }

  sub_24075AE94();
  if (v2 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

uint64_t sub_240616DBC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (*v1)
  {
    sub_24075AE94();
    v4 = v2;
    sub_24075A6E4();
  }

  else
  {
    sub_24075AE94();
  }

  if (v3 >> 60 == 15)
  {
    return sub_24075AE94();
  }

  sub_24075AE94();

  return sub_2407596D4();
}

uint64_t sub_240616E7C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_24075AE64();
  sub_24075AE94();
  if (v2)
  {
    v4 = v2;
    sub_24075A6E4();
  }

  sub_24075AE94();
  if (v3 >> 60 != 15)
  {
    sub_2407596D4();
  }

  return sub_24075AED4();
}

void static IdMSAccount.fetchProto(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = [a1 protoAccount];
  if (v8)
  {
    v9 = v8;
    ACAccount.into(with:)(a1, v7);

    if (v2)
    {
    }

    else
    {
      v11 = type metadata accessor for IdMSAccount(0);
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
      sub_24061A408(v7, a2);
      v12 = [v9 proto_ageRange];

      v13 = a2 + *(v11 + 36);
      *v13 = v12;
      *(v13 + 8) = 0;
    }
  }

  else
  {
    v10 = type metadata accessor for IdMSAccount(0);
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    sub_2405B8A50(v7, &qword_27E4B6418, &unk_24075D910);
    sub_24061A5E8();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t static IdMSAccount.fetchUserAgeRange(with:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B6418, &unk_24075D910);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12[-v3];
  v5 = type metadata accessor for IdMSAccount(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static IdMSAccount.fetchProto(with:)(a1, v4);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_24061A408(v4, v8);
  v9 = &v8[*(v5 + 36)];
  v10 = *v9;
  LODWORD(v5) = v9[8];
  sub_240618890(v8);
  if (v5)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

void *sub_240617298(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9280, &unk_24076B550);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for AIDAServiceType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s12AppleIDSetup15UserProfileInfoV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_24075ACF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_24075ACF4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t _s12AppleIDSetup11IdMSAccountV10DeviceInfoV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v11 = *(a2 + 56);
  v26 = *(a2 + 32);
  v27 = *(a2 + 48);
  v24 = *(a2 + 64);
  v25 = *(a1 + 64);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_24075ACF4() & 1) == 0 || (v2 != v8 || v4 != v9) && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  v12 = v5;
  if (v5)
  {
    v13 = v11;
    v14 = v3;
    v15 = v6;
    if (v10)
    {
      if (v3 == v26 && v5 == v10 || (sub_24075ACF4()) && (sub_2406E45D4(v6, v27))
      {
        v16 = sub_2406E45D4(v7, v11);
        sub_240618FD8(v3, v5);
        sub_240618FD8(v26, v10);
        sub_240618FD8(v3, v5);
        sub_240604C2C(v26, v10, v27, v11);

        sub_240604C2C(v3, v5, v6, v7);
        if (v16)
        {
          return v25 ^ v24 ^ 1u;
        }

        return 0;
      }

      sub_240618FD8(v3, v5);
      sub_240618FD8(v26, v10);
      sub_240618FD8(v3, v5);
      sub_240604C2C(v26, v10, v27, v11);

      v19 = v3;
      v20 = v5;
      v21 = v6;
      v22 = v7;
LABEL_20:
      sub_240604C2C(v19, v20, v21, v22);
      return 0;
    }

    sub_240618FD8(v3, v5);
    v18 = v26;
    v17 = v27;
    sub_240618FD8(v26, 0);
    sub_240618FD8(v3, v12);

LABEL_19:
    sub_240604C2C(v14, v12, v15, v7);
    v19 = v18;
    v20 = v10;
    v21 = v17;
    v22 = v13;
    goto LABEL_20;
  }

  v14 = v3;
  v15 = v6;
  sub_240618FD8(v3, 0);
  v13 = v11;
  if (v10)
  {
    v18 = v26;
    v17 = v27;
    sub_240618FD8(v26, v10);
    goto LABEL_19;
  }

  sub_240618FD8(v26, 0);
  sub_240604C2C(v3, 0, v6, v7);
  return v25 ^ v24 ^ 1u;
}

BOOL _s12AppleIDSetup11IdMSAccountV12FamilyMemberV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_240590794(0, &qword_27E4B8F68, 0x277D08268);
    v8 = v6;
    v9 = v3;
    v10 = sub_24075A6D4();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 >> 60 == 15)
  {
    if (v7 >> 60 == 15)
    {
      sub_240618C78(v2, v4);
      sub_240618C78(v5, v7);
      sub_24058C9E4(v2, v4);
      return 1;
    }

    goto LABEL_10;
  }

  if (v7 >> 60 == 15)
  {
LABEL_10:
    sub_240618C78(v2, v4);
    sub_240618C78(v5, v7);
    sub_24058C9E4(v2, v4);
    sub_24058C9E4(v5, v7);
    return 0;
  }

  sub_240618C78(v2, v4);
  sub_240618C78(v5, v7);
  v12 = sub_24062A208(v2, v4, v5, v7);
  sub_24058C9E4(v5, v7);
  sub_24058C9E4(v2, v4);
  return v12;
}

BOOL _s12AppleIDSetup11IdMSAccountV10CredentialO20CompanionKeyEnvelopeV2eeoiySbAG_AGtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  v10 = a2[7];
  v13 = a2[8];
  v14 = a1[8];
  return (*a1 == *a2 && a1[1] == a2[1] || (sub_24075ACF4() & 1) != 0) && (v2 == v6 && v4 == v7 || (sub_24075ACF4() & 1) != 0) && (v3 == v8 && v5 == v9 || (sub_24075ACF4() & 1) != 0) && (v15 == v11 && v16 == v10 || (sub_24075ACF4() & 1) != 0) && v14 == v13;
}

BOOL _s12AppleIDSetup11IdMSAccountV10CredentialO2eeoiySbAE_AEtFZ_0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[5];
  v85 = a1[6];
  v86 = v2;
  v4 = a1[7];
  v5 = a1[9];
  v87 = a1[8];
  v88 = v5;
  v6 = a1[3];
  v7 = a1[1];
  v81 = a1[2];
  v82 = v6;
  v8 = a1[3];
  v9 = a1[5];
  v83 = a1[4];
  v84 = v9;
  v10 = a1[1];
  v80[0] = *a1;
  v80[1] = v10;
  v11 = a2[7];
  v12 = a2[5];
  v95 = a2[6];
  v96 = v11;
  v13 = a2[7];
  v14 = a2[9];
  v97 = a2[8];
  v98 = v14;
  v15 = a2[3];
  v16 = a2[1];
  v91 = a2[2];
  v92 = v15;
  v17 = a2[3];
  v18 = a2[5];
  v93 = a2[4];
  v94 = v18;
  v19 = a2[1];
  v89 = *a2;
  v90 = v19;
  v20 = a1[7];
  v99[6] = a1[6];
  v99[7] = v20;
  v21 = a1[9];
  v99[8] = a1[8];
  v99[9] = v21;
  v22 = a1[3];
  v99[2] = a1[2];
  v99[3] = v22;
  v23 = a1[5];
  v99[4] = a1[4];
  v99[5] = v23;
  v24 = a1[1];
  v99[0] = *a1;
  v99[1] = v24;
  v99[16] = v95;
  v99[17] = v13;
  v25 = a2[9];
  v99[18] = v97;
  v99[19] = v25;
  v99[12] = v91;
  v99[13] = v17;
  v99[14] = v93;
  v99[15] = v12;
  v99[10] = v89;
  v99[11] = v16;
  v100[6] = v85;
  v100[7] = v4;
  v26 = a1[9];
  v100[8] = v87;
  v100[9] = v26;
  v100[2] = v81;
  v100[3] = v8;
  v100[4] = v83;
  v100[5] = v3;
  v100[0] = v80[0];
  v100[1] = v7;
  v27 = sub_240618940(v100);
  if (v27 > 1)
  {
    if (v27 != 2)
    {
      if (v27 == 3)
      {
        v28 = sub_24057D704(v100);
        v29 = *v28;
        v30 = v28[1];
        v76 = v95;
        v77 = v96;
        v78 = v97;
        v79 = v98;
        v72 = v91;
        v73 = v92;
        v74 = v93;
        v75 = v94;
        v70 = v89;
        v71 = v90;
        if (sub_240618940(&v70) == 3)
        {
          v31 = sub_24057D704(&v70);
          if (v29 != *v31 || v30 != v31[1])
          {
LABEL_36:
            v55 = sub_24075ACF4();
            sub_240618498(&v89, v68);
            sub_240618498(v80, v68);
LABEL_37:
            sub_2405B8A50(v99, &unk_27E4B9290, &unk_24076B560);
            return (v55 & 1) != 0;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v76 = v95;
        v77 = v96;
        v78 = v97;
        v79 = v98;
        v72 = v91;
        v73 = v92;
        v74 = v93;
        v75 = v94;
        v70 = v89;
        v71 = v90;
        if (sub_240618940(&v70) == 4)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_28;
    }

    v39 = sub_24057D704(v100);
    v40 = *v39;
    v41 = v39[1];
    v43 = v39[2];
    v42 = v39[3];
    v76 = v95;
    v77 = v96;
    v78 = v97;
    v79 = v98;
    v72 = v91;
    v73 = v92;
    v74 = v93;
    v75 = v94;
    v70 = v89;
    v71 = v90;
    if (sub_240618940(&v70) == 2)
    {
      v44 = sub_24057D704(&v70);
      v46 = v44[2];
      v45 = v44[3];
      if (v40 == *v44 && v41 == v44[1] || (sub_24075ACF4() & 1) != 0)
      {
        if (!v42)
        {
          sub_240618498(&v89, v68);
          sub_240618498(v80, v68);

          sub_2405B8A50(v99, &unk_27E4B9290, &unk_24076B560);
          if (!v45)
          {
            return 1;
          }

          return 0;
        }

        if (v45)
        {
          if (v43 != v46 || v42 != v45)
          {
            goto LABEL_36;
          }

LABEL_19:
          sub_240618498(&v89, v68);
          sub_240618498(v80, v68);
LABEL_21:
          sub_2405B8A50(v99, &unk_27E4B9290, &unk_24076B560);
          return 1;
        }
      }

LABEL_33:
      sub_240618498(&v89, v68);
      v56 = v68;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (v27)
  {
    v47 = sub_24057D704(v100);
    v76 = v95;
    v77 = v96;
    v78 = v97;
    v79 = v98;
    v72 = v91;
    v73 = v92;
    v74 = v93;
    v75 = v94;
    v70 = v89;
    v71 = v90;
    if (sub_240618940(&v70) == 1)
    {
      v48 = sub_24057D704(&v70);
      v68[1] = *(v47 + 16);
      v68[2] = *(v47 + 32);
      v68[3] = *(v47 + 48);
      v69 = *(v47 + 64);
      v68[0] = *v47;
      v49 = *(v48 + 48);
      v65 = *(v48 + 32);
      v66 = v49;
      v67 = *(v48 + 64);
      v50 = *(v48 + 16);
      v63 = *v48;
      v64 = v50;
      if (_s12AppleIDSetup11IdMSAccountV10CredentialO20CompanionKeyEnvelopeV2eeoiySbAG_AGtFZ_0(v68, &v63))
      {
        v51 = *(v47 + 88);
        v52 = *(v47 + 120);
        v65 = *(v47 + 104);
        v66 = v52;
        LOBYTE(v67) = *(v47 + 136);
        v63 = *(v47 + 72);
        v64 = v51;
        v53 = *(v48 + 88);
        v54 = *(v48 + 120);
        v60 = *(v48 + 104);
        v61 = v54;
        LOBYTE(v62) = *(v48 + 136);
        v58 = *(v48 + 72);
        v59 = v53;
        sub_240618498(&v89, v68);
        sub_240618498(v80, v68);
        if (_s12AppleIDSetup11IdMSAccountV10DeviceInfoV2eeoiySbAE_AEtFZ_0(&v63, &v58))
        {
          if (*(v47 + 144) != *(v48 + 144) || *(v47 + 152) != *(v48 + 152))
          {
            v55 = sub_24075ACF4();
            goto LABEL_37;
          }

          goto LABEL_21;
        }

LABEL_30:
        sub_2405B8A50(v99, &unk_27E4B9290, &unk_24076B560);
        return 0;
      }

      goto LABEL_33;
    }

LABEL_28:
    sub_240618498(&v89, &v70);
    v56 = &v70;
LABEL_29:
    sub_240618498(v80, v56);
    goto LABEL_30;
  }

  v32 = sub_24057D704(v100);
  v76 = v95;
  v77 = v96;
  v78 = v97;
  v79 = v98;
  v72 = v91;
  v73 = v92;
  v74 = v93;
  v75 = v94;
  v70 = v89;
  v71 = v90;
  if (sub_240618940(&v70))
  {
    goto LABEL_28;
  }

  v33 = sub_24057D704(&v70);
  v34 = *(v32 + 48);
  v65 = *(v32 + 32);
  v66 = v34;
  v67 = *(v32 + 64);
  v35 = *(v32 + 16);
  v63 = *v32;
  v64 = v35;
  v36 = *(v33 + 48);
  v60 = *(v33 + 32);
  v61 = v36;
  v62 = *(v33 + 64);
  v37 = *(v33 + 16);
  v58 = *v33;
  v59 = v37;
  v38 = _s12AppleIDSetup11IdMSAccountV10CredentialO20CompanionKeyEnvelopeV2eeoiySbAG_AGtFZ_0(&v63, &v58);
  sub_240618498(&v89, v68);
  sub_240618498(v80, v68);
  sub_2405B8A50(v99, &unk_27E4B9290, &unk_24076B560);
  return v38;
}

uint64_t _s12AppleIDSetup11IdMSAccountV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_24075ACF4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for IdMSAccount(0);
  if ((sub_240759584() & 1) == 0)
  {
    return 0;
  }

  v6 = (a1 + v5[6]);
  v7 = v6[5];
  v8 = v6[7];
  v77 = v6[6];
  v78 = v8;
  v9 = v6[9];
  v10 = v6[7];
  v79 = v6[8];
  v80 = v9;
  v11 = v6[1];
  v12 = v6[3];
  v73 = v6[2];
  v74 = v12;
  v13 = v6[5];
  v14 = v6[3];
  v75 = v6[4];
  v76 = v13;
  v15 = v6[1];
  v72[0] = *v6;
  v72[1] = v15;
  v66 = v75;
  v67 = v7;
  v64 = v73;
  v65 = v14;
  v16 = v6[9];
  v70 = v79;
  v71 = v16;
  v68 = v77;
  v69 = v10;
  v62 = v72[0];
  v63 = v11;
  v17 = (a2 + v5[6]);
  v18 = v17[7];
  v19 = v17[5];
  v86 = v17[6];
  v87 = v18;
  v20 = v17[7];
  v21 = v17[9];
  v88 = v17[8];
  v89 = v21;
  v22 = v17[3];
  v23 = v17[1];
  v82 = v17[2];
  v83 = v22;
  v24 = v17[3];
  v25 = v17[5];
  v84 = v17[4];
  v85 = v25;
  v26 = v17[1];
  v81[0] = *v17;
  v81[1] = v26;
  v58 = v86;
  v59 = v20;
  v27 = v17[9];
  v60 = v88;
  v61 = v27;
  v54 = v82;
  v55 = v24;
  v56 = v84;
  v57 = v19;
  v52 = v81[0];
  v53 = v23;
  sub_240618498(v72, v51);
  sub_240618498(v81, v51);
  v28 = _s12AppleIDSetup11IdMSAccountV10CredentialO2eeoiySbAE_AEtFZ_0(&v62, &v52);
  v90[6] = v58;
  v90[7] = v59;
  v90[8] = v60;
  v90[9] = v61;
  v90[2] = v54;
  v90[3] = v55;
  v90[4] = v56;
  v90[5] = v57;
  v90[0] = v52;
  v90[1] = v53;
  sub_2406184D0(v90);
  v91[6] = v68;
  v91[7] = v69;
  v91[8] = v70;
  v91[9] = v71;
  v91[2] = v64;
  v91[3] = v65;
  v91[4] = v66;
  v91[5] = v67;
  v91[0] = v62;
  v91[1] = v63;
  sub_2406184D0(v91);
  if (!v28 || (sub_240753B98() & 1) == 0)
  {
    return 0;
  }

  v29 = v5[8];
  v31 = *(a1 + v29);
  v30 = *(a1 + v29 + 8);
  v32 = a2 + v29;
  v34 = *v32;
  v33 = *(v32 + 1);
  if (v31 == 1)
  {
    sub_240618500(1, v30);
    if (v34 == 1)
    {
      v31 = 1;
      sub_240618500(1, v33);
      goto LABEL_12;
    }

    sub_240618500(v34, v33);
    goto LABEL_18;
  }

  if (v34 != 1)
  {
    if (v31)
    {
      if (!v34)
      {
        sub_240618500(v31, v30);
        sub_240618500(0, v33);
        sub_240618500(v31, v30);
        v46 = 0;
LABEL_37:
        v50 = v33;
LABEL_38:
        sub_2405AFA1C(v46, v50);
        goto LABEL_39;
      }

      sub_240590794(0, &qword_27E4B8F70, 0x277D08248);
      sub_240618500(v31, v30);
      sub_240618500(v34, v33);
      sub_240618500(v31, v30);
      v42 = v34;
      v43 = v31;
      v44 = sub_24075A6D4();

      if ((v44 & 1) == 0)
      {
LABEL_36:
        v46 = v34;
        goto LABEL_37;
      }
    }

    else
    {
      sub_240618500(0, v30);
      if (v34)
      {
        sub_240618500(v34, v33);
        sub_240618500(0, v30);
        goto LABEL_36;
      }

      sub_240618500(0, v33);
      sub_240618500(0, v30);
    }

    if (v30)
    {
      if (!v33)
      {
        v46 = v34;
        v50 = 0;
        goto LABEL_38;
      }

      sub_240590794(0, &qword_27E4B8F68, 0x277D08268);
      v47 = v33;
      v48 = v30;
      v49 = sub_24075A6D4();

      sub_2405AFA1C(v34, v33);
      if ((v49 & 1) == 0)
      {
LABEL_39:

        v40 = v31;
        v41 = v30;
        goto LABEL_40;
      }
    }

    else
    {
      if (v33)
      {
        goto LABEL_36;
      }

      sub_2405AFA1C(v34, 0);
      v48 = 0;
    }

LABEL_12:
    sub_2405AFA1C(v31, v30);
    v35 = v5[9];
    v36 = (a1 + v35);
    v37 = *(a1 + v35 + 8);
    v38 = (a2 + v35);
    v39 = *(a2 + v35 + 8);
    if (v37)
    {
      if (!v39)
      {
        return 0;
      }
    }

    else
    {
      if (*v36 != *v38)
      {
        LOBYTE(v39) = 1;
      }

      if (v39)
      {
        return 0;
      }
    }

    return 1;
  }

  sub_240618500(v31, v30);
  sub_240618500(1, v33);
  sub_240618500(v31, v30);

LABEL_18:
  sub_2405AFA1C(v31, v30);
  v40 = v34;
  v41 = v33;
LABEL_40:
  sub_2405AFA1C(v40, v41);
  return 0;
}

id sub_240618500(id result, void *a2)
{
  if (result != 1)
  {
    v4 = result;
    v3 = a2;

    return v4;
  }

  return result;
}

uint64_t sub_240618544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2406185A8()
{
  result = qword_27E4B8DD8;
  if (!qword_27E4B8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8DD8);
  }

  return result;
}

unint64_t sub_2406185FC()
{
  result = qword_27E4B8DE0;
  if (!qword_27E4B8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8DE0);
  }

  return result;
}

unint64_t sub_240618650()
{
  result = qword_27E4B8DF0;
  if (!qword_27E4B8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8DF0);
  }

  return result;
}

unint64_t sub_2406186A4()
{
  result = qword_27E4B8DF8;
  if (!qword_27E4B8DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8DF8);
  }

  return result;
}

unint64_t sub_2406186F8()
{
  result = qword_27E4B8E10;
  if (!qword_27E4B8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E10);
  }

  return result;
}

unint64_t sub_24061874C()
{
  result = qword_27E4B8E20;
  if (!qword_27E4B8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E20);
  }

  return result;
}

uint64_t sub_2406187A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B8278, &qword_240765670);
    sub_24061CCEC(a2, type metadata accessor for AIDAServiceType, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24061883C()
{
  result = qword_27E4B8E28;
  if (!qword_27E4B8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E28);
  }

  return result;
}

uint64_t sub_240618890(uint64_t a1)
{
  v2 = type metadata accessor for IdMSAccount(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2406188EC()
{
  result = qword_27E4B8E68;
  if (!qword_27E4B8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E68);
  }

  return result;
}

unint64_t sub_240618940(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
}

unint64_t sub_24061895C()
{
  result = qword_27E4B8E70;
  if (!qword_27E4B8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E70);
  }

  return result;
}

unint64_t sub_2406189B0()
{
  result = qword_27E4B8E78;
  if (!qword_27E4B8E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E78);
  }

  return result;
}

unint64_t sub_240618A04()
{
  result = qword_27E4B8E80;
  if (!qword_27E4B8E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E80);
  }

  return result;
}

unint64_t sub_240618A58()
{
  result = qword_27E4B8E88;
  if (!qword_27E4B8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E88);
  }

  return result;
}

unint64_t sub_240618AAC()
{
  result = qword_27E4B8E90;
  if (!qword_27E4B8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E90);
  }

  return result;
}

unint64_t sub_240618B00()
{
  result = qword_27E4B8E98;
  if (!qword_27E4B8E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8E98);
  }

  return result;
}

unint64_t sub_240618B7C()
{
  result = qword_27E4B8ED0;
  if (!qword_27E4B8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8ED0);
  }

  return result;
}

unint64_t sub_240618C24()
{
  result = qword_27E4B8EE0;
  if (!qword_27E4B8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8EE0);
  }

  return result;
}

uint64_t sub_240618C78(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2405BB9D4(result, a2);
  }

  return result;
}

unint64_t sub_240618C8C()
{
  result = qword_27E4B8EF0;
  if (!qword_27E4B8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8EF0);
  }

  return result;
}

BOOL _s12AppleIDSetup11IdMSAccountV10SRPResultsV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[10];
  v2 = a1[11];
  v5 = a2[10];
  v4 = a2[11];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_24075ACF4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 >> 60 == 15)
    {
      if (v4 >> 60 == 15)
      {
        sub_240618C78(v3, v2);
        sub_240618C78(v5, v4);
        sub_24058C9E4(v3, v2);
        return 1;
      }
    }

    else if (v4 >> 60 != 15)
    {
      sub_240618C78(v3, v2);
      sub_240618C78(v5, v4);
      v9 = sub_24062A208(v3, v2, v5, v4);
      sub_24058C9E4(v5, v4);
      sub_24058C9E4(v3, v2);
      return v9;
    }

    sub_240618C78(v3, v2);
    sub_240618C78(v5, v4);
    sub_24058C9E4(v3, v2);
    sub_24058C9E4(v5, v4);
    return 0;
  }

  return result;
}

unint64_t sub_240618E20()
{
  result = qword_27E4B8F00;
  if (!qword_27E4B8F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F00);
  }

  return result;
}

unint64_t sub_240618E74()
{
  result = qword_27E4BBE30;
  if (!qword_27E4BBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4BBE30);
  }

  return result;
}

unint64_t sub_240618EC8()
{
  result = qword_27E4B8F10;
  if (!qword_27E4B8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F10);
  }

  return result;
}

unint64_t sub_240618F84()
{
  result = qword_27E4B8F20;
  if (!qword_27E4B8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F20);
  }

  return result;
}

uint64_t sub_240618FD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_240619028()
{
  result = qword_27E4B8F48;
  if (!qword_27E4B8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F48);
  }

  return result;
}

unint64_t sub_24061907C()
{
  result = qword_27E4B8F50;
  if (!qword_27E4B8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F50);
  }

  return result;
}

unint64_t sub_2406190D0()
{
  result = qword_27E4B8F60;
  if (!qword_27E4B8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F60);
  }

  return result;
}

unint64_t sub_24061915C()
{
  result = qword_27E4B8F80;
  if (!qword_27E4B8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8F80);
  }

  return result;
}

unint64_t sub_2406191B0()
{
  result = qword_27E4B8FC8;
  if (!qword_27E4B8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8FC8);
  }

  return result;
}

unint64_t sub_240619204()
{
  result = qword_27E4B8FD0;
  if (!qword_27E4B8FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8FD0);
  }

  return result;
}

unint64_t sub_240619258()
{
  result = qword_27E4B8FE0;
  if (!qword_27E4B8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8FE0);
  }

  return result;
}

uint64_t sub_2406192E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEA00000000006C61 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365636976726573 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E49796C696D6166 && a2 == 0xEA00000000006F66 || (sub_24075ACF4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x676E61526567615FLL && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2406194EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F696E61706D6F63 && a2 == 0xED00007379654B6ELL || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240787310 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000240787330 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7773736150776172 && a2 == 0xEB0000000064726FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2406196B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 12895 && a2 == 0xE200000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2406197B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64697344746C61 && a2 == 0xE700000000000000;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D616E72657375 && a2 == 0xE800000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7355656369766564 && a2 == 0xEC00000064497265)
  {

    return 4;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24061996C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x49656E696863616DLL && a2 == 0xE900000000000044;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50656D6954656E6FLL && a2 == 0xEF64726F77737361 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x49676E6974756F72 && a2 == 0xEB000000006F666ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_240619A98(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000240787350 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000240787370 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E49656C61636F6CLL && a2 == 0xEA00000000006F66 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79636167654C7369 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_24075ACF4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_240619C14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61756E69746E6F63 && a2 == 0xEF79654B6E6F6974;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000240787390 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574746573696E61 && a2 == 0xEF6567616B636150)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

id sub_240619D44(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v6 = a1[5];
  v7 = sub_24075A084();
  v8 = [a2 authKitAccountWithAltDSID_];

  if (!v8)
  {
    if (v5 && (v10 = sub_24075A084(), v11 = [a2 authKitAccountWithAppleID_], v10, v11))
    {
      return v11;
    }

    else if (v6 && (v12 = sub_24075A084(), sub_240590794(0, &qword_27E4B8910, 0x277CCABB0), [v12 integerValue], v13 = sub_24075A6C4(), v14 = objc_msgSend(a2, sel_authKitAccountWithDSID_, v13), v13, v12, v14))
    {
      return v14;
    }

    else
    {
      sub_24061A46C();
      v8 = swift_allocError();
      *v15 = v4;
      *(v15 + 8) = v3;
      *(v15 + 16) = 1;
      swift_willThrow();
    }
  }

  return v8;
}

void *sub_240619ED8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v54 = *MEMORY[0x277D85DE8];
  v41 = *(a1 + 8);
  v42 = *a1;
  v40 = *(a1 + 16);
  v43 = *(a1 + 24);
  v9 = *(a1 + 48);
  v51 = *(a1 + 32);
  v52 = v9;
  v53 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9288, &unk_240770AD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_240765570;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;

  v11 = sub_24075A2B4();

  v44 = 0;
  v12 = [a4 accountsWithAccountTypeIdentifiers:v11 error:&v44];

  v13 = v44;
  if (v12)
  {
    sub_240590794(0, &qword_27E4B63F8, 0x277CB8F30);
    v14 = sub_24075A2C4();
    v15 = v13;

    v37 = v4;
    v38 = a2;
    v39 = a3;
    if (v14 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24075A9D4())
    {
      v17 = 0;
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x245CC65B0](v17, v14);
        }

        else
        {
          if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v18 = *(v14 + 8 * v17 + 32);
        }

        v5 = v18;
        v19 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v20 = [v18 aa_altDSID];
        if (v20)
        {
          v21 = v20;
          v22 = sub_24075A0B4();
          v24 = v23;

          if (v22 == v42 && v24 == v41)
          {
LABEL_30:

LABEL_31:

            return v5;
          }

          v26 = sub_24075ACF4();

          if (v26)
          {
            goto LABEL_31;
          }
        }

        v27 = [v5 username];
        if (!v27)
        {
          if (!v43)
          {
            goto LABEL_31;
          }

LABEL_6:

          goto LABEL_7;
        }

        v28 = v27;
        v29 = sub_24075A0B4();
        v31 = v30;

        if (v43)
        {
          if (v31)
          {
            if (v40 == v29 && v43 == v31)
            {
              goto LABEL_30;
            }

            v32 = sub_24075ACF4();

            if (v32)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_6;
        }

        if (!v31)
        {
          goto LABEL_31;
        }

LABEL_7:
        ++v17;
        if (v19 == i)
        {
          goto LABEL_35;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:

    v44 = 0;
    v45 = 0xE000000000000000;
    sub_24075A864();

    v44 = v42;
    v45 = v41;
    v46 = v40;
    v47 = v43;
    v48 = v51;
    v49 = v52;
    v50 = v53;
    v34 = IdMSAccount.ID.description.getter();
    MEMORY[0x245CC5E60](v34);

    MEMORY[0x245CC5E60](0x6570797420666F20, 0xEA0000000000203ALL);
    MEMORY[0x245CC5E60](v38, v39);
    sub_24061A46C();
    swift_allocError();
    *v35 = 0xD00000000000001ELL;
    *(v35 + 8) = 0x80000002407873B0;
    *(v35 + 16) = 2;
  }

  else
  {
    v33 = v44;
    sub_2407595D4();
  }

  swift_willThrow();
  return v5;
}

uint64_t sub_24061A2F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for AIDAServiceType(0);
  v4 = v3;
  v5 = sub_24061CCEC(&qword_280FAD720, type metadata accessor for AIDAServiceType, &unk_24075D60C);
  result = MEMORY[0x245CC6270](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_240666310(&v9, v8);

      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_24061A3B4()
{
  result = qword_27E4B8FE8;
  if (!qword_27E4B8FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8FE8);
  }

  return result;
}

uint64_t sub_24061A408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IdMSAccount(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24061A46C()
{
  result = qword_27E4B8FF0;
  if (!qword_27E4B8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B8FF0);
  }

  return result;
}

unint64_t sub_24061A4EC()
{
  result = qword_27E4B9010;
  if (!qword_27E4B9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9010);
  }

  return result;
}

unint64_t sub_24061A540()
{
  result = qword_27E4B9020;
  if (!qword_27E4B9020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9020);
  }

  return result;
}

unint64_t sub_24061A594()
{
  result = qword_27E4B9030;
  if (!qword_27E4B9030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9030);
  }

  return result;
}

unint64_t sub_24061A5E8()
{
  result = qword_27E4B9040;
  if (!qword_27E4B9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9040);
  }

  return result;
}

uint64_t sub_24061A63C(void *a1)
{
  a1[1] = sub_24061CCEC(&qword_27E4B6480, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  a1[2] = sub_24061CCEC(&qword_27E4B6438, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  result = sub_24061CCEC(&qword_27E4B9048, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  a1[3] = result;
  return result;
}

uint64_t sub_24061A770(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_24061A7C4()
{
  result = qword_27E4B9058;
  if (!qword_27E4B9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9058);
  }

  return result;
}

unint64_t sub_24061A81C()
{
  result = qword_27E4B9060;
  if (!qword_27E4B9060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9060);
  }

  return result;
}

unint64_t sub_24061A8B0()
{
  result = qword_280FADF60;
  if (!qword_280FADF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FADF60);
  }

  return result;
}

unint64_t sub_24061A908()
{
  result = qword_280FADF58;
  if (!qword_280FADF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FADF58);
  }

  return result;
}

unint64_t sub_24061A9E0()
{
  result = qword_27E4B9068;
  if (!qword_27E4B9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9068);
  }

  return result;
}

unint64_t sub_24061AA38()
{
  result = qword_27E4B9070;
  if (!qword_27E4B9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9070);
  }

  return result;
}

unint64_t sub_24061AACC()
{
  result = qword_27E4B9078;
  if (!qword_27E4B9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9078);
  }

  return result;
}

unint64_t sub_24061AB24()
{
  result = qword_27E4B9080;
  if (!qword_27E4B9080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9080);
  }

  return result;
}

unint64_t sub_24061ABB8()
{
  result = qword_27E4B9088;
  if (!qword_27E4B9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9088);
  }

  return result;
}

unint64_t sub_24061AC10()
{
  result = qword_27E4B9090;
  if (!qword_27E4B9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9090);
  }

  return result;
}

unint64_t sub_24061ACA4()
{
  result = qword_27E4B9098;
  if (!qword_27E4B9098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9098);
  }

  return result;
}

unint64_t sub_24061ACFC()
{
  result = qword_27E4B90A0;
  if (!qword_27E4B90A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90A0);
  }

  return result;
}

unint64_t sub_24061AD90()
{
  result = qword_27E4B90A8;
  if (!qword_27E4B90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90A8);
  }

  return result;
}

unint64_t sub_24061ADE4()
{
  result = qword_27E4B90B0;
  if (!qword_27E4B90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90B0);
  }

  return result;
}

unint64_t sub_24061AE38()
{
  result = qword_27E4B90B8;
  if (!qword_27E4B90B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90B8);
  }

  return result;
}

unint64_t sub_24061AE90()
{
  result = qword_27E4B90C0;
  if (!qword_27E4B90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90C0);
  }

  return result;
}

unint64_t sub_24061AF24()
{
  result = qword_27E4B90C8;
  if (!qword_27E4B90C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90C8);
  }

  return result;
}

unint64_t sub_24061AF78()
{
  result = qword_27E4B90D0;
  if (!qword_27E4B90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90D0);
  }

  return result;
}

unint64_t sub_24061AFCC()
{
  result = qword_27E4B90D8;
  if (!qword_27E4B90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90D8);
  }

  return result;
}

unint64_t sub_24061B024()
{
  result = qword_27E4B90E0;
  if (!qword_27E4B90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B90E0);
  }

  return result;
}

void sub_24061B0A0(uint64_t a1)
{
  sub_2407595A4();
  if (v1 <= 0x3F)
  {
    sub_24061B16C(319);
    if (v2 <= 0x3F)
    {
      sub_24061B200();
      if (v3 <= 0x3F)
      {
        sub_24061B250(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24061B16C(uint64_t a1)
{
  if (!qword_27E4B90F8)
  {
    type metadata accessor for AIDAServiceType(255);
    sub_24061CCEC(&qword_280FAD720, type metadata accessor for AIDAServiceType, &unk_24075D60C);
    v1 = sub_24075A574();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4B90F8);
    }
  }
}

void sub_24061B200()
{
  if (!qword_27E4B9100)
  {
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B9100);
    }
  }
}

void sub_24061B250(uint64_t a1)
{
  if (!qword_27E4B9108)
  {
    type metadata accessor for AKUserAgeRange(255);
    v1 = sub_24075A714();
    if (!v2)
    {
      atomic_store(v1, &qword_27E4B9108);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup11SetupReportV10LocaleInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t get_enum_tag_for_layout_string_12AppleIDSetup11IdMSAccountV10CredentialO(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0)
  {
    return v1 >> 61;
  }

  else
  {
    return (*a1 + 4);
  }
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

uint64_t sub_24061B308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_24061B358(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 152) = 0;
    result = 0.0;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 160) = 1;
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
      result = 0.0;
      *(a1 + 96) = 0u;
      *(a1 + 112) = 0u;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 128) = 0;
      *(a1 + 136) = 2 * -a2;
      *(a1 + 144) = 0;
      *(a1 + 152) = 0;
      return result;
    }

    *(a1 + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24061B3DC(uint64_t result, uint64_t a2)
{
  if (a2 < 4)
  {
    *(result + 136) = *(result + 136) & 1 | (a2 << 61);
  }

  else
  {
    *result = (a2 - 4);
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 144) = 0;
    *(result + 152) = 0;
    *(result + 136) = 0x8000000000000000;
  }

  return result;
}

uint64_t sub_24061B440(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24061B488(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_24061B54C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_24061B594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24061B5FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_24061B644(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24061B6C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_24061B708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24061B76C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_24061B7C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_24061B85C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24061B8A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
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

uint64_t sub_24061B918(uint64_t a1, int a2)
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

uint64_t sub_24061B960(uint64_t result, int a2, int a3)
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

uint64_t get_enum_tag_for_layout_string_So9ACAccountC12AppleIDSetupE17ConversionFailureO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24061BA3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24061BA84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_24061BAC8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_24061BBD4()
{
  result = qword_27E4B9110;
  if (!qword_27E4B9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9110);
  }

  return result;
}

unint64_t sub_24061BC2C()
{
  result = qword_27E4B9118;
  if (!qword_27E4B9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9118);
  }

  return result;
}

unint64_t sub_24061BC84()
{
  result = qword_27E4B9120;
  if (!qword_27E4B9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9120);
  }

  return result;
}

unint64_t sub_24061BCDC()
{
  result = qword_27E4B9128;
  if (!qword_27E4B9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9128);
  }

  return result;
}

unint64_t sub_24061BD34()
{
  result = qword_27E4B9130;
  if (!qword_27E4B9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9130);
  }

  return result;
}

unint64_t sub_24061BD8C()
{
  result = qword_27E4B9138;
  if (!qword_27E4B9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9138);
  }

  return result;
}

unint64_t sub_24061BDE4()
{
  result = qword_27E4B9140;
  if (!qword_27E4B9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9140);
  }

  return result;
}

unint64_t sub_24061BE3C()
{
  result = qword_27E4B9148;
  if (!qword_27E4B9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9148);
  }

  return result;
}

unint64_t sub_24061BE94()
{
  result = qword_27E4B9150;
  if (!qword_27E4B9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9150);
  }

  return result;
}

unint64_t sub_24061BEEC()
{
  result = qword_27E4B9158;
  if (!qword_27E4B9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9158);
  }

  return result;
}

unint64_t sub_24061BF44()
{
  result = qword_27E4B9160;
  if (!qword_27E4B9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9160);
  }

  return result;
}

unint64_t sub_24061BF9C()
{
  result = qword_27E4B9168;
  if (!qword_27E4B9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9168);
  }

  return result;
}

unint64_t sub_24061BFF4()
{
  result = qword_27E4B9170;
  if (!qword_27E4B9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9170);
  }

  return result;
}

unint64_t sub_24061C04C()
{
  result = qword_27E4B9178;
  if (!qword_27E4B9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9178);
  }

  return result;
}

unint64_t sub_24061C0A4()
{
  result = qword_27E4B9180;
  if (!qword_27E4B9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9180);
  }

  return result;
}

unint64_t sub_24061C0FC()
{
  result = qword_27E4B9188;
  if (!qword_27E4B9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9188);
  }

  return result;
}

unint64_t sub_24061C154()
{
  result = qword_27E4B9190;
  if (!qword_27E4B9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9190);
  }

  return result;
}

unint64_t sub_24061C1AC()
{
  result = qword_27E4B9198;
  if (!qword_27E4B9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9198);
  }

  return result;
}

unint64_t sub_24061C204()
{
  result = qword_27E4B91A0;
  if (!qword_27E4B91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91A0);
  }

  return result;
}

unint64_t sub_24061C25C()
{
  result = qword_27E4B91A8;
  if (!qword_27E4B91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91A8);
  }

  return result;
}

unint64_t sub_24061C2B4()
{
  result = qword_27E4B91B0;
  if (!qword_27E4B91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91B0);
  }

  return result;
}

unint64_t sub_24061C30C()
{
  result = qword_27E4B91B8;
  if (!qword_27E4B91B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91B8);
  }

  return result;
}

unint64_t sub_24061C364()
{
  result = qword_27E4B91C0;
  if (!qword_27E4B91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91C0);
  }

  return result;
}

unint64_t sub_24061C3BC()
{
  result = qword_27E4B91C8;
  if (!qword_27E4B91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91C8);
  }

  return result;
}

unint64_t sub_24061C414()
{
  result = qword_27E4B91D0;
  if (!qword_27E4B91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91D0);
  }

  return result;
}

unint64_t sub_24061C46C()
{
  result = qword_27E4B91D8;
  if (!qword_27E4B91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91D8);
  }

  return result;
}

unint64_t sub_24061C4C4()
{
  result = qword_27E4B91E0;
  if (!qword_27E4B91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91E0);
  }

  return result;
}

unint64_t sub_24061C51C()
{
  result = qword_27E4B91E8;
  if (!qword_27E4B91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91E8);
  }

  return result;
}

unint64_t sub_24061C574()
{
  result = qword_27E4B91F0;
  if (!qword_27E4B91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91F0);
  }

  return result;
}

unint64_t sub_24061C5CC()
{
  result = qword_27E4B91F8;
  if (!qword_27E4B91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B91F8);
  }

  return result;
}

unint64_t sub_24061C624()
{
  result = qword_27E4B9200;
  if (!qword_27E4B9200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9200);
  }

  return result;
}

unint64_t sub_24061C67C()
{
  result = qword_27E4B9208;
  if (!qword_27E4B9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9208);
  }

  return result;
}

unint64_t sub_24061C6D4()
{
  result = qword_27E4B9210;
  if (!qword_27E4B9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9210);
  }

  return result;
}

unint64_t sub_24061C72C()
{
  result = qword_27E4B9218;
  if (!qword_27E4B9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9218);
  }

  return result;
}

unint64_t sub_24061C784()
{
  result = qword_27E4B9220;
  if (!qword_27E4B9220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9220);
  }

  return result;
}

unint64_t sub_24061C7DC()
{
  result = qword_27E4B9228;
  if (!qword_27E4B9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9228);
  }

  return result;
}

unint64_t sub_24061C834()
{
  result = qword_27E4B9230;
  if (!qword_27E4B9230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9230);
  }

  return result;
}

unint64_t sub_24061C88C()
{
  result = qword_27E4B9238;
  if (!qword_27E4B9238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9238);
  }

  return result;
}

unint64_t sub_24061C8E4()
{
  result = qword_27E4B9240;
  if (!qword_27E4B9240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9240);
  }

  return result;
}

unint64_t sub_24061C93C()
{
  result = qword_27E4B9248;
  if (!qword_27E4B9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9248);
  }

  return result;
}

unint64_t sub_24061C994()
{
  result = qword_27E4B9250;
  if (!qword_27E4B9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9250);
  }

  return result;
}

unint64_t sub_24061C9EC()
{
  result = qword_27E4B9258;
  if (!qword_27E4B9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9258);
  }

  return result;
}

unint64_t sub_24061CA44()
{
  result = qword_27E4B9260;
  if (!qword_27E4B9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9260);
  }

  return result;
}

unint64_t sub_24061CA9C()
{
  result = qword_27E4B9268;
  if (!qword_27E4B9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9268);
  }

  return result;
}

uint64_t sub_24061CAF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24061CD34();
  result = MEMORY[0x245CC6270](v2, &type metadata for Symptom, v3);
  v13 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[3];
      v14[2] = v5[2];
      v14[3] = v6;
      v15[0] = v5[4];
      *(v15 + 9) = *(v5 + 73);
      v7 = *v5;
      v8 = v5[1];
      v5 += 6;
      v14[0] = v7;
      v14[1] = v8;
      sub_2405F1048(v14, v11);
      sub_2406664BC(v9, v14);
      v11[2] = v9[2];
      v11[3] = v9[3];
      v12[0] = v10[0];
      *(v12 + 9) = *(v10 + 9);
      v11[0] = v9[0];
      v11[1] = v9[1];
      sub_2405F10A4(v11);
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_24061CBC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D614E74726F6873 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_24061CCEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24061CD34()
{
  result = qword_27E4B9278;
  if (!qword_27E4B9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B9278);
  }

  return result;
}

uint64_t sub_24061CD88(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t static AISBiome.shared.getter()
{
  type metadata accessor for AISBiome();

  return swift_initStaticObject();
}

uint64_t AISBiomeProtocol.biomeEvent(from:familyCircleProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_24061CE48, 0, 0);
}

uint64_t sub_24061CE48()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  swift_beginAccess();
  if (*(v1 + v2) == 1)
  {
    v3 = v0[6];
    v4 = v3[3];
    v5 = v3[4];
    __swift_project_boxed_opaque_existential_1(v3, v4);
    v14 = (*(v5 + 8) + **(v5 + 8));
    v6 = swift_task_alloc();
    v0[7] = v6;
    *v6 = v0;
    v6[1] = sub_24061D094;

    return v14(v4, v5);
  }

  else
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v8 = sub_240759AE4();
    __swift_project_value_buffer(v8, qword_280FADA00);
    v9 = sub_240759AC4();
    v10 = sub_24075A5D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_240579000, v9, v10, "AISBiomeEventProvider setup aborted not fetching family", v11, 2u);
      MEMORY[0x245CC76B0](v11, -1, -1);
    }

    v12 = sub_24061D4D0(0, 1);
    v13 = v0[1];

    return v13(v12);
  }
}

uint64_t sub_24061D094(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_24061D32C;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_24061D1BC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24061D1BC()
{
  v1 = *(v0 + 72);
  v2 = [v1 me];

  if (v2)
  {
    v3 = [v2 age];
  }

  else
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v4 = sub_240759AE4();
    __swift_project_value_buffer(v4, qword_280FADA00);
    v5 = sub_240759AC4();
    v6 = sub_24075A5E4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_240579000, v5, v6, "AISBiomeEventProvider childMember == nil. This should not happen", v7, 2u);
      MEMORY[0x245CC76B0](v7, -1, -1);
    }

    v3 = 0;
  }

  v8 = sub_24061D4D0(v3, v2 == 0);

  v9 = *(v0 + 8);

  return v9(v8);
}

uint64_t sub_24061D32C()
{
  if (qword_280FAD9F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_240759AE4();
  __swift_project_value_buffer(v2, qword_280FADA00);
  v3 = v1;
  v4 = sub_240759AC4();
  v5 = sub_24075A5E4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_240579000, v4, v5, "AISBiomeEventProvider error fetching family %@", v8, 0xCu);
    sub_24061DD28(v9);
    MEMORY[0x245CC76B0](v9, -1, -1);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  else
  {
  }

  v12 = sub_24061D4D0(0, 1);
  v13 = *(v0 + 8);

  return v13(v12);
}

id sub_24061D4D0(uint64_t a1, int a2)
{
  v3 = v2;
  v53 = a2;
  v50 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  swift_beginAccess();
  v10 = 0;
  v11 = *(v3 + 16);
  if (v11 != 2)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v54 = v10;
  v12 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_startDate;
  swift_beginAccess();
  sub_24061DDE0(v3 + v12, v9);
  v13 = sub_240759744();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = 0;
  if (v15(v9, 1, v13) != 1)
  {
    v16 = sub_2407596F4();
    (*(v14 + 8))(v9, v13);
  }

  v17 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_endDate;
  swift_beginAccess();
  sub_24061DDE0(v3 + v17, v7);
  v18 = 0;
  if (v15(v7, 1, v13) != 1)
  {
    v18 = sub_2407596F4();
    (*(v14 + 8))(v7, v13);
  }

  v52 = v18;
  v19 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_completedSetup;
  swift_beginAccess();
  v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v20 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_lastViewedScreen;
  swift_beginAccess();
  v21 = *(v3 + v20);
  v22 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_appUsage;
  swift_beginAccess();
  v23 = 0;
  v24 = *(v3 + v22);
  if (v24 != 2)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v25 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_askToBuy;
  swift_beginAccess();
  v26 = 0;
  v27 = *(v3 + v25);
  if (v27 != 2)
  {
    v26 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  }

  v28 = v16;
  v29 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_commSafety;
  swift_beginAccess();
  v30 = 0;
  v31 = *(v3 + v29);
  if (v31 != 2)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef:v31 & 1 setRequiresSecureCoding:? + 4];
  }

  v32 = OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_screenDistance;
  swift_beginAccess();
  v33 = 0;
  v34 = *(v3 + v32);
  if (v34 != 2)
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef:v34 & 1 setRequiresSecureCoding:? + 4];
  }

  if (v53)
  {
    v35 = 0;
  }

  else
  {
    v36 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    v35 = [v36 initWithInteger_];
  }

  v37 = v3 + OBJC_IVAR____TtC12AppleIDSetup27AISChildSetupAnalyticsEvent_flowType;
  swift_beginAccess();
  v38 = 0;
  if ((*(v37 + 8) & 1) == 0)
  {
    v38 = *v37;
    if (*v37 != 1)
    {
      if (v38)
      {
        v55 = *v37;
        result = sub_24075AD64();
        __break(1u);
        return result;
      }

      v38 = 2;
    }
  }

  if (v21 == 14)
  {
    v39 = 0;
  }

  else
  {
    v39 = v21 + 1;
  }

  v40 = objc_opt_self();
  v48 = v38;
  v41 = v54;
  v42 = v28;
  v43 = v28;
  v44 = v52;
  v45 = v51;
  v46 = [v40 biomeEventWithIsNewChildAccount:v54 startDate:v43 endDate:v52 completedSetup:v51 lastViewedScreen:v39 appUsage:v23 askToBuy:v26 commSafety:v30 screenDistance:v33 age:v35 flowType:v48];

  return v46;
}

uint64_t sub_24061D9D4(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_24061DA34(void *a1)
{
  v2 = [objc_opt_self() ais_appleIDChildSetupSource];
  if (v2)
  {
    v3 = v2;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      v6 = a1;
      [v3 sendEvent_];
      if (qword_280FAD9F0 != -1)
      {
        swift_once();
      }

      v7 = sub_240759AE4();
      __swift_project_value_buffer(v7, qword_280FADA00);
      v8 = sub_240759AC4();
      v9 = sub_24075A5D4();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_240579000, v8, v9, "AISBiomeController wrote biome event for child setup", v10, 2u);
        MEMORY[0x245CC76B0](v10, -1, -1);
      }
    }

    else
    {
      if (qword_280FAD9F0 != -1)
      {
        swift_once();
      }

      v14 = sub_240759AE4();
      __swift_project_value_buffer(v14, qword_280FADA00);
      v15 = sub_240759AC4();
      v16 = sub_24075A5D4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_240579000, v15, v16, "AISBiomeController biomeEvent is not the correct type", v17, 2u);
        MEMORY[0x245CC76B0](v17, -1, -1);
      }
    }
  }

  else
  {
    if (qword_280FAD9F0 != -1)
    {
      swift_once();
    }

    v11 = sub_240759AE4();
    __swift_project_value_buffer(v11, qword_280FADA00);
    oslog = sub_240759AC4();
    v12 = sub_24075A5D4();
    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_240579000, oslog, v12, "AISBiomeController failed to get biome source", v13, 2u);
      MEMORY[0x245CC76B0](v13, -1, -1);
    }
  }
}

uint64_t sub_24061DD28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A0, &qword_240762400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24061DDE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B92A8, &qword_240779B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SignInCommand.Request.srpResults.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SignInCommand.Request(0) + 20));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v7 = v3[1];
  v11[0] = *v3;
  v8 = v11[0];
  v11[1] = v7;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v8;
  a1[1] = v7;
  return sub_240618F1C(v11, &v10);
}

__n128 SignInCommand.Request.srpResults.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for SignInCommand.Request(0) + 20));
  v4 = v3[3];
  v11[2] = v3[2];
  v11[3] = v4;
  v5 = v3[5];
  v11[4] = v3[4];
  v11[5] = v5;
  v6 = v3[1];
  v11[0] = *v3;
  v11[1] = v6;
  sub_240618F54(v11);
  v7 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v7;
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  result = *a1;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  return result;
}

uint64_t SignInCommand.Request.isFinal.setter(char a1)
{
  result = type metadata accessor for SignInCommand.Request(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SignInCommand.Request.isTerminal.setter(char a1)
{
  result = type metadata accessor for SignInCommand.Request(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

__n128 SignInCommand.Request.init(account:srpResults:isFinal:isTerminal:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_24061E30C(a1, a5, type metadata accessor for IdMSAccount);
  v9 = type metadata accessor for SignInCommand.Request(0);
  v10 = (a5 + v9[5]);
  v11 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v11;
  v12 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v12;
  result = *a2;
  v14 = *(a2 + 16);
  *v10 = *a2;
  v10[1] = v14;
  *(a5 + v9[6]) = a3;
  *(a5 + v9[7]) = a4;
  return result;
}

uint64_t SignInCommand.Request.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for V1Command(0);
  if (swift_getEnumCaseMultiPayload())
  {
    v4 = type metadata accessor for V1Command;
  }

  else
  {
    type metadata accessor for V1Command.Request(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_24061E30C(a1, a2, type metadata accessor for SignInCommand.Request);
      v5 = 0;
      goto LABEL_7;
    }

    v4 = type metadata accessor for V1Command.Request;
  }

  sub_24061E2AC(a1, v4);
  v5 = 1;
LABEL_7:
  v6 = type metadata accessor for SignInCommand.Request(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

uint64_t sub_24061E2AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24061E30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double static SignInCommand.Request.terminal.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for IdMSAccount(0);
  sub_240759594();
  sub_2405AF9F8(v14);
  v3 = (a1 + v2[8]);
  *v3 = xmmword_24075D8C0;
  v4 = a1 + v2[9];
  *v4 = 0;
  *(v4 + 8) = 1;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  v5 = (a1 + v2[6]);
  v6 = v14[7];
  v5[6] = v14[6];
  v5[7] = v6;
  v7 = v14[9];
  v5[8] = v14[8];
  v5[9] = v7;
  v8 = v14[3];
  v5[2] = v14[2];
  v5[3] = v8;
  v9 = v14[5];
  v5[4] = v14[4];
  v5[5] = v9;
  v10 = v14[1];
  *v5 = v14[0];
  v5[1] = v10;
  *(a1 + v2[7]) = MEMORY[0x277D84FA0];
  sub_2405AFA1C(*v3, v3[1]);
  *v3 = xmmword_24075D8C0;
  *v4 = 0;
  *(v4 + 8) = 0;
  sub_24058C9E4(0, 0xF000000000000000);
  v11 = type metadata accessor for SignInCommand.Request(0);
  v12 = a1 + v11[5];
  *v12 = 0;
  *(v12 + 8) = 0xE000000000000000;
  result = 0.0;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0xF000000000000000;
  *(a1 + v11[6]) = 0;
  *(a1 + v11[7]) = 1;
  return result;
}

uint64_t sub_24061E4DC()
{
  v1 = 0x746E756F636361;
  v2 = 0x6C616E69467369;
  if (*v0 != 2)
  {
    v2 = 0x6E696D7265547369;
  }

  if (*v0)
  {
    v1 = 0x6C75736552707273;
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

uint64_t sub_24061E55C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_240621CF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24061E584(uint64_t a1)
{
  v2 = sub_24062100C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24061E5C0(uint64_t a1)
{
  v2 = sub_24062100C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SignInCommand.Request.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9310, &qword_24076B5D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24062100C();
  sub_24075AF74();
  v33[0] = 0;
  type metadata accessor for IdMSAccount(0);
  sub_240621060(&qword_27E4B6438, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  sub_24075ABE4();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for SignInCommand.Request(0) + 20));
    v10 = v9[2];
    v11 = v9[4];
    v30 = v9[3];
    v31 = v11;
    v12 = v9[4];
    v32 = v9[5];
    v13 = *v9;
    v14 = v9[2];
    v28 = v9[1];
    v29 = v14;
    v15 = *v9;
    v24 = v30;
    v25 = v12;
    v26 = v9[5];
    v27 = v15;
    v21 = v13;
    v22 = v28;
    v23 = v10;
    v20 = 1;
    sub_240618F1C(&v27, v19);
    sub_2406022B8();
    sub_24075ABE4();
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v19[5] = v26;
    v19[0] = v21;
    v19[1] = v22;
    sub_240618F54(v19);
    v18 = 2;
    sub_24075ABC4();
    v18 = 3;
    sub_24075ABC4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SignInCommand.Request.hash(into:)(uint64_t a1)
{
  IdMSAccount.hash(into:)(a1);
  v2 = *(v1 + *(type metadata accessor for SignInCommand.Request(0) + 20) + 88);
  sub_24075A114();
  sub_24075AE94();
  if (v2 >> 60 != 15)
  {
    sub_2407596D4();
  }

  sub_24075AE94();
  return sub_24075AE94();
}

uint64_t SignInCommand.Request.hashValue.getter()
{
  sub_24075AE64();
  IdMSAccount.hash(into:)(v3);
  v1 = *(v0 + *(type metadata accessor for SignInCommand.Request(0) + 20) + 88);
  sub_24075A114();
  sub_24075AE94();
  if (v1 >> 60 != 15)
  {
    sub_2407596D4();
  }

  sub_24075AE94();
  sub_24075AE94();
  return sub_24075AED4();
}

uint64_t SignInCommand.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for IdMSAccount(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9320, &qword_24076B5E0);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for SignInCommand.Request(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24062100C();
  sub_24075AF34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v14 = v24;
  v15 = v12;
  LOBYTE(v27) = 0;
  sub_240621060(&qword_27E4B6480, type metadata accessor for IdMSAccount, &protocol conformance descriptor for IdMSAccount);
  v16 = v25;
  sub_24075AAF4();
  sub_24061E30C(v6, v15, type metadata accessor for IdMSAccount);
  v34 = 1;
  sub_240602498();
  sub_24075AAF4();
  v17 = (v15 + v10[5]);
  v18 = v30;
  v17[2] = v29;
  v17[3] = v18;
  v19 = v32;
  v17[4] = v31;
  v17[5] = v19;
  v20 = v28;
  *v17 = v27;
  v17[1] = v20;
  v33 = 2;
  *(v15 + v10[6]) = sub_24075AAD4() & 1;
  v33 = 3;
  v21 = sub_24075AAD4();
  (*(v14 + 8))(v9, v16);
  *(v15 + v10[7]) = v21 & 1;
  sub_2406210A8(v15, v23, type metadata accessor for SignInCommand.Request);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_24061E2AC(v15, type metadata accessor for SignInCommand.Request);
}