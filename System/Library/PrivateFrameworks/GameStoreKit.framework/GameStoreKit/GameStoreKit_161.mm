uint64_t type metadata accessor for ChallengeSuggestionCard(uint64_t a1)
{
  result = qword_27F24CBC8;
  if (!qword_27F24CBC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F6BF1FC(uint64_t a1)
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
        sub_24F6BF3B8(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F6BF3B8(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_24F6BF3B8(319, &qword_27F214D28, type metadata accessor for PlayerAvatar, MEMORY[0x277D83940]);
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

void sub_24F6BF3B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F6BF41C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v32 - v4;
  v35 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v35);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CBE8, &qword_24FA1C098);
  v37 = *(v12 - 8);
  v38 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v15 = type metadata accessor for ChallengeSuggestionCard(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v17 + 40) = 0u;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *(v17 + 56) = 0u;
  *(v17 + 9) = 0;
  v40 = v17 + 40;
  sub_24E61DA68(&v44, (v17 + 40), qword_27F21B590, &unk_24F93BE30);
  v41 = v15;
  v18 = *(v15 + 24);
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v43 = v18;
  v20(&v17[v18], 1, 1, v19);
  v21 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F6C0008();
  v22 = v39;
  sub_24F92D108();
  if (v22)
  {
    v24 = v40;
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_24E601704(v24, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v17[v43], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v39 = v8;
    v23 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v25 = v45;
    *v17 = v44;
    *(v17 + 1) = v25;
    *(v17 + 4) = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v47 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v26 = v23;
    sub_24E61DA68(&v44, v40, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v44) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v11, &v17[v43], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v44) = 3;
    sub_24F6C005C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v27 = v39;
    sub_24F92CC18();
    v28 = v41;
    sub_24E6009C8(v27, &v17[v41[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v44) = 4;
    sub_24F6C005C(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v29 = v36;
    sub_24F92CC68();
    sub_24E706B90(v29, &v17[v28[8]]);
    sub_24F9289E8();
    LOBYTE(v44) = 5;
    sub_24F6C005C(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v30 = v34;
    sub_24F92CC18();
    sub_24E6009C8(v30, &v17[v28[9]], &qword_27F213FB0, &qword_24F93E6B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218590, &qword_24F9D7B90);
    v47 = 6;
    sub_24E6DCCC8();
    sub_24F92CC68();
    (*(v26 + 8))(v14, v38);
    *&v17[v28[10]] = v44;
    sub_24F6C00A4(v17, v33, type metadata accessor for ChallengeSuggestionCard);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_24F6C010C(v17, type metadata accessor for ChallengeSuggestionCard);
  }
}

uint64_t sub_24F6BFCA8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F6349656D6167;
  if (v1 != 5)
  {
    v3 = 0x7641726579616C70;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0x4D747865746E6F63;
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

uint64_t sub_24F6BFD8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F6C0284(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6BFDB4(uint64_t a1)
{
  v2 = sub_24F6C0008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6BFDF0(uint64_t a1)
{
  v2 = sub_24F6C0008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6BFE64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F6BFF3C(uint64_t a1)
{
  *(a1 + 8) = sub_24F6C005C(&qword_27F21AAE0, type metadata accessor for ChallengeSuggestionCard, &unk_24FA1C054);
  result = sub_24F6C005C(&qword_27F24CBD8, type metadata accessor for ChallengeSuggestionCard, &unk_24FA1C010);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F6C0008()
{
  result = qword_27F24CBF0;
  if (!qword_27F24CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CBF0);
  }

  return result;
}

uint64_t sub_24F6C005C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F6C00A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6C010C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F6C0180()
{
  result = qword_27F24CBF8;
  if (!qword_27F24CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CBF8);
  }

  return result;
}

unint64_t sub_24F6C01D8()
{
  result = qword_27F24CC00;
  if (!qword_27F24CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC00);
  }

  return result;
}

unint64_t sub_24F6C0230()
{
  result = qword_27F24CC08;
  if (!qword_27F24CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC08);
  }

  return result;
}

uint64_t sub_24F6C0284(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xED00007372617461)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

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

id sub_24F6C04D8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  result = [v0 setNumberStyle_];
  qword_27F39F008 = v0;
  return result;
}

void sub_24F6C0528()
{
  v0 = sub_24F91F7C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setNumberStyle_];
  sub_24F91F778();
  v5 = sub_24F91F738();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  qword_27F39F010 = v4;
}

unint64_t GameKitAuthenticateCredential.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x4449726579616C70;
  *(inited + 40) = 0xE800000000000000;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 72) = v8;
  v9 = sub_24E605DB4();
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 80) = v9;
  *(inited + 88) = 0xD000000000000013;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 96) = 0x800000024FA7C450;
  *(inited + 104) = v6;
  *(inited + 112) = v5;

  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t sub_24F6C07A0()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

uint64_t sub_24F6C07E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA7C450 == a2)
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

uint64_t sub_24F6C08C4(uint64_t a1)
{
  v2 = sub_24F6C0E5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6C0900(uint64_t a1)
{
  v2 = sub_24F6C0E5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameKitAuthenticateCredential.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CC10, &qword_24FA1C1C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C0E5C();
  sub_24F92D128();
  v12 = 0;
  v8 = v10[3];
  sub_24F92CCA8();
  if (!v8)
  {
    v11 = 1;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t GameKitAuthenticateCredential.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CC20, &qword_24FA1C1C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C0E5C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24F92CBC8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24F92CBC8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F6C0D00@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x4449726579616C70;
  *(inited + 40) = 0xE800000000000000;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 72) = v8;
  v9 = sub_24E605DB4();
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 80) = v9;
  *(inited + 88) = 0xD000000000000013;
  *(inited + 128) = v8;
  *(inited + 136) = v9;
  *(inited + 96) = 0x800000024FA7C450;
  *(inited + 104) = v6;
  *(inited + 112) = v5;

  v10 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v10;
  return result;
}

unint64_t sub_24F6C0E5C()
{
  result = qword_27F24CC18;
  if (!qword_27F24CC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC18);
  }

  return result;
}

unint64_t sub_24F6C0ED4()
{
  result = qword_27F24CC28;
  if (!qword_27F24CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC28);
  }

  return result;
}

unint64_t sub_24F6C0F2C()
{
  result = qword_27F24CC30;
  if (!qword_27F24CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC30);
  }

  return result;
}

unint64_t sub_24F6C0F84()
{
  result = qword_27F24CC38;
  if (!qword_27F24CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC38);
  }

  return result;
}

unint64_t InternalSettingsPageIntent.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() valueWithNewObjectInContext_];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_24F6C1078(uint64_t a1)
{
  v2 = sub_24F6C1204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6C10B4(uint64_t a1)
{
  v2 = sub_24F6C1204();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalSettingsPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CC40, &qword_24FA1C3E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C1204();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F6C1204()
{
  result = qword_27F24CC48;
  if (!qword_27F24CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC48);
  }

  return result;
}

uint64_t sub_24F6C12A0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CC40, &qword_24FA1C3E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C1204();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F6C13D8()
{
  result = qword_27F24CC50;
  if (!qword_27F24CC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC50);
  }

  return result;
}

unint64_t sub_24F6C1430()
{
  result = qword_27F24CC58;
  if (!qword_27F24CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC58);
  }

  return result;
}

uint64_t CompletedChallengesShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CompletedChallengesShelfIntent.gameBundleID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

unint64_t CompletedChallengesShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v7 = v1[3];
  v6 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 32) = 0x444965676170;
  v9 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_24F9479A0;
  v10 = MEMORY[0x277D22580];
  *(inited + 72) = v9;
  *(inited + 80) = v10;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 88) = 0x796C6E4F6E6977;
  *(inited + 96) = 0xE700000000000000;
  v11 = MEMORY[0x277D22598];
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = v11;
  *(inited + 104) = v5;
  strcpy((inited + 144), "gameBundleID");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 192) = sub_24E605DB4();
  *(inited + 160) = v7;
  *(inited + 168) = v6;

  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24F6C16A4()
{
  v1 = 0x796C6E4F6E6977;
  if (*v0 != 1)
  {
    v1 = 0x646E7542656D6167;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F6C1704@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F6C1D88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6C172C(uint64_t a1)
{
  v2 = sub_24F6C1C0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6C1768(uint64_t a1)
{
  v2 = sub_24F6C1C0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CompletedChallengesShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CC60, &qword_24FA1C5B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v11 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C1C0C();
  sub_24F92D128();
  v14 = 0;
  v8 = v10[3];
  sub_24F92CD08();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CD18();
  v12 = 2;
  sub_24F92CCA8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CompletedChallengesShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CC70, &qword_24FA1C5B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C1C0C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  v20 = sub_24F92CC38();
  v21 = 2;
  v13 = sub_24F92CBC8();
  v16 = v15;
  v20 &= 1u;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F6C1C0C()
{
  result = qword_27F24CC68;
  if (!qword_27F24CC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC68);
  }

  return result;
}

unint64_t sub_24F6C1C84()
{
  result = qword_27F24CC78;
  if (!qword_27F24CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC78);
  }

  return result;
}

unint64_t sub_24F6C1CDC()
{
  result = qword_27F24CC80;
  if (!qword_27F24CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC80);
  }

  return result;
}

unint64_t sub_24F6C1D34()
{
  result = qword_27F24CC88;
  if (!qword_27F24CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CC88);
  }

  return result;
}

uint64_t sub_24F6C1D88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C6E4F6E6977 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F6C1EC4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F6C2014(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for NotImplemented(uint64_t a1)
{
  result = qword_27F24CC90;
  if (!qword_27F24CC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6C219C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCC0, &qword_24FA1C998);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C2DA4();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for NotImplemented(0);
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F929608();
    sub_24F3C87D0(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F6C247C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCB0, &unk_24FA1C988);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for NotImplemented(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v40 = v14 + 40;
  sub_24E61DA68(&v41, (v14 + 40), qword_27F21B590, &unk_24F93BE30);
  v15 = *(v12 + 32);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v38 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 36);
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v37 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F6C2DA4();
  v35 = v10;
  v22 = v36;
  sub_24F92D108();
  if (v22)
  {
    v24 = v38;
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_24E601704(v40, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v14[v24], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v14[v37], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v23 = v34;
    sub_24F92CC68();
    v25 = v42;
    *v14 = v41;
    *(v14 + 1) = v25;
    *(v14 + 4) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v44 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v26 = v38;
    v27 = v33;
    sub_24E61DA68(&v41, v40, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v41) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v7, &v14[v26], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v41) = 3;
    sub_24F3C87D0(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v28 = v32;
    v29 = v35;
    sub_24F92CC18();
    (*(v27 + 8))(v29, v23);
    sub_24E61DA68(v28, &v14[v37], &qword_27F213E68, &unk_24F93BC80);
    sub_24F6C2DF8(v14, v31);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_24F6C2E5C(v14);
  }
}

uint64_t sub_24F6C2A44(uint64_t a1)
{
  v2 = sub_24F6C2DA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6C2A80(uint64_t a1)
{
  v2 = sub_24F6C2DA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F6C2ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F6C2C14(uint64_t a1)
{
  sub_24F47D3D4();

  return sub_24F9218E8();
}

unint64_t sub_24F6C2CA4()
{
  result = qword_27F24CCA8;
  if (!qword_27F24CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CCA8);
  }

  return result;
}

unint64_t sub_24F6C2DA4()
{
  result = qword_27F24CCB8;
  if (!qword_27F24CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CCB8);
  }

  return result;
}

uint64_t sub_24F6C2DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotImplemented(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6C2E5C(uint64_t a1)
{
  v2 = type metadata accessor for NotImplemented(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F6C2ECC()
{
  result = qword_27F24CCC8;
  if (!qword_27F24CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CCC8);
  }

  return result;
}

unint64_t sub_24F6C2F24()
{
  result = qword_27F24CCD0;
  if (!qword_27F24CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CCD0);
  }

  return result;
}

unint64_t sub_24F6C2F7C()
{
  result = qword_27F24CCD8;
  if (!qword_27F24CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CCD8);
  }

  return result;
}

unint64_t sub_24F6C2FD4()
{
  result = qword_27F24CCE0;
  if (!qword_27F24CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CCE0);
  }

  return result;
}

unint64_t ChallengesFriendComparisonChartShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x444965676170;
  v10 = MEMORY[0x277D837D0];
  v11 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v11;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x800000024FA464C0;
  *(inited + 128) = v10;
  *(inited + 136) = v11;
  *(inited + 104) = v5;
  *(inited + 112) = v4;
  strcpy((inited + 144), "friendAvatar");
  *(inited + 157) = 0;
  *(inited + 158) = -5120;
  *(inited + 184) = v10;
  *(inited + 192) = v11;
  *(inited + 160) = v6;
  *(inited + 168) = v7;
  strcpy((inited + 200), "winComparisons");
  *(inited + 215) = -18;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCE8, &qword_24FA1CAF8);
  *(inited + 248) = sub_24F6C39FC(&qword_27F24CCF0, &qword_27F24CCF8, &protocol conformance descriptor for ChallengesFriendComparisonData.WinComparison, MEMORY[0x277D22590]);
  *(inited + 216) = v8;

  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

unint64_t sub_24F6C3250()
{
  v1 = 0x444965676170;
  v2 = 0x7641646E65697266;
  if (*v0 != 2)
  {
    v2 = 0x61706D6F436E6977;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_24F6C32E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F6C3BF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6C3308(uint64_t a1)
{
  v2 = sub_24F6C39A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6C3344(uint64_t a1)
{
  v2 = sub_24F6C39A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesFriendComparisonChartShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CD00, &qword_24FA1CB00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v16 = v1[3];
  v17 = v7;
  v8 = v1[4];
  v14 = v1[5];
  v15 = v8;
  v13 = v1[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C39A8();
  sub_24F92D128();
  v23 = 0;
  v9 = v18;
  sub_24F92CD08();
  if (!v9)
  {
    v10 = v13;
    v22 = 1;
    sub_24F92CD08();
    v21 = 2;
    sub_24F92CD08();
    v19 = v10;
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCE8, &qword_24FA1CAF8);
    sub_24F6C39FC(&qword_27F24CD10, &qword_27F24CD18, &protocol conformance descriptor for ChallengesFriendComparisonData.WinComparison, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengesFriendComparisonChartShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CD20, &qword_24FA1CB08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C39A8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = 0;
  v9 = sub_24F92CC28();
  v24 = v10;
  v28 = 1;
  v11 = sub_24F92CC28();
  v23 = v12;
  v21 = v11;
  v27 = 2;
  v20 = sub_24F92CC28();
  v22 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CCE8, &qword_24FA1CAF8);
  v26 = 3;
  sub_24F6C39FC(&qword_27F24CD28, &qword_27F24CD30, &protocol conformance descriptor for ChallengesFriendComparisonData.WinComparison, MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v16 = v24;
  v15 = v25;
  *a2 = v9;
  a2[1] = v16;
  v17 = v20;
  v19 = v22;
  v18 = v23;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v17;
  a2[5] = v19;
  a2[6] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F6C39A8()
{
  result = qword_27F24CD08;
  if (!qword_27F24CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CD08);
  }

  return result;
}

uint64_t sub_24F6C39FC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CCE8, &qword_24FA1CAF8);
    sub_24F6C3A84(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F6C3A84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChallengesFriendComparisonData.WinComparison(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F6C3AEC()
{
  result = qword_27F24CD38;
  if (!qword_27F24CD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CD38);
  }

  return result;
}

unint64_t sub_24F6C3B44()
{
  result = qword_27F24CD40;
  if (!qword_27F24CD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CD40);
  }

  return result;
}

unint64_t sub_24F6C3B9C()
{
  result = qword_27F24CD48;
  if (!qword_27F24CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CD48);
  }

  return result;
}

uint64_t sub_24F6C3BF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA464C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7641646E65697266 && a2 == 0xEC00000072617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61706D6F436E6977 && a2 == 0xEE00736E6F736972)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F6C3D64(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for FocusableItemScrollViewOffsetModifier(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v14 = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  *(v14 + 32) = sub_24F923398() & 1;
  *(v14 + 5) = v15;
  *(v14 + 48) = v16 & 1;
  v17 = *(v12 + 24);
  *(v14 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200A8, &qword_24F962848);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x25304C420](v14, a1, v12, a2);
  return sub_24F6C3FA4(v14);
}

uint64_t sub_24F6C3E8C()
{
  sub_24F58BC60();

  return sub_24F924868();
}

uint64_t sub_24F6C3EE4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924098();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t type metadata accessor for FocusableItemScrollViewOffsetModifier(uint64_t a1)
{
  result = qword_27F24CD58;
  if (!qword_27F24CD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F6C3FA4(uint64_t a1)
{
  v2 = type metadata accessor for FocusableItemScrollViewOffsetModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F6C4014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CD50, &unk_24FA1CDD0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F6C40F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CD50, &unk_24FA1CDD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F6C41A0(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_24E65E73C();
    if (v2 <= 0x3F)
    {
      sub_24F6C423C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F6C423C(uint64_t a1)
{
  if (!qword_27F24CD68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F220F50, &qword_24F965290);
    v1 = sub_24F923578();
    if (!v2)
    {
      atomic_store(v1, &qword_27F24CD68);
    }
  }
}

uint64_t sub_24F6C42BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a1;
  v25 = a2;
  v3 = type metadata accessor for FocusableItemScrollViewOffsetModifier(0);
  v22 = *(v3 - 8);
  v21 = *(v22 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v20 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CD70, &unk_24FA1CE60);
  v6 = *(v5 - 8);
  v23 = v5;
  v24 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  v19[0] = v2;
  v10 = *(v2 + 40);
  v11 = *(v2 + 48);
  LOBYTE(v26) = *(v2 + 32);
  v9 = v26;
  v27 = v10;
  v28 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215670, &unk_24F961D00);
  sub_24F923348();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CD78, &qword_24FA1CE70);
  v13 = sub_24F6C4954();
  sub_24F9269C8();

  LOBYTE(v26) = v9;
  v27 = v10;
  v28 = v11;
  sub_24F923328();
  v14 = v20;
  sub_24F6C49B8(v19[0], v20);
  v15 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v16 = swift_allocObject();
  sub_24F6C4B90(v14, v16 + v15);
  v26 = v12;
  v27 = v13;
  swift_getOpaqueTypeConformance2();
  v17 = v23;
  sub_24F926AB8();

  return (*(v24 + 8))(v8, v17);
}

double sub_24F6C4590(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (*a2 == 1)
  {
    v3 = MEMORY[0x25304D060](a1, 0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C00, &qword_24F9CEF40);
    sub_24F923B18();
  }

  return result;
}

uint64_t sub_24F6C4658@<X0>(double *a1@<X0>, BOOL *a2@<X8>)
{
  v4 = sub_24F924848();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200A8, &qword_24F962848);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = type metadata accessor for FocusableItemScrollViewOffsetModifier(0);
  sub_24F6C4C90(a1 + *(v14 + 24), v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_24F6C4D00(v10, v13);
  }

  else
  {
    sub_24F92BDC8();
    v15 = sub_24F9257A8();
    v22 = v4;
    v16 = v15;
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v22);
  }

  v17 = sub_24F924098();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v13, 1, v17);
  if (v19 == 1)
  {
    result = sub_24EEEF5A0(v13);
  }

  else
  {
    sub_24F924078();
    result = (*(v18 + 8))(v13, v17);
  }

  *a2 = v19 == 1;
  return result;
}

unint64_t sub_24F6C4954()
{
  result = qword_27F24CD80;
  if (!qword_27F24CD80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CD78, &qword_24FA1CE70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CD80);
  }

  return result;
}

uint64_t sub_24F6C49B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusableItemScrollViewOffsetModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6C4A1C()
{
  v1 = (type metadata accessor for FocusableItemScrollViewOffsetModifier(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200A8, &qword_24F962848);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_24F924098();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F6C4B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FocusableItemScrollViewOffsetModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F6C4BF4(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for FocusableItemScrollViewOffsetModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24F6C4590(a1, a2, v6);
}

uint64_t sub_24F6C4C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2200A8, &qword_24F962848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6C4D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220F50, &qword_24F965290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F6C4D70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CD70, &unk_24FA1CE60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CD78, &qword_24FA1CE70);
  sub_24F6C4954();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F6C4E24@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  sub_24E60169C(a1, v10, &qword_27F213FB0, &qword_24F93E6B0);
  v14 = sub_24F9289E8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_24E601704(v10, &qword_27F213FB0, &qword_24F93E6B0);
    v16 = type metadata accessor for ColorGroup(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  else
  {
    v17 = sub_24F9289A8();
    if (v17)
    {
      v18 = qword_27F20FEE0;
      v19 = v17;
      if (v18 != -1)
      {
        v29 = v19;
        swift_once();
        v19 = v29;
      }

      v20 = v19;
      v21 = sub_24F926BD8();
      ColorGrouping.colorGroup(for:)(v21);
    }

    else
    {
      v22 = type metadata accessor for ColorGroup(0);
      (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
    }

    (*(v15 + 8))(v10, v14);
  }

  v23 = sub_24F927618();
  v25 = v24;
  v26 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90) + 36);
  sub_24F594764(v13, a2 & 1, v26);
  v27 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CE0, &unk_24F93E7D0) + 36)];
  *v27 = v23;
  v27[1] = v25;
  *a4 = a3;

  return sub_24E601704(v13, &qword_27F2190D8, &unk_24F94BD70);
}

uint64_t sub_24F6C513C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  sub_24E60169C(a1, v10, &qword_27F213FB0, &qword_24F93E6B0);
  v14 = sub_24F9289E8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v10, 1, v14) == 1)
  {
    sub_24E601704(v10, &qword_27F213FB0, &qword_24F93E6B0);
    v16 = type metadata accessor for ColorGroup(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  else
  {
    v17 = sub_24F9289A8();
    if (v17)
    {
      v18 = qword_27F20FEE0;
      v19 = v17;
      if (v18 != -1)
      {
        v29 = v19;
        swift_once();
        v19 = v29;
      }

      v20 = v19;
      v21 = sub_24F926BD8();
      ColorGrouping.colorGroup(for:)(v21);
    }

    else
    {
      v22 = type metadata accessor for ColorGroup(0);
      (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
    }

    (*(v15 + 8))(v10, v14);
  }

  v23 = sub_24F927618();
  v25 = v24;
  v26 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF28, &qword_24FA1D500) + 36);
  sub_24F594764(v13, a2 & 1, v26);
  sub_24E601704(v13, &qword_27F2190D8, &unk_24F94BD70);
  v27 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CE0, &unk_24F93E7D0) + 36));
  *v27 = v23;
  v27[1] = v25;
  return sub_24E60169C(v4, a3, &qword_27F24CF18, &qword_24FA1D4F0);
}

uint64_t sub_24F6C5488(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F212890, &qword_24F939670);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F212890, &qword_24F939670);
}

double sub_24F6C55D8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule);

  return result;
}

uint64_t sub_24F6C56DC@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v11 = *a3;
  swift_beginAccess();
  return sub_24E60169C(v10 + v11, a6, a4, a5);
}

uint64_t sub_24F6C57C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F2198F8, &unk_24F94CFA0);
  return sub_24F34E848(v4);
}

uint64_t sub_24F6C586C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v11[0] = v3;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v4 = v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules;
  v6 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 16);
  v5 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 32);
  v7 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules);
  *&v12[9] = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 41);
  v11[0] = v7;
  v11[1] = v6;
  *v12 = v5;
  v8 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 16);
  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules);
  a2[1] = v8;
  a2[2] = *(v4 + 32);
  *(a2 + 41) = *(v4 + 41);
  return sub_24E6F261C(v11, &v10);
}

double sub_24F6C5954(_OWORD *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD78();

  return result;
}

double sub_24F6C5A38@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
  a2[1] = v4;

  return result;
}

uint64_t sub_24F6C5AF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_24F34EFA4(v1, v2);
}

uint64_t sub_24F6C5B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v134 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v9 - 8);
  v128 = v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v131 = v102 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8, &unk_24F954820);
  MEMORY[0x28223BE20](v13 - 8);
  v127 = v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v130 = v102 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v17 - 8);
  v126 = v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v102 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v22 - 8);
  v125 = v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v102 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v27 - 8);
  v124 = v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = v102 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v32 - 8);
  v123 = v102 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = v102 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v37 - 8);
  v122 = v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = v102 - v40;
  type metadata accessor for GameActivityDraftBuilder();
  v133 = a3;
  sub_24F928F28();
  v42 = v137;
  swift_beginAccess();
  v132 = v42;
  v43 = *(v42 + 16);
  v135 = a1;
  if (v43)
  {
    v44 = v43;
  }

  else
  {
    v114 = type metadata accessor for GameActivityDraftGameInfo(0);
    v45 = *(v114 - 8);
    v113 = *(v45 + 56);
    v115 = (v45 + 56);
    v119 = v41;
    v113(v41, 1, 1, v114);
    v46 = sub_24F9289E8();
    v129 = v21;
    v47 = v31;
    v120 = v31;
    v48 = v46;
    v49 = *(v46 - 8);
    v111 = *(v49 + 56);
    v112 = v49 + 56;
    v118 = v36;
    v111(v36, 1, 1, v46);
    v50 = type metadata accessor for Leaderboard(0);
    v51 = v26;
    v121 = v26;
    v52 = v50;
    v53 = *(v50 - 8);
    v109 = *(v53 + 56);
    v110 = v53 + 56;
    v109(v47, 1, 1, v50);
    v54 = type metadata accessor for ChallengeDefinitionDetail(0);
    v55 = *(v54 - 8);
    v107 = *(v55 + 56);
    v108 = v55 + 56;
    v107(v51, 1, 1, v54);
    v56 = type metadata accessor for ActivityDefinitionDetail(0);
    v57 = *(v56 - 8);
    v105 = *(v57 + 56);
    v106 = v57 + 56;
    v105(v129, 1, 1, v56);
    v58 = a2;
    v59 = sub_24F920418();
    v60 = *(v59 - 8);
    v103 = *(v60 + 56);
    v104 = v60 + 56;
    v103(v130, 1, 1, v59);
    v61 = sub_24F920A88();
    v62 = *(v61 - 8);
    v102[0] = *(v62 + 56);
    v102[1] = v62 + 56;
    (v102[0])(v131, 1, 1, v61);
    v63 = *(type metadata accessor for ChallengesReviewBaseInfo(0) + 20);
    v117 = v58;
    v64 = (v58 + v63);
    *v139 = v64[2];
    *&v139[9] = *(v64 + 41);
    v65 = v64[1];
    v137 = *v64;
    v138 = v65;
    sub_24E6F261C(&v137, &v136);
    v66 = MEMORY[0x277D84F90];
    sub_24E609EB8(MEMORY[0x277D84F90]);

    v116 = sub_24E6086DC(v66);
    type metadata accessor for GameActivityDraft(0);
    v44 = swift_allocObject();
    v67 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
    v113((v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo), 1, 1, v114);
    v68 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork;
    v111((v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__primaryArtwork), 1, 1, v48);
    v69 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
    v109((v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard), 1, 1, v52);
    v70 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
    v107((v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition), 1, 1, v54);
    v112 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition;
    v105((v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityDefinition), 1, 1, v56);
    v113 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance;
    v103((v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__activityInstance), 1, 1, v59);
    v71 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule) = 0;
    v114 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
    (v102[0])(v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit, 1, 1, v61);
    v72 = (v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
    v115 = (v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
    *v72 = 0;
    v72[1] = 0;
    v111 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
    sub_24F91FDB8();
    v73 = v122;
    sub_24E60169C(v119, v122, &qword_27F212B28, &qword_24F939910);
    sub_24E601704(v44 + v67, &qword_27F212B28, &qword_24F939910);
    sub_24E6009C8(v73, v44 + v67, &qword_27F212B28, &qword_24F939910);
    v74 = v123;
    sub_24E60169C(v118, v123, &qword_27F213FB0, &qword_24F93E6B0);
    sub_24E601704(v44 + v68, &qword_27F213FB0, &qword_24F93E6B0);
    v75 = v131;
    sub_24E6009C8(v74, v44 + v68, &qword_27F213FB0, &qword_24F93E6B0);
    v76 = v124;
    sub_24E60169C(v120, v124, &qword_27F212890, &qword_24F939670);
    sub_24E601704(v44 + v69, &qword_27F212890, &qword_24F939670);
    sub_24E6009C8(v76, v44 + v69, &qword_27F212890, &qword_24F939670);
    v77 = v125;
    sub_24E60169C(v121, v125, &qword_27F212A08, &qword_24F9397D0);
    sub_24E601704(v44 + v70, &qword_27F212A08, &qword_24F9397D0);
    v78 = v44 + v70;
    v79 = v130;
    sub_24E6009C8(v77, v78, &qword_27F212A08, &qword_24F9397D0);

    v80 = MEMORY[0x277D84F90];
    *(v44 + v71) = MEMORY[0x277D84F90];
    v81 = v126;
    sub_24E60169C(v129, v126, &qword_27F2142A0, &unk_24F94CF90);
    v82 = v112;
    sub_24E601704(v44 + v112, &qword_27F2142A0, &unk_24F94CF90);
    sub_24E6009C8(v81, v44 + v82, &qword_27F2142A0, &unk_24F94CF90);
    v83 = v127;
    sub_24E60169C(v79, v127, &qword_27F2142B8, &unk_24F954820);
    v84 = v113;
    sub_24E601704(v113 + v44, &qword_27F2142B8, &unk_24F954820);
    sub_24E6009C8(v83, v84 + v44, &qword_27F2142B8, &unk_24F954820);
    v85 = v75;
    v86 = v75;
    v87 = v128;
    sub_24E60169C(v86, v128, &qword_27F2198F8, &unk_24F94CFA0);
    v88 = v114;
    sub_24E601704(v44 + v114, &qword_27F2198F8, &unk_24F94CFA0);
    sub_24E6009C8(v87, v44 + v88, &qword_27F2198F8, &unk_24F94CFA0);
    v89 = (v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules);
    v90 = v138;
    *v89 = v137;
    v89[1] = v90;
    v89[2] = *v139;
    *(v89 + 41) = *&v139[9];
    *(v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playerGroupsToInvite) = sub_24E609EB8(v80);
    *(v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__playersToInvite) = v80;
    *(v44 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite) = v116;
    v91 = v115;
    v92 = v118;
    if (v115[1])
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v102[-3] = 0;
      v102[-2] = 0;
      v102[-4] = v44;
      v136 = v44;
      sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
      sub_24F91FD78();
    }

    else
    {
      *v115 = 0;
      v91[1] = 0;
    }

    sub_24E601704(v85, &qword_27F2198F8, &unk_24F94CFA0);
    sub_24E601704(v79, &qword_27F2142B8, &unk_24F954820);
    sub_24E601704(v129, &qword_27F2142A0, &unk_24F94CF90);
    sub_24E601704(v121, &qword_27F212A08, &qword_24F9397D0);
    sub_24E601704(v120, &qword_27F212890, &qword_24F939670);
    sub_24E601704(v92, &qword_27F213FB0, &qword_24F93E6B0);
    sub_24E601704(v119, &qword_27F212B28, &qword_24F939910);
    a2 = v117;
    a1 = v135;
  }

  *(a5 + 16) = v44;
  v94 = type metadata accessor for ChallengesReviewView(0);
  sub_24F6C8308(a1, a5 + v94[6], type metadata accessor for Player);
  v95 = type metadata accessor for ChallengesReviewBaseInfo(0);
  *(a5 + v94[7]) = *(a2 + v95[6]);
  *(a5 + v94[8]) = *(a2 + v95[7]);
  sub_24F6C8308(a2 + v95[8], a5 + v94[9], type metadata accessor for ChallengesPlayerPickerPageInfo);
  sub_24E60169C(a2 + v95[9], &v137, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80(&v137, a5 + v94[10]);
  sub_24E60169C(a2 + v95[10], &v137, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80(&v137, a5 + v94[11]);
  *(a5 + v94[12]) = v133;
  v96 = a5 + v94[13];
  v97 = a5;
  v98 = v134;
  sub_24E60169C(v134, v96, &qword_27F243B28, &unk_24F9F87D0);
  v99 = type metadata accessor for ChallengeDefinitionDraftInfo(0);
  v100 = (*(*(v99 - 8) + 48))(v98, 1, v99) == 1;
  v136 = v100;

  sub_24F6E3438(v100);
  sub_24F926F28();

  sub_24F6DF8B4(v100);
  sub_24F6C80F0(v135, type metadata accessor for Player);
  *v97 = v137;
  sub_24E601704(v98, &qword_27F243B28, &unk_24F9F87D0);
  return sub_24F6C82A0(a2, v97 + v94[14], type metadata accessor for ChallengesReviewBaseInfo);
}

unint64_t sub_24F6C6AAC()
{
  v1 = 0xD000000000000016;
  v2 = *v0;
  v3 = 0xD000000000000019;
  v4 = 0xD00000000000001CLL;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F6C6B3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F6DF9C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6C6B64(uint64_t a1)
{
  v2 = sub_24F6C7200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6C6BA0(uint64_t a1)
{
  v2 = sub_24F6C7200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesReviewBaseInfo.ActionMetrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718, &unk_24F9391A0);
  MEMORY[0x28223BE20](v3 - 8);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v35 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  MEMORY[0x28223BE20](v13);
  v40 = &v35 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CD88, &qword_24FA1CE78);
  v41 = *(v15 - 8);
  v42 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C7200();
  v43 = v17;
  v21 = v44;
  sub_24F92D108();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36 = v9;
  v44 = a1;
  v22 = v20;
  type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  v49 = 0;
  v23 = sub_24F6C8150(&qword_27F223AB0, type metadata accessor for PlayTogetherReviewMetricsInfo, &protocol conformance descriptor for PlayTogetherReviewMetricsInfo);
  v24 = v40;
  v25 = v42;
  sub_24F92CC18();
  v26 = v24;
  v27 = v22;
  sub_24E6009C8(v26, v22, &unk_27F212718, &unk_24F9391A0);
  v48 = 1;
  v40 = v23;
  sub_24F92CC18();
  sub_24E6009C8(v12, v22 + v18[5], &unk_27F212718, &unk_24F9391A0);
  v47 = 2;
  v28 = v36;
  v35 = 0;
  sub_24F92CC18();
  v29 = v44;
  v30 = v27;
  sub_24E6009C8(v28, v27 + v18[6], &unk_27F212718, &unk_24F9391A0);
  v46 = 3;
  v31 = v39;
  sub_24F92CC18();
  v32 = v41;
  sub_24E6009C8(v31, v30 + v18[7], &unk_27F212718, &unk_24F9391A0);
  v45 = 4;
  v33 = v38;
  sub_24F92CC18();
  (*(v32 + 8))(v43, v25);
  sub_24E6009C8(v33, v30 + v18[8], &unk_27F212718, &unk_24F9391A0);
  sub_24F6C8308(v30, v37, type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_24F6C80F0(v30, type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics);
}

unint64_t sub_24F6C7200()
{
  result = qword_27F24CD90;
  if (!qword_27F24CD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CD90);
  }

  return result;
}

unint64_t sub_24F6C7254(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7274654D65676170;
    v6 = 0x654D6E6F69746361;
    if (a1 == 8)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001DLL;
    if (a1 == 5)
    {
      v7 = 0xD000000000000015;
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
    v1 = 0x444965676170;
    v2 = 0x4F656C7552797274;
    v3 = 0x656C7552656D6974;
    if (a1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x52746C7561666564;
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

uint64_t sub_24F6C73E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F6DFB78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F6C7410(uint64_t a1)
{
  v2 = sub_24F6C809C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F6C744C(uint64_t a1)
{
  v2 = sub_24F6C809C();

  return MEMORY[0x2821FE720](a1, v2);
}

void ChallengesReviewBaseInfo.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  MEMORY[0x28223BE20](v36);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_24F928818();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  MEMORY[0x28223BE20](v43);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92A708();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v44 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CD98, &unk_24FA1CE80);
  v42 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ChallengesReviewBaseInfo(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F6C809C();
  v46 = v10;
  v14 = v47;
  sub_24F92D108();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v6;
    v16 = v42;
    v34 = a1;
    v33 = v11;
    v47 = v13;
    LOBYTE(v51) = 0;
    sub_24F6C8150(&qword_27F21F8C0, MEMORY[0x277D22408], MEMORY[0x277D22420]);
    v17 = v44;
    sub_24F92CC68();
    v18 = *(v41 + 32);
    v19 = v47;
    v44 = v7;
    v18(v47, v17, v7);
    v55 = 1;
    sub_24F3D9B98();
    sub_24F92CC68();
    v32 = 0;
    v20 = &v19[v33[5]];
    v21 = v52;
    *v20 = v51;
    *(v20 + 1) = v21;
    *(v20 + 2) = v53[0];
    *(v20 + 41) = *(v53 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241B80, &unk_24F9EF000);
    v54 = 2;
    sub_24F6C8198();
    sub_24F92CC68();
    *&v19[v33[6]] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2128F0, &unk_24F939740);
    v54 = 3;
    sub_24F6C821C();
    sub_24F92CC68();
    *&v19[v33[7]] = v48;
    LOBYTE(v48) = 4;
    sub_24F6C8150(&qword_27F24CDB8, type metadata accessor for ChallengesPlayerPickerPageInfo, &protocol conformance descriptor for ChallengesPlayerPickerPageInfo);
    sub_24F92CC68();
    v22 = v33;
    sub_24F6C82A0(v15, &v19[v33[8]], type metadata accessor for ChallengesPlayerPickerPageInfo);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
    v54 = 5;
    sub_24E602068(&qword_27F243830, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AB0]);
    sub_24F92CC68();
    v23 = &v19[v22[9]];
    v24 = v49;
    *v23 = v48;
    *(v23 + 1) = v24;
    *(v23 + 4) = v50;
    v54 = 6;
    sub_24F92CC68();
    v25 = &v19[v22[10]];
    v26 = v49;
    *v25 = v48;
    *(v25 + 1) = v26;
    *(v25 + 4) = v50;
    LOBYTE(v48) = 7;
    sub_24F6C8150(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
    v27 = v38;
    v28 = v39;
    sub_24F92CC68();
    (*(v40 + 32))(&v47[v22[11]], v27, v28);
    v54 = 8;
    sub_24E688020();
    sub_24F92CC18();
    v29 = &v47[v33[12]];
    v30 = v49;
    *v29 = v48;
    *(v29 + 1) = v30;
    *(v29 + 2) = v50;
    LOBYTE(v48) = 9;
    sub_24F6C8150(&qword_27F24CDC0, type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics, &protocol conformance descriptor for ChallengesReviewBaseInfo.ActionMetrics);
    sub_24F92CC68();
    (*(v16 + 8))(v46, v45);
    v31 = v47;
    sub_24F6C82A0(v37, &v47[v33[13]], type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics);
    sub_24F6C8308(v31, v35, type metadata accessor for ChallengesReviewBaseInfo);
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_24F6C80F0(v31, type metadata accessor for ChallengesReviewBaseInfo);
  }
}

unint64_t sub_24F6C809C()
{
  result = qword_27F24CDA0;
  if (!qword_27F24CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CDA0);
  }

  return result;
}

uint64_t sub_24F6C80F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F6C8150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F6C8198()
{
  result = qword_27F24CDA8;
  if (!qword_27F24CDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241B80, &unk_24F9EF000);
    sub_24E6F2574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CDA8);
  }

  return result;
}

unint64_t sub_24F6C821C()
{
  result = qword_27F24CDB0;
  if (!qword_27F24CDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F2128F0, &unk_24F939740);
    sub_24E6F25C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CDB0);
  }

  return result;
}

uint64_t sub_24F6C82A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6C8308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F6C839C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_24F92A708();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_24F928818();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[11];
    goto LABEL_11;
  }

  v17 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[13];

  return v18(v19, a2, v17);
}

uint64_t sub_24F6C856C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_24F92A708();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_24F928818();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[11];
    goto LABEL_9;
  }

  v17 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[13];

  return v18(v19, a2, a2, v17);
}

void sub_24F6C8728(uint64_t a1)
{
  sub_24F92A708();
  if (v1 <= 0x3F)
  {
    sub_24F6C973C(319, &qword_27F218390, &type metadata for ChallengesRules.TryRule, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24F6C973C(319, &qword_27F218398, &type metadata for ChallengesRules.TimeRule, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ChallengesPlayerPickerPageInfo(319);
        if (v4 <= 0x3F)
        {
          sub_24E6CFC68(319);
          if (v5 <= 0x3F)
          {
            sub_24F928818();
            if (v6 <= 0x3F)
            {
              sub_24F6C973C(319, &qword_27F2169A8, &type metadata for ReleaseStateDetails, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(319);
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

uint64_t sub_24F6C88C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718, &unk_24F9391A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F6C8950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718, &unk_24F9391A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24F6C89CC(uint64_t a1)
{
  sub_24F6C978C(319, &unk_27F212758, type metadata accessor for PlayTogetherReviewMetricsInfo);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24F6C8AA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[7] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for Player(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[9];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[12];
    goto LABEL_11;
  }

  v17 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[16];

  return v18(v19, a2, v17);
}

uint64_t sub_24F6C8C84(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for Player(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[9];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[12];
    goto LABEL_9;
  }

  v17 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[16];

  return v18(v19, a2, a2, v17);
}

void sub_24F6C8E70(uint64_t a1)
{
  sub_24E684120(319);
  if (v1 <= 0x3F)
  {
    sub_24F6C973C(319, &qword_27F215E08, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24F6C973C(319, &qword_27F24CDF8, &type metadata for ChallengesReviewView.PageState, MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for GameActivityDraft(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Player(319);
          if (v5 <= 0x3F)
          {
            sub_24F6C973C(319, &qword_27F218390, &type metadata for ChallengesRules.TryRule, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_24F6C973C(319, &qword_27F218398, &type metadata for ChallengesRules.TimeRule, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for ChallengesPlayerPickerPageInfo(319);
                if (v8 <= 0x3F)
                {
                  sub_24E6CAE80();
                  if (v9 <= 0x3F)
                  {
                    sub_24F928FD8();
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for ChallengesReviewBaseInfo(319);
                      if (v11 <= 0x3F)
                      {
                        sub_24F6C973C(319, &qword_27F254E10, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                        if (v12 <= 0x3F)
                        {
                          sub_24F6C973C(319, &qword_27F218018, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
                          if (v13 <= 0x3F)
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit20ChallengesReviewViewV9PageStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24F6C90EC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
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

uint64_t sub_24F6C9148(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_24F6C91BC(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for Player(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B28, &unk_24F9F87D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[13];
    goto LABEL_11;
  }

  v15 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

uint64_t sub_24F6C9390(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Player(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B28, &unk_24F9F87D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[13];
    goto LABEL_9;
  }

  v15 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[14];

  return v16(v17, a2, a2, v15);
}

void sub_24F6C9570(uint64_t a1)
{
  sub_24F6C973C(319, &qword_27F24CE10, &type metadata for ChallengesReviewView.PageState, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for GameActivityDraft(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Player(319);
      if (v3 <= 0x3F)
      {
        sub_24F6C973C(319, &qword_27F218390, &type metadata for ChallengesRules.TryRule, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_24F6C973C(319, &qword_27F218398, &type metadata for ChallengesRules.TimeRule, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ChallengesPlayerPickerPageInfo(319);
            if (v6 <= 0x3F)
            {
              sub_24E6CAE80();
              if (v7 <= 0x3F)
              {
                sub_24F928FD8();
                if (v8 <= 0x3F)
                {
                  sub_24F6C978C(319, &qword_27F24CE18, type metadata accessor for ChallengeDefinitionDraftInfo);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for ChallengesReviewBaseInfo(319);
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

void sub_24F6C973C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_24F6C978C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_24F6C97FC@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AF8, &unk_24F9355F0);
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x28223BE20](v2);
  v81 = &v65 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AE0, &qword_24FA1D300);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v65 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CE50, &qword_24FA1D308);
  MEMORY[0x28223BE20](v7);
  v9 = &v65 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CE58, &qword_24FA1D310);
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  sub_24F6CA2EC(v1, &v65 - v11);
  v13 = sub_24F925338();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F925318();
  sub_24F6DD7F0();
  sub_24F926798();
  (*(v14 + 8))(v16, v13);
  sub_24E601704(v12, &qword_27F24CE58, &qword_24FA1D310);
  v17 = sub_24F925508();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9254F8();
  sub_24F6DDCA4();
  v75 = v6;
  sub_24F926678();
  (*(v18 + 8))(v20, v17);
  sub_24E601704(v9, &qword_27F24CE50, &qword_24FA1D308);
  v21 = type metadata accessor for ChallengesReviewView(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  sub_24F6C8308(v82, &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengesReviewView);
  v70 = sub_24F92B7F8();
  v24 = sub_24F92B7E8();
  v25 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v71 = *(v22 + 80);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D85700];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  v72 = v25;
  sub_24F6C82A0(&v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for ChallengesReviewView);
  v28 = sub_24F92B858();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v32 = &v65 - v31;
  sub_24F92B818();
  isPlatformVersionAtLeast = __isPlatformVersionAtLeast(2, 26, 4, 0);
  v73 = v29;
  v74 = v28;
  if (isPlatformVersionAtLeast)
  {
    v67 = sub_24F923DD8();
    v68 = &v65;
    v33 = v28;
    v66 = *(v67 - 8);
    MEMORY[0x28223BE20](v67);
    v35 = &v65 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_24F92C888();

    v84 = 0xD000000000000034;
    v85 = 0x800000024FA7C470;
    v83 = 172;
    v36 = sub_24F92CD88();
    MEMORY[0x253050C20](v36);

    v65 = &v65;
    v38 = MEMORY[0x28223BE20](v37);
    (*(v29 + 16))(&v65 - v31, v32, v33, v38);
    sub_24F923DC8();
    (*(v29 + 8))(v32, v33);
    v39 = v81;
    (*(v76 + 32))(v81, v75, v77);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AE8, &unk_24F9355E0);
    v41 = (*(v66 + 32))(&v39[*(v40 + 36)], v35, v67);
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211AF0, &qword_24FA1D380);
    v39 = v81;
    v43 = &v81[*(v42 + 36)];
    v44 = sub_24F923AD8();
    (*(v29 + 32))(&v43[*(v44 + 20)], &v65 - v31, v28);
    *v43 = &unk_24FA1D350;
    *(v43 + 1) = v26;
    v41 = (*(v76 + 32))(v39, v75, v77);
  }

  MEMORY[0x28223BE20](v41);
  sub_24F6C8308(v82, &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengesReviewView);
  v45 = sub_24F92B7E8();
  v46 = v72;
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = MEMORY[0x277D85700];
  v48 = sub_24F6C82A0(&v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for ChallengesReviewView);
  MEMORY[0x28223BE20](v48);
  v49 = (v30 + 15) & 0xFFFFFFFFFFFFFFF0;
  v50 = &v65 - v49;
  sub_24F92B818();
  if (isPlatformVersionAtLeast)
  {
    v76 = sub_24F923DD8();
    v77 = &v65;
    v75 = *(v76 - 8);
    MEMORY[0x28223BE20](v76);
    v82 = &v65;
    v52 = &v65 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    v84 = 0;
    v85 = 0xE000000000000000;
    sub_24F92C888();

    v84 = 0xD000000000000034;
    v85 = 0x800000024FA7C470;
    v83 = 197;
    v53 = sub_24F92CD88();
    MEMORY[0x253050C20](v53);

    v55 = MEMORY[0x28223BE20](v54);
    v57 = v73;
    v56 = v74;
    (*(v73 + 16))(&v65 - v49, v50, v74, v55);
    sub_24F923DC8();
    (*(v57 + 8))(v50, v56);
    v58 = v80;
    (*(v78 + 32))(v80, v81, v79);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B00, &unk_24FA1D370);
    return (*(v75 + 4))(v58 + *(v59 + 36), v52, v76);
  }

  else
  {
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B08, &qword_24F935600);
    v62 = v80;
    v63 = (v80 + *(v61 + 36));
    v64 = sub_24F923AD8();
    (*(v73 + 32))(&v63[*(v64 + 20)], &v65 - v49, v74);
    *v63 = &unk_24FA1D368;
    *(v63 + 1) = v47;
    return (*(v78 + 32))(v62, v39, v79);
  }
}

uint64_t sub_24F6CA2EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v100 = sub_24F921CB8();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v97 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for ChallengesReviewView(0);
  v88 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = v4;
  v90 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
  v93 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v91 = &v86 - v5;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DE8, &qword_24FA07590);
  v95 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v94 = &v86 - v6;
  *&v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223D10, &qword_24F96F6C0);
  v102 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v101 = &v86 - v7;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CEE8, &qword_24FA1D430);
  MEMORY[0x28223BE20](v108);
  v110 = &v86 - v8;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CEA8, &qword_24FA1D330);
  MEMORY[0x28223BE20](v118);
  v113 = &v86 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CEF0, &qword_24FA1D438);
  v98 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v96 = &v86 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CE90, &qword_24FA1D328);
  MEMORY[0x28223BE20](v107);
  v12 = (&v86 - v11);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CEF8, &qword_24FA1D440);
  MEMORY[0x28223BE20](v115);
  v117 = &v86 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF00, &unk_24FA1D448);
  MEMORY[0x28223BE20](v104);
  v105 = &v86 - v14;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CE80, &qword_24FA1D320);
  MEMORY[0x28223BE20](v116);
  v106 = &v86 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215FD0, &qword_24F9415F0);
  v86 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v86 - v17;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238340, &unk_24F9C3820);
  MEMORY[0x28223BE20](v103);
  v20 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v87 = &v86 - v22;
  v24 = *a1;
  v23 = a1[1];
  *&v122 = *a1;
  *(&v122 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CEE0, &qword_24FA1D398);
  sub_24F926F38();
  v25 = v120;
  if (v120)
  {
    if (v120 == 1)
    {
      v120 = v24;
      v121 = v23;
      sub_24F926F58();
      v114 = v122;
      v41 = v123;
      v42 = a1;
      v43 = a1[2];
      v44 = v92;
      v45 = *(v92 + 24);
      v46 = type metadata accessor for ChallengePreCreationView(0);
      sub_24F6C8308(v42 + v45, v12 + v46[9], type metadata accessor for Player);
      v47 = *(v42 + v44[7]);
      v48 = *(v42 + v44[8]);
      sub_24F6C8308(v42 + v44[9], v12 + v46[12], type metadata accessor for ChallengesPlayerPickerPageInfo);
      sub_24E615E00(v42 + v44[10], v12 + v46[13]);
      sub_24E615E00(v42 + v44[11], v12 + v46[14]);
      v49 = *(v42 + v44[12]);
      sub_24F6C8308(v42 + v44[14], v12 + v46[16], type metadata accessor for ChallengesReviewBaseInfo);
      *v12 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
      swift_storeEnumTagMultiPayload();
      v50 = v46[5];
      *(v12 + v50) = swift_getKeyPath();
      swift_storeEnumTagMultiPayload();
      v51 = v12 + v46[6];
      *v51 = 0;
      v51[8] = 1;
      v52 = v12 + v46[7];
      *v52 = v114;
      *(v52 + 2) = v41;
      *(v12 + v46[8]) = v43;
      *(v12 + v46[10]) = v47;
      *(v12 + v46[11]) = v48;
      *(v12 + v46[15]) = v49;
      v53 = v12 + v46[17];
      LOBYTE(v120) = 1;

      sub_24F926F28();
      v54 = *(&v122 + 1);
      *v53 = v122;
      *(v53 + 1) = v54;
      v55 = (v12 + v46[18]);
      v120 = 0;
      sub_24F926F28();
      v56 = *(&v122 + 1);
      *v55 = v122;
      v55[1] = v56;
      LOBYTE(v55) = sub_24F925818();
      v57 = sub_24F924058();
      v58 = v12 + *(v107 + 36);
      *v58 = v57;
      v58[8] = v55;
      sub_24E60169C(v12, v105, &qword_27F24CE90, &qword_24FA1D328);
      swift_storeEnumTagMultiPayload();
      sub_24F074728();
      sub_24F6DD98C();
      v59 = v106;
      sub_24F924E28();
      sub_24E60169C(v59, v117, &qword_27F24CE80, &qword_24FA1D320);
      swift_storeEnumTagMultiPayload();
      sub_24F6DD900();
      sub_24F6DDA48();
      sub_24F924E28();
      sub_24E601704(v59, &qword_27F24CE80, &qword_24FA1D320);
      return sub_24E601704(v12, &qword_27F24CE90, &qword_24FA1D328);
    }

    else if (v120 == 2)
    {
      v26 = a1[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93A400;

      v28 = sub_24F9257F8();
      *(inited + 32) = v28;
      v29 = sub_24F925828();
      *(inited + 33) = v29;
      v30 = sub_24F925848();
      sub_24F925848();
      if (sub_24F925848() != v28)
      {
        v30 = sub_24F925848();
      }

      sub_24F925848();
      if (sub_24F925848() != v29)
      {
        v30 = sub_24F925848();
      }

      v31 = sub_24F924058();
      *&v122 = v26;
      *(&v122 + 1) = v31;
      LOBYTE(v123) = v30;
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CEB0, &qword_24FA1D338);
      v33 = sub_24F6DDBC4();
      v34 = v96;
      MEMORY[0x25304C400](2, MEMORY[0x277D84F90], v32, v33);

      v35 = v98;
      v36 = v111;
      (*(v98 + 16))(v110, v34, v111);
      swift_storeEnumTagMultiPayload();
      *&v122 = v32;
      *(&v122 + 1) = v33;
      swift_getOpaqueTypeConformance2();
      v37 = sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
      *&v122 = v109;
      *(&v122 + 1) = v37;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v122 = v112;
      *(&v122 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      v39 = v113;
      sub_24F924E28();
      sub_24E60169C(v39, v117, &qword_27F24CEA8, &qword_24FA1D330);
      swift_storeEnumTagMultiPayload();
      sub_24F6DD900();
      sub_24F6DDA48();
      sub_24F924E28();
      sub_24E601704(v39, &qword_27F24CEA8, &qword_24FA1D330);
      return (*(v35 + 8))(v34, v36);
    }

    else
    {
      v67 = v90;
      sub_24F6C8308(a1, v90, type metadata accessor for ChallengesReviewView);
      v68 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v69 = swift_allocObject();
      sub_24F6C82A0(v67, v69 + v68, type metadata accessor for ChallengesReviewView);
      v70 = v25;
      v71 = v91;
      sub_24F921A18();
      v72 = v99;
      v73 = v97;
      v74 = v100;
      (*(v99 + 104))(v97, *MEMORY[0x277D7ECB0], v100);
      v75 = sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
      v76 = v94;
      v77 = v109;
      sub_24F925E38();
      (*(v72 + 8))(v73, v74);
      (*(v93 + 8))(v71, v77);
      sub_24F9257D8();
      sub_24F927618();
      *&v122 = v77;
      *(&v122 + 1) = v75;
      v78 = swift_getOpaqueTypeConformance2();
      v79 = v101;
      v80 = v112;
      sub_24F9266F8();
      (*(v95 + 8))(v76, v80);
      v81 = v102;
      v82 = v114;
      (*(v102 + 16))(v110, v79, v114);
      swift_storeEnumTagMultiPayload();
      v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CEB0, &qword_24FA1D338);
      v84 = sub_24F6DDBC4();
      *&v122 = v83;
      *(&v122 + 1) = v84;
      swift_getOpaqueTypeConformance2();
      *&v122 = v80;
      *(&v122 + 1) = v78;
      swift_getOpaqueTypeConformance2();
      v85 = v113;
      sub_24F924E28();
      sub_24E60169C(v85, v117, &qword_27F24CEA8, &qword_24FA1D330);
      swift_storeEnumTagMultiPayload();
      sub_24F6DD900();
      sub_24F6DDA48();
      sub_24F924E28();
      sub_24F6DF8B4(v25);
      sub_24E601704(v85, &qword_27F24CEA8, &qword_24FA1D330);
      return (*(v81 + 8))(v79, v82);
    }
  }

  else
  {
    sub_24F923798();
    sub_24F927618();
    sub_24F9242E8();
    (*(v86 + 32))(v20, v18, v16);
    v60 = &v20[*(v103 + 36)];
    v61 = v127;
    v62 = v128;
    *(v60 + 4) = v126;
    *(v60 + 5) = v61;
    *(v60 + 6) = v62;
    v63 = v123;
    *v60 = v122;
    *(v60 + 1) = v63;
    v64 = v125;
    *(v60 + 2) = v124;
    *(v60 + 3) = v64;
    v65 = v87;
    sub_24E6009C8(v20, v87, &qword_27F238340, &unk_24F9C3820);
    sub_24E60169C(v65, v105, &qword_27F238340, &unk_24F9C3820);
    swift_storeEnumTagMultiPayload();
    sub_24F074728();
    sub_24F6DD98C();
    v66 = v106;
    sub_24F924E28();
    sub_24E60169C(v66, v117, &qword_27F24CE80, &qword_24FA1D320);
    swift_storeEnumTagMultiPayload();
    sub_24F6DD900();
    sub_24F6DDA48();
    sub_24F924E28();
    sub_24E601704(v66, &qword_27F24CE80, &qword_24FA1D320);
    return sub_24E601704(v65, &qword_27F238340, &unk_24F9C3820);
  }
}

double sub_24F6CB5A0(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesReviewView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24F6C8308(a1, v5, type metadata accessor for ChallengesReviewView);
  sub_24F92B7F8();
  v10 = sub_24F92B7E8();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_24F6C82A0(v5, v12 + v11, type metadata accessor for ChallengesReviewView);
  sub_24EA998B8(0, 0, v8, &unk_24FA1D4D0, v12);

  return result;
}

uint64_t sub_24F6CB780()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E8FAC50;

  return sub_24F6CB82C();
}

uint64_t sub_24F6CB82C()
{
  v1[30] = v0;
  v2 = sub_24F920A88();
  v1[31] = v2;
  v1[32] = *(v2 - 8);
  v1[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  v1[36] = swift_task_alloc();
  v1[37] = type metadata accessor for Game(0);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v3 = type metadata accessor for GameActivityDraftGameInfo(0);
  v1[44] = v3;
  v1[45] = *(v3 - 8);
  v1[46] = swift_task_alloc();
  v4 = type metadata accessor for ChallengeDefinitionDetail(0);
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B28, &unk_24F9F87D0);
  v1[52] = swift_task_alloc();
  v5 = type metadata accessor for ChallengeDefinitionDraftInfo(0);
  v1[53] = v5;
  v1[54] = *(v5 - 8);
  v1[55] = swift_task_alloc();
  sub_24F92B7F8();
  v1[56] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v1[57] = v7;
  v1[58] = v6;

  return MEMORY[0x2822009F8](sub_24F6CBB98, v7, v6);
}

uint64_t sub_24F6CBB98()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 240);
  v5 = type metadata accessor for ChallengesReviewView(0);
  *(v0 + 472) = v5;
  sub_24E60169C(v4 + *(v5 + 52), v3, &qword_27F243B28, &unk_24F9F87D0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v6 = *(v0 + 416);

    sub_24E601704(v6, &qword_27F243B28, &unk_24F9F87D0);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 240);
    sub_24F6C82A0(*(v0 + 416), *(v0 + 440), type metadata accessor for ChallengeDefinitionDraftInfo);
    *(v0 + 208) = *v9;
    *(v0 + 224) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CEE0, &qword_24FA1D398);
    sub_24F926F48();
    *(v0 + 480) = *(v9 + *(v5 + 48));
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
    v11 = swift_task_alloc();
    *(v0 + 488) = v11;
    *v11 = v0;
    v11[1] = sub_24F6CBE44;

    return MEMORY[0x28217F228](v0 + 128, v10, v10);
  }
}

uint64_t sub_24F6CBE44()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 464);
  v4 = *(v2 + 456);
  if (v0)
  {
    v5 = sub_24F6CD320;
  }

  else
  {
    v5 = sub_24F6CBF80;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F6CBF80()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 440);
  v3 = *(v0 + 424);
  v4 = *(v0 + 352);
  v5 = *(v0 + 360);
  v6 = *(v0 + 344);
  v7 = *(v0 + 240);
  v30 = *v2;
  *(v0 + 504) = *v2;
  v8 = v2[1];
  *(v0 + 512) = v8;
  v9 = v2[2];
  *(v0 + 520) = v9;
  v10 = v2[3];
  *(v0 + 528) = v10;
  v11 = (v7 + *(v1 + 24));
  v12 = *v11;
  *(v0 + 536) = *v11;
  v13 = v11[1];
  *(v0 + 544) = v13;
  v14 = *(v2 + 32);
  *(v0 + 65) = v14;
  sub_24E60169C(v2 + *(v3 + 28), v6, &qword_27F212B28, &qword_24F939910);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v15 = *(v0 + 344);

    sub_24E601704(v15, &qword_27F212B28, &qword_24F939910);
    v16 = *(v0 + 152);
    v17 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 128), v16);
    *(v0 + 168) = v30;
    *(v0 + 184) = 0;
    *(v0 + 192) = 0;
    *(v0 + 176) = v8;
    *(v0 + 200) = 2;

    v18 = swift_task_alloc();
    *(v0 + 568) = v18;
    v19 = sub_24E653FF8();
    *v18 = v0;
    v18[1] = sub_24F6CC91C;
    v20 = *(v0 + 480);
    v21 = *(v0 + 312);
    v22 = &type metadata for GameDataIntent;
    v23 = v0 + 168;
    v24 = v16;
    v25 = v17;
  }

  else
  {
    sub_24F6C82A0(*(v0 + 344), *(v0 + 368), type metadata accessor for GameActivityDraftGameInfo);
    v26 = *(v0 + 152);
    v29 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 128), v26);
    *(v0 + 72) = v30;
    *(v0 + 80) = v8;
    *(v0 + 88) = v9;
    *(v0 + 96) = v10;
    *(v0 + 104) = v12;
    *(v0 + 112) = v13;
    *(v0 + 120) = v14;

    v27 = swift_task_alloc();
    *(v0 + 552) = v27;
    v19 = sub_24E65404C();
    *v27 = v0;
    v27[1] = sub_24F6CC254;
    v20 = *(v0 + 480);
    v21 = *(v0 + 400);
    v22 = &type metadata for ChallengeDefinitionDataIntent;
    v23 = v0 + 72;
    v24 = v26;
    v25 = v29;
  }

  return MEMORY[0x28217F4B0](v21, v23, v20, v22, v19, v24, v25);
}

uint64_t sub_24F6CC254()
{
  v2 = *v1;
  *(*v1 + 560) = v0;

  if (v0)
  {
    v3 = *(v2 + 456);
    v4 = *(v2 + 464);
    v5 = sub_24F6CD5EC;
  }

  else
  {

    v3 = *(v2 + 456);
    v4 = *(v2 + 464);
    v5 = sub_24F6CC390;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F6CC390()
{
  v1 = v0[50];
  v2 = v0[51];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v6 = v0[42];
  v7 = v0[30];

  sub_24F6C82A0(v1, v2, type metadata accessor for ChallengeDefinitionDetail);
  v8 = *(v7 + 16);
  sub_24F6C8308(v3, v6, type metadata accessor for GameActivityDraftGameInfo);
  (*(v4 + 56))(v6, 0, 1, v5);
  sub_24F34DCA8(v6);
  sub_24F6C80F0(v3, type metadata accessor for GameActivityDraftGameInfo);
  v38 = v0[53];
  v39 = v0[55];
  v9 = v0[47];
  v10 = v0[48];
  v11 = v0[36];
  v12 = v0[34];
  v13 = v0[32];
  v40 = v0[31];
  sub_24F6C8308(v0[51], v11, type metadata accessor for ChallengeDefinitionDetail);
  (*(v10 + 56))(v11, 0, 1, v9);
  swift_getKeyPath();
  v14 = swift_task_alloc();
  *(v14 + 16) = v8;
  *(v14 + 24) = v11;
  v0[29] = v8;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD78();

  sub_24E601704(v11, &qword_27F212A08, &qword_24F9397D0);
  sub_24E60169C(v39 + *(v38 + 36), v12, &qword_27F2198F8, &unk_24F94CFA0);
  v15 = (*(v13 + 48))(v12, 1, v40);
  v16 = v0[51];
  v17 = v0[47];
  if (v15 == 1)
  {
    v18 = v0[35];
    sub_24E601704(v0[34], &qword_27F2198F8, &unk_24F94CFA0);
    sub_24E60169C(v16 + *(v17 + 64), v18, &qword_27F2198F8, &unk_24F94CFA0);
  }

  else
  {
    v19 = v0[33];
    v20 = *(v0[32] + 32);
    v20(v19, v0[34], v0[31]);
    v21 = *(v16 + *(v17 + 48));
    if (sub_24F1D48CC(v19, v21))
    {
      v22 = v0[35];
      v23 = v0[32];
      v24 = v0[31];
      v20(v22, v0[33], v24);
      (*(v23 + 56))(v22, 0, 1, v24);
    }

    else
    {
      v25 = v0[35];
      v27 = v0[32];
      v26 = v0[33];
      v28 = v0[31];
      if (*(v21 + 16))
      {
        (*(v27 + 16))(v0[35], v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v0[31]);
        (*(v27 + 8))(v26, v28);
        (*(v27 + 56))(v25, 0, 1, v28);
      }

      else
      {
        (*(v27 + 8))(v0[33], v0[31]);
        (*(v27 + 56))(v25, 1, 1, v28);
      }
    }
  }

  v29 = v0[55];
  v30 = v0[53];
  sub_24F34E848(v0[35]);
  v31 = v29 + *(v30 + 32);
  v32 = v0[51];
  if (*(v31 + 8))
  {
  }

  else
  {
    sub_24EF55878(*v31);
    v32 = v0[51];
  }

  v34 = v0[55];
  v35 = v0[30];
  sub_24F34E590(v33);
  *(swift_task_alloc() + 16) = v35;
  sub_24F9276F8();
  sub_24F923B18();

  sub_24F6C80F0(v34, type metadata accessor for ChallengeDefinitionDraftInfo);
  sub_24F6C80F0(v32, type metadata accessor for ChallengeDefinitionDetail);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v36 = v0[1];

  return v36();
}

uint64_t sub_24F6CC91C()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  if (v0)
  {

    v3 = *(v2 + 456);
    v4 = *(v2 + 464);
    v5 = sub_24F6CD904;
  }

  else
  {
    v3 = *(v2 + 456);
    v4 = *(v2 + 464);
    v5 = sub_24F6CCA68;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F6CCA68()
{
  v1 = *(v0 + 65);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v11 = *(v0 + 504);
  v12 = *(v0 + 520);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);
  __swift_project_boxed_opaque_existential_1((v0 + 128), v4);
  *(v0 + 16) = v11;
  *(v0 + 32) = v12;
  *(v0 + 48) = v3;
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  v6 = swift_task_alloc();
  *(v0 + 584) = v6;
  v7 = sub_24E65404C();
  *v6 = v0;
  v6[1] = sub_24F6CCB84;
  v8 = *(v0 + 480);
  v9 = *(v0 + 392);

  return MEMORY[0x28217F4B0](v9, v0 + 16, v8, &type metadata for ChallengeDefinitionDataIntent, v7, v4, v5);
}

uint64_t sub_24F6CCB84()
{
  v2 = *v1;
  (*v1)[74] = v0;

  if (v0)
  {
    sub_24F6C80F0(v2[39], type metadata accessor for Game);
    v3 = v2[57];
    v4 = v2[58];
    v5 = sub_24F6CDBEC;
  }

  else
  {

    v3 = v2[57];
    v4 = v2[58];
    v5 = sub_24F6CCCDC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F6CCCDC()
{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[40];
  v4 = v0[41];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[30];

  sub_24F6C82A0(v5, v3, type metadata accessor for Game);
  sub_24F6C82A0(v2, v1, type metadata accessor for ChallengeDefinitionDetail);
  v50 = *(v7 + 16);
  sub_24F6C8308(v3, v6, type metadata accessor for Game);
  v8 = v6[3];
  *v4 = v6[2];
  v4[1] = v8;
  v9 = v6[1];
  v4[2] = *v6;
  v4[3] = v9;
  v10 = v0[38];
  if (v6[7])
  {
    v11 = *(v10 + 48);
    v12 = v6[7];
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v14 = v0[44];
  v13 = v0[45];
  v15 = v0[41];
  v48 = v0[40];
  v16 = v0[37];
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  v17 = *(v16 + 72);
  v18 = *(v14 + 28);
  v19 = sub_24F9289E8();
  (*(*(v19 - 8) + 16))(v15 + v18, v10 + v17, v19);
  LOBYTE(v18) = *(v10 + 105);

  sub_24F6C80F0(v10, type metadata accessor for Game);
  *(v15 + *(v14 + 32)) = v18;
  (*(v13 + 56))(v15, 0, 1, v14);
  sub_24F34DCA8(v15);
  sub_24F6C80F0(v48, type metadata accessor for Game);
  v20 = v0[53];
  v22 = v0[47];
  v21 = v0[48];
  v23 = v0[36];
  v24 = v0[34];
  v25 = v0[32];
  v47 = v0[55];
  v49 = v0[31];
  sub_24F6C8308(v0[51], v23, type metadata accessor for ChallengeDefinitionDetail);
  (*(v21 + 56))(v23, 0, 1, v22);
  swift_getKeyPath();
  v26 = swift_task_alloc();
  *(v26 + 16) = v50;
  *(v26 + 24) = v23;
  v0[29] = v50;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD78();

  sub_24E601704(v23, &qword_27F212A08, &qword_24F9397D0);
  sub_24E60169C(v47 + *(v20 + 36), v24, &qword_27F2198F8, &unk_24F94CFA0);
  v27 = (*(v25 + 48))(v24, 1, v49);
  v28 = v0[51];
  v29 = v0[47];
  if (v27 == 1)
  {
    v30 = v0[35];
    sub_24E601704(v0[34], &qword_27F2198F8, &unk_24F94CFA0);
    sub_24E60169C(v28 + *(v29 + 64), v30, &qword_27F2198F8, &unk_24F94CFA0);
    goto LABEL_11;
  }

  v31 = v0[33];
  v32 = *(v0[32] + 32);
  v32(v31, v0[34], v0[31]);
  v33 = *(v28 + *(v29 + 48));
  if (sub_24F1D48CC(v31, v33))
  {
    v34 = v0[35];
    v35 = v0[32];
    v36 = v0[31];
    v32(v34, v0[33], v36);
LABEL_10:
    (*(v35 + 56))(v34, 0, 1, v36);
    goto LABEL_11;
  }

  v34 = v0[35];
  v35 = v0[32];
  v37 = v0[33];
  v36 = v0[31];
  if (*(v33 + 16))
  {
    (*(v35 + 16))(v0[35], v33 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v0[31]);
    (*(v35 + 8))(v37, v36);
    goto LABEL_10;
  }

  (*(v35 + 8))(v0[33], v0[31]);
  (*(v35 + 56))(v34, 1, 1, v36);
LABEL_11:
  v38 = v0[55];
  v39 = v0[53];
  sub_24F34E848(v0[35]);
  v40 = v38 + *(v39 + 32);
  v41 = v0[51];
  if (*(v40 + 8))
  {
  }

  else
  {
    sub_24EF55878(*v40);
    v41 = v0[51];
  }

  v43 = v0[55];
  v44 = v0[30];
  sub_24F34E590(v42);
  *(swift_task_alloc() + 16) = v44;
  sub_24F9276F8();
  sub_24F923B18();

  sub_24F6C80F0(v43, type metadata accessor for ChallengeDefinitionDraftInfo);
  sub_24F6C80F0(v41, type metadata accessor for ChallengeDefinitionDetail);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v45 = v0[1];

  return v45();
}

uint64_t sub_24F6CD320()
{

  v1 = v0[62];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesReviewView failed to load draftInfo: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[55];
  v11 = v0[30];

  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v1;
  sub_24F9276F8();
  sub_24F923B18();

  sub_24F6C80F0(v10, type metadata accessor for ChallengeDefinitionDraftInfo);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F6CD5EC()
{
  v1 = v0[46];

  sub_24F6C80F0(v1, type metadata accessor for GameActivityDraftGameInfo);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v2 = v0[70];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesReviewView failed to load draftInfo: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = v0[55];
  v12 = v0[30];

  v13 = swift_task_alloc();
  *(v13 + 16) = v12;
  *(v13 + 24) = v2;
  sub_24F9276F8();
  sub_24F923B18();

  sub_24F6C80F0(v11, type metadata accessor for ChallengeDefinitionDraftInfo);

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F6CD904()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = v0[72];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesReviewView failed to load draftInfo: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[55];
  v11 = v0[30];

  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v1;
  sub_24F9276F8();
  sub_24F923B18();

  sub_24F6C80F0(v10, type metadata accessor for ChallengeDefinitionDraftInfo);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F6CDBEC()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = v0[74];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesReviewView failed to load draftInfo: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[55];
  v11 = v0[30];

  v12 = swift_task_alloc();
  *(v12 + 16) = v11;
  *(v12 + 24) = v1;
  sub_24F9276F8();
  sub_24F923B18();

  sub_24F6C80F0(v10, type metadata accessor for ChallengeDefinitionDraftInfo);

  v13 = v0[1];

  return v13();
}

uint64_t sub_24F6CDEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[27] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v4 = type metadata accessor for GameActivityDraftGameInfo(0);
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243B28, &unk_24F9F87D0);
  v3[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  sub_24F92B7F8();
  v3[38] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v3[39] = v6;
  v3[40] = v5;

  return MEMORY[0x2822009F8](sub_24F6CE0DC, v6, v5);
}

uint64_t sub_24F6CE0DC()
{
  v1 = *(v0 + 296);
  v2 = *(*(v0 + 216) + 16);
  *(v0 + 328) = v2;
  swift_getKeyPath();
  *(v0 + 168) = v2;
  *(v0 + 336) = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
  *(v0 + 344) = sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  swift_beginAccess();
  v36 = v3;
  sub_24E60169C(v2 + v3, v1, &qword_27F212A08, &qword_24F9397D0);
  v4 = type metadata accessor for ChallengeDefinitionDetail(0);
  v35 = *(*(v4 - 8) + 48);
  v5 = v35(v1, 1, v4);
  sub_24E601704(v1, &qword_27F212A08, &qword_24F9397D0);
  if (v5 == 1)
  {
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E778);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BD98();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24E5DD000, v7, v8, "ChallengesReviewView shown without challenge definition ", v9, 2u);
      MEMORY[0x2530542D0](v9, -1, -1);
    }
  }

  v10 = *(v0 + 280);
  v11 = *(v0 + 216);
  v12 = type metadata accessor for ChallengesReviewView(0);
  sub_24E60169C(v11 + v12[13], v10, &qword_27F243B28, &unk_24F9F87D0);
  v13 = type metadata accessor for ChallengeDefinitionDraftInfo(0);
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) != 1)
  {
    v18 = *(v0 + 280);

    v19 = &qword_27F243B28;
    v20 = &unk_24F9F87D0;
    goto LABEL_11;
  }

  v14 = *(v0 + 272);
  v16 = *(v0 + 248);
  v15 = *(v0 + 256);
  sub_24E601704(*(v0 + 280), &qword_27F243B28, &unk_24F9F87D0);
  swift_getKeyPath();
  *(v0 + 176) = v2;
  sub_24F91FD88();

  v17 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(v2 + v17, v14, &qword_27F212B28, &qword_24F939910);
  if ((*(v15 + 48))(v14, 1, v16))
  {
    v18 = *(v0 + 272);

    v19 = &qword_27F212B28;
    v20 = &qword_24F939910;
LABEL_11:
    sub_24E601704(v18, v19, v20);

    v21 = *(v0 + 8);

    return v21();
  }

  v24 = *(v0 + 264);
  v23 = *(v0 + 272);
  v25 = *(v0 + 240);
  sub_24F6C8308(v23, v24, type metadata accessor for GameActivityDraftGameInfo);
  sub_24E601704(v23, &qword_27F212B28, &qword_24F939910);
  *(v0 + 352) = *(v24 + 16);
  *(v0 + 360) = *(v24 + 24);

  sub_24F6C80F0(v24, type metadata accessor for GameActivityDraftGameInfo);
  swift_getKeyPath();
  *(v0 + 184) = v2;
  sub_24F91FD88();

  v26 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
  swift_beginAccess();
  sub_24E60169C(v2 + v26, v25, &qword_27F212890, &qword_24F939670);
  v27 = type metadata accessor for Leaderboard(0);
  *(v0 + 368) = v27;
  v28 = *(v27 - 8);
  *(v0 + 376) = v28;
  v29 = *(v28 + 48);
  *(v0 + 384) = v29;
  *(v0 + 392) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v30 = v29(v25, 1, v27);
  v18 = *(v0 + 240);
  if (v30 != 1)
  {

    v19 = &qword_27F212890;
    v20 = &qword_24F939670;
    goto LABEL_11;
  }

  v31 = *(v0 + 288);
  sub_24E601704(*(v0 + 240), &qword_27F212890, &qword_24F939670);
  swift_getKeyPath();
  *(v0 + 192) = v2;
  sub_24F91FD88();

  sub_24E60169C(v2 + v36, v31, &qword_27F212A08, &qword_24F9397D0);
  if (v35(v31, 1, v4) != 1)
  {
    v18 = *(v0 + 288);

    v19 = &qword_27F212A08;
    v20 = &qword_24F9397D0;
    goto LABEL_11;
  }

  v32 = *(v0 + 216);
  sub_24E601704(*(v0 + 288), &qword_27F212A08, &qword_24F9397D0);
  *(v0 + 92) = v12[6];
  *(v0 + 400) = *(v32 + v12[12]);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v34 = swift_task_alloc();
  *(v0 + 408) = v34;
  *v34 = v0;
  v34[1] = sub_24F6CE7F8;

  return MEMORY[0x28217F228](v0 + 16, v33, v33);
}

uint64_t sub_24F6CE7F8()
{
  *(*v1 + 416) = v0;

  if (v0)
  {

    v2 = sub_24F6CEB70;
  }

  else
  {
    v2 = sub_24F6CE914;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6CE914()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = (*(v0 + 216) + *(v0 + 92));
  v5 = *v3;
  v4 = v3[1];
  *(v0 + 424) = v4;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  *(v0 + 72) = v5;
  *(v0 + 80) = v4;
  *(v0 + 88) = 1;

  v8 = swift_task_alloc();
  *(v0 + 432) = v8;
  v9 = sub_24E6510C0();
  *v8 = v0;
  v8[1] = sub_24F6CEA40;
  v10 = *(v0 + 400);

  return MEMORY[0x28217F4B0](v0 + 200, v0 + 56, v10, &type metadata for ChallengeableLeaderboardsDataIntent, v9, v6, v7);
}

uint64_t sub_24F6CEA40()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_24F6CEC80;
  }

  else
  {

    v2 = sub_24F6CEB90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F6CEB90()
{
  v1 = v0[25];
  if (*(v1 + 16))
  {
    v2 = *(v0[47] + 80);
    sub_24F6C8308(v1 + ((v2 + 32) & ~v2), v0[29], type metadata accessor for Leaderboard);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[29];

  (*(v5 + 56))(v6, v3, 1, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = v0[39];
  v8 = v0[40];

  return MEMORY[0x2822009F8](sub_24F6CED00, v7, v8);
}

uint64_t sub_24F6CEC80()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[56] = v0[55];
  v1 = v0[39];
  v2 = v0[40];

  return MEMORY[0x2822009F8](sub_24F6CF078, v1, v2);
}

uint64_t sub_24F6CED00()
{
  v20 = v0;
  v18 = v0[48];
  v1 = v0[46];
  v2 = v0[41];
  v4 = v0[28];
  v3 = v0[29];
  sub_24E60169C(v3, v4, &qword_27F212890, &qword_24F939670);
  swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v4;
  v0[26] = v2;
  sub_24F91FD78();

  sub_24E601704(v4, &qword_27F212890, &qword_24F939670);
  if (v18(v3, 1, v1) == 1)
  {
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E778);

    v7 = sub_24F9220B8();
    v8 = sub_24F92BD98();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[45];
    if (v9)
    {
      v11 = v0[44];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136315138;
      v14 = sub_24E7620D4(v11, v10, &v19);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_24E5DD000, v7, v8, "ChallengesReviewView no challengable leaderboard found for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x2530542D0](v13, -1, -1);
      MEMORY[0x2530542D0](v12, -1, -1);
    }

    else
    {
    }

    v17 = swift_task_alloc();
    v0[57] = v17;
    *v17 = v0;
    v17[1] = sub_24F6CF278;

    return sub_24F6CF6B0();
  }

  else
  {

    sub_24E601704(v0[29], &qword_27F212890, &qword_24F939670);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_24F6CF078()
{

  v1 = *(v0 + 448);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesReviewView failed to pre fill leaderboard: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24F6CF278()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_24F6CF494;
  }

  else
  {
    v5 = sub_24F6CF3B4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F6CF3B4()
{

  sub_24E601704(*(v0 + 232), &qword_27F212890, &qword_24F939670);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6CF494()
{
  v1 = v0[29];

  sub_24E601704(v1, &qword_27F212890, &qword_24F939670);
  v2 = v0[58];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E778);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesReviewView failed to pre fill leaderboard: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F6CF6B0()
{
  v1[7] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_24F928AE8();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  sub_24F9289E8();
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F40, &unk_24F9487C0);
  v1[15] = swift_task_alloc();
  sub_24F928AD8();
  v1[16] = swift_task_alloc();
  v4 = sub_24F92A638();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  sub_24F92B7F8();
  v1[23] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v1[24] = v7;
  v1[25] = v6;

  return MEMORY[0x2822009F8](sub_24F6CF960, v7, v6);
}

uint64_t sub_24F6CF960()
{
  v1 = v0[7];
  v0[26] = *(v1 + *(type metadata accessor for ChallengesReviewView(0) + 48));
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_24F6CFA18;
  v3 = v0[22];
  v4 = v0[20];

  return MEMORY[0x28217F228](v3, v4, v4);
}

uint64_t sub_24F6CFA18()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_24F6D0120;
  }

  else
  {
    v5 = sub_24F6CFB54;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F6CFB54(uint64_t a1)
{
  v2 = v1[15];
  sub_24F928A98();
  v3 = sub_24F92A628();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  if (qword_27F2115B0 != -1)
  {
    swift_once();
  }

  v4 = qword_27F2115A8;

  if (v4 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213DB8, &qword_24F93BA00);
  sub_24F92A618();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  v5 = qword_27F211588;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = v1[18];
  v7 = v1[19];
  v8 = v1[17];
  v9 = v1[9];
  v18 = v1[8];
  v19 = v1[10];

  sub_24F92A5D8();
  sub_24F92A5F8();
  sub_24F9289D8();
  sub_24F92A5E8();
  v10 = MEMORY[0x277D223B8];
  v1[5] = v8;
  v1[6] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  (*(v6 + 16))(boxed_opaque_existential_1, v7, v8);
  (*(v9 + 104))(v19, *MEMORY[0x277D21E18], v18);
  v12 = swift_task_alloc();
  v1[29] = v12;
  *v12 = v1;
  v12[1] = sub_24F6CFE80;
  v13 = v1[26];
  v14 = v1[20];
  v15 = v1[13];
  v16 = v1[10];

  return MEMORY[0x28217F468](v15, v1 + 2, v16, v13, v14);
}

uint64_t sub_24F6CFE80()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  *(*v1 + 240) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[24];
    v7 = v2[25];
    v8 = sub_24F6D01E4;
  }

  else
  {
    (*(v2[12] + 8))(v2[13], v2[11]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v6 = v2[24];
    v7 = v2[25];
    v8 = sub_24F6D0018;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_24F6D0018()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F6D0120()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6D01E4()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F6D02EC()
{
  v0[2] = sub_24F92B7F8();
  v0[3] = sub_24F92B7E8();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_24E9A9984;

  return sub_24F6CB82C();
}

uint64_t sub_24F6D0398(__int128 *a1, id a2)
{
  v2 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CEE0, &qword_24FA1D398);
  return sub_24F926F48();
}

uint64_t sub_24F6D0400@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for ChallengePreCreationView(0);
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v2);
  v42 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = (&v39 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CFC8, &qword_24FA1D5F8);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CFD0, &qword_24FA1D600);
  v17 = *(v16 - 8);
  v44 = v16;
  v45 = v17;
  MEMORY[0x28223BE20](v16);
  v43 = &v39 - v18;
  sub_24F769764(v12);
  sub_24F769764(v9);
  v19 = sub_24EF46EA0(v12, v9);
  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v12, &qword_27F215598, &qword_24F945EF0);
  v20 = v1;
  sub_24F6C8308(v1, v6, type metadata accessor for ChallengePreCreationView);
  v21 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v41 = swift_allocObject();
  sub_24F6C82A0(v6, v41 + v21, type metadata accessor for ChallengePreCreationView);
  v40 = v20;
  v22 = v42;
  sub_24F6C8308(v20, v42, type metadata accessor for ChallengePreCreationView);
  v23 = swift_allocObject();
  sub_24F6C82A0(v22, v23 + v21, type metadata accessor for ChallengePreCreationView);
  *v15 = v19;
  v24 = v13[19];
  *&v15[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v25 = v13[20];
  *&v15[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v26 = v13[21];
  *&v15[v26] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v27 = v13[22];
  *&v15[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
  swift_storeEnumTagMultiPayload();
  *&v15[v13[23]] = 0;
  v28 = &v15[v13[24]];
  v55[0] = 1;
  sub_24F926F28();
  v29 = v50;
  *v28 = v49;
  *(v28 + 1) = v29;
  v30 = v41;
  *(v15 + 1) = sub_24F6E0244;
  *(v15 + 2) = v30;
  *(v15 + 3) = sub_24F6E0EB8;
  *(v15 + 4) = v23;
  sub_24F927558();
  v48 = v20;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CFD8, &qword_24FA1D678);
  v32 = sub_24E602068(&qword_27F24CFE0, &qword_27F24CFC8, &qword_24FA1D5F8, &unk_24F9AB368);
  v49 = v13;
  v50 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = MEMORY[0x277CE1350];
  v35 = MEMORY[0x277CE1340];
  v36 = v43;
  sub_24F926B08();
  sub_24E601704(v15, &qword_27F24CFC8, &qword_24FA1D5F8);
  v47 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CFE8, &qword_24FA1D680);
  v49 = v13;
  v50 = v34;
  v51 = v31;
  v52 = v32;
  v53 = v35;
  v54 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_24E6A4C1C();
  sub_24F6E0F90();
  v37 = v44;
  sub_24F926B08();
  return (*(v45 + 8))(v36, v37);
}

uint64_t sub_24F6D0A20@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v86 = type metadata accessor for ChallengeDefinitionDetail(0);
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v90 = (&v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v3 - 8);
  v88 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v87 = &v80 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v80 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v10 - 8);
  v94 = &v80 - v11;
  v96 = type metadata accessor for PlayTogetherReviewHeader(0);
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v84 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v92 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v80 - v16;
  v18 = type metadata accessor for GameActivityDraftGameInfo(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v93 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v80 - v22;
  v89 = type metadata accessor for ChallengePreCreationView(0);
  v24 = v89[8];
  v91 = v1;
  v25 = *(v1 + v24);
  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
  v104 = v25;
  v27 = sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v28 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(v25 + v28, v17, &qword_27F212B28, &qword_24F939910);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_24E601704(v17, &qword_27F212B28, &qword_24F939910);
    v29 = 1;
    v30 = v97;
    v31 = v96;
  }

  else
  {
    sub_24F6C82A0(v17, v23, type metadata accessor for GameActivityDraftGameInfo);
    swift_getKeyPath();
    v103 = v25;
    v81 = v26;
    countAndFlagsBits = v27;
    sub_24F91FD88();

    v32 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
    swift_beginAccess();
    sub_24E60169C(v25 + v32, v9, &qword_27F212A08, &qword_24F9397D0);
    v33 = *(v83 + 48);
    v34 = v86;
    v35 = v23;
    if (v33(v9, 1, v86))
    {
      sub_24E601704(v9, &qword_27F212A08, &qword_24F9397D0);
      v36 = sub_24F9289E8();
      (*(*(v36 - 8) + 56))(v94, 1, 1, v36);
      v37 = v90;
    }

    else
    {
      v37 = v90;
      sub_24F6C8308(v9, v90, type metadata accessor for ChallengeDefinitionDetail);
      sub_24E601704(v9, &qword_27F212A08, &qword_24F9397D0);
      sub_24E60169C(v37 + *(v34 + 28), v94, &qword_27F213FB0, &qword_24F93E6B0);
      sub_24F6C80F0(v37, type metadata accessor for ChallengeDefinitionDetail);
    }

    sub_24F6C8308(v35, v93, type metadata accessor for GameActivityDraftGameInfo);
    swift_getKeyPath();
    v98 = v25;
    sub_24F91FD88();

    v38 = v87;
    sub_24E60169C(v25 + v32, v87, &qword_27F212A08, &qword_24F9397D0);
    if (v33(v38, 1, v34))
    {
      sub_24E601704(v38, &qword_27F212A08, &qword_24F9397D0);
      v90 = 0;
      v87 = 0;
    }

    else
    {
      sub_24F6C8308(v38, v37, type metadata accessor for ChallengeDefinitionDetail);
      sub_24E601704(v38, &qword_27F212A08, &qword_24F9397D0);
      v39 = v37[3];
      v90 = v37[2];
      v87 = v39;

      sub_24F6C80F0(v37, type metadata accessor for ChallengeDefinitionDetail);
    }

    swift_getKeyPath();
    v98 = v25;
    sub_24F91FD88();

    v40 = v88;
    sub_24E60169C(v25 + v32, v88, &qword_27F212A08, &qword_24F9397D0);
    v41 = v33(v40, 1, v34);
    v82 = v35;
    if (v41)
    {
      sub_24E601704(v40, &qword_27F212A08, &qword_24F9397D0);
      v88 = 0;
      v86 = 0;
    }

    else
    {
      sub_24F6C8308(v40, v37, type metadata accessor for ChallengeDefinitionDetail);
      sub_24E601704(v40, &qword_27F212A08, &qword_24F9397D0);
      v42 = v37[5];
      v88 = v37[4];
      v86 = v42;

      sub_24F6C80F0(v37, type metadata accessor for ChallengeDefinitionDetail);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 7235949;
    *(inited + 40) = 0xE300000000000000;
    v98 = 2;
    sub_24E9B5BEC();
    *(inited + 48) = sub_24F92C628();
    *(inited + 56) = v44;
    *(inited + 64) = 7889261;
    *(inited + 72) = 0xE300000000000000;
    v98 = 16;
    *(inited + 80) = sub_24F92C628();
    *(inited + 88) = v45;
    v46 = sub_24E6086DC(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
    swift_arrayDestroy();
    v47._object = 0x800000024FA4C080;
    v47._countAndFlagsBits = 0xD00000000000002ELL;
    v48 = localizedString(_:with:)(v47, v46);
    countAndFlagsBits = v48._countAndFlagsBits;

    v49 = v89;
    v50 = v91;
    v51 = (v91 + v89[6]);
    v83 = *v51;
    LODWORD(v81) = *(v51 + 8);
    v52 = v91 + v89[16];
    v53 = (v52 + *(type metadata accessor for ChallengesReviewBaseInfo(0) + 48));
    v54 = *v53;
    v55 = v53[1];
    v57 = v53[2];
    v56 = v53[3];
    v59 = v53[4];
    v58 = v53[5];
    v60 = (v50 + v49[17]);
    v61 = *v60;
    v62 = *(v60 + 1);
    v101 = v61;
    v102 = v62;
    sub_24E68FE2C(v54, v55, v57, v56, v59, v58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
    sub_24F926F58();
    sub_24F6C80F0(v82, type metadata accessor for GameActivityDraftGameInfo);
    v63 = v98;
    v91 = v99;
    LODWORD(v89) = v100;
    v64 = v84;
    sub_24E6009C8(v94, v84, &qword_27F213FB0, &qword_24F93E6B0);
    v31 = v96;
    sub_24F6C82A0(v93, v64 + *(v96 + 20), type metadata accessor for GameActivityDraftGameInfo);
    v65 = (v64 + v31[6]);
    v66 = v87;
    *v65 = v90;
    v65[1] = v66;
    v67 = (v64 + v31[7]);
    v68 = v86;
    *v67 = v88;
    v67[1] = v68;
    v69 = (v64 + v31[8]);
    *v69 = countAndFlagsBits;
    v69[1] = v48._object;
    *(v64 + v31[9]) = xmmword_24F9406F0;
    v70 = v64 + v31[10];
    *v70 = v83;
    *(v70 + 8) = v81;
    v71 = (v64 + v31[11]);
    *v71 = v54;
    v71[1] = v55;
    v71[2] = v57;
    v71[3] = v56;
    v71[4] = v59;
    v71[5] = v58;
    v72 = v64 + v31[12];
    *v72 = swift_getKeyPath();
    *(v72 + 8) = 0;
    v73 = v31[13];
    *(v64 + v73) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v74 = v31[14];
    *(v64 + v74) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v75 = v64 + v31[15];
    v76 = v91;
    *v75 = v63;
    *(v75 + 8) = v76;
    *(v75 + 16) = v89;
    v77 = v92;
    sub_24F6C82A0(v64, v92, type metadata accessor for PlayTogetherReviewHeader);
    v78 = v77;
    v30 = v97;
    sub_24F6C82A0(v78, v97, type metadata accessor for PlayTogetherReviewHeader);
    v29 = 0;
  }

  return (*(v95 + 56))(v30, v29, 1, v31);
}

uint64_t sub_24F6D1690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D008, &qword_24FA1D6A0);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  *v9 = sub_24F924C88();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D010, &qword_24FA1D6A8);
  sub_24F6D18F0(a1, &v9[*(v10 + 44)]);
  v11 = sub_24E6A4C1C();
  sub_24F924B68();
  v13[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D018, &qword_24FA1D6B0);
  sub_24E602068(&qword_27F24D020, &qword_27F24D008, &qword_24FA1D6A0, MEMORY[0x277CE1198]);
  v13[6] = &type metadata for GameOverlayViewPredicate;
  v13[7] = v11;
  swift_getOpaqueTypeConformance2();
  sub_24F6E11AC();
  sub_24F926B08();
  (*(v4 + 8))(v6, v3);
  return sub_24E601704(v9, &qword_27F24D008, &qword_24FA1D6A0);
}

uint64_t sub_24F6D18F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v54 = a1;
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D030, &qword_24FA1D6B8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D038, &qword_24FA1D6C0);
  MEMORY[0x28223BE20](v55);
  v7 = &v53 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D040, &qword_24FA1D6C8);
  MEMORY[0x28223BE20](v56);
  v58 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  MEMORY[0x28223BE20](v12);
  v57 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D048, &qword_24FA1D6D0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v53 - v19;
  v60 = a1;
  sub_24F9257D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D050, &unk_24FA1D6D8);
  sub_24E602068(&qword_27F24D058, &qword_27F24D050, &unk_24FA1D6D8, MEMORY[0x277CE1198]);
  sub_24F923438();
  v21 = sub_24F927618();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216560, &unk_24F9424E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_24F93A400;
  sub_24F926C88();
  *(v24 + 32) = sub_24F9273C8();
  *(v24 + 40) = v25;
  sub_24F926C98();
  *(v24 + 48) = sub_24F9273C8();
  *(v24 + 56) = v26;
  sub_24F9273D8();
  sub_24F927878();
  sub_24F927898();
  sub_24F923BD8();
  v27 = v61;
  v28 = &v20[*(v15 + 44)];
  *v28 = v21;
  *(v28 + 1) = v23;
  *(v28 + 2) = v27;
  *(v28 + 24) = v62;
  *(v28 + 40) = v63;
  *v5 = sub_24F924C88();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D060, &qword_24FA1D6E8);
  v30 = v54;
  sub_24F6D48FC(&v5[*(v29 + 44)]);
  v31 = sub_24F9257F8();
  v32 = *(v30 + *(type metadata accessor for ChallengePreCreationView(0) + 24) + 8);
  v33 = 0uLL;
  v34 = 0uLL;
  if ((v32 & 1) == 0)
  {
    sub_24F923318();
    *(&v34 + 1) = v35;
    *(&v33 + 1) = v36;
  }

  v53 = v34;
  v54 = v33;
  sub_24E6009C8(v5, v7, &qword_27F24D030, &qword_24FA1D6B8);
  v37 = &v7[*(v55 + 36)];
  *v37 = v31;
  *(v37 + 24) = v53;
  *(v37 + 8) = v54;
  v37[40] = v32;
  v38 = sub_24F925828();
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  sub_24F923318();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  sub_24E6009C8(v7, v11, &qword_27F24D038, &qword_24FA1D6C0);
  v47 = v57;
  v48 = &v11[*(v56 + 36)];
  *v48 = v38;
  *(v48 + 1) = v40;
  *(v48 + 2) = v42;
  *(v48 + 3) = v44;
  *(v48 + 4) = v46;
  v48[40] = 0;
  sub_24E6009C8(v11, v47, &qword_27F24D040, &qword_24FA1D6C8);
  sub_24E60169C(v20, v17, &qword_27F24D048, &qword_24FA1D6D0);
  v49 = v58;
  sub_24E60169C(v47, v58, &qword_27F24D040, &qword_24FA1D6C8);
  v50 = v59;
  sub_24E60169C(v17, v59, &qword_27F24D048, &qword_24FA1D6D0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D068, &qword_24FA1D6F0);
  sub_24E60169C(v49, v50 + *(v51 + 48), &qword_27F24D040, &qword_24FA1D6C8);
  sub_24E601704(v47, &qword_27F24D040, &qword_24FA1D6C8);
  sub_24E601704(v20, &qword_27F24D048, &qword_24FA1D6D0);
  sub_24E601704(v49, &qword_27F24D040, &qword_24FA1D6C8);
  return sub_24E601704(v17, &qword_27F24D048, &qword_24FA1D6D0);
}

uint64_t sub_24F6D1E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D110, &qword_24FA1D8B0);
  return sub_24F6D1EE8(a1, a2 + *(v4 + 44));
}

uint64_t sub_24F6D1EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v3 = type metadata accessor for ChallengesReviewBaseInfo(0);
  MEMORY[0x28223BE20](v3 - 8);
  *&v83 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v80 = type metadata accessor for ChallengesCustomizeView(0);
  MEMORY[0x28223BE20](v80);
  v86 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D118, &qword_24FA1D8B8);
  MEMORY[0x28223BE20](v84);
  v85 = &v74 - v8;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D120, &qword_24FA1D8C0);
  MEMORY[0x28223BE20](v82);
  v88 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v74 - v11;
  MEMORY[0x28223BE20](v12);
  v87 = &v74 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D128, &qword_24FA1D8C8);
  MEMORY[0x28223BE20](v77);
  v15 = &v74 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D130, &qword_24FA1D8D0);
  MEMORY[0x28223BE20](v75);
  v17 = &v74 - v16;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D138, &qword_24FA1D8D8);
  MEMORY[0x28223BE20](v76);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v25 = (&v74 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D140, &qword_24FA1D8E0);
  MEMORY[0x28223BE20](v26 - 8);
  v78 = &v74 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v74 - v29;
  sub_24F769764(v25);
  v31 = type metadata accessor for ChallengePreCreationView(0);
  sub_24F769764(v22);
  v32 = sub_24EF46EA0(v25, v22);
  sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v25, &qword_27F215598, &qword_24F945EF0);
  v33 = sub_24F924C88();
  if (v32)
  {
    *v15 = v33;
    *(v15 + 1) = 0x4020000000000000;
    v15[16] = 0;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D148, &qword_24FA1D8E8);
    sub_24F6D2A34(a1, &v15[*(v34 + 44)]);
    v35 = sub_24F925818();
    v36 = &v15[*(v77 + 36)];
    *v36 = v35;
    *(v36 + 8) = 0u;
    *(v36 + 24) = 0u;
    v36[40] = 1;
    sub_24E60169C(v15, v17, &qword_27F24D128, &qword_24FA1D8C8);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F24D150, &qword_27F24D138, &qword_24FA1D8D8, MEMORY[0x277CE1198]);
    sub_24F6E30E8();
    sub_24F924E28();
    v37 = v15;
    v38 = &qword_27F24D128;
    v39 = &qword_24FA1D8C8;
  }

  else
  {
    *v19 = v33;
    *(v19 + 1) = 0x4020000000000000;
    v19[16] = 0;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D188, &qword_24FA1D908);
    sub_24F6D2840(a1, &v19[*(v40 + 44)]);
    sub_24E60169C(v19, v17, &qword_27F24D138, &qword_24FA1D8D8);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F24D150, &qword_27F24D138, &qword_24FA1D8D8, MEMORY[0x277CE1198]);
    sub_24F6E30E8();
    sub_24F924E28();
    v37 = v19;
    v38 = &qword_27F24D138;
    v39 = &qword_24FA1D8D8;
  }

  sub_24E601704(v37, v38, v39);
  v41 = v79;
  sub_24F6C8308(a1 + v31[9], v79, type metadata accessor for Player);
  v42 = *(a1 + v31[8]);
  v43 = *(a1 + v31[10]);
  v44 = *(a1 + v31[11]);
  v45 = v83;
  sub_24F6C8308(a1 + v31[16], v83, type metadata accessor for ChallengesReviewBaseInfo);
  v46 = (a1 + v31[18]);
  v47 = *v46;
  v48 = v46[1];
  v91 = v47;
  v92 = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  sub_24F926F38();
  v49 = a1 + v31[6];
  v50 = *(v49 + 8);
  v51 = 0.0;
  if (!v50)
  {
    v51 = *v49;
  }

  v52 = v90 + v51;
  v53 = -(v90 + v51);
  v54 = v86;
  sub_24F6C82A0(v41, v86, type metadata accessor for Player);
  v55 = v80;
  *(v54 + *(v80 + 20)) = v42;
  *(v54 + v55[6]) = v43;
  *(v54 + v55[7]) = v44;
  sub_24F6C82A0(v45, v54 + v55[8], type metadata accessor for ChallengesReviewBaseInfo);
  v56 = v54 + v55[9];
  *v56 = 0;
  *(v56 + 8) = v52;
  *(v56 + 16) = 0;
  *(v56 + 24) = v53;
  v57 = sub_24F9257F8();
  v58 = 0uLL;
  v59 = 0uLL;
  if ((v50 & 1) == 0)
  {
    sub_24F923318();
    *(&v59 + 1) = v60;
    *(&v58 + 1) = v61;
  }

  v80 = v59;
  v83 = v58;
  v62 = v85;
  sub_24F6C82A0(v54, v85, type metadata accessor for ChallengesCustomizeView);
  v63 = v62 + *(v84 + 36);
  *v63 = v57;
  *(v63 + 24) = v80;
  *(v63 + 8) = v83;
  *(v63 + 40) = v50;
  v64 = sub_24F925828();
  v65 = v62;
  v66 = v81;
  sub_24E6009C8(v65, v81, &qword_27F24D118, &qword_24FA1D8B8);
  v67 = v66 + *(v82 + 36);
  *v67 = v64;
  *(v67 + 8) = 0u;
  *(v67 + 24) = 0u;
  *(v67 + 40) = 1;
  v68 = v87;
  sub_24E6009C8(v66, v87, &qword_27F24D120, &qword_24FA1D8C0);
  v69 = v78;
  sub_24E60169C(v30, v78, &qword_27F24D140, &qword_24FA1D8E0);
  v70 = v88;
  sub_24E60169C(v68, v88, &qword_27F24D120, &qword_24FA1D8C0);
  v71 = v89;
  sub_24E60169C(v69, v89, &qword_27F24D140, &qword_24FA1D8E0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D180, &qword_24FA1D900);
  sub_24E60169C(v70, v71 + *(v72 + 48), &qword_27F24D120, &qword_24FA1D8C0);
  sub_24E601704(v68, &qword_27F24D120, &qword_24FA1D8C0);
  sub_24E601704(v30, &qword_27F24D140, &qword_24FA1D8E0);
  sub_24E601704(v70, &qword_27F24D120, &qword_24FA1D8C0);
  return sub_24E601704(v69, &qword_27F24D140, &qword_24FA1D8E0);
}

uint64_t sub_24F6D2840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D190, &unk_24FA1D910);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E38, &qword_24F96F8B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  sub_24F6D0A20(&v18 - v14);
  sub_24F6D37CC(a1, v9);
  sub_24E60169C(v15, v12, &qword_27F223E38, &qword_24F96F8B0);
  sub_24E60169C(v9, v6, &qword_27F24D190, &unk_24FA1D910);
  sub_24E60169C(v12, a2, &qword_27F223E38, &qword_24F96F8B0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D198, &unk_24FA1D920);
  sub_24E60169C(v6, a2 + *(v16 + 48), &qword_27F24D190, &unk_24FA1D910);
  sub_24E601704(v9, &qword_27F24D190, &unk_24FA1D910);
  sub_24E601704(v15, &qword_27F223E38, &qword_24F96F8B0);
  sub_24E601704(v6, &qword_27F24D190, &unk_24FA1D910);
  return sub_24E601704(v12, &qword_27F223E38, &qword_24F96F8B0);
}

uint64_t sub_24F6D2A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D190, &unk_24FA1D910);
  MEMORY[0x28223BE20](v3 - 8);
  v92 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = &v76 - v6;
  *&v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EA0, &qword_24FA1D940);
  MEMORY[0x28223BE20](v84);
  v83 = &v76 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EA8, &qword_24F96F968);
  MEMORY[0x28223BE20](v81);
  v82 = &v76 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D1A0, &qword_24FA1D930);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v76 - v12;
  v14 = type metadata accessor for ChallengeDefinitionDetail(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v76 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D1D8, &qword_24FA1D9B0);
  MEMORY[0x28223BE20](v21 - 8);
  v86 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = &v76 - v24;
  v25 = type metadata accessor for ChallengePreCreationView(0);
  v26 = *(v25 + 32);
  v89 = a1;
  v27 = *(a1 + v26);
  swift_getKeyPath();
  *&v93 = v27;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v28 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  swift_beginAccess();
  sub_24E60169C(v27 + v28, v20, &qword_27F212A08, &qword_24F9397D0);
  if ((*(v15 + 48))(v20, 1, v14))
  {
    sub_24E601704(v20, &qword_27F212A08, &qword_24F9397D0);
LABEL_3:
    v29 = 1;
    v30 = v89;
    v31 = v88;
    v32 = v85;
    goto LABEL_8;
  }

  v33 = v84;
  v34 = v83;
  v79 = v13;
  v80 = v10;
  sub_24F6C8308(v20, v17, type metadata accessor for ChallengeDefinitionDetail);
  sub_24E601704(v20, &qword_27F212A08, &qword_24F9397D0);
  v36 = *(v17 + 4);
  v35 = *(v17 + 5);

  sub_24F6C80F0(v17, type metadata accessor for ChallengeDefinitionDetail);
  if (!v35)
  {
    goto LABEL_3;
  }

  *&v93 = v36;
  *(&v93 + 1) = v35;
  sub_24E600AEC();
  v37 = sub_24F925E18();
  v39 = v38;
  v41 = v40;
  sub_24F9259D8();
  v77 = sub_24F925C98();
  v43 = v42;
  v45 = v44;
  *&v78 = v46;

  sub_24E600B40(v37, v39, v41 & 1);

  KeyPath = swift_getKeyPath();
  v48 = sub_24F9251C8();
  v49 = v34;
  v50 = &v34[*(v33 + 36)];
  v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v52 = *MEMORY[0x277CE13B8];
  v53 = sub_24F927748();
  (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
  *v50 = v48;
  *v49 = v77;
  *(v49 + 8) = v43;
  *(v49 + 16) = v45 & 1;
  *(v49 + 24) = v78;
  *(v49 + 32) = KeyPath;
  *(v49 + 40) = 0;
  v54 = sub_24F9257F8();
  v30 = v89;
  v55 = *(v89 + *(v25 + 24) + 8);
  v56 = 0uLL;
  v57 = 0uLL;
  if ((v55 & 1) == 0)
  {
    sub_24F923318();
    *(&v57 + 1) = v58;
    *(&v56 + 1) = v59;
  }

  v78 = v57;
  v84 = v56;
  v60 = v82;
  sub_24E6009C8(v49, v82, &qword_27F223EA0, &qword_24FA1D940);
  v61 = v60 + *(v81 + 36);
  *v61 = v54;
  *(v61 + 24) = v78;
  *(v61 + 8) = v84;
  *(v61 + 40) = v55;
  sub_24F927628();
  sub_24F9242E8();
  v62 = v80;
  sub_24E6009C8(v60, v80, &qword_27F223EA8, &qword_24F96F968);
  v63 = v88;
  v64 = (v62 + *(v88 + 36));
  v65 = v98;
  v64[4] = v97;
  v64[5] = v65;
  v64[6] = v99;
  v66 = v94;
  *v64 = v93;
  v64[1] = v66;
  v67 = v96;
  v64[2] = v95;
  v64[3] = v67;
  v68 = v62;
  v69 = v79;
  sub_24E6009C8(v68, v79, &qword_27F24D1A0, &qword_24FA1D930);
  v32 = v85;
  sub_24E6009C8(v69, v85, &qword_27F24D1A0, &qword_24FA1D930);
  v31 = v63;
  v29 = 0;
LABEL_8:
  (*(v87 + 56))(v32, v29, 1, v31);
  v70 = v90;
  sub_24F6D37CC(v30, v90);
  v71 = v86;
  sub_24E60169C(v32, v86, &qword_27F24D1D8, &qword_24FA1D9B0);
  v72 = v92;
  sub_24E60169C(v70, v92, &qword_27F24D190, &unk_24FA1D910);
  v73 = v91;
  sub_24E60169C(v71, v91, &qword_27F24D1D8, &qword_24FA1D9B0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D1E0, &qword_24FA1D9B8);
  sub_24E60169C(v72, v73 + *(v74 + 48), &qword_27F24D190, &unk_24FA1D910);
  sub_24E601704(v70, &qword_27F24D190, &unk_24FA1D910);
  sub_24E601704(v32, &qword_27F24D1D8, &qword_24FA1D9B0);
  sub_24E601704(v72, &qword_27F24D190, &unk_24FA1D910);
  return sub_24E601704(v71, &qword_27F24D1D8, &qword_24FA1D9B0);
}

uint64_t sub_24F6D3310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ChallengePreCreationView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_24F6C8308(a2, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengePreCreationView);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_24F6C82A0(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for ChallengePreCreationView);
  sub_24E60169C(a1, a3, &qword_27F24D008, &qword_24FA1D6A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D018, &qword_24FA1D6B0);
  v12 = (a3 + *(result + 36));
  *v12 = sub_24F6D3480;
  v12[1] = 0;
  v12[2] = sub_24F6E1290;
  v12[3] = v10;
  return result;
}

uint64_t sub_24F6D34AC(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for ChallengePreCreationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216550, &qword_24F9424D0);
  return sub_24F926F48();
}

uint64_t sub_24F6D3524(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ChallengePreCreationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  v2 = sub_24F925818();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CFC8, &qword_24FA1D5F8);
  v4 = sub_24E602068(&qword_27F24CFE0, &qword_27F24CFC8, &qword_24FA1D5F8, &unk_24F9AB368);
  return MEMORY[0x25304C150](v6, v2, v3, v4);
}

uint64_t sub_24F6D361C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = (&v16 - v8);
  v10 = sub_24F925838();
  v11 = sub_24F924058();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CFD0, &qword_24FA1D600);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D000, &qword_24FA1D688) + 36);
  *v13 = v11;
  *(v13 + 8) = v10;
  sub_24F769764(v9);
  type metadata accessor for ChallengePreCreationView(0);
  sub_24F769764(v6);
  v14 = sub_24EF46EA0(v9, v6);
  sub_24E601704(v6, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CFE8, &qword_24FA1D680);
  *(a2 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_24F6D37CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v137 = a2;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EA8, &qword_24F96F968);
  MEMORY[0x28223BE20](v113);
  v114 = &v111 - v3;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D1A0, &qword_24FA1D930);
  MEMORY[0x28223BE20](v129);
  v115 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v116 = &v111 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  MEMORY[0x28223BE20](v7 - 8);
  v131 = &v111 - v8;
  *&v136 = type metadata accessor for ChallengeDefinitionDetail(0);
  *&v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v130 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v10 - 8);
  v134 = &v111 - v11;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D1A8, &qword_24FA1D938);
  MEMORY[0x28223BE20](v127);
  v128 = &v111 - v12;
  v124 = sub_24F929888();
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v120 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223EA0, &qword_24FA1D940);
  MEMORY[0x28223BE20](v132);
  v118 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v119 = &v111 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D1B0, &qword_24FA1D948);
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v121 = &v111 - v17;
  v18 = type metadata accessor for Leaderboard.LeaderboardType(0);
  MEMORY[0x28223BE20](v18 - 8);
  v125 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v133 = &v111 - v21;
  v22 = type metadata accessor for Leaderboard(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v117 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v111 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v111 - v29;
  v111 = type metadata accessor for ChallengePreCreationView(0);
  v31 = *(v111 + 32);
  v112 = a1;
  v32 = *(a1 + v31);
  swift_getKeyPath();
  v141._countAndFlagsBits = v32;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v33 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
  swift_beginAccess();
  sub_24E60169C(v32 + v33, v30, &qword_27F212890, &qword_24F939670);
  if ((*(v23 + 48))(v30, 1, v22))
  {
    sub_24E601704(v30, &qword_27F212890, &qword_24F939670);
    v34 = v137;
  }

  else
  {
    sub_24F6C8308(v30, v27, type metadata accessor for Leaderboard);
    sub_24E601704(v30, &qword_27F212890, &qword_24F939670);
    v35 = v133;
    sub_24F6C8308(&v27[*(v22 + 24)], v133, type metadata accessor for Leaderboard.LeaderboardType);
    sub_24F6C80F0(v27, type metadata accessor for Leaderboard);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v34 = v137;
    if (v37 != 1)
    {
      v85 = sub_24F91F648();
      (*(*(v85 - 8) + 8))(v35, v85);
      if (qword_27F2114D8 != -1)
      {
        swift_once();
      }

      v141 = xmmword_27F39EA78;
      sub_24E600AEC();

      v86 = sub_24F925E18();
      v88 = v87;
      v90 = v89;
      sub_24F925A18();
      v91 = sub_24F925C98();
      v93 = v92;
      v95 = v94;
      *&v136 = v96;

      sub_24E600B40(v86, v88, v90 & 1);

      KeyPath = swift_getKeyPath();
      LODWORD(v88) = sub_24F9251C8();
      v98 = v132;
      v99 = v119;
      v100 = &v119[*(v132 + 36)];
      v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
      v102 = *MEMORY[0x277CE13B8];
      v103 = sub_24F927748();
      (*(*(v103 - 8) + 104))(&v100[v101], v102, v103);
      *v100 = v88;
      *v99 = v91;
      *(v99 + 8) = v93;
      *(v99 + 16) = v95 & 1;
      *(v99 + 24) = v136;
      *(v99 + 32) = KeyPath;
      *(v99 + 40) = 1;
      v141 = 0;
      v142 = 0;
      memset(v138, 0, sizeof(v138));
      v104 = v120;
      sub_24F9297C8();
      sub_24E601704(v138, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(&v141, &qword_27F2129B0, &unk_24F945320);
      v105 = sub_24F6E3260();
      v106 = v121;
      sub_24F925EE8();
      (*(v122 + 8))(v104, v124);
      sub_24E601704(v99, &qword_27F223EA0, &qword_24FA1D940);
      v107 = v123;
      v108 = v126;
      (*(v123 + 16))(v128, v106, v126);
      swift_storeEnumTagMultiPayload();
      v141._countAndFlagsBits = v98;
      v141._object = v105;
      swift_getOpaqueTypeConformance2();
      sub_24F6E3318();
      v34 = v137;
      sub_24F924E28();
      (*(v107 + 8))(v106, v108);
      goto LABEL_14;
    }
  }

  swift_getKeyPath();
  v141._countAndFlagsBits = v32;
  sub_24F91FD88();

  v38 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  swift_beginAccess();
  v39 = v134;
  sub_24E60169C(v32 + v38, v134, &qword_27F212A08, &qword_24F9397D0);
  v40 = v136;
  if ((*(v135 + 48))(v39, 1, v136))
  {
    sub_24E601704(v39, &qword_27F212A08, &qword_24F9397D0);
    v41 = 1;
    goto LABEL_15;
  }

  v42 = v130;
  sub_24F6C8308(v39, v130, type metadata accessor for ChallengeDefinitionDetail);
  sub_24E601704(v39, &qword_27F212A08, &qword_24F9397D0);
  v43 = v42 + *(v40 + 52);
  v44 = v131;
  sub_24E60169C(v43, v131, &qword_27F212A00, &qword_24F9A23B0);
  sub_24F6C80F0(v42, type metadata accessor for ChallengeDefinitionDetail);
  v45 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  v41 = 1;
  if ((*(*(v45 - 8) + 48))(v44, 1, v45) != 1)
  {
    v46 = v117;
    sub_24F6C82A0(v44, v117, type metadata accessor for Leaderboard);
    v47 = v125;
    sub_24F6C8308(v46 + *(v22 + 24), v125, type metadata accessor for Leaderboard.LeaderboardType);
    sub_24F6C80F0(v46, type metadata accessor for Leaderboard);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
    v41 = 1;
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) != 1)
    {
      v49 = sub_24F91F648();
      (*(*(v49 - 8) + 8))(v125, v49);
      v50._object = 0x800000024FA7C600;
      v50._countAndFlagsBits = 0xD000000000000033;
      v51._countAndFlagsBits = 0;
      v51._object = 0xE000000000000000;
      v141 = localizedString(_:comment:)(v50, v51);
      sub_24E600AEC();
      v52 = sub_24F925E18();
      v54 = v53;
      v56 = v55;
      sub_24F9259D8();
      v57 = sub_24F925C98();
      v59 = v58;
      v61 = v60;
      *&v136 = v62;

      sub_24E600B40(v52, v54, v56 & 1);

      v63 = swift_getKeyPath();
      LODWORD(v54) = sub_24F9251C8();
      v64 = v118;
      v65 = (v118 + *(v132 + 36));
      v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
      v67 = *MEMORY[0x277CE13B8];
      v68 = sub_24F927748();
      (*(*(v68 - 8) + 104))(&v65[v66], v67, v68);
      *v65 = v54;
      *v64 = v57;
      *(v64 + 8) = v59;
      *(v64 + 16) = v61 & 1;
      *(v64 + 24) = v136;
      *(v64 + 32) = v63;
      *(v64 + 40) = 0;
      v69 = sub_24F9257F8();
      v70 = *(v112 + *(v111 + 24) + 8);
      v71 = 0uLL;
      v72 = 0uLL;
      if ((v70 & 1) == 0)
      {
        sub_24F923318();
        *(&v72 + 1) = v73;
        *(&v71 + 1) = v74;
      }

      v135 = v72;
      v136 = v71;
      v75 = v114;
      sub_24E6009C8(v118, v114, &qword_27F223EA0, &qword_24FA1D940);
      v76 = v75 + *(v113 + 36);
      *v76 = v69;
      *(v76 + 24) = v135;
      *(v76 + 8) = v136;
      *(v76 + 40) = v70;
      sub_24F927628();
      sub_24F9242E8();
      v77 = v75;
      v78 = v115;
      sub_24E6009C8(v77, v115, &qword_27F223EA8, &qword_24F96F968);
      v79 = (v78 + *(v129 + 36));
      v80 = v146;
      v79[4] = v145;
      v79[5] = v80;
      v79[6] = v147;
      v81 = v142;
      *v79 = v141;
      v79[1] = v81;
      v82 = v144;
      v79[2] = v143;
      v79[3] = v82;
      v83 = v116;
      sub_24E6009C8(v78, v116, &qword_27F24D1A0, &qword_24FA1D930);
      sub_24E60169C(v83, v128, &qword_27F24D1A0, &qword_24FA1D930);
      swift_storeEnumTagMultiPayload();
      v84 = sub_24F6E3260();
      v139 = v132;
      v140 = v84;
      swift_getOpaqueTypeConformance2();
      sub_24F6E3318();
      sub_24F924E28();
      sub_24E601704(v83, &qword_27F24D1A0, &qword_24FA1D930);
LABEL_14:
      v41 = 0;
    }
  }

LABEL_15:
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D1B8, &qword_24FA1D950);
  return (*(*(v109 - 8) + 56))(v34, v41, 1, v109);
}

uint64_t sub_24F6D48FC@<X0>(uint64_t *a1@<X8>)
{
  v47 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D070, &qword_24FA1D6F8);
  v46 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v48 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v49 = &v43 - v4;
  type metadata accessor for ChallengePreCreationView(0);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (sub_24F35018C())
  {
    v9._object = 0x800000024FA7C530;
    v9._countAndFlagsBits = 0xD000000000000024;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v50 = localizedString(_:comment:)(v9, v10);
    sub_24E600AEC();
    v11 = sub_24F925E18();
    v13 = v12;
    v15 = v14;
    sub_24F925A18();
    v16 = sub_24F925C98();
    v44 = v17;
    v45 = v1;
    v19 = v18;

    sub_24E600B40(v11, v13, v15 & 1);

    LODWORD(v50._countAndFlagsBits) = sub_24F9251C8();
    v20 = v44;
    v21 = sub_24F925C58();
    v23 = v22;
    v25 = v24;
    sub_24E600B40(v16, v20, v19 & 1);

    sub_24E72FF4C();
    v26 = sub_24F925C58();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_24E600B40(v21, v23, v25 & 1);

    v7 = v30 & 1;
    v1 = v45;
    v5 = v26;
    v6 = v28;
    sub_24E5FD138(v26, v28, v30 & 1);
    v8 = v32;
  }

  v33 = v49;
  sub_24F6D4C78(v49);
  v34 = v46;
  v35 = *(v46 + 16);
  v36 = v48;
  v37 = v33;
  v38 = v1;
  v35(v48, v37, v1);
  v39 = v47;
  *v47 = v5;
  v39[1] = v6;
  v39[2] = v7;
  v39[3] = v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D078, &unk_24FA1D700);
  v35(v39 + *(v40 + 48), v36, v38);
  sub_24E65D2B4(v5, v6, v7, v8);
  sub_24E65D2F8(v5, v6, v7, v8);
  v41 = *(v34 + 8);
  v41(v49, v38);
  v41(v36, v38);
  return sub_24E65D2F8(v5, v6, v7, v8);
}

uint64_t sub_24F6D4C78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v122 = a1;
  v123 = sub_24F929888();
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v119 = &countAndFlagsBits - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v120 = &countAndFlagsBits - v5;
  v6 = sub_24F924B38();
  v125 = *(v6 - 8);
  v126 = v6;
  MEMORY[0x28223BE20](v6);
  v112 = &countAndFlagsBits - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v8 - 8);
  v104 = &countAndFlagsBits - v9;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D080, &qword_24FA1D710);
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v107 = &countAndFlagsBits - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D088, &qword_24FA1D718);
  MEMORY[0x28223BE20](v105);
  v108 = &countAndFlagsBits - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D090, &qword_24FA1D720);
  MEMORY[0x28223BE20](v103);
  v106 = &countAndFlagsBits - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D098, &qword_24FA1D728);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &countAndFlagsBits - v14;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D0A0, &qword_24FA1D730);
  MEMORY[0x28223BE20](v113);
  v115 = (&countAndFlagsBits - v16);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D0A8, &qword_24FA1D738);
  MEMORY[0x28223BE20](v117);
  v118 = &countAndFlagsBits - v17;
  v18 = type metadata accessor for ChallengePreCreationView(0);
  v111 = *(v18 - 8);
  v19 = *(v111 + 64);
  MEMORY[0x28223BE20](v18);
  v20 = sub_24F928AD8();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &countAndFlagsBits - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F928B08();
  v129 = *(v23 - 8);
  v130 = v23;
  MEMORY[0x28223BE20](v23);
  v128 = &countAndFlagsBits - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_24F9271D8();
  MEMORY[0x28223BE20](v102);
  v26 = &countAndFlagsBits - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v18;
  v27 = *(v2 + *(v18 + 32));
  swift_getKeyPath();
  *&v132 = v27;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v28 = *(v27 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID + 8);
  v114 = v15;
  v124 = v27;
  if (v28)
  {
    v29 = "mize.StartButton.Title";
    v30 = 0xD00000000000002ELL;
  }

  else
  {
    v31 = sub_24F35018C();
    v29 = "w.Invite.Footer.Text";
    if (v31)
    {
      v29 = ".AddFriend.Title";
      v30 = 0xD000000000000026;
    }

    else
    {
      v30 = 0xD000000000000030;
    }
  }

  v32 = v29 | 0x8000000000000000;
  v33._countAndFlagsBits = 0;
  v33._object = 0xE000000000000000;
  v34 = localizedString(_:comment:)(*&v30, v33);
  countAndFlagsBits = v34._countAndFlagsBits;
  v35 = *MEMORY[0x277CE0118];
  v36 = *(v125 + 104);
  v127 = v26;
  v101 = v125 + 104;
  v100 = v36;
  (v36)(v26, v35, v126);
  sub_24F6D5BB8(v22);
  sub_24F6C8308(v2, &countAndFlagsBits - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengePreCreationView);
  v37 = *(v111 + 80);
  v38 = swift_allocObject() + ((v37 + 16) & ~v37);
  sub_24F6C82A0(&countAndFlagsBits - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v38, type metadata accessor for ChallengePreCreationView);
  v39 = v128;
  sub_24F928AF8();
  v40 = sub_24F9232F8();
  (*(*(v40 - 8) + 56))(v104, 1, 1, v40);
  v41 = v130;
  *(&v133 + 1) = v130;
  v134 = MEMORY[0x277D21CB8];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v132);
  (*(v129 + 16))(boxed_opaque_existential_1, v39, v41);
  v111 = v2;
  sub_24F6C8308(v2, &countAndFlagsBits - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChallengePreCreationView);
  v43 = swift_allocObject();
  *(v43 + 16) = countAndFlagsBits;
  *(v43 + 24) = v34._object;
  sub_24F6C82A0(&countAndFlagsBits - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + ((v37 + 32) & ~v37), type metadata accessor for ChallengePreCreationView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D0B0, &qword_24FA1D768);
  v44 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24D0B8, &unk_24FA1D770);
  v45 = sub_24F6E2040();
  *&v131[0] = v44;
  *(&v131[0] + 1) = v45;
  swift_getOpaqueTypeConformance2();
  v46 = v107;
  sub_24F921788();
  if (sub_24F354DF8())
  {
    v47 = sub_24F925198();
  }

  else
  {
    v47 = sub_24F9251C8();
  }

  v48 = v47;
  v49 = v114;
  v50 = sub_24F925808();
  v51 = v108;
  (*(v109 + 32))(v108, v46, v110);
  v52 = v51 + *(v105 + 36);
  *v52 = v48;
  *(v52 + 4) = v50;
  v53 = v106;
  v54 = &v106[*(v103 + 36)];
  v55 = MEMORY[0x277CE1260];
  v56 = v127;
  sub_24F6C8308(v127, v54, MEMORY[0x277CE1260]);
  *(v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0, &qword_24F951970) + 36)) = 256;
  sub_24E6009C8(v51, v53, &qword_27F24D088, &qword_24FA1D718);
  sub_24E6009C8(v53, v49, &qword_27F24D090, &qword_24FA1D720);
  *(&v133 + 1) = v102;
  v134 = sub_24F6C8150(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  v57 = __swift_allocate_boxed_opaque_existential_1(&v132);
  sub_24F6C8308(v56, v57, v55);
  __swift_project_boxed_opaque_existential_1(&v132, *(&v133 + 1));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v61 = (&countAndFlagsBits - v60);
  v62 = v112;
  v63 = v126;
  v100(v112, *MEMORY[0x277CE0128], v126, v59);
  LOBYTE(v51) = sub_24F924B28();
  (*(v125 + 8))(v62, v63);
  *v61 = ((v51 & 1) == 0) | 0xC008000000000000;
  swift_getAssociatedConformanceWitness();
  v64 = sub_24F927348();
  v65 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  __swift_destroy_boxed_opaque_existential_1(&v132);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D0C8, &qword_24FA1D788);
  v67 = v115;
  sub_24E60169C(v49, v115 + v66[9], &qword_27F24D098, &qword_24FA1D728);
  *v67 = v64;
  v67[1] = v65;
  v67[2] = 0x4000000000000000;
  v68 = v67 + v66[10];

  *v68 = sub_24F923398() & 1;
  *(v68 + 1) = v69;
  v68[16] = v70 & 1;
  v71 = v67 + v66[11];
  *v71 = swift_getKeyPath();
  v71[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v72 = qword_27F24E488;
  v73 = sub_24F923398();
  v75 = v74;
  v77 = v76;
  v78 = v67 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D0D0, &qword_24FA1D7B8) + 36);
  *v78 = v72;
  v78[8] = v73 & 1;
  *(v78 + 2) = v75;
  v78[24] = v77 & 1;
  LOBYTE(v72) = sub_24F923398();
  v80 = v79;
  LOBYTE(v75) = v81;

  sub_24E601704(v49, &qword_27F24D098, &qword_24FA1D728);
  v82 = v67 + *(v113 + 36);
  *v82 = v72 & 1;
  *(v82 + 1) = v80;
  v82[16] = v75 & 1;
  v83 = sub_24F354DF8();
  KeyPath = swift_getKeyPath();
  v85 = swift_allocObject();
  *(v85 + 16) = !v83;
  v86 = v67;
  v87 = v118;
  sub_24E6009C8(v86, v118, &qword_27F24D0A0, &qword_24FA1D730);
  v88 = (v87 + *(v117 + 36));
  *v88 = KeyPath;
  v88[1] = sub_24E600A48;
  v88[2] = v85;
  v132 = 0u;
  v133 = 0u;
  memset(v131, 0, sizeof(v131));
  v89 = v119;
  sub_24F9297C8();
  sub_24E601704(v131, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v132, &qword_27F2129B0, &unk_24F945320);
  v90 = v111 + *(v116 + 28);
  v91 = *v90;
  v92 = *(v90 + 16);
  v132 = v91;
  *&v133 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D0D8, &unk_24FA1D7F8);
  MEMORY[0x25304CAF0](v131, v93);
  LOBYTE(KeyPath) = *&v131[0] == 2;
  sub_24F6DF8B4(*&v131[0]);
  *(&v133 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v132) = KeyPath;
  v94 = v120;
  sub_24F929868();
  v95 = *(v121 + 8);
  v96 = v89;
  v97 = v123;
  v95(v96, v123);
  sub_24E601704(&v132, &qword_27F2129B0, &unk_24F945320);
  sub_24F6E2118();
  sub_24F925EE8();
  v95(v94, v97);
  sub_24E601704(v87, &qword_27F24D0A8, &qword_24FA1D738);
  (*(v129 + 8))(v128, v130);
  return sub_24F6C80F0(v127, MEMORY[0x277CE1260]);
}

uint64_t sub_24F6D5BB8@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212718, &unk_24F9391A0);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  MEMORY[0x28223BE20](v10);
  v42 = &v38 - v11;
  v12 = type metadata accessor for GameActivityDraftGameInfo(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v38 - v17;
  v19 = type metadata accessor for ChallengePreCreationView(0);
  v20 = *(v19 + 32);
  v40 = v1;
  v21 = *(v1 + v20);
  swift_getKeyPath();
  v45 = v21;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v22 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(v21 + v22, v18, &qword_27F212B28, &qword_24F939910);
  if ((*(v13 + 48))(v18, 1, v12))
  {
    sub_24E601704(v18, &qword_27F212B28, &qword_24F939910);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    sub_24F6C8308(v18, v15, type metadata accessor for GameActivityDraftGameInfo);
    sub_24E601704(v18, &qword_27F212B28, &qword_24F939910);
    v23 = *v15;
    v24 = v15[1];

    sub_24F6C80F0(v15, type metadata accessor for GameActivityDraftGameInfo);
  }

  v25 = sub_24F35018C();
  v26 = v40 + *(v19 + 64);
  v27 = v26 + *(type metadata accessor for ChallengesReviewBaseInfo(0) + 52);
  v29 = v42;
  v28 = v43;
  v30 = v41;
  if (v25)
  {
    v31 = v27;
    v32 = v38;
  }

  else
  {
    v31 = v27 + *(type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0) + 20);
    v32 = v39;
  }

  sub_24E60169C(v31, v32, &unk_27F212718, &unk_24F9391A0);
  v33 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
  {

    sub_24E601704(v32, &unk_27F212718, &unk_24F9391A0);
    v34 = 1;
  }

  else
  {
    sub_24EDA5FB8(v23, v24, v30);

    sub_24F6C80F0(v32, type metadata accessor for PlayTogetherReviewMetricsInfo);
    v34 = 0;
  }

  v35 = sub_24F928AD8();
  v36 = *(v35 - 8);
  (*(v36 + 56))(v30, v34, 1, v35);
  sub_24E6009C8(v30, v29, &qword_27F223CE8, &unk_24F983FE0);
  sub_24E60169C(v29, v28, &qword_27F223CE8, &unk_24F983FE0);
  if ((*(v36 + 48))(v28, 1, v35) == 1)
  {
    sub_24E601704(v28, &qword_27F223CE8, &unk_24F983FE0);
    sub_24F928A98();
    return sub_24E601704(v29, &qword_27F223CE8, &unk_24F983FE0);
  }

  else
  {
    sub_24E601704(v29, &qword_27F223CE8, &unk_24F983FE0);
    return (*(v36 + 32))(v44, v28, v35);
  }
}

double sub_24F6D6198(uint64_t a1)
{
  v2 = type metadata accessor for ChallengePreCreationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15[-v7];
  v16 = a1;
  sub_24F9276F8();
  sub_24F923B18();

  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24F6C8308(a1, v5, type metadata accessor for ChallengePreCreationView);
  sub_24F92B7F8();
  v10 = sub_24F92B7E8();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_24F6C82A0(v5, v12 + v11, type metadata accessor for ChallengePreCreationView);
  sub_24F1D3DA4(0, 0, v8, &unk_24FA1D810, v12);

  return result;
}

uint64_t sub_24F6D63D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v39 = a4;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223DA0, &qword_24FA1D780) - 8;
  MEMORY[0x28223BE20](v35);
  v7 = &v32 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255270, &qword_24F96F810) - 8;
  MEMORY[0x28223BE20](v37);
  v36 = &v32 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D0B8, &unk_24FA1D770);
  MEMORY[0x28223BE20](v33);
  v34 = &v32 - v9;
  *&v40 = a1;
  *(&v40 + 1) = a2;
  sub_24E600AEC();

  v10 = sub_24F925E18();
  v12 = v11;
  v14 = v13;
  sub_24F9258D8();
  v15 = sub_24F925C98();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_24E600B40(v10, v12, v14 & 1);

  *&v40 = v15;
  *(&v40 + 1) = v17;
  LOBYTE(v41) = v19 & 1;
  *(&v41 + 1) = v21;
  sub_24F9268B8();
  v22 = v33;
  sub_24E600B40(v15, v17, v19 & 1);

  LOBYTE(v21) = sub_24F925808();
  v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8, &unk_24F946390) + 36)];
  *v23 = v21;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  v23[40] = 1;
  *&v7[*(v35 + 44)] = sub_24F926C88();
  sub_24F927618();
  v24 = v34;
  sub_24F9242E8();
  v25 = v36;
  sub_24E6009C8(v7, v36, &qword_27F223DA0, &qword_24FA1D780);
  v26 = (v25 + *(v37 + 44));
  v27 = v45;
  v26[4] = v44;
  v26[5] = v27;
  v26[6] = v46;
  v28 = v41;
  *v26 = v40;
  v26[1] = v28;
  v29 = v43;
  v26[2] = v42;
  v26[3] = v29;
  sub_24E6009C8(v25, v24, &unk_27F255270, &qword_24F96F810);
  *(v24 + *(v22 + 36)) = 0;
  type metadata accessor for ChallengePreCreationView(0);
  sub_24F354DF8();
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v30 = sub_24F9248C8();
  __swift_project_value_buffer(v30, qword_27F39F078);
  sub_24F6E2040();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v24, &qword_27F24D0B8, &unk_24FA1D770);
}

uint64_t sub_24F6D67A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[63] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C218, &qword_24F98FC40);
  v4[64] = swift_task_alloc();
  sub_24F928AD8();
  v4[65] = swift_task_alloc();
  v5 = sub_24F92A6B8();
  v4[66] = v5;
  v4[67] = *(v5 - 8);
  v4[68] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v4[69] = v6;
  v4[70] = *(v6 - 8);
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v7 = sub_24F928AE8();
  v4[73] = v7;
  v4[74] = *(v7 - 8);
  v4[75] = swift_task_alloc();
  v4[76] = type metadata accessor for FinishChallengeCreationIntent(0);
  v4[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220FF0, &unk_24F9949F0);
  v4[78] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v4[79] = v8;
  v4[80] = *(v8 - 8);
  v4[81] = swift_task_alloc();
  v9 = sub_24F92CA08();
  v4[82] = v9;
  v4[83] = *(v9 - 8);
  v4[84] = swift_task_alloc();
  v4[85] = type metadata accessor for CreateChallengeIntent(0);
  v4[86] = swift_task_alloc();
  type metadata accessor for Leaderboard.LeaderboardType(0);
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v10 = type metadata accessor for Leaderboard(0);
  v4[91] = v10;
  v4[92] = *(v10 - 8);
  v4[93] = swift_task_alloc();
  v4[94] = swift_task_alloc();
  v4[95] = swift_task_alloc();
  v4[96] = swift_task_alloc();
  v4[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  v4[98] = swift_task_alloc();
  v4[99] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  v4[100] = swift_task_alloc();
  v4[101] = swift_task_alloc();
  v4[102] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  v4[103] = swift_task_alloc();
  v4[104] = swift_task_alloc();
  v4[105] = swift_task_alloc();
  v11 = type metadata accessor for ChallengeDefinitionDetail(0);
  v4[106] = v11;
  v4[107] = *(v11 - 8);
  v4[108] = swift_task_alloc();
  v4[109] = swift_task_alloc();
  v4[110] = swift_task_alloc();
  v12 = type metadata accessor for GameActivityDraftGameInfo(0);
  v4[111] = v12;
  v4[112] = *(v12 - 8);
  v4[113] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  v4[114] = swift_task_alloc();
  v4[115] = swift_task_alloc();
  v4[116] = swift_task_alloc();
  v13 = sub_24F92C9F8();
  v4[117] = v13;
  v4[118] = *(v13 - 8);
  v4[119] = swift_task_alloc();
  v4[120] = swift_task_alloc();
  v4[121] = sub_24F92B7F8();
  v4[122] = sub_24F92B7E8();
  v15 = sub_24F92B778();
  v4[123] = v15;
  v4[124] = v14;

  return MEMORY[0x2822009F8](sub_24F6D6E78, v15, v14);
}

uint64_t sub_24F6D6E78()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[63];
  sub_24F92C9D8();
  sub_24F92C9E8();
  v5 = *(v2 + 8);
  v0[125] = v5;
  v0[126] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = type metadata accessor for ChallengePreCreationView(0);
  v0[127] = v6;
  v0[128] = *(v4 + *(v6 + 60));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v8 = swift_task_alloc();
  v0[129] = v8;
  *v8 = v0;
  v8[1] = sub_24F6D6FB8;

  return MEMORY[0x28217F228](v0 + 17, v7, v7);
}

uint64_t sub_24F6D6FB8()
{
  v2 = *v1;
  *(*v1 + 1040) = v0;

  v3 = *(v2 + 992);
  v4 = *(v2 + 984);
  if (v0)
  {
    v5 = sub_24F6D9B9C;
  }

  else
  {
    v5 = sub_24F6D70F4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F6D70F4()
{
  v140 = v0;
  v1 = v0[116];
  v2 = v0[112];
  v3 = v0[111];
  v4 = *(v0[63] + *(v0[127] + 32));
  v0[131] = v4;
  swift_getKeyPath();
  v0[132] = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
  v0[60] = v4;
  v0[133] = sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  v0[134] = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(v4 + v5, v1, &qword_27F212B28, &qword_24F939910);
  v129 = *(v2 + 48);
  v6 = v129(v1, 1, v3);
  v7 = v0[116];
  if (v6)
  {
    sub_24E601704(v7, &qword_27F212B28, &qword_24F939910);
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v10 = v0[113];
    v11 = v0[116];
    sub_24F6C8308(v7, v10, type metadata accessor for GameActivityDraftGameInfo);
    sub_24E601704(v11, &qword_27F212B28, &qword_24F939910);
    v8 = *(v10 + 32);
    v9 = *(v10 + 40);

    sub_24F6C80F0(v10, type metadata accessor for GameActivityDraftGameInfo);
  }

  v127 = v8;
  v128 = v9;
  v0[136] = v9;
  v0[135] = v8;
  v12 = v0[107];
  v13 = v0[106];
  v14 = v0[105];
  swift_getKeyPath();
  v0[59] = v4;
  sub_24F91FD88();

  v15 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  swift_beginAccess();
  v134 = v15;
  sub_24E60169C(v4 + v15, v14, &qword_27F212A08, &qword_24F9397D0);
  v132 = *(v12 + 48);
  if (v132(v14, 1, v13) == 1)
  {
    v16 = v0[102];
    v17 = v0[92];
    v18 = v0[91];
    sub_24E601704(v0[105], &qword_27F212A08, &qword_24F9397D0);
    swift_getKeyPath();
    v0[58] = v4;
    sub_24F91FD88();

    v19 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
    swift_beginAccess();
    sub_24E60169C(v4 + v19, v16, &qword_27F212890, &qword_24F939670);
    v20 = (*(v17 + 48))(v16, 1, v18);
    v21 = v0[102];
    if (v20)
    {
      sub_24E601704(v21, &qword_27F212890, &qword_24F939670);
    }

    else
    {
      v31 = v0[96];
      v32 = v0[91];
      v33 = v0[89];
      v34 = v0[102];
      sub_24F6C8308(v21, v31, type metadata accessor for Leaderboard);
      sub_24E601704(v34, &qword_27F212890, &qword_24F939670);
      sub_24F6C8308(v31 + *(v32 + 24), v33, type metadata accessor for Leaderboard.LeaderboardType);
      sub_24F6C80F0(v31, type metadata accessor for Leaderboard);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
      if ((*(*(v35 - 8) + 48))(v33, 1, v35) != 1)
      {
        v113 = v0[89];
        v114 = sub_24F91F648();
        (*(*(v114 - 8) + 8))(v113, v114);
        v125 = 0;
        v126 = 1;
        goto LABEL_17;
      }
    }

    swift_getKeyPath();
    v0[56] = v4;
    sub_24F91FD88();

    v126 = *(v4 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 24);
    if (v126)
    {
      v36 = 0;
    }

    else
    {
      v36 = *(v4 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules);
    }

    v125 = v36;
  }

  else
  {
    v22 = v0[110];
    v23 = v0[106];
    v24 = v0[99];
    sub_24F6C82A0(v0[105], v22, type metadata accessor for ChallengeDefinitionDetail);
    sub_24E60169C(v22 + *(v23 + 52), v24, &qword_27F212A00, &qword_24F9A23B0);
    v25 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1 || (v26 = v0[97], v27 = v0[91], v28 = v0[90], sub_24F6C82A0(v0[99], v26, type metadata accessor for Leaderboard), sub_24F6C8308(v26 + *(v27 + 24), v28, type metadata accessor for Leaderboard.LeaderboardType), sub_24F6C80F0(v26, type metadata accessor for Leaderboard), v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0), (*(*(v29 - 8) + 48))(v28, 1, v29) == 1))
    {
      v125 = sub_24F34F168();
      v126 = v30;
    }

    else
    {
      v37 = v0[90];
      v38 = sub_24F91F648();
      (*(*(v38 - 8) + 8))(v37, v38);
      v125 = 0;
      v126 = 1;
    }

    sub_24F6C80F0(v0[110], type metadata accessor for ChallengeDefinitionDetail);
  }

LABEL_17:
  v39 = v0[106];
  v40 = v0[104];
  swift_getKeyPath();
  v0[55] = v4;
  sub_24F91FD88();

  sub_24E60169C(v4 + v134, v40, &qword_27F212A08, &qword_24F9397D0);
  if (v132(v40, 1, v39) != 1)
  {
    v47 = v0[109];
    v48 = v0[106];
    v49 = v0[98];
    sub_24F6C82A0(v0[104], v47, type metadata accessor for ChallengeDefinitionDetail);
    sub_24E60169C(v47 + *(v48 + 52), v49, &qword_27F212A00, &qword_24F9A23B0);
    v50 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
    if ((*(*(v50 - 8) + 48))(v49, 1, v50) == 1 || (v51 = v0[95], v52 = v0[91], v53 = v0[88], sub_24F6C82A0(v0[98], v51, type metadata accessor for Leaderboard), sub_24F6C8308(v51 + *(v52 + 24), v53, type metadata accessor for Leaderboard.LeaderboardType), sub_24F6C80F0(v51, type metadata accessor for Leaderboard), v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0), (*(*(v54 - 8) + 48))(v53, 1, v54) == 1))
    {
      swift_getKeyPath();
      v0[62] = v4;
      sub_24F91FD88();

      if (*(v4 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule))
      {

        v56 = sub_24EF5B040(v55);

        v124 = 0;
LABEL_28:
        sub_24F6C80F0(v0[109], type metadata accessor for ChallengeDefinitionDetail);
        goto LABEL_29;
      }
    }

    else
    {
      v65 = v0[88];
      v66 = sub_24F91F648();
      (*(*(v66 - 8) + 8))(v65, v66);
    }

    v124 = 1;
    v56 = 0.0;
    goto LABEL_28;
  }

  v41 = v0[101];
  v42 = v0[92];
  v43 = v0[91];
  sub_24E601704(v0[104], &qword_27F212A08, &qword_24F9397D0);
  swift_getKeyPath();
  v0[54] = v4;
  sub_24F91FD88();

  v44 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
  swift_beginAccess();
  sub_24E60169C(v4 + v44, v41, &qword_27F212890, &qword_24F939670);
  v45 = (*(v42 + 48))(v41, 1, v43);
  v46 = v0[101];
  if (v45)
  {
    sub_24E601704(v46, &qword_27F212890, &qword_24F939670);
LABEL_25:
    swift_getKeyPath();
    v0[48] = v4;
    sub_24F91FD88();

    v62 = *(v4 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 48);
    v63 = *(v4 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 56);
    v137 = *(v4 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__rules + 32);
    v138 = v62;
    v139 = v63;
    sub_24E6EF27C();
    v56 = v64;
    v124 = 0;
    goto LABEL_29;
  }

  v57 = v0[94];
  v58 = v0[91];
  v59 = v0[87];
  v60 = v0[101];
  sub_24F6C8308(v46, v57, type metadata accessor for Leaderboard);
  sub_24E601704(v60, &qword_27F212890, &qword_24F939670);
  sub_24F6C8308(v57 + *(v58 + 24), v59, type metadata accessor for Leaderboard.LeaderboardType);
  sub_24F6C80F0(v57, type metadata accessor for Leaderboard);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
  if ((*(*(v61 - 8) + 48))(v59, 1, v61) == 1)
  {
    goto LABEL_25;
  }

  v115 = v0[87];
  v116 = sub_24F91F648();
  (*(*(v116 - 8) + 8))(v115, v116);
  v124 = 1;
  v56 = 0.0;
LABEL_29:
  v67 = v0[115];
  v68 = v0[111];
  swift_getKeyPath();
  v0[47] = v4;
  sub_24F91FD88();

  sub_24E60169C(v4 + v5, v67, &qword_27F212B28, &qword_24F939910);
  v69 = v129(v67, 1, v68);
  v70 = v0[115];
  if (v69)
  {
    sub_24E601704(v70, &qword_27F212B28, &qword_24F939910);
    v71 = 0;
    v131 = 0xE000000000000000;
  }

  else
  {
    v72 = v0[113];
    v73 = v0[115];
    sub_24F6C8308(v70, v72, type metadata accessor for GameActivityDraftGameInfo);
    sub_24E601704(v73, &qword_27F212B28, &qword_24F939910);
    v71 = *(v72 + 16);
    v131 = *(v72 + 24);

    sub_24F6C80F0(v72, type metadata accessor for GameActivityDraftGameInfo);
  }

  v74 = v0[100];
  v75 = v0[92];
  v76 = v0[91];
  swift_getKeyPath();
  v0[46] = v4;
  sub_24F91FD88();

  v77 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__leaderboard;
  swift_beginAccess();
  sub_24E60169C(v4 + v77, v74, &qword_27F212890, &qword_24F939670);
  v78 = (*(v75 + 48))(v74, 1, v76);
  v79 = v0[100];
  if (v78)
  {
    sub_24E601704(v79, &qword_27F212890, &qword_24F939670);
    v80 = 0;
    v130 = 0xE000000000000000;
  }

  else
  {
    v81 = v0[93];
    v82 = v0[100];
    sub_24F6C8308(v79, v81, type metadata accessor for Leaderboard);
    sub_24E601704(v82, &qword_27F212890, &qword_24F939670);
    v80 = *(v81 + 16);
    v130 = *(v81 + 24);

    sub_24F6C80F0(v81, type metadata accessor for Leaderboard);
  }

  v83 = sub_24F34F43C();
  swift_getKeyPath();
  v0[45] = v4;
  sub_24F91FD88();

  *&v137 = v83;

  sub_24EA0A6C0(v84);
  v85 = sub_24F45D8C0(v83);

  v86 = *(v85 + 16);
  if (v86)
  {
    v123 = sub_24EAE67A0(*(v85 + 16), 0);
    v87 = sub_24EAE7DDC(&v137, v123 + 32, v86, v85);
    sub_24E6586B4(v137);
    if (v87 == v86)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  v123 = MEMORY[0x277D84F90];
LABEL_39:
  v121 = v80;
  v122 = v71;
  swift_getKeyPath();
  v0[49] = v4;
  sub_24F91FD88();

  v88 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite;
  v0[137] = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__contactHandlesToInvite;
  v89 = *(v4 + v88);
  v90 = *(v89 + 16);
  if (v90)
  {
    v120 = sub_24EAE678C(*(v89 + 16), 0);
    v91 = sub_24EAE8364(&v137, v120 + 4, v90, v89);
    v92 = v137;

    v93 = sub_24E6586B4(v92);
    if (v91 != v90)
    {
      __break(1u);
      return MEMORY[0x28217F4B0](v93, v94, v95, v96, v97, v98, v99);
    }
  }

  else
  {
    v120 = MEMORY[0x277D84F90];
  }

  v100 = v0[106];
  v101 = v0[103];
  swift_getKeyPath();
  v0[50] = v4;
  sub_24F91FD88();

  v102 = *(v4 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID + 8);
  v118 = *(v4 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__previousChallengeID);
  swift_getKeyPath();
  v0[51] = v4;
  v119 = v102;

  sub_24F91FD88();

  sub_24E60169C(v4 + v134, v101, &qword_27F212A08, &qword_24F9397D0);
  if (v132(v101, 1, v100))
  {
    sub_24E601704(v0[103], &qword_27F212A08, &qword_24F9397D0);
    v135 = 0;
    v136 = 0;
  }

  else
  {
    v103 = v0[108];
    v104 = v0[103];
    sub_24F6C8308(v104, v103, type metadata accessor for ChallengeDefinitionDetail);
    sub_24E601704(v104, &qword_27F212A08, &qword_24F9397D0);
    v135 = v103[1];
    v136 = *v103;

    sub_24F6C80F0(v103, type metadata accessor for ChallengeDefinitionDetail);
  }

  v105 = v0[127];
  v106 = v0[86];
  v107 = v0[85];
  v133 = v0[63];
  swift_getKeyPath();
  v0[52] = v4;
  sub_24F91FD88();

  v108 = *(v4 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule);
  swift_getKeyPath();
  v0[53] = v4;

  sub_24F91FD88();

  v109 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  swift_beginAccess();
  sub_24E60169C(v4 + v109, v106 + *(v107 + 56), &qword_27F2198F8, &unk_24F94CFA0);
  sub_24F6C8308(v133 + *(v105 + 36), v106 + *(v107 + 60), type metadata accessor for Player);
  *v106 = v122;
  *(v106 + 8) = v131;
  *(v106 + 16) = v127;
  *(v106 + 24) = v128;
  *(v106 + 32) = v121;
  *(v106 + 40) = v130;
  *(v106 + 48) = v125;
  *(v106 + 56) = v126 & 1;
  *(v106 + 64) = v56;
  *(v106 + 72) = v124;
  *(v106 + 80) = v123;
  *(v106 + 88) = v120;
  *(v106 + 96) = v118;
  *(v106 + 104) = v119;
  *(v106 + 112) = v136;
  *(v106 + 120) = v135;
  *(v106 + 128) = v108;
  v110 = v0[20];
  v111 = v0[21];
  __swift_project_boxed_opaque_existential_1(v0 + 17, v110);

  v112 = swift_task_alloc();
  v0[138] = v112;
  v97 = sub_24F6C8150(&qword_27F21D5E0, type metadata accessor for CreateChallengeIntent, &protocol conformance descriptor for CreateChallengeIntent);
  *v112 = v0;
  v112[1] = sub_24F6D83D4;
  v95 = v0[128];
  v94 = v0[86];
  v96 = v0[85];
  v93 = (v0 + 43);
  v98 = v110;
  v99 = v111;

  return MEMORY[0x28217F4B0](v93, v94, v95, v96, v97, v98, v99);
}

uint64_t sub_24F6D83D4()
{
  v2 = *v1;
  *(*v1 + 1112) = v0;

  if (v0)
  {

    v3 = *(v2 + 992);
    v4 = *(v2 + 984);
    v5 = sub_24F6DA234;
  }

  else
  {
    v3 = *(v2 + 992);
    v4 = *(v2 + 984);
    v5 = sub_24F6D84F8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F6D84F8()
{
  v1 = *(v0 + 352);
  *(v0 + 1120) = *(v0 + 344);
  *(v0 + 1128) = v1;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0;
  *(v0 + 336) = 1;
  sub_24F92CFB8();
  v2 = swift_task_alloc();
  *(v0 + 1136) = v2;
  v3 = sub_24F6C8150(&qword_27F219708, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  *v2 = v0;
  v2[1] = sub_24F6D85F4;
  v4 = *(v0 + 960);
  v5 = *(v0 + 672);
  v6 = *(v0 + 656);

  return MEMORY[0x282200488](v4, v0 + 320, v5, v6, v3);
}

uint64_t sub_24F6D85F4()
{
  v2 = *v1;
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v3 = v2[84];
    v4 = v2[83];
    v5 = v2[82];

    (*(v4 + 8))(v3, v5);
    v6 = v2[124];
    v7 = v2[123];
    v8 = sub_24F6DA2D4;
  }

  else
  {
    (*(v2[83] + 8))(v2[84], v2[82]);
    v6 = v2[124];
    v7 = v2[123];
    v8 = sub_24F6D8774;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24F6D8774()
{
  v1 = *(sub_24F34FCE0() + 2);

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v3 = *(v0 + 1096);
    v4 = *(v0 + 1048);
    swift_getKeyPath();
    *(v0 + 488) = v4;
    sub_24F91FD88();

    v2 = *(*(v4 + v3) + 16) != 0;
  }

  *(v0 + 337) = v2;
  v5 = *(v0 + 1072);
  v6 = *(v0 + 1048);
  v7 = *(v0 + 912);
  swift_getKeyPath();
  *(v0 + 456) = v6;
  sub_24F91FD88();

  sub_24E60169C(v6 + v5, v7, &qword_27F212B28, &qword_24F939910);
  *(v0 + 1152) = sub_24F92B7E8();
  v8 = swift_task_alloc();
  *(v0 + 1160) = v8;
  *v8 = v0;
  v8[1] = sub_24F6D8910;
  v9 = *(v0 + 632);
  v10 = *(v0 + 624);

  return MEMORY[0x28217F228](v10, v9, v9);
}

uint64_t sub_24F6D8910()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_24F92B778();
    v5 = v4;
    v6 = sub_24F6D8DC0;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v9 = sub_24F92B778();
    v8 = v10;
    *(v2 + 1168) = v9;
    *(v2 + 1176) = v10;
    v6 = sub_24F6D8AB4;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_24F6D8AB4()
{
  v22 = *(v0 + 337);
  v21 = *(v0 + 1120);
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 912);
  v4 = *(v0 + 648);
  v5 = *(v0 + 640);
  v6 = *(v0 + 632);
  v7 = *(v0 + 624);
  v8 = *(v0 + 616);
  v9 = *(v0 + 608);
  (*(v5 + 56))(v7, 0, 1, v6);
  (*(v5 + 32))(v4, v7, v6);
  sub_24E60169C(v3, v8 + *(v9 + 28), &qword_27F212B28, &qword_24F939910);
  v10 = sub_24F92A678();
  *v8 = v21;
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  *(v8 + 32) = v22;
  v11 = (v8 + *(v9 + 32));
  *v11 = v10;
  v11[1] = v12;
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v13);
  v15 = swift_task_alloc();
  *(v0 + 1184) = v15;
  v16 = sub_24F6C8150(&qword_27F22C220, type metadata accessor for FinishChallengeCreationIntent, &unk_24F9DE678);
  *v15 = v0;
  v15[1] = sub_24F6D8C84;
  v17 = *(v0 + 1024);
  v18 = *(v0 + 616);
  v19 = *(v0 + 608);

  return MEMORY[0x28217F4B0](v0 + 56, v18, v17, v19, v16, v13, v14);
}

uint64_t sub_24F6D8C84()
{
  v2 = *v1;
  *(*v1 + 1192) = v0;

  v3 = *(v2 + 1176);
  v4 = *(v2 + 1168);
  if (v0)
  {
    v5 = sub_24F6D9120;
  }

  else
  {
    v5 = sub_24F6D8E90;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F6D8DC0()
{
  v1 = v0[114];
  v2 = v0[80];
  v3 = v0[79];
  v4 = v0[78];

  sub_24E601704(v1, &qword_27F212B28, &qword_24F939910);
  (*(v2 + 56))(v4, 1, 1, v3);
  sub_24E601704(v4, &qword_27F220FF0, &unk_24F9949F0);
  v5 = v0[124];
  v6 = v0[123];

  return MEMORY[0x2822009F8](sub_24F6D9504, v6, v5);
}

uint64_t sub_24F6D8E90()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 560);
  sub_24E612C80((v0 + 56), v0 + 96);
  *(v0 + 340) = *MEMORY[0x277D21E18];
  (*(v2 + 104))(v1);
  v3 = swift_task_alloc();
  *(v0 + 1200) = v3;
  *v3 = v0;
  v3[1] = sub_24F6D8F84;
  v4 = *(v0 + 1024);
  v5 = *(v0 + 632);
  v6 = *(v0 + 600);
  v7 = *(v0 + 576);

  return MEMORY[0x28217F468](v6, v0 + 96, v7, v4, v5);
}

uint64_t sub_24F6D8F84()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *(*v1 + 560);
  v5 = *(*v1 + 552);
  *(*v1 + 1208) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = v2[147];
    v7 = v2[146];
    v8 = sub_24F6D9380;
  }

  else
  {
    (*(v2[74] + 8))(v2[75], v2[73]);
    v6 = v2[147];
    v7 = v2[146];
    v8 = sub_24F6D92A0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24F6D9120()
{
  sub_24F6C80F0(v0[77], type metadata accessor for FinishChallengeCreationIntent);
  v1 = *MEMORY[0x277D21E18];
  v0[152] = v0[149];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[66];
  sub_24F928A98();
  sub_24F92A678();
  sub_24F92A668();
  v8 = MEMORY[0x277D223D8];
  v0[5] = v7;
  v0[6] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(v6 + 16))(boxed_opaque_existential_1, v5, v7);
  (*(v3 + 104))(v2, v1, v4);
  v10 = swift_task_alloc();
  v0[153] = v10;
  *v10 = v0;
  v10[1] = sub_24F6D97BC;
  v11 = v0[128];
  v12 = v0[79];
  v13 = v0[71];
  v14 = v0[64];

  return MEMORY[0x28217F468](v14, v0 + 2, v13, v11, v12);
}

uint64_t sub_24F6D92A0()
{
  v1 = v0[114];
  v2 = v0[81];
  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[77];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_24F6C80F0(v5, type metadata accessor for FinishChallengeCreationIntent);
  (*(v3 + 8))(v2, v4);
  sub_24E601704(v1, &qword_27F212B28, &qword_24F939910);
  v6 = v0[124];
  v7 = v0[123];

  return MEMORY[0x2822009F8](sub_24F6D9504, v7, v6);
}

uint64_t sub_24F6D9380()
{
  v1 = *(v0 + 616);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  sub_24F6C80F0(v1, type metadata accessor for FinishChallengeCreationIntent);
  v2 = *(v0 + 340);
  *(v0 + 1216) = *(v0 + 1208);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  v8 = *(v0 + 528);
  sub_24F928A98();
  sub_24F92A678();
  sub_24F92A668();
  v9 = MEMORY[0x277D223D8];
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(v7 + 16))(boxed_opaque_existential_1, v6, v8);
  (*(v4 + 104))(v3, v2, v5);
  v11 = swift_task_alloc();
  *(v0 + 1224) = v11;
  *v11 = v0;
  v11[1] = sub_24F6D97BC;
  v12 = *(v0 + 1024);
  v13 = *(v0 + 632);
  v14 = *(v0 + 568);
  v15 = *(v0 + 512);

  return MEMORY[0x28217F468](v15, v0 + 16, v14, v12, v13);
}

uint64_t sub_24F6D9504()
{

  v1 = v0[125];
  v2 = v0[120];
  v3 = v0[117];
  sub_24F6C80F0(v0[86], type metadata accessor for CreateChallengeIntent);
  v1(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F6D97BC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[71];
    v4 = v2[70];
    v5 = v2[69];

    (*(v4 + 8))(v3, v5);
    v6 = v2[147];
    v7 = v2[146];
    v8 = sub_24F6D9A64;
  }

  else
  {
    (*(v2[70] + 8))(v2[71], v2[69]);
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v6 = v2[147];
    v7 = v2[146];
    v8 = sub_24F6D9934;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24F6D9934()
{
  v1 = v0[152];
  v2 = v0[114];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[66];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_24E601704(v2, &qword_27F212B28, &qword_24F939910);
  v9 = v0[64];
  (*(v0[74] + 56))(v9, 0, 1, v0[73]);
  sub_24E601704(v9, &qword_27F22C218, &qword_24F98FC40);
  v10 = v0[124];
  v11 = v0[123];

  return MEMORY[0x2822009F8](sub_24F6D9504, v11, v10);
}

uint64_t sub_24F6D9A64()
{
  v1 = v0[152];
  v2 = v0[114];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[66];

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);
  sub_24E601704(v2, &qword_27F212B28, &qword_24F939910);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v9 = v0[64];
  (*(v0[74] + 56))(v9, 1, 1, v0[73]);
  sub_24E601704(v9, &qword_27F22C218, &qword_24F98FC40);
  v10 = v0[124];
  v11 = v0[123];

  return MEMORY[0x2822009F8](sub_24F6D9504, v11, v10);
}

uint64_t sub_24F6D9B9C()
{
  v1 = v0[125];
  v2 = v0[120];
  v3 = v0[117];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F6D9E34()
{
  v2 = *v1;
  *(*v1 + 1248) = v0;

  v3 = *(v2 + 992);
  v4 = *(v2 + 984);
  if (v0)
  {
    v5 = sub_24F6DA374;
  }

  else
  {
    v5 = sub_24F6D9F70;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F6D9F70()
{
  v1 = v0[154];

  v2 = v0[125];
  v3 = v0[120];
  v4 = v0[117];
  sub_24F6C80F0(v0[86], type metadata accessor for CreateChallengeIntent);
  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F6DA234()
{
  v1 = v0[139];
  v0[154] = v1;
  v2 = swift_task_alloc();
  v0[155] = v2;
  *v2 = v0;
  v2[1] = sub_24F6D9E34;

  return sub_24F6DA640(v1, (v0 + 17));
}

uint64_t sub_24F6DA2D4()
{
  v1 = v0[143];
  v0[154] = v1;
  v2 = swift_task_alloc();
  v0[155] = v2;
  *v2 = v0;
  v2[1] = sub_24F6D9E34;

  return sub_24F6DA640(v1, (v0 + 17));
}

uint64_t sub_24F6DA374()
{
  v1 = v0[154];
  v2 = v0[125];
  v3 = v0[120];
  v4 = v0[117];
  v5 = v0[86];

  sub_24F6C80F0(v5, type metadata accessor for CreateChallengeIntent);
  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F6DA640(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v5 = sub_24F928AE8();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  v3[30] = v6;
  v3[31] = *(v6 - 8);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D100, &qword_24FA1D8A8);
  v3[33] = swift_task_alloc();
  sub_24F92B7F8();
  v3[34] = sub_24F92B7E8();
  v8 = sub_24F92B778();
  v3[35] = v8;
  v3[36] = v7;

  return MEMORY[0x2822009F8](sub_24F6DA840, v8, v7);
}

uint64_t sub_24F6DA840()
{
  v1 = v0[21];
  v2 = sub_24F91F268();
  v3 = [v2 domain];

  v4 = sub_24F92B0D8();
  v6 = v5;

  v0[19] = v1;
  v0[37] = v6;
  v7 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  v8 = sub_24F9207D8();
  v9 = swift_dynamicCast();
  v10 = *(*(v8 - 8) + 56);
  v11 = v0[33];
  if (v9)
  {
    v12 = *(v8 - 8);
    v10(v0[33], 0, 1, v8);
    v13 = sub_24F9207C8();
    v15 = v14;
    (*(v12 + 8))(v11, v8);
    if (v15)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10(v0[33], 1, 1, v8);
    sub_24E601704(v11, &qword_27F24D100, &qword_24FA1D8A8);
  }

  swift_getErrorValue();
  v13 = sub_24F92CFE8();
  v15 = v16;

LABEL_6:
  v0[38] = v15;
  v17 = v0[22];
  v18 = v0[23];
  v19 = v17[3];
  v20 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v19);
  v0[12] = v4;
  v0[13] = v6;
  v0[14] = v13;
  v0[15] = v15;
  v21 = *(v18 + *(type metadata accessor for ChallengePreCreationView(0) + 60));
  v0[39] = v21;
  v22 = swift_task_alloc();
  v0[40] = v22;
  v23 = sub_24F6E3058();
  *v22 = v0;
  v22[1] = sub_24F6DAAD0;

  return MEMORY[0x28217F4B0](v0 + 7, v0 + 12, v21, &type metadata for ChallengeCreationFailedActionIntent, v23, v19, v20);
}

uint64_t sub_24F6DAAD0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_24F6DB13C;
  }

  else
  {

    v3 = *(v2 + 280);
    v4 = *(v2 + 288);
    v5 = sub_24F6DABF4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F6DABF4()
{
  sub_24E612C80((v0 + 56), v0 + 16);
  v1 = swift_task_alloc();
  *(v0 + 336) = v1;
  *v1 = v0;
  v1[1] = sub_24F6DACA4;
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);

  return MEMORY[0x28217F228](v2, v3, v3);
}

uint64_t sub_24F6DACA4()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_24F6DB1E4;
  }

  else
  {
    v5 = sub_24F6DADE0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F6DADE0()
{
  (*(v0[25] + 104))(v0[26], *MEMORY[0x277D21E18], v0[24]);
  v1 = swift_task_alloc();
  v0[44] = v1;
  *v1 = v0;
  v1[1] = sub_24F6DAEAC;
  v2 = v0[39];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[26];

  return MEMORY[0x28217F468](v3, v0 + 2, v5, v2, v4);
}

uint64_t sub_24F6DAEAC()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    (*(v2[25] + 8))(v2[26], v2[24]);
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_24F6DB280;
  }

  else
  {
    v7 = v2[28];
    v6 = v2[29];
    v8 = v2[27];
    (*(v2[25] + 8))(v2[26], v2[24]);
    (*(v7 + 8))(v6, v8);
    v3 = v2[35];
    v4 = v2[36];
    v5 = sub_24F6DB014;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F6DB014()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[23];

  *(swift_task_alloc() + 16) = v4;
  sub_24F9276F8();
  sub_24F923B18();

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F6DB13C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6DB1E4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F6DB280()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F6DB33C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ChallengePreCreationView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24D0D8, &unk_24FA1D7F8);
  return sub_24F927178();
}

uint64_t sub_24F6DB3E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33[1] = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF08, &qword_24FA1D4E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF10, &qword_24FA1D4E8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF18, &qword_24FA1D4F0);
  MEMORY[0x28223BE20](v13);
  v15 = v33 - v14;
  *v8 = sub_24F924C88();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v16 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF20, &qword_24FA1D4F8) + 44)];
  v33[2] = a1;
  sub_24F6DB85C(a1, v16);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v8, v12, &qword_27F24CF08, &qword_24FA1D4E0);
  v17 = &v12[*(v10 + 44)];
  v18 = v42;
  v19 = v43;
  *(v17 + 4) = v41;
  *(v17 + 5) = v18;
  *(v17 + 6) = v19;
  v20 = v38;
  *v17 = v37;
  *(v17 + 1) = v20;
  v21 = v40;
  *(v17 + 2) = v39;
  *(v17 + 3) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  LOBYTE(v8) = sub_24F925818();
  *(inited + 32) = v8;
  v23 = sub_24F925828();
  *(inited + 33) = v23;
  v24 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v8)
  {
    v24 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v23)
  {
    v24 = sub_24F925848();
  }

  v25 = sub_24F924058();
  v26 = sub_24F927618();
  v28 = v27;
  sub_24E6009C8(v12, v15, &qword_27F24CF10, &qword_24FA1D4E8);
  v29 = &v15[*(v13 + 36)];
  *v29 = 512;
  v29[2] = 0;
  *(v29 + 1) = v25;
  v29[16] = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v30 = sub_24E6A4C1C();
  sub_24F924B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF28, &qword_24FA1D500);
  sub_24F6DFECC();
  v35 = &type metadata for GameOverlayViewPredicate;
  v36 = v30;
  swift_getOpaqueTypeConformance2();
  sub_24F6E00F4();
  v31 = v34;
  sub_24F926B08();
  (*(v3 + 8))(v5, v31);
  return sub_24E601704(v15, &qword_27F24CF18, &qword_24FA1D4F0);
}

uint64_t sub_24F6DB85C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF70, &qword_24FA1D528);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v31 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF78, &qword_24FA1D530);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  *v14 = sub_24F924C88();
  *(v14 + 1) = 0x4020000000000000;
  v14[16] = 0;
  v15 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF80, &qword_24FA1D538) + 44)];
  v29 = v14;
  sub_24F6DBD2C(a1, v15);
  v30 = sub_24F924C88();
  v36 = 0;
  sub_24F6DC59C(a1, &v50);
  v45 = v51[7];
  v46 = v51[8];
  v47[0] = v51[9];
  *(v47 + 12) = *(&v51[9] + 12);
  v41 = v51[3];
  v42 = v51[4];
  v43 = v51[5];
  v44 = v51[6];
  v37 = v50;
  v38 = v51[0];
  v39 = v51[1];
  v40 = v51[2];
  v48[8] = v51[7];
  v48[9] = v51[8];
  v49[0] = v51[9];
  *(v49 + 12) = *(&v51[9] + 12);
  v48[4] = v51[3];
  v48[5] = v51[4];
  v48[6] = v51[5];
  v48[7] = v51[6];
  v48[0] = v50;
  v48[1] = v51[0];
  v48[2] = v51[1];
  v48[3] = v51[2];
  sub_24E60169C(&v37, v33, &qword_27F24CF88, &qword_24FA1D540);
  sub_24E601704(v48, &qword_27F24CF88, &qword_24FA1D540);
  *&v35[135] = v45;
  *&v35[151] = v46;
  *&v35[167] = v47[0];
  *&v35[179] = *(v47 + 12);
  *&v35[71] = v41;
  *&v35[87] = v42;
  *&v35[103] = v43;
  *&v35[119] = v44;
  *&v35[7] = v37;
  *&v35[23] = v38;
  *&v35[39] = v39;
  *&v35[55] = v40;
  *(&v51[9] + 1) = *&v35[144];
  *(&v51[10] + 1) = *&v35[160];
  *(&v51[11] + 1) = *&v35[176];
  *(&v51[5] + 1) = *&v35[80];
  *(&v51[6] + 1) = *&v35[96];
  *(&v51[7] + 1) = *&v35[112];
  *(&v51[8] + 1) = *&v35[128];
  *(&v51[1] + 1) = *&v35[16];
  *(&v51[2] + 1) = *&v35[32];
  *(&v51[3] + 1) = *&v35[48];
  *&v50 = v30;
  *(&v50 + 1) = 0x4030000000000000;
  LOBYTE(v51[0]) = v36;
  LODWORD(v51[12]) = DWORD2(v47[1]);
  *(&v51[4] + 1) = *&v35[64];
  *(v51 + 1) = *v35;
  v33[10] = v51[9];
  v33[11] = v51[10];
  v33[12] = v51[11];
  v34 = DWORD2(v47[1]);
  v33[6] = v51[5];
  v33[7] = v51[6];
  v33[8] = v51[7];
  v33[9] = v51[8];
  v33[2] = v51[1];
  v33[3] = v51[2];
  v33[4] = v51[3];
  v33[5] = v51[4];
  v33[0] = v50;
  v33[1] = v51[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CF90, &qword_24FA1D548);
  sub_24E602068(&qword_27F24CF98, &qword_27F24CF90, &qword_24FA1D548, MEMORY[0x277CE1198]);
  sub_24F9268B8();
  sub_24E601704(&v50, &qword_27F24CF90, &qword_24FA1D548);
  v16 = sub_24F925828();
  sub_24F923318();
  v17 = &v8[*(v4 + 44)];
  *v17 = v16;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  v22 = v14;
  v23 = v11;
  sub_24E60169C(v22, v11, &qword_27F24CF78, &qword_24FA1D530);
  v24 = v31;
  sub_24E60169C(v8, v31, &qword_27F24CF70, &qword_24FA1D528);
  v25 = v32;
  *v32 = 0;
  *(v25 + 8) = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CFA0, &qword_24FA1D550);
  sub_24E60169C(v23, v25 + v26[12], &qword_27F24CF78, &qword_24FA1D530);
  v27 = v25 + v26[16];
  *v27 = 0;
  v27[8] = 1;
  sub_24E60169C(v24, v25 + v26[20], &qword_27F24CF70, &qword_24FA1D528);
  sub_24E601704(v8, &qword_27F24CF70, &qword_24FA1D528);
  sub_24E601704(v29, &qword_27F24CF78, &qword_24FA1D530);
  sub_24E601704(v24, &qword_27F24CF70, &qword_24FA1D528);
  return sub_24E601704(v23, &qword_27F24CF78, &qword_24FA1D530);
}

uint64_t sub_24F6DBD2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CFB8, &qword_24FA1D5B8);
  v3 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v64 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v68 = &v64 - v8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227940, &qword_24F97F9E8);
  MEMORY[0x28223BE20](v67);
  v69 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v64 - v14;
  v16 = type metadata accessor for GameActivityDraftGameInfo(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v85[0] = a1;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v20 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(a1 + v20, v15, &qword_27F212B28, &qword_24F939910);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24E601704(v15, &qword_27F212B28, &qword_24F939910);
    return (*(v3 + 56))(v75, 1, 1, v74);
  }

  else
  {
    v66 = v3;
    sub_24F6C82A0(v15, v19, type metadata accessor for GameActivityDraftGameInfo);
    v22 = *(v16 + 28);
    v23 = sub_24F9289E8();
    v24 = *(v23 - 8);
    (*(v24 + 16))(v12, &v19[v22], v23);
    (*(v24 + 56))(v12, 0, 1, v23);
    v25 = type metadata accessor for GameIcon(0);
    v26 = v25[8];
    *&v12[v26] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
    swift_storeEnumTagMultiPayload();
    v12[v25[5]] = 1;
    v12[v25[6]] = 1;
    v12[v25[7]] = 0;
    if (qword_27F211950 != -1)
    {
      swift_once();
    }

    v27 = xmmword_27F254400;
    v28 = qword_27F254410;
    v29 = qword_27F254418;
    v30 = sub_24F927618();
    v32 = v31;
    LOBYTE(v81) = 1;
    *(&v81 + 1) = 0;
    *&v82 = 0;
    *(&v82 + 1) = v29;
    *v83 = v28;
    *&v83[8] = v27;
    *&v83[24] = v30;
    v84 = v31;
    v33 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219598, &unk_24F94C490) + 36)];
    v34 = *&v83[16];
    *(v33 + 2) = *v83;
    *(v33 + 3) = v34;
    *(v33 + 8) = v84;
    v35 = v82;
    *v33 = v81;
    *(v33 + 1) = v35;
    LOBYTE(v85[0]) = 1;
    v85[1] = 0;
    v85[2] = 0;
    v85[3] = v29;
    v85[4] = v28;
    v86 = v27;
    v87 = v30;
    v88 = v32;

    sub_24E60169C(&v81, v80, &qword_27F2195A8, &qword_24F97FA00);
    sub_24E601704(v85, &qword_27F2195A8, &qword_24F97FA00);
    sub_24F927618();
    sub_24F9238C8();
    v36 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219588, &unk_24F97F9F0) + 36)];
    v37 = v80[1];
    *v36 = v80[0];
    *(v36 + 1) = v37;
    *(v36 + 2) = v80[2];
    sub_24F9278A8();
    v38 = &v12[*(v67 + 9)];
    *v38 = 0x3FC657184AE74487;
    *(v38 + 1) = v39;
    *(v38 + 2) = v40;
    v41 = *(v19 + 5);
    v76 = *(v19 + 4);
    v77 = v41;
    sub_24E600AEC();

    v42 = sub_24F925E18();
    v44 = v43;
    LOBYTE(v32) = v45;
    sub_24F925888();
    v65 = v12;
    v67 = v19;
    v46 = sub_24F925C98();
    v48 = v47;
    v50 = v49;
    v52 = v51;

    sub_24E600B40(v42, v44, v32 & 1);

    v76 = v46;
    v77 = v48;
    v50 &= 1u;
    v78 = v50;
    v79 = v52;
    v53 = v68;
    sub_24F9268B8();
    sub_24E600B40(v46, v48, v50);

    v54 = v65;
    v55 = v69;
    sub_24E60169C(v65, v69, &qword_27F227940, &qword_24F97F9E8);
    v57 = v70;
    v56 = v71;
    v58 = *(v71 + 16);
    v59 = v72;
    v58(v70, v53, v72);
    v60 = v73;
    sub_24E60169C(v55, v73, &qword_27F227940, &qword_24F97F9E8);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24CFC0, &qword_24FA1D5F0);
    v58((v60 + *(v61 + 48)), v57, v59);
    v62 = *(v56 + 8);
    v62(v53, v59);
    sub_24E601704(v54, &qword_27F227940, &qword_24F97F9E8);
    sub_24F6C80F0(v67, type metadata accessor for GameActivityDraftGameInfo);
    v62(v57, v59);
    sub_24E601704(v55, &qword_27F227940, &qword_24F97F9E8);
    v63 = v75;
    sub_24E6009C8(v60, v75, &qword_27F24CFB8, &qword_24FA1D5B8);
    return (*(v66 + 56))(v63, 0, 1, v74);
  }
}

uint64_t sub_24F6DC59C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v49 - v4;
  v59 = sub_24F920A88();
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChallengeDefinitionDetail(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - v11;
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft___observationRegistrar;
  *&v82 = a1;
  v14 = sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  v51 = v13;
  v49 = v14;
  sub_24F91FD88();

  v15 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__definition;
  swift_beginAccess();
  sub_24E60169C(a1 + v15, v12, &qword_27F212A08, &qword_24F9397D0);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    sub_24E601704(v12, &qword_27F212A08, &qword_24F9397D0);
    v57 = 0;
    v58 = 0;
    v53 = 0;
    v55 = 0;
  }

  else
  {
    sub_24F6C8308(v12, v9, type metadata accessor for ChallengeDefinitionDetail);
    sub_24E601704(v12, &qword_27F212A08, &qword_24F9397D0);
    v17 = *(v9 + 2);
    v16 = *(v9 + 3);

    sub_24F6C80F0(v9, type metadata accessor for ChallengeDefinitionDetail);
    *&v82 = v17;
    *(&v82 + 1) = v16;
    sub_24E600AEC();
    v18 = sub_24F925E18();
    v20 = v19;
    v22 = v21;
    sub_24F925A28();
    v23 = sub_24F925C98();
    v25 = v24;
    LODWORD(v58) = v26;
    v28 = v27;

    sub_24E600B40(v18, v20, v22 & 1);

    v29 = v58 & 1;
    v57 = v25;
    v58 = v23;
    v53 = v29;
    sub_24E5FD138(v23, v25, v29);
    v55 = v28;
  }

  swift_getKeyPath();
  *&v82 = a1;
  sub_24F91FD88();

  v30 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__attemptLimit;
  swift_beginAccess();
  v31 = v52;
  sub_24E60169C(a1 + v30, v52, &qword_27F2198F8, &unk_24F94CFA0);
  v32 = v56;
  v33 = v59;
  if ((*(v56 + 48))(v31, 1, v59) == 1)
  {
    sub_24E601704(v31, &qword_27F2198F8, &unk_24F94CFA0);
LABEL_9:
    sub_24F6E01E8(&v82);
    goto LABEL_10;
  }

  (*(v32 + 32))(v54, v31, v33);
  swift_getKeyPath();
  v34 = v32;
  *&v82 = a1;
  sub_24F91FD88();

  v35 = *(a1 + OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__durationRule);
  if (!v35)
  {
    (*(v34 + 8))(v54, v59);
    goto LABEL_9;
  }

  v52 = sub_24F9249A8();
  v61 = 0;
  v36 = v54;
  sub_24F6DCD8C(v54, v35, &v82);
  v66 = v86;
  v67 = v87;
  v68 = v88;
  v69 = v89;
  v62 = v82;
  v63 = v83;
  v64 = v84;
  v65 = v85;
  v71 = v82;
  v72 = v83;
  v73 = v84;
  v74 = v85;
  v75 = v86;
  v76 = v87;
  v77 = v88;
  v78 = v89;
  sub_24E60169C(&v62, &v80, &qword_27F24CFB0, &qword_24FA1D5B0);
  sub_24E601704(&v71, &qword_27F24CFB0, &qword_24FA1D5B0);

  *&v60[71] = v66;
  *&v60[87] = v67;
  *&v60[103] = v68;
  *&v60[119] = v69;
  *&v60[7] = v62;
  *&v60[23] = v63;
  *&v60[39] = v64;
  *&v60[55] = v65;
  v37 = v61;
  v38 = sub_24F9251C8();
  *(&v81[5] + 1) = *&v60[80];
  *(&v81[6] + 1) = *&v60[96];
  *(&v81[7] + 1) = *&v60[112];
  *(&v81[1] + 1) = *&v60[16];
  *(&v81[2] + 1) = *&v60[32];
  *(&v81[3] + 1) = *&v60[48];
  *(&v81[4] + 1) = *&v60[64];
  *&v80 = v52;
  *(&v80 + 1) = 0x4030000000000000;
  LOBYTE(v81[0]) = v37;
  *&v81[8] = *&v60[127];
  *(v81 + 1) = *v60;
  DWORD2(v81[8]) = v38;
  CGSizeMake();
  (*(v34 + 8))(v36, v59);
  v88 = v81[5];
  v89 = v81[6];
  v90[0] = v81[7];
  *(v90 + 12) = *(&v81[7] + 12);
  v84 = v81[1];
  v85 = v81[2];
  v86 = v81[3];
  v87 = v81[4];
  v82 = v80;
  v83 = v81[0];
LABEL_10:
  v68 = v88;
  v69 = v89;
  v70[0] = v90[0];
  *(v70 + 12) = *(v90 + 12);
  v64 = v84;
  v65 = v85;
  v66 = v86;
  v67 = v87;
  v62 = v82;
  v63 = v83;
  v77 = v88;
  v78 = v89;
  v79[0] = v90[0];
  *(v79 + 12) = *(v90 + 12);
  v73 = v84;
  v74 = v85;
  v75 = v86;
  v76 = v87;
  v71 = v82;
  v72 = v83;
  v40 = v57;
  v39 = v58;
  v41 = v53;
  v42 = v55;
  sub_24E65D2B4(v58, v57, v53, v55);
  sub_24E60169C(&v71, &v80, &qword_27F24CFA8, &qword_24FA1D580);
  sub_24E65D2F8(v39, v40, v41, v42);
  v43 = v50;
  *v50 = v39;
  v43[1] = v40;
  v43[2] = v41;
  v43[3] = v42;
  v44 = v78;
  *(v43 + 8) = v77;
  *(v43 + 9) = v44;
  *(v43 + 10) = v79[0];
  *(v43 + 172) = *(v79 + 12);
  v45 = v74;
  *(v43 + 4) = v73;
  *(v43 + 5) = v45;
  v46 = v76;
  *(v43 + 6) = v75;
  *(v43 + 7) = v46;
  v47 = v72;
  *(v43 + 2) = v71;
  *(v43 + 3) = v47;
  v81[5] = v68;
  v81[6] = v69;
  v81[7] = v70[0];
  *(&v81[7] + 12) = *(v70 + 12);
  v81[1] = v64;
  v81[2] = v65;
  v81[3] = v66;
  v81[4] = v67;
  v80 = v62;
  v81[0] = v63;
  sub_24E601704(&v80, &qword_27F24CFA8, &qword_24FA1D580);
  return sub_24E65D2F8(v39, v40, v41, v42);
}

uint64_t sub_24F6DCD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = sub_24F9249A8();
  sub_24F6DCEFC(a1, &v19);
  v6 = v20;
  v18 = v19;
  v7 = v21;
  v8 = v22;
  v9 = v23;
  v25 = 0;
  v24 = v22;
  v16 = sub_24F9249A8();
  sub_24F6DD108(a2, &v19);
  v11 = v19;
  v10 = v20;
  v12 = v21;
  v13 = v22;
  v14 = v23;
  LOBYTE(v19) = 0;
  v26 = v22;
  *a3 = v17;
  *(a3 + 8) = 0x4010000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = v18;
  *(a3 + 32) = v6;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  *(a3 + 64) = v16;
  *(a3 + 72) = 0x4010000000000000;
  *(a3 + 80) = 0;
  *(a3 + 88) = v11;
  *(a3 + 96) = v10;
  *(a3 + 104) = v12;
  *(a3 + 112) = v13;
  *(a3 + 120) = v14;

  sub_24E5FD138(v6, v7, v8);

  sub_24E5FD138(v10, v12, v13);

  sub_24E600B40(v10, v12, v13);

  sub_24E600B40(v6, v7, v8);
}

uint64_t sub_24F6DCEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F920A88();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 != *MEMORY[0x277D0D0E8] && v9 != *MEMORY[0x277D0D0F0])
  {
    (*(v5 + 8))(v8, v4);
  }

  v10 = sub_24F926E48();
  v19[0] = sub_24EF5C904(a1);
  v19[1] = v11;
  sub_24E600AEC();
  v12 = sub_24F925E18();
  v14 = v13;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v13;
  v16 = v15 & 1;
  *(a2 + 24) = v15 & 1;
  *(a2 + 32) = v17;

  sub_24E5FD138(v12, v14, v16);

  sub_24E600B40(v12, v14, v16);
}

uint64_t sub_24F6DD108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24EF5B040(a1);
  v4 = sub_24F926E48();
  sub_24EF52A10(a1, 0);
  sub_24E600AEC();
  v5 = sub_24F925E18();
  v7 = v6;
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  v9 = v8 & 1;
  *(a2 + 24) = v8 & 1;
  *(a2 + 32) = v10;

  sub_24E5FD138(v5, v7, v9);

  sub_24E600B40(v5, v7, v9);
}

uint64_t sub_24F6DD24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v22 = a1;
  v4 = type metadata accessor for GameActivityDraftGameInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  swift_getKeyPath();
  v23 = a2;
  sub_24F6C8150(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);
  sub_24F91FD88();

  v14 = OBJC_IVAR____TtC12GameStoreKit17GameActivityDraft__gameInfo;
  swift_beginAccess();
  sub_24E60169C(a2 + v14, v10, &qword_27F212B28, &qword_24F939910);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_24E601704(v10, &qword_27F212B28, &qword_24F939910);
    v15 = sub_24F9289E8();
    (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
  }

  else
  {
    sub_24F6C8308(v10, v7, type metadata accessor for GameActivityDraftGameInfo);
    sub_24E601704(v10, &qword_27F212B28, &qword_24F939910);
    v16 = *(v4 + 28);
    v17 = sub_24F9289E8();
    v18 = *(v17 - 8);
    (*(v18 + 16))(v13, &v7[v16], v17);
    sub_24F6C80F0(v7, type metadata accessor for GameActivityDraftGameInfo);
    (*(v18 + 56))(v13, 0, 1, v17);
  }

  sub_24F6C513C(v13, 0, v21);
  return sub_24E601704(v13, &qword_27F213FB0, &qword_24F93E6B0);
}

unint64_t sub_24F6DD5C8()
{
  result = qword_27F24CE20;
  if (!qword_27F24CE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE20);
  }

  return result;
}

unint64_t sub_24F6DD620()
{
  result = qword_27F24CE28;
  if (!qword_27F24CE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE28);
  }

  return result;
}

unint64_t sub_24F6DD678()
{
  result = qword_27F24CE30;
  if (!qword_27F24CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE30);
  }

  return result;
}

unint64_t sub_24F6DD6D0()
{
  result = qword_27F24CE38;
  if (!qword_27F24CE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE38);
  }

  return result;
}

unint64_t sub_24F6DD728()
{
  result = qword_27F24CE40;
  if (!qword_27F24CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE40);
  }

  return result;
}

unint64_t sub_24F6DD780()
{
  result = qword_27F24CE48;
  if (!qword_27F24CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE48);
  }

  return result;
}

unint64_t sub_24F6DD7F0()
{
  result = qword_27F24CE60;
  if (!qword_27F24CE60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE58, &qword_24FA1D310);
    sub_24F6DD874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE60);
  }

  return result;
}

unint64_t sub_24F6DD874()
{
  result = qword_27F24CE68;
  if (!qword_27F24CE68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE70, &qword_24FA1D318);
    sub_24F6DD900();
    sub_24F6DDA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE68);
  }

  return result;
}

unint64_t sub_24F6DD900()
{
  result = qword_27F24CE78;
  if (!qword_27F24CE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE80, &qword_24FA1D320);
    sub_24F074728();
    sub_24F6DD98C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE78);
  }

  return result;
}

unint64_t sub_24F6DD98C()
{
  result = qword_27F24CE88;
  if (!qword_27F24CE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE90, &qword_24FA1D328);
    sub_24F6C8150(&qword_27F24CE98, type metadata accessor for ChallengePreCreationView, &unk_24FA1CFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CE88);
  }

  return result;
}

unint64_t sub_24F6DDA48()
{
  result = qword_27F24CEA0;
  if (!qword_27F24CEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CEA8, &qword_24FA1D330);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CEB0, &qword_24FA1D338);
    sub_24F6DDBC4();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DE8, &qword_24FA07590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219DC8, &unk_24F94D3F0);
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CEA0);
  }

  return result;
}

unint64_t sub_24F6DDBC4()
{
  result = qword_27F24CEB8;
  if (!qword_27F24CEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CEB0, &qword_24FA1D338);
    sub_24F6DDC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CEB8);
  }

  return result;
}

unint64_t sub_24F6DDC50()
{
  result = qword_27F24CEC0;
  if (!qword_27F24CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CEC0);
  }

  return result;
}

unint64_t sub_24F6DDCA4()
{
  result = qword_27F24CEC8;
  if (!qword_27F24CEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE50, &qword_24FA1D308);
    sub_24F6DDD30();
    sub_24E669F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CEC8);
  }

  return result;
}

unint64_t sub_24F6DDD30()
{
  result = qword_27F24CED0;
  if (!qword_27F24CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CED8, &qword_24FA1D340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CE58, &qword_24FA1D310);
    sub_24F6DD7F0();
    swift_getOpaqueTypeConformance2();
    sub_24E669F00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CED0);
  }

  return result;
}

uint64_t sub_24F6DDDFC()
{
  v2 = *(type metadata accessor for ChallengesReviewView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24E6541E4;

  return sub_24F6CDEE4(v4, v5, v0 + v3);
}

uint64_t objectdestroyTm_82()
{
  v1 = type metadata accessor for ChallengesReviewView(0);
  v67 = *(*(v1 - 1) + 80);
  swift_unknownObjectRelease();
  v2 = (v0 + ((v67 + 32) & ~v67));
  if (*v2 >= 3)
  {
  }

  v3 = v2 + v1[6];

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  v70 = v6;
  v68 = *(v7 + 8);
  v68(&v3[v5]);

  if (*&v3[v4[9] + 8] != 1)
  {
  }

  v8 = &v3[v4[13]];
  v9 = type metadata accessor for CallProviderConversationHandleSet(0);
  v69 = v1;
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for CallProviderConversationHandle(0);
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v7 + 48))(&v8[v12], 1, v70))
      {
        (v68)(&v8[v12], v70);
      }
    }

    v13 = &v8[*(v9 + 20)];
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v7 + 48))(&v13[v14], 1, v70))
      {
        (v68)(&v13[v14], v70);
      }
    }

    v1 = v69;
  }

  if (*&v3[v4[15] + 8])
  {
  }

  v15 = &v3[v4[16]];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {

    v17 = type metadata accessor for Game(0);
    (v68)(&v15[v17[18]], v70);
    v18 = v17[19];
    if (!(*(v7 + 48))(&v15[v18], 1, v70))
    {
      (v68)(&v15[v18], v70);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&v15[v19], 1, v20))
    {
      (*(v21 + 8))(&v15[v19], v20);
    }
  }

  v22 = &v3[v4[17]];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game(0);
    (v68)(&v22[v24[18]], v70);
    v25 = v24[19];
    if (!(*(v7 + 48))(&v22[v25], 1, v70))
    {
      (v68)(&v22[v25], v70);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(&v22[v26], 1, v27))
    {
      (*(v28 + 8))(&v22[v26], v27);
    }
  }

  v29 = v2 + v1[9];
  v30 = sub_24F92A708();
  v31 = *(*(v30 - 8) + 8);
  v31(v29, v30);
  v66 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  v32 = *(v66 + 20);
  v33 = sub_24F928818();
  v34 = *(*(v33 - 8) + 8);
  v34(&v29[v32], v33);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[10]));
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[11]));

  v35 = v2 + v1[13];
  v36 = type metadata accessor for ChallengeDefinitionDraftInfo(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v65 = v31;

    v37 = &v35[*(v36 + 28)];
    v38 = type metadata accessor for GameActivityDraftGameInfo(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      (v68)(&v37[*(v38 + 28)], v70);
    }

    v39 = *(v36 + 36);
    v40 = sub_24F920A88();
    v41 = *(v40 - 8);
    v31 = v65;
    if (!(*(v41 + 48))(&v35[v39], 1, v40))
    {
      (*(v41 + 8))(&v35[v39], v40);
    }
  }

  v42 = v2 + v69[14];
  v31(v42, v30);
  v43 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v44 = &v42[v43[5]];
  sub_24E6F246C(*v44, *(v44 + 1), *(v44 + 2), v44[24]);
  sub_24E600C4C(*(v44 + 4), *(v44 + 5), *(v44 + 6), v44[56]);

  v45 = &v42[v43[8]];
  v31(v45, v30);
  v34(&v45[*(v66 + 20)], v33);
  __swift_destroy_boxed_opaque_existential_1(&v42[v43[9]]);
  __swift_destroy_boxed_opaque_existential_1(&v42[v43[10]]);
  v34(&v42[v43[11]], v33);
  if (*&v42[v43[12] + 8])
  {
  }

  v46 = &v42[v43[13]];
  v47 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  v48 = *(*(v47 - 8) + 48);
  if (!v48(v46, 1, v47))
  {
    v49 = *(v47 + 20);
    v50 = sub_24F928698();
    (*(*(v50 - 8) + 8))(&v46[v49], v50);
  }

  v51 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v52 = &v46[v51[5]];
  if (!v48(v52, 1, v47))
  {
    v53 = *(v47 + 20);
    v54 = sub_24F928698();
    (*(*(v54 - 8) + 8))(&v52[v53], v54);
  }

  v55 = &v46[v51[6]];
  if (!v48(v55, 1, v47))
  {
    v56 = *(v47 + 20);
    v57 = sub_24F928698();
    (*(*(v57 - 8) + 8))(&v55[v56], v57);
  }

  v58 = &v46[v51[7]];
  if (!v48(v58, 1, v47))
  {
    v59 = *(v47 + 20);
    v60 = sub_24F928698();
    (*(*(v60 - 8) + 8))(&v58[v59], v60);
  }

  v61 = &v46[v51[8]];
  if (!v48(v61, 1, v47))
  {
    v62 = *(v47 + 20);
    v63 = sub_24F928698();
    (*(*(v63 - 8) + 8))(&v61[v62], v63);
  }

  return swift_deallocObject();
}

uint64_t sub_24F6DEAC8()
{
  type metadata accessor for ChallengesReviewView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  return sub_24F6D02EC();
}

uint64_t sub_24F6DEC70()
{
  v1 = type metadata accessor for ChallengesReviewView(0);
  v67 = *(*(v1 - 1) + 80);
  v2 = (v0 + ((v67 + 16) & ~v67));
  if (*v2 >= 3)
  {
  }

  v3 = v2 + v1[6];

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  v70 = v6;
  v68 = *(v7 + 8);
  v68(&v3[v5]);

  if (*&v3[v4[9] + 8] != 1)
  {
  }

  v8 = &v3[v4[13]];
  v9 = type metadata accessor for CallProviderConversationHandleSet(0);
  v69 = v1;
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = type metadata accessor for CallProviderConversationHandle(0);
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v7 + 48))(&v8[v12], 1, v70))
      {
        (v68)(&v8[v12], v70);
      }
    }

    v13 = &v8[*(v9 + 20)];
    if (!v11(v13, 1, v10))
    {

      v14 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v7 + 48))(&v13[v14], 1, v70))
      {
        (v68)(&v13[v14], v70);
      }
    }

    v1 = v69;
  }

  if (*&v3[v4[15] + 8])
  {
  }

  v15 = &v3[v4[16]];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v15, 1, PlayedTogetherInfo))
  {

    v17 = type metadata accessor for Game(0);
    (v68)(&v15[v17[18]], v70);
    v18 = v17[19];
    if (!(*(v7 + 48))(&v15[v18], 1, v70))
    {
      (v68)(&v15[v18], v70);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(&v15[v19], 1, v20))
    {
      (*(v21 + 8))(&v15[v19], v20);
    }
  }

  v22 = &v3[v4[17]];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v22, 1, ChallengeInfo))
  {

    v24 = type metadata accessor for Game(0);
    (v68)(&v22[v24[18]], v70);
    v25 = v24[19];
    if (!(*(v7 + 48))(&v22[v25], 1, v70))
    {
      (v68)(&v22[v25], v70);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(&v22[v26], 1, v27))
    {
      (*(v28 + 8))(&v22[v26], v27);
    }
  }

  v29 = v2 + v1[9];
  v30 = sub_24F92A708();
  v31 = *(*(v30 - 8) + 8);
  v31(v29, v30);
  v66 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  v32 = *(v66 + 20);
  v33 = sub_24F928818();
  v34 = *(*(v33 - 8) + 8);
  v34(&v29[v32], v33);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[10]));
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[11]));

  v35 = v2 + v1[13];
  v36 = type metadata accessor for ChallengeDefinitionDraftInfo(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    v65 = v31;

    v37 = &v35[*(v36 + 28)];
    v38 = type metadata accessor for GameActivityDraftGameInfo(0);
    if (!(*(*(v38 - 8) + 48))(v37, 1, v38))
    {

      (v68)(&v37[*(v38 + 28)], v70);
    }

    v39 = *(v36 + 36);
    v40 = sub_24F920A88();
    v41 = *(v40 - 8);
    v31 = v65;
    if (!(*(v41 + 48))(&v35[v39], 1, v40))
    {
      (*(v41 + 8))(&v35[v39], v40);
    }
  }

  v42 = v2 + v69[14];
  v31(v42, v30);
  v43 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v44 = &v42[v43[5]];
  sub_24E6F246C(*v44, *(v44 + 1), *(v44 + 2), v44[24]);
  sub_24E600C4C(*(v44 + 4), *(v44 + 5), *(v44 + 6), v44[56]);

  v45 = &v42[v43[8]];
  v31(v45, v30);
  v34(&v45[*(v66 + 20)], v33);
  __swift_destroy_boxed_opaque_existential_1(&v42[v43[9]]);
  __swift_destroy_boxed_opaque_existential_1(&v42[v43[10]]);
  v34(&v42[v43[11]], v33);
  if (*&v42[v43[12] + 8])
  {
  }

  v46 = &v42[v43[13]];
  v47 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  v48 = *(*(v47 - 8) + 48);
  if (!v48(v46, 1, v47))
  {
    v49 = *(v47 + 20);
    v50 = sub_24F928698();
    (*(*(v50 - 8) + 8))(&v46[v49], v50);
  }

  v51 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v52 = &v46[v51[5]];
  if (!v48(v52, 1, v47))
  {
    v53 = *(v47 + 20);
    v54 = sub_24F928698();
    (*(*(v54 - 8) + 8))(&v52[v53], v54);
  }

  v55 = &v46[v51[6]];
  if (!v48(v55, 1, v47))
  {
    v56 = *(v47 + 20);
    v57 = sub_24F928698();
    (*(*(v57 - 8) + 8))(&v55[v56], v57);
  }

  v58 = &v46[v51[7]];
  if (!v48(v58, 1, v47))
  {
    v59 = *(v47 + 20);
    v60 = sub_24F928698();
    (*(*(v60 - 8) + 8))(&v58[v59], v60);
  }

  v61 = &v46[v51[8]];
  if (!v48(v61, 1, v47))
  {
    v62 = *(v47 + 20);
    v63 = sub_24F928698();
    (*(*(v63 - 8) + 8))(&v61[v62], v63);
  }

  return swift_deallocObject();
}

double sub_24F6DF854()
{
  v1 = *(type metadata accessor for ChallengesReviewView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24F6CB5A0(v2);
}

void sub_24F6DF8B4(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_24F6DF8D4()
{
  type metadata accessor for ChallengesReviewView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24F6CB780();
}

uint64_t sub_24F6DF9C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x800000024FA4C150 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000024FA7C4B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA7C4D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000024FA7C4F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000024FA4C190 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F6DFB78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52746C7561666564 && a2 == 0xEC00000073656C75 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4F656C7552797274 && a2 == 0xEE00736E6F697470 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C7552656D6974 && a2 == 0xEF736E6F6974704FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA7C510 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000024FA4C1B0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA4C1D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA459C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 9;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24F6DFECC()
{
  result = qword_27F24CF30;
  if (!qword_27F24CF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CF18, &qword_24FA1D4F0);
    sub_24F6DFF84();
    sub_24E602068(&qword_27F24CF58, &qword_27F24CF60, &unk_24FA1D518, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CF30);
  }

  return result;
}

unint64_t sub_24F6DFF84()
{
  result = qword_27F24CF38;
  if (!qword_27F24CF38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CF10, &qword_24FA1D4E8);
    sub_24F6E0010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CF38);
  }

  return result;
}

unint64_t sub_24F6E0010()
{
  result = qword_27F24CF40;
  if (!qword_27F24CF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CF08, &qword_24FA1D4E0);
    sub_24E602068(&qword_27F24CF48, &qword_27F24CF50, &unk_24FA1D508, MEMORY[0x277CE1198]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CF40);
  }

  return result;
}

unint64_t sub_24F6E00F4()
{
  result = qword_27F24CF68;
  if (!qword_27F24CF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24CF28, &qword_24FA1D500);
    sub_24F6DFECC();
    sub_24E602068(&qword_27F214CD8, &qword_27F214CE0, &unk_24F93E7D0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24CF68);
  }

  return result;
}

double sub_24F6E01E8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 140) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t objectdestroy_103Tm()
{
  v1 = type metadata accessor for ChallengePreCreationView(0);
  v67 = *(*(v1 - 1) + 80);
  v2 = v0 + ((v67 + 16) & ~v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F925218();
    v4 = *(v3 - 8);
    if (!(*(v4 + 48))(v2, 1, v3))
    {
      (*(v4 + 8))(v2, v3);
    }
  }

  else
  {
  }

  v5 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v2 + v1[7];

  v9 = *(v8 + 16);
  if (v9 >= 3)
  {
  }

  v10 = v2 + v1[9];

  v11 = type metadata accessor for Player(0);
  v12 = v11[6];
  v13 = sub_24F9289E8();
  v68 = *(v13 - 8);
  v14 = *(v68 + 8);
  v14(v10 + v12, v13);

  if (*(v10 + v11[9] + 8) != 1)
  {
  }

  v15 = v10 + v11[13];
  v16 = type metadata accessor for CallProviderConversationHandleSet(0);
  v70 = v1;
  v71 = v2;
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v65 = v14;
    v17 = type metadata accessor for CallProviderConversationHandle(0);
    v18 = *(*(v17 - 8) + 48);
    if (!v18(v15, 1, v17))
    {

      v19 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v68 + 48))(v15 + v19, 1, v13))
      {
        v65(v15 + v19, v13);
      }
    }

    v20 = v15 + *(v16 + 20);
    if (!v18(v20, 1, v17))
    {

      v21 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v68 + 48))(v20 + v21, 1, v13))
      {
        v65(v20 + v21, v13);
      }
    }

    v1 = v70;
    v14 = v65;
  }

  if (*(v10 + v11[15] + 8))
  {
  }

  v22 = v10 + v11[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v22, 1, PlayedTogetherInfo))
  {

    v24 = type metadata accessor for Game(0);
    v14(v22 + v24[18], v13);
    v25 = v24[19];
    if (!(*(v68 + 48))(v22 + v25, 1, v13))
    {
      v14(v22 + v25, v13);
    }

    v66 = v14;

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }

    v2 = v71;
    v14 = v66;
  }

  v29 = v10 + v11[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v29, 1, ChallengeInfo))
  {

    v31 = type metadata accessor for Game(0);
    v14(v29 + v31[18], v13);
    v32 = v31[19];
    if (!(*(v68 + 48))(v29 + v32, 1, v13))
    {
      v14(v29 + v32, v13);
    }

    v33 = v31[21];
    v34 = sub_24F920818();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v29 + v33, 1, v34))
    {
      (*(v35 + 8))(v29 + v33, v34);
    }
  }

  v36 = v2 + v1[12];
  v37 = sub_24F92A708();
  v38 = *(*(v37 - 8) + 8);
  v38(v36, v37);
  v69 = type metadata accessor for ChallengesPlayerPickerPageInfo(0);
  v39 = *(v69 + 20);
  v40 = sub_24F928818();
  v41 = *(*(v40 - 8) + 8);
  v41(v36 + v39, v40);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[13]));
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[14]));

  v42 = v2 + v1[16];
  v38(v42, v37);
  v43 = type metadata accessor for ChallengesReviewBaseInfo(0);
  v44 = v42 + v43[5];
  sub_24E6F246C(*v44, *(v44 + 8), *(v44 + 16), *(v44 + 24));
  sub_24E600C4C(*(v44 + 32), *(v44 + 40), *(v44 + 48), *(v44 + 56));

  v45 = v42 + v43[8];
  v38(v45, v37);
  v41(v45 + *(v69 + 20), v40);
  __swift_destroy_boxed_opaque_existential_1((v42 + v43[9]));
  __swift_destroy_boxed_opaque_existential_1((v42 + v43[10]));
  v41(v42 + v43[11], v40);
  if (*(v42 + v43[12] + 8))
  {
  }

  v46 = v42 + v43[13];
  v47 = type metadata accessor for PlayTogetherReviewMetricsInfo(0);
  v48 = *(*(v47 - 8) + 48);
  if (!v48(v46, 1, v47))
  {
    v49 = *(v47 + 20);
    v50 = sub_24F928698();
    (*(*(v50 - 8) + 8))(v46 + v49, v50);
  }

  v51 = type metadata accessor for ChallengesReviewBaseInfo.ActionMetrics(0);
  v52 = v46 + v51[5];
  if (!v48(v52, 1, v47))
  {
    v53 = *(v47 + 20);
    v54 = sub_24F928698();
    (*(*(v54 - 8) + 8))(v52 + v53, v54);
  }

  v55 = v46 + v51[6];
  if (!v48(v55, 1, v47))
  {
    v56 = *(v47 + 20);
    v57 = sub_24F928698();
    (*(*(v57 - 8) + 8))(v55 + v56, v57);
  }

  v58 = v46 + v51[7];
  if (!v48(v58, 1, v47))
  {
    v59 = *(v47 + 20);
    v60 = sub_24F928698();
    (*(*(v60 - 8) + 8))(v58 + v59, v60);
  }

  v61 = v46 + v51[8];
  if (!v48(v61, 1, v47))
  {
    v62 = *(v47 + 20);
    v63 = sub_24F928698();
    (*(*(v63 - 8) + 8))(v61 + v62, v63);
  }

  return swift_deallocObject();
}