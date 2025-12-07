uint64_t sub_1C985E054()
{
  swift_beginAccess();
  nullsub_1();
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t sub_1C985E0C8()
{
  v1 = *v0;
  sub_1C9A93CC8();
  sub_1C97BDF2C(v3, v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C985E10C(uint64_t a1, char a2)
{
  if (!a2)
  {
    return a1 & 1;
  }

  if (a2 != 1)
  {
    return 128;
  }

  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  if (swift_dynamicCast())
  {
    return v3 | 0x40u;
  }

  else
  {
    return 64;
  }
}

uint64_t sub_1C985E194(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    return a1 & 1;
  }

  if (a1 >> 6 != 1)
  {
    return 0;
  }

  v1 = a1 & 0x3F;
  sub_1C985E2B4();
  result = swift_allocError();
  *v3 = v1;
  return result;
}

uint64_t sub_1C985E1F8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C985E10C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1C985E22C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C985E194(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_1C985E260()
{
  result = qword_1EC3C98D8;
  if (!qword_1EC3C98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C98D8);
  }

  return result;
}

unint64_t sub_1C985E2B4()
{
  result = qword_1EC3CD630;
  if (!qword_1EC3CD630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD630);
  }

  return result;
}

uint64_t sub_1C985E308()
{
  swift_beginAccess();
  nullsub_1();
  swift_endAccess();
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteRequest(uint64_t a1)
{
  result = qword_1EC3C98E0;
  if (!qword_1EC3C98E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C985E3CC(uint64_t a1)
{
  result = type metadata accessor for AOPClassificationDemo.Request(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C985E490()
{
  sub_1C97AA884();
  v1[275] = v0;
  v1[274] = v2;
  v1[273] = v3;
  v4 = type metadata accessor for AOPClassificationDemo.Request(0);
  sub_1C97DACE4(v4);
  v1[276] = swift_task_alloc();
  v5 = type metadata accessor for RemoteRequest(0);
  v1[277] = v5;
  sub_1C97DACE4(v5);
  v1[278] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C985E54C, 0, 0);
}

void sub_1C985E54C()
{
  v1 = (v0 + 1504);
  v2 = *(v0 + 2224);
  v3 = *(v0 + 2216);
  sub_1C981CE50(*(v0 + 2200), v2);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v26 = *(v0 + 2224);
      v27 = *(v0 + 2192);
      memcpy((v0 + 880), v26, 0x49uLL);
      memcpy(__dst, v26, 0x49uLL);
      v28 = *(v27 + 8);
      v3 = *(v27 + 24);
      *(v0 + 2088) = &unk_1F492E308;
      *(v0 + 2096) = &off_1F493D758;
      sub_1C98137F8();
      v29 = swift_allocObject();
      *(v0 + 2064) = v29;
      sub_1C9871864(v29);

      sub_1C97FFF18();
      sub_1C98719A4();
      sub_1C97A592C((v0 + 2064));
      sub_1C986EB48(v0 + 880);
      *(v0 + 2048) = &unk_1F4930DE0;
      *(v0 + 2056) = &off_1F4930E98;
      *(v0 + 2024) = v28;
      v43 = v0 + 2024;
      break;
    case 2u:
      v18 = *(v0 + 2192);
      sub_1C98719DC((v0 + 1248));
      sub_1C98719DC(__dst);
      v19 = *(v18 + 8);
      v3 = *(v18 + 24);
      *(v0 + 1968) = &unk_1F492E308;
      *(v0 + 1976) = &off_1F493D758;
      sub_1C98137F8();
      v20 = swift_allocObject();
      *(v0 + 1944) = v20;
      sub_1C9871864(v20);

      sub_1C9A41E9C(__dst, (v0 + 1944));
      sub_1C98719A4();
      sub_1C97A592C((v0 + 1944));
      sub_1C986EAF4(v0 + 1248);
      *(v0 + 1928) = &unk_1F4950A48;
      *(v0 + 1936) = &off_1F4950A70;
      *(v0 + 1904) = v19;
      v43 = v0 + 1904;
      break;
    case 3u:
      v21 = *(v0 + 2224);
      v22 = *(v0 + 2192);
      memcpy((v0 + 1392), v21, 0x41uLL);
      memcpy((v0 + 1176), v21, 0x41uLL);

      sub_1C986EA44(v0 + 1392, v0 + 1320);
      v41 = sub_1C986E158(v0 + 1176, v22);
      v42 = *(v0 + 2184);
      sub_1C986EAA0(v0 + 1392);

      sub_1C986EAA0(v0 + 1392);
      *(v0 + 1808) = &unk_1F494E228;
      *(v0 + 1816) = &off_1F494E250;
      *(v0 + 1784) = v41;
      v43 = v0 + 1784;
      goto LABEL_23;
    case 4u:
      v9 = *(v0 + 2224);
      v10 = *(v0 + 2192);
      memcpy((v0 + 424), v9, 0x79uLL);
      memcpy(__dst, v9, 0x79uLL);
      v11 = *(v10 + 8);
      v3 = *(v10 + 24);
      *(v0 + 1728) = &unk_1F492E308;
      *(v0 + 1736) = &off_1F493D758;
      sub_1C98137F8();
      v12 = swift_allocObject();
      *(v0 + 1704) = v12;
      sub_1C9871864(v12);

      sub_1C9992164();
      sub_1C98719A4();
      sub_1C97A592C((v0 + 1704));
      sub_1C986E9F0(v0 + 424);
      *(v0 + 1688) = &unk_1F4946180;
      *(v0 + 1696) = &off_1F49461A8;
      *(v0 + 1664) = v11;
      v43 = v0 + 1664;
      break;
    case 5u:
      v30 = *(v0 + 2192);
      memcpy((v0 + 672), *(v0 + 2224), 0x71uLL);
      sub_1C985F5F0((v0 + 672), v30);
      sub_1C98719A4();
      *(v0 + 1608) = &type metadata for SoundDetection.Session;
      *(v0 + 1616) = &off_1F4930220;
      sub_1C97F9A64(v0 + 672);
      *(v0 + 1584) = v30;
      v43 = v0 + 1584;
      break;
    case 6u:
      v31 = *(v0 + 2224);
      v32 = *(v0 + 2192);
      memcpy((v0 + 792), v31, 0x51uLL);
      v33 = *(v0 + 792);
      v34 = *(v0 + 800);
      memcpy((v0 + 1104), (v31 + 16), 0x41uLL);
      v35 = *(v32 + 32);
      v36 = *(v32 + 16);
      *v1 = *v32;
      *(v0 + 1520) = v36;
      *(v0 + 1536) = v35;
      v37 = swift_task_alloc();
      *(v37 + 16) = v1;
      *(v37 + 24) = v0 + 1104;

      sub_1C97A6264(v0 + 808, v0 + 960);

      v44 = sub_1C9805B68(sub_1C986E980, v37, v33, v34);
      v42 = *(v0 + 2184);
      sub_1C97E8084(v0 + 808);

      sub_1C986E99C(v0 + 792);
      *(v0 + 1648) = &type metadata for DirectionOfArrival.Session;
      *(v0 + 1656) = &off_1F4938E88;
      *(v0 + 1624) = v44;
      v43 = v0 + 1624;
LABEL_23:
      v48 = v42;
      goto LABEL_26;
    case 7u:
      memcpy((v0 + 16), *(v0 + 2224), 0xD1uLL);
      *(v0 + 1848) = type metadata accessor for AccessibilitySoundRecognition.Session(0);
      *(v0 + 1856) = &off_1F4942E48;
      sub_1C981CDF0((v0 + 1824));
      v23 = sub_1C9871B08();
      *(v0 + 2232) = v23;
      *v23 = v0;
      v23[1] = sub_1C985EF38;
      sub_1C98719BC();

      __asm { BR              X2 }

      return;
    case 8u:
      sub_1C98718C4();
      *(v0 + 2008) = &unk_1F492E308;
      *(v0 + 2016) = &off_1F492ECD0;
      sub_1C98137F8();
      v40 = swift_allocObject();
      *(v0 + 1984) = v40;
      sub_1C9871A80(v40);
      *(v0 + 2128) = sub_1C97A2CEC(&qword_1EC3C9908, &qword_1C9AA7CA0);
      *(v0 + 2136) = &off_1F494F618;
      sub_1C981CDF0((v0 + 2104));

      sub_1C9871A24();
      sub_1C9A21F94();
      if (v0 != -1104)
      {

        sub_1C97A592C((v0 + 1984));
        v17 = v0 + 2104;
        goto LABEL_21;
      }

      v3 = MEMORY[0x438];

      sub_1C97A592C(0x370);
      v43 = 1000;
      break;
    case 9u:
      sub_1C98718C4();
      *(v0 + 1488) = &unk_1F492E308;
      *(v0 + 1496) = &off_1F492ECD0;
      sub_1C98137F8();
      v16 = swift_allocObject();
      *(v0 + 1464) = v16;
      sub_1C9871A80(v16);
      *(v0 + 1768) = sub_1C97A2CEC(&qword_1EC3C9900, &qword_1C9AA7C98);
      *(v0 + 1776) = &off_1F494F618;
      sub_1C981CDF0((v0 + 1744));

      sub_1C9871A24();
      sub_1C9A2258C();
      if (v0 != -1104)
      {

        sub_1C97A592C((v0 + 1464));
        v17 = v0 + 1744;
LABEL_21:
        sub_1C97C26F0(v17);
        sub_1C98719B0();

        sub_1C97DA91C();
        goto LABEL_28;
      }

      v3 = MEMORY[0x438];

      sub_1C97A592C(0x168);
      v43 = 640;
      break;
    case 0xAu:
      sub_1C98719B0();
      sub_1C9871600();
      sub_1C986FB68(v38, v2, v39);
      *(v0 + 1568) = &type metadata for AOPClassificationDemo.Session;
      *(v0 + 1576) = &off_1F49336C8;
      sub_1C9836FD0(v2, (v0 + 1544));
      v45 = *(v0 + 2184);
      sub_1C987154C();
      sub_1C986F1E8(v46, v47);
      v43 = v0 + 1544;
      v48 = v45;
      goto LABEL_26;
    case 0xBu:
      v7 = *(v0 + 2184);
      v7[3] = &type metadata for ExampleRemoteWorkload.Session;
      v7[4] = &off_1F493B788;
      v8 = sub_1C986E5A8(0xFFFFFFFFFFFFFFFFLL);
      *v7 = &unk_1C9AB0998;
      v7[1] = 0;
      v7[2] = v8 ^ 0x8000000000000000;
      goto LABEL_27;
    case 0xCu:
      *(v0 + 1888) = type metadata accessor for AccessibilitySoundActions.Session(0);
      *(v0 + 1896) = &off_1F493CD28;
      sub_1C981CDF0((v0 + 1864));
      v13 = sub_1C9871B08();
      *(v0 + 2248) = v13;
      *v13 = v0;
      v13[1] = sub_1C985F0B4;
      sub_1C98719BC();

      __asm { BR              X2 }

      return;
    default:
      v4 = *(v0 + 2224);
      v3 = *(v0 + 2192);
      memcpy((v0 + 232), v4, 0xB9uLL);
      memcpy((v0 + 552), v4, 0x78uLL);
      memcpy((v0 + 1032), (v4 + 120), 0x41uLL);
      v6 = type metadata accessor for _SNClassifySoundRequest(v5);
      sub_1C9869FC4((v0 + 552), (v0 + 1032), v3);
      sub_1C98719A4();
      *(v0 + 2168) = &type metadata for SoundClassification.Session;
      *(v0 + 2176) = &off_1F4941588;
      sub_1C986EB9C(v0 + 232);
      *(v0 + 2144) = v6;
      v43 = v0 + 2144;
      break;
  }

  v48 = v3;
LABEL_26:
  sub_1C979B054(v43, v48);
LABEL_27:
  sub_1C98719B0();

  sub_1C97DA8DC();
LABEL_28:
  sub_1C98719BC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C985EF38()
{
  sub_1C97AA884();
  v2 = *v1;
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v2 + 2240) = v0;

  if (v0)
  {
    v6 = sub_1C985F228;
  }

  else
  {
    sub_1C9866824(v2 + 16);
    v6 = sub_1C985F048;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C985F048()
{
  sub_1C97AA884();
  sub_1C979B054((v0 + 1824), *(v0 + 2184));
  sub_1C98719B0();

  sub_1C97DA8DC();

  return v1();
}

uint64_t sub_1C985F0B4()
{
  sub_1C97AA884();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v6 + 2256) = v0;

  if (v0)
  {
    v7 = sub_1C985F2A0;
  }

  else
  {
    v7 = sub_1C985F1BC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C985F1BC()
{
  sub_1C97AA884();
  sub_1C979B054((v0 + 1864), *(v0 + 2184));
  sub_1C98719B0();

  sub_1C97DA8DC();

  return v1();
}

uint64_t sub_1C985F228()
{
  sub_1C97AA884();
  sub_1C9866824(v0 + 16);
  sub_1C97C26F0(v0 + 1824);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C985F2A0()
{
  sub_1C97AA884();
  sub_1C97C26F0(v0 + 1864);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C985F310()
{

  v0 = sub_1C97DB310();

  return v0;
}

uint64_t sub_1C985F378(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v6 = v2[1];
  v5[1] = *v2;
  v5[2] = v6;
  v7 = v2[3];
  v5[3] = v2[2];
  v5[4] = v7;
  v15 = a1;
  v16 = a2;
  sub_1C97E82EC(v2, v14, &qword_1EC3C78E8, &qword_1C9AAEC40);
  v8 = sub_1C9871794();
  v12 = sub_1C97E3200(v8, v9, v10, v11);

  return v12;
}

uint64_t sub_1C985F4A4()
{

  v0 = sub_1C97DB258();

  return v0;
}

uint64_t sub_1C985F50C(uint64_t a1)
{
  v3 = swift_allocObject();
  v4 = v1[1];
  v3[1] = *v1;
  v3[2] = v4;
  v5 = v1[3];
  v3[3] = v1[2];
  v3[4] = v5;
  v10 = a1;
  v8[2] = sub_1C9870268;
  v8[3] = v3;
  v8[4] = &v10;
  sub_1C97E82EC(v1, v9, &qword_1EC3C78E8, &qword_1C9AAEC40);
  v6 = sub_1C97E3228(a1, sub_1C983E04C, v8);

  return v6;
}

id sub_1C985F5F0(__int128 *a1, _OWORD *a2)
{
  v14[3] = &type metadata for RuntimeFeatureFlags.SoundAnalysis;
  v14[4] = sub_1C986EDCC();
  LOBYTE(v14[0]) = 0;
  v4 = sub_1C9A917C8();
  sub_1C97A592C(v14);
  if (v4)
  {
    v5 = a1[1];
    v16 = *a1;
    v17[0] = v5;
    *(v17 + 9) = *(a1 + 25);
    memcpy(__dst, a1 + 3, 0x41uLL);
    type metadata accessor for SNDetectSoundRequest(v6);

    sub_1C97A6BCC(&v16, v14);
    sub_1C97A6264(__dst, v14);
    v7 = sub_1C9860AFC(&v16, __dst, a2);
    sub_1C97E8084(__dst);
    sub_1C97F91D8(&v16);
  }

  else
  {
    memcpy(v14, a1, 0x71uLL);
    v13[3] = &unk_1F492E308;
    v13[4] = &off_1F492E340;
    v9 = swift_allocObject();
    v13[0] = v9;
    v10 = *(a2 + 4);
    v11 = a2[1];
    *(v9 + 16) = *a2;
    *(v9 + 32) = v11;
    *(v9 + 48) = v10;

    sub_1C97F4D20();
    v7 = v12;
    sub_1C97A592C(v13);
  }

  return v7;
}

__int128 *sub_1C985F7B4()
{
  sub_1C987198C();
  v204 = v1;
  v203 = v2;
  v202 = v3;
  v5 = v4;
  v6 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  sub_1C97ABF78(v6, &v211 + 8);
  v187 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AC02C();
  sub_1C97ABFB4(v9);
  v10 = sub_1C97A2CEC(&qword_1EC3C99D8, &unk_1C9AA7D20);
  sub_1C97ABF78(v10, &v212);
  v188 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  sub_1C97ABFB4(v13);
  v14 = sub_1C97A2CEC(&qword_1EC3C99E0, &qword_1C9AA54F8);
  sub_1C97ABF78(v14, v208);
  v181 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AC02C();
  sub_1C97ABFB4(v17);
  v186 = sub_1C97A2CEC(&qword_1EC3C99E8, &qword_1C9AA7D30);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AC02C();
  sub_1C97ABFB4(v19);
  v20 = sub_1C97A2CEC(&qword_1EC3C99F0, &qword_1C9AA7D38);
  sub_1C97ABF78(v20, v213);
  v191 = v21;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C97AC02C();
  sub_1C97ABFB4(v23);
  v24 = sub_1C97A2CEC(&qword_1EC3C99F8, &qword_1C9AA7D40);
  sub_1C97ABF78(v24, v213 + 8);
  v198 = v25;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C97AC02C();
  sub_1C97ABFB4(v27);
  v199 = sub_1C97A2CEC(&unk_1EC3C9A00, &qword_1C9AA7D48);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  sub_1C97ABFB4(v29);
  v30 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  sub_1C97ABF78(v30, &v214 + 8);
  v201 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C9871A4C();
  v33 = sub_1C9A91C28();
  sub_1C97AE9C8();
  v200 = v34;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C97AEAD8();
  v38 = (v37 - v36);
  v39 = sub_1C97A2CEC(&unk_1EC3CD670, &qword_1C9AA7D50);
  sub_1C97AE9C8();
  v195 = v40;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v161 - v42;
  v44 = sub_1C97A2CEC(&unk_1EC3C9A10, &qword_1C9AA7D58);
  sub_1C97AE9C8();
  v46 = v45;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v161 - v48;
  v50 = v5[1];
  v206 = *v5;
  *v207 = v50;
  *&v207[9] = *(v5 + 25);
  v51 = v204;
  v52 = v205;
  sub_1C97F5B0C(&v206, v209);
  if (v52)
  {
    return v51;
  }

  v174 = v43;
  v175 = v49;
  v176 = v39;
  v177 = v46;
  v178 = v44;
  v204 = v38;
  v179 = v0;
  v180 = v33;
  type metadata accessor for SNSoundDetector();
  v53 = v209[0];
  sub_1C97F7238();
  sub_1C987198C();
  type metadata accessor for SNUtils(v54);
  ObjectType = swift_getObjectType();
  v57 = *(*(&v53 + 1) + 16);
  v58 = v57(ObjectType, *(&v53 + 1));
  v60 = sub_1C9A18E9C(v58, 0, v59);

  if (v60[2])
  {
    v61 = v60[5];
    v170 = v60[4];
    v173 = v61;

    v172 = v53;
    v62 = v57(ObjectType, *(&v53 + 1));
    v64 = sub_1C9A18E9C(v62, 1, v63);

    v65 = v64[2];
    if (v65 == 1)
    {
      v66 = v64[5];
      v168[1] = v64[4];

      v168[0] = 0;
      v171 = 0;
    }

    else
    {

      if (v65 != 2)
      {

        v51 = type metadata accessor for SNError(v95);
        sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001DLL, 0x80000001C9AD54C0);
        goto LABEL_23;
      }

      v66 = 0xEA00000000006563;
      v171 = 0xE800000000000000;
      qmemcpy(v168, "DetectedConfiden", sizeof(v168));
    }

    v67 = *(&v211 + 1);
    if ((~*(&v211 + 1) & 0xF000000000000007) != 0)
    {
      (*(&v211 + 1) & 0x7FFFFFFFFFFFFFFFLL);

      if (v67 < 0)
      {
        sub_1C98718E0();
        sub_1C9869C74(v97, v98);
        sub_1C987198C();
        v192 = v67;
        v169 = v66;
        sub_1C98716A0();
        sub_1C9871AC8();
      }

      else
      {
        v169 = v66;
        sub_1C98718E0();
        sub_1C98698A0(v92, v93, v94);
        sub_1C9871AC8();
        sub_1C987198C();
        v192 = v67;
        sub_1C98716A0();
      }

      *&v206 = v57;
      v128 = v200;
      v129 = v204;
      (*(v200 + 104))(v204, *MEMORY[0x1E695BD20]);
      v130 = v179;
      *v179 = sub_1C97FB0A0;
      v130[1] = 0;
      (*(ObjectType + 104))(v130, *MEMORY[0x1E695BD48], v197);
      v201 = sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
      sub_1C97DA9B0();
      sub_1C9813064(v131, v132, &qword_1C9A9C7A0);
      sub_1C9871888();
      sub_1C9871998();
      sub_1C9A92018();
      v133 = sub_1C9871A74();
      v134(v133);
      (*(v128 + 8))(v129, v180);
      sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
      sub_1C9871800(&qword_1EC3CD6A0, &unk_1EC3CD670, &qword_1C9AA7D50);
      v135 = v175;
      v136 = v176;
      sub_1C9A91F68();
      sub_1C97DAA58();
      v137(v57, v136);
      sub_1C98717DC(&unk_1EC3C9A50, &unk_1EC3C9A10, &qword_1C9AA7D58);
      sub_1C98717C4(v207);
      sub_1C9A91F28();

      sub_1C97F9C90(v192);
      sub_1C97DAA58();
      v126 = v135;
      v127 = v136;
      goto LABEL_27;
    }

    v169 = v66;
    v68 = v57(ObjectType, *(&v53 + 1));
    v69 = [v68 inputDescriptionsByName];

    sub_1C97BD318(v70, 0, &qword_1EC3C54D0, 0x1E695FE50);
    v71 = sub_1C9A92328();

    v51 = sub_1C98782A4(v170, v173, v71);

    if (v51)
    {
      v72 = [v51 multiArrayConstraint];

      if (v72)
      {
        v73 = [v72 shape];

        sub_1C97BD318(v74, 0, &qword_1EC3C54B0, 0x1E696AD98);
        sub_1C97FB318();
        sub_1C9A92798();

        sub_1C9A16824();
        v76 = v75;

        v77 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
        sub_1C9A180B0(v77);
        v79 = v78;

        v80 = *(&v210 + 1);
        if ((*(&v210 + 1) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v81 = v200;
        v82 = v179;
        v83 = v204;
        if (*(&v210 + 1) <= -2147483650.0)
        {
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (*(&v210 + 1) >= 2147483650.0)
        {
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v84 = v79;
        v167 = sub_1C9A93168();
        v166 = v85;
        v195 = DWORD1(v211);
        v86 = sub_1C9A93168();
        v202 = v88;
        if (v80 <= -9.22337204e18)
        {
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v164 = v87;
        v165 = v86;
        if (v80 >= 9.22337204e18)
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v89 = v203[1];
        v212 = *v203;
        v213[0] = v89;
        v90 = v203[3];
        v213[1] = v203[2];
        v214 = v90;
        v51 = &v212;
        v91 = v205;
        sub_1C97DD3BC(1, v80);
        sub_1C987198C();
        if (v91)
        {

          sub_1C9871B28();
          sub_1C97F9780(v209);
          return v51;
        }

        v170 = *(&v53 + 1);
        v173 = v53;
        v163 = DWORD1(v53);
        v162 = HIDWORD(v202);
        v99 = sub_1C98BF080();
        v177 = v99;

        *&v206 = v99;
        v100 = v81;
        v101 = v180;
        (*(v81 + 104))(v83, *MEMORY[0x1E695BD20], v180);
        *v82 = sub_1C97FB0A0;
        v82[1] = 0;
        v102 = v83;
        v103 = v201;
        v104 = v197;
        (*(v201 + 104))(v82, *MEMORY[0x1E695BD48], v197);
        sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
        v178 = v84;
        sub_1C97DA9B0();
        sub_1C9813064(v105, v106, &unk_1C9A9C770);
        v107 = v182;
        sub_1C9A92018();
        (*(v103 + 8))(v82, v104);
        (*(v100 + 8))(v102, v101);

        sub_1C97A2CEC(&unk_1EC3C9A20, &unk_1C9AA7D60);
        sub_1C9871800(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0);
        v108 = v183;
        v109 = v189;
        sub_1C9A91F68();
        sub_1C97DAA58();
        v110(v107, v109);
        v111 = sub_1C97A2CEC(&qword_1EC3C7C80, &qword_1C9AB6790);
        v112 = v190;
        sub_1C9A91C48();
        sub_1C97DAA58();
        v113(v108, v112);
        v114 = v184;
        v115 = sub_1C9871734();
        v116(v115);
        v117 = v186;
        *(v114 + *(v186 + 60)) = v178;
        *(v114 + *(v117 + 64)) = v195;
        *(v114 + *(v117 + 68)) = v111;
        sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
        sub_1C9871998();
        sub_1C9813064(v118, v119, v120);
        v121 = v185;
        sub_1C9A91F68();
        v122 = sub_1C9871734();
        sub_1C97DA1E0(v122, v123, &qword_1C9AA7D30);
        sub_1C98717DC(&qword_1EC3C9A38, &qword_1EC3C99F0, &qword_1C9AA7D38);
        v124 = v192;
        sub_1C9A91F28();
        sub_1C97DAA58();
        v126 = v121;
        v127 = v124;
LABEL_27:
        v125(v126, v127);
        v138 = v169;
        v139 = *(v203 + 1);
        v140 = v199;
        v141 = v198;
        if ((v139 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else
        {
          v142 = v173;
          if (!HIDWORD(v139))
          {
            v143 = *(v203 + 2);
            v144 = swift_allocObject();
            *(v144 + 16) = v143;
            type metadata accessor for RecursiveMLModel(v145);
            sub_1C98137F8();
            swift_allocObject();
            v146 = swift_unknownObjectRetain();
            v51 = sub_1C999B034(v146, v170);
            v147 = v196;
            v148 = v205;
            sub_1C98B3130(v51, &off_1F49465D8);

            v205 = v148;
            if (v148)
            {
              sub_1C97F9780(v209);

              sub_1C9871B28();
            }

            else
            {
              v149 = swift_allocObject();
              *(v149 + 16) = v165;
              v150 = v162;
              *(v149 + 24) = v202;
              *(v149 + 28) = v150;
              v151 = v168[1];
              *(v149 + 32) = v164;
              *(v149 + 40) = v151;
              v152 = v168[0];
              *(v149 + 48) = v138;
              *(v149 + 56) = v152;
              v153 = v167;
              *(v149 + 64) = v171;
              *(v149 + 72) = v153;
              LODWORD(v153) = v163;
              *(v149 + 80) = v142;
              *(v149 + 84) = v153;
              *(v149 + 88) = v166;
              *(v149 + 96) = sub_1C98714C8;
              *(v149 + 104) = v144;
              v154 = v209[0];
              v155 = v209[1];
              v156 = v211;
              *(v149 + 144) = v210;
              *(v149 + 160) = v156;
              *(v149 + 112) = v154;
              *(v149 + 128) = v155;
              v157 = *(v141 + 32);
              v158 = v194;
              v157(v194, v147, v193);
              v159 = (v158 + *(v140 + 52));
              *v159 = sub_1C979B154;
              v159[1] = 0;
              v160 = (v158 + *(v140 + 56));
              *v160 = sub_1C98714A0;
              v160[1] = v149;

              sub_1C97F9724(v209, &v206);
              sub_1C9813064(&unk_1EC3C9A40, &unk_1EC3C9A00, &qword_1C9AA7D48);
              sub_1C97FB318();
              v51 = sub_1C9A91F28();

              sub_1C97F9780(v209);

              sub_1C97DA1E0(v158, &unk_1EC3C9A00, &qword_1C9AA7D48);
            }

            return v51;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }

    sub_1C9871B28();
    sub_1C97A8E8C();
    sub_1C97AA928();
    swift_allocError();
    *v96 = 0;
LABEL_23:
    swift_willThrow();
    sub_1C97F9780(v209);
    return v51;
  }

LABEL_39:

  __break(1u);
  return result;
}

id sub_1C9860AFC(__int128 *a1, void *a2, void *a3)
{
  v172 = a2;
  v173 = a3;
  v160 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v158 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v153 = &v129 - v4;
  v161 = sub_1C97A2CEC(&qword_1EC3C99D8, &unk_1C9AA7D20);
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v154 = &v129 - v5;
  v152 = sub_1C97A2CEC(&qword_1EC3C99E0, &qword_1C9AA54F8);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v129 - v6;
  v157 = sub_1C97A2CEC(&qword_1EC3C99E8, &qword_1C9AA7D30);
  MEMORY[0x1EEE9AC00](v157);
  v155 = &v129 - v7;
  v149 = sub_1C97A2CEC(&qword_1EC3C99F0, &qword_1C9AA7D38);
  v162 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v156 = &v129 - v8;
  v166 = sub_1C97A2CEC(&qword_1EC3C99F8, &qword_1C9AA7D40);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v163 = &v129 - v9;
  v167 = sub_1C97A2CEC(&unk_1EC3C9A00, &qword_1C9AA7D48);
  MEMORY[0x1EEE9AC00](v167);
  v168 = &v129 - v10;
  v11 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v12 = *(v11 - 8);
  v170 = v11;
  v171 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v129 - v13;
  v15 = sub_1C9A91C28();
  v169 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1C97A2CEC(&unk_1EC3CD670, &qword_1C9AA7D50);
  v164 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v129 - v19;
  v21 = sub_1C97A2CEC(&unk_1EC3C9A10, &qword_1C9AA7D58);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v129 - v23;
  v25 = a1[1];
  v176 = *a1;
  *v177 = v25;
  *&v177[9] = *(a1 + 25);
  v26 = v174;
  v27 = v175;
  sub_1C97F5B0C(&v176, v180);
  if (v27)
  {
    return v26;
  }

  v142 = v20;
  v143 = v24;
  v144 = v18;
  v145 = v22;
  v146 = v21;
  v147 = v17;
  v174 = v14;
  v148 = v15;
  type metadata accessor for SNSoundDetector();
  v28 = *(&v180[0] + 1);
  v29 = *&v180[0];
  sub_1C97F7238();
  v175 = 0;
  v31 = type metadata accessor for SNUtils(v30);
  ObjectType = swift_getObjectType();
  v33 = *(v28 + 16);
  v34 = v33(ObjectType, v28);
  v36 = sub_1C9A18E9C(v34, 0, v35);

  if (v36[2])
  {
    v37 = v36[5];
    v139 = v36[4];

    v141 = v33;
    v38 = v33(ObjectType, v28);
    v40 = sub_1C9A18E9C(v38, 1, v39);

    v41 = v40[2];
    if (v41 == 1)
    {
      v42 = v37;
      v137 = v31;
      v43 = v40[5];
      v136[1] = v40[4];
      v140 = v43;

      v136[0] = 0;
      v44 = 0;
    }

    else
    {

      if (v41 != 2)
      {

        v26 = type metadata accessor for SNError(v76);
        sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD00000000000001DLL, 0x80000001C9AD54C0);
LABEL_22:
        swift_willThrow();
LABEL_25:
        sub_1C97F9780(v180);
        return v26;
      }

      v42 = v37;
      v137 = v31;
      v140 = 0xEA00000000006563;
      v44 = 0xE800000000000000;
      qmemcpy(v136, "DetectedConfiden", sizeof(v136));
    }

    v45 = *(&v182 + 1);
    if ((~*(&v182 + 1) & 0xF000000000000007) == 0)
    {
      v138 = v44;
      v164 = v28;
      v46 = (v141)(ObjectType, v28);
      v47 = [v46 inputDescriptionsByName];

      sub_1C97BD318(v48, 0, &qword_1EC3C54D0, 0x1E695FE50);
      v49 = sub_1C9A92328();

      v26 = sub_1C98782A4(v139, v42, v49);

      if (v26)
      {
        v50 = [v26 multiArrayConstraint];

        if (v50)
        {
          v139 = v29;
          v51 = [v50 shape];

          sub_1C97BD318(v52, 0, &qword_1EC3C54B0, 0x1E696AD98);
          sub_1C9A92798();

          sub_1C9A16824();
          v54 = v53;

          v55 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
          sub_1C9A180B0(v55);
          v57 = v56;

          v58 = *(&v181 + 1);
          if ((*(&v181 + 1) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else
          {
            v26 = v173;
            v59 = v170;
            v60 = v169;
            if (*(&v181 + 1) > -2147483650.0)
            {
              v61 = v174;
              if (*(&v181 + 1) < 2147483650.0)
              {
                v146 = v57;
                v62 = sub_1C9A93168();
                v64 = v63;
                v137 = v65;
                v145 = DWORD1(v182);
                v66 = sub_1C9A93168();
                v141 = v68;
                if (v58 > -9.22337204e18)
                {
                  v134 = v67;
                  v135 = v66;
                  v69 = v147;
                  if (v58 < 9.22337204e18)
                  {
                    v70 = v175;
                    sub_1C990D6C8();
                    v175 = v70;
                    if (v70)
                    {

                      sub_1C97F9780(v180);
                      return v26;
                    }

                    v133 = v62;
                    v132 = v64;
                    v131 = HIDWORD(v64);
                    v130 = HIDWORD(v141);
                    v80 = sub_1C98BF080();
                    v144 = v80;

                    *&v176 = v80;
                    (*(v60 + 104))(v69, *MEMORY[0x1E695BD20], v148);
                    *v61 = sub_1C97FB0A0;
                    v61[1] = 0;
                    v81 = v171;
                    (*(v171 + 104))(v61, *MEMORY[0x1E695BD48], v59);
                    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
                    sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770);
                    v82 = v59;
                    v83 = v153;
                    sub_1C9A92018();
                    (*(v81 + 8))(v61, v82);
                    (*(v60 + 8))(v69, v148);

                    sub_1C97A2CEC(&unk_1EC3C9A20, &unk_1C9AA7D60);
                    sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0);
                    v84 = v154;
                    v85 = v160;
                    sub_1C9A91F68();
                    (*(v158 + 8))(v83, v85);
                    v86 = sub_1C97A2CEC(&qword_1EC3C7C80, &qword_1C9AB6790);
                    v87 = v150;
                    v88 = v161;
                    sub_1C9A91C48();
                    (*(v159 + 8))(v84, v88);
                    v89 = v155;
                    (*(v151 + 32))(v155, v87, v152);
                    v90 = v157;
                    *(v89 + *(v157 + 60)) = v146;
                    *(v89 + *(v90 + 64)) = v145;
                    *(v89 + *(v90 + 68)) = v86;
                    sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
                    sub_1C9813064(&qword_1EC3C9A30, &qword_1EC3C99E8, &qword_1C9AA7D30);
                    v91 = v156;
                    sub_1C9A91F68();
                    sub_1C97DA1E0(v89, &qword_1EC3C99E8, &qword_1C9AA7D30);
                    sub_1C9813064(&qword_1EC3C9A38, &qword_1EC3C99F0, &qword_1C9AA7D38);
                    v92 = v149;
                    sub_1C9A91F28();
                    (*(v162 + 8))(v91, v92);
                    v28 = v164;
LABEL_30:
                    v26 = v173;
                    v107 = v175;
                    sub_1C990D4F4(v172, v93, v94, v95, v96, v97, v98, v99);
                    v109 = v168;
                    v110 = v167;
                    v111 = v166;
                    v112 = v165;
                    if (v107)
                    {

                      sub_1C97F9780(v180);
                    }

                    else
                    {
                      v113 = v108;
                      v114 = swift_allocObject();
                      *(v114 + 16) = v113;
                      type metadata accessor for RecursiveMLModel(v115);
                      swift_allocObject();
                      v116 = swift_unknownObjectRetain();
                      v117 = sub_1C999B034(v116, v28);
                      v118 = v163;
                      sub_1C98B3130(v117, &off_1F49465D8);

                      v175 = 0;
                      v119 = swift_allocObject();
                      *(v119 + 16) = v135;
                      v120 = v130;
                      *(v119 + 24) = v141;
                      *(v119 + 28) = v120;
                      v121 = v136[1];
                      *(v119 + 32) = v134;
                      *(v119 + 40) = v121;
                      v122 = v136[0];
                      *(v119 + 48) = v140;
                      *(v119 + 56) = v122;
                      v123 = v133;
                      *(v119 + 64) = v138;
                      *(v119 + 72) = v123;
                      LODWORD(v123) = v131;
                      *(v119 + 80) = v132;
                      *(v119 + 84) = v123;
                      *(v119 + 88) = v137;
                      *(v119 + 96) = sub_1C986EE20;
                      *(v119 + 104) = v114;
                      v124 = v180[0];
                      v125 = v180[1];
                      v126 = v182;
                      *(v119 + 144) = v181;
                      *(v119 + 160) = v126;
                      *(v119 + 112) = v124;
                      *(v119 + 128) = v125;
                      (*(v112 + 32))(v109, v118, v111);
                      v127 = (v109 + *(v110 + 52));
                      *v127 = sub_1C979B154;
                      v127[1] = 0;
                      v128 = (v109 + *(v110 + 56));
                      *v128 = sub_1C986EE3C;
                      v128[1] = v119;
                      sub_1C9813064(&unk_1EC3C9A40, &unk_1EC3C9A00, &qword_1C9AA7D48);
                      v26 = sub_1C9A91F28();

                      sub_1C97DA1E0(v109, &unk_1EC3C9A00, &qword_1C9AA7D48);
                    }

                    return v26;
                  }

                  goto LABEL_37;
                }

LABEL_36:
                __break(1u);
LABEL_37:
                __break(1u);
                goto LABEL_38;
              }

LABEL_35:
              __break(1u);
              goto LABEL_36;
            }
          }

          __break(1u);
          goto LABEL_35;
        }
      }

      sub_1C97A8E8C();
      swift_allocError();
      *v77 = 0;
      goto LABEL_22;
    }

    v26 = (*(&v182 + 1) & 0x7FFFFFFFFFFFFFFFLL);

    if (v45 < 0)
    {
      v78 = v175;
      sub_1C9869E24(v26, v172, &v176);
      v74 = v174;
      if (!v78)
      {
        v162 = v45;
        v175 = 0;
        v138 = v44;
        v139 = v29;
        v133 = *(&v176 + 1);
        v75 = v176;
        v132 = *v177;
        v131 = *&v177[4];
        v137 = *&v177[8];
        v135 = *&v177[16];
        v141 = *&v177[24];
        v130 = v178;
        v134 = v179;
        v72 = v171;
        v73 = v148;
        goto LABEL_29;
      }
    }

    else
    {
      v71 = v175;
      sub_1C9869A5C(&v176, v172, v45);
      v72 = v171;
      v73 = v148;
      v74 = v174;
      if (!v71)
      {
        v162 = v45;
        v175 = 0;
        v138 = v44;
        v139 = v29;
        v133 = *(&v176 + 1);
        v75 = v176;
        v132 = *v177;
        v131 = *&v177[4];
        v137 = *&v177[8];
        v135 = *&v177[16];
        v141 = *&v177[24];
        v130 = v178;
        v134 = v179;
LABEL_29:
        v174 = v75;
        *&v176 = v75;
        v100 = v169;
        v101 = v147;
        (*(v169 + 104))(v147, *MEMORY[0x1E695BD20], v73);
        *v74 = sub_1C97FB0A0;
        v74[1] = 0;
        v102 = v170;
        (*(v72 + 104))(v74, *MEMORY[0x1E695BD48], v170);
        v171 = sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
        sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
        v103 = v142;
        sub_1C9A92018();
        (*(v72 + 8))(v74, v102);
        (*(v100 + 8))(v101, v148);
        sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
        sub_1C9813064(&qword_1EC3CD6A0, &unk_1EC3CD670, &qword_1C9AA7D50);
        v104 = v143;
        v105 = v144;
        sub_1C9A91F68();
        (*(v164 + 8))(v103, v105);
        sub_1C9813064(&unk_1EC3C9A50, &unk_1EC3C9A10, &qword_1C9AA7D58);
        v106 = v146;
        sub_1C9A91F28();

        sub_1C97F9C90(v162);
        (*(v145 + 8))(v104, v106);
        goto LABEL_30;
      }
    }

    sub_1C97F9C90(v45);
    goto LABEL_25;
  }

LABEL_38:

  __break(1u);
  return result;
}

uint64_t sub_1C98620F8(uint64_t a1, uint64_t a2)
{
  v3[110] = v2;
  v3[109] = a2;
  v3[108] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C9862120, 0, 0);
}

uint64_t sub_1C9862428(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C9862448, 0, 0);
}

uint64_t sub_1C9862448()
{
  if (sub_1C98F44F4())
  {
    if (qword_1EC3C5BA8 != -1)
    {
      sub_1C9871844(&qword_1EC3C5BA8);
    }

    v1 = [qword_1EC3C5BB0 dictionaryRepresentation];
    sub_1C9A92328();

    sub_1C987190C();
    if (v1)
    {
    }

    else
    {
      v4 = v2;

      if ((v4 & 1) == 0)
      {
LABEL_11:
        if (sub_1C98F47E0())
        {
          v0[5] = &unk_1F492E308;
          v0[6] = &off_1F492E480;
          v0[7] = &off_1F492E500;
          sub_1C98137F8();
          v6 = swift_allocObject();
          v0[2] = v6;
          sub_1C9871934(v6);

          sub_1C98F6980();
          sub_1C97A592C(v0 + 2);
        }

        else
        {
          sub_1C9868088(v0[9], v0[8]);
        }

        sub_1C97DA8DC();
        goto LABEL_15;
      }
    }

    v5 = MGGetProductType();
    if (qword_1EC3C5D98 != -1)
    {
      sub_1C9871824(&qword_1EC3C5D98);
    }

    if (sub_1C98F4044(v5, qword_1EC3D31E8))
    {
      goto LABEL_11;
    }

    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  sub_1C986F098();
  sub_1C97AA928();
  swift_allocError();
  *v7 = v3;
  swift_willThrow();
  sub_1C97DA91C();
LABEL_15:

  return v8();
}

uint64_t sub_1C986266C(uint64_t a1, char *a2)
{
  v98 = a1;
  v99 = a2;
  v6 = type metadata accessor for AOPClassificationDemo.Request(0);
  v7 = sub_1C97DACE4(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v92 = v9 - v8;
  LOBYTE(v10) = type metadata accessor for RemoteRequest(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97ABF90();
  v97 = v12;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C98435C8();
  v95 = v14;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C98435C8();
  v93 = v16;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C98435C8();
  v96 = v18;
  sub_1C98435B0();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C98435C8();
  v94 = v20;
  sub_1C98435B0();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v92 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v92 - v26;
  MEMORY[0x1EEE9AC00](v25);
  sub_1C9871A38();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C9871A60();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v92 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v92 - v33;
  v35 = sub_1C97A2CEC(&qword_1EC3C9B58, &qword_1C9AA7E08);
  sub_1C97DACE4(v35);
  sub_1C97ABFF0();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v92 - v38;
  v40 = &v92 + *(v37 + 56) - v38;
  sub_1C981CE50(v98, &v92 - v38);
  v41 = v99;
  v99 = v40;
  sub_1C981CE50(v41, v40);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v64 = sub_1C9871794();
      sub_1C981CE50(v64, v65);
      memcpy(v106, v32, 0x49uLL);
      if (sub_1C987175C() != 1)
      {
        sub_1C986EB48(v106);
        goto LABEL_40;
      }

      v66 = sub_1C9871A18();
      memcpy(v66, v67, 0x49uLL);
      if (v106[0] == v105[0])
      {
        memcpy(v101, v32 + 8, 0x41uLL);
        memcpy(v100, v24 + 8, 0x41uLL);
        v68 = static AudioConfiguration.== infix(_:_:)(v101, v100);
        memcpy(v102, v100, 0x41uLL);
        sub_1C9801940(v106, v104);
        sub_1C9801940(v105, v104);
        sub_1C97E8084(v102);
        memcpy(v103, v101, 0x41uLL);
        sub_1C97E8084(v103);
        sub_1C986EB48(v105);
        sub_1C986EB48(v106);
        if (v68)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1C986EB48(v105);
        sub_1C986EB48(v106);
      }

      sub_1C9871638();
      goto LABEL_41;
    case 2u:
      v50 = sub_1C9871A74();
      sub_1C981CE50(v50, v51);
      memcpy(v106, v3, 0x41uLL);
      if (sub_1C987175C() == 2)
      {
        v52 = sub_1C98718B8();
        memcpy(v52, v53, 0x41uLL);
        memcpy(v102, v3, 0x41uLL);
        sub_1C98719DC(v101);
        static AudioConfiguration.== infix(_:_:)(v102, v101);
        v54 = sub_1C98718FC();
        memcpy(v54, v55, 0x41uLL);
        sub_1C986F240(v106, v105);
        sub_1C986F240(v103, v105);
        sub_1C97E8084(v104);
        memcpy(v105, v102, 0x41uLL);
        sub_1C97E8084(v105);
        sub_1C986EAF4(v103);
        sub_1C986EAF4(v106);
        goto LABEL_43;
      }

      sub_1C986EAF4(v106);
      goto LABEL_40;
    case 3u:
      sub_1C981CE50(v39, v2);
      memcpy(v106, v2, 0x41uLL);
      if (sub_1C987175C() == 3)
      {
        v56 = sub_1C98718B8();
        memcpy(v56, v57, 0x41uLL);
        memcpy(v102, v2, 0x41uLL);
        sub_1C98719DC(v101);
        static AudioConfiguration.== infix(_:_:)(v102, v101);
        v58 = sub_1C98718FC();
        memcpy(v58, v59, 0x41uLL);
        sub_1C986EA44(v106, v105);
        sub_1C986EA44(v103, v105);
        sub_1C97E8084(v104);
        memcpy(v105, v102, 0x41uLL);
        sub_1C97E8084(v105);
        sub_1C986EAA0(v103);
        sub_1C986EAA0(v106);
        goto LABEL_43;
      }

      sub_1C986EAA0(v106);
      goto LABEL_40;
    case 4u:
      sub_1C981CE50(v39, v27);
      memcpy(v106, v27, 0x79uLL);
      if (sub_1C987175C() == 4)
      {
        v42 = sub_1C9871A18();
        memcpy(v42, v43, 0x79uLL);
        memcpy(v104, v27, 0x79uLL);
        v44 = sub_1C98718B8();
        memcpy(v44, v45, 0x79uLL);
        v46 = sub_1C9871A0C();
        sub_1C9992C14(v46, v47);
        v48 = sub_1C9871A00();
        sub_1C986E9F0(v48);
        sub_1C986E9F0(v106);
        goto LABEL_43;
      }

      sub_1C986E9F0(v106);
      goto LABEL_40;
    case 5u:
      sub_1C981CE50(v39, v24);
      memcpy(v106, v24, 0x71uLL);
      v10 = v99;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        memcpy(v105, v10, 0x71uLL);
        memcpy(v104, v24, 0x71uLL);
        memcpy(v103, v10, 0x71uLL);
        v69 = sub_1C9871A0C();
        sub_1C97F3908(v69, v70);
        v71 = sub_1C9871A00();
        sub_1C97F9A64(v71);
        sub_1C97F9A64(v106);
        goto LABEL_43;
      }

      sub_1C97F9A64(v106);
      goto LABEL_40;
    case 6u:
      v10 = v94;
      sub_1C981CE50(v39, v94);
      memcpy(v106, v10, 0x51uLL);
      if (sub_1C987175C() == 6)
      {
        v72 = sub_1C9871A18();
        memcpy(v72, v73, 0x51uLL);
        memcpy(v104, v10, 0x51uLL);
        v74 = sub_1C98718B8();
        memcpy(v74, v75, 0x51uLL);
        sub_1C9871A0C();
        sub_1C98AA76C();
        v76 = sub_1C9871A00();
        sub_1C986E99C(v76);
        sub_1C986E99C(v106);
        goto LABEL_43;
      }

      sub_1C986E99C(v106);
      goto LABEL_40;
    case 7u:
      v10 = v96;
      sub_1C981CE50(v39, v96);
      memcpy(v106, v10, 0xD1uLL);
      if (sub_1C987175C() == 7)
      {
        v60 = sub_1C98718B8();
        memcpy(v60, v61, 0xD1uLL);
        memcpy(v102, v10, 0xD1uLL);
        memcpy(v101, v24, 0xD1uLL);
        sub_1C986EFE8(v106, v105);
        sub_1C986EFE8(v103, v105);
        sub_1C995CA78();
        v62 = sub_1C98718FC();
        memcpy(v62, v63, 0xD1uLL);
        sub_1C986F194(v104);
        memcpy(v105, v102, 0xD1uLL);
        sub_1C986F194(v105);
        sub_1C9866824(v103);
        sub_1C9866824(v106);
        goto LABEL_43;
      }

      sub_1C9866824(v106);
      goto LABEL_40;
    case 8u:
      sub_1C981CE50(v39, v93);
      if (sub_1C9871AE8() != 8)
      {
        goto LABEL_31;
      }

      v80 = sub_1C9871974();
      v49 = sub_1C9809168(v80, v81);
      goto LABEL_30;
    case 9u:
      sub_1C981CE50(v39, v95);
      if (sub_1C9871AE8() != 9)
      {
LABEL_31:

        goto LABEL_40;
      }

      sub_1C9871974();
      v49 = sub_1C9808F7C();
LABEL_30:
      v82 = v49;

      LOBYTE(v10) = v82 & (v4 == v5);
      goto LABEL_43;
    case 0xAu:
      v77 = v97;
      sub_1C981CE50(v39, v97);
      if (sub_1C987175C() == 10)
      {
        sub_1C9871600();
        v78 = v92;
        sub_1C986FB68(v24, v92, v79);
        LOBYTE(v10) = static AOPClassificationDemo.Request.== infix(_:_:)(v77, v78);
        sub_1C986F1E8(v78, type metadata accessor for AOPClassificationDemo.Request);
        sub_1C986F1E8(v77, type metadata accessor for AOPClassificationDemo.Request);
        goto LABEL_43;
      }

      sub_1C987154C();
      sub_1C986F1E8(v77, v83);
      goto LABEL_40;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_40;
      }

      goto LABEL_9;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_40;
      }

LABEL_9:
      sub_1C9871638();
      LOBYTE(v10) = 1;
      return v10 & 1;
    default:
      sub_1C981CE50(v39, v34);
      memcpy(v106, v34, 0xB9uLL);
      if (sub_1C987175C())
      {
        sub_1C986EB9C(v106);
LABEL_40:
        sub_1C97DA1E0(v39, &qword_1EC3C9B58, &qword_1C9AA7E08);
LABEL_41:
        LOBYTE(v10) = 0;
      }

      else
      {
        v84 = sub_1C9871A18();
        memcpy(v84, v85, 0xB9uLL);
        memcpy(v104, v34, 0xB9uLL);
        v86 = sub_1C98718B8();
        memcpy(v86, v87, 0xB9uLL);
        v88 = sub_1C9871A0C();
        sub_1C992E530(v88, v89);
        v90 = sub_1C9871A00();
        sub_1C986EB9C(v90);
        sub_1C986EB9C(v106);
LABEL_43:
        sub_1C9871638();
      }

      return v10 & 1;
  }
}

uint64_t sub_1C9862F64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C706D617865 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001C9AD7160 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7455686365657073 && a2 == 0xEF65636E61726574;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D45686365657073 && a2 == 0xED00006E6F69746FLL;
        if (v8 || (sub_1C9A93B18() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x76654C6F69647561 && a2 == 0xEA00000000006C65;
          if (v9 || (sub_1C9A93B18() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6D617A616873 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C9A93B18() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x746544646E756F73 && a2 == 0xEE006E6F69746365;
              if (v11 || (sub_1C9A93B18() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001C9AD7180 == a2;
                if (v12 || (sub_1C9A93B18() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001DLL && 0x80000001C9AD71A0 == a2;
                  if (v13 || (sub_1C9A93B18() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000019 && 0x80000001C9AD71C0 == a2;
                    if (v14 || (sub_1C9A93B18() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7865745F50414C43 && a2 == 0xE900000000000074;
                      if (v15 || (sub_1C9A93B18() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6475615F50414C43 && a2 == 0xEA00000000006F69;
                        if (v16 || (sub_1C9A93B18() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0xD000000000000015 && 0x80000001C9AD71E0 == a2)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C9A93B18();

                          if (v18)
                          {
                            return 12;
                          }

                          else
                          {
                            return 13;
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

unint64_t sub_1C9863370(char a1)
{
  result = 0x656C706D617865;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x7455686365657073;
      break;
    case 3:
      result = 0x6D45686365657073;
      break;
    case 4:
      result = 0x76654C6F69647561;
      break;
    case 5:
      result = 0x6D617A616873;
      break;
    case 6:
      result = 0x746544646E756F73;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0x7865745F50414C43;
      break;
    case 11:
      result = 0x6475615F50414C43;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9863520(void *a1)
{
  v226 = sub_1C97A2CEC(&qword_1EC3C9B60, &qword_1C9AA7E10);
  sub_1C97AE9C8();
  v198 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AC02C();
  v225 = v4;
  v223 = type metadata accessor for AOPClassificationDemo.Request(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v224 = v7 - v6;
  v222 = sub_1C97A2CEC(&qword_1EC3C9B68, &qword_1C9AA7E18);
  sub_1C97AE9C8();
  v197 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C97AC02C();
  v221 = v10;
  v220 = sub_1C97A2CEC(&qword_1EC3C9B70, &qword_1C9AA7E20);
  sub_1C97AE9C8();
  v196 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  v219 = v13;
  v218 = sub_1C97A2CEC(&qword_1EC3C9B78, &qword_1C9AA7E28);
  sub_1C97AE9C8();
  v195[8] = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C97AC02C();
  v216 = v16;
  v217 = sub_1C97A2CEC(&qword_1EC3C9B80, &qword_1C9AA7E30);
  sub_1C97AE9C8();
  v195[7] = v17;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C97AC02C();
  v215 = v19;
  v214 = sub_1C97A2CEC(&qword_1EC3C9B88, &qword_1C9AA7E38);
  sub_1C97AE9C8();
  v195[6] = v20;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C97AC02C();
  v213 = v22;
  v212 = sub_1C97A2CEC(&qword_1EC3C9B90, &qword_1C9AA7E40);
  sub_1C97AE9C8();
  v195[5] = v23;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97AC02C();
  v211 = v25;
  v210 = sub_1C97A2CEC(&qword_1EC3C9B98, &qword_1C9AA7E48);
  sub_1C97AE9C8();
  v195[4] = v26;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C97AC02C();
  v209 = v28;
  v208 = sub_1C97A2CEC(&qword_1EC3C9BA0, &qword_1C9AA7E50);
  sub_1C97AE9C8();
  v195[3] = v29;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C97AC02C();
  v207 = v31;
  v206 = sub_1C97A2CEC(&qword_1EC3C9BA8, &qword_1C9AA7E58);
  sub_1C97AE9C8();
  v195[2] = v32;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v33);
  sub_1C97AC02C();
  v205 = v34;
  sub_1C97A2CEC(&qword_1EC3C9BB0, &qword_1C9AA7E60);
  sub_1C97AE9C8();
  v203 = v36;
  v204 = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C97AC02C();
  v202 = v38;
  sub_1C97A2CEC(&qword_1EC3C9BB8, &qword_1C9AA7E68);
  sub_1C97AE9C8();
  v200 = v40;
  v201 = v39;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C97AC02C();
  v199 = v42;
  sub_1C97A2CEC(&qword_1EC3C9BC0, &qword_1C9AA7E70);
  sub_1C97AE9C8();
  v195[1] = v43;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v195 - v45;
  type metadata accessor for RemoteRequest(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C97AEAD8();
  v50 = (v49 - v48);
  v230 = sub_1C97A2CEC(&qword_1EC3C9BC8, &qword_1C9AA7E78);
  sub_1C97AE9C8();
  v227 = v51;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v52);
  v54 = v195 - v53;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C986F29C();
  v229 = v54;
  sub_1C9A93DD8();
  sub_1C981CE50(v228, v50);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v141 = sub_1C98718A0();
      memcpy(v141, v142, 0x49uLL);
      v231[0] = 2;
      v143 = sub_1C986F92C();
      sub_1C98715B4(&type metadata for RemoteRequest.SpeechUtteranceCodingKeys, v231, v144, v145, v143);
      v146 = sub_1C9871894();
      memcpy(v146, v147, 0x49uLL);
      v148 = sub_1C986F980();
      sub_1C9871778(v231, v149, v150, &unk_1F4930AE8, v148);
      v151 = sub_1C98715A4();
      v152(v151);
      v153 = sub_1C9871590();
      v154(v153);
      return sub_1C986EB48(&v232);
    case 2u:
      v99 = sub_1C98718A0();
      memcpy(v99, v100, 0x41uLL);
      v231[0] = 3;
      v101 = sub_1C986F884();
      sub_1C98715B4(&type metadata for RemoteRequest.SpeechEmotionCodingKeys, v231, v102, v103, v101);
      v104 = sub_1C9871894();
      memcpy(v104, v105, 0x41uLL);
      v106 = sub_1C986F8D8();
      sub_1C9871778(v231, v107, v108, &unk_1F4950730, v106);
      v109 = sub_1C98715A4();
      v110(v109);
      v111 = sub_1C9871590();
      v112(v111);
      return sub_1C986EAF4(&v232);
    case 3u:
      v113 = sub_1C98718A0();
      memcpy(v113, v114, 0x41uLL);
      v231[0] = 4;
      v115 = sub_1C986F7DC();
      sub_1C98715B4(&type metadata for RemoteRequest.AudioLevelCodingKeys, v231, v116, v117, v115);
      v118 = sub_1C9871894();
      memcpy(v118, v119, 0x41uLL);
      v120 = sub_1C986F830();
      sub_1C9871778(v231, v121, v122, &unk_1F494DF10, v120);
      v123 = sub_1C98715A4();
      v124(v123);
      v125 = sub_1C9871590();
      v126(v125);
      return sub_1C986EAA0(&v232);
    case 4u:
      v73 = sub_1C98718A0();
      memcpy(v73, v74, 0x79uLL);
      v231[0] = 5;
      v75 = sub_1C986F734();
      sub_1C98715B4(&type metadata for RemoteRequest.ShazamCodingKeys, v231, v76, v77, v75);
      v78 = sub_1C9871894();
      memcpy(v78, v79, 0x79uLL);
      v80 = sub_1C986F788();
      sub_1C9871778(v231, v81, v82, &unk_1F4945DF8, v80);
      v83 = sub_1C98715A4();
      v84(v83);
      v85 = sub_1C9871590();
      v86(v85);
      return sub_1C986E9F0(&v232);
    case 5u:
      v155 = sub_1C98718A0();
      memcpy(v155, v156, 0x71uLL);
      v231[0] = 6;
      v157 = sub_1C986F68C();
      sub_1C98715B4(&type metadata for RemoteRequest.SoundDetectionCodingKeys, v231, v158, v159, v157);
      v160 = sub_1C9871894();
      memcpy(v160, v161, 0x71uLL);
      v162 = sub_1C986F6E0();
      sub_1C9871778(v231, v163, v164, &type metadata for SoundDetection.Request, v162);
      v165 = sub_1C98715A4();
      v166(v165);
      v167 = sub_1C9871590();
      v168(v167);
      return sub_1C97F9A64(&v232);
    case 6u:
      v169 = sub_1C98718A0();
      memcpy(v169, v170, 0x51uLL);
      v231[0] = 7;
      v171 = sub_1C986F5E4();
      sub_1C98715B4(&type metadata for RemoteRequest.DirectionOfArrivalCodingKeys, v231, v172, v173, v171);
      v174 = sub_1C9871894();
      memcpy(v174, v175, 0x51uLL);
      v176 = sub_1C986F638();
      sub_1C9871778(v231, v177, v178, &unk_1F4938E18, v176);
      v179 = sub_1C98715A4();
      v180(v179);
      v181 = sub_1C9871590();
      v182(v181);
      return sub_1C986E99C(&v232);
    case 7u:
      v127 = sub_1C98718A0();
      memcpy(v127, v128, 0xD1uLL);
      v231[0] = 8;
      v129 = sub_1C986F53C();
      sub_1C98715B4(&type metadata for RemoteRequest.AccessibilitySoundRecognitionCodingKeys, v231, v130, v131, v129);
      v132 = sub_1C9871894();
      memcpy(v132, v133, 0xD1uLL);
      v134 = sub_1C986F590();
      sub_1C9871778(v231, v135, v136, &type metadata for AccessibilitySoundRecognition.Request, v134);
      v137 = sub_1C98715A4();
      v138(v137);
      v139 = sub_1C9871590();
      v140(v139);
      return sub_1C9866824(&v232);
    case 8u:
      v192 = *v50;
      v193 = v50[1];
      LOBYTE(v232) = 10;
      sub_1C986F3EC();
      v94 = v219;
      v96 = v229;
      v95 = v230;
      sub_1C9871628();
      sub_1C9A93988();
      v232 = v192;
      v233 = v193;
      sub_1C986F440();
      v97 = v220;
      sub_1C9A93A18();
      v98 = v196;
      goto LABEL_17;
    case 9u:
      v92 = *v50;
      v93 = v50[1];
      LOBYTE(v232) = 11;
      sub_1C986F344();
      v94 = v221;
      v96 = v229;
      v95 = v230;
      sub_1C9871628();
      sub_1C9A93988();
      v232 = v92;
      v233 = v93;
      sub_1C986F398();
      v97 = v222;
      sub_1C9A93A18();
      v98 = v197;
LABEL_17:
      (*(v98 + 8))(v94, v97);
      sub_1C98717B8();
      v194(v96, v95);

    case 0xAu:
      v183 = v224;
      sub_1C986FB68(v50, v224, type metadata accessor for AOPClassificationDemo.Request);
      LOBYTE(v232) = 12;
      v184 = sub_1C986F2F0();
      sub_1C98715B4(&type metadata for RemoteRequest.AopClassificationDemoCodingKeys, &v232, v185, v186, v184);
      sub_1C98717A0();
      sub_1C986FB24(v187, v188);
      sub_1C9A93A18();
      v189 = sub_1C98715A4();
      v190(v189);
      sub_1C987154C();
      sub_1C986F1E8(v183, v191);
      goto LABEL_14;
    case 0xBu:
      LOBYTE(v232) = 0;
      sub_1C986FA7C();
      v68 = v229;
      v54 = v230;
      sub_1C9A93988();
      sub_1C986FAD0();
      sub_1C9A93A18();
      v69 = sub_1C9871A74();
      v70(v69);
      sub_1C98717B8();
      v72 = v68;
      goto LABEL_15;
    case 0xCu:
      LOBYTE(v232) = 9;
      v87 = sub_1C986F494();
      sub_1C98715B4(&type metadata for RemoteRequest.AccessibilitySoundActionsCodingKeys, &v232, v88, v89, v87);
      sub_1C986F4E8();
      sub_1C9A93A18();
      v90 = sub_1C98715A4();
      v91(v90);
LABEL_14:
      sub_1C98717B8();
      v72 = v46;
LABEL_15:
      result = v71(v72, v54);
      break;
    default:
      v55 = sub_1C98718A0();
      memcpy(v55, v56, 0xB9uLL);
      v231[0] = 1;
      sub_1C986F9D4();
      v57 = v229;
      v58 = v230;
      sub_1C9A93988();
      v59 = sub_1C9871894();
      memcpy(v59, v60, 0xB9uLL);
      v61 = sub_1C986FA28();
      sub_1C9871778(v231, v62, v63, &type metadata for SoundClassification.Request, v61);
      v64 = sub_1C98715A4();
      v65(v64);
      sub_1C98717B8();
      v66(v57, v58);
      result = sub_1C986EB9C(&v232);
      break;
  }

  return result;
}

uint64_t sub_1C98643CC(uint64_t a1)
{
  v3 = sub_1C9A91558();
  sub_1C97AE9C8();
  v63[1] = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v6 = sub_1C97A2CEC(&qword_1EC3C7FE0, &unk_1C9AA1890);
  sub_1C97DACE4(v6);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v63 - v8;
  type metadata accessor for AOPClassificationDemo.Request(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C97AEAD8();
  v13 = v12 - v11;
  type metadata accessor for RemoteRequest(0);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v17 = (v16 - v15);
  sub_1C981CE50(v1, v16 - v15);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = sub_1C98718AC();
      memcpy(v44, v45, 0x49uLL);
      MEMORY[0x1CCA91980](2);
      MEMORY[0x1CCA91980](*v65);
      memcpy(v64, &v65[8], 0x41uLL);
      v46 = sub_1C98717D0();
      AudioConfiguration.hash(into:)(v46);
      return sub_1C986EB48(v65);
    case 2u:
      v33 = sub_1C98718AC();
      memcpy(v33, v34, 0x41uLL);
      MEMORY[0x1CCA91980](3);
      v35 = sub_1C9871ADC();
      memcpy(v35, v36, 0x41uLL);
      v37 = sub_1C98717D0();
      AudioConfiguration.hash(into:)(v37);
      return sub_1C986EAF4(v65);
    case 3u:
      v38 = sub_1C98718AC();
      memcpy(v38, v39, 0x41uLL);
      MEMORY[0x1CCA91980](4);
      v40 = sub_1C9871ADC();
      memcpy(v40, v41, 0x41uLL);
      v42 = sub_1C98717D0();
      AudioConfiguration.hash(into:)(v42);
      return sub_1C986EAA0(v65);
    case 4u:
      v26 = sub_1C98718AC();
      memcpy(v26, v27, 0x79uLL);
      MEMORY[0x1CCA91980](5);
      v28 = sub_1C9871ADC();
      memcpy(v28, v29, 0x79uLL);
      v30 = sub_1C98717D0();
      sub_1C9992EBC(v30);
      return sub_1C986E9F0(v65);
    case 5u:
      v47 = sub_1C98718AC();
      memcpy(v47, v48, 0x71uLL);
      MEMORY[0x1CCA91980](6);
      v64[0] = *v65;
      LOBYTE(v64[1]) = v65[16];
      v49 = sub_1C98717D0();
      sub_1C97F1884(v49);
      sub_1C9871998();
      sub_1C9A92528();
      sub_1C9A92528();

      memcpy(v64, &v65[48], 0x41uLL);
      v50 = sub_1C98717D0();
      AudioConfiguration.hash(into:)(v50);
      return sub_1C97F9A64(v65);
    case 6u:
      v51 = sub_1C98718AC();
      memcpy(v51, v52, 0x51uLL);
      MEMORY[0x1CCA91980](7);
      sub_1C9A92528();
      memcpy(v64, &v65[16], 0x41uLL);
      v53 = sub_1C98717D0();
      AudioConfiguration.hash(into:)(v53);
      return sub_1C986E99C(v65);
    case 7u:
      memcpy(v64, v17, 0xD1uLL);
      MEMORY[0x1CCA91980](8);
      memcpy(v65, v64, sizeof(v65));
      if (sub_1C986EFE0(v65) != 1)
      {
        nullsub_1();
        v57 = *v56;
        MEMORY[0x1CCA91980](0);
        v25 = v57;
        goto LABEL_6;
      }

      nullsub_1();
      memcpy(v66, (v43 + 16), sizeof(v66));
      MEMORY[0x1CCA91980](1);
      sub_1C9871998();
      sub_1C9A92528();
      sub_1C99632D4();
      return sub_1C986F194(v64);
    case 8u:
      v32 = v17[1];
      MEMORY[0x1CCA91980](10);
      sub_1C97C8244();
      goto LABEL_18;
    case 9u:
      v31 = *v17;
      v32 = v17[1];
      MEMORY[0x1CCA91980](11);
      sub_1C97C8128(a1, v31);
LABEL_18:
      v55 = 0.0;
      if (v32 != 0.0)
      {
        v55 = v32;
      }

      MEMORY[0x1CCA919B0](*&v55);

    case 0xAu:
      sub_1C9871600();
      sub_1C986FB68(v17, v13, v54);
      MEMORY[0x1CCA91980](12);
      sub_1C97E82EC(v13, v9, &qword_1EC3C7FE0, &unk_1C9AA1890);
      if (sub_1C97ABF20(v9, 1, v3) == 1)
      {
        sub_1C9A93CE8();
      }

      else
      {
        v58 = sub_1C9871A74();
        v59(v58);
        sub_1C9A93CE8();
        sub_1C986FB24(&qword_1EC3C6BA0, MEMORY[0x1E6968FB0]);
        sub_1C9A92398();
        v60 = sub_1C9871794();
        v61(v60);
      }

      sub_1C9A93CE8();
      sub_1C987154C();
      return sub_1C986F1E8(v13, v62);
    case 0xBu:
      v25 = 0;
      goto LABEL_6;
    case 0xCu:
      v25 = 9;
LABEL_6:
      result = MEMORY[0x1CCA91980](v25);
      break;
    default:
      v18 = sub_1C98718AC();
      memcpy(v18, v19, 0xB9uLL);
      MEMORY[0x1CCA91980](1);
      v20 = sub_1C9871ADC();
      memcpy(v20, v21, 0x78uLL);
      v22 = sub_1C98717D0();
      sub_1C992DEB4(v22);
      memcpy(v64, &v65[120], 0x41uLL);
      v23 = sub_1C98717D0();
      AudioConfiguration.hash(into:)(v23);
      result = sub_1C986EB9C(v65);
      break;
  }

  return result;
}

uint64_t sub_1C9864A00()
{
  sub_1C9A93CC8();
  sub_1C98643CC(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C9864A40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v262 = a2;
  v6 = sub_1C97A2CEC(&qword_1EC3C9CA8, &qword_1C9AA7E80);
  sub_1C97ABF78(v6, v275);
  v255 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AC02C();
  sub_1C97ABFB4(v9);
  v10 = sub_1C97A2CEC(&qword_1EC3C9CB0, &qword_1C9AA7E88);
  sub_1C97ABF78(v10, v274);
  v263 = v11;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C97AC02C();
  sub_1C97ABFB4(v13);
  v14 = sub_1C97A2CEC(&qword_1EC3C9CB8, &qword_1C9AA7E90);
  sub_1C97ABF78(v14, v273);
  v252 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C97AC02C();
  sub_1C97ABFB4(v17);
  v18 = sub_1C97A2CEC(&qword_1EC3C9CC0, &qword_1C9AA7E98);
  sub_1C97ABF78(v18, v272);
  v251 = v19;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C97AC02C();
  sub_1C97ABFB4(v21);
  v22 = sub_1C97A2CEC(&qword_1EC3C9CC8, &qword_1C9AA7EA0);
  sub_1C97ABF78(v22, v271);
  v250 = v23;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C97AC02C();
  sub_1C97ABFB4(v25);
  v26 = sub_1C97A2CEC(&qword_1EC3C9CD0, &qword_1C9AA7EA8);
  sub_1C97ABF78(v26, v270);
  v249 = v27;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C97AC02C();
  sub_1C97ABFB4(v29);
  v30 = sub_1C97A2CEC(&qword_1EC3C9CD8, &qword_1C9AA7EB0);
  sub_1C97ABF78(v30, v269);
  v248 = v31;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AC02C();
  sub_1C97ABFB4(v33);
  v34 = sub_1C97A2CEC(&qword_1EC3C9CE0, &qword_1C9AA7EB8);
  sub_1C97ABF78(v34, &v267);
  v247 = v35;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C97AC02C();
  sub_1C97ABFB4(v37);
  v38 = sub_1C97A2CEC(&qword_1EC3C9CE8, &qword_1C9AA7EC0);
  sub_1C97ABF78(v38, v266);
  v246 = v39;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C97AC02C();
  sub_1C97ABFB4(v41);
  v42 = sub_1C97A2CEC(&qword_1EC3C9CF0, &qword_1C9AA7EC8);
  sub_1C97ABF78(v42, v265);
  v244 = v43;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C97AC02C();
  sub_1C97ABFB4(v45);
  v46 = sub_1C97A2CEC(&qword_1EC3C9CF8, &qword_1C9AA7ED0);
  sub_1C97ABF78(v46, v264);
  v243 = v47;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C97AC02C();
  sub_1C97ABFB4(v49);
  v50 = sub_1C97A2CEC(&qword_1EC3C9D00, &qword_1C9AA7ED8);
  sub_1C97ABF78(v50, &v262);
  v242 = v51;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C97AC02C();
  sub_1C97ABFB4(v53);
  v54 = sub_1C97A2CEC(&qword_1EC3C9D08, &qword_1C9AA7EE0);
  sub_1C97ABF78(v54, v260);
  v241 = v55;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1C97AC02C();
  sub_1C97ABFB4(v57);
  v58 = sub_1C97A2CEC(&unk_1EC3C9D10, &unk_1C9AA7EE8);
  sub_1C97ABF78(v58, &v277);
  v264[1] = v59;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v60);
  v61 = sub_1C9871A4C();
  v264[0] = type metadata accessor for RemoteRequest(v61);
  sub_1C97DA940();
  MEMORY[0x1EEE9AC00](v62);
  sub_1C97ABF90();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v63);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v64);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v65);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v66);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v67);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v68);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C98435C8();
  sub_1C97ABFA4();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C9871A60();
  v73 = MEMORY[0x1EEE9AC00](v72);
  v75 = &v231 - v74;
  v76 = MEMORY[0x1EEE9AC00](v73);
  v78 = &v231 - v77;
  MEMORY[0x1EEE9AC00](v76);
  sub_1C9871A38();
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v231 - v80;
  v82 = a1[3];
  v267 = a1;
  sub_1C97A5A8C(a1, v82);
  sub_1C986F29C();
  v265[0] = v2;
  v83 = v276;
  sub_1C9A93DB8();
  if (v83)
  {
LABEL_8:
    v107 = sub_1C9871AA8();
    return sub_1C97A592C(v107);
  }

  v233 = v3;
  v234 = v78;
  v235 = v75;
  v236 = v4;
  v84 = v265[1];
  v85 = v266[0];
  v276 = v81;
  sub_1C9A93958();
  result = sub_1C98EE524();
  if (v88 == v89 >> 1)
  {
    goto LABEL_7;
  }

  v232 = 0;
  if (v88 >= (v89 >> 1))
  {
    __break(1u);
    return result;
  }

  v90 = *(v87 + v88);
  v91 = sub_1C98EE520();
  v93 = v92;
  v95 = v94;
  swift_unknownObjectRelease();
  v96 = v263;
  if (v93 != v95 >> 1)
  {
LABEL_7:
    v100 = v264[0];
    v101 = sub_1C9A93648();
    sub_1C97AA928();
    swift_allocError();
    v103 = v102;
    sub_1C97A2CEC(&qword_1EC3C6F20, &qword_1C9AA0D80);
    *v103 = v100;
    v104 = v266[1];
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v101 - 8) + 104))(v103, *MEMORY[0x1E69E6AF8], v101);
    swift_willThrow();
    swift_unknownObjectRelease();
    v105 = sub_1C9871674();
    v106(v105, v104);
    goto LABEL_8;
  }

  v97 = v262;
  switch(v90)
  {
    case 1:
      sub_1C9871750(1);
      sub_1C986F9D4();
      sub_1C9871564(&type metadata for RemoteRequest.SoundClassificationCodingKeys, &v268);
      v206 = 0;
      sub_1C986FF10();
      sub_1C9871618();
      sub_1C9A938F8();
      sub_1C987152C();
      swift_unknownObjectRelease();
      (*v84)(v84, v85);
      v207 = sub_1C9871724();
      v208(v207);
      v209 = sub_1C98717C4(&v252);
      memcpy(v209, v210, 0xB9uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 2:
      sub_1C9871750(2);
      sub_1C986F92C();
      sub_1C9871888();
      sub_1C9871618();
      v128 = v232;
      sub_1C9A93858();
      if (v128)
      {
        goto LABEL_16;
      }

      sub_1C986FEBC();
      v206 = v245;
      sub_1C9A938F8();
      v177 = (v243 + 8);
      v232 = 0;
      swift_unknownObjectRelease();
      (*v177)(v96, v206);
      v198 = sub_1C97E8884();
      v199(v198);
      v200 = sub_1C98717C4(&v253);
      memcpy(v200, v201, 0x49uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 3:
      sub_1C9871750(3);
      sub_1C986F884();
      sub_1C9871564(&type metadata for RemoteRequest.SpeechEmotionCodingKeys, &v268);
      v206 = 0;
      sub_1C986FE68();
      sub_1C9871618();
      sub_1C987195C(v131, v132, v133, v134, v135);
      sub_1C987152C();
      swift_unknownObjectRelease();
      v136 = sub_1C9871740();
      v137(v136);
      v138 = sub_1C9871724();
      v139(v138);
      v140 = sub_1C98717C4(&v254);
      memcpy(v140, v141, 0x41uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 4:
      sub_1C9871750(4);
      sub_1C986F7DC();
      sub_1C9871888();
      sub_1C9871564(v109, v110);
      v206 = 0;
      sub_1C986FE14();
      sub_1C9871618();
      sub_1C987195C(v111, v112, v113, v114, v115);
      sub_1C987152C();
      swift_unknownObjectRelease();
      v116 = sub_1C9871740();
      v117(v116);
      v118 = sub_1C9871724();
      v119(v118);
      v120 = sub_1C98717C4(&v255);
      memcpy(v120, v121, 0x41uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 5:
      sub_1C9871750(5);
      sub_1C986F734();
      sub_1C9871564(&type metadata for RemoteRequest.ShazamCodingKeys, &v268);
      v206 = 0;
      sub_1C986FDC0();
      sub_1C9A938F8();
      sub_1C987152C();
      swift_unknownObjectRelease();
      v211 = sub_1C9871794();
      v212(v211);
      v213 = sub_1C9871A94();
      v214(v213);
      v215 = sub_1C98717C4(&v256);
      memcpy(v215, v216, 0x79uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 6:
      sub_1C9871750(6);
      sub_1C986F68C();
      sub_1C9871888();
      sub_1C9871564(v155, v156);
      v206 = 0;
      sub_1C986FD6C();
      sub_1C9871618();
      sub_1C987195C(v157, v158, v159, v160, v161);
      sub_1C987152C();
      swift_unknownObjectRelease();
      v162 = sub_1C9871740();
      v163(v162);
      v164 = sub_1C9871724();
      v165(v164);
      v166 = sub_1C98717C4(&v257);
      memcpy(v166, v167, 0x71uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 7:
      sub_1C9871750(7);
      sub_1C986F5E4();
      sub_1C9871888();
      sub_1C9871564(v142, v143);
      v206 = 0;
      sub_1C986FD18();
      sub_1C9871618();
      sub_1C987195C(v144, v145, v146, v147, v148);
      sub_1C987152C();
      swift_unknownObjectRelease();
      v149 = sub_1C9871740();
      v150(v149);
      v151 = sub_1C9871724();
      v152(v151);
      v153 = sub_1C98717C4(&v258);
      memcpy(v153, v154, 0x51uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 8:
      sub_1C9871750(8);
      sub_1C986F53C();
      sub_1C9871888();
      sub_1C9871564(v175, v176);
      v206 = 0;
      sub_1C986FCC4();
      sub_1C9871618();
      sub_1C987195C(v178, v179, v180, v181, v182);
      sub_1C987152C();
      swift_unknownObjectRelease();
      v223 = sub_1C9871740();
      v224(v223);
      v225 = sub_1C9871724();
      v226(v225);
      v227 = sub_1C98717C4(&v259);
      memcpy(v227, v228, 0xD1uLL);
      sub_1C98715D8();
      goto LABEL_25;
    case 9:
      sub_1C9871750(9);
      sub_1C986F494();
      sub_1C9871888();
      sub_1C9871564(v126, v127);
      sub_1C986FC70();
      sub_1C9871628();
      sub_1C9A938F8();
      sub_1C9871688();
      swift_unknownObjectRelease();
      v194 = sub_1C9871660();
      v195(v194);
      v196 = sub_1C9871734();
      v197(v196);
      v206 = v237;
      sub_1C98715D8();
      goto LABEL_25;
    case 10:
      sub_1C9871750(10);
      sub_1C986F3EC();
      sub_1C9871888();
      sub_1C9871564(v168, v169);
      sub_1C986FC1C();
      sub_1C9871618();
      sub_1C987195C(v170, v171, v172, v173, v174);
      sub_1C9871688();
      swift_unknownObjectRelease();
      v217 = sub_1C9871660();
      v218(v217);
      v219 = sub_1C9871734();
      v220(v219);
      v221 = sub_1C9871AB4();
      v206 = v238;
      *v238 = v222;
      *(v206 + 8) = v221;
      sub_1C98715D8();
      goto LABEL_25;
    case 11:
      sub_1C9871750(11);
      sub_1C986F344();
      v108 = v261;
      sub_1C9871564(&type metadata for RemoteRequest.CLAP_audioCodingKeys, &v268);
      sub_1C986FBC8();
      sub_1C9871618();
      sub_1C9A938F8();
      sub_1C9871688();
      swift_unknownObjectRelease();
      (*(v96 + 8))(v108, v85);
      v183 = sub_1C9871734();
      v184(v183);
      v185 = sub_1C9871AB4();
      v206 = v239;
      *v239 = v186;
      *(v206 + 8) = v185;
      sub_1C98715D8();
      goto LABEL_25;
    case 12:
      sub_1C9871750(12);
      sub_1C986F2F0();
      sub_1C9871618();
      v122 = v232;
      sub_1C9A93858();
      if (v122)
      {
LABEL_16:
        v129 = sub_1C9871674();
        v130(v129, v85);
        swift_unknownObjectRelease();
        v107 = sub_1C9871AA8();
        return sub_1C97A592C(v107);
      }

      type metadata accessor for AOPClassificationDemo.Request(0);
      sub_1C98717A0();
      sub_1C986FB24(v123, v124);
      v125 = v240;
      sub_1C9A938F8();
      sub_1C9871688();
      swift_unknownObjectRelease();
      v187 = sub_1C98715A4();
      v188(v187);
      v189 = sub_1C97E8884();
      v190(v189);
      swift_storeEnumTagMultiPayload();
      sub_1C98715E8();
      v191 = v276;
      sub_1C986FB68(v125, v276, v192);
      v193 = v267;
      v97 = v262;
LABEL_26:
      sub_1C98715E8();
      sub_1C986FB68(v191, v97, v230);
      result = sub_1C97A592C(v193);
      break;
    default:
      LOBYTE(v268) = 0;
      sub_1C986FA7C();
      sub_1C9871888();
      sub_1C9871564(v98, v99);
      sub_1C986FF64();
      sub_1C9871628();
      sub_1C9A938F8();
      v232 = 0;
      swift_unknownObjectRelease();
      v202 = sub_1C9871660();
      v203(v202);
      v204 = sub_1C9871674();
      v205(v204, v91);
      v206 = v233;
      sub_1C98715D8();
LABEL_25:
      swift_storeEnumTagMultiPayload();
      sub_1C98715E8();
      v191 = v276;
      sub_1C986FB68(v206, v276, v229);
      v193 = v267;
      goto LABEL_26;
  }

  return result;
}

uint64_t sub_1C9865FCC(uint64_t a1)
{
  v2 = sub_1C986F494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866008(uint64_t a1)
{
  v2 = sub_1C986F494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9866044(uint64_t a1)
{
  v2 = sub_1C986F53C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866080(uint64_t a1)
{
  v2 = sub_1C986F53C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98660BC(uint64_t a1)
{
  v2 = sub_1C986F2F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98660F8(uint64_t a1)
{
  v2 = sub_1C986F2F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9866134(uint64_t a1)
{
  v2 = sub_1C986F7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866170(uint64_t a1)
{
  v2 = sub_1C986F7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98661AC(uint64_t a1)
{
  v2 = sub_1C986F344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98661E8(uint64_t a1)
{
  v2 = sub_1C986F344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9866224(uint64_t a1)
{
  v2 = sub_1C986F3EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866260(uint64_t a1)
{
  v2 = sub_1C986F3EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98662A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9862F64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C98662CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C9863368();
  *a1 = result;
  return result;
}

uint64_t sub_1C98662F4(uint64_t a1)
{
  v2 = sub_1C986F29C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866330(uint64_t a1)
{
  v2 = sub_1C986F29C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C986636C(uint64_t a1)
{
  v2 = sub_1C986F5E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98663A8(uint64_t a1)
{
  v2 = sub_1C986F5E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98663E4(uint64_t a1)
{
  v2 = sub_1C986FA7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866420(uint64_t a1)
{
  v2 = sub_1C986FA7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C986645C(uint64_t a1)
{
  v2 = sub_1C986F734();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866498(uint64_t a1)
{
  v2 = sub_1C986F734();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98664D4(uint64_t a1)
{
  v2 = sub_1C986F9D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866510(uint64_t a1)
{
  v2 = sub_1C986F9D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C986654C(uint64_t a1)
{
  v2 = sub_1C986F68C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866588(uint64_t a1)
{
  v2 = sub_1C986F68C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98665C4(uint64_t a1)
{
  v2 = sub_1C986F884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866600(uint64_t a1)
{
  v2 = sub_1C986F884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C986663C(uint64_t a1)
{
  v2 = sub_1C986F92C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9866678(uint64_t a1)
{
  v2 = sub_1C986F92C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C98666BC()
{
  sub_1C9A93CC8();
  sub_1C98643CC(v1);
  return sub_1C9A93D18();
}

uint64_t sub_1C986672C(uint64_t a1)
{
  result = sub_1C986FB24(&qword_1EC3CBB40, type metadata accessor for RemoteRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C9866784(uint64_t a1)
{
  result = sub_1C986FB24(&qword_1EC3C98F0, type metadata accessor for RemoteRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C9866878(uint64_t a1, uint64_t a2, int a3, void *__src)
{
  memcpy(__dst, __src, 0x41uLL);
  v11 = a1;
  v12 = a2;
  sub_1C97A6264(__src, &v9);
  v7 = sub_1C97DD36C(__dst);
  sub_1C97DA1E0(__dst, &unk_1EC3C9940, &unk_1C9AA5510);
  return v7;
}

void sub_1C98669D4(const void *a1, uint64_t (*a2)(_BYTE *), void *a3)
{
  v78 = a3;
  v79 = a2;
  v71 = sub_1C97A2CEC(&unk_1EC3CE960, &unk_1C9AA7D70);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v60 - v4;
  v77 = sub_1C97A2CEC(&unk_1EC3C9A60, &unk_1C9ABD950);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = &v60 - v5;
  v75 = sub_1C97A2CEC(&unk_1EC3CE970, &qword_1C9AA7D80);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v72 = &v60 - v6;
  v7 = sub_1C97A2CEC(&qword_1EC3C9A70, &qword_1C9AA7D88);
  v69 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v60 - v8;
  v10 = sub_1C97A2CEC(&qword_1EC3C9A78, &qword_1C9AA7D90);
  v68 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  v13 = sub_1C97A2CEC(&unk_1EC3C9A80, &qword_1C9AA7D98);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v60 - v15;
  memcpy(__dst, a1, 0x41uLL);
  *&__dst[68] = 0x40467A0000;
  *&__dst[76] = 0x45EA600042FA0000;
  *&__dst[84] = 0x3C23D70A00000002;
  __dst[92] = 0;
  *&__dst[96] = xmmword_1C9AA7B00;
  *&__dst[112] = 0;
  sub_1C97E82EC(a1, v81, &qword_1EC3C7690, &qword_1C9A9FD00);
  v17 = v83;
  v18 = v79(__dst);
  if (v17)
  {
    memcpy(v81, __dst, sizeof(v81));
    sub_1C97DA1E0(v81, &qword_1EC3C7360, &unk_1C9AA7DA0);
    return;
  }

  v78 = a1;
  v63 = v12;
  v79 = v9;
  v64 = v16;
  v65 = v14;
  v83 = v18;
  v66 = v7;
  v67 = v13;
  memcpy(v81, __dst, sizeof(v81));
  sub_1C97DA1E0(v81, &qword_1EC3C7360, &unk_1C9AA7DA0);
  v19 = objc_autoreleasePoolPush();
  v20 = objc_autoreleasePoolPush();
  if (qword_1EC3C55D0 != -1)
  {
    swift_once();
  }

  v21 = swift_allocObject();
  *(v21 + 16) = 21;
  LOWORD(v80) = 21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  *(&v60 - 4) = sub_1C9834EC4;
  *(&v60 - 3) = v22;
  *(&v60 - 2) = &v80;

  v23 = sub_1C97E2E88();
  v24 = v10;

  objc_autoreleasePoolPop(v20);
  objc_autoreleasePoolPop(v19);
  v25 = v23;
  v26 = *(v23 + 24);
  ObjectType = swift_getObjectType();
  v28 = (*(v26 + 16))(ObjectType, v26);
  sub_1C999AF90();
  v30 = v29;

  v31 = *(v30 + 16);

  if (v31 != 1 || (v32 = *(v25 + 24), v33 = swift_getObjectType(), v34 = (*(v32 + 16))(v33, v32), sub_1C999AF90(), v62 = 0, v36 = v35, v34, v37 = sub_1C98BBD24(v36), v39 = v38, , !v39))
  {
    sub_1C986EEEC();
    swift_allocError();
    *v51 = 1;
    swift_willThrow();

    goto LABEL_10;
  }

  v60 = v37;
  v61 = v39;
  v40 = sub_1C97AC6A0();
  v41 = v78[9];
  v80 = v40;
  sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
  v42 = sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
  sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
  v43 = v70;
  sub_1C9A91F68();

  v44 = v71;
  *(v43 + *(v71 + 60)) = 96;
  *(v43 + *(v44 + 64)) = v41;
  *(v43 + *(v44 + 68)) = v42;
  v45 = sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C9813064(&qword_1EC3C4FB0, &unk_1EC3CE960, &unk_1C9AA7D70);
  v46 = v73;
  v78 = v45;
  sub_1C9A91F68();
  sub_1C97DA1E0(v43, &unk_1EC3CE960, &unk_1C9AA7D70);
  *(swift_allocObject() + 16) = &unk_1F492A138;
  sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
  v47 = v72;
  v48 = v77;
  sub_1C9A91C48();

  (*(v76 + 8))(v46, v48);
  v49 = v79;
  v50 = v62;
  sub_1C98B2FA8();
  (*(v74 + 8))(v47, v75);
  if (v50)
  {

LABEL_10:

    return;
  }

  v52 = swift_allocObject();
  v53 = v61;
  *(v52 + 16) = v60;
  *(v52 + 24) = v53;
  sub_1C9813064(&unk_1EC3C4AD0, &qword_1EC3C9A70, &qword_1C9AA7D88);
  v54 = v63;
  v55 = v66;
  v62 = 0;
  sub_1C9A92048();

  (*(v69 + 8))(v49, v55);
  v56 = v64;
  sub_1C9A91CA8();
  (*(v68 + 8))(v54, v24);
  sub_1C9813064(&qword_1EC3C9AA8, &unk_1EC3C9A80, &qword_1C9AA7D98);
  v57 = v67;
  v58 = sub_1C9A91F28();

  v59 = (*(v65 + 8))(v56, v57);
  type metadata accessor for SharedVGGish.Instance(v59);
  *(swift_allocObject() + 16) = v58;
}

void sub_1C9867544(uint64_t a1, uint64_t (*a2)(void *))
{
  v80 = a2;
  v72 = a1;
  v74 = sub_1C97A2CEC(&unk_1EC3CE960, &unk_1C9AA7D70);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v59 - v2;
  v3 = sub_1C97A2CEC(&unk_1EC3C9A60, &unk_1C9ABD950);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v75 = &v59 - v4;
  v5 = sub_1C97A2CEC(&unk_1EC3CE970, &qword_1C9AA7D80);
  v76 = *(v5 - 8);
  v77 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3C9A70, &qword_1C9AA7D88);
  v71 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v59 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3C9A78, &qword_1C9AA7D90);
  v70 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v59 - v12;
  v14 = sub_1C97A2CEC(&unk_1EC3C9A80, &qword_1C9AA7D98);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - v16;
  v81[0] = 0x40467A0000;
  v81[1] = 0x45EA600042FA0000;
  v81[2] = 0x3C23D70A00000002;
  v82 = 0;
  v83 = xmmword_1C9AA7B00;
  v84 = 0;
  v18 = v85;
  v19 = v80(v81);
  if (!v18)
  {
    v67 = v7;
    v68 = v10;
    v69 = v13;
    v85 = 0;
    v63 = v17;
    v62 = v11;
    v64 = v15;
    v65 = v8;
    v66 = v14;
    v80 = v19;
    v20 = objc_autoreleasePoolPush();
    v21 = objc_autoreleasePoolPush();
    if (qword_1EC3C55D0 != -1)
    {
      swift_once();
    }

    v22 = swift_allocObject();
    *(v22 + 16) = 21;
    LOWORD(v81[0]) = 21;
    v23 = MEMORY[0x1EEE9AC00](v22);
    *(&v59 - 4) = sub_1C98351CC;
    *(&v59 - 3) = v23;
    *(&v59 - 2) = v81;

    v24 = v85;
    v25 = sub_1C97E2E88();
    v26 = v69;
    v27 = v79;
    if (v24)
    {

      objc_autoreleasePoolPop(v21);
      objc_autoreleasePoolPop(v20);
    }

    else
    {
      v28 = v25;

      objc_autoreleasePoolPop(v21);
      objc_autoreleasePoolPop(v20);
      v29 = *(v28 + 24);
      ObjectType = swift_getObjectType();
      v31 = (*(v29 + 16))(ObjectType, v29);
      sub_1C999AF90();
      v33 = v32;

      v34 = *(v33 + 16);

      if (v34 == 1 && (v35 = *(v28 + 24), v36 = swift_getObjectType(), v37 = (*(v35 + 16))(v36, v35), sub_1C999AF90(), v39 = v38, v37, v40 = sub_1C98BBD24(v39), v42 = v41, , v42))
      {
        v60 = v40;
        v85 = v42;
        v81[0] = sub_1C97AC6A0();
        v61 = v28;
        sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
        v43 = sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
        sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
        v44 = v73;
        sub_1C9A91F68();

        v45 = v74;
        *(v44 + *(v74 + 60)) = 96;
        *(v44 + *(v45 + 64)) = v72;
        *(v44 + *(v45 + 68)) = v43;
        v46 = sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
        sub_1C9813064(&qword_1EC3C4FB0, &unk_1EC3CE960, &unk_1C9AA7D70);
        v47 = v75;
        v74 = v46;
        sub_1C9A91F68();
        sub_1C97DA1E0(v44, &unk_1EC3CE960, &unk_1C9AA7D70);
        *(swift_allocObject() + 16) = &unk_1F492A690;
        sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
        v48 = v67;
        sub_1C9A91C48();

        (*(v78 + 8))(v47, v27);
        v49 = v68;
        sub_1C98B2FA8();
        (*(v76 + 8))(v48, v77);
        v51 = swift_allocObject();
        v52 = v85;
        *(v51 + 16) = v60;
        *(v51 + 24) = v52;
        v85 = 0;
        sub_1C9813064(&unk_1EC3C4AD0, &qword_1EC3C9A70, &qword_1C9AA7D88);
        v53 = v65;
        sub_1C9A92048();

        (*(v71 + 8))(v49, v53);
        v54 = v63;
        v55 = v62;
        sub_1C9A91CA8();
        (*(v70 + 8))(v26, v55);
        sub_1C9813064(&qword_1EC3C9AA8, &unk_1EC3C9A80, &qword_1C9AA7D98);
        v56 = v66;
        v57 = sub_1C9A91F28();

        v58 = (*(v64 + 8))(v54, v56);
        type metadata accessor for SharedVGGish.Instance(v58);
        *(swift_allocObject() + 16) = v57;
      }

      else
      {
        sub_1C986EEEC();
        swift_allocError();
        *v50 = 1;
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1C9867F7C(uint64_t a1)
{
  sub_1C97A2CEC(&unk_1EC3C73F0, &qword_1C9A9FC28);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C9A9EDD0;
  *(v2 + 32) = a1;

  return v2;
}

double sub_1C9867FDC(double a1)
{
  sub_1C97A2CEC(&qword_1EC3C6CD0, &unk_1C9A9D690);
  v2 = swift_allocObject();
  *&result = 1;
  *(v2 + 16) = xmmword_1C9A9EDD0;
  *(v2 + 32) = a1;
  return result;
}

uint64_t sub_1C986802C(uint64_t a1)
{
  sub_1C97A2CEC(&qword_1EC3C68F0, &qword_1C9AB28D0);
  sub_1C98719F4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C9A9EDD0;
  sub_1C97BD360(a1, v2 + 32);
  return v2;
}

uint64_t sub_1C9868088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v105 = type metadata accessor for AccessibilitySoundActions.Session(0);
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v87 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1C97A2CEC(&qword_1EC3C9AE8, &unk_1C9AA7DC0);
  v96 = *(v97 - 8);
  v4 = MEMORY[0x1EEE9AC00](v97);
  v94 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v87 - v6;
  v103 = sub_1C97A2CEC(&qword_1EC3C7810, &unk_1C9AB25D0);
  v101 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v98 = &v87 - v7;
  v104 = sub_1C97A2CEC(&qword_1EC3CC200, &qword_1C9AA7DD0);
  v102 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v99 = &v87 - v8;
  v107 = sub_1C97A2CEC(&unk_1EC3C9AF0, &qword_1C9AA7DD8);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v121 = &v87 - v9;
  v115 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v113 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v111 = (&v87 - v10);
  v123 = sub_1C9A91C28();
  v110 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v109 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1C97A2CEC(&unk_1EC3CD670, &qword_1C9AA7D50);
  v114 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v87 - v12;
  v118 = sub_1C97A2CEC(&unk_1EC3CC270, qword_1C9AA7DE0);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v87 - v13;
  v120 = sub_1C97A2CEC(&qword_1EC3C9B00, &unk_1C9AB2620);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v122 = &v87 - v14;
  v15 = sub_1C9A91748();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v87 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v87 - v23;
  v25 = *(a1 + 16);
  v129[0] = *a1;
  v129[1] = v25;
  v124 = a1;
  v130 = *(a1 + 32);
  sub_1C9A91738();
  if (qword_1EC3C5520 != -1)
  {
    swift_once();
  }

  v26 = sub_1C9A91B58();
  v27 = sub_1C97BFF6C(v26, qword_1EC3D3108);
  v28 = *(v16 + 16);
  v90 = v16 + 16;
  v89 = v28;
  v28(v22, v24, v15);
  v91 = v27;
  v29 = sub_1C9A91B38();
  v30 = sub_1C9A92FC8();
  v31 = os_log_type_enabled(v29, v30);
  v125 = v15;
  v93 = v19;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v126 = v16;
    v127 = v33;
    v34 = v33;
    *v32 = 136446210;
    sub_1C986FB24(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
    v35 = sub_1C9A93A98();
    v36 = v15;
    v38 = v37;
    v39 = *(v126 + 8);
    v39(v22, v36);
    v40 = sub_1C9849140(v35, v38, &v127);
    v41 = v39;

    *(v32 + 4) = v40;
    _os_log_impl(&dword_1C9788000, v29, v30, "Started Creating Accessibility Sound Actions Session %{public}s", v32, 0xCu);
    sub_1C97A592C(v34);
    v42 = v34;
    v16 = v126;
    MEMORY[0x1CCA93280](v42, -1, -1);
    MEMORY[0x1CCA93280](v32, -1, -1);
  }

  else
  {

    v41 = *(v16 + 8);
    v41(v22, v15);
  }

  if (qword_1EC3C5E00 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &unk_1EC3D3360, 0x41uLL);
  v43 = v132;
  sub_1C98F40F8(__dst);
  v132 = v43;
  if (v43)
  {
    return (v41)(v24, v125);
  }

  v124 = v41;
  v126 = v16;
  v88 = v24;
  v45 = sub_1C97AC6A0();
  v87 = v45;

  v127 = v45;
  v46 = v110;
  v47 = v109;
  (*(v110 + 104))(v109, *MEMORY[0x1E695BD20], v123);
  v48 = v111;
  *v111 = sub_1C98F63E0;
  v48[1] = 0;
  v49 = v113;
  v50 = v115;
  (*(v113 + 104))(v48, *MEMORY[0x1E695BD48], v115);
  sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
  sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
  v51 = v112;
  sub_1C9A92018();
  (*(v49 + 8))(v48, v50);
  (*(v46 + 8))(v47, v123);

  v52 = sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
  sub_1C9813064(&qword_1EC3CD6A0, &unk_1EC3CD670, &qword_1C9AA7D50);
  v53 = v117;
  v54 = v116;
  sub_1C9A91F68();
  (*(v114 + 8))(v51, v54);
  v55 = v118;
  *(v53 + *(v118 + 60)) = 96;
  *(v53 + *(v55 + 64)) = 2;
  *(v53 + *(v55 + 68)) = v52;
  sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  sub_1C9813064(&qword_1EC3C9B08, &unk_1EC3CC270, qword_1C9AA7DE0);
  v56 = v122;
  sub_1C9A91F68();
  v57 = sub_1C97DA1E0(v53, &unk_1EC3CC270, qword_1C9AA7DE0);
  MEMORY[0x1EEE9AC00](v57);
  *(&v87 - 2) = v56;
  *(&v87 - 1) = v129;
  v58 = v121;
  v59 = v132;
  sub_1C993B85C();
  v132 = v59;
  if (v59)
  {
    v124(v88, v125);
    return (*(v119 + 8))(v56, v120);
  }

  else
  {
    sub_1C9813064(&qword_1EC3C9B10, &unk_1EC3C9AF0, &qword_1C9AA7DD8);
    v60 = v95;
    sub_1C9A91F68();
    v61 = v96;
    v62 = v94;
    v63 = v97;
    (*(v96 + 16))(v94, v60, v97);
    v64 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v65 = swift_allocObject();
    *(v65 + 16) = sub_1C98FA208;
    *(v65 + 24) = 0;
    (*(v61 + 32))(v65 + v64, v62, v63);
    sub_1C97A2CEC(&qword_1EC3C9B18, &qword_1C9AB20E0);
    sub_1C9813064(&unk_1EC3C9B20, &qword_1EC3C9B18, &qword_1C9AB20E0);
    v66 = v98;
    sub_1C9A91EF8();
    (*(v61 + 8))(v60, v63);
    v127 = 0;
    v128 = 0xE000000000000000;
    sub_1C9A935B8();

    v127 = 0xD000000000000022;
    v128 = 0x80000001C9AD7130;
    sub_1C986FB24(&qword_1EC3C5480, MEMORY[0x1E69695A8]);
    v67 = v88;
    v68 = v125;
    v69 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v69);

    MEMORY[0x1CCA90230](8250, 0xE200000000000000);
    v70 = v99;
    sub_1C993B1BC();

    (*(v101 + 8))(v66, v103);
    sub_1C9813064(&unk_1EC3C9B30, &qword_1EC3CC200, &qword_1C9AA7DD0);
    v71 = v104;
    v72 = sub_1C9A91F28();
    (*(v102 + 8))(v70, v71);
    v73 = v108;
    v74 = v89;
    v89(v108, v67, v68);
    *(v73 + *(v105 + 20)) = v72;
    v75 = v93;
    v74(v93, v67, v68);
    v76 = sub_1C9A91B38();
    v77 = sub_1C9A92FC8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v127 = v79;
      *v78 = 136446210;
      v80 = sub_1C9A93A98();
      v82 = v81;
      v83 = v75;
      v84 = v124;
      v124(v83, v68);
      v85 = sub_1C9849140(v80, v82, &v127);

      *(v78 + 4) = v85;
      _os_log_impl(&dword_1C9788000, v76, v77, "Finished Creating Accessibility Sound Actions Session %{public}s", v78, 0xCu);
      sub_1C97A592C(v79);
      MEMORY[0x1CCA93280](v79, -1, -1);
      MEMORY[0x1CCA93280](v78, -1, -1);

      (*(v106 + 8))(v121, v107);
      v84(v88, v68);
    }

    else
    {

      v86 = v124;
      v124(v75, v68);
      (*(v106 + 8))(v58, v107);
      v86(v67, v68);
    }

    sub_1C986FB68(v108, v100, type metadata accessor for AccessibilitySoundActions.Session);
    return (*(v119 + 8))(v122, v120);
  }
}

uint64_t sub_1C9869238@<X0>(uint64_t a1@<X8>)
{
  v32[2] = a1;
  v1 = sub_1C9A91408();
  v36 = *(v1 - 8);
  v37 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v35 = v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C97A2CEC(&unk_1EC3CC2A0, &qword_1C9AA7E00);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v32 - v4;
  v6 = sub_1C9A91558();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v32 - v11);
  sub_1C97A2CEC(&qword_1EC3C9B00, &unk_1C9AB2620);
  sub_1C9813064(&qword_1EC3C9B40, &qword_1EC3C9B00, &unk_1C9AB2620);
  v13 = sub_1C9A91F28();
  v14 = v40;
  sub_1C98C73E0(20, v12);
  if (!v14)
  {
    v40 = v7;
    v15 = v6;
    v32[1] = v13;
    v38 = v13;
    sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
    sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
    sub_1C9A91F68();
    sub_1C9813064(&qword_1EC3C9B48, &unk_1EC3CC2A0, &qword_1C9AA7E00);
    v16 = v34;
    v17 = sub_1C9A91F28();
    (*(v33 + 8))(v5, v16);
    v38 = 0x6A2E657069636572;
    v39 = 0xEB000000006E6F73;
    v19 = v35;
    v18 = v36;
    v20 = v37;
    (v36[13])(v35, *MEMORY[0x1E6968F70], v37);
    sub_1C98449A8();
    sub_1C9A91538();
    v18[1](v19, v20);
    v21 = sub_1C9A915A8();
    v23 = v22;
    v24 = v17;
    v25 = sub_1C98DB63C(v21, v22);
    v26 = v40;
    v27 = v25;
    v37 = v10;
    MEMORY[0x1EEE9AC00](v25);
    v32[-2] = v12;
    v28 = sub_1C99F437C(v24, sub_1C986F178, &v32[-4], v27);
    v36 = v12;
    v30 = v28;
    sub_1C97A5978(v21, v23);

    v31 = *(v26 + 8);
    v31(v37, v15);
    v38 = v30;
    sub_1C97A2CEC(&unk_1EC3CC2B0, &unk_1C9ABC1C0);
    sub_1C9813064(&qword_1EC3C9B50, &unk_1EC3CC2B0, &unk_1C9ABC1C0);
    sub_1C9A92048();

    v31(v36, v15);
  }
}

uint64_t sub_1C9869804(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, 0x41uLL);
  v10 = a2;
  v11 = a3;
  sub_1C97A6264(__src, &v8);
  v6 = sub_1C985F310();
  sub_1C97DA1E0(__dst, &qword_1EC3C76A0, &unk_1C9AA4F40);
  return v6;
}

uint64_t sub_1C98698A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  if ((sub_1C98568F8(a3) & 0x3F) != 0)
  {
    sub_1C986EE54();
    swift_allocError();
    *v6 = 2;
    return swift_willThrow();
  }

  else
  {
    v8 = sub_1C9A93168();
    v10 = v9;
    v12 = v11;
    v13 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_stepSizeFrames) / 0xA0u;
    v18 = sub_1C9A93168();
    v19 = v14;
    v16 = v15;
    result = sub_1C985F50C(v13);
    if (!v3)
    {
      sub_1C98BD404();

      sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
      sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
      v17 = sub_1C9A91F28();

      *a2 = v17;
      a2[1] = v8;
      a2[2] = v10;
      a2[3] = v12;
      a2[4] = v18;
      a2[5] = v16;
      a2[6] = v19;
    }
  }

  return result;
}

uint64_t *sub_1C9869A5C@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X2>, uint64_t a3@<X0>)
{
  memcpy(__dst, __src, sizeof(__dst));
  if ((sub_1C98568F8(v7) & 0x3F) != 0)
  {
    sub_1C986EE54();
    swift_allocError();
    *v8 = 2;
    return swift_willThrow();
  }

  else
  {
    v21 = sub_1C9A93168();
    v11 = v10;
    v26 = v12;
    v13 = *(a3 + OBJC_IVAR____TtC13SoundAnalysis42SNLogMelBasedFeatureExtractorConfiguration_stepSizeFrames) / 0xA0u;
    v14 = sub_1C9A93168();
    v16 = v15;
    v20 = v17;
    memcpy(v23, __dst, 0x41uLL);
    v24 = v13;
    sub_1C97A6264(__src, v22);
    sub_1C985F4A4();
    if (v3)
    {
      return sub_1C97DA1E0(v23, &qword_1EC3C7690, &qword_1C9A9FD00);
    }

    else
    {
      sub_1C97DA1E0(v23, &qword_1EC3C7690, &qword_1C9A9FD00);
      v18 = sub_1C98BD404();

      v22[0] = v18;
      sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
      sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
      v19 = sub_1C9A91F28();

      *a1 = v19;
      a1[1] = v21;
      a1[2] = v11;
      a1[3] = v26;
      a1[4] = v14;
      a1[5] = v16;
      a1[6] = v20;
    }
  }

  return result;
}

uint64_t sub_1C9869C74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_windowLengthFrames);
  if (v5 >= 0x200)
  {
    v6 = (v5 - 512) / 0xA0 + 1;
  }

  else
  {
    v6 = 0;
  }

  v18 = sub_1C9A93168();
  v19 = v7;
  v9 = v8;
  v10 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames) / 0xA0u;
  v11 = sub_1C9A93168();
  v13 = v12;
  v15 = v14;
  result = sub_1C985F378(v6, v10);
  if (!v2)
  {
    sub_1C9832398();

    sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
    sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
    v17 = sub_1C9A91F28();

    *a2 = v17;
    a2[1] = v18;
    a2[2] = v9;
    a2[3] = v19;
    a2[4] = v11;
    a2[5] = v13;
    a2[6] = v15;
  }

  return result;
}

uint64_t sub_1C9869E24@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v7 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_windowLengthFrames);
  if (v7 >= 0x200)
  {
    v8 = (v7 - 512) / 0xA0 + 1;
  }

  else
  {
    v8 = 0;
  }

  v20 = sub_1C9A93168();
  v21 = v9;
  v11 = v10;
  v12 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis41SNSoundPrintFeatureExtractorConfiguration_stepSizeFrames) / 0xA0u;
  v13 = sub_1C9A93168();
  v15 = v14;
  v19 = v16;
  result = sub_1C9869804(a2, v8, v12);
  if (!v3)
  {
    sub_1C9832398();

    sub_1C97A2CEC(&unk_1EC3CC280, &qword_1C9A9C7A0);
    sub_1C9813064(&unk_1EC3C4A90, &unk_1EC3CC280, &qword_1C9A9C7A0);
    v18 = sub_1C9A91F28();

    *a3 = v18;
    a3[1] = v20;
    a3[2] = v11;
    a3[3] = v21;
    a3[4] = v13;
    a3[5] = v15;
    a3[6] = v19;
  }

  return result;
}

uint64_t sub_1C9869FC4(__int128 *a1, void *a2, CMTimeValue a3)
{
  v20 = *a1;
  v21 = *(a1 + 16);
  v18 = *a1;
  v19 = *(a1 + 16);
  sub_1C986EBF0(&v20, v17);
  v8 = sub_1C99316D0(&v18);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1C97A6368(v18, *(&v18 + 1), v19);
  if (!v4)
  {
    if (v10 < 0)
    {
      v15 = sub_1C986BA9C(v8, v10 & 0x7FFFFFFFFFFFFFFFLL, v12, v14, a1, a2, a3);
    }

    else
    {
      v15 = sub_1C986A204(v8, v10, a1, a2, a3);
    }

    v3 = v15;
    sub_1C986EC4C(v8, v10);
  }

  return v3;
}

uint64_t sub_1C986A0E4(__int128 *a1, uint64_t a2, __int128 *a3)
{
  v20 = *a1;
  v21 = *(a1 + 16);
  v18 = *a1;
  v19 = *(a1 + 16);
  sub_1C986EBF0(&v20, v17);
  v8 = sub_1C99316D0(&v18);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_1C97A6368(v18, *(&v18 + 1), v19);
  if (!v4)
  {
    if (v10 < 0)
    {
      v15 = sub_1C986C960(v8, v10 & 0x7FFFFFFFFFFFFFFFLL, v12, v14, a1, a2, a3);
    }

    else
    {
      v15 = sub_1C986ADD8(v8, v10, a1, a2, a3);
    }

    v3 = v15;
    sub_1C986EC4C(v8, v10);
  }

  return v3;
}

uint64_t sub_1C986A204(uint64_t a1, CMTimeValue a2, __int128 *a3, void *__src, uint64_t a5)
{
  v102 = __src;
  v101 = a5;
  memcpy(__dst, __src, sizeof(__dst));
  v96 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v92 = (&v80 - v8);
  v99 = sub_1C9A91C28();
  v91 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v90 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v95 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v93 = &v80 - v10;
  v86 = sub_1C97A2CEC(&qword_1EC3C9920, &qword_1C9AA7CB8);
  MEMORY[0x1EEE9AC00](v86);
  v98 = &v80 - v11;
  v12 = sub_1C97A2CEC(&qword_1EC3C9928, &unk_1C9AA7CC0);
  v87 = *(v12 - 8);
  v88 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80 - v13;
  v15 = sub_1C97A2CEC(&qword_1EC3C9930, &qword_1C9AA7CD0);
  v81 = *(v15 - 8);
  v82 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v80 - v16;
  v83 = sub_1C97A2CEC(&qword_1EC3C9938, &qword_1C9AA7CD8);
  MEMORY[0x1EEE9AC00](v83);
  v84 = &v80 - v18;
  v112 = *a3;
  v113 = *(a3 + 16);
  *&v110[0].value = *a3;
  v118 = *&a3;
  LOBYTE(v110[0].epoch) = *(a3 + 16);
  sub_1C986EBF0(&v112, &v111);
  v19 = sub_1C99317B0(v110);
  sub_1C97A6368(v110[0].value, *&v110[0].timescale, v110[0].epoch);
  v89 = v14;
  v85 = v17;
  if (v19)
  {
    v80 = sub_1C9A924A8();
    v105 = v21;
  }

  else
  {
    v80 = 0;
    v105 = 0xE000000000000000;
  }

  v22 = v118;
  v23 = *(*&v118 + 40);
  v106 = *(*&v118 + 24);
  v107 = v23;
  v24 = type metadata accessor for SNModelMetadataUtils(v20);
  ObjectType = swift_getObjectType();
  v108 = *(a2 + 16);
  v26 = v108(ObjectType, a2);
  v27 = *(*&v22 + 32);
  v100 = v24;
  v28 = sub_1C9A3C4BC(v26, 16000);

  v109 = a1;
  v29 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v104 = v28;
  v30 = [v29 initWithUnsignedInt_];
  sub_1C97CDE50(v30);
  v32 = v31;

  v110[0].value = v106;
  *&v110[0].timescale = v27;
  v110[0].epoch = v107;
  CMTimeConvertScale(&v111, v110, v32, kCMTimeRoundingMethod_RoundTowardZero);
  v33 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1C9A180B0(v33);
  LODWORD(v107) = v34;

  v106 = a2;
  v35 = a2;
  v36 = v108;
  v37 = v108(ObjectType, v35);
  v38 = [v37 inputDescriptionsByName];

  sub_1C97BD318(v39, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v40 = sub_1C9A92328();

  v41 = sub_1C98BBCAC(v40);

  if (v41)
  {
    v43 = [v41 multiArrayConstraint];

    if (v43)
    {
      v44 = [v43 shape];

      sub_1C97BD318(v45, 0, &qword_1EC3C54B0, 0x1E696AD98);
      sub_1C9A92798();
    }
  }

  v46 = *(*&v118 + 48);
  v47 = type metadata accessor for SNUtils(v42);
  v48 = sub_1C9A16DC8();

  if (v46 < 0.0 || v46 >= 1.0)
  {

    sub_1C986ECA4();
    swift_allocError();
    *v50 = 1;
    swift_willThrow();
    return v47;
  }

  v51 = round((1.0 - v46) * v107);
  if (v51 <= 1.0)
  {
    v52 = 1.0;
  }

  else
  {
    v52 = v51;
  }

  v53 = v36(ObjectType, v106);
  v54 = sub_1C9A3C55C(v53, MEMORY[0x1E69E7CD0]);

  v47 = *(v101 + 32);
  memcpy(v114, __dst, 0x41uLL);
  v115 = v48;
  v116 = v104;
  sub_1C97A6264(v102, v110);
  v55 = v103;
  v56 = sub_1C97DD36C(v114);
  if (v55)
  {
    sub_1C97DA1E0(v114, &unk_1EC3C9940, &unk_1C9AA5510);

    return v47;
  }

  v57 = v56;
  v101 = v54;
  v118 = v51;
  sub_1C97DA1E0(v114, &unk_1EC3C9940, &unk_1C9AA5510);
  v102 = v57;
  v108 = sub_1C98BF080();
  v110[0].value = v108;
  v58 = v90;
  v59 = v91;
  (*(v91 + 104))(v90, *MEMORY[0x1E695BD20], v99);
  v60 = v92;
  *v92 = sub_1C993AC58;
  v60[1] = 0;
  v61 = v94;
  v62 = v96;
  (*(v94 + 104))(v60, *MEMORY[0x1E695BD48], v96);
  v103 = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
  sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770);
  v63 = v93;
  sub_1C9A92018();
  (*(v61 + 8))(v60, v62);
  (*(v59 + 8))(v58, v99);

  v64 = sub_1C97A2CEC(&qword_1EC3C8260, &qword_1C9AA2900);
  sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0);
  v65 = v97;
  v66 = v98;
  sub_1C9A91F68();
  result = (*(v95 + 8))(v63, v65);
  if (v51 > 1.0 && (*&v118 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  v68 = v109;
  v69 = v89;
  if (v52 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v52 < 9.22337204e18)
  {
    v70 = v86;
    *(v66 + *(v86 + 60)) = v107;
    *(v66 + *(v70 + 64)) = v52;
    *(v66 + *(v70 + 68)) = v64;
    sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
    sub_1C9813064(&qword_1EC3C9960, &qword_1EC3C9920, &qword_1C9AA7CB8);
    sub_1C9A91F68();
    sub_1C97DA1E0(v66, &qword_1EC3C9920, &qword_1C9AA7CB8);
    v71 = v85;
    v72 = v106;
    sub_1C98B2E20();
    (*(v87 + 8))(v69, v88);
    v73 = swift_allocObject();
    *(v73 + 16) = v52;
    *(v73 + 24) = v104;
    *(v73 + 32) = v68;
    *(v73 + 40) = v72;
    *(v73 + 48) = v101;
    *(v73 + 56) = v107;
    v74 = v81;
    v75 = v105;
    *(v73 + 64) = v80;
    *(v73 + 72) = v75;
    v76 = v84;
    (*(v74 + 32))(v84, v71, v82);
    v77 = v83;
    v78 = (v76 + *(v83 + 52));
    *v78 = sub_1C993AC5C;
    v78[1] = 0;
    v79 = (v76 + *(v77 + 56));
    *v79 = sub_1C986ECF8;
    v79[1] = v73;
    sub_1C9813064(&unk_1EC3C9968, &qword_1EC3C9938, &qword_1C9AA7CD8);
    swift_unknownObjectRetain();
    v47 = sub_1C9A91F28();

    sub_1C97DA1E0(v76, &qword_1EC3C9938, &qword_1C9AA7CD8);
    return v47;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C986ADD8(uint64_t a1, CMTimeEpoch a2, __int128 *a3, uint64_t a4, __int128 *a5)
{
  v100 = a5;
  v95 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v93 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v91 = (&v78 - v8);
  v98 = sub_1C9A91C28();
  v90 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v89 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v92 = &v78 - v10;
  v85 = sub_1C97A2CEC(&qword_1EC3C9920, &qword_1C9AA7CB8);
  MEMORY[0x1EEE9AC00](v85);
  v97 = &v78 - v11;
  v88 = sub_1C97A2CEC(&qword_1EC3C9928, &unk_1C9AA7CC0);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v13 = &v78 - v12;
  v81 = sub_1C97A2CEC(&qword_1EC3C9930, &qword_1C9AA7CD0);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v84 = &v78 - v14;
  v82 = sub_1C97A2CEC(&qword_1EC3C9938, &qword_1C9AA7CD8);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v78 - v15;
  v113 = *a3;
  v114 = *(a3 + 16);
  *&time.value = *a3;
  v115 = *&a3;
  LOBYTE(time.epoch) = *(a3 + 16);
  sub_1C986EBF0(&v113, &v107);
  v16 = sub_1C99317B0(&time);
  sub_1C97A6368(time.value, *&time.timescale, time.epoch);
  v86 = v13;
  if (v16)
  {
    v79 = sub_1C9A924A8();
    v103 = v18;
  }

  else
  {
    v79 = 0;
    v103 = 0xE000000000000000;
  }

  v19 = v115;
  v104 = *(*&v115 + 24);
  v105 = *(*&v115 + 40);
  v20 = type metadata accessor for SNModelMetadataUtils(v17);
  ObjectType = swift_getObjectType();
  v23 = a2 + 16;
  v22 = *(a2 + 16);
  v24 = a2;
  v25 = v22(ObjectType, a2);
  v26 = *(*&v19 + 32);
  v99 = v20;
  v27 = sub_1C9A3C4BC(v25, 16000);

  v106 = a1;
  v28 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v102 = v27;
  v29 = [v28 initWithUnsignedInt_];
  sub_1C97CDE50(v29);
  LODWORD(v25) = v30;

  time.value = v104;
  *&time.timescale = v26;
  time.epoch = v105;
  CMTimeConvertScale(&v107, &time, v25, kCMTimeRoundingMethod_RoundTowardZero);
  v31 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1C9A180B0(v31);
  v33 = v32;

  v105 = v24;
  v34 = v24;
  v35 = v23;
  v36 = v22(ObjectType, v34);
  v37 = [v36 inputDescriptionsByName];

  sub_1C97BD318(v38, 0, &qword_1EC3C54D0, 0x1E695FE50);
  v39 = sub_1C9A92328();

  v40 = sub_1C98BBCAC(v39);

  if (v40)
  {
    v42 = [v40 multiArrayConstraint];

    if (v42)
    {
      v43 = [v42 shape];

      sub_1C97BD318(v44, 0, &qword_1EC3C54B0, 0x1E696AD98);
      sub_1C9A92798();
    }
  }

  v45 = *(*&v115 + 48);
  type metadata accessor for SNUtils(v41);
  v46 = sub_1C9A16DC8();

  if (v45 < 0.0 || v45 >= 1.0)
  {

    sub_1C986ECA4();
    swift_allocError();
    *v48 = 1;
    swift_willThrow();
    return v35;
  }

  v49 = round((1.0 - v45) * v33);
  if (v49 <= 1.0)
  {
    v50 = 1.0;
  }

  else
  {
    v50 = v49;
  }

  v51 = v22(ObjectType, v105);
  v35 = sub_1C9A3C55C(v51, MEMORY[0x1E69E7CD0]);

  v52 = v100[1];
  v109 = *v100;
  v110 = v52;
  v53 = v100[3];
  v111 = v100[2];
  v112 = v53;
  v54 = v101;
  v55 = sub_1C97DD3BC(v46, v102);
  if (v54)
  {

    return v35;
  }

  v99 = v35;
  LODWORD(v101) = v33;
  v115 = v49;
  v100 = v55;
  v104 = sub_1C98BF080();
  time.value = v104;
  v56 = v90;
  v57 = v89;
  (*(v90 + 104))(v89, *MEMORY[0x1E695BD20], v98);
  v58 = v91;
  *v91 = sub_1C993AC58;
  v58[1] = 0;
  v59 = v93;
  v60 = v95;
  (*(v93 + 104))(v58, *MEMORY[0x1E695BD48], v95);
  sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
  sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770);
  v61 = v92;
  sub_1C9A92018();
  (*(v59 + 8))(v58, v60);
  (*(v56 + 8))(v57, v98);

  v62 = sub_1C97A2CEC(&qword_1EC3C8260, &qword_1C9AA2900);
  sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0);
  v63 = v96;
  sub_1C9A91F68();
  result = (*(v94 + 8))(v61, v63);
  if (v49 > 1.0 && (*&v115 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v50 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v65 = v105;
  v66 = v101;
  if (v50 < 9.22337204e18)
  {
    v67 = v85;
    v68 = v97;
    *&v97[*(v85 + 60)] = v101;
    *(v68 + *(v67 + 64)) = v50;
    *(v68 + *(v67 + 68)) = v62;
    sub_1C97A2CEC(&qword_1EC3C8A38, &unk_1C9AA4F50);
    sub_1C9813064(&qword_1EC3C9960, &qword_1EC3C9920, &qword_1C9AA7CB8);
    v69 = v86;
    sub_1C9A91F68();
    sub_1C97DA1E0(v68, &qword_1EC3C9920, &qword_1C9AA7CB8);
    v70 = v84;
    v71 = v106;
    sub_1C98B2E20();
    (*(v87 + 8))(v69, v88);
    v72 = swift_allocObject();
    *(v72 + 16) = v50;
    *(v72 + 24) = v102;
    *(v72 + 32) = v71;
    *(v72 + 40) = v65;
    *(v72 + 48) = v99;
    *(v72 + 56) = v66;
    v73 = v103;
    *(v72 + 64) = v79;
    *(v72 + 72) = v73;
    v74 = v83;
    (*(v80 + 32))(v83, v70, v81);
    v75 = v82;
    v76 = (v74 + *(v82 + 52));
    *v76 = sub_1C993AC5C;
    v76[1] = 0;
    v77 = (v74 + *(v75 + 56));
    *v77 = sub_1C9871470;
    v77[1] = v72;
    sub_1C9813064(&unk_1EC3C9968, &qword_1EC3C9938, &qword_1C9AA7CD8);
    swift_unknownObjectRetain();
    v35 = sub_1C9A91F28();

    sub_1C97DA1E0(v74, &qword_1EC3C9938, &qword_1C9AA7CD8);
    return v35;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1C986BA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, void *__src, CMTimeValue a7)
{
  v129 = a2;
  v126 = a7;
  v123 = a4;
  v136 = a1;
  v127 = __src;
  memcpy(__dst, __src, sizeof(__dst));
  v104 = sub_1C97A2CEC(&qword_1EC3C9978, &qword_1C9AA7CE0);
  MEMORY[0x1EEE9AC00](v104);
  v111 = &v95 - v9;
  v119 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v117 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v115 = (&v95 - v10);
  v122 = sub_1C9A91C28();
  v114 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v113 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v118 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v116 = &v95 - v12;
  v112 = sub_1C97A2CEC(&qword_1EC3C9920, &qword_1C9AA7CB8);
  MEMORY[0x1EEE9AC00](v112);
  v121 = &v95 - v13;
  v14 = sub_1C97A2CEC(&qword_1EC3C9980, &qword_1C9AA7CE8);
  v106 = *(v14 - 8);
  v107 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v95 - v15;
  v16 = sub_1C97A2CEC(&qword_1EC3C9988, &qword_1C9AA7CF0);
  v108 = *(v16 - 8);
  v109 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v95 - v17;
  v19 = sub_1C97A2CEC(&unk_1EC3C9990, &qword_1C9AA7CF8);
  v110 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v95 - v20;
  v22 = *(a5 + 3);
  v23 = *(a5 + 5);
  v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v124 = a3;
  v25 = [v24 initWithInteger_];
  sub_1C97CDE50(v25);
  v27 = v26;

  v130[0].value = v22;
  v125 = a5;
  *&v130[0].timescale = a5[4];
  v130[0].epoch = v23;
  v28 = v129;
  CMTimeConvertScale(&v131, v130, v27, kCMTimeRoundingMethod_RoundTowardZero);
  v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1C9A180B0(v29);
  v31 = v30;

  v32 = v28;
  v33 = v128;
  sub_1C987E9B0();
  v35 = v33;
  if (v33)
  {

    return v32;
  }

  v32 = v34;
  v103 = v31;
  v128 = v18;
  v101 = v19;
  v102 = v21;
  if (!v34[2])
  {

LABEL_7:

    sub_1C986ECA4();
    swift_allocError();
    v41 = 8;
LABEL_8:
    *v40 = v41;
    swift_willThrow();
    return v32;
  }

  v38 = v34[4];
  v37 = v34[5];

  sub_1C987EA14();
  v32 = v39;
  if (!v39[2])
  {

    goto LABEL_7;
  }

  v42 = v38;
  v43 = v39[4];
  v44 = v39[5];

  v45 = sub_1C9881404();
  v97 = v42;
  v98 = v44;
  v99 = v37;
  v96 = v43;
  type metadata accessor for E5RTIOPort(v46);
  *(swift_initStackObject() + 16) = v45;
  v47 = sub_1C988196C();
  swift_setDeallocating();
  sub_1C98819BC();
  swift_deallocClassInstance();
  type metadata accessor for E5RTTensorDescriptor(v48);
  *(swift_initStackObject() + 16) = v47;
  v49 = sub_1C9881B70(v47);
  v51 = sub_1C9A0840C(v49, v50);
  swift_setDeallocating();
  sub_1C9881C7C();
  swift_deallocClassInstance();
  v52 = v51[2];
  if (v52)
  {
    v95 = 0;
    v130[0].value = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v53 = 4;
    v54 = v127;
    do
    {
      v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      ++v53;
      --v52;
    }

    while (v52);

    v35 = v95;
  }

  else
  {

    v54 = v127;
  }

  v56 = v125[6];
  type metadata accessor for SNUtils(v55);
  v32 = sub_1C9A16DC8();

  if (v56 < 0.0 || v56 >= 1.0)
  {

    sub_1C986ECA4();
    swift_allocError();
    v41 = 1;
    goto LABEL_8;
  }

  v58 = round((1.0 - v56) * v103);
  if (v58 <= 1.0)
  {
    v59 = 1.0;
  }

  else
  {
    v59 = v58;
  }

  memcpy(v132, __dst, 0x41uLL);
  v133 = v32;
  v134 = v124;
  sub_1C97A6264(v54, v130);
  v32 = sub_1C97DD36C(v132);
  sub_1C97DA1E0(v132, &unk_1EC3C9940, &unk_1C9AA5510);
  if (v35)
  {

    return v32;
  }

  v95 = 0;
  v127 = *&v58;
  v100 = v32;
  v126 = sub_1C98BF080();
  v130[0].value = v126;
  v60 = v113;
  v61 = v114;
  (*(v114 + 104))(v113, *MEMORY[0x1E695BD20], v122);
  v62 = v115;
  *v115 = sub_1C993AC58;
  v62[1] = 0;
  v63 = v117;
  v64 = v119;
  (*(v117 + 104))(v62, *MEMORY[0x1E695BD48], v119);
  v125 = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
  sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770);
  v65 = v62;
  v66 = v116;
  sub_1C9A92018();
  (*(v63 + 8))(v65, v64);
  (*(v61 + 8))(v60, v122);

  v67 = sub_1C97A2CEC(&qword_1EC3C8260, &qword_1C9AA2900);
  sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0);
  v68 = v120;
  v69 = v121;
  sub_1C9A91F68();
  result = (*(v118 + 8))(v66, v68);
  if (v58 > 1.0 && (v127 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_33;
  }

  v70 = v123;
  v71 = v112;
  v72 = v97;
  if (v59 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v59 < 9.22337204e18)
  {
    *(v69 + *(v112 + 60)) = v103;
    *(v69 + *(v71 + 64)) = v59;
    *(v69 + *(v71 + 68)) = v67;
    v73 = swift_allocObject();
    v74 = v136;
    v75 = v129;
    v73[2] = v136;
    v73[3] = v75;
    v73[4] = v124;
    v73[5] = v70;
    v73[6] = v72;
    v76 = v99;
    v73[7] = v99;
    sub_1C9813064(&qword_1EC3C9960, &qword_1EC3C9920, &qword_1C9AA7CB8);

    v77 = v105;
    sub_1C9A92048();

    sub_1C97DA1E0(v69, &qword_1EC3C9920, &qword_1C9AA7CB8);
    v78 = swift_allocObject();
    *(v78 + 16) = v97;
    *(v78 + 24) = v76;
    sub_1C97A2CEC(qword_1EC3C9850, &unk_1C9AA7D00);
    v79 = v128;
    v80 = v107;
    sub_1C9A91CA8();

    (*(v106 + 8))(v77, v80);
    v81 = swift_allocObject();
    *(v81 + 16) = v74;
    *(v81 + 24) = v75;
    v82 = v75;
    sub_1C9813064(&qword_1EC3C99A0, &qword_1EC3C9988, &qword_1C9AA7CF0);
    v83 = v102;
    v84 = v109;
    sub_1C9A92048();

    (*(v108 + 8))(v79, v84);
    v85 = swift_allocObject();
    *(v85 + 16) = v103;
    v86 = v123;
    v87 = v124;
    *(v85 + 24) = v124;
    *(v85 + 32) = v59;
    *(v85 + 40) = v74;
    *(v85 + 48) = v82;
    *(v85 + 56) = v87;
    *(v85 + 64) = v86;
    v88 = v98;
    *(v85 + 72) = v96;
    *(v85 + 80) = v88;
    v89 = v110;
    v90 = v111;
    v91 = v101;
    (*(v110 + 16))(v111, v83, v101);
    v92 = v104;
    v93 = (v90 + *(v104 + 52));
    *v93 = sub_1C993AC5C;
    v93[1] = 0;
    v94 = (v90 + *(v92 + 56));
    *v94 = sub_1C986ED4C;
    v94[1] = v85;
    sub_1C9813064(&qword_1EC3C99A8, &qword_1EC3C9978, &qword_1C9AA7CE0);

    v32 = sub_1C9A91F28();

    sub_1C97DA1E0(v90, &qword_1EC3C9978, &qword_1C9AA7CE0);
    (*(v89 + 8))(v83, v91);
    return v32;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1C986C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double *a5, uint64_t a6, __int128 *a7)
{
  v122 = a7;
  v126 = a4;
  v135 = a2;
  v128 = a1;
  v110 = sub_1C97A2CEC(&qword_1EC3C9978, &qword_1C9AA7CE0);
  MEMORY[0x1EEE9AC00](v110);
  v104 = &v95 - v9;
  v121 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v125 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v114 = (&v95 - v10);
  v119 = sub_1C9A91C28();
  v113 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v118 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v120 = &v95 - v12;
  v112 = sub_1C97A2CEC(&qword_1EC3C9920, &qword_1C9AA7CB8);
  MEMORY[0x1EEE9AC00](v112);
  v117 = &v95 - v13;
  v108 = sub_1C97A2CEC(&qword_1EC3C9980, &qword_1C9AA7CE8);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v95 - v14;
  v105 = sub_1C97A2CEC(&qword_1EC3C9988, &qword_1C9AA7CF0);
  v109 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v16 = &v95 - v15;
  v17 = sub_1C97A2CEC(&unk_1EC3C9990, &qword_1C9AA7CF8);
  v111 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v95 - v18;
  v20 = *(a5 + 3);
  v21 = *(a5 + 5);
  v22 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v123 = a3;
  v23 = [v22 initWithInteger_];
  sub_1C97CDE50(v23);
  v25 = v24;

  time.value = v20;
  v26 = v135;
  v124 = *&a5;
  *&time.timescale = a5[4];
  time.epoch = v21;
  v27 = v128;
  CMTimeConvertScale(&v129, &time, v25, kCMTimeRoundingMethod_RoundTowardZero);
  v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1C9A180B0(v28);
  v30 = v29;

  v31 = v127;
  sub_1C987E9B0();
  if (v31)
  {

    return v26;
  }

  LODWORD(v127) = v30;
  v101 = v16;
  v102 = v19;
  v103 = v17;
  v26 = v126;
  if (!v32[2])
  {

LABEL_7:

    sub_1C986ECA4();
    swift_allocError();
    v39 = 8;
LABEL_8:
    *v38 = v39;
    swift_willThrow();
    return v26;
  }

  v34 = v32[4];
  v33 = v32[5];

  sub_1C987EA14();
  v36 = v27;
  v100 = v34;
  if (!v35[2])
  {

    goto LABEL_7;
  }

  v40 = v35[4];
  v41 = v35[5];

  v42 = v33;
  v43 = sub_1C9881404();
  v98 = v42;
  v97 = v40;
  type metadata accessor for E5RTIOPort(v44);
  *(swift_initStackObject() + 16) = v43;
  v45 = sub_1C988196C();
  swift_setDeallocating();
  sub_1C98819BC();
  swift_deallocClassInstance();
  type metadata accessor for E5RTTensorDescriptor(v46);
  *(swift_initStackObject() + 16) = v45;
  v47 = sub_1C9881B70(v45);
  v49 = sub_1C9A0840C(v47, v48);
  swift_setDeallocating();
  sub_1C9881C7C();
  swift_deallocClassInstance();
  v50 = v49[2];
  if (v50)
  {
    v96 = v41;
    time.value = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v51 = 4;
    do
    {
      v99 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      ++v51;
      --v50;
    }

    while (v50);

    v36 = v128;
    v41 = v96;
  }

  else
  {
  }

  v53 = *(*&v124 + 48);
  type metadata accessor for SNUtils(v52);
  v54 = sub_1C9A16DC8();

  v55 = v53 >= 0.0 && v53 < 1.0;
  v56 = v125;
  if (!v55)
  {

    sub_1C986ECA4();
    swift_allocError();
    v39 = 1;
    goto LABEL_8;
  }

  v57 = round((1.0 - v53) * v127);
  if (v57 <= 1.0)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = v57;
  }

  v59 = v122[1];
  v131 = *v122;
  v132 = v59;
  v60 = v122[3];
  v133 = v122[2];
  v134 = v60;
  v61 = sub_1C97DD3BC(v54, v123);
  v124 = v57;
  v95 = v61;
  v122 = sub_1C98BF080();
  time.value = v122;
  v62 = v113;
  (*(v113 + 104))(v118, *MEMORY[0x1E695BD20], v119);
  v63 = v114;
  *v114 = sub_1C993AC58;
  v63[1] = 0;
  (*(v56 + 104))(v63, *MEMORY[0x1E695BD48], v121);
  v99 = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
  sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770);
  v64 = v118;
  sub_1C9A92018();
  (*(v56 + 8))(v63, v121);
  (*(v62 + 8))(v64, v119);

  v65 = sub_1C97A2CEC(&qword_1EC3C8260, &qword_1C9AA2900);
  sub_1C9813064(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0);
  v66 = v116;
  v125 = v65;
  v67 = v120;
  sub_1C9A91F68();
  result = (*(v115 + 8))(v67, v66);
  if (v57 > 1.0 && (*&v124 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_31;
  }

  v68 = v100;
  if (v58 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v96 = v41;
  v69 = v112;
  v70 = v117;
  if (v58 < 9.22337204e18)
  {
    *&v117[*(v112 + 60)] = v127;
    *(v70 + *(v69 + 64)) = v58;
    *(v70 + *(v69 + 68)) = v125;
    v71 = swift_allocObject();
    v71[2] = v36;
    v72 = v135;
    v73 = v123;
    v71[3] = v135;
    v71[4] = v73;
    v71[5] = v26;
    v71[6] = v68;
    v74 = v98;
    v71[7] = v98;
    sub_1C9813064(&qword_1EC3C9960, &qword_1EC3C9920, &qword_1C9AA7CB8);

    v75 = v68;
    v76 = v106;
    sub_1C9A92048();

    sub_1C97DA1E0(v70, &qword_1EC3C9920, &qword_1C9AA7CB8);
    v77 = swift_allocObject();
    *(v77 + 16) = v75;
    *(v77 + 24) = v74;
    sub_1C97A2CEC(qword_1EC3C9850, &unk_1C9AA7D00);
    v78 = v101;
    v79 = v108;
    sub_1C9A91CA8();

    (*(v107 + 8))(v76, v79);
    v80 = swift_allocObject();
    v81 = v128;
    *(v80 + 16) = v128;
    *(v80 + 24) = v72;
    v82 = v72;
    sub_1C9813064(&qword_1EC3C99A0, &qword_1EC3C9988, &qword_1C9AA7CF0);
    v83 = v102;
    v84 = v105;
    sub_1C9A92048();

    (*(v109 + 8))(v78, v84);
    v85 = swift_allocObject();
    *(v85 + 16) = v127;
    v86 = v123;
    *(v85 + 24) = v123;
    *(v85 + 32) = v58;
    *(v85 + 40) = v81;
    *(v85 + 48) = v82;
    v87 = v126;
    *(v85 + 56) = v86;
    *(v85 + 64) = v87;
    v88 = v96;
    *(v85 + 72) = v97;
    *(v85 + 80) = v88;
    v89 = v111;
    v90 = v104;
    v91 = v103;
    (*(v111 + 16))(v104, v83, v103);
    v92 = v110;
    v93 = (v90 + *(v110 + 52));
    *v93 = sub_1C993AC5C;
    v93[1] = 0;
    v94 = (v90 + *(v92 + 56));
    *v94 = sub_1C9871488;
    v94[1] = v85;
    sub_1C9813064(&qword_1EC3C99A8, &qword_1EC3C9978, &qword_1C9AA7CE0);

    v26 = sub_1C9A91F28();

    sub_1C97DA1E0(v90, &qword_1EC3C9978, &qword_1C9AA7CE0);
    (*(v89 + 8))(v83, v91);
    return v26;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C986D964@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v6 = sub_1C97A2CEC(&qword_1EC3C9AB8, &unk_1C9ABC1B0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = type metadata accessor for SoundRecognition.Session(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v27) = a2;
  v13 = sub_1C979B2A0(&v27);
  v33 = &unk_1F492E308;
  v34 = &off_1F492E480;
  v35 = &off_1F492E500;
  v14 = swift_allocObject();
  v27 = v14;
  v15 = *(a1 + 32);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  *(v14 + 48) = v15;

  sub_1C993F83C(&v27, v13, v17, v18, v19, v20, v21, v22, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  result = sub_1C97A592C(&v27);
  if (!v3)
  {
    v27 = *&v12[*(v10 + 20)];

    sub_1C97A2CEC(&unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C9813064(&unk_1EC3CE310, &unk_1EC3C9AC0, &unk_1C9AA7DB0);
    sub_1C9A91F68();

    sub_1C9813064(&unk_1EC3C9AD0, &qword_1EC3C9AB8, &unk_1C9ABC1B0);
    v24 = sub_1C9A91F28();
    (*(v7 + 8))(v9, v6);
    v25 = sub_1C9A91748();
    v26 = v37;
    (*(*(v25 - 8) + 16))(v37, v12, v25);
    sub_1C986F1E8(v12, type metadata accessor for SoundRecognition.Session);
    result = type metadata accessor for AccessibilitySoundRecognition.Session(0);
    *(v26 + *(result + 20)) = v24;
  }

  return result;
}

uint64_t sub_1C986DC84@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, _BYTE *)@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  *v8 = *a1;
  *&v8[16] = v4;
  *&v8[32] = *(a1 + 32);
  *&v8[48] = *(a1 + 48);
  a2(&v7, v8);
  v5 = v7;
  *a3 = *v8;
  *(a3 + 8) = *&v8[8];
  *(a3 + 24) = *&v8[24];
  *(a3 + 40) = *&v8[40];
  *(a3 + 56) = v5;
}

uint64_t sub_1C986DD10(uint64_t result, void *a2)
{
  v2 = *(result + 40);
  v3 = *(result + 48);
  v4 = __OFSUB__(v3, v2);
  v5 = v3 - v2;
  if (v5 < 0 != v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = *a2 + v5;
  if (!__OFADD__(*a2, v5))
  {
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

_OWORD *sub_1C986DD40(uint64_t a1, _OWORD *a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C99B0, &qword_1C9AB3560);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - v6;
  v8 = sub_1C97A2CEC(&qword_1EC3C99B8, &qword_1C9AA7D10);
  sub_1C97AE9C8();
  v10 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = a2[1];
  v37[0] = *a2;
  v37[1] = v14;
  v15 = a2[3];
  v37[2] = a2[2];
  v37[3] = v15;
  v16 = v37;
  v17 = sub_1C97DD3BC(1, 16000);
  if (!v2)
  {
    v36 = v17;
    v38 = sub_1C98BF080();
    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    v35 = v10;
    v18 = sub_1C97A2CEC(&qword_1EC3C8260, &qword_1C9AA2900);
    v34 = v8;
    v19 = v18;
    sub_1C97DA9B0();
    sub_1C9813064(v20, v21, &unk_1C9A9C770);
    sub_1C9A91F68();

    v22 = sub_1C97A2CEC(&qword_1EC3C99C0, &qword_1C9AA7D18);
    *&v7[v22[15]] = 9600;
    *&v7[v22[16]] = 9600;
    *&v7[v22[17]] = v19;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    sub_1C97AA878();
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1C986E634;
    *(v24 + 24) = 0;
    sub_1C97AA878();
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1C9871454;
    *(v25 + 24) = v23;
    v26 = &v7[*(v4 + 52)];
    *v26 = sub_1C98714BC;
    v26[1] = v25;
    v27 = &v7[*(v4 + 56)];
    *v27 = sub_1C98714E0;
    v27[1] = v24;
    sub_1C97AA878();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C9AA7B10;
    sub_1C97AA878();
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1C9871514;
    *(v29 + 24) = v28;
    sub_1C98719F4();
    v30 = swift_allocObject();
    v30[2] = sub_1C987141C;
    v30[3] = v29;
    v30[4] = sub_1C99DD048;
    v30[5] = 0;
    v30[6] = sub_1C99DD140;
    v30[7] = 0;

    sub_1C990E3A4(v13);

    sub_1C97DA1E0(v7, &qword_1EC3C99B0, &qword_1C9AB3560);
    sub_1C9813064(&qword_1EC3C99C8, &qword_1EC3C99B8, &qword_1C9AA7D10);
    v31 = v34;
    v16 = sub_1C9A91F28();

    (*(v35 + 8))(v13, v31);
  }

  return v16;
}

uint64_t sub_1C986E158(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3C99B0, &qword_1C9AB3560);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - v5;
  v7 = sub_1C97A2CEC(&qword_1EC3C99B8, &qword_1C9AA7D10);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = sub_1C990D6C8();
  if (!v2)
  {
    v28 = v11;
    v12 = sub_1C98BF080();
    v29 = v8;
    v30 = v12;
    sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    v13 = sub_1C97A2CEC(&qword_1EC3C8260, &qword_1C9AA2900);
    v27 = v7;
    v14 = v13;
    sub_1C9813064(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C9A91F68();

    v15 = sub_1C97A2CEC(&qword_1EC3C99C0, &qword_1C9AA7D18);
    *&v6[v15[15]] = 9600;
    *&v6[v15[16]] = 9600;
    *&v6[v15[17]] = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1C986E634;
    *(v17 + 24) = 0;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1C9806828;
    *(v18 + 24) = v16;
    v19 = &v6[*(v4 + 52)];
    *v19 = sub_1C986ED6C;
    v19[1] = v18;
    v20 = &v6[*(v4 + 56)];
    *v20 = sub_1C986ED64;
    v20[1] = v17;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C9AA7B10;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1C986ED98;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    v23[2] = sub_1C98068D4;
    v23[3] = v22;
    v23[4] = sub_1C99DD048;
    v23[5] = 0;
    v23[6] = sub_1C99DD140;
    v23[7] = 0;

    sub_1C990E3A4(v10);

    sub_1C97DA1E0(v6, &qword_1EC3C99B0, &qword_1C9AB3560);
    sub_1C9813064(&qword_1EC3C99C8, &qword_1EC3C99B8, &qword_1C9AA7D10);
    v24 = v27;
    a2 = sub_1C9A91F28();

    (*(v29 + 8))(v10, v24);
  }

  return a2;
}

unint64_t sub_1C986E5A8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1CCA932A0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1CCA932A0](&v3, 8);
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

uint64_t sub_1C986E634@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  result = sub_1C986DD10(v6, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C986E680@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, _BYTE *)@<X2>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return sub_1C986DC84(v5, a2, a3);
}

void sub_1C986E6BC(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(v5, __src, sizeof(v5));
  sub_1C9866918(v5);
  if (!v2)
  {
    *a2 = v4;
  }
}

void sub_1C986E768(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1C9862084(__dst);
  if (!v2)
  {
    *a2 = v4;
  }
}

uint64_t sub_1C986E7C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C98C0414();
  *a1 = result;
  return result;
}

void sub_1C986E824(void *a1@<X8>)
{
  sub_1C98620A8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1C986E878@<X0>(uint64_t *a1@<X8>, uint64_t *a2@<X0>, void (*a3)(uint64_t *__return_ptr, void *)@<X1>, uint64_t a4@<X2>, uint64_t *a5@<X3>)
{
  result = sub_1C97E8488(*a2, a3, a4, *a5, a5[1]);
  if (!v5)
  {
    *a1 = result;
  }

  return result;
}

void sub_1C986E8B0(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a2[1];
  v9[0] = *a2;
  v9[1] = v6;
  v7 = a2[3];
  v9[2] = a2[2];
  v9[3] = v7;
  sub_1C986693C(v5, v9);
  if (!v3)
  {
    *a3 = v8;
  }
}

uint64_t sub_1C986E8FC(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v6[2] = *(a1 + 32);
  v7 = *(a1 + 48);
  v3 = a2[1];
  v8 = *a2;
  v9 = v3;
  v4 = a2[3];
  v10 = a2[2];
  v11 = v4;
  return sub_1C98669B0(v6);
}

uint64_t sub_1C986E94C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 16);
  v6[0] = *a3;
  v6[1] = v4;
  v7 = *(a3 + 32);
  return sub_1C9866878(a1, a2, v6, a4);
}

uint64_t sub_1C986EC4C(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

unint64_t sub_1C986ECA4()
{
  result = qword_1EC3CD220;
  if (!qword_1EC3CD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CD220);
  }

  return result;
}

uint64_t sub_1C986ED6C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C978FF18(*(v1 + 16));
  *a1 = result;
  return result;
}

unint64_t sub_1C986EDCC()
{
  result = qword_1EC3C99D0;
  if (!qword_1EC3C99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C99D0);
  }

  return result;
}

unint64_t sub_1C986EE54()
{
  result = qword_1EC3CC4D0;
  if (!qword_1EC3CC4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CC4D0);
  }

  return result;
}

unint64_t sub_1C986EEEC()
{
  result = qword_1EC3C9A90;
  if (!qword_1EC3C9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9A90);
  }

  return result;
}

unint64_t sub_1C986EF8C()
{
  result = qword_1EC3C9AB0;
  if (!qword_1EC3C9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9AB0);
  }

  return result;
}

unint64_t sub_1C986F098()
{
  result = qword_1EC3C9AE0;
  if (!qword_1EC3C9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9AE0);
  }

  return result;
}

uint64_t sub_1C986F108@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C9AE8, &unk_1C9AA7DC0);
  sub_1C97DACE4(v2);
  result = sub_1C98C0414();
  *a1 = result;
  return result;
}

uint64_t sub_1C986F1E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C97DA940();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1C986F29C()
{
  result = qword_1EC3C9BD0;
  if (!qword_1EC3C9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9BD0);
  }

  return result;
}

unint64_t sub_1C986F2F0()
{
  result = qword_1EC3C9BD8;
  if (!qword_1EC3C9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9BD8);
  }

  return result;
}

unint64_t sub_1C986F344()
{
  result = qword_1EC3C9BE8;
  if (!qword_1EC3C9BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9BE8);
  }

  return result;
}

unint64_t sub_1C986F398()
{
  result = qword_1EC3C9BF0;
  if (!qword_1EC3C9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9BF0);
  }

  return result;
}

unint64_t sub_1C986F3EC()
{
  result = qword_1EC3C9BF8;
  if (!qword_1EC3C9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9BF8);
  }

  return result;
}

unint64_t sub_1C986F440()
{
  result = qword_1EC3C9C00;
  if (!qword_1EC3C9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C00);
  }

  return result;
}

unint64_t sub_1C986F494()
{
  result = qword_1EC3C9C08;
  if (!qword_1EC3C9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C08);
  }

  return result;
}

unint64_t sub_1C986F4E8()
{
  result = qword_1EC3C9C10;
  if (!qword_1EC3C9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C10);
  }

  return result;
}

unint64_t sub_1C986F53C()
{
  result = qword_1EC3C9C18;
  if (!qword_1EC3C9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C18);
  }

  return result;
}

unint64_t sub_1C986F590()
{
  result = qword_1EC3C9C20;
  if (!qword_1EC3C9C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C20);
  }

  return result;
}

unint64_t sub_1C986F5E4()
{
  result = qword_1EC3C9C28;
  if (!qword_1EC3C9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C28);
  }

  return result;
}

unint64_t sub_1C986F638()
{
  result = qword_1EC3C9C30;
  if (!qword_1EC3C9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C30);
  }

  return result;
}

unint64_t sub_1C986F68C()
{
  result = qword_1EC3C9C38;
  if (!qword_1EC3C9C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C38);
  }

  return result;
}

unint64_t sub_1C986F6E0()
{
  result = qword_1EC3C9C40;
  if (!qword_1EC3C9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C40);
  }

  return result;
}

unint64_t sub_1C986F734()
{
  result = qword_1EC3C9C48;
  if (!qword_1EC3C9C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C48);
  }

  return result;
}

unint64_t sub_1C986F788()
{
  result = qword_1EC3C9C50;
  if (!qword_1EC3C9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C50);
  }

  return result;
}

unint64_t sub_1C986F7DC()
{
  result = qword_1EC3C9C58;
  if (!qword_1EC3C9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C58);
  }

  return result;
}

unint64_t sub_1C986F830()
{
  result = qword_1EC3C9C60;
  if (!qword_1EC3C9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C60);
  }

  return result;
}

unint64_t sub_1C986F884()
{
  result = qword_1EC3C9C68;
  if (!qword_1EC3C9C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C68);
  }

  return result;
}

unint64_t sub_1C986F8D8()
{
  result = qword_1EC3C9C70;
  if (!qword_1EC3C9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C70);
  }

  return result;
}

unint64_t sub_1C986F92C()
{
  result = qword_1EC3C9C78;
  if (!qword_1EC3C9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C78);
  }

  return result;
}

unint64_t sub_1C986F980()
{
  result = qword_1EC3C9C80;
  if (!qword_1EC3C9C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C80);
  }

  return result;
}

unint64_t sub_1C986F9D4()
{
  result = qword_1EC3C9C88;
  if (!qword_1EC3C9C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C88);
  }

  return result;
}

unint64_t sub_1C986FA28()
{
  result = qword_1EC3C9C90;
  if (!qword_1EC3C9C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C90);
  }

  return result;
}

unint64_t sub_1C986FA7C()
{
  result = qword_1EC3C9C98;
  if (!qword_1EC3C9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9C98);
  }

  return result;
}

unint64_t sub_1C986FAD0()
{
  result = qword_1EC3C9CA0;
  if (!qword_1EC3C9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9CA0);
  }

  return result;
}

uint64_t sub_1C986FB24(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C986FB68(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C97DA940();
  (*(v5 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C986FBC8()
{
  result = qword_1EC3C9D28;
  if (!qword_1EC3C9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D28);
  }

  return result;
}

unint64_t sub_1C986FC1C()
{
  result = qword_1EC3C9D30;
  if (!qword_1EC3C9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D30);
  }

  return result;
}

unint64_t sub_1C986FC70()
{
  result = qword_1EC3C9D38;
  if (!qword_1EC3C9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D38);
  }

  return result;
}

unint64_t sub_1C986FCC4()
{
  result = qword_1EC3C9D40;
  if (!qword_1EC3C9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D40);
  }

  return result;
}

unint64_t sub_1C986FD18()
{
  result = qword_1EC3C9D48;
  if (!qword_1EC3C9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D48);
  }

  return result;
}

unint64_t sub_1C986FD6C()
{
  result = qword_1EC3C9D50;
  if (!qword_1EC3C9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D50);
  }

  return result;
}

unint64_t sub_1C986FDC0()
{
  result = qword_1EC3C9D58;
  if (!qword_1EC3C9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D58);
  }

  return result;
}

unint64_t sub_1C986FE14()
{
  result = qword_1EC3C9D60;
  if (!qword_1EC3C9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D60);
  }

  return result;
}

unint64_t sub_1C986FE68()
{
  result = qword_1EC3C9D68;
  if (!qword_1EC3C9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D68);
  }

  return result;
}

unint64_t sub_1C986FEBC()
{
  result = qword_1EC3C9D70;
  if (!qword_1EC3C9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D70);
  }

  return result;
}

unint64_t sub_1C986FF10()
{
  result = qword_1EC3C9D78;
  if (!qword_1EC3C9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D78);
  }

  return result;
}

unint64_t sub_1C986FF64()
{
  result = qword_1EC3C9D80;
  if (!qword_1EC3C9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D80);
  }

  return result;
}

uint64_t sub_1C986FFB8()
{

  sub_1C98719F4();

  return swift_deallocObject();
}

uint64_t sub_1C987002C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C98700B0()
{

  sub_1C98719F4();

  return swift_deallocObject();
}

uint64_t sub_1C9870120()
{

  return swift_deallocObject();
}

uint64_t sub_1C98701AC()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 168);
  if ((~v1 & 0xF000000000000007) != 0)
  {
  }

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for RemoteRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF4)
  {
    if (a2 + 12 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 12) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 13;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v5 = v6 - 13;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RemoteRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
          *result = a2 + 12;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C9870500(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C98705B0()
{
  result = qword_1EC3C9D88;
  if (!qword_1EC3C9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D88);
  }

  return result;
}

unint64_t sub_1C9870608()
{
  result = qword_1EC3C9D90;
  if (!qword_1EC3C9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D90);
  }

  return result;
}

unint64_t sub_1C9870660()
{
  result = qword_1EC3C9D98;
  if (!qword_1EC3C9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9D98);
  }

  return result;
}

unint64_t sub_1C98706B8()
{
  result = qword_1EC3C9DA0;
  if (!qword_1EC3C9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DA0);
  }

  return result;
}

unint64_t sub_1C9870710()
{
  result = qword_1EC3C9DA8;
  if (!qword_1EC3C9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DA8);
  }

  return result;
}

unint64_t sub_1C9870768()
{
  result = qword_1EC3C9DB0;
  if (!qword_1EC3C9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DB0);
  }

  return result;
}

unint64_t sub_1C98707C0()
{
  result = qword_1EC3C9DB8;
  if (!qword_1EC3C9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DB8);
  }

  return result;
}

unint64_t sub_1C9870818()
{
  result = qword_1EC3C9DC0;
  if (!qword_1EC3C9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DC0);
  }

  return result;
}

unint64_t sub_1C9870870()
{
  result = qword_1EC3C9DC8;
  if (!qword_1EC3C9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DC8);
  }

  return result;
}

unint64_t sub_1C98708C8()
{
  result = qword_1EC3C9DD0;
  if (!qword_1EC3C9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DD0);
  }

  return result;
}

unint64_t sub_1C9870920()
{
  result = qword_1EC3C9DD8;
  if (!qword_1EC3C9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DD8);
  }

  return result;
}

unint64_t sub_1C9870978()
{
  result = qword_1EC3C9DE0;
  if (!qword_1EC3C9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DE0);
  }

  return result;
}

unint64_t sub_1C98709D0()
{
  result = qword_1EC3C9DE8;
  if (!qword_1EC3C9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DE8);
  }

  return result;
}

unint64_t sub_1C9870A28()
{
  result = qword_1EC3C9DF0;
  if (!qword_1EC3C9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DF0);
  }

  return result;
}

unint64_t sub_1C9870A80()
{
  result = qword_1EC3C9DF8;
  if (!qword_1EC3C9DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9DF8);
  }

  return result;
}

unint64_t sub_1C9870AD8()
{
  result = qword_1EC3C9E00;
  if (!qword_1EC3C9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E00);
  }

  return result;
}

unint64_t sub_1C9870B30()
{
  result = qword_1EC3C9E08;
  if (!qword_1EC3C9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E08);
  }

  return result;
}

unint64_t sub_1C9870B88()
{
  result = qword_1EC3C9E10;
  if (!qword_1EC3C9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E10);
  }

  return result;
}

unint64_t sub_1C9870BE0()
{
  result = qword_1EC3C9E18;
  if (!qword_1EC3C9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E18);
  }

  return result;
}

unint64_t sub_1C9870C38()
{
  result = qword_1EC3C9E20;
  if (!qword_1EC3C9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E20);
  }

  return result;
}

unint64_t sub_1C9870C90()
{
  result = qword_1EC3C9E28;
  if (!qword_1EC3C9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E28);
  }

  return result;
}

unint64_t sub_1C9870CE8()
{
  result = qword_1EC3C9E30;
  if (!qword_1EC3C9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E30);
  }

  return result;
}

unint64_t sub_1C9870D40()
{
  result = qword_1EC3C9E38;
  if (!qword_1EC3C9E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E38);
  }

  return result;
}

unint64_t sub_1C9870D98()
{
  result = qword_1EC3C9E40;
  if (!qword_1EC3C9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E40);
  }

  return result;
}

unint64_t sub_1C9870DF0()
{
  result = qword_1EC3C9E48;
  if (!qword_1EC3C9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E48);
  }

  return result;
}

unint64_t sub_1C9870E48()
{
  result = qword_1EC3C9E50;
  if (!qword_1EC3C9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E50);
  }

  return result;
}

unint64_t sub_1C9870EA0()
{
  result = qword_1EC3C9E58;
  if (!qword_1EC3C9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E58);
  }

  return result;
}

unint64_t sub_1C9870EF8()
{
  result = qword_1EC3C9E60;
  if (!qword_1EC3C9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E60);
  }

  return result;
}

unint64_t sub_1C9870F50()
{
  result = qword_1EC3C9E68;
  if (!qword_1EC3C9E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E68);
  }

  return result;
}

unint64_t sub_1C9870FA8()
{
  result = qword_1EC3C9E70;
  if (!qword_1EC3C9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E70);
  }

  return result;
}

unint64_t sub_1C9871000()
{
  result = qword_1EC3C9E78;
  if (!qword_1EC3C9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E78);
  }

  return result;
}

unint64_t sub_1C9871058()
{
  result = qword_1EC3C9E80;
  if (!qword_1EC3C9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E80);
  }

  return result;
}

unint64_t sub_1C98710B0()
{
  result = qword_1EC3C9E88;
  if (!qword_1EC3C9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E88);
  }

  return result;
}

unint64_t sub_1C9871108()
{
  result = qword_1EC3C9E90;
  if (!qword_1EC3C9E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E90);
  }

  return result;
}

unint64_t sub_1C9871160()
{
  result = qword_1EC3C9E98;
  if (!qword_1EC3C9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9E98);
  }

  return result;
}

unint64_t sub_1C98711B8()
{
  result = qword_1EC3C9EA0;
  if (!qword_1EC3C9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EA0);
  }

  return result;
}

unint64_t sub_1C9871210()
{
  result = qword_1EC3C9EA8;
  if (!qword_1EC3C9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EA8);
  }

  return result;
}

unint64_t sub_1C9871268()
{
  result = qword_1EC3C9EB0;
  if (!qword_1EC3C9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EB0);
  }

  return result;
}

unint64_t sub_1C98712C0()
{
  result = qword_1EC3C9EB8;
  if (!qword_1EC3C9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EB8);
  }

  return result;
}

unint64_t sub_1C9871318()
{
  result = qword_1EC3C9EC0;
  if (!qword_1EC3C9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EC0);
  }

  return result;
}

unint64_t sub_1C9871370()
{
  result = qword_1EC3C9EC8;
  if (!qword_1EC3C9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EC8);
  }

  return result;
}

unint64_t sub_1C98713C8()
{
  result = qword_1EC3C9ED0;
  if (!qword_1EC3C9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9ED0);
  }

  return result;
}

uint64_t sub_1C9871564(uint64_t a1, uint64_t a2)
{

  return sub_1C9A93858();
}

uint64_t sub_1C98715B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93988();
}

uint64_t sub_1C9871638()
{

  return sub_1C986F1E8(v0, type metadata accessor for RemoteRequest);
}

void sub_1C98716A0()
{
  *(v1 - 592) = v0;
  *(v1 - 624) = *(v1 - 280);
  *(v1 - 568) = *(v1 - 272);
  *(v1 - 656) = *(v1 - 268);
  *(v1 - 632) = *(v1 - 264);
  *(v1 - 640) = *(v1 - 256);
  *(v1 - 320) = *(v1 - 248);
  *(v1 - 664) = *(v1 - 244);
  *(v1 - 648) = *(v1 - 240);
}

uint64_t sub_1C987175C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1C9871778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A93A18();
}

uint64_t sub_1C98717DC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C9813064(a1, a2, a3);
}

uint64_t sub_1C9871800(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1C9813064(a1, a2, a3);
}

uint64_t sub_1C9871824(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C9871844(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1C9871864(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

id sub_1C987190C()
{

  return sub_1C99B590C();
}

uint64_t sub_1C9871934(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v4;
  *(a1 + 48) = v3;
}

uint64_t sub_1C987195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9A938F8();
}

void *sub_1C98719DC(void *a1)
{

  return memcpy(a1, v1, 0x41uLL);
}

__n128 sub_1C9871A80(uint64_t a1)
{
  v2 = *(v1 + 32);
  result = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = result;
  *(a1 + 48) = v2;
  return result;
}

uint64_t sub_1C9871AE8()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1C9871B08()
{

  return swift_task_alloc();
}

uint64_t sub_1C9871B28()
{
}

double SNSpeechDistanceResult.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNSpeechDistanceResult_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

BOOL sub_1C9871BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v2;
  v14[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v6;
  v13[2] = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = static TimeRange.== infix(_:_:)(v14, v13);
  result = 0;
  if (v10 && v3 == v7 && v4 == v8)
  {
    return v5 == v9;
  }

  return result;
}

uint64_t sub_1C9871C44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001C9AD7260 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756C61566E61656DLL && a2 == 0xE900000000000065;
      if (v7 || (sub_1C9A93B18() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000011 && 0x80000001C9AD7290 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C9A93B18();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C9871DB4(char a1)
{
  result = 0x676E6152656D6974;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x756C61566E61656DLL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C9871E38(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3C9F08, &qword_1C9AA9088);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  v12 = *(v3 + 48);
  v11 = *(v3 + 56);
  v13 = *(v3 + 64);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9873240();
  sub_1C9A93DD8();
  v14 = *(v3 + 16);
  v16[0] = *v3;
  v16[1] = v14;
  v16[2] = *(v3 + 32);
  v17 = 0;
  sub_1C97BD12C();
  sub_1C9A93A18();
  if (!v2)
  {
    LOBYTE(v16[0]) = 1;
    sub_1C987349C(v16, v12);
    LOBYTE(v16[0]) = 2;
    sub_1C987349C(v16, v11);
    LOBYTE(v16[0]) = 3;
    sub_1C987349C(v16, v13);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C9871FF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  if (v4 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v4;
  }

  MEMORY[0x1CCA919B0](*&v7);
  if (v5 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v5;
  }

  MEMORY[0x1CCA919B0](*&v8);
  if (v6 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  return MEMORY[0x1CCA919B0](*&v9);
}

uint64_t sub_1C98720CC()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x1CCA919B0](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x1CCA919B0](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1CCA919B0](*&v10);
  return sub_1C9A93D18();
}

uint64_t sub_1C98721F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3C9EF0, &qword_1C9AA9080);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9873240();
  sub_1C9A93DB8();
  if (!v2)
  {
    v16[15] = 0;
    sub_1C97BD0D8();
    sub_1C9A938F8();
    v20 = v17;
    v21 = v18;
    v22 = v19;
    v11 = sub_1C9873478(1);
    v13 = sub_1C9873478(2);
    v14 = sub_1C9873478(3);
    (*(v7 + 8))(v10, v5);
    v15 = v21;
    *a2 = v20;
    *(a2 + 16) = v15;
    *(a2 + 32) = v22;
    *(a2 + 48) = v11;
    *(a2 + 56) = v13;
    *(a2 + 64) = v14;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C98723EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9871C44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9872414(uint64_t a1)
{
  v2 = sub_1C9873240();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C9872450(uint64_t a1)
{
  v2 = sub_1C9873240();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C9872494()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  v4 = *(v0 + 5);
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](*&v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x1CCA919B0](*&v8);
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v5;
  }

  MEMORY[0x1CCA919B0](*&v9);
  if (v7 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = v7;
  }

  MEMORY[0x1CCA919B0](*&v10);
  return sub_1C9A93D18();
}

double SNSpeechDistanceResult.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNSpeechDistanceResult_impl;
  v3 = *(v1 + OBJC_IVAR___SNSpeechDistanceResult_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNSpeechDistanceResult_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double sub_1C98726D4@<D0>(_OWORD *a1@<X8>)
{
  SNSpeechDistanceResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNSpeechDistanceResult.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNSpeechDistanceResult.timeRange.getter((v3 + 1));
  return sub_1C987277C;
}

void sub_1C987277C(void **a1)
{
  v1 = *a1;
  SNSpeechDistanceResult.timeRange.setter(*a1 + 8);

  free(v1);
}

id sub_1C98728D0()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E6960C98];
  v3 = *(MEMORY[0x1E6960C98] + 40);
  v4 = &v0[OBJC_IVAR___SNSpeechDistanceResult_impl];
  *v4 = *MEMORY[0x1E6960C98];
  *(v4 + 1) = *(v2 + 8);
  *(v4 + 1) = *(v2 + 16);
  *(v4 + 4) = *(v2 + 32);
  *(v4 + 5) = v3;
  *(v4 + 6) = 0;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void *SNSpeechDistanceResult.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  memcpy(__dst, (v1 + OBJC_IVAR___SNSpeechDistanceResult_impl), sizeof(__dst));
  v4 = objc_allocWithZone(ObjectType);
  memcpy(&v4[OBJC_IVAR___SNSpeechDistanceResult_impl], __dst, 0x48uLL);
  v6.receiver = v4;
  v6.super_class = ObjectType;
  result = objc_msgSendSuper2(&v6, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL SNSpeechDistanceResult.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v11);
  if (v12)
  {
    sub_1C97A2D34(&v11, v10);
    sub_1C97BD360(v10, v9);
    if (swift_dynamicCast())
    {
      v3 = v8;
      memcpy(__dst, (v1 + OBJC_IVAR___SNSpeechDistanceResult_impl), sizeof(__dst));
      memcpy(v6, &v8[OBJC_IVAR___SNSpeechDistanceResult_impl], sizeof(v6));
      v4 = sub_1C9871BB4(__dst, v6);
    }

    else
    {
      v4 = 0;
    }

    sub_1C97A592C(v10);
  }

  else
  {
    return 0;
  }

  return v4;
}

id SNSpeechDistanceResult.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A1A4C(1819307369, 0xE400000000000000);
  v3 = objc_allocWithZone(ObjectType);
  memcpy(&v3[OBJC_IVAR___SNSpeechDistanceResult_impl], __src, 0x48uLL);
  v7.receiver = v3;
  v7.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v7, sel_init);

  v5 = swift_getObjectType();
  sub_1C98285C4(v5);
  return v4;
}

uint64_t SNSpeechDistanceResult.description.getter()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v42[0] = 0;
  *(&v42[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v41 = v42[0];
  v40.receiver = v0;
  v40.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v40, sel_description);
  v4 = sub_1C9A924A8();
  v6 = v5;

  MEMORY[0x1CCA90230](v4, v6);

  v7 = MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9AD7200);
  v8 = &v1[OBJC_IVAR___SNSpeechDistanceResult_impl];
  sub_1C98734B8(*&v1[OBJC_IVAR___SNSpeechDistanceResult_impl + 56], v7, v9, v10, v11, v12, v13, v14, v15);
  v16 = MEMORY[0x1CCA90230](0xD000000000000016, 0x80000001C9AD7220);
  sub_1C98734B8(v8[8], v16, v17, v18, v19, v20, v21, v22, v23);
  v24 = MEMORY[0x1CCA90230](0xD000000000000017, 0x80000001C9AD7240);
  sub_1C98734B8(v8[6], v24, v25, v26, v27, v28, v29, v30, v31);
  MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
  SNSpeechDistanceResult.timeRange.getter(v42);
  v32 = objc_opt_self();
  v39[0] = v42[0];
  v39[1] = v42[1];
  v39[2] = v42[2];
  v33 = [v32 valueWithCMTimeRange_];
  v34 = [v33 description];
  v35 = sub_1C9A924A8();
  v37 = v36;

  MEMORY[0x1CCA90230](v35, v37);

  return v41;
}

id SNSpeechDistanceResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C98730FC@<D0>(_OWORD *a1@<X8>)
{
  SNSpeechDistanceResult.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1C987317C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C987319C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

unint64_t sub_1C98731EC()
{
  result = qword_1EC3C9EE8;
  if (!qword_1EC3C9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EE8);
  }

  return result;
}

unint64_t sub_1C9873240()
{
  result = qword_1EC3C9EF8;
  if (!qword_1EC3C9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9EF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpeechDistanceResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C9873374()
{
  result = qword_1EC3C9F18;
  if (!qword_1EC3C9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9F18);
  }

  return result;
}

unint64_t sub_1C98733CC()
{
  result = qword_1EC3C9F20;
  if (!qword_1EC3C9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9F20);
  }

  return result;
}

unint64_t sub_1C9873424()
{
  result = qword_1EC3C9F28;
  if (!qword_1EC3C9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9F28);
  }

  return result;
}

double sub_1C9873478@<D0>(char a1@<W8>)
{
  *(v1 - 194) = a1;

  sub_1C9A938C8();
  return result;
}

uint64_t sub_1C987349C(uint64_t a1, double a2)
{

  return sub_1C9A939E8();
}

uint64_t sub_1C98734B8(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_1C9A92AF8();
}

void sub_1C98734D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = sub_1C97A2CEC(&qword_1EC3C9FB8, &qword_1C9AA9208);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  sub_1C988A58C(&v46);
  if (!v4)
  {
    v41 = v3;
    v42 = a1;
    v43 = a2;
    v11 = v48;
    v51 = v48;
    v12 = *(v48 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    v44 = a3;
    if (v12)
    {
      v38 = 0;
      v39 = v10;
      v40 = v8;
      v45[0] = MEMORY[0x1E69E7CC0];
      sub_1C97B7C5C(0, v12, 0);
      v13 = v45[0];
      v14 = (v11 + 56);
      do
      {
        v16 = *(v14 - 3);
        v15 = *(v14 - 2);
        v17 = *(v14 - 1);
        v18 = *v14;
        v45[0] = v13;
        v20 = *(v13 + 16);
        v19 = *(v13 + 24);

        if (v20 >= v19 >> 1)
        {
          sub_1C97B7C5C((v19 > 1), v20 + 1, 1);
          v13 = v45[0];
        }

        *(v13 + 16) = v20 + 1;
        v21 = (v13 + 32 * v20);
        v21[4] = v16;
        v21[5] = v15;
        v21[6] = v17;
        v21[7] = v18;
        v14 += 4;
        --v12;
      }

      while (v12);
      v10 = v39;
      v8 = v40;
    }

    v40 = sub_1C992C280(v13);
    v49 = v47;
    v50 = v46;
    v22 = swift_allocObject();
    v23 = v47;
    *(v22 + 16) = v46;
    *(v22 + 32) = v23;
    *(v22 + 48) = v48;
    sub_1C97CE434(&v50, v45);
    sub_1C97CE434(&v49, v45);
    sub_1C97E82EC(&v51, v45, &qword_1EC3C9FC0, &unk_1C9AA9210);
    sub_1C97A2CEC(&qword_1EC3C9F98, &qword_1C9AA91F8);
    sub_1C97A2CEC(qword_1EC3C9850, &unk_1C9AA7D00);
    sub_1C97AE67C(&qword_1EC3C9FC8, &qword_1EC3C9F98, &qword_1C9AA91F8, MEMORY[0x1E695BD60]);
    sub_1C9A91F68();

    v24 = swift_allocObject();
    v25 = v42;
    v26 = v43;
    *(v24 + 16) = v42;
    *(v24 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v40;
    *(v27 + 16) = v40;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1C9875D04;
    *(v29 + 24) = v27;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1C9875D20;
    *(v30 + 24) = v29;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1C9875CE8;
    *(v31 + 24) = v24;
    v32 = swift_allocObject();
    v32[2] = sub_1C9A01F34;
    v32[3] = 0;
    v32[4] = sub_1C9875D58;
    v32[5] = v31;
    v32[6] = sub_1C9875D3C;
    v32[7] = v30;
    v33 = swift_allocObject();
    *(v33 + 2) = v25;
    *(v33 + 3) = v26;
    *(v33 + 4) = v28;
    v34 = &v10[*(v8 + 52)];
    *v34 = sub_1C9875D98;
    v34[1] = v33;
    v35 = &v10[*(v8 + 56)];
    *v35 = sub_1C9875D74;
    *(v35 + 1) = v32;
    v36 = swift_allocObject();
    v37 = v47;
    *(v36 + 16) = v46;
    *(v36 + 32) = v37;
    *(v36 + 48) = v48;
    sub_1C97AE67C(&qword_1EC3C9FD0, &qword_1EC3C9FB8, &qword_1C9AA9208, &unk_1C9AC4ED0);
    swift_retain_n();
    swift_retain_n();

    sub_1C9A92048();

    sub_1C97DA1E0(v10, &qword_1EC3C9FB8, &qword_1C9AA9208);
  }
}

uint64_t sub_1C98739B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = a1;
  v14 = a2;
  v12[1] = a3;
  v3 = sub_1C97A2CEC(&qword_1EC3C9F98, &qword_1C9AA91F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = sub_1C97A2CEC(&qword_1EC3C9FA0, &qword_1C9AA9200);
  v12[0] = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  sub_1C97A2CEC(&qword_1EC3C9F40, &qword_1C9AA91B8);
  sub_1C97AE67C(&qword_1EC3C9FA8, &qword_1EC3C9F40, &qword_1C9AA91B8, MEMORY[0x1E695BD60]);
  sub_1C9A91F68();
  v10 = v15;
  sub_1C98734D4(v13, v14, v9);
  result = (*(v4 + 8))(v6, v3);
  if (!v10)
  {
    sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
    sub_1C97AE67C(&qword_1EC3C9FB0, &qword_1EC3C9FA0, &qword_1C9AA9200, MEMORY[0x1E695BE28]);
    sub_1C9A91F68();
    return (*(v12[0] + 8))(v9, v7);
  }

  return result;
}

char *sub_1C9873C44(uint64_t a1, unint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  switch(a2 >> 62)
  {
    case 1uLL:
      v4 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = v4;
      return sub_1C9875B60(a1, v5);
    case 2uLL:
      v6 = *(a1 + 24);
      a1 = *(a1 + 16);
      v5 = v6;
      return sub_1C9875B60(a1, v5);
    case 3uLL:
      return v2;
    default:
      v8 = a1;
      v9 = a2;
      v10 = BYTE2(a2);
      v11 = BYTE3(a2);
      v12 = BYTE4(a2);
      v13 = BYTE5(a2);
      return sub_1C9873DC0(&v8, (a2 >> 50) & 0x3F);
  }
}

void *sub_1C9873D8C(const void *a1, uint64_t a2)
{
  if (a1)
  {
    return sub_1C9873DC0(a1, (a2 - a1) / 4);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

void *sub_1C9873DC0(const void *a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (a2 <= 0)
  {
    v4 = 4 * a2;
    v5 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C97A2CEC(&qword_1EC3C6938, &qword_1C9A9D3F0);
    v4 = 4 * a2;
    v5 = swift_allocObject();
    v6 = j__malloc_size(v5);
    v5[2] = a2;
    v5[3] = 2 * ((v6 - 32) / 4);
  }

  memcpy(v5 + 4, a1, v4);
  return v5;
}

uint64_t sub_1C9873E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v75 = a2;
  v69 = sub_1C97A2CEC(&qword_1EC3C9F38, &qword_1C9AA91B0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v4);
  v67 = &v54 - v5;
  v70 = sub_1C97A2CEC(&qword_1EC3C9F40, &qword_1C9AA91B8);
  sub_1C97AE9C8();
  v68 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v54 - v8;
  v72 = sub_1C97A2CEC(&qword_1EC3C9F48, &qword_1C9AA91C0);
  sub_1C97AE9C8();
  v63 = v9;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v54 - v11;
  v12 = sub_1C97A2CEC(&qword_1EC3C9F50, &qword_1C9AA91C8);
  sub_1C97AE9C8();
  v64 = v13;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v17 = sub_1C97A2CEC(&qword_1EC3C9F58, &qword_1C9AA91D0);
  sub_1C97DA940();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = sub_1C97A2CEC(&qword_1EC3C9F60, &qword_1C9AA91D8);
  sub_1C97AE9C8();
  v23 = v22;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  v27 = v74;
  v28 = sub_1C9874628(a1, v75);
  if (!v27)
  {
    v74 = a1;
    v31 = v72;
    v58 = v16;
    v59 = v20;
    v60 = v17;
    v61 = v26;
    v62 = v23;
    v57 = v21;
    if (*(v73 + 16) == v29)
    {
      if (v28 >= 1)
      {
        v55 = v30;
        v56 = v29;
        v32 = v28;
        sub_1C97A2CEC(&qword_1EC3C99E0, &qword_1C9AA54F8);
        sub_1C97DA940();
        v34 = v67;
        (*(v33 + 16))(v67, v65);
        v35 = sub_1C97A2CEC(&qword_1EC3C9F68, &unk_1C9AA91E0);
        v36 = (v34 + *(v35 + 52));
        *v36 = sub_1C991B428;
        v36[1] = 0;
        v37 = (v34 + *(v35 + 56));
        *v37 = sub_1C9875C74;
        v37[1] = 0;
        v38 = sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
        v39 = v69;
        *(v34 + *(v69 + 60)) = v32;
        *(v34 + *(v39 + 64)) = v32;
        v40 = *(v39 + 68);
        v54 = v38;
        *(v34 + v40) = v38;
        v65 = sub_1C97A2CEC(&qword_1EC3CD680, &qword_1C9A9D4D0);
        sub_1C97AE67C(&qword_1EC3C9F70, &qword_1EC3C9F38, &qword_1C9AA91B0, &unk_1C9AB2030);
        v41 = v66;
        sub_1C9A91F68();
        sub_1C97DA1E0(v34, &qword_1EC3C9F38, &qword_1C9AA91B0);
        v42 = v71;
        sub_1C98739B0(v74, v75, v71);
        (*(v68 + 8))(v41, v70);
        v75 = 0;
        v43 = swift_allocObject();
        v44 = v55;
        v45 = v56;
        v43[2] = v32;
        v43[3] = v45;
        v46 = v73;
        v43[4] = v44;
        v43[5] = v46;
        v74 = MEMORY[0x1E695BD60];
        sub_1C97AE67C(&qword_1EC3C9F78, &qword_1EC3C9F48, &qword_1C9AA91C0, MEMORY[0x1E695BD60]);

        v47 = v58;
        sub_1C9A92048();

        (*(v63 + 8))(v42, v31);
        v48 = swift_allocObject();
        *(v48 + 16) = sub_1C9874F84;
        *(v48 + 24) = 0;
        sub_1C97A2CEC(&unk_1EC3C73A0, &qword_1C9A9C788);
        sub_1C97AE67C(&qword_1EC3C9F80, &qword_1EC3C9F50, &qword_1C9AA91C8, MEMORY[0x1E695BE28]);
        sub_1C97AE67C(&unk_1EC3C4AE0, &unk_1EC3C73A0, &qword_1C9A9C788, MEMORY[0x1E695BDA0]);
        v49 = v59;
        sub_1C9A92078();

        (*(v64 + 8))(v47, v12);
        sub_1C97F07FC();
        *(swift_allocObject() + 16) = v46;

        sub_1C97A2CEC(&qword_1EC3C82B8, &qword_1C9AA91F0);
        sub_1C97AE67C(&qword_1EC3C9F88, &qword_1EC3C9F58, &qword_1C9AA91D0, &unk_1C9ABD308);
        v50 = v61;
        sub_1C9A91F68();

        sub_1C97DA1E0(v49, &qword_1EC3C9F58, &qword_1C9AA91D0);
        sub_1C97AE67C(&qword_1EC3C9F90, &qword_1EC3C9F60, &qword_1C9AA91D8, v74);
        v51 = v57;
        a1 = sub_1C9A91F28();
        (*(v62 + 8))(v50, v51);
        return a1;
      }

      a1 = 5;
    }

    else
    {
      a1 = 6;
    }

    sub_1C9875B0C();
    sub_1C97A7A80(&type metadata for MicroSoundPrintUtils.DomainError);
    *v52 = a1;
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_1C9874628(uint64_t a1, uint64_t a2)
{
  sub_1C988A58C(v80);
  if (v2)
  {
    return v3;
  }

  v4 = sub_1C9881404();
  type metadata accessor for E5RTIOPort(v5);
  *(swift_initStackObject() + 16) = v4;
  v3 = sub_1C988196C();
  swift_setDeallocating();
  sub_1C98819BC();
  sub_1C97F07FC();
  swift_deallocClassInstance();
  type metadata accessor for E5RTTensorDescriptor(v6);
  *(swift_initStackObject() + 16) = v3;
  v8 = sub_1C98813B4();

  *(swift_initStackObject() + 16) = v8;
  v81 = v80[4];
  sub_1C97DA1E0(&v81, &qword_1EC3C9FC0, &unk_1C9AA9210);
  v9 = sub_1C988196C();
  swift_setDeallocating();
  sub_1C98819BC();
  sub_1C97F07FC();
  swift_deallocClassInstance();
  *(swift_initStackObject() + 16) = v9;
  v10 = sub_1C9881C2C();
  type metadata accessor for E5RTTensorDescriptorDataType(v11);
  *(swift_initStackObject() + 16) = v10;
  v12 = sub_1C987ED10();
  if (v12 != 1 || sub_1C987EDA8() != 4)
  {
    sub_1C9875B0C();
    sub_1C97A7A80(&type metadata for MicroSoundPrintUtils.DomainError);
    *v15 = 0;
    swift_willThrow();
LABEL_13:
    swift_setDeallocating();
    sub_1C9881DCC();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    swift_setDeallocating();
    sub_1C9881C7C();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    swift_setDeallocating();
    sub_1C9881C7C();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    return v3;
  }

  v13 = sub_1C9881C2C();
  *(swift_initStackObject() + 16) = v13;
  if (sub_1C987ED10() != 1 || sub_1C987EDA8() != 4)
  {
    sub_1C9875B0C();
    sub_1C97A7A80(&type metadata for MicroSoundPrintUtils.DomainError);
    v17 = 1;
LABEL_15:
    *v16 = v17;
    swift_willThrow();
    goto LABEL_16;
  }

  if (qword_1EC3C5DE8 != -1)
  {
    swift_once();
  }

  if (byte_1EC3D32B8)
  {
    v14 = qword_1EC3D3290;
    sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
    swift_willThrowTypedImpl();
LABEL_16:
    swift_setDeallocating();
    sub_1C9881DCC();
    sub_1C97F07FC();
    swift_deallocClassInstance();
    goto LABEL_13;
  }

  v18 = *(qword_1EC3D32B0 + 16);
  v73 = *(qword_1EC3D32A8 + 16);
  v76 = *(qword_1EC3D32A0 + 16);
  v82 = qword_1EC3D32A0;

  v77 = sub_1C992BBB4(v18, v76, v73, v19);

  v20 = sub_1C9881B70(v3);
  v22 = sub_1C9A0840C(v20, v21);
  v69 = sub_1C9A1692C(v22);
  if (v23 & 1) != 0 || (, v24 = sub_1C98751E8(1, v22), v3 = sub_1C9A16950(v24, v25, v26, v27), LODWORD(v82) = v28, swift_unknownObjectRelease(), (v82))
  {

LABEL_20:
    sub_1C9875B0C();
    sub_1C97A7A80(&type metadata for MicroSoundPrintUtils.DomainError);
    v17 = 2;
    goto LABEL_15;
  }

  result = sub_1C98751E8(2, v22);
  v68 = result;
  v32 = (v31 >> 1) - v30;
  if (v31 >> 1 == v30)
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    if ((v31 >> 1) <= v30)
    {
      __break(1u);
      goto LABEL_55;
    }

    v82 = v29 + 8 * v30;
    v33 = MEMORY[0x1E69E7CC0];
    do
    {
      v43 = *v82;
      v82 += 8;
      v74 = v43;
      if (v43 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C9876068();
        }

        sub_1C987608C();
        if (v53)
        {
          sub_1C9876044(v52, v67, v68, v69, v71, v72);
        }

        sub_1C987602C(v44, v45, v46, v47, v48, v49, v50, v51, v67, v68, v69, v71, v72, v74);
      }

      --v32;
    }

    while (v32);
  }

  swift_unknownObjectRelease();
  v34 = *(v33 + 16);

  if (v34)
  {
    goto LABEL_20;
  }

  if (v69 != v77)
  {
    sub_1C9875B0C();
    sub_1C97A7A80(&type metadata for MicroSoundPrintUtils.DomainError);
    v17 = 4;
    goto LABEL_15;
  }

  v35 = sub_1C9881B70(v9);
  v37 = sub_1C9A0840C(v35, v36);
  sub_1C9A1692C(v37);
  if (v38 & 1) != 0 || (, v82 = sub_1C98751E8(1, v37), sub_1C9A16950(v82, v39, v40, v41), v78 = v42, swift_unknownObjectRelease(), (v78))
  {

LABEL_28:
    sub_1C9875B0C();
    sub_1C97A7A80(&type metadata for MicroSoundPrintUtils.DomainError);
    v17 = 3;
    goto LABEL_15;
  }

  result = sub_1C98751E8(2, v37);
  v70 = result;
  v82 = (v56 >> 1) - v55;
  if (v56 >> 1 == v55)
  {
    v57 = MEMORY[0x1E69E7CC0];
    goto LABEL_42;
  }

  if ((v56 >> 1) > v55)
  {
    v79 = (v54 + 8 * v55);
    v57 = MEMORY[0x1E69E7CC0];
    do
    {
      v75 = *v79++;
      if (v75 != 1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C9876068();
        }

        sub_1C987608C();
        if (v53)
        {
          sub_1C9876044(v66, v67, v68, v70, v71, v72);
        }

        sub_1C987602C(v58, v59, v60, v61, v62, v63, v64, v65, v67, v68, v70, v71, v72, v75);
      }

      --v82;
    }

    while (v82);
LABEL_42:
    swift_unknownObjectRelease();
    v82 = *(v57 + 16);

    if (!v82)
    {
      swift_setDeallocating();
      sub_1C9881DCC();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      swift_setDeallocating();
      sub_1C9881DCC();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      swift_setDeallocating();
      sub_1C9881C7C();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      swift_setDeallocating();
      sub_1C9881C7C();
      sub_1C97F07FC();
      swift_deallocClassInstance();
      return v3;
    }

    goto LABEL_28;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_1C9874E28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v9 = *a1;
  v3 = sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
  v4 = MEMORY[0x1E69E6328];
  v5 = sub_1C97AE67C(&qword_1EC3C4A50, &unk_1EC3CC290, &unk_1C9AB2630, MEMORY[0x1E69E6328]);
  v6 = sub_1C97AE67C(&unk_1EC3C4A40, &qword_1EC3C9AA0, &qword_1C9AA0690, v4);
  v7 = sub_1C9824E6C(&v9, v3, v5, v6);
  result = sub_1C97A2CEC(&qword_1EC3C9AA0, &qword_1C9AA0690);
  a2[3] = result;
  a2[4] = &off_1F4948ED0;
  *a2 = v7;
  return result;
}

void sub_1C9874F14(uint64_t *a1@<X0>, vDSP_Length a2@<X2>, vDSP_Length a3@<X3>, uint64_t *a4@<X8>, uint64_t a5@<X4>)
{
  sub_1C98253C8(*a1, a2, a3, a3);
  if (!v5)
  {
    v9 = sub_1C97DDA50(v8, *(a5 + 16));

    *a4 = v9;
  }
}

uint64_t sub_1C9874F84(void *a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3C6750, &unk_1C9A9C740);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = *a1;
  sub_1C97A2CEC(&unk_1EC3CC290, &unk_1C9AB2630);
  sub_1C97AE67C(&qword_1EC3C4A50, &unk_1EC3CC290, &unk_1C9AB2630, MEMORY[0x1E69E6328]);
  sub_1C9A92658();
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);
  sub_1C9A91CE8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1C98750F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C97B7EE8(0, v4, 0);
    v5 = v15;
    v6 = (v3 + 32);
    v7 = *(v15 + 16);
    do
    {
      v8 = *v6;
      v9 = *(v15 + 24);
      if (v7 >= v9 >> 1)
      {
        sub_1C97B7EE8(v9 > 1, v7 + 1, 1);
      }

      *(v15 + 16) = v7 + 1;
      *(v15 + 8 * v7 + 32) = v8;
      ++v6;
      ++v7;
      --v4;
    }

    while (v4);
  }

  result = sub_1C992C2F8(v10, v5, v11, v12, v13);
  *a2 = result;
  return result;
}

uint64_t sub_1C98751E8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1C9875BF0(*(a2 + 16), -result, 0);
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = result;
    }

    if ((v3 & 0x8000000000000000) == 0)
    {
      v4 = sub_1C97AE9C4();

      return v4;
    }
  }

  __break(1u);
  return result;
}

_OWORD *sub_1C9875278(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v33 = a2;
  v34 = a3;
  v40 = a1;
  v6 = sub_1C97A2CEC(&unk_1EC3C9910, &unk_1C9AA3410);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v28 - v8;
  v10 = sub_1C9A91C28();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C97A2CEC(&qword_1EC3C8240, &qword_1C9AA28E0);
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v35 = v28 - v15;
  v16 = sub_1C97A2CEC(&qword_1EC3C99E0, &qword_1C9AA54F8);
  v36 = *(v16 - 8);
  v37 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v32 = v28 - v17;
  v18 = a4[1];
  v41[0] = *a4;
  v41[1] = v18;
  v19 = a4[3];
  v41[2] = a4[2];
  v41[3] = v19;
  v20 = v41;
  v21 = sub_1C97DD3BC(1, 16000);
  if (!v4)
  {
    v31 = v21;
    v30 = sub_1C98BF080();
    v42 = v30;
    v22 = *MEMORY[0x1E695BD28];
    v23 = *(v11 + 104);
    v29 = v10;
    v23(v13, v22, v10);
    (*(v7 + 104))(v9, *MEMORY[0x1E695BD40], v6);
    v28[1] = sub_1C97A2CEC(&unk_1EC3C7390, &unk_1C9A9C770);
    sub_1C97AE67C(&unk_1EC3C4AA0, &unk_1EC3C7390, &unk_1C9A9C770, MEMORY[0x1E695BED8]);
    v24 = v35;
    sub_1C9A92018();
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v29);

    sub_1C97A2CEC(&qword_1EC3C7C80, &qword_1C9AB6790);
    sub_1C97AE67C(&unk_1EC3C9950, &qword_1EC3C8240, &qword_1C9AA28E0, MEMORY[0x1E695BDD8]);
    v25 = v32;
    v26 = v39;
    sub_1C9A91F68();
    (*(v38 + 8))(v24, v26);
    v20 = sub_1C9873E78(v40, v33, v34);
    (*(v36 + 8))(v25, v37);
  }

  sub_1C97DA1E0(a4, &qword_1EC3CE010, &unk_1C9AA3460);
  return v20;
}

uint64_t *sub_1C9875720(_OWORD *a1)
{
  v3 = sub_1C9A91558();
  sub_1C97AE9C8();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v24 - v10;
  sub_1C97E82EC(a1, v25, &qword_1EC3CE010, &unk_1C9AA3460);
  sub_1C98C73E0(43, v11);
  if (v1)
  {
    v22 = &qword_1EC3CE010;
  }

  else
  {
    v12 = sub_1C9880658();
    type metadata accessor for E5RTExecutionStream(0);
    swift_allocObject();
    v26 = sub_1C9880798(v12);
    v24[1] = type metadata accessor for E5RTExecutionStreamOperation(v13);
    sub_1C9A913F8();
    v14 = sub_1C9A91508();
    v16 = v15;
    v17 = *(v5 + 8);
    v17(v9, v3);
    sub_1C98817E8(1852399981, 0xE400000000000000, v14, v16, 1852399981, 0xE400000000000000, 1, 1);
    v19 = v18;
    v20 = v26;

    sub_1C9882AF4(v19, 1);
    sub_1C9880DE8(v19);
    sub_1C97E82EC(a1, v25, &qword_1EC3CE010, &unk_1C9AA3460);
    v22 = sub_1C9875278(v20, v19, &unk_1F492A050, a1);
    v23 = sub_1C97E89F0();
    (v17)(v23);
  }

  sub_1C97DA1E0(a1, &qword_1EC3CE010, &unk_1C9AA3460);
  sub_1C97DA1E0(a1, &qword_1EC3CE010, &unk_1C9AA3460);
  return v22;
}

unint64_t sub_1C9875A88@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *result;
  if (*(*result + 16) && (v6 = sub_1C9A32230(a2, a3), (v7 & 1) != 0))
  {
    *a4 = *(*(v5 + 56) + 8 * v6);
  }

  else
  {
    sub_1C9875B0C();
    sub_1C97A7A80(&type metadata for MicroSoundPrintUtils.DomainError);
    *v8 = 7;
    return swift_willThrow();
  }

  return v6;
}

unint64_t sub_1C9875B0C()
{
  result = qword_1EC3C9F30;
  if (!qword_1EC3C9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9F30);
  }

  return result;
}

char *sub_1C9875B60(uint64_t a1, uint64_t a2)
{
  result = sub_1C9A91308();
  v5 = result;
  if (result)
  {
    result = sub_1C9A91338();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_1C9A91328();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = &v5[v9];
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_1C9873D8C(v5, v11);
}

uint64_t sub_1C9875BF0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

char *sub_1C9875C44@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  result = sub_1C9873C44(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1C9875C74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1C99F5198(*a1, a1[1], a1[2], a1[3], a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1C9875DB8()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for MicroSoundPrintUtils.DomainError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MicroSoundPrintUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C9875FD8()
{
  result = qword_1EC3C9FD8;
  if (!qword_1EC3C9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9FD8);
  }

  return result;
}

void sub_1C9876044(unint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  sub_1C97B7C28(a1 > 1, a6, 1);
}

void sub_1C9876068()
{
  v2 = *(v0 + 16) + 1;

  sub_1C97B7C28(0, v2, 1);
}

uint64_t sub_1C98760A0(uint64_t a1, uint64_t a2)
{
  if (sub_1C9808C60(*a1, *a2) & 1) != 0 && (*(a1 + 8) == *(a2 + 8) ? (v4 = *(a1 + 16) == *(a2 + 16)) : (v4 = 0), v4 || (sub_1C9A93B18()))
  {
    v5 = *(a1 + 40);
    v12[0] = *(a1 + 24);
    v12[1] = v5;
    v6 = *(a1 + 72);
    v12[2] = *(a1 + 56);
    v12[3] = v6;
    v7 = *(a2 + 40);
    v11[0] = *(a2 + 24);
    v11[1] = v7;
    v8 = *(a2 + 72);
    v11[2] = *(a2 + 56);
    v11[3] = v8;
    v9 = sub_1C99CEC08(v12, v11);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C9876144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C6966 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6142726576726573 && a2 == 0xEE00687461506573;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E49726576726573 && a2 == 0xEA00000000006F66)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C9876260(char a1)
{
  if (!a1)
  {
    return 0x73656C6966;
  }

  if (a1 == 1)
  {
    return 0x6142726576726573;
  }

  return 0x6E49726576726573;
}

uint64_t sub_1C98762C4(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&unk_1EC3CA020, &unk_1C9AA9480);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9877A20();
  sub_1C9A93DD8();
  *&v17 = *v3;
  LOBYTE(v16[0]) = 0;
  sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  sub_1C9877B30(&unk_1EC3D23D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1C9A93A18();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1C9A939C8();
    v11 = *(v3 + 40);
    v21[0] = *(v3 + 24);
    v21[1] = v11;
    v12 = *(v3 + 72);
    v21[2] = *(v3 + 56);
    v21[3] = v12;
    v13 = *(v3 + 40);
    v17 = *(v3 + 24);
    v18 = v13;
    v14 = *(v3 + 72);
    v19 = *(v3 + 56);
    v20 = v14;
    v22 = 2;
    sub_1C9840AC4(v21, v16);
    sub_1C9877B9C();
    sub_1C9A93A18();
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    v16[3] = v20;
    sub_1C9877BF0(v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C987652C(uint64_t a1)
{
  sub_1C97C7EF4();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();

  return sub_1C9A92528();
}

uint64_t sub_1C98765CC()
{
  sub_1C9A93CC8();
  sub_1C97C7EF4();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  sub_1C9A92528();
  return sub_1C9A93D18();
}

void *sub_1C9876674@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v29 = sub_1C97A2CEC(&qword_1EC3C9FF8, &unk_1C9AA9470);
  sub_1C97AE9C8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9877A20();
  sub_1C9A93DB8();
  if (v2)
  {
    return sub_1C97A592C(a1);
  }

  v13 = a2;
  sub_1C97A2CEC(&qword_1EC3C7BF0, &unk_1C9AA0050);
  LOBYTE(v14[0]) = 0;
  sub_1C9877B30(&qword_1EC3CA010, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C9A938F8();
  v6 = v15[0];
  LOBYTE(v15[0]) = 1;
  v11 = sub_1C9A938A8();
  v12 = v7;
  v20 = 2;
  sub_1C9877A74();
  sub_1C9A938F8();
  v8 = sub_1C98780E8();
  v9(v8);
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  v14[0] = v6;
  v14[1] = v11;
  v14[2] = v12;
  *&v14[3] = v21;
  *&v14[5] = v22;
  *&v14[7] = v23;
  *&v14[9] = v24;
  sub_1C9877AC8(v14, v15);
  sub_1C97A592C(a1);
  v15[0] = v6;
  v15[1] = v11;
  v15[2] = v12;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  sub_1C9877B00(v15);
  return memcpy(v13, v14, 0x58uLL);
}

uint64_t sub_1C9876960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C9876144(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C9876988(uint64_t a1)
{
  v2 = sub_1C9877A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C98769C4(uint64_t a1)
{
  v2 = sub_1C9877A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1C9876A00@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1C9876674(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x58uLL);
  }

  return result;
}

uint64_t sub_1C9876A6C()
{
  sub_1C9A93CC8();
  sub_1C987652C(v1);
  return sub_1C9A93D18();
}

id sub_1C9876AAC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *&a4[OBJC_IVAR___SNFileServerInfo_impl + 16];
  v19[0] = *&a4[OBJC_IVAR___SNFileServerInfo_impl];
  v19[1] = v8;
  v9 = *&a4[OBJC_IVAR___SNFileServerInfo_impl + 48];
  v20 = *&a4[OBJC_IVAR___SNFileServerInfo_impl + 32];
  v21 = v9;
  v22 = v19[0];
  v23 = v8;
  v24 = v20;
  v25 = v9;
  v10 = type metadata accessor for SNDeleteFilesRequest(*v19);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR___SNDeleteFilesRequest_impl];
  v13 = v23;
  *(v12 + 24) = v19[0];
  *(v12 + 40) = v13;
  v14 = v25;
  *(v12 + 56) = v24;
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  *(v12 + 72) = v14;
  sub_1C9840AC4(v19, v18);
  v17.receiver = v11;
  v17.super_class = v10;
  v15 = objc_msgSendSuper2(&v17, sel_init);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v15;
}

uint64_t (*sub_1C9876C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v9 = sub_1C97A2CEC(&qword_1EC3CA8D0, &qword_1C9AA47B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x1E69C6B70]) init];
  [v12 setDispatchQueue_];
  v13 = sub_1C9A92988();
  sub_1C97ACC50(v11, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v5;
  v14[5] = v12;
  v14[6] = a4;
  v14[7] = a5;
  v15 = v5;
  v16 = v12;

  v17 = sub_1C9A1E148(0, 0, v11, &unk_1C9AA9498, v14);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  return sub_1C9877E08;
}

uint64_t sub_1C9876D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[48] = a6;
  v7[49] = a7;
  v7[46] = a4;
  v7[47] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1C9876DA4, 0, 0);
}

uint64_t sub_1C9876DA4(double a1)
{
  v2 = (v1[46] + OBJC_IVAR___SNDeleteFilesRequest_impl);
  v3 = *v2;
  v1[50] = *v2;
  v4 = v3[2];
  v1[51] = v4;
  if (v4)
  {
    v1[52] = type metadata accessor for SNFileSharingUtils(a1);
    v5 = v2[1];
    v1[53] = v5;
    v6 = v2[2];
    v1[54] = v6;
    v1[55] = v2[3];
    v1[56] = v2[4];
    v1[58] = 0;
    v7 = v3[4];
    v1[59] = v7;
    v8 = v3[5];
    v1[60] = v8;
    sub_1C97A2CEC(&qword_1EC3C6C58, &qword_1C9A9D620);
    inited = swift_initStackObject();
    v10 = sub_1C98780C8(inited, xmmword_1C9AA3B60);
    v10[3].n128_u64[0] = v5;
    v10[3].n128_u64[1] = v6;
    v11 = sub_1C98780A8(v10);
    *(v11 + 80) = v7;
    *(v11 + 88) = v8;
    swift_bridgeObjectRetain_n();

    sub_1C9A92348();
    sub_1C98789E0();
    sub_1C9878144(v12);
    v13 = swift_task_alloc();
    v1[62] = v13;
    *v13 = v1;
    sub_1C9878058();
    *(v14 + 8) = v15;
    v16 = v1[55];
    v17 = v1[56];
    v18 = v1[47];

    return sub_1C983F420(0xD000000000000016, 0x80000001C9AD7300, v8, v16, v17, v18);
  }

  else
  {
    v20 = v1[47];
    v1[2] = v1;
    sub_1C9878074();
    v21 = sub_1C97A2CEC(&qword_1EC3CA050, &qword_1C9AA94A0);
    sub_1C9878038(v21);
    v1[23] = 1107296256;
    sub_1C9878020();
    [v20 activateWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v1 + 2);
  }
}

uint64_t sub_1C9876FC8()
{
  sub_1C97AA84C();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 456) = v4;
  if (v4)
  {
    v5 = sub_1C98776A0;
  }

  else
  {
    v5 = sub_1C981DFBC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C98770D4()
{
  v2 = *v1;
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA84C();
  *v5 = v4;
  *(v2 + 504) = v0;

  if (v0)
  {
    v6 = sub_1C9877430;
  }

  else
  {

    v6 = sub_1C987720C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C987720C(double a1)
{
  v3 = *(v1 + 472);
  v2 = *(v1 + 480);
  v5 = *(v1 + 384);
  v4 = *(v1 + 392);
  v6 = type metadata accessor for SNFileDeletionResult(a1);
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR___SNFileDeletionResult_impl];
  *v8 = v3;
  *(v8 + 1) = v2;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v1 + 344) = v7;
  *(v1 + 352) = v6;
  v9 = objc_msgSendSuper2((v1 + 344), sel_init);
  *(v1 + 296) = v6;
  *(v1 + 272) = v9;
  v10 = v9;
  v5(v1 + 272);

  sub_1C97A592C((v1 + 272));
  v11 = *(v1 + 464) + 1;
  if (v11 == *(v1 + 408))
  {
    v12 = *(v1 + 376);
    *(v1 + 16) = v1;
    sub_1C9878074();
    v13 = sub_1C97A2CEC(&qword_1EC3CA050, &qword_1C9AA94A0);
    sub_1C9878038(v13);
    *(v1 + 184) = 1107296256;
    sub_1C9878020();
    [v12 activateWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v1 + 16);
  }

  else
  {
    sub_1C9878120(v11);
    sub_1C97A2CEC(&qword_1EC3C6C58, &qword_1C9A9D620);
    inited = swift_initStackObject();
    v15 = sub_1C98780C8(inited, xmmword_1C9AA3B60);
    v15[3].n128_u64[0] = v3;
    v15[3].n128_u64[1] = v4;
    v16 = sub_1C98780A8(v15);
    *(v16 + 80) = v5;
    *(v16 + 88) = v10;
    swift_bridgeObjectRetain_n();

    sub_1C9A92348();
    sub_1C98789E0();
    sub_1C9878144(v17);
    v18 = swift_task_alloc();
    *(v1 + 496) = v18;
    *v18 = v1;
    sub_1C9878058();
    *(v19 + 8) = v20;
    v21 = sub_1C98780F8();

    return sub_1C983F420(v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_1C9877430()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 472);
  v5 = *(v0 + 384);
  v4 = *(v0 + 392);

  swift_getErrorValue();
  v6 = sub_1C9A93C38();
  v8 = v7;
  v10 = type metadata accessor for SNFileDeletionResult(v9);
  v11 = objc_allocWithZone(v10);
  v12 = &v11[OBJC_IVAR___SNFileDeletionResult_impl];
  *v12 = v3;
  *(v12 + 1) = v2;
  *(v12 + 2) = v6;
  *(v12 + 3) = v8;
  *(v0 + 328) = v11;
  *(v0 + 336) = v10;
  v13 = objc_msgSendSuper2((v0 + 328), sel_init);
  *(v0 + 240) = v13;
  *(v0 + 264) = v10;
  v14 = v13;
  v5(v0 + 240);

  sub_1C97A592C((v0 + 240));
  v15 = *(v0 + 464) + 1;
  if (v15 == *(v0 + 408))
  {
    v16 = *(v0 + 376);
    *(v0 + 16) = v0;
    sub_1C9878074();
    v17 = sub_1C97A2CEC(&qword_1EC3CA050, &qword_1C9AA94A0);
    sub_1C9878038(v17);
    *(v0 + 184) = 1107296256;
    sub_1C9878020();
    [v16 activateWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    sub_1C9878120(v15);
    sub_1C97A2CEC(&qword_1EC3C6C58, &qword_1C9A9D620);
    inited = swift_initStackObject();
    v19 = sub_1C98780C8(inited, xmmword_1C9AA3B60);
    v19[3].n128_u64[0] = v0 + 240;
    v19[3].n128_u64[1] = v4;
    v20 = sub_1C98780A8(v19);
    *(v20 + 80) = v14;
    *(v20 + 88) = v1;
    swift_bridgeObjectRetain_n();

    sub_1C9A92348();
    sub_1C98789E0();
    sub_1C9878144(v21);
    v22 = swift_task_alloc();
    *(v0 + 496) = v22;
    *v22 = v0;
    sub_1C9878058();
    *(v23 + 8) = v24;
    v25 = sub_1C98780F8();

    return sub_1C983F420(v25, v26, v27, v28, v29, v30);
  }
}

uint64_t sub_1C98776A0(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C987770C(void *a1, uint64_t a2)
{
  [a1 invalidate];
  sub_1C97A2CEC(&unk_1EC3CA040, &qword_1C9A9C750);

  return sub_1C9A92A28();
}

id SNDeleteFilesRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNDeleteFilesRequest.__deallocating_deinit(double a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SNDeleteFilesRequest(a1);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C9877924(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C9877964(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1C98779CC()
{
  result = qword_1EC3C9FF0;
  if (!qword_1EC3C9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C9FF0);
  }

  return result;
}

unint64_t sub_1C9877A20()
{
  result = qword_1EC3CA000;
  if (!qword_1EC3CA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA000);
  }

  return result;
}

unint64_t sub_1C9877A74()
{
  result = qword_1EC3CA018;
  if (!qword_1EC3CA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA018);
  }

  return result;
}

uint64_t sub_1C9877B30(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C97AA4F0(&qword_1EC3C7BF0, &unk_1C9AA0050);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C9877B9C()
{
  result = qword_1EC3CA030;
  if (!qword_1EC3CA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CA030);
  }

  return result;
}

uint64_t sub_1C9877C44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C9877D18;

  return sub_1C9876D80(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1C9877D18()
{
  v1 = *v0;
  sub_1C97AA84C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

_BYTE *storeEnumTagSinglePayload for DeleteFilesRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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