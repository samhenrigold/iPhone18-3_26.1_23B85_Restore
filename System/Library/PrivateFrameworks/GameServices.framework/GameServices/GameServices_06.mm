uint64_t GameActivityPlayStyle.rawValue.getter()
{
  v1 = 0x6E6F7268636E7973;
  if (*v0 != 1)
  {
    v1 = 0x6F7268636E797361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1D84D3274@<X0>(uint64_t *a1@<X8>)
{
  result = GameActivityPlayStyle.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84D32A8()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0AA4();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84D32F0()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0AA4();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

uint64_t GameActivityDefinition.partyStartURL.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  type metadata accessor for GameActivityDefinition(v0);
  sub_1D8580D78();
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_394_0();

  return v2(v1);
}

uint64_t GameActivityDefinition.storeFront.getter()
{
  type metadata accessor for GameActivityDefinition(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityDefinition.storeFront.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  type metadata accessor for GameActivityDefinition(v3);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityDefinition.storeFront.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityDefinition(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityDefinition.title.getter()
{
  type metadata accessor for GameActivityDefinition(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityDefinition.defaultProperties.getter()
{
  type metadata accessor for GameActivityDefinition(0);
}

uint64_t GameActivityDefinition.fallbackURL.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityDefinition(v0);
  OUTLINED_FUNCTION_400(*(v1 + 52));
  return sub_1D847C204();
}

uint64_t GameActivityDefinition.artwork.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = *(type metadata accessor for GameActivityDefinition(v2) + 60);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v0, (v1 + v3), 0x70uLL);
  return sub_1D847C204();
}

uint64_t GameActivityDefinition.image.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = (v1 + *(type metadata accessor for GameActivityDefinition(v2) + 60));
  result = v3[1];
  if (result)
  {
    v5 = *v3;
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  v0[1] = result;
  return result;
}

void GameActivityDefinition.playStyle.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityDefinition(v0);
  OUTLINED_FUNCTION_493_0(*(v1 + 72));
}

uint64_t GameActivityDefinition.associatedLeaderboardUUIDs.getter()
{
  type metadata accessor for GameActivityDefinition(0);
}

uint64_t GameActivityDefinition.associatedAchievementDescriptionUUIDs.getter()
{
  type metadata accessor for GameActivityDefinition(0);
}

uint64_t GameActivityDefinition.associatedLeaderboardIDs.getter()
{
  type metadata accessor for GameActivityDefinition(0);
}

uint64_t GameActivityDefinition.associatedLeaderboardIDs.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for GameActivityDefinition(v2) + 84);

  *(v1 + v3) = v0;
  return result;
}

uint64_t GameActivityDefinition.associatedLeaderboardIDs.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityDefinition(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityDefinition.associatedAchievementDescriptionIDs.getter()
{
  type metadata accessor for GameActivityDefinition(0);
}

uint64_t GameActivityDefinition.associatedAchievementDescriptionIDs.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for GameActivityDefinition(v2) + 88);

  *(v1 + v3) = v0;
  return result;
}

uint64_t GameActivityDefinition.associatedAchievementDescriptionIDs.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityDefinition(v0);
  return OUTLINED_FUNCTION_106();
}

void GameActivityDefinition.releaseState.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityDefinition(v0);
  OUTLINED_FUNCTION_493_0(*(v1 + 92));
}

uint64_t GameActivityDefinition.compatibleBundleIDs.getter()
{
  type metadata accessor for GameActivityDefinition(0);
}

void GameActivityDefinition.init(identifier:groupIdentifier:ascUUID:activityEnvironment:title:details:defaultProperties:fallbackURL:artwork:supportsPartyCode:maxPlayers:minPlayers:playStyle:associatedLeaderboardUUIDs:associatedAchievementDescriptionUUIDs:associatedLeaderboardIDs:associatedAchievementDescriptionIDs:releaseState:archived:compatibleBundleIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, char *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char *a37, char a38, uint64_t a39)
{
  OUTLINED_FUNCTION_386();
  v74 = v40;
  v42 = v41;
  v72 = v43;
  v73 = v44;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = a24;
  v54 = type metadata accessor for GameActivityDefinition(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  v75 = *a32;
  v56 = *a37;
  v58 = (v39 + *(v57 + 36));
  *v58 = 29557;
  v58[1] = 0xE200000000000000;
  *v39 = v52;
  v39[1] = v50;
  v39[2] = v48;
  v39[3] = v46;
  v39[4] = v72;
  v39[5] = v73;
  v59 = v42[3];
  v60 = v42[4];
  v61 = OUTLINED_FUNCTION_188();
  __swift_project_boxed_opaque_existential_1(v61, v62);
  v39[6] = (*(v60 + 32))(v59, v60);
  v39[7] = v63;
  v64 = v42[3];
  v65 = v42[4];
  v66 = OUTLINED_FUNCTION_188();
  __swift_project_boxed_opaque_existential_1(v66, v67);
  (*(v65 + 40))(v64, v65);
  v68 = (v39 + v54[10]);
  *v68 = v74;
  v68[1] = a21;
  v69 = (v39 + v54[11]);
  *v69 = a22;
  v69[1] = a23;
  if (!a24)
  {
    v53 = sub_1D85811B8();
  }

  *(v39 + v54[12]) = v53;
  sub_1D84EB1F4(a25, v39 + v54[13]);
  memcpy(v39 + v54[15], a26, 0x70uLL);
  *(v39 + v54[14]) = a27 & 1;
  v70 = v39 + v54[16];
  *v70 = a28;
  v70[8] = a29 & 1;
  v71 = v39 + v54[17];
  *v71 = a30;
  v71[8] = a31 & 1;
  *(v39 + v54[18]) = v75;
  *(v39 + v54[19]) = a33;
  *(v39 + v54[20]) = a34;
  *(v39 + v54[21]) = a35;
  *(v39 + v54[22]) = a36;
  *(v39 + v54[23]) = v56;
  *(v39 + v54[24]) = a38 & 1;
  *(v39 + v54[25]) = a39;
  sub_1D84EB32C();
  __swift_destroy_boxed_opaque_existential_1(v42);
  OUTLINED_FUNCTION_388();
}

void static GameActivityDefinition.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v4 = v3;
  v6 = v5;
  v7 = sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v11);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_129();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D90, &qword_1D859A998);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_160();
  v15 = *v6 == *v4 && v6[1] == v4[1];
  if (!v15 && (sub_1D8581AB8() & 1) == 0)
  {
    goto LABEL_62;
  }

  v16 = v6[3];
  v17 = v4[3];
  if (v16)
  {
    if (!v17)
    {
      goto LABEL_62;
    }

    v18 = v6[2] == v4[2] && v16 == v17;
    if (!v18 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v17)
  {
    goto LABEL_62;
  }

  v19 = v6[5];
  v20 = v4[5];
  if (v19)
  {
    if (!v20)
    {
      goto LABEL_62;
    }

    v21 = v6[4] == v4[4] && v19 == v20;
    if (!v21 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v20)
  {
    goto LABEL_62;
  }

  v22 = v6[6] == v4[6] && v6[7] == v4[7];
  if (!v22 && (sub_1D8581AB8() & 1) == 0)
  {
    goto LABEL_62;
  }

  v23 = type metadata accessor for GameActivityDefinition(0);
  if ((sub_1D8580D58() & 1) == 0)
  {
    goto LABEL_62;
  }

  v24 = OUTLINED_FUNCTION_211_0();
  v28 = v24 == v27 && v25 == v26;
  if (!v28 && (sub_1D8581AB8() & 1) == 0)
  {
    goto LABEL_62;
  }

  v29 = OUTLINED_FUNCTION_211_0();
  v33 = v29 == v32 && v30 == v31;
  if (!v33 && (sub_1D8581AB8() & 1) == 0)
  {
    goto LABEL_62;
  }

  v34 = v23[11];
  v35 = (v6 + v34);
  v36 = *(v6 + v34 + 8);
  v37 = (v4 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (!v38)
    {
      goto LABEL_62;
    }

    v39 = *v35 == *v37 && v36 == v38;
    if (!v39 && (sub_1D8581AB8() & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  else if (v38)
  {
    goto LABEL_62;
  }

  v40 = OUTLINED_FUNCTION_359_0(v23[12]);
  if ((sub_1D84BAB00(v40, v41) & 1) == 0)
  {
    goto LABEL_62;
  }

  v42 = *(v13 + 48);
  sub_1D847C204();
  sub_1D847C204();
  OUTLINED_FUNCTION_55_0(v1);
  if (v15)
  {
    OUTLINED_FUNCTION_55_0(v1 + v42);
    if (v15)
    {
      sub_1D8436E18(v1, &qword_1ECA39D88, &qword_1D859A988);
      goto LABEL_61;
    }

LABEL_58:
    v44 = &qword_1ECA39D90;
    v45 = &qword_1D859A998;
    v46 = v1;
LABEL_59:
    sub_1D8436E18(v46, v44, v45);
    goto LABEL_62;
  }

  OUTLINED_FUNCTION_258();
  sub_1D847C204();
  OUTLINED_FUNCTION_55_0(v1 + v42);
  if (v43)
  {
    (*(v9 + 8))(v2, v7);
    goto LABEL_58;
  }

  (*(v9 + 32))(v0, v1 + v42, v7);
  OUTLINED_FUNCTION_3_4();
  sub_1D84C49BC(v47);
  OUTLINED_FUNCTION_236_1();
  v76 = sub_1D8581208();
  v48 = *(v9 + 8);
  v49 = OUTLINED_FUNCTION_495();
  v48(v49);
  (v48)(v2, v7);
  sub_1D8436E18(v1, &qword_1ECA39D88, &qword_1D859A988);
  if ((v76 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_61:
  if (*(v6 + v23[14]) != *(v4 + v23[14]))
  {
    goto LABEL_62;
  }

  v50 = v6 + v23[15];
  memcpy(v85, v50, sizeof(v85));
  v51 = v4 + v23[15];
  memcpy(v86, v51, sizeof(v86));
  v52 = v85[0];
  v53 = v85[1];
  memcpy(v84, v50 + 16, sizeof(v84));
  v55 = v86[0];
  v54 = v86[1];
  memcpy(v83, v51 + 16, sizeof(v83));
  if (v85[1])
  {
    v81[0] = v85[0];
    v81[1] = v85[1];
    OUTLINED_FUNCTION_440_0(v81);
    memcpy(v80, v81, sizeof(v80));
    if (v54)
    {
      memcpy(&v79[2], v51 + 16, 0x60uLL);
      v79[0] = v55;
      v79[1] = v54;
      OUTLINED_FUNCTION_439_0();
      OUTLINED_FUNCTION_439_0();
      OUTLINED_FUNCTION_439_0();
      sub_1D847B878();
      v56 = sub_1D8581208();
      memcpy(v77, v79, sizeof(v77));
      sub_1D847B824(v77);
      memcpy(v78, v80, sizeof(v78));
      sub_1D847B824(v78);
      v79[0] = v52;
      v79[1] = v53;
      memcpy(&v79[2], v84, 0x60uLL);
      OUTLINED_FUNCTION_269_1();
      sub_1D8436E18(v57, v58, v59);
      if ((v56 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_72;
    }

    memcpy(v79, v81, sizeof(v79));
    OUTLINED_FUNCTION_287_0();
    sub_1D847C204();
    OUTLINED_FUNCTION_287_0();
    sub_1D847C204();
    OUTLINED_FUNCTION_287_0();
    sub_1D847C204();
    sub_1D847B824(v79);
    goto LABEL_70;
  }

  if (v86[1])
  {
    OUTLINED_FUNCTION_287_0();
    sub_1D847C204();
    OUTLINED_FUNCTION_287_0();
    sub_1D847C204();
LABEL_70:
    v81[0] = v52;
    v81[1] = v53;
    memcpy(&v81[2], v84, 0x60uLL);
    v81[14] = v55;
    v81[15] = v54;
    memcpy(v82, v83, sizeof(v82));
    v44 = &qword_1ECA39210;
    v45 = &qword_1D859A9A0;
    v46 = v81;
    goto LABEL_59;
  }

  v81[0] = v85[0];
  v81[1] = 0;
  OUTLINED_FUNCTION_440_0(v81);
  sub_1D847C204();
  sub_1D847C204();
  sub_1D8436E18(v81, &qword_1ECA39200, &qword_1D859A990);
LABEL_72:
  OUTLINED_FUNCTION_489_0();
  if (v61)
  {
    if (!v60)
    {
      goto LABEL_62;
    }
  }

  else
  {
    OUTLINED_FUNCTION_485_0();
    if (v62)
    {
      goto LABEL_62;
    }
  }

  OUTLINED_FUNCTION_489_0();
  if (v64)
  {
    if (!v63)
    {
      goto LABEL_62;
    }
  }

  else
  {
    OUTLINED_FUNCTION_485_0();
    if (v65)
    {
      goto LABEL_62;
    }
  }

  if (sub_1D84C5B38(*(v6 + v23[18]), *(v4 + v23[18])))
  {
    v66 = OUTLINED_FUNCTION_359_0(v23[19]);
    if (sub_1D84C78BC(v66, v67))
    {
      v68 = OUTLINED_FUNCTION_359_0(v23[20]);
      if (sub_1D84C78BC(v68, v69))
      {
        v70 = OUTLINED_FUNCTION_359_0(v23[21]);
        if (sub_1D84C78BC(v70, v71))
        {
          v72 = OUTLINED_FUNCTION_359_0(v23[22]);
          if ((sub_1D84C78BC(v72, v73) & 1) != 0 && (sub_1D844AB18(*(v6 + v23[23]), *(v4 + v23[23])) & 1) != 0 && *(v6 + v23[24]) == *(v4 + v23[24]))
          {
            v74 = OUTLINED_FUNCTION_359_0(v23[25]);
            sub_1D84C78BC(v74, v75);
          }
        }
      }
    }
  }

LABEL_62:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D84D4364(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v25 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v3 + 56) + v11);
    v26 = v13 == 0;

    if (!v13)
    {
      return v13 == 0;
    }

    v16 = sub_1D84E7500(v14, v13);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      return v13 == 0;
    }

    v19 = 0xE700000000000000;
    v20 = 0x6E776F6E6B6E75;
    switch(*(*(a2 + 56) + v16))
    {
      case 1:
        v20 = 0x64657469766E69;
        break;
      case 2:
        v19 = 0xE600000000000000;
        v20 = 0x64656E696F6ALL;
        break;
      case 3:
        v19 = 0xE400000000000000;
        v20 = 1952867692;
        break;
      default:
        break;
    }

    v21 = 0xE700000000000000;
    v22 = 0x6E776F6E6B6E75;
    switch(v15)
    {
      case 1:
        v22 = 0x64657469766E69;
        break;
      case 2:
        v21 = 0xE600000000000000;
        v22 = 0x64656E696F6ALL;
        break;
      case 3:
        v21 = 0xE400000000000000;
        v22 = 1952867692;
        break;
      default:
        break;
    }

    if (v20 == v22 && v19 == v21)
    {
    }

    else
    {
      v24 = sub_1D8581AB8();

      result = v26;
      if ((v24 & 1) == 0)
      {
        return result;
      }
    }
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v25)
    {
      return 1;
    }

    v10 = *(v3 + 64 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84D45D4()
{
  OUTLINED_FUNCTION_395_0();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_7(25705, 0xE200000000000000) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = v4 == 0x644970756F7267 && v0 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_7(0x644970756F7267, 0xE700000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = v4 == 0x44495555637361 && v0 == 0xE700000000000000;
      if (v7 || (OUTLINED_FUNCTION_7(0x44495555637361, 0xE700000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = OUTLINED_FUNCTION_216_1();
        v9 = v3 && v0 == 0xE800000000000000;
        if (v9 || (OUTLINED_FUNCTION_7(v8, 0xE800000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v10 = OUTLINED_FUNCTION_195_1();
          v12 = v4 == v10 && v0 == v11;
          if (v12 || (OUTLINED_FUNCTION_7(v10, v11) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v13 = OUTLINED_FUNCTION_299_0();
            v15 = v14 + 252;
            v16 = v4 == v13 && v0 == v15;
            if (v16 || (OUTLINED_FUNCTION_7(v13, v15) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v17 = v4 == 0x656C746974 && v0 == 0xE500000000000000;
              if (v17 || (OUTLINED_FUNCTION_7(0x656C746974, 0xE500000000000000) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v18 = v4 == 0x736C6961746564 && v0 == 0xE700000000000000;
                if (v18 || (OUTLINED_FUNCTION_7(0x736C6961746564, 0xE700000000000000) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_385_0();
                  v20 = v3 && v19 == v0;
                  if (v20 || (OUTLINED_FUNCTION_94_0(17, v19) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v21 = OUTLINED_FUNCTION_461_0();
                    v23 = v4 == v21 && v0 == v22;
                    if (v23 || (OUTLINED_FUNCTION_7(v21, v22) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_385_0();
                      v25 = v3 && v24 == v0;
                      if (v25 || (OUTLINED_FUNCTION_94_0(17, v24) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v26 = v4 == 0x6B726F77747261 && v0 == 0xE700000000000000;
                        if (v26 || (OUTLINED_FUNCTION_7(0x6B726F77747261, 0xE700000000000000) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v27 = v4 == 0x6579616C5078616DLL && v0 == 0xEA00000000007372;
                          if (v27 || (OUTLINED_FUNCTION_7(0x6579616C5078616DLL, 0xEA00000000007372) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v28 = v4 == 0x6579616C506E696DLL && v0 == 0xEA00000000007372;
                            if (v28 || (OUTLINED_FUNCTION_7(0x6579616C506E696DLL, 0xEA00000000007372) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v29 = OUTLINED_FUNCTION_335_1();
                              v31 = v3 && v0 == v30;
                              if (v31 || (OUTLINED_FUNCTION_7(v29, 0xE900000000000065) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v32 = v4 == 0xD00000000000001ALL && 0x80000001D85866E0 == v0;
                                if (v32 || (OUTLINED_FUNCTION_7(0xD00000000000001ALL, 0x80000001D85866E0) & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v33 = v4 == 0xD000000000000025 && 0x80000001D8586700 == v0;
                                  if (v33 || (OUTLINED_FUNCTION_7(0xD000000000000025, 0x80000001D8586700) & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v34 = v4 == 0xD000000000000018 && 0x80000001D8586730 == v0;
                                    if (v34 || (OUTLINED_FUNCTION_7(0xD000000000000018, 0x80000001D8586730) & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v35 = v4 == 0xD000000000000023 && 0x80000001D8586750 == v0;
                                      if (v35 || (OUTLINED_FUNCTION_7(0xD000000000000023, 0x80000001D8586750) & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v36 = OUTLINED_FUNCTION_223();
                                        v38 = v4 == v36 && v0 == v37;
                                        if (v38 || (OUTLINED_FUNCTION_7(v36, v37) & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v39 = v4 == 0x6465766968637261 && v0 == 0xE800000000000000;
                                          if (v39 || (OUTLINED_FUNCTION_7(0x6465766968637261, 0xE800000000000000) & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else if (v4 == 0xD000000000000013 && 0x80000001D8586780 == v0)
                                          {

                                            return 21;
                                          }

                                          else
                                          {
                                            OUTLINED_FUNCTION_7(0xD000000000000013, 0x80000001D8586780);
                                            OUTLINED_FUNCTION_369();
                                            if (v4)
                                            {
                                              return 21;
                                            }

                                            else
                                            {
                                              return 22;
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
            }
          }
        }
      }
    }
  }
}

void sub_1D84D4AA0(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_445_0(0x4970756F7267);
      break;
    case 4:
      OUTLINED_FUNCTION_195_1();
      break;
    case 5:
      OUTLINED_FUNCTION_299_0();
      break;
    case 8:
    case 10:
      OUTLINED_FUNCTION_186_1();
      break;
    case 9:
      OUTLINED_FUNCTION_461_0();
      break;
    case 12:
    case 13:
      OUTLINED_FUNCTION_443_0();
      break;
    case 14:
      OUTLINED_FUNCTION_249_0();
      break;
    case 19:
      OUTLINED_FUNCTION_223();
      break;
    default:
      return;
  }
}

uint64_t sub_1D84D4CD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84D45D4();
  *a1 = result;
  return result;
}

uint64_t sub_1D84D4D04()
{
  sub_1D84EB264();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D4D3C()
{
  sub_1D84EB264();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityDefinition.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = v0;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DA0, &qword_1D859A9A8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D84EB264();
  sub_1D8581BB8();
  LOBYTE(v13[0]) = 0;
  OUTLINED_FUNCTION_89_0();
  sub_1D8581A08();
  if (!v1)
  {
    OUTLINED_FUNCTION_51_3(1);
    sub_1D8581998();
    OUTLINED_FUNCTION_51_3(2);
    sub_1D8581998();
    OUTLINED_FUNCTION_51_3(3);
    sub_1D8581A08();
    v10 = type metadata accessor for GameActivityDefinition(0);
    LOBYTE(v13[0]) = 4;
    sub_1D8580D78();
    OUTLINED_FUNCTION_3_4();
    sub_1D84C49BC(v6);
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A58();
    OUTLINED_FUNCTION_51_3(5);
    sub_1D8581A08();
    OUTLINED_FUNCTION_51_3(6);
    sub_1D8581A08();
    OUTLINED_FUNCTION_51_3(7);
    sub_1D8581998();
    v13[0] = *(v2 + v10[12]);
    v12[0] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    OUTLINED_FUNCTION_108_2(&unk_1ECA39AB0);
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A58();
    LOBYTE(v13[0]) = 9;
    OUTLINED_FUNCTION_163_0();
    sub_1D85819E8();
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A18();
    v7 = v10[15];
    memcpy(v13, (v2 + v7), sizeof(v13));
    memcpy(v12, (v2 + v7), sizeof(v12));
    sub_1D847C204();
    sub_1D847B920();
    OUTLINED_FUNCTION_163_0();
    sub_1D85819E8();
    memcpy(v11, v12, sizeof(v11));
    sub_1D8436E18(v11, &qword_1ECA39200, &qword_1D859A990);
    OUTLINED_FUNCTION_494_0(v2 + v10[16]);
    OUTLINED_FUNCTION_89_0();
    sub_1D85819C8();
    OUTLINED_FUNCTION_494_0(v2 + v10[17]);
    OUTLINED_FUNCTION_89_0();
    sub_1D85819C8();
    sub_1D84D7A5C();
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A58();
    OUTLINED_FUNCTION_408_0(v10[19]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
    OUTLINED_FUNCTION_103_1(&unk_1EE0E0040);
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_408_0(v10[20]);
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_408_0(v10[21]);
    OUTLINED_FUNCTION_78_1();
    OUTLINED_FUNCTION_408_0(v10[22]);
    OUTLINED_FUNCTION_78_1();
    sub_1D8466A84();
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A58();
    OUTLINED_FUNCTION_163_0();
    sub_1D8581A18();
    OUTLINED_FUNCTION_408_0(v10[25]);
    OUTLINED_FUNCTION_78_1();
  }

  v8 = OUTLINED_FUNCTION_228();
  v9(v8);
  OUTLINED_FUNCTION_284_0();
}

void GameActivityDefinition.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v0;
  v3 = sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  v35 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v8);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_129();
  sub_1D85812B8();
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_425_0();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_426_0();
  }

  if (*(v0 + 40))
  {
    OUTLINED_FUNCTION_425_0();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_426_0();
  }

  sub_1D85812B8();
  v10 = type metadata accessor for GameActivityDefinition(0);
  OUTLINED_FUNCTION_3_4();
  sub_1D84C49BC(v11);
  sub_1D85811E8();
  sub_1D85812B8();
  sub_1D85812B8();
  if (*(v0 + v10[11] + 8))
  {
    OUTLINED_FUNCTION_425_0();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_426_0();
  }

  v12 = OUTLINED_FUNCTION_358_0();
  sub_1D84BACE8(v12, v13);
  sub_1D847C204();
  v14 = OUTLINED_FUNCTION_307_1();
  OUTLINED_FUNCTION_501(v14, v15, v3);
  if (v16)
  {
    OUTLINED_FUNCTION_426_0();
  }

  else
  {
    OUTLINED_FUNCTION_492_0();
    v17(v35, v1, v3);
    OUTLINED_FUNCTION_425_0();
    sub_1D85811E8();
    (*(v5 + 8))(v35, v3);
  }

  sub_1D8581B78();
  v18 = (v0 + v10[15]);
  v19 = *v18;
  v20 = v18[1];
  memcpy(v40, v18 + 2, sizeof(v40));
  if (v20)
  {
    OUTLINED_FUNCTION_440_0(v36);
    v36[0] = v19;
    v36[1] = v20;
    OUTLINED_FUNCTION_425_0();
    v37[0] = v19;
    v37[1] = v20;
    memcpy(v38, v40, sizeof(v38));
    sub_1D847BC2C(v37, v39);
    sub_1D847BC88();
    sub_1D85811E8();
    memcpy(v39, v36, sizeof(v39));
    sub_1D847B824(v39);
  }

  else
  {
    OUTLINED_FUNCTION_426_0();
  }

  v21 = (v2 + v10[16]);
  if (*(v21 + 8) == 1)
  {
    OUTLINED_FUNCTION_426_0();
  }

  else
  {
    v22 = *v21;
    OUTLINED_FUNCTION_425_0();
    MEMORY[0x1DA7191F0](v22);
  }

  v23 = (v2 + v10[17]);
  if (*(v23 + 8) == 1)
  {
    OUTLINED_FUNCTION_426_0();
  }

  else
  {
    v24 = *v23;
    OUTLINED_FUNCTION_425_0();
    MEMORY[0x1DA7191F0](v24);
  }

  if (!*(v2 + v10[18]))
  {
    OUTLINED_FUNCTION_332_1();
  }

  sub_1D85812B8();

  v25 = OUTLINED_FUNCTION_358_0();
  sub_1D84E849C(v25, v26);
  v27 = OUTLINED_FUNCTION_358_0();
  sub_1D84E849C(v27, v28);
  v29 = OUTLINED_FUNCTION_358_0();
  sub_1D84E849C(v29, v30);
  v31 = OUTLINED_FUNCTION_358_0();
  sub_1D84E849C(v31, v32);
  v39[0] = *(v2 + v10[23]);
  sub_1D846779C();
  sub_1D85811E8();
  sub_1D8581B78();
  v33 = OUTLINED_FUNCTION_358_0();
  sub_1D84E849C(v33, v34);
  OUTLINED_FUNCTION_388();
}

void GameActivityDefinition.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v28);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_129();
  v67 = sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v66 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DA8, &qword_1D859A9B8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_199();
  v72 = type metadata accessor for GameActivityDefinition(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19_0();
  v73 = v34;
  v35 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v35, v36);
  sub_1D84EB264();
  OUTLINED_FUNCTION_419_0();
  sub_1D8581BA8();
  if (v23)
  {
    OUTLINED_FUNCTION_7_2();
    __swift_destroy_boxed_opaque_existential_1(v27);

    if (v68)
    {

      if ((v69 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v69)
    {
LABEL_5:
      if (v70)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }

    sub_1D8436E18(v73 + v72[13], &qword_1ECA39D88, &qword_1D859A988);
    if (v70)
    {
LABEL_6:
      memcpy(v75, v73 + v72[15], 0x70uLL);
      sub_1D8436E18(v75, &qword_1ECA39200, &qword_1D859A990);
      if ((a10 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

LABEL_11:
    if (!a10)
    {
LABEL_7:
      if (!v71)
      {
        goto LABEL_13;
      }

LABEL_8:

      goto LABEL_13;
    }

LABEL_12:

    if ((v71 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_175_1();
  *v73 = sub_1D8581908();
  v73[1] = v37;
  OUTLINED_FUNCTION_52_0(1);
  v73[2] = sub_1D8581898();
  v73[3] = v38;
  OUTLINED_FUNCTION_52_0(2);
  v73[4] = sub_1D8581898();
  v73[5] = v39;
  OUTLINED_FUNCTION_52_0(3);
  v73[6] = sub_1D8581908();
  v73[7] = v40;
  LOBYTE(v75[0]) = 4;
  OUTLINED_FUNCTION_3_4();
  sub_1D84C49BC(v41);
  OUTLINED_FUNCTION_175_1();
  sub_1D8581958();
  (*(v66 + 32))(v73 + v72[8], v24, v67);
  OUTLINED_FUNCTION_52_0(5);
  v42 = sub_1D8581908();
  OUTLINED_FUNCTION_472_0(v42, v43, v72[9]);
  OUTLINED_FUNCTION_52_0(6);
  v44 = sub_1D8581908();
  OUTLINED_FUNCTION_472_0(v44, v45, v72[10]);
  OUTLINED_FUNCTION_52_0(7);
  v46 = sub_1D8581898();
  OUTLINED_FUNCTION_472_0(v46, v47, v72[11]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
  OUTLINED_FUNCTION_104_2(&unk_1ECA39AD8, MEMORY[0x1E69E6190]);
  OUTLINED_FUNCTION_175_1();
  sub_1D8581958();
  *(v73 + v72[12]) = v75[0];
  LOBYTE(v75[0]) = 9;
  OUTLINED_FUNCTION_175_1();
  sub_1D85818E8();
  sub_1D84EB1F4(v25, v73 + v72[13]);
  LOBYTE(v75[0]) = 10;
  OUTLINED_FUNCTION_175_1();
  *(v73 + v72[14]) = sub_1D8581918() & 1;
  sub_1D847BCDC();
  OUTLINED_FUNCTION_175_1();
  sub_1D85818E8();
  memcpy(v73 + v72[15], v75, 0x70uLL);
  OUTLINED_FUNCTION_175_1();
  v48 = sub_1D85818C8();
  OUTLINED_FUNCTION_473_0(v48, v49, v72[16]);
  OUTLINED_FUNCTION_175_1();
  v50 = sub_1D85818C8();
  OUTLINED_FUNCTION_473_0(v50, v51, v72[17]);
  sub_1D84E8B94();
  OUTLINED_FUNCTION_175_1();
  sub_1D8581958();
  *(v73 + v72[18]) = 13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39CF0, &qword_1D85A4BA0);
  OUTLINED_FUNCTION_102_1(&unk_1EE0E0038);
  OUTLINED_FUNCTION_35_3();
  sub_1D8581958();
  OUTLINED_FUNCTION_470_0();
  *(v54 + *(v52 + 76)) = v53;
  OUTLINED_FUNCTION_35_3();
  sub_1D8581958();
  OUTLINED_FUNCTION_470_0();
  *(v57 + *(v55 + 80)) = v56;
  OUTLINED_FUNCTION_35_3();
  sub_1D8581958();
  OUTLINED_FUNCTION_470_0();
  *(v60 + *(v58 + 84)) = v59;
  OUTLINED_FUNCTION_35_3();
  sub_1D8581958();
  OUTLINED_FUNCTION_470_0();
  *(v63 + *(v61 + 88)) = v62;
  sub_1D847387C();
  sub_1D8581958();
  *(v73 + v72[23]) = 13;
  LOBYTE(v74) = 20;
  *(v73 + v72[24]) = sub_1D8581918() & 1;
  OUTLINED_FUNCTION_35_3();
  sub_1D8581958();
  v64 = OUTLINED_FUNCTION_105_1();
  v65(v64);
  *(v73 + v72[25]) = v74;
  OUTLINED_FUNCTION_344_1();
  sub_1D84EA648();
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_1D84EB2B8();
LABEL_13:
  OUTLINED_FUNCTION_284_0();
}

GameServices::GameActivityParticipantState_optional __swiftcall GameActivityParticipantState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  sub_1D8581868();
  result.value = OUTLINED_FUNCTION_467_0();
  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t GameActivityParticipantState.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = OUTLINED_FUNCTION_445_0(0x657469766E69);
      break;
    case 2:
      result = 0x64656E696F6ALL;
      break;
    case 3:
      result = 1952867692;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84D6418@<X0>(uint64_t *a1@<X8>)
{
  result = GameActivityParticipantState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84D644C()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0A50();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84D6494()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F0A50();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

void static GameActivityRuntimeStat.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  type metadata accessor for AchievementProgress(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  type metadata accessor for GameActivityRuntimeStat(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_315();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_212_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DB0, &qword_1D859A9C0);
  OUTLINED_FUNCTION_363(v4);
  OUTLINED_FUNCTION_152();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - v7;
  v9 = v18 + *(v6 + 56) - v7;
  sub_1D84EA648();
  OUTLINED_FUNCTION_236_1();
  sub_1D84EA648();
  OUTLINED_FUNCTION_344_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_7_0();
    sub_1D84EA648();
    OUTLINED_FUNCTION_233();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_239_0();
      sub_1D84EB32C();
      OUTLINED_FUNCTION_29_1();
      sub_1D84C49BC(v10);
      OUTLINED_FUNCTION_183();
      sub_1D8581208();
      sub_1D84EB2B8();
      OUTLINED_FUNCTION_368();
      sub_1D84EB2B8();
LABEL_9:
      sub_1D84EB2B8();
      goto LABEL_10;
    }

    OUTLINED_FUNCTION_79_1();
    sub_1D84EB2B8();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();
    sub_1D84EA648();
    v11 = v0[1];
    v12 = v0[5];
    OUTLINED_FUNCTION_233();
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v13 = v0[4];
      v14 = *v9;
      v15 = *(v9 + 1);
      v16 = *(v9 + 4);
      v17 = *(v9 + 5);
      v22 = *v0;
      v23 = v11;
      v24 = *(v0 + 1);
      v25 = v13;
      v26 = v12;
      v18[0] = v14;
      v18[1] = v15;
      v19 = *(v9 + 1);
      v20 = v16;
      v21 = v17;
      sub_1D84BB658();
      sub_1D8581208();

      goto LABEL_9;
    }
  }

  sub_1D8436E18(v8, &qword_1ECA39DB0, &qword_1D859A9C0);
LABEL_10:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D84D6828(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73736572676F7270 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0(0x73736572676F7270, 0xE800000000000000, a1);
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84D6890(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_184_0();
  v6 = v3 == v5 && v4 == a2;
  if (v6 || (v7 = v3, (OUTLINED_FUNCTION_70_0() & 1) != 0))
  {

    return 0;
  }

  else if (v7 == 0x6D65766569686361 && a2 == 0xEB00000000746E65)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_7(0x6D65766569686361, 0xEB00000000746E65);
    OUTLINED_FUNCTION_369();
    OUTLINED_FUNCTION_364();
    if (v6)
    {
      return v10 + 1;
    }

    else
    {
      return v10;
    }
  }
}

uint64_t sub_1D84D6934(char a1)
{
  if (a1)
  {
    return 0x6D65766569686361;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D84D6978(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0(0x65726F6373, 0xE500000000000000, a1);
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84D6A1C()
{
  sub_1D84EB3D8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D6A54()
{
  sub_1D84EB3D8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84D6A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D84D6890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84D6ABC()
{
  sub_1D84EB384();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D6AF4()
{
  sub_1D84EB384();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84D6B68()
{
  sub_1D84EB42C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D6BA0()
{
  sub_1D84EB42C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityRuntimeStat.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DC0, &qword_1D859A9C8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_196();
  v2 = OUTLINED_FUNCTION_5_0();
  type metadata accessor for AchievementProgress(v2);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_19_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DC8, &qword_1D859A9D0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for GameActivityRuntimeStat(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DD0, &qword_1D859A9D8);
  OUTLINED_FUNCTION_1();
  v8 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_129();
  v10 = OUTLINED_FUNCTION_368_0();
  OUTLINED_FUNCTION_260(v10, v11);
  sub_1D84EB384();
  OUTLINED_FUNCTION_494();
  sub_1D8581BB8();
  OUTLINED_FUNCTION_30_2();
  sub_1D84EA648();
  OUTLINED_FUNCTION_331_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D84EB32C();
    sub_1D84EB3D8();
    OUTLINED_FUNCTION_243_1();
    sub_1D8581988();
    OUTLINED_FUNCTION_29_1();
    sub_1D84C49BC(v12);
    sub_1D8581A58();
    v13 = OUTLINED_FUNCTION_291();
    v14(v13);
    OUTLINED_FUNCTION_79_1();
    sub_1D84EB2B8();
    (*(v8 + 8))(v0, v6);
  }

  else
  {
    sub_1D84EB42C();
    OUTLINED_FUNCTION_243_1();
    sub_1D8581988();
    sub_1D84EB480();
    sub_1D8581A58();
    v15 = OUTLINED_FUNCTION_7_0();
    v16(v15);
    (*(v8 + 8))(v0, v6);
  }

  OUTLINED_FUNCTION_342_1();
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameActivityRuntimeStat.hash(into:)()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for AchievementProgress(v0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_309();
  type metadata accessor for GameActivityRuntimeStat(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_30_2();
  sub_1D84EA648();
  OUTLINED_FUNCTION_368_0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_239_0();
    sub_1D84EB32C();
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_29_1();
    sub_1D84C49BC(v3);
    sub_1D85811E8();
    OUTLINED_FUNCTION_79_1();
    return sub_1D84EB2B8();
  }

  else
  {
    OUTLINED_FUNCTION_429();
    sub_1D84EB4D4();
    sub_1D85811E8();
  }
}

void GameActivityRuntimeStat.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DF0, &qword_1D859A9E0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39DF8, &qword_1D859A9E8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_196();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E00, &qword_1D859A9F0);
  OUTLINED_FUNCTION_1();
  v47 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_200();
  v9 = type metadata accessor for GameActivityRuntimeStat(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_292();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_392_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_212_2();
  v13 = OUTLINED_FUNCTION_236_1();
  OUTLINED_FUNCTION_260(v13, v14);
  sub_1D84EB384();
  sub_1D8581BA8();
  if (!v1)
  {
    v46 = v9;
    v54 = v4;
    v15 = sub_1D8581968();
    sub_1D8440880(v15, 0);
    v17 = v16;
    if (v19 != v18 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v24 == v25)
      {
        __break(1u);
        return;
      }

      v45 = *(v23 + v21);
      sub_1D84408DC(v21 + 1, v20, v17, v23, v21, v22);
      v27 = v26;
      v29 = v28;
      swift_unknownObjectRelease();
      if (v27 == v29 >> 1)
      {
        if (v45)
        {
          sub_1D84EB3D8();
          OUTLINED_FUNCTION_259_1();
          sub_1D8581878();
          type metadata accessor for AchievementProgress(0);
          OUTLINED_FUNCTION_29_1();
          sub_1D84C49BC(v30);
          sub_1D8581958();
          swift_unknownObjectRelease();
          v39 = OUTLINED_FUNCTION_241_0();
          v40(v39);
          (*(v47 + 8))(v2, v48);
        }

        else
        {
          LOBYTE(v49) = 0;
          sub_1D84EB42C();
          OUTLINED_FUNCTION_259_1();
          sub_1D8581878();
          sub_1D84EB528();
          OUTLINED_FUNCTION_243_1();
          sub_1D8581958();
          swift_unknownObjectRelease();
          v41 = OUTLINED_FUNCTION_110_2();
          v42(v41);
          v43 = OUTLINED_FUNCTION_270_1();
          v44(v43);
          *v0 = v49;
          *(v0 + 8) = v50;
          *(v0 + 16) = v51;
          *(v0 + 32) = v52;
          *(v0 + 40) = v53;
        }

        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_81_1();
        sub_1D84EB32C();
        OUTLINED_FUNCTION_81_1();
        OUTLINED_FUNCTION_7_0();
        sub_1D84EB32C();
        v38 = v54;
        goto LABEL_10;
      }
    }

    v31 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v31, MEMORY[0x1E69E6B28]);
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v33 = v46;
    v34 = sub_1D8581888();
    OUTLINED_FUNCTION_186(v34);
    OUTLINED_FUNCTION_206_0();
    (*(v35 + 104))(v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    v36 = OUTLINED_FUNCTION_270_1();
    v37(v36);
    v4 = v54;
  }

  v38 = v4;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v38);
  OUTLINED_FUNCTION_284_0();
}

uint64_t static GameActivityStaticStat.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_6;
    }
  }

  else if ((*(a2 + 16) & 1) == 0)
  {
LABEL_6:
    OUTLINED_FUNCTION_183();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_151();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_151();
    sub_1D84C55F4();
    OUTLINED_FUNCTION_183();
    sub_1D84C55F4();
    v5 = OUTLINED_FUNCTION_151();
    v4 = sub_1D844A4B0(v5, v6, v3, v2, v7, v8);
    OUTLINED_FUNCTION_151();
    sub_1D84C5620();
    OUTLINED_FUNCTION_183();
    sub_1D84C5620();
    OUTLINED_FUNCTION_183();
    sub_1D84C5620();
    OUTLINED_FUNCTION_151();
    sub_1D84C5620();
    return v4 & 1;
  }

  OUTLINED_FUNCTION_151();
  sub_1D84C55F4();
  OUTLINED_FUNCTION_183();
  sub_1D84C55F4();
  OUTLINED_FUNCTION_151();
  sub_1D84C5620();
  OUTLINED_FUNCTION_183();
  sub_1D84C5620();
  v4 = 0;
  return v4 & 1;
}

unint64_t sub_1D84D790C()
{
  result = qword_1ECA47140;
  if (!qword_1ECA47140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47140);
  }

  return result;
}

unint64_t sub_1D84D7960()
{
  result = qword_1ECA47148;
  if (!qword_1ECA47148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47148);
  }

  return result;
}

unint64_t sub_1D84D79B4()
{
  result = qword_1ECA47150;
  if (!qword_1ECA47150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47150);
  }

  return result;
}

unint64_t sub_1D84D7A08()
{
  result = qword_1ECA47158;
  if (!qword_1ECA47158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47158);
  }

  return result;
}

unint64_t sub_1D84D7A5C()
{
  result = qword_1ECA39C50;
  if (!qword_1ECA39C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39C50);
  }

  return result;
}

unint64_t sub_1D84D7AB0()
{
  result = qword_1ECA47160;
  if (!qword_1ECA47160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47160);
  }

  return result;
}

unint64_t sub_1D84D7B04()
{
  result = qword_1ECA47168;
  if (!qword_1ECA47168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47168);
  }

  return result;
}

unint64_t sub_1D84D7B58()
{
  result = qword_1ECA47170;
  if (!qword_1ECA47170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47170);
  }

  return result;
}

unint64_t sub_1D84D7BAC()
{
  result = qword_1ECA39C58;
  if (!qword_1ECA39C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39C58);
  }

  return result;
}

uint64_t sub_1D84D7C00()
{
  OUTLINED_FUNCTION_263_0();
  v2 = v1 == 0x6F6272656461656CLL && v0 == 0xEB00000000647261;
  if (v2 || (OUTLINED_FUNCTION_7(0x6F6272656461656CLL, 0xEB00000000647261) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    if (v1 == v5 && v4 == v0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_94_0(22, v4);
      OUTLINED_FUNCTION_369();
      OUTLINED_FUNCTION_364();
      if (v2)
      {
        return v7 + 1;
      }

      else
      {
        return v7;
      }
    }
  }
}

uint64_t sub_1D84D7CA4(char a1)
{
  if (a1)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_1D84D7CE8(uint64_t a1, uint64_t a2)
{
  if (a1 == 6710642 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_333_0(6710642, 0xE300000000000000, a1);
    OUTLINED_FUNCTION_369();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D84D7D50(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  MEMORY[0x1DA7191F0](0);
  return sub_1D8581B98();
}

uint64_t sub_1D84D7D8C()
{
  sub_1D84EB5D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D7DC4()
{
  sub_1D84EB5D0();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84D7E04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84D7C00();
  *a1 = result;
  return result;
}

uint64_t sub_1D84D7E2C()
{
  sub_1D84EB57C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D7E64()
{
  sub_1D84EB57C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84D7E9C(uint64_t a1)
{
  sub_1D8581B58();
  MEMORY[0x1DA7191F0](0);
  return sub_1D8581B98();
}

uint64_t sub_1D84D7EDC()
{
  sub_1D84EB624();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84D7F14()
{
  sub_1D84EB624();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityStaticStat.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E10, &qword_1D859A9F8);
  OUTLINED_FUNCTION_1();
  v25 = v5;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E18, &qword_1D859AA00);
  OUTLINED_FUNCTION_1();
  v23 = v8;
  v24 = v7;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_250_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E20, &qword_1D859AA08);
  OUTLINED_FUNCTION_1();
  v11 = v10;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_200();
  v26 = *v0;
  v27 = v0[1];
  v13 = *(v0 + 16);
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D84EB57C();
  sub_1D8581BB8();
  if (v13)
  {
    LOBYTE(v28) = 1;
    sub_1D84EB5D0();
    OUTLINED_FUNCTION_519_0(&type metadata for GameActivityStaticStat.AchievementDescriptionCodingKeys, &v28);
    v28 = v26;
    v29 = v27;
    v14 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D848211C(v16);
    OUTLINED_FUNCTION_256_2();
    sub_1D8581A58();
    v17 = OUTLINED_FUNCTION_275();
    v19 = v25;
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_1D84EB624();
    OUTLINED_FUNCTION_519_0(&type metadata for GameActivityStaticStat.LeaderboardCodingKeys, &v28);
    v28 = v26;
    v29 = v27;
    v20 = OUTLINED_FUNCTION_194();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_231();
    sub_1D848211C(v22);
    sub_1D8581A58();
    v18 = *(v23 + 8);
    v17 = v2;
    v19 = v24;
  }

  v18(v17, v19);
  (*(v11 + 8))(v1, v13);
  OUTLINED_FUNCTION_435();
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameActivityStaticStat.hash(into:)()
{
  if (*(v0 + 16))
  {
    OUTLINED_FUNCTION_447();
  }

  else
  {
    OUTLINED_FUNCTION_429();
  }

  v1 = OUTLINED_FUNCTION_253();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_235_0();
  sub_1D848211C(v3);
  OUTLINED_FUNCTION_293_1();
  return sub_1D85811E8();
}

uint64_t GameActivityStaticStat.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1D8581B58();
  if (v1)
  {
    MEMORY[0x1DA7191F0](1);
  }

  else
  {
    MEMORY[0x1DA7191F0](0);
  }

  v2 = OUTLINED_FUNCTION_194();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_231();
  v5 = sub_1D848211C(v4);
  OUTLINED_FUNCTION_525_0(v5, v6, v7, v8);
  return sub_1D8581B98();
}

void GameActivityStaticStat.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v3 = v2;
  v48 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E30, &qword_1D859AA10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_200();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E38, &qword_1D859AA18);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E40, &unk_1D859AA20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_128();
  OUTLINED_FUNCTION_260(v3, v3[3]);
  sub_1D84EB57C();
  sub_1D8581BA8();
  if (!v0)
  {
    v47 = v1;
    v51 = v3;
    v9 = sub_1D8581968();
    sub_1D8440880(v9, 0);
    v11 = v10;
    if (v13 != v12 >> 1)
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v18 == v19)
      {
        __break(1u);
        return;
      }

      v20 = *(v17 + v15);
      sub_1D84408DC(v15 + 1, v14, v11, v17, v15, v16);
      v22 = v21;
      v24 = v23;
      swift_unknownObjectRelease();
      if (v22 == v24 >> 1)
      {
        if (v20)
        {
          LOBYTE(v49) = 1;
          sub_1D84EB5D0();
          OUTLINED_FUNCTION_263_1();
          sub_1D8581878();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39C60, &unk_1D859A7E0);
          OUTLINED_FUNCTION_3();
          sub_1D848211C(v33);
          sub_1D8581958();
          swift_unknownObjectRelease();
          v37 = OUTLINED_FUNCTION_331_1();
          v38(v37);
          v39 = OUTLINED_FUNCTION_241_0();
          v40(v39);
          v41 = v49;
          v42 = v50;
          v43 = v48;
        }

        else
        {
          v43 = v48;
          LOBYTE(v49) = 0;
          sub_1D84EB624();
          OUTLINED_FUNCTION_263_1();
          sub_1D8581878();
          v34 = OUTLINED_FUNCTION_151();
          __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
          OUTLINED_FUNCTION_3();
          sub_1D848211C(v36);
          sub_1D8581958();
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_375_0();
          v44(v47, v6);
          v45 = OUTLINED_FUNCTION_166_1();
          v46(v45);
          v41 = v49;
          v42 = v50;
        }

        *v43 = v41;
        *(v43 + 8) = v42;
        *(v43 + 16) = v20;
        v32 = v51;
        goto LABEL_10;
      }
    }

    v25 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v25, MEMORY[0x1E69E6B28]);
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v27 = &type metadata for GameActivityStaticStat;
    v28 = sub_1D8581888();
    OUTLINED_FUNCTION_186(v28);
    OUTLINED_FUNCTION_206_0();
    (*(v29 + 104))(v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    v30 = OUTLINED_FUNCTION_166_1();
    v31(v30);
    v3 = v51;
  }

  v32 = v3;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v32);
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84D8950()
{
  OUTLINED_FUNCTION_109_0();
  v0 = sub_1D8581B58();
  OUTLINED_FUNCTION_497_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10);
  GameActivityStaticStat.hash(into:)();
  return sub_1D8581B98();
}

GameServices::GameActivityState_optional __swiftcall GameActivityState.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_416();
  sub_1D8581868();
  result.value = OUTLINED_FUNCTION_467_0();
  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t GameActivityState.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1701602409;
      break;
    case 2:
      result = 0x657669746361;
      break;
    case 3:
      result = OUTLINED_FUNCTION_379_0();
      break;
    case 4:
      result = 0x6465646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84D8A68@<X0>(uint64_t *a1@<X8>)
{
  result = GameActivityState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84D8A9C()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F09FC();
  OUTLINED_FUNCTION_102();
  return sub_1D8581438();
}

uint64_t sub_1D84D8AE4()
{
  OUTLINED_FUNCTION_99();
  sub_1D84F09FC();
  OUTLINED_FUNCTION_102();
  return sub_1D85813E8();
}

Swift::Bool __swiftcall GameActivityConsumptionState.canTransition(to:)(GameServices::GameActivityConsumptionState to)
{
  v2 = *to;
  v3 = sub_1D84D8C08(*v1, &unk_1F5392C08);
  if (v4)
  {
    return 0;
  }

  v6 = sub_1D84D8C08(v2, &unk_1F5392C08) >= v3;
  return (v7 & 1) == 0 && v6;
}

uint64_t sub_1D84D8C08(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (1)
  {
    v6 = 0xE800000000000000;
    v7 = 0x6465766965636572;
    switch(*(v5 + v4))
    {
      case 1:
        v6 = 0xE700000000000000;
        v7 = 0x676E69646E6570;
        break;
      case 2:
        v7 = 0x65726576696C6564;
        goto LABEL_7;
      case 3:
        v7 = 0x65737365636F7270;
LABEL_7:
        v6 = 0xE900000000000064;
        break;
      default:
        break;
    }

    v8 = 0xE800000000000000;
    v9 = 0x6465766965636572;
    switch(a1)
    {
      case 1:
        v8 = 0xE700000000000000;
        v9 = 0x676E69646E6570;
        break;
      case 2:
        v9 = 0x65726576696C6564;
        goto LABEL_12;
      case 3:
        v9 = 0x65737365636F7270;
LABEL_12:
        v8 = 0xE900000000000064;
        break;
      default:
        break;
    }

    if (v7 == v9 && v6 == v8)
    {
      break;
    }

    v11 = sub_1D8581AB8();

    if (v11)
    {
      return v4;
    }

    if (v2 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t GameActivityInstance.properties.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t GameActivityInstance.creationDate.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  type metadata accessor for GameActivityInstance(v0);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v1 = OUTLINED_FUNCTION_394_0();

  return v2(v1);
}

uint64_t GameActivityInstance.creationDate.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for GameActivityInstance(v2) + 36);
  sub_1D8580EA8();
  OUTLINED_FUNCTION_4_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t GameActivityInstance.creationDate.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.startDate.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance(v0);
  OUTLINED_FUNCTION_400(*(v1 + 40));
  return sub_1D847C204();
}

uint64_t GameActivityInstance.startDate.setter()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_528();
}

uint64_t GameActivityInstance.startDate.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t sub_1D84D90C8()
{
  OUTLINED_FUNCTION_393_0();
  sub_1D8580EA8();
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t GameActivityInstance.lastResumeDate.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance(v0);
  OUTLINED_FUNCTION_400(*(v1 + 44));
  return sub_1D847C204();
}

uint64_t GameActivityInstance.lastResumeDate.setter()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_528();
}

uint64_t GameActivityInstance.lastResumeDate.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.endDate.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance(v0);
  OUTLINED_FUNCTION_400(*(v1 + 48));
  return sub_1D847C204();
}

uint64_t GameActivityInstance.endDate.setter()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_528();
}

uint64_t GameActivityInstance.endDate.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.duration.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  result = type metadata accessor for GameActivityInstance(v3);
  v5 = (v1 + *(result + 52));
  *v5 = v2;
  v5[1] = v0;
  return result;
}

uint64_t GameActivityInstance.duration.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.shortGroupID.getter()
{
  type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.shortGroupID.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  type metadata accessor for GameActivityInstance(v3);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.shortGroupID.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_106();
}

void sub_1D84D93C8()
{
  OUTLINED_FUNCTION_285();
  LODWORD(v203) = v4;
  v207 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E50, &unk_1D859AA30);
  OUTLINED_FUNCTION_363(v6);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_66_0(v8);
  v202 = sub_1D8580C68();
  OUTLINED_FUNCTION_1();
  v200 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v12);
  v13 = sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v205 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_283();
  v16 = sub_1D8580B88();
  OUTLINED_FUNCTION_1();
  v204 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_392_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v187 - v20;
  v23 = *(v1 + 16);
  v22 = *(v1 + 24);
  v210 = v23;
  v211 = v22;
  Ref<A>.game.getter(&v208);
  if (!v2)
  {
    v212 = v13;
    v32 = v209;
    v210 = v208;
    v211 = v209;
    Ref<A>.bundleID.getter(v24, v25, v26, v27, v28, v29, v30, v31, v187, v188, v189, v190, v191, v3, v16, v21, v0, v22, v23, v1, v199, v200);
    v34 = v33;
    v36 = v35;

    v37 = OUTLINED_FUNCTION_422_0();
    v38 = v198;
    v39 = (v198 + *(v37 + 72));
    v41 = *v39;
    v40 = v39[1];
    v210 = v41;
    v211 = v40;
    Ref<A>.internalID.getter(v37, v42, v43, v44, v45, v46, v47, v48);
    v50 = v49;
    v51 = v197;
    v52 = v196;
    v210 = v197;
    v211 = v196;
    Ref<A>.language.getter(v49, v53, v54, v55, v56, v57, v58, v59, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200);
    v210 = v51;
    v211 = v52;
    Ref<A>.id.getter(v60, v61, v62, v63, v64, v65, v66, v67, v187, v188, v60, v61, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200);
    v191 = 0;
    OUTLINED_FUNCTION_343_1();
    v188 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0E8, &unk_1D85A2270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D859A760;
    v69 = sub_1D8577980();
    v71 = *v69;
    v70 = v69[1];
    *(inited + 32) = v71;
    *(inited + 40) = v70;
    *(inited + 48) = &v210;
    *(inited + 56) = v51;

    v72 = sub_1D85779BC();
    v74 = *v72;
    v73 = v72[1];
    *(inited + 64) = v74;
    *(inited + 72) = v73;
    *(inited + 80) = v34;
    *(inited + 88) = v36;

    v75 = sub_1D85779F8();
    v77 = *v75;
    v76 = v75[1];
    *(inited + 96) = v77;
    *(inited + 104) = v76;
    v78 = v190;
    *(inited + 112) = v189;
    *(inited + 120) = v78;

    v79 = sub_1D85811B8();
    v80 = v203;
    if ((v203 & 1) == 0)
    {

      OUTLINED_FUNCTION_478_0();
LABEL_8:
      v94 = v188;
      v95 = *(v38 + *(v188 + 80) + 16);
      if (v95 != 255)
      {
        v193 = v79;
        LODWORD(v190) = v95;
        OUTLINED_FUNCTION_418_0();
        if (v96)
        {
          sub_1D84C55F4();
          v97 = sub_1D85779A8();
          OUTLINED_FUNCTION_446_0(v97);
          v98 = sub_1D8577A20();
          v100 = *v98;
          v99 = v98[1];
          v210 = v100;
          v211 = v99;

          v101 = *sub_1D8577A0C();

          v102 = OUTLINED_FUNCTION_166();
          MEMORY[0x1DA718990](v102);

          OUTLINED_FUNCTION_363_0();
          v104 = Ref<A>.id.getter(v103);
        }

        else
        {
          sub_1D84C55F4();
          v106 = sub_1D85779A8();
          OUTLINED_FUNCTION_446_0(v106);
          v107 = sub_1D8577A3C();
          v109 = *v107;
          v108 = v107[1];
          v210 = v109;
          v211 = v108;

          v101 = *sub_1D8577A0C();

          v110 = OUTLINED_FUNCTION_166();
          MEMORY[0x1DA718990](v110);

          OUTLINED_FUNCTION_363_0();
          v104 = Ref<A>.id.getter(v111);
        }

        v191 = v101;
        if (v101)
        {

          v112 = OUTLINED_FUNCTION_331_1();
          sub_1D84EB9AC(v112, v113, v190);
LABEL_50:

          goto LABEL_3;
        }

        v114 = v104;
        v115 = v105;
        v116 = OUTLINED_FUNCTION_331_1();
        sub_1D84EB9AC(v116, v117, v190);
        MEMORY[0x1DA718990](v114, v115);

        v118 = v210;
        v119 = v211;
        v120 = v193;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v210 = v120;
        sub_1D84E81D4(v118, v119, v187, v189, isUniquelyReferenced_nonNull_native);

        v79 = v210;
        v94 = v188;
      }

      if (v80)
      {
        v122 = sub_1D85779D0();
        v123 = *v122;
        v124 = v122[1];
        v125 = (v38 + *(v94 + 56));
        v127 = *v125;
        v126 = v125[1];

        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_386_0();
        sub_1D84E81D4(v127, v126, v123, v124, v128);

        v79 = v210;
      }

      v129 = v206;

      v131 = sub_1D84D9F80(v130);

      v132 = *(v131 + 2);
      v193 = v79;
      v190 = v131;
      if (v132)
      {
        v203 = (v50 + 32);
        v133 = (v131 + 40);
        v134 = MEMORY[0x1E69E7CC0];
        do
        {
          if (*(v79 + 16))
          {
            v135 = *(v133 - 1);
            v136 = *v133;

            sub_1D8436A4C(v135, v136);
            if (v137)
            {

              sub_1D8580B48();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_197_1();
                v134 = sub_1D8439370(v140, v141, v142, v143);
              }

              v129 = v206;
              v139 = *(v134 + 2);
              v138 = *(v134 + 3);
              if (v139 >= v138 >> 1)
              {
                OUTLINED_FUNCTION_337_0(v138);
                OUTLINED_FUNCTION_197_1();
                v134 = sub_1D8439370(v144, v145, v146, v147);
              }

              *(v134 + 2) = v139 + 1;
              (*(v50 + 32))(&v134[((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v139]);
              v79 = v193;
            }

            else
            {

              v129 = v206;
            }
          }

          v133 += 2;
          --v132;
        }

        while (v132);
      }

      else
      {
        v134 = MEMORY[0x1E69E7CC0];
      }

      v150 = v38[4];

      v152 = sub_1D84D9F80(v151);

      v153 = *(v152 + 2);
      v203 = v152;
      if (v153)
      {
        v154 = (v152 + 40);
        v155 = v205;
        do
        {
          if (*(v150 + 16))
          {
            v156 = *(v154 - 1);
            v157 = *v154;

            sub_1D8436A4C(v156, v157);
            if (v158)
            {

              sub_1D8580B48();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_197_1();
                v134 = sub_1D8439370(v164, v165, v166, v167);
              }

              v160 = *(v134 + 2);
              v159 = *(v134 + 3);
              v129 = v206;
              if (v160 >= v159 >> 1)
              {
                OUTLINED_FUNCTION_337_0(v159);
                OUTLINED_FUNCTION_197_1();
                v134 = sub_1D8439370(v168, v169, v170, v171);
              }

              *(v134 + 2) = v160 + 1;
              OUTLINED_FUNCTION_490_0();
              (*(v163 + 32))(&v134[(v162 & ~v161) + *(v163 + 72) * v160]);
            }

            else
            {
            }

            v155 = v205;
          }

          v154 += 2;
          --v153;
        }

        while (v153);
      }

      else
      {
        v155 = v205;
      }

      OUTLINED_FUNCTION_214_2();

      v210 = v197;
      v211 = v196;
      v172 = v192;
      v173 = v191;
      Ref<A>.partyStartURL.getter();
      v191 = v173;
      if (v173)
      {
      }

      else
      {
        v174 = v201;
        sub_1D8580BB8();
        v175 = OUTLINED_FUNCTION_508_0();
        v176 = v202;
        if (__swift_getEnumTagSinglePayload(v175, v177, v202) == 1)
        {
          (*(v155 + 8))(v172, v212);

          sub_1D8436E18(v174, &qword_1ECA39E50, &unk_1D859AA30);
          OUTLINED_FUNCTION_123();
          __swift_storeEnumTagSinglePayload(v178, v179, v180, v212);
        }

        else
        {
          v181 = v200;
          v182 = v199;
          OUTLINED_FUNCTION_314_1();
          v183();
          sub_1D8580C58();
          sub_1D8580C18();
          sub_1D8580C28();
          v184 = sub_1D8580BD8();
          MEMORY[0x1DA718270](v184);
          v185 = sub_1D8580BF8();
          MEMORY[0x1DA718290](v185);
          sub_1D8580BA8();
          sub_1D8580BC8();
          v186 = *(v181 + 8);
          v186(v129, v176);
          v186(v182, v176);
          (*(v155 + 8))(v172, v212);
        }
      }

      goto LABEL_50;
    }

    v81 = v38[7];
    OUTLINED_FUNCTION_478_0();
    if (v81)
    {
      v190 = v38[6];

      v82 = sub_1D8577994();
      v84 = *v82;
      v83 = v82[1];

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_386_0();
      sub_1D84E81D4(v190, v81, v84, v83, v85);

      v86 = sub_1D85779E4();
      v87 = v86[1];
      v190 = *v86;

      v88 = OUTLINED_FUNCTION_7_0();
      v90 = sub_1D84F1FF4(v88, v89);
      v92 = v91;

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_386_0();
      sub_1D84E81D4(v90, v92, v190, v87, v93);

      v79 = v210;
      v80 = v203;
      goto LABEL_8;
    }

    v148 = sub_1D8448448();
    OUTLINED_FUNCTION_446(&type metadata for GameServicesError, v148);
    *v149 = 0xD000000000000030;
    *(v149 + 8) = 0x80000001D85868E0;
    *(v149 + 16) = 0;
    swift_willThrow();
  }

LABEL_3:
  OUTLINED_FUNCTION_284_0();
}

char *sub_1D84D9F80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_1D84E73B0(*(a1 + 16), 0);
  v4 = sub_1D84EB678(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_1D84F0B4C(v5);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x1E69E7CC0];
  }

  v7 = v3;
  sub_1D84E76D0(&v7);
  return v7;
}

void GameActivityInstance.fallbackPartyURL(fallbackURL:supportsPartyCode:)()
{
  OUTLINED_FUNCTION_386();
  v145 = v3;
  v5 = v4;
  v149 = sub_1D8580B88();
  OUTLINED_FUNCTION_1();
  v142 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21_1();
  v148 = v8;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_194_1();
  v140 = v10;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_194_1();
  v139 = v12;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_194_1();
  v141 = v14;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v127 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E50, &unk_1D859AA30);
  v19 = OUTLINED_FUNCTION_363(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_292();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_212_2();
  v146 = sub_1D8580C68();
  OUTLINED_FUNCTION_1();
  v143 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_315();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_245_1();
  v144 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v28);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_128();
  v30 = sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_19_0();
  v147 = v34;
  sub_1D84D93C8();
  OUTLINED_FUNCTION_501(v0, 1, v30);
  if (v42)
  {
    sub_1D8436E18(v0, &qword_1ECA39D88, &qword_1D859A988);
    v35 = OUTLINED_FUNCTION_258_1();
LABEL_4:
    v37 = 1;
    v38 = v30;
LABEL_5:
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    goto LABEL_6;
  }

  v138 = v5;
  v39 = OUTLINED_FUNCTION_368_0();
  v40(v39);
  sub_1D8580BB8();
  v41 = v146;
  OUTLINED_FUNCTION_501(v1, 1, v146);
  if (v42)
  {
    v2 = v1;
LABEL_13:
    (*(v32 + 8))(v147, v30);
    sub_1D8436E18(v2, &qword_1ECA39E50, &unk_1D859AA30);
    v48 = v138;
    v49 = OUTLINED_FUNCTION_7_0();
    v50(v49);
    v35 = v48;
    v36 = 0;
    goto LABEL_4;
  }

  v133 = v30;
  v135 = v25;
  v136 = v32;
  v44 = v143;
  v43 = v144;
  v45 = *(v143 + 32);
  v46 = OUTLINED_FUNCTION_308_0();
  v45(v46);
  sub_1D8580BB8();
  OUTLINED_FUNCTION_501(v2, 1, v41);
  if (v47)
  {
    (*(v44 + 8))(v43, v41);
    v32 = v136;
    v30 = v133;
    goto LABEL_13;
  }

  v51 = OUTLINED_FUNCTION_418_0();
  v45(v51);
  sub_1D8580C18();
  v53 = v136;
  v54 = v142;
  if (!v52)
  {
    goto LABEL_20;
  }

  v55 = sub_1D8581288();
  v57 = v56;

  if (v55 != 0x7370747468 || v57 != 0xE500000000000000)
  {
    sub_1D8581AB8();
    OUTLINED_FUNCTION_442_0();
LABEL_20:
    v59 = *(v143 + 8);
    v60 = v146;
    v59(v135, v146);
    v59(v144, v60);
    v61 = v133;
    (*(v53 + 8))(v147, v133);
    OUTLINED_FUNCTION_123();
    v38 = v61;
    goto LABEL_5;
  }

  v62 = sub_1D8580B98();
  v63 = 0;
  v64 = MEMORY[0x1E69E7CC0];
  if (v62)
  {
    v64 = v62;
  }

  v150 = v64;
  v65 = v64;
  v66 = *(v64 + 16);
  v131 = (v54 + 8);
  v132 = v66;
  v145 = v54 + 16;
  while (1)
  {
    v67 = *(v65 + 2);
    v68 = v149;
    if (v132 == v63)
    {
      goto LABEL_88;
    }

    if (v63 >= v67)
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v69 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v70 = *(v54 + 72);
    v71 = *(v54 + 16);
    v71(v17, &v65[v69 + v70 * v63], v149);
    sub_1D8580B58();
    OUTLINED_FUNCTION_354_0();
    v72 = sub_1D85779BC();
    v73 = *v72;
    v74 = v72[1];
    v137 = v72;
    v75 = v68 == v73 && v17 == v74;
    v134 = v63;
    v76 = v71;
    if (v75)
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_495();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_442_0();
    if (v68)
    {
      goto LABEL_48;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_354_0();
    v77 = sub_1D85779E4();
    if (v68 == *v77 && v17 == v77[1])
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_495();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_442_0();
    if (v68)
    {
      goto LABEL_48;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_354_0();
    v79 = sub_1D85779D0();
    if (v68 == *v79 && v17 == v79[1])
    {
LABEL_47:
      v83 = v65;

      v68 = v149;
LABEL_49:
      v132 = v69;
      v55 = *v131;
      (*v131)(v17, v68);
      goto LABEL_50;
    }

    OUTLINED_FUNCTION_495();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_442_0();
    if (v68)
    {
LABEL_48:
      v68 = v149;
      v83 = v65;
      goto LABEL_49;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_354_0();
    v81 = sub_1D85779F8();
    if (v68 == *v81 && v17 == v81[1])
    {
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_495();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_442_0();
    v55 = *v131;
    (*v131)(v17, v149);
    if (v68)
    {
      break;
    }

    v63 = v134 + 1;
  }

  v132 = v69;
  v68 = v149;
  v83 = v65;
LABEL_50:
  v67 = v134 + 1;
  v84 = *(v83 + 2);
  if (v84 - 1 == v134)
  {
    v85 = v134;
    goto LABEL_89;
  }

  v130 = (v54 + 40);
  v68 = v132 + v70 * v67;
  v86 = v141;
  while (2)
  {
    if (v67 >= v84)
    {
      __break(1u);
      goto LABEL_103;
    }

    v76(v86, &v83[v68], v149);
    v87 = sub_1D8580B58();
    v17 = v88;
    if (v87 == *v137 && v88 == v137[1])
    {
      goto LABEL_83;
    }

    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    if (v86)
    {
      goto LABEL_84;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_343_1();
    sub_1D85779E4();
    OUTLINED_FUNCTION_487_0();
    if (v42)
    {
      v91 = v17 == v90;
    }

    else
    {
      v91 = 0;
    }

    if (v91)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_151();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    if (v86)
    {
      goto LABEL_84;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_343_1();
    sub_1D85779D0();
    OUTLINED_FUNCTION_487_0();
    if (v42)
    {
      v93 = v17 == v92;
    }

    else
    {
      v93 = 0;
    }

    if (v93)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_151();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    if (v86)
    {
LABEL_84:
      (v55)(v86, v149);
      goto LABEL_85;
    }

    sub_1D8580B58();
    OUTLINED_FUNCTION_343_1();
    sub_1D85779F8();
    OUTLINED_FUNCTION_487_0();
    if (v42)
    {
      v95 = v17 == v94;
    }

    else
    {
      v95 = 0;
    }

    if (v95)
    {
LABEL_83:

      goto LABEL_84;
    }

    OUTLINED_FUNCTION_151();
    sub_1D8581AB8();
    OUTLINED_FUNCTION_369();
    (v55)(v86, v149);
    if ((v86 & 1) == 0)
    {
      if (v67 != v134)
      {
        if (v134 < 0)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
          return;
        }

        v129 = *(v83 + 2);
        if (v134 >= v129)
        {
          goto LABEL_106;
        }

        v128 = v134 * v70;
        v96 = &v83[v132 + v134 * v70];
        v97 = v83;
        v98 = v149;
        v76(v139, v96, v149);
        if (v67 >= v129)
        {
          goto LABEL_107;
        }

        v76(v140, (v97 + v68), v98);
        v83 = v97;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1D84EB980(v97);
        }

        v17 = v149;
        v129 = *v130;
        v129(&v83[v132 + v128], v140, v149);
        if (v67 >= *(v83 + 2))
        {
          goto LABEL_108;
        }

        v129(&v83[v68], v139, v17);
        v150 = v83;
      }

      ++v134;
    }

LABEL_85:
    ++v67;
    v84 = *(v83 + 2);
    v68 += v70;
    if (v67 != v84)
    {
      continue;
    }

    break;
  }

  v85 = v134;
  v68 = v149;
  if (v67 >= v134)
  {
    goto LABEL_89;
  }

  __break(1u);
LABEL_88:
  v85 = v67;
LABEL_89:
  sub_1D84EB7E8(v85, v67);
  v99 = v135;
  v100 = sub_1D8580B98();
  if (v100)
  {
    v17 = v100;
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v55 = *(v17 + 2);
  v101 = v136;
  if (!v55)
  {

    v119 = v143;
    v120 = v133;
    goto LABEL_100;
  }

  v102 = v150;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_104:
    OUTLINED_FUNCTION_197_1();
    v102 = sub_1D8439370(v123, v124, v125, v126);
  }

  OUTLINED_FUNCTION_490_0();
  v105 = v104 & ~v103;
  v141 = v17;
  v106 = &v17[v105];
  v108 = *(v107 + 72);
  v109 = *(v107 + 16);
  v110 = (v107 + 32);
  v111 = v148;
  do
  {
    v109(v111, v106, v68);
    v113 = v102[2];
    v112 = v102[3];
    if (v113 >= v112 >> 1)
    {
      OUTLINED_FUNCTION_337_0(v112);
      OUTLINED_FUNCTION_197_1();
      v102 = sub_1D8439370(v115, v116, v117, v118);
    }

    v102[2] = v113 + 1;
    v114 = v102 + v105 + v113 * v108;
    v111 = v148;
    v68 = v149;
    (*v110)(v114, v148, v149);
    v106 += v108;
    --v55;
  }

  while (v55);

  v150 = v102;
  v119 = v143;
  v99 = v135;
  v101 = v136;
  v120 = v133;
LABEL_100:
  sub_1D8580BA8();
  sub_1D8580BC8();
  v121 = *(v119 + 8);
  v121(v99, v146);
  v122 = OUTLINED_FUNCTION_495();
  (v121)(v122);
  (*(v101 + 8))(v147, v120);
LABEL_6:
  OUTLINED_FUNCTION_388();
}

uint64_t GameActivityInstance.runtimeStats.getter()
{
  type metadata accessor for GameActivityInstance(0);
}

uint64_t GameActivityInstance.runtimeStats.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for GameActivityInstance(v2) + 60);

  *(v1 + v3) = v0;
  return result;
}

uint64_t GameActivityInstance.runtimeStats.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.participants.getter()
{
  OUTLINED_FUNCTION_529_0();
}

uint64_t GameActivityInstance.participantStates.getter()
{
  OUTLINED_FUNCTION_530_0();
}

uint64_t GameActivityInstance.creator.getter()
{
  v2 = OUTLINED_FUNCTION_393_0();
  v3 = (v1 + *(type metadata accessor for GameActivityInstance(v2) + 72));
  v4 = v3[1];
  *v0 = *v3;
  v0[1] = v4;
}

uint64_t GameActivityInstance.deepLinkReferral.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance(v0);
  v2 = OUTLINED_FUNCTION_417_0(*(v1 + 80));

  return sub_1D84EB994(v2, v3, v4);
}

uint64_t GameActivityInstance.deepLinkReferral.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for GameActivityInstance(0) + 80);
  result = sub_1D84EB9AC(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t GameActivityInstance.deepLinkReferral.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_106();
}

void GameActivityInstance.consumptionState.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance(v0);
  OUTLINED_FUNCTION_493_0(*(v1 + 84));
}

uint64_t GameActivityInstance.consumptionState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GameActivityInstance(0);
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t GameActivityInstance.consumptionState.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.init(id:definitionRef:participants:participantStates:creator:creationDate:partyCode:startDate:lastResumeDate:endDate:duration:state:initiatedByApple:runtimeStats:deepLinkReferral:properties:shortGroupID:consumptionState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, char a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t a21, uint64_t a22, char *a23)
{
  v25 = a10;
  v26 = *a3;
  v27 = a3[1];
  v48 = *a6;
  v47 = a6[1];
  v54 = *a16;
  v56 = a19[1];
  v57 = *a19;
  v55 = *(a19 + 16);
  v58 = *a23;
  v28 = type metadata accessor for GameActivityInstance(0);
  v29 = v28[10];
  v30 = sub_1D8580EA8();
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v30);
  OUTLINED_FUNCTION_268_1(v28[20]);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v26;
  *(a9 + 24) = v27;
  v40 = a8;
  *(a9 + v28[16]) = a4;
  *(a9 + v28[17]) = a5;
  v41 = (a9 + v28[18]);
  *v41 = v48;
  v41[1] = v47;
  v42 = *(v30 - 8);
  (*(v42 + 16))(a9 + v28[9], a7, v30);
  if (!a10)
  {
    v40 = static PartyCodeGenerator.generate4_4String()();
    v25 = v43;
  }

  (*(v42 + 8))(a7, v30);
  *(a9 + 48) = v40;
  *(a9 + 56) = v25;
  OUTLINED_FUNCTION_491_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_491_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_491_0();
  sub_1D84EC2E4();
  v44 = (a9 + v28[13]);
  *v44 = a14;
  v44[1] = a15;
  *(a9 + 40) = v54;
  *(a9 + v28[19]) = a17 & 1;
  result = OUTLINED_FUNCTION_436_0(v28[15]);
  *v29 = v57;
  *(v29 + 8) = v56;
  *(v29 + 16) = v55;
  *(a9 + 32) = a20;
  v46 = (a9 + v28[14]);
  *v46 = a21;
  v46[1] = a22;
  *(a9 + v28[21]) = v58;
  return result;
}

void GameActivityInstance.init(definitionRef:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:shortGroupID:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t *a24, uint64_t a25, uint64_t a26, char *a27)
{
  OUTLINED_FUNCTION_285();
  v83 = v28;
  v81 = v29;
  v86 = v30;
  v76 = v31;
  v77 = v32;
  v34 = v33;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v38 = OUTLINED_FUNCTION_363(v37);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_315();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_286_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_212_2();
  v41 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v43 = v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_227_0();

  v72 = v34[1];
  v73 = *v34;
  v79 = a24[1];
  v80 = *a24;
  v78 = *(a24 + 16);
  v82 = *a27;
  Ref<A>.init(internalID:)(a22);
  sub_1D8580E98();
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v41);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v41);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v41);
  v54 = sub_1D8581BF8();
  v74 = v55;
  v75 = v54;
  v56 = type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v41);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v41);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v41);
  v66 = v36 + v56[20];
  *v66 = 0;
  *(v66 + 8) = 0;
  *(v66 + 16) = -1;
  *v36 = v76;
  *(v36 + 8) = v77;
  *(v36 + 16) = v73;
  *(v36 + 24) = v72;
  *(v36 + v56[16]) = MEMORY[0x1E69E7CD0];
  *(v36 + v56[17]) = MEMORY[0x1E69E7CC8];
  v67 = (v36 + v56[18]);
  *v67 = v84;
  v68 = v81;
  v67[1] = v85;
  (*(v43 + 16))(v36 + v56[9], v27, v41);
  if (!v81)
  {
    v86 = static PartyCodeGenerator.generate4_4String()();
    v68 = v69;
  }

  (*(v43 + 8))(v27, v41);
  *(v36 + 48) = v86;
  *(v36 + 56) = v68;
  OUTLINED_FUNCTION_416_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_416_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_416_0();
  sub_1D84EC2E4();
  v70 = (v36 + v56[13]);
  *v70 = v75;
  v70[1] = v74;
  *(v36 + 40) = 1;
  *(v36 + v56[19]) = a21 & 1;
  *(v36 + v56[15]) = MEMORY[0x1E69E7CC0];
  sub_1D84EB9AC(*v66, *(v66 + 8), *(v66 + 16));
  *v66 = v80;
  *(v66 + 8) = v79;
  *(v66 + 16) = v78;
  *(v36 + 32) = v83;
  v71 = (v36 + v56[14]);
  *v71 = a25;
  v71[1] = a26;
  *(v36 + v56[21]) = v82;
  OUTLINED_FUNCTION_284_0();
}

void GameActivityInstance.init(definitionID:definitionEnvironment:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int *a24, uint64_t a25, uint64_t *a26, char *a27)
{
  OUTLINED_FUNCTION_285();
  v84 = v28;
  v80 = v29;
  v77 = v30;
  v32 = v31;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v36 = OUTLINED_FUNCTION_363(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_5_0();
  v74 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v76 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_190_1(v41);
  v43 = *a26;
  v42 = a26[1];
  v44 = *(a26 + 16);
  v78 = *a27;
  v45 = v32;
  sub_1D84EB9C4(v32, v83);
  v46 = sub_1D8542C48();
  sub_1D84477D8(*v46);
  Ref<A>.init(bundleID:)();
  OUTLINED_FUNCTION_402_0();
  Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
  if (v27)
  {

    sub_1D84EB9AC(v43, v42, v44);

    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v83);
  }

  else
  {
    v73 = v43;
    v79 = v42;

    Ref<A>.init(internalID:)(a24);
    sub_1D8580E98();
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v74);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v50, v51, v52, v74);
    OUTLINED_FUNCTION_123();
    __swift_storeEnumTagSinglePayload(v53, v54, v55, v74);
    sub_1D8581BF8();
    v56 = OUTLINED_FUNCTION_422_0();
    v57 = OUTLINED_FUNCTION_85_2(*(v56 + 40));
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v74);
    v60 = OUTLINED_FUNCTION_85_2(a24[11]);
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v74);
    v63 = OUTLINED_FUNCTION_85_2(a24[12]);
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v74);
    v66 = v34 + a24[20];
    *v66 = 0;
    *(v66 + 8) = 0;
    *(v66 + 16) = -1;
    *v34 = v77;
    *(v34 + 8) = v80;
    *(v34 + 16) = v81;
    *(v34 + 24) = v82;
    *(v34 + a24[16]) = MEMORY[0x1E69E7CD0];
    *(v34 + a24[17]) = MEMORY[0x1E69E7CC8];
    v67 = (v34 + a24[18]);
    *v67 = v81;
    v67[1] = v82;
    (*(v76 + 16))(v34 + a24[9], v75, v74);
    v68 = a22;
    if (!a22)
    {
      a21 = static PartyCodeGenerator.generate4_4String()();
      v68 = v70;
    }

    __swift_destroy_boxed_opaque_existential_1(v45);
    v71 = OUTLINED_FUNCTION_258();
    v72(v71);
    __swift_destroy_boxed_opaque_existential_1(v83);
    *(v34 + 48) = a21;
    *(v34 + 56) = v68;
    OUTLINED_FUNCTION_365_0();
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_365_0();
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_365_0();
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_229_2((v34 + a24[13]));
    *(v34 + 40) = 1;
    *(v34 + a24[19]) = a23 & 1;
    *(v34 + a24[15]) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_526_0();
    *v66 = v73;
    *(v66 + 8) = v79;
    *(v66 + 16) = v44;
    *(v34 + 32) = v84;
    OUTLINED_FUNCTION_229_2((v34 + a24[14]));
    *(v34 + a24[21]) = v78;
  }

  OUTLINED_FUNCTION_342_1();
  OUTLINED_FUNCTION_284_0();
}

unint64_t static GameActivityInstance.generateShortGroupID()(uint64_t a1)
{
  v1 = *sub_1D8542C48();

  return sub_1D84477D8(v1);
}

void GameActivityInstance.init(definitionID:storeFront:language:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:shortGroupID:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int *a28, uint64_t a29, uint64_t *a30, uint64_t a31, uint64_t a32, unsigned __int8 *a33)
{
  OUTLINED_FUNCTION_285();
  a20 = v36;
  a21 = v37;
  OUTLINED_FUNCTION_330_1(v38, v39, v37, v40, v41, v42, v43, v44);
  v46 = v45;
  v47 = a33;
  v48 = a30;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v50 = OUTLINED_FUNCTION_363(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v53);
  v113 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_19_0();
  v56 = OUTLINED_FUNCTION_66_0(v55);
  v57 = type metadata accessor for DefaultGameActivityEnvironment(v56);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_283();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v59);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_200();
  v61 = sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v63 = v62;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_309();
  v120 = *v48;
  v121 = v48[1];
  v65 = *(v48 + 16);
  a10 = *v47;
  a11 = v65;
  OUTLINED_FUNCTION_441_0();
  v66 = OUTLINED_FUNCTION_258_1();
  if (__swift_getEnumTagSinglePayload(v66, v67, v61) == 1)
  {
    sub_1D8436E18(v34, &qword_1ECA39D88, &qword_1D859A988);
    OUTLINED_FUNCTION_276_0();
    OUTLINED_FUNCTION_57_0();
    sub_1D8581838(v105, v106, v107, v108, v109, v110, v111, v112, 715);
    __break(1u);
  }

  else
  {
    v119 = a32;
    OUTLINED_FUNCTION_302_0(a29);
    v116 = a26;
    v68 = a24;

    v69 = OUTLINED_FUNCTION_368();
    v70(v69);
    (*(v63 + 16))(&v35[*(v57 + 20)], v33, v61);
    OUTLINED_FUNCTION_165_1();
    *v35 = v71;
    *(v35 + 1) = v72;
    Ref<A>.init(bundleID:)();
    v122[5] = v122[7];
    v122[6] = v122[8];
    v122[3] = v57;
    OUTLINED_FUNCTION_15_1();
    v122[4] = sub_1D84C49BC(v73);
    __swift_allocate_boxed_opaque_existential_1(v122);
    OUTLINED_FUNCTION_16_2();
    sub_1D84EA648();
    Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
    if (v117)
    {

      sub_1D84EB9AC(v120, v121, a11);

      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      (*(v63 + 8))(v33, v61);
      __swift_destroy_boxed_opaque_existential_1(v122);
    }

    else
    {
      v118 = v33;
      v114 = a31;
      v115 = v68;
      v74 = a28;

      __swift_destroy_boxed_opaque_existential_1(v122);
      OUTLINED_FUNCTION_264_1(v122[10]);
      OUTLINED_FUNCTION_509_0();
      OUTLINED_FUNCTION_347_0(v75);
      v76 = OUTLINED_FUNCTION_61_1(&a14);
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v113);
      v79 = OUTLINED_FUNCTION_61_1(&a15);
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v113);
      v82 = OUTLINED_FUNCTION_61_1(&a16);
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v113);
      sub_1D8581BF8();
      v85 = OUTLINED_FUNCTION_422_0();
      v86 = OUTLINED_FUNCTION_39_0(*(v85 + 40));
      __swift_storeEnumTagSinglePayload(v86, v87, v88, v113);
      v89 = OUTLINED_FUNCTION_39_0(v74[11]);
      __swift_storeEnumTagSinglePayload(v89, v90, v91, v113);
      v92 = OUTLINED_FUNCTION_39_0(v74[12]);
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v113);
      v95 = v46 + v74[20];
      *v95 = 0;
      *(v95 + 8) = 0;
      *(v95 + 16) = -1;
      OUTLINED_FUNCTION_273_1(&a9);
      *(v46 + v96) = MEMORY[0x1E69E7CD0];
      v97 = OUTLINED_FUNCTION_207_2(v74[17]);
      v98(v97);
      v99 = v116;
      if (v116)
      {
        v100 = a25;
      }

      else
      {
        v100 = static PartyCodeGenerator.generate4_4String()();
        v99 = v101;
      }

      v102 = OUTLINED_FUNCTION_329_0();
      v103(v102);
      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      (*(v63 + 8))(v118, v61);
      *(v46 + 48) = v100;
      *(v46 + 56) = v99;
      OUTLINED_FUNCTION_246_1();
      OUTLINED_FUNCTION_281_0(&a14);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1();
      OUTLINED_FUNCTION_281_0(&a15);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1();
      OUTLINED_FUNCTION_214_2();
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_229_2((v46 + v74[13]));
      *(v46 + 40) = 1;
      OUTLINED_FUNCTION_383_0(v74[19]);
      OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
      *v95 = v120;
      *(v95 + 8) = v121;
      *(v95 + 16) = a11;
      *(v46 + 32) = v115;
      v104 = (v46 + v74[14]);
      *v104 = v114;
      v104[1] = v119;
      *(v46 + v74[21]) = a10;
    }

    OUTLINED_FUNCTION_342_1();
    OUTLINED_FUNCTION_284_0();
  }
}

void GameActivityInstance.init(definitionID:storeFront:language:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, int *a27, uint64_t a28, uint64_t *a29, char *a30)
{
  OUTLINED_FUNCTION_285();
  a19 = v33;
  a20 = v34;
  OUTLINED_FUNCTION_330_1(v35, v36, v34, v37, v38, v39, v40, v41);
  v43 = v42;
  v45 = a29;
  v44 = a30;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v47 = OUTLINED_FUNCTION_363(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v50);
  v117 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_19_0();
  v53 = OUTLINED_FUNCTION_66_0(v52);
  v54 = type metadata accessor for DefaultGameActivityEnvironment(v53);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_283();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v56);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_200();
  v58 = sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_309();
  v124 = *v45;
  v125 = v45[1];
  v126 = *(v45 + 16);
  v116 = *v44;
  v62 = sub_1D8542C48();
  v115 = sub_1D84477D8(*v62);
  v128 = v63;
  OUTLINED_FUNCTION_441_0();
  v64 = OUTLINED_FUNCTION_258_1();
  if (__swift_getEnumTagSinglePayload(v64, v65, v58) == 1)
  {
    sub_1D8436E18(v31, &qword_1ECA39D88, &qword_1D859A988);
    OUTLINED_FUNCTION_276_0();
    OUTLINED_FUNCTION_57_0();
    sub_1D8581838(v107, v108, v109, v110, v111, v112, v113, v114, 715);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_302_0(a28);
    v66 = a23;
    v120 = a25;

    OUTLINED_FUNCTION_406_0();
    v67 = OUTLINED_FUNCTION_368();
    v68(v67);
    (*(v60 + 16))(&v32[*(v54 + 20)], v30, v58);
    OUTLINED_FUNCTION_165_1();
    *v32 = v69;
    *(v32 + 1) = v70;
    Ref<A>.init(bundleID:)();
    v127[5] = v127[7];
    v127[6] = v127[8];
    v127[3] = v54;
    OUTLINED_FUNCTION_15_1();
    v127[4] = sub_1D84C49BC(v71);
    __swift_allocate_boxed_opaque_existential_1(v127);
    OUTLINED_FUNCTION_16_2();
    sub_1D84EA648();
    Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
    if (v121)
    {
      sub_1D84EB9AC(v124, v125, v126);

      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      v72 = OUTLINED_FUNCTION_418_0();
      v73(v72);

      __swift_destroy_boxed_opaque_existential_1(v127);
    }

    else
    {
      v122 = v66;
      v74 = a27;
      v119 = a26;

      __swift_destroy_boxed_opaque_existential_1(v127);
      OUTLINED_FUNCTION_264_1(v127[10]);
      OUTLINED_FUNCTION_509_0();
      OUTLINED_FUNCTION_347_0(v75);
      v76 = OUTLINED_FUNCTION_61_1(&a13);
      v77 = v117;
      __swift_storeEnumTagSinglePayload(v76, v78, v79, v117);
      v80 = OUTLINED_FUNCTION_61_1(&a14);
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v117);
      v83 = OUTLINED_FUNCTION_61_1(&a15);
      __swift_storeEnumTagSinglePayload(v83, v84, v85, v117);
      v123 = sub_1D8581BF8();
      v118 = v86;
      v87 = OUTLINED_FUNCTION_422_0();
      v88 = OUTLINED_FUNCTION_39_0(*(v87 + 40));
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v117);
      v91 = OUTLINED_FUNCTION_39_0(v74[11]);
      __swift_storeEnumTagSinglePayload(v91, v92, v93, v117);
      v94 = OUTLINED_FUNCTION_39_0(v74[12]);
      __swift_storeEnumTagSinglePayload(v94, v95, v96, v117);
      v97 = v43 + v74[20];
      *v97 = 0;
      *(v97 + 8) = 0;
      *(v97 + 16) = -1;
      OUTLINED_FUNCTION_273_1(&a18);
      *(v43 + v98) = MEMORY[0x1E69E7CD0];
      v99 = OUTLINED_FUNCTION_207_2(v74[17]);
      v100(v99);
      if (v120)
      {
        v77 = a24;
      }

      else
      {
        static PartyCodeGenerator.generate4_4String()();
        OUTLINED_FUNCTION_354_0();
      }

      v101 = OUTLINED_FUNCTION_329_0();
      v102(v101);
      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      v103 = OUTLINED_FUNCTION_418_0();
      v104(v103);
      *(v43 + 48) = v77;
      *(v43 + 56) = v120;
      OUTLINED_FUNCTION_246_1();
      OUTLINED_FUNCTION_281_0(&a13);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1();
      OUTLINED_FUNCTION_281_0(&a14);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1();
      OUTLINED_FUNCTION_214_2();
      sub_1D84EC2E4();
      v105 = (v43 + v74[13]);
      *v105 = v123;
      v105[1] = v118;
      *(v43 + 40) = 1;
      *(v43 + v74[19]) = v119 & 1;
      *(v43 + v74[15]) = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_526_0();
      *v97 = v124;
      *(v97 + 8) = v125;
      *(v97 + 16) = v126;
      *(v43 + 32) = v122;
      v106 = (v43 + v74[14]);
      *v106 = v115;
      v106[1] = v128;
      *(v43 + v74[21]) = v116;
    }

    OUTLINED_FUNCTION_342_1();
    OUTLINED_FUNCTION_284_0();
  }
}

void GameActivityInstance.init(definitionID:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t *a25, char *a26)
{
  OUTLINED_FUNCTION_285();
  a19 = v30;
  a20 = v31;
  v111 = v32;
  v112 = v33;
  v110 = v34;
  v104 = v35;
  v37 = v36;
  v38 = a25;
  v117 = a26;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v40 = OUTLINED_FUNCTION_363(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v43);
  v101 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v102 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_19_0();
  v47 = OUTLINED_FUNCTION_66_0(v46);
  v48 = type metadata accessor for DefaultGameActivityEnvironment(v47);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_227_0();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  OUTLINED_FUNCTION_363(v50);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_250_0();
  v52 = sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  v107 = *v38;
  v108 = v38[1];
  v109 = *(v38 + 16);
  v103 = *v117;
  OUTLINED_FUNCTION_412_0();
  sub_1D8580D68();
  if (__swift_getEnumTagSinglePayload(v28, 1, v52) == 1)
  {
    sub_1D8436E18(v28, &qword_1ECA39D88, &qword_1D859A988);
    OUTLINED_FUNCTION_276_0();
    OUTLINED_FUNCTION_57_0();
    sub_1D8581838(v91, v92, v93, v94, v95, v96, v97, v98, 761);
    __break(1u);
  }

  else
  {
    v118 = a21;
    OUTLINED_FUNCTION_406_0();
    v56(v27, v28, v52);
    (*(v54 + 16))(&v29[*(v48 + 20)], v27, v52);
    OUTLINED_FUNCTION_165_1();
    *v29 = v57;
    *(v29 + 1) = v58;
    v116[3] = v48;
    OUTLINED_FUNCTION_15_1();
    v116[4] = sub_1D84C49BC(v59);
    __swift_allocate_boxed_opaque_existential_1(v116);
    OUTLINED_FUNCTION_16_2();
    sub_1D84EA648();
    v60 = sub_1D8542C48();
    v61 = sub_1D84477D8(*v60);
    v63 = v62;
    Ref<A>.init(bundleID:)();
    OUTLINED_FUNCTION_402_0();
    Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
    if (v26)
    {

      sub_1D84EB9AC(v107, v108, v109);

      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      (*(v54 + 8))(v27, v52);
      __swift_destroy_boxed_opaque_existential_1(v116);
    }

    else
    {
      v105 = v61;
      v106 = v63;
      v64 = a23;
      v99 = a22;

      Ref<A>.init(internalID:)(v64);
      OUTLINED_FUNCTION_264_1(v115);
      sub_1D8580E98();
      v65 = OUTLINED_FUNCTION_61_1(&a15);
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v101);
      v68 = OUTLINED_FUNCTION_61_1(&a16);
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v101);
      v71 = OUTLINED_FUNCTION_61_1(&a17);
      __swift_storeEnumTagSinglePayload(v71, v72, v73, v101);
      v74 = sub_1D8581BF8();
      OUTLINED_FUNCTION_483_0(v74);
      v75 = type metadata accessor for GameActivityInstance(0);
      v76 = OUTLINED_FUNCTION_85_2(v75[10]);
      __swift_storeEnumTagSinglePayload(v76, v77, v78, v101);
      v79 = OUTLINED_FUNCTION_85_2(v75[11]);
      __swift_storeEnumTagSinglePayload(v79, v80, v81, v101);
      v82 = OUTLINED_FUNCTION_85_2(v75[12]);
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v101);
      v85 = v37 + v75[20];
      *v85 = 0;
      *(v85 + 8) = 0;
      *(v85 + 16) = -1;
      *v37 = v104;
      *(v37 + 8) = v110;
      *(v37 + 16) = v114;
      *(v37 + 24) = v115;
      *(v37 + v75[16]) = MEMORY[0x1E69E7CD0];
      *(v37 + v75[17]) = MEMORY[0x1E69E7CC8];
      OUTLINED_FUNCTION_229_2((v37 + v75[18]));
      (*(v102 + 16))(v37 + v75[9], v100, v101);
      v86 = v112;
      if (!v118)
      {
        v86 = static PartyCodeGenerator.generate4_4String()();
        v118 = v87;
      }

      v113 = v86;
      v88 = OUTLINED_FUNCTION_368_0();
      v89(v88);
      OUTLINED_FUNCTION_6_2();
      sub_1D84EB2B8();
      (*(v54 + 8))(v27, v52);
      __swift_destroy_boxed_opaque_existential_1(v116);
      *(v37 + 48) = v113;
      *(v37 + 56) = v118;
      OUTLINED_FUNCTION_365_0();
      OUTLINED_FUNCTION_214_2();
      OUTLINED_FUNCTION_361();
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_365_0();
      OUTLINED_FUNCTION_361();
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_365_0();
      OUTLINED_FUNCTION_361();
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_229_2((v37 + v75[13]));
      *(v37 + 40) = 1;
      *(v37 + v75[19]) = v99 & 1;
      *(v37 + v75[15]) = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_526_0();
      *v85 = v107;
      *(v85 + 8) = v108;
      *(v85 + 16) = v109;
      *(v37 + 32) = v111;
      v90 = (v37 + v75[14]);
      *v90 = v105;
      v90[1] = v106;
      *(v37 + v75[21]) = v103;
    }

    OUTLINED_FUNCTION_342_1();
    OUTLINED_FUNCTION_284_0();
  }
}

void GameActivityInstance.init(definitionID:gameBundleID:id:properties:partyCode:initiatedByApple:creatorPlayerID:deepLinkReferral:shortGroupID:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  OUTLINED_FUNCTION_285();
  v26 = type metadata accessor for GameActivityInstance(0);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_227_0();

  sub_1D84EB9AC(*a25, a25[1], *(a25 + 16));
  sub_1D8580EA8();
  OUTLINED_FUNCTION_91_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  OUTLINED_FUNCTION_91_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_91_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v40 = v25 + *(v27 + 88);
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = -1;
  v41 = sub_1D84F3620();
  v42 = *v41;
  v43 = v41[1];
  v44 = *(v41 + 16);
  v45 = sub_1D8448448();
  OUTLINED_FUNCTION_446(&type metadata for GameServicesError, v45);
  *v46 = v42;
  *(v46 + 8) = v43;
  *(v46 + 16) = v44;
  swift_willThrow();
  v47 = OUTLINED_FUNCTION_194();
  sub_1D84EBA88(v47, v48, v44);
  OUTLINED_FUNCTION_231();
  sub_1D8436E18(v49, v50, v51);
  OUTLINED_FUNCTION_231();
  sub_1D8436E18(v52, v53, v54);
  OUTLINED_FUNCTION_231();
  sub_1D8436E18(v55, v56, v57);
  OUTLINED_FUNCTION_526_0();
  OUTLINED_FUNCTION_284_0();
}

void GameActivityInstance.modified(id:definitionRef:participants:participantStates:creator:creationDate:partyCode:startDate:lastResumeDate:endDate:duration:state:initiatedByApple:runtimeStats:deepLinkReferral:properties:shortGroupID:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, unsigned __int8 *a29, unsigned __int8 a30, uint64_t a31, uint64_t *a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned __int8 *a36)
{
  OUTLINED_FUNCTION_386();
  a20 = v37;
  a21 = v38;
  v183 = v39;
  v172 = v40;
  v42 = v41;
  v185 = v43;
  v186 = v44;
  v46 = v45;
  v184 = v47;
  v182 = v48;
  v50 = v49;
  v51 = a36;
  v52 = a32;
  v53 = a29;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v55 = OUTLINED_FUNCTION_363(v54);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_194_1();
  v194 = v57;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_194_1();
  v193 = v60;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_194_1();
  v63 = v62;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_194_1();
  v192 = v65;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v66);
  v68 = v165 - v67;
  v190 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v197 = v69;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_409_0(v71);
  v73 = *v46;
  v72 = v46[1];
  v74 = *v42;
  v75 = v42[1];
  v181 = v74;
  v76 = *v53;
  v77 = *v52;
  v188 = v52[1];
  v189 = v77;
  v187 = *(v52 + 16);
  LODWORD(v74) = *v51;
  v195 = v76;
  v196 = v74;
  if (v184)
  {
    v179 = v184;
  }

  else
  {
    v78 = v36[1];
    v182 = *v36;
    v179 = v78;
  }

  v80 = v185;
  v79 = v186;
  v81 = v63;
  if (v72)
  {
    v178 = v72;
    if (v185)
    {
      goto LABEL_6;
    }

LABEL_9:
    v177 = OUTLINED_FUNCTION_529_0();

    if (v79)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v73 = v36[2];
  v178 = v36[3];

  if (!v80)
  {
    goto LABEL_9;
  }

LABEL_6:
  v177 = v80;
  if (v79)
  {
LABEL_7:
    v176 = v79;
    goto LABEL_11;
  }

LABEL_10:
  v176 = OUTLINED_FUNCTION_530_0();

LABEL_11:
  v180 = v73;
  if (v75)
  {
    v175 = v75;
  }

  else
  {
    v82 = (v36 + *(type metadata accessor for GameActivityInstance(0) + 72));
    v83 = v82[1];
    v181 = *v82;
    OUTLINED_FUNCTION_483_0(v83);
  }

  v84 = a22;
  OUTLINED_FUNCTION_214_2();
  sub_1D847C204();
  v85 = OUTLINED_FUNCTION_307_1();
  v86 = v190;
  OUTLINED_FUNCTION_501(v85, v87, v190);
  if (v88)
  {
    type metadata accessor for GameActivityInstance(0);
    OUTLINED_FUNCTION_495_0();
    v89(v191);
    v90 = OUTLINED_FUNCTION_307_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v90, v91, v86);

    if (EnumTagSinglePayload != 1)
    {
      sub_1D8436E18(v68, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_502_0();
    v93(v191, v68, v86);
  }

  v186 = v84;
  v94 = v180;
  if (!v84)
  {
    v95 = v36[7];
    v183 = v36[6];
    v186 = v95;
  }

  OUTLINED_FUNCTION_331_1();
  sub_1D847C204();
  v96 = v190;
  OUTLINED_FUNCTION_501(v81, 1, v190);
  if (v88)
  {
    type metadata accessor for GameActivityInstance(0);
    sub_1D847C204();
    OUTLINED_FUNCTION_311_0();
    v100 = __swift_getEnumTagSinglePayload(v97, v98, v99);

    if (v100 != 1)
    {
      sub_1D8436E18(v81, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_406_0();
    v101 = OUTLINED_FUNCTION_228();
    v102(v101);
    OUTLINED_FUNCTION_336_1();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v96);
  }

  v106 = v173;
  sub_1D847C204();
  OUTLINED_FUNCTION_311_0();
  OUTLINED_FUNCTION_501(v107, v108, v109);
  if (v88)
  {
    type metadata accessor for GameActivityInstance(0);
    v113 = v36;
    sub_1D847C204();
    OUTLINED_FUNCTION_311_0();
    OUTLINED_FUNCTION_501(v110, v111, v112);
    v118 = v174;
    if (!v88)
    {
      sub_1D8436E18(v106, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    v113 = v36;
    OUTLINED_FUNCTION_406_0();
    v114(v193, v106, v96);
    OUTLINED_FUNCTION_336_1();
    __swift_storeEnumTagSinglePayload(v115, v116, v117, v96);
    v118 = v174;
  }

  v119 = a28;
  OUTLINED_FUNCTION_166();
  sub_1D847C204();
  v120 = OUTLINED_FUNCTION_258_1();
  OUTLINED_FUNCTION_501(v120, v121, v96);
  if (v88)
  {
    type metadata accessor for GameActivityInstance(0);
    sub_1D847C204();
    v122 = OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_501(v122, v123, v96);
    if (!v88)
    {
      sub_1D8436E18(v118, &qword_1ECA39300, &unk_1D8591030);
    }

    if ((v119 & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_33:
    v124 = v113;
    v125 = (v113 + *(type metadata accessor for GameActivityInstance(0) + 52));
    v126 = *v125;
    v184 = v125[1];
    v185 = v126;
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_406_0();
  v127 = OUTLINED_FUNCTION_166();
  v128(v127);
  OUTLINED_FUNCTION_336_1();
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v96);
  if (v119)
  {
    goto LABEL_33;
  }

LABEL_35:
  v184 = a27;
  v185 = a26;
  v124 = v113;
LABEL_36:
  v132 = a30;
  if (v195 == 5)
  {
    v195 = *(v124 + 40);
  }

  v133 = a31;
  if (a30 == 2)
  {
    v132 = *(v124 + *(type metadata accessor for GameActivityInstance(0) + 76));
  }

  v169 = v133;
  if (v133)
  {
    v173 = v133;
  }

  else
  {
    v173 = *(v124 + *(type metadata accessor for GameActivityInstance(0) + 60));
  }

  v134 = a33;
  v136 = v188;
  v135 = v189;
  v137 = v187;
  if (v187 == 255)
  {
    v138 = v124 + *(type metadata accessor for GameActivityInstance(0) + 80);
    v135 = *v138;
    v136 = *(v138 + 8);
    v137 = *(v138 + 16);
    v139 = OUTLINED_FUNCTION_368();
    sub_1D84EB994(v139, v140, v137);
  }

  v141 = a35;
  if (v134)
  {
    v168 = v134;
    if (a35)
    {
LABEL_47:
      v167 = a34;
      v166 = v141;
      goto LABEL_50;
    }
  }

  else
  {
    v168 = v124[4];

    if (v141)
    {
      goto LABEL_47;
    }
  }

  v142 = (v124 + *(type metadata accessor for GameActivityInstance(0) + 56));
  v143 = v142[1];
  v167 = *v142;
  v166 = v143;

LABEL_50:
  v165[1] = v134;
  v170 = v137;
  v171 = v136;
  v172 = v135;
  if (v196 == 4)
  {
    v196 = *(v124 + *(type metadata accessor for GameActivityInstance(0) + 84));
  }

  LODWORD(v174) = v132;
  v144 = type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v96);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v148, v149, v150, v96);
  v151 = OUTLINED_FUNCTION_39_0(v144[12]);
  __swift_storeEnumTagSinglePayload(v151, v152, v153, v96);
  OUTLINED_FUNCTION_268_1(v144[20]);
  v154 = v178;
  v155 = v179;
  *v50 = v182;
  *(v50 + 8) = v155;
  *(v50 + 16) = v94;
  *(v50 + 24) = v154;
  v156 = v176;
  *(v50 + v144[16]) = v177;
  *(v50 + v144[17]) = v156;
  OUTLINED_FUNCTION_229_2((v50 + v144[18]));
  (*(v197 + 16))(v50 + v144[9], v191, v96);

  sub_1D84EB994(v189, v188, v187);

  v157 = v183;
  v158 = v186;
  if (!v186)
  {
    v157 = static PartyCodeGenerator.generate4_4String()();
    v158 = v159;
  }

  v160 = OUTLINED_FUNCTION_415_0();
  v161(v160);
  *(v50 + 48) = v157;
  *(v50 + 56) = v158;
  sub_1D84EC2E4();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_246_1();
  sub_1D84EC2E4();
  v162 = (v50 + v144[13]);
  v163 = v184;
  *v162 = v185;
  v162[1] = v163;
  *(v50 + 40) = v195;
  OUTLINED_FUNCTION_383_0(v144[19]);
  OUTLINED_FUNCTION_436_0(v144[15]);
  v164 = v171;
  *v136 = v172;
  v136[1] = v164;
  OUTLINED_FUNCTION_404_0(&a14);
  OUTLINED_FUNCTION_229_2((v50 + v144[14]));
  *(v50 + v144[21]) = v196;
  OUTLINED_FUNCTION_388();
}

void GameActivityInstance.modifiedActivity(participants:participantStates:partyCode:startDate:lastResumeDate:endDate:duration:state:initiatedByApple:runtimeStats:deepLinkReferral:properties:consumptionState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, unsigned __int8 *a24, unsigned __int8 a25, uint64_t a26, uint64_t a27, uint64_t a28, unsigned __int8 *a29)
{
  OUTLINED_FUNCTION_386();
  a20 = v31;
  a21 = v32;
  v156 = v33;
  v145 = v34;
  v144 = v35;
  v143 = v36;
  v38 = v37;
  v155 = v39;
  v157 = v40;
  v42 = v41;
  v44 = v43;
  v45 = a29;
  v46 = a27;
  v47 = a24;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v49 = OUTLINED_FUNCTION_363(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_194_1();
  v167 = v51;
  OUTLINED_FUNCTION_142_0();
  v53 = MEMORY[0x1EEE9AC00](v52);
  v55 = &v138 - v54;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_194_1();
  v166 = v56;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_286_0();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_245_1();
  v165 = v59;
  OUTLINED_FUNCTION_5_0();
  v60 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v170 = v61;
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_409_0(v63);
  v64 = *v47;
  v65 = *v46;
  v162 = *(v46 + 8);
  v163 = v65;
  v161 = *(v46 + 16);
  v66 = *v45;
  v168 = v64;
  v169 = v66;
  v67 = *v29;
  v68 = v29[1];
  v69 = v29[3];
  v152 = v29[2];
  v153 = v67;
  v159 = v69;
  v160 = v68;
  if (v42)
  {
    v151 = v42;
  }

  else
  {
    v151 = OUTLINED_FUNCTION_529_0();
  }

  v70 = v164;
  if (v157)
  {
    v150 = v157;
  }

  else
  {
    v150 = OUTLINED_FUNCTION_530_0();
  }

  v71 = type metadata accessor for GameActivityInstance(0);
  v72 = (v29 + v71[18]);
  v74 = *v72;
  v73 = v72[1];
  v147 = v74;
  v158 = v73;
  OUTLINED_FUNCTION_495_0();
  v149 = v75;
  v148 = v76;
  (v76)(v70);
  v154 = v38;
  if (!v38)
  {
    v77 = v29[6];
    v154 = v29[7];
    v155 = v77;
  }

  sub_1D847C204();
  v78 = OUTLINED_FUNCTION_307_1();
  OUTLINED_FUNCTION_501(v78, v79, v60);
  if (v80)
  {
    sub_1D847C204();
    v81 = OUTLINED_FUNCTION_307_1();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v81, v82, v60);

    if (EnumTagSinglePayload != 1)
    {
      sub_1D8436E18(v30, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_502_0();
    v84 = OUTLINED_FUNCTION_165_0();
    v85(v84);
    OUTLINED_FUNCTION_336_1();
    __swift_storeEnumTagSinglePayload(v86, v87, v88, v60);
  }

  sub_1D847C204();
  v89 = OUTLINED_FUNCTION_258_1();
  OUTLINED_FUNCTION_501(v89, v90, v60);
  v91 = v146;
  if (v80)
  {
    sub_1D847C204();
    v92 = OUTLINED_FUNCTION_258_1();
    OUTLINED_FUNCTION_501(v92, v93, v60);
    if (!v80)
    {
      sub_1D8436E18(v55, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_502_0();
    v94 = OUTLINED_FUNCTION_166();
    v95(v94);
    OUTLINED_FUNCTION_336_1();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v60);
  }

  v99 = a22;
  v100 = a23;
  OUTLINED_FUNCTION_214_2();
  sub_1D847C204();
  OUTLINED_FUNCTION_501(v91, 1, v60);
  if (v80)
  {
    sub_1D847C204();
    OUTLINED_FUNCTION_501(v91, 1, v60);
    if (!v80)
    {
      sub_1D8436E18(v91, &qword_1ECA39300, &unk_1D8591030);
    }
  }

  else
  {
    OUTLINED_FUNCTION_502_0();
    OUTLINED_FUNCTION_269_1();
    v101();
    OUTLINED_FUNCTION_336_1();
    __swift_storeEnumTagSinglePayload(v102, v103, v104, v60);
  }

  if (v100)
  {
    v105 = (v29 + v71[13]);
    v99 = v105[1];
    v156 = *v105;
  }

  v106 = a25;
  if (v168 == 5)
  {
    v168 = *(v29 + 40);
  }

  v107 = a26;
  if (a25 == 2)
  {
    v106 = *(v29 + v71[19]);
  }

  v157 = v99;
  if (a26)
  {
    v145 = a26;
  }

  else
  {
    v145 = *(v29 + v71[15]);
  }

  v108 = a28;
  v110 = v162;
  v109 = v163;
  v111 = v161;
  if (v161 == 255)
  {
    v112 = v29 + v71[20];
    v109 = *v112;
    v110 = *(v112 + 8);
    v111 = *(v112 + 16);
    sub_1D84EB994(*v112, v110, *(v112 + 16));
  }

  v140 = v107;
  if (v108)
  {
    v141 = v108;
  }

  else
  {
    v141 = v29[4];
  }

  v142 = v111;
  v143 = v110;
  v144 = v109;
  LODWORD(v146) = v106;
  v113 = (v29 + v71[14]);
  v114 = v113[1];
  v115 = v169;
  if (v169 == 4)
  {
    v115 = *(v29 + v71[21]);
  }

  v169 = v115;
  v139 = *v113;
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v60);
  v119 = OUTLINED_FUNCTION_39_0(v71[11]);
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v60);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v60);
  OUTLINED_FUNCTION_268_1(v71[20]);
  v125 = v160;
  *v44 = v153;
  *(v44 + 8) = v125;
  v126 = v151;
  v127 = v159;
  *(v44 + 16) = v152;
  *(v44 + 24) = v127;
  *(v44 + v71[16]) = v126;
  *(v44 + v71[17]) = v150;
  v128 = (v44 + v71[18]);
  v129 = v158;
  *v128 = v147;
  v128[1] = v129;
  v130 = v164;
  v148(v44 + v71[9], v164, v60);

  sub_1D84EB994(v163, v162, v161);

  v132 = v154;
  v131 = v155;
  if (!v154)
  {
    v131 = static PartyCodeGenerator.generate4_4String()();
    v132 = v133;
  }

  (*(v170 + 8))(v130, v60);
  *(v44 + 48) = v131;
  *(v44 + 56) = v132;
  OUTLINED_FUNCTION_287_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_246_1();
  OUTLINED_FUNCTION_287_0();
  sub_1D84EC2E4();
  OUTLINED_FUNCTION_287_0();
  sub_1D84EC2E4();
  v134 = (v44 + v71[13]);
  v135 = v157;
  *v134 = v156;
  v134[1] = v135;
  *(v44 + 40) = v168;
  OUTLINED_FUNCTION_383_0(v71[19]);
  OUTLINED_FUNCTION_436_0(v71[15]);
  v136 = v143;
  *v109 = v144;
  v109[1] = v136;
  OUTLINED_FUNCTION_404_0(&a13);
  v137 = (v44 + v71[14]);
  *v137 = v139;
  v137[1] = v114;
  *(v44 + v71[21]) = v169;
  OUTLINED_FUNCTION_388();
}

void static GameActivityInstance.== infix(_:_:)()
{
  OUTLINED_FUNCTION_386();
  v3 = v2;
  OUTLINED_FUNCTION_85_1();
  v4 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v104 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_469_0(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v9 = OUTLINED_FUNCTION_363(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_315();
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v98[-v12];
  MEMORY[0x1EEE9AC00](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39308, &qword_1D85A7960);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_315();
  v18 = v16 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_292();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v98[-v21];
  v23 = *v0 == *v3 && *(v0 + 8) == *(v3 + 8);
  if (v23 || (sub_1D8581AB8()) && (sub_1D844A4B0(*(v0 + 16), *(v0 + 24), *(v3 + 16), *(v3 + 24), &qword_1ECA39860, &qword_1D85962F0) & 1) != 0 && (sub_1D84BAB00(*(v0 + 32), *(v3 + 32)) & 1) != 0 && (sub_1D84C5C58(*(v0 + 40), *(v3 + 40)))
  {
    v24 = *(v0 + 56);
    v25 = *(v3 + 56);
    if (v24)
    {
      if (!v25)
      {
        goto LABEL_49;
      }

      v26 = *(v0 + 48) == *(v3 + 48) && v24 == v25;
      if (!v26 && (sub_1D8581AB8() & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (v25)
    {
      goto LABEL_49;
    }

    v102 = type metadata accessor for GameActivityInstance(0);
    if ((_s12GameServices0A7HistoryV04PlayC0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_49;
    }

    v27 = *(v14 + 48);
    v100 = v102[10];
    v101 = v27;
    sub_1D847C204();
    sub_1D847C204();
    OUTLINED_FUNCTION_55_0(v22);
    if (v23)
    {
      OUTLINED_FUNCTION_55_0(&v101[v22]);
      if (v23)
      {
        sub_1D8436E18(v22, &qword_1ECA39300, &unk_1D8591030);
        goto LABEL_29;
      }
    }

    else
    {
      sub_1D847C204();
      OUTLINED_FUNCTION_55_0(&v101[v22]);
      if (!v28)
      {
        (*(v104 + 32))(v103, &v101[v22], v4);
        OUTLINED_FUNCTION_10_3();
        sub_1D84C49BC(v32);
        v99 = sub_1D8581208();
        v33 = *(v104 + 8);
        v100 = v104 + 8;
        v101 = v33;
        (v33)(v103, v4);
        v34 = OUTLINED_FUNCTION_146_1();
        (v101)(v34);
        sub_1D8436E18(v22, &qword_1ECA39300, &unk_1D8591030);
        if ((v99 & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_29:
        v35 = *(v14 + 48);
        sub_1D847C204();
        v36 = v35;
        sub_1D847C204();
        OUTLINED_FUNCTION_55_0(v1);
        if (v23)
        {
          OUTLINED_FUNCTION_55_0(v1 + v35);
          if (v23)
          {
            sub_1D8436E18(v1, &qword_1ECA39300, &unk_1D8591030);
LABEL_39:
            v42 = v102;
            v43 = *(v14 + 48);
            OUTLINED_FUNCTION_416_0();
            sub_1D847C204();
            OUTLINED_FUNCTION_416_0();
            sub_1D847C204();
            OUTLINED_FUNCTION_55_0(v18);
            if (v23)
            {
              OUTLINED_FUNCTION_55_0(v18 + v43);
              if (v23)
              {
                sub_1D8436E18(v18, &qword_1ECA39300, &unk_1D8591030);
                goto LABEL_51;
              }
            }

            else
            {
              OUTLINED_FUNCTION_199_0();
              sub_1D847C204();
              OUTLINED_FUNCTION_55_0(v18 + v43);
              if (!v44)
              {
                v47 = v104;
                v48 = v18 + v43;
                v49 = v103;
                (*(v104 + 32))(v103, v48, v4);
                OUTLINED_FUNCTION_10_3();
                sub_1D84C49BC(v50);
                OUTLINED_FUNCTION_165_0();
                v51 = sub_1D8581208();
                v52 = *(v47 + 8);
                v52(v49, v4);
                v53 = OUTLINED_FUNCTION_495();
                (v52)(v53);
                sub_1D8436E18(v18, &qword_1ECA39300, &unk_1D8591030);
                if ((v51 & 1) == 0)
                {
                  goto LABEL_49;
                }

LABEL_51:
                OUTLINED_FUNCTION_211_0();
                if ((sub_1D8581BD8() & 1) == 0)
                {
                  goto LABEL_49;
                }

                v54 = OUTLINED_FUNCTION_211_0();
                v58 = v54 == v57 && v55 == v56;
                if (!v58 && (sub_1D8581AB8() & 1) == 0)
                {
                  goto LABEL_49;
                }

                if ((sub_1D84C7948(*(v0 + v42[15]), *(v3 + v42[15])) & 1) == 0)
                {
                  goto LABEL_49;
                }

                if ((sub_1D84DE89C(*(v0 + v42[16]), *(v3 + v42[16])) & 1) == 0)
                {
                  goto LABEL_49;
                }

                if ((sub_1D84D4364(*(v0 + v42[17]), *(v3 + v42[17])) & 1) == 0)
                {
                  goto LABEL_49;
                }

                v59 = OUTLINED_FUNCTION_211_0();
                if ((sub_1D844A4B0(v59, v60, v61, v62, &qword_1ECA389B8, &qword_1D8590B30) & 1) == 0 || *(v0 + v102[19]) != *(v3 + v102[19]))
                {
                  goto LABEL_49;
                }

                v63 = v102[20];
                v65 = *(v0 + v63);
                v64 = *(v0 + v63 + 8);
                v66 = *(v0 + v63 + 16);
                v67 = (v3 + v63);
                v69 = *v67;
                v68 = v67[1];
                v70 = *(v67 + 16);
                if (v66 == 255)
                {
                  v80 = OUTLINED_FUNCTION_146_1();
                  sub_1D84EB994(v80, v81, 255);
                  if (v70 == 255)
                  {
                    v94 = OUTLINED_FUNCTION_199_0();
                    sub_1D84EB994(v94, v95, 255);
                    v96 = OUTLINED_FUNCTION_146_1();
                    sub_1D84EB9AC(v96, v97, 255);
                    goto LABEL_71;
                  }

                  v82 = OUTLINED_FUNCTION_199_0();
                  sub_1D84EB994(v82, v83, v70);
                }

                else
                {
                  v107[0] = v65;
                  v107[1] = v64;
                  v108 = v66;
                  if (v70 != 255)
                  {
                    v105[0] = v69;
                    v105[1] = v68;
                    v106 = v70 & 1;
                    v71 = OUTLINED_FUNCTION_146_1();
                    sub_1D84EB994(v71, v72, v66);
                    v73 = OUTLINED_FUNCTION_199_0();
                    sub_1D84EB994(v73, v74, v70);
                    v75 = OUTLINED_FUNCTION_146_1();
                    sub_1D84EB994(v75, v76, v66);
                    v77 = static GameActivityStaticStat.== infix(_:_:)(v107, v105);
                    OUTLINED_FUNCTION_199_0();
                    sub_1D84C5620();
                    OUTLINED_FUNCTION_146_1();
                    sub_1D84C5620();
                    v78 = OUTLINED_FUNCTION_146_1();
                    sub_1D84EB9AC(v78, v79, v66);
                    if ((v77 & 1) == 0)
                    {
                      goto LABEL_49;
                    }

LABEL_71:
                    sub_1D84C5754(*(v0 + v102[21]), *(v3 + v102[21]));
                    goto LABEL_49;
                  }

                  v84 = OUTLINED_FUNCTION_146_1();
                  sub_1D84EB994(v84, v85, v66);
                  v86 = OUTLINED_FUNCTION_199_0();
                  sub_1D84EB994(v86, v87, 255);
                  v88 = OUTLINED_FUNCTION_146_1();
                  sub_1D84EB994(v88, v89, v66);
                  OUTLINED_FUNCTION_146_1();
                  sub_1D84C5620();
                }

                v90 = OUTLINED_FUNCTION_146_1();
                sub_1D84EB9AC(v90, v91, v66);
                v92 = OUTLINED_FUNCTION_199_0();
                sub_1D84EB9AC(v92, v93, v70);
                goto LABEL_49;
              }

              v45 = OUTLINED_FUNCTION_212_0();
              v46(v45, v4);
            }

            v31 = v18;
LABEL_48:
            sub_1D8436E18(v31, &qword_1ECA39308, &qword_1D85A7960);
            goto LABEL_49;
          }
        }

        else
        {
          OUTLINED_FUNCTION_174_1();
          sub_1D847C204();
          OUTLINED_FUNCTION_55_0(v1 + v35);
          if (!v37)
          {
            v39 = v104;
            (*(v104 + 32))(v103, v1 + v36, v4);
            OUTLINED_FUNCTION_10_3();
            sub_1D84C49BC(v40);
            OUTLINED_FUNCTION_331_1();
            LODWORD(v101) = sub_1D8581208();
            v41 = *(v39 + 8);
            v41(v103, v4);
            v41(v13, v4);
            sub_1D8436E18(v1, &qword_1ECA39300, &unk_1D8591030);
            if ((v101 & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_39;
          }

          OUTLINED_FUNCTION_375_0();
          v38(v13, v4);
        }

        v31 = v1;
        goto LABEL_48;
      }

      OUTLINED_FUNCTION_375_0();
      v29 = OUTLINED_FUNCTION_146_1();
      v30(v29);
    }

    v31 = v22;
    goto LABEL_48;
  }

LABEL_49:
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D84DE89C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  v7 = 0;
  v8 = (v4 + 63) >> 6;
  result = &qword_1EE0E0090;
  v16 = v8;
  if (v6)
  {
    while (2)
    {
      v17 = (v6 - 1) & v6;
LABEL_13:
      sub_1D848211C(&qword_1EE0E0090);

      v12 = sub_1D85811D8();
      v13 = ~(-1 << *(a2 + 32));
      do
      {
        v14 = v12 & v13;
        if (((*(a2 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {

          return 0;
        }

        sub_1D848211C(&unk_1ECA3A0D8);

        v15 = sub_1D8581208();

        v12 = v14 + 1;
      }

      while ((v15 & 1) == 0);

      v8 = v16;
      result = &qword_1EE0E0090;
      v6 = v17;
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v10 = v7;
  while (1)
  {
    v7 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v7 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v7);
    ++v10;
    if (v11)
    {
      v17 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84DEAE0()
{
  OUTLINED_FUNCTION_395_0();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (v4 = v1, (OUTLINED_FUNCTION_7(25705, 0xE200000000000000) & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_237();
    v8 = v4 == v6 && v0 == v7;
    if (v8 || (OUTLINED_FUNCTION_7(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_401_0();
      v11 = v3 && v0 == v10;
      if (v11 || (OUTLINED_FUNCTION_7(v9, 0xEA00000000007365) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v12 = OUTLINED_FUNCTION_474_0();
        v13 = v3 && v0 == 0xE500000000000000;
        if (v13 || (OUTLINED_FUNCTION_7(v12, 0xE500000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v14 = OUTLINED_FUNCTION_421_0();
          v15 = v3 && v0 == 0xE900000000000065;
          if (v15 || (OUTLINED_FUNCTION_7(v14, 0xE900000000000065) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v16 = v4 == 0x6E6F697461657263 && v0 == 0xEC00000065746144;
            if (v16 || (OUTLINED_FUNCTION_7(0x6E6F697461657263, 0xEC00000065746144) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v17 = v4 == 0x7461447472617473 && v0 == 0xE900000000000065;
              if (v17 || (OUTLINED_FUNCTION_7(0x7461447472617473, 0xE900000000000065) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v18 = OUTLINED_FUNCTION_431_0();
                v20 = v4 == v18 && v0 == v19;
                if (v20 || (OUTLINED_FUNCTION_7(v18, v19) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v21 = v4 == 0x65746144646E65 && v0 == 0xE700000000000000;
                  if (v21 || (OUTLINED_FUNCTION_7(0x65746144646E65, 0xE700000000000000) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v22 = v4 == 0x6E6F697461727564 && v0 == 0xE800000000000000;
                    if (v22 || (OUTLINED_FUNCTION_7(0x6E6F697461727564, 0xE800000000000000) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v23 = OUTLINED_FUNCTION_444_0();
                      v25 = v4 == v23 && v0 == v24;
                      if (v25 || (OUTLINED_FUNCTION_7(v23, v24) & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v26 = v4 == 0x53656D69746E7572 && v0 == 0xEC00000073746174;
                        if (v26 || (OUTLINED_FUNCTION_7(0x53656D69746E7572, 0xEC00000073746174) & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v27 = v4 == 0x7069636974726170 && v0 == 0xEC00000073746E61;
                          if (v27 || (OUTLINED_FUNCTION_7(0x7069636974726170, 0xEC00000073746E61) & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v28 = v4 == 0xD000000000000011 && 0x80000001D85867E0 == v0;
                            if (v28 || (OUTLINED_FUNCTION_7(0xD000000000000011, 0x80000001D85867E0) & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v29 = OUTLINED_FUNCTION_403_0();
                              v30 = v3 && v0 == 0xE700000000000000;
                              if (v30 || (OUTLINED_FUNCTION_7(v29, 0xE700000000000000) & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                OUTLINED_FUNCTION_209_0();
                                v32 = v3 && v31 == v0;
                                if (v32 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  OUTLINED_FUNCTION_209_0();
                                  v34 = v3 && v33 == v0;
                                  if (v34 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    OUTLINED_FUNCTION_209_0();
                                    if (v3 && v35 == v0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      OUTLINED_FUNCTION_70_0();
                                      OUTLINED_FUNCTION_369();
                                      if (v4)
                                      {
                                        return 17;
                                      }

                                      else
                                      {
                                        return 18;
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
      }
    }
  }
}

uint64_t sub_1D84DEED0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      v3 = 0x696E69666564;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 2:
      v3 = 0x7265706F7270;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
    case 3:
      return OUTLINED_FUNCTION_321_1();
    case 4:
      return 0x646F437974726170;
    case 5:
      v4 = 1634038371;
      goto LABEL_17;
    case 6:
      return 0x7461447472617473;
    case 7:
      return OUTLINED_FUNCTION_431_0();
    case 8:
      return 0x65746144646E65;
    case 9:
      v4 = 1634891108;
LABEL_17:
      result = v4 | 0x6E6F697400000000;
      break;
    case 10:
      result = OUTLINED_FUNCTION_444_0();
      break;
    case 11:
      result = 0x53656D69746E7572;
      break;
    case 12:
      result = 0x7069636974726170;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x726F7461657263;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84DF0BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84DEAE0();
  *a1 = result;
  return result;
}

uint64_t sub_1D84DF0EC()
{
  sub_1D84EBAC8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84DF124()
{
  sub_1D84EBAC8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityInstance.encode(to:)()
{
  OUTLINED_FUNCTION_285();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E60, &qword_1D859AA40);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_200();
  v6 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v6, v7);
  sub_1D84EBAC8();
  OUTLINED_FUNCTION_377_0(&type metadata for GameActivityInstance.CodingKeys);
  OUTLINED_FUNCTION_117_1();
  sub_1D8581A08();
  if (!v0)
  {

    v8 = OUTLINED_FUNCTION_167();
    __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_160_0();
    sub_1D848211C(v10);
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    OUTLINED_FUNCTION_108_2(&unk_1ECA39AB0);
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    sub_1D84E8D64();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    OUTLINED_FUNCTION_482_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581998();
    v11 = type metadata accessor for GameActivityInstance(0);
    OUTLINED_FUNCTION_488_0();
    sub_1D8580EA8();
    OUTLINED_FUNCTION_10_3();
    sub_1D84C49BC(v12);
    OUTLINED_FUNCTION_82_1();
    sub_1D8581A58();
    OUTLINED_FUNCTION_82_1();
    sub_1D85819E8();
    OUTLINED_FUNCTION_82_1();
    sub_1D85819E8();
    OUTLINED_FUNCTION_82_1();
    sub_1D85819E8();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    OUTLINED_FUNCTION_256_1(*(v11 + 56));
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A08();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E68, &qword_1D859AA48);
    sub_1D84EBB1C();
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E80, &qword_1D859AA50);
    sub_1D84EBBD4();
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E90, &qword_1D859AA58);
    sub_1D84EBC84();
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    OUTLINED_FUNCTION_4();
    sub_1D848211C(v13);
    OUTLINED_FUNCTION_86_1();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();

    OUTLINED_FUNCTION_481_0(15);
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A18();
    v16 = OUTLINED_FUNCTION_256_1(*(v11 + 80));
    v17 = v15;
    v18 = *(v14 + 16);
    sub_1D84EB994(v16, v15, v18);
    sub_1D84D7BAC();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D85819E8();
    sub_1D84EB9AC(v16, v17, v18);
    sub_1D843C310();
    OUTLINED_FUNCTION_88_0();
    OUTLINED_FUNCTION_117_1();
    sub_1D8581A58();
  }

  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_284_0();
}

void GameActivityInstance.hash(into:)()
{
  OUTLINED_FUNCTION_386();
  OUTLINED_FUNCTION_85_1();
  v2 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v46[1] = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v6 = OUTLINED_FUNCTION_363(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21_1();
  v46[0] = v7;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_286_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v46 - v10;
  sub_1D85812B8();
  v12 = *(v1 + 24);
  v47 = *(v1 + 16);
  v48 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39860, &qword_1D85962F0);
  OUTLINED_FUNCTION_5();
  sub_1D848211C(v13);
  OUTLINED_FUNCTION_393();
  sub_1D85811E8();
  sub_1D84BACE8(v0, *(v1 + 32));
  sub_1D84C8B98(v0, *(v1 + 40));
  if (*(v1 + 56))
  {
    OUTLINED_FUNCTION_414();
    sub_1D85812B8();
  }

  else
  {
    OUTLINED_FUNCTION_402();
  }

  v14 = type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_10_3();
  sub_1D84C49BC(v15);
  OUTLINED_FUNCTION_344_1();
  sub_1D85811E8();
  sub_1D847C204();
  OUTLINED_FUNCTION_501(v11, 1, v2);
  if (v16)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    OUTLINED_FUNCTION_492_0();
    v17 = OUTLINED_FUNCTION_241_0();
    v18(v17);
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_350_0();
    v19 = OUTLINED_FUNCTION_233();
    v20(v19);
  }

  sub_1D847C204();
  v21 = OUTLINED_FUNCTION_307_1();
  OUTLINED_FUNCTION_501(v21, v22, v2);
  if (v16)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    OUTLINED_FUNCTION_492_0();
    v23 = OUTLINED_FUNCTION_165_0();
    v24(v23);
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_350_0();
    v25 = OUTLINED_FUNCTION_233();
    v26(v25);
  }

  sub_1D847C204();
  v27 = OUTLINED_FUNCTION_508_0();
  OUTLINED_FUNCTION_501(v27, v28, v2);
  if (v16)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    OUTLINED_FUNCTION_492_0();
    v29 = OUTLINED_FUNCTION_495();
    v30(v29);
    OUTLINED_FUNCTION_414();
    OUTLINED_FUNCTION_350_0();
    v31 = OUTLINED_FUNCTION_233();
    v32(v31);
  }

  sub_1D8581BE8();
  sub_1D85812B8();
  sub_1D84E8514(v0, *(v1 + v14[15]));
  sub_1D84E8A08(v0, *(v1 + v14[16]));
  sub_1D84E8808(v0, *(v1 + v14[17]));
  v33 = (v1 + v14[18]);
  v35 = *v33;
  v34 = v33[1];
  v47 = v35;
  v48 = v34;
  v36 = OUTLINED_FUNCTION_150();
  __swift_instantiateConcreteTypeFromMangledNameV2(v36, v37);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_314_1();
  sub_1D848211C(v38);
  OUTLINED_FUNCTION_393();
  sub_1D85811E8();
  sub_1D8581B78();
  v39 = (v1 + v14[20]);
  v40 = *(v39 + 16);
  if (v40 == 255)
  {
    OUTLINED_FUNCTION_402();
  }

  else
  {
    v41 = *v39;
    v42 = v39[1];
    OUTLINED_FUNCTION_414();
    if (v40)
    {
      OUTLINED_FUNCTION_447();
    }

    else
    {
      OUTLINED_FUNCTION_429();
    }

    v47 = v41;
    v48 = v42;
    v43 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v43, v44);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_314_1();
    sub_1D848211C(v45);
    OUTLINED_FUNCTION_393();
    sub_1D85811E8();
  }

  sub_1D84C8974(v0, *(v1 + v14[21]));
  OUTLINED_FUNCTION_388();
}

uint64_t sub_1D84DFB54(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_379(a1);
  a1(v3);
  return sub_1D8581B98();
}

void GameActivityInstance.init(from:)()
{
  OUTLINED_FUNCTION_285();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v6 = OUTLINED_FUNCTION_363(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_315();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_392_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_212_2();
  v9 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v50 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39EB0, &qword_1D859AA60);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_199();
  v13 = type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_1();
  v17 = v16 - v15;
  OUTLINED_FUNCTION_91_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  OUTLINED_FUNCTION_91_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v9);
  v29 = v17 + v13[20];
  *v29 = 0;
  *(v29 + 8) = 0;
  v52 = v29;
  *(v29 + 16) = -1;
  OUTLINED_FUNCTION_260(v4, v4[3]);
  sub_1D84EBAC8();
  OUTLINED_FUNCTION_419_0();
  sub_1D8581BA8();
  if (v0)
  {
    OUTLINED_FUNCTION_126_1();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_314_1();
    sub_1D8436E18(v30, v31, v32);
    OUTLINED_FUNCTION_314_1();
    sub_1D8436E18(v33, v34, v35);
    OUTLINED_FUNCTION_314_1();
    sub_1D8436E18(v36, v37, v38);
    if (v51)
    {
      OUTLINED_FUNCTION_527_0();
    }

    if (v2)
    {
    }

    sub_1D84EB9AC(*v52, *(v52 + 8), *(v52 + 16));
  }

  else
  {
    LOBYTE(v53) = 0;
    *v17 = sub_1D8581908();
    *(v17 + 8) = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39860, &qword_1D85962F0);
    OUTLINED_FUNCTION_3();
    sub_1D848211C(v40);
    OUTLINED_FUNCTION_155_0();
    sub_1D8581958();
    *(v17 + 16) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    OUTLINED_FUNCTION_104_2(&unk_1ECA39AD8, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_155_0();
    sub_1D8581958();
    *(v17 + 32) = v53;
    sub_1D84E8EB4();
    OUTLINED_FUNCTION_253_1();
    sub_1D8581958();
    *(v17 + 40) = 0;
    OUTLINED_FUNCTION_482_0();
    *(v17 + 48) = sub_1D8581898();
    *(v17 + 56) = v41;
    OUTLINED_FUNCTION_488_0();
    OUTLINED_FUNCTION_10_3();
    sub_1D84C49BC(v42);
    OUTLINED_FUNCTION_170_0();
    sub_1D8581958();
    (*(v50 + 32))(v17 + v13[9], v1, v9);
    OUTLINED_FUNCTION_481_0(6);
    OUTLINED_FUNCTION_170_0();
    sub_1D85818E8();
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_481_0(7);
    OUTLINED_FUNCTION_170_0();
    sub_1D85818E8();
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_481_0(8);
    OUTLINED_FUNCTION_170_0();
    sub_1D85818E8();
    sub_1D84EC2E4();
    OUTLINED_FUNCTION_253_1();
    sub_1D8581958();
    *v13[13] = v53;
    LOBYTE(v53) = 10;
    v43 = sub_1D8581908();
    OUTLINED_FUNCTION_472_0(v43, v44, v13[14]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E68, &qword_1D859AA48);
    sub_1D84EBD90();
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_351_0();
    *v13[15] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E80, &qword_1D859AA50);
    sub_1D84EBE48();
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_351_0();
    *v13[16] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E90, &qword_1D859AA58);
    sub_1D84EBEF8();
    OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_351_0();
    *v13[17] = v53;
    v45 = OUTLINED_FUNCTION_150();
    __swift_instantiateConcreteTypeFromMangledNameV2(v45, v46);
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_314_1();
    sub_1D848211C(v47);
    OUTLINED_FUNCTION_155_0();
    sub_1D8581958();
    *v13[18] = v53;
    LOBYTE(v53) = 15;
    *v13[19] = sub_1D8581918() & 1;
    sub_1D84E8BE8();
    OUTLINED_FUNCTION_253_1();
    sub_1D85818E8();
    sub_1D84EB9AC(*v52, *(v52 + 8), *(v52 + 16));
    *v52 = v53;
    *(v52 + 16) = v54;
    sub_1D8440A64();
    OUTLINED_FUNCTION_253_1();
    sub_1D8581958();
    v48 = OUTLINED_FUNCTION_150_1();
    v49(v48);
    *v13[21] = 15;
    OUTLINED_FUNCTION_9_1();
    sub_1D84EA648();
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_244_1();
    sub_1D84EB2B8();
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84E06BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D8581B58();
  a4(v6);
  return sub_1D8581B98();
}

uint64_t sub_1D84E0700@<X0>(uint64_t *a1@<X8>)
{
  result = DefaultGameActivityEnvironment.language.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D84E073C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001D8586840 == a2;
  if (v3 || (OUTLINED_FUNCTION_7(0xD000000000000019, 0x80000001D8586840) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_429_0();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_7(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_209_0();
      v10 = v3 && v9 == a2;
      if (v10 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v11 = a1 == 0x5564696C61766E69 && a2 == 0xEA00000000004C52;
        if (v11 || (OUTLINED_FUNCTION_7(0x5564696C61766E69, 0xEA00000000004C52) & 1) != 0)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_209_0();
          v13 = v3 && v12 == a2;
          if (v13 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7461636572706564 && a2 == 0xEA00000000006465)
          {

            return 5;
          }

          else
          {
            OUTLINED_FUNCTION_7(0x7461636572706564, 0xEA00000000006465);
            OUTLINED_FUNCTION_369();
            if (a1)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

void sub_1D84E08C4()
{
  OUTLINED_FUNCTION_429_0();
  switch(v0)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_186_1();
      break;
    default:
      return;
  }
}

uint64_t sub_1D84E098C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D84E073C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D84E09B4()
{
  sub_1D84EC004();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E09EC()
{
  sub_1D84EC004();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0A24()
{
  sub_1D84EC058();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0A5C()
{
  sub_1D84EC058();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0A94()
{
  sub_1D84EC1FC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0ACC()
{
  sub_1D84EC1FC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0B04()
{
  sub_1D84EC1A8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0B3C()
{
  sub_1D84EC1A8();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0B74()
{
  sub_1D84EC154();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0BAC()
{
  sub_1D84EC154();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0BE4()
{
  sub_1D84EC100();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0C1C()
{
  sub_1D84EC100();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t sub_1D84E0C54()
{
  sub_1D84EC0AC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E0C8C()
{
  sub_1D84EC0AC();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

void GameActivityInstance.URLParseError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_285();
  a25 = v30;
  a26 = v31;
  v33 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39EE0, &qword_1D859AA68);
  OUTLINED_FUNCTION_1();
  v76 = v35;
  v77 = v34;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_196();
  v75 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39EE8, &qword_1D859AA70);
  OUTLINED_FUNCTION_1();
  v73 = v39;
  v74 = v38;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_469_0(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39EF0, &qword_1D859AA78);
  OUTLINED_FUNCTION_1();
  v70 = v43;
  v71 = v42;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_196();
  v69 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39EF8, &qword_1D859AA80);
  OUTLINED_FUNCTION_1();
  v67 = v47;
  v68 = v46;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_196();
  v66 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F00, &qword_1D859AA88);
  OUTLINED_FUNCTION_1();
  v64 = v51;
  v65 = v50;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_199();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F08, &qword_1D859AA90);
  OUTLINED_FUNCTION_1();
  v62 = v54;
  v63 = v53;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_110();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F10, &qword_1D859AA98);
  OUTLINED_FUNCTION_1();
  v57 = v56;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_129();
  v59 = *v26;
  OUTLINED_FUNCTION_260(v33, v33[3]);
  sub_1D84EC004();
  OUTLINED_FUNCTION_494();
  sub_1D8581BB8();
  switch(v59)
  {
    case 1:
      a12 = 1;
      sub_1D84EC1A8();
      v59 = v78;
      OUTLINED_FUNCTION_243_1();
      sub_1D8581988();
      (*(v64 + 8))(v29, v65);
      goto LABEL_9;
    case 2:
      a13 = 2;
      sub_1D84EC154();
      v27 = v66;
      OUTLINED_FUNCTION_136_1(&type metadata for GameActivityInstance.URLParseError.InvalidPartyCodeCodingKeys, &a13);
      v61 = v67;
      v60 = v68;
      goto LABEL_8;
    case 3:
      a14 = 3;
      sub_1D84EC100();
      v27 = v69;
      OUTLINED_FUNCTION_136_1(&type metadata for GameActivityInstance.URLParseError.InvalidURLCodingKeys, &a14);
      v61 = v70;
      v60 = v71;
      goto LABEL_8;
    case 4:
      a15 = 4;
      sub_1D84EC0AC();
      v27 = v72;
      OUTLINED_FUNCTION_136_1(&type metadata for GameActivityInstance.URLParseError.MissingComponentCodingKeys, &a15);
      v61 = v73;
      v60 = v74;
      goto LABEL_8;
    case 5:
      a16 = 5;
      sub_1D84EC058();
      v27 = v75;
      OUTLINED_FUNCTION_136_1(&type metadata for GameActivityInstance.URLParseError.DeprecatedCodingKeys, &a16);
      v61 = v76;
      v60 = v77;
      goto LABEL_8;
    default:
      a11 = 0;
      sub_1D84EC1FC();
      OUTLINED_FUNCTION_136_1(&type metadata for GameActivityInstance.URLParseError.FailureGeneratingInstanceCodingKeys, &a11);
      v61 = v62;
      v60 = v63;
LABEL_8:
      (*(v61 + 8))(v27, v60);
LABEL_9:
      (*(v57 + 8))(v28, v59);
      OUTLINED_FUNCTION_284_0();
      return;
  }
}

uint64_t GameActivityInstance.URLParseError.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_379(a1);
  v1 = OUTLINED_FUNCTION_298();
  MEMORY[0x1DA7191F0](v1);
  return sub_1D8581B98();
}

void GameActivityInstance.URLParseError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_285();
  a25 = v28;
  a26 = v29;
  v31 = v30;
  v81 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F18, &qword_1D859AAA0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_469_0(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F20, &qword_1D859AAA8);
  OUTLINED_FUNCTION_1();
  v79 = v35;
  v80 = v36;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_196();
  v83 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F28, &qword_1D859AAB0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_409_0(v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F30, &qword_1D859AAB8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F38, &qword_1D859AAC0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_200();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F40, &qword_1D859AAC8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_199();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F48, &qword_1D859AAD0);
  OUTLINED_FUNCTION_1();
  v82 = v46;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_260(v31, v31[3]);
  sub_1D84EC004();
  OUTLINED_FUNCTION_494();
  sub_1D8581BA8();
  if (!v26)
  {
    v77 = v31;
    v78 = v27;
    v48 = sub_1D8581968();
    sub_1D8440880(v48, 0);
    v50 = v49;
    v52 = v45;
    if (v53 == v51 >> 1)
    {
      v54 = v82;
    }

    else
    {
      OUTLINED_FUNCTION_159();
      OUTLINED_FUNCTION_360();
      if (v59 == v60)
      {
        __break(1u);
        return;
      }

      v61 = *(v58 + v56);
      sub_1D84408DC(v56 + 1, v55, v50, v58, v56, v57);
      v63 = v62;
      v65 = v64;
      swift_unknownObjectRelease();
      if (v63 == v65 >> 1)
      {
        switch(v61)
        {
          case 1:
            a12 = 1;
            sub_1D84EC1A8();
            OUTLINED_FUNCTION_208_1(&type metadata for GameActivityInstance.URLParseError.InvalidGameIDCodingKeys, &a12);
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 2:
            a13 = 2;
            sub_1D84EC154();
            OUTLINED_FUNCTION_208_1(&type metadata for GameActivityInstance.URLParseError.InvalidPartyCodeCodingKeys, &a13);
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 3:
            a14 = 3;
            sub_1D84EC100();
            OUTLINED_FUNCTION_208_1(&type metadata for GameActivityInstance.URLParseError.InvalidURLCodingKeys, &a14);
            swift_unknownObjectRelease();
            goto LABEL_18;
          case 4:
            a15 = 4;
            sub_1D84EC0AC();
            sub_1D8581878();
            swift_unknownObjectRelease();
            (*(v80 + 8))(v83, v79);
            goto LABEL_20;
          case 5:
            a16 = 5;
            sub_1D84EC058();
            OUTLINED_FUNCTION_208_1(&type metadata for GameActivityInstance.URLParseError.DeprecatedCodingKeys, &a16);
            swift_unknownObjectRelease();
LABEL_18:
            v66 = OUTLINED_FUNCTION_212_0();
            break;
          default:
            a11 = 0;
            sub_1D84EC1FC();
            OUTLINED_FUNCTION_208_1(&type metadata for GameActivityInstance.URLParseError.FailureGeneratingInstanceCodingKeys, &a11);
            swift_unknownObjectRelease();
            v66 = OUTLINED_FUNCTION_212_0();
            v68 = v43;
            break;
        }

        v67(v66, v68);
LABEL_20:
        v75 = OUTLINED_FUNCTION_150();
        v76(v75);
        *v81 = v61;
        v74 = v77;
        goto LABEL_12;
      }

      v54 = v82;
      v52 = v45;
    }

    v69 = sub_1D85817C8();
    OUTLINED_FUNCTION_446(v69, MEMORY[0x1E69E6B28]);
    v71 = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38AD0, &qword_1D8590AE0);
    *v71 = &type metadata for GameActivityInstance.URLParseError;
    v72 = sub_1D8581888();
    OUTLINED_FUNCTION_186(v72);
    OUTLINED_FUNCTION_206_0();
    (*(v73 + 104))(v71);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v78, v52);
    v31 = v77;
  }

  v74 = v31;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v74);
  OUTLINED_FUNCTION_284_0();
}

uint64_t GameActivityInstance.URLParseResult.activityInstance.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  type metadata accessor for GameActivityInstance.URLParseResult(v0);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_400(v1);
  return sub_1D84EA648();
}

uint64_t GameActivityInstance.URLParseResult.storeFront.getter()
{
  type metadata accessor for GameActivityInstance.URLParseResult(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.URLParseResult.init(gameBundleID:activityInstance:storeFront:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v9 = type metadata accessor for GameActivityInstance.URLParseResult(0);
  OUTLINED_FUNCTION_240_1();
  result = sub_1D84EB32C();
  v11 = (a6 + *(v9 + 24));
  *v11 = a4;
  v11[1] = a5;
  return result;
}

uint64_t sub_1D84E19CC()
{
  OUTLINED_FUNCTION_263_0();
  v2 = OUTLINED_FUNCTION_333_1();
  v4 = v1 == v2 && v0 == v3;
  if (v4 || (OUTLINED_FUNCTION_7(v2, v3) & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_184_0();
    v8 = v1 == v7 && v6 == v0;
    if (v8 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_299_0();
      if (v1 == v9 && v0 == v10)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_7(v9, 0xEA0000000000746ELL);
        OUTLINED_FUNCTION_369();
        if (v1)
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
}

uint64_t sub_1D84E1A90(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_333_1();
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x6F724665726F7473;
}

uint64_t sub_1D84E1AF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84E19CC();
  *a1 = result;
  return result;
}

uint64_t sub_1D84E1B20()
{
  sub_1D84EC270();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E1B58()
{
  sub_1D84EC270();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t GameActivityInstance.URLParseResult.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F50, &qword_1D859AAD8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v2, v3);
  sub_1D84EC270();
  OUTLINED_FUNCTION_377_0(&type metadata for GameActivityInstance.URLParseResult.CodingKeys);
  sub_1D8581A08();
  if (!v0)
  {
    type metadata accessor for GameActivityInstance.URLParseResult(0);
    OUTLINED_FUNCTION_378_0();
    type metadata accessor for GameActivityInstance(0);
    OUTLINED_FUNCTION_14_1();
    sub_1D84C49BC(v4);
    OUTLINED_FUNCTION_361();
    sub_1D8581A58();
    sub_1D8581998();
  }

  v5 = OUTLINED_FUNCTION_291();
  return v6(v5);
}

void GameActivityInstance.URLParseResult.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_285();
  v28 = v27;
  type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_309();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F58, &qword_1D859AAE0);
  OUTLINED_FUNCTION_1();
  v44 = v31;
  v45 = v30;
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_250_0();
  v33 = type metadata accessor for GameActivityInstance.URLParseResult(0);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_227_0();
  v35 = OUTLINED_FUNCTION_308_0();
  OUTLINED_FUNCTION_260(v35, v36);
  sub_1D84EC270();
  sub_1D8581BA8();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v46 = v28;
    v37 = v26;
    *v26 = sub_1D8581908();
    v26[1] = v38;
    OUTLINED_FUNCTION_378_0();
    OUTLINED_FUNCTION_14_1();
    sub_1D84C49BC(v39);
    sub_1D8581958();
    OUTLINED_FUNCTION_240_1();
    sub_1D84EB32C();
    v40 = sub_1D8581898();
    v42 = v41;
    (*(v44 + 8))(v25, v45);
    v43 = (v37 + *(v33 + 24));
    *v43 = v40;
    v43[1] = v42;
    sub_1D84EA648();
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_1D84EB2B8();
  }

  OUTLINED_FUNCTION_284_0();
}

uint64_t GameActivityInstance.ParsedLink.gameBundleID.setter()
{
  OUTLINED_FUNCTION_129_0();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.adamID.setter()
{
  OUTLINED_FUNCTION_129_0();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_1D84E2174()
{
  v0 = OUTLINED_FUNCTION_393_0();
  type metadata accessor for GameActivityInstance(v0);
  OUTLINED_FUNCTION_123();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t GameActivityInstance.ParsedLink.activityInstance.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance.ParsedLink(v0);
  OUTLINED_FUNCTION_400(*(v1 + 24));
  return sub_1D847C204();
}

uint64_t GameActivityInstance.ParsedLink.activityInstance.setter()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance.ParsedLink(v0);
  return OUTLINED_FUNCTION_528();
}

uint64_t GameActivityInstance.ParsedLink.activityInstance.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance.ParsedLink(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.ParsedLink.gameActivityDefinitionID.getter()
{
  type metadata accessor for GameActivityInstance.ParsedLink(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.gameActivityDefinitionID.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  type metadata accessor for GameActivityInstance.ParsedLink(v3);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.gameActivityDefinitionID.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance.ParsedLink(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.ParsedLink.partyCode.getter()
{
  type metadata accessor for GameActivityInstance.ParsedLink(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.partyCode.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  type metadata accessor for GameActivityInstance.ParsedLink(v3);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.partyCode.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance.ParsedLink(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.ParsedLink.shortGroupID.getter()
{
  type metadata accessor for GameActivityInstance.ParsedLink(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.shortGroupID.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  type metadata accessor for GameActivityInstance.ParsedLink(v3);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.shortGroupID.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance.ParsedLink(v0);
  return OUTLINED_FUNCTION_106();
}

void sub_1D84E2498(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
}

uint64_t GameActivityInstance.ParsedLink.deepLinkStat.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance.ParsedLink(v0);
  v2 = OUTLINED_FUNCTION_417_0(*(v1 + 40));

  return sub_1D84EB994(v2, v3, v4);
}

uint64_t GameActivityInstance.ParsedLink.deepLinkStat.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for GameActivityInstance.ParsedLink(0) + 40);
  result = sub_1D84EB9AC(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.deepLinkStat.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance.ParsedLink(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t sub_1D84E258C(uint64_t (*a1)(void))
{
  a1(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.inviterPlayerID.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  type metadata accessor for GameActivityInstance.ParsedLink(v3);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.inviterPlayerID.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance.ParsedLink(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.ParsedLink.storeFront.getter()
{
  type metadata accessor for GameActivityInstance.ParsedLink(0);
  OUTLINED_FUNCTION_188_1();
  return OUTLINED_FUNCTION_194();
}

uint64_t GameActivityInstance.ParsedLink.storeFront.setter()
{
  v3 = OUTLINED_FUNCTION_119_0();
  type metadata accessor for GameActivityInstance.ParsedLink(v3);
  result = OUTLINED_FUNCTION_235_1();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.storeFront.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance.ParsedLink(v0);
  return OUTLINED_FUNCTION_106();
}

uint64_t GameActivityInstance.ParsedLink.properties.getter()
{
  type metadata accessor for GameActivityInstance.ParsedLink(0);
}

uint64_t GameActivityInstance.ParsedLink.properties.setter()
{
  v2 = OUTLINED_FUNCTION_85_1();
  v3 = *(type metadata accessor for GameActivityInstance.ParsedLink(v2) + 52);

  *(v1 + v3) = v0;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.properties.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance.ParsedLink(v0);
  return OUTLINED_FUNCTION_106();
}

void GameActivityInstance.ParsedLink.parsingError.getter()
{
  v0 = OUTLINED_FUNCTION_393_0();
  v1 = type metadata accessor for GameActivityInstance.ParsedLink(v0);
  OUTLINED_FUNCTION_493_0(*(v1 + 56));
}

uint64_t GameActivityInstance.ParsedLink.parsingError.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for GameActivityInstance.ParsedLink(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t GameActivityInstance.ParsedLink.parsingError.modify()
{
  v0 = OUTLINED_FUNCTION_85_1();
  type metadata accessor for GameActivityInstance.ParsedLink(v0);
  return OUTLINED_FUNCTION_106();
}

void GameActivityInstance.ParsedLink.init()()
{
  v1 = OUTLINED_FUNCTION_393_0();
  v2 = type metadata accessor for GameActivityInstance.ParsedLink(v1);
  *v0 = 0u;
  v0[1] = 0u;
  type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_357_0(v2[7]);
  OUTLINED_FUNCTION_357_0(v2[8]);
  OUTLINED_FUNCTION_357_0(v2[9]);
  OUTLINED_FUNCTION_357_0(v2[10]);
  *(v7 + 16) = -1;
  OUTLINED_FUNCTION_357_0(v2[11]);
  OUTLINED_FUNCTION_357_0(v2[12]);
  *(v0 + v2[13]) = MEMORY[0x1E69E7CC8];
  *(v0 + v2[14]) = 6;
}

uint64_t sub_1D84E28E4()
{
  OUTLINED_FUNCTION_263_0();
  v3 = v1 == 0x646E7542656D6167 && v2 == 0xEC0000004449656CLL;
  if (v3 || (OUTLINED_FUNCTION_7(0x646E7542656D6167, 0xEC0000004449656CLL) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x44496D616461 && v0 == 0xE600000000000000;
    if (v5 || (OUTLINED_FUNCTION_7(0x44496D616461, 0xE600000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_385_0();
      v7 = v3 && v6 == v0;
      if (v7 || (OUTLINED_FUNCTION_70_0() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = v1 == 0xD000000000000018 && 0x80000001D85868C0 == v0;
        if (v8 || (OUTLINED_FUNCTION_7(0xD000000000000018, 0x80000001D85868C0) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = OUTLINED_FUNCTION_421_0();
          v11 = v3 && v0 == v10;
          if (v11 || (OUTLINED_FUNCTION_7(v9, 0xE900000000000065) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = OUTLINED_FUNCTION_444_0();
            v13 = v1 == v12 && v0 == 0xEC00000044497075;
            if (v13 || (OUTLINED_FUNCTION_7(v12, 0xEC00000044497075) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v14 = OUTLINED_FUNCTION_460_0();
              v16 = v1 == v14 && v0 == v15;
              if (v16 || (OUTLINED_FUNCTION_7(v14, v15) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v17 = OUTLINED_FUNCTION_428_0();
                v19 = v1 == v17 && v0 == v18;
                if (v19 || (OUTLINED_FUNCTION_7(v17, v18) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v20 = OUTLINED_FUNCTION_299_0();
                  v21 = v1 == v20 && v0 == 0xEA0000000000746ELL;
                  if (v21 || (OUTLINED_FUNCTION_7(v20, 0xEA0000000000746ELL) & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v22 = OUTLINED_FUNCTION_401_0();
                    v23 = v3 && v0 == 0xEA00000000007365;
                    if (v23 || (OUTLINED_FUNCTION_7(v22, 0xEA00000000007365) & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v24 = OUTLINED_FUNCTION_459_0();
                      if (v1 == v24 && v0 == v25)
                      {

                        return 10;
                      }

                      else
                      {
                        OUTLINED_FUNCTION_7(v24, v25);
                        OUTLINED_FUNCTION_369();
                        if (v1)
                        {
                          return 10;
                        }

                        else
                        {
                          return 11;
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

void sub_1D84E2B38(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_333_1();
  switch(v2)
  {
    case 2:
      OUTLINED_FUNCTION_186_1();
      break;
    case 6:
      OUTLINED_FUNCTION_460_0();
      break;
    case 7:
      OUTLINED_FUNCTION_428_0();
      break;
    case 9:
      OUTLINED_FUNCTION_443_0();
      break;
    case 10:
      OUTLINED_FUNCTION_459_0();
      break;
    default:
      return;
  }
}

uint64_t sub_1D84E2C74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D84E28E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D84E2CA4()
{
  sub_1D84EC33C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB70](v0, v1);
}

uint64_t sub_1D84E2CDC()
{
  sub_1D84EC33C();
  v0 = OUTLINED_FUNCTION_154();

  return MEMORY[0x1EEE6BB78](v0, v1);
}

uint64_t GameActivityInstance.ParsedLink.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F60, &qword_1D859AAE8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_110();
  v2 = OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_260(v2, v3);
  sub_1D84EC33C();
  OUTLINED_FUNCTION_377_0(&type metadata for GameActivityInstance.ParsedLink.CodingKeys);
  OUTLINED_FUNCTION_232();
  sub_1D8581998();
  if (!v0)
  {
    OUTLINED_FUNCTION_107_1(1);
    v4 = type metadata accessor for GameActivityInstance.ParsedLink(0);
    type metadata accessor for GameActivityInstance(0);
    OUTLINED_FUNCTION_14_1();
    sub_1D84C49BC(v5);
    OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();
    OUTLINED_FUNCTION_256_1(v4[7]);
    OUTLINED_FUNCTION_107_1(3);
    OUTLINED_FUNCTION_256_1(v4[8]);
    OUTLINED_FUNCTION_107_1(4);
    OUTLINED_FUNCTION_256_1(v4[9]);
    OUTLINED_FUNCTION_107_1(5);
    v11 = OUTLINED_FUNCTION_256_1(v4[10]);
    v12 = v7;
    v13 = *(v6 + 16);
    sub_1D84EB994(v11, v7, v13);
    sub_1D84D7BAC();
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();
    sub_1D84EB9AC(v11, v12, v13);
    OUTLINED_FUNCTION_256_1(v4[11]);
    OUTLINED_FUNCTION_107_1(7);
    OUTLINED_FUNCTION_256_1(v4[12]);
    OUTLINED_FUNCTION_107_1(8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    OUTLINED_FUNCTION_108_2(&unk_1ECA39AB0);
    OUTLINED_FUNCTION_361();
    OUTLINED_FUNCTION_232();
    sub_1D8581A58();
    sub_1D84EC390();
    OUTLINED_FUNCTION_232();
    sub_1D85819E8();
  }

  v8 = OUTLINED_FUNCTION_291();
  return v9(v8);
}

void GameActivityInstance.ParsedLink.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_285();
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39968, &qword_1D8596368);
  OUTLINED_FUNCTION_363(v27);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_196();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F70, &qword_1D859AAF0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_196();
  v30 = OUTLINED_FUNCTION_5_0();
  v31 = type metadata accessor for GameActivityInstance.ParsedLink(v30);
  v32 = (v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  *v24 = 0u;
  *(v24 + 16) = 0u;
  type metadata accessor for GameActivityInstance(0);
  OUTLINED_FUNCTION_123();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_361_0(v32[9]);
  v55 = v37;
  v38 = (v24 + v32[10]);
  *v38 = 0;
  v38[1] = 0;
  v39 = (v24 + v32[11]);
  *v39 = 0;
  v39[1] = 0;
  v40 = v24 + v32[12];
  *v40 = 0;
  *(v40 + 8) = 0;
  *(v40 + 16) = -1;
  v41 = (v24 + v32[13]);
  *v41 = 0;
  v41[1] = 0;
  v42 = (v24 + v32[14]);
  *v42 = 0;
  v42[1] = 0;
  v54 = v32[15];
  *(v24 + v54) = MEMORY[0x1E69E7CC8];
  v43 = v32[16];
  *(v24 + v43) = 6;
  OUTLINED_FUNCTION_260(v26, v26[3]);
  sub_1D84EC33C();
  sub_1D8581BA8();
  if (!v23)
  {
    OUTLINED_FUNCTION_312_0();
    *v24 = sub_1D8581898();
    *(v24 + 8) = v44;
    OUTLINED_FUNCTION_312_0();
    *(v24 + 16) = sub_1D8581898();
    *(v24 + 24) = v45;
    LOBYTE(v56) = 2;
    OUTLINED_FUNCTION_14_1();
    sub_1D84C49BC(v46);
    OUTLINED_FUNCTION_312_0();
    sub_1D85818E8();
    sub_1D84EC2E4();
    *v55 = OUTLINED_FUNCTION_184_1(3);
    v55[1] = v47;
    *v38 = OUTLINED_FUNCTION_184_1(4);
    v38[1] = v48;
    *v39 = OUTLINED_FUNCTION_184_1(5);
    v39[1] = v49;
    sub_1D84E8BE8();
    OUTLINED_FUNCTION_312_0();
    sub_1D85818E8();
    sub_1D84EB9AC(*v40, *(v40 + 8), *(v40 + 16));
    *v40 = v56;
    *(v40 + 8) = v57;
    *(v40 + 16) = v58;
    LOBYTE(v56) = 7;
    *v41 = sub_1D8581898();
    v41[1] = v50;
    *v42 = OUTLINED_FUNCTION_184_1(8);
    v42[1] = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39AA8, &qword_1D859A9B0);
    OUTLINED_FUNCTION_104_2(&unk_1ECA39AD8, MEMORY[0x1E69E6190]);
    OUTLINED_FUNCTION_501_0();
    sub_1D8581958();
    *(v24 + v54) = v56;
    sub_1D84EC3E4();
    OUTLINED_FUNCTION_259_1();
    sub_1D85818E8();
    v52 = OUTLINED_FUNCTION_151();
    v53(v52);
    *(v24 + v43) = 7;
    OUTLINED_FUNCTION_31_1();
    sub_1D84EA648();
  }

  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_80_0();
  sub_1D84EB2B8();
  OUTLINED_FUNCTION_342_1();
  OUTLINED_FUNCTION_284_0();
}

void static GameActivityInstance.parseResult(from:activityEnvironment:creatorPlayerID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_386();
  a19 = v22;
  a20 = v23;
  v436 = v24;
  v435 = v25;
  v27 = v26;
  v454 = v28;
  v456 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v31 = OUTLINED_FUNCTION_363(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v34);
  v429 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v428 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_19_0();
  v38 = OUTLINED_FUNCTION_66_0(v37);
  v39 = type metadata accessor for GameActivityInstance(v38);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_190_1(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F80, &qword_1D859AAF8);
  OUTLINED_FUNCTION_363(v44);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_66_0(v46);
  v434 = sub_1D8580EE8();
  OUTLINED_FUNCTION_1();
  v433 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_190_1(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F88, &unk_1D859AB00);
  OUTLINED_FUNCTION_363(v50);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_66_0(v52);
  sub_1D8580B88();
  OUTLINED_FUNCTION_1();
  v448 = v54;
  v449 = v53;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_245_1();
  v450 = v57;
  OUTLINED_FUNCTION_5_0();
  sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v451 = v59;
  v452 = v58;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E50, &unk_1D859AA30);
  v61 = OUTLINED_FUNCTION_363(v60);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_315();
  OUTLINED_FUNCTION_292();
  MEMORY[0x1EEE9AC00](v62);
  v64 = v408 - v63;
  v65 = sub_1D8580C68();
  OUTLINED_FUNCTION_1();
  v67 = v66;
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_21_1();
  v453 = v69;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v70);
  v72 = (v408 - v71);
  v73 = type metadata accessor for GameActivityInstance.ParsedLink(0);
  v74 = (v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_228_1();
  *v20 = 0u;
  *(v20 + 1) = 0u;
  v426 = v20 + v74[8];
  OUTLINED_FUNCTION_123();
  v431 = v39;
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v39);
  OUTLINED_FUNCTION_361_0(v74[9]);
  v441 = v78;
  OUTLINED_FUNCTION_361_0(v74[10]);
  v440 = v79;
  OUTLINED_FUNCTION_361_0(v74[11]);
  v439 = v80;
  v81 = v20 + v74[12];
  *v81 = 0;
  *(v81 + 1) = 0;
  v438 = v81;
  v81[16] = -1;
  OUTLINED_FUNCTION_361_0(v74[13]);
  v443 = v82;
  OUTLINED_FUNCTION_361_0(v74[14]);
  OUTLINED_FUNCTION_302_0(v83);
  v442 = v74[15];
  *(v20 + v442) = MEMORY[0x1E69E7CC8];
  v84 = v74[16];
  v455 = v20;
  *(v20 + v84) = 6;
  sub_1D8580BB8();
  OUTLINED_FUNCTION_311_0();
  OUTLINED_FUNCTION_501(v85, v86, v87);
  if (v99)
  {
    sub_1D8436E18(v64, &qword_1ECA39E50, &unk_1D859AA30);
LABEL_31:
    *(v455 + v84) = 3;
    sub_1D84EB32C();
LABEL_32:
    OUTLINED_FUNCTION_388();
    return;
  }

  v447 = v84;
  v84 = v67 + 32;
  v88 = *(v67 + 32);
  v89 = OUTLINED_FUNCTION_506();
  v88(v89);
  v425 = v27;
  v90 = OUTLINED_FUNCTION_151();
  __swift_project_boxed_opaque_existential_1(v90, v91);
  v92 = OUTLINED_FUNCTION_344_1();
  v93(v92);
  sub_1D8580BB8();
  v94 = OUTLINED_FUNCTION_212_0();
  v95(v94);
  OUTLINED_FUNCTION_311_0();
  OUTLINED_FUNCTION_501(v96, v97, v98);
  v100 = v65;
  if (v99)
  {
    v101 = OUTLINED_FUNCTION_77();
    v102(v101);
    sub_1D8436E18(v21, &qword_1ECA39E50, &unk_1D859AA30);
    OUTLINED_FUNCTION_127_1();
    goto LABEL_31;
  }

  v103 = v67;
  v104 = OUTLINED_FUNCTION_241_0();
  v88(v104);
  v105 = sub_1D8580C18();
  v107 = v106;
  v108 = sub_1D8580C18();
  v110 = v109;
  v111 = v72;
  if (v107)
  {
    if (!v109)
    {
      OUTLINED_FUNCTION_127_1();
LABEL_29:

      goto LABEL_30;
    }

    v112 = v105 == v108 && v107 == v109;
    v84 = v447;
    if (v112)
    {
    }

    else
    {
      v113 = sub_1D8581AB8();

      if ((v113 & 1) == 0)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_127_1();
    if (v110)
    {
LABEL_28:
      v107 = v110;
      goto LABEL_29;
    }
  }

  v114 = sub_1D8580BD8();
  v107 = v115;
  v116 = sub_1D8580BD8();
  v110 = v117;
  if (!v107)
  {
    if (!v117)
    {
      goto LABEL_34;
    }

    goto LABEL_28;
  }

  if (!v117)
  {
    goto LABEL_29;
  }

  if (v114 != v116 || v107 != v117)
  {
    OUTLINED_FUNCTION_506();
    v119 = sub_1D8581AB8();

    if (v119)
    {
      goto LABEL_34;
    }

LABEL_30:
    v120 = OUTLINED_FUNCTION_355_0();
    v107(v120, v100);
    v121 = OUTLINED_FUNCTION_233();
    (v107)(v121);
    goto LABEL_31;
  }

LABEL_34:
  v451 = v100;
  v424 = v111;
  v122 = v111;
  sub_1D8580BF8();
  OUTLINED_FUNCTION_471_0();
  MEMORY[0x1EEE9AC00](v123);
  OUTLINED_FUNCTION_413_0();
  v128 = sub_1D84E6E0C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D84EC464, v124, v125, v126, v127);
  v452 = 0;
  v129 = *(v128 + 2);
  v454 = v103;
  if (v129)
  {
    OUTLINED_FUNCTION_437_0(MEMORY[0x1E69E7CC0]);
    v84 = 0;
    v130 = v460;
    v131 = v128 + 56;
    while (v84 < *(v128 + 2))
    {
      v122 = *(v131 - 3);

      v132 = OUTLINED_FUNCTION_150();
      v133 = MEMORY[0x1DA718930](v132);
      v135 = v134;

      v460 = v130;
      v137 = v130[2];
      v136 = v130[3];
      if (v137 >= v136 >> 1)
      {
        v139 = OUTLINED_FUNCTION_337_0(v136);
        v122 = &v460;
        sub_1D84E8374(v139, v137 + 1, 1);
        v130 = v460;
      }

      ++v84;
      v130[2] = v137 + 1;
      v138 = &v130[2 * v137];
      v138[4] = v133;
      v138[5] = v135;
      v131 += 32;
      if (v129 == v84)
      {

        OUTLINED_FUNCTION_127_1();
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_162:
    __break(1u);
    goto LABEL_163;
  }

  v130 = MEMORY[0x1E69E7CC0];
LABEL_42:
  sub_1D8580BF8();
  OUTLINED_FUNCTION_471_0();
  MEMORY[0x1EEE9AC00](v140);
  OUTLINED_FUNCTION_413_0();
  v141 = v452;
  v131 = sub_1D84E6E0C(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D84F0B94, v142, v143, v144, v145);
  v423 = v141;
  v146 = *(v131 + 2);
  if (v146)
  {
    OUTLINED_FUNCTION_437_0(MEMORY[0x1E69E7CC0]);
    v84 = 0;
    v122 = v460;
    v147 = v131 + 56;
    do
    {
      if (v84 >= *(v131 + 2))
      {
        goto LABEL_162;
      }

      OUTLINED_FUNCTION_269_1();
      v148 = MEMORY[0x1DA718930]();
      v150 = v149;

      v460 = v122;
      v152 = v122[2];
      v151 = v122[3];
      if (v152 >= v151 >> 1)
      {
        v154 = OUTLINED_FUNCTION_337_0(v151);
        sub_1D84E8374(v154, v152 + 1, 1);
        v122 = v460;
      }

      ++v84;
      v122[2] = v152 + 1;
      v153 = &v122[2 * v152];
      v153[4] = v148;
      v153[5] = v150;
      v147 += 32;
    }

    while (v146 != v84);

    OUTLINED_FUNCTION_219_2();
  }

  else
  {

    v122 = MEMORY[0x1E69E7CC0];
  }

  v155 = v130[2];
  if (v155 != v122[2] || v155 <= 1)
  {

    v157 = v451;
LABEL_91:

    v198 = OUTLINED_FUNCTION_355_0();
    (v155)(v198, v157);
    v199 = OUTLINED_FUNCTION_252_2();
    (v155)(v199, v157);
    v200 = 3;
LABEL_92:
    *(v455 + v84) = v200;
    OUTLINED_FUNCTION_31_1();
    goto LABEL_93;
  }

  sub_1D84E5780(1uLL, v130[2], v130);
  v159 = v158;
  v161 = v160;
  if (v160)
  {
    sub_1D8581AC8();
    swift_unknownObjectRetain_n();
    v165 = swift_dynamicCastClass();
    if (!v165)
    {
      swift_unknownObjectRelease();
      v165 = MEMORY[0x1E69E7CC0];
    }

    v84 = *(v165 + 16);

    if (__OFSUB__(v161 >> 1, v159))
    {
      __break(1u);
      goto LABEL_216;
    }

    if (v84 != (v161 >> 1) - v159)
    {
      goto LABEL_217;
    }

    v161 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_127_1();
    if (v161)
    {
      goto LABEL_64;
    }

    v161 = MEMORY[0x1E69E7CC0];
    goto LABEL_63;
  }

  while (1)
  {
    v162 = OUTLINED_FUNCTION_233();
    sub_1D84E773C(v162, v163, v159, v161);
    v161 = v164;
LABEL_63:
    swift_unknownObjectRelease();
LABEL_64:
    OUTLINED_FUNCTION_231();
    sub_1D84E5780(v166, v167, v168);
    v159 = v169;
    v171 = v170;

    if ((v171 & 1) == 0)
    {
      goto LABEL_65;
    }

    sub_1D8581AC8();
    swift_unknownObjectRetain_n();
    v176 = swift_dynamicCastClass();
    if (!v176)
    {
      swift_unknownObjectRelease();
      v176 = MEMORY[0x1E69E7CC0];
    }

    v84 = *(v176 + 16);

    if (!__OFSUB__(v171 >> 1, v159))
    {
      break;
    }

LABEL_216:
    __break(1u);
LABEL_217:
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_127_1();
  }

  if (v84 != (v171 >> 1) - v159)
  {
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_127_1();
LABEL_65:
    v172 = OUTLINED_FUNCTION_344_1();
    sub_1D84E773C(v172, v173, v159, v171);
    v175 = v174;
    v157 = v451;
    goto LABEL_72;
  }

  v175 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v157 = v451;
  OUTLINED_FUNCTION_219_2();
  if (v175)
  {
    goto LABEL_73;
  }

  v175 = MEMORY[0x1E69E7CC0];
LABEL_72:
  swift_unknownObjectRelease();
LABEL_73:
  v155 = sub_1D84C78BC(v161, v175);

  if ((v155 & 1) == 0 || !v130[2])
  {
    goto LABEL_91;
  }

  v178 = v130[4];
  v177 = v130[5];

  OUTLINED_FUNCTION_353_0();
  *v179 = v178;
  v179[1] = v177;
  v180 = sub_1D8580B98();
  if (!v180)
  {
    v206 = OUTLINED_FUNCTION_355_0();
    (v177)(v206, v157);
    v207 = OUTLINED_FUNCTION_150();
    (v177)(v207);
    v200 = 4;
    goto LABEL_92;
  }

  v181 = v180;
  v182 = 0;
  v183 = *(v180 + 16);
  v452 = (v448 + 16);
  v184 = (v448 + 8);
  v422 = (v448 + 32);
  v185 = MEMORY[0x1E69E7CC0];
  v186 = v449;
  v445 = v183;
  while (v183 != v182)
  {
    if (v182 >= *(v181 + 16))
    {
      __break(1u);
LABEL_178:
      v301 = v460;
      v302 = v461;
      v303 = 1;
LABEL_179:
      v300 = v451;
      if (v180)
      {
        goto LABEL_180;
      }

      v423 = 0;

      goto LABEL_182;
    }

    OUTLINED_FUNCTION_490_0();
    v189 = v188 & ~v187;
    v191 = *(v190 + 72);
    v177 = v450;
    (*(v190 + 16))(v450, v181 + v189 + v191 * v182, v186);
    sub_1D8580B58();
    OUTLINED_FUNCTION_343_1();
    sub_1D85779BC();
    OUTLINED_FUNCTION_487_0();
    if (v99)
    {
      v193 = v177 == v192;
    }

    else
    {
      v193 = 0;
    }

    if (v193)
    {

LABEL_86:
      v84 = *v422;
      v186 = v449;
      (*v422)(v446, v450, v449);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v460 = v185;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D8439A88(0, *(v185 + 16) + 1, 1);
        v186 = v449;
        v185 = v460;
      }

      v196 = *(v185 + 16);
      v195 = *(v185 + 24);
      v177 = v196 + 1;
      if (v196 >= v195 >> 1)
      {
        v197 = OUTLINED_FUNCTION_337_0(v195);
        sub_1D8439A88(v197, v196 + 1, 1);
        v186 = v449;
        v185 = v460;
      }

      ++v182;
      *(v185 + 16) = v177;
      (v84)(v185 + v189 + v196 * v191, v446, v186);
      OUTLINED_FUNCTION_219_2();
      v183 = v445;
    }

    else
    {
      OUTLINED_FUNCTION_151();
      sub_1D8581AB8();
      OUTLINED_FUNCTION_369();
      if (v177)
      {
        goto LABEL_86;
      }

      v186 = v449;
      v180 = (*v184)(v450, v449);
      ++v182;
    }
  }

  if (*(v185 + 16) != 1)
  {

    v208 = OUTLINED_FUNCTION_355_0();
    v209 = v451;
    (v177)(v208, v451);
    v210 = OUTLINED_FUNCTION_252_2();
    (v177)(v210, v209);
    goto LABEL_101;
  }

  v201 = v444;
  sub_1D84E57EC(v185, v444);

  OUTLINED_FUNCTION_55_0(v201);
  v202 = v456;
  if (v99)
  {

    v203 = OUTLINED_FUNCTION_355_0();
    v204 = v451;
    (v177)(v203, v451);
    v205 = OUTLINED_FUNCTION_252_2();
    (v177)(v205, v204);
    sub_1D8436E18(v201, &qword_1ECA39F88, &unk_1D859AB00);
LABEL_101:
    OUTLINED_FUNCTION_31_1();
    OUTLINED_FUNCTION_344_1();
    goto LABEL_93;
  }

  v211 = v186;
  v183 = sub_1D8580B78();
  v212 = v201;
  v214 = v213;
  v131 = *v184;
  (*v184)(v212, v186);
  v122 = v451;
  if (!v214)
  {
LABEL_163:

    v275 = OUTLINED_FUNCTION_355_0();
    (v131)(v275, v122);
    v276 = OUTLINED_FUNCTION_252_2();
    (v131)(v276, v122);
    goto LABEL_101;
  }

  v215 = v455;
  v412 = v183;
  *v455 = v183;
  v215[1] = v214;
  v418 = v214;

  v419 = sub_1D85811B8();
  OUTLINED_FUNCTION_353_0();
  if (v216)
  {
    OUTLINED_FUNCTION_176_1();
    v217 = v449;
    OUTLINED_FUNCTION_490_0();
    v220 = v181 + (v219 & ~v218);
    v450 = *(v221 + 72);
    v222 = *(v221 + 16);
    OUTLINED_FUNCTION_496_0();
    while (1)
    {
      v222(v202, v220, v217);
      sub_1D8580B58();
      OUTLINED_FUNCTION_354_0();
      v223 = sub_1D8577980();
      v224 = OUTLINED_FUNCTION_58_1(v223);
      if (v99)
      {
        v226 = v225 == v202;
      }

      else
      {
        v226 = 0;
      }

      if (v226 || (OUTLINED_FUNCTION_271_1(v224) & 1) != 0)
      {

        v217 = v202;
        v446 = sub_1D8580B78();
        v183 = v227;
      }

      else
      {
        v228 = sub_1D8577994();
        v229 = OUTLINED_FUNCTION_58_1(v228);
        if (v99)
        {
          v231 = v230 == v202;
        }

        else
        {
          v231 = 0;
        }

        if (v231 || (OUTLINED_FUNCTION_271_1(v229) & 1) != 0)
        {

          OUTLINED_FUNCTION_214_2();

          v217 = v202;
          v422 = sub_1D8580B78();
          v233 = &a15;
        }

        else
        {
          v236 = sub_1D85779A8();
          v237 = OUTLINED_FUNCTION_58_1(v236);
          if (v99)
          {
            v239 = v238 == v202;
          }

          else
          {
            v239 = 0;
          }

          if (v239 || (OUTLINED_FUNCTION_271_1(v237) & 1) != 0)
          {

            v217 = v202;
            v417 = sub_1D8580B78();
            v233 = &v447;
          }

          else
          {
            v240 = sub_1D85779D0();
            v241 = OUTLINED_FUNCTION_58_1(v240);
            if (v99)
            {
              v243 = v242 == v202;
            }

            else
            {
              v243 = 0;
            }

            if (!v243 && (OUTLINED_FUNCTION_271_1(v241) & 1) == 0)
            {
              v244 = sub_1D85779E4();
              v245 = OUTLINED_FUNCTION_58_1(v244);
              if (v99)
              {
                v247 = v246 == v202;
              }

              else
              {
                v247 = 0;
              }

              if (v247 || (OUTLINED_FUNCTION_271_1(v245) & 1) != 0)
              {

                OUTLINED_FUNCTION_496_0();
                v217 = v202;
                v414 = sub_1D8580B78();
                v249 = &v441;
                goto LABEL_139;
              }

              v251 = sub_1D85779F8();
              v252 = OUTLINED_FUNCTION_58_1(v251);
              if (v99)
              {
                v254 = v253 == v202;
              }

              else
              {
                v254 = 0;
              }

              if (v254)
              {
              }

              else
              {
                OUTLINED_FUNCTION_271_1(v252);
                OUTLINED_FUNCTION_442_0();
                if ((v211 & 1) == 0)
                {
                  v217 = v437;
                  v411 = sub_1D8580B78();
                  v448 = v255;
                  if (!v255)
                  {
                    goto LABEL_160;
                  }

                  sub_1D8580B58();
                  v211 = v256;
                  v217 = sub_1D85812C8();

                  if (v217 < 2)
                  {
                    v202 = v437;
                    v268 = OUTLINED_FUNCTION_389_0();
                    (v131)(v268);
                  }

                  else
                  {
                    v257 = sub_1D8580B58();
                    v259 = v258;
                    v260 = v419;
                    v408[1] = swift_isUniquelyReferenced_nonNull_native();
                    v460 = v260;
                    v409 = v257;
                    v410 = v259;
                    v261 = sub_1D8436A4C(v257, v259);
                    v263 = *(v260 + 16);
                    v264 = (v262 & 1) == 0;
                    v211 = v263 + v264;
                    if (__OFADD__(v263, v264))
                    {
                      goto LABEL_220;
                    }

                    v202 = v261;
                    v84 = v262;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
                    v217 = &v460;
                    if (sub_1D8581808())
                    {
                      v217 = v460;
                      v265 = sub_1D8436A4C(v409, v410);
                      if ((v84 & 1) != (v266 & 1))
                      {
                        goto LABEL_222;
                      }

                      v202 = v265;
                    }

                    v419 = v460;
                    if (v84)
                    {
                      v267 = (*(v419 + 56) + 16 * v202);
                      v217 = v267[1];
                      OUTLINED_FUNCTION_384_0(v267);
                    }

                    else
                    {
                      v269 = v419;
                      *(v419 + 8 * (v202 >> 6) + 64) |= 1 << v202;
                      OUTLINED_FUNCTION_229_2((*(v269 + 48) + 16 * v202));
                      OUTLINED_FUNCTION_384_0((*(v270 + 56) + 16 * v202));
                      v272 = *(v271 + 16);
                      v273 = __OFADD__(v272, 1);
                      v274 = v272 + 1;
                      if (v273)
                      {
                        goto LABEL_221;
                      }

                      *(v419 + 16) = v274;
                    }

LABEL_160:
                    OUTLINED_FUNCTION_496_0();
LABEL_140:
                    v250 = OUTLINED_FUNCTION_389_0();
                    (v131)(v250);
                  }

                  OUTLINED_FUNCTION_219_2();
                  goto LABEL_119;
                }
              }

              OUTLINED_FUNCTION_496_0();
              v217 = v202;
              sub_1D8580B78();
              v249 = &v439;
LABEL_139:
              *(v249 - 32) = v248;
              goto LABEL_140;
            }

            OUTLINED_FUNCTION_427_0();
            v217 = v202;
            v416 = sub_1D8580B78();
            v233 = &v446;
          }
        }

        *(v233 - 32) = v232;
      }

      v234 = OUTLINED_FUNCTION_389_0();
      (v131)(v234);
LABEL_119:
      v220 += v450;
      OUTLINED_FUNCTION_353_0();
      v445 = v235 - 1;
      if (v235 == 1)
      {
        goto LABEL_165;
      }
    }
  }

  OUTLINED_FUNCTION_176_1();
LABEL_165:

  v277 = v441;
  *v441 = v446;
  v277[1] = v183;
  v278 = v440;
  v279 = v444;
  *v440 = v422;
  v278[1] = v279;
  v280 = v439;
  v281 = v420;
  *v439 = v416;
  v280[1] = v281;

  v282 = sub_1D84F1F10(v414, v415);
  v283 = v443;
  *v443 = v282;
  v283[1] = v284;
  *(v455 + v442) = v419;
  v285 = v421;
  v452 = v282;
  v450 = v284;
  if (!v421)
  {

    v301 = 0;
    v302 = 0;
    v303 = 255;
    v300 = v451;
    goto LABEL_182;
  }

  Ref<A>.init(bundleID:)();
  v286 = v460;
  v287 = v461;
  v460 = v417;
  v461 = v285;
  v288 = sub_1D8577A0C();
  v289 = v288[1];
  v462 = *v288;
  v463 = v289;
  sub_1D8437DF8();
  v290 = sub_1D8581648();
  if (*(v290 + 16) != 2)
  {

    v302 = 0;
    v301 = 0;
    v303 = 255;
    v180 = v423;
    goto LABEL_179;
  }

  v449 = v286;

  v291 = OUTLINED_FUNCTION_253();
  MEMORY[0x1DA718930](v291);
  v293 = v292;

  if (*(v290 + 16) >= 2uLL)
  {

    v294 = OUTLINED_FUNCTION_150();
    MEMORY[0x1DA718930](v294);
    OUTLINED_FUNCTION_343_1();

    v295 = sub_1D8577A20();
    OUTLINED_FUNCTION_58_1(v295);
    if (v99)
    {
      v297 = v296 == v293;
    }

    else
    {
      v297 = 0;
    }

    if (v297 || (sub_1D8581AB8() & 1) != 0)
    {

      v462 = v449;
      v463 = v287;

      v298 = OUTLINED_FUNCTION_151();
      v299 = v423;
      Ref<A>.init(id:game:)(v298);
      v180 = v299;
      if (!v299)
      {
        goto LABEL_178;
      }

      v300 = v451;
    }

    else
    {
      v358 = sub_1D8577A3C();
      OUTLINED_FUNCTION_58_1(v358);
      if (v99)
      {
        v360 = v359 == v293;
      }

      else
      {
        v360 = 0;
      }

      if (v360)
      {
      }

      else
      {
        v361 = sub_1D8581AB8();

        if ((v361 & 1) == 0)
        {

          v302 = 0;
          v301 = 0;
          v303 = 255;
          OUTLINED_FUNCTION_219_2();
          v180 = v423;
          goto LABEL_179;
        }
      }

      v462 = v449;
      v463 = v287;

      v362 = OUTLINED_FUNCTION_151();
      v363 = v423;
      Ref<A>.init(leaderboardID:game:)(v362);
      if (!v363)
      {
        v303 = 0;
        v301 = v460;
        v302 = v461;
        OUTLINED_FUNCTION_219_2();
        goto LABEL_179;
      }

      v300 = v451;
      OUTLINED_FUNCTION_219_2();
    }

LABEL_180:
    MEMORY[0x1DA719650](v180);

    v301 = 0;
    v302 = 0;
    v423 = 0;
    v303 = 255;
LABEL_182:
    v304 = v438;
    *v438 = v301;
    v304[1] = v302;
    v305 = *(v304 + 16);
    *(v304 + 16) = v303;
    v306 = OUTLINED_FUNCTION_125_1();
    sub_1D84EB994(v306, v307, v308);
    v309 = OUTLINED_FUNCTION_253();
    sub_1D84EB9AC(v309, v310, v305);
    if (v183)
    {
      if (v413)
      {

        if (!v444)
        {
LABEL_187:
          v311 = v436;

          if (!v420)
          {
            v312 = sub_1D8542C48();
            v416 = sub_1D84477D8(*v312);
            v420 = v313;
          }

          if (v311)
          {
            v460 = sub_1D84F1FF4(v435, v311);
            v461 = v314;
            MEMORY[0x1DA718990](45, 0xE100000000000000);
            MEMORY[0x1DA718990](v416, v420);
            v315 = v461;
            sub_1D8446BDC();

            v316 = v432;
            OUTLINED_FUNCTION_287_0();
            sub_1D8446D38(v317, v318, v319);

            v320 = OUTLINED_FUNCTION_258_1();
            OUTLINED_FUNCTION_501(v320, v321, v434);
            if (!v99)
            {
              v346 = OUTLINED_FUNCTION_166();
              v347(v346);
              sub_1D84EB9C4(v425, &v460);
              v452 = sub_1D8580EB8();
              v349 = v348;
              Ref<A>.init(bundleID:)();
              v457 = v458[1];
              v458[0] = v459;
              v350 = v423;
              Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
              if (v350)
              {
                MEMORY[0x1DA719650](v350);

                OUTLINED_FUNCTION_427_0();

                OUTLINED_FUNCTION_214_2();

                v351 = OUTLINED_FUNCTION_125_1();
                sub_1D84EB9AC(v351, v352, v353);

                __swift_destroy_boxed_opaque_existential_1(&v460);
                v354 = OUTLINED_FUNCTION_339_0();
                v355(v354);
                v356 = OUTLINED_FUNCTION_503_0();
                (v303)(v356);
                v357 = OUTLINED_FUNCTION_252_2();
                (v303)(v357, v350);
                *(v455 + v447) = 0;
              }

              else
              {

                v446 = v462;
                OUTLINED_FUNCTION_302_0(v463);
                Ref<A>.init(internalID:)(v435);
                v443 = v462;
                v442 = v463;
                v364 = v427;
                sub_1D8580E98();
                v365 = OUTLINED_FUNCTION_61_1(v458);
                v366 = v429;
                __swift_storeEnumTagSinglePayload(v365, v367, v368, v429);
                v369 = OUTLINED_FUNCTION_61_1(&v459);
                __swift_storeEnumTagSinglePayload(v369, v370, v371, v366);
                v372 = OUTLINED_FUNCTION_61_1(&v460);
                __swift_storeEnumTagSinglePayload(v372, v373, v374, v366);
                v375 = sub_1D8581BF8();
                v449 = v376;
                v450 = v375;
                v377 = v431;
                v378 = v430;
                v448 = v430 + v431[10];
                OUTLINED_FUNCTION_91_0();
                __swift_storeEnumTagSinglePayload(v379, v380, v381, v382);
                OUTLINED_FUNCTION_483_0(v378 + v377[11]);
                OUTLINED_FUNCTION_91_0();
                __swift_storeEnumTagSinglePayload(v383, v384, v385, v386);
                OUTLINED_FUNCTION_91_0();
                __swift_storeEnumTagSinglePayload(v387, v388, v389, v390);
                v391 = v378 + v377[20];
                *v391 = 0;
                *(v391 + 1) = 0;
                v391[16] = -1;
                *v378 = v452;
                v378[1] = v349;
                OUTLINED_FUNCTION_353_0();
                v378[2] = v393;
                v378[3] = v392;
                *(v378 + v377[16]) = MEMORY[0x1E69E7CD0];
                *(v378 + v377[17]) = MEMORY[0x1E69E7CC8];
                OUTLINED_FUNCTION_229_2((v378 + v377[18]));
                (*(v428 + 16))(v378 + v377[9], v364, v366);
                if (!v444)
                {
                  v422 = static PartyCodeGenerator.generate4_4String()();
                  v444 = v394;
                }

                (*(v428 + 8))(v427, v429);
                __swift_destroy_boxed_opaque_existential_1(&v460);
                v395 = OUTLINED_FUNCTION_339_0();
                v396(v395);
                v397 = *(v454 + 8);
                v398 = v451;
                v397(v453, v451);
                v399 = OUTLINED_FUNCTION_252_2();
                v397(v399, v398);
                v400 = v430;
                v401 = v444;
                v430[6] = v422;
                v400[7] = v401;
                sub_1D84EC2E4();
                sub_1D84EC2E4();
                sub_1D84EC2E4();
                v402 = v431;
                v403 = (v400 + v431[13]);
                v404 = v449;
                *v403 = v450;
                v403[1] = v404;
                *(v400 + 40) = 1;
                *(v400 + v402[19]) = 0;
                *(v400 + v402[15]) = MEMORY[0x1E69E7CC0];
                sub_1D84EB9AC(*v391, *(v391 + 1), v391[16]);
                *v391 = v301;
                *(v391 + 1) = v302;
                v391[16] = v303;
                v400[4] = v419;
                OUTLINED_FUNCTION_229_2((v400 + v402[14]));
                *(v400 + v402[21]) = 0;
                sub_1D84EB32C();
                sub_1D84EB32C();
                sub_1D8436E18(v426, &qword_1ECA39968, &qword_1D8596368);
                sub_1D84EB32C();
                OUTLINED_FUNCTION_336_1();
                __swift_storeEnumTagSinglePayload(v405, v406, v407, v402);
                OUTLINED_FUNCTION_31_1();
              }

              goto LABEL_93;
            }

            v322 = OUTLINED_FUNCTION_125_1();
            sub_1D84EB9AC(v322, v323, v324);

            OUTLINED_FUNCTION_427_0();

            OUTLINED_FUNCTION_462_0();
            OUTLINED_FUNCTION_214_2();

            v325 = OUTLINED_FUNCTION_503_0();
            (v303)(v325);
            v326 = OUTLINED_FUNCTION_252_2();
            (v303)(v326, v315);

            sub_1D8436E18(v316, &qword_1ECA39F80, &qword_1D859AAF8);
          }

          else
          {
            v341 = OUTLINED_FUNCTION_125_1();
            sub_1D84EB9AC(v341, v342, v343);
            OUTLINED_FUNCTION_427_0();

            OUTLINED_FUNCTION_462_0();
            OUTLINED_FUNCTION_214_2();

            v344 = OUTLINED_FUNCTION_390_0();
            (v303)(v344);
            v345 = OUTLINED_FUNCTION_252_2();
            (v303)(v345, v300);
          }

          *(v455 + v84) = 0;
LABEL_93:
          sub_1D84EA648();
          OUTLINED_FUNCTION_80_0();
          sub_1D84EB2B8();
          goto LABEL_32;
        }

        if (static PartyCodeGenerator.isValidCode(_:)(v422, v444))
        {
          v435 = v452;
          v436 = v450;
          goto LABEL_187;
        }

        v336 = OUTLINED_FUNCTION_125_1();
        sub_1D84EB9AC(v336, v337, v338);

        OUTLINED_FUNCTION_462_0();
        OUTLINED_FUNCTION_427_0();
        OUTLINED_FUNCTION_214_2();

        v339 = OUTLINED_FUNCTION_390_0();
        (v303)(v339);
        v340 = OUTLINED_FUNCTION_252_2();
        (v303)(v340, v300);

        v335 = 2;
LABEL_196:
        *(v455 + v84) = v335;
        goto LABEL_93;
      }

      v330 = OUTLINED_FUNCTION_125_1();
      sub_1D84EB9AC(v330, v331, v332);

      OUTLINED_FUNCTION_462_0();
      OUTLINED_FUNCTION_427_0();
    }

    else
    {
      v327 = OUTLINED_FUNCTION_125_1();
      sub_1D84EB9AC(v327, v328, v329);
      OUTLINED_FUNCTION_462_0();
      OUTLINED_FUNCTION_427_0();
      OUTLINED_FUNCTION_214_2();
    }

    v333 = OUTLINED_FUNCTION_390_0();
    (v303)(v333);
    v334 = OUTLINED_FUNCTION_252_2();
    (v303)(v334, v300);

    v335 = 4;
    goto LABEL_196;
  }

  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  sub_1D8581AF8();
  __break(1u);
}

unint64_t sub_1D84E5780(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D84E57EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1D8580B88();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void static GameActivityInstance.gameBundleID(from:)()
{
  OUTLINED_FUNCTION_386();
  v2 = v1;
  v95 = sub_1D8580D78();
  OUTLINED_FUNCTION_1();
  v98 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_0();
  v97 = v5;
  OUTLINED_FUNCTION_5_0();
  v6 = sub_1D85810A8();
  OUTLINED_FUNCTION_1();
  v96 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F88, &unk_1D859AB00);
  OUTLINED_FUNCTION_363(v12);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_196();
  v92 = v14;
  OUTLINED_FUNCTION_5_0();
  v15 = sub_1D8580B88();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21_1();
  v101 = v19;
  OUTLINED_FUNCTION_142_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v88 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39E50, &unk_1D859AA30);
  OUTLINED_FUNCTION_363(v23);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v88 - v25;
  v27 = sub_1D8580C68();
  OUTLINED_FUNCTION_1();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_235_2();
  v94 = v2;
  sub_1D8580BB8();
  v31 = OUTLINED_FUNCTION_508_0();
  OUTLINED_FUNCTION_501(v31, v32, v27);
  if (v45)
  {
    sub_1D8436E18(v26, &qword_1ECA39E50, &unk_1D859AA30);
  }

  else
  {
    v91 = v11;
    v33 = OUTLINED_FUNCTION_495();
    v34(v33);
    v35 = sub_1D8580B98();
    if (v35)
    {
      v36 = v35;
      v104 = v0;
      v89 = v6;
      v90 = v27;
      v37 = 0;
      v38 = *(v35 + 16);
      v102 = v17 + 16;
      v103 = v38;
      v99 = (v17 + 32);
      v100 = MEMORY[0x1E69E7CC0];
      v88 = v29;
      while (1)
      {
        while (1)
        {
          if (v103 == v37)
          {

            if (*(v100 + 16) == 1)
            {
              v56 = v92;
              sub_1D84E57EC(v100, v92);

              v57 = OUTLINED_FUNCTION_508_0();
              OUTLINED_FUNCTION_501(v57, v58, v15);
              v59 = v90;
              v60 = v91;
              v62 = v97;
              v61 = v98;
              if (v45)
              {
                sub_1D8436E18(v56, &qword_1ECA39F88, &unk_1D859AB00);
              }

              else
              {
                sub_1D8580B78();
                v83 = v56;
                v85 = v84;
                (*(v17 + 8))(v83, v15);
                if (v85)
                {
                  v86 = OUTLINED_FUNCTION_276();
                  v87(v86, v59);
                  goto LABEL_29;
                }
              }
            }

            else
            {

              v59 = v90;
              v60 = v91;
              v62 = v97;
              v61 = v98;
            }

            v65 = sub_1D85369C4();
            v66 = v96;
            v67 = v89;
            (*(v96 + 16))(v60, v65, v89);
            (*(v61 + 16))(v62, v94, v95);
            v68 = sub_1D8581088();
            v69 = sub_1D8581688();
            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v105 = v71;
              *v70 = 136315138;
              OUTLINED_FUNCTION_3_4();
              sub_1D84C49BC(v72);
              sub_1D8581A88();
              v73 = OUTLINED_FUNCTION_325();
              v74(v73);
              v75 = OUTLINED_FUNCTION_165_0();
              v78 = sub_1D84355C8(v75, v76, v77);

              *(v70 + 4) = v78;
              _os_log_impl(&dword_1D8433000, v68, v69, "Cannot parse bundleID from URL: %s", v70, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v71);
              MEMORY[0x1DA719810](v71, -1, -1);
              MEMORY[0x1DA719810](v70, -1, -1);

              (*(v66 + 8))(v91, v89);
              (*(v88 + 8))(v104, v90);
            }

            else
            {

              v79 = OUTLINED_FUNCTION_325();
              v80(v79);
              (*(v66 + 8))(v60, v67);
              v81 = OUTLINED_FUNCTION_276();
              v82(v81, v59);
            }

            goto LABEL_29;
          }

          if (v37 >= *(v36 + 16))
          {
            __break(1u);
            return;
          }

          v39 = (*(v17 + 80) + 32) & ~*(v17 + 80);
          v40 = *(v17 + 72);
          (*(v17 + 16))(v22, v36 + v39 + v40 * v37, v15);
          v41 = sub_1D8580B58();
          v43 = v42;
          v44 = sub_1D85779BC();
          v45 = v41 == *v44 && v43 == v44[1];
          if (!v45)
          {
            break;
          }

LABEL_15:
          v93 = *v99;
          v93(v101, v22, v15);
          v49 = v100;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v105 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D8439A88(0, *(v49 + 16) + 1, 1);
            v49 = v105;
          }

          v52 = *(v49 + 16);
          v51 = *(v49 + 24);
          v53 = v52 + 1;
          if (v52 >= v51 >> 1)
          {
            v54 = OUTLINED_FUNCTION_337_0(v51);
            v100 = v55;
            sub_1D8439A88(v54, v55, 1);
            v53 = v100;
            v49 = v105;
          }

          ++v37;
          *(v49 + 16) = v53;
          v100 = v49;
          v93(v49 + v39 + v52 * v40, v101, v15);
        }

        v46 = sub_1D8581AB8();

        if (v46)
        {
          goto LABEL_15;
        }

        v47 = OUTLINED_FUNCTION_418_0();
        v48(v47);
        ++v37;
      }
    }

    v63 = OUTLINED_FUNCTION_165_0();
    v64(v63);
  }

LABEL_29:
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_388();
}

void static GameActivityInstance.create(for:activityIdentifier:activityEnvironment:activityProperties:bundleID:deepLinkReferral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21)
{
  OUTLINED_FUNCTION_285();
  a19 = v23;
  a20 = v24;
  v100 = v25;
  v101 = v26;
  v102 = v27;
  v96 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v92 = v37;
  v38 = a21;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39300, &unk_1D8591030);
  v40 = OUTLINED_FUNCTION_363(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_194_1();
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_66_0(v43);
  v95 = sub_1D8580EA8();
  OUTLINED_FUNCTION_1();
  v94 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_190_1(v46);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F80, &qword_1D859AAF8);
  OUTLINED_FUNCTION_363(v47);
  OUTLINED_FUNCTION_152();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_199();
  a10 = sub_1D8580EE8();
  OUTLINED_FUNCTION_1();
  v99 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_190_1(v51);
  v52 = *v38;
  v53 = v38[1];
  v54 = *(v38 + 16);

  MEMORY[0x1DA718990](45, 0xE100000000000000);
  OUTLINED_FUNCTION_449_0();
  MEMORY[0x1DA718990](v32, v30);

  OUTLINED_FUNCTION_449_0();
  MEMORY[0x1DA718990](45, 0xE100000000000000);

  OUTLINED_FUNCTION_449_0();
  MEMORY[0x1DA718990](v102, v100);

  v108 = v36;
  v109 = v34;
  sub_1D84E677C(v101);
  v106 = 45;
  v107 = 0xE100000000000000;
  MEMORY[0x1DA718990](v52, v53);
  MEMORY[0x1DA718990](45, 0xE100000000000000);

  sub_1D8446BDC();

  OUTLINED_FUNCTION_160_0();
  sub_1D8446D38(v55, v34, v56);

  if (__swift_getEnumTagSinglePayload(v22, 1, a10) == 1)
  {
    sub_1D8436E18(v22, &qword_1ECA39F80, &qword_1D859AAF8);
    v106 = 0;
    v107 = 0xE000000000000000;
    sub_1D8581768();
    MEMORY[0x1DA718990](0xD00000000000003FLL, 0x80000001D8586550);
    v57 = OUTLINED_FUNCTION_199_0();
    MEMORY[0x1DA718990](v57);
    v58 = sub_1D8448448();
    OUTLINED_FUNCTION_446(&type metadata for GameServicesError, v58);
    *v59 = 0;
    *(v59 + 8) = 0xE000000000000000;
    *(v59 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v60 = OUTLINED_FUNCTION_415_0();
    v61(v60);
    sub_1D84EB9C4(v96, &v106);
    v91 = sub_1D8580EB8();
    v63 = v62;
    sub_1D84EB9C4(&v106, v105);
    sub_1D84C55F4();
    v64 = sub_1D8542C48();
    sub_1D84477D8(*v64);

    Ref<A>.init(bundleID:)();
    Ref<A>.gameActivityDefinition(id:activityEnvironment:)();
    if (!v21)
    {

      Ref<A>.init(internalID:)(v36);
      sub_1D8580E98();
      v65 = OUTLINED_FUNCTION_61_1(&a10);
      __swift_storeEnumTagSinglePayload(v65, v66, v67, v95);
      v68 = OUTLINED_FUNCTION_61_1(&a11);
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v95);
      v71 = OUTLINED_FUNCTION_61_1(&a12);
      __swift_storeEnumTagSinglePayload(v71, v72, v73, v95);
      v74 = sub_1D8581BF8();
      OUTLINED_FUNCTION_483_0(v74);
      OUTLINED_FUNCTION_422_0();
      OUTLINED_FUNCTION_123();
      __swift_storeEnumTagSinglePayload(v75, v76, v77, v95);
      v78 = OUTLINED_FUNCTION_39_0(*(v99 + 44));
      __swift_storeEnumTagSinglePayload(v78, v79, v80, v95);
      v81 = OUTLINED_FUNCTION_39_0(*(v99 + 48));
      __swift_storeEnumTagSinglePayload(v81, v82, v83, v95);
      v97 = v53;
      v84 = v92 + *(v99 + 80);
      *v84 = 0;
      *(v84 + 8) = 0;
      *(v84 + 16) = -1;
      *v92 = v91;
      *(v92 + 8) = v63;
      *(v92 + 16) = v103;
      *(v92 + 24) = v104;
      *(v92 + *(v99 + 64)) = MEMORY[0x1E69E7CD0];
      *(v92 + *(v99 + 68)) = MEMORY[0x1E69E7CC8];
      v85 = (v92 + *(v99 + 72));
      *v85 = v103;
      v85[1] = v104;
      (*(v94 + 16))(v92 + *(v99 + 36), v93, v95);
      v86 = static PartyCodeGenerator.generate4_4String()();
      v88 = v87;
      v89 = OUTLINED_FUNCTION_228();
      v90(v89);
      __swift_destroy_boxed_opaque_existential_1(v105);
      __swift_destroy_boxed_opaque_existential_1(&v106);
      (*(v99 + 8))(v98, a10);
      *(v92 + 48) = v86;
      *(v92 + 56) = v88;
      OUTLINED_FUNCTION_246_1();
      OUTLINED_FUNCTION_281_0(&a10);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1();
      OUTLINED_FUNCTION_281_0(&a11);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_246_1();
      OUTLINED_FUNCTION_281_0(&a12);
      sub_1D84EC2E4();
      OUTLINED_FUNCTION_229_2((v92 + *(v99 + 52)));
      *(v92 + 40) = 1;
      *(v92 + *(v99 + 76)) = 1;
      OUTLINED_FUNCTION_513_0(MEMORY[0x1E69E7CC0]);
      *v84 = v52;
      *(v84 + 8) = v97;
      *(v84 + 16) = v54;

      *(v92 + 32) = v101;
      OUTLINED_FUNCTION_384_0((v92 + *(v99 + 56)));
      *(v92 + *(v99 + 84)) = 1;
      goto LABEL_6;
    }

    sub_1D84C5620();
    __swift_destroy_boxed_opaque_existential_1(v105);
    __swift_destroy_boxed_opaque_existential_1(&v106);
    (*(v99 + 8))(v98, a10);
  }

LABEL_6:
  OUTLINED_FUNCTION_342_1();
  OUTLINED_FUNCTION_284_0();
}

uint64_t sub_1D84E677C(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = )
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v9 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = (*(a1 + 56) + v11);
    v16 = *v15;
    v17 = v15[1];

    MEMORY[0x1DA718990](v13, v14);
    MEMORY[0x1DA718990](45, 0xE100000000000000);
    MEMORY[0x1DA718990](v16, v17);
    MEMORY[0x1DA718990](45, 0xE100000000000000);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84E6DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D8581AB8() & 1;
  }
}

char *sub_1D84E6E0C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1D8581388();
    v11 = v29;
    v12 = v30;
    v13 = v31;

    v14 = sub_1D84E72A8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 2);
    a7 = *(v14 + 3);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_38:
      *(v14 + 2) = v10;
      v35 = &v14[32 * v9];
      *(v35 + 4) = v7;
      *(v35 + 5) = v11;
      *(v35 + 6) = v12;
      *(v35 + 7) = v13;
      return v14;
    }

LABEL_41:
    v14 = sub_1D84E72A8((a7 > 1), v10, 1, v14);
    goto LABEL_38;
  }

  v7 = a4;
  v14 = (4 * v16);
  v43 = MEMORY[0x1E69E7CC0];
  v17 = 15;
  while (1)
  {
    v41 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if ((v17 >> 14) == v14)
      {
        v17 = v41;
        goto LABEL_30;
      }

      v18 = sub_1D8581378();
      v12 = v19;
      v44[0] = v18;
      v44[1] = v19;
      v20 = v45(v44);
      if (v8)
      {

        return v14;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_1D85812D8();
    }

    v23 = (v41 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v41 >> 14)
    {
      break;
    }

    v42 = sub_1D8581388();
    v37 = v25;
    v38 = v24;
    v36 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = sub_1D84E72A8(0, *(v43 + 2) + 1, 1, v43);
    }

    v13 = *(v43 + 2);
    v27 = *(v43 + 3);
    v12 = v13 + 1;
    if (v13 >= v27 >> 1)
    {
      v43 = sub_1D84E72A8((v27 > 1), v13 + 1, 1, v43);
    }

    *(v43 + 2) = v12;
    v28 = &v43[32 * v13];
    *(v28 + 4) = v42;
    *(v28 + 5) = v38;
    *(v28 + 6) = v37;
    *(v28 + 7) = v36;
LABEL_20:
    v17 = sub_1D85812D8();
    if ((v23 & 1) == 0 && *(v43 + 2) == a1)
    {
LABEL_30:
      if (v17 >> 14) == v14 && (a2)
      {

        return v43;
      }

      if (v14 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_1D8581388();
        v11 = v32;
        v12 = v33;
        v13 = v34;

        v14 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v14 + 2);
          a7 = *(v14 + 3);
          goto LABEL_37;
        }
      }

      v14 = sub_1D84E72A8(0, *(v14 + 2) + 1, 1, v14);
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}