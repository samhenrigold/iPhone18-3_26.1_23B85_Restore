uint64_t sub_25AE0200C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AE1063C();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132F0, &qword_25AE17228);
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132F8, &qword_25AE17230);
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13300, &qword_25AE17238);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  v51 = sub_25AE1053C();
  LOBYTE(v55[0]) = 1;
  sub_25AE025C8(v62);
  *&v61[7] = v62[0];
  *&v61[23] = v62[1];
  *&v61[39] = v62[2];
  *&v61[55] = v62[3];
  v50 = LOBYTE(v55[0]);
  v17 = *(a1 + 168);
  if (v17)
  {
    v44 = v14;
    v18 = *(a1 + 176);
    v19 = swift_allocObject();
    v42 = v9;
    v40[1] = v40;
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    MEMORY[0x28223BE20](v19);
    v40[-2] = a1;
    sub_25AE02EC8(v17, v18);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13318, &qword_25AE17250);
    v41 = a1;
    v43 = v16;
    v20 = v6;
    sub_25AE02ED8();
    v21 = v8;
    sub_25AE109AC();
    v22 = v47;
    sub_25AE1062C();
    sub_25ADE8250(&qword_27FA13380, &qword_27FA132F0, &qword_25AE17228, MEMORY[0x277CDF028]);
    sub_25AE02D30();
    v23 = v45;
    v24 = v49;
    sub_25AE1088C();
    v25 = v18;
    v14 = v44;
    sub_25AE031B4(v17, v25);
    (*(v48 + 8))(v22, v24);
    v26 = v20;
    v16 = v43;
    (*(v46 + 8))(v21, v26);
    v27 = *(v41 + 184);
    KeyPath = swift_getKeyPath();
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    v30 = v42;
    v31 = (v23 + *(v42 + 36));
    *v31 = KeyPath;
    v31[1] = sub_25AE0322C;
    v31[2] = v29;
    sub_25AE03244(v23, v16);
    (*(v52 + 56))(v16, 0, 1, v30);
  }

  else
  {
    (*(v52 + 56))(v16, 1, 1, v9);
  }

  sub_25ADE82E0(v16, v14, &qword_27FA13300, &qword_25AE17238);
  v32 = v51;
  v53[0] = v51;
  v53[1] = 0;
  v33 = v50;
  v54[0] = v50;
  *&v54[1] = *v61;
  *&v54[17] = *&v61[16];
  *&v54[33] = *&v61[32];
  *&v54[49] = *&v61[48];
  *&v54[64] = *&v61[63];
  v34 = *&v61[63];
  v35 = *v54;
  *a2 = v51;
  *(a2 + 16) = v35;
  v36 = *&v54[16];
  v37 = *&v54[48];
  *(a2 + 48) = *&v54[32];
  *(a2 + 64) = v37;
  *(a2 + 32) = v36;
  *(a2 + 80) = v34;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13308, &qword_25AE17240);
  sub_25ADE82E0(v14, a2 + *(v38 + 64), &qword_27FA13300, &qword_25AE17238);
  sub_25AE02D88(v53, v55);
  sub_25ADDE8CC(v16, &qword_27FA13300, &qword_25AE17238);
  sub_25ADDE8CC(v14, &qword_27FA13300, &qword_25AE17238);
  v55[0] = v32;
  v55[1] = 0;
  v56 = v33;
  v58 = *&v61[16];
  v59 = *&v61[32];
  *v60 = *&v61[48];
  *&v60[15] = *&v61[63];
  v57 = *v61;
  return sub_25AE02DF8(v55);
}

uint64_t sub_25AE025C8@<X0>(uint64_t a2@<X8>)
{
  sub_25ADDE53C();

  v3 = sub_25AE1082C();
  v5 = v4;
  v7 = v6;
  sub_25AE107AC();
  v8 = sub_25AE107EC();
  v31 = v9;
  v32 = v8;
  v30 = v10;
  v33 = v11;
  sub_25ADE88C4(v3, v5, v7 & 1);

  v12 = sub_25AE1082C();
  v14 = v13;
  v16 = v15;
  sub_25AE107DC();
  v17 = sub_25AE1080C();
  v19 = v18;
  v21 = v20;

  sub_25ADE88C4(v12, v14, v16 & 1);

  sub_25AE1066C();
  v22 = sub_25AE107FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_25ADE88C4(v17, v19, v21 & 1);

  *a2 = v32;
  *(a2 + 8) = v31;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = v22;
  *(a2 + 40) = v24;
  *(a2 + 48) = v26 & 1;
  *(a2 + 56) = v28;
  sub_25AE033CC(v32, v31, v30 & 1);

  sub_25AE033CC(v22, v24, v26 & 1);

  sub_25ADE88C4(v22, v24, v26 & 1);

  sub_25ADE88C4(v32, v31, v30 & 1);
}

uint64_t sub_25AE027FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 184))
  {
    v3 = 0.5;
  }

  else
  {
    v3 = 1.0;
  }

  sub_25AE10A0C();
  sub_25AE1031C();
  v4 = sub_25AE10A0C();
  v6 = v5;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13318, &qword_25AE17250) + 36);
  sub_25AE1091C();
  sub_25AE1076C();
  swift_getKeyPath();
  sub_25AE1078C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13388, &qword_25AE172E0);
  sub_25AE032BC();
  sub_25AE1086C();

  v8 = sub_25AE108FC();
  KeyPath = swift_getKeyPath();
  v10 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133A8, &qword_25AE17318) + 36));
  *v10 = KeyPath;
  v10[1] = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13378, &qword_25AE17278);
  v12 = (v7 + *(result + 36));
  *v12 = v4;
  v12[1] = v6;
  *a2 = v3;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16 & 1;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  return result;
}

uint64_t sub_25AE029F0@<X0>(uint64_t a9@<X8>)
{
  v11 = v9[9];
  v18[8] = v9[8];
  v18[9] = v11;
  v19[0] = v9[10];
  *(v19 + 9) = *(v9 + 169);
  v12 = v9[5];
  v18[4] = v9[4];
  v18[5] = v12;
  v13 = v9[7];
  v18[6] = v9[6];
  v18[7] = v13;
  v14 = v9[1];
  v18[0] = *v9;
  v18[1] = v14;
  v15 = v9[3];
  v18[2] = v9[2];
  v18[3] = v15;
  *a9 = sub_25AE104AC();
  *(a9 + 8) = 0x4028000000000000;
  *(a9 + 16) = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13280, &qword_25AE16E60);
  return sub_25AE01680(v18, a9 + *(v16 + 44));
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

uint64_t sub_25AE02AD8(uint64_t a1, int a2)
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

uint64_t sub_25AE02B20(uint64_t result, int a2, int a3)
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

uint64_t sub_25AE02BE4()
{

  sub_25ADE4930(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112));
  v1 = *(v0 + 152);
  if (v1 != 255)
  {
    sub_25ADE4930(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), v1);
  }

  if (*(v0 + 184))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 201, 7);
}

unint64_t sub_25AE02D30()
{
  result = qword_27FA132E0;
  if (!qword_27FA132E0)
  {
    v3 = sub_25AE1063C();
    result = swift_getWitnessTable(MEMORY[0x277CDE0A0], v3, v0, v1);
    atomic_store(result, &qword_27FA132E0);
  }

  return result;
}

uint64_t sub_25AE02D88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13310, &qword_25AE17248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE02DF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13310, &qword_25AE17248);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AE02E60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AE02EC8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_25AE02ED8()
{
  result = qword_27FA13320;
  if (!qword_27FA13320)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13318, &qword_25AE17250);
    v4[0] = sub_25AE02F90();
    v4[1] = sub_25ADE8250(&qword_27FA13370, &qword_27FA13378, &qword_25AE17278, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13320);
  }

  return result;
}

unint64_t sub_25AE02F90()
{
  result = qword_27FA13328;
  if (!qword_27FA13328)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13330, &qword_25AE17258);
    v4[0] = sub_25AE0301C();
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13328);
  }

  return result;
}

unint64_t sub_25AE0301C()
{
  result = qword_27FA13338;
  if (!qword_27FA13338)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13340, &qword_25AE17260);
    v4[0] = sub_25AE030A8();
    v4[1] = MEMORY[0x277CDF900];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13338);
  }

  return result;
}

unint64_t sub_25AE030A8()
{
  result = qword_27FA13348;
  if (!qword_27FA13348)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13350, &qword_25AE17268);
    v4[0] = sub_25AE03160();
    v4[1] = sub_25ADE8250(&qword_27FA13360, &qword_27FA13368, &qword_25AE17270, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13348);
  }

  return result;
}

unint64_t sub_25AE03160()
{
  result = qword_27FA13358;
  if (!qword_27FA13358)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE10F8], MEMORY[0x277CE1120], v0, v1);
    atomic_store(result, &qword_27FA13358);
  }

  return result;
}

uint64_t sub_25AE031B4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25AE031C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AE1042C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE03244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132F8, &qword_25AE17230);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25AE032BC()
{
  result = qword_27FA13390;
  if (!qword_27FA13390)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13388, &qword_25AE172E0);
    v4 = sub_25ADE8250(&qword_27FA13398, &qword_27FA133A0, &qword_25AE18B60, MEMORY[0x277CE0868]);
    v5[0] = MEMORY[0x277CE1078];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27FA13390);
  }

  return result;
}

uint64_t sub_25AE03374@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AE1046C();
  *a1 = result;
  return result;
}

uint64_t sub_25AE033CC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t NDOPlacardModel.iconUrl.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDOPlacardModel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NDOPlacardModel.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NDOPlacardModel.subtitleLinkText.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void NDOPlacardModel.action.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 96);
  *(a1 + 32) = v6;
  sub_25ADE48D8(v2, v3, v4, v5, v6);
}

__n128 NDOPlacardModel.init(iconUrl:title:subtitle:subtitleLinkText:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v10 = *(a10 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  result = *a10;
  v12 = *(a10 + 16);
  *(a9 + 64) = *a10;
  *(a9 + 80) = v12;
  *(a9 + 96) = v10;
  return result;
}

uint64_t sub_25AE034E4()
{
  v1 = *v0;
  v2 = 0x6C72556E6F6369;
  v3 = 0x656C746974627573;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_25AE0357C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25AE0462C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25AE035A4(uint64_t a1)
{
  v2 = sub_25AE04320();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE035E0(uint64_t a1)
{
  v2 = sub_25AE04320();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOPlacardModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133B0, &qword_25AE17320);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 16);
  v24 = *(v1 + 24);
  v25 = v7;
  v8 = *(v1 + 32);
  v22 = *(v1 + 40);
  v23 = v8;
  v9 = *(v1 + 48);
  v20 = *(v1 + 56);
  v21 = v9;
  v10 = *(v1 + 64);
  v12 = *(v1 + 80);
  v11 = *(v1 + 88);
  v16 = *(v1 + 72);
  v17 = v12;
  v18 = v11;
  v19 = v10;
  v32 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE04320();
  sub_25AE10E8C();
  LOBYTE(v27) = 0;
  v13 = v26;
  sub_25AE10DCC();
  if (!v13)
  {
    v14 = v19;
    LOBYTE(v27) = 1;
    sub_25AE10DCC();
    LOBYTE(v27) = 2;
    sub_25AE10DCC();
    LOBYTE(v27) = 3;
    sub_25AE10DCC();
    v27 = v14;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v32;
    v33 = 4;
    sub_25ADE48D8(v14, v16, v17, v18, v32);
    sub_25ADECFA8();
    sub_25AE10DFC();
    sub_25ADE4930(v27, v28, v29, v30, v31);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t NDOPlacardModel.hash(into:)(uint64_t a1)
{
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  return NDOAction.hash(into:)(a1);
}

uint64_t NDOPlacardModel.hashValue.getter()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t NDOPlacardModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133C0, &qword_25AE17328);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE04320();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = sub_25AE10D4C();
  v35 = v10;
  LOBYTE(v43[0]) = 1;
  v11 = sub_25AE10D4C();
  v34 = v12;
  v31 = v11;
  LOBYTE(v43[0]) = 2;
  v30 = sub_25AE10D4C();
  v33 = v13;
  LOBYTE(v43[0]) = 3;
  v29 = sub_25AE10D4C();
  v32 = v14;
  v48 = 4;
  sub_25ADECFFC();
  sub_25AE10D7C();
  (*(v6 + 8))(v8, v5);
  v27 = *(&v45 + 1);
  v28 = v45;
  v25 = *(&v46 + 1);
  v26 = v46;
  *&v36 = v9;
  v15 = v35;
  *(&v36 + 1) = v35;
  *&v37 = v31;
  v16 = v34;
  *(&v37 + 1) = v34;
  *&v38 = v30;
  v17 = v33;
  *(&v38 + 1) = v33;
  *&v39 = v29;
  v18 = v32;
  *(&v39 + 1) = v32;
  v40 = v45;
  v41 = v46;
  v19 = v47;
  v42 = v47;
  *(a2 + 96) = v47;
  v20 = v39;
  *(a2 + 32) = v38;
  *(a2 + 48) = v20;
  v21 = v37;
  *a2 = v36;
  *(a2 + 16) = v21;
  v22 = v41;
  *(a2 + 64) = v40;
  *(a2 + 80) = v22;
  sub_25AE04374(&v36, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v9;
  v43[1] = v15;
  v43[2] = v31;
  v43[3] = v16;
  v43[4] = v30;
  v43[5] = v17;
  v43[6] = v29;
  v43[7] = v18;
  v43[8] = v28;
  v43[9] = v27;
  v43[10] = v26;
  v43[11] = v25;
  v44 = v19;
  return sub_25AE043AC(v43);
}

uint64_t sub_25AE03EF4()
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25AE03FB8(uint64_t a1)
{
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  return NDOAction.hash(into:)(a1);
}

uint64_t sub_25AE04064(uint64_t a1)
{
  sub_25AE10E3C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(v2);
  return sub_25AE10E6C();
}

uint64_t _s5NDOUI15NDOPlacardModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v24 = a1[7];
  v25 = a1[6];
  v22 = a1[9];
  v23 = a1[8];
  v20 = a1[11];
  v21 = a1[10];
  v19 = *(a1 + 96);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v17 = *(a2 + 72);
  v18 = *(a2 + 64);
  v15 = *(a2 + 88);
  v16 = *(a2 + 80);
  v14 = *(a2 + 96);
  if (*a1 == *a2 && a1[1] == *(a2 + 8) || (sub_25AE10E2C()) && (v2 == v7 && v4 == v6 || (sub_25AE10E2C()) && (v3 == v8 && v5 == v9 || (sub_25AE10E2C()) && (v25 == v10 && v24 == v11 || (sub_25AE10E2C()))
  {
    v31 = v23;
    v32 = v22;
    v33 = v21;
    v34 = v20;
    v35 = v19;
    v26 = v18;
    v27 = v17;
    v28 = v16;
    v29 = v15;
    v30 = v14;
    sub_25ADE48D8(v23, v22, v21, v20, v19);
    sub_25ADE48D8(v18, v17, v16, v15, v14);
    v12 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v31, &v26);
    sub_25ADE4930(v26, v27, v28, v29, v30);
    sub_25ADE4930(v31, v32, v33, v34, v35);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

unint64_t sub_25AE04320()
{
  result = qword_27FA133B8;
  if (!qword_27FA133B8)
  {
    result = swift_getWitnessTable(byte_25AE17654, &type metadata for NDOPlacardModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA133B8);
  }

  return result;
}

unint64_t sub_25AE043E0()
{
  result = qword_27FA133C8;
  if (!qword_27FA133C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOPlacardModel, &type metadata for NDOPlacardModel, v0, v1);
    atomic_store(result, &qword_27FA133C8);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25AE04460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_25AE044A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25AE04528()
{
  result = qword_27FA133D0;
  if (!qword_27FA133D0)
  {
    result = swift_getWitnessTable(byte_25AE1762C, &type metadata for NDOPlacardModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA133D0);
  }

  return result;
}

unint64_t sub_25AE04580()
{
  result = qword_27FA133D8;
  if (!qword_27FA133D8)
  {
    result = swift_getWitnessTable(byte_25AE1759C, &type metadata for NDOPlacardModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA133D8);
  }

  return result;
}

unint64_t sub_25AE045D8()
{
  result = qword_27FA133E0;
  if (!qword_27FA133E0)
  {
    result = swift_getWitnessTable(byte_25AE175C4, &type metadata for NDOPlacardModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA133E0);
  }

  return result;
}

uint64_t sub_25AE0462C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025AE1EBC0 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

_BYTE *NDOErrorView.init(for:action:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_25AE047EC()
{
  v0 = sub_25AE1029C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_25AE10A8C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  sub_25AE10A7C();
  (*(v2 + 16))(v5, v7, v1);
  type metadata accessor for NDOErrorViewBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_25AE1028C();
  v10 = sub_25AE10AFC();
  (*(v2 + 8))(v7, v1);
  return v10;
}

uint64_t sub_25AE049EC()
{
  v0 = sub_25AE1029C();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_25AE10A8C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v12[-v6];
  sub_25AE10A7C();
  (*(v2 + 16))(v5, v7, v1);
  type metadata accessor for NDOErrorViewBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  sub_25AE1028C();
  v10 = sub_25AE10AFC();
  (*(v2 + 8))(v7, v1);
  return v10;
}

uint64_t NDOErrorView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133E8, &qword_25AE176B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133F0, &qword_25AE176B8);
  sub_25ADE8250(&qword_27FA133F8, &qword_27FA133E8, &qword_25AE176B0, MEMORY[0x277CDEFF0]);
  sub_25AE05040();
  return sub_25AE1064C();
}

uint64_t sub_25AE04D18(char a1, uint64_t a2, uint64_t a3)
{
  sub_25AE047EC();
  sub_25ADDE53C();
  return sub_25AE1096C();
}

uint64_t sub_25AE04DBC@<X0>(uint64_t a4@<X8>)
{
  sub_25AE049EC();
  sub_25ADDE53C();
  result = sub_25AE1082C();
  *a4 = result;
  *(a4 + 8) = v6;
  *(a4 + 16) = v7 & 1;
  *(a4 + 24) = v8;
  return result;
}

uint64_t sub_25AE04E30@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132B0, &qword_25AE176C0);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  if (a1)
  {
    v17 = v9;
    v12 = swift_allocObject();
    *(v12 + 16) = 1;
    *(v12 + 24) = a2;
    *(v12 + 32) = a3;
    MEMORY[0x28223BE20](v12);
    *(&v16 - 32) = v13;
    *(&v16 - 3) = a2;
    *(&v16 - 2) = a3;

    sub_25AE109AC();
    (*(v17 + 32))(a4, v11, v8);
    return (*(v17 + 56))(a4, 0, 1, v8);
  }

  else
  {
    v15 = *(v9 + 56);

    return v15(a4, 1, 1, v8);
  }
}

unint64_t sub_25AE05040()
{
  result = qword_27FA13400;
  if (!qword_27FA13400)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA133F0, &qword_25AE176B8);
    v4[0] = sub_25ADE8250(&qword_27FA132D8, &qword_27FA132B0, &qword_25AE176C0, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27FA13400);
  }

  return result;
}

uint64_t sub_25AE0510C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25AE1029C();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_25AE10A8C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  sub_25AE10A7C();
  (*(v4 + 16))(v7, v9, v3);
  type metadata accessor for NDOErrorViewBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  sub_25AE1028C();
  v12 = sub_25AE10AFC();
  v14 = v13;
  (*(v4 + 8))(v9, v3);
  v19[1] = v12;
  v19[2] = v14;
  sub_25ADDE53C();
  result = sub_25AE1082C();
  *a1 = result;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v18;
  return result;
}

uint64_t sub_25AE05310()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133E8, &qword_25AE176B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133F0, &qword_25AE176B8);
  sub_25ADE8250(&qword_27FA133F8, &qword_27FA133E8, &qword_25AE176B0, MEMORY[0x277CDEFF0]);
  sub_25AE05040();
  return sub_25AE1064C();
}

uint64_t sub_25AE054C4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AE0553C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a2;
  v33 = a3;
  v3 = sub_25AE1092C();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13418, &qword_25AE17820);
  MEMORY[0x28223BE20](v32);
  v7 = (&v28 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13420, &unk_25AE17828);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = sub_25AE101BC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AE101AC();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_25AE05FE4(v17);
    type metadata accessor for NDOAsyncImage.NDOAsyncImageBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    sub_25AE1094C();
    v25 = v28;
    v24 = v29;
    (*(v28 + 104))(v5, *MEMORY[0x277CE0FE0], v29);
    v26 = sub_25AE1093C();

    (*(v25 + 8))(v5, v24);
    *v7 = v26;
    swift_storeEnumTagMultiPayload();
    sub_25AE0604C();
    return sub_25AE1060C();
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    (*(v19 + 16))(v15, v21, v18);
    (*(v19 + 56))(v15, 0, 1, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13430, &qword_25AE17838);
    sub_25AE060B0();
    sub_25AE102EC();
    (*(v9 + 16))(v7, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_25AE0604C();
    sub_25AE1060C();
    (*(v9 + 8))(v11, v8);
    return (*(v19 + 8))(v21, v18);
  }
}

uint64_t sub_25AE05A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25AE1092C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25AE1038C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277CDD9C8])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v13 = sub_25AE1093C();
    (*(v5 + 8))(v7, v4);
    v21 = v13;
    LOBYTE(v22) = 0;
    swift_retain_n();
    sub_25AE1060C();
    v21 = v23;
    v22 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13448, &qword_25AE17840);
    sub_25AE0613C();
    sub_25AE1060C();
  }

  else
  {
    if (v12 != *MEMORY[0x277CDD9C0])
    {
      v21 = 0;
      v22 = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13448, &qword_25AE17840);
      sub_25AE0613C();
      sub_25AE1060C();
      v18 = v23;
      v19 = v24;
      v20 = v25;
      result = (*(v9 + 8))(v11, v8);
      goto LABEL_7;
    }

    (*(v9 + 8))(v11, v8);
    type metadata accessor for NDOAsyncImage.NDOAsyncImageBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_25AE1094C();
    (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
    v16 = sub_25AE1093C();

    (*(v5 + 8))(v7, v4);
    v21 = v16;
    LOBYTE(v22) = 1;

    sub_25AE1060C();
    v21 = v23;
    v22 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13448, &qword_25AE17840);
    sub_25AE0613C();
    sub_25AE1060C();
  }

  v18 = v23;
  v19 = v24;
  v20 = v25;
LABEL_7:
  *a2 = v18;
  *(a2 + 8) = v19;
  *(a2 + 9) = v20;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_25AE05F34(uint64_t a1, int a2)
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

uint64_t sub_25AE05F7C(uint64_t result, int a2, int a3)
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

uint64_t sub_25AE05FE4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25AE0604C()
{
  result = qword_27FA13428;
  if (!qword_27FA13428)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13420, &unk_25AE17828);
    result = swift_getWitnessTable(MEMORY[0x277CDD638], v3, v0, v1);
    atomic_store(result, &qword_27FA13428);
  }

  return result;
}

unint64_t sub_25AE060B0()
{
  result = qword_27FA13438;
  if (!qword_27FA13438)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13430, &qword_25AE17838);
    v4[0] = sub_25AE0613C();
    v4[1] = MEMORY[0x277CE1410];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27FA13438);
  }

  return result;
}

unint64_t sub_25AE0613C()
{
  result = qword_27FA13440;
  if (!qword_27FA13440)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13448, &qword_25AE17840);
    v4[0] = MEMORY[0x277CE1078];
    v4[1] = MEMORY[0x277CE1078];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27FA13440);
  }

  return result;
}

unint64_t sub_25AE061BC()
{
  result = qword_27FA13450;
  if (!qword_27FA13450)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13458, &qword_25AE17848);
    v4[0] = sub_25AE0604C();
    v4[1] = MEMORY[0x277CE1078];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27FA13450);
  }

  return result;
}

__n128 NDODWPromoView.init(model:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = v4;
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = *(a1 + 80);
  result = *a1;
  v6 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v6;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  return result;
}

uint64_t NDODWPromoView.body.getter@<X0>(uint64_t a9@<X8>)
{
  v11 = *(v9 + 80);
  v16[4] = *(v9 + 64);
  v16[5] = v11;
  v17 = *(v9 + 96);
  v12 = *(v9 + 16);
  v16[0] = *v9;
  v16[1] = v12;
  v13 = *(v9 + 48);
  v16[2] = *(v9 + 32);
  v16[3] = v13;
  *a9 = sub_25AE104BC();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13460, &qword_25AE17850);
  return sub_25AE062EC(v16, a9 + *(v14 + 44));
}

uint64_t sub_25AE062EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_25AE1063C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13478, &qword_25AE17A48);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13480, &qword_25AE17A50);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  v37 = sub_25AE1053C();
  LOBYTE(v41[0]) = 1;
  sub_25AE067CC(v48);
  *&v47[7] = v48[0];
  *&v47[23] = v48[1];
  *&v47[39] = v48[2];
  *&v47[55] = v48[3];
  v35 = LOBYTE(v41[0]);
  v15 = swift_allocObject();
  v16 = *(a1 + 80);
  *(v15 + 80) = *(a1 + 64);
  *(v15 + 96) = v16;
  *(v15 + 112) = *(a1 + 96);
  v17 = *(a1 + 16);
  *(v15 + 16) = *a1;
  *(v15 + 32) = v17;
  v18 = *(a1 + 48);
  *(v15 + 48) = *(a1 + 32);
  *(v15 + 64) = v18;
  v40 = a1;
  sub_25AE06D70(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13488, &qword_25AE17A58);
  sub_25AE06DA8();
  sub_25AE109AC();
  sub_25AE1062C();
  sub_25ADE8250(&qword_27FA134A8, &qword_27FA13478, &qword_25AE17A48, MEMORY[0x277CDF028]);
  sub_25AE02D30();
  v19 = v36;
  sub_25AE1088C();
  (*(v38 + 8))(v5, v19);
  (*(v34 + 8))(v8, v6);
  v20 = sub_25AE108CC();
  v21 = sub_25AE1070C();
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134B0, &qword_25AE17A68) + 36)];
  *v22 = v20;
  v22[8] = v21;
  v23 = &v14[*(v10 + 44)];
  v24 = *MEMORY[0x277CE0118];
  v25 = sub_25AE1052C();
  (*(*(v25 - 8) + 104))(v23, v24, v25);
  *&v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134B8, &qword_25AE17A70) + 36)] = 256;
  v26 = v39;
  sub_25AE06EB8(v14, v39);
  v27 = v37;
  v49[0] = v37;
  v49[1] = 0;
  LOBYTE(v19) = v35;
  v50[0] = v35;
  *&v50[1] = *v47;
  *&v50[17] = *&v47[16];
  *&v50[33] = *&v47[32];
  *&v50[49] = *&v47[48];
  v28 = *&v47[63];
  *&v50[64] = *&v47[63];
  v29 = *v50;
  *a2 = v37;
  *(a2 + 16) = v29;
  v30 = *&v50[16];
  v31 = *&v50[48];
  *(a2 + 48) = *&v50[32];
  *(a2 + 64) = v31;
  *(a2 + 32) = v30;
  *(a2 + 80) = v28;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134C0, &qword_25AE17A78);
  sub_25AE06EB8(v26, a2 + *(v32 + 64));
  sub_25AE02D88(v49, v41);
  sub_25AE06F28(v14);
  sub_25AE06F28(v26);
  v41[0] = v27;
  v41[1] = 0;
  v42 = v19;
  v44 = *&v47[16];
  v45 = *&v47[32];
  v46[0] = *&v47[48];
  *(v46 + 15) = *&v47[63];
  v43 = *v47;
  return sub_25AE02DF8(v41);
}

uint64_t sub_25AE067CC@<X0>(uint64_t a2@<X8>)
{
  sub_25ADDE53C();

  v3 = sub_25AE1082C();
  v26 = v4;
  v27 = v3;
  v25 = v5;
  v28 = v6;

  v7 = sub_25AE1082C();
  v9 = v8;
  v11 = v10;
  sub_25AE1076C();
  v12 = sub_25AE1080C();
  v14 = v13;
  v16 = v15;

  sub_25ADE88C4(v7, v9, v11 & 1);

  sub_25AE1066C();
  v17 = sub_25AE107FC();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_25ADE88C4(v12, v14, v16 & 1);

  *a2 = v27;
  *(a2 + 8) = v26;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  sub_25AE033CC(v27, v26, v25 & 1);

  sub_25AE033CC(v17, v19, v21 & 1);

  sub_25ADE88C4(v17, v19, v21 & 1);

  sub_25ADE88C4(v27, v26, v25 & 1);
}

void sub_25AE069B8(uint64_t a2@<X8>)
{
  sub_25ADDE53C();

  v3 = sub_25AE1082C();
  v5 = v4;
  v7 = v6;
  sub_25AE108DC();
  v8 = sub_25AE107FC();
  v10 = v9;
  v12 = v11;
  sub_25ADE88C4(v3, v5, v7 & 1);

  sub_25AE1079C();
  v13 = sub_25AE107EC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_25ADE88C4(v8, v10, v12 & 1);

  v20 = sub_25AE106FC();
  LOBYTE(v8) = v17 & 1;
  v21 = sub_25AE1074C();
  sub_25AE102FC();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v8;
  *(a2 + 24) = v19;
  *(a2 + 32) = v20;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  *(a2 + 80) = v21;
  *(a2 + 88) = v22;
  *(a2 + 96) = v23;
  *(a2 + 104) = v24;
  *(a2 + 112) = v25;
  *(a2 + 120) = 0;
}

uint64_t sub_25AE06B44@<X0>(uint64_t a9@<X8>)
{
  v11 = *(v9 + 80);
  v16[4] = *(v9 + 64);
  v16[5] = v11;
  v17 = *(v9 + 96);
  v12 = *(v9 + 16);
  v16[0] = *v9;
  v16[1] = v12;
  v13 = *(v9 + 48);
  v16[2] = *(v9 + 32);
  v16[3] = v13;
  *a9 = sub_25AE104BC();
  *(a9 + 8) = 0;
  *(a9 + 16) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13460, &qword_25AE17850);
  return sub_25AE062EC(v16, a9 + *(v14 + 44));
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25AE06BEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_25AE06C34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AE06CE0()
{

  sub_25ADE4930(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

unint64_t sub_25AE06DA8()
{
  result = qword_27FA13490;
  if (!qword_27FA13490)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13488, &qword_25AE17A58);
    v4[0] = sub_25AE06E34();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13490);
  }

  return result;
}

unint64_t sub_25AE06E34()
{
  result = qword_27FA13498;
  if (!qword_27FA13498)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA134A0, &qword_25AE17A60);
    v4[0] = MEMORY[0x277CE0BC8];
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13498);
  }

  return result;
}

uint64_t sub_25AE06EB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13480, &qword_25AE17A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE06F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13480, &qword_25AE17A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 NDODWCoverageView.init(model:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v4;
  *(a4 + 96) = *(a1 + 96);
  v5 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v5;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 112) = a2;
  *(a4 + 120) = a3;
  return result;
}

uint64_t NDODWCoverageView.body.getter@<X0>(void *a1@<X8>)
{
  v38 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134C8, &qword_25AE17A80);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = v1[5];
  v42[4] = v1[4];
  v42[5] = v9;
  v10 = v1[7];
  v42[6] = v1[6];
  v42[7] = v10;
  v11 = v1[1];
  v42[0] = *v1;
  v42[1] = v11;
  v12 = v1[3];
  v42[2] = v1[2];
  v42[3] = v12;
  v39 = sub_25AE1053C();
  v41 = 1;
  sub_25AE07564(v42, &v60);
  v55 = *&v61[176];
  v56 = *&v61[192];
  v51 = *&v61[112];
  v52 = *&v61[128];
  v53 = *&v61[144];
  v54 = *&v61[160];
  v47 = *&v61[48];
  v48 = *&v61[64];
  v49 = *&v61[80];
  v50 = *&v61[96];
  v43 = v60;
  v44 = *v61;
  v45 = *&v61[16];
  v46 = *&v61[32];
  v58[11] = *&v61[160];
  v58[12] = *&v61[176];
  v58[13] = *&v61[192];
  v58[14] = *&v61[208];
  v58[7] = *&v61[96];
  v58[8] = *&v61[112];
  v58[9] = *&v61[128];
  v58[10] = *&v61[144];
  v58[3] = *&v61[32];
  v58[4] = *&v61[48];
  v58[5] = *&v61[64];
  v58[6] = *&v61[80];
  v57 = *&v61[208];
  v58[0] = v60;
  v58[1] = *v61;
  v58[2] = *&v61[16];
  sub_25ADE82E0(&v43, v59, &qword_27FA134D0, &qword_25AE17A88);
  sub_25ADDE8CC(v58, &qword_27FA134D0, &qword_25AE17A88);
  *&v40[183] = v54;
  *&v40[199] = v55;
  *&v40[215] = v56;
  *&v40[231] = v57;
  *&v40[119] = v50;
  *&v40[135] = v51;
  *&v40[151] = v52;
  *&v40[167] = v53;
  *&v40[55] = v46;
  *&v40[71] = v47;
  *&v40[87] = v48;
  *&v40[103] = v49;
  *&v40[7] = v43;
  *&v40[23] = v44;
  *&v40[39] = v45;
  v13 = v41;
  v14 = sub_25AE1071C();
  sub_25AE102FC();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  *v8 = sub_25AE1053C();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134D8, &qword_25AE17A90);
  sub_25AE07C40(v42, &v8[*(v23 + 44)]);
  v24 = sub_25AE107BC();
  KeyPath = swift_getKeyPath();
  v26 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134E0, &qword_25AE17AC8) + 36)];
  *v26 = KeyPath;
  v26[1] = v24;
  LOBYTE(v24) = sub_25AE1072C();
  sub_25AE102FC();
  v27 = &v8[*(v3 + 44)];
  *v27 = v24;
  *(v27 + 1) = v28;
  *(v27 + 2) = v29;
  *(v27 + 3) = v30;
  *(v27 + 4) = v31;
  v27[40] = 0;
  v32 = v6;
  sub_25ADE82E0(v8, v6, &qword_27FA134C8, &qword_25AE17A80);
  *(&v59[26] + 1) = *&v40[192];
  *(&v59[28] + 1) = *&v40[208];
  *(&v59[30] + 1) = *&v40[224];
  *(&v59[18] + 1) = *&v40[128];
  *(&v59[20] + 1) = *&v40[144];
  *(&v59[22] + 1) = *&v40[160];
  *(&v59[24] + 1) = *&v40[176];
  *(&v59[10] + 1) = *&v40[64];
  *(&v59[12] + 1) = *&v40[80];
  *(&v59[14] + 1) = *&v40[96];
  *(&v59[16] + 1) = *&v40[112];
  *(&v59[2] + 1) = *v40;
  *(&v59[4] + 1) = *&v40[16];
  *(&v59[6] + 1) = *&v40[32];
  v33 = v39;
  v59[0] = v39;
  v59[1] = 0;
  LOBYTE(v59[2]) = v13;
  v59[32] = *&v40[239];
  *(&v59[8] + 1) = *&v40[48];
  LOBYTE(v59[33]) = v14;
  v59[34] = v16;
  v59[35] = v18;
  v59[36] = v20;
  v59[37] = v22;
  LOBYTE(v59[38]) = 0;
  v34 = v38;
  memcpy(v38, v59, 0x131uLL);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA134E8, &qword_25AE17AD0);
  sub_25ADE82E0(v32, v34 + *(v35 + 48), &qword_27FA134C8, &qword_25AE17A80);
  sub_25ADE82E0(v59, &v60, &qword_27FA134F0, &qword_25AE17AD8);
  sub_25ADDE8CC(v8, &qword_27FA134C8, &qword_25AE17A80);
  sub_25ADDE8CC(v32, &qword_27FA134C8, &qword_25AE17A80);
  *&v61[193] = *&v40[192];
  *&v61[209] = *&v40[208];
  *v62 = *&v40[224];
  *&v61[129] = *&v40[128];
  *&v61[145] = *&v40[144];
  *&v61[161] = *&v40[160];
  *&v61[177] = *&v40[176];
  *&v61[65] = *&v40[64];
  *&v61[81] = *&v40[80];
  *&v61[97] = *&v40[96];
  *&v61[113] = *&v40[112];
  *&v61[1] = *v40;
  *&v61[17] = *&v40[16];
  *&v61[33] = *&v40[32];
  v60 = v33;
  v61[0] = v13;
  *&v62[15] = *&v40[239];
  *&v61[49] = *&v40[48];
  v63 = v14;
  v64 = v16;
  v65 = v18;
  v66 = v20;
  v67 = v22;
  v68 = 0;
  return sub_25ADDE8CC(&v60, &qword_27FA134F0, &qword_25AE17AD8);
}

uint64_t sub_25AE07564@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1[8];
  v71 = a1[9];
  v88 = a1[1];
  if (v88)
  {
    v89 = *a1;

    sub_25AE10A0C();
    sub_25AE1031C();
    v86 = v114;
    v87 = v112[8];
    v84 = v117;
    v85 = v116;
    LOBYTE(v100) = v113;
    LOBYTE(v96) = v115;
    v82 = v113;
    v83 = v115;
  }

  else
  {
    v89 = 0;
    v86 = 0;
    v87 = 0;
    v84 = 0;
    v85 = 0;
    v82 = 0;
    v83 = 0;
  }

  sub_25ADDE53C();

  v3 = sub_25AE1082C();
  v5 = v4;
  v7 = v6;
  sub_25AE107AC();
  v8 = sub_25AE107EC();
  v79 = v9;
  v80 = v8;
  v69 = v10;
  v81 = v11;
  sub_25ADE88C4(v3, v5, v7 & 1);

  v12 = sub_25AE1082C();
  v14 = v13;
  LOBYTE(v5) = v15;
  sub_25AE1076C();
  v16 = sub_25AE1080C();
  v18 = v17;
  v20 = v19;

  sub_25ADE88C4(v12, v14, v5 & 1);

  sub_25AE1066C();
  v21 = sub_25AE107FC();
  v67 = v22;
  v68 = v21;
  v65 = v23;
  v66 = v24;
  sub_25ADE88C4(v16, v18, v20 & 1);

  v25 = sub_25AE1082C();
  v27 = v26;
  LOBYTE(v12) = v28;
  sub_25AE1076C();
  v29 = sub_25AE1080C();
  v31 = v30;
  v33 = v32;

  sub_25ADE88C4(v25, v27, v12 & 1);

  sub_25AE1066C();
  v34 = sub_25AE107FC();
  v76 = v35;
  v77 = v34;
  LOBYTE(v25) = v36;
  v78 = v37;
  sub_25ADE88C4(v29, v31, v33 & 1);

  v75 = sub_25AE1071C();
  sub_25AE102FC();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v74 = v25 & 1;
  HIDWORD(v100) = HIDWORD(v70);
  v101 = v71;

  v46 = sub_25AE1082C();
  v48 = v47;
  LOBYTE(v14) = v49;
  sub_25AE1076C();
  v50 = sub_25AE1080C();
  v52 = v51;
  LOBYTE(v12) = v53;

  sub_25ADE88C4(v46, v48, v14 & 1);

  LODWORD(v100) = sub_25AE1066C();
  v64 = sub_25AE107FC();
  v72 = v55;
  v73 = v54;
  LOBYTE(v31) = v56;
  sub_25ADE88C4(v50, v52, v12 & 1);

  *&v92 = v89;
  *(&v92 + 1) = v88;
  *&v93 = v87;
  *(&v93 + 1) = v82;
  *&v94 = v86;
  *(&v94 + 1) = v83;
  *&v95 = v85;
  *(&v95 + 1) = v84;
  *&v96 = v77;
  *(&v96 + 1) = v76;
  LOBYTE(v97) = v74;
  DWORD1(v97) = *&v91[3];
  *(&v97 + 1) = *v91;
  *(&v97 + 1) = v78;
  LOBYTE(v98) = v75;
  DWORD1(v98) = *&v90[3];
  *(&v98 + 1) = *v90;
  *(&v98 + 1) = v39;
  *v99 = v41;
  *&v99[8] = v43;
  *&v99[16] = v45;
  v99[24] = 0;
  v57 = v92;
  v58 = v93;
  v59 = v95;
  *(a2 + 32) = v94;
  *(a2 + 48) = v59;
  *a2 = v57;
  *(a2 + 16) = v58;
  *(a2 + 64) = v80;
  *(a2 + 72) = v79;
  *(a2 + 80) = v69 & 1;
  *(a2 + 88) = v81;
  *(a2 + 96) = v68;
  *(a2 + 104) = v67;
  *(a2 + 112) = v65 & 1;
  *(a2 + 120) = v66;
  v60 = v96;
  v61 = v97;
  *(a2 + 185) = *&v99[9];
  v62 = *v99;
  *(a2 + 160) = v98;
  *(a2 + 176) = v62;
  *(a2 + 128) = v60;
  *(a2 + 144) = v61;
  *(a2 + 208) = v64;
  *(a2 + 216) = v73;
  *(a2 + 224) = v31 & 1;
  *(a2 + 232) = v72;
  sub_25ADE82E0(&v92, &v100, &qword_27FA13570, &unk_25AE17CC0);
  sub_25AE033CC(v80, v79, v69 & 1);

  sub_25AE033CC(v68, v67, v65 & 1);

  sub_25ADE82E0(&v96, &v100, &qword_27FA134A0, &qword_25AE17A60);
  sub_25AE033CC(v64, v73, v31 & 1);

  sub_25ADE88C4(v64, v73, v31 & 1);

  v100 = v77;
  v101 = v76;
  v102 = v74;
  *v103 = *v91;
  *&v103[3] = *&v91[3];
  v104 = v78;
  v105 = v75;
  *v106 = *v90;
  *&v106[3] = *&v90[3];
  v107 = v39;
  v108 = v41;
  v109 = v43;
  v110 = v45;
  v111 = 0;
  sub_25ADDE8CC(&v100, &qword_27FA134A0, &qword_25AE17A60);
  sub_25ADE88C4(v68, v67, v65 & 1);

  sub_25ADE88C4(v80, v79, v69 & 1);

  v112[0] = v89;
  v112[1] = v88;
  v112[2] = v87;
  v112[3] = v82;
  v112[4] = v86;
  v112[5] = v83;
  v112[6] = v85;
  v112[7] = v84;
  return sub_25ADDE8CC(v112, &qword_27FA13570, &unk_25AE17CC0);
}

uint64_t sub_25AE07C40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13518, &qword_25AE17C28) - 8;
  v3 = MEMORY[0x28223BE20](v50);
  v51 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13520, &unk_25AE17C30);
  v7 = v6 - 8;
  v8 = MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v52 = &v42 - v10;
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v54 = *(a1 + 80);
  v55 = v11;
  sub_25ADDE53C();

  v14 = sub_25AE1082C();
  v16 = v15;
  v18 = v17;
  LODWORD(v54) = sub_25AE1066C();
  v45 = sub_25AE107FC();
  v44 = v19;
  v46 = v20;
  v47 = v21;
  sub_25ADE88C4(v14, v16, v18 & 1);

  v59 = v12;
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12760, &qword_25AE11D88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13528, &unk_25AE17C60);
  v43 = MEMORY[0x277D83980];
  sub_25ADE8250(&qword_27FA13530, &qword_27FA12760, &qword_25AE11D88, MEMORY[0x277D83980]);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA133E8, &qword_25AE176B0);
  v23 = sub_25ADE8250(&qword_27FA133F8, &qword_27FA133E8, &qword_25AE176B0, MEMORY[0x277CDEFF0]);
  v24 = sub_25AE08B30();
  v54 = v22;
  v55 = &type metadata for WarrantyOverviewLabelStyle;
  v56 = v23;
  v57 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v52;
  sub_25AE109EC();
  *(v25 + *(v7 + 44)) = sub_25AE1066C();
  v59 = v13;
  v58 = v13;
  swift_getKeyPath();
  v26 = swift_allocObject();
  v27 = *(a1 + 80);
  v26[5] = *(a1 + 64);
  v26[6] = v27;
  v28 = *(a1 + 112);
  v26[7] = *(a1 + 96);
  v26[8] = v28;
  v29 = *(a1 + 16);
  v26[1] = *a1;
  v26[2] = v29;
  v30 = *(a1 + 48);
  v26[3] = *(a1 + 32);
  v26[4] = v30;
  sub_25ADE82E0(&v59, &v54, &qword_27FA12770, &qword_25AE11D90);
  sub_25AE08BDC(a1, &v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12770, &qword_25AE11D90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13540, &unk_25AE17CA0);
  sub_25ADE8250(&qword_27FA13548, &qword_27FA12770, &qword_25AE11D90, v43);
  sub_25AE08C14();
  v31 = v53;
  sub_25AE109EC();
  v32 = sub_25AE1071C();
  v33 = v31 + *(v50 + 44);
  *v33 = v32;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  *(v33 + 40) = 1;
  v34 = v48;
  sub_25ADE82E0(v25, v48, &qword_27FA13520, &unk_25AE17C30);
  v35 = v31;
  v36 = v51;
  sub_25ADE82E0(v35, v51, &qword_27FA13518, &qword_25AE17C28);
  v37 = v49;
  v38 = v45;
  v39 = v44;
  *v49 = v45;
  v37[1] = v39;
  LOBYTE(v7) = v46 & 1;
  *(v37 + 16) = v46 & 1;
  v37[3] = v47;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13568, &qword_25AE17CB8);
  sub_25ADE82E0(v34, v37 + *(v40 + 48), &qword_27FA13520, &unk_25AE17C30);
  sub_25ADE82E0(v36, v37 + *(v40 + 64), &qword_27FA13518, &qword_25AE17C28);
  sub_25AE033CC(v38, v39, v7);

  sub_25ADDE8CC(v53, &qword_27FA13518, &qword_25AE17C28);
  sub_25ADDE8CC(v52, &qword_27FA13520, &unk_25AE17C30);
  sub_25ADDE8CC(v36, &qword_27FA13518, &qword_25AE17C28);
  sub_25ADDE8CC(v34, &qword_27FA13520, &unk_25AE17C30);
  sub_25ADE88C4(v38, v39, v7);
}

uint64_t sub_25AE08248(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA133E8, &qword_25AE176B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - v4;
  v6 = *a1;
  v7 = a1[1];
  v9[0] = v6;
  v9[1] = v7;
  sub_25ADDE53C();

  sub_25AE1096C();
  sub_25ADE8250(&qword_27FA133F8, &qword_27FA133E8, &qword_25AE176B0, MEMORY[0x277CDEFF0]);
  sub_25AE08B30();
  sub_25AE1087C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25AE083C4@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a3;
  v5 = sub_25AE1063C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA132B0, &qword_25AE176C0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22[-v11 - 8];
  v13 = *a1;
  v14 = a1[1];
  v23 = v13;
  v24 = v14;
  v15 = swift_allocObject();
  v16 = a2[5];
  v15[5] = a2[4];
  v15[6] = v16;
  v17 = a2[7];
  v15[7] = a2[6];
  v15[8] = v17;
  v18 = a2[1];
  v15[1] = *a2;
  v15[2] = v18;
  v19 = a2[3];
  v15[3] = a2[2];
  v15[4] = v19;

  sub_25AE08BDC(a2, v22);
  sub_25ADDE53C();
  sub_25AE109BC();
  sub_25AE1062C();
  sub_25ADE8250(&qword_27FA132D8, &qword_27FA132B0, &qword_25AE176C0, MEMORY[0x277CDF028]);
  sub_25AE02D30();
  sub_25AE1088C();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  return sub_25AE1036C();
}

uint64_t sub_25AE08630@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_25AE1069C();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = sub_25AE1067C();
  v27 = *(v8 - 8);
  v9 = v27;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_25AE1068C();
  sub_25AE106AC();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  v16 = *(v2 + 16);
  v16(v5, v7, v1);
  v17 = v28;
  v15(v28, v12, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13510, &qword_25AE17C20) + 48)];
  v19 = v25;
  v16(v18, v5, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v5, v22);
  return (v23)(v12, v8);
}

uint64_t sub_25AE088C0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_25AE104BC();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13508, &qword_25AE17C18);
  return sub_25AE08630((a1 + *(v2 + 44)));
}

uint64_t sub_25AE08918@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AE103DC();
  *a1 = result;
  return result;
}

uint64_t sub_25AE08944@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25AE103DC();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_25AE08A08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_25AE08A50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25AE08B30()
{
  result = qword_27FA13538;
  if (!qword_27FA13538)
  {
    result = swift_getWitnessTable(byte_25AE17BDC, &type metadata for WarrantyOverviewLabelStyle, v0, v1);
    atomic_store(result, &qword_27FA13538);
  }

  return result;
}

uint64_t sub_25AE08B84@<X0>(uint64_t *a1@<X8>)
{
  result = NDODWCoverageModel.CoverageLink.hashValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_25AE08C14()
{
  result = qword_27FA13550;
  if (!qword_27FA13550)
  {
    v4[12] = v0;
    v4[13] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13540, &unk_25AE17CA0);
    v4[2] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA132B0, &qword_25AE176C0);
    v4[3] = sub_25AE1063C();
    v4[4] = sub_25ADE8250(&qword_27FA132D8, &qword_27FA132B0, &qword_25AE176C0, MEMORY[0x277CDF028]);
    v4[5] = sub_25AE02D30();
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_25ADE8250(&qword_27FA13558, &qword_27FA13560, &qword_25AE17CB0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13550);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

__n128 NDOPlacardView.init(model:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = swift_getKeyPath();
  *(a4 + 8) = 0;
  v8 = *(a1 + 80);
  *(a4 + 80) = *(a1 + 64);
  *(a4 + 96) = v8;
  *(a4 + 112) = *(a1 + 96);
  v9 = *(a1 + 16);
  *(a4 + 16) = *a1;
  *(a4 + 32) = v9;
  result = *(a1 + 48);
  *(a4 + 48) = *(a1 + 32);
  *(a4 + 64) = result;
  *(a4 + 120) = a2;
  *(a4 + 128) = a3;
  return result;
}

uint64_t sub_25AE08EB0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 112);
  if (v2 <= 6 && (v3 = *(v0 + 64), v4 = *(v0 + 72), v6 = *(v0 + 80), v5 = *(v0 + 88), sub_25ADE48D8(v6, v5, *(v0 + 96), *(v0 + 104), v2), , , v5))
  {

    MEMORY[0x25F8574D0](23306, 0xE200000000000000);
    MEMORY[0x25F8574D0](v3, v4);
    MEMORY[0x25F8574D0](10333, 0xE200000000000000);
    MEMORY[0x25F8574D0](v6, v5);

    MEMORY[0x25F8574D0](41, 0xE100000000000000);
  }

  else
  {
  }

  return v1;
}

uint64_t NDOPlacardView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13588, &qword_25AE17D08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - v5;
  v7 = sub_25AE1049C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v1[5];
  v13 = v1[7];
  v42 = v1[6];
  v43 = v13;
  v14 = v1[1];
  v15 = v1[3];
  v16 = v1[4];
  v38 = v1[2];
  v39 = v15;
  v44 = *(v1 + 16);
  v40 = v16;
  v41 = v12;
  v36 = *v1;
  v37 = v14;
  v17 = *v1;
  v45 = *v1;
  v46 = *(v1 + 8);
  if (v46 != 1)
  {
    v33 = v9;

    sub_25AE10C6C();
    v19 = v4;
    v20 = v6;
    v21 = v3;
    v22 = a1;
    v23 = sub_25AE106EC();
    sub_25AE102AC();

    a1 = v22;
    v3 = v21;
    v6 = v20;
    v4 = v19;
    sub_25AE1048C();
    swift_getAtKeyPath();
    sub_25AE09368(&v45);
    (*(v8 + 8))(v11, v33);
    if (LOBYTE(v34[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v34[6] = v42;
    v34[7] = v43;
    v34[2] = v38;
    v34[3] = v39;
    v35 = v44;
    v34[4] = v40;
    v34[5] = v41;
    v34[0] = v36;
    v34[1] = v37;

    sub_25AE08EB0();
    sub_25AE10A2C();
    KeyPath = swift_getKeyPath();
    v25 = swift_allocObject();
    v26 = v43;
    *(v25 + 112) = v42;
    *(v25 + 128) = v26;
    *(v25 + 144) = v44;
    v27 = v39;
    *(v25 + 48) = v38;
    *(v25 + 64) = v27;
    v28 = v41;
    *(v25 + 80) = v40;
    *(v25 + 96) = v28;
    v29 = v37;
    *(v25 + 16) = v36;
    *(v25 + 32) = v29;
    v30 = &v6[*(v3 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13068, &qword_25AE158A0);
    sub_25AE09498(&v36, v34);
    sub_25AE1034C();
    *v30 = KeyPath;
    sub_25AE094D0(v6, a1);
    v18 = 0;
    return (*(v4 + 56))(a1, v18, 1, v3);
  }

  if (v17)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = 1;
  return (*(v4 + 56))(a1, v18, 1, v3);
}

uint64_t sub_25AE09338@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25AE1041C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_25AE09368(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13590, &qword_25AE17D10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AE093D8()
{
  sub_25AE0944C(*(v0 + 16), *(v0 + 24));

  sub_25ADE4930(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_25AE0944C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_25AE09458()
{
  (*(v0 + 136))();

  return sub_25AE1033C();
}

uint64_t sub_25AE094D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13588, &qword_25AE17D08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_25AE0959C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_25AE095E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25AE09658()
{
  result = qword_27FA13598;
  if (!qword_27FA13598)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA135A0, &qword_25AE17F88);
    v4[0] = sub_25AE096DC();
    result = swift_getWitnessTable(MEMORY[0x277CE1550], v3, v4);
    atomic_store(result, &qword_27FA13598);
  }

  return result;
}

unint64_t sub_25AE096DC()
{
  result = qword_27FA135A8;
  if (!qword_27FA135A8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13588, &qword_25AE17D08);
    v4[0] = sub_25AE09768();
    v4[1] = sub_25ADF9DFC();
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA135A8);
  }

  return result;
}

unint64_t sub_25AE09768()
{
  result = qword_27FA135B0;
  if (!qword_27FA135B0)
  {
    v3 = sub_25AE10A3C();
    result = swift_getWitnessTable(MEMORY[0x277D4D7F0], v3, v0, v1);
    atomic_store(result, &qword_27FA135B0);
  }

  return result;
}

uint64_t NDOPromoModel.iconUrl.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NDOPromoModel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NDOPromoModel.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t NDOPromoModel.callToActionLabel.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void NDOPromoModel.action.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 96);
  *(a1 + 32) = v6;
  sub_25ADE48D8(v2, v3, v4, v5, v6);
}

void NDOPromoModel.deleteAction.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 136);
  *(a1 + 32) = v6;
  sub_25AE0A984(v2, v3, v4, v5, v6);
}

__n128 NDOPromoModel.init(iconUrl:title:subtitle:callToActionLabel:action:deleteAction:protoHashValue:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *(a10 + 16);
  *(a9 + 64) = *a10;
  *(a9 + 80) = v12;
  result = *a11;
  v14 = *(a11 + 16);
  *(a9 + 104) = *a11;
  v15 = *(a10 + 32);
  v16 = *(a11 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 96) = v15;
  *(a9 + 120) = v14;
  *(a9 + 136) = v16;
  *(a9 + 144) = a12;
  return result;
}

uint64_t sub_25AE09908()
{
  v1 = *v0;
  v2 = 0x6C72556E6F6369;
  v3 = 0x63416574656C6564;
  if (v1 != 5)
  {
    v3 = 0x7361486F746F7270;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x6E6F69746361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_25AE099F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25AE0ADD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25AE09A28(uint64_t a1)
{
  v2 = sub_25AE0A998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE09A64(uint64_t a1)
{
  v2 = sub_25AE0A998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOPromoModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA135B8, &qword_25AE17F90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = *(v1 + 16);
  v33 = *(v1 + 24);
  v34 = v5;
  v6 = *(v1 + 32);
  v31 = *(v1 + 40);
  v32 = v6;
  v7 = *(v1 + 48);
  v29 = *(v1 + 56);
  v30 = v7;
  v8 = *(v1 + 72);
  v25 = *(v1 + 64);
  v26 = v8;
  v9 = *(v1 + 88);
  v27 = *(v1 + 80);
  v28 = v9;
  v41 = *(v1 + 96);
  v10 = *(v1 + 112);
  v20 = *(v1 + 104);
  v21 = v10;
  v11 = *(v1 + 128);
  v22 = *(v1 + 120);
  v23 = v11;
  v24 = *(v1 + 136);
  v12 = a1[3];
  v13 = a1;
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_25AE0A998();
  sub_25AE10E8C();
  LOBYTE(v36) = 0;
  v16 = v35;
  sub_25AE10DCC();
  if (!v16)
  {
    LOBYTE(v36) = 1;
    sub_25AE10DCC();
    LOBYTE(v36) = 2;
    sub_25AE10DCC();
    LOBYTE(v36) = 3;
    sub_25AE10DCC();
    v35 = 0;
    v36 = v25;
    v37 = v26;
    v38 = v27;
    v39 = v28;
    v40 = v41;
    v42 = 4;
    sub_25ADE48D8(v25, v26, v27, v28, v41);
    sub_25ADECFA8();
    v17 = v35;
    sub_25AE10DFC();
    sub_25ADE4930(v36, v37, v38, v39, v40);
    v35 = v17;
    if (!v17)
    {
      v36 = v20;
      v37 = v21;
      v38 = v22;
      v39 = v23;
      v40 = v24;
      v42 = 5;
      sub_25AE0A984(v20, v21, v22, v23, v24);
      v18 = v35;
      sub_25AE10DBC();
      sub_25AE0A9EC(v36, v37, v38, v39, v40);
      if (!v18)
      {
        LOBYTE(v36) = 6;
        sub_25AE10DEC();
      }
    }
  }

  return (*(v4 + 8))(v15, v3);
}

uint64_t NDOPromoModel.hash(into:)(uint64_t a1)
{
  v7 = *(v1 + 112);
  v8 = *(v1 + 104);
  v5 = *(v1 + 128);
  v6 = *(v1 + 120);
  v3 = *(v1 + 136);
  v9 = *(v1 + 144);
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  sub_25AE10B2C();
  NDOAction.hash(into:)(a1);
  sub_25AE10E5C();
  if (v3 != 255)
  {
    sub_25ADE48D8(v8, v7, v6, v5, v3);
    NDOAction.hash(into:)(a1);
    sub_25ADE4930(v8, v7, v6, v5, v3);
  }

  return MEMORY[0x25F8577E0](v9);
}

uint64_t NDOPromoModel.hashValue.getter()
{
  sub_25AE10E3C();
  NDOPromoModel.hash(into:)(v1);
  return sub_25AE10E6C();
}

void NDOPromoModel.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA135C8, &qword_25AE17F98);
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v7 = &v27 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE0A998();
  v43 = v7;
  sub_25AE10E7C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v54) = 0;
    v9 = v42;
    *&v41 = sub_25AE10D4C();
    *(&v41 + 1) = v10;
    LOBYTE(v54) = 1;
    *&v40 = sub_25AE10D4C();
    *(&v40 + 1) = v11;
    LOBYTE(v54) = 2;
    v12 = sub_25AE10D4C();
    v39 = v13;
    LOBYTE(v54) = 3;
    v14 = sub_25AE10D4C();
    v38 = v15;
    v30 = v14;
    LOBYTE(v44) = 4;
    sub_25ADECFFC();
    v35 = 0;
    sub_25AE10D7C();
    v29 = *(&v54 + 1);
    v33 = v54;
    v32 = *(&v55 + 1);
    v34 = v55;
    v71 = v56;
    LOBYTE(v44) = 5;
    sub_25AE10D3C();
    v36 = *(&v54 + 1);
    v37 = v54;
    v31 = *(&v55 + 1);
    v28 = v55;
    v16 = v56;
    v72 = 6;
    v17 = sub_25AE10D6C();
    (*(v8 + 8))(v43, v9);
    v44 = v41;
    v18 = v12;
    v27 = v12;
    v19 = v40;
    v45 = v40;
    v20 = v39;
    *&v46 = v18;
    *(&v46 + 1) = v39;
    *&v47 = v30;
    *(&v47 + 1) = v38;
    v21 = v32;
    *&v48 = v33;
    *(&v48 + 1) = v29;
    *&v49 = v34;
    *(&v49 + 1) = v32;
    LOBYTE(v50) = v71;
    *(&v50 + 1) = v37;
    *&v51 = v36;
    *(&v51 + 1) = v28;
    *&v52 = v31;
    BYTE8(v52) = v16;
    v53 = v17;
    *(a2 + 144) = v17;
    v22 = v49;
    *(a2 + 64) = v48;
    *(a2 + 80) = v22;
    v23 = v47;
    *(a2 + 32) = v46;
    *(a2 + 48) = v23;
    v24 = v52;
    v25 = v50;
    *(a2 + 112) = v51;
    *(a2 + 128) = v24;
    *(a2 + 96) = v25;
    v26 = v45;
    *a2 = v44;
    *(a2 + 16) = v26;
    sub_25AE0AA00(&v44, &v54);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v54 = v41;
    v55 = __PAIR128__(*(&v40 + 1), v19);
    v56 = v27;
    v57 = v20;
    v58 = v30;
    v59 = v38;
    v60 = v33;
    v61 = v29;
    v62 = v34;
    v63 = v21;
    v64 = v71;
    v65 = v37;
    v66 = v36;
    v67 = v28;
    v68 = v31;
    v69 = v16;
    v70 = v17;
    sub_25AE0AA38(&v54);
  }
}

uint64_t sub_25AE0A4C0()
{
  sub_25AE10E3C();
  NDOPromoModel.hash(into:)(v1);
  return sub_25AE10E6C();
}

uint64_t sub_25AE0A504(uint64_t a1)
{
  sub_25AE10E3C();
  NDOPromoModel.hash(into:)(v2);
  return sub_25AE10E6C();
}

BOOL _s5NDOUI13NDOPromoModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v47 = a1[6];
  v45 = a1[8];
  v46 = a1[7];
  v43 = a1[10];
  v44 = a1[9];
  v42 = a1[11];
  v41 = *(a1 + 96);
  v32 = a1[13];
  v33 = a1[14];
  v34 = a1[15];
  v35 = a1[16];
  v31 = *(a1 + 136);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  v39 = *(a2 + 72);
  v40 = *(a2 + 64);
  v37 = *(a2 + 88);
  v38 = *(a2 + 80);
  v36 = *(a2 + 96);
  v25 = a1[18];
  v26 = *(a2 + 104);
  v28 = *(a2 + 112);
  v29 = *(a2 + 120);
  v30 = *(a2 + 128);
  v27 = *(a2 + 136);
  v24 = *(a2 + 144);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v7 || v4 != v6) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  if ((v3 != v8 || v5 != v9) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  if ((v47 != v10 || v46 != v11) && (sub_25AE10E2C() & 1) == 0)
  {
    return 0;
  }

  v53 = v45;
  v54 = v44;
  v55 = v43;
  v56 = v42;
  v57 = v41;
  v48 = v40;
  v49 = v39;
  v50 = v38;
  v51 = v37;
  v52 = v36;
  sub_25ADE48D8(v45, v44, v43, v42, v41);
  sub_25ADE48D8(v40, v39, v38, v37, v36);
  v12 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v53, &v48);
  sub_25ADE4930(v48, v49, v50, v51, v52);
  sub_25ADE4930(v53, v54, v55, v56, v57);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v31 == 255)
  {
    v14 = v32;
    v13 = v33;
    v16 = v34;
    v15 = v35;
    sub_25AE0A984(v32, v33, v34, v35, 0xFFu);
    v17 = v27;
    v19 = v29;
    v18 = v30;
    v20 = v28;
    v21 = v26;
    if (v27 == 255)
    {
      sub_25AE0A984(v26, v28, v29, v30, 0xFFu);
      sub_25AE0A9EC(v32, v33, v34, v35, 0xFFu);
      return v25 == v24;
    }

    sub_25AE0A984(v26, v28, v29, v30, v27);
LABEL_22:
    sub_25AE0A9EC(v14, v13, v16, v15, v31);
    sub_25AE0A9EC(v21, v20, v19, v18, v17);
    return 0;
  }

  v14 = v32;
  v13 = v33;
  v53 = v32;
  v54 = v33;
  v16 = v34;
  v15 = v35;
  v55 = v34;
  v56 = v35;
  v57 = v31;
  v17 = v27;
  v19 = v29;
  v18 = v30;
  v20 = v28;
  v21 = v26;
  if (v27 == 255)
  {
    sub_25AE0A984(v32, v33, v34, v35, v31);
    sub_25AE0A984(v26, v28, v29, v30, 0xFFu);
    sub_25AE0A984(v32, v33, v34, v35, v31);
    sub_25ADE4930(v32, v33, v34, v35, v31);
    goto LABEL_22;
  }

  v48 = v26;
  v49 = v28;
  v50 = v29;
  v51 = v30;
  v52 = v27;
  sub_25AE0A984(v32, v33, v34, v35, v31);
  sub_25AE0A984(v26, v28, v29, v30, v27);
  sub_25AE0A984(v32, v33, v34, v35, v31);
  v22 = _s5NDOUI9NDOActionO2eeoiySbAC_ACtFZ_0(&v53, &v48);
  sub_25ADE4930(v48, v49, v50, v51, v52);
  sub_25ADE4930(v53, v54, v55, v56, v57);
  sub_25AE0A9EC(v32, v33, v34, v35, v31);
  if (v22)
  {
    return v25 == v24;
  }

  return 0;
}

void sub_25AE0A984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_25ADE48D8(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_25AE0A998()
{
  result = qword_27FA135C0;
  if (!qword_27FA135C0)
  {
    result = swift_getWitnessTable(byte_25AE18428, &type metadata for NDOPromoModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA135C0);
  }

  return result;
}

void sub_25AE0A9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    sub_25ADE4930(a1, a2, a3, a4, a5);
  }
}

unint64_t sub_25AE0AA6C()
{
  result = qword_27FA135D0;
  if (!qword_27FA135D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOPromoModel, &type metadata for NDOPromoModel, v0, v1);
    atomic_store(result, &qword_27FA135D0);
  }

  return result;
}

uint64_t sub_25AE0AAC0(uint64_t a1, int a2)
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

uint64_t sub_25AE0AB08(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for NDOPromoModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NDOPromoModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25AE0ACD0()
{
  result = qword_27FA135D8;
  if (!qword_27FA135D8)
  {
    result = swift_getWitnessTable(byte_25AE18400, &type metadata for NDOPromoModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA135D8);
  }

  return result;
}

unint64_t sub_25AE0AD28()
{
  result = qword_27FA135E0;
  if (!qword_27FA135E0)
  {
    result = swift_getWitnessTable("1,B'XD", &type metadata for NDOPromoModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA135E0);
  }

  return result;
}

unint64_t sub_25AE0AD80()
{
  result = qword_27FA135E8;
  if (!qword_27FA135E8)
  {
    result = swift_getWitnessTable("A(B'0D", &type metadata for NDOPromoModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA135E8);
  }

  return result;
}

uint64_t sub_25AE0ADD4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C72556E6F6369 && a2 == 0xE700000000000000;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025AE1EB30 == a2 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63416574656C6564 && a2 == 0xEC0000006E6F6974 || (sub_25AE10E2C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7361486F746F7270 && a2 == 0xEE0065756C615668)
  {

    return 6;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

uint64_t NDOSection.id.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NDOSection.header.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t NDOSection.footer.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

BOOL NDOSection.isPlacardSection.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v1 + 16);
  if (v2 && (v3 = *(v0 + 64), memmove(__dst, (v1 + 32), 0x98uLL), sub_25ADFA998(__dst) == 2) && (sub_25ADFA9A4(__dst), v2 == 1))
  {
    return *(v3 + 16) == 1;
  }

  else
  {
    return 0;
  }
}

void __swiftcall NDOSection.init(header:items:isExpandable:expandThreshold:expandLabel:footer:)(NDOUI::NDOSection *__return_ptr retstr, Swift::String_optional header, Swift::OpaquePointer items, Swift::Bool isExpandable, Swift::Int32_optional expandThreshold, Swift::String_optional expandLabel, Swift::String_optional footer)
{
  countAndFlagsBits = footer.value._countAndFlagsBits;
  object = expandLabel.value._object;
  v9 = expandLabel.value._countAndFlagsBits;
  v10 = *&expandThreshold.value;
  v13 = header.value._object;
  v82 = header.value._countAndFlagsBits;
  v83 = retstr;
  v14 = sub_25AE1027C();
  v98 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (isExpandable)
  {

    rawValue = sub_25AE0CFB8(v17, v9, object, v10 | ((HIDWORD(v10) & 1) << 32));
  }

  else
  {
    swift_bridgeObjectRetain_n();
    rawValue = items._rawValue;
  }

  if (v13)
  {

    v18 = v82;
    v19 = v82;
    v20 = v13;
    goto LABEL_26;
  }

  v80 = 0;
  v21 = *(items._rawValue + 2);
  if (v21)
  {
    v95 = items._rawValue;
    v79 = countAndFlagsBits;
    v125 = MEMORY[0x277D84F90];
    sub_25ADFFFC0(0, v21, 0);
    v22 = v125;
    v23 = v21 - 1;
    for (i = 32; ; i = v96 + 152)
    {
      v96 = i;
      v25 = *&v95[i + 112];
      v119 = *&v95[i + 96];
      v120 = v25;
      v121 = *&v95[i + 128];
      v122 = *&v95[i + 144];
      v26 = *&v95[i + 48];
      v115 = *&v95[i + 32];
      v116 = v26;
      v27 = *&v95[i + 80];
      v117 = *&v95[i + 64];
      v118 = v27;
      v28 = *&v95[i + 16];
      v113 = *&v95[i];
      v114 = v28;
      sub_25AE10E3C();
      v123[6] = v119;
      v123[7] = v120;
      v123[8] = v121;
      v124 = v122;
      v123[2] = v115;
      v123[3] = v116;
      v123[4] = v117;
      v123[5] = v118;
      v123[0] = v113;
      v123[1] = v114;
      v29 = sub_25ADFA998(v123);
      v97 = v23;
      v98 = v22;
      if (v29 > 1)
      {
        if (v29 != 2)
        {
          v58 = sub_25ADFA9A4(v123);
          v108 = v119;
          v109 = v120;
          v110 = v121;
          v111 = v122;
          v104 = v115;
          v105 = v116;
          v106 = v117;
          v107 = v118;
          v102 = v113;
          v103 = v114;
          v59 = sub_25ADFA9A4(&v102);
          MEMORY[0x25F8577E0](3);
          *&v90 = *(v58 + 32);
          v60 = *(v58 + 48);
          v92 = *(v58 + 56);
          *&v93 = v60;
          LODWORD(v94) = *(v58 + 96);
          v61 = *(v58 + 104);
          v87 = *(v58 + 112);
          v88 = v61;
          v62 = *(v58 + 120);
          v85 = *(v58 + 128);
          v86 = v62;
          v63 = *(v58 + 136);
          v64 = *(v58 + 80);
          v91 = *(v58 + 64);
          v89 = v64;
          sub_25AE0AA00(v59, &v99);
          sub_25AE10B2C();
          sub_25AE10B2C();
          sub_25AE10B2C();
          sub_25AE10B2C();
          v100 = v89;
          v99 = v91;
          v101 = v94;
          NDOAction.hash(into:)(v112);
          if (v63 == 255)
          {
            sub_25AE10E5C();
          }

          else
          {
            v66 = v87;
            v65 = v88;
            *&v99 = v88;
            *(&v99 + 1) = v87;
            v68 = v85;
            v67 = v86;
            *&v100 = v86;
            *(&v100 + 1) = v85;
            v101 = v63;
            sub_25AE10E5C();
            sub_25ADE48D8(v65, v66, v67, v68, v63);
            NDOAction.hash(into:)(v112);
            sub_25ADE4930(v99, *(&v99 + 1), v100, *(&v100 + 1), v101);
          }

          MEMORY[0x25F8577E0](*(v58 + 144));
          goto LABEL_19;
        }

        v37 = sub_25ADFA9A4(v123);
        v38 = *v37;
        v84 = *(v37 + 8);
        v85 = v38;
        v39 = *(v37 + 16);
        v86 = *(v37 + 24);
        v87 = v39;
        v40 = *(v37 + 32);
        v88 = *(v37 + 40);
        *&v89 = v40;
        v41 = *(v37 + 56);
        v92 = *(v37 + 48);
        *&v91 = v41;
        LODWORD(v94) = *(v37 + 96);
        v42 = *(v37 + 80);
        v93 = *(v37 + 64);
        v90 = v42;
        MEMORY[0x25F8577E0](2);
        v108 = v119;
        v109 = v120;
        v110 = v121;
        v111 = v122;
        v104 = v115;
        v105 = v116;
        v106 = v117;
        v107 = v118;
        v102 = v113;
        v103 = v114;
        v43 = sub_25ADFA9A4(&v102);
        v44 = *(v43 + 64);
        v46 = *(v43 + 72);
        v45 = *(v43 + 80);
        v47 = *(v43 + 88);
        v48 = *(v43 + 96);

        sub_25ADE48D8(v44, v46, v45, v47, v48);
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        v100 = v90;
        v99 = v93;
        v101 = v94;
      }

      else
      {
        if (!v29)
        {
          v30 = sub_25ADFA9A4(v123);
          v31 = *(v30 + 40);
          *&v94 = *(v30 + 32);
          *&v93 = v31;
          MEMORY[0x25F8577E0](0);
          v108 = v119;
          v109 = v120;
          v110 = v121;
          v111 = v122;
          v104 = v115;
          v105 = v116;
          v106 = v117;
          v107 = v118;
          v102 = v113;
          v103 = v114;
          v32 = sub_25ADFA9A4(&v102);
          v33 = *(v32 + 80);
          v35 = *(v32 + 88);
          v34 = *(v32 + 96);
          v36 = *(v32 + 104);
          LODWORD(v92) = *(v32 + 112);

          sub_25ADE48D8(v33, v35, v34, v36, v92);
          sub_25AE10B2C();
          goto LABEL_19;
        }

        v49 = sub_25ADFA9A4(v123);
        v50 = *(v49 + 48);
        v51 = *(v49 + 16);
        v93 = *(v49 + 32);
        v94 = v51;
        MEMORY[0x25F8577E0](1);
        v108 = v119;
        v109 = v120;
        v110 = v121;
        v111 = v122;
        v104 = v115;
        v105 = v116;
        v106 = v117;
        v107 = v118;
        v102 = v113;
        v103 = v114;
        v52 = sub_25ADFA9A4(&v102);
        v53 = *(v52 + 16);
        v54 = *(v52 + 24);
        v55 = *(v52 + 32);
        v56 = *(v52 + 40);
        v57 = *(v52 + 48);

        sub_25ADE48D8(v53, v54, v55, v56, v57);
        sub_25AE10B2C();
        v100 = v93;
        v99 = v94;
        v101 = v50;
      }

      NDOAction.hash(into:)(v112);
LABEL_19:
      *&v102 = sub_25AE10E6C();
      v69 = sub_25AE10E1C();
      v71 = v70;
      sub_25ADFD13C(&v113);
      v22 = v98;
      v125 = v98;
      v73 = *(v98 + 16);
      v72 = *(v98 + 24);
      if (v73 >= v72 >> 1)
      {
        sub_25ADFFFC0((v72 > 1), v73 + 1, 1);
        v22 = v125;
      }

      *(v22 + 16) = v73 + 1;
      v74 = v22 + 16 * v73;
      *(v74 + 32) = v69;
      *(v74 + 40) = v71;
      if (!v97)
      {

        *&v102 = v22;

        sub_25AE0049C(&v102);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12760, &qword_25AE11D88);
        sub_25AE00F74();
        v19 = sub_25AE10A5C();
        v20 = v75;

        countAndFlagsBits = v79;
        items._rawValue = v95;
        goto LABEL_25;
      }

      v23 = v97 - 1;
    }
  }

  sub_25AE1026C();
  v19 = sub_25AE1025C();
  v20 = v76;
  (*(v98 + 8))(v16, v14);
LABEL_25:
  v13 = v80;
  v18 = v82;
LABEL_26:
  v77 = v83;
  v83->isExpanded = 0;
  v77[1]._rawValue = v19;
  v77[2]._rawValue = v20;
  v77[3]._rawValue = v18;
  v77[4]._rawValue = v13;
  v77[5]._rawValue = countAndFlagsBits;
  v77[6]._rawValue = footer.value._object;
  v78 = rawValue;
  v77[7]._rawValue = items._rawValue;
  v77[8]._rawValue = v78;
}

uint64_t sub_25AE0B95C()
{
  v1 = *v0;
  v2 = 0x646E617078457369;
  v3 = 0x7265746F6F66;
  v4 = 0x6465646E61707865;
  if (v1 != 4)
  {
    v4 = 0x657370616C6C6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 25705;
  if (v1 != 1)
  {
    v5 = 0x726564616568;
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

uint64_t sub_25AE0BA20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25AE0D4D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25AE0BA48(uint64_t a1)
{
  v2 = sub_25AE0D13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25AE0BA84(uint64_t a1)
{
  v2 = sub_25AE0D13C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NDOSection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA135F0, &qword_25AE18478);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - v5;
  v7 = v1[1];
  v18[4] = v1[2];
  v18[5] = v7;
  v8 = v1[3];
  v18[2] = v1[4];
  v18[3] = v8;
  v9 = v1[5];
  v18[0] = v1[6];
  v18[1] = v9;
  v10 = v1[7];
  v11 = v1[8];
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_25AE0D13C();
  sub_25AE10E8C();
  LOBYTE(v20) = 0;
  v16 = v18[6];
  sub_25AE10DDC();
  if (!v16)
  {
    LOBYTE(v20) = 1;
    sub_25AE10DCC();
    LOBYTE(v20) = 2;
    sub_25AE10DAC();
    LOBYTE(v20) = 3;
    sub_25AE10DAC();
    v20 = v10;
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13600, &qword_25AE18480);
    sub_25AE0D1E4(&qword_27FA13608, sub_25AE0D190, MEMORY[0x277D83948]);
    sub_25AE10DFC();
    v20 = v11;
    v19 = 5;
    sub_25AE10DFC();
  }

  return (*(v4 + 8))(v6, v15);
}

uint64_t NDOSection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13618, &qword_25AE18488);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25AE0D13C();
  sub_25AE10E7C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v40[0]) = 0;
  v9 = sub_25AE10D5C();
  LOBYTE(v40[0]) = 1;
  v32 = sub_25AE10D4C();
  v34 = v10;
  LOBYTE(v40[0]) = 2;
  v11 = sub_25AE10D2C();
  v33 = v12;
  v30 = v11;
  LOBYTE(v40[0]) = 3;
  v27 = sub_25AE10D2C();
  v31 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13600, &qword_25AE18480);
  LOBYTE(v35) = 4;
  v15 = sub_25AE0D1E4(&qword_27FA13620, sub_25AE0D25C, MEMORY[0x277D83978]);
  v29 = v14;
  v28 = v15;
  sub_25AE10D7C();
  v26 = v40[0];
  v41[0] = 5;
  sub_25AE10D7C();
  LOBYTE(v14) = v9 & 1;
  LODWORD(v29) = v9 & 1;
  (*(v6 + 8))(v8, v5);
  v16 = v42;
  LOBYTE(v35) = v14;
  v17 = v32;
  v19 = v33;
  v18 = v34;
  *(&v35 + 1) = v32;
  *&v36 = v34;
  v20 = v30;
  *(&v36 + 1) = v30;
  *&v37 = v33;
  v21 = v31;
  *(&v37 + 1) = v27;
  *&v38 = v31;
  *(&v38 + 1) = v26;
  v39 = v42;
  *(a2 + 64) = v42;
  v22 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v22;
  v23 = v36;
  *a2 = v35;
  *(a2 + 16) = v23;
  sub_25AE0D2B0(&v35, v40);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v40[0]) = v29;
  v40[1] = v17;
  v40[2] = v18;
  v40[3] = v20;
  v40[4] = v19;
  v40[5] = v27;
  v40[6] = v21;
  v40[7] = v26;
  v40[8] = v16;
  return sub_25AE0D2E8(v40);
}

uint64_t sub_25AE0C210@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

Swift::Void __swiftcall NDOSection.removeItem(with:)(Swift::Int with)
{
  v2 = *(v1 + 56);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v6 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v4 = 0;
  v5 = v2 + 32;
  v131 = *(v2 + 16);
  v96 = v3 - 1;
  v6 = MEMORY[0x277D84F90];
  v133 = v2;
  v98 = v2 + 32;
  while (2)
  {
    v100 = v6;
    v7 = (v5 + 152 * v4);
    v8 = v4;
    while (1)
    {
      if (v8 >= *(v2 + 16))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        return;
      }

      v9 = v7[1];
      v150 = *v7;
      v151 = v9;
      v10 = v7[2];
      v11 = v7[3];
      v12 = v7[5];
      v154 = v7[4];
      v155 = v12;
      v152 = v10;
      v153 = v11;
      v13 = v7[6];
      v14 = v7[7];
      v15 = v7[8];
      v159 = *(v7 + 18);
      v157 = v14;
      v158 = v15;
      v156 = v13;
      sub_25AE10E3C();
      v166 = v156;
      v167 = v157;
      v168 = v158;
      v169 = v159;
      v162 = v152;
      v163 = v153;
      v164 = v154;
      v165 = v155;
      v160 = v150;
      v161 = v151;
      v16 = sub_25ADFA998(&v160);
      if (v16 <= 1)
      {
        if (!v16)
        {
          sub_25ADFA9A4(&v160);
          MEMORY[0x25F8577E0](0);
          v145 = v156;
          v146 = v157;
          v147 = v158;
          v148 = v159;
          v141 = v152;
          v142 = v153;
          v143 = v154;
          v144 = v155;
          v139 = v150;
          v140 = v151;
          v17 = sub_25ADFA9A4(&v139);
          v121 = *(v17 + 80);
          v18 = *(v17 + 88);
          v19 = *(v17 + 96);
          v20 = *(v17 + 104);
          v117 = *(v17 + 112);

          sub_25ADE48D8(v121, v18, v19, v20, v117);
          sub_25AE10B2C();
          goto LABEL_16;
        }

        v28 = sub_25ADFA9A4(&v160);
        v127 = *(v28 + 48);
        v122 = *(v28 + 32);
        v125 = *(v28 + 16);
        MEMORY[0x25F8577E0](1);
        v145 = v156;
        v146 = v157;
        v147 = v158;
        v148 = v159;
        v141 = v152;
        v142 = v153;
        v143 = v154;
        v144 = v155;
        v139 = v150;
        v140 = v151;
        v29 = sub_25ADFA9A4(&v139);
        v30 = *(v29 + 16);
        v31 = *(v29 + 24);
        v32 = *(v29 + 32);
        v33 = *(v29 + 40);
        v34 = *(v29 + 48);

        sub_25ADE48D8(v30, v31, v32, v33, v34);
        sub_25AE10B2C();
        v27 = v122;
        goto LABEL_11;
      }

      if (v16 == 2)
      {
        v21 = sub_25ADFA9A4(&v160);
        v127 = *(v21 + 96);
        v125 = *(v21 + 64);
        v115 = *(v21 + 80);
        MEMORY[0x25F8577E0](2);
        v145 = v156;
        v146 = v157;
        v147 = v158;
        v148 = v159;
        v141 = v152;
        v142 = v153;
        v143 = v154;
        v144 = v155;
        v139 = v150;
        v140 = v151;
        v22 = sub_25ADFA9A4(&v139);
        v23 = *(v22 + 64);
        v24 = *(v22 + 80);
        v103 = *(v22 + 72);
        v25 = *(v22 + 88);
        v26 = *(v22 + 96);

        sub_25ADE48D8(v23, v103, v24, v25, v26);
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        v27 = v115;
LABEL_11:
        v137 = v27;
        v136 = v125;
        v138 = v127;
        NDOAction.hash(into:)(v149);
        goto LABEL_16;
      }

      v35 = sub_25ADFA9A4(&v160);
      v145 = v156;
      v146 = v157;
      v147 = v158;
      v148 = v159;
      v141 = v152;
      v142 = v153;
      v143 = v154;
      v144 = v155;
      v139 = v150;
      v140 = v151;
      v36 = sub_25ADFA9A4(&v139);
      MEMORY[0x25F8577E0](3);
      v128 = *(v35 + 96);
      v109 = *(v35 + 112);
      v111 = *(v35 + 104);
      v105 = *(v35 + 128);
      v107 = *(v35 + 120);
      v37 = *(v35 + 136);
      v118 = *(v35 + 64);
      v113 = *(v35 + 80);
      sub_25AE0AA00(v36, &v136);
      sub_25AE10B2C();
      sub_25AE10B2C();
      sub_25AE10B2C();
      sub_25AE10B2C();
      v137 = v113;
      v136 = v118;
      v138 = v128;
      NDOAction.hash(into:)(v149);
      if (v37 == 255)
      {
        sub_25AE10E5C();
      }

      else
      {
        *&v136 = v111;
        *(&v136 + 1) = v109;
        *&v137 = v107;
        *(&v137 + 1) = v105;
        v138 = v37;
        sub_25AE10E5C();
        sub_25ADE48D8(v111, v109, v107, v105, v37);
        NDOAction.hash(into:)(v149);
        sub_25ADE4930(v136, *(&v136 + 1), v137, *(&v137 + 1), v138);
      }

      MEMORY[0x25F8577E0](*(v35 + 144));
LABEL_16:
      if (sub_25AE10E6C() != with)
      {
        break;
      }

      ++v8;
      sub_25ADFD13C(&v150);
      v7 = (v7 + 152);
      v2 = v133;
      if (v131 == v8)
      {
        v6 = v100;
        goto LABEL_26;
      }
    }

    v6 = v100;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v170 = v100;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25ADFFFE0(0, *(v100 + 16) + 1, 1);
      v6 = v170;
    }

    v40 = *(v6 + 16);
    v39 = *(v6 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_25ADFFFE0((v39 > 1), v40 + 1, 1);
      v6 = v170;
    }

    v4 = v8 + 1;
    *(v6 + 16) = v40 + 1;
    v41 = v6 + 152 * v40;
    v42 = v151;
    *(v41 + 32) = v150;
    *(v41 + 48) = v42;
    v43 = v152;
    v44 = v153;
    v45 = v155;
    *(v41 + 96) = v154;
    *(v41 + 112) = v45;
    *(v41 + 64) = v43;
    *(v41 + 80) = v44;
    v46 = v156;
    v47 = v157;
    v48 = v158;
    *(v41 + 176) = v159;
    *(v41 + 144) = v47;
    *(v41 + 160) = v48;
    *(v41 + 128) = v46;
    v5 = v98;
    v2 = v133;
    if (v96 != v8)
    {
      continue;
    }

    break;
  }

LABEL_26:

  *(v102 + 56) = v6;
  v49 = *(v102 + 64);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = 0;
    v52 = v49 + 32;
    v132 = *(v49 + 16);
    v99 = v50 - 1;
    v53 = MEMORY[0x277D84F90];
    v134 = *(v102 + 64);
    v97 = v49 + 32;
LABEL_28:
    v101 = v53;
    v54 = (v52 + 152 * v51);
    v55 = v51;
    while (1)
    {
      if (v55 >= *(v49 + 16))
      {
        goto LABEL_53;
      }

      v56 = v54[1];
      v150 = *v54;
      v151 = v56;
      v57 = v54[2];
      v58 = v54[3];
      v59 = v54[5];
      v154 = v54[4];
      v155 = v59;
      v152 = v57;
      v153 = v58;
      v60 = v54[6];
      v61 = v54[7];
      v62 = v54[8];
      v159 = *(v54 + 18);
      v157 = v61;
      v158 = v62;
      v156 = v60;
      sub_25AE10E3C();
      v166 = v156;
      v167 = v157;
      v168 = v158;
      v169 = v159;
      v162 = v152;
      v163 = v153;
      v164 = v154;
      v165 = v155;
      v160 = v150;
      v161 = v151;
      v63 = sub_25ADFA998(&v160);
      if (v63 <= 1)
      {
        break;
      }

      if (v63 == 2)
      {
        v68 = sub_25ADFA9A4(&v160);
        v129 = *(v68 + 96);
        v126 = *(v68 + 64);
        v116 = *(v68 + 80);
        MEMORY[0x25F8577E0](2);
        v145 = v156;
        v146 = v157;
        v147 = v158;
        v148 = v159;
        v141 = v152;
        v142 = v153;
        v143 = v154;
        v144 = v155;
        v139 = v150;
        v140 = v151;
        v69 = sub_25ADFA9A4(&v139);
        v70 = *(v69 + 64);
        v71 = *(v69 + 80);
        v104 = *(v69 + 72);
        v72 = *(v69 + 88);
        v73 = *(v69 + 96);

        sub_25ADE48D8(v70, v104, v71, v72, v73);
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        sub_25AE10B2C();
        v74 = v116;
LABEL_36:
        v137 = v74;
        v136 = v126;
        v138 = v129;
        NDOAction.hash(into:)(v149);
        goto LABEL_41;
      }

      v82 = sub_25ADFA9A4(&v160);
      v145 = v156;
      v146 = v157;
      v147 = v158;
      v148 = v159;
      v141 = v152;
      v142 = v153;
      v143 = v154;
      v144 = v155;
      v139 = v150;
      v140 = v151;
      v83 = sub_25ADFA9A4(&v139);
      MEMORY[0x25F8577E0](3);
      v130 = *(v82 + 96);
      v110 = *(v82 + 112);
      v112 = *(v82 + 104);
      v106 = *(v82 + 128);
      v108 = *(v82 + 120);
      v84 = *(v82 + 136);
      v120 = *(v82 + 64);
      v114 = *(v82 + 80);
      sub_25AE0AA00(v83, &v136);
      sub_25AE10B2C();
      sub_25AE10B2C();
      sub_25AE10B2C();
      sub_25AE10B2C();
      v137 = v114;
      v136 = v120;
      v138 = v130;
      NDOAction.hash(into:)(v149);
      if (v84 == 255)
      {
        sub_25AE10E5C();
      }

      else
      {
        *&v136 = v112;
        *(&v136 + 1) = v110;
        *&v137 = v108;
        *(&v137 + 1) = v106;
        v138 = v84;
        sub_25AE10E5C();
        sub_25ADE48D8(v112, v110, v108, v106, v84);
        NDOAction.hash(into:)(v149);
        sub_25ADE4930(v136, *(&v136 + 1), v137, *(&v137 + 1), v138);
      }

      MEMORY[0x25F8577E0](*(v82 + 144));
LABEL_41:
      if (sub_25AE10E6C() != with)
      {
        v53 = v101;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v170 = v101;
        if ((v85 & 1) == 0)
        {
          sub_25ADFFFE0(0, *(v101 + 16) + 1, 1);
          v53 = v170;
        }

        v52 = v97;
        v87 = *(v53 + 16);
        v86 = *(v53 + 24);
        if (v87 >= v86 >> 1)
        {
          sub_25ADFFFE0((v86 > 1), v87 + 1, 1);
          v53 = v170;
        }

        v51 = v55 + 1;
        *(v53 + 16) = v87 + 1;
        v88 = v53 + 152 * v87;
        v89 = v151;
        *(v88 + 32) = v150;
        *(v88 + 48) = v89;
        v90 = v152;
        v91 = v153;
        v92 = v155;
        *(v88 + 96) = v154;
        *(v88 + 112) = v92;
        *(v88 + 64) = v90;
        *(v88 + 80) = v91;
        v93 = v156;
        v94 = v157;
        v95 = v158;
        *(v88 + 176) = v159;
        *(v88 + 144) = v94;
        *(v88 + 160) = v95;
        *(v88 + 128) = v93;
        v49 = v134;
        if (v99 != v55)
        {
          goto LABEL_28;
        }

        goto LABEL_51;
      }

      ++v55;
      sub_25ADFD13C(&v150);
      v54 = (v54 + 152);
      v49 = v134;
      if (v132 == v55)
      {
        v53 = v101;
        goto LABEL_51;
      }
    }

    if (!v63)
    {
      sub_25ADFA9A4(&v160);
      MEMORY[0x25F8577E0](0);
      v145 = v156;
      v146 = v157;
      v147 = v158;
      v148 = v159;
      v141 = v152;
      v142 = v153;
      v143 = v154;
      v144 = v155;
      v139 = v150;
      v140 = v151;
      v64 = sub_25ADFA9A4(&v139);
      v123 = *(v64 + 80);
      v65 = *(v64 + 88);
      v66 = *(v64 + 96);
      v67 = *(v64 + 104);
      v119 = *(v64 + 112);

      sub_25ADE48D8(v123, v65, v66, v67, v119);
      sub_25AE10B2C();
      goto LABEL_41;
    }

    v75 = sub_25ADFA9A4(&v160);
    v129 = *(v75 + 48);
    v124 = *(v75 + 32);
    v126 = *(v75 + 16);
    MEMORY[0x25F8577E0](1);
    v145 = v156;
    v146 = v157;
    v147 = v158;
    v148 = v159;
    v141 = v152;
    v142 = v153;
    v143 = v154;
    v144 = v155;
    v139 = v150;
    v140 = v151;
    v76 = sub_25ADFA9A4(&v139);
    v77 = *(v76 + 16);
    v78 = *(v76 + 24);
    v79 = *(v76 + 32);
    v80 = *(v76 + 40);
    v81 = *(v76 + 48);

    sub_25ADE48D8(v77, v78, v79, v80, v81);
    sub_25AE10B2C();
    v74 = v124;
    goto LABEL_36;
  }

  v53 = MEMORY[0x277D84F90];
LABEL_51:

  *(v102 + 64) = v53;
}

void sub_25AE0CEC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13248, &qword_25AE16D88);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 152);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

char *sub_25AE0CFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (!a3 || (a4 & 0x100000000) != 0 || (v7 = *(a1 + 16), a4 >= v7))
  {

    return v6;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v4 = a3;
    if (v7 == a4)
    {
    }

    else
    {
      sub_25AE0CEC8(a1, a1 + 32, 0, (2 * a4) & 0x1FFFFFFFELL | 1);
      v6 = v8;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_11;
    }
  }

  v6 = sub_25ADFFE58(0, *(v6 + 2) + 1, 1, v6);
LABEL_11:
  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  if (v11 >= v10 >> 1)
  {
    v22 = sub_25ADFFE58((v10 > 1), v11 + 1, 1, v6);
    v13 = v5;
    v12 = v4;
    v6 = v22;
  }

  else
  {
    v12 = v4;
    v13 = v5;
  }

  *&v23 = v13;
  *(&v23 + 1) = v12;
  v24 = 0u;
  v25 = 0u;
  LOBYTE(v26) = 7;
  sub_25ADFC7C0(&v23);
  *(v6 + 2) = v11 + 1;
  v14 = &v6[152 * v11];
  v15 = v24;
  *(v14 + 2) = v23;
  *(v14 + 3) = v15;
  v16 = v25;
  v17 = v26;
  v18 = v28;
  *(v14 + 6) = v27;
  *(v14 + 7) = v18;
  *(v14 + 4) = v16;
  *(v14 + 5) = v17;
  v19 = v29;
  v20 = v30;
  v21 = v31;
  *(v14 + 22) = v32;
  *(v14 + 9) = v20;
  *(v14 + 10) = v21;
  *(v14 + 8) = v19;
  return v6;
}

unint64_t sub_25AE0D13C()
{
  result = qword_27FA135F8;
  if (!qword_27FA135F8)
  {
    result = swift_getWitnessTable(byte_25AE18644, &type metadata for NDOSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA135F8);
  }

  return result;
}

unint64_t sub_25AE0D190()
{
  result = qword_27FA13610;
  if (!qword_27FA13610)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOItem, &type metadata for NDOItem, v0, v1);
    atomic_store(result, &qword_27FA13610);
  }

  return result;
}

uint64_t sub_25AE0D1E4(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13600, &qword_25AE18480);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25AE0D25C()
{
  result = qword_27FA13628;
  if (!qword_27FA13628)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for NDOItem, &type metadata for NDOItem, v0, v1);
    atomic_store(result, &qword_27FA13628);
  }

  return result;
}

uint64_t sub_25AE0D318(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25AE0D360(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_25AE0D3D4()
{
  result = qword_27FA13630;
  if (!qword_27FA13630)
  {
    result = swift_getWitnessTable(byte_25AE1861C, &type metadata for NDOSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13630);
  }

  return result;
}

unint64_t sub_25AE0D42C()
{
  result = qword_27FA13638;
  if (!qword_27FA13638)
  {
    result = swift_getWitnessTable(byte_25AE1858C, &type metadata for NDOSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13638);
  }

  return result;
}

unint64_t sub_25AE0D484()
{
  result = qword_27FA13640;
  if (!qword_27FA13640)
  {
    result = swift_getWitnessTable("%&B'TB", &type metadata for NDOSection.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FA13640);
  }

  return result;
}

uint64_t sub_25AE0D4D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E617078457369 && a2 == 0xEA00000000006465;
  if (v4 || (sub_25AE10E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265746F6F66 && a2 == 0xE600000000000000 || (sub_25AE10E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465646E61707865 && a2 == 0xED0000736D657449 || (sub_25AE10E2C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657370616C6C6F63 && a2 == 0xEE00736D65744964)
  {

    return 5;
  }

  else
  {
    v6 = sub_25AE10E2C();

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

__n128 NDOLinkView.init(model:action:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 48);
  *a4 = *a1;
  *(a4 + 8) = v4;
  result = *(a1 + 16);
  v7 = *(a1 + 32);
  *(a4 + 16) = result;
  *(a4 + 32) = v7;
  *(a4 + 48) = v5;
  *(a4 + 56) = a2;
  *(a4 + 64) = a3;
  return result;
}

uint64_t NDOLinkView.body.getter()
{
  v1 = v0[2];
  v10[3] = v0[3];
  v2 = *v0;
  v3 = *v0;
  v10[1] = v0[1];
  v10[2] = v1;
  v9 = v3;
  v10[0] = v2;
  v12 = v2;
  v11 = *(v0 + 8);
  v4 = swift_allocObject();
  v5 = v0[3];
  *(v4 + 48) = v0[2];
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v0 + 8);
  v6 = v0[1];
  *(v4 + 16) = *v0;
  *(v4 + 32) = v6;
  sub_25AE02C9C(&v12, v8);
  sub_25AE0D7FC(v10, v8);
  sub_25ADDE53C();
  return sub_25AE109BC();
}

uint64_t sub_25AE0D850()
{
  v1 = v0[2];
  v10[3] = v0[3];
  v2 = *v0;
  v3 = *v0;
  v10[1] = v0[1];
  v10[2] = v1;
  v9 = v3;
  v10[0] = v2;
  v12 = v2;
  v11 = *(v0 + 8);
  v4 = swift_allocObject();
  v5 = v0[3];
  *(v4 + 48) = v0[2];
  *(v4 + 64) = v5;
  *(v4 + 80) = *(v0 + 8);
  v6 = v0[1];
  *(v4 + 16) = *v0;
  *(v4 + 32) = v6;
  sub_25AE02C9C(&v12, v8);
  sub_25AE0D7FC(v10, v8);
  sub_25ADDE53C();
  return sub_25AE109BC();
}

unint64_t sub_25AE0D938()
{
  result = qword_27FA132D8;
  if (!qword_27FA132D8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA132B0, &qword_25AE176C0);
    result = swift_getWitnessTable(MEMORY[0x277CDF028], v3, v0, v1);
    atomic_store(result, &qword_27FA132D8);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  sub_25ADE4930(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_25AE0D9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v56 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12920, &unk_25AE18BD0);
  MEMORY[0x28223BE20](v6 - 8);
  v53 = &v52 - v7;
  v8 = sub_25AE1014C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_25AE1038C();
  v57 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v58 = (&v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA12928, &qword_25AE128D8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v52 - v19;
  v60 = [objc_allocWithZone(MEMORY[0x277CCACD8]) init];
  v21 = sub_25AE101BC();
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(a1, 1, v21);
  v61 = a1;
  if (v23 == 1)
  {
    (*(v9 + 56))(v20, 1, 1, v8);
    v24 = v8;
  }

  else
  {
    sub_25ADE82E0(a1, v14, &qword_27FA126A8, &qword_25AE11B90);
    result = v22(v14, 1, v21);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    sub_25AE1013C();
    v24 = v8;
    (*(v9 + 56))(v20, 0, 1, v8);
  }

  v26 = v57;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13708, &qword_25AE18B40);
  v28 = v27[10];
  sub_25ADE83F0(v20, a4 + v28);
  v29 = [objc_opt_self() defaultSessionConfiguration];
  v30 = v60;
  [v29 setURLCache_];
  *(a4 + v27[11]) = [objc_opt_self() sessionWithConfiguration_];
  v31 = (a4 + v27[9]);
  v32 = v56;
  *v31 = v55;
  v31[1] = v32;
  v33 = *MEMORY[0x277CDD9B8];
  v56 = *(v26 + 104);
  v56(v58, v33, v59);
  sub_25AE1097C();
  v57 = a4;
  sub_25ADE82E0(a4 + v28, v18, &qword_27FA12928, &qword_25AE128D8);
  if ((*(v9 + 48))(v18, 1, v24) == 1)
  {

    sub_25ADDE8CC(v61, &qword_27FA126A8, &qword_25AE11B90);
    v34 = &qword_27FA12928;
    v35 = &qword_25AE128D8;
    v36 = v18;
  }

  else
  {
    v37 = v54;
    (*(v9 + 32))(v54, v18, v24);
    v38 = sub_25AE1012C();
    v39 = [v30 cachedResponseForRequest_];

    v40 = v61;
    if (v39)
    {
      v55 = v24;
      v41 = [v39 data];
      v42 = sub_25AE101DC();
      v44 = v43;

      v45 = objc_allocWithZone(MEMORY[0x277D755B8]);
      v46 = sub_25AE101CC();
      v47 = [v45 initWithData_];

      if (v47)
      {
        v48 = sub_25AE1090C();
        sub_25ADE8348(v42, v44);
        v50 = v58;
        v49 = v59;
        *v58 = v48;
        v56(v50, *MEMORY[0x277CDD9C8], v49);

        v51 = v53;
        sub_25AE1097C();

        (*(v9 + 8))(v54, v55);
        sub_25ADDE8CC(v61, &qword_27FA126A8, &qword_25AE11B90);
        return sub_25ADE8460(v51, v57);
      }

      sub_25ADE8348(v42, v44);
      (*(v9 + 8))(v54, v55);
      v34 = &qword_27FA126A8;
      v35 = &qword_25AE11B90;
      v36 = v61;
    }

    else
    {
      (*(v9 + 8))(v37, v24);

      v34 = &qword_27FA126A8;
      v35 = &qword_25AE11B90;
      v36 = v40;
    }
  }

  return sub_25ADDE8CC(v36, v34, v35);
}

uint64_t NDODeviceView.init(model:action:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_25AE1097C();
  *(a4 + 128) = a2;
  *(a4 + 136) = a3;
  return result;
}

double sub_25AE0E130()
{
  v1 = v0[5];
  v24 = v0[4];
  v25 = v1;
  v2 = v0[7];
  v26 = v0[6];
  v27 = v2;
  v3 = v0[1];
  v20 = *v0;
  v21 = v3;
  v4 = v0[3];
  v22 = v0[2];
  v23 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136A8, &qword_25AE18B00);
  sub_25AE1098C();
  v36[4] = v32;
  v36[5] = v33;
  v36[6] = v34;
  v37 = v35;
  v36[0] = v28;
  v36[1] = v29;
  v36[2] = v30;
  v36[3] = v31;

  sub_25ADED088(v36);
  if (!*(&v31 + 1))
  {
    return 0.0;
  }

  v5 = v0[5];
  v24 = v0[4];
  v25 = v5;
  v6 = v0[7];
  v26 = v0[6];
  v27 = v6;
  v7 = v0[1];
  v20 = *v0;
  v21 = v7;
  v8 = v0[3];
  v22 = v0[2];
  v23 = v8;
  sub_25AE1098C();
  v18[5] = v15;
  v18[6] = v16;
  v18[0] = v10;
  v18[1] = v11;
  v18[2] = v12;
  v19 = v17;
  v18[3] = v13;
  v18[4] = v14;

  sub_25ADED088(v18);
  if (!*(&v14 + 1))
  {
    return 0.0;
  }

  return 5.0;
}

uint64_t NDODeviceView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v40 = v1[6];
  v41 = v3;
  v42 = v1[8];
  v4 = v1[3];
  v36 = v1[2];
  v37 = v4;
  v5 = v1[5];
  v38 = v1[4];
  v39 = v5;
  v6 = v1[1];
  v34 = *v1;
  v35 = v6;
  v7 = swift_allocObject();
  v8 = v1[7];
  v7[7] = v1[6];
  v7[8] = v8;
  v7[9] = v1[8];
  v9 = v1[3];
  v7[3] = v1[2];
  v7[4] = v9;
  v10 = v1[5];
  v7[5] = v1[4];
  v7[6] = v10;
  v11 = v1[1];
  v7[1] = *v1;
  v7[2] = v11;
  sub_25AE0E54C(&v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13648, &qword_25AE18870);
  sub_25ADE8250(&qword_27FA13650, &qword_27FA13648, &qword_25AE18870, MEMORY[0x277CE1138]);
  sub_25AE109AC();
  v12 = sub_25AE1074C();
  v33[6] = v40;
  v33[7] = v41;
  v33[8] = v42;
  v33[2] = v36;
  v33[3] = v37;
  v33[4] = v38;
  v33[5] = v39;
  v33[0] = v34;
  v33[1] = v35;
  sub_25AE0E130();
  sub_25AE102FC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13658, &qword_25AE18878) + 36);
  *v21 = v12;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = sub_25AE1073C();
  sub_25AE102FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13660, &qword_25AE18880);
  v32 = a1 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

uint64_t sub_25AE0E4EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_25AE104BC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136B0, &qword_25AE18B08);
  return sub_25AE0E5A0(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_25AE0E5A0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136B8, &qword_25AE18B10);
  v40 = *(v42 - 8);
  v3 = MEMORY[0x28223BE20](v42);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136C0, &qword_25AE18B18);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136C8, &qword_25AE18B20);
  v38 = *(v10 - 8);
  v11 = v38;
  v39 = v10;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v46 = a1;
  v45 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136D0, &qword_25AE18B28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136D8, &qword_25AE18B30);
  sub_25ADE8250(&qword_27FA136E0, &qword_27FA136D0, &qword_25AE18B28, MEMORY[0x277CE14C0]);
  sub_25AE0FB28();
  sub_25AE1095C();
  sub_25ADE8250(&qword_27FA13740, &qword_27FA136C0, &qword_25AE18B18, MEMORY[0x277CDEFF0]);
  sub_25AE0FDB0();
  v37 = v16;
  sub_25AE1087C();
  (*(v7 + 8))(v9, v6);
  v17 = sub_25AE1091C();
  LODWORD(v9) = sub_25AE1065C();
  v18 = sub_25AE107CC();
  KeyPath = swift_getKeyPath();
  v47 = v17;
  v48 = v9;
  v49 = KeyPath;
  v50 = v18;
  sub_25AE1077C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13750, &qword_25AE18BA0);
  sub_25AE0FE0C();
  v20 = v44;
  sub_25AE1086C();

  v21 = *(v11 + 16);
  v36 = v14;
  v22 = v16;
  v23 = v39;
  v21(v14, v22, v39);
  v24 = v40;
  v25 = v41;
  v26 = *(v40 + 16);
  v27 = v20;
  v28 = v42;
  v26(v41, v27, v42);
  v29 = v43;
  v21(v43, v14, v23);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13780, &unk_25AE18BB8);
  v31 = &v29[*(v30 + 48)];
  *v31 = 0;
  v31[8] = 1;
  v26(&v29[*(v30 + 64)], v25, v28);
  v32 = *(v24 + 8);
  v32(v44, v28);
  v33 = *(v38 + 8);
  v33(v37, v23);
  v32(v25, v28);
  return (v33)(v36, v23);
}

uint64_t sub_25AE0EA9C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[5];
  v92 = a1[4];
  v93 = v4;
  v5 = a1[7];
  v94 = a1[6];
  v95 = v5;
  v6 = a1[1];
  v88 = *a1;
  v89 = v6;
  v7 = a1[3];
  v90 = a1[2];
  v91 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136A8, &qword_25AE18B00);
  sub_25AE1098C();
  v96[4] = v102;
  v96[5] = v103;
  v96[6] = v104;
  v97 = v105;
  v96[0] = v98;
  v96[1] = v99;
  v96[2] = v100;
  v96[3] = v101;
  v8 = v99;

  sub_25ADED088(v96);
  v88 = v8;
  sub_25ADDE53C();
  v9 = sub_25AE1082C();
  v51 = v10;
  v52 = v9;
  v12 = v11;
  v53 = v13;
  v14 = a1[5];
  v92 = a1[4];
  v93 = v14;
  v15 = a1[7];
  v94 = a1[6];
  v95 = v15;
  v16 = a1[1];
  v88 = *a1;
  v89 = v16;
  v17 = a1[3];
  v90 = a1[2];
  v91 = v17;
  sub_25AE1098C();
  v102 = v84;
  v103 = v85;
  v104 = v86;
  v105 = v87;
  v98 = v80;
  v99 = v81;
  v100 = v82;
  v101 = v83;

  sub_25ADED088(&v98);
  if (*(&v83 + 1))
  {
    v88 = v83;
    v18 = sub_25AE1082C();
    v49 = v19;
    v50 = v18;
    v21 = v20;
    v60 = v22;
    KeyPath = swift_getKeyPath();
    v58 = sub_25AE107DC();
    LOBYTE(v88) = v21 & 1;
    LOBYTE(v71) = 0;
    v56 = v21 & 1;
    *&v57 = 0;
    *(&v57 + 1) = swift_getKeyPath();
    v23 = [objc_opt_self() secondaryLabelColor];
    v54 = 2;
    v55 = sub_25AE108BC();
  }

  else
  {
    v49 = 0;
    v50 = 0;
    KeyPath = 0;
    v60 = 0;
    v54 = 0;
    v55 = 0;
    v58 = 0;
    v56 = 0;
    v57 = 0uLL;
  }

  v24 = a1[5];
  v92 = a1[4];
  v93 = v24;
  v95 = a1[7];
  sub_25AE1098C();
  v92 = v84;
  v93 = v85;
  v94 = v86;
  LOBYTE(v95) = v87;
  v88 = v80;
  v89 = v81;
  v90 = v82;
  v91 = v83;
  v25 = *(&v84 + 1);

  sub_25ADED088(&v88);
  if (*(&v84 + 1))
  {
    v71 = v84;
    v48 = sub_25AE1082C();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v32 = swift_getKeyPath();
    v33 = v12;
    v34 = sub_25AE107DC();
    v25 = swift_getKeyPath();
    LOBYTE(v71) = v29 & 1;
    LOBYTE(v66) = 0;
    v35 = v29 & 1;
    v36 = sub_25AE108EC();
    v37 = v34;
    v12 = v33;
    v38 = v32;
    v39 = 2;
  }

  else
  {
    v48 = 0;
    v27 = 0;
    v31 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v36 = 0;
    v35 = 0;
  }

  *&v61 = v50;
  *(&v61 + 1) = v49;
  *&v62 = v56;
  *(&v62 + 1) = v60;
  *&v63 = KeyPath;
  *(&v63 + 1) = v54;
  v64 = v57;
  *&v65 = v58;
  *(&v65 + 1) = v55;
  *&v66 = v48;
  *(&v66 + 1) = v27;
  *&v67 = v35;
  *(&v67 + 1) = v31;
  *&v68 = v38;
  *(&v68 + 1) = v39;
  *&v69 = 0;
  *(&v69 + 1) = v25;
  *&v70 = v37;
  *(&v70 + 1) = v36;
  *a2 = v52;
  *(a2 + 8) = v51;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v53;
  v40 = v65;
  v41 = v64;
  *(a2 + 64) = v63;
  *(a2 + 80) = v41;
  v42 = v62;
  *(a2 + 32) = v61;
  *(a2 + 48) = v42;
  v43 = v66;
  v44 = v67;
  *(a2 + 96) = v40;
  *(a2 + 112) = v43;
  v45 = v68;
  v46 = v70;
  *(a2 + 160) = v69;
  *(a2 + 176) = v46;
  *(a2 + 128) = v44;
  *(a2 + 144) = v45;
  *&v71 = v48;
  *(&v71 + 1) = v27;
  v72 = v35;
  v73 = v31;
  v74 = v38;
  v75 = v39;
  v76 = 0;
  v77 = v25;
  v78 = v37;
  v79 = v36;
  sub_25AE033CC(v52, v51, v12 & 1);

  sub_25ADE82E0(&v61, &v80, &qword_27FA13790, &qword_25AE18BE0);
  sub_25ADE82E0(&v66, &v80, &qword_27FA13790, &qword_25AE18BE0);
  sub_25ADDE8CC(&v71, &qword_27FA13790, &qword_25AE18BE0);
  *&v80 = v50;
  *(&v80 + 1) = v49;
  *&v81 = v56;
  *(&v81 + 1) = v60;
  *&v82 = KeyPath;
  *(&v82 + 1) = v54;
  v83 = v57;
  *&v84 = v58;
  *(&v84 + 1) = v55;
  sub_25ADDE8CC(&v80, &qword_27FA13790, &qword_25AE18BE0);
  sub_25ADE88C4(v52, v51, v12 & 1);
}

uint64_t sub_25AE0EF48@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA126A8, &qword_25AE11B90);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136F8, &qword_25AE18B38);
  MEMORY[0x28223BE20](v31);
  v10 = &v29 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13788, &qword_25AE18BC8);
  MEMORY[0x28223BE20](v30);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13718, &qword_25AE18B48);
  MEMORY[0x28223BE20](v13);
  v15 = (&v29 - v14);
  v16 = a1[5];
  v37 = a1[4];
  v38 = v16;
  v17 = a1[7];
  v39 = a1[6];
  v40 = v17;
  v18 = a1[1];
  v33 = *a1;
  v34 = v18;
  v19 = a1[3];
  v35 = a1[2];
  v36 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136A8, &qword_25AE18B00);
  sub_25AE1098C();
  v37 = v45;
  v38 = v46;
  v39 = v47;
  LOBYTE(v40) = v48;
  v33 = v41;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v20 = *(&v41 + 1);

  sub_25ADED088(&v33);
  if (v20)
  {
    sub_25AE101AC();

    sub_25ADE82E0(v8, v6, &qword_27FA126A8, &qword_25AE11B90);
    sub_25AE0D9F4(v6, sub_25ADE6028, 0, v10);
    sub_25ADDE8CC(v8, &qword_27FA126A8, &qword_25AE11B90);
    sub_25AE10A0C();
    sub_25AE1031C();
    v21 = &v10[*(v31 + 36)];
    v22 = v42;
    *v21 = v41;
    *(v21 + 1) = v22;
    *(v21 + 2) = v43;
    sub_25AE0FF7C(v10, v12);
    swift_storeEnumTagMultiPayload();
    sub_25AE0FBB4();
    sub_25AE0FC6C();
    sub_25AE1060C();
    return sub_25AE0FFEC(v10);
  }

  else
  {
    v24 = sub_25AE1091C();
    v25 = sub_25AE1075C();
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13728, &unk_25AE18B50);
    sub_25AE109FC();
    *v15 = v24;
    v15[1] = KeyPath;
    v15[2] = v25;
    sub_25AE10A0C();
    sub_25AE1031C();
    v27 = (v15 + *(v13 + 36));
    v28 = v42;
    *v27 = v41;
    v27[1] = v28;
    v27[2] = v43;
    sub_25ADE82E0(v15, v12, &qword_27FA13718, &qword_25AE18B48);
    swift_storeEnumTagMultiPayload();
    sub_25AE0FBB4();
    sub_25AE0FC6C();
    sub_25AE1060C();
    return sub_25ADDE8CC(v15, &qword_27FA13718, &qword_25AE18B48);
  }
}

uint64_t sub_25AE0F384@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v40 = v1[6];
  v41 = v3;
  v42 = v1[8];
  v4 = v1[3];
  v36 = v1[2];
  v37 = v4;
  v5 = v1[5];
  v38 = v1[4];
  v39 = v5;
  v6 = v1[1];
  v34 = *v1;
  v35 = v6;
  v7 = swift_allocObject();
  v8 = v1[7];
  v7[7] = v1[6];
  v7[8] = v8;
  v7[9] = v1[8];
  v9 = v1[3];
  v7[3] = v1[2];
  v7[4] = v9;
  v10 = v1[5];
  v7[5] = v1[4];
  v7[6] = v10;
  v11 = v1[1];
  v7[1] = *v1;
  v7[2] = v11;
  sub_25AE0E54C(&v34, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13648, &qword_25AE18870);
  sub_25ADE8250(&qword_27FA13650, &qword_27FA13648, &qword_25AE18870, MEMORY[0x277CE1138]);
  sub_25AE109AC();
  v12 = sub_25AE1074C();
  v33[6] = v40;
  v33[7] = v41;
  v33[8] = v42;
  v33[2] = v36;
  v33[3] = v37;
  v33[4] = v38;
  v33[5] = v39;
  v33[0] = v34;
  v33[1] = v35;
  sub_25AE0E130();
  sub_25AE102FC();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13658, &qword_25AE18878) + 36);
  *v21 = v12;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  v22 = sub_25AE1073C();
  sub_25AE102FC();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13660, &qword_25AE18880);
  v32 = a1 + *(result + 36);
  *v32 = v22;
  *(v32 + 8) = v24;
  *(v32 + 16) = v26;
  *(v32 + 24) = v28;
  *(v32 + 32) = v30;
  *(v32 + 40) = 0;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_25AE0F5C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_25AE0F608(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_25AE0F680()
{
  result = qword_27FA13668;
  if (!qword_27FA13668)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13660, &qword_25AE18880);
    v4[0] = sub_25AE0F70C();
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13668);
  }

  return result;
}

unint64_t sub_25AE0F70C()
{
  result = qword_27FA13670;
  if (!qword_27FA13670)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13658, &qword_25AE18878);
    v4[0] = sub_25ADE8250(&qword_27FA13678, &qword_27FA13680, &qword_25AE18A88, MEMORY[0x277CDF028]);
    v4[1] = MEMORY[0x277CDF918];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13670);
  }

  return result;
}

uint64_t sub_25AE0F7F0@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13690, &qword_25AE18AE8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - v6;
  v8 = sub_25AE1067C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_25AE1068C();
  *v7 = sub_25AE1053C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13698, &qword_25AE18AF0);
  sub_25AE106AC();
  v15 = *(v9 + 16);
  v15(v12, v14, v8);
  sub_25ADE82E0(v7, v5, &qword_27FA13690, &qword_25AE18AE8);
  v15(a1, v12, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136A0, &qword_25AE18AF8);
  sub_25ADE82E0(v5, &a1[*(v16 + 48)], &qword_27FA13690, &qword_25AE18AE8);
  sub_25ADDE8CC(v7, &qword_27FA13690, &qword_25AE18AE8);
  v17 = *(v9 + 8);
  v17(v14, v8);
  sub_25ADDE8CC(v5, &qword_27FA13690, &qword_25AE18AE8);
  return (v17)(v12, v8);
}

uint64_t sub_25AE0FA4C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_25AE104BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA13688, &qword_25AE18AE0);
  return sub_25AE0F7F0((a1 + *(v2 + 44)));
}

uint64_t objectdestroyTm_2()
{

  sub_25ADE4930(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

unint64_t sub_25AE0FB28()
{
  result = qword_27FA136E8;
  if (!qword_27FA136E8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA136D8, &qword_25AE18B30);
    v4[0] = sub_25AE0FBB4();
    v4[1] = sub_25AE0FC6C();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27FA136E8);
  }

  return result;
}

unint64_t sub_25AE0FBB4()
{
  result = qword_27FA136F0;
  if (!qword_27FA136F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA136F8, &qword_25AE18B38);
    v4[0] = sub_25ADE8250(&qword_27FA13700, &qword_27FA13708, &qword_25AE18B40, protocol conformance descriptor for NDOCachedAsyncImage<A>);
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA136F0);
  }

  return result;
}

unint64_t sub_25AE0FC6C()
{
  result = qword_27FA13710;
  if (!qword_27FA13710)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13718, &qword_25AE18B48);
    v4[0] = sub_25AE0FCF8();
    v4[1] = MEMORY[0x277CDF678];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13710);
  }

  return result;
}

unint64_t sub_25AE0FCF8()
{
  result = qword_27FA13720;
  if (!qword_27FA13720)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13728, &unk_25AE18B50);
    v4[0] = sub_25AE032BC();
    v4[1] = sub_25ADE8250(&qword_27FA13730, &qword_27FA13738, &qword_25AE18B68, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13720);
  }

  return result;
}

unint64_t sub_25AE0FDB0()
{
  result = qword_27FA13748;
  if (!qword_27FA13748)
  {
    result = swift_getWitnessTable(aV, &type metadata for DeviceRowLabelStyle, v0, v1);
    atomic_store(result, &qword_27FA13748);
  }

  return result;
}

unint64_t sub_25AE0FE0C()
{
  result = qword_27FA13758;
  if (!qword_27FA13758)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13750, &qword_25AE18BA0);
    v4[0] = sub_25AE0FEC4();
    v4[1] = sub_25ADE8250(&qword_27FA13398, &qword_27FA133A0, &qword_25AE18B60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27FA13758);
  }

  return result;
}

unint64_t sub_25AE0FEC4()
{
  result = qword_27FA13760;
  if (!qword_27FA13760)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA13768, &qword_25AE18BA8);
    v4 = sub_25ADE8250(&qword_27FA13770, &qword_27FA13778, &qword_25AE18BB0, MEMORY[0x277CE0740]);
    v5[0] = MEMORY[0x277CE1078];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27FA13760);
  }

  return result;
}

uint64_t sub_25AE0FF7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136F8, &qword_25AE18B38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AE0FFEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA136F8, &qword_25AE18B38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AE10054@<X0>(uint64_t a1@<X8>)
{
  result = sub_25AE1044C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}