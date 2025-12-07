uint64_t sub_22F395FA8(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 localIdentifier];
        v38 = sub_22F740E20();
        v40 = v39;

        v41 = [v36 localIdentifier];
        v42 = sub_22F740E20();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = v31 - 1;
        }

        else
        {
          v46 = sub_22F742040();

          v4 = v31 - 1;
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 localIdentifier];
        v18 = sub_22F740E20();
        v20 = v19;

        v21 = [v16 localIdentifier];
        v22 = sub_22F740E20();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = sub_22F742040();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v54 - v13));
  }

  return 1;
}

unint64_t sub_22F396398()
{
  result = qword_27DAB3E08;
  if (!qword_27DAB3E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E08);
  }

  return result;
}

unint64_t sub_22F3963F0()
{
  result = qword_27DAB3E10;
  if (!qword_27DAB3E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E10);
  }

  return result;
}

unint64_t sub_22F396448()
{
  result = qword_27DAB3E18;
  if (!qword_27DAB3E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E18);
  }

  return result;
}

unint64_t sub_22F3964A0()
{
  result = qword_27DAB3E20;
  if (!qword_27DAB3E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E20);
  }

  return result;
}

uint64_t sub_22F396504(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_22F396554()
{
  result = qword_27DAB3E28;
  if (!qword_27DAB3E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E28);
  }

  return result;
}

uint64_t Song.flexMLAnalysis.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Song(0) + 104);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 44);
  LODWORD(v3) = *(v3 + 40);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 44) = v9;
  *(a1 + 40) = v3;

  return sub_22F13BB04(v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for Song(uint64_t a1)
{
  result = qword_2810A9990;
  if (!qword_2810A9990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Song.init(adamID:title:artist:album:genreNames:isExplicit:duration:preferenceScore:artworkURLFormat:songURLPath:introPreviewPath:audioLocale:flexMLAnalysis:lastRefreshAttemptDate:playbackInfo:arousal:valence:unitagMemoryAppropriateScore:unitagMemoryNotAppropriateScore:loudnessMainPeak:loudnessMainValue:clearedForPhotosMemoriesExport:contentProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, char a13, int a14, int a15, char a16, __int128 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, char a26, int a27, char a28, int a29, char a30, int a31, char a32, int a33, char a34, int a35, char a36, __int16 a37, char a38, uint64_t a39, uint64_t a40)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 92) = a15;
  *(a9 + 96) = a16 & 1;
  v41 = *(a22 + 32);
  *(a9 + 136) = a19;
  *(a9 + 144) = a20;
  v42 = *(a22 + 40);
  v43 = *(a22 + 44);
  *(a9 + 104) = a17;
  *(a9 + 120) = a18;
  v44 = type metadata accessor for Song(0);
  sub_22F1207AC(a21, a9 + v44[15], &qword_27DAB0C90, &unk_22F785B70);
  v45 = a9 + v44[26];
  v46 = *(a22 + 16);
  *v45 = *a22;
  *(v45 + 16) = v46;
  *(v45 + 32) = v41;
  *(v45 + 44) = v43;
  *(v45 + 40) = v42;
  result = sub_22F1207AC(a23, a9 + v44[16], &qword_27DAB0920, &qword_22F770B20);
  *(a9 + v44[17]) = a24;
  v48 = a9 + v44[18];
  *v48 = a25;
  *(v48 + 4) = a26 & 1;
  v49 = a9 + v44[19];
  *v49 = a27;
  *(v49 + 4) = a28 & 1;
  v50 = a9 + v44[20];
  *v50 = a29;
  *(v50 + 4) = a30 & 1;
  v51 = a9 + v44[21];
  *v51 = a31;
  *(v51 + 4) = a32 & 1;
  v52 = a9 + v44[22];
  *v52 = a33;
  *(v52 + 4) = a34 & 1;
  v53 = a9 + v44[23];
  *v53 = a35;
  *(v53 + 4) = a36 & 1;
  *(a9 + v44[24]) = a38;
  v54 = (a9 + v44[25]);
  *v54 = a39;
  v54[1] = a40;
  return result;
}

uint64_t sub_22F39687C(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Song(0);
    return a2;
  }

  return result;
}

uint64_t sub_22F396910(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t Song.compactDescription.getter()
{
  v1 = v0;
  v2 = 7104878;
  if (v0[3])
  {
    v3 = v0[2];
    v4 = v0[3];
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  swift_bridgeObjectRetain_n();
  v5 = sub_22F740F10();

  if (v5 >= 51)
  {
    sub_22F398F90(50, v3, v4);

    v6 = sub_22F740F10();
    v7 = sub_22F741890();
    v8 = __OFADD__(v6, v7);
    result = v6 + v7;
    if (v8)
    {
      __break(1u);
      goto LABEL_32;
    }

    MEMORY[0x231900A90](result);
    sub_22F39902C();
    sub_22F740F40();
    sub_22F740F40();

    v3 = 0;
    v4 = 0xE000000000000000;
  }

  if (v1[5])
  {
    v10 = v1[4];
    v11 = v1[5];
  }

  else
  {
    v11 = 0xE300000000000000;
    v10 = 7104878;
  }

  swift_bridgeObjectRetain_n();
  v12 = sub_22F740F10();

  if (v12 >= 51)
  {
    sub_22F398F90(50, v10, v11);

    v13 = sub_22F740F10();
    v14 = sub_22F741890();
    v8 = __OFADD__(v13, v14);
    result = v13 + v14;
    if (!v8)
    {
      MEMORY[0x231900A90](result);
      sub_22F39902C();
      sub_22F740F40();
      sub_22F740F40();

      v10 = 0;
      v11 = 0xE000000000000000;
      goto LABEL_13;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_13:
  v30 = v10;
  if (v1[7])
  {
    v2 = v1[6];
    v15 = v1[7];
  }

  else
  {
    v15 = 0xE300000000000000;
  }

  v31 = v3;
  swift_bridgeObjectRetain_n();
  v16 = sub_22F740F10();

  if (v16 >= 51)
  {
    sub_22F398F90(50, v2, v15);

    v17 = sub_22F740F10();
    v18 = sub_22F741890();
    v8 = __OFADD__(v17, v18);
    result = v17 + v18;
    if (!v8)
    {
      MEMORY[0x231900A90](result);
      sub_22F39902C();
      sub_22F740F40();
      sub_22F740F40();

      v15 = 0xE000000000000000;
      v29 = 0;
      goto LABEL_20;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v29 = v2;
LABEL_20:
  v19 = sub_22F7413D0();
  v21 = v20;
  if (sub_22F740F10() < 51)
  {
    goto LABEL_23;
  }

  sub_22F398F90(50, v19, v21);

  v22 = sub_22F740F10();
  v23 = sub_22F741890();
  v8 = __OFADD__(v22, v23);
  result = v22 + v23;
  if (v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  MEMORY[0x231900A90](result);
  sub_22F39902C();
  sub_22F740F40();
  sub_22F740F40();

  v19 = 0;
  v21 = 0xE000000000000000;
LABEL_23:
  v24 = *(v1 + *(type metadata accessor for Song(0) + 96));
  if (v24 == 2 || (v24 & 1) == 0)
  {
    v25 = 0xE500000000000000;
    v26 = 0x65736C6166;
  }

  else
  {
    v25 = 0xE400000000000000;
    v26 = 1702195828;
  }

  if (sub_22F740F10() < 51)
  {
    goto LABEL_30;
  }

  sub_22F398F90(50, v26, v25);

  v27 = sub_22F740F10();
  v28 = sub_22F741890();
  v8 = __OFADD__(v27, v28);
  result = v27 + v28;
  if (!v8)
  {
    MEMORY[0x231900A90](result);
    sub_22F39902C();
    sub_22F740F40();
    sub_22F740F40();

    v26 = 0;
    v25 = 0xE000000000000000;
LABEL_30:
    sub_22F741B00();
    MEMORY[0x231900B10](0x203A44496D616461, 0xE90000000000005BLL);
    MEMORY[0x231900B10](*v1, v1[1]);
    MEMORY[0x231900B10](0x6C746974207C205DLL, 0xEC0000005B203A65);
    MEMORY[0x231900B10](v31, v4);

    MEMORY[0x231900B10](0x69747261207C205DLL, 0xED00005B203A7473);
    MEMORY[0x231900B10](v30, v11);

    MEMORY[0x231900B10](0x75626C61207C205DLL, 0xEC0000005B203A6DLL);
    MEMORY[0x231900B10](v29, v15);

    MEMORY[0x231900B10](0xD000000000000015, 0x800000022F79D300);
    MEMORY[0x231900B10](v19, v21);

    MEMORY[0x231900B10](0xD000000000000017, 0x800000022F79D320);
    MEMORY[0x231900B10](v26, v25);

    MEMORY[0x231900B10](93, 0xE100000000000000);
    return 0;
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t Song.adamID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Song.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Song.artist.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Song.album.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Song.artworkURLFormat.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t Song.songURLPath.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t Song.introPreviewPath.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

double Song.playbackInfo.getter()
{
  type metadata accessor for Song(0);

  return result;
}

uint64_t Song.contentProvider.getter()
{
  v1 = *(v0 + *(type metadata accessor for Song(0) + 100));

  return v1;
}

unint64_t sub_22F3974D4(char a1)
{
  result = 0x44496D616461;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x747369747261;
      break;
    case 3:
      result = 0x6D75626C61;
      break;
    case 4:
      result = 0x6D614E65726E6567;
      break;
    case 5:
      result = 0x63696C7078457369;
      break;
    case 6:
      result = 0x6E6F697461727564;
      break;
    case 7:
      result = 0x6E65726566657270;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x504C5255676E6F73;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x636F4C6F69647561;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x6B63616279616C70;
      break;
    case 14:
      result = 0x6C6173756F7261;
      break;
    case 15:
      result = 0x65636E656C6176;
      break;
    case 16:
      result = 0xD00000000000001CLL;
      break;
    case 17:
      result = 0xD00000000000001FLL;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    case 20:
      result = 0xD00000000000001ELL;
      break;
    case 21:
      result = 0x50746E65746E6F63;
      break;
    case 22:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22F397780@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F399890(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F3977B4(uint64_t a1)
{
  v2 = sub_22F399080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F3977F0(uint64_t a1)
{
  v2 = sub_22F399080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static Song.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F742040();
  }
}

uint64_t Song.hashValue.getter()
{
  sub_22F742170();
  sub_22F740D60();
  return sub_22F7421D0();
}

uint64_t Song.jsonDescription.getter()
{
  v0 = sub_22F740E80();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_22F73EF50();
  MEMORY[0x28223BE20](v1 - 8);
  sub_22F73EFB0();
  swift_allocObject();
  sub_22F73EFA0();
  sub_22F73EF40();
  sub_22F73EF60();
  type metadata accessor for Song(0);
  sub_22F399350(&qword_2810A99B8, type metadata accessor for Song, &protocol conformance descriptor for Song);
  v3 = sub_22F73EF90();
  v5 = v4;
  sub_22F740E70();
  v6 = sub_22F740E40();
  v8 = v7;
  sub_22F133BF0(v3, v5);

  if (v8)
  {
    return v6;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t Song.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E38, &unk_22F789350);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F399080();
  sub_22F742210();
  LOBYTE(v27) = 0;
  sub_22F741F80();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v27) = 1;
  sub_22F741F20();
  LOBYTE(v27) = 2;
  sub_22F741F20();
  LOBYTE(v27) = 3;
  sub_22F741F20();
  v27 = *(v3 + 64);
  v34 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F1BA494(&qword_2810A92E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22F741F70();
  LOBYTE(v27) = 5;
  sub_22F741F30();
  LOBYTE(v27) = 6;
  sub_22F741F40();
  v9 = *(v3 + 96);
  LOBYTE(v27) = 7;
  v34 = v9;
  sub_22F741F50();
  LOBYTE(v27) = 8;
  sub_22F741F20();
  LOBYTE(v27) = 9;
  sub_22F741F20();
  LOBYTE(v27) = 10;
  sub_22F741F20();
  v10 = type metadata accessor for Song(0);
  LOBYTE(v27) = 11;
  sub_22F73F7C0();
  sub_22F399350(&qword_2810AC6E8, MEMORY[0x277CC9788], MEMORY[0x277CC9790]);
  sub_22F741F70();
  LOBYTE(v27) = 12;
  sub_22F73F690();
  sub_22F399350(&qword_2810AC718, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_22F741F70();
  v27 = *(v3 + v10[17]);
  v34 = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E40, &qword_22F789360);
  sub_22F3991E8(&qword_2810A9388, sub_22F3990D4, MEMORY[0x277D83948]);
  sub_22F741F70();
  v11 = *(v3 + v10[18] + 4);
  LOBYTE(v27) = 14;
  v34 = v11;
  sub_22F741F50();
  v12 = *(v3 + v10[19] + 4);
  LOBYTE(v27) = 15;
  v34 = v12;
  sub_22F741F50();
  v13 = *(v3 + v10[20] + 4);
  LOBYTE(v27) = 16;
  v34 = v13;
  sub_22F741F50();
  v14 = *(v3 + v10[21] + 4);
  LOBYTE(v27) = 17;
  v34 = v14;
  sub_22F741F50();
  v15 = *(v3 + v10[22] + 4);
  LOBYTE(v27) = 18;
  v34 = v15;
  sub_22F741F50();
  v16 = *(v3 + v10[23] + 4);
  LOBYTE(v27) = 19;
  v34 = v16;
  sub_22F741F50();
  LOBYTE(v27) = 20;
  sub_22F741F30();
  LOBYTE(v27) = 21;
  sub_22F741F20();
  v17 = v3 + v10[26];
  v18 = *v17;
  v19 = *(v17 + 8);
  v20 = *(v17 + 16);
  v21 = *(v17 + 24);
  v22 = *(v17 + 32);
  v23 = *(v17 + 44);
  LODWORD(v17) = *(v17 + 40);
  v27 = v18;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v33 = v23;
  v32 = v17;
  v34 = 22;
  sub_22F13BB04(v18, v19, v20, v21, v22);
  sub_22F399128();
  sub_22F741FE0();
  v24 = sub_22F39917C(v27, v28, v29, v30);
  return (*(v6 + 8))(v8, v5, v24);
}

void Song.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v75 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C90, &unk_22F785B70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v75 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E50, &qword_22F789368);
  v9 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v11 = &v75 - v10;
  v12 = type metadata accessor for Song(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_22F399080();
  v79 = v11;
  v16 = v81;
  sub_22F742200();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(v82);
    return;
  }

  v17 = v8;
  v18 = v5;
  v20 = v78;
  v19 = v79;
  v77 = v12;
  v81 = v14;
  LOBYTE(v83) = 0;
  v21 = v80;
  v22 = sub_22F741EB0();
  v23 = v81;
  *v81 = v22;
  *(v23 + 1) = v24;
  LOBYTE(v83) = 1;
  *(v23 + 2) = sub_22F741E50();
  *(v23 + 3) = v25;
  LOBYTE(v83) = 2;
  *(v23 + 4) = sub_22F741E50();
  *(v23 + 5) = v26;
  LOBYTE(v83) = 3;
  v27 = sub_22F741E50();
  v76 = 0;
  *(v23 + 6) = v27;
  *(v23 + 7) = v28;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v88 = 4;
  sub_22F1BA494(&qword_2810A92D8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  v29 = v76;
  sub_22F741EA0();
  if (v29)
  {
    v76 = v29;
    (*(v9 + 8))(v19, v21);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    LODWORD(v79) = 0;
    LODWORD(v80) = 0;
  }

  else
  {
    *(v23 + 8) = v83;
    LOBYTE(v83) = 5;
    v23[72] = sub_22F741E60();
    LOBYTE(v83) = 6;
    *(v23 + 10) = sub_22F741E70();
    v23[88] = v35 & 1;
    LOBYTE(v83) = 7;
    v36 = sub_22F741E80();
    v39 = v81;
    *(v81 + 23) = v36;
    v39[96] = BYTE4(v36) & 1;
    LOBYTE(v83) = 8;
    v40 = sub_22F741E50();
    v76 = 0;
    v42 = v81;
    *(v81 + 13) = v40;
    *(v42 + 14) = v41;
    LOBYTE(v83) = 9;
    v43 = v76;
    v44 = sub_22F741E50();
    v76 = v43;
    if (v43)
    {
      (*(v9 + 8))(v79, v80);
      v32 = 0;
      v33 = 0;
      v34 = 0;
      LODWORD(v79) = 0;
      LODWORD(v80) = 0;
      v30 = 1;
      v31 = 1;
    }

    else
    {
      v46 = v81;
      *(v81 + 15) = v44;
      *(v46 + 16) = v45;
      LOBYTE(v83) = 10;
      v47 = v76;
      v48 = sub_22F741E50();
      v76 = v47;
      if (v47)
      {
        (*(v9 + 8))(v79, v80);
        v33 = 0;
        v34 = 0;
        LODWORD(v79) = 0;
        LODWORD(v80) = 0;
        v30 = 1;
        v31 = 1;
        v32 = 1;
      }

      else
      {
        v50 = v81;
        *(v81 + 17) = v48;
        *(v50 + 18) = v49;
        sub_22F73F7C0();
        LOBYTE(v83) = 11;
        sub_22F399350(&qword_27DAB3E58, MEMORY[0x277CC9788], MEMORY[0x277CC97A8]);
        v51 = v76;
        sub_22F741EA0();
        v76 = v51;
        if (v51)
        {
          (*(v9 + 8))(v79, v80);
          v34 = 0;
          LODWORD(v79) = 0;
          LODWORD(v80) = 0;
          v30 = 1;
          v31 = 1;
          v32 = 1;
          v33 = 1;
        }

        else
        {
          sub_22F1207AC(v17, &v81[v77[15]], &qword_27DAB0C90, &unk_22F785B70);
          sub_22F73F690();
          LOBYTE(v83) = 12;
          sub_22F399350(&qword_27DAB1580, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
          v52 = v76;
          sub_22F741EA0();
          v76 = v52;
          if (v52)
          {
            (*(v9 + 8))(v79, v80);
            LODWORD(v79) = 0;
            LODWORD(v80) = 0;
            v30 = 1;
            v31 = 1;
            v32 = 1;
            v33 = 1;
            v34 = 1;
          }

          else
          {
            sub_22F1207AC(v18, &v81[v77[16]], &qword_27DAB0920, &qword_22F770B20);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E40, &qword_22F789360);
            v88 = 13;
            sub_22F3991E8(&qword_27DAB3E60, sub_22F399260, MEMORY[0x277D83978]);
            v53 = v76;
            sub_22F741EA0();
            v76 = v53;
            if (!v53)
            {
              *&v81[v77[17]] = v83;
              LOBYTE(v83) = 14;
              v54 = sub_22F741E80();
              v76 = 0;
              v55 = &v81[v77[18]];
              *v55 = v54;
              v55[4] = BYTE4(v54) & 1;
              LOBYTE(v83) = 15;
              v56 = sub_22F741E80();
              v76 = 0;
              v57 = &v81[v77[19]];
              *v57 = v56;
              v57[4] = BYTE4(v56) & 1;
              LOBYTE(v83) = 16;
              v58 = sub_22F741E80();
              v76 = 0;
              v59 = &v81[v77[20]];
              *v59 = v58;
              v59[4] = BYTE4(v58) & 1;
              LOBYTE(v83) = 17;
              v60 = sub_22F741E80();
              v76 = 0;
              v61 = &v81[v77[21]];
              *v61 = v60;
              v61[4] = BYTE4(v60) & 1;
              LOBYTE(v83) = 18;
              v62 = sub_22F741E80();
              v76 = 0;
              v63 = &v81[v77[22]];
              *v63 = v62;
              v63[4] = BYTE4(v62) & 1;
              LOBYTE(v83) = 19;
              v64 = sub_22F741E80();
              v65 = &v81[v77[23]];
              *v65 = v64;
              v65[4] = BYTE4(v64) & 1;
              LOBYTE(v83) = 20;
              v81[v77[24]] = sub_22F741E60();
              LOBYTE(v83) = 21;
              v66 = sub_22F741E50();
              v67 = &v81[v77[25]];
              *v67 = v66;
              v67[1] = v68;
              v88 = 22;
              sub_22F3992B4();
              sub_22F741F10();
              (*(v9 + 8))(v79, v80);
              v69 = v85;
              v70 = v86;
              v71 = v87;
              v72 = v81;
              v73 = &v81[v77[26]];
              v74 = v84;
              *v73 = v83;
              *(v73 + 1) = v74;
              *(v73 + 4) = v69;
              v73[44] = v71;
              *(v73 + 10) = v70;
              sub_22F15CAA0(v72, v20);
              __swift_destroy_boxed_opaque_existential_0(v82);
              sub_22F15CBD8(v72);
              return;
            }

            (*(v9 + 8))(v79, v80);
            LODWORD(v80) = 0;
            v30 = 1;
            v31 = 1;
            v32 = 1;
            v33 = 1;
            v34 = 1;
            LODWORD(v79) = 1;
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v82);
  v37 = v81;

  if (v30)
  {

    v38 = v77;
    if (v31)
    {
      goto LABEL_18;
    }

LABEL_9:
    if (!v32)
    {
      goto LABEL_19;
    }

LABEL_10:

    if (v33)
    {
      goto LABEL_20;
    }

LABEL_11:
    if (!v34)
    {
      goto LABEL_21;
    }

LABEL_12:
    sub_22F120ADC(&v37[v38[15]], &qword_27DAB0C90, &unk_22F785B70);
    if (v79)
    {
      goto LABEL_22;
    }

LABEL_13:
    if (!v80)
    {
      return;
    }

    goto LABEL_14;
  }

  v38 = v77;
  if (!v31)
  {
    goto LABEL_9;
  }

LABEL_18:

  if (v32)
  {
    goto LABEL_10;
  }

LABEL_19:
  if (!v33)
  {
    goto LABEL_11;
  }

LABEL_20:

  if (v34)
  {
    goto LABEL_12;
  }

LABEL_21:
  if (!v79)
  {
    goto LABEL_13;
  }

LABEL_22:
  sub_22F120ADC(&v37[v38[16]], &qword_27DAB0920, &qword_22F770B20);
  if (v80)
  {
LABEL_14:
  }
}

uint64_t sub_22F398E60@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F7421F0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E80, &qword_22F7896F0);
    sub_22F399FA0();
    sub_22F742050();
    __swift_destroy_boxed_opaque_existential_0(v11);
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *(a2 + 44) = v10;
    *(a2 + 40) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22F398F90(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22F740F30();

    return sub_22F741050();
  }

  return result;
}

unint64_t sub_22F39902C()
{
  result = qword_27DAB3E30;
  if (!qword_27DAB3E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E30);
  }

  return result;
}

unint64_t sub_22F399080()
{
  result = qword_2810A99D0;
  if (!qword_2810A99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A99D0);
  }

  return result;
}

unint64_t sub_22F3990D4()
{
  result = qword_2810ABFD8[0];
  if (!qword_2810ABFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810ABFD8);
  }

  return result;
}

unint64_t sub_22F399128()
{
  result = qword_27DAB3E48;
  if (!qword_27DAB3E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E48);
  }

  return result;
}

double sub_22F39917C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 1)
  {

    sub_22F18B0F4(a3, a4);
  }

  return result;
}

uint64_t sub_22F3991E8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3E40, &qword_22F789360);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22F399260()
{
  result = qword_27DAB3E68;
  if (!qword_27DAB3E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E68);
  }

  return result;
}

unint64_t sub_22F3992B4()
{
  result = qword_27DAB3E70;
  if (!qword_27DAB3E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E70);
  }

  return result;
}

uint64_t sub_22F399350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22F3993C0(uint64_t a1)
{
  sub_22F168724(319, &qword_2810A9390, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22F399628(319, &qword_2810A92C8, &qword_27DAB0E90, &qword_22F7714A0);
    if (v2 <= 0x3F)
    {
      sub_22F168724(319, &qword_2810A9280, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_22F168724(319, &qword_2810A9278, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          sub_22F168724(319, &qword_2810A9270, MEMORY[0x277D83A90]);
          if (v5 <= 0x3F)
          {
            sub_22F3995D4(319, &qword_2810AC6D8, MEMORY[0x277CC9788]);
            if (v6 <= 0x3F)
            {
              sub_22F3995D4(319, &qword_2810AC6F0, MEMORY[0x277CC9578]);
              if (v7 <= 0x3F)
              {
                sub_22F399628(319, &qword_2810A9380, &qword_27DAB3E40, &qword_22F789360);
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

void sub_22F3995D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22F741860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22F399628(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_22F741860();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph14FlexMLAnalysisVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22F3996A0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 45))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_22F399708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 45) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_22F39978C()
{
  result = qword_27DAB3E78;
  if (!qword_27DAB3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E78);
  }

  return result;
}

unint64_t sub_22F3997E4()
{
  result = qword_2810A99C0;
  if (!qword_2810A99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A99C0);
  }

  return result;
}

unint64_t sub_22F39983C()
{
  result = qword_2810A99C8;
  if (!qword_2810A99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A99C8);
  }

  return result;
}

uint64_t sub_22F399890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D616461 && a2 == 0xE600000000000000;
  if (v4 || (sub_22F742040() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D75626C61 && a2 == 0xE500000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365 || (sub_22F742040() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x63696C7078457369 && a2 == 0xEA00000000007469 || (sub_22F742040() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E65726566657270 && a2 == 0xEF65726F63536563 || (sub_22F742040() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F79D340 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x504C5255676E6F73 && a2 == 0xEB00000000687461 || (sub_22F742040() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F79D360 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x636F4C6F69647561 && a2 == 0xEB00000000656C61 || (sub_22F742040() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x800000022F790200 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xEC0000006F666E49 || (sub_22F742040() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C6173756F7261 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x65636E656C6176 && a2 == 0xE700000000000000 || (sub_22F742040() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000022F79BDC0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001FLL && 0x800000022F79BDE0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000010 && 0x800000022F79D380 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022F79D3A0 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000022F790010 == a2 || (sub_22F742040() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x50746E65746E6F63 && a2 == 0xEF72656469766F72 || (sub_22F742040() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000015 && 0x800000022F79D3C0 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_22F742040();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

unint64_t sub_22F399FA0()
{
  result = qword_27DAB3E88;
  if (!qword_27DAB3E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3E80, &qword_22F7896F0);
    sub_22F39A024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E88);
  }

  return result;
}

unint64_t sub_22F39A024()
{
  result = qword_2810ABB88;
  if (!qword_2810ABB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810ABB88);
  }

  return result;
}

void sub_22F39A080(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v58 = a2;
  v70 = sub_22F740270();
  v60 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = (v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_22F740160();
  v73 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v57 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E90, &qword_22F7896F8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v56 - v8;
  v10 = sub_22F740420();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v67 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = v56 - v14;
  MEMORY[0x28223BE20](v15);
  v77 = v56 - v16;
  MEMORY[0x28223BE20](v17);
  v61 = v56 - v18;
  v62 = sub_22F7403B0();
  v19 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a1;
  v63 = sub_22F73FD40();
  v22 = *(v63 + 16);
  v74 = v10;
  v75 = v11;
  v72 = v22;
  if (v22)
  {
    v23 = 0;
    v71 = (v19 + 8);
    v64 = (v11 + 48);
    v65 = v19 + 16;
    v24 = (v11 + 32);
    v76 = MEMORY[0x277D84F90];
    v25 = v62;
    v26 = v63;
    while (1)
    {
      if (v23 >= *(v26 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      (*(v19 + 16))(v21, v26 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v23, v25);
      v27 = v3;
      sub_22F39A88C(v9);
      if (v3)
      {
        break;
      }

      (*v71)(v21, v25);
      if ((*v64)(v9, 1, v10) == 1)
      {
        sub_22F39B398(v9);
      }

      else
      {
        v28 = *v24;
        v29 = v61;
        (*v24)(v61, v9, v10);
        v28(v77, v29, v10);
        v30 = v76;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_22F140164(0, v30[2] + 1, 1, v30);
        }

        v32 = v30[2];
        v31 = v30[3];
        v76 = v30;
        if (v32 >= v31 >> 1)
        {
          v76 = sub_22F140164((v31 > 1), v32 + 1, 1, v76);
        }

        v33 = v75;
        v34 = v76;
        v76[2] = v32 + 1;
        v10 = v74;
        v28(&v34[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32], v77, v74);
        v3 = v27;
        v25 = v62;
        v26 = v63;
      }

      if (v72 == ++v23)
      {
        goto LABEL_14;
      }
    }

    (*v71)(v21, v25);

    __break(1u);
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
LABEL_14:

    v35 = v76;
    v36 = v76[2];
    if (v36)
    {
      v56[1] = v3;
      v65 = sub_22F73FD50();
      v72 = v37;
      v71 = sub_22F73FD90();
      v78 = MEMORY[0x277D84F90];
      sub_22F146DBC(0, v36, 0);
      v38 = *(v75 + 16);
      v39 = v78;
      v40 = v35 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
      v63 = *(v75 + 72);
      v64 = v38;
      LODWORD(v62) = *MEMORY[0x277D3C2B8];
      v41 = (v60 + 13);
      v60 = (v75 + 8);
      v61 = v41;
      v59 = v73 + 32;
      v42 = v57;
      v75 += 16;
      do
      {
        v77 = v36;
        v43 = v66;
        v44 = v39;
        v45 = v64;
        v64(v66, v40, v10);
        v46 = v10;
        v48 = v69;
        v47 = v70;
        *v69 = 0;
        (*v61)(v48, v62, v47);
        v45(v67, v43, v46);
        v39 = v44;

        sub_22F740150();
        (*v60)(v43, v46);
        v78 = v44;
        v49 = v42;
        v51 = *(v44 + 16);
        v50 = *(v44 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_22F146DBC((v50 > 1), v51 + 1, 1);
          v39 = v78;
        }

        *(v39 + 16) = v51 + 1;
        (*(v73 + 32))(v39 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v51, v49, v68);
        v40 += v63;
        v36 = (v77 - 1);
        v42 = v49;
        v10 = v74;
      }

      while (v77 != 1);
    }

    else
    {

      if (qword_2810A9418 != -1)
      {
LABEL_26:
        swift_once();
      }

      v52 = sub_22F740B90();
      __swift_project_value_buffer(v52, qword_2810B4D00);
      v53 = sub_22F740B70();
      v54 = sub_22F7415E0();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_22F0FC000, v53, v54, "Encountered a non personal/public event query token!", v55, 2u);
        MEMORY[0x2319033A0](v55, -1, -1);
      }

      v39 = 0;
    }

    *v58 = v39;
  }
}

uint64_t sub_22F39A88C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22F7404D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  sub_22F7403A0();
  v12 = (*(v3 + 88))(v11, v2);
  if (v12 != *MEMORY[0x277D3C4C0])
  {
    if (v12 != *MEMORY[0x277D3C4C8])
    {
      goto LABEL_23;
    }

    (*(v3 + 16))(v8, v11, v2);
    (*(v3 + 96))(v8, v2);
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1E98, &qword_22F7776F8) + 48);
    v18 = sub_22F740A50();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v8, 1, v18) != 1)
    {
      v25 = (*(v19 + 88))(v8, v18);
      if (v25 == *MEMORY[0x277D3CA70])
      {
        v26 = MEMORY[0x277D3C408];
      }

      else if (v25 == *MEMORY[0x277D3CA88])
      {
        v26 = MEMORY[0x277D3C428];
      }

      else
      {
        if (v25 != *MEMORY[0x277D3CA80])
        {
          (*(v19 + 8))(v8, v18);
          v35 = sub_22F740580();
          (*(*(v35 - 8) + 8))(&v8[v17], v35);
          goto LABEL_23;
        }

        v26 = MEMORY[0x277D3C420];
      }

      v30 = *v26;
      v31 = sub_22F740420();
      v32 = *(v31 - 8);
      v42 = v17;
      v33 = v32;
      (*(v32 + 104))(a1, v30, v31);
      (*(v33 + 56))(a1, 0, 1, v31);
      v34 = sub_22F740580();
      (*(*(v34 - 8) + 8))(&v8[v42], v34);
      return (*(v3 + 8))(v11, v2);
    }

    v20 = sub_22F740580();
    (*(*(v20 - 8) + 8))(&v8[v17], v20);
LABEL_8:
    (*(v3 + 8))(v11, v2);
    v21 = *MEMORY[0x277D3C418];
    v22 = sub_22F740420();
    v23 = *(v22 - 8);
    (*(v23 + 104))(a1, v21, v22);
    return (*(v23 + 56))(a1, 0, 1, v22);
  }

  (*(v3 + 16))(v5, v11, v2);
  (*(v3 + 96))(v5, v2);
  v13 = sub_22F740A30();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    goto LABEL_8;
  }

  v15 = (*(v14 + 88))(v5, v13);
  if (v15 != *MEMORY[0x277D3CA60])
  {
    if (v15 == *MEMORY[0x277D3CA58])
    {
      v16 = MEMORY[0x277D3C400];
      goto LABEL_15;
    }

    if (v15 == *MEMORY[0x277D3CA50])
    {
      v16 = MEMORY[0x277D3C3F8];
      goto LABEL_15;
    }

    (*(v14 + 8))(v5, v13);
LABEL_23:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D00);
    v37 = sub_22F740B70();
    v38 = sub_22F7415E0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22F0FC000, v37, v38, "Encountered non event extended token during event token generation!", v39, 2u);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    v40 = sub_22F740420();
    (*(*(v40 - 8) + 56))(a1, 1, 1, v40);
    return (*(v3 + 8))(v11, v2);
  }

  v16 = MEMORY[0x277D3C410];
LABEL_15:
  v27 = *v16;
  v28 = sub_22F740420();
  v29 = *(v28 - 8);
  (*(v29 + 104))(a1, v27, v28);
  (*(v29 + 56))(a1, 0, 1, v28);
  return (*(v3 + 8))(v11, v2);
}

void *_s11PhotosGraph32ExtendedTokenCollectionGeneratorC013generateEventC6Tokens3forSay0A12Intelligence0hcD0VGSayAF05QueryD0VG_tF_0(uint64_t a1)
{
  if (qword_2810A9418 != -1)
  {
LABEL_48:
    swift_once();
  }

  v2 = sub_22F740B90();
  __swift_project_value_buffer(v2, qword_2810B4D00);
  v3 = sub_22F740B70();
  v4 = sub_22F7415C0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_22F0FC000, v3, v4, "generateEventExtendedTokens for query tokens has started.", v5, 2u);
    MEMORY[0x2319033A0](v5, -1, -1);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (2)
    {
      v9 = v7;
      while (1)
      {
        if (v9 >= v6)
        {
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v10 = *(sub_22F73FDA0() - 8);
        v7 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_42;
        }

        sub_22F39A080(a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v9, &v30);
        v11 = v30;
        if (v30)
        {
          break;
        }

        ++v9;
        if (v7 == v6)
        {
          goto LABEL_19;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22F13EB78(0, v8[2] + 1, 1, v8);
      }

      v13 = v8[2];
      v12 = v8[3];
      if (v13 >= v12 >> 1)
      {
        v8 = sub_22F13EB78((v12 > 1), v13 + 1, 1, v8);
      }

      v8[2] = v13 + 1;
      v8[v13 + 4] = v11;
      if (v7 != v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

LABEL_19:
  v14 = v8[2];
  if (v14)
  {
    v15 = 0;
    v16 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v15 >= v8[2])
      {
        goto LABEL_43;
      }

      v17 = v8[v15 + 4];
      a1 = *(v17 + 16);
      v18 = v16[2];
      v19 = v18 + a1;
      if (__OFADD__(v18, a1))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v19 <= v16[3] >> 1)
      {
        if (!*(v17 + 16))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v18 <= v19)
        {
          v21 = v18 + a1;
        }

        else
        {
          v21 = v18;
        }

        v16 = sub_22F13EB50(isUniquelyReferenced_nonNull_native, v21, 1, v16);
        if (!*(v17 + 16))
        {
LABEL_21:

          if (a1)
          {
            goto LABEL_45;
          }

          goto LABEL_22;
        }
      }

      v22 = (v16[3] >> 1) - v16[2];
      sub_22F740160();
      if (v22 < a1)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      if (a1)
      {
        v23 = v16[2];
        v24 = __OFADD__(v23, a1);
        v25 = v23 + a1;
        if (v24)
        {
          goto LABEL_47;
        }

        v16[2] = v25;
      }

LABEL_22:
      if (v14 == ++v15)
      {
        goto LABEL_38;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_38:

  v26 = sub_22F740B70();
  v27 = sub_22F7415C0();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_22F0FC000, v26, v27, "generateEventExtendedTokens for query tokens complete.", v28, 2u);
    MEMORY[0x2319033A0](v28, -1, -1);
  }

  return v16;
}

uint64_t sub_22F39B398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3E90, &qword_22F7896F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DayOfWeekFeatureExtractor.__allocating_init()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [objc_allocWithZone(v0) initWithError_];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_22F73F370();

    swift_willThrow();
  }

  return v1;
}

id DayOfWeekFeatureExtractor.init()()
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F779720;
  *(v2 + 32) = sub_22F740E20();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_22F740E20();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_22F740E20();
  *(v2 + 72) = v5;
  *(v2 + 80) = sub_22F740E20();
  *(v2 + 88) = v6;
  *(v2 + 96) = sub_22F740E20();
  *(v2 + 104) = v7;
  *(v2 + 112) = sub_22F740E20();
  *(v2 + 120) = v8;
  *(v2 + 128) = sub_22F740E20();
  *(v2 + 136) = v9;
  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22F771350;
  *(v11 + 32) = [objc_opt_self() dateOfMoment];
  *(v11 + 40) = [objc_opt_self() dayOfWeekOfDate];
  sub_22F39B760();
  v12 = sub_22F741160();

  v13 = [v10 chain_];

  v14 = @"DayOfWeek";
  v15 = sub_22F741160();

  aBlock[4] = sub_22F39B7AC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2D83D0;
  aBlock[3] = &block_descriptor_48;
  v16 = _Block_copy(aBlock);
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_initWithName_featureNames_relation_labelForTargetBlock_, v14, v15, v13, v16);

  _Block_release(v16);
  return v17;
}

unint64_t sub_22F39B760()
{
  result = qword_2810A9218;
  if (!qword_2810A9218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A9218);
  }

  return result;
}

void *sub_22F39B7AC(void *a1, void *a2)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = [v5 name];
    a2 = sub_22F740E20();
  }

  else if (a2)
  {
    sub_22F39BABC();
    v8 = swift_allocError();
    *a2 = sub_22F73F360();

    return 0;
  }

  return a2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DayOfWeekFeatureExtractor.__allocating_init(name:featureNames:relation:labelForTargetBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    v11 = sub_22F740DF0();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(v7);
  v13 = sub_22F741160();

  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F2D83D0;
  v17[3] = &block_descriptor_3_0;
  v14 = _Block_copy(v17);
  v15 = [v12 initWithName:v11 featureNames:v13 relation:a4 labelForTargetBlock:v14];

  _Block_release(v14);

  return v15;
}

id DayOfWeekFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F39BABC()
{
  result = qword_27DAB3E98;
  if (!qword_27DAB3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3E98);
  }

  return result;
}

unint64_t sub_22F39BB24()
{
  result = qword_27DAB3EA0;
  if (!qword_27DAB3EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EA0);
  }

  return result;
}

uint64_t MagicSlotPeopleSource.__allocating_init(for:with:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  MagicSlotPeopleSource.init(for:with:)(a1, a2);
  return v4;
}

void sub_22F39BBD0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id sub_22F39BC28()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22F39BC6C(uint64_t a1, uint64_t *a2)
{
  sub_22F15C30C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v3 + 24));
  sub_22F100260(v5, v3 + 24);
  return swift_endAccess();
}

double sub_22F39BD18(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;

  return result;
}

double sub_22F39BD78()
{
  swift_beginAccess();

  return result;
}

double sub_22F39BDB0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;

  return result;
}

double sub_22F39BE10()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F39BE48()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_2810AB898);
  __swift_project_value_buffer(v0, qword_2810AB898);
  return sub_22F740B80();
}

uint64_t static CollectionSource.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2810AB890 != -1)
  {
    swift_once();
  }

  v2 = sub_22F740B90();
  v3 = __swift_project_value_buffer(v2, qword_2810AB898);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *CollectionSource.__allocating_init(for:with:categories:)(void *a1, void *a2, uint64_t a3)
{
  swift_allocObject();
  v6 = sub_22F39EE44(a1, a2, a3);

  return v6;
}

uint64_t *CollectionSource.init(for:with:categories:)(void *a1, void *a2, uint64_t a3)
{
  v4 = sub_22F39EE44(a1, a2, a3);

  return v4;
}

uint64_t sub_22F39C020(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v5 = sub_22F740720();
  v6 = sub_22F740440();
  v7 = _s11PhotosGraph16CollectionSourceC26fetchHistoricalCollections4type7subtype12photoLibrarySay0A12Intelligence09TriggeredC0VGSo16PHSuggestionTypeV_So0N7SubtypeVSo07PHPhotoK0CtFZ_0(v5, v6, a4);
  return sub_22F1459C0(v8, v7);
}

uint64_t static CollectionSource.fetchSuggestions(for:type:subtype:photoLibrary:)(unsigned __int16 a1, unsigned __int16 a2, unsigned __int16 a3, id a4)
{
  v7 = [a4 librarySpecificFetchOptions];
  v8 = [objc_opt_self() fetchSuggestionsWithState:a1 ofType:a2 subtype:a3 withOptions:v7];
  v14 = MEMORY[0x277D84F90];
  result = [v8 count];
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = result;
    if (result)
    {
      v11 = 0;
      do
      {
        v12 = [v8 objectAtIndexedSubscript_];
        MEMORY[0x231900D00]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F7411C0();
        }

        ++v11;
        sub_22F741220();
      }

      while (v10 != v11);
      v13 = v14;
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    return v13;
  }

  return result;
}

id sub_22F39C210()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

double sub_22F39C260()
{
  swift_beginAccess();

  return result;
}

double sub_22F39C2A4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F39C2E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_22F15C30C(v3 + 24, a1);
}

uint64_t PeopleSource.__allocating_init(for:with:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  PeopleSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t _s11PhotosGraph10PetsSourceCfd_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return v0;
}

uint64_t _s11PhotosGraph10PetsSourceCfD_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t PetsSource.__allocating_init(for:with:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  PetsSource.init(for:with:)(a1, a2);
  return v4;
}

void *sub_22F39C4F8(void *a1, void *a2, unsigned int *a3, void (*a4)(uint64_t *, unint64_t), uint64_t (*a5)(void *))
{
  v36 = a5;
  v46 = a3;
  v6 = v5;
  v41 = *v6;
  v42 = a4;
  v9 = sub_22F740460();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v40 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_22F15C30C(a1, v51);
  v12 = a2[3];
  v13 = a2[4];
  v45 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v12);
  v14 = (*(v13 + 24))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  v37 = xmmword_22F771340;
  *(v16 + 16) = xmmword_22F771340;
  v17 = *(v10 + 104);
  v39 = *v46;
  v46 = v9;
  v38 = v17;
  v17(v16 + v15);
  v35 = v6 + 3;
  v18 = v6;
  sub_22F15C30C(v51, (v6 + 3));
  v6[2] = v14;
  v19 = MEMORY[0x277D84F90];
  v6[8] = MEMORY[0x277D84F90];
  v44 = v6 + 8;
  v48 = v51;
  v49 = v14;
  v50 = v41;
  v20 = v14;
  v6[9] = sub_22F141B5C(v19, v42, v47, v16);
  __swift_destroy_boxed_opaque_existential_0(v51);
  swift_setDeallocating();
  (*(v10 + 8))(v16 + v15, v46);
  swift_deallocClassInstance();

  v21 = v43;
  __swift_project_boxed_opaque_existential_1(v43, v43[3]);
  v22 = sub_22F740730();
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v26 = swift_allocObject();
    *(v26 + 16) = v37;
    v27 = v40;
    v38(v40, v39, v46);
    swift_beginAccess();
    v28 = v18[2];
    v29 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v30 = SingleCollection.init(with:category:photoLibrary:)(v24, v25, v27, v28);
    *(v26 + 56) = v29;
    *(v26 + 64) = &protocol witness table for SingleCollection;
    *(v26 + 32) = v30;
    swift_beginAccess();
    v18[8] = v26;

    v31 = v45;
  }

  else
  {
    v31 = v45;
    v32 = v36(v45);
    v33 = v44;
    swift_beginAccess();
    *v33 = v32;
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v18;
}

uint64_t TripsSource.__allocating_init(for:with:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  TripsSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t AlbumsSource.__allocating_init(for:with:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  AlbumsSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t *AlbumsSource.init(for:with:)(void *a1, void *a2)
{
  v3 = v2;
  v32 = *v3;
  v6 = sub_22F740460();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F15C30C(a1, v42);
  v9 = a2[3];
  v10 = a2[4];
  v36 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v33 = xmmword_22F771340;
  *(v13 + 16) = xmmword_22F771340;
  v14 = *(v7 + 104);
  v30 = *MEMORY[0x277D3C450];
  v37 = v6;
  v29 = v14;
  v14(v13 + v12);
  sub_22F15C30C(v42, (v3 + 3));
  v3[2] = v11;
  v34 = v3 + 2;
  v15 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v35 = v3 + 8;
  v39 = v42;
  v40 = v11;
  v41 = v32;
  v16 = v11;
  v3[9] = sub_22F141B5C(v15, sub_22F3A01E8, v38, v13);
  __swift_destroy_boxed_opaque_existential_0(v42);
  swift_setDeallocating();
  (*(v7 + 8))(v13 + v12, v37);
  swift_deallocClassInstance();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_22F740730();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v21 = swift_allocObject();
    *(v21 + 16) = v33;
    v22 = v31;
    v29(v31, v30, v37);
    swift_beginAccess();
    v23 = v3[2];
    v24 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v25 = SingleCollection.init(with:category:photoLibrary:)(v19, v20, v22, v23);
    v26 = &protocol witness table for SingleCollection;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v21 = swift_allocObject();
    *(v21 + 16) = v33;
    swift_beginAccess();
    v27 = v3[2];
    v24 = type metadata accessor for AlbumsRandom();
    swift_allocObject();

    v25 = sub_22F260DE8(v27);
    v26 = &protocol witness table for AlbumsRandom;
  }

  *(v21 + 56) = v24;
  *(v21 + 64) = v26;
  *(v21 + 32) = v25;
  swift_beginAccess();
  v3[8] = v21;

  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t MediaTypesSource.__allocating_init(for:with:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  MediaTypesSource.init(for:with:)(a1, a2);
  return v4;
}

void *MediaTypesSource.init(for:with:)(void *a1, void *a2)
{
  v3 = v2;
  v39 = v3;
  v6 = (v3 + 3);
  v40 = *v3;
  v7 = sub_22F740460();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v38 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_22F15C30C(a1, v48);
  v10 = a2[3];
  v11 = a2[4];
  v42 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 24))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  v36 = xmmword_22F771340;
  *(v14 + 16) = xmmword_22F771340;
  v15 = *MEMORY[0x277D3C450];
  v16 = *(v8 + 104);
  v43 = v7;
  v17 = v7;
  v18 = v39;
  v37 = v16;
  v16((v14 + v13), v15, v17);
  v35[1] = v6;
  sub_22F15C30C(v48, v6);
  v18[2] = v12;
  v19 = MEMORY[0x277D84F90];
  v18[8] = MEMORY[0x277D84F90];
  v45 = v48;
  v46 = v12;
  v47 = v40;
  v20 = v12;
  v18[9] = sub_22F141B5C(v19, sub_22F3A01E8, v44, v14);
  __swift_destroy_boxed_opaque_existential_0(v48);
  swift_setDeallocating();
  (*(v8 + 8))(v14 + v13, v43);
  swift_deallocClassInstance();

  v21 = v41;
  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v22 = sub_22F740730();
  if (v23)
  {
    v24 = v22;
    v25 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v26 = swift_allocObject();
    v40 = v18 + 8;
    v27 = v26;
    *(v26 + 16) = v36;
    v28 = v38;
    v37(v38, *MEMORY[0x277D3C470], v43);
    swift_beginAccess();
    v29 = v21;
    v30 = v18[2];
    v31 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v32 = v30;
    v21 = v29;
    v33 = SingleCollection.init(with:category:photoLibrary:)(v24, v25, v28, v32);
    v27[7] = v31;
    v27[8] = &protocol witness table for SingleCollection;
    v27[4] = v33;
    swift_beginAccess();
    v18[8] = v27;
  }

  __swift_destroy_boxed_opaque_existential_0(v42);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v18;
}

uint64_t MemoriesSource.__allocating_init(for:with:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  MemoriesSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t *MemoriesSource.init(for:with:)(void *a1, void *a2)
{
  v3 = v2;
  v32 = *v3;
  v6 = sub_22F740460();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F15C30C(a1, v42);
  v9 = a2[3];
  v10 = a2[4];
  v36 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v33 = xmmword_22F771340;
  *(v13 + 16) = xmmword_22F771340;
  v14 = *(v7 + 104);
  v30 = *MEMORY[0x277D3C460];
  v37 = v6;
  v29 = v14;
  v14(v13 + v12);
  sub_22F15C30C(v42, (v3 + 3));
  v3[2] = v11;
  v34 = v3 + 2;
  v15 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v35 = v3 + 8;
  v39 = v42;
  v40 = v11;
  v41 = v32;
  v16 = v11;
  v3[9] = sub_22F141B5C(v15, sub_22F3A01E8, v38, v13);
  __swift_destroy_boxed_opaque_existential_0(v42);
  swift_setDeallocating();
  (*(v7 + 8))(v13 + v12, v37);
  swift_deallocClassInstance();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_22F740730();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v21 = swift_allocObject();
    *(v21 + 16) = v33;
    v22 = v31;
    v29(v31, v30, v37);
    swift_beginAccess();
    v23 = v3[2];
    v24 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v25 = SingleCollection.init(with:category:photoLibrary:)(v19, v20, v22, v23);
    v26 = &protocol witness table for SingleCollection;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v21 = swift_allocObject();
    *(v21 + 16) = v33;
    swift_beginAccess();
    v27 = v3[2];
    v24 = type metadata accessor for MemoriesRandom();
    swift_allocObject();

    v25 = sub_22F260F90(v27);
    v26 = &protocol witness table for MemoriesRandom;
  }

  *(v21 + 56) = v24;
  *(v21 + 64) = v26;
  *(v21 + 32) = v25;
  swift_beginAccess();
  v3[8] = v21;

  __swift_destroy_boxed_opaque_existential_0(v36);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t EventsSource.__allocating_init(for:with:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  EventsSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t *EventsSource.init(for:with:)(void *a1, void *a2)
{
  v3 = v2;
  v34 = *v3;
  v6 = sub_22F740460();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F15C30C(a1, v44);
  v9 = a2[3];
  v10 = a2[4];
  v38 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v35 = xmmword_22F771340;
  *(v13 + 16) = xmmword_22F771340;
  v14 = *(v7 + 104);
  v32 = *MEMORY[0x277D3C458];
  v39 = v6;
  v31 = v14;
  v14(v13 + v12);
  sub_22F15C30C(v44, (v3 + 3));
  v3[2] = v11;
  v36 = v3 + 2;
  v15 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v37 = v3 + 8;
  v41 = v44;
  v42 = v11;
  v43 = v34;
  v16 = v11;
  v3[9] = sub_22F141B5C(v15, sub_22F3A01E8, v40, v13);
  __swift_destroy_boxed_opaque_existential_0(v44);
  swift_setDeallocating();
  (*(v7 + 8))(v13 + v12, v39);
  swift_deallocClassInstance();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_22F740730();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v21 = swift_allocObject();
    *(v21 + 16) = v35;
    v22 = v33;
    v31(v33, v32, v39);
    swift_beginAccess();
    v23 = v3[2];
    v24 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v25 = SingleCollection.init(with:category:photoLibrary:)(v19, v20, v22, v23);
    *(v21 + 56) = v24;
    *(v21 + 64) = &protocol witness table for SingleCollection;
    *(v21 + 32) = v25;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v21 = swift_allocObject();
    *(v21 + 16) = v35;
    swift_beginAccess();
    v26 = v3[2];
    v27 = type metadata accessor for EventsRandom();
    swift_allocObject();

    v28 = v26;
    v29 = sub_22F262220(v28);

    *(v21 + 56) = v27;
    *(v21 + 64) = &protocol witness table for EventsRandom;
    *(v21 + 32) = v29;
  }

  swift_beginAccess();
  v3[8] = v21;

  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

uint64_t SocialGroupsSource.__allocating_init(for:with:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  SocialGroupsSource.init(for:with:)(a1, a2);
  return v4;
}

uint64_t *SocialGroupsSource.init(for:with:)(void *a1, void *a2)
{
  v3 = v2;
  v34 = *v3;
  v6 = sub_22F740460();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F15C30C(a1, v44);
  v9 = a2[3];
  v10 = a2[4];
  v38 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 24))(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v35 = xmmword_22F771340;
  *(v13 + 16) = xmmword_22F771340;
  v14 = *(v7 + 104);
  v32 = *MEMORY[0x277D3C438];
  v39 = v6;
  v31 = v14;
  v14(v13 + v12);
  sub_22F15C30C(v44, (v3 + 3));
  v3[2] = v11;
  v36 = v3 + 2;
  v15 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v37 = v3 + 8;
  v41 = v44;
  v42 = v11;
  v43 = v34;
  v16 = v11;
  v3[9] = sub_22F141B5C(v15, sub_22F3A01E8, v40, v13);
  __swift_destroy_boxed_opaque_existential_0(v44);
  swift_setDeallocating();
  (*(v7 + 8))(v13 + v12, v39);
  swift_deallocClassInstance();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_22F740730();
  if (v18)
  {
    v19 = v17;
    v20 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v21 = swift_allocObject();
    *(v21 + 16) = v35;
    v22 = v33;
    v31(v33, v32, v39);
    swift_beginAccess();
    v23 = v3[2];
    v24 = type metadata accessor for SingleCollection();
    swift_allocObject();

    v25 = SingleCollection.init(with:category:photoLibrary:)(v19, v20, v22, v23);
    *(v21 + 56) = v24;
    *(v21 + 64) = &protocol witness table for SingleCollection;
    *(v21 + 32) = v25;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v21 = swift_allocObject();
    *(v21 + 16) = v35;
    swift_beginAccess();
    v26 = v3[2];
    v27 = type metadata accessor for SocialGroupsRandom();
    swift_allocObject();

    v28 = v26;
    v29 = sub_22F26225C(v28);

    *(v21 + 56) = v27;
    *(v21 + 64) = &protocol witness table for SocialGroupsRandom;
    *(v21 + 32) = v29;
  }

  swift_beginAccess();
  v3[8] = v21;

  __swift_destroy_boxed_opaque_existential_0(v38);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

void *MagicSlotPeopleSource.init(for:with:)(void *a1, void *a2)
{
  v3 = v2;
  v75 = *v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2188, &qword_22F7789A0);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v68 - v7;
  v8 = sub_22F740460();
  v9 = *(v8 - 8);
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  v68 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = &v68 - v13;
  sub_22F15C30C(a1, v83);
  v14 = a2[3];
  v15 = a2[4];
  v74 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = (*(v15 + 24))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EA8, &qword_22F789800);
  v17 = *(v9 + 72);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22F770DF0;
  v20 = v19 + v18;
  v21 = *MEMORY[0x277D3C468];
  v71 = v10;
  v22 = *(v10 + 104);
  v22(v20, v21, v8);
  v22(v20 + v17, *MEMORY[0x277D3C438], v8);
  sub_22F15C30C(v83, (v3 + 3));
  v3[2] = v16;
  v23 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v73 = v3 + 8;
  v77 = v83;
  v78 = v16;
  v79 = v75;
  v24 = v16;
  v25 = sub_22F141B5C(v23, sub_22F3A01E8, v76, v19);
  v75 = v3;
  v3[9] = v25;
  __swift_destroy_boxed_opaque_existential_0(v83);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v26 = sub_22F740730();
  v72 = a1;
  if (!v27)
  {
    goto LABEL_4;
  }

  v28 = v26;
  v29 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v69;
  sub_22F740750();
  v31 = v71;
  if ((*(v71 + 48))(v30, 1, v8) == 1)
  {

    sub_22F120ADC(v30, &qword_27DAB2188, &qword_22F7789A0);
LABEL_4:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_22F7707D0;
    v33 = v74;
    sub_22F15C30C(v74, v83);
    v34 = type metadata accessor for FallbackSocialGroups(0);
    swift_allocObject();
    v35 = v75;
    swift_retain_n();
    v36 = sub_22F15F1E0(v83);
    *(v32 + 56) = v34;
    *(v32 + 64) = &protocol witness table for FallbackSocialGroups;
    *(v32 + 32) = v36;
    v82[0] = 0;
    sub_22F15C30C(v33, v83);
    v37 = type metadata accessor for RecentSocialGroups(0);
    swift_allocObject();
    v38 = sub_22F2DC0F0(v82, v83);
    *(v32 + 96) = v37;
    *(v32 + 104) = &protocol witness table for RecentSocialGroups;
    *(v32 + 72) = v38;
    sub_22F15C30C(v33, v83);
    v39 = type metadata accessor for BirthdayPeople(0);
    swift_allocObject();
    v40 = sub_22F2A1198(v83);
    *(v32 + 136) = v39;
    *(v32 + 144) = &protocol witness table for BirthdayPeople;
    *(v32 + 112) = v40;
    goto LABEL_6;
  }

  v41 = v70;
  (*(v31 + 32))(v70, v30, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_22F771340;
  v42 = v68;
  (*(v31 + 16))(v68, v41, v8);
  swift_beginAccess();
  v69 = v28;
  v35 = v75;
  v43 = v75[2];
  v44 = type metadata accessor for SingleCollection();
  swift_allocObject();
  swift_retain_n();
  v45 = v43;
  v46 = SingleCollection.init(with:category:photoLibrary:)(v69, v29, v42, v45);
  *(v32 + 56) = v44;
  *(v32 + 64) = &protocol witness table for SingleCollection;
  *(v32 + 32) = v46;
  (*(v31 + 8))(v70, v8);
LABEL_6:
  swift_beginAccess();
  v35[8] = v32;

  swift_beginAccess();
  v47 = v35[8];

  v48 = *(v47 + 16);
  if (v48)
  {
    v81 = MEMORY[0x277D84F90];
    sub_22F146A2C(0, v48, 0);
    v49 = 0;
    v50 = v81;
    v51 = v47 + 32;
    while (v49 < *(v47 + 16))
    {
      sub_22F15C30C(v51, v83);
      sub_22F39EBA0(v83, &v80);
      __swift_destroy_boxed_opaque_existential_0(v83);
      v52 = v80;
      v81 = v50;
      v54 = *(v50 + 16);
      v53 = *(v50 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_22F146A2C((v53 > 1), v54 + 1, 1);
        v50 = v81;
      }

      ++v49;
      *(v50 + 16) = v54 + 1;
      *(v50 + 8 * v54 + 32) = v52;
      v51 += 40;
      if (v48 == v49)
      {

        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_14:
  if (qword_2810AB890 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v55 = sub_22F740B90();
  __swift_project_value_buffer(v55, qword_2810AB898);

  v56 = sub_22F740B70();
  v57 = sub_22F7415D0();

  v58 = os_log_type_enabled(v56, v57);
  v59 = v75;
  if (v58)
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v83[0] = v61;
    *v60 = 136315138;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1070, &unk_22F7714B0);
    v63 = MEMORY[0x231900D40](v50, v62);
    v65 = v64;

    v66 = sub_22F145F20(v63, v65, v83);

    *(v60 + 4) = v66;
    _os_log_impl(&dword_22F0FC000, v56, v57, "MagicSlotPeopleSource triggers: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x2319033A0](v61, -1, -1);
    MEMORY[0x2319033A0](v60, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v74);
  __swift_destroy_boxed_opaque_existential_0(v72);
  return v59;
}

uint64_t sub_22F39EBA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for TriggerResult(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11D8, &qword_22F771608);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  *(inited + 32) = sub_22F742240();
  v30 = inited + 32;
  v31 = inited;
  *(inited + 40) = v10;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 8))(v11, v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v28 = a2;
    v29 = v2;
    v33 = MEMORY[0x277D84F90];
    sub_22F146454(0, v14, 0);
    v15 = v33;
    v16 = *(v6 + 80);
    v27[1] = v13;
    v17 = v13 + ((v16 + 32) & ~v16);
    v32 = *(v6 + 72);
    do
    {
      sub_22F13C46C(v17, v8);
      v18 = sub_22F740330();
      v20 = v19;
      sub_22F13DBA0(v8);
      v33 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22F146454((v21 > 1), v22 + 1, 1);
        v15 = v33;
      }

      *(v15 + 16) = v22 + 1;
      v23 = v15 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v17 += v32;
      --v14;
    }

    while (v14);

    a2 = v28;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v24 = v31;
  *(v31 + 48) = v15;
  v25 = sub_22F14FCC8(v24);
  swift_setDeallocating();
  result = sub_22F120ADC(v30, &unk_27DAB11E0, &unk_22F771610);
  *a2 = v25;
  return result;
}

uint64_t *sub_22F39EE44(void *a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  sub_22F15C30C(a1, (v3 + 3));
  v3[2] = a2;
  v8 = MEMORY[0x277D84F90];
  v3[8] = MEMORY[0x277D84F90];
  v11[2] = a1;
  v11[3] = a2;
  v11[4] = v7;
  v9 = a2;
  v3[9] = sub_22F141B5C(v8, sub_22F3A01E8, v11, a3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

void *_s11PhotosGraph16CollectionSourceC26fetchHistoricalCollections4type7subtype12photoLibrarySay0A12Intelligence09TriggeredC0VGSo16PHSuggestionTypeV_So0N7SubtypeVSo07PHPhotoK0CtFZ_0(int a1, unsigned __int16 a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2198, &unk_22F7789B8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v58 - v8;
  v63 = sub_22F740390();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v66 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v65 = v58 - v13;
  v14 = MEMORY[0x277D84F90];
  v69 = MEMORY[0x277D84F90];
  v15 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
  v16 = [a3 librarySpecificFetchOptions];
  v17 = objc_opt_self();
  LODWORD(v67) = a1;
  v18 = [v17 fetchSuggestionsWithState:1 ofType:a1 subtype:a2 withOptions:v16];
  v68 = v14;
  v19 = &selRef_assetIsSafeForWidgetDisplay_;
  v20 = [v18 count];
  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v21 = v20;
  v64 = v16;
  v62 = v9;
  if (v20)
  {
    v22 = a3;
    v23 = 0;
    do
    {
      v24 = [v18 objectAtIndexedSubscript_];
      MEMORY[0x231900D00]();
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      ++v23;
      sub_22F741220();
    }

    while (v21 != v23);
    v25 = v68;
    a3 = v22;
    v15 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
    v19 = &selRef_assetIsSafeForWidgetDisplay_;
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
    v3 = MEMORY[0x277D84F90];
  }

  sub_22F1459A8(v25);
  v26 = [a3 v15[317]];
  v27 = [v17 fetchSuggestionsWithState:0 ofType:v67 subtype:a2 withOptions:v26];
  v68 = v3;
  v28 = [v27 v19[487]];
  if ((v28 & 0x8000000000000000) != 0)
  {
    goto LABEL_40;
  }

  v29 = v28;
  if (v28)
  {
    v64 = v26;
    v30 = a3;
    v31 = 0;
    do
    {
      v32 = [v27 objectAtIndexedSubscript_];
      MEMORY[0x231900D00]();
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      ++v31;
      sub_22F741220();
    }

    while (v29 != v31);
    v33 = v68;
    a3 = v30;
    v15 = &selRef_invalidateCacheItemsBeforeDateWithTimestamp_;
    v19 = &selRef_assetIsSafeForWidgetDisplay_;
    v3 = MEMORY[0x277D84F90];
    v26 = v64;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
    v3 = MEMORY[0x277D84F90];
  }

  sub_22F1459A8(v33);
  v34 = [a3 v15[317]];
  v35 = [v17 fetchSuggestionsWithState:2 ofType:v67 subtype:a2 withOptions:v34];
  v68 = v3;
  v36 = [v35 v19[487]];
  if ((v36 & 0x8000000000000000) != 0)
  {
    goto LABEL_41;
  }

  v37 = v36;
  if (v36)
  {
    v38 = 0;
    do
    {
      v39 = [v35 objectAtIndexedSubscript_];
      MEMORY[0x231900D00]();
      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      ++v38;
      sub_22F741220();
    }

    while (v37 != v38);
    v40 = v68;
  }

  else
  {
    v40 = MEMORY[0x277D84F90];
  }

  result = sub_22F1459A8(v40);
  v67 = v69;
  v3 = v63;
  if (!(v69 >> 62))
  {
    v42 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v43 = v62;
    if (v42)
    {
      goto LABEL_27;
    }

LABEL_43:

    return MEMORY[0x277D84F90];
  }

LABEL_42:
  result = sub_22F741A00();
  v42 = result;
  v43 = v62;
  if (!result)
  {
    goto LABEL_43;
  }

LABEL_27:
  if (v42 >= 1)
  {
    v44 = 0;
    v45 = v67 & 0xC000000000000001;
    v46 = (v61 + 56);
    v64 = (v61 + 32);
    v58[1] = v61 + 8;
    v59 = (v61 + 16);
    v47 = MEMORY[0x277D84F90];
    v60 = v67 & 0xC000000000000001;
    do
    {
      if (v45)
      {
        v48 = MEMORY[0x2319016F0](v44, v67);
      }

      else
      {
        v48 = *(v67 + 8 * v44 + 32);
      }

      v49 = v48;
      sub_22F740380();
      v50 = v42;
      (*v46)(v43, 0, 1, v3);
      v51 = v65;
      v52 = *v64;
      (*v64)(v65, v43, v3);
      (*v59)(v66, v51, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_22F14018C(0, v47[2] + 1, 1, v47);
      }

      v54 = v47[2];
      v53 = v47[3];
      if (v54 >= v53 >> 1)
      {
        v47 = sub_22F14018C((v53 > 1), v54 + 1, 1, v47);
      }

      v55 = v61;
      v56 = v63;
      (*(v61 + 8))(v65, v63);
      v47[2] = v54 + 1;
      v57 = v47 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v54;
      v3 = v56;
      v52(v57, v66, v56);
      v43 = v62;
      v42 = v50;
      v45 = v60;
      ++v44;
    }

    while (v42 != v44);

    return v47;
  }

  __break(1u);
  return result;
}

uint64_t _s11PhotosGraph12PeopleSourceC16featuredTriggers4withSayAA17CollectionTrigger_pGAA22CurationPlannerContext_p_tFZ_0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F779720;
  sub_22F15C30C(a1, v16);
  v3 = type metadata accessor for PeopleRandom(0);
  swift_allocObject();
  v4 = sub_22F260604(v16);
  *(v2 + 56) = v3;
  *(v2 + 64) = &protocol witness table for PeopleRandom;
  *(v2 + 32) = v4;
  v15 = 0;
  sub_22F15C30C(a1, v16);
  v5 = type metadata accessor for RecentPeople(0);
  swift_allocObject();
  v6 = sub_22F2E7D14(&v15, v16);
  *(v2 + 96) = v5;
  *(v2 + 104) = &protocol witness table for RecentPeople;
  *(v2 + 72) = v6;
  v15 = 1;
  sub_22F15C30C(a1, v16);
  swift_allocObject();
  v7 = sub_22F2E7D14(&v15, v16);
  *(v2 + 136) = v5;
  *(v2 + 144) = &protocol witness table for RecentPeople;
  *(v2 + 112) = v7;
  v15 = 0;
  sub_22F15C30C(a1, v16);
  v8 = type metadata accessor for HistoricalPeople(0);
  swift_allocObject();
  v9 = sub_22F299A7C(&v15, v16);
  *(v2 + 176) = v8;
  *(v2 + 184) = &protocol witness table for HistoricalPeople;
  *(v2 + 152) = v9;
  v15 = 1;
  sub_22F15C30C(a1, v16);
  swift_allocObject();
  v10 = sub_22F299A7C(&v15, v16);
  *(v2 + 216) = v8;
  *(v2 + 224) = &protocol witness table for HistoricalPeople;
  *(v2 + 192) = v10;
  v15 = 2;
  sub_22F15C30C(a1, v16);
  swift_allocObject();
  v11 = sub_22F299A7C(&v15, v16);
  *(v2 + 256) = v8;
  *(v2 + 264) = &protocol witness table for HistoricalPeople;
  *(v2 + 232) = v11;
  sub_22F15C30C(a1, v16);
  v12 = type metadata accessor for BirthdayPeople(0);
  swift_allocObject();
  v13 = sub_22F2A1198(v16);
  *(v2 + 296) = v12;
  *(v2 + 304) = &protocol witness table for BirthdayPeople;
  *(v2 + 272) = v13;
  return v2;
}

uint64_t _s11PhotosGraph10PetsSourceC16featuredTriggers4withSayAA17CollectionTrigger_pGAA22CurationPlannerContext_p_tFZ_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F777170;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = type metadata accessor for PetsRandom();
  swift_allocObject();
  v7 = sub_22F260B48(v5);
  *(v2 + 56) = v6;
  *(v2 + 64) = &protocol witness table for PetsRandom;
  *(v2 + 32) = v7;
  v17 = 0;
  sub_22F15C30C(a1, v16);
  v8 = type metadata accessor for RecentPets(0);
  swift_allocObject();
  v9 = sub_22F2E8764(&v17, v16);
  *(v2 + 96) = v8;
  *(v2 + 104) = &protocol witness table for RecentPets;
  *(v2 + 72) = v9;
  v17 = 1;
  sub_22F15C30C(a1, v16);
  swift_allocObject();
  v10 = sub_22F2E8764(&v17, v16);
  *(v2 + 136) = v8;
  *(v2 + 144) = &protocol witness table for RecentPets;
  *(v2 + 112) = v10;
  v17 = 0;
  sub_22F15C30C(a1, v16);
  v11 = type metadata accessor for HistoricalPets(0);
  swift_allocObject();
  v12 = sub_22F29A6D4(&v17, v16);
  *(v2 + 176) = v11;
  *(v2 + 184) = &protocol witness table for HistoricalPets;
  *(v2 + 152) = v12;
  v17 = 1;
  sub_22F15C30C(a1, v16);
  swift_allocObject();
  v13 = sub_22F29A6D4(&v17, v16);
  *(v2 + 216) = v11;
  *(v2 + 224) = &protocol witness table for HistoricalPets;
  *(v2 + 192) = v13;
  v17 = 2;
  sub_22F15C30C(a1, v16);
  swift_allocObject();
  v14 = sub_22F29A6D4(&v17, v16);
  *(v2 + 256) = v11;
  *(v2 + 264) = &protocol witness table for HistoricalPets;
  *(v2 + 232) = v14;
  return v2;
}

uint64_t _s11PhotosGraph11TripsSourceC16featuredTriggers4withSayAA17CollectionTrigger_pGAA22CurationPlannerContext_p_tFZ_0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EB0, &qword_22F789808);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F777170;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = type metadata accessor for TripsRandom();
  swift_allocObject();
  v7 = sub_22F2621E4(v5);

  *(v2 + 56) = v6;
  *(v2 + 64) = &protocol witness table for TripsRandom;
  *(v2 + 32) = v7;
  v17 = 0;
  sub_22F15C30C(a1, v16);
  v8 = type metadata accessor for RecentTrips(0);
  swift_allocObject();
  v9 = sub_22F35347C(&v17, v16);
  *(v2 + 96) = v8;
  *(v2 + 104) = &protocol witness table for RecentTrips;
  *(v2 + 72) = v9;
  v17 = 1;
  sub_22F15C30C(a1, v16);
  swift_allocObject();
  v10 = sub_22F35347C(&v17, v16);
  *(v2 + 136) = v8;
  *(v2 + 144) = &protocol witness table for RecentTrips;
  *(v2 + 112) = v10;
  v17 = 0;
  sub_22F15C30C(a1, v16);
  v11 = type metadata accessor for HistoricalTrips(0);
  swift_allocObject();
  v12 = sub_22F34750C(&v17, v16);
  *(v2 + 176) = v11;
  *(v2 + 184) = &protocol witness table for HistoricalTrips;
  *(v2 + 152) = v12;
  v17 = 1;
  sub_22F15C30C(a1, v16);
  swift_allocObject();
  v13 = sub_22F34750C(&v17, v16);
  *(v2 + 216) = v11;
  *(v2 + 224) = &protocol witness table for HistoricalTrips;
  *(v2 + 192) = v13;
  v17 = 2;
  sub_22F15C30C(a1, v16);
  swift_allocObject();
  v14 = sub_22F34750C(&v17, v16);
  *(v2 + 256) = v11;
  *(v2 + 264) = &protocol witness table for HistoricalTrips;
  *(v2 + 232) = v14;
  return v2;
}

uint64_t sub_22F3A0200(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Song(0);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v35 = &v29 - v8;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v37 = MEMORY[0x277D84F90];
  sub_22F146514(0, v9, 0);
  v10 = v37;
  v34 = a1 + 56;
  v11 = sub_22F741980();
  v12 = v11;
  v13 = 0;
  v29 = a1 + 64;
  v30 = v9;
  v31 = v6;
  v32 = a1;
  while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(a1 + 32))
  {
    v15 = v12 >> 6;
    if ((*(v34 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
    {
      goto LABEL_23;
    }

    v16 = *(a1 + 36);
    v17 = *(a1 + 48);
    v18 = *(v36 + 72);
    sub_22F15CAA0(v17 + v18 * v12, v6);
    sub_22F13B778(v6, v35);
    v33 = v2;
    v11 = v6;
    if (v2)
    {
      goto LABEL_27;
    }

    sub_22F15CBD8(v6);
    v37 = v10;
    v20 = *(v10 + 16);
    v19 = *(v10 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_22F146514((v19 > 1), v20 + 1, 1);
      v10 = v37;
    }

    *(v10 + 16) = v20 + 1;
    v11 = sub_22F15CB04(v35, v10 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + v20 * v18);
    a1 = v32;
    v14 = 1 << *(v32 + 32);
    if (v12 >= v14)
    {
      goto LABEL_24;
    }

    v21 = *(v34 + 8 * v15);
    if ((v21 & (1 << v12)) == 0)
    {
      goto LABEL_25;
    }

    if (v16 != *(v32 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v12 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v12 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v15 << 6;
      v24 = v15 + 1;
      v25 = (v29 + 8 * v15);
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          v11 = sub_22F107D18(v12, v16, 0);
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_20;
        }
      }

      v11 = sub_22F107D18(v12, v16, 0);
LABEL_20:
      a1 = v32;
    }

    ++v13;
    v12 = v14;
    v6 = v31;
    v2 = v33;
    if (v13 == v30)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_22F15CBD8(v11);

  __break(1u);
  return result;
}

void *sub_22F3A050C(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_22F741A00();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x2319016F0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_22F741BA0();
          sub_22F741BE0();
          v5 = v14;
          sub_22F741BF0();
          v3 = &v18;
          sub_22F741BB0();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_20:

  return v3;
}

void sub_22F3A06C8(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v18 = *(a3 + 16);
  if (v18)
  {
    v5 = a1;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v19[0] = v10;
      v19[1] = v9;

      v11 = v5(v19);
      if (v3)
      {

        goto LABEL_15;
      }

      if (v11)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F146454(0, *(v8 + 16) + 1, 1);
          v8 = v20;
        }

        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_22F146454((v13 > 1), v14 + 1, 1);
          v8 = v20;
        }

        *(v8 + 16) = v14 + 1;
        v15 = v8 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v9;
        v4 = a3;
        v5 = a1;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v18 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t static MusicCurator.inflateDisplayMetadata(for:inflationContext:curatorContext:progressReporter:completionHandler:)(void *a1, char *a2, uint64_t a3, void *a4, void (*a5)(id, void *), uint64_t a6)
{
  v152 = a4;
  v153 = a5;
  v131 = a2;
  v147 = sub_22F740AD0();
  v8 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v146 = v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_22F73EEC0();
  v148 = *(v155 - 8);
  v10 = *(v148 + 8);
  MEMORY[0x28223BE20](v155);
  v145 = v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v121 - v12;
  v14 = sub_22F73EEE0();
  v151 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v150 = (v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22F740C00();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2810A9BD0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v19 = qword_2810B4E90;
  *&v20 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - inflateDisplayMetadataForMusicCuration", 55, 2u, v20, 0, v19, v169);
  v21 = sub_22F2E3C74();
  if (*(v21 + 16))
  {
    v137 = v14;
    v130 = a1;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v141 = sub_22F740B90();
    __swift_project_value_buffer(v141, qword_2810B4D90);

    v22 = sub_22F740B70();
    v23 = sub_22F7415C0();
    v24 = os_log_type_enabled(v22, v23);
    v149 = v10;
    if (v24)
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = *(v21 + 16);

      _os_log_impl(&dword_22F0FC000, v22, v23, "[MemoriesMusic] Inflating curation for %ld adamIDs", v25, 0xCu);
      MEMORY[0x2319033A0](v25, -1, -1);
    }

    else
    {
    }

    v27 = v21;
    sub_22F740BF0();
    v28 = sub_22F22FB24(v18, 0);
    v136 = v8;
    v29 = *(v28 + 4);
    v140 = *(v28 + 3);
    v154 = v28;
    v126 = v29;
    v30 = v131;
    static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)(*&v131[OBJC_IVAR___PGMusicCurationInflationContext_actionSource], *&v131[OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8], &v175);
    v31 = *(&v170 + 1);
    v129 = v171;
    v32 = swift_allocObject();
    v33 = v169[1];
    *(v32 + 40) = v169[0];
    v34 = v30;
    v35 = v27;
    v36 = v130;
    *(v32 + 16) = v30;
    *(v32 + 24) = v36;
    v37 = v152;
    *(v32 + 32) = v152;
    *(v32 + 56) = v33;
    *(v32 + 72) = v170;
    v38 = v153;
    *(v32 + 88) = v171;
    *(v32 + 96) = v38;
    v127 = v35;
    v128 = a6;
    *(v32 + 104) = a6;
    v139 = v35[2];
    if (!v139)
    {
      swift_retain_n();
      swift_retain_n();
      v54 = v34;
      v55 = v36;
      v56 = v37;
      v57 = v128;
      swift_retain_n();
      v58 = v54;
      v59 = v55;
      v60 = v56;

      sub_22F3A6250(MEMORY[0x277D84F90], 0, v59, v60, v169, v153, v57);

LABEL_40:

      return sub_22F1D210C(&v175);
    }

    v125 = v32;
    v143 = v13;
    v39 = qword_2810A9B98;
    v121[1] = v31;
    swift_retain_n();
    swift_retain_n();
    v40 = v34;
    v41 = v36;
    v42 = v37;
    swift_retain_n();
    v43 = v40;
    v44 = v41;
    v152 = v42;

    v46 = v39 == -1;
    v47 = v45;
    if (!v46)
    {
      swift_once();
    }

    v48 = qword_2810B4E70;
    *&v49 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v49, 0, v48, v172);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
    v50 = swift_allocObject();
    v51 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    *(v50 + 16) = MEMORY[0x277D84F90];
    *(v50 + 24) = v51;
    v144 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
    v52 = swift_allocObject();
    *(v52 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v142 = v52;
    *(v52 + 16) = 0;
    v121[0] = v52 + 16;
    v10 = v154;
    if (*(v154 + 3) == v140 && *(v154 + 4) == v47 || (sub_22F742040() & 1) != 0)
    {
      Batch = MusicBag.songQueryBatchSize()();
      LODWORD(v140) = 0;
    }

    else
    {
      Batch = MusicBag.songEquivalentQueryBatchSize()();
      LODWORD(v140) = 1;
    }

    v61 = v127;
    v13 = v143;
    if (Batch)
    {

      sub_22F233C24(0, v139, Batch, v61, Batch);
      v42 = v62;
      v153 = 0;

      if (qword_2810A9440 == -1)
      {
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
LABEL_22:
    __swift_project_value_buffer(v141, qword_2810B4D48);

    v63 = sub_22F740B70();
    v64 = sub_22F7415C0();
    v65 = os_log_type_enabled(v63, v64);
    v66 = v125;
    v67 = v42;
    if (v65)
    {
      v68 = swift_slowAlloc();
      *v68 = 134218240;
      *(v68 + 4) = v139;

      *(v68 + 12) = 2048;
      *(v68 + 14) = v42[2];

      _os_log_impl(&dword_22F0FC000, v63, v64, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v68, 0x16u);
      MEMORY[0x2319033A0](v68, -1, -1);
    }

    else
    {
    }

    v69 = v42[2];
    v123 = v174;
    v124 = *(&v173 + 1);
    v70 = swift_allocObject();
    v71 = v172[1];
    *(v70 + 16) = v172[0];
    *(v70 + 32) = v71;
    *(v70 + 48) = v173;
    v72 = v152;
    *(v70 + 64) = v174;
    *(v70 + 72) = v72;
    *(v70 + 80) = sub_22F3A51CC;
    *(v70 + 88) = v66;
    v73 = v142;
    v74 = v144;
    *(v70 + 96) = v142;
    *(v70 + 104) = v74;
    type metadata accessor for CompletionCounter();
    v75 = swift_allocObject();
    v122 = v67;
    v76 = v72;
    v77 = v75;
    *(v75 + 16) = sub_22F233FA4;
    *(v75 + 24) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
    v78 = swift_allocObject();
    *(v78 + 32) = 0;
    *(v78 + 16) = 0;
    v135 = v69;
    *(v78 + 24) = v69;
    v141 = v77;
    *(v77 + 32) = v78;
    sub_22F73EF30();
    swift_allocObject();
    a6 = v73;
    v14 = v76;

    v8 = sub_22F73EF20();
    if (qword_2810A9168 != -1)
    {
      swift_once();
    }

    v79 = qword_2810A9170;
    v81 = v150;
    v80 = v151;
    v150->isa = qword_2810A9170;
    (v80[13])(v81, *MEMORY[0x277CC86D8], v137);
    v82 = v79;
    sub_22F73EF00();
    v83 = [v14 progressReportersForParallelOperationsWithCount_];
    sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
    v84 = sub_22F741180();

    v85 = (v136 + 8);
    v136 = (v148 + 16);
    v137 = v85;
    v134 = v148 + 32;
    v135 = v149 + 7;
    v164 = v84;
    v165 = 0;
    v132 = v148 + 8;
    v133 = &v160;
    v166 = v122;
    v167 = 0;
    v168 = 0;
    v138 = v8;
    v139 = v14;
    while (1)
    {
      v86 = sub_22F226D78();
      if (!v86)
      {

        goto LABEL_39;
      }

      v88 = v86;
      v89 = v87;
      v90 = *(v10 + 4);
      v91 = *(v10 + 5);
      v92 = *(v10 + 6);
      v93 = *(v10 + 7);
      v94 = *(v10 + 8);
      v158 = *(v10 + 3);
      v159 = v90;
      v160 = v91;
      v161 = v92;
      v162 = v93;
      v163 = v94;
      v156[0] = v175;
      v156[1] = v176;
      v156[2] = v177;
      v157 = v178;

      v95 = v153;
      MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v89, v156, v140, v13);
      if (v95)
      {
        break;
      }

      v152 = v88;
      v153 = 0;

      v96 = swift_allocObject();
      v97 = v144;
      v96[2] = v8;
      v96[3] = v97;
      v96[4] = v141;
      v96[5] = a6;
      v151 = v96;

      sub_22F741740();
      if (qword_2810A8E30 != -1)
      {
        swift_once();
      }

      v98 = v146;
      sub_22F740AC0();
      sub_22F740A90();
      (*v137)(v98, v147);
      v150 = *(v10 + 9);
      v18 = v148;
      v99 = v145;
      v100 = v155;
      (*(v148 + 2))(v145, v13, v155);
      v101 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v102 = (v135 + v101) & 0xFFFFFFFFFFFFFFF8;
      v103 = (v102 + 63) & 0xFFFFFFFFFFFFFFF8;
      v149 = (v103 + 15) & 0xFFFFFFFFFFFFFFF8;
      v104 = (v103 + 39) & 0xFFFFFFFFFFFFFFF8;
      v105 = swift_allocObject();
      v18[4](v105 + v101, v99, v100);
      v106 = v105 + v102;
      v107 = v176;
      *v106 = v175;
      *(v106 + 16) = v107;
      *(v106 + 32) = v177;
      *(v106 + 48) = v178;
      *(v105 + v103) = v154;
      v108 = v105 + v149;
      v10 = v154;
      *v108 = "MusicKitClient HTTP Request";
      *(v108 + 8) = 27;
      *(v108 + 16) = 2;
      v109 = v152;
      *(v105 + v104) = v152;
      v110 = (v105 + ((v104 + 15) & 0xFFFFFFFFFFFFFFF8));
      v111 = v151;
      *v110 = sub_22F233FA8;
      v110[1] = v111;
      a1 = swift_allocObject();
      a1[2] = sub_22F233FAC;
      a1[3] = v105;
      v162 = sub_22F2915BC;
      v163 = a1;
      v158 = MEMORY[0x277D85DD0];
      v159 = 1107296256;
      v160 = sub_22F2280B0;
      v161 = &block_descriptor_49;
      v112 = _Block_copy(&v158);
      sub_22F1D20B0(&v175, v156);

      v113 = v109;

      dispatch_sync(v150, v112);
      v114 = v112;
      v13 = v143;
      _Block_release(v114);

      (v18[1])(v13, v155);
      LOBYTE(v111) = swift_isEscapingClosureAtFileLocation();

      a6 = v142;
      v8 = v138;
      v14 = v139;
      if (v111)
      {
        __break(1u);
        goto LABEL_41;
      }
    }

    [*(a6 + 24) lock];
    swift_beginAccess();
    v115 = *(a6 + 16);
    *(a6 + 16) = v95;

    v116 = *(a6 + 24);
    v117 = v95;
    [v116 unlock];
    v118 = v141;
    v119 = *(v141 + 32);

    os_unfair_lock_lock((v119 + 32));
    if (*(v119 + 16))
    {
      os_unfair_lock_unlock((v119 + 32));
    }

    else
    {
      *(v119 + 16) = 1;
      os_unfair_lock_unlock((v119 + 32));

      (*(v118 + 16))(v120);
    }

LABEL_39:
    v36 = v130;
    v34 = v131;
    goto LABEL_40;
  }

  sub_22F7416A0();
  sub_22F1B2BBC(0);
  v153(a1, 0);
}

void sub_22F3A1B38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_22F73F360();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

double static MusicCurator.fetchSongJSON(for:inflationContext:progressReporter:completionHandler:)(void *a1, NSObject *a2, NSObject *a3, unint64_t a4, unint64_t a5)
{
  v10 = sub_22F14EA28(MEMORY[0x277D84F90]);
  _s11PhotosGraph12MusicCuratorC21fetchSongMetaDataJSON3for7options16inflationContext16progressReporter17completionHandlerySaySSG_SDySSypGAA0c17CurationInflationM0CSo010MAProgressO0CySSSg_s5Error_pSgtctFZ_0(a1, v10, a2, a3, a4, a5);

  return result;
}

void _s11PhotosGraph12MusicCuratorC21fetchSongMetaDataJSON3for7options16inflationContext16progressReporter17completionHandlerySaySSG_SDySSypGAA0c17CurationInflationM0CSo010MAProgressO0CySSSg_s5Error_pSgtctFZ_0(void *a1, NSObject *a2, NSObject *a3, NSObject *a4, unint64_t a5, unint64_t a6)
{
  v12 = sub_22F73F690();
  v260 = *(v12 - 8);
  v261 = v12;
  MEMORY[0x28223BE20](v12);
  v254 = (v247 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v270 = sub_22F740AD0();
  v259 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v269 = v247 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = sub_22F73EEC0();
  v271 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v268 = v247 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = v15;
  MEMORY[0x28223BE20](v16);
  v280 = v247 - v17;
  v262 = sub_22F73EEE0();
  v258 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v256 = (v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = sub_22F740C00();
  MEMORY[0x28223BE20](v19 - 8);
  v264 = v247 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Song(0);
  v279 = *(v21 - 8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = (v247 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_2810A9460 != -1)
  {
    goto LABEL_114;
  }

  while (1)
  {
    v255 = sub_22F740B90();
    v24 = __swift_project_value_buffer(v255, qword_2810B4D90);

    v274 = v24;
    v25 = sub_22F740B70();
    v26 = sub_22F7415C0();

    v27 = os_log_type_enabled(v25, v26);
    v265 = a6;
    v278 = a4;
    v272 = a2;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v273 = a5;
      v30 = a3;
      v31 = v29;
      *&v296 = v29;
      *v28 = 134218242;
      *(v28 + 4) = a1[2];

      *(v28 + 12) = 2080;
      v32 = sub_22F740CB0();
      v34 = sub_22F145F20(v32, v33, &v296);

      *(v28 + 14) = v34;
      _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs called for %ld adamIDs with  options: %s", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      v35 = v31;
      a3 = v30;
      a5 = v273;
      MEMORY[0x2319033A0](v35, -1, -1);
      MEMORY[0x2319033A0](v28, -1, -1);
    }

    else
    {
    }

    if (qword_2810A9BD0 != -1)
    {
      swift_once();
    }

    v36 = qword_2810B4E90;
    *&v37 = CACurrentMediaTime();
    sub_22F1B560C("fetchSongDisplayMetadataJSONForAdamIDs", 38, 2u, v37, 0, v36, v300);
    v38 = sub_22F7416B0();
    v266 = v39;
    a2 = *(&a3->isa + OBJC_IVAR___PGMusicCurationInflationContext_cache);
    if (*(&a3->isa + OBJC_IVAR___PGMusicCurationInflationContext_shouldForceMetadataRefetch) == 1)
    {
      v253 = v38;
      if (a1[2])
      {
        v250 = a2;

        v275 = 0;
        v252 = MEMORY[0x277D84F90];
        goto LABEL_42;
      }

      v42 = 0;
      v43 = MEMORY[0x277D84F90];
      goto LABEL_54;
    }

    v249 = v36;
    v40 = v38;
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_22F770DF0;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_22F153470();
    *(v41 + 32) = 0x44496D616461;
    *(v41 + 40) = 0xE600000000000000;
    *(v41 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    *(v41 + 104) = sub_22F25F050();
    *(v41 + 72) = a1;

    a6 = sub_22F741560();
    sub_22F2DA3D8(a6);
    v275 = 0;
    v273 = a5;
    v250 = a2;
    v251 = a3;
    v253 = v40;
    a4 = v44;

    isa = a4[2].isa;
    v46 = MEMORY[0x277D84F90];
    v252 = a4;
    if (isa)
    {
      v267 = a1;
      *&v296 = MEMORY[0x277D84F90];
      sub_22F146454(0, isa, 0);
      v46 = v296;
      a4 = (a4 + ((LOBYTE(v279[10].isa) + 32) & ~LOBYTE(v279[10].isa)));
      v47 = v279[9].isa;
      do
      {
        sub_22F15CAA0(a4, v23);
        v48 = v23->isa;
        a6 = v23[1].isa;

        sub_22F15CBD8(v23);
        *&v296 = v46;
        v50 = *(v46 + 16);
        v49 = *(v46 + 24);
        a2 = (v50 + 1);
        if (v50 >= v49 >> 1)
        {
          sub_22F146454((v49 > 1), v50 + 1, 1);
          v46 = v296;
        }

        *(v46 + 16) = a2;
        v51 = v46 + 16 * v50;
        *(v51 + 32) = v48;
        *(v51 + 40) = a6;
        a4 = (v47 + a4);
        --isa;
      }

      while (isa);
      a1 = v267;
    }

    v52 = sub_22F1515F8(v46);

    v53 = a1[2];
    if (!v53)
    {
      break;
    }

    a5 = 0;
    v276 = (a1 + 4);
    a3 = (v52 + 56);
    a1 = MEMORY[0x277D84F90];
    v279 = v53;
    while (a5 < v53)
    {
      a2 = (a5 + 1);
      if (__OFADD__(a5, 1))
      {
        goto LABEL_112;
      }

      v54 = &v276[16 * a5];
      v23 = *v54;
      a4 = *(v54 + 1);
      ++a5;
      if (!*(v52 + 16))
      {

        goto LABEL_32;
      }

      sub_22F742170();

      sub_22F740D60();
      v55 = sub_22F7421D0();
      v56 = -1 << *(v52 + 32);
      v57 = v55 & ~v56;
      if ((*(&a3->isa + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
      {
        a6 = ~v56;
        while (1)
        {
          v58 = (*(v52 + 48) + 16 * v57);
          v59 = *v58 == v23 && v58[1] == a4;
          if (v59 || (sub_22F742040() & 1) != 0)
          {
            break;
          }

          v57 = (v57 + 1) & a6;
          if (((*(&a3->isa + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v53 = v279;
        if (a2 == v279)
        {
          goto LABEL_40;
        }
      }

      else
      {
LABEL_32:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v306[0] = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F146454(0, a1[2] + 1, 1);
          a1 = *&v306[0];
        }

        v61 = a1;
        v62 = a1[2];
        v63 = v61[3];
        a6 = v62 + 1;
        if (v62 >= v63 >> 1)
        {
          sub_22F146454((v63 > 1), v62 + 1, 1);
          v61 = *&v306[0];
        }

        v61[2] = a6;
        v64 = &v61[2 * v62];
        v64[4] = v23;
        v64[5] = a4;
        v53 = v279;
        a1 = v61;
        if (a2 == v279)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    swift_once();
  }

  a1 = MEMORY[0x277D84F90];
LABEL_40:

  if (a1[2])
  {
    a3 = v251;
    a5 = v273;
    v36 = v249;
LABEL_42:

    v65 = sub_22F740B70();
    v66 = sub_22F7415C0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v251 = a3;
      v68 = a5;
      v69 = v36;
      v70 = v67;
      v71 = swift_slowAlloc();
      *&v296 = v71;
      *v70 = 134218242;
      *(v70 + 4) = a1[2];

      *(v70 + 12) = 2080;
      v72 = MEMORY[0x231900D40](a1, MEMORY[0x277D837D0]);
      v74 = sub_22F145F20(v72, v73, &v296);

      *(v70 + 14) = v74;
      _os_log_impl(&dword_22F0FC000, v65, v66, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs will fetch metadata for %ld songs from server. adamIDsToFetch = %s", v70, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v71);
      MEMORY[0x2319033A0](v71, -1, -1);
      v75 = v70;
      v36 = v69;
      a5 = v68;
      a3 = v251;
      MEMORY[0x2319033A0](v75, -1, -1);
    }

    else
    {
    }

    v76 = v272;
    *&v77 = CACurrentMediaTime();
    sub_22F1B560C("fetchSongDisplayMetadataJSONForAdamIDs Uncached", 47, 2u, v77, 0, v36, v303);
    v78 = v264;
    sub_22F740BF0();
    v79 = v78;
    v80 = v275;
    v81 = sub_22F22FB24(v79, 0);
    v275 = v80;
    if (v80)
    {

      v82 = v275;
      goto LABEL_56;
    }

    v267 = a1;
    v83 = *(v81 + 4);
    v276 = *(v81 + 3);
    v279 = v81;
    v85 = *(&a3->isa + OBJC_IVAR___PGMusicCurationInflationContext_actionSource);
    v84 = *(&a3[1].isa + OBJC_IVAR___PGMusicCurationInflationContext_actionSource);
    v86 = sub_22F740E20();
    v88 = v87;
    v89 = *(v76 + 16);
    v249 = v83;
    if (v89)
    {
      v90 = v86;

      v91 = sub_22F1229E8(v90, v88);
      v93 = v92;

      if (v93)
      {
        sub_22F13A100(*(v76 + 56) + 32 * v91, &v296);
        if (swift_dynamicCast())
        {
          v94 = v306[0];
          if (sub_22F740E20() == v94 && v95 == *(&v94 + 1))
          {

            goto LABEL_104;
          }

          v236 = sub_22F742040();

          if (v236)
          {
LABEL_104:
            v237 = sub_22F740B70();
            v238 = sub_22F7415C0();
            if (os_log_type_enabled(v237, v238))
            {
              v239 = swift_slowAlloc();
              *v239 = 0;
              _os_log_impl(&dword_22F0FC000, v237, v238, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs Requesting the augmented curation and display fetch option", v239, 2u);
              MEMORY[0x2319033A0](v239, -1, -1);
            }

            static MusicKitClient.FetchOptions.augmentedCurationAndDisplay(musicKitSource:)(v85, v84, v294);
LABEL_64:
            v296 = v294[0];
            v297 = v294[1];
            v298 = v294[2];
            v299 = v295;
            v116 = *(&v304 + 1);
            v117 = v305;
            v118 = *(&v301 + 1);
            v119 = v302;
            v120 = swift_allocObject();
            v121 = v250;
            *(v120 + 16) = a3;
            *(v120 + 24) = v121;
            v122 = v266;
            v123 = v252;
            *(v120 + 32) = v266;
            *(v120 + 40) = v123;
            v124 = v278;
            *(v120 + 48) = v263;
            *(v120 + 56) = v124;
            v125 = v303[1];
            *(v120 + 64) = v303[0];
            *(v120 + 80) = v125;
            *(v120 + 96) = v304;
            *(v120 + 112) = v305;
            v126 = v300[0];
            v127 = v300[1];
            v128 = v302;
            *(v120 + 152) = v301;
            *(v120 + 136) = v127;
            *(v120 + 120) = v126;
            *(v120 + 168) = v128;
            *(v120 + 176) = a5;
            v129 = a5;
            v130 = v265;
            v131 = v267;
            v247[6] = v117;
            v248 = v120;
            *(v120 + 184) = v265;
            *(v120 + 192) = v131;
            v273 = v131[2];
            v251 = a3;
            v247[4] = v118;
            v247[5] = v116;
            v247[3] = v119;
            if (v273)
            {
              v274 = qword_2810A9B98;
              v132 = v121;
              swift_retain_n();
              swift_retain_n();
              swift_retain_n();
              swift_retain_n();
              swift_bridgeObjectRetain_n();
              v133 = a3;
              v134 = v132;
              v135 = v122;
              swift_bridgeObjectRetain_n();
              v136 = v278;
              swift_retain_n();
              v137 = v134;
              v138 = v133;
              v139 = v135;
              v140 = v136;
              if (v274 != -1)
              {
                swift_once();
              }

              v141 = qword_2810B4E70;
              *&v142 = CACurrentMediaTime();
              sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v142, 0, v141, v306);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
              v143 = swift_allocObject();
              v144 = &selRef_floatVector;
              v145 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
              *(v143 + 16) = MEMORY[0x277D84F90];
              *(v143 + 24) = v145;
              v264 = v143;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
              a2 = swift_allocObject();
              a2[3].isa = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
              a2[2].isa = 0;
              v23 = v279;
              if (v279[3].isa == v276 && v279[4].isa == v249 || (sub_22F742040() & 1) != 0)
              {
                Batch = MusicBag.songQueryBatchSize()();
                LODWORD(v261) = 0;
                a3 = v278;
                if (Batch)
                {
LABEL_71:
                  v247[0] = a2 + 2;
                  v147 = v267;

                  v148 = v275;
                  sub_22F233C24(0, v273, Batch, v147, Batch);
                  v150 = v149;
                  v276 = v148;

                  if (qword_2810A9440 != -1)
                  {
                    swift_once();
                  }

                  v151 = v139;
                  __swift_project_value_buffer(v255, qword_2810B4D48);

                  v152 = sub_22F740B70();
                  v153 = sub_22F7415C0();
                  if (os_log_type_enabled(v152, v153))
                  {
                    v154 = swift_slowAlloc();
                    *v154 = 134218240;
                    *(v154 + 4) = v273;

                    *(v154 + 12) = 2048;
                    *(v154 + 14) = v150[2];

                    _os_log_impl(&dword_22F0FC000, v152, v153, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v154, 0x16u);
                    MEMORY[0x2319033A0](v154, -1, -1);
                  }

                  else
                  {
                  }

                  v169 = v150[2];
                  v275 = v150;
                  v247[1] = v308;
                  v247[2] = *(&v307 + 1);
                  v170 = swift_allocObject();
                  v171 = v306[1];
                  *(v170 + 16) = v306[0];
                  *(v170 + 32) = v171;
                  *(v170 + 48) = v307;
                  *(v170 + 64) = v308;
                  *(v170 + 72) = v151;
                  v172 = v248;
                  *(v170 + 80) = sub_22F3AC390;
                  *(v170 + 88) = v172;
                  v173 = v264;
                  *(v170 + 96) = a2;
                  *(v170 + 104) = v173;
                  type metadata accessor for CompletionCounter();
                  v174 = swift_allocObject();
                  v174[2] = sub_22F3AC370;
                  v174[3] = v170;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
                  v175 = swift_allocObject();
                  *(v175 + 32) = 0;
                  *(v175 + 16) = 0;
                  v274 = v169;
                  *(v175 + 24) = v169;
                  v263 = v174;
                  v174[4] = v175;
                  sub_22F73EF30();
                  swift_allocObject();
                  v176 = v151;

                  v177 = sub_22F73EF20();
                  if (qword_2810A9168 != -1)
                  {
                    swift_once();
                  }

                  v178 = qword_2810A9170;
                  v179 = v256;
                  *v256 = qword_2810A9170;
                  (*(v258 + 104))(v179, *MEMORY[0x277CC86D8], v262);
                  v180 = v178;
                  v262 = v177;
                  sub_22F73EF00();
                  v181 = [v176 progressReportersForParallelOperationsWithCount_];
                  sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
                  v182 = sub_22F741180();

                  v258 = v271 + 16;
                  ++v259;
                  v256 = (v271 + 32);
                  v257 += 7;
                  v289 = v182;
                  v290 = 0;
                  v254 = (v271 + 8);
                  v255 = &v285;
                  v291 = v275;
                  v292 = 0;
                  v293 = 0;
                  v260 = a2;
                  while (1)
                  {
                    v183 = sub_22F226D78();
                    if (!v183)
                    {

                      goto LABEL_101;
                    }

                    v185 = v183;
                    v186 = v184;
                    v187 = v23[4].isa;
                    v188 = v23[5].isa;
                    v189 = v23[6].isa;
                    v190 = v23[7].isa;
                    v191 = v23[8].isa;
                    v283 = v23[3].isa;
                    v284 = v187;
                    v285 = v188;
                    v286 = v189;
                    v287 = v190;
                    v288 = v191;
                    v281[0] = v296;
                    v281[1] = v297;
                    v281[2] = v298;
                    v282 = v299;

                    v192 = v276;
                    MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v186, v281, v261, v280);
                    v276 = v192;
                    if (v192)
                    {
                      break;
                    }

                    v275 = v185;

                    v193 = swift_allocObject();
                    v194 = v263;
                    v195 = v264;
                    v193[2] = v262;
                    v193[3] = v195;
                    v193[4] = v194;
                    v193[5] = a2;
                    v274 = v193;

                    sub_22F741740();
                    if (qword_2810A8E30 != -1)
                    {
                      swift_once();
                    }

                    v196 = v269;
                    sub_22F740AC0();
                    sub_22F740A90();
                    (*v259)(v196, v270);
                    v273 = v23[9].isa;
                    v197 = v271;
                    v198 = v268;
                    v199 = v277;
                    (*(v271 + 16))(v268, v280, v277);
                    v200 = (*(v197 + 80) + 16) & ~*(v197 + 80);
                    v201 = (v257 + v200) & 0xFFFFFFFFFFFFFFF8;
                    v202 = (v201 + 63) & 0xFFFFFFFFFFFFFFF8;
                    v272 = (v202 + 15) & 0xFFFFFFFFFFFFFFF8;
                    a4 = ((v202 + 39) & 0xFFFFFFFFFFFFFFF8);
                    a6 = swift_allocObject();
                    (*(v197 + 32))(a6 + v200, v198, v199);
                    v203 = a6 + v201;
                    v204 = v297;
                    *v203 = v296;
                    *(v203 + 16) = v204;
                    *(v203 + 32) = v298;
                    *(v203 + 48) = v299;
                    *(a6 + v202) = v279;
                    v205 = a6 + v272;
                    *v205 = "MusicKitClient HTTP Request";
                    *(v205 + 8) = 27;
                    *(v205 + 16) = 2;
                    v206 = v275;
                    *(&a4->isa + a6) = v275;
                    v207 = (a6 + ((&a4[1].isa + 7) & 0xFFFFFFFFFFFFFFF8));
                    v208 = v274;
                    *v207 = sub_22F3AC36C;
                    v207[1] = v208;
                    a5 = swift_allocObject();
                    *(a5 + 16) = sub_22F294B80;
                    *(a5 + 24) = a6;
                    v287 = sub_22F294B84;
                    v288 = a5;
                    v283 = MEMORY[0x277D85DD0];
                    v284 = 1107296256;
                    v285 = sub_22F2280B0;
                    v286 = &block_descriptor_125;
                    v209 = _Block_copy(&v283);
                    sub_22F1D20B0(v294, v281);

                    v210 = v206;

                    v23 = v279;

                    dispatch_sync(v273, v209);
                    _Block_release(v209);

                    (*(v197 + 8))(v280, v277);
                    LOBYTE(v208) = swift_isEscapingClosureAtFileLocation();

                    a3 = v278;
                    a1 = v267;
                    a2 = v260;
                    if (v208)
                    {
                      goto LABEL_113;
                    }
                  }

                  [(objc_class *)a2[3].isa lock];
                  LOBYTE(v144) = 1;
                  swift_beginAccess();
                  v211 = a2[2].isa;
                  v212 = v276;
                  a2[2].isa = v276;

                  v213 = a2[3].isa;
                  v214 = v212;
                  [(objc_class *)v213 unlock];
                  v130 = v263;
                  Batch = v263[4];

                  os_unfair_lock_lock((Batch + 32));
                  if (*(Batch + 16))
                  {
                    os_unfair_lock_unlock((Batch + 32));

                    goto LABEL_96;
                  }

LABEL_95:
                  *(Batch + 16) = v144;
                  os_unfair_lock_unlock((Batch + 32));

                  (*(v130 + 16))(v215);

LABEL_96:

LABEL_101:

                  swift_bridgeObjectRelease_n();

                  v230 = v250;
                  v231 = v266;

                  swift_bridgeObjectRelease_n();

                  sub_22F1D210C(v294);
                  return;
                }
              }

              else
              {
                Batch = MusicBag.songEquivalentQueryBatchSize()();
                LODWORD(v261) = 1;
                a3 = v278;
                if (Batch)
                {
                  goto LABEL_71;
                }
              }

              __break(1u);
              goto LABEL_95;
            }

            v273 = v129;
            v155 = v121;
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_retain_n();
            swift_bridgeObjectRetain_n();
            v156 = a3;
            v157 = v155;
            v158 = v122;
            swift_bridgeObjectRetain_n();
            v159 = v278;
            swift_retain_n();
            v160 = v157;
            v161 = v156;
            v162 = v158;
            v163 = v159;
            v164 = sub_22F151734(MEMORY[0x277D84F90]);
            if (*(v164 + 16))
            {
              v165 = v275;
              v166 = sub_22F3A0200(v164);

              v167 = v254;
              sub_22F73F680();
              MusicCache.writeMemoryDisplay(songs:date:progressReporter:)(v166, v167);
              v168 = v165;
              if (!v165)
              {
                v280 = v163;
                (*(v260 + 8))(v167, v261);
                v232 = v252;
                *&v306[0] = v252;

                sub_22F14585C(v234, v233);
                v235 = sub_22F3A72B8(*&v306[0]);
                v241 = v240;
                v277 = v235;

                v242 = sub_22F740B70();
                v243 = sub_22F7415C0();
                if (os_log_type_enabled(v242, v243))
                {
                  v244 = swift_slowAlloc();
                  *v244 = 134218240;
                  v245 = v166[2];

                  *(v244 + 4) = v245;

                  *(v244 + 12) = 2048;
                  *(v244 + 14) = v232[2];

                  _os_log_impl(&dword_22F0FC000, v242, v243, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs succeeded fetching %ld songs, %ld songs already in cache.", v244, 0x16u);
                  MEMORY[0x2319033A0](v244, -1, -1);
                }

                else
                {

                  swift_bridgeObjectRelease_n();
                }

                sub_22F7416A0();
                v246 = v273;
                sub_22F1B2BBC(0);
                sub_22F1B2BBC(0);
                (v246)(v277, v241, 0);

                a3 = v278;
                goto LABEL_101;
              }

              (*(v260 + 8))(v167, v261);
            }

            else
            {

              sub_22F3A7F30();
              v168 = swift_allocError();
              *v216 = 1;
              swift_willThrow();
            }

            v217 = v168;
            v218 = sub_22F740B70();
            v219 = sub_22F7415E0();

            if (os_log_type_enabled(v218, v219))
            {
              v220 = swift_slowAlloc();
              v221 = swift_slowAlloc();
              *&v306[0] = v221;
              *v220 = 136315394;
              v222 = MEMORY[0x231900D40](v131, MEMORY[0x277D837D0]);
              v224 = sub_22F145F20(v222, v223, v306);

              *(v220 + 4) = v224;
              *(v220 + 12) = 2080;
              swift_getErrorValue();
              v225 = sub_22F7420F0();
              v227 = sub_22F145F20(v225, v226, v306);

              *(v220 + 14) = v227;
              _os_log_impl(&dword_22F0FC000, v218, v219, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs processing fetchSongs failed for adamIds %s with error: %s.", v220, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x2319033A0](v221, -1, -1);
              MEMORY[0x2319033A0](v220, -1, -1);
            }

            a3 = v278;
            v228 = v273;
            sub_22F7416A0();
            sub_22F1B2BBC(1);
            sub_22F1B2BBC(1);
            v229 = v168;
            (v228)(0, 0, v168);

            goto LABEL_101;
          }
        }
      }
    }

    else
    {
    }

    static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)(v85, v84, v294);
    goto LABEL_64;
  }

  v43 = v252;
  a5 = v273;
  v42 = v275;
LABEL_54:
  v96 = sub_22F3A72B8(v43);
  v82 = v42;
  if (v42)
  {

LABEL_56:
    v98 = v82;
    v99 = sub_22F740B70();
    v100 = sub_22F7415E0();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v103 = v82;
      v104 = v102;
      *&v296 = v102;
      *v101 = 136315138;
      v105 = v103;
      swift_getErrorValue();
      v106 = sub_22F7420F0();
      v108 = sub_22F145F20(v106, v107, &v296);

      *(v101 + 4) = v108;
      _os_log_impl(&dword_22F0FC000, v99, v100, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs request setup failed: %s.", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v104);
      MEMORY[0x2319033A0](v104, -1, -1);
      MEMORY[0x2319033A0](v101, -1, -1);
    }

    else
    {
      v105 = v82;
    }

    sub_22F7416A0();
    sub_22F1B2BBC(1);
    v109 = v105;
    (a5)(0, 0, v105);
  }

  else
  {
    v110 = v97;
    v111 = v96;

    v112 = sub_22F740B70();
    v113 = sub_22F7415C0();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 134217984;
      v115 = *(v43 + 16);

      *(v114 + 4) = v115;

      _os_log_impl(&dword_22F0FC000, v112, v113, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs succeeded, all %ld songs already in cache.", v114, 0xCu);
      MEMORY[0x2319033A0](v114, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22F7416A0();
    sub_22F1B2BBC(0);
    (a5)(v111, v110, 0);
  }
}

void sub_22F3A3E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_22F740DF0();
    if (a3)
    {
LABEL_3:
      v7 = sub_22F73F360();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

uint64_t static MusicCurator.fetchDisplayMetadata(for:inflationContext:progressReporter:completionHandler:)(void *a1, char *a2, void *a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v10 = sub_22F740C00();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v13 = sub_22F740B90();
  __swift_project_value_buffer(v13, qword_2810B4D90);

  v14 = sub_22F740B70();
  v15 = sub_22F7415C0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134217984;
    *(v16 + 4) = a1[2];

    _os_log_impl(&dword_22F0FC000, v14, v15, "[MemoriesMusic] fetchDisplayMetadata called for %ld adamIDs", v16, 0xCu);
    MEMORY[0x2319033A0](v16, -1, -1);

    if (a1[2])
    {
LABEL_5:
      sub_22F740BF0();
      v17 = sub_22F22FB24(v12, 0);
      v18 = *(v17 + 3);
      v19 = *(v17 + 4);
      v20 = v17;
      static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)(*&a2[OBJC_IVAR___PGMusicCurationInflationContext_actionSource], *&a2[OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8], v25);
      v21 = a2;
      v22 = a3;

      sub_22F2340E0(a1, v25, v18, v19, v22, v20, v21, v22, a4, a5);

      v27[0] = v25[0];
      v27[1] = v25[1];
      v27[2] = v25[2];
      v28 = v26;
      return sub_22F1D210C(v27);
    }
  }

  else
  {

    if (a1[2])
    {
      goto LABEL_5;
    }
  }

  return (a4)(MEMORY[0x277D84F90], 0);
}

uint64_t static MusicCurator.fetchSongAdamIDs(forPurchasedSongID:inflationContext:progressReporter:completionHandler:)(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v83 = a4;
  v84 = a5;
  v82 = a1;
  v79 = sub_22F740AD0();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v75 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22F73EEC0();
  v80 = *(v10 - 8);
  v81 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v69 - v13;
  v15 = sub_22F740C00();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v18 = sub_22F740B90();
  __swift_project_value_buffer(v18, qword_2810B4D90);

  v19 = sub_22F740B70();
  v20 = sub_22F7415C0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v74 = a3;
    v22 = v14;
    v23 = a6;
    v24 = v21;
    v25 = swift_slowAlloc();
    *&v99 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_22F145F20(v82, a2, &v99);
    _os_log_impl(&dword_22F0FC000, v19, v20, "[MemoriesMusic] fetchSongAdamIDsForPurchasedSongID for purchased song ID %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x2319033A0](v25, -1, -1);
    v26 = v24;
    a6 = v23;
    v14 = v22;
    a3 = v74;
    MEMORY[0x2319033A0](v26, -1, -1);
  }

  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v27 = qword_2810B4E90;
  *&v28 = CACurrentMediaTime();
  sub_22F1B560C("fetchSongAdamIDsForPurchasedSongID", 34, 2u, v28, 0, v27, v93);
  sub_22F740BF0();
  v71 = sub_22F22FB24(v17, 0);
  static MusicKitClient.FetchOptions.identity(musicKitSource:)(*(a3 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource), *(a3 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8), &v99);
  v30 = *(&v94 + 1);
  v29 = v95;
  v31 = swift_allocObject();
  v32 = v83;
  *(v31 + 16) = v83;
  v33 = v93[1];
  *(v31 + 24) = v93[0];
  *(v31 + 40) = v33;
  *(v31 + 56) = v94;
  v34 = v84;
  *(v31 + 72) = v95;
  *(v31 + 80) = v34;
  v73 = v30;
  v74 = v31;
  *(v31 + 88) = a6;
  v35 = qword_2810A9B98;
  swift_retain_n();
  v72 = v29;
  swift_retain_n();
  v36 = v32;
  swift_retain_n();
  v37 = v36;
  if (v35 != -1)
  {
    swift_once();
  }

  v38 = qword_2810B4E70;
  *&v39 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Purchased ID", 42, 2u, v39, 0, v38, v96);
  v40 = v71;
  v41 = *(v71 + 4);
  v42 = *(v71 + 5);
  v43 = *(v71 + 6);
  v44 = *(v71 + 7);
  v45 = *(v71 + 8);
  v87 = *(v71 + 3);
  v88 = v41;
  v89 = v42;
  v90 = v43;
  v91 = v44;
  v92 = v45;
  v85[0] = v99;
  v85[1] = v100;
  v85[2] = v101;
  v86 = v102;

  sub_22F3E3150(v82, a2, v85, v14);

  v70 = v37;
  v82 = a6;
  v46 = *(&v97 + 1);
  v47 = v98;
  v48 = swift_allocObject();
  v49 = v96[1];
  *(v48 + 16) = v96[0];
  *(v48 + 32) = v49;
  *(v48 + 48) = v97;
  *(v48 + 64) = v98;
  *(v48 + 72) = sub_22F3A7F18;
  v69 = v48;
  *(v48 + 80) = v74;
  v84 = v46;

  v83 = v47;

  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v50 = v75;
  sub_22F740AC0();
  sub_22F740A90();
  (v77[1].isa)(v50, v79);
  v77 = *(v40 + 9);
  v51 = v80;
  v52 = v81;
  v53 = v78;
  (*(v80 + 16))(v78, v14, v81);
  v54 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v55 = (v76 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 63) & 0xFFFFFFFFFFFFFFF8;
  v79 = v14;
  v75 = ((v56 + 15) & 0xFFFFFFFFFFFFFFF8);
  v76 = (v56 + 39) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v76 + 15) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  (*(v51 + 32))(v58 + v54, v53, v52);
  v59 = v58 + v55;
  v60 = v100;
  *v59 = v99;
  *(v59 + 16) = v60;
  *(v59 + 32) = v101;
  *(v59 + 48) = v102;
  *(v58 + v56) = v40;
  v61 = &v75[v58];
  *v61 = "MusicKitClient HTTP Request";
  *(v61 + 1) = 27;
  v61[16] = 2;
  v62 = v69;
  v63 = v70;
  *(v58 + v76) = v70;
  v64 = (v58 + v57);
  *v64 = sub_22F2340A0;
  v64[1] = v62;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_22F294B80;
  *(v65 + 24) = v58;
  v91 = sub_22F294B84;
  v92 = v65;
  v87 = MEMORY[0x277D85DD0];
  v88 = 1107296256;
  v89 = sub_22F2280B0;
  v90 = &block_descriptor_29_1;
  v66 = _Block_copy(&v87);
  v67 = v63;
  sub_22F1D20B0(&v99, v85);

  dispatch_sync(v77, v66);
  _Block_release(v66);

  (*(v80 + 8))(v79, v81);
  LOBYTE(v66) = swift_isEscapingClosureAtFileLocation();

  if (v66)
  {
    __break(1u);
  }

  else
  {

    return sub_22F1D210C(&v99);
  }

  return result;
}

double sub_22F3A4E24(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  v5 = a5;
  if (a2)
  {
    sub_22F1B2BBC(0);
    v5(0, a1);
  }

  else
  {
    v8 = *(a1 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v21 = MEMORY[0x277D84F90];
      sub_22F146454(0, v8, 0);
      v9 = v21;
      v10 = (a1 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        v13 = *(v21 + 16);
        v14 = *(v21 + 24);

        if (v13 >= v14 >> 1)
        {
          sub_22F146454((v14 > 1), v13 + 1, 1);
        }

        *(v21 + 16) = v13 + 1;
        v15 = v21 + 16 * v13;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        v10 += 37;
        --v8;
      }

      while (v8);
      v5 = a5;
    }

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v16 = sub_22F740B90();
    __swift_project_value_buffer(v16, qword_2810B4D90);

    v17 = sub_22F740B70();
    v18 = sub_22F7415C0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v9 + 16);

      _os_log_impl(&dword_22F0FC000, v17, v18, "[MemoriesMusic] fetchSongAdamIDsForPurchasedSongID succeeded fetching %ld songs", v19, 0xCu);
      MEMORY[0x2319033A0](v19, -1, -1);
    }

    else
    {
    }

    sub_22F7416A0();
    sub_22F1B2BBC(0);
    v5(v9, 0);
  }

  return result;
}

void sub_22F3A5134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_22F741160();
    if (a2)
    {
LABEL_3:
      v6 = sub_22F73F360();
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_22F3A51D0(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t isUniquelyReferenced_nonNull_native)
{
  v165 = a4;
  v166 = a5;
  v167 = a3;
  v9 = type metadata accessor for Song(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v168 = &v162 - v15;
  MEMORY[0x28223BE20](v16);
  v173 = &v162 - v17;
  MEMORY[0x28223BE20](v18);
  v169 = &v162 - v19;
  MEMORY[0x28223BE20](v20);
  v174 = &v162 - v21;
  MEMORY[0x28223BE20](v22);
  v170 = &v162 - v23;
  MEMORY[0x28223BE20](v24);
  v175 = &v162 - v25;
  MEMORY[0x28223BE20](v26);
  v171 = &v162 - v27;
  MEMORY[0x28223BE20](v28);
  v176 = &v162 - v29;
  MEMORY[0x28223BE20](v30);
  v172 = &v162 - v31;
  MEMORY[0x28223BE20](v32);
  v177 = &v162 - v33;
  MEMORY[0x28223BE20](v34);
  v184 = (&v162 - v35);
  MEMORY[0x28223BE20](v36);
  v38 = (&v162 - v37);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v40);
  v42 = (&v162 - v41);
  MEMORY[0x28223BE20](v43);
  MEMORY[0x28223BE20](v44);
  v186 = (&v162 - v48);
  if ((a2 & 1) == 0)
  {
    v182 = v45;
    v183 = v47;
    v181 = v46;
    v164 = isUniquelyReferenced_nonNull_native;
    isUniquelyReferenced_nonNull_native = *(a1 + 2);
    v50 = MEMORY[0x277D84F90];
    v187 = v38;
    if (isUniquelyReferenced_nonNull_native)
    {
      v192 = MEMORY[0x277D84F90];
      sub_22F146514(0, isUniquelyReferenced_nonNull_native, 0);
      v50 = v192;
      v51 = a1 + 32;
      do
      {
        memcpy(v191, v51, sizeof(v191));
        memcpy(v190, v51, sizeof(v190));
        sub_22F18C4EC(v191, &v189);
        Song.init(_:)(v190);
        v192 = v50;
        v53 = *(v50 + 16);
        v52 = *(v50 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_22F146514((v52 > 1), v53 + 1, 1);
          v50 = v192;
        }

        *(v50 + 16) = v53 + 1;
        sub_22F15CB04(v12, v50 + ((v10[80] + 32) & ~v10[80]) + *(v10 + 9) * v53);
        v51 += 296;
        --isUniquelyReferenced_nonNull_native;
      }

      while (isUniquelyReferenced_nonNull_native);
      v38 = v187;
    }

    v54 = sub_22F151734(v50);

    if (!*(v54 + 16))
    {

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v77 = sub_22F740B90();
      __swift_project_value_buffer(v77, qword_2810B4D90);
      sub_22F1D2178(a1, 0);
      v78 = sub_22F740B70();
      v79 = sub_22F7415E0();
      sub_22F1D20A4(a1, 0);
      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v191[0] = v81;
        *v80 = 136315138;
        v82 = MEMORY[0x231900D40](a1, &type metadata for MusicKitCatalogSong);
        v84 = sub_22F145F20(v82, v83, v191);

        *(v80 + 4) = v84;
        _os_log_impl(&dword_22F0FC000, v78, v79, "[MemoriesMusic] inflateDisplayMetadata unable to inflate songs from %s. Throwing emptyMusicKitResponse error", v80, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v81);
        MEMORY[0x2319033A0](v81, -1, -1);
        MEMORY[0x2319033A0](v80, -1, -1);
      }

      isUniquelyReferenced_nonNull_native = v164;
      sub_22F3A7F30();
      a1 = swift_allocError();
      *v85 = 1;
      swift_willThrow();
      goto LABEL_31;
    }

    v55 = sub_22F3A0200(v54);
    v163 = 0;

    v56 = v55;
    v57 = *(v55 + 16);
    v185 = v42;
    v180 = v57;
    if (!v57)
    {
      v59 = MEMORY[0x277D84F98];
LABEL_38:

      v180 = *(v167 + OBJC_IVAR___PGMusicCuration_curatorVersion);
      v99 = *(v167 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
      v100 = *(v99 + 16);
      if (v100)
      {
        v183 = ((v10[80] + 32) & ~v10[80]);
        v101 = v183 + v99;
        v102 = *(v10 + 9);
        v186 = MEMORY[0x277D84F90];
        v103 = v184;
        do
        {
          v104 = v181;
          sub_22F15CAA0(v101, v181);
          if (v59[2] && (v105 = sub_22F1229E8(*v104, v104[1]), (v106 & 1) != 0))
          {
            v107 = v168;
            sub_22F15CAA0(v59[7] + v105 * v102, v168);
            sub_22F15CBD8(v104);
            sub_22F15CB04(v107, v173);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v186 = sub_22F13E558(0, v186[2] + 1, 1, v186);
            }

            v109 = v186[2];
            v108 = v186[3];
            if (v109 >= v108 >> 1)
            {
              v186 = sub_22F13E558((v108 > 1), v109 + 1, 1, v186);
            }

            v110 = v186;
            v186[2] = v109 + 1;
            sub_22F15CB04(v173, v183 + v110 + v109 * v102);
            v38 = v187;
            v42 = v185;
          }

          else
          {
            sub_22F15CBD8(v104);
          }

          v101 += v102;
          --v100;
        }

        while (v100);
      }

      else
      {
        v186 = MEMORY[0x277D84F90];
        v103 = v184;
      }

      v111 = *(v167 + OBJC_IVAR___PGMusicCuration_musicForYou);
      v112 = *(v111 + 16);
      if (v112)
      {
        v113 = (v10[80] + 32) & ~v10[80];
        v114 = v111 + v113;
        v115 = *(v10 + 9);
        v183 = MEMORY[0x277D84F90];
        do
        {
          sub_22F15CAA0(v114, v42);
          if (v59[2] && (v116 = sub_22F1229E8(*v42, v42[1]), (v117 & 1) != 0))
          {
            v118 = v169;
            sub_22F15CAA0(v59[7] + v116 * v115, v169);
            sub_22F15CBD8(v42);
            sub_22F15CB04(v118, v174);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v183 = sub_22F13E558(0, v183[2] + 1, 1, v183);
            }

            v120 = v183[2];
            v119 = v183[3];
            if (v120 >= v119 >> 1)
            {
              v183 = sub_22F13E558((v119 > 1), v120 + 1, 1, v183);
            }

            v121 = v183;
            v183[2] = v120 + 1;
            sub_22F15CB04(v174, v121 + v113 + v120 * v115);
            v38 = v187;
            v42 = v185;
          }

          else
          {
            sub_22F15CBD8(v42);
          }

          v114 += v115;
          --v112;
        }

        while (v112);
      }

      else
      {
        v183 = MEMORY[0x277D84F90];
      }

      v122 = *(v167 + OBJC_IVAR___PGMusicCuration_musicForLocation);
      v123 = *(v122 + 16);
      if (v123)
      {
        v185 = (v10[80] + 32) & ~v10[80];
        v124 = v122 + v185;
        v125 = *(v10 + 9);
        v126 = MEMORY[0x277D84F90];
        do
        {
          v127 = v182;
          sub_22F15CAA0(v124, v182);
          if (v59[2] && (v128 = sub_22F1229E8(*v127, v127[1]), (v129 & 1) != 0))
          {
            v130 = v170;
            sub_22F15CAA0(v59[7] + v128 * v125, v170);
            sub_22F15CBD8(v127);
            sub_22F15CB04(v130, v175);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v126 = sub_22F13E558(0, v126[2] + 1, 1, v126);
            }

            v132 = v126[2];
            v131 = v126[3];
            if (v132 >= v131 >> 1)
            {
              v126 = sub_22F13E558((v131 > 1), v132 + 1, 1, v126);
            }

            v126[2] = v132 + 1;
            sub_22F15CB04(v175, v126 + v185 + v132 * v125);
            v103 = v184;
            v38 = v187;
          }

          else
          {
            sub_22F15CBD8(v127);
          }

          v124 += v125;
          --v123;
        }

        while (v123);
      }

      else
      {
        v126 = MEMORY[0x277D84F90];
      }

      v133 = *(v167 + OBJC_IVAR___PGMusicCuration_musicForTime);
      v134 = *(v133 + 16);
      v135 = MEMORY[0x277D84F90];
      if (v134)
      {
        v185 = (v10[80] + 32) & ~v10[80];
        v136 = v133 + v185;
        v137 = *(v10 + 9);
        do
        {
          sub_22F15CAA0(v136, v38);
          if (v59[2] && (v138 = sub_22F1229E8(*v38, v38[1]), (v139 & 1) != 0))
          {
            v140 = v38;
            v141 = v171;
            sub_22F15CAA0(v59[7] + v138 * v137, v171);
            sub_22F15CBD8(v140);
            sub_22F15CB04(v141, v176);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v135 = sub_22F13E558(0, v135[2] + 1, 1, v135);
            }

            v143 = v135[2];
            v142 = v135[3];
            if (v143 >= v142 >> 1)
            {
              v135 = sub_22F13E558((v142 > 1), v143 + 1, 1, v135);
            }

            v135[2] = v143 + 1;
            sub_22F15CB04(v176, v135 + v185 + v143 * v137);
            v103 = v184;
            v38 = v187;
          }

          else
          {
            sub_22F15CBD8(v38);
          }

          v136 += v137;
          --v134;
        }

        while (v134);
      }

      v144 = *(v167 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
      v145 = *(v144 + 16);
      if (v145)
      {
        v187 = (v10[80] + 32) & ~v10[80];
        v146 = v144 + v187;
        v147 = *(v10 + 9);
        v148 = MEMORY[0x277D84F90];
        do
        {
          sub_22F15CAA0(v146, v103);
          if (v59[2] && (v149 = sub_22F1229E8(*v103, v103[1]), (v150 & 1) != 0))
          {
            v151 = v172;
            sub_22F15CAA0(v59[7] + v149 * v147, v172);
            sub_22F15CBD8(v103);
            sub_22F15CB04(v151, v177);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v148 = sub_22F13E558(0, v148[2] + 1, 1, v148);
            }

            v153 = v148[2];
            v152 = v148[3];
            if (v153 >= v152 >> 1)
            {
              v148 = sub_22F13E558((v152 > 1), v153 + 1, 1, v148);
            }

            v148[2] = v153 + 1;
            sub_22F15CB04(v177, v148 + v187 + v153 * v147);
            v103 = v184;
          }

          else
          {
            sub_22F15CBD8(v103);
          }

          v146 += v147;
          --v145;
        }

        while (v145);
      }

      else
      {

        v148 = MEMORY[0x277D84F90];
      }

      v154 = *(v167 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
      v155 = *(v167 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
      v156 = *(v167 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
      v157 = type metadata accessor for MusicCuration();
      v158 = objc_allocWithZone(v157);
      *&v158[OBJC_IVAR___PGMusicCuration_curatorVersion] = v180;
      *&v158[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v186;
      *&v158[OBJC_IVAR___PGMusicCuration_musicForYou] = v183;
      *&v158[OBJC_IVAR___PGMusicCuration_musicForLocation] = v126;
      *&v158[OBJC_IVAR___PGMusicCuration_musicForTime] = v135;
      *&v158[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v148;
      v159 = &v158[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
      *v159 = v154;
      *(v159 + 1) = v155;
      *(v159 + 2) = v156;
      *&v158[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = MEMORY[0x277D84F90];
      v188.receiver = v158;
      v188.super_class = v157;

      v160 = objc_msgSendSuper2(&v188, sel_init);
      v161 = v163;
      sub_22F7416A0();
      if (v161)
      {
      }

      sub_22F1B2BBC(0);
      (v164)[2](v164, v160, 0);

      return;
    }

    v58 = 0;
    v179 = v55 + ((v10[80] + 32) & ~v10[80]);
    v59 = MEMORY[0x277D84F98];
    v60 = v183;
    v178 = v56;
    while (1)
    {
      if (v58 >= *(v56 + 16))
      {
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
        goto LABEL_104;
      }

      a1 = v10;
      v61 = *(v10 + 9);
      v62 = v186;
      sub_22F15CAA0(v179 + v61 * v58, v186);
      v64 = *v62;
      v63 = v62[1];
      sub_22F15CAA0(v62, v60);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v191[0] = v59;
      v66 = sub_22F1229E8(v64, v63);
      v67 = v59[2];
      v68 = (v65 & 1) == 0;
      v69 = v67 + v68;
      if (__OFADD__(v67, v68))
      {
        goto LABEL_102;
      }

      v70 = v65;
      if (v59[3] >= v69)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v59 = v191[0];
          if (v65)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_22F134A90();
          v59 = v191[0];
          if (v70)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
        sub_22F126640(v69, isUniquelyReferenced_nonNull_native);
        v71 = sub_22F1229E8(v64, v63);
        if ((v70 & 1) != (v72 & 1))
        {
          _Block_release(v164);
          sub_22F7420C0();
          __break(1u);
          return;
        }

        v66 = v71;
        v59 = v191[0];
        if (v70)
        {
LABEL_12:
          v60 = v183;
          sub_22F1A2A44(v183, v59[7] + v66 * v61);
          goto LABEL_13;
        }
      }

      v59[(v66 >> 6) + 8] |= 1 << v66;
      v73 = (v59[6] + 16 * v66);
      *v73 = v64;
      v73[1] = v63;
      v60 = v183;
      sub_22F15CB04(v183, v59[7] + v66 * v61);
      v74 = v59[2];
      v75 = __OFADD__(v74, 1);
      v76 = v74 + 1;
      if (v75)
      {
        goto LABEL_103;
      }

      v59[2] = v76;

LABEL_13:
      ++v58;
      sub_22F15CBD8(v186);
      v10 = a1;
      v38 = v187;
      v42 = v185;
      v56 = v178;
      if (v180 == v58)
      {
        goto LABEL_38;
      }
    }
  }

  v191[0] = a1;
  v49 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
  swift_willThrowTypedImpl();
LABEL_31:
  v58 = 0;
  if (qword_2810A9460 != -1)
  {
LABEL_104:
    swift_once();
  }

  v86 = sub_22F740B90();
  __swift_project_value_buffer(v86, qword_2810B4D90);
  v87 = a1;
  v88 = sub_22F740B70();
  v89 = sub_22F7415E0();

  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = isUniquelyReferenced_nonNull_native;
    v92 = swift_slowAlloc();
    v191[0] = v92;
    *v90 = 136315138;
    swift_getErrorValue();
    v93 = sub_22F7420F0();
    v95 = sub_22F145F20(v93, v94, v191);

    *(v90 + 4) = v95;
    _os_log_impl(&dword_22F0FC000, v88, v89, "[MemoriesMusic] inflateDisplayMetadataForMusicCuration processing fetchSongs failed: %s.", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v92);
    v96 = v92;
    isUniquelyReferenced_nonNull_native = v91;
    MEMORY[0x2319033A0](v96, -1, -1);
    MEMORY[0x2319033A0](v90, -1, -1);
  }

  sub_22F7416A0();
  if (v58)
  {
  }

  sub_22F1B2BBC(1);
  v97 = a1;
  v98 = sub_22F73F360();
  (*(isUniquelyReferenced_nonNull_native + 16))(isUniquelyReferenced_nonNull_native, 0, v98);
}

void sub_22F3A6250(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id, void *), uint64_t a7)
{
  v166[3] = a7;
  v167 = a6;
  v166[1] = a4;
  v166[2] = a5;
  v168 = a3;
  v9 = type metadata accessor for Song(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v173 = v166 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v178 = v166 - v13;
  MEMORY[0x28223BE20](v14);
  v172 = v166 - v15;
  MEMORY[0x28223BE20](v16);
  v177 = v166 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = (v166 - v19);
  MEMORY[0x28223BE20](v21);
  v171 = v166 - v22;
  MEMORY[0x28223BE20](v23);
  v176 = v166 - v24;
  MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v26);
  v170 = v166 - v27;
  MEMORY[0x28223BE20](v28);
  v175 = v166 - v29;
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v31);
  v169 = v166 - v32;
  MEMORY[0x28223BE20](v33);
  v174 = v166 - v34;
  MEMORY[0x28223BE20](v35);
  MEMORY[0x28223BE20](v36);
  v38 = (v166 - v37);
  MEMORY[0x28223BE20](v39);
  MEMORY[0x28223BE20](v166 - v40);
  v42 = (v166 - v41);
  MEMORY[0x28223BE20](v43);
  v49 = v166 - v48;
  if (a2)
  {
    v192[0] = a1;
    v50 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
LABEL_29:
    v61 = 0;
    if (qword_2810A9460 != -1)
    {
LABEL_103:
      swift_once();
    }

    v91 = sub_22F740B90();
    __swift_project_value_buffer(v91, qword_2810B4D90);
    v92 = a1;
    v93 = sub_22F740B70();
    v94 = sub_22F7415E0();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v192[0] = v96;
      *v95 = 136315138;
      v97 = a1;
      swift_getErrorValue();
      v98 = sub_22F7420F0();
      v100 = sub_22F145F20(v98, v99, v192);

      *(v95 + 4) = v100;
      _os_log_impl(&dword_22F0FC000, v93, v94, "[MemoriesMusic] inflateDisplayMetadataForMusicCuration processing fetchSongs failed: %s.", v95, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v96);
      MEMORY[0x2319033A0](v96, -1, -1);
      MEMORY[0x2319033A0](v95, -1, -1);
    }

    else
    {
      v97 = a1;
    }

    sub_22F7416A0();
    if (v61)
    {
    }

    sub_22F1B2BBC(1);
    v101 = v97;
    v167(0, v97);

    return;
  }

  v182 = v44;
  v183 = v47;
  v187 = v46;
  v188 = v45;
  v51 = a1;
  v52 = *(a1 + 16);
  v53 = MEMORY[0x277D84F90];
  v186 = v51;
  if (v52)
  {
    v185 = v38;
    v193 = MEMORY[0x277D84F90];
    sub_22F146514(0, v52, 0);
    v53 = v193;
    v54 = (v51 + 4);
    do
    {
      memcpy(v192, v54, sizeof(v192));
      memcpy(v191, v54, sizeof(v191));
      sub_22F18C4EC(v192, &v190);
      Song.init(_:)(v191);
      v193 = v53;
      v56 = *(v53 + 16);
      v55 = *(v53 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_22F146514((v55 > 1), v56 + 1, 1);
        v53 = v193;
      }

      *(v53 + 16) = v56 + 1;
      sub_22F15CB04(v49, v53 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v56);
      v54 += 296;
      --v52;
    }

    while (v52);
    v38 = v185;
  }

  v57 = sub_22F151734(v53);

  a1 = v188;
  if (!*(v57 + 16))
  {

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v81 = sub_22F740B90();
    __swift_project_value_buffer(v81, qword_2810B4D90);
    v82 = v186;
    sub_22F1D2178(v186, 0);
    v83 = sub_22F740B70();
    v84 = sub_22F7415E0();
    sub_22F1D20A4(v82, 0);
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v192[0] = v86;
      *v85 = 136315138;
      v87 = MEMORY[0x231900D40](v82, &type metadata for MusicKitCatalogSong);
      v89 = sub_22F145F20(v87, v88, v192);

      *(v85 + 4) = v89;
      _os_log_impl(&dword_22F0FC000, v83, v84, "[MemoriesMusic] inflateDisplayMetadata unable to inflate songs from %s. Throwing emptyMusicKitResponse error", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v86);
      MEMORY[0x2319033A0](v86, -1, -1);
      MEMORY[0x2319033A0](v85, -1, -1);
    }

    sub_22F3A7F30();
    a1 = swift_allocError();
    *v90 = 1;
    swift_willThrow();
    goto LABEL_29;
  }

  v58 = sub_22F3A0200(v57);
  v166[0] = 0;

  v59 = v58;
  v60 = *(v58 + 16);
  v184 = v10;
  v185 = v20;
  v181 = v60;
  if (v60)
  {
    v61 = 0;
    v180 = v58 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v62 = MEMORY[0x277D84F98];
    v179 = v59;
    while (1)
    {
      if (v61 >= *(v59 + 16))
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v186 = *(v10 + 72);
      sub_22F15CAA0(v180 + v186 * v61, v42);
      v64 = *v42;
      v65 = v42[1];
      v66 = v42;
      v67 = v42;
      v68 = v38;
      sub_22F15CAA0(v67, v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v192[0] = v62;
      a1 = sub_22F1229E8(v64, v65);
      v71 = v62[2];
      v72 = (v70 & 1) == 0;
      v73 = v71 + v72;
      if (__OFADD__(v71, v72))
      {
        goto LABEL_101;
      }

      v74 = v70;
      if (v62[3] >= v73)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F134A90();
        }
      }

      else
      {
        sub_22F126640(v73, isUniquelyReferenced_nonNull_native);
        v75 = sub_22F1229E8(v64, v65);
        if ((v74 & 1) != (v76 & 1))
        {
          sub_22F7420C0();
          __break(1u);
          return;
        }

        a1 = v75;
      }

      v38 = v68;
      v62 = v192[0];
      v42 = v66;
      if (v74)
      {
        sub_22F1A2A44(v38, *(v192[0] + 56) + a1 * v186);
      }

      else
      {
        *(v192[0] + 8 * (a1 >> 6) + 64) |= 1 << a1;
        v77 = (v62[6] + 16 * a1);
        *v77 = v64;
        v77[1] = v65;
        sub_22F15CB04(v38, v62[7] + a1 * v186);
        v78 = v62[2];
        v79 = __OFADD__(v78, 1);
        v80 = v78 + 1;
        if (v79)
        {
          goto LABEL_102;
        }

        v62[2] = v80;
      }

      ++v61;
      sub_22F15CBD8(v66);
      v10 = v184;
      v20 = v185;
      v63 = v187;
      a1 = v188;
      v59 = v179;
      if (v181 == v61)
      {
        goto LABEL_37;
      }
    }
  }

  v62 = MEMORY[0x277D84F98];
  v63 = v187;
LABEL_37:

  v180 = *(v168 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  v102 = *(v168 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  v103 = *(v102 + 16);
  if (v103)
  {
    v181 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v104 = v102 + v181;
    v105 = *(v10 + 72);
    v186 = MEMORY[0x277D84F90];
    do
    {
      v106 = v182;
      sub_22F15CAA0(v104, v182);
      if (v62[2] && (v107 = sub_22F1229E8(*v106, v106[1]), (v108 & 1) != 0))
      {
        v109 = v169;
        sub_22F15CAA0(v62[7] + v107 * v105, v169);
        sub_22F15CBD8(v106);
        sub_22F15CB04(v109, v174);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v186 = sub_22F13E558(0, v186[2] + 1, 1, v186);
        }

        v111 = v186[2];
        v110 = v186[3];
        if (v111 >= v110 >> 1)
        {
          v186 = sub_22F13E558((v110 > 1), v111 + 1, 1, v186);
        }

        v112 = v186;
        v186[2] = v111 + 1;
        sub_22F15CB04(v174, v112 + v181 + v111 * v105);
        v63 = v187;
        a1 = v188;
      }

      else
      {
        sub_22F15CBD8(v106);
      }

      v104 += v105;
      --v103;
    }

    while (v103);
  }

  else
  {
    v186 = MEMORY[0x277D84F90];
  }

  v113 = *(v168 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v114 = *(v113 + 16);
  if (v114)
  {
    v181 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v115 = v113 + v181;
    v116 = *(v10 + 72);
    v182 = MEMORY[0x277D84F90];
    do
    {
      v117 = v183;
      sub_22F15CAA0(v115, v183);
      if (v62[2] && (v118 = sub_22F1229E8(*v117, v117[1]), (v119 & 1) != 0))
      {
        v120 = v170;
        sub_22F15CAA0(v62[7] + v118 * v116, v170);
        sub_22F15CBD8(v117);
        sub_22F15CB04(v120, v175);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = sub_22F13E558(0, v182[2] + 1, 1, v182);
        }

        v122 = v182[2];
        v121 = v182[3];
        if (v122 >= v121 >> 1)
        {
          v182 = sub_22F13E558((v121 > 1), v122 + 1, 1, v182);
        }

        v124 = v181;
        v123 = v182;
        v182[2] = v122 + 1;
        sub_22F15CB04(v175, v123 + v124 + v122 * v116);
        v63 = v187;
        a1 = v188;
      }

      else
      {
        sub_22F15CBD8(v117);
      }

      v115 += v116;
      --v114;
    }

    while (v114);
  }

  else
  {
    v182 = MEMORY[0x277D84F90];
  }

  v125 = *(v168 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v126 = *(v125 + 16);
  if (v126)
  {
    v127 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v128 = v125 + v127;
    v129 = *(v10 + 72);
    v130 = MEMORY[0x277D84F90];
    do
    {
      sub_22F15CAA0(v128, v63);
      if (v62[2] && (v131 = sub_22F1229E8(*v63, v63[1]), (v132 & 1) != 0))
      {
        v133 = v63;
        v134 = v171;
        sub_22F15CAA0(v62[7] + v131 * v129, v171);
        sub_22F15CBD8(v133);
        sub_22F15CB04(v134, v176);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v130 = sub_22F13E558(0, v130[2] + 1, 1, v130);
        }

        v136 = v130[2];
        v135 = v130[3];
        if (v136 >= v135 >> 1)
        {
          v130 = sub_22F13E558((v135 > 1), v136 + 1, 1, v130);
        }

        v130[2] = v136 + 1;
        sub_22F15CB04(v176, v130 + v127 + v136 * v129);
        v63 = v187;
        a1 = v188;
      }

      else
      {
        sub_22F15CBD8(v63);
      }

      v128 += v129;
      --v126;
    }

    while (v126);
  }

  else
  {
    v130 = MEMORY[0x277D84F90];
  }

  v137 = *(v168 + OBJC_IVAR___PGMusicCuration_musicForTime);
  v138 = *(v137 + 16);
  v139 = MEMORY[0x277D84F90];
  if (v138)
  {
    v187 = (*(v184 + 80) + 32) & ~*(v184 + 80);
    v140 = v137 + v187;
    v141 = *(v184 + 72);
    do
    {
      sub_22F15CAA0(v140, a1);
      if (v62[2] && (v142 = sub_22F1229E8(*a1, *(a1 + 8)), (v143 & 1) != 0))
      {
        v144 = v172;
        sub_22F15CAA0(v62[7] + v142 * v141, v172);
        sub_22F15CBD8(a1);
        sub_22F15CB04(v144, v177);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v139 = sub_22F13E558(0, v139[2] + 1, 1, v139);
        }

        v146 = v139[2];
        v145 = v139[3];
        if (v146 >= v145 >> 1)
        {
          v139 = sub_22F13E558((v145 > 1), v146 + 1, 1, v139);
        }

        v139[2] = v146 + 1;
        sub_22F15CB04(v177, v139 + v187 + v146 * v141);
        a1 = v188;
      }

      else
      {
        sub_22F15CBD8(a1);
      }

      v140 += v141;
      --v138;
    }

    while (v138);
  }

  v147 = *(v168 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v148 = *(v147 + 16);
  if (v148)
  {
    v188 = (*(v184 + 80) + 32) & ~*(v184 + 80);
    v149 = v147 + v188;
    v150 = *(v184 + 72);
    v151 = MEMORY[0x277D84F90];
    do
    {
      sub_22F15CAA0(v149, v20);
      if (v62[2] && (v152 = sub_22F1229E8(*v20, v20[1]), (v153 & 1) != 0))
      {
        v154 = v173;
        sub_22F15CAA0(v62[7] + v152 * v150, v173);
        sub_22F15CBD8(v20);
        sub_22F15CB04(v154, v178);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v151 = sub_22F13E558(0, v151[2] + 1, 1, v151);
        }

        v156 = v151[2];
        v155 = v151[3];
        if (v156 >= v155 >> 1)
        {
          v151 = sub_22F13E558((v155 > 1), v156 + 1, 1, v151);
        }

        v151[2] = v156 + 1;
        sub_22F15CB04(v178, v151 + v188 + v156 * v150);
        v20 = v185;
      }

      else
      {
        sub_22F15CBD8(v20);
      }

      v149 += v150;
      --v148;
    }

    while (v148);
  }

  else
  {

    v151 = MEMORY[0x277D84F90];
  }

  v157 = *(v168 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
  v158 = *(v168 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
  v159 = *(v168 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
  v160 = type metadata accessor for MusicCuration();
  v161 = objc_allocWithZone(v160);
  *&v161[OBJC_IVAR___PGMusicCuration_curatorVersion] = v180;
  *&v161[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v186;
  *&v161[OBJC_IVAR___PGMusicCuration_musicForYou] = v182;
  *&v161[OBJC_IVAR___PGMusicCuration_musicForLocation] = v130;
  *&v161[OBJC_IVAR___PGMusicCuration_musicForTime] = v139;
  *&v161[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v151;
  v162 = &v161[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v162 = v157;
  *(v162 + 1) = v158;
  *(v162 + 2) = v159;
  *&v161[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = MEMORY[0x277D84F90];
  v189.receiver = v161;
  v189.super_class = v160;

  v163 = objc_msgSendSuper2(&v189, sel_init);
  v164 = v166[0];
  sub_22F7416A0();
  if (v164)
  {
  }

  sub_22F1B2BBC(0);
  v165 = v163;
  v167(v163, 0);
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_22F3A72B8(uint64_t a1)
{
  v3 = sub_22F740E80();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73EFB0();
  swift_allocObject();
  sub_22F73EFA0();
  v13[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33C8, &qword_22F783278);
  sub_22F3AC0AC();
  v6 = sub_22F73EF90();
  v8 = v7;

  if (!v1)
  {
    sub_22F740E70();
    v9 = sub_22F740E40();
    if (v10)
    {
      v5 = v9;
    }

    else
    {
      sub_22F3A7F30();
      swift_allocError();
      *v12 = a1;
      swift_willThrow();
    }

    sub_22F133BF0(v6, v8);
  }

  return v5;
}

double sub_22F3A742C(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(char *, uint64_t, char *), uint64_t a10, uint64_t a11)
{
  v64 = a7;
  v65 = a8;
  v62 = a4;
  v63 = a6;
  v66 = a10;
  v67 = a9;
  v15 = sub_22F73F690();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = type metadata accessor for Song(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v70[0] = a1;
    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
LABEL_12:
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v35 = sub_22F740B90();
    __swift_project_value_buffer(v35, qword_2810B4D90);

    v36 = a1;
    v37 = sub_22F740B70();
    v38 = sub_22F7415E0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v70[0] = v40;
      *v39 = 136315394;
      v41 = MEMORY[0x231900D40](a11, MEMORY[0x277D837D0]);
      v43 = sub_22F145F20(v41, v42, v70);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2080;
      swift_getErrorValue();
      v44 = sub_22F7420F0();
      v46 = sub_22F145F20(v44, v45, v70);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_22F0FC000, v37, v38, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs processing fetchSongs failed for adamIds %s with error: %s.", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v40, -1, -1);
      MEMORY[0x2319033A0](v39, -1, -1);
    }

    sub_22F7416A0();
    sub_22F1B2BBC(1);
    sub_22F1B2BBC(1);
    v47 = a1;
    v67(0, 0, a1);

    return result;
  }

  v61 = a3;
  v24 = *(a1 + 2);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v59 = v16;
    v60 = a5;
    v71 = MEMORY[0x277D84F90];
    sub_22F146514(0, v24, 0);
    v25 = v71;
    v26 = a1 + 32;
    do
    {
      memcpy(v70, v26, sizeof(v70));
      memcpy(v69, v26, sizeof(v69));
      sub_22F18C4EC(v70, &v68);
      Song.init(_:)(v69);
      v71 = v25;
      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22F146514((v27 > 1), v28 + 1, 1);
        v25 = v71;
      }

      *(v25 + 16) = v28 + 1;
      sub_22F15CB04(v22, v25 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v28);
      v26 += 296;
      --v24;
    }

    while (v24);
    v16 = v59;
    a5 = v60;
  }

  v29 = sub_22F151734(v25);

  if (!*(v29 + 16))
  {

    sub_22F3A7F30();
    a1 = swift_allocError();
    *v31 = 1;
    swift_willThrow();
    goto LABEL_12;
  }

  v30 = sub_22F3A0200(v29);

  sub_22F73F680();
  MusicCache.writeMemoryDisplay(songs:date:progressReporter:)(v30, v18);
  (*(v16 + 8))(v18, v15);
  v70[0] = a5;

  sub_22F14585C(v33, v32);
  v34 = sub_22F3A72B8(v70[0]);
  v50 = v49;
  v51 = a5;
  v52 = v34;

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v53 = sub_22F740B90();
  __swift_project_value_buffer(v53, qword_2810B4D90);

  v54 = sub_22F740B70();
  v55 = sub_22F7415C0();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134218240;
    v57 = v30[2];

    *(v56 + 4) = v57;

    *(v56 + 12) = 2048;
    *(v56 + 14) = *(v51 + 16);

    _os_log_impl(&dword_22F0FC000, v54, v55, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs succeeded fetching %ld songs, %ld songs already in cache.", v56, 0x16u);
    MEMORY[0x2319033A0](v56, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_22F7416A0();
  sub_22F1B2BBC(0);
  sub_22F1B2BBC(0);
  v67(v52, v50, 0);

  return result;
}

void sub_22F3A7B14(char *a1, char a2, uint64_t a3, void (*a4)(uint64_t, void), uint64_t a5)
{
  v10 = type metadata accessor for Song(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v39[0] = a1;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v15 = *(a1 + 2);
    v16 = MEMORY[0x277D84F90];
    if (v15)
    {
      v36 = a3;
      v40 = MEMORY[0x277D84F90];
      sub_22F146514(0, v15, 0);
      v16 = v40;
      v17 = a1 + 32;
      do
      {
        memcpy(v39, v17, sizeof(v39));
        memcpy(v38, v17, sizeof(v38));
        sub_22F18C4EC(v39, &v37);
        Song.init(_:)(v38);
        v40 = v16;
        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_22F146514((v18 > 1), v19 + 1, 1);
          v16 = v40;
        }

        *(v16 + 16) = v19 + 1;
        sub_22F15CB04(v13, v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19);
        v17 += 296;
        --v15;
      }

      while (v15);
    }

    v20 = sub_22F151734(v16);

    if (*(v20 + 16))
    {
      v21 = sub_22F3A0200(v20);

      sub_22F7416A0();
      a4(v21, 0);

      return;
    }

    sub_22F3A7F30();
    a1 = swift_allocError();
    *v22 = 1;
    swift_willThrow();
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v23 = sub_22F740B90();
  __swift_project_value_buffer(v23, qword_2810B4D90);
  v24 = a1;
  v25 = sub_22F740B70();
  v26 = sub_22F7415E0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v35 = a4;
    v36 = a5;
    v28 = v27;
    v29 = swift_slowAlloc();
    v39[0] = v29;
    *v28 = 136315138;
    swift_getErrorValue();
    v30 = sub_22F7420F0();
    v32 = sub_22F145F20(v30, v31, v39);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_22F0FC000, v25, v26, "[MemoriesMusic] fetchDisplayMetadata processing fetchSongs failed: %s.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x2319033A0](v29, -1, -1);
    v33 = v28;
    a4 = v35;
    MEMORY[0x2319033A0](v33, -1, -1);
  }

  sub_22F7416A0();
  v34 = a1;
  a4(a1, 1);
}

unint64_t sub_22F3A7F30()
{
  result = qword_27DAB3EB8;
  if (!qword_27DAB3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3EB8);
  }

  return result;
}

void sub_22F3A7F84(void *a1, void *a2, void *a3, void (**a4)(void, void, void))
{
  v140 = a2;
  v141 = a3;
  v142 = a1;
  v136 = sub_22F740AD0();
  v5 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v135 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_22F73EEC0();
  v137 = *(v144 - 1);
  v7 = *(v137 + 8);
  MEMORY[0x28223BE20](v144);
  v134 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v109 - v9;
  v11 = sub_22F73EEE0();
  v139 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v138 = (&v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_22F740C00();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a4);
  if (qword_2810A9BD0 != -1)
  {
LABEL_42:
    swift_once();
  }

  v16 = qword_2810B4E90;
  *&v17 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - inflateDisplayMetadataForMusicCuration", 55, 2u, v17, 0, v16, v158);
  v18 = sub_22F2E3C74();
  if (v18[2])
  {
    v123 = v7;
    v133 = v10;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v130 = sub_22F740B90();
    __swift_project_value_buffer(v130, qword_2810B4D90);

    v19 = sub_22F740B70();
    v20 = sub_22F7415C0();
    v21 = os_log_type_enabled(v19, v20);
    v125 = v11;
    if (v21)
    {
      v22 = a4;
      v23 = swift_slowAlloc();
      *v23 = 134217984;
      *(v23 + 4) = v18[2];

      _os_log_impl(&dword_22F0FC000, v19, v20, "[MemoriesMusic] Inflating curation for %ld adamIDs", v23, 0xCu);
      v24 = v23;
      a4 = v22;
      MEMORY[0x2319033A0](v24, -1, -1);
    }

    else
    {
    }

    sub_22F740BF0();
    v25 = sub_22F22FB24(v15, 0);
    v127 = 0;
    v124 = v5;
    v26 = *(v25 + 4);
    v129 = *(v25 + 3);
    v143 = v25;
    v119 = v26;
    v27 = v140;
    static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)(*(v140 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource), *(v140 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8), &v164);
    v28 = *(&v159 + 1);
    v29 = v160;
    v30 = swift_allocObject();
    *(v30 + 16) = a4;
    v31 = swift_allocObject();
    v32 = v158[1];
    *(v31 + 40) = v158[0];
    v33 = v141;
    v34 = v142;
    *(v31 + 16) = v27;
    *(v31 + 24) = v34;
    *(v31 + 32) = v33;
    *(v31 + 56) = v32;
    *(v31 + 72) = v159;
    *(v31 + 88) = v160;
    *(v31 + 96) = sub_22F3AC130;
    v116 = v30;
    *(v31 + 104) = v30;
    v35 = v18[2];

    _Block_copy(a4);
    v117 = v28;

    v118 = v29;

    v36 = v27;
    v37 = a4;
    v38 = v36;
    v39 = v34;
    v40 = v33;
    _Block_copy(v37);
    v141 = v35;
    if (!v35)
    {

      v144 = v38;
      v60 = v39;
      v61 = v40;

      sub_22F3A51D0(MEMORY[0x277D84F90], 0, v60, v61, v158, v37);

      _Block_release(v37);

LABEL_41:

      sub_22F1D210C(&v164);
      _Block_release(v37);
      return;
    }

    v115 = v31;
    v112 = v37;
    v41 = qword_2810A9B98;

    v111 = v38;
    v110 = v39;
    v42 = v40;
    a4 = v119;

    if (v41 != -1)
    {
      swift_once();
    }

    v43 = qword_2810B4E70;
    *&v44 = CACurrentMediaTime();
    sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v44, 0, v43, v161);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
    v45 = swift_allocObject();
    v46 = &selRef_floatVector;
    v47 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    *(v45 + 16) = MEMORY[0x277D84F90];
    *(v45 + 24) = v47;
    v131 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
    v48 = swift_allocObject();
    *(v48 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
    v132 = v48;
    *(v48 + 16) = 0;
    v49 = (v48 + 16);
    v7 = v143;
    if (*(v143 + 3) == v129 && *(v143 + 4) == a4 || (sub_22F742040() & 1) != 0)
    {
      Batch = MusicBag.songQueryBatchSize()();
      LODWORD(v129) = 0;
      if (Batch)
      {
LABEL_18:
        v109 = v49;

        v51 = v127;
        sub_22F233C24(0, v141, Batch, v18, Batch);
        v53 = v52;
        v142 = v51;

        if (qword_2810A9440 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v130, qword_2810B4D48);

        v54 = sub_22F740B70();
        v55 = sub_22F7415C0();
        v56 = os_log_type_enabled(v54, v55);
        v57 = v115;
        v58 = v42;
        if (v56)
        {
          v59 = swift_slowAlloc();
          *v59 = 134218240;
          *(v59 + 4) = v141;

          *(v59 + 12) = 2048;
          *(v59 + 14) = v53[2];

          _os_log_impl(&dword_22F0FC000, v54, v55, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v59, 0x16u);
          MEMORY[0x2319033A0](v59, -1, -1);
        }

        else
        {
        }

        v10 = v133;
        v62 = v53[2];
        v113 = v163;
        v114 = *(&v162 + 1);
        v63 = swift_allocObject();
        v64 = v161[1];
        *(v63 + 16) = v161[0];
        *(v63 + 32) = v64;
        *(v63 + 48) = v162;
        *(v63 + 64) = v163;
        *(v63 + 72) = v58;
        v141 = v53;
        v65 = v58;
        *(v63 + 80) = sub_22F3AC38C;
        *(v63 + 88) = v57;
        v66 = v131;
        *(v63 + 96) = v132;
        *(v63 + 104) = v66;
        type metadata accessor for CompletionCounter();
        v67 = swift_allocObject();
        v67[2] = sub_22F3AC370;
        v67[3] = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
        v68 = swift_allocObject();
        *(v68 + 32) = 0;
        *(v68 + 16) = 0;
        v140 = v62;
        *(v68 + 24) = v62;
        v130 = v67;
        v67[4] = v68;
        sub_22F73EF30();
        swift_allocObject();
        v69 = v65;

        v11 = sub_22F73EF20();
        if (qword_2810A9168 != -1)
        {
          swift_once();
        }

        v70 = qword_2810A9170;
        v72 = v138;
        v71 = v139;
        *v138 = qword_2810A9170;
        (v71[13].isa)(v72, *MEMORY[0x277CC86D8], v125);
        v73 = v70;
        sub_22F73EF00();
        v74 = [v69 progressReportersForParallelOperationsWithCount_];
        sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
        v75 = sub_22F741180();

        v76 = (v124 + 8);
        v124 = (v137 + 16);
        v125 = v76;
        v122 = v137 + 32;
        v123 += 7;
        v153 = v75;
        v154 = 0;
        v120 = v137 + 8;
        v121 = &v149;
        v155 = v141;
        v156 = 0;
        v157 = 0;
        a4 = v69;
        v127 = v69;
        v128 = v18;
        v126 = v11;
        while (1)
        {
          v77 = sub_22F226D78();
          if (!v77)
          {

            goto LABEL_40;
          }

          v79 = v78;
          v141 = v77;
          v80 = *(v7 + 32);
          v81 = *(v7 + 40);
          v82 = *(v7 + 48);
          v83 = *(v7 + 56);
          v84 = *(v7 + 64);
          v147 = *(v7 + 24);
          v148 = v80;
          v149 = v81;
          v150 = v82;
          v151 = v83;
          v152 = v84;
          v145[0] = v164;
          v145[1] = v165;
          v145[2] = v166;
          v146 = v167;

          v49 = v142;
          MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v79, v145, v129, v10);
          if (v49)
          {
            break;
          }

          v142 = 0;

          v85 = swift_allocObject();
          v87 = v130;
          v86 = v131;
          v85[2] = v11;
          v85[3] = v86;
          v85[4] = v87;
          v140 = v85;
          v85[5] = v132;

          sub_22F741740();
          if (qword_2810A8E30 != -1)
          {
            swift_once();
          }

          v88 = v135;
          sub_22F740AC0();
          sub_22F740A90();
          (*v125)(v88, v136);
          v139 = *(v7 + 72);
          v15 = v137;
          v89 = v134;
          v90 = v144;
          (*(v137 + 2))(v134, v10, v144);
          v91 = (v15[80] + 16) & ~v15[80];
          v92 = (v123 + v91) & 0xFFFFFFFFFFFFFFF8;
          v93 = (v92 + 63) & 0xFFFFFFFFFFFFFFF8;
          v138 = ((v93 + 15) & 0xFFFFFFFFFFFFFFF8);
          v94 = (v93 + 39) & 0xFFFFFFFFFFFFFFF8;
          v5 = swift_allocObject();
          (*(v15 + 4))(v5 + v91, v89, v90);
          v95 = v5 + v92;
          v96 = v165;
          *v95 = v164;
          *(v95 + 16) = v96;
          *(v95 + 32) = v166;
          *(v95 + 48) = v167;
          *(v5 + v93) = v143;
          v97 = v138 + v5;
          v7 = v143;
          *v97 = "MusicKitClient HTTP Request";
          *(v97 + 1) = 27;
          v97[16] = 2;
          v98 = v141;
          *(v5 + v94) = v141;
          v99 = (v5 + ((v94 + 15) & 0xFFFFFFFFFFFFFFF8));
          v100 = v140;
          *v99 = sub_22F3AC36C;
          v99[1] = v100;
          v101 = swift_allocObject();
          *(v101 + 16) = sub_22F294B80;
          *(v101 + 24) = v5;
          v151 = sub_22F294B84;
          v152 = v101;
          v147 = MEMORY[0x277D85DD0];
          v148 = 1107296256;
          v149 = sub_22F2280B0;
          v150 = &block_descriptor_102;
          v102 = _Block_copy(&v147);
          sub_22F1D20B0(&v164, v145);

          v103 = v98;

          v10 = v133;

          dispatch_sync(v139, v102);
          _Block_release(v102);

          (*(v15 + 1))(v10, v144);
          LOBYTE(v100) = swift_isEscapingClosureAtFileLocation();

          a4 = v127;
          v11 = v126;
          if (v100)
          {
            __break(1u);
            goto LABEL_42;
          }
        }

        v104 = v132;
        [*(v132 + 24) lock];
        LOBYTE(v46) = 1;
        swift_beginAccess();
        v105 = *(v104 + 16);
        *(v104 + 16) = v49;

        v106 = *(v104 + 24);
        v107 = v49;
        [v106 unlock];
        v7 = v130;
        Batch = v130[4];

        os_unfair_lock_lock((Batch + 32));
        if (*(Batch + 16))
        {
          os_unfair_lock_unlock((Batch + 32));

          goto LABEL_39;
        }

LABEL_38:
        *(Batch + 16) = v46;
        os_unfair_lock_unlock((Batch + 32));

        (*(v7 + 16))(v108);

LABEL_39:

LABEL_40:
        v37 = v112;
        _Block_release(v112);

        goto LABEL_41;
      }
    }

    else
    {
      Batch = MusicBag.songEquivalentQueryBatchSize()();
      LODWORD(v129) = 1;
      if (Batch)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  sub_22F7416A0();
  sub_22F1B2BBC(0);
  (a4)[2](a4, v142, 0);

  _Block_release(a4);
}

void sub_22F3A9288(void *a1, char *a2, _BYTE *a3, NSObject *a4, void *a5, unint64_t a6)
{
  v257 = a5;
  v268 = a3;
  v10 = type metadata accessor for Song(0);
  v272 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (v232 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = sub_22F73F690();
  v249 = *(v255 - 8);
  MEMORY[0x28223BE20](v255);
  v14 = v232 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_22F740AD0();
  v253 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v264 = v232 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = sub_22F73EEC0();
  v266 = *(v273 - 1);
  MEMORY[0x28223BE20](v273);
  v263 = v232 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = v16;
  MEMORY[0x28223BE20](v17);
  v274 = (v232 - v18);
  v256 = sub_22F73EEE0();
  v252 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v250 = (v232 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_22F740C00();
  MEMORY[0x28223BE20](v20 - 8);
  v261 = v232 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  _Block_copy(a6);
  if (qword_2810A9460 != -1)
  {
    goto LABEL_121;
  }

  while (1)
  {
    v254 = sub_22F740B90();
    v22 = __swift_project_value_buffer(v254, qword_2810B4D90);

    v267 = v22;
    v23 = sub_22F740B70();
    v24 = sub_22F7415C0();

    v25 = os_log_type_enabled(v23, v24);
    v269 = a4;
    v248 = v14;
    v258 = a2;
    if (v25)
    {
      v26 = a1;
      v27 = a6;
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v290 = v29;
      *v28 = 134218242;
      *(v28 + 4) = v26[2];

      *(v28 + 12) = 2080;
      v30 = sub_22F740CB0();
      v32 = sub_22F145F20(v30, v31, &v290);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_22F0FC000, v23, v24, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs called for %ld adamIDs with  options: %s", v28, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x2319033A0](v29, -1, -1);
      v33 = v28;
      a6 = v27;
      a1 = v26;
      MEMORY[0x2319033A0](v33, -1, -1);
    }

    else
    {
    }

    if (qword_2810A9BD0 != -1)
    {
      swift_once();
    }

    v34 = qword_2810B4E90;
    *&v35 = CACurrentMediaTime();
    sub_22F1B560C("fetchSongDisplayMetadataJSONForAdamIDs", 38, 2u, v35, 0, v34, v294);
    v36 = sub_22F7416B0();
    v14 = v36;
    v262 = v37;
    a2 = *&v268[OBJC_IVAR___PGMusicCurationInflationContext_cache];
    if (v268[OBJC_IVAR___PGMusicCurationInflationContext_shouldForceMetadataRefetch] == 1)
    {
      v247 = v36;
      if (a1[2])
      {
        v259 = v34;
        v244 = a2;

        v38 = 0;
        v246 = MEMORY[0x277D84F90];
        goto LABEL_42;
      }

      v41 = 0;
      v42 = MEMORY[0x277D84F90];
LABEL_54:
      sub_22F3A72B8(v42);
      v270 = v41;
      if (v41)
      {

LABEL_56:
        v93 = v270;
        v94 = v270;
        v95 = sub_22F740B70();
        v96 = sub_22F7415E0();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *&v290 = v98;
          *v97 = 136315138;
          swift_getErrorValue();
          v99 = sub_22F7420F0();
          v101 = sub_22F145F20(v99, v100, &v290);

          *(v97 + 4) = v101;
          _os_log_impl(&dword_22F0FC000, v95, v96, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs request setup failed: %s.", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v98);
          MEMORY[0x2319033A0](v98, -1, -1);
          MEMORY[0x2319033A0](v97, -1, -1);
        }

        sub_22F7416A0();
        sub_22F1B2BBC(1);
        v102 = v270;
        v103 = v270;
        v104 = sub_22F73F360();
        (*(a6 + 16))(a6, 0, v104);
      }

      else
      {

        v106 = sub_22F740B70();
        v107 = sub_22F7415C0();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = 134217984;
          v109 = a6;
          v110 = *(v42 + 16);

          *(v108 + 4) = v110;
          a6 = v109;

          _os_log_impl(&dword_22F0FC000, v106, v107, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs succeeded, all %ld songs already in cache.", v108, 0xCu);
          MEMORY[0x2319033A0](v108, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v196 = v270;
        sub_22F7416A0();
        if (v196)
        {
        }

        sub_22F1B2BBC(0);
        v197 = sub_22F740DF0();
        (*(a6 + 16))(a6, v197, 0);
      }

      v105 = a6;
      goto LABEL_60;
    }

    v259 = v34;
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_22F770DF0;
    *(v39 + 56) = MEMORY[0x277D837D0];
    *(v39 + 64) = sub_22F153470();
    *(v39 + 32) = 0x44496D616461;
    *(v39 + 40) = 0xE600000000000000;
    *(v39 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    *(v39 + 104) = sub_22F25F050();
    *(v39 + 72) = a1;

    v40 = sub_22F741560();
    sub_22F2DA3D8(v40);
    v270 = 0;
    v244 = a2;
    v245 = a6;
    v247 = v14;
    v44 = v43;

    v45 = *(v44 + 16);
    v46 = MEMORY[0x277D84F90];
    v246 = v44;
    if (v45)
    {
      v260 = a1;
      *&v290 = MEMORY[0x277D84F90];
      sub_22F146454(0, v45, 0);
      v46 = v290;
      v47 = v44 + ((v272[80] + 32) & ~v272[80]);
      v48 = *(v272 + 9);
      do
      {
        sub_22F15CAA0(v47, v12);
        v49 = *v12;
        a2 = v12[1];

        sub_22F15CBD8(v12);
        *&v290 = v46;
        v51 = *(v46 + 16);
        v50 = *(v46 + 24);
        v14 = v51 + 1;
        if (v51 >= v50 >> 1)
        {
          sub_22F146454((v50 > 1), v51 + 1, 1);
          v46 = v290;
        }

        *(v46 + 16) = v14;
        v52 = v46 + 16 * v51;
        *(v52 + 32) = v49;
        *(v52 + 40) = a2;
        v47 += v48;
        --v45;
      }

      while (v45);
      a1 = v260;
    }

    v53 = sub_22F1515F8(v46);

    v54 = a1[2];
    if (!v54)
    {
      break;
    }

    a6 = 0;
    v271 = (a1 + 4);
    a4 = (v53 + 56);
    a1 = MEMORY[0x277D84F90];
    v272 = v54;
    while (a6 < v54)
    {
      a2 = (a6 + 1);
      if (__OFADD__(a6, 1))
      {
        goto LABEL_119;
      }

      v55 = &v271[16 * a6];
      v12 = *v55;
      v56 = *(v55 + 1);
      ++a6;
      if (!*(v53 + 16))
      {

        goto LABEL_32;
      }

      sub_22F742170();

      sub_22F740D60();
      v57 = sub_22F7421D0();
      v58 = -1 << *(v53 + 32);
      v59 = v57 & ~v58;
      if ((*(&a4->isa + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
      {
        v14 = ~v58;
        while (1)
        {
          v60 = (*(v53 + 48) + 16 * v59);
          v61 = *v60 == v12 && v60[1] == v56;
          if (v61 || (sub_22F742040() & 1) != 0)
          {
            break;
          }

          v59 = (v59 + 1) & v14;
          if (((*(&a4->isa + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v54 = v272;
        if (a2 == v272)
        {
          goto LABEL_40;
        }
      }

      else
      {
LABEL_32:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v300[0] = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F146454(0, a1[2] + 1, 1);
          a1 = *&v300[0];
        }

        v63 = a1;
        v64 = a1[2];
        v65 = v63[3];
        v14 = v64 + 1;
        if (v64 >= v65 >> 1)
        {
          sub_22F146454((v65 > 1), v64 + 1, 1);
          v63 = *&v300[0];
        }

        v63[2] = v14;
        v66 = &v63[2 * v64];
        v66[4] = v12;
        v66[5] = v56;
        v54 = v272;
        a1 = v63;
        if (a2 == v272)
        {
          goto LABEL_40;
        }
      }
    }

    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    swift_once();
  }

  a1 = MEMORY[0x277D84F90];
LABEL_40:

  if (!a1[2])
  {

    a6 = v245;
    v42 = v246;
    v41 = v270;
    goto LABEL_54;
  }

  a6 = v245;
  v38 = v270;
LABEL_42:

  v67 = sub_22F740B70();
  v68 = sub_22F7415C0();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v270 = v38;
    v70 = v69;
    v71 = swift_slowAlloc();
    *&v290 = v71;
    *v70 = 134218242;
    *(v70 + 4) = a1[2];

    *(v70 + 12) = 2080;
    v72 = MEMORY[0x231900D40](a1, MEMORY[0x277D837D0]);
    v74 = sub_22F145F20(v72, v73, &v290);

    *(v70 + 14) = v74;
    _os_log_impl(&dword_22F0FC000, v67, v68, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs will fetch metadata for %ld songs from server. adamIDsToFetch = %s", v70, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x2319033A0](v71, -1, -1);
    v75 = v70;
    v38 = v270;
    MEMORY[0x2319033A0](v75, -1, -1);
  }

  else
  {
  }

  *&v76 = CACurrentMediaTime();
  sub_22F1B560C("fetchSongDisplayMetadataJSONForAdamIDs Uncached", 47, 2u, v76, 0, v259, v297);
  v77 = v261;
  sub_22F740BF0();
  v78 = sub_22F22FB24(v77, 0);
  v270 = v38;
  if (v38)
  {

    goto LABEL_56;
  }

  a2 = v78;
  v79 = *(v78 + 4);
  v237 = *(v78 + 3);
  v80 = *&v268[OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8];
  v272 = *&v268[OBJC_IVAR___PGMusicCurationInflationContext_actionSource];
  v81 = sub_22F740E20();
  v83 = v82;
  v84 = v258;
  isa = v258[2].isa;
  v260 = a1;
  v241 = v79;
  if (!isa)
  {

LABEL_64:
    v111 = v272;
LABEL_65:
    static MusicKitClient.FetchOptions.memoriesDisplay(musicKitSource:)(v111, v80, v288);
    goto LABEL_66;
  }

  v86 = v81;

  v87 = sub_22F1229E8(v86, v83);
  v89 = v88;

  if ((v89 & 1) == 0)
  {
    goto LABEL_64;
  }

  sub_22F13A100(v84[7].isa + 32 * v87, &v290);
  if (!swift_dynamicCast())
  {
    goto LABEL_64;
  }

  v90 = v300[0];
  if (sub_22F740E20() == v90 && v91 == *(&v90 + 1))
  {

    v92 = v272;
    goto LABEL_110;
  }

  v220 = sub_22F742040();
  a1 = v260;

  v92 = v272;
  if ((v220 & 1) == 0)
  {
    v111 = v272;
    goto LABEL_65;
  }

LABEL_110:
  v221 = sub_22F740B70();
  v222 = sub_22F7415C0();
  if (os_log_type_enabled(v221, v222))
  {
    v223 = swift_slowAlloc();
    *v223 = 0;
    _os_log_impl(&dword_22F0FC000, v221, v222, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs Requesting the augmented curation and display fetch option", v223, 2u);
    v224 = v223;
    a1 = v260;
    MEMORY[0x2319033A0](v224, -1, -1);
  }

  static MusicKitClient.FetchOptions.augmentedCurationAndDisplay(musicKitSource:)(v92, v80, v288);
LABEL_66:
  v290 = v288[0];
  v291 = v288[1];
  v292 = v288[2];
  v293 = v289;
  v112 = *(&v298 + 1);
  v261 = v299;
  v113 = *(&v295 + 1);
  v114 = v296;
  v115 = swift_allocObject();
  *(v115 + 16) = a6;
  v116 = swift_allocObject();
  v117 = v244;
  *(v116 + 16) = v268;
  *(v116 + 24) = v117;
  v118 = v246;
  *(v116 + 32) = v262;
  *(v116 + 40) = v118;
  v119 = v269;
  *(v116 + 48) = v257;
  *(v116 + 56) = v119;
  v120 = v297[1];
  *(v116 + 64) = v297[0];
  *(v116 + 80) = v120;
  *(v116 + 96) = v298;
  *(v116 + 112) = v299;
  v121 = v294[0];
  v122 = v294[1];
  v123 = v296;
  *(v116 + 152) = v295;
  *(v116 + 136) = v122;
  *(v116 + 120) = v121;
  *(v116 + 168) = v123;
  *(v116 + 176) = sub_22F3AC0A0;
  v242 = v115;
  *(v116 + 184) = v115;
  *(v116 + 192) = a1;
  v240 = v116;
  v271 = a1[2];
  v124 = v117;

  _Block_copy(a6);

  v125 = v124;

  v243 = v113;

  v244 = v114;

  v272 = v268;
  v126 = v262;

  v127 = v269;
  _Block_copy(a6);
  v258 = v112;
  v245 = a6;
  v238 = v126;
  v239 = v125;
  if (!v271)
  {
    v273 = a2;

    v142 = v125;

    v272 = v272;
    v143 = v126;

    v274 = v127;

    v144 = sub_22F151734(MEMORY[0x277D84F90]);
    v145 = *(v144 + 16);
    v271 = v142;
    v269 = v143;
    if (v145)
    {
      v146 = v270;
      v147 = sub_22F3A0200(v144);

      v148 = v248;
      sub_22F73F680();
      MusicCache.writeMemoryDisplay(songs:date:progressReporter:)(v147, v148);
      v149 = v146;
      if (!v146)
      {
        (v249[1])(v148, v255);
        v202 = v246;
        *&v300[0] = v246;

        sub_22F14585C(v204, v203);
        v205 = sub_22F3A72B8(*&v300[0]);
        v268 = v225;
        v270 = v205;

        v226 = sub_22F740B70();
        v227 = sub_22F7415C0();
        if (os_log_type_enabled(v226, v227))
        {
          v228 = swift_slowAlloc();
          *v228 = 134218240;
          v229 = v147[2];

          *(v228 + 4) = v229;

          *(v228 + 12) = 2048;
          *(v228 + 14) = *(v202 + 16);

          _os_log_impl(&dword_22F0FC000, v226, v227, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs succeeded fetching %ld songs, %ld songs already in cache.", v228, 0x16u);
          MEMORY[0x2319033A0](v228, -1, -1);
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v230 = v269;
        sub_22F7416A0();
        sub_22F1B2BBC(0);
        sub_22F1B2BBC(0);
        v231 = sub_22F740DF0();
        v199 = v245;
        (*(v245 + 16))(v245, v231, 0);

LABEL_107:
        v200 = v247;
        goto LABEL_108;
      }

      (v249[1])(v148, v255);
    }

    else
    {

      sub_22F3A7F30();
      v149 = swift_allocError();
      *v201 = 1;
      swift_willThrow();
    }

    v206 = v149;
    v207 = sub_22F740B70();
    v208 = sub_22F7415E0();

    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      v210 = swift_slowAlloc();
      *&v300[0] = v210;
      *v209 = 136315394;
      v211 = MEMORY[0x231900D40](a1, MEMORY[0x277D837D0]);
      v213 = sub_22F145F20(v211, v212, v300);

      *(v209 + 4) = v213;
      *(v209 + 12) = 2080;
      swift_getErrorValue();
      v214 = sub_22F7420F0();
      v216 = sub_22F145F20(v214, v215, v300);

      *(v209 + 14) = v216;
      _os_log_impl(&dword_22F0FC000, v207, v208, "[MemoriesMusic] fetchSongDisplayMetadataJSONForAdamIDs processing fetchSongs failed for adamIds %s with error: %s.", v209, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v210, -1, -1);
      MEMORY[0x2319033A0](v209, -1, -1);
    }

    v217 = v269;
    sub_22F7416A0();
    sub_22F1B2BBC(1);
    sub_22F1B2BBC(1);
    v218 = v149;
    v219 = sub_22F73F360();
    v199 = v245;
    (*(v245 + 16))(v245, 0, v219);

    goto LABEL_107;
  }

  v128 = qword_2810A9B98;

  v235 = v125;

  v234 = v272;
  v269 = v126;

  v233 = v127;

  if (v128 != -1)
  {
    swift_once();
  }

  v129 = qword_2810B4E70;
  *&v130 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v130, 0, v129, v300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
  v131 = swift_allocObject();
  v132 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v131[2] = MEMORY[0x277D84F90];
  v131[3] = v132;
  v262 = v131;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
  v133 = swift_allocObject();
  *(v133 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v259 = v133;
  *(v133 + 16) = 0;
  v134 = v133 + 16;
  v135 = v270;
  if ((*(a2 + 3) != v237 || *(a2 + 4) != v241) && (sub_22F742040() & 1) == 0)
  {
    Batch = MusicBag.songEquivalentQueryBatchSize()();
    LODWORD(v255) = 1;
    if (Batch)
    {
      goto LABEL_73;
    }

    goto LABEL_98;
  }

  Batch = MusicBag.songQueryBatchSize()();
  LODWORD(v255) = 0;
  if (!Batch)
  {
LABEL_98:
    __break(1u);
LABEL_99:
    *(Batch + 16) = v134;
    os_unfair_lock_unlock((Batch + 32));

    v126[2](v198);

    goto LABEL_100;
  }

LABEL_73:
  v232[1] = v134;

  sub_22F233C24(0, v271, Batch, a1, Batch);
  v138 = v137;
  v272 = v135;

  if (qword_2810A9440 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v254, qword_2810B4D48);

  v139 = sub_22F740B70();
  v140 = sub_22F7415C0();
  if (os_log_type_enabled(v139, v140))
  {
    v141 = swift_slowAlloc();
    *v141 = 134218240;
    *(v141 + 4) = v271;

    *(v141 + 12) = 2048;
    *(v141 + 14) = *(v138 + 2);

    _os_log_impl(&dword_22F0FC000, v139, v140, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v141, 0x16u);
    MEMORY[0x2319033A0](v141, -1, -1);
  }

  else
  {
  }

  v150 = *(v138 + 2);
  v236 = v302;
  v237 = *(&v301 + 1);
  v151 = swift_allocObject();
  v152 = v300[1];
  *(v151 + 16) = v300[0];
  *(v151 + 32) = v152;
  *(v151 + 48) = v301;
  v153 = v269;
  *(v151 + 64) = v302;
  *(v151 + 72) = v153;
  v271 = v138;
  v154 = v240;
  *(v151 + 80) = sub_22F3AC0A8;
  *(v151 + 88) = v154;
  v155 = v262;
  *(v151 + 96) = v259;
  *(v151 + 104) = v155;
  type metadata accessor for CompletionCounter();
  v156 = swift_allocObject();
  v156[2] = sub_22F3AC370;
  v156[3] = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
  v157 = swift_allocObject();
  *(v157 + 32) = 0;
  *(v157 + 16) = 0;
  v270 = v150;
  *(v157 + 24) = v150;
  v257 = v156;
  v156[4] = v157;
  sub_22F73EF30();
  swift_allocObject();
  v158 = v153;

  v159 = sub_22F73EF20();
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v160 = qword_2810A9170;
  v161 = v250;
  *v250 = qword_2810A9170;
  (*(v252 + 104))(v161, *MEMORY[0x277CC86D8], v256);
  v162 = v160;
  v256 = v159;
  sub_22F73EF00();
  v163 = [v158 progressReportersForParallelOperationsWithCount:v270];
  sub_22F120634(0, &qword_2810A90B0, 0x277D22C80);
  v164 = sub_22F741180();

  v252 = v266 + 16;
  ++v253;
  v250 = (v266 + 32);
  v251 += 7;
  v283 = v164;
  v284 = 0;
  v248 = (v266 + 8);
  v249 = &v279;
  v285 = v271;
  v286 = 0;
  v287 = 0;
  v254 = v158;
  while (1)
  {
    v165 = sub_22F226D78();
    if (!v165)
    {

      goto LABEL_101;
    }

    v167 = v166;
    v271 = v165;
    v168 = *(a2 + 4);
    v169 = *(a2 + 5);
    v170 = *(a2 + 6);
    v171 = *(a2 + 7);
    v172 = *(a2 + 8);
    v277 = *(a2 + 3);
    v278 = v168;
    v279 = v169;
    v280 = v170;
    v281 = v171;
    v282 = v172;
    v275[0] = v290;
    v275[1] = v291;
    v275[2] = v292;
    v276 = v293;

    v135 = v272;
    MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v167, v275, v255, v274);
    if (v135)
    {
      break;
    }

    v272 = 0;

    v173 = swift_allocObject();
    v174 = v257;
    v175 = v262;
    *(v173 + 2) = v256;
    *(v173 + 3) = v175;
    *(v173 + 4) = v174;
    v270 = v173;
    *(v173 + 5) = v259;

    sub_22F741740();
    if (qword_2810A8E30 != -1)
    {
      swift_once();
    }

    v176 = v264;
    sub_22F740AC0();
    sub_22F740A90();
    (*v253)(v176, v265);
    v269 = *(a2 + 9);
    v177 = v266;
    v178 = v263;
    v179 = v273;
    (*(v266 + 16))(v263, v274, v273);
    v180 = (*(v177 + 80) + 16) & ~*(v177 + 80);
    v181 = (v251 + v180) & 0xFFFFFFFFFFFFFFF8;
    v182 = (v181 + 63) & 0xFFFFFFFFFFFFFFF8;
    v267 = (v182 + 15) & 0xFFFFFFFFFFFFFFF8;
    v268 = ((v182 + 39) & 0xFFFFFFFFFFFFFFF8);
    v183 = (v268 + 15) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    (*(v177 + 32))(v14 + v180, v178, v179);
    v184 = v14 + v181;
    v185 = v291;
    *v184 = v290;
    *(v184 + 16) = v185;
    *(v184 + 32) = v292;
    *(v184 + 48) = v293;
    *(v14 + v182) = a2;
    v186 = v14 + v267;
    *v186 = "MusicKitClient HTTP Request";
    *(v186 + 8) = 27;
    *(v186 + 16) = 2;
    v187 = v270;
    v188 = v271;
    *&v268[v14] = v271;
    v189 = (v14 + v183);
    *v189 = sub_22F3AC36C;
    v189[1] = v187;
    a6 = swift_allocObject();
    *(a6 + 16) = sub_22F294B80;
    *(a6 + 24) = v14;
    v281 = sub_22F294B84;
    v282 = a6;
    v277 = MEMORY[0x277D85DD0];
    v278 = 1107296256;
    v279 = sub_22F2280B0;
    v280 = &block_descriptor_76_0;
    v190 = _Block_copy(&v277);
    sub_22F1D20B0(v288, v275);

    v191 = v188;

    dispatch_sync(v269, v190);
    _Block_release(v190);

    (*(v177 + 8))(v274, v273);
    LOBYTE(v187) = swift_isEscapingClosureAtFileLocation();

    a1 = v260;
    v12 = v261;
    a4 = v258;
    v158 = v254;
    if (v187)
    {
      goto LABEL_120;
    }
  }

  v192 = v259;
  [*(v259 + 24) lock];
  LOBYTE(v134) = 1;
  swift_beginAccess();
  v193 = *(v192 + 16);
  *(v192 + 16) = v135;

  v194 = *(v192 + 24);
  v195 = v135;
  [v194 unlock];
  v126 = v257;
  Batch = v257[4];

  os_unfair_lock_lock((Batch + 32));
  if ((*(Batch + 16) & 1) == 0)
  {
    goto LABEL_99;
  }

  os_unfair_lock_unlock((Batch + 32));

LABEL_100:

LABEL_101:
  v199 = v245;
  v200 = v247;
LABEL_108:

  _Block_release(v199);

  swift_bridgeObjectRelease_n();

  sub_22F1D210C(v288);
  v105 = v199;
LABEL_60:
  _Block_release(v105);
}

void sub_22F3AB520(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, const void *a5)
{
  v76 = a1;
  v77 = a4;
  v72 = sub_22F740AD0();
  isa = v72[-1].isa;
  MEMORY[0x28223BE20](v72);
  v68 = v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22F73EEC0();
  v73 = *(v9 - 8);
  v74 = v9;
  MEMORY[0x28223BE20](v9);
  v71 = v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v10;
  MEMORY[0x28223BE20](v11);
  v75 = v64 - v12;
  v13 = sub_22F740C00();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a5;
  _Block_copy(a5);
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v16 = sub_22F740B90();
  __swift_project_value_buffer(v16, qword_2810B4D90);

  v17 = sub_22F740B70();
  v18 = sub_22F7415C0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = a3;
    v21 = swift_slowAlloc();
    *&v93 = v21;
    *v19 = 136315138;
    *(v19 + 4) = sub_22F145F20(v76, a2, &v93);
    _os_log_impl(&dword_22F0FC000, v17, v18, "[MemoriesMusic] fetchSongAdamIDsForPurchasedSongID for purchased song ID %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v22 = v21;
    a3 = v20;
    MEMORY[0x2319033A0](v22, -1, -1);
    MEMORY[0x2319033A0](v19, -1, -1);
  }

  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v23 = qword_2810B4E90;
  *&v24 = CACurrentMediaTime();
  sub_22F1B560C("fetchSongAdamIDsForPurchasedSongID", 34, 2u, v24, 0, v23, v87);
  sub_22F740BF0();
  v67 = sub_22F22FB24(v15, 0);
  static MusicKitClient.FetchOptions.identity(musicKitSource:)(*(a3 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource), *(a3 + OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8), &v93);
  v26 = *(&v88 + 1);
  v25 = v89;
  v27 = swift_allocObject();
  v28 = v78;
  *(v27 + 16) = v78;
  v29 = swift_allocObject();
  v30 = v77;
  *(v29 + 16) = v77;
  v31 = v87[1];
  *(v29 + 24) = v87[0];
  *(v29 + 40) = v31;
  *(v29 + 56) = v88;
  *(v29 + 72) = v89;
  *(v29 + 80) = sub_22F3AC048;
  *(v29 + 88) = v27;

  _Block_copy(v28);

  v32 = v30;
  _Block_copy(v28);
  v33 = qword_2810A9B98;

  v77 = v25;

  v65 = v32;
  v66 = v27;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_2810B4E70;
  *&v35 = CACurrentMediaTime();
  sub_22F1B560C("MusicKitClient Fetch Songs By Purchased ID", 42, 2u, v35, 0, v34, v90);
  v36 = v67;
  v37 = *(v67 + 4);
  v38 = *(v67 + 5);
  v39 = *(v67 + 6);
  v40 = *(v67 + 7);
  v41 = *(v67 + 8);
  v81 = *(v67 + 3);
  v82 = v37;
  v83 = v38;
  v84 = v39;
  v85 = v40;
  v86 = v41;
  v79[0] = v93;
  v79[1] = v94;
  v79[2] = v95;
  v80 = v96;

  sub_22F3E3150(v76, a2, v79, v75);

  v64[2] = v26;
  v42 = *(&v91 + 1);
  v43 = v92;
  v44 = swift_allocObject();
  v45 = v90[1];
  *(v44 + 16) = v90[0];
  *(v44 + 32) = v45;
  *(v44 + 48) = v91;
  *(v44 + 64) = v92;
  *(v44 + 72) = sub_22F3AC374;
  v64[0] = v44;
  *(v44 + 80) = v29;
  v76 = v42;

  v64[3] = v43;

  sub_22F741740();
  v64[1] = v29;
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v46 = v68;
  sub_22F740AC0();
  sub_22F740A90();
  (*(isa + 8))(v46, v72);
  v72 = *(v36 + 9);
  v47 = v73;
  v48 = v74;
  v49 = v71;
  (*(v73 + 16))(v71, v75, v74);
  v50 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v51 = (v69 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 63) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  isa = (v52 + 39) & 0xFFFFFFFFFFFFFFF8;
  v53 = (isa + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v47 + 32))(v54 + v50, v49, v48);
  v55 = v54 + v51;
  v56 = v94;
  *v55 = v93;
  *(v55 + 16) = v56;
  *(v55 + 32) = v95;
  *(v55 + 48) = v96;
  *(v54 + v52) = v36;
  v57 = v54 + v69;
  *v57 = "MusicKitClient HTTP Request";
  *(v57 + 8) = 27;
  *(v57 + 16) = 2;
  v58 = v65;
  *(v54 + isa) = v65;
  v59 = (v54 + v53);
  v60 = v64[0];
  *v59 = sub_22F3AC368;
  v59[1] = v60;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_22F294B80;
  *(v61 + 24) = v54;
  v85 = sub_22F294B84;
  v86 = v61;
  v81 = MEMORY[0x277D85DD0];
  v82 = 1107296256;
  v83 = sub_22F2280B0;
  v84 = &block_descriptor_51_0;
  v62 = _Block_copy(&v81);
  v63 = v58;
  sub_22F1D20B0(&v93, v79);

  dispatch_sync(v72, v62);
  _Block_release(v62);

  (*(v73 + 8))(v75, v74);
  LOBYTE(v47) = swift_isEscapingClosureAtFileLocation();

  _Block_release(v78);

  if (v47)
  {
    __break(1u);
  }

  else
  {

    sub_22F1D210C(&v93);
    _Block_release(v78);
  }
}

uint64_t objectdestroy_14Tm()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_22F3AC0AC()
{
  result = qword_2810A9300;
  if (!qword_2810A9300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB33C8, &qword_22F783278);
    sub_22F1E15FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9300);
  }

  return result;
}

uint64_t objectdestroyTm_7()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t objectdestroy_56Tm()
{

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph14InflationErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22F3AC294(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22F3AC2E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *static MusicForArtistCacher.cacheMusic(forMomentsInPhotoLibrary:graphManager:forceCaching:progressReporter:completionHandler:)(void *a1, void *a2, uint64_t a3, NSObject *a4, void (*a5)(uint64_t, void), uint64_t a6)
{
  v7 = v6;
  v11 = a3;

  return sub_22F3AC4A4(a1, a2, v11, 50, a4, v7, a5, a6);
}

void *sub_22F3AC4A4(void *a1, void *a2, int a3, uint64_t a4, NSObject *a5, char *a6, void (*a7)(uint64_t, void), uint64_t a8)
{
  v9 = v8;
  v142 = a6;
  v151 = a5;
  v144 = a4;
  LODWORD(v149) = a3;
  v148 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v13 - 8);
  v136 = v121 - v14;
  v135 = type metadata accessor for CacherStatus(0);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v139 = v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_22F73EEC0();
  v137 = *(v138 - 8);
  v16 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v132 = v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v145 = v121 - v18;
  v146 = sub_22F740AD0();
  v147 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v143 = v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22F740C00();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v140 = *(v23 - 8);
  v24 = *(v140 + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v133 = v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v121 - v26;
  MEMORY[0x28223BE20](v28);
  v141 = (v121 - v29);
  MEMORY[0x28223BE20](v30);
  v150 = v121 - v31;
  v32 = swift_allocObject();
  *(v32 + 16) = a7;
  *(v32 + 24) = a8;
  v33 = qword_2810A9B20;
  v167 = a8;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = qword_2810B4E20;
  *&v35 = CACurrentMediaTime();
  sub_22F1B560C("Cache Music For Artist Elector", 30, 2u, v35, 0, v34, v160);
  v36 = sub_22F1A26E0(a1);
  if (v9)
  {

LABEL_6:
  }

  v129 = a1;
  v128 = v16;
  v130 = a7;
  v131 = v32;
  v37 = v36;
  v38 = objc_allocWithZone(type metadata accessor for MusicBag());
  v39 = v37;
  v40 = sub_22F1ED5B0(v37);

  sub_22F741690();
  v127 = v40;
  v125 = v27;
  v42 = sub_22F7416E0();
  v44 = v43;
  v126 = v45;
  v47 = v46;
  v48 = v150;
  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEE00747369747241, v150);
  v123 = v47;
  v124 = v39;
  v49 = sub_22F3B0CD4(v48, v127, v42);
  v122 = v42;
  if (((v49 | v149) & 1) == 0)
  {
    sub_22F7416A0();
    v52 = v130;
    v53 = v124;
    v54 = v123;
    sub_22F1B2BBC(1);
    v52(1, 0);

LABEL_11:

LABEL_12:
    sub_22F120ADC(v150, &qword_27DAB1DA0, &unk_22F7771B0);
    goto LABEL_6;
  }

  v50 = sub_22F3B11B8(v129, v148, v124);
  v51 = v130;
  v149 = v50;
  sub_22F740BD0();
  result = sub_22F22FB24(v22, 0);
  v55 = v149[2];
  if (!v55)
  {

    sub_22F1B2BBC(0);
    sub_22F7416A0();
    v51(1, 0);

    goto LABEL_11;
  }

  v148 = 0;
  v129 = result;
  if (v55 > v144)
  {
    if (v144 < 0)
    {
      __break(1u);
      return result;
    }

    sub_22F10AB90(v149, (v149 + 4), 0, (2 * v144) | 1);
    v57 = v56;

    v149 = v57;
  }

  static MusicKitClient.FetchOptions.nonPersonalizedMemoriesCuration(musicKitSource:)(0x726F46636973756DLL, 0xEE00747369747241, &v163);
  v58 = v141;
  sub_22F13BA9C(v48, v141, &qword_27DAB1DA0, &unk_22F7771B0);
  v144 = *(&v161 + 1);
  v121[1] = v162;
  sub_22F13BA9C(v58, v125, &qword_27DAB1DA0, &unk_22F7771B0);
  v59 = (*(v140 + 80) + 24) & ~*(v140 + 80);
  v60 = (v24 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v62 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v62 + 63) & 0xFFFFFFFFFFFFFFF8;
  v64 = (v63 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  *(v65 + 16) = v142;
  sub_22F1207AC(v58, v65 + v59, &qword_27DAB1DA0, &unk_22F7771B0);
  v66 = v124;
  *(v65 + v60) = v124;
  v67 = v151;
  *(v65 + v61) = v151;
  v68 = v65 + v62;
  v69 = v160[1];
  *v68 = v160[0];
  *(v68 + 16) = v69;
  *(v68 + 32) = v161;
  *(v68 + 48) = v162;
  v70 = (v65 + v63);
  v71 = v131;
  *v70 = sub_22F3B1774;
  v70[1] = v71;
  v140 = v65;
  v72 = v123;
  *(v65 + v64) = v123;
  v142 = v66;

  v141 = v72;

  v123 = v67;
  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v73 = qword_2810A8E38;
  v74 = v143;
  sub_22F740AC0();
  v124 = v73;
  sub_22F740A90();
  v75 = v147 + 8;
  v76 = v146;
  v151 = *(v147 + 8);
  (v151)(v74, v146);
  v77 = v129;
  v78 = *(v129 + 4);
  v79 = *(v129 + 5);
  v80 = *(v129 + 6);
  v81 = *(v129 + 7);
  v82 = *(v129 + 8);
  aBlock = *(v129 + 3);
  v155 = v78;
  v156 = v79;
  v157 = v80;
  v158 = v81;
  v159 = v82;
  v152[0] = v163;
  v152[1] = v164;
  v152[2] = v165;
  v153 = v166;

  v83 = v145;
  v84 = v148;
  sub_22F3E21F0(v149, 0x14, v152, v145);
  v148 = v84;
  if (v84)
  {

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    (v151)(v74, v76);
    isEscapingClosureAtFileLocation = v133;
    sub_22F13BA9C(v125, v133, &qword_27DAB1DA0, &unk_22F7771B0);
    v86 = v135;
    v87 = (*(v134 + 48))(isEscapingClosureAtFileLocation, 1, v135);
    v147 = v75;
    v88 = v74;
    if (v87 == 1)
    {
      v89 = v148;
      sub_22F120ADC(isEscapingClosureAtFileLocation, &qword_27DAB1DA0, &unk_22F7771B0);
      v90 = sub_22F73F690();
      v91 = v136;
      (*(*(v90 - 8) + 56))(v136, 1, 1, v90);
LABEL_26:
      v110 = v139;
      v111 = v86[6];
      sub_22F73F680();
      v112 = sub_22F73F690();
      (*(*(v112 - 8) + 56))(&v110[v111], 0, 1, v112);
      *v110 = xmmword_22F789AD0;
      sub_22F1207AC(v91, &v110[v86[5]], &qword_27DAB0920, &qword_22F770B20);
      sub_22F741740();
      if (qword_2810A8E80 != -1)
      {
        swift_once();
      }

      sub_22F740AC0();
      sub_22F740A90();
      v113 = v146;
      v114 = v151;
      v115 = (v151)(v88, v146);
      MEMORY[0x28223BE20](v115);
      strcpy(&v121[-4], "musicForArtist");
      HIBYTE(v121[-3]) = -18;
      v121[-2] = v116;
      v121[-1] = v110;
      sub_22F7417A0();
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      (v114)(v88, v113);
      sub_22F7416A0();
      v117 = v126;
      v118 = v122;
      v119 = v127;
      sub_22F1B2BBC(1);
      v120 = v148;
      v130(0, v148);

      sub_22F1D210C(&v163);

      sub_22F2CE854(v139, type metadata accessor for CacherStatus);
      sub_22F120ADC(v125, &qword_27DAB1DA0, &unk_22F7771B0);
      goto LABEL_12;
    }

LABEL_25:
    v91 = v136;
    sub_22F13BA9C(isEscapingClosureAtFileLocation + v86[5], v136, &qword_27DAB0920, &qword_22F770B20);
    v109 = v148;
    sub_22F2CE854(isEscapingClosureAtFileLocation, type metadata accessor for CacherStatus);
    goto LABEL_26;
  }

  v92 = swift_allocObject();
  v149 = v92;
  *(v92 + 16) = "MusicKitClient Fetch Essentials Playlists For Artists";
  *(v92 + 24) = 53;
  *(v92 + 32) = 2;
  *(v92 + 40) = sub_22F3B1B54;
  *(v92 + 48) = v140;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  (v151)(v74, v146);
  v151 = v77[9];
  v93 = v137;
  v94 = v132;
  v95 = v138;
  (*(v137 + 16))(v132, v83, v138);
  v96 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v97 = (v128 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = (v97 + 63) & 0xFFFFFFFFFFFFFFF8;
  v146 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
  v147 = (v98 + 39) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v147 + 15) & 0xFFFFFFFFFFFFFFF8;
  v100 = swift_allocObject();
  (*(v93 + 32))(v100 + v96, v94, v95);
  v101 = v100 + v97;
  v102 = v164;
  *v101 = v163;
  *(v101 + 16) = v102;
  *(v101 + 32) = v165;
  *(v101 + 48) = v166;
  *(v100 + v98) = v129;
  v103 = v100 + v146;
  *v103 = "MusicKitClient HTTP Request";
  *(v103 + 8) = 27;
  *(v103 + 16) = 2;
  v104 = v126;
  *(v100 + v147) = v126;
  v105 = (v100 + v99);
  v88 = v100;
  v106 = v149;
  *v105 = sub_22F3B1B4C;
  v105[1] = v106;
  v107 = swift_allocObject();
  *(v107 + 16) = sub_22F294B80;
  *(v107 + 24) = v100;
  v158 = sub_22F294B84;
  v159 = v107;
  aBlock = MEMORY[0x277D85DD0];
  v155 = 1107296256;
  v156 = sub_22F2280B0;
  v157 = &block_descriptor_38_0;
  v86 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v163, v152);

  v108 = v104;

  dispatch_sync(v151, v86);

  _Block_release(v86);

  sub_22F1D210C(&v163);

  (*(v137 + 8))(v145, v138);
  sub_22F120ADC(v125, &qword_27DAB1DA0, &unk_22F7771B0);
  sub_22F120ADC(v150, &qword_27DAB1DA0, &unk_22F7771B0);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

void *static MusicForArtistCacher.cacheMusic(forMomentsInPhotoLibrary:graphManager:forceCaching:maximumNumberOfArtistIdentifiersToProcess:progressReporter:completionHandler:)(void *a1, void *a2, int a3, uint64_t a4, NSObject *a5, void (*a6)(id), unint64_t a7)
{
  v135 = a7;
  v153 = a5;
  v132 = a4;
  LODWORD(v137) = a3;
  v136 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = &v108 - v11;
  v122 = type metadata accessor for CacherStatus(0);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v126 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22F73EEC0();
  v124 = *(v125 - 8);
  v13 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v119 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v133 = (&v108 - v15);
  v131 = sub_22F740AD0();
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v129 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22F740C00();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v127 = *(v20 - 8);
  v21 = *(v127 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v120 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v134 = &v108 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v108 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v108 - v28;
  if (qword_2810A9B20 != -1)
  {
    swift_once();
  }

  v30 = qword_2810B4E20;
  *&v31 = CACurrentMediaTime();
  sub_22F1B560C("Cache Music For Artist Elector", 30, 2u, v31, 0, v30, v146);
  v32 = sub_22F1A26E0(a1);
  if (v7)
  {
  }

  v117 = a1;
  v115 = v13;
  v116 = a6;
  v118 = v29;
  v33 = v32;
  v34 = objc_allocWithZone(type metadata accessor for MusicBag());
  v35 = v33;
  v36 = sub_22F1ED5B0(v33);

  sub_22F741690();
  v114 = v36;
  v38 = sub_22F7416E0();
  v113 = v39;
  v41 = v40;
  v112 = v42;
  v43 = v118;
  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEE00747369747241, v118);
  v111 = v41;
  v44 = sub_22F3B0CD4(v43, v114, v38);
  v45 = v43;
  if (((v44 | v137) & 1) == 0)
  {
    sub_22F7416A0();
    v47 = v112;
    sub_22F1B2BBC(1);
    v116(0);

LABEL_10:

    return sub_22F120ADC(v45, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  v46 = v113;
  v137 = sub_22F3B11B8(v117, v136, v35);
  sub_22F740BD0();
  result = sub_22F22FB24(v19, 0);
  v48 = v137[2];
  if (!v48)
  {

    sub_22F1B2BBC(0);
    sub_22F7416A0();
    v116(0);

    goto LABEL_10;
  }

  v136 = 0;
  v109 = v38;
  v117 = result;
  if (v48 > v132)
  {
    if (v132 < 0)
    {
      __break(1u);
      return result;
    }

    sub_22F10AB90(v137, (v137 + 4), 0, (2 * v132) | 1);
    v50 = v49;

    v137 = v50;
  }

  static MusicKitClient.FetchOptions.nonPersonalizedMemoriesCuration(musicKitSource:)(0x726F46636973756DLL, 0xEE00747369747241, &v149);
  sub_22F13BA9C(v45, v26, &qword_27DAB1DA0, &unk_22F7771B0);
  v110 = *(&v147 + 1);
  v132 = v148;
  sub_22F13BA9C(v26, v134, &qword_27DAB1DA0, &unk_22F7771B0);
  v51 = (*(v127 + 80) + 24) & ~*(v127 + 80);
  v52 = (v21 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
  v55 = (v54 + 63) & 0xFFFFFFFFFFFFFFF8;
  v56 = (v55 + 23) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  *(v57 + 16) = v128;
  sub_22F1207AC(v26, v57 + v51, &qword_27DAB1DA0, &unk_22F7771B0);
  *(v57 + v52) = v35;
  v58 = v153;
  *(v57 + v53) = v153;
  v59 = v57 + v54;
  v60 = v146[1];
  *v59 = v146[0];
  *(v59 + 16) = v60;
  *(v59 + 32) = v147;
  *(v59 + 48) = v148;
  v61 = (v57 + v55);
  v62 = v135;
  *v61 = v116;
  v61[1] = v62;
  v127 = v57;
  v63 = v112;
  *(v57 + v56) = v112;
  v128 = v35;

  v112 = v63;

  v64 = v58;
  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v65 = qword_2810A8E38;
  v66 = v129;
  sub_22F740AC0();
  v153 = v65;
  sub_22F740A90();
  v67 = *(v130 + 8);
  v68 = v131;
  v67(v66, v131);
  v69 = *(v117 + 4);
  v70 = *(v117 + 5);
  v71 = *(v117 + 6);
  v72 = *(v117 + 7);
  v73 = *(v117 + 8);
  aBlock = *(v117 + 3);
  v141 = v69;
  v142 = v70;
  v143 = v71;
  v144 = v72;
  v145 = v73;
  v138[0] = v149;
  v138[1] = v150;
  v138[2] = v151;
  v139 = v152;

  v74 = v136;
  sub_22F3E21F0(v137, 0x14, v138, v133);
  v136 = v74;
  if (v74)
  {
    v133 = v64;

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v67(v66, v68);
    isEscapingClosureAtFileLocation = v120;
    sub_22F13BA9C(v134, v120, &qword_27DAB1DA0, &unk_22F7771B0);
    v76 = v122;
    v77 = v67;
    if ((*(v121 + 48))(isEscapingClosureAtFileLocation, 1, v122) == 1)
    {
      v78 = v136;
      sub_22F120ADC(isEscapingClosureAtFileLocation, &qword_27DAB1DA0, &unk_22F7771B0);
      v79 = sub_22F73F690();
      v80 = v123;
      (*(*(v79 - 8) + 56))(v123, 1, 1, v79);
LABEL_25:
      v99 = v76[6];
      v100 = v126;
      sub_22F73F680();
      v101 = sub_22F73F690();
      (*(*(v101 - 8) + 56))(&v100[v99], 0, 1, v101);
      *v100 = xmmword_22F789AD0;
      sub_22F1207AC(v80, &v100[v76[5]], &qword_27DAB0920, &qword_22F770B20);
      sub_22F741740();
      if (qword_2810A8E80 != -1)
      {
        swift_once();
      }

      sub_22F740AC0();
      sub_22F740A90();
      v102 = v77(v66, v68);
      MEMORY[0x28223BE20](v102);
      strcpy(&v108 - 32, "musicForArtist");
      *(&v108 - 17) = -18;
      *(&v108 - 2) = v103;
      *(&v108 - 1) = v100;
      sub_22F7417A0();
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      v77(v66, v68);
      sub_22F7416A0();
      v104 = v136;
      v105 = v118;
      v106 = v113;
      v107 = v112;
      sub_22F1B2BBC(1);
      v116(v104);

      sub_22F1D210C(&v149);

      sub_22F2CE854(v126, type metadata accessor for CacherStatus);
      sub_22F120ADC(v134, &qword_27DAB1DA0, &unk_22F7771B0);
      v45 = v105;
      return sub_22F120ADC(v45, &qword_27DAB1DA0, &unk_22F7771B0);
    }

LABEL_24:
    v80 = v123;
    sub_22F13BA9C(isEscapingClosureAtFileLocation + v76[5], v123, &qword_27DAB0920, &qword_22F770B20);
    v98 = v136;
    sub_22F2CE854(isEscapingClosureAtFileLocation, type metadata accessor for CacherStatus);
    goto LABEL_25;
  }

  v81 = swift_allocObject();
  v137 = v81;
  v81[2] = "MusicKitClient Fetch Essentials Playlists For Artists";
  v81[3] = 53;
  *(v81 + 32) = 2;
  v81[5] = sub_22F3B1674;
  v81[6] = v127;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v67(v66, v68);
  v153 = *(v117 + 9);
  v82 = v124;
  v83 = v119;
  v84 = v125;
  (*(v124 + 16))(v119, v133, v125);
  v85 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v86 = (v115 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = (v86 + 63) & 0xFFFFFFFFFFFFFFF8;
  v135 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v87 + 39) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  (*(v82 + 32))(v89 + v85, v83, v84);
  v90 = v89 + v86;
  v91 = v150;
  *v90 = v149;
  *(v90 + 16) = v91;
  *(v90 + 32) = v151;
  *(v90 + 48) = v152;
  *(v89 + v87) = v117;
  v92 = v89 + v135;
  *v92 = "MusicKitClient HTTP Request";
  *(v92 + 8) = 27;
  *(v92 + 16) = 2;
  v93 = v111;
  *(v89 + v88) = v111;
  v94 = (v89 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8));
  v95 = v137;
  *v94 = sub_22F3B1678;
  v94[1] = v95;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_22F233FAC;
  *(v96 + 24) = v89;
  v144 = sub_22F2915BC;
  v145 = v96;
  aBlock = MEMORY[0x277D85DD0];
  v141 = 1107296256;
  v142 = sub_22F2280B0;
  v143 = &block_descriptor_50;
  v77 = _Block_copy(&aBlock);
  v68 = v145;
  sub_22F1D20B0(&v149, v138);

  v97 = v93;

  dispatch_sync(v153, v77);

  _Block_release(v77);

  sub_22F1D210C(&v149);

  (*(v124 + 8))(v133, v125);
  v76 = &unk_22F7771B0;
  sub_22F120ADC(v134, &qword_27DAB1DA0, &unk_22F7771B0);
  sub_22F120ADC(v118, &qword_27DAB1DA0, &unk_22F7771B0);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  v66 = v136;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_24;
  }

  return result;
}