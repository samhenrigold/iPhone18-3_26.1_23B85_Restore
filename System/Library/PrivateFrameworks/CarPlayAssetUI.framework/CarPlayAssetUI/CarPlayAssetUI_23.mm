unint64_t sub_242E375F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9588;
  if (!qword_27ECF9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9588);
  }

  return result;
}

uint64_t sub_242E37650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 432))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_242E376A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 424) = 0;
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
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 432) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 432) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_242E3778C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9598;
  if (!qword_27ECF9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9598);
  }

  return result;
}

unint64_t sub_242E377E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF95A0;
  if (!qword_27ECF95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95A0);
  }

  return result;
}

unint64_t sub_242E3783C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF95A8;
  if (!qword_27ECF95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95A8);
  }

  return result;
}

uint64_t sub_242E37890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437466654C706F74 && a2 == 0xED000072656E726FLL;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676445706F74 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xEE0072656E726F43 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656764457466656CLL && a2 == 0xE800000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C6464696DLL && a2 == 0xE600000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6764457468676972 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5C6B0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64456D6F74746F62 && a2 == 0xEA00000000006567 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F5C6D0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

Swift::Void __swiftcall ArcPackage.removeLocalNotifications()()
{
  v1 = v0;
  v2 = *(v0 + 112);
  v3 = *(v2 + 16);
  if (v3)
  {
    v28 = MEMORY[0x277D84F90];
    sub_242E3BC90(0, v3, 0);
    v4 = v28;
    v5 = v3 - 1;
    for (i = 32; ; i += 592)
    {
      memcpy(__dst, (v2 + i), sizeof(__dst));
      sub_242C6CDD4(__dst, &v16);

      memcpy(__src, __dst, sizeof(__src));
      v21 = *&__dst[63];
      v20 = *&__dst[61];
      v26 = __dst[73];
      v25 = *&__dst[71];
      v24 = *&__dst[69];
      v22 = *&__dst[65];
      v23 = *&__dst[67];
      v19 = *&__dst[59];
      v18 = *&__dst[57];
      v8 = *(v4 + 16);
      v7 = *(v4 + 24);
      v28 = v4;
      if (v8 >= v7 >> 1)
      {
        sub_242E3BC90((v7 > 1), v8 + 1, 1);
        v4 = v28;
      }

      *(v4 + 16) = v8 + 1;
      v9 = v4 + 592 * v8;
      memcpy((v9 + 32), __src, 0x1C0uLL);
      *(v9 + 480) = 0;
      *(v9 + 488) = v18;
      v10 = v22;
      v11 = v20;
      v12 = v19;
      *(v9 + 536) = v21;
      *(v9 + 552) = v10;
      *(v9 + 504) = v12;
      *(v9 + 520) = v11;
      v13 = v25;
      v14 = v24;
      v15 = v23;
      *(v9 + 616) = v26;
      *(v9 + 584) = v14;
      *(v9 + 600) = v13;
      *(v9 + 568) = v15;
      if (!v5)
      {
        break;
      }

      --v5;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  *(v1 + 112) = v4;
}

void ArcPackage.infoPlistContent.getter(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[5];
  v13 = v1[9];
  v9 = v1[11];
  v8 = v1[12];
  v14 = *(v1 + 104);
  v17[0] = *v1;
  v17[1] = v3;
  v16 = v17;
  swift_bridgeObjectRetain_n();
  v10 = sub_242E383F8(sub_242C9B7C0, v15, &unk_28557A398);
  swift_arrayDestroy();
  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = byte_27ECF3A00;

  if (v12)
  {
    if (v12 != 1)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        LOBYTE(v17[0]) = 1;
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = v7;
        *(a1 + 24) = v4;
        *(a1 + 32) = v3;
        *(a1 + 40) = v9;
        *(a1 + 48) = v8;
        *(a1 + 56) = v14;
        *(a1 + 57) = 2;
        *(a1 + 64) = xmmword_242F2D330;
        *(a1 + 80) = 0;
        *(a1 + 88) = 1;
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
LABEL_9:
      LOBYTE(v17[0]) = 0;
      *a1 = v6;
      *(a1 + 8) = v5;
      *(a1 + 16) = v7;
      *(a1 + 24) = v4;
      *(a1 + 32) = v3;
      *(a1 + 40) = v9;
      *(a1 + 48) = v8;
      *(a1 + 56) = v14;
      *(a1 + 57) = v11;
      *(a1 + 64) = xmmword_242F2D330;
      *(a1 + 80) = v13;
      *(a1 + 88) = 0;

LABEL_12:

      return;
    }

    __break(1u);
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t InfoPlist.asBinary()()
{
  sub_242F035B0();
  swift_allocObject();
  sub_242F035A0();
  v0 = sub_242F03580();
  sub_242C6D090(v0, v1, v2);
  v3 = sub_242F03590();

  return v3;
}

unint64_t ArcPackage.subscript.getter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(v2 + 80);
  __src[4] = *(v2 + 64);
  __src[5] = v6;
  __src[6] = *(v2 + 96);
  v7 = *(v2 + 16);
  __src[0] = *v2;
  __src[1] = v7;
  v8 = *(v2 + 32);
  __src[3] = *(v2 + 48);
  __src[2] = v8;
  v9 = *(v2 + 112);
  *&__src[7] = v9;
  __dst[0] = v4;
  __dst[1] = v5;
  result = ArcPackage.displayIndex(by:)(__dst);
  if (v11)
  {
    sub_242C6CE84(__src);
    return memcpy(a2, __src, 0x250uLL);
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result >= *(v9 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v12 = v9 + 592 * result;
  memcpy(__dst, (v12 + 32), sizeof(__dst));
  memmove(__src, (v12 + 32), 0x250uLL);
  nullsub_2();
  memcpy(a2, __src, 0x250uLL);
  return sub_242C6CDD4(__dst, &v13);
}

double sub_242E38098(uint64_t a1, unsigned __int8 a2)
{
  sub_242F04DD0();

  return result;
}

double sub_242E38208(uint64_t a1, unsigned __int8 a2)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242E38354@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_242D37EE4(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 592 * a1;
    memcpy(a2, (v9 + 32), 0x250uLL);
    result = memmove((v9 + 32), (v9 + 624), 592 * (v8 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_242E383F8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_242E384A4(uint64_t (*a1)(uint64_t *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;

      v10 = (a1)(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

double static ArcPackage.from(json:)()
{
  sub_242F033D0();
  swift_allocObject();
  v3 = sub_242F033C0();
  sub_242E13B90(v3, v4, v5);
  sub_242F033B0();

  return result;
}

uint64_t ArcPackage.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void ArcPackage.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t ArcPackage.iOSContentVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void ArcPackage.iOSContentVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t ArcPackage.partnerID.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void ArcPackage.partnerID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t ArcPackage.minimumSDKVersion.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

void ArcPackage.minimumSDKVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

CarPlayAssetUI::ArcPackage::BuildType_optional __swiftcall ArcPackage.BuildType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_242F05CD0();

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

  *v2 = v5;
  return result;
}

uint64_t ArcPackage.BuildType.rawValue.getter()
{
  if (*v0)
  {
    return 0x657361656C6572;
  }

  else
  {
    return 0x6775626564;
  }
}

uint64_t sub_242E38970(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657361656C6572;
  }

  else
  {
    v3 = 0x6775626564;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x657361656C6572;
  }

  else
  {
    v5 = 0x6775626564;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_242F06110();
  }

  return v8 & 1;
}

uint64_t sub_242E38A14()
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

double sub_242E38A94(uint64_t a1)
{
  sub_242F04DD0();

  return result;
}

uint64_t sub_242E38B00(uint64_t a1)
{
  sub_242F06390();
  sub_242F04DD0();

  return sub_242F063E0();
}

void sub_242E38B7C(char *a2@<X8>)
{
  v3 = sub_242F05CD0();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_242E38BDC(uint64_t *a1@<X8>)
{
  v2 = 0x6775626564;
  if (*v1)
  {
    v2 = 0x657361656C6572;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t ArcPackage.init(identifier:iOSContentVersion:version:minimumCompatibilityVersion:minimumSDKVersion:buildType:vehicleType:partnerID:displays:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v14 = *a10;
  v15 = *a11;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 88) = a7;
  *(a9 + 96) = a8;
  *(a9 + 104) = v14;
  *(a9 + 112) = a14;
  *(a9 + 48) = v15;
  *(a9 + 56) = a12;
  *(a9 + 64) = a13;
  *(a9 + 32) = 2;
  *(a9 + 40) = a5;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 72) = a6;
  *(a9 + 80) = 2;
  return result;
}

void ArcPackage.addDisplay(type:manufacturerLogo:appleLogo:size:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v171 = a4;
  v213 = type metadata accessor for Zone(0);
  v183 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v212 = &v165[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3028, &qword_242F17A20);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v165[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v165[-v16];
  v18 = type metadata accessor for Layout(0);
  v194 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v165[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21);
  v210 = &v165[-v22];
  MEMORY[0x28223BE20](v23);
  v209 = &v165[-v24];
  v193 = type metadata accessor for LayoutTemplate(0);
  v206 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v195 = &v165[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v208 = &v165[-v27];
  v28 = *a1;
  v197 = v28;
  if (v28 > 1)
  {
    if (v28 == 2)
    {
      v29 = 0x8000000242F5C710;
      v30 = 0xD000000000000011;
    }

    else
    {
      v29 = 0x8000000242F5C6F0;
      v30 = 0xD000000000000019;
    }
  }

  else if (v28)
  {
    v29 = 0xEE0079616C707369;
    v30 = 0x445F7265746E6543;
  }

  else
  {
    v29 = 0xEF79616C70736944;
    v30 = 0x5F72657473756C43;
  }

  v187 = v29;
  v188 = v30;
  v211 = v20;
  v184 = v18;
  v185 = v17;
  v186 = v14;
  v31 = *a2;
  v175 = *(a2 + 8);
  v176 = v31;
  v32 = *(a2 + 16);
  v173 = *(a2 + 24);
  v174 = v32;
  v172 = *(a2 + 32);
  v33 = *(a2 + 40);
  v34 = *a3;
  v180 = *(a3 + 8);
  v181 = v34;
  v35 = *(a3 + 16);
  v178 = *(a3 + 24);
  v179 = v35;
  v177 = *(a3 + 32);
  v36 = *(a3 + 40);
  v169 = v33;
  v170 = v36;
  v37 = *(v182 + 112);
  v38 = *(v37 + 2);
  v198 = v37;
  if (v38)
  {
    v39 = 0;
    v40 = v37 + 32;
    v207 = v38;
    v204 = v38 - 1;
    v41 = MEMORY[0x277D84F90];
    v205 = v37 + 32;
LABEL_10:
    v42 = &v40[592 * v39];
    v43 = v39;
    while (1)
    {
      if (v43 >= *(v37 + 2))
      {
        goto LABEL_101;
      }

      memcpy(v226, v42, 0x250uLL);
      v44 = v43 + 1;
      v45 = 0x65676E6573736170;
      if (LOBYTE(v226[1]) != 2)
      {
        v45 = 0xD000000000000010;
      }

      v46 = 0xE900000000000072;
      if (LOBYTE(v226[1]) != 2)
      {
        v46 = 0x8000000242F583B0;
      }

      v47 = 0x6F437265746E6563;
      if (!LOBYTE(v226[1]))
      {
        v47 = 0x72657473756C63;
      }

      v48 = 0xED0000656C6F736ELL;
      if (!LOBYTE(v226[1]))
      {
        v48 = 0xE700000000000000;
      }

      if (LOBYTE(v226[1]) <= 1u)
      {
        v49 = v47;
      }

      else
      {
        v49 = v45;
      }

      if (LOBYTE(v226[1]) <= 1u)
      {
        v50 = v48;
      }

      else
      {
        v50 = v46;
      }

      if (v197 > 1)
      {
        if (v197 == 2)
        {
          v52 = 0x65676E6573736170;
        }

        else
        {
          v52 = 0xD000000000000010;
        }

        if (v197 == 2)
        {
          v51 = 0xE900000000000072;
        }

        else
        {
          v51 = 0x8000000242F583B0;
        }

        if (v49 != v52)
        {
          goto LABEL_40;
        }
      }

      else if (v197)
      {
        v51 = 0xED0000656C6F736ELL;
        if (v49 != 0x6F437265746E6563)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v51 = 0xE700000000000000;
        if (v49 != 0x72657473756C63)
        {
          goto LABEL_40;
        }
      }

      if (v50 == v51)
      {
        sub_242C6CDD4(v226, v224);

LABEL_44:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v223[0] = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_242E3BC90(0, *(v41 + 16) + 1, 1);
          v41 = v223[0];
        }

        v56 = *(v41 + 16);
        v55 = *(v41 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_242E3BC90((v55 > 1), v56 + 1, 1);
          v41 = v223[0];
        }

        v39 = v43 + 1;
        *(v41 + 16) = v56 + 1;
        memcpy((v41 + 592 * v56 + 32), v226, 0x250uLL);
        v40 = v205;
        v37 = v198;
        if (v204 != v43)
        {
          goto LABEL_10;
        }

        goto LABEL_51;
      }

LABEL_40:
      v53 = sub_242F06110();
      sub_242C6CDD4(v226, v224);

      if (v53)
      {
        goto LABEL_44;
      }

      sub_242C6CE30(v226);
      v42 += 592;
      ++v43;
      v37 = v198;
      if (v207 == v44)
      {
        goto LABEL_51;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
LABEL_51:
  v57 = *(v41 + 16);

  if (v57)
  {
    *&v226[0] = v188;
    *(&v226[0] + 1) = v187;

    MEMORY[0x245D26660](95, 0xE100000000000000);
    *&v224[0] = v57;
    v58 = sub_242F05F60();
    MEMORY[0x245D26660](v58);

    v59 = *(&v226[0] + 1);
    v188 = *&v226[0];
  }

  else
  {
    v59 = v187;
  }

  v61 = v185;
  v60 = v186;
  v62 = v184;
  v63 = v195;
  v64 = v206;
  v65 = v198 + 40;
  v66 = *(v198 + 2) + 1;
  v67 = v188;
  while (--v66)
  {
    if (*(v65 - 1) != v67 || *v65 != v59)
    {
      v65 += 592;
      v69 = sub_242F06110();
      v67 = v188;
      if ((v69 & 1) == 0)
      {
        continue;
      }
    }

    *&v226[0] = v67;
    *(&v226[0] + 1) = v59;

    MEMORY[0x245D26660](95, 0xE100000000000000);
    LODWORD(v224[0]) = sub_242E3C03C(0x3E9uLL);
    v70 = sub_242F05F60();
    MEMORY[0x245D26660](v70);

    v59 = *(&v226[0] + 1);
    v188 = *&v226[0];
    break;
  }

  sub_242C7F6C4(v176, v175, v174, v173, v172);
  sub_242C7F6C4(v181, v180, v179, v178, v177);
  v71 = MEMORY[0x277D84F90];
  v72 = sub_242CE7DA0(MEMORY[0x277D84F90]);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  sub_242DD77E4(0, 0, 0, 0, 254);
  LOBYTE(v226[0]) = 1;
  memset(v223, 0, 72);
  sub_242C6D138(v223, &qword_27ECF95B0, &qword_242F3A4A8);
  v73 = sub_242CE7C6C(v71);
  v74 = LOBYTE(v226[0]);
  v75 = v197;
  if (v197 <= 1)
  {
    if (v197)
    {
      if (qword_27ECEF4F0 != -1)
      {
        v147 = v73;
        v148 = LOBYTE(v226[0]);
        swift_once();
        v74 = v148;
        v64 = v206;
        v73 = v147;
        v75 = v197;
      }

      v76 = &qword_27ECF58A0;
      goto LABEL_74;
    }

    goto LABEL_71;
  }

  if (v197 != 2)
  {
LABEL_71:
    if (qword_27ECEF4E8 != -1)
    {
      v145 = v73;
      v146 = LOBYTE(v226[0]);
      swift_once();
      v74 = v146;
      v64 = v206;
      v73 = v145;
      v75 = v197;
    }

    v76 = &off_27ECF5898;
    goto LABEL_74;
  }

  if (qword_27ECEF4F8 != -1)
  {
    v149 = v73;
    v150 = LOBYTE(v226[0]);
    swift_once();
    v74 = v150;
    v64 = v206;
    v73 = v149;
    v75 = v197;
  }

  v76 = &qword_27ECF58A8;
LABEL_74:
  v77 = *v76;
  v192 = *(v77 + 16);
  if (!v192)
  {
    v81 = MEMORY[0x277D84F90];
LABEL_95:
    *&v226[0] = v188;
    *(&v226[0] + 1) = v59;
    LOBYTE(v226[1]) = v75;
    *(&v226[1] + 1) = v214[0];
    DWORD1(v226[1]) = *(v214 + 3);
    *(&v226[1] + 1) = v81;
    *&v226[2] = a5;
    *(&v226[2] + 1) = a6;
    *&v226[3] = 0x4063A00000000000;
    *(&v226[3] + 8) = 0u;
    *(&v226[4] + 8) = 0u;
    *(&v226[5] + 8) = xmmword_242F385A0;
    BYTE8(v226[6]) = 0;
    HIDWORD(v226[6]) = *&v222[3];
    *(&v226[6] + 9) = *v222;
    v226[7] = xmmword_242F3A470;
    memset(&v226[8], 0, 32);
    v226[10] = xmmword_242F385A0;
    LOBYTE(v226[11]) = 0;
    *(&v226[11] + 1) = *v221;
    DWORD1(v226[11]) = *&v221[3];
    *(&v226[11] + 8) = xmmword_242F3A480;
    *(&v226[12] + 8) = 0u;
    *(&v226[13] + 8) = 0u;
    *(&v226[14] + 8) = xmmword_242F385A0;
    BYTE8(v226[15]) = 0;
    HIDWORD(v226[15]) = *&v220[3];
    *(&v226[15] + 9) = *v220;
    v226[16] = xmmword_242F3A490;
    memset(&v226[17], 0, 32);
    v226[19] = xmmword_242F385A0;
    LOBYTE(v226[20]) = 0;
    *(&v226[20] + 1) = *v219;
    DWORD1(v226[20]) = *&v219[3];
    strcpy(&v226[20] + 8, "wheelOcclusion");
    BYTE7(v226[21]) = -18;
    *(&v226[21] + 1) = v176;
    *&v226[22] = v175;
    *(&v226[22] + 1) = v174;
    *&v226[23] = v173;
    BYTE8(v226[23]) = v172;
    *(&v226[23] + 9) = *v218;
    HIDWORD(v226[23]) = *&v218[3];
    *&v226[24] = v169;
    *(&v226[24] + 1) = v181;
    *&v226[25] = v180;
    *(&v226[25] + 1) = v179;
    *&v226[26] = v178;
    BYTE8(v226[26]) = v177;
    *(&v226[26] + 9) = *v217;
    HIDWORD(v226[26]) = *&v217[3];
    *&v226[27] = v170;
    DWORD2(v226[27]) = 33685504;
    v226[28] = v72;
    v226[29] = 0uLL;
    LOBYTE(v226[30]) = v74;
    *(&v226[30] + 1) = *v216;
    DWORD1(v226[30]) = *&v216[3];
    *(&v226[32] + 8) = 0u;
    *(&v226[33] + 8) = 0u;
    *(&v226[30] + 8) = 0u;
    *(&v226[31] + 8) = 0u;
    *(&v226[34] + 1) = 0;
    *&v226[35] = 1;
    *(&v226[35] + 1) = v73;
    v226[36] = xmmword_242F0B4A0;
    sub_242C6CDD4(v226, v224);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v140 = v198;
LABEL_97:
      v142 = *(v140 + 2);
      v141 = *(v140 + 3);
      if (v142 >= v141 >> 1)
      {
        v140 = sub_242C847D8((v141 > 1), v142 + 1, 1, v140);
      }

      *(v140 + 2) = v142 + 1;
      v143 = v140;
      memcpy(&v140[592 * v142 + 32], v226, 0x250uLL);
      *(v182 + 112) = v143;
      v144 = v226[0];

      sub_242C6CE30(v226);

      *v171 = v144;
      return;
    }

LABEL_102:
    v140 = sub_242C847D8(0, *(v198 + 2) + 1, 1, v198);
    goto LABEL_97;
  }

  v166 = v74;
  v167 = v73;
  v168 = v72;
  v196 = v77;
  sub_242D7C5C8(v226);
  v78 = *(v64 + 80);
  v79 = *(v196 + 16);

  if (!v79)
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v191 = v196 + ((v78 + 32) & ~v78);
  v190 = v64[9];
  v80 = 0;
  v81 = MEMORY[0x277D84F90];
  v187 = v59;
  while (1)
  {
    v206 = v81;
    v207 = v80;
    v82 = v208;
    sub_242E3C3C8(v191 + v190 * v80, v208, type metadata accessor for LayoutTemplate);
    sub_242E3C3C8(v82, v63, type metadata accessor for LayoutTemplate);
    sub_242F03710();
    if (qword_27ECEF030 != -1)
    {
      swift_once();
    }

    v83 = qword_27ECF2E30;
    sub_242CA321C(v61, v60, &qword_27ECF3028, &qword_242F17A20);
    v84 = &v63[*(v193 + 20)];
    v85 = *v84;
    v86 = v84[1];
    v200 = v83;
    *&v201 = v85;

    *(&v201 + 1) = v86;

    v87 = LayoutTemplate.scaledZones(for:)(a5, a6);
    v88 = v210;
    v89 = &v210[v62[7]];
    *v89 = 0;
    *(v89 + 1) = 0;
    v205 = v89;
    v90 = &v88[v62[10]];
    v91 = v226[7];
    *(v90 + 6) = v226[6];
    *(v90 + 7) = v91;
    v90[128] = v226[8];
    v92 = v226[3];
    *(v90 + 2) = v226[2];
    *(v90 + 3) = v92;
    v93 = v226[5];
    *(v90 + 4) = v226[4];
    *(v90 + 5) = v93;
    v94 = v226[1];
    *v90 = v226[0];
    *(v90 + 1) = v94;
    *(v90 + 17) = 2;
    v95 = &v88[v62[12]];
    *(v95 + 41) = 0u;
    *(v95 + 1) = 0u;
    *(v95 + 2) = 0u;
    *v95 = 0u;
    v204 = v95;
    *(v95 + 8) = 2;
    v96 = &v88[v62[13]];
    v97 = MEMORY[0x277D84F90];
    *v96 = MEMORY[0x277D84F90];
    v96[1] = 2;
    v202 = v96;
    v203 = v87;
    v98 = &v88[v62[14]];
    *v98 = v97;
    v98[1] = 2;
    v199 = v98;
    v99 = *(v87 + 16);
    v189 = v99;
    if (v99)
    {
      v100 = v87;
      *&v224[0] = v97;
      sub_242E3BC70(0, v99, 0);
      v97 = *&v224[0];
      v101 = v100 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
      v102 = *(v183 + 72);
      v103 = v99;
      do
      {
        v104 = v212;
        sub_242E3C3C8(v101, v212, type metadata accessor for Zone);
        v105 = &v104[*(v213 + 20)];
        v107 = *v105;
        v106 = v105[1];

        sub_242E3C430(v104, type metadata accessor for Zone);
        *&v224[0] = v97;
        v109 = *(v97 + 16);
        v108 = *(v97 + 24);
        if (v109 >= v108 >> 1)
        {
          sub_242E3BC70((v108 > 1), v109 + 1, 1);
          v97 = *&v224[0];
        }

        *(v97 + 16) = v109 + 1;
        v110 = v97 + 16 * v109;
        *(v110 + 32) = v107;
        *(v110 + 40) = v106;
        v101 += v102;
        --v103;
      }

      while (v103);
      v60 = v186;
      v59 = v187;
      v62 = v184;
      v61 = v185;
    }

    v112 = sub_242C86440(v111);

    v113 = *(v112 + 16);

    v114 = *(v97 + 16);

    if (v113 != v114)
    {
      break;
    }

    sub_242C6D138(v61, &qword_27ECF3028, &qword_242F17A20);
    v63 = v195;
    sub_242E3C430(v195, type metadata accessor for LayoutTemplate);
    v115 = v60;
    v116 = v210;
    sub_242D7C5F8(v60, v210);
    v117 = &v116[v62[5]];
    v118 = *(&v201 + 1);
    *v117 = v201;
    v117[1] = v118;
    *&v116[v62[6]] = v203;
    v116[v62[9]] = 2;
    *&v116[v62[8]] = v200;
    v119 = &v116[v62[11]];
    *v119 = 0u;
    v119[1] = 0u;
    v120 = MEMORY[0x277D84F90];
    *v199 = MEMORY[0x277D84F90];
    v121 = *(v90 + 7);
    v224[6] = *(v90 + 6);
    v224[7] = v121;
    v225 = v90[128];
    v122 = *(v90 + 3);
    v224[2] = *(v90 + 2);
    v224[3] = v122;
    v123 = *(v90 + 5);
    v224[4] = *(v90 + 4);
    v224[5] = v123;
    v124 = *(v90 + 1);
    v224[0] = *v90;
    v224[1] = v124;
    sub_242C6D138(v224, &qword_27ECF4660, &qword_242F263D8);
    v125 = v226[7];
    *(v90 + 6) = v226[6];
    *(v90 + 7) = v125;
    v90[128] = v226[8];
    v126 = v226[3];
    *(v90 + 2) = v226[2];
    *(v90 + 3) = v126;
    v127 = v226[5];
    *(v90 + 4) = v226[4];
    *(v90 + 5) = v127;
    v128 = v226[1];
    *v90 = v226[0];
    *(v90 + 1) = v128;
    v129 = v205;

    *v129 = 0;
    *(v129 + 1) = 0;
    v130 = v204;
    v131 = *(v204 + 1);
    v214[0] = *v204;
    v214[1] = v131;
    *v215 = *(v204 + 2);
    *&v215[9] = *(v204 + 41);
    sub_242C6D138(v214, &qword_27ECF4668, &qword_242F263E0);
    *v130 = 0u;
    v130[1] = 0u;
    v130[2] = 0u;
    *(v130 + 41) = 0u;
    *v202 = v120;
    v132 = v116;
    v133 = v209;
    sub_242CE35C0(v132, v209);
    sub_242E3C3C8(v133, v211, type metadata accessor for Layout);
    v134 = v206;
    v135 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v134 = sub_242C82F78(0, v134[2] + 1, 1, v134);
    }

    v136 = v207;
    v138 = v134[2];
    v137 = v134[3];
    v139 = v134;
    if (v138 >= v137 >> 1)
    {
      v139 = sub_242C82F78((v137 > 1), v138 + 1, 1, v134);
    }

    v80 = (v136 + 1);
    sub_242E3C430(v209, type metadata accessor for Layout);
    sub_242E3C430(v208, type metadata accessor for LayoutTemplate);
    v139[2] = v138 + 1;
    v81 = v139;
    sub_242CE35C0(v211, v139 + ((*(v194 + 80) + 32) & ~*(v194 + 80)) + *(v194 + 72) * v138);
    if (v80 == v192)
    {

      v75 = v197;
      v73 = v167;
      v72 = v168;
      LOBYTE(v74) = v166;
      v59 = v135;
      goto LABEL_95;
    }

    v59 = v135;
    v60 = v115;
    if (v80 >= *(v196 + 16))
    {
      goto LABEL_100;
    }
  }

  *&v224[0] = 0;
  *(&v224[0] + 1) = 0xE000000000000000;
  sub_242F05A80();

  v224[0] = v201;
  MEMORY[0x245D26660](0xD00000000000001FLL, 0x8000000242F5ACE0);
  v151 = MEMORY[0x277D84F90];
  if (v189)
  {
    *&v214[0] = MEMORY[0x277D84F90];
    v152 = v189;
    sub_242E3BC70(0, v189, 0);
    v151 = *&v214[0];
    v153 = v203 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
    v154 = *(v183 + 72);
    do
    {
      v156 = v212;
      sub_242E3C3C8(v153, v212, type metadata accessor for Zone);
      v157 = &v156[*(v213 + 20)];
      v159 = *v157;
      v158 = v157[1];

      sub_242E3C430(v156, type metadata accessor for Zone);
      *&v214[0] = v151;
      v161 = *(v151 + 16);
      v160 = *(v151 + 24);
      if (v161 >= v160 >> 1)
      {
        sub_242E3BC70((v160 > 1), v161 + 1, 1);
        v151 = *&v214[0];
      }

      *(v151 + 16) = v161 + 1;
      v155 = v151 + 16 * v161;
      *(v155 + 32) = v159;
      *(v155 + 40) = v158;
      v153 += v154;
      --v152;
    }

    while (v152);
  }

  v162 = MEMORY[0x245D26920](v151, MEMORY[0x277D837D0]);
  v164 = v163;

  MEMORY[0x245D26660](v162, v164);

  sub_242F05C60();
  __break(1u);
}

uint64_t sub_242E3A134(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x696669746E656469;
    v5 = 0x6E6F6973726576;
    if (a1 != 2)
    {
      v5 = 0x54656C6369686576;
    }

    if (a1)
    {
      v4 = 0xD000000000000011;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x707954646C697562;
    if (a1 != 7)
    {
      v1 = 0x7379616C70736964;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000011;
    }

    v2 = 0xD00000000000001BLL;
    if (a1 == 4)
    {
      v2 = 0x4972656E74726170;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_242E3A280@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E3CB28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E3A2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E3C538(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E3A2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E3C538(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t ArcPackage.displayIndex(by:)(uint64_t *a1)
{
  v2 = *(v1 + 112);
  v3 = *(v2 + 16);
  v4 = 0;
  if (v3)
  {
    v5 = *a1;
    v6 = a1[1];
    for (i = (v2 + 40); ; i += 74)
    {
      v8 = *(i - 1) == v5 && *i == v6;
      if (v8 || (sub_242F06110() & 1) != 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t sub_242E3A3B0(void *__src, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  memcpy(__dst, __src, sizeof(__dst));
  v8[0] = v5;
  v8[1] = v4;

  sub_242CA321C(__dst, &v7, &qword_27ECEFAD0, &qword_242F092D0);
  return ArcPackage.subscript.setter(__src, v8);
}

uint64_t ArcPackage.subscript.setter(void *__src, uint64_t *a2)
{
  v3 = v2;
  memcpy(__dst, __src, sizeof(__dst));
  v5 = v3[5];
  v6 = v3[3];
  v26 = v3[4];
  v27 = v5;
  v7 = v3[5];
  v28 = v3[6];
  v8 = v3[1];
  v23[0] = *v3;
  v23[1] = v8;
  v9 = v3[3];
  v11 = *v3;
  v10 = v3[1];
  v24 = v3[2];
  v25 = v9;
  __srca[4] = v26;
  __srca[5] = v7;
  __srca[6] = v3[6];
  __srca[0] = v11;
  __srca[1] = v10;
  v12 = *a2;
  v13 = a2[1];
  v29 = *(v3 + 14);
  *&__srca[7] = *(v3 + 14);
  __srca[2] = v24;
  __srca[3] = v6;
  v21[0] = v12;
  v21[1] = v13;
  v14 = ArcPackage.displayIndex(by:)(v21);
  LOBYTE(a2) = v15;
  v30[4] = __srca[4];
  v30[5] = __srca[5];
  v30[6] = __srca[6];
  v31 = *&__srca[7];
  v30[0] = __srca[0];
  v30[1] = __srca[1];
  v30[2] = __srca[2];
  v30[3] = __srca[3];
  sub_242C66114(v23, v19);
  sub_242C66414(v30);

  if (a2)
  {
    return sub_242C6D138(__dst, &qword_27ECEFAD0, &qword_242F092D0);
  }

  memcpy(__srca, __dst, sizeof(__srca));
  if (j__get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV27TrailingButtonConfigurationVSg_0(__srca) == 1)
  {
    sub_242E38354(v14, v19);
    return sub_242C6CE30(v19);
  }

  v17 = v29;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_242D37EE4(v17);
  v17 = result;
  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (v14 >= *(v17 + 16))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v18 = v17 + 592 * v14;
  memcpy(v19, (v18 + 32), sizeof(v19));
  memcpy((v18 + 32), __srca, 0x250uLL);
  result = sub_242C6CE30(v19);
  *(v3 + 14) = v17;
  return result;
}

unint64_t ArcPackage.subscript.modify(void *a1, uint64_t *a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x958uLL);
  }

  v6 = v5;
  *a1 = v5;
  v5[296] = v2;
  v7 = *a2;
  v8 = a2[1];
  v5[297] = v7;
  v5[298] = v8;
  v9 = v2[5];
  v21 = v2[4];
  v22 = v9;
  v23 = v2[6];
  v10 = v2[1];
  v17 = *v2;
  v18 = v10;
  v11 = v2[3];
  v19 = v2[2];
  v20 = v11;
  v12 = *(v2 + 14);
  v24 = v12;
  v16[0] = v7;
  v16[1] = v8;
  result = ArcPackage.displayIndex(by:)(v16);
  if (v14)
  {
    sub_242C6CE84(v6);
LABEL_9:

    return sub_242E3A754;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v12 + 16))
  {
    v15 = v12 + 592 * result;
    memcpy(v6 + 148, (v15 + 32), 0x250uLL);
    memmove(v6 + 74, (v15 + 32), 0x250uLL);
    nullsub_2();
    memcpy(v6, v6 + 74, 0x250uLL);
    sub_242C6CDD4((v6 + 148), (v6 + 222));
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_242E3A754(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 2384);
  v4 = *(*a1 + 2376);
  if (a2)
  {
    memcpy((v2 + 1184), v2, 0x250uLL);
    memcpy(v5, v2, sizeof(v5));
    v6 = v4;
    v7 = v3;
    sub_242CA321C(v2 + 1184, v2 + 1776, &qword_27ECEFAD0, &qword_242F092D0);
    ArcPackage.subscript.setter(v5, &v6);
    memcpy((v2 + 592), v2, 0x250uLL);
    sub_242C6D138(v2 + 592, &qword_27ECEFAD0, &qword_242F092D0);
  }

  else
  {
    memcpy(v5, v2, sizeof(v5));
    v6 = v4;
    v7 = v3;
    ArcPackage.subscript.setter(v5, &v6);
  }

  free(v2);
}

uint64_t InfoPlist.iOSContentVersion.getter()
{
  v1 = *v0;

  return v1;
}

void InfoPlist.iOSContentVersion.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t InfoPlist.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void InfoPlist.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t InfoPlist.minimumSDKVersion.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

void InfoPlist.minimumSDKVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t InfoPlist.disclaimer.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void InfoPlist.disclaimer.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t InfoPlist.minimumCompatibilityVersion.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

void __swiftcall InfoPlist.init(iOSContentVersion:accessoryContentVersion:identifier:minimumSDKVersion:buildType:removeDisclaimerLabelOverride:disclaimer:minimumCompatibilityVersion:)(CarPlayAssetUI::InfoPlist *__return_ptr retstr, Swift::String_optional iOSContentVersion, Swift::Int accessoryContentVersion, Swift::String identifier, Swift::String_optional minimumSDKVersion, CarPlayAssetUI::ArcPackage::BuildType buildType, Swift::Bool_optional removeDisclaimerLabelOverride, Swift::String_optional disclaimer, Swift::Int_optional minimumCompatibilityVersion)
{
  object = disclaimer.value._object;
  countAndFlagsBits = disclaimer.value._countAndFlagsBits;
  v11 = *buildType;
  if (!disclaimer.value._object)
  {
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
  }

  retstr->iOSContentVersion = iOSContentVersion;
  retstr->accessoryContentVersion = accessoryContentVersion;
  retstr->identifier = identifier;
  retstr->minimumSDKVersion = minimumSDKVersion;
  retstr->buildType = v11;
  retstr->removeDisclaimerLabelOverride = removeDisclaimerLabelOverride;
  retstr->disclaimer.value._countAndFlagsBits = countAndFlagsBits;
  retstr->disclaimer.value._object = object;
  retstr->minimumCompatibilityVersion.value = minimumCompatibilityVersion.value;
  retstr->minimumCompatibilityVersion.is_nil = minimumCompatibilityVersion.is_nil;
}

unint64_t sub_242E3ABAC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        return 0xD000000000000017;
      }

      else
      {
        return 0xD000000000000011;
      }
    }

    if (a1 == 2)
    {
      if (*MEMORY[0x277CBED58])
      {
        return sub_242F04F30();
      }

      __break(1u);
    }

    result = *MEMORY[0x277CBED38];
    if (!*MEMORY[0x277CBED38])
    {
      __break(1u);
      return result;
    }

    return sub_242F04F30();
  }

  v1 = 0x707954646C697542;
  v2 = 0xD00000000000001DLL;
  if (a1 != 7)
  {
    v2 = 0x6D69616C63736944;
  }

  if (a1 != 6)
  {
    v1 = v2;
  }

  v3 = 0xD00000000000001BLL;
  if (a1 != 4)
  {
    v3 = 0xD000000000000011;
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

unint64_t sub_242E3ACFC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E6F6973726576;
    if (a1 != 2)
    {
      v5 = 0x696669746E656469;
    }

    v6 = 0xD000000000000011;
    if (a1)
    {
      v6 = 0xD000000000000017;
    }

    if (a1 <= 1u)
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
    v1 = 0x707954646C697562;
    v2 = 0xD00000000000001DLL;
    if (a1 != 7)
    {
      v2 = 0x6D69616C63736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
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

uint64_t sub_242E3AE44()
{
  v1 = *v0;
  sub_242F06390();
  sub_242E38098(v3, v1);
  return sub_242F063E0();
}

uint64_t sub_242E3AE94(uint64_t a1)
{
  v2 = *v1;
  sub_242F06390();
  sub_242E38098(v4, v2);
  return sub_242F063E0();
}

unint64_t sub_242E3AED8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_242E3CE24(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_242E3AF08@<X0>(unint64_t *a1@<X8>)
{
  result = sub_242E3ACFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_242E3AF3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E3CE24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E3AF64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E3C490(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E3AFA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E3C490(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double InfoPlist.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF95B8, &qword_242F3A4C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v27 - v5;
  v7 = *(v1 + 16);
  v34 = *(v1 + 24);
  v35 = v7;
  v8 = *(v1 + 32);
  v9 = *(v1 + 48);
  v30 = *(v1 + 40);
  v31 = v9;
  v10 = *(v1 + 56);
  v28 = *(v1 + 57);
  v29 = v10;
  v11 = *(v1 + 72);
  v27[1] = *(v1 + 64);
  v27[2] = v11;
  v32 = *(v1 + 80);
  v33 = v8;
  v12 = *(v1 + 88);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  v17 = __swift_project_boxed_opaque_existential_2Tm(v14, v13);
  sub_242E3C490(v17, v18, v19);
  sub_242F064C0();
  LOBYTE(v38) = 0;
  v20 = v36;
  sub_242F05E50();
  if (v20)
  {
    (*(v4 + 8))(v6, v16);
  }

  else
  {
    LODWORD(v36) = v12;
    v22 = v4;
    LOBYTE(v38) = 1;
    v23 = v35;
    sub_242F05F00();
    v38 = v23;
    sub_242F05F60();
    LOBYTE(v38) = 2;
    sub_242F05EC0();

    LOBYTE(v38) = 3;
    sub_242F05EC0();
    LOBYTE(v38) = 5;
    v24 = sub_242F05E50();
    LOBYTE(v38) = v29;
    v37 = 6;
    sub_242E3C4E4(v24, v25, v26);
    sub_242F05F20();
    LOBYTE(v38) = 7;
    sub_242F05E60();
    LOBYTE(v38) = 8;
    sub_242F05E50();
    LOBYTE(v38) = 4;
    sub_242F05E90();
    (*(v22 + 8))(v6, v16);
  }

  return result;
}

uint64_t ArcPackage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2128, &qword_242F13A80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - v5;
  v7 = *(v1 + 16);
  v35 = *(v1 + 24);
  v36 = v7;
  v8 = *(v1 + 32);
  v33 = *(v1 + 40);
  v34 = v8;
  v39 = *(v1 + 48);
  v9 = *(v1 + 56);
  v31 = *(v1 + 64);
  v32 = v9;
  v10 = *(v1 + 72);
  v29 = *(v1 + 80);
  v30 = v10;
  v11 = *(v1 + 96);
  v27 = *(v1 + 88);
  v28 = v11;
  v26 = *(v1 + 104);
  v25 = *(v1 + 112);
  v12 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E3C538(v12, v13, v14);
  sub_242F064C0();
  LOBYTE(v38) = 0;
  v15 = v37;
  sub_242F05EC0();
  if (v15)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v16 = v39;
  v17 = v30;
  sub_242CDCA60(v36, v35, v34, 1);
  LOBYTE(v38) = 2;
  v18 = sub_242F05F10();
  LOBYTE(v38) = v16;
  v40 = 3;
  sub_242C97064(v18, v19, v20);
  sub_242F05F20();
  LOBYTE(v38) = 4;
  sub_242F05EC0();
  sub_242CDCBAC(v17, v29, 5);
  LOBYTE(v38) = 6;
  v21 = sub_242F05EC0();
  LOBYTE(v38) = v26;
  v40 = 7;
  sub_242E3C4E4(v21, v22, v23);
  sub_242F05F20();
  v38 = v25;
  v40 = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF95D8, &qword_242F3A4C8);
  sub_242E3C634(&qword_27ECF95E0, sub_242E3C58C, MEMORY[0x277D83948]);
  sub_242F05F20();
  return (*(v4 + 8))(v6, 0);
}

void ArcPackage.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF95F0, &qword_242F3A4D0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E3C538(v8, v9, v10);
  sub_242F06480();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  else
  {
    v11 = v5;
    v12 = v72;
    LOBYTE(v51) = 0;
    v13 = sub_242F05DA0();
    v42 = v14;
    LOBYTE(v43) = 1;
    sub_242F05D90();
    v41 = v52;
    if (v52)
    {
      v39 = v51;
    }

    else
    {
      v39 = 0;
      v41 = 0xE000000000000000;
    }

    LOBYTE(v51) = 2;
    v38 = sub_242F05DF0();
    LOBYTE(v43) = 3;
    sub_242C9700C(v38, v15, v16);
    sub_242F05E00();
    v37 = v51;
    LOBYTE(v51) = 4;
    v36 = sub_242F05DA0();
    v40 = v17;
    LOBYTE(v43) = 5;
    sub_242F05D90();
    if (v52)
    {
      v35 = 0;
    }

    else
    {
      v35 = v51;
    }

    LOBYTE(v51) = 6;
    v18 = v7;
    v34 = sub_242F05DA0();
    v20 = v19;
    LOBYTE(v43) = 7;
    sub_242E3C5E0(v34, v19, v21);
    sub_242F05E00();
    HIDWORD(v32) = v51;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF95D8, &qword_242F3A4C8);
    v68 = 8;
    sub_242E3C634(&qword_27ECF9600, sub_242E3C6AC, MEMORY[0x277D83978]);
    sub_242F05E00();
    (*(v11 + 8))(v18, v4);
    v22 = v69;
    v33 = v69;
    *&v43 = v13;
    *(&v43 + 1) = v42;
    v23 = v38;
    v24 = v39;
    *&v44 = v39;
    *(&v44 + 1) = v41;
    *&v45 = 7;
    *(&v45 + 1) = v38;
    v25 = v37;
    LOBYTE(v46) = v37;
    *(&v46 + 1) = v36;
    *&v47 = v40;
    *(&v47 + 1) = v35;
    *&v48 = 7;
    *(&v48 + 1) = v34;
    *&v49 = v20;
    BYTE8(v49) = BYTE4(v32);
    v50 = v69;
    v26 = v43;
    v27 = v44;
    v28 = v46;
    *(v12 + 32) = v45;
    *(v12 + 48) = v28;
    *v12 = v26;
    *(v12 + 16) = v27;
    v29 = v47;
    v30 = v48;
    v31 = v49;
    *(v12 + 112) = v22;
    *(v12 + 80) = v30;
    *(v12 + 96) = v31;
    *(v12 + 64) = v29;
    sub_242C66114(&v43, &v51);
    __swift_destroy_boxed_opaque_existential_2Tm(a1);
    v51 = v13;
    v52 = v42;
    v53 = v24;
    v54 = v41;
    v55 = 7;
    v56 = v23;
    v57 = v25;
    *v58 = v71[0];
    *&v58[3] = *(v71 + 3);
    v59 = v36;
    v60 = v40;
    v61 = v35;
    v62 = 7;
    v63 = v34;
    v64 = v20;
    v65 = BYTE4(v32);
    *&v66[3] = *&v70[3];
    *v66 = *v70;
    v67 = v33;
    sub_242C66414(&v51);
  }
}

char *sub_242E3BC70(char *a1, int64_t a2, char a3)
{
  result = sub_242D9A5F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BC90(char *a1, int64_t a2, char a3)
{
  result = sub_242D9A704(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BCB0(void *a1, int64_t a2, char a3)
{
  result = sub_242D9ABB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BCD0(char *a1, int64_t a2, char a3)
{
  result = sub_242D9ACFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BCF0(void *a1, int64_t a2, char a3)
{
  result = sub_242D9AE18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BD10(char *a1, int64_t a2, char a3)
{
  result = sub_242D9AF60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BD30(char *a1, int64_t a2, char a3)
{
  result = sub_242D9B084(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BD50(void *a1, int64_t a2, char a3)
{
  result = sub_242D9B188(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BD70(void *a1, int64_t a2, char a3)
{
  result = sub_242D9B2D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BD90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_242D9B41C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BDB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_242D9B440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BDD0(void *a1, int64_t a2, char a3)
{
  result = sub_242D9B598(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BDF0(char *a1, int64_t a2, char a3)
{
  result = sub_242D9B6E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BE10(void *a1, int64_t a2, char a3)
{
  result = sub_242D9B808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BE30(char *a1, int64_t a2, char a3)
{
  result = sub_242D9B93C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BE50(void *a1, int64_t a2, char a3)
{
  result = sub_242D9BA48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BE70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_242D9BB7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BE90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_242D9BBA4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BEB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_242D9BBCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BED0(char *a1, int64_t a2, char a3)
{
  result = sub_242D9BBF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BEF0(void *a1, int64_t a2, char a3)
{
  result = sub_242D9BCF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BF10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_242D9BE2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BF30(void *a1, int64_t a2, char a3)
{
  result = sub_242D9C030(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BF50(char *a1, int64_t a2, char a3)
{
  result = sub_242D9C164(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_242E3BF70(char *a1, int64_t a2, char a3)
{
  result = sub_242D9C3BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_242E3BF90(void *a1, int64_t a2, char a3)
{
  result = sub_242D9C4C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_242E3BFB0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x245D287F0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x245D287F0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_242E3C03C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x245D287F0](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x245D287F0](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _s14CarPlayAssetUI9InfoPlistV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = *(a1 + 56);
  v10 = *(a1 + 57);
  v11 = a1[9];
  v54 = a1[10];
  v58 = *(a1 + 88);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v15 = *(a2 + 32);
  v17 = *(a2 + 40);
  v16 = *(a2 + 48);
  v18 = *(a2 + 56);
  v19 = *(a2 + 57);
  v55 = *(a2 + 64);
  v56 = a1[8];
  v20 = *(a2 + 72);
  v53 = *(a2 + 80);
  v57 = *(a2 + 88);
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 == *a2 && v3 == v12)
    {
      if (v4 != v13)
      {
        return 0;
      }
    }

    else
    {
      v47 = *(a2 + 56);
      v48 = *(a1 + 56);
      v49 = *(a2 + 57);
      v50 = *(a1 + 57);
      v51 = *(a2 + 72);
      v52 = a1[9];
      v22 = sub_242F06110();
      result = 0;
      if ((v22 & 1) == 0)
      {
        return result;
      }

      v20 = v51;
      v11 = v52;
      v19 = v49;
      v10 = v50;
      v18 = v47;
      v9 = v48;
      if (v4 != v13)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (v12 || v4 != v13)
    {
      return result;
    }
  }

  if (v5 != v14 || v6 != v15)
  {
    v23 = v11;
    v24 = v20;
    v25 = v10;
    v26 = v19;
    v27 = v9;
    v28 = v18;
    v29 = sub_242F06110();
    v18 = v28;
    v9 = v27;
    v19 = v26;
    v10 = v25;
    v20 = v24;
    v11 = v23;
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v16)
    {
      return 0;
    }

    v30 = v20;
    v31 = v11;
    if (v7 != v17 || v8 != v16)
    {
      v32 = v10;
      v33 = v19;
      v34 = v9;
      v35 = v18;
      v36 = sub_242F06110();
      v18 = v35;
      v9 = v34;
      v19 = v33;
      v10 = v32;
      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v30 = v20;
    v31 = v11;
    if (v16)
    {
      return 0;
    }
  }

  v37 = v19;
  v38 = v10;
  if (v9)
  {
    v39 = 0x657361656C6572;
  }

  else
  {
    v39 = 0x6775626564;
  }

  if (v9)
  {
    v40 = 0xE700000000000000;
  }

  else
  {
    v40 = 0xE500000000000000;
  }

  if (v18)
  {
    v41 = 0x657361656C6572;
  }

  else
  {
    v41 = 0x6775626564;
  }

  if (v18)
  {
    v42 = 0xE700000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  if (v39 == v41 && v40 == v42)
  {
  }

  else
  {
    v43 = sub_242F06110();

    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  if (v38 == 2)
  {
    v44 = v31;
    v45 = v30;
    if (v37 != 2)
    {
      return 0;
    }

    goto LABEL_43;
  }

  result = 0;
  if (v37 != 2)
  {
    v44 = v31;
    v45 = v30;
    if (((v37 ^ v38) & 1) == 0)
    {
LABEL_43:
      if (v44)
      {
        if (!v45 || (v56 != v55 || v44 != v45) && (sub_242F06110() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v45)
      {
        return 0;
      }

      if ((v58 & 1) == 0)
      {
        v46 = v57;
        if (v54 != v53)
        {
          v46 = 1;
        }

        return (v46 & 1) == 0;
      }

      return (v57 & 1) != 0;
    }
  }

  return result;
}

uint64_t sub_242E3C3C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_242E3C430(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_242E3C490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF95C0;
  if (!qword_27ECF95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95C0);
  }

  return result;
}

unint64_t sub_242E3C4E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF95C8;
  if (!qword_27ECF95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95C8);
  }

  return result;
}

unint64_t sub_242E3C538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF95D0;
  if (!qword_27ECF95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95D0);
  }

  return result;
}

unint64_t sub_242E3C58C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF95E8;
  if (!qword_27ECF95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95E8);
  }

  return result;
}

unint64_t sub_242E3C5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF95F8;
  if (!qword_27ECF95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF95F8);
  }

  return result;
}

uint64_t sub_242E3C634(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECF95D8, &qword_242F3A4C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_242E3C6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9608;
  if (!qword_27ECF9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9608);
  }

  return result;
}

unint64_t sub_242E3C704(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9610;
  if (!qword_27ECF9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9610);
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_242E3C784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_242E3C7CC(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242E3C848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_242E3C890(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_242E3C91C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9618;
  if (!qword_27ECF9618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9618);
  }

  return result;
}

unint64_t sub_242E3C974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9620;
  if (!qword_27ECF9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9620);
  }

  return result;
}

unint64_t sub_242E3C9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9628;
  if (!qword_27ECF9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9628);
  }

  return result;
}

unint64_t sub_242E3CA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9630;
  if (!qword_27ECF9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9630);
  }

  return result;
}

unint64_t sub_242E3CA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9638;
  if (!qword_27ECF9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9638);
  }

  return result;
}

unint64_t sub_242E3CAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9640;
  if (!qword_27ECF9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9640);
  }

  return result;
}

uint64_t sub_242E3CB28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F582B0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54656C6369686576 && a2 == 0xEB00000000657079 || (sub_242F06110() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4972656E74726170 && a2 == 0xE900000000000044 || (sub_242F06110() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000242F582F0 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000242F58310 == a2 || (sub_242F06110() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x707954646C697562 && a2 == 0xE900000000000065 || (sub_242F06110() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7379616C70736964 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_242E3CE24(uint64_t a1, uint64_t a2)
{
  v2 = sub_242F05CD0();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_242E3CE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9648;
  if (!qword_27ECF9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9648);
  }

  return result;
}

uint64_t static DynamicAppearanceValue<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_242F04EE0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for DynamicAppearanceValue(0, a3, v5, v6);
  return sub_242F04EE0() & 1;
}

uint64_t DynamicAppearanceValue.init(lightMode:darkMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *(*(a3 - 8) + 32);
  v11(a3 - 8, a4, a1);
  v9 = a4 + *(type metadata accessor for DynamicAppearanceValue(0, a3, v7, v8) + 28);

  return v11(v9, a2, a3);
}

uint64_t DynamicAppearanceValue<A>.assets.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0200, &qword_242F0A530);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_242F0A4E0;
  v6 = *(a1 + 16);
  *(v5 + 56) = v6;
  *(v5 + 64) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v5 + 32));
  v8 = *(*(v6 - 8) + 16);
  v8(boxed_opaque_existential_1, v2, v6);
  v9 = *(a1 + 28);
  *(v5 + 96) = v6;
  *(v5 + 104) = a2;
  v10 = __swift_allocate_boxed_opaque_existential_1((v5 + 72));
  v8(v10, v2 + v9, v6);
  return v5;
}

uint64_t DynamicAppearanceValue<A>.restore(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v7 = *(a2 + 16);
  result = v6(a1, v7);
  if (!v3)
  {
    return (v6)(a1, v7, a3);
  }

  return result;
}

uint64_t DynamicAppearanceValue.resolve(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_242F03BB0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7, v9);
  v12 = (*(v8 + 88))(v11, v7);
  if (v12 == *MEMORY[0x277CDF3D0])
  {
    return (*(*(*(a2 + 16) - 8) + 16))(a3, v3);
  }

  if (v12 == *MEMORY[0x277CDF3C0])
  {
    return (*(*(*(a2 + 16) - 8) + 16))(a3, v3 + *(a2 + 28));
  }

  (*(*(*(a2 + 16) - 8) + 16))(a3, v3);
  return (*(v8 + 8))(v11, v7);
}

uint64_t DynamicAppearanceValue.resolve(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1 == 2)
  {
    v3 += *(a2 + 28);
  }

  v5 = *(*(*(a2 + 16) - 8) + 16);

  return v5(a3, v3);
}

uint64_t sub_242E3D4AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646F4D746867696CLL && a2 == 0xE900000000000065;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65646F4D6B726164 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_242E3D580(char a1)
{
  if (a1)
  {
    return 0x65646F4D6B726164;
  }

  else
  {
    return 0x646F4D746867696CLL;
  }
}

uint64_t sub_242E3D5EC(uint64_t a1)
{
  sub_242F06390();
  sub_242C5BB50(v3, *v1);
  return sub_242F063E0();
}

uint64_t sub_242E3D644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E3D4AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E3D670@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242C8F750();
  *a1 = result;
  return result;
}

uint64_t sub_242E3D69C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E3D6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

unint64_t sub_242E3D748()
{
  v1 = 0x6144656C676E6973;
  v2 = 0x63696D616E7964;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x694C656C676E6973;
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

uint64_t sub_242E3D7D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242E42FC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242E3D7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E41400(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E3D838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E41400(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void sub_242E3D888(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746867696CLL && a2 == 0xE500000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_242F06110();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_242E3D90C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E414FC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E3D948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E414FC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E3D984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E41454(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E3D9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E41454(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E3D9FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E415A4(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E3DA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E415A4(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_242E3DA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E41550(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_242E3DAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_242E41550(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t AppearanceType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9650, &qword_242F3A9D8);
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v55 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9658, &qword_242F3A9E0);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9660, &qword_242F3A9E8);
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9668, &qword_242F3A9F0);
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9670, &qword_242F3A9F8);
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  v16 = __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242E41400(v16, v17, v18);
  sub_242F064C0();
  memcpy(v63, v58, 0x340uLL);
  v19 = sub_242D0B464(v63);
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v30 = sub_242C56CEC(v63);
      v62[0] = 3;
      sub_242E41454(v30, v31, v32);
      v33 = v55;
      v34 = v60;
      sub_242F05E40();
      v35 = memcpy(v62, v30, sizeof(v62));
      v64 = 0;
      sub_242E414A8(v35, v36, v37);
      v38 = v57;
      v39 = v61;
      sub_242F05F20();
      if (!v39)
      {
        memcpy(v62, (v30 + 416), sizeof(v62));
        v64 = 1;
        sub_242F05F20();
      }

      (*(v56 + 8))(v33, v38);
      return (*(v59 + 8))(v15, v34);
    }

    else
    {
      v62[0] = 0;
      sub_242E415A4(v19, v20, v21);
      v48 = v60;
      sub_242F05E40();
      (*(v50 + 8))(v12, v10);
      return (*(v59 + 8))(v15, v48);
    }
  }

  else
  {
    if (v19)
    {
      v41 = sub_242C56CEC(v63);
      v62[0] = 2;
      sub_242E414FC(v41, v42, v43);
      v25 = v60;
      sub_242F05E40();
      v44 = memcpy(v62, v41, sizeof(v62));
      sub_242E414A8(v44, v45, v46);
      v47 = v54;
      sub_242F05F20();
      (*(v53 + 8))(v6, v47);
    }

    else
    {
      v22 = sub_242C56CEC(v63);
      v62[0] = 1;
      sub_242E41550(v22, v23, v24);
      v25 = v60;
      sub_242F05E40();
      v26 = memcpy(v62, v22, sizeof(v62));
      sub_242E414A8(v26, v27, v28);
      v29 = v52;
      sub_242F05F20();
      (*(v51 + 8))(v9, v29);
    }

    return (*(v59 + 8))(v15, v25);
  }
}

uint64_t AppearanceType.hash(into:)(uint64_t a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  v3 = sub_242D0B464(__dst);
  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = sub_242C56CEC(__dst);
      v5 = 2;
    }

    else
    {
      v4 = sub_242C56CEC(__dst);
      v5 = 1;
    }

    MEMORY[0x245D279A0](v5);
    v7 = v4;
    goto LABEL_8;
  }

  if (v3 == 2)
  {
    v6 = sub_242C56CEC(__dst);
    MEMORY[0x245D279A0](3);
    memcpy(v9, v6, sizeof(v9));
    Color.ColorValues.hash(into:)(a1);
    v7 = v6 + 416;
LABEL_8:
    memcpy(v9, v7, sizeof(v9));
    return Color.ColorValues.hash(into:)(a1);
  }

  return MEMORY[0x245D279A0](0);
}

uint64_t AppearanceType.hashValue.getter()
{
  sub_242F06390();
  AppearanceType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t AppearanceType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v60 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF96A8, &qword_242F3AA00);
  v4 = *(v3 - 8);
  v58 = v3;
  v59 = v4;
  MEMORY[0x28223BE20](v3);
  v63 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF96B0, &qword_242F3AA08);
  v7 = *(v6 - 8);
  v56 = v6;
  v57 = v7;
  MEMORY[0x28223BE20](v6);
  v62 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF96B8, &qword_242F3AA10);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF96C0, &qword_242F3AA18);
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF96C8, &unk_242F3AA20);
  v61 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - v16;
  v18 = a1[3];
  v65 = a1;
  v19 = __swift_project_boxed_opaque_existential_2Tm(a1, v18);
  sub_242E41400(v19, v20, v21);
  v22 = v64;
  sub_242F06480();
  if (!v22)
  {
    v64 = v14;
    v52 = v12;
    v23 = v11;
    v25 = v62;
    v24 = v63;
    v26 = v61;
    v27 = sub_242F05E10();
    v28 = (2 * *(v27 + 16)) | 1;
    v71[104] = v27;
    v71[105] = v27 + 32;
    v72 = 0;
    v73 = v28;
    v29 = sub_242C7FBF0();
    if (v29 != 4 && v72 == v73 >> 1)
    {
      if (v29 > 1u)
      {
        if (v29 == 2)
        {
          v67[0].i8[0] = 2;
          sub_242E414FC(v29, v30, v31);
          v38 = sub_242F05D10();
          sub_242E415F8(v38, v39, v40);
          v41 = v56;
          sub_242F05E00();
          (*(v57 + 8))(v25, v41);
          (*(v26 + 8))(v17, v15);
          swift_unknownObjectRelease();
          memcpy(v67, v66, 0x1A0uLL);
          sub_242E41810(v67);
        }

        else
        {
          v67[0].i8[0] = 3;
          sub_242E41454(v29, v30, v31);
          v47 = sub_242F05D10();
          v75 = 0;
          sub_242E415F8(v47, v48, v49);
          v50 = v58;
          sub_242F05E00();
          memcpy(v69, v70, sizeof(v69));
          v74 = 1;
          sub_242F05E00();
          (*(v59 + 8))(v24, v50);
          (*(v26 + 8))(v17, v15);
          swift_unknownObjectRelease();
          memcpy(&v66[416], v68, 0x1A0uLL);
          memcpy(v66, v69, 0x1A0uLL);
          memcpy(v67, v66, sizeof(v67));
          sub_242E4164C(v67);
        }
      }

      else
      {
        if (!v29)
        {
          v67[0].i8[0] = 0;
          sub_242E415A4(v29, v30, v31);
          v32 = v64;
          sub_242F05D10();
          (*(v53 + 8))(v32, v52);
          (*(v26 + 8))(v17, v15);
          swift_unknownObjectRelease();
          sub_242D0B2E4(v71);
LABEL_14:
          memcpy(v60, v71, 0x340uLL);
          return __swift_destroy_boxed_opaque_existential_2Tm(v65);
        }

        v67[0].i8[0] = 1;
        sub_242E41550(v29, v30, v31);
        v42 = v23;
        v43 = sub_242F05D10();
        sub_242E415F8(v43, v44, v45);
        v46 = v55;
        sub_242F05E00();
        (*(v54 + 8))(v42, v46);
        (*(v26 + 8))(v17, v15);
        swift_unknownObjectRelease();
        memcpy(v67, v66, 0x1A0uLL);
        sub_242E419D4(v67);
      }

      memcpy(v71, v67, 0x340uLL);
      goto LABEL_14;
    }

    v33 = v17;
    v34 = sub_242F05B10();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
    *v36 = &type metadata for AppearanceType;
    sub_242F05D20();
    sub_242F05AF0();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
    swift_willThrow();
    (*(v26 + 8))(v33, v15);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_2Tm(v65);
}

uint64_t sub_242E3EB08()
{
  sub_242F06390();
  AppearanceType.hash(into:)(v1);
  return sub_242F063E0();
}

uint64_t sub_242E3EB4C(uint64_t a1)
{
  sub_242F06390();
  AppearanceType.hash(into:)(v2);
  return sub_242F063E0();
}

uint64_t static Dynamic.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v54 = a1;
  v55 = a2;
  v16 = type metadata accessor for DynamicAppearanceValue(0, a4, a3, a4);
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x28223BE20](v16);
  v46 = &v45 - v17;
  v51 = *(a3 - 8);
  MEMORY[0x28223BE20](v18);
  v45 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56[0] = a3;
  v56[1] = a4;
  v48 = a7;
  v49 = a4;
  v56[2] = a5;
  v56[3] = a6;
  v56[4] = a7;
  v56[5] = a8;
  v56[6] = a9;
  v56[7] = a10;
  v47 = a10;
  v20 = type metadata accessor for Dynamic(0, v56);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v45 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v50 = *(TupleTypeMetadata2 - 8);
  v28 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v30 = &v45 - v29;
  v32 = *(v31 + 48);
  v33 = *(v21 + 16);
  v33(&v45 - v29, v54, v20, v28);
  (v33)(&v30[v32], v55, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (v33)(v26, v30, v20);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v40 = v51;
      v41 = &v30[v32];
      v42 = v45;
      (*(v51 + 32))(v45, v41, a3);
      v38 = sub_242F04EE0();
      v43 = *(v40 + 8);
      v43(v42, a3);
      v43(v26, a3);
      goto LABEL_9;
    }

    (*(v51 + 8))(v26, a3);
    goto LABEL_7;
  }

  (v33)(v23, v30, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v52 + 8))(v23, v53);
LABEL_7:
    v38 = 0;
    v21 = v50;
    v20 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v35 = v52;
  v34 = v53;
  v36 = &v30[v32];
  v37 = v46;
  (*(v52 + 32))(v46, v36, v53);
  v38 = static DynamicAppearanceValue<A>.== infix(_:_:)(v23, v37, v49, *(v47 + 8));
  v39 = *(v35 + 8);
  v39(v37, v34);
  v39(v23, v34);
LABEL_9:
  (*(v21 + 8))(v30, v20);
  return v38 & 1;
}

uint64_t sub_242E3F074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C676E6973 && a2 == 0xE600000000000000;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63696D616E7964 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_242F06110();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_242E3F13C(char a1)
{
  if (a1)
  {
    return 0x63696D616E7964;
  }

  else
  {
    return 0x656C676E6973;
  }
}

uint64_t sub_242E3F170(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_242F06110();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_242E3F2A0(uint64_t a1)
{
  sub_242F06390();
  sub_242C5BB50(v3, *v1);
  return sub_242F063E0();
}

uint64_t sub_242E3F334@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E3F074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_242E3F37C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242C8F750();
  *a1 = result;
  return result;
}

uint64_t sub_242E3F3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E3F40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242E3F48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E3F4E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242E3F534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_242E3F170(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_242E3F580@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void, void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5], a1[6], a1[7], a1[8], a1[9]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_242E3F5C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242E3F61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Dynamic.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v3 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v71 = a2[7];
  v9 = a2[8];
  v8 = a2[9];
  v63 = v4;
  v64 = v3;
  v65 = v5;
  v66 = v6;
  v10 = v5;
  v58 = a1;
  v59 = v5;
  v67 = v7;
  v68 = v71;
  v69 = v9;
  v70 = v8;
  v57 = v8;
  v47 = type metadata accessor for Dynamic.DynamicCodingKeys(255, &v63);
  WitnessTable = swift_getWitnessTable();
  v54 = sub_242F05F30();
  v52 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v49 = v40 - v11;
  v56 = v3;
  v51 = type metadata accessor for DynamicAppearanceValue(0, v3, v12, v13);
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = v40 - v14;
  v63 = v4;
  v64 = v3;
  v65 = v10;
  v66 = v6;
  v15 = v71;
  v67 = v7;
  v68 = v71;
  v69 = v9;
  v70 = v8;
  v16 = type metadata accessor for Dynamic.SingleCodingKeys(255, &v63);
  v17 = swift_getWitnessTable();
  v42 = v16;
  v40[1] = v17;
  v45 = sub_242F05F30();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v41 = v40 - v18;
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v19);
  v40[0] = v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 - 1);
  MEMORY[0x28223BE20](v22);
  v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v4;
  v64 = v56;
  v65 = v59;
  v66 = v6;
  v55 = v4;
  v56 = v6;
  v67 = v7;
  v68 = v15;
  v53 = v9;
  v69 = v9;
  v70 = v57;
  type metadata accessor for Dynamic.CodingKeys(255, &v63);
  swift_getWitnessTable();
  v25 = sub_242F05F30();
  v59 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = v40 - v26;
  __swift_project_boxed_opaque_existential_2Tm(v58, v58[3]);
  sub_242F064C0();
  (*(v21 + 16))(v24, v60, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v50;
    v29 = v48;
    v30 = v24;
    v31 = v51;
    (*(v50 + 32))(v48, v30, v51);
    LOBYTE(v63) = 1;
    v32 = v49;
    v60 = v25;
    sub_242F05E40();
    v61 = v71;
    v62 = v53;
    swift_getWitnessTable();
    v33 = v54;
    sub_242F05F20();
    (*(v52 + 8))(v32, v33);
    (*(v28 + 8))(v29, v31);
    v25 = v60;
  }

  else
  {
    v34 = v43;
    v35 = v40[0];
    v36 = v55;
    (*(v43 + 32))(v40[0], v24, v55);
    LOBYTE(v63) = 0;
    v37 = v41;
    sub_242F05E40();
    v38 = v45;
    sub_242F05F20();
    (*(v44 + 8))(v37, v38);
    (*(v34 + 8))(v35, v36);
  }

  return (*(v59 + 8))(v27, v25);
}

uint64_t Dynamic.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DynamicAppearanceValue(0, *(a2 + 24), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = *(a2 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v4, a2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v18, v6);
    MEMORY[0x245D279A0](1);
    sub_242F04D90();
    sub_242F04D90();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    MEMORY[0x245D279A0](0);
    sub_242F04D90();
    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t Dynamic.hashValue.getter(uint64_t a1)
{
  sub_242F06390();
  Dynamic.hash(into:)(v5, a1, v2, v3);
  return sub_242F063E0();
}

uint64_t Dynamic.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v97 = a1;
  v80 = a9;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v93 = a6;
  v94 = a7;
  v95 = a8;
  v96 = a10;
  v78 = type metadata accessor for Dynamic.DynamicCodingKeys(255, &v91);
  WitnessTable = swift_getWitnessTable();
  v72 = sub_242F05E20();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v79 = &v61 - v17;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v84 = a5;
  v93 = a6;
  v94 = a7;
  v95 = a8;
  v96 = a10;
  v18 = type metadata accessor for Dynamic.SingleCodingKeys(255, &v91);
  v19 = swift_getWitnessTable();
  v75 = v18;
  v74 = v19;
  v67 = sub_242F05E20();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v76 = &v61 - v20;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  *&v92 = a4;
  *(&v92 + 1) = a5;
  v93 = a6;
  v94 = a7;
  v95 = a8;
  v96 = a10;
  type metadata accessor for Dynamic.CodingKeys(255, &v91);
  v85 = swift_getWitnessTable();
  v81 = sub_242F05E20();
  v83 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v22 = &v61 - v21;
  v69 = a2;
  *&v91 = a2;
  *(&v91 + 1) = a3;
  v68 = a3;
  v71 = a4;
  *&v92 = a4;
  *(&v92 + 1) = v84;
  v93 = a6;
  v94 = a7;
  v73 = a7;
  v84 = a8;
  v95 = a8;
  v96 = a10;
  v23 = type metadata accessor for Dynamic(0, &v91);
  v65 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v61 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v61 - v30;
  __swift_project_boxed_opaque_existential_2Tm(v97, v97[3]);
  v82 = v22;
  v32 = v86;
  sub_242F06480();
  if (v32)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(v97);
  }

  v63 = v28;
  v64 = v25;
  v85 = 0;
  v62 = v31;
  v86 = v23;
  v33 = v84;
  v34 = v82;
  v35 = v81;
  *&v89 = sub_242F05E10();
  sub_242F053E0();
  swift_getWitnessTable();
  *&v91 = sub_242F05910();
  *(&v91 + 1) = v36;
  *&v92 = v37;
  *(&v92 + 1) = v38;
  sub_242F05900();
  swift_getWitnessTable();
  sub_242F055C0();
  v39 = v89;
  if (v89 == 2 || (v61 = v91, v89 = v91, v90 = v92, (sub_242F05610() & 1) == 0))
  {
    v46 = sub_242F05B10();
    swift_allocError();
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECEFF10, &qword_242F095A0);
    *v48 = v86;
    sub_242F05D20();
    sub_242F05AF0();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D84160], v46);
    swift_willThrow();
    (*(v83 + 8))(v34, v35);
    goto LABEL_8;
  }

  if ((v39 & 1) == 0)
  {
    LOBYTE(v89) = 0;
    v50 = v76;
    v51 = v35;
    v52 = v85;
    sub_242F05D10();
    v45 = v80;
    if (!v52)
    {
      v53 = v63;
      v54 = v67;
      sub_242F05E00();
      (*(v66 + 8))(v50, v54);
      (*(v83 + 8))(v34, v51);
      swift_unknownObjectRelease();
      v58 = v86;
      goto LABEL_14;
    }

    (*(v83 + 8))(v34, v51);
LABEL_8:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_2Tm(v97);
  }

  LOBYTE(v89) = 1;
  v40 = v79;
  v41 = v35;
  v42 = v85;
  sub_242F05D10();
  v45 = v80;
  if (v42)
  {
    (*(v83 + 8))(v34, v41);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_2Tm(v97);
  }

  type metadata accessor for DynamicAppearanceValue(0, v68, v43, v44);
  v87 = v73;
  v88 = v33;
  swift_getWitnessTable();
  v55 = v64;
  v56 = v72;
  sub_242F05E00();
  v57 = v83;
  v53 = v55;
  (*(v70 + 8))(v40, v56);
  (*(v57 + 8))(v34, v41);
  swift_unknownObjectRelease();
  v58 = v86;
LABEL_14:
  swift_storeEnumTagMultiPayload();
  v59 = *(v65 + 32);
  v60 = v62;
  v59(v62, v53, v58);
  v59(v45, v60, v58);
  return __swift_destroy_boxed_opaque_existential_2Tm(v97);
}

uint64_t sub_242E4097C(uint64_t a1, uint64_t a2)
{
  sub_242F06390();
  Dynamic.hash(into:)(v6, a2, v3, v4);
  return sub_242F063E0();
}

uint64_t DynamicAppearanceValue<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a2;
  v11[1] = a4;
  type metadata accessor for DynamicAppearanceValue.CodingKeys(255, *(a2 + 16), a3, a4);
  swift_getWitnessTable();
  v5 = sub_242F05F30();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  sub_242F064C0();
  v13 = 0;
  v9 = v11[3];
  sub_242F05F20();
  if (!v9)
  {
    v12 = 1;
    sub_242F05F20();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DynamicAppearanceValue<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v29 = a4;
  v31 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v30 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = &v27 - v8;
  type metadata accessor for DynamicAppearanceValue.CodingKeys(255, v9, v10, v11);
  swift_getWitnessTable();
  v35 = sub_242F05E20();
  v32 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v13 = &v27 - v12;
  v16 = type metadata accessor for DynamicAppearanceValue(0, a2, v14, v15);
  v28 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  __swift_project_boxed_opaque_existential_2Tm(a1, a1[3]);
  v19 = v36;
  sub_242F06480();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_2Tm(a1);
  }

  v20 = v18;
  v36 = v16;
  v21 = v30;
  v22 = v31;
  v38 = 0;
  sub_242F05E00();
  v23 = v33;
  v33 = *(v22 + 32);
  (v33)(v20, v23, a2);
  v37 = 1;
  sub_242F05E00();
  (*(v32 + 8))(v13, v35);
  v24 = v36;
  (v33)(&v20[*(v36 + 28)], v21, a2);
  v25 = v28;
  (*(v28 + 16))(v29, v20, v24);
  __swift_destroy_boxed_opaque_existential_2Tm(a1);
  return (*(v25 + 8))(v20, v24);
}

uint64_t DynamicAppearanceValue<A>.hashValue.getter(uint64_t a1)
{
  sub_242F06390();
  sub_242F04D90();
  sub_242F04D90();
  return sub_242F063E0();
}

uint64_t sub_242E41090(uint64_t a1, uint64_t a2)
{
  sub_242F06390();
  DynamicAppearanceValue<A>.hash(into:)(v4, a2);
  return sub_242F063E0();
}

uint64_t _s14CarPlayAssetUI14AppearanceTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  memcpy(__dst, v3, sizeof(__dst));
  memcpy(__src, v2, sizeof(__src));
  memcpy(v18, v4, sizeof(v18));
  memcpy(v19, v2, sizeof(v19));
  memcpy(v20, v4, sizeof(v20));
  v5 = sub_242D0B464(v20);
  if (v5 <= 1)
  {
    if (v5)
    {
      v6 = sub_242C56CEC(v20);
      memcpy(v15, __src, sizeof(v15));
      if (sub_242D0B464(v15) == 1)
      {
LABEL_10:
        v10 = sub_242C56CEC(v15);
        memcpy(v14, v6, sizeof(v14));
        memcpy(v13, v10, sizeof(v13));
        sub_242D0BDE0(__src, v12);
        sub_242D0BDE0(__dst, v12);
        sub_242D0BDE0(__src, v12);
        sub_242D0BDE0(__dst, v12);
        v9 = _s7SwiftUI5ColorV012CarPlayAssetB0E0C6ValuesV2eeoiySbAF_AFtFZ_0(v14, v13);
        sub_242E43138(v18);
        sub_242E431A0(__src);
        sub_242E431A0(__dst);
        return v9 & 1;
      }
    }

    else
    {
      v6 = sub_242C56CEC(v20);
      memcpy(v15, __src, sizeof(v15));
      if (!sub_242D0B464(v15))
      {
        goto LABEL_10;
      }
    }

    goto LABEL_13;
  }

  if (v5 != 2)
  {
    memcpy(v15, __src, sizeof(v15));
    if (sub_242D0B464(v15) == 3)
    {
      sub_242E43138(v18);
      v9 = 1;
      return v9 & 1;
    }

    goto LABEL_13;
  }

  v7 = sub_242C56CEC(v20);
  memcpy(v15, __src, sizeof(v15));
  if (sub_242D0B464(v15) != 2)
  {
LABEL_13:
    sub_242D0BDE0(__src, v15);
    sub_242D0BDE0(__dst, v15);
LABEL_14:
    sub_242E43138(v18);
    v9 = 0;
    return v9 & 1;
  }

  v8 = sub_242C56CEC(v15);
  memcpy(v14, v7, sizeof(v14));
  memcpy(v13, v8, sizeof(v13));
  sub_242D0BDE0(__src, v12);
  sub_242D0BDE0(__dst, v12);
  sub_242C8DFF4(v7 + 416, v12);
  sub_242C8DFF4(v8 + 416, v12);
  if ((_s7SwiftUI5ColorV012CarPlayAssetB0E0C6ValuesV2eeoiySbAF_AFtFZ_0(v14, v13) & 1) == 0)
  {
    sub_242D53D78(v8 + 416);
    sub_242D53D78(v7 + 416);
    goto LABEL_14;
  }

  memcpy(v12, (v7 + 416), 0x1A0uLL);
  memcpy(v14, (v8 + 416), sizeof(v14));
  v9 = _s7SwiftUI5ColorV012CarPlayAssetB0E0C6ValuesV2eeoiySbAF_AFtFZ_0(v12, v14);
  sub_242E43138(v18);
  sub_242D53D78(v8 + 416);
  sub_242D53D78(v7 + 416);
  return v9 & 1;
}

unint64_t sub_242E41400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9678;
  if (!qword_27ECF9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9678);
  }

  return result;
}

unint64_t sub_242E41454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9680;
  if (!qword_27ECF9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9680);
  }

  return result;
}

unint64_t sub_242E414A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9688;
  if (!qword_27ECF9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9688);
  }

  return result;
}

unint64_t sub_242E414FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9690;
  if (!qword_27ECF9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9690);
  }

  return result;
}

unint64_t sub_242E41550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9698;
  if (!qword_27ECF9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9698);
  }

  return result;
}

unint64_t sub_242E415A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF96A0;
  if (!qword_27ECF96A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF96A0);
  }

  return result;
}

unint64_t sub_242E415F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF96D0;
  if (!qword_27ECF96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF96D0);
  }

  return result;
}

int8x16_t sub_242E4164C(int8x16_t *a1)
{
  v1 = a1[51].i64[0] & 0xFFFFFFFFFFFFFF8;
  v2 = vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL);
  v3 = a1[51].i64[1] & 0xFFFFFFFFFFFFFF8 | 0x8000000000000000;
  v4 = vandq_s8(a1[1], v2);
  *a1 = vandq_s8(*a1, v2);
  a1[1] = v4;
  v5 = vandq_s8(a1[3], v2);
  a1[2] = vandq_s8(a1[2], v2);
  a1[3] = v5;
  v6 = vandq_s8(a1[5], v2);
  a1[4] = vandq_s8(a1[4], v2);
  a1[5] = v6;
  v7 = vandq_s8(a1[7], v2);
  a1[6] = vandq_s8(a1[6], v2);
  a1[7] = v7;
  v8 = vandq_s8(a1[9], v2);
  a1[8] = vandq_s8(a1[8], v2);
  a1[9] = v8;
  v9 = vandq_s8(a1[11], v2);
  a1[10] = vandq_s8(a1[10], v2);
  a1[11] = v9;
  v10 = vandq_s8(a1[13], v2);
  a1[12] = vandq_s8(a1[12], v2);
  a1[13] = v10;
  v11 = vandq_s8(a1[15], v2);
  a1[14] = vandq_s8(a1[14], v2);
  a1[15] = v11;
  v12 = vandq_s8(a1[17], v2);
  a1[16] = vandq_s8(a1[16], v2);
  a1[17] = v12;
  v13 = vandq_s8(a1[19], v2);
  a1[18] = vandq_s8(a1[18], v2);
  a1[19] = v13;
  v14 = vandq_s8(a1[21], v2);
  a1[20] = vandq_s8(a1[20], v2);
  a1[21] = v14;
  v15 = vandq_s8(a1[23], v2);
  a1[22] = vandq_s8(a1[22], v2);
  a1[23] = v15;
  v16 = vandq_s8(a1[25], v2);
  a1[24] = vandq_s8(a1[24], v2);
  a1[25] = v16;
  v17 = vandq_s8(a1[27], v2);
  a1[26] = vandq_s8(a1[26], v2);
  a1[27] = v17;
  v18 = vandq_s8(a1[29], v2);
  a1[28] = vandq_s8(a1[28], v2);
  a1[29] = v18;
  v19 = vandq_s8(a1[31], v2);
  a1[30] = vandq_s8(a1[30], v2);
  a1[31] = v19;
  v20 = vandq_s8(a1[33], v2);
  a1[32] = vandq_s8(a1[32], v2);
  a1[33] = v20;
  v21 = vandq_s8(a1[35], v2);
  a1[34] = vandq_s8(a1[34], v2);
  a1[35] = v21;
  v22 = vandq_s8(a1[37], v2);
  a1[36] = vandq_s8(a1[36], v2);
  a1[37] = v22;
  v23 = vandq_s8(a1[39], v2);
  a1[38] = vandq_s8(a1[38], v2);
  a1[39] = v23;
  v24 = vandq_s8(a1[41], v2);
  a1[40] = vandq_s8(a1[40], v2);
  a1[41] = v24;
  v25 = vandq_s8(a1[43], v2);
  a1[42] = vandq_s8(a1[42], v2);
  a1[43] = v25;
  v26 = vandq_s8(a1[45], v2);
  a1[44] = vandq_s8(a1[44], v2);
  a1[45] = v26;
  v27 = vandq_s8(a1[47], v2);
  a1[46] = vandq_s8(a1[46], v2);
  a1[47] = v27;
  v28 = vandq_s8(a1[49], v2);
  a1[48] = vandq_s8(a1[48], v2);
  a1[49] = v28;
  result = vandq_s8(a1[50], v2);
  a1[50] = result;
  a1[51].i64[0] = v1;
  a1[51].i64[1] = v3;
  return result;
}

int8x16_t sub_242E41810(int8x16_t *a1)
{
  v1 = a1[51].i64[0] & 0xFFFFFFFFFFFFFF8;
  v2 = vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL);
  v3 = a1[51].i64[1] & 0xFFFFFFFFFFFFFF8 | 0x4000000000000000;
  v4 = vandq_s8(a1[1], v2);
  *a1 = vandq_s8(*a1, v2);
  a1[1] = v4;
  v5 = vandq_s8(a1[3], v2);
  a1[2] = vandq_s8(a1[2], v2);
  a1[3] = v5;
  v6 = vandq_s8(a1[5], v2);
  a1[4] = vandq_s8(a1[4], v2);
  a1[5] = v6;
  v7 = vandq_s8(a1[7], v2);
  a1[6] = vandq_s8(a1[6], v2);
  a1[7] = v7;
  v8 = vandq_s8(a1[9], v2);
  a1[8] = vandq_s8(a1[8], v2);
  a1[9] = v8;
  v9 = vandq_s8(a1[11], v2);
  a1[10] = vandq_s8(a1[10], v2);
  a1[11] = v9;
  v10 = vandq_s8(a1[13], v2);
  a1[12] = vandq_s8(a1[12], v2);
  a1[13] = v10;
  v11 = vandq_s8(a1[15], v2);
  a1[14] = vandq_s8(a1[14], v2);
  a1[15] = v11;
  v12 = vandq_s8(a1[17], v2);
  a1[16] = vandq_s8(a1[16], v2);
  a1[17] = v12;
  v13 = vandq_s8(a1[19], v2);
  a1[18] = vandq_s8(a1[18], v2);
  a1[19] = v13;
  v14 = vandq_s8(a1[21], v2);
  a1[20] = vandq_s8(a1[20], v2);
  a1[21] = v14;
  v15 = vandq_s8(a1[23], v2);
  a1[22] = vandq_s8(a1[22], v2);
  a1[23] = v15;
  v16 = vandq_s8(a1[25], v2);
  a1[24] = vandq_s8(a1[24], v2);
  a1[25] = v16;
  v17 = vandq_s8(a1[27], v2);
  a1[26] = vandq_s8(a1[26], v2);
  a1[27] = v17;
  v18 = vandq_s8(a1[29], v2);
  a1[28] = vandq_s8(a1[28], v2);
  a1[29] = v18;
  v19 = vandq_s8(a1[31], v2);
  a1[30] = vandq_s8(a1[30], v2);
  a1[31] = v19;
  v20 = vandq_s8(a1[33], v2);
  a1[32] = vandq_s8(a1[32], v2);
  a1[33] = v20;
  v21 = vandq_s8(a1[35], v2);
  a1[34] = vandq_s8(a1[34], v2);
  a1[35] = v21;
  v22 = vandq_s8(a1[37], v2);
  a1[36] = vandq_s8(a1[36], v2);
  a1[37] = v22;
  v23 = vandq_s8(a1[39], v2);
  a1[38] = vandq_s8(a1[38], v2);
  a1[39] = v23;
  v24 = vandq_s8(a1[41], v2);
  a1[40] = vandq_s8(a1[40], v2);
  a1[41] = v24;
  v25 = vandq_s8(a1[43], v2);
  a1[42] = vandq_s8(a1[42], v2);
  a1[43] = v25;
  v26 = vandq_s8(a1[45], v2);
  a1[44] = vandq_s8(a1[44], v2);
  a1[45] = v26;
  v27 = vandq_s8(a1[47], v2);
  a1[46] = vandq_s8(a1[46], v2);
  a1[47] = v27;
  v28 = vandq_s8(a1[49], v2);
  a1[48] = vandq_s8(a1[48], v2);
  a1[49] = v28;
  result = vandq_s8(a1[50], v2);
  a1[50] = result;
  a1[51].i64[0] = v1;
  a1[51].i64[1] = v3;
  return result;
}

int8x16_t sub_242E419D4(int8x16_t *a1)
{
  v1 = vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL);
  v2 = vandq_s8(a1[1], v1);
  *a1 = vandq_s8(*a1, v1);
  a1[1] = v2;
  v3 = vandq_s8(a1[3], v1);
  a1[2] = vandq_s8(a1[2], v1);
  a1[3] = v3;
  v4 = vandq_s8(a1[5], v1);
  a1[4] = vandq_s8(a1[4], v1);
  a1[5] = v4;
  v5 = vandq_s8(a1[7], v1);
  a1[6] = vandq_s8(a1[6], v1);
  a1[7] = v5;
  v6 = vandq_s8(a1[9], v1);
  a1[8] = vandq_s8(a1[8], v1);
  a1[9] = v6;
  v7 = vandq_s8(a1[11], v1);
  a1[10] = vandq_s8(a1[10], v1);
  a1[11] = v7;
  v8 = vandq_s8(a1[13], v1);
  a1[12] = vandq_s8(a1[12], v1);
  a1[13] = v8;
  v9 = vandq_s8(a1[15], v1);
  a1[14] = vandq_s8(a1[14], v1);
  a1[15] = v9;
  v10 = vandq_s8(a1[17], v1);
  a1[16] = vandq_s8(a1[16], v1);
  a1[17] = v10;
  v11 = vandq_s8(a1[19], v1);
  a1[18] = vandq_s8(a1[18], v1);
  a1[19] = v11;
  v12 = vandq_s8(a1[21], v1);
  a1[20] = vandq_s8(a1[20], v1);
  a1[21] = v12;
  v13 = vandq_s8(a1[23], v1);
  a1[22] = vandq_s8(a1[22], v1);
  a1[23] = v13;
  v14 = vandq_s8(a1[25], v1);
  a1[24] = vandq_s8(a1[24], v1);
  a1[25] = v14;
  v15 = vandq_s8(a1[27], v1);
  a1[26] = vandq_s8(a1[26], v1);
  a1[27] = v15;
  v16 = vandq_s8(a1[29], v1);
  a1[28] = vandq_s8(a1[28], v1);
  a1[29] = v16;
  v17 = vandq_s8(a1[31], v1);
  a1[30] = vandq_s8(a1[30], v1);
  a1[31] = v17;
  v18 = vandq_s8(a1[33], v1);
  a1[32] = vandq_s8(a1[32], v1);
  a1[33] = v18;
  v19 = vandq_s8(a1[35], v1);
  a1[34] = vandq_s8(a1[34], v1);
  a1[35] = v19;
  v20 = vandq_s8(a1[37], v1);
  a1[36] = vandq_s8(a1[36], v1);
  a1[37] = v20;
  v21 = vandq_s8(a1[39], v1);
  a1[38] = vandq_s8(a1[38], v1);
  a1[39] = v21;
  v22 = vandq_s8(a1[41], v1);
  a1[40] = vandq_s8(a1[40], v1);
  a1[41] = v22;
  v23 = vandq_s8(a1[43], v1);
  a1[42] = vandq_s8(a1[42], v1);
  a1[43] = v23;
  v24 = vandq_s8(a1[45], v1);
  a1[44] = vandq_s8(a1[44], v1);
  a1[45] = v24;
  v25 = vandq_s8(a1[47], v1);
  a1[46] = vandq_s8(a1[46], v1);
  a1[47] = v25;
  v26 = vandq_s8(a1[49], v1);
  a1[48] = vandq_s8(a1[48], v1);
  a1[49] = v26;
  v27 = vandq_s8(a1[50], v1);
  result = vandq_s8(a1[51], v1);
  a1[50] = v27;
  a1[51] = result;
  return result;
}

unint64_t sub_242E41BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF96D8;
  if (!qword_27ECF96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF96D8);
  }

  return result;
}

unint64_t sub_242E41C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF96E0[0];
  if (!qword_27ECF96E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF96E0);
  }

  return result;
}

uint64_t sub_242E41D14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E41D84(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v6 = *(*(*(a3 + 16) - 8) + 64);
  v8 = ((v6 + *(v4 + 80)) & ~*(v4 + 80)) + v6;
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

char *sub_242E41ED4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
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

uint64_t sub_242E420F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 832))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 57) & 0x78 | *a1 & 7 | (*(a1 + 8) >> 50) & 0x3C00 | ((*(a1 + 8) & 7) << 7) & 0x3FFF | (*(a1 + 16) >> 43) & 0x1E0000 | ((*(a1 + 16) & 7) << 14) | (*(a1 + 24) >> 36) & 0xF000000 | ((*(a1 + 24) & 7) << 21) | (*(a1 + 32) >> 29) & 0x80000000 | ((*(a1 + 32) & 7) << 28);
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

__n128 sub_242E4219C(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 824) = 0;
    result.n128_u64[0] = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 808) = 0u;
    *(a1 + 792) = 0u;
    *(a1 + 776) = 0u;
    *(a1 + 760) = 0u;
    *(a1 + 744) = 0u;
    *(a1 + 728) = 0u;
    *(a1 + 712) = 0u;
    *(a1 + 696) = 0u;
    *(a1 + 680) = 0u;
    *(a1 + 664) = 0u;
    *(a1 + 648) = 0u;
    *(a1 + 632) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 832) = 1;
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
      v4 = -a2;
      v5 = vdupq_n_s64(v4);
      *a1 = (v4 | (v4 << 57)) & 0xF000000000000007;
      v6 = vdupq_n_s64(7uLL);
      *(a1 + 8) = vorrq_s8(vandq_s8(vshlq_u64(v5, xmmword_242F3A9A0), v6), vandq_s8(vshlq_u64(v5, xmmword_242F3A9B0), vdupq_n_s64(0xF000000000000000)));
      v7 = vdupq_n_s64(0x1000000000000000uLL);
      v7.i64[0] = (v4 << 36) & 0xF000000000000000;
      *(a1 + 24) = vorrq_s8(vandq_s8(vshlq_u64(v5, xmmword_242F3A9C0), v6), v7);
      bzero((a1 + 40), 0x318uLL);
      return result;
    }

    *(a1 + 832) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_242E42330(int8x16_t *a1, uint64_t a2)
{
  if (a2 < 3)
  {
    v4 = vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL);
    v5 = a1[51].i64[0] & 0xFFFFFFFFFFFFFF8;
    v6 = a1[51].i64[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    v7 = vandq_s8(a1[1], v4);
    *a1 = vandq_s8(*a1, v4);
    a1[1] = v7;
    v8 = vandq_s8(a1[3], v4);
    a1[2] = vandq_s8(a1[2], v4);
    a1[3] = v8;
    v9 = vandq_s8(a1[5], v4);
    a1[4] = vandq_s8(a1[4], v4);
    a1[5] = v9;
    v10 = vandq_s8(a1[7], v4);
    a1[6] = vandq_s8(a1[6], v4);
    a1[7] = v10;
    v11 = vandq_s8(a1[9], v4);
    a1[8] = vandq_s8(a1[8], v4);
    a1[9] = v11;
    v12 = vandq_s8(a1[11], v4);
    a1[10] = vandq_s8(a1[10], v4);
    a1[11] = v12;
    v13 = vandq_s8(a1[13], v4);
    a1[12] = vandq_s8(a1[12], v4);
    a1[13] = v13;
    v14 = vandq_s8(a1[15], v4);
    a1[14] = vandq_s8(a1[14], v4);
    a1[15] = v14;
    v15 = vandq_s8(a1[17], v4);
    a1[16] = vandq_s8(a1[16], v4);
    a1[17] = v15;
    v16 = vandq_s8(a1[19], v4);
    a1[18] = vandq_s8(a1[18], v4);
    a1[19] = v16;
    v17 = vandq_s8(a1[21], v4);
    a1[20] = vandq_s8(a1[20], v4);
    a1[21] = v17;
    v18 = vandq_s8(a1[23], v4);
    a1[22] = vandq_s8(a1[22], v4);
    a1[23] = v18;
    v19 = vandq_s8(a1[25], v4);
    a1[24] = vandq_s8(a1[24], v4);
    a1[25] = v19;
    v20 = vandq_s8(a1[27], v4);
    a1[26] = vandq_s8(a1[26], v4);
    a1[27] = v20;
    v21 = vandq_s8(a1[29], v4);
    a1[28] = vandq_s8(a1[28], v4);
    a1[29] = v21;
    v22 = vandq_s8(a1[31], v4);
    a1[30] = vandq_s8(a1[30], v4);
    a1[31] = v22;
    v23 = vandq_s8(a1[33], v4);
    a1[32] = vandq_s8(a1[32], v4);
    a1[33] = v23;
    v24 = vandq_s8(a1[35], v4);
    a1[34] = vandq_s8(a1[34], v4);
    a1[35] = v24;
    v25 = vandq_s8(a1[37], v4);
    a1[36] = vandq_s8(a1[36], v4);
    a1[37] = v25;
    v26 = vandq_s8(a1[39], v4);
    a1[38] = vandq_s8(a1[38], v4);
    a1[39] = v26;
    v27 = vandq_s8(a1[41], v4);
    a1[40] = vandq_s8(a1[40], v4);
    a1[41] = v27;
    v28 = vandq_s8(a1[43], v4);
    a1[42] = vandq_s8(a1[42], v4);
    a1[43] = v28;
    v29 = vandq_s8(a1[45], v4);
    a1[44] = vandq_s8(a1[44], v4);
    a1[45] = v29;
    v30 = vandq_s8(a1[47], v4);
    a1[46] = vandq_s8(a1[46], v4);
    a1[47] = v30;
    v31 = vandq_s8(a1[49], v4);
    a1[48] = vandq_s8(a1[48], v4);
    a1[49] = v31;
    result = vandq_s8(a1[50], v4);
    a1[50] = result;
    a1[51].i64[0] = v5;
    a1[51].i64[1] = v6;
  }

  else
  {
    a1->i64[0] = 8 * (a2 - 3);
    bzero(&a1->u64[1], 0x330uLL);
    a1[51].i64[1] = 0xC000000000000000;
  }

  return result;
}

uint64_t sub_242E42564(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for DynamicAppearanceValue(319, *(a1 + 24), v3, v4);
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_242E425E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  if (((*(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64) <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v3 = ((*(*(*(a3 + 24) - 8) + 64) + *(*(*(a3 + 24) - 8) + 80)) & ~*(*(*(a3 + 24) - 8) + 80)) + *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v8 < 2)
    {
LABEL_26:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_26;
  }

LABEL_15:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_242E42744(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 24) - 8) + 64) + *(*(*(a4 + 24) - 8) + 80)) & ~*(*(*(a4 + 24) - 8) + 80)) + *(*(*(a4 + 24) - 8) + 64);
  if (v5 <= *(*(*(a4 + 16) - 8) + 64))
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_242E429A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF99E8;
  if (!qword_27ECF99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF99E8);
  }

  return result;
}

unint64_t sub_242E429FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF99F0;
  if (!qword_27ECF99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF99F0);
  }

  return result;
}

unint64_t sub_242E42A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF99F8;
  if (!qword_27ECF99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF99F8);
  }

  return result;
}

unint64_t sub_242E42AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A00;
  if (!qword_27ECF9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A00);
  }

  return result;
}

unint64_t sub_242E42C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A08;
  if (!qword_27ECF9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A08);
  }

  return result;
}

unint64_t sub_242E42CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A10;
  if (!qword_27ECF9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A10);
  }

  return result;
}

unint64_t sub_242E42D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A18;
  if (!qword_27ECF9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A18);
  }

  return result;
}

unint64_t sub_242E42D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A20;
  if (!qword_27ECF9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A20);
  }

  return result;
}

unint64_t sub_242E42DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A28;
  if (!qword_27ECF9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A28);
  }

  return result;
}

unint64_t sub_242E42E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A30;
  if (!qword_27ECF9A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A30);
  }

  return result;
}

unint64_t sub_242E42E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A38;
  if (!qword_27ECF9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A38);
  }

  return result;
}

unint64_t sub_242E42EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A40;
  if (!qword_27ECF9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A40);
  }

  return result;
}

unint64_t sub_242E42F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A48;
  if (!qword_27ECF9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A48);
  }

  return result;
}

unint64_t sub_242E42F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A50;
  if (!qword_27ECF9A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECF9A50);
  }

  return result;
}

uint64_t sub_242E42FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6144656C676E6973 && a2 == 0xEA00000000006B72;
  if (v4 || (sub_242F06110() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x694C656C676E6973 && a2 == 0xEB00000000746867 || (sub_242F06110() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x63696D616E7964 && a2 == 0xE700000000000000 || (sub_242F06110() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242F5C790 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_242F06110();

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

uint64_t sub_242E43138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9A58, &unk_242F3BE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NotificationModel.Text.title.getter()
{
  if (*(v0 + 32) > 1u)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

uint64_t NotificationModel.Text.body.getter()
{
  v1 = *(v0 + 32);
  if (*(v0 + 32))
  {
    v2 = (v0 + 16);
    if (v1 != 1)
    {
      v2 = v0;
    }

    v1 = *v2;
  }

  return v1;
}

uint64_t static NotificationModel.validateSymbol(symbol:automakerSymbolValidator:)(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3)
{
  v3 = a1[1];
  if (v3)
  {
    v6 = *a1;
    v7 = a1[2];
    v8 = objc_opt_self();

    v9 = sub_242F04F00();
    v10 = [v8 _systemImageNamed_];

    if (v10)
    {
    }

    else if (!a2 || (, v12 = a2(v6, v3), sub_242D0DC4C(a2, a3), (v12 & 1) == 0))
    {

      v11 = v6;
      goto LABEL_9;
    }

    v11 = 0;
LABEL_9:
    sub_242CD54A4(v6, v3, v7);
    return v11;
  }

  return 0;
}

uint64_t NotificationModel.Text.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  sub_242F05A80();

  strcpy(v7, "Text(title: ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  if (v5)
  {
    if (v5 == 1)
    {

      MEMORY[0x245D26660](v1, v2);

      MEMORY[0x245D26660](0x203A79646F62202CLL, 0xE800000000000000);

      v1 = v4;
    }

    else
    {
      MEMORY[0x245D26660](7104878, 0xE300000000000000);

      MEMORY[0x245D26660](0x203A79646F62202CLL, 0xE800000000000000);

      v3 = v2;
    }
  }

  else
  {

    MEMORY[0x245D26660](v1, v2);

    MEMORY[0x245D26660](0x203A79646F62202CLL, 0xE800000000000000);
    v3 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x245D26660](v1, v3);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return v7[0];
}

uint64_t NotificationModel.Symbol.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_242F05A80();

  strcpy(v8, "Symbol(name: ");
  HIWORD(v8[1]) = -4864;
  MEMORY[0x245D26660](v1, v2);
  MEMORY[0x245D26660](0x3A726F6C6F63202CLL, 0xE900000000000020);
  if (v3)
  {
    v4 = sub_242F046F0();
    v6 = v5;
  }

  else
  {
    v6 = 0xE300000000000000;
    v4 = 7104878;
  }

  MEMORY[0x245D26660](v4, v6);

  MEMORY[0x245D26660](41, 0xE100000000000000);
  return v8[0];
}

uint64_t NotificationModel.Symbol.init(name:color:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 NotificationModel.init(id:style:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 112);
  *(a4 + 112) = *(a3 + 96);
  *(a4 + 128) = v4;
  *(a4 + 144) = *(a3 + 128);
  v5 = *(a3 + 48);
  *(a4 + 48) = *(a3 + 32);
  *(a4 + 64) = v5;
  v6 = *(a3 + 80);
  *(a4 + 80) = *(a3 + 64);
  *(a4 + 96) = v6;
  result = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = result;
  *a4 = a1;
  *(a4 + 8) = a2;
  return result;
}

uint64_t NotificationModel.TrailingButtonConfiguration.init(symbolName:handler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  result = swift_allocObject();
  *(result + 16) = a3;
  *(result + 24) = a4;
  a5[2] = sub_242D5A6E0;
  a5[3] = result;
  return result;
}

uint64_t NotificationModel.isFocusable.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 128);
  v49 = *(v0 + 112);
  v50 = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v45 = *(v0 + 48);
  v46 = v4;
  v5 = *(v0 + 64);
  v6 = *(v0 + 96);
  v47 = *(v0 + 80);
  v48 = v6;
  v7 = *(v0 + 32);
  v44[0] = *(v0 + 16);
  v44[1] = v7;
  v8 = *(v0 + 128);
  v52[6] = v49;
  v52[7] = v8;
  v52[2] = v45;
  v52[3] = v5;
  v52[4] = v47;
  v52[5] = v1;
  v51 = *(v0 + 144);
  v53 = *(v0 + 144);
  v52[0] = v44[0];
  v52[1] = v3;
  v9 = sub_242D3A260(v52);
  v10 = sub_242C578A0(v52);
  v13 = v10;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = &type metadata for NotificationModel.FancyModel;
      v42 = &type metadata for NotificationModel.FancyModel;
      v15 = sub_242D3A370(v10, v11, v12);
      v43 = v15;
      v22 = swift_allocObject();
      v41[0] = v22;
      v23 = *(v13 + 112);
      v25 = *(v13 + 64);
      v24 = *(v13 + 80);
      v22[7] = *(v13 + 96);
      v22[8] = v23;
      v22[5] = v25;
      v22[6] = v24;
      v26 = *(v13 + 48);
      v28 = *v13;
      v27 = *(v13 + 16);
      v22[3] = *(v13 + 32);
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      goto LABEL_9;
    }

    v14 = &type metadata for NotificationModel.InferredNotificationModel;
    v42 = &type metadata for NotificationModel.InferredNotificationModel;
    v15 = sub_242D3A26C(v10, v11, v12);
    v43 = v15;
    v29 = swift_allocObject();
    v41[0] = v29;
    v31 = *(v13 + 96);
    v30 = *(v13 + 112);
    v32 = *(v13 + 80);
    *(v29 + 144) = *(v13 + 128);
    *(v29 + 112) = v31;
    *(v29 + 128) = v30;
    *(v29 + 96) = v32;
LABEL_8:
    *(v29 + 16) = *v13;
    v33 = *(v13 + 64);
    v35 = *(v13 + 16);
    v34 = *(v13 + 32);
    *(v29 + 64) = *(v13 + 48);
    *(v29 + 80) = v33;
    *(v29 + 32) = v35;
    *(v29 + 48) = v34;
    goto LABEL_9;
  }

  if (v9)
  {
    v14 = &type metadata for NotificationModel.ModalAlertModel;
    v42 = &type metadata for NotificationModel.ModalAlertModel;
    v15 = sub_242D3A418(v10, v11, v12);
    v43 = v15;
    v29 = swift_allocObject();
    v41[0] = v29;
    goto LABEL_8;
  }

  v14 = &type metadata for NotificationModel.MinimalNotificationModel;
  v42 = &type metadata for NotificationModel.MinimalNotificationModel;
  v15 = sub_242D3A3C4(v10, v11, v12);
  v43 = v15;
  v16 = swift_allocObject();
  v41[0] = v16;
  v17 = *(v13 + 96);
  v19 = *(v13 + 48);
  v18 = *(v13 + 64);
  v16[6] = *(v13 + 80);
  v16[7] = v17;
  v16[4] = v19;
  v16[5] = v18;
  v21 = *(v13 + 16);
  v20 = *(v13 + 32);
  v16[1] = *v13;
  v16[2] = v21;
  v16[3] = v20;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v41, v14);
  v36 = *(v15 + 8);
  v37 = *(v36 + 8);
  sub_242D3A2C0(v44, &v40);
  v38 = v37(v14, v36);
  __swift_destroy_boxed_opaque_existential_2Tm(v41);
  return v38 & 1;
}

uint64_t (*NotificationModel.TrailingButtonConfiguration.handler.getter())()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return sub_242D5A674;
}

uint64_t NotificationModel.id.getter()
{
  v1 = *v0;

  return v1;
}

void NotificationModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t NotificationModel.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  v3 = *(v1 + 128);
  v20 = *(v1 + 112);
  v21 = v3;
  v4 = *(v1 + 32);
  v5 = *(v1 + 64);
  v16 = *(v1 + 48);
  v6 = v16;
  v17 = v5;
  v7 = *(v1 + 64);
  v8 = *(v1 + 96);
  v18 = *(v1 + 80);
  v9 = v18;
  v19 = v8;
  v10 = *(v1 + 32);
  v15[0] = *(v1 + 16);
  v11 = v15[0];
  v15[1] = v10;
  v12 = *(v1 + 128);
  *(a1 + 96) = v20;
  *(a1 + 112) = v12;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  *(a1 + 64) = v9;
  *(a1 + 80) = v2;
  v22 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 144);
  *a1 = v11;
  *(a1 + 16) = v4;
  return sub_242D3A2C0(v15, v14);
}

__n128 NotificationModel.style.setter(uint64_t a1)
{
  v3 = *(v1 + 128);
  v11[6] = *(v1 + 112);
  v11[7] = v3;
  v12 = *(v1 + 144);
  v4 = *(v1 + 64);
  v11[2] = *(v1 + 48);
  v11[3] = v4;
  v5 = *(v1 + 96);
  v11[4] = *(v1 + 80);
  v11[5] = v5;
  v6 = *(v1 + 32);
  v11[0] = *(v1 + 16);
  v11[1] = v6;
  sub_242E468BC(v11);
  v7 = *(a1 + 112);
  *(v1 + 112) = *(a1 + 96);
  *(v1 + 128) = v7;
  *(v1 + 144) = *(a1 + 128);
  v8 = *(a1 + 48);
  *(v1 + 48) = *(a1 + 32);
  *(v1 + 64) = v8;
  v9 = *(a1 + 80);
  *(v1 + 80) = *(a1 + 64);
  *(v1 + 96) = v9;
  result = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = result;
  return result;
}

uint64_t NotificationModel.Style.isFocusable.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  v49 = *(v0 + 96);
  v50 = v2;
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v45 = *(v0 + 32);
  v46 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v47 = *(v0 + 64);
  v48 = v6;
  v7 = *(v0 + 16);
  v44[0] = *v0;
  v44[1] = v7;
  v8 = *(v0 + 112);
  v52[6] = v49;
  v52[7] = v8;
  v52[2] = v45;
  v52[3] = v5;
  v52[4] = v47;
  v52[5] = v1;
  v51 = *(v0 + 128);
  v53 = *(v0 + 128);
  v52[0] = v44[0];
  v52[1] = v3;
  v9 = sub_242D3A260(v52);
  v10 = sub_242C578A0(v52);
  v13 = v10;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = &type metadata for NotificationModel.FancyModel;
      v42 = &type metadata for NotificationModel.FancyModel;
      v15 = sub_242D3A370(v10, v11, v12);
      v43 = v15;
      v22 = swift_allocObject();
      v41[0] = v22;
      v23 = *(v13 + 112);
      v25 = *(v13 + 64);
      v24 = *(v13 + 80);
      v22[7] = *(v13 + 96);
      v22[8] = v23;
      v22[5] = v25;
      v22[6] = v24;
      v26 = *(v13 + 48);
      v28 = *v13;
      v27 = *(v13 + 16);
      v22[3] = *(v13 + 32);
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      goto LABEL_9;
    }

    v14 = &type metadata for NotificationModel.InferredNotificationModel;
    v42 = &type metadata for NotificationModel.InferredNotificationModel;
    v15 = sub_242D3A26C(v10, v11, v12);
    v43 = v15;
    v29 = swift_allocObject();
    v41[0] = v29;
    v31 = *(v13 + 96);
    v30 = *(v13 + 112);
    v32 = *(v13 + 80);
    *(v29 + 144) = *(v13 + 128);
    *(v29 + 112) = v31;
    *(v29 + 128) = v30;
    *(v29 + 96) = v32;
LABEL_8:
    *(v29 + 16) = *v13;
    v33 = *(v13 + 64);
    v35 = *(v13 + 16);
    v34 = *(v13 + 32);
    *(v29 + 64) = *(v13 + 48);
    *(v29 + 80) = v33;
    *(v29 + 32) = v35;
    *(v29 + 48) = v34;
    goto LABEL_9;
  }

  if (v9)
  {
    v14 = &type metadata for NotificationModel.ModalAlertModel;
    v42 = &type metadata for NotificationModel.ModalAlertModel;
    v15 = sub_242D3A418(v10, v11, v12);
    v43 = v15;
    v29 = swift_allocObject();
    v41[0] = v29;
    goto LABEL_8;
  }

  v14 = &type metadata for NotificationModel.MinimalNotificationModel;
  v42 = &type metadata for NotificationModel.MinimalNotificationModel;
  v15 = sub_242D3A3C4(v10, v11, v12);
  v43 = v15;
  v16 = swift_allocObject();
  v41[0] = v16;
  v17 = *(v13 + 96);
  v19 = *(v13 + 48);
  v18 = *(v13 + 64);
  v16[6] = *(v13 + 80);
  v16[7] = v17;
  v16[4] = v19;
  v16[5] = v18;
  v21 = *(v13 + 16);
  v20 = *(v13 + 32);
  v16[1] = *v13;
  v16[2] = v21;
  v16[3] = v20;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v41, v14);
  v36 = *(v15 + 8);
  v37 = *(v36 + 8);
  sub_242D3A2C0(v44, &v40);
  v38 = v37(v14, v36);
  __swift_destroy_boxed_opaque_existential_2Tm(v41);
  return v38 & 1;
}

uint64_t sub_242E43D70()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 128);
  v49 = *(v0 + 112);
  v50 = v2;
  v3 = *(v0 + 32);
  v4 = *(v0 + 64);
  v45 = *(v0 + 48);
  v46 = v4;
  v5 = *(v0 + 64);
  v6 = *(v0 + 96);
  v47 = *(v0 + 80);
  v48 = v6;
  v7 = *(v0 + 32);
  v44[0] = *(v0 + 16);
  v44[1] = v7;
  v8 = *(v0 + 128);
  v52[6] = v49;
  v52[7] = v8;
  v52[2] = v45;
  v52[3] = v5;
  v52[4] = v47;
  v52[5] = v1;
  v51 = *(v0 + 144);
  v53 = *(v0 + 144);
  v52[0] = v44[0];
  v52[1] = v3;
  v9 = sub_242D3A260(v52);
  v10 = sub_242C578A0(v52);
  v13 = v10;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = &type metadata for NotificationModel.FancyModel;
      v42 = &type metadata for NotificationModel.FancyModel;
      v15 = sub_242D3A370(v10, v11, v12);
      v43 = v15;
      v22 = swift_allocObject();
      v41[0] = v22;
      v23 = *(v13 + 112);
      v25 = *(v13 + 64);
      v24 = *(v13 + 80);
      v22[7] = *(v13 + 96);
      v22[8] = v23;
      v22[5] = v25;
      v22[6] = v24;
      v26 = *(v13 + 48);
      v28 = *v13;
      v27 = *(v13 + 16);
      v22[3] = *(v13 + 32);
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      goto LABEL_9;
    }

    v14 = &type metadata for NotificationModel.InferredNotificationModel;
    v42 = &type metadata for NotificationModel.InferredNotificationModel;
    v15 = sub_242D3A26C(v10, v11, v12);
    v43 = v15;
    v29 = swift_allocObject();
    v41[0] = v29;
    v31 = *(v13 + 96);
    v30 = *(v13 + 112);
    v32 = *(v13 + 80);
    *(v29 + 144) = *(v13 + 128);
    *(v29 + 112) = v31;
    *(v29 + 128) = v30;
    *(v29 + 96) = v32;
LABEL_8:
    *(v29 + 16) = *v13;
    v33 = *(v13 + 64);
    v35 = *(v13 + 16);
    v34 = *(v13 + 32);
    *(v29 + 64) = *(v13 + 48);
    *(v29 + 80) = v33;
    *(v29 + 32) = v35;
    *(v29 + 48) = v34;
    goto LABEL_9;
  }

  if (v9)
  {
    v14 = &type metadata for NotificationModel.ModalAlertModel;
    v42 = &type metadata for NotificationModel.ModalAlertModel;
    v15 = sub_242D3A418(v10, v11, v12);
    v43 = v15;
    v29 = swift_allocObject();
    v41[0] = v29;
    goto LABEL_8;
  }

  v14 = &type metadata for NotificationModel.MinimalNotificationModel;
  v42 = &type metadata for NotificationModel.MinimalNotificationModel;
  v15 = sub_242D3A3C4(v10, v11, v12);
  v43 = v15;
  v16 = swift_allocObject();
  v41[0] = v16;
  v17 = *(v13 + 96);
  v19 = *(v13 + 48);
  v18 = *(v13 + 64);
  v16[6] = *(v13 + 80);
  v16[7] = v17;
  v16[4] = v19;
  v16[5] = v18;
  v21 = *(v13 + 16);
  v20 = *(v13 + 32);
  v16[1] = *v13;
  v16[2] = v21;
  v16[3] = v20;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v41, v14);
  v36 = *(v15 + 8);
  v37 = *(v36 + 8);
  sub_242D3A2C0(v44, &v40);
  v38 = v37(v14, v36);
  __swift_destroy_boxed_opaque_existential_2Tm(v41);
  return v38 & 1;
}

uint64_t NotificationModel.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v49 = *(v0 + 7);
  v50 = v3;
  v51 = v0[18];
  v4 = *(v0 + 4);
  v45 = *(v0 + 3);
  v46 = v4;
  v5 = *(v0 + 6);
  v47 = *(v0 + 5);
  v48 = v5;
  v6 = *(v0 + 2);
  v43 = *(v0 + 1);
  v44 = v6;
  v41 = 540697705;
  v42 = 0xE400000000000000;
  MEMORY[0x245D26660](v1, v2);
  MEMORY[0x245D26660](32, 0xE100000000000000);
  v52[6] = v49;
  v52[7] = v50;
  v53 = v51;
  v52[2] = v45;
  v52[3] = v46;
  v52[4] = v47;
  v52[5] = v48;
  v52[0] = v43;
  v52[1] = v44;
  v7 = sub_242D3A260(v52);
  v8 = sub_242C578A0(v52);
  v11 = v8;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v12 = &type metadata for NotificationModel.FancyModel;
      v39 = &type metadata for NotificationModel.FancyModel;
      v40 = sub_242D3A370(v8, v9, v10);
      v19 = swift_allocObject();
      v38[0] = v19;
      v20 = *(v11 + 112);
      v22 = *(v11 + 64);
      v21 = *(v11 + 80);
      v19[7] = *(v11 + 96);
      v19[8] = v20;
      v19[5] = v22;
      v19[6] = v21;
      v23 = *(v11 + 48);
      v25 = *v11;
      v24 = *(v11 + 16);
      v19[3] = *(v11 + 32);
      v19[4] = v23;
      v19[1] = v25;
      v19[2] = v24;
      goto LABEL_9;
    }

    v12 = &type metadata for NotificationModel.InferredNotificationModel;
    v39 = &type metadata for NotificationModel.InferredNotificationModel;
    v40 = sub_242D3A26C(v8, v9, v10);
    v26 = swift_allocObject();
    v38[0] = v26;
    v28 = *(v11 + 96);
    v27 = *(v11 + 112);
    v29 = *(v11 + 80);
    *(v26 + 144) = *(v11 + 128);
    *(v26 + 112) = v28;
    *(v26 + 128) = v27;
    *(v26 + 96) = v29;
LABEL_8:
    *(v26 + 16) = *v11;
    v30 = *(v11 + 64);
    v32 = *(v11 + 16);
    v31 = *(v11 + 32);
    *(v26 + 64) = *(v11 + 48);
    *(v26 + 80) = v30;
    *(v26 + 32) = v32;
    *(v26 + 48) = v31;
    goto LABEL_9;
  }

  if (v7)
  {
    v12 = &type metadata for NotificationModel.ModalAlertModel;
    v39 = &type metadata for NotificationModel.ModalAlertModel;
    v40 = sub_242D3A418(v8, v9, v10);
    v26 = swift_allocObject();
    v38[0] = v26;
    goto LABEL_8;
  }

  v12 = &type metadata for NotificationModel.MinimalNotificationModel;
  v39 = &type metadata for NotificationModel.MinimalNotificationModel;
  v40 = sub_242D3A3C4(v8, v9, v10);
  v13 = swift_allocObject();
  v38[0] = v13;
  v14 = *(v11 + 96);
  v16 = *(v11 + 48);
  v15 = *(v11 + 64);
  v13[6] = *(v11 + 80);
  v13[7] = v14;
  v13[4] = v16;
  v13[5] = v15;
  v18 = *(v11 + 16);
  v17 = *(v11 + 32);
  v13[1] = *v11;
  v13[2] = v18;
  v13[3] = v17;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v38, v12);
  sub_242D3A2C0(&v43, &v37);
  v33 = sub_242F05F60();
  v35 = v34;
  __swift_destroy_boxed_opaque_existential_2Tm(v38);
  MEMORY[0x245D26660](v33, v35);

  return v41;
}

uint64_t NotificationModel.Style.description.getter()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  v46 = *(v0 + 96);
  v47 = v2;
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v42 = *(v0 + 32);
  v43 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v44 = *(v0 + 64);
  v45 = v6;
  v7 = *(v0 + 16);
  v41[0] = *v0;
  v41[1] = v7;
  v8 = *(v0 + 112);
  v49[6] = v46;
  v49[7] = v8;
  v49[2] = v42;
  v49[3] = v5;
  v49[4] = v44;
  v49[5] = v1;
  v48 = *(v0 + 128);
  v50 = *(v0 + 128);
  v49[0] = v41[0];
  v49[1] = v3;
  v9 = sub_242D3A260(v49);
  v10 = sub_242C578A0(v49);
  v13 = v10;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = &type metadata for NotificationModel.FancyModel;
      v39 = &type metadata for NotificationModel.FancyModel;
      v40 = sub_242D3A370(v10, v11, v12);
      v21 = swift_allocObject();
      v38[0] = v21;
      v22 = *(v13 + 112);
      v24 = *(v13 + 64);
      v23 = *(v13 + 80);
      v21[7] = *(v13 + 96);
      v21[8] = v22;
      v21[5] = v24;
      v21[6] = v23;
      v25 = *(v13 + 48);
      v27 = *v13;
      v26 = *(v13 + 16);
      v21[3] = *(v13 + 32);
      v21[4] = v25;
      v21[1] = v27;
      v21[2] = v26;
      goto LABEL_9;
    }

    v14 = &type metadata for NotificationModel.InferredNotificationModel;
    v39 = &type metadata for NotificationModel.InferredNotificationModel;
    v40 = sub_242D3A26C(v10, v11, v12);
    v28 = swift_allocObject();
    v38[0] = v28;
    v30 = *(v13 + 96);
    v29 = *(v13 + 112);
    v31 = *(v13 + 80);
    *(v28 + 144) = *(v13 + 128);
    *(v28 + 112) = v30;
    *(v28 + 128) = v29;
    *(v28 + 96) = v31;
LABEL_8:
    *(v28 + 16) = *v13;
    v32 = *(v13 + 64);
    v34 = *(v13 + 16);
    v33 = *(v13 + 32);
    *(v28 + 64) = *(v13 + 48);
    *(v28 + 80) = v32;
    *(v28 + 32) = v34;
    *(v28 + 48) = v33;
    goto LABEL_9;
  }

  if (v9)
  {
    v14 = &type metadata for NotificationModel.ModalAlertModel;
    v39 = &type metadata for NotificationModel.ModalAlertModel;
    v40 = sub_242D3A418(v10, v11, v12);
    v28 = swift_allocObject();
    v38[0] = v28;
    goto LABEL_8;
  }

  v14 = &type metadata for NotificationModel.MinimalNotificationModel;
  v39 = &type metadata for NotificationModel.MinimalNotificationModel;
  v40 = sub_242D3A3C4(v10, v11, v12);
  v15 = swift_allocObject();
  v38[0] = v15;
  v16 = *(v13 + 96);
  v18 = *(v13 + 48);
  v17 = *(v13 + 64);
  v15[6] = *(v13 + 80);
  v15[7] = v16;
  v15[4] = v18;
  v15[5] = v17;
  v20 = *(v13 + 16);
  v19 = *(v13 + 32);
  v15[1] = *v13;
  v15[2] = v20;
  v15[3] = v19;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v38, v14);
  sub_242D3A2C0(v41, &v37);
  v35 = sub_242F05F60();
  __swift_destroy_boxed_opaque_existential_2Tm(v38);
  return v35;
}

uint64_t NotificationModel.Style.validate(errors:automakerSymbolValidator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v54 = *(v3 + 96);
  v55 = v8;
  v9 = *(v3 + 16);
  v10 = *(v3 + 48);
  v50 = *(v3 + 32);
  v51 = v10;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v52 = *(v3 + 64);
  v53 = v12;
  v13 = *(v3 + 16);
  v49[0] = *v3;
  v49[1] = v13;
  v14 = *(v3 + 112);
  v57[6] = v54;
  v57[7] = v14;
  v57[2] = v50;
  v57[3] = v11;
  v57[4] = v52;
  v57[5] = v7;
  v56 = *(v3 + 128);
  v58 = *(v3 + 128);
  v57[0] = v49[0];
  v57[1] = v9;
  v15 = sub_242D3A260(v57);
  v16 = sub_242C578A0(v57);
  v19 = v16;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v20 = &type metadata for NotificationModel.FancyModel;
      v47 = &type metadata for NotificationModel.FancyModel;
      v21 = sub_242D3A370(v16, v17, v18);
      v48 = v21;
      v28 = swift_allocObject();
      v46[0] = v28;
      v29 = *(v19 + 112);
      v31 = *(v19 + 64);
      v30 = *(v19 + 80);
      v28[7] = *(v19 + 96);
      v28[8] = v29;
      v28[5] = v31;
      v28[6] = v30;
      v32 = *(v19 + 48);
      v34 = *v19;
      v33 = *(v19 + 16);
      v28[3] = *(v19 + 32);
      v28[4] = v32;
      v28[1] = v34;
      v28[2] = v33;
      goto LABEL_9;
    }

    v20 = &type metadata for NotificationModel.InferredNotificationModel;
    v47 = &type metadata for NotificationModel.InferredNotificationModel;
    v21 = sub_242D3A26C(v16, v17, v18);
    v48 = v21;
    v35 = swift_allocObject();
    v46[0] = v35;
    v37 = *(v19 + 96);
    v36 = *(v19 + 112);
    v38 = *(v19 + 80);
    *(v35 + 144) = *(v19 + 128);
    *(v35 + 112) = v37;
    *(v35 + 128) = v36;
    *(v35 + 96) = v38;
LABEL_8:
    *(v35 + 16) = *v19;
    v39 = *(v19 + 64);
    v41 = *(v19 + 16);
    v40 = *(v19 + 32);
    *(v35 + 64) = *(v19 + 48);
    *(v35 + 80) = v39;
    *(v35 + 32) = v41;
    *(v35 + 48) = v40;
    goto LABEL_9;
  }

  if (v15)
  {
    v20 = &type metadata for NotificationModel.ModalAlertModel;
    v47 = &type metadata for NotificationModel.ModalAlertModel;
    v21 = sub_242D3A418(v16, v17, v18);
    v48 = v21;
    v35 = swift_allocObject();
    v46[0] = v35;
    goto LABEL_8;
  }

  v20 = &type metadata for NotificationModel.MinimalNotificationModel;
  v47 = &type metadata for NotificationModel.MinimalNotificationModel;
  v21 = sub_242D3A3C4(v16, v17, v18);
  v48 = v21;
  v22 = swift_allocObject();
  v46[0] = v22;
  v23 = *(v19 + 96);
  v25 = *(v19 + 48);
  v24 = *(v19 + 64);
  v22[6] = *(v19 + 80);
  v22[7] = v23;
  v22[4] = v25;
  v22[5] = v24;
  v27 = *(v19 + 16);
  v26 = *(v19 + 32);
  v22[1] = *v19;
  v22[2] = v27;
  v22[3] = v26;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v46, v20);
  v42 = *(v21 + 32);
  sub_242D3A2C0(v49, &v45);
  v43 = v42(a1, a2, a3, v20, v21);
  __swift_destroy_boxed_opaque_existential_2Tm(v46);
  return v43;
}

void NotificationModel.Style.correct(validationError:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = v2[7];
  v102[6] = v2[6];
  v102[7] = v9;
  v103 = *(v2 + 16);
  v10 = v2[3];
  v102[2] = v2[2];
  v102[3] = v10;
  v11 = v2[5];
  v102[4] = v2[4];
  v102[5] = v11;
  v12 = v2[1];
  v102[0] = *v2;
  v102[1] = v12;
  v13 = sub_242D3A260(v102);
  if (v13 <= 1)
  {
    if (!v13)
    {
      v14 = sub_242C578A0(v102);
      v15 = *(v14 + 16);
      v72 = *v14;
      v73 = v15;
      v16 = *(v14 + 40);
      v74 = *(v14 + 32);
      v18 = *(v14 + 48);
      v17 = *(v14 + 56);
      v19 = *(v14 + 64);
      v20 = *(v14 + 80);
      v62 = *(v14 + 72);
      v63 = *(v14 + 88);
      v71 = *(v14 + 96);
      if (v8 == 1)
      {
        v38 = v19;
        v39 = v20;
        v40 = v2[7];
        v99 = v2[6];
        v100 = v40;
        v101 = *(v2 + 16);
        v41 = v2[3];
        v95 = v2[2];
        v96 = v41;
        v42 = v2[5];
        v97 = v2[4];
        v98 = v42;
        v43 = v2[1];
        v93 = *v2;
        v94 = v43;
        v44 = sub_242C578A0(&v93);
        sub_242E46984(v44, &v84);
        sub_242CD54A4(v16, v18, v17);
        v17 = 0;
        v18 = 0;
        v16 = 0;
      }

      else
      {
        if (v8 == 5)
        {
          if (!(v6 | v4 | v5 | v7) || (v21 = v6 | v4 | v7, (v5 - 1) <= 1) && !v21)
          {
            v75 = v72;
            v76 = v73;
            *&v77 = v74;
            *(&v77 + 1) = v16;
            *&v78 = v18;
            *(&v78 + 1) = v17;
            *&v79 = v19;
            *(&v79 + 1) = v62;
            *&v80 = v20;
            *(&v80 + 1) = v63;
            v81 = v71;
            v22 = *v2;
            v23 = v2[1];
            v24 = v2[3];
            v86 = v2[2];
            v87 = v24;
            v84 = v22;
            v85 = v23;
            v25 = v2[4];
            v26 = v2[5];
            v27 = v2[6];
            v28 = v2[7];
            v92 = *(v2 + 16);
            v90 = v27;
            v91 = v28;
            v88 = v25;
            v89 = v26;
            v29 = sub_242C578A0(&v84);
            sub_242E46984(v29, &v93);
            sub_242E469F4(&v75);
LABEL_14:
            sub_242E46904(&v93);
LABEL_27:
            v59 = v100;
            *(a2 + 96) = v99;
            *(a2 + 112) = v59;
            *(a2 + 128) = v101;
            v60 = v96;
            *(a2 + 32) = v95;
            *(a2 + 48) = v60;
            v61 = v98;
            *(a2 + 64) = v97;
            *(a2 + 80) = v61;
            v37 = v93;
            v36 = v94;
            goto LABEL_28;
          }

          if (v5 == 5 && !v21)
          {
            v45 = v2[7];
            v99 = v2[6];
            v100 = v45;
            v101 = *(v2 + 16);
            v46 = v2[3];
            v95 = v2[2];
            v96 = v46;
            v47 = v2[5];
            v97 = v2[4];
            v98 = v47;
            v48 = v2[1];
            v93 = *v2;
            v94 = v48;
            v49 = v20;
            v50 = v19;
            v51 = sub_242C578A0(&v93);
            sub_242E46984(v51, &v84);
            sub_242D3D654(v50, v62, v49, v63);
            v52 = 0;
            v39 = 0;
            v53 = 0;
            v38 = 0;
LABEL_25:
            v64 = v72;
            v65 = v73;
            v70 = v71;
            *&v66 = v74;
            *(&v66 + 1) = v16;
            *&v67 = v18;
            *(&v67 + 1) = v17;
            *&v68 = v38;
            *(&v68 + 1) = v53;
            *&v69 = v39;
            *(&v69 + 1) = v52;
            v75 = v72;
            v76 = v73;
            *&v77 = v74;
            *(&v77 + 1) = v16;
            *&v78 = v18;
            *(&v78 + 1) = v17;
            *&v79 = v38;
            *(&v79 + 1) = v53;
            *&v80 = v39;
            *(&v80 + 1) = v52;
            v81 = v71;
            sub_242E03284(&v64, &v93);
            sub_242E469F4(&v75);
            v88 = v68;
            v89 = v69;
            v90 = v70;
            v84 = v64;
            v85 = v65;
            v86 = v66;
            v87 = v67;
            sub_242D966F8(&v84);
            goto LABEL_26;
          }
        }

        v38 = v19;
        v39 = v20;
        v54 = v2[7];
        v99 = v2[6];
        v100 = v54;
        v101 = *(v2 + 16);
        v55 = v2[3];
        v95 = v2[2];
        v96 = v55;
        v56 = v2[5];
        v97 = v2[4];
        v98 = v56;
        v57 = v2[1];
        v93 = *v2;
        v94 = v57;
        v58 = sub_242C578A0(&v93);
        sub_242E46984(v58, &v84);
      }

      v53 = v62;
      v52 = v63;
      goto LABEL_25;
    }

    v31 = sub_242C578A0(v102);
    v94 = v31[1];
    v95 = v31[2];
    v96 = v31[3];
    v97 = v31[4];
    v93 = *v31;
    *&v84 = v5;
    *(&v84 + 1) = v4;
    *&v85 = v6;
    *(&v85 + 1) = v7;
    LOBYTE(v86) = v8;
    NotificationModel.ModalAlertModel.correct(validationError:)(&v84, &v75);
    if (!v79)
    {
      goto LABEL_14;
    }

    v84 = v75;
    v85 = v76;
    v86 = v77;
    v87 = v78;
    v88 = v79;
    sub_242E46970(&v84);
LABEL_26:
    v99 = v90;
    v100 = v91;
    v101 = v92;
    v95 = v86;
    v96 = v87;
    v97 = v88;
    v98 = v89;
    v93 = v84;
    v94 = v85;
    nullsub_2();
    goto LABEL_27;
  }

  if (v13 == 2)
  {
    v30 = sub_242C578A0(v102);
    v97 = v30[4];
    v98 = v30[5];
    v99 = v30[6];
    v100 = v30[7];
    v93 = *v30;
    v94 = v30[1];
    v95 = v30[2];
    v96 = v30[3];
    *&v84 = v5;
    *(&v84 + 1) = v4;
    *&v85 = v6;
    *(&v85 + 1) = v7;
    LOBYTE(v86) = v8;
    NotificationModel.FancyModel.correct(validationError:)(&v84, &v75);
    if (sub_242E46944(&v75) == 1)
    {
      goto LABEL_14;
    }

    v88 = v79;
    v89 = v80;
    v90 = v81;
    v91 = v82;
    v84 = v75;
    v85 = v76;
    v86 = v77;
    v87 = v78;
    sub_242E4695C(&v84);
    goto LABEL_26;
  }

  v32 = sub_242C578A0(v102);
  v89 = *(v32 + 80);
  v90 = *(v32 + 96);
  v91 = *(v32 + 112);
  v92 = *(v32 + 128);
  v85 = *(v32 + 16);
  v86 = *(v32 + 32);
  v87 = *(v32 + 48);
  v88 = *(v32 + 64);
  v84 = *v32;
  *&v75 = v5;
  *(&v75 + 1) = v4;
  *&v76 = v6;
  *(&v76 + 1) = v7;
  LOBYTE(v77) = v8;
  NotificationModel.InferredNotificationModel.correct(validationError:)(&v75, &v93);
  if (sub_242E468EC(&v93) == 1)
  {
    sub_242E46904(&v84);
  }

  else
  {
    v81 = v99;
    v82 = v100;
    v83 = v101;
    v77 = v95;
    v78 = v96;
    v79 = v97;
    v80 = v98;
    v75 = v93;
    v76 = v94;
    sub_242E46930(&v75);
    v90 = v81;
    v91 = v82;
    v92 = v83;
    v86 = v77;
    v87 = v78;
    v88 = v79;
    v89 = v80;
    v84 = v75;
    v85 = v76;
    nullsub_2();
  }

  v33 = v91;
  *(a2 + 96) = v90;
  *(a2 + 112) = v33;
  *(a2 + 128) = v92;
  v34 = v87;
  *(a2 + 32) = v86;
  *(a2 + 48) = v34;
  v35 = v89;
  *(a2 + 64) = v88;
  *(a2 + 80) = v35;
  v37 = v84;
  v36 = v85;
LABEL_28:
  *a2 = v37;
  *(a2 + 16) = v36;
}

uint64_t sub_242E44C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 80);
  v8 = *(v3 + 112);
  v54 = *(v3 + 96);
  v55 = v8;
  v9 = *(v3 + 16);
  v10 = *(v3 + 48);
  v50 = *(v3 + 32);
  v51 = v10;
  v11 = *(v3 + 48);
  v12 = *(v3 + 80);
  v52 = *(v3 + 64);
  v53 = v12;
  v13 = *(v3 + 16);
  v49[0] = *v3;
  v49[1] = v13;
  v14 = *(v3 + 112);
  v57[6] = v54;
  v57[7] = v14;
  v57[2] = v50;
  v57[3] = v11;
  v57[4] = v52;
  v57[5] = v7;
  v56 = *(v3 + 128);
  v58 = *(v3 + 128);
  v57[0] = v49[0];
  v57[1] = v9;
  v15 = sub_242D3A260(v57);
  v16 = sub_242C578A0(v57);
  v19 = v16;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v20 = &type metadata for NotificationModel.FancyModel;
      v47 = &type metadata for NotificationModel.FancyModel;
      v21 = sub_242D3A370(v16, v17, v18);
      v48 = v21;
      v28 = swift_allocObject();
      v46[0] = v28;
      v29 = *(v19 + 112);
      v31 = *(v19 + 64);
      v30 = *(v19 + 80);
      v28[7] = *(v19 + 96);
      v28[8] = v29;
      v28[5] = v31;
      v28[6] = v30;
      v32 = *(v19 + 48);
      v34 = *v19;
      v33 = *(v19 + 16);
      v28[3] = *(v19 + 32);
      v28[4] = v32;
      v28[1] = v34;
      v28[2] = v33;
      goto LABEL_9;
    }

    v20 = &type metadata for NotificationModel.InferredNotificationModel;
    v47 = &type metadata for NotificationModel.InferredNotificationModel;
    v21 = sub_242D3A26C(v16, v17, v18);
    v48 = v21;
    v35 = swift_allocObject();
    v46[0] = v35;
    v37 = *(v19 + 96);
    v36 = *(v19 + 112);
    v38 = *(v19 + 80);
    *(v35 + 144) = *(v19 + 128);
    *(v35 + 112) = v37;
    *(v35 + 128) = v36;
    *(v35 + 96) = v38;
LABEL_8:
    *(v35 + 16) = *v19;
    v39 = *(v19 + 64);
    v41 = *(v19 + 16);
    v40 = *(v19 + 32);
    *(v35 + 64) = *(v19 + 48);
    *(v35 + 80) = v39;
    *(v35 + 32) = v41;
    *(v35 + 48) = v40;
    goto LABEL_9;
  }

  if (v15)
  {
    v20 = &type metadata for NotificationModel.ModalAlertModel;
    v47 = &type metadata for NotificationModel.ModalAlertModel;
    v21 = sub_242D3A418(v16, v17, v18);
    v48 = v21;
    v35 = swift_allocObject();
    v46[0] = v35;
    goto LABEL_8;
  }

  v20 = &type metadata for NotificationModel.MinimalNotificationModel;
  v47 = &type metadata for NotificationModel.MinimalNotificationModel;
  v21 = sub_242D3A3C4(v16, v17, v18);
  v48 = v21;
  v22 = swift_allocObject();
  v46[0] = v22;
  v23 = *(v19 + 96);
  v25 = *(v19 + 48);
  v24 = *(v19 + 64);
  v22[6] = *(v19 + 80);
  v22[7] = v23;
  v22[4] = v25;
  v22[5] = v24;
  v27 = *(v19 + 16);
  v26 = *(v19 + 32);
  v22[1] = *v19;
  v22[2] = v27;
  v22[3] = v26;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v46, v20);
  v42 = *(v21 + 32);
  sub_242D3A2C0(v49, &v45);
  v43 = v42(a1, a2, a3, v20, v21);
  __swift_destroy_boxed_opaque_existential_2Tm(v46);
  return v43;
}

uint64_t sub_242E44EA4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 112);
  v49 = *(v0 + 96);
  v50 = v2;
  v3 = *(v0 + 16);
  v4 = *(v0 + 48);
  v45 = *(v0 + 32);
  v46 = v4;
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v47 = *(v0 + 64);
  v48 = v6;
  v7 = *(v0 + 16);
  v44[0] = *v0;
  v44[1] = v7;
  v8 = *(v0 + 112);
  v52[6] = v49;
  v52[7] = v8;
  v52[2] = v45;
  v52[3] = v5;
  v52[4] = v47;
  v52[5] = v1;
  v51 = *(v0 + 128);
  v53 = *(v0 + 128);
  v52[0] = v44[0];
  v52[1] = v3;
  v9 = sub_242D3A260(v52);
  v10 = sub_242C578A0(v52);
  v13 = v10;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v14 = &type metadata for NotificationModel.FancyModel;
      v42 = &type metadata for NotificationModel.FancyModel;
      v15 = sub_242D3A370(v10, v11, v12);
      v43 = v15;
      v22 = swift_allocObject();
      v41[0] = v22;
      v23 = *(v13 + 112);
      v25 = *(v13 + 64);
      v24 = *(v13 + 80);
      v22[7] = *(v13 + 96);
      v22[8] = v23;
      v22[5] = v25;
      v22[6] = v24;
      v26 = *(v13 + 48);
      v28 = *v13;
      v27 = *(v13 + 16);
      v22[3] = *(v13 + 32);
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      goto LABEL_9;
    }

    v14 = &type metadata for NotificationModel.InferredNotificationModel;
    v42 = &type metadata for NotificationModel.InferredNotificationModel;
    v15 = sub_242D3A26C(v10, v11, v12);
    v43 = v15;
    v29 = swift_allocObject();
    v41[0] = v29;
    v31 = *(v13 + 96);
    v30 = *(v13 + 112);
    v32 = *(v13 + 80);
    *(v29 + 144) = *(v13 + 128);
    *(v29 + 112) = v31;
    *(v29 + 128) = v30;
    *(v29 + 96) = v32;
LABEL_8:
    *(v29 + 16) = *v13;
    v33 = *(v13 + 64);
    v35 = *(v13 + 16);
    v34 = *(v13 + 32);
    *(v29 + 64) = *(v13 + 48);
    *(v29 + 80) = v33;
    *(v29 + 32) = v35;
    *(v29 + 48) = v34;
    goto LABEL_9;
  }

  if (v9)
  {
    v14 = &type metadata for NotificationModel.ModalAlertModel;
    v42 = &type metadata for NotificationModel.ModalAlertModel;
    v15 = sub_242D3A418(v10, v11, v12);
    v43 = v15;
    v29 = swift_allocObject();
    v41[0] = v29;
    goto LABEL_8;
  }

  v14 = &type metadata for NotificationModel.MinimalNotificationModel;
  v42 = &type metadata for NotificationModel.MinimalNotificationModel;
  v15 = sub_242D3A3C4(v10, v11, v12);
  v43 = v15;
  v16 = swift_allocObject();
  v41[0] = v16;
  v17 = *(v13 + 96);
  v19 = *(v13 + 48);
  v18 = *(v13 + 64);
  v16[6] = *(v13 + 80);
  v16[7] = v17;
  v16[4] = v19;
  v16[5] = v18;
  v21 = *(v13 + 16);
  v20 = *(v13 + 32);
  v16[1] = *v13;
  v16[2] = v21;
  v16[3] = v20;
LABEL_9:
  __swift_project_boxed_opaque_existential_2Tm(v41, v14);
  v36 = *(v15 + 8);
  v37 = *(v36 + 8);
  sub_242D3A2C0(v44, &v40);
  v38 = v37(v14, v36);
  __swift_destroy_boxed_opaque_existential_2Tm(v41);
  return v38 & 1;
}

double NotificationModel.Text.init(title:body:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2)
  {
    *a5 = a1;
    *(a5 + 8) = a2;
    if (a4)
    {
      *(a5 + 16) = a3;
      *(a5 + 24) = a4;
      *(a5 + 32) = 1;
    }

    else
    {
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;
    }
  }

  else if (a4)
  {
    *a5 = a3;
    *(a5 + 8) = a4;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 2;
  }

  else
  {
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = -1;
  }

  return result;
}

uint64_t NotificationModel.Symbol.name.getter()
{
  v1 = *v0;

  return v1;
}

void NotificationModel.Symbol.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t NotificationModel.TrailingButtonConfiguration.symbolName.getter()
{
  v1 = *v0;

  return v1;
}

void NotificationModel.TrailingButtonConfiguration.symbolName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void NotificationModel.TrailingButtonConfiguration.handler.setter(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  *(v2 + 16) = sub_242D5D19C;
  *(v2 + 24) = v5;
}

void (*NotificationModel.TrailingButtonConfiguration.handler.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a1 = sub_242D5D194;
  a1[1] = v5;

  return sub_242E453A4;
}

void sub_242E453A4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;

    *(v4 + 16) = sub_242D5D19C;
    *(v4 + 24) = v5;
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v2;

    *(v4 + 16) = sub_242D5D19C;
    *(v4 + 24) = v6;
  }
}

uint64_t static NotificationModel.TrailingButtonConfiguration.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_242F06110();
  }
}

double NotificationModel.ValidationError.correct(on:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 8);
  v36[6] = *(a1 + 7);
  v36[7] = v7;
  v37 = a1[18];
  v8 = *(a1 + 4);
  v36[2] = *(a1 + 3);
  v36[3] = v8;
  v9 = *(a1 + 6);
  v36[4] = *(a1 + 5);
  v36[5] = v9;
  v10 = *(a1 + 2);
  v36[0] = *(a1 + 1);
  v36[1] = v10;
  v11 = *(v2 + 32);
  v12 = v2[1];
  v42 = *v2;
  v43 = v12;
  LOBYTE(v44) = v11;
  sub_242D3A2C0(v36, &v26);
  NotificationModel.Style.correct(validationError:)(&v42, v40);
  v13 = *(a1 + 8);
  v38[6] = *(a1 + 7);
  v38[7] = v13;
  v39 = a1[18];
  v14 = *(a1 + 4);
  v38[2] = *(a1 + 3);
  v38[3] = v14;
  v15 = *(a1 + 6);
  v38[4] = *(a1 + 5);
  v38[5] = v15;
  v16 = *(a1 + 2);
  v38[0] = *(a1 + 1);
  v38[1] = v16;
  sub_242E468BC(v38);
  v48 = v40[6];
  v49 = v40[7];
  v50 = v41;
  v44 = v40[2];
  v45 = v40[3];
  v46 = v40[4];
  v47 = v40[5];
  v42 = v40[0];
  v43 = v40[1];
  if (sub_242E46A48(&v42) == 1)
  {
    sub_242D966D8(&v26);
    v17 = v33;
    *(a2 + 96) = v32;
    *(a2 + 112) = v17;
    *(a2 + 128) = v34;
    *(a2 + 144) = v35;
    v18 = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v18;
    v19 = v31;
    *(a2 + 64) = v30;
    *(a2 + 80) = v19;
    result = *&v26;
    v21 = v27;
    *a2 = v26;
    *(a2 + 16) = v21;
  }

  else
  {
    v33 = v48;
    v34 = v49;
    v35 = v50;
    v29 = v44;
    v30 = v45;
    v32 = v47;
    v31 = v46;
    v28 = v43;
    v27 = v42;
    *&v26 = v6;
    *(&v26 + 1) = v5;
    nullsub_2();
    v22 = v33;
    *(a2 + 96) = v32;
    *(a2 + 112) = v22;
    *(a2 + 128) = v34;
    *(a2 + 144) = v35;
    v23 = v29;
    *(a2 + 32) = v28;
    *(a2 + 48) = v23;
    v24 = v31;
    *(a2 + 64) = v30;
    *(a2 + 80) = v24;
    v25 = v27;
    *a2 = v26;
    *(a2 + 16) = v25;
  }

  return result;
}

uint64_t NotificationModel.ValidationError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  if (v4 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v4 != 1)
      {
        sub_242F05A80();

        v15 = 0xD000000000000018;
        MEMORY[0x245D26660](v1, v2);
        MEMORY[0x245D26660](0xD000000000000015, 0x8000000242F5C850);
        v12 = sub_242F05F60();
        MEMORY[0x245D26660](v12);

        return v15;
      }

      sub_242F05A80();

      v15 = 0xD000000000000020;
      v5 = v1;
      v6 = v2;
    }

    else
    {
      sub_242F05A80();

      v15 = 0x206E6F69746341;
      v9 = sub_242F05F60();
      MEMORY[0x245D26660](v9);

      v6 = 0x8000000242F5C8E0;
      v5 = 0xD000000000000016;
    }

LABEL_11:
    MEMORY[0x245D26660](v5, v6);
    return v15;
  }

  if (v4 == 3)
  {
    sub_242F05A80();

    v15 = 0x206E6F74747542;
    v10 = sub_242F05F60();
    MEMORY[0x245D26660](v10);

    v8 = "howing a highlight";
    v5 = 0xD000000000000029;
    goto LABEL_10;
  }

  if (v4 == 4)
  {
    sub_242F05A80();

    v15 = 0x206E6F74747542;
    v7 = sub_242F05F60();
    MEMORY[0x245D26660](v7);

    v8 = "missing trailing button";
    v5 = 0xD000000000000022;
LABEL_10:
    v6 = v8 | 0x8000000000000000;
    goto LABEL_11;
  }

  v13 = *(v0 + 24);
  if (!(v3 | v2 | v1 | v13))
  {
    return 0x6920646920656854;
  }

  result = 0xD000000000000016;
  v14 = v3 | v2 | v13;
  if (v1 == 1 && !v14)
  {
    return 0xD000000000000017;
  }

  if (v1 != 2 || v14)
  {
    if (v1 == 3 && !v14)
    {
      return 0xD000000000000011;
    }

    if (v1 == 4 && !v14)
    {
      return 0xD00000000000001ELL;
    }

    return 0xD000000000000017;
  }

  return result;
}

uint64_t NotificationModel.validate(automakerSymbolValidator:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 8);
  v58 = *(v2 + 7);
  v59 = v7;
  v60 = v2[18];
  v8 = *(v2 + 4);
  v54 = *(v2 + 3);
  v55 = v8;
  v9 = *(v2 + 6);
  v56 = *(v2 + 5);
  v57 = v9;
  v10 = *(v2 + 2);
  v11 = v5 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v6) & 0xF;
  }

  v52 = *(v2 + 1);
  v53 = v10;
  if (v11)
  {
    v12 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = sub_242C832C4(0, 1, 1, MEMORY[0x277D84F90]);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_242C832C4((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v15 = &v12[40 * v14];
    *(v15 + 2) = 0u;
    *(v15 + 3) = 0u;
    v15[64] = 5;
  }

  v50[6] = v58;
  v50[7] = v59;
  v51 = v60;
  v50[2] = v54;
  v50[3] = v55;
  v50[4] = v56;
  v50[5] = v57;
  v50[0] = v52;
  v50[1] = v53;
  v16 = sub_242D3A260(v50);
  v17 = sub_242C578A0(v50);
  v20 = v17;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v21 = &type metadata for NotificationModel.FancyModel;
      v48 = &type metadata for NotificationModel.FancyModel;
      v22 = sub_242D3A370(v17, v18, v19);
      v49 = v22;
      v29 = swift_allocObject();
      v47[0] = v29;
      v30 = *(v20 + 112);
      v32 = *(v20 + 64);
      v31 = *(v20 + 80);
      v29[7] = *(v20 + 96);
      v29[8] = v30;
      v29[5] = v32;
      v29[6] = v31;
      v33 = *(v20 + 48);
      v35 = *v20;
      v34 = *(v20 + 16);
      v29[3] = *(v20 + 32);
      v29[4] = v33;
      v29[1] = v35;
      v29[2] = v34;
      goto LABEL_16;
    }

    v21 = &type metadata for NotificationModel.InferredNotificationModel;
    v48 = &type metadata for NotificationModel.InferredNotificationModel;
    v22 = sub_242D3A26C(v17, v18, v19);
    v49 = v22;
    v36 = swift_allocObject();
    v47[0] = v36;
    v38 = *(v20 + 96);
    v37 = *(v20 + 112);
    v39 = *(v20 + 80);
    *(v36 + 144) = *(v20 + 128);
    *(v36 + 112) = v38;
    *(v36 + 128) = v37;
    *(v36 + 96) = v39;
LABEL_15:
    *(v36 + 16) = *v20;
    v40 = *(v20 + 64);
    v42 = *(v20 + 16);
    v41 = *(v20 + 32);
    *(v36 + 64) = *(v20 + 48);
    *(v36 + 80) = v40;
    *(v36 + 32) = v42;
    *(v36 + 48) = v41;
    goto LABEL_16;
  }

  if (v16)
  {
    v21 = &type metadata for NotificationModel.ModalAlertModel;
    v48 = &type metadata for NotificationModel.ModalAlertModel;
    v22 = sub_242D3A418(v17, v18, v19);
    v49 = v22;
    v36 = swift_allocObject();
    v47[0] = v36;
    goto LABEL_15;
  }

  v21 = &type metadata for NotificationModel.MinimalNotificationModel;
  v48 = &type metadata for NotificationModel.MinimalNotificationModel;
  v22 = sub_242D3A3C4(v17, v18, v19);
  v49 = v22;
  v23 = swift_allocObject();
  v47[0] = v23;
  v24 = *(v20 + 96);
  v26 = *(v20 + 48);
  v25 = *(v20 + 64);
  v23[6] = *(v20 + 80);
  v23[7] = v24;
  v23[4] = v26;
  v23[5] = v25;
  v28 = *(v20 + 16);
  v27 = *(v20 + 32);
  v23[1] = *v20;
  v23[2] = v28;
  v23[3] = v27;
LABEL_16:
  __swift_project_boxed_opaque_existential_2Tm(v47, v21);
  v43 = *(v22 + 32);
  sub_242D3A2C0(&v52, v46);
  sub_242D3A2C0(&v52, v46);
  v44 = v43(v12, a1, a2, v21, v22);
  __swift_destroy_boxed_opaque_existential_2Tm(v47);

  sub_242E468BC(&v52);
  return v44;
}

Swift::Double_optional __swiftcall NotificationModel.doubleValue()()
{
  v0 = 0;
  result.is_nil = v0;
  return result;
}

uint64_t _s14CarPlayAssetUI17NotificationModelV4TextO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      goto LABEL_24;
    }

    v18 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      sub_242CD52B8(v18, v2, v10, v9, 0);
      sub_242CD52B8(v3, v2, v5, v4, 0);
      sub_242CD5324(v3, v2, v5, v4, 0);
      v13 = v3;
      v14 = v2;
      v15 = v10;
      v16 = v9;
      v17 = 0;
      goto LABEL_30;
    }

    v20 = sub_242F06110();
    sub_242CD52B8(v8, v7, v10, v9, 0);
    sub_242CD52B8(v3, v2, v5, v4, 0);
    sub_242CD5324(v3, v2, v5, v4, 0);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 0;
LABEL_28:
    sub_242CD5324(v21, v22, v23, v24, v25);
    return v20 & 1;
  }

  if (v6 != 1)
  {
    if (v11 != 2)
    {
      goto LABEL_24;
    }

    v26 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      sub_242CD52B8(v26, v2, v10, v9, 2);
      sub_242CD52B8(v3, v2, v5, v4, 2);
      sub_242CD5324(v3, v2, v5, v4, 2);
      v13 = v3;
      v14 = v2;
      v15 = v10;
      v16 = v9;
      v17 = 2;
      goto LABEL_30;
    }

    v20 = sub_242F06110();
    sub_242CD52B8(v8, v7, v10, v9, 2);
    sub_242CD52B8(v3, v2, v5, v4, 2);
    sub_242CD5324(v3, v2, v5, v4, 2);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 2;
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_24:
    sub_242CD52B8(*a2, *(a2 + 8), v10, v9, v11);
    sub_242CD52B8(v3, v2, v5, v4, v6);
    sub_242CD5324(v3, v2, v5, v4, v6);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = v11;
LABEL_25:
    sub_242CD5324(v28, v29, v30, v31, v32);
    return 0;
  }

  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_242F06110() & 1) == 0)
  {
    sub_242CD52B8(v8, v7, v10, v9, 1);
    sub_242CD52B8(v3, v2, v5, v4, 1);
    sub_242CD5324(v3, v2, v5, v4, 1);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = 1;
    goto LABEL_25;
  }

  if (v5 != v10 || v4 != v9)
  {
    v20 = sub_242F06110();
    sub_242CD52B8(v8, v7, v10, v9, 1);
    sub_242CD52B8(v3, v2, v5, v4, 1);
    sub_242CD5324(v3, v2, v5, v4, 1);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 1;
    goto LABEL_28;
  }

  sub_242CD52B8(v8, v7, v5, v4, 1);
  sub_242CD52B8(v3, v2, v5, v4, 1);
  sub_242CD5324(v3, v2, v5, v4, 1);
  v13 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v4;
  v17 = 1;
LABEL_30:
  sub_242CD5324(v13, v14, v15, v16, v17);
  return 1;
}

uint64_t _s14CarPlayAssetUI17NotificationModelV6SymbolV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_242F06110(), result = 0, (v5 & 1) != 0))
  {
    if (v2)
    {
      if (v3)
      {

        v7 = sub_242F04710();

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s14CarPlayAssetUI17NotificationModelV5StyleO2eeoiySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v76 = *(a1 + 96);
  v77 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v72 = *(a1 + 32);
  v73 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v74 = *(a1 + 64);
  v75 = v7;
  v8 = *(a1 + 16);
  v71[0] = *a1;
  v71[1] = v8;
  v9 = a2[5];
  v10 = a2[7];
  v85 = a2[6];
  v86 = v10;
  v11 = a2[1];
  v12 = a2[3];
  v81 = a2[2];
  v82 = v12;
  v13 = a2[3];
  v14 = a2[5];
  v83 = a2[4];
  v84 = v14;
  v15 = a2[1];
  v79 = *a2;
  v80 = v15;
  v16 = *(a1 + 80);
  v17 = *(a1 + 112);
  v88[6] = *(a1 + 96);
  v88[7] = v17;
  v18 = *(a1 + 16);
  v19 = *(a1 + 48);
  v88[2] = *(a1 + 32);
  v88[3] = v19;
  v88[4] = *(a1 + 64);
  v88[5] = v16;
  v88[0] = *a1;
  v88[1] = v18;
  v95 = v9;
  v96 = v85;
  v97 = a2[7];
  v91 = v11;
  v92 = v81;
  v93 = v13;
  v94 = v83;
  v90 = v79;
  v20 = *(a1 + 112);
  v99[6] = v76;
  v99[7] = v20;
  v99[2] = v72;
  v99[3] = v6;
  v99[4] = v74;
  v99[5] = v2;
  v78 = *(a1 + 128);
  v87 = *(a2 + 16);
  v21 = *(a2 + 16);
  v89 = *(a1 + 128);
  v98 = v21;
  v100 = *(a1 + 128);
  v99[0] = v71[0];
  v99[1] = v4;
  v22 = sub_242D3A260(v99);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v29 = sub_242C578A0(v99);
      v68 = v85;
      v69 = v86;
      v70 = v87;
      v64 = v81;
      v65 = v82;
      v66 = v83;
      v67 = v84;
      v62 = v79;
      v63 = v80;
      if (sub_242D3A260(&v62) == 2)
      {
        v30 = sub_242C578A0(&v62);
        v31 = v29[5];
        v55 = v29[4];
        v56 = v31;
        v32 = v29[7];
        v57 = v29[6];
        v58 = v32;
        v33 = v29[1];
        v51 = *v29;
        v52 = v33;
        v34 = v29[3];
        v53 = v29[2];
        v54 = v34;
        v47 = v30[4];
        v48 = v30[5];
        v49 = v30[6];
        v50 = v30[7];
        v43 = *v30;
        v44 = v30[1];
        v45 = v30[2];
        v46 = v30[3];
        sub_242D3A2C0(&v79, v60);
        sub_242D3A2C0(v71, v60);
        sub_242D3A2C0(v71, v60);
        sub_242D3A2C0(&v79, v60);
        v28 = _s14CarPlayAssetUI17NotificationModelV05FancyF0V2eeoiySbAE_AEtFZ_0(&v51, &v43);
        goto LABEL_11;
      }
    }

    else
    {
      v35 = sub_242C578A0(v99);
      v68 = v85;
      v69 = v86;
      v70 = v87;
      v64 = v81;
      v65 = v82;
      v66 = v83;
      v67 = v84;
      v62 = v79;
      v63 = v80;
      if (sub_242D3A260(&v62) == 3)
      {
        v36 = sub_242C578A0(&v62);
        v60[5] = *(v35 + 80);
        v60[6] = *(v35 + 96);
        v60[7] = *(v35 + 112);
        v61 = *(v35 + 128);
        v60[1] = *(v35 + 16);
        v60[2] = *(v35 + 32);
        v60[3] = *(v35 + 48);
        v60[4] = *(v35 + 64);
        v60[0] = *v35;
        v37 = *(v36 + 112);
        v57 = *(v36 + 96);
        v58 = v37;
        v59 = *(v36 + 128);
        v38 = *(v36 + 48);
        v53 = *(v36 + 32);
        v54 = v38;
        v39 = *(v36 + 80);
        v55 = *(v36 + 64);
        v56 = v39;
        v40 = *(v36 + 16);
        v51 = *v36;
        v52 = v40;
        sub_242D3A2C0(&v79, &v43);
        sub_242D3A2C0(v71, &v43);
        sub_242D3A2C0(v71, &v43);
        sub_242D3A2C0(&v79, &v43);
        v28 = _s14CarPlayAssetUI17NotificationModelV08InferredeF0V2eeoiySbAE_AEtFZ_0(v60, &v51);
        goto LABEL_11;
      }
    }

    goto LABEL_12;
  }

  if (v22)
  {
    sub_242C578A0(v99);
    goto LABEL_12;
  }

  v23 = sub_242C578A0(v99);
  v68 = v85;
  v69 = v86;
  v70 = v87;
  v64 = v81;
  v65 = v82;
  v66 = v83;
  v67 = v84;
  v62 = v79;
  v63 = v80;
  if (sub_242D3A260(&v62))
  {
LABEL_12:
    sub_242D3A2C0(v71, &v62);
    sub_242D3A2C0(&v79, &v62);
    sub_242E471D8(v88);
    v41 = 0;
    return v41 & 1;
  }

  v24 = sub_242C578A0(&v62);
  v25 = v23[5];
  v55 = v23[4];
  v56 = v25;
  v57 = v23[6];
  v26 = v23[1];
  v51 = *v23;
  v52 = v26;
  v27 = v23[3];
  v53 = v23[2];
  v54 = v27;
  v46 = v24[3];
  v47 = v24[4];
  v48 = v24[5];
  v49 = v24[6];
  v43 = *v24;
  v44 = v24[1];
  v45 = v24[2];
  sub_242D3A2C0(&v79, v60);
  sub_242D3A2C0(v71, v60);
  sub_242D3A2C0(v71, v60);
  sub_242D3A2C0(&v79, v60);
  v28 = _s14CarPlayAssetUI17NotificationModelV07MinimaleF0V2eeoiySbAE_AEtFZ_0(&v51, &v43);
LABEL_11:
  v41 = v28;
  sub_242E471D8(v88);
  sub_242E468BC(&v79);
  sub_242E468BC(v71);
  return v41 & 1;
}

uint64_t _s14CarPlayAssetUI17NotificationModelV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 8);
  v48[6] = *(a1 + 7);
  v48[7] = v6;
  v49 = a1[18];
  v7 = *(a1 + 4);
  v48[2] = *(a1 + 3);
  v48[3] = v7;
  v8 = *(a1 + 6);
  v48[4] = *(a1 + 5);
  v48[5] = v8;
  v9 = *(a1 + 2);
  v48[0] = *(a1 + 1);
  v48[1] = v9;
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 8);
  v50[6] = *(a2 + 7);
  v50[7] = v12;
  v51 = a2[18];
  v13 = *(a2 + 4);
  v50[2] = *(a2 + 3);
  v50[3] = v13;
  v14 = *(a2 + 6);
  v50[4] = *(a2 + 5);
  v50[5] = v14;
  v15 = *(a2 + 2);
  v50[0] = *(a2 + 1);
  v50[1] = v15;
  if (v4 == v10 && v5 == v11 || (v16 = 0, (sub_242F06110() & 1) != 0))
  {
    v17 = *(a1 + 8);
    v41 = *(a1 + 7);
    v42 = v17;
    v43 = a1[18];
    v18 = *(a1 + 4);
    v37 = *(a1 + 3);
    v38 = v18;
    v19 = *(a1 + 6);
    v39 = *(a1 + 5);
    v40 = v19;
    v20 = *(a1 + 2);
    v35 = *(a1 + 1);
    v36 = v20;
    v21 = *(a2 + 8);
    v32 = *(a2 + 7);
    v33 = v21;
    v34 = a2[18];
    v22 = *(a2 + 4);
    v28 = *(a2 + 3);
    v29 = v22;
    v23 = *(a2 + 6);
    v30 = *(a2 + 5);
    v31 = v23;
    v24 = *(a2 + 2);
    v26 = *(a2 + 1);
    v27 = v24;
    sub_242D3A2C0(v48, v46);
    sub_242D3A2C0(v50, v46);
    v16 = _s14CarPlayAssetUI17NotificationModelV5StyleO2eeoiySbAE_AEtFZ_0(&v35, &v26);
    v44[6] = v32;
    v44[7] = v33;
    v45 = v34;
    v44[2] = v28;
    v44[3] = v29;
    v44[4] = v30;
    v44[5] = v31;
    v44[0] = v26;
    v44[1] = v27;
    sub_242E468BC(v44);
    v46[6] = v41;
    v46[7] = v42;
    v47 = v43;
    v46[2] = v37;
    v46[3] = v38;
    v46[4] = v39;
    v46[5] = v40;
    v46[0] = v35;
    v46[1] = v36;
    sub_242E468BC(v46);
  }

  return v16 & 1;
}

uint64_t sub_242E468EC(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_242E46904(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x3FFFFFFFCLL;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  return result;
}

uint64_t sub_242E46944(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242E46984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9A60, &qword_242F3BE30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242E46A48(uint64_t a1)
{
  if ((*(a1 + 32) >> 2) > 0x80000000)
  {
    return -(*(a1 + 32) >> 2);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_242E46A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_242E46A88(a1, a2, a3);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_242E46A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27ECF9A68[0];
  if (!qword_27ECF9A68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27ECF9A68);
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

uint64_t sub_242E46B1C(uint64_t a1, int a2)
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

uint64_t sub_242E46B64(uint64_t result, int a2, int a3)
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

uint64_t sub_242E46C00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 2;
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

double sub_242E46C50(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 120) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 136) = 1;
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
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 4 * -a2;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0u;
      *(a1 + 120) = 0u;
      return result;
    }

    *(a1 + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14CarPlayAssetUI17NotificationModelV15ValidationErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 4)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_242E46D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 33))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 32);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_242E46D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_242E46DDC(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_242E46E08(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_242E46E78(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_242E46FB8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_242E471D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9AF0, &unk_242F3CB80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues.dataSourceManager.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242DB2134(a1, a2, a3);
  sub_242F04010();
  if (v6)
  {
    sub_242C6D138(&v5, &qword_27ECF5A40, &unk_242F3CB90);
    return 0;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    sub_242C6D138(&v5, &qword_27ECF5A48, &qword_242F2F248);
    return Strong;
  }
}

double EnvironmentValues.dataSourceManager.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_weakInit();
    a1 = swift_weakAssign();
  }

  sub_242DB2134(a1, a2, a3);
  sub_242F04020();

  return result;
}

uint64_t DataSourceManager.__allocating_init(_:preLoadAll:)(uint64_t (*a1)(char *, void, void), uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_allocObject();
  v6 = sub_242E47C14(a1, a2, v3);

  return v6;
}

uint64_t sub_242E473B4(char *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  LOBYTE(v26) = *a1;
  v8 = InstrumentDataIdentifier.rawValue.getter();
  if (a3)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  v28 = v8;
  v29 = v9;

  MEMORY[0x245D26660](v10, v11);

  swift_beginAccess();
  v12 = *(v3 + 16);
  if (*(v12 + 16) && (, v13 = sub_242CE519C(v28, v29), v15 = v14, , (v15 & 1) != 0))
  {
    v16 = *(*(v12 + 56) + 8 * v13);
  }

  else
  {

    v17 = *(v4 + 32);
    LOBYTE(v26) = v7;
    v16 = v17(&v26, a2, a3);
    v26 = InstrumentDataIdentifier.rawValue.getter();
    v27 = v18;

    MEMORY[0x245D26660](v10, v11);

    v19 = v26;
    v20 = v27;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v4 + 16);
    *(v4 + 16) = 0x8000000000000000;
    sub_242CDF694(v16, v19, v20, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v25;
    swift_endAccess();
    if (*(v4 + 24) == 1 && (*(v16 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) & 1) == 0)
    {
      *(v16 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 1;
      v22 = *(v16 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);

      v22(v23);
    }
  }

  return v16;
}

uint64_t DataSourceManager.init(_:preLoadAll:)(uint64_t (*a1)(char *, void, void), uint64_t a2, uint64_t a3)
{
  v3 = sub_242E47C14(a1, a2, a3);

  return v3;
}

void sub_242E47624()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_9:
    v8 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v9 = *(*(v1 + 56) + ((v6 << 9) | (8 * v8)));
    if ((*(v9 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) & 1) == 0)
    {
      *(v9 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 1;
      v10 = *(v9 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_startSubscription);

      v10(v11);
    }
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      *(v0 + 24) = 1;
      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_242E4776C()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (v4)
  {
LABEL_10:
    v8 = *(*(v1 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v4)))));
    v9 = OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_cancellables;
    swift_beginAccess();
    *(v8 + v9) = MEMORY[0x277D84FA0];

    if (*(v8 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_useDefaultValue) == 1)
    {
      sub_242CA321C(v8 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_defaultValue, v11, &qword_27ECF85E0, &qword_242F3CBA0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_242CA321C(v11, v10, &qword_27ECF85E0, &qword_242F3CBA0);

      sub_242F03A90();
      sub_242C6D138(v11, &qword_27ECF85E0, &qword_242F3CBA0);
    }

    v4 &= v4 - 1;
    *(v8 + OBJC_IVAR____TtC14CarPlayAssetUI20InstrumentDataSource_listening) = 0;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      *(v0 + 24) = 0;
      return;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t DataSourceManager.deinit()
{

  return v0;
}

uint64_t DataSourceManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_242E479D8@<X0>(uint64_t a1@<X8>)
{
  v1 = a1;
  if (qword_27ECEF6F8 != -1)
  {
    swift_once();
    v1 = a1;
  }

  return sub_242CA321C(&qword_27ECF9AF8, v1, &qword_27ECF5A40, &unk_242F3CB90);
}

uint64_t (*EnvironmentValues.dataSourceManager.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  *(v3 + 32) = sub_242DB2134(v3, v4, v5);
  sub_242F04010();
  if (*(v6 + 8))
  {
    sub_242C6D138(v6, &qword_27ECF5A40, &unk_242F3CB90);
    Strong = 0;
  }

  else
  {
    Strong = swift_weakLoadStrong();
    sub_242C6D138(v6, &qword_27ECF5A48, &qword_242F2F248);
  }

  *(v6 + 16) = Strong;
  return sub_242E47B2C;
}

void sub_242E47B2C(void *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (a2)
  {
    if (v3)
    {
      goto LABEL_5;
    }

    *v2 = 0;
  }

  else
  {
    if (v3)
    {
LABEL_5:
      swift_weakInit();
      swift_weakAssign();
      goto LABEL_8;
    }

    *v2 = 0;
  }

LABEL_8:
  v2[8] = v3 == 0;
  sub_242F04020();

  free(v2);
}

uint64_t sub_242E47C14(uint64_t (*a1)(char *, void, void), uint64_t a2, char a3)
{
  v4 = v3;
  v30 = v4;
  *(v4 + 16) = MEMORY[0x277D84F98];
  v7 = v4 + 16;
  *(v7 + 8) = 0;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  if ((a3 & 1) == 0)
  {
    return v30;
  }

  v8 = 0x20u;
  while (1)
  {
    v33 = byte_28557AC00[v8];
    v9 = v33;
    v10 = InstrumentDataIdentifier.rawValue.getter();
    v12 = v11;
    v32[0] = v9;
    v13 = a1(v32, 0, 0);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v7;
    v31 = *v7;
    *v7 = 0x8000000000000000;
    v16 = sub_242CE519C(v10, v12);
    v18 = v15[2];
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (v15[3] < v21)
    {
      sub_242D08698(v21, isUniquelyReferenced_nonNull_native);
      v16 = sub_242CE519C(v10, v12);
      if ((v22 & 1) != (v23 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v24 = v31;
      if (v22)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v28 = v16;
    sub_242D037D0();
    v16 = v28;
    v24 = v31;
    if (v22)
    {
LABEL_3:
      *(v24[7] + 8 * v16) = v13;

      goto LABEL_4;
    }

LABEL_11:
    v24[(v16 >> 6) + 8] |= 1 << v16;
    v25 = (v24[6] + 16 * v16);
    *v25 = v10;
    v25[1] = v12;
    *(v24[7] + 8 * v16) = v13;
    v26 = v24[2];
    v20 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v20)
    {
      goto LABEL_17;
    }

    v24[2] = v27;
LABEL_4:
    *v7 = v24;
    swift_endAccess();
    if (++v8 == 118)
    {
      return v30;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_242F06320();
  __break(1u);
  return result;
}

uint64_t SlotView.init(slot:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = swift_getKeyPath();
  *(a2 + 32) = 0;
  v4 = type metadata accessor for SlotView(0);
  v5 = *(v4 + 24);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8, &qword_242F39A30);
  swift_storeEnumTagMultiPayload();
  return sub_242DD665C(a1, a2 + *(v4 + 28), type metadata accessor for Slot);
}

uint64_t sub_242E47FEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF3030, &qword_242F17A28);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  sub_242CA321C(a1, &v12 - v6, &qword_27ECF3030, &qword_242F17A28);
  v8 = sub_242CA321C(v7, v4, &qword_27ECF3030, &qword_242F17A28);
  sub_242D97074(v8, v9, v10);
  sub_242F04020();
  return sub_242C6D138(v7, &qword_27ECF3030, &qword_242F17A28);
}

double sub_242E480F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  sub_242D97434(a1, a2, a3);
  sub_242F04010();
  result = *&v6;
  *a4 = v6;
  return result;
}

uint64_t sub_242E48140(uint64_t *a1)
{
  v1 = sub_242CA0064(*a1, a1[1]);
  sub_242D97434(v1, v2, v3);
  return sub_242F04020();
}

uint64_t type metadata accessor for SlotView(uint64_t a1)
{
  result = qword_27ECF9B08;
  if (!qword_27ECF9B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_242E481E0@<X0>(void *a1@<X8>)
{
  v3 = sub_242F04000();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF2CF8, &qword_242F39A30);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SlotView(0);
  sub_242CA321C(v1 + *(v10 + 24), v9, &qword_27ECF2CF8, &qword_242F39A30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_242CF6B3C(v9, a1, &qword_27ECF3030, &qword_242F17A28);
  }

  sub_242F05710();
  v12 = sub_242F04360();
  sub_242F03930();

  sub_242F03FF0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t SlotView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SlotView(0) + 28);
  v4 = v3 + *(type metadata accessor for Slot(0) + 36);

  return sub_242E48424(v4, a1);
}

uint64_t sub_242E48424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B68, &qword_242F3CD98);
  MEMORY[0x28223BE20](v38);
  v41 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B40, &qword_242F3CD80);
  MEMORY[0x28223BE20](v40);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v34 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B30, &qword_242F3CD78);
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v34 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B50, &qword_242F3CD88);
  MEMORY[0x28223BE20](v37);
  v11 = (&v34 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  v15 = type metadata accessor for Instrument(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_242CA321C(a1, v14, &qword_27ECF0B08, &unk_242F17EB0);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_242C6D138(v14, &qword_27ECF0B08, &unk_242F17EB0);
    v19 = 1;
    v20 = v43;
  }

  else
  {
    sub_242DD665C(v14, v18, type metadata accessor for Instrument);
    *v11 = sub_242F04A70();
    v11[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B70, &qword_242F3CDA0);
    sub_242E48B0C(v2, v18);
    if (v18[*(v15 + 24) + 25] == 1)
    {
      v22 = type metadata accessor for SlotView(0);
      v25 = (v2 + *(v22 + 28));
      v26 = v25[5];
      if (v26 == 1)
      {
        sub_242DA1AC8(v22, v23, v24);
      }

      else if (v26)
      {
        sub_242DA0C08(*v25, v52);
        v48 = v52[4];
        v49 = v52[5];
        v50 = v52[6];
        v44 = v52[0];
        v45 = v52[1];
        v51 = v53;
        v46 = v52[2];
        v47 = v52[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5728, &qword_242F2E020);
        sub_242C7E000(&qword_27ECF5730, &qword_27ECF5728, &qword_242F2E020, MEMORY[0x277CDF478]);
      }

      else
      {
        sub_242DA1B1C(v22, v23, v24);
      }

      v28 = sub_242F049C0();
      v29 = v36;
      sub_242CA321C(v11, v36, &qword_27ECF9B50, &qword_242F3CD88);
      v30 = v29 + *(v40 + 36);
      *v30 = v28;
      *(v30 + 8) = 256;
      v31 = v29;
      v32 = v35;
      sub_242CF6B3C(v31, v35, &qword_27ECF9B40, &qword_242F3CD80);
      sub_242CA321C(v32, v41, &qword_27ECF9B40, &qword_242F3CD80);
      swift_storeEnumTagMultiPayload();
      sub_242E49A4C();
      sub_242C7E000(&qword_27ECF9B48, &qword_27ECF9B50, &qword_242F3CD88, MEMORY[0x277CE11A8]);
      v27 = v39;
      sub_242F041C0();
      sub_242C6D138(v32, &qword_27ECF9B40, &qword_242F3CD80);
    }

    else
    {
      sub_242CA321C(v11, v41, &qword_27ECF9B50, &qword_242F3CD88);
      swift_storeEnumTagMultiPayload();
      sub_242E49A4C();
      sub_242C7E000(&qword_27ECF9B48, &qword_27ECF9B50, &qword_242F3CD88, MEMORY[0x277CE11A8]);
      v27 = v39;
      sub_242F041C0();
    }

    sub_242C6D138(v11, &qword_27ECF9B50, &qword_242F3CD88);
    sub_242E49DF4(v18, type metadata accessor for Instrument);
    v20 = v43;
    sub_242CF6B3C(v27, v43, &qword_27ECF9B30, &qword_242F3CD78);
    v19 = 0;
  }

  return (*(v8 + 56))(v20, v19, 1, v42);
}

uint64_t sub_242E48B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B78, &qword_242F3CDA8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - v5;
  v41 = type metadata accessor for InstrumentView(0);
  MEMORY[0x28223BE20](v41);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B80, &qword_242F3CDB0);
  MEMORY[0x28223BE20](v37);
  v39 = &v32 - v8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B88, &qword_242F3CDB8);
  MEMORY[0x28223BE20](v38);
  v35 = &v32 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF9B90, &qword_242F3CDC0);
  MEMORY[0x28223BE20](v42);
  v40 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF0B08, &unk_242F17EB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_242F04000();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a1 + 24);
  v36 = a1;
  if (*(a1 + 32) == 1)
  {
    v43[0] = v19;
  }

  else
  {
    v32 = v16;

    sub_242F05710();
    v20 = sub_242F04360();
    v33 = a2;
    v21 = v20;
    sub_242F03930();

    a2 = v33;
    sub_242F03FF0();
    swift_getAtKeyPath();
    sub_242CA31A0(v19, 0);
    (*(v15 + 8))(v18, v32);
    v19 = v43[0];
  }

  v43[71] = v19;
  sub_242E49D8C(a2, v13, type metadata accessor for Instrument);
  v22 = type metadata accessor for Instrument(0);
  (*(*(v22 - 8) + 56))(v13, 0, 1, v22);
  v23 = LayoutOutput.isVisible(_:)(v13);
  sub_242C6D138(v13, &qword_27ECF0B08, &unk_242F17EB0);
  if (v23)
  {
    memcpy(v43, (a2 + *(v22 + 20)), 0x238uLL);
    v24 = sub_242C9E788(v43);
    if (v24 != 6 && v24)
    {
      v28 = v41;
      v29 = v34;
      sub_242E49D8C(a2, &v34[*(v41 + 28)], type metadata accessor for Instrument);
      type metadata accessor for LayoutTreatment(0);
      sub_242E49D44(&qword_27ECF5910, type metadata accessor for LayoutTreatment, &protocol conformance descriptor for LayoutTreatment);
      *v29 = sub_242F03E60();
      *(v29 + 8) = v30;
      *(v29 + 16) = swift_getKeyPath();
      *(v29 + 24) = 0;
      v31 = *(v28 + 24);
      *(v29 + v31) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECF5918, &qword_242F2F0F8);
      swift_storeEnumTagMultiPayload();
      sub_242E49D8C(v29, v39, type metadata accessor for InstrumentView);
      swift_storeEnumTagMultiPayload();
      sub_242E49C18(&qword_27ECF9BA0, &qword_27ECF9B88, &qword_242F3CDB8, sub_242E49C94);
      sub_242E49D44(&qword_27ECF9BC0, type metadata accessor for InstrumentView, &protocol conformance descriptor for InstrumentView);
      v26 = v40;
      sub_242F041C0();
      sub_242E49DF4(v29, type metadata accessor for InstrumentView);
    }

    else
    {
      sub_242C556B4(v43);
      v25 = v35;
      sub_242E49278(a2, v35);
      sub_242CA321C(v25, v39, &qword_27ECF9B88, &qword_242F3CDB8);
      swift_storeEnumTagMultiPayload();
      sub_242E49C18(&qword_27ECF9BA0, &qword_27ECF9B88, &qword_242F3CDB8, sub_242E49C94);
      sub_242E49D44(&qword_27ECF9BC0, type metadata accessor for InstrumentView, &protocol conformance descriptor for InstrumentView);
      v26 = v40;
      sub_242F041C0();
      sub_242C6D138(v25, &qword_27ECF9B88, &qword_242F3CDB8);
    }

    sub_242CA321C(v26, v6, &qword_27ECF9B90, &qword_242F3CDC0);
    swift_storeEnumTagMultiPayload();
    sub_242E49B30();
    sub_242F041C0();
    return sub_242C6D138(v26, &qword_27ECF9B90, &qword_242F3CDC0);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_242E49B30();
    return sub_242F041C0();
  }
}