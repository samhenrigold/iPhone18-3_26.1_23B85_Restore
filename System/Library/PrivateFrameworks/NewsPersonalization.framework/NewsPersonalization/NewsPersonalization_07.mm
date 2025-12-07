void sub_1C6BBB4C8(uint64_t a1)
{
  sub_1C6BBB5F0();
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      sub_1C6BBB75C(319, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C6BBB75C(319, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C6BBB5F0()
{
  if (!qword_1EDCDF970)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF970);
    }
  }
}

void sub_1C6BBB640(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6BBB75C(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6BBB6B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BBB640(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1C6BBB714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6BBB75C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t Com_Apple_News_Personalization_GroupType.string.getter()
{
  if (*(v0 + 8) != 1)
  {
    return 0;
  }

  result = *v0;
  switch(*v0)
  {
    case 1:
      v2 = 1634891107;
      return v2 | 0x64657400000000;
    case 2:
      return 0x657061707377656ELL;
    case 3:
      return 0x77654E6C61636F6CLL;
    case 4:
      return 0x6957646572616873;
    case 5:
    case 0x4FLL:
      return 0x676E69646E657274;
    case 6:
      return 0x697A6167614D796DLL;
    case 7:
    case 0xALL:
      return 0x6465727574616566;
    case 8:
      return 0x736575737369;
    case 9:
      return 0x6369706F74;
    case 0xBLL:
      return 0xD000000000000014;
    case 0xCLL:
      return 0xD000000000000011;
    case 0xDLL:
      return 0x657573734977656ELL;
    case 0xELL:
      v5 = 1953460339;
      return v5 | 0x6867696C00000000;
    case 0xFLL:
      return 0x676E696B61657262;
    case 0x10:
      return 0x456C616963657073;
    case 0x11:
      return 0x4C656C6369747261;
    case 0x12:
    case 0x1DLL:
      return 0xD000000000000012;
    case 0x13:
      return 0x7542664F74736562;
    case 0x14:
      return 0xD000000000000010;
    case 0x15:
      return 0x6C656E6E616863;
    case 0x16:
      return 0x69726F7453706F74;
    case 0x17:
      return 0x6D6F724665726F6DLL;
    case 0x18:
      v2 = 1634493810;
      return v2 | 0x64657400000000;
    case 0x19:
      return 0x756F59726F66;
    case 0x1ALL:
      return 0xD000000000000010;
    case 0x1BLL:
      return 0x6F7661466F747561;
    case 0x1CLL:
      return 0x697242796C696164;
    case 0x1ELL:
      return 0x4E70556F69647561;
    case 0x1FLL:
      return 0x726F466F69647561;
    case 0x20:
    case 0x28:
    case 0x3DLL:
      return 0xD000000000000013;
    case 0x21:
      return 0x59726F4665726F6DLL;
    case 0x22:
      return 0x6F6C6C6F4677656ELL;
    case 0x23:
      v4 = 0x74736574616CLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
    case 0x24:
      return 25697;
    case 0x25:
      return 0x746E6F436E656573;
    case 0x26:
      v4 = 0x64657373696DLL;
      return v4 & 0xFFFFFFFFFFFFLL | 0x7453000000000000;
    case 0x27:
      return 0xD000000000000010;
    case 0x29:
      return 0x6C6C6177796170;
    case 0x2ALL:
      v5 = 1751607656;
      return v5 | 0x6867696C00000000;
    case 0x2BLL:
    case 0x30:
      return 0x7374726F7053796DLL;
    case 0x2CLL:
      return 0x72656874616577;
    case 0x2DLL:
      return 0x65527374726F7073;
    case 0x2ELL:
      return 0xD000000000000010;
    case 0x2FLL:
      v3 = 0x7374726F7073;
      goto LABEL_14;
    case 0x31:
      return 0x536C656E6E616863;
    case 0x32:
      return 0xD000000000000017;
    case 0x33:
      return 0x536F546F72746E69;
    case 0x34:
      return 0x63537374726F7073;
    case 0x35:
      return 0x63537374726F7073;
    case 0x36:
      return 0x74537374726F7073;
    case 0x37:
      return 0x72427374726F7073;
    case 0x38:
      return 0xD000000000000010;
    case 0x39:
      return 0x76457374726F7073;
    case 0x3ALL:
      return 0x6F427374726F7073;
    case 0x3BLL:
      return 0xD000000000000010;
    case 0x3CLL:
      return 0xD000000000000016;
    case 0x3ELL:
      return 0x74756374726F6873;
    case 0x3FLL:
      return 0xD000000000000010;
    case 0x40:
      return 0x694C656C7A7A7570;
    case 0x41:
      return 0x7241656C7A7A7570;
    case 0x42:
    case 0x4ELL:
      return 0xD000000000000015;
    case 0x43:
      return 0x6546656C7A7A7570;
    case 0x44:
      return 0x4664656546676174;
    case 0x45:
      return 0xD000000000000010;
    case 0x46:
      return 0x5265746144676174;
    case 0x47:
      v3 = 0x6E4965726F6DLL;
LABEL_14:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6F54000000000000;
      break;
    case 0x48:
      result = 0x694C7374726F7073;
      break;
    case 0x49:
      result = 0x614D7374726F7073;
      break;
    case 0x4ALL:
      result = 0xD000000000000010;
      break;
    case 0x4BLL:
      result = 0x655274736574616CLL;
      break;
    case 0x4CLL:
      result = 0x6365526465766173;
      break;
    case 0x4DLL:
      result = 0x526C656E6E616863;
      break;
    case 0x50:
      result = 0x52646574616C6572;
      break;
    case 0x51:
      result = 0x6F54657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C6BBC0E4(unint64_t a1)
{
  v3 = [*(v1 + 16) possiblyUnfetchedAppConfiguration];
  if ([v3 respondsToSelector_])
  {
    v86 = [v3 useAltSportsRecommendationMapping];
  }

  else
  {
    v86 = 0;
  }

  swift_unknownObjectRelease();
  v90 = MEMORY[0x1E69E7CC8];
  v91 = MEMORY[0x1E69E7CC8];
  if (a1 >> 62)
  {
    v4 = sub_1C6D79E90();
    if (v4)
    {
      goto LABEL_6;
    }

LABEL_34:
    if (qword_1EDCE18E0 != -1)
    {
      swift_once();
    }

    v54 = off_1EDCE18E8;
    sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1C6D7EB10;
    v56 = v91;
    v57 = sub_1C6D7A0E0();
    v59 = v58;
    v60 = MEMORY[0x1E69E6158];
    *(v55 + 56) = MEMORY[0x1E69E6158];
    v61 = sub_1C6B2064C();
    *(v55 + 64) = v61;
    *(v55 + 32) = v57;
    *(v55 + 40) = v59;
    v62 = v90;
    v63 = sub_1C6D7A0E0();
    *(v55 + 96) = v60;
    *(v55 + 104) = v61;
    *(v55 + 72) = v63;
    *(v55 + 80) = v64;
    v65 = sub_1C6D79AC0();
    sub_1C6D78D30("Found %{public}@ channels with topic mappings and %{public}@ topics with topic mappings", 87, 2, &dword_1C6B09000, v54, v65, v55);

    v66 = sub_1C6D79A90();
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1C6D7E630;
    sub_1C6BBDC08(0, &unk_1EDCDFA10, sub_1C6B758EC, MEMORY[0x1E69E62F8]);
    v68 = sub_1C6D794A0();
    *(v67 + 56) = v60;
    *(v67 + 64) = v61;
    *(v67 + 32) = v68;
    *(v67 + 40) = v69;
    sub_1C6D78D30("Found channels with topic mappings %{public}@", 45, 2, &dword_1C6B09000, v54, v66, v67);

    v70 = sub_1C6D79A90();
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_1C6D7E630;
    v72 = sub_1C6D794A0();
    *(v71 + 56) = v60;
    *(v71 + 64) = v61;
    *(v71 + 32) = v72;
    *(v71 + 40) = v73;
    sub_1C6D78D30("Found topics with topic mappings %{public}@", 43, 2, &dword_1C6B09000, v54, v70, v71);

    v88[5] = v56;
    v88[6] = v62;
    v89 = MEMORY[0x1E69E7CD0];

    v88[0] = v56;

    sub_1C6BBD2F0(&v89, v88);

    v88[0] = v62;

    sub_1C6BBD2F0(&v89, v88);

    sub_1C6BBDC6C(0);
    swift_arrayDestroy();
    v74 = v89;
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1C6D7E630;
    v89 = *(v74 + 16);
    v76 = sub_1C6D7A0E0();
    *(v75 + 56) = MEMORY[0x1E69E6158];
    *(v75 + 64) = v61;
    *(v75 + 32) = v76;
    *(v75 + 40) = v77;
    v78 = sub_1C6D79AC0();
    sub_1C6D78D30("Found %{public}@ unique mapped to tags from channels and topics, getting tag records", 84, 2, &dword_1C6B09000, v54, v78, v75);

    MEMORY[0x1EEE9AC00](v79, v80);
    sub_1C6B75508(0, &qword_1EDCDF9D0, &qword_1EDCDF8D0, &protocolRef_FCTagProviding);
    sub_1C6D783A0();

    v81 = swift_allocObject();
    *(v81 + 16) = v56;
    *(v81 + 24) = v62;
    v82 = sub_1C6D78210();
    type metadata accessor for SportsTopicMappingServiceResult(0);
    v83 = sub_1C6D782A0();

    return v83;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_34;
  }

LABEL_6:
  if (v4 >= 1)
  {
    v5 = 0;
    v87 = a1 & 0xC000000000000001;
    v85 = a1;
    while (1)
    {
      if (v87)
      {
        v11 = MEMORY[0x1CCA56240](v5, a1);
      }

      else
      {
        v11 = *(a1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
      }

      v12 = [v11 asChannel];
      if (v12)
      {
        v13 = v12;
        swift_getObjectType();

        v14 = [v13 identifier];
        v15 = sub_1C6D795A0();
        v17 = v16;

        if (!*(v91 + 16))
        {

LABEL_29:
          v42 = [v13 identifier];
          v43 = sub_1C6D795A0();
          v45 = v44;

          v46 = sub_1C6BBCBD8(v86);
          sub_1C6BC1B1C(v46, v43, v45);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_12;
        }

        sub_1C6B5DEA8(v15, v17);
        v19 = v18;

        if ((v19 & 1) == 0)
        {
          goto LABEL_29;
        }

        if (qword_1EDCE18E0 != -1)
        {
          swift_once();
        }

        v20 = off_1EDCE18E8;
        v21 = sub_1C6D79AA0();
        sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1C6D7E630;
        v23 = [v13 identifier];
        v24 = sub_1C6D795A0();
        v26 = v25;

        *(v22 + 56) = MEMORY[0x1E69E6158];
        *(v22 + 64) = sub_1C6B2064C();
        *(v22 + 32) = v24;
        *(v22 + 40) = v26;
        sub_1C6D78D30("Found duplicate identifier in tags who's topic mappings were requested %{public}@", 81, 2, &dword_1C6B09000, v20, v21, v22);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = [v11 asTopic];
        if (v27)
        {
          v28 = v27;
          swift_getObjectType();

          v29 = [v28 identifier];
          v30 = sub_1C6D795A0();
          v32 = v31;

          if (*(v90 + 16))
          {
            sub_1C6B5DEA8(v30, v32);
            v34 = v33;

            if (v34)
            {
              if (qword_1EDCE18E0 != -1)
              {
                swift_once();
              }

              v35 = off_1EDCE18E8;
              v36 = sub_1C6D79AA0();
              sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
              v37 = swift_allocObject();
              *(v37 + 16) = xmmword_1C6D7E630;
              v38 = [v28 identifier];
              v39 = sub_1C6D795A0();
              v41 = v40;

              *(v37 + 56) = MEMORY[0x1E69E6158];
              *(v37 + 64) = sub_1C6B2064C();
              *(v37 + 32) = v39;
              *(v37 + 40) = v41;
              sub_1C6D78D30("Found duplicate identifier in tags who's topic mappings were requested %{public}@", 81, 2, &dword_1C6B09000, v35, v36, v37);
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              goto LABEL_11;
            }
          }

          else
          {
          }

          v6 = [v28 identifier];
          v7 = sub_1C6D795A0();
          v9 = v8;

          v10 = sub_1C6BBCBD8(v86);
          sub_1C6BC1B1C(v10, v7, v9);
          swift_unknownObjectRelease();
        }

        else
        {
          if (qword_1EDCE18E0 != -1)
          {
            swift_once();
          }

          v47 = off_1EDCE18E8;
          v48 = sub_1C6D79AA0();
          sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
          v49 = swift_allocObject();
          *(v49 + 16) = xmmword_1C6D7E630;
          v50 = [v11 identifier];
          v51 = sub_1C6D795A0();
          v53 = v52;

          *(v49 + 56) = MEMORY[0x1E69E6158];
          *(v49 + 64) = sub_1C6B2064C();
          *(v49 + 32) = v51;
          *(v49 + 40) = v53;
          sub_1C6D78D30("Asked to find topic mapping from non-channel non-topic tag %{public}@", 69, 2, &dword_1C6B09000, v47, v48, v49);
        }

        swift_unknownObjectRelease();
      }

LABEL_11:
      a1 = v85;
LABEL_12:
      if (v4 == ++v5)
      {
        goto LABEL_34;
      }
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_1C6BBCBD8(char a1)
{
  v3 = [v1 sportsRecommendationMappings];
  if (v3)
  {
    v4 = v3;
    if (a1)
    {
      v5 = [v3 alternativeRecommendations];
      if (v5)
      {
        v69 = v5;
        v71 = v4;
        v6 = [v5 scoredTagIDs];
        sub_1C6B18500();
        v7 = sub_1C6D79490();

        v8 = v7 + 64;
        v9 = 1 << *(v7 + 32);
        v10 = -1;
        if (v9 < 64)
        {
          v10 = ~(-1 << v9);
        }

        v11 = v10 & *(v7 + 64);
        v12 = (v9 + 63) >> 6;
        v73 = v7;

        v13 = 0;
        v1 = MEMORY[0x1E69E7CC0];
        if (v11)
        {
          goto LABEL_11;
        }

        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v12)
          {

            return v1;
          }

          v11 = *(v8 + 8 * v14);
          ++v13;
          if (v11)
          {
            v13 = v14;
            do
            {
LABEL_11:
              v15 = __clz(__rbit64(v11)) | (v13 << 6);
              v16 = (*(v73 + 48) + 16 * v15);
              v17 = *v16;
              v18 = v16[1];
              v19 = *(*(v73 + 56) + 8 * v15);
              swift_bridgeObjectRetain_n();
              v20 = v19;
              [v20 doubleValue];
              v22 = v21;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_1C6B65FD0(0, v1[2] + 1, 1, v1);
              }

              v24 = v1[2];
              v23 = v1[3];
              if (v24 >= v23 >> 1)
              {
                v1 = sub_1C6B65FD0((v23 > 1), v24 + 1, 1, v1);
              }

              v11 &= v11 - 1;

              v1[2] = v24 + 1;
              v25 = &v1[3 * v24];
              v25[4] = v17;
              v25[5] = v18;
              v25[6] = v22;
            }

            while (v11);
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (qword_1EDCE18E0 != -1)
      {
        swift_once();
      }

      v54 = off_1EDCE18E8;
      v55 = sub_1C6D79AA0();
      sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1C6D7E630;
      v57 = [v1 identifier];
      v58 = sub_1C6D795A0();
      v60 = v59;

      *(v56 + 56) = MEMORY[0x1E69E6158];
      *(v56 + 64) = sub_1C6B2064C();
      *(v56 + 32) = v58;
      *(v56 + 40) = v60;
      sub_1C6D78D30("Found no alternative recommendations on tag %{public}@", 54, 2, &dword_1C6B09000, v54, v55, v56);
    }

    else
    {
      v33 = [v3 defaultRecommendations];
      if (v33)
      {
        v70 = v33;
        v72 = v4;
        v34 = [v33 scoredTagIDs];
        sub_1C6B18500();
        v35 = sub_1C6D79490();

        v36 = v35 + 64;
        v37 = 1 << *(v35 + 32);
        v38 = -1;
        if (v37 < 64)
        {
          v38 = ~(-1 << v37);
        }

        v39 = v38 & *(v35 + 64);
        v40 = (v37 + 63) >> 6;
        v74 = v35;

        v41 = 0;
        v1 = MEMORY[0x1E69E7CC0];
        if (v39)
        {
          goto LABEL_27;
        }

        while (1)
        {
          v42 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            break;
          }

          if (v42 >= v40)
          {

            return v1;
          }

          v39 = *(v36 + 8 * v42);
          ++v41;
          if (v39)
          {
            v41 = v42;
            do
            {
LABEL_27:
              v43 = __clz(__rbit64(v39)) | (v41 << 6);
              v44 = (*(v74 + 48) + 16 * v43);
              v45 = *v44;
              v46 = v44[1];
              v47 = *(*(v74 + 56) + 8 * v43);
              swift_bridgeObjectRetain_n();
              v48 = v47;
              [v48 doubleValue];
              v50 = v49;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_1C6B65FD0(0, v1[2] + 1, 1, v1);
              }

              v52 = v1[2];
              v51 = v1[3];
              if (v52 >= v51 >> 1)
              {
                v1 = sub_1C6B65FD0((v51 > 1), v52 + 1, 1, v1);
              }

              v39 &= v39 - 1;

              v1[2] = v52 + 1;
              v53 = &v1[3 * v52];
              v53[4] = v45;
              v53[5] = v46;
              v53[6] = v50;
            }

            while (v39);
          }
        }

        goto LABEL_45;
      }

      if (qword_1EDCE18E0 != -1)
      {
        swift_once();
      }

      v61 = off_1EDCE18E8;
      v62 = sub_1C6D79AA0();
      sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_1C6D7E630;
      v64 = [v1 identifier];
      v65 = sub_1C6D795A0();
      v67 = v66;

      *(v63 + 56) = MEMORY[0x1E69E6158];
      *(v63 + 64) = sub_1C6B2064C();
      *(v63 + 32) = v65;
      *(v63 + 40) = v67;
      sub_1C6D78D30("Found no default recommendations on tag %{public}@", 50, 2, &dword_1C6B09000, v61, v62, v63);
    }

    goto LABEL_42;
  }

  if (qword_1EDCE18E0 != -1)
  {
LABEL_46:
    swift_once();
  }

  v26 = off_1EDCE18E8;
  v27 = sub_1C6D79A80();
  sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C6D7E630;
  v29 = [v1 identifier];
  v30 = sub_1C6D795A0();
  v32 = v31;

  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1C6B2064C();
  *(v28 + 32) = v30;
  *(v28 + 40) = v32;
  sub_1C6D78D30("Found no sportsRecommendationMappings on tag %{public}@", 55, 2, &dword_1C6B09000, v26, v27, v28);
LABEL_42:

  return 0;
}

uint64_t sub_1C6BBD2F0(uint64_t a1, void *a2)
{
  v2 = *a2 + 64;
  v3 = 1 << *(*a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v17 = result;
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(*(result + 56) + ((v8 << 9) | (8 * v10)));
    v12 = *(v11 + 16);
    if (v12)
    {

      v13 = (v11 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;

        sub_1C6B1E6A8(&v16, v14, v15);

        v13 += 3;
        --v12;
      }

      while (v12);

      result = v17;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6BBD420(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
  v4 = *(a2 + 16);
  if (v4 && (v10[6] = v2, v5 = sub_1C6B6732C(v4, 0), v6 = sub_1C6B67FC8(v10, v5 + 4, v4, a2), v7 = v10[0], , result = sub_1C6B688C4(v7), v6 != v4))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1C6D79320();

    return v9;
  }

  return result;
}

void sub_1C6BBD528(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsTopicMappingServiceResult(0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v43 = MEMORY[0x1E69E7CC0];
  if (v11 >> 62)
  {
    v36 = v8;
    v12 = sub_1C6D79E90();
    v8 = v36;
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v10;
  v37[2] = v8;
  v37[3] = a3;
  v37[1] = a2;
  if (v12)
  {
    if (v12 < 1)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    v41 = MEMORY[0x1E69E7CC0];
    v14 = v11 & 0xC000000000000001;
    v15 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
    v39 = xmmword_1C6D7E630;
    v40 = v12;
    do
    {
      if (v14)
      {
        v17 = MEMORY[0x1CCA56240](v13, v11);
      }

      else
      {
        v17 = *(v11 + 8 * v13 + 32);
        swift_unknownObjectRetain();
      }

      if ([v17 v15[494]])
      {
        v16 = swift_unknownObjectRetain();
        MEMORY[0x1CCA55C20](v16);
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C6D797C0();
        }

        sub_1C6D79800();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v41 = v43;
      }

      else
      {
        v18 = v14;
        v19 = v11;
        if (qword_1EDCE18E0 != -1)
        {
          swift_once();
        }

        v20 = off_1EDCE18E8;
        sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
        v21 = swift_allocObject();
        *(v21 + 16) = v39;
        v22 = [v17 identifier];
        v23 = sub_1C6D795A0();
        v25 = v24;

        *(v21 + 56) = MEMORY[0x1E69E6158];
        *(v21 + 64) = sub_1C6B2064C();
        *(v21 + 32) = v23;
        *(v21 + 40) = v25;
        v26 = sub_1C6D79AC0();
        sub_1C6D78D30("Found non-sports mapped to topic tag %{public}@", 47, 2, &dword_1C6B09000, v20, v26, v21);

        swift_unknownObjectRelease();
        v11 = v19;
        v14 = v18;
        v12 = v40;
        v15 = &_OBJC_LABEL_PROTOCOL___FCSportsProviding;
      }

      ++v13;
    }

    while (v12 != v13);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDCE18E0 != -1)
  {
    swift_once();
  }

  v27 = off_1EDCE18E8;
  sub_1C6BBDC08(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C6D7E630;
  v29 = v41;
  v30 = v38;
  if (v41 >> 62)
  {
    v31 = sub_1C6D79E90();
  }

  else
  {
    v31 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v31;
  v32 = sub_1C6D7A0E0();
  v34 = v33;
  *(v28 + 56) = MEMORY[0x1E69E6158];
  *(v28 + 64) = sub_1C6B2064C();
  *(v28 + 32) = v32;
  *(v28 + 40) = v34;
  v35 = sub_1C6D79AC0();
  sub_1C6D78D30("Found %{public}@ unique mapped to sports tags from channels and topics", 70, 2, &dword_1C6B09000, v27, v35, v28);

  sub_1C6D763E0();

  sub_1C6D763E0();
  *v30 = v29;
  sub_1C6BBDC08(0, &qword_1EDCE5DA8, type metadata accessor for SportsTopicMappingServiceResult, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  sub_1C6D78300();
}

uint64_t sub_1C6BBDA34()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1C6BBDA88()
{
  if (!qword_1EDCE62D8)
  {
    v0 = sub_1C6D763F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE62D8);
    }
  }
}

uint64_t type metadata accessor for SportsTopicMappingServiceResult(uint64_t a1)
{
  result = qword_1EDCE0608;
  if (!qword_1EDCE0608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6BBDB6C(uint64_t a1)
{
  sub_1C6B75508(319, &qword_1EDCDF9B0, &qword_1EDCDF8B0, &protocolRef_FCSportsProviding);
  if (v1 <= 0x3F)
  {
    sub_1C6BBDA88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6BBDC08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6BBDC6C(uint64_t a1)
{
  if (!qword_1EDCDFBF0)
  {
    sub_1C6BBDC08(255, &unk_1EDCDFA10, sub_1C6B758EC, MEMORY[0x1E69E62F8]);
    v1 = sub_1C6D794F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDFBF0);
    }
  }
}

void *ComputeServiceCohortMembershipService.evaluate(tags:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return sub_1C6BBDEC4(a1);
  }

  v2 = MEMORY[0x1E69E7CC0];

  return sub_1C6B5F1EC(v2);
}

void *sub_1C6BBDEC4(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1C6D783E0();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v11 = v10;
  v67 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v16 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v65 = v2;
    v66 = v4;
    v68 = v9;
    v69 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v19 = sub_1C6B6732C(v17, 0);
    v20 = sub_1C6B67FC8(v70, v19 + 4, v17, a1);
    v21 = v70[0];

    v13 = sub_1C6B688C4(v21);
    if (v20 != v17)
    {
      goto LABEL_42;
    }

    v9 = v68;
    v16 = v69;
    v18 = v19;
    v3 = v65;
    v4 = v66;
  }

  v22 = v4[7];
  MEMORY[0x1EEE9AC00](v13, v14);
  v60[-2] = v4;
  v60[-1] = v18;
  sub_1C6D784F0();
  if (v3)
  {

    return v22;
  }

  sub_1C6D78500();
  v22 = v70[3];

  v23 = [v22 tagCohortMembershipConfiguration];

  if (!v23)
  {

    sub_1C6BBEB14();
    swift_allocError();
    swift_willThrow();
    (*(v67 + 8))(v16, v11);
    return v22;
  }

  v66 = v18;
  v24 = v4[5];
  v25 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v24);
  v26 = (*(v25 + 8))(v24, v25);
  v27 = &selRef_bundleOutputConfiguration;
  if ((v26 & 1) == 0)
  {
    v27 = &selRef_nonBundleOutputConfiguration;
  }

  v28 = [v23 *v27];
  v29 = [v28 cohortMembershipOutputName];
  sub_1C6D795A0();

  sub_1C6D783C0();
  sub_1C6BB320C();
  v30 = sub_1C6D786D0();
  v60[0] = v23;
  v60[1] = 0;
  v68 = v9;
  v69 = v16;
  v31 = *(v30 + 16);
  if (v31)
  {
    v70[0] = MEMORY[0x1E69E7CC0];
    v32 = v30;
    sub_1C6B39260(0, v31, 0);
    v33 = v32;
    v34 = v70[0];
    v35 = *(v70[0] + 16);
    v36 = 32;
    do
    {
      v37 = *(v33 + v36);
      v70[0] = v34;
      v38 = *(v34 + 24);
      if (v35 >= v38 >> 1)
      {
        sub_1C6B39260((v38 > 1), v35 + 1, 1);
        v33 = v32;
        v34 = v70[0];
      }

      *(v34 + 16) = v35 + 1;
      *(v34 + 8 * v35 + 32) = v37;
      v36 += 4;
      ++v35;
      --v31;
    }

    while (v31);
  }

  else
  {

    v34 = MEMORY[0x1E69E7CC0];
  }

  v61 = v11;
  v39 = v66;
  v65 = v66[2];
  if (!v65)
  {
    v22 = MEMORY[0x1E69E7CC8];
LABEL_37:

    (*(v63 + 8))(v68, v64);
    (*(v67 + 8))(v69, v61);
    return v22;
  }

  v40 = 0;
  v62 = v34 + 32;
  v41 = v66 + 5;
  v22 = MEMORY[0x1E69E7CC8];
  while (v40 < v39[2])
  {
    v42 = *(v34 + 16);
    if (v40 == v42)
    {
      goto LABEL_37;
    }

    if (v40 >= v42)
    {
      goto LABEL_40;
    }

    v43 = *(v41 - 1);
    v44 = *v41;
    v45 = *(v62 + 8 * v40);
    swift_bridgeObjectRetain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70[0] = v22;
    v48 = sub_1C6B5DEA8(v43, v44);
    v49 = v22[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_41;
    }

    v52 = v47;
    if (v22[3] >= v51)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v47)
        {
          goto LABEL_20;
        }
      }

      else
      {
        sub_1C6B72BD8();
        if (v52)
        {
          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_1C6B6E868(v51, isUniquelyReferenced_nonNull_native);
      v53 = sub_1C6B5DEA8(v43, v44);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_44;
      }

      v48 = v53;
      if (v52)
      {
LABEL_20:

        v22 = v70[0];
        *(*(v70[0] + 56) + 8 * v48) = v45;

        goto LABEL_21;
      }
    }

    v22 = v70[0];
    *(v70[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
    v55 = (v22[6] + 16 * v48);
    *v55 = v43;
    v55[1] = v44;
    *(v22[7] + 8 * v48) = v45;

    v56 = v22[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_43;
    }

    v22[2] = v58;
LABEL_21:
    ++v40;
    v41 += 2;
    v39 = v66;
    if (v65 == v40)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6BBE530@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v46 = a4;
  v6 = sub_1C6D78810();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v44 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D783E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D75F80();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [*(a1 + 24) tagCohortMembershipConfiguration];
  if (v20)
  {
    v21 = v20;
    v43 = v9;
    sub_1C6D75F70();
    v22 = sub_1C6D75F60();
    v24 = v23;
    (*(v15 + 8))(v19, v14);
    v25 = a2[5];
    v26 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v25);
    v27 = (*(v26 + 8))(v25, v26);
    v28 = &selRef_bundleOutputConfiguration;
    if ((v27 & 1) == 0)
    {
      v28 = &selRef_nonBundleOutputConfiguration;
    }

    v29 = [v21 *v28];
    v30 = [v29 cohortMembershipOutputName];
    sub_1C6D795A0();

    v42 = v13;
    sub_1C6D783C0();

    v41 = v21;
    if (qword_1EC1D5AC0 != -1)
    {
      swift_once();
    }

    v31 = qword_1EC1D85C0;
    sub_1C6B1D314(0);
    v32 = swift_allocObject();
    v47 = xmmword_1C6D7E630;
    *(v32 + 16) = xmmword_1C6D7E630;
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1C6B2064C();
    v40[0] = v24;
    v40[1] = v22;
    *(v32 + 32) = v22;
    *(v32 + 40) = v24;

    v33 = sub_1C6D79AC0();
    sub_1C6D78D30("Running on global graph with request ID %{public}@", 50, 2, &dword_1C6B09000, v31, v33, v32);

    sub_1C6BBEB68(0, &qword_1EDCE7D20, sub_1C6B9F304);
    sub_1C6B9F304(0);
    *(swift_allocObject() + 16) = v47;
    sub_1C6D783C0();

    sub_1C6D78740();
    sub_1C6D787D0();
    sub_1C6BBEB68(0, &qword_1EDCE64A0, MEMORY[0x1E6996088]);
    v34 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v47;
    v37 = v42;
    v36 = v43;
    (*(v10 + 16))(v35 + v34, v42, v43);
    sub_1C6B68E34(v35);
    swift_setDeallocating();
    v38 = *(v10 + 8);
    v38(v35 + v34, v36);
    swift_deallocClassInstance();
    sub_1C6D78790();

    return (v38)(v37, v36);
  }

  else
  {
    sub_1C6BBEB14();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t ComputeServiceCohortMembershipService.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t ComputeServiceCohortMembershipService.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1C6BBEB14()
{
  result = qword_1EC1D7460;
  if (!qword_1EC1D7460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7460);
  }

  return result;
}

void sub_1C6BBEB68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D7A0F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C6BBEBD0()
{
  result = qword_1EC1D7468;
  if (!qword_1EC1D7468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D7468);
  }

  return result;
}

void sub_1C6BBEC24(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C6D75DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - v11;
  os_unfair_lock_lock((a1 + 24));
  v13 = *(a1 + 16);
  v14 = v13;
  os_unfair_lock_unlock((a1 + 24));
  if (!v13)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDCE23C0;
    v18 = sub_1C6D79AA0();
    sub_1C6D78D30("Encountered nil allowlist resource", 34, 2, &dword_1C6B09000, v17, v18, MEMORY[0x1E69E7CC0]);
    goto LABEL_10;
  }

  v15 = [v14 fileURL];
  if (!v15)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDCE23C0;
    v20 = sub_1C6D79AA0();
    sub_1C6D78D30("Encountered nil allowlist file url", 34, 2, &dword_1C6B09000, v19, v20, MEMORY[0x1E69E7CC0]);

LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v16 = v15;
  sub_1C6D75D90();

  (*(v5 + 32))(v12, v8, v4);
  v21 = sub_1C6D75E00();
  v23 = v22;
  v24 = objc_allocWithZone(MEMORY[0x1E69B6F18]);
  sub_1C6B1CD10(v21, v23);
  v25 = sub_1C6D75E50();
  sub_1C6B1C9F0(v21, v23);
  v26 = [v24 initWithData_];

  v27 = [objc_allocWithZone(MEMORY[0x1E69B5490]) initWithPBPersonalizationWhitelist_];
  sub_1C6B1C9F0(v21, v23);
  (*(v5 + 8))(v12, v4);
LABEL_11:
  *a2 = v27;
}

void sub_1C6BBF040(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C6D75DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - v11;
  os_unfair_lock_lock((a1 + 24));
  v13 = *(a1 + 16);
  v14 = v13;
  os_unfair_lock_unlock((a1 + 24));
  if (!v13)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDCE23C0;
    v18 = sub_1C6D79AA0();
    sub_1C6D78D30("Encountered nil bundle id mapping resource", 42, 2, &dword_1C6B09000, v17, v18, MEMORY[0x1E69E7CC0]);
    goto LABEL_10;
  }

  v15 = [v14 fileURL];
  if (!v15)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDCE23C0;
    v20 = sub_1C6D79AA0();
    sub_1C6D78D30("Encountered nil bundle id mapping file url", 42, 2, &dword_1C6B09000, v19, v20, MEMORY[0x1E69E7CC0]);

LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v16 = v15;
  sub_1C6D75D90();

  (*(v5 + 32))(v12, v8, v4);
  v21 = sub_1C6D75E00();
  v23 = v22;
  v24 = objc_allocWithZone(MEMORY[0x1E69B6D30]);
  sub_1C6B1CD10(v21, v23);
  v25 = sub_1C6D75E50();
  sub_1C6B1C9F0(v21, v23);
  v26 = [v24 initWithData_];

  v27 = [objc_allocWithZone(MEMORY[0x1E69B5440]) initWithPBBundleIDMapping_];
  sub_1C6B1C9F0(v21, v23);
  (*(v5 + 8))(v12, v4);
LABEL_11:
  *a2 = v27;
}

void sub_1C6BBF45C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C6D75DE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - v11;
  os_unfair_lock_lock((a1 + 24));
  v13 = *(a1 + 16);
  v14 = v13;
  os_unfair_lock_unlock((a1 + 24));
  if (!v13)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v17 = qword_1EDCE23C0;
    v18 = sub_1C6D79AA0();
    sub_1C6D78D30("Encountered nil url mapping resource", 36, 2, &dword_1C6B09000, v17, v18, MEMORY[0x1E69E7CC0]);
    goto LABEL_10;
  }

  v15 = [v14 fileURL];
  if (!v15)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v19 = qword_1EDCE23C0;
    v20 = sub_1C6D79AA0();
    sub_1C6D78D30("Encountered nil url mapping file url", 36, 2, &dword_1C6B09000, v19, v20, MEMORY[0x1E69E7CC0]);

LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v16 = v15;
  sub_1C6D75D90();

  (*(v5 + 32))(v12, v8, v4);
  v21 = sub_1C6D75E00();
  v23 = v22;
  v24 = objc_allocWithZone(MEMORY[0x1E69B7048]);
  sub_1C6B1CD10(v21, v23);
  v25 = sub_1C6D75E50();
  sub_1C6B1C9F0(v21, v23);
  v26 = [v24 initWithData_];

  v27 = [objc_allocWithZone(MEMORY[0x1E69B5488]) initWithPBURLMapping_];
  sub_1C6B1C9F0(v21, v23);
  (*(v5 + 8))(v12, v4);
LABEL_11:
  *a2 = v27;
}

uint64_t sub_1C6BBF898(uint64_t a1)
{
  if (qword_1EDCE23B8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDCE23C0;
  *(v1 + 176) = qword_1EDCE23C0;
  v3 = sub_1C6D79AC0();
  sub_1C6D78D30("Preparing recipe autofavorite resources", 39, 2, &dword_1C6B09000, v2, v3, MEMORY[0x1E69E7CC0]);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  *(v1 + 184) = v5;
  *v5 = v1;
  v5[1] = sub_1C6BBF9B0;

  return MEMORY[0x1EEE22AF0](0, ObjectType);
}

uint64_t sub_1C6BBF9B0(uint64_t a1)
{
  *(*v2 + 192) = a1;

  if (v1)
  {

    v3 = sub_1C6BC02E8;
  }

  else
  {
    v3 = sub_1C6BBFACC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C6BBFACC()
{
  v1 = v0;
  if (([*(v0 + 192) respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(*(v0 + 192), sel_recipePersonalizationAllowlistResourceId)) != 0)
  {
    v3 = v2;
    v4 = sub_1C6D795A0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  if (([*(v0 + 192) respondsToSelector_] & 1) != 0 && (v7 = objc_msgSend(*(v0 + 192), sel_recipePersonalizationBundleIdMappingResourceId)) != 0)
  {
    v8 = v7;
    v9 = sub_1C6D795A0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (([*(v0 + 192) respondsToSelector_] & 1) != 0 && (v12 = objc_msgSend(*(v0 + 192), sel_recipePersonalizationUrlMappingResourceId)) != 0)
  {
    v13 = v12;
    v14 = sub_1C6D795A0();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  if (qword_1EDCE60F8 != -1)
  {
LABEL_46:
    swift_once();
  }

  type metadata accessor for RecipeAutoFavoritesResourceManager();
  sub_1C6B24A00(qword_1EDCE0300, v17, type metadata accessor for RecipeAutoFavoritesResourceManager, &unk_1C6D82908);
  sub_1C6D77110();
  if (*(v0 + 272) != 1)
  {
    goto LABEL_29;
  }

  if (v6)
  {
    if (v11)
    {
      goto LABEL_17;
    }

LABEL_25:
    v24 = [*(v0 + 192) personalizationBundleIdMappingResourceId];
    if (v24)
    {
      v25 = v24;
      v9 = sub_1C6D795A0();
      v11 = v26;

      if (v16)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v9 = 0;
      v11 = 0;
      if (v16)
      {
        goto LABEL_29;
      }
    }

LABEL_18:
    v18 = [*(v0 + 192) personalizationUrlMappingResourceId];
    if (v18)
    {
      v19 = v18;
      v14 = sub_1C6D795A0();
      v16 = v20;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    goto LABEL_29;
  }

  v21 = [*(v0 + 192) personalizationWhitelistResourceId];
  if (v21)
  {
    v22 = v21;
    v4 = sub_1C6D795A0();
    v6 = v23;

    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v4 = 0;
    v6 = 0;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

LABEL_17:
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_29:
  *(v0 + 232) = v14;
  *(v0 + 240) = v16;
  *(v0 + 216) = v9;
  *(v0 + 224) = v11;
  *(v0 + 200) = v4;
  *(v0 + 208) = v6;
  sub_1C6B16F28(*(v0 + 168) + 24, v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
  *(v0 + 48) = v4;
  *(v0 + 56) = v6;
  *(v0 + 64) = v9;
  *(v0 + 72) = v11;
  *(v0 + 80) = v14;
  *(v0 + 88) = v16;

  v14 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_30:
  if (v14 <= 3)
  {
    v27 = 3;
  }

  else
  {
    v27 = v14;
  }

  v28 = (v0 + 56 + 16 * v14);
  v29 = v27 + 1;
  while (v14 != 3)
  {
    if (v29 == ++v14)
    {
      __break(1u);
      goto LABEL_46;
    }

    v30 = v28 + 2;
    v11 = *v28;
    v28 += 2;
    if (v11)
    {
      v4 = *(v30 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1C6B6592C(0, *(v6 + 2) + 1, 1, v6);
      }

      v16 = *(v6 + 2);
      v31 = *(v6 + 3);
      v9 = v16 + 1;
      if (v16 >= v31 >> 1)
      {
        v6 = sub_1C6B6592C((v31 > 1), v16 + 1, 1, v6);
      }

      *(v6 + 2) = v9;
      v32 = &v6[16 * v16];
      *(v32 + 4) = v4;
      *(v32 + 5) = v11;
      goto LABEL_30;
    }
  }

  sub_1C6B95D68();
  swift_arrayDestroy();
  *(v0 + 248) = sub_1C6D79390();

  v33 = swift_task_alloc();
  *(v1 + 256) = v33;
  *v33 = v1;
  v33[1] = sub_1C6BBFF40;

  return MEMORY[0x1EEE44EE0](v1 + 152);
}

uint64_t sub_1C6BBFF40()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1C6BC0374;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 96));
    v3 = sub_1C6BC0064;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

void sub_1C6BC0064()
{
  v1 = v0[19];
  if (!v0[26])
  {
    v5 = v0[33];
LABEL_8:
    v9 = v0[28];
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  if (*(v1 + 16))
  {
    v2 = sub_1C6B5DEA8(v0[25], v0[26]);
    v4 = v3;

    v5 = v0[33];
    if (v4)
    {
      v6 = *(*(v1 + 56) + 8 * v2);
      v7 = *(v0[21] + 64);
      *(swift_task_alloc() + 16) = v6;
      v8 = v6;
      os_unfair_lock_lock((v7 + 24));
      sub_1C6BC08B0((v7 + 16));
      os_unfair_lock_unlock((v7 + 24));
      if (v5)
      {
        return;
      }

      v9 = v0[28];
      if (!v9)
      {
        goto LABEL_16;
      }

LABEL_11:
      if (*(v1 + 16))
      {
        v10 = sub_1C6B5DEA8(v0[27], v9);
        v12 = v11;

        if (v12)
        {
          v13 = *(*(v1 + 56) + 8 * v10);
          v14 = *(v0[21] + 72);
          *(swift_task_alloc() + 16) = v13;
          v15 = v13;
          os_unfair_lock_lock((v14 + 24));
          sub_1C6BC08F4((v14 + 16));
          os_unfair_lock_unlock((v14 + 24));
          if (v5)
          {
            return;
          }
        }
      }

      else
      {
      }

      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v5 = v0[33];
  v9 = v0[28];
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_16:
  if (!v0[30])
  {
    goto LABEL_21;
  }

  if (!*(v1 + 16))
  {
    swift_unknownObjectRelease();

    goto LABEL_23;
  }

  v16 = sub_1C6B5DEA8(v0[29], v0[30]);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_21:
    swift_unknownObjectRelease();
LABEL_23:

    goto LABEL_24;
  }

  v19 = v0[21];
  v20 = *(*(v1 + 56) + 8 * v16);

  v21 = *(v19 + 80);
  *(swift_task_alloc() + 16) = v20;
  os_unfair_lock_lock((v21 + 24));
  sub_1C6BC08F4((v21 + 16));
  os_unfair_lock_unlock((v21 + 24));
  if (v5)
  {
    return;
  }

  swift_unknownObjectRelease();

LABEL_24:
  v22 = v0[1];

  v22();
}

uint64_t sub_1C6BC02E8(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = sub_1C6D79AA0();
  sub_1C6D78D30("Failed to fetch app configuration", 33, 2, &dword_1C6B09000, v2, v3, MEMORY[0x1E69E7CC0]);
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1C6BC0374()
{
  v1 = v0[33];
  v2 = v0[22];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v3 = sub_1C6D79AA0();
  sub_1C6B1D314(0);
  v4 = swift_allocObject();
  v0[17] = 0;
  *(v4 + 16) = xmmword_1C6D7E630;
  v0[18] = 0xE000000000000000;
  v0[20] = v1;
  sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
  sub_1C6D79E60();
  v5 = v0[17];
  v6 = v0[18];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1C6B2064C();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1C6D78D30("Failed to fetch recipe autofavorite resources %{public}@", 56, 2, &dword_1C6B09000, v2, v3, v4);

  swift_unknownObjectRelease();
  v7 = v0[1];

  return v7();
}

void *sub_1C6BC0508()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t sub_1C6BC0560()
{
  sub_1C6BC0508();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6BC0618(uint64_t a1, uint64_t a2)
{
  v5 = [v2 allowlist];
  if (!v5)
  {
    return 2;
  }

  v6 = v5;
  result = [v5 defaultTags];
  if (!result)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v8 = result;
  sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
  v9 = sub_1C6D79490();

  if (*(v9 + 16))
  {
    sub_1C6B5DEA8(a1, a2);
    if (v10)
    {

      return 0;
    }
  }

  result = [v6 optionalTags];
  if (!result)
  {
    goto LABEL_14;
  }

  v11 = result;
  v12 = sub_1C6D79490();

  if (!*(v12 + 16))
  {

    return 2;
  }

  sub_1C6B5DEA8(a1, a2);
  v14 = v13;

  if (v14)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

id sub_1C6BC08B0(id *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return v3;
}

uint64_t sub_1C6BC090C(uint64_t a1, uint64_t a2)
{
  v5 = a1 == 0x636F72705F707061 && a2 == 0xEB00000000737365;
  if (v5 || (sub_1C6D7A130() & 1) != 0)
  {
    v6 = *(v2 + 16);
  }

  else
  {
    v6 = 0x745F636974617473;
    if ((a1 != 0x636974617473 || a2 != 0xE600000000000000) && (sub_1C6D7A130() & 1) == 0)
    {
      if (qword_1EDCE66F8 != -1)
      {
        swift_once();
      }

      v8 = qword_1EDCE6700;
      sub_1C6B1D314(0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C6D7E630;
      *(v9 + 56) = MEMORY[0x1E69E6158];
      *(v9 + 64) = sub_1C6B2064C();
      *(v9 + 32) = a1;
      *(v9 + 40) = a2;

      v10 = sub_1C6D79AC0();
      sub_1C6D78D30("Asked to vend retention token for unknown retention key %{public}@", 66, 2, &dword_1C6B09000, v8, v10, v9);

      return 0;
    }
  }

  return v6;
}

uint64_t sub_1C6BC0AA0()
{

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(uint64_t a1)
{
  result = qword_1EDCE39D8;
  if (!qword_1EDCE39D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BC0D0C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7530);
  __swift_project_value_buffer(v0, qword_1EC1D7530);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "tag_id";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7530);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
  sub_1C6D78A40();
  sub_1C6BC1574(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
  sub_1C6BC1574(&qword_1EC1D7548, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6BC117C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6BC1574(&qword_1EC1D7568, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6BC11F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59A0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7530);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6BC12A0(uint64_t a1)
{
  v2 = sub_1C6BC1574(&qword_1EC1D7558, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6BC130C(uint64_t a1, uint64_t a2)
{
  sub_1C6BC1574(&qword_1EC1D7558, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);

  return sub_1C6D78C20();
}

uint64_t sub_1C6BC14A8(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6BC1574(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6BC1574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6BC161C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BC4A18(0, &qword_1EDCEA808, MEMORY[0x1E69E32C0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = sub_1C6D763C0();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    v17 = MEMORY[0x1E69E32C0];
    sub_1C6BC62FC(a1, &qword_1EDCEA808, MEMORY[0x1E69E32C0]);
    sub_1C6BC4B74(a2, a3, MEMORY[0x1E69E32C0], sub_1C6D11F10, sub_1C6B739E4, v10);

    return sub_1C6BC62FC(v10, &qword_1EDCEA808, v17);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1C6BC503C(v16, a2, a3, isUniquelyReferenced_nonNull_native, sub_1C6B739E4, sub_1C6B70260, MEMORY[0x1E69E32C0], MEMORY[0x1E69E32C0]);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_1C6BC189C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BC4A18(0, &unk_1EDCEA840, MEMORY[0x1E69E31D0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = sub_1C6D76190();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    v17 = MEMORY[0x1E69E31D0];
    sub_1C6BC62FC(a1, &unk_1EDCEA840, MEMORY[0x1E69E31D0]);
    sub_1C6BC4B74(a2, a3, MEMORY[0x1E69E31D0], sub_1C6D11F28, sub_1C6B73A18, v10);

    return sub_1C6BC62FC(v10, &unk_1EDCEA840, v17);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1C6BC503C(v16, a2, a3, isUniquelyReferenced_nonNull_native, sub_1C6B73A18, sub_1C6B70294, MEMORY[0x1E69E31D0], MEMORY[0x1E69E31D0]);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_1C6BC1B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BC4A18(0, &qword_1EDCEA320, MEMORY[0x1E6996150]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = sub_1C6D78760();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11, v14) == 1)
  {
    v17 = MEMORY[0x1E6996150];
    sub_1C6BC62FC(a1, &qword_1EDCEA320, MEMORY[0x1E6996150]);
    sub_1C6BC4B74(a2, a3, MEMORY[0x1E6996150], sub_1C6D11F40, sub_1C6B73E50, v10);

    return sub_1C6BC62FC(v10, &qword_1EDCEA320, v17);
  }

  else
  {
    (*(v12 + 32))(v16, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    sub_1C6BC503C(v16, a2, a3, isUniquelyReferenced_nonNull_native, sub_1C6B73E50, sub_1C6B70964, MEMORY[0x1E6996150], MEMORY[0x1E6996150]);

    *v3 = v21;
  }

  return result;
}

uint64_t sub_1C6BC1DF0(uint64_t a1, uint64_t *a2)
{
  sub_1C6BC4A18(0, &qword_1EDCEA310, MEMORY[0x1E6996170]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18 - v7;
  v9 = sub_1C6D78810();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v12) == 1)
  {
    v15 = MEMORY[0x1E6996170];
    sub_1C6BC62FC(a1, &qword_1EDCEA310, MEMORY[0x1E6996170]);
    sub_1C6BC4D08(a2, v8);
    sub_1C6BC624C(a2);
    return sub_1C6BC62FC(v8, &qword_1EDCEA310, v15);
  }

  else
  {
    (*(v10 + 32))(v14, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1C6BC53C0(v14, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1C6BC624C(a2);
    *v2 = v19;
  }

  return result;
}

uint64_t sub_1C6BC202C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), uint64_t (*a6)(uint64_t, uint64_t), void (*a7)(void))
{
  v8 = v7;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v7;
    sub_1C6BC5B54(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v7 = v23;
  }

  else
  {
    v18 = sub_1C6B5DEA8(a2, a3);
    v20 = v19;

    if (v20)
    {
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v8;
      v24 = *v8;
      if (!v21)
      {
        a7();
        v22 = v24;
      }

      result = a6(v18, v22);
      *v8 = v22;
    }
  }

  return result;
}

uint64_t sub_1C6BC214C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1C6BC55B8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_1C6B5DEA8(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1C6B744B4();
        v14 = v16;
      }

      result = sub_1C6B16C9C();
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1C6BC2244(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1C6BC4A18(0, qword_1EDCE3B70, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v11 = *(v10 - 8);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10, v13) == 1)
  {
    sub_1C6BC62FC(a1, qword_1EDCE3B70, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v16 = sub_1C6B64DD0(a2);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v24 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1C6B74A94();
        v20 = v24;
      }

      sub_1C6BC6358(*(v20 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      sub_1C6D1216C(v18, v20);
      *v3 = v20;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1C6BC62FC(v9, qword_1EDCE3B70, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  }

  else
  {
    sub_1C6BC6358(a1, v15, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    result = sub_1C6BC5894(v15, a2, v21);
    *v3 = v24;
  }

  return result;
}

uint64_t sub_1C6BC2514()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1C6BC255C()
{
  v1 = v0;
  v85 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  MEMORY[0x1EEE9AC00](v85, v2);
  v86 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1C6D783E0();
  v4 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90, v5);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  v87 = *(v8 - 8);
  v88 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v89 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C6D75F80();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + 32);
  os_unfair_lock_lock((v16 + 32));
  v17 = *(v16 + 16);
  v83 = v16 + 16;
  v18 = *(v16 + 24);
  sub_1C6BC372C(v17, v18);
  v84 = v16;
  os_unfair_lock_unlock((v16 + 32));
  if (v18 >> 60 != 15)
  {
    if (qword_1EC1D5AC8 != -1)
    {
      swift_once();
    }

    v20 = qword_1EC1D85C8;
    v21 = sub_1C6D79AC0();
    sub_1C6D78D30("Returning cached user interest vector", 37, 2, &dword_1C6B09000, v20, v21, MEMORY[0x1E69E7CC0]);
    return;
  }

  v81 = v12;
  v82 = v11;
  v19 = [*(v1 + 16) cachedSubscription];
  if (objc_getAssociatedObject(v19, v19 + 1))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
  }

  v22 = v90;
  v94 = v92;
  v95 = v93;
  v90 = v15;
  if (!*(&v93 + 1))
  {
    sub_1C6B79FDC(&v94);
    goto LABEL_13;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v23 = 0;
    v24 = 0;
    goto LABEL_14;
  }

  v23 = v96;
  v24 = [v96 integerValue];
  if (v24 == -1)
  {
    goto LABEL_21;
  }

LABEL_14:
  if (objc_getAssociatedObject(v19, ~v24))
  {
    sub_1C6D79C50();
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
  }

  v94 = v92;
  v95 = v93;
  if (!*(&v93 + 1))
  {
    sub_1C6B79FDC(&v94);
    goto LABEL_21;
  }

  sub_1C6B18500();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:

    v27 = -55;
    goto LABEL_22;
  }

  v25 = v96;
  v26 = [v25 integerValue];

  v27 = v26 - 55;
LABEL_22:
  v28 = (v27 ^ v24) & 1;
  sub_1C6D75F70();
  if (qword_1EC1D5AC8 != -1)
  {
    swift_once();
  }

  v29 = qword_1EC1D85C8;
  sub_1C6B1D314(0);
  v78 = v30;
  v31 = swift_allocObject();
  v77 = xmmword_1C6D7E630;
  *(v31 + 16) = xmmword_1C6D7E630;
  v32 = sub_1C6D75F60();
  v34 = v33;
  *(v31 + 56) = MEMORY[0x1E69E6158];
  v79 = sub_1C6B2064C();
  *(v31 + 64) = v79;
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v35 = v90;
  v36 = sub_1C6D79AC0();
  v80 = v29;
  sub_1C6D78D30("Generating user interest vector with request id %{public}@", 58, 2, &dword_1C6B09000, v29, v36, v31);

  MEMORY[0x1EEE9AC00](v37, v38);
  *(&v75 - 16) = v28 ^ 1;
  *(&v75 - 1) = v35;
  v39 = v89;
  v40 = v91;
  sub_1C6D784F0();
  v41 = v40;
  if (v40)
  {
    goto LABEL_38;
  }

  sub_1C6D78500();
  v42 = *(&v95 + 1);

  v43 = [v42 smarterFetchConfiguration];

  if (!v43)
  {
    type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors(0);
    sub_1C6BC4924(&qword_1EC1D75D8, type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors, &unk_1C6D82C70);
    v41 = swift_allocError();
    (*(v4 + 56))(v56, 1, 1, v22);
    swift_willThrow();
    (*(v87 + 8))(v39, v88);
LABEL_38:
    (*(v81 + 8))(v35, v82);
    v59 = sub_1C6D79AA0();
    v60 = swift_allocObject();
    *(v60 + 16) = v77;
    *&v94 = 0;
    *(&v94 + 1) = 0xE000000000000000;
    *&v92 = v41;
    sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
    sub_1C6D79E60();
    v61 = v94;
    v62 = v79;
    *(v60 + 56) = MEMORY[0x1E69E6158];
    *(v60 + 64) = v62;
    *(v60 + 32) = v61;
    sub_1C6D78D30("An error occurred while generating user interest vector %{public}@", 66, 2, &dword_1C6B09000, v80, v59, v60);

    swift_willThrow();
    return;
  }

  v44 = &selRef_bundleOutputConfiguration;
  if (v28)
  {
    v44 = &selRef_nonBundleOutputConfiguration;
  }

  v45 = *v44;
  v76 = v43;
  v46 = [v43 v45];
  v47 = [v46 userEncodingOutputNames];

  v48 = sub_1C6D79780();
  v49 = *(v48 + 16);
  if (v49)
  {
    v91 = 0;
    *&v94 = MEMORY[0x1E69E7CC0];
    sub_1C6B394C4(0, v49, 0);
    v50 = v94;
    v75 = v48;
    v51 = v48 + 40;
    do
    {

      sub_1C6D783C0();
      *&v94 = v50;
      v53 = *(v50 + 16);
      v52 = *(v50 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_1C6B394C4((v52 > 1), v53 + 1, 1);
        v50 = v94;
      }

      *(v50 + 16) = v53 + 1;
      (*(v4 + 32))(v50 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v53, v7, v22);
      v51 += 16;
      --v49;
    }

    while (v49);

    v35 = v90;
    v41 = v91;
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = v89;
  *(&v75 - 2) = v89;
  v58 = sub_1C6C26FA4(MEMORY[0x1E69E7CC8], sub_1C6BC48EC, (&v75 - 4), v50);
  if (v41)
  {

    (*(v87 + 8))(v57, v88);
    goto LABEL_38;
  }

  v63 = v58;

  MEMORY[0x1EEE9AC00](v64, v65);
  *(&v75 - 2) = v63;
  sub_1C6BC4924(&qword_1EDCE5B20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Features);
  v66 = v86;
  sub_1C6D78C30();
  v67 = v66;

  v68 = sub_1C6D78BF0();
  v70 = v69;
  v71 = sub_1C6BC496C(v67);
  MEMORY[0x1EEE9AC00](v71, v72);
  *(&v75 - 2) = v68;
  *(&v75 - 1) = v70;
  v73 = v84;
  os_unfair_lock_lock(v84 + 8);
  sub_1C6BC49C8(v83);
  v74 = v90;
  os_unfair_lock_unlock(v73 + 8);

  (*(v87 + 8))(v89, v88);
  (*(v81 + 8))(v74, v82);
}

void sub_1C6BC3054(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1C6D783E0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D78810();
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [*(a1 + 24) smarterFetchConfiguration];
  if (v19)
  {
    v35 = v18;
    v33 = v9;
    v20 = &selRef_bundleOutputConfiguration;
    if ((a2 & 1) == 0)
    {
      v20 = &selRef_nonBundleOutputConfiguration;
    }

    v21 = *v20;
    v34 = v19;
    v22 = [v19 v21];
    v23 = [v22 userEncodingOutputNames];

    v24 = sub_1C6D79780();
    v25 = *(v24 + 16);
    if (v25)
    {
      v32[2] = a3;
      v32[3] = a4;
      v32[4] = v4;
      v36 = MEMORY[0x1E69E7CC0];
      sub_1C6B394C4(0, v25, 0);
      v26 = v36;
      v32[1] = v24;
      v27 = v24 + 40;
      v28 = v33;
      do
      {

        sub_1C6D783C0();
        v36 = v26;
        v30 = *(v26 + 16);
        v29 = *(v26 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1C6B394C4((v29 > 1), v30 + 1, 1);
          v28 = v33;
          v26 = v36;
        }

        *(v26 + 16) = v30 + 1;
        (*(v10 + 32))(v26 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v30, v13, v28);
        v27 += 16;
        --v25;
      }

      while (v25);
    }

    else
    {

      v26 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6D78800();
    sub_1C6D75F60();
    sub_1C6B68E34(v26);

    sub_1C6D78790();
  }

  else
  {
    type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors(0);
    sub_1C6BC4924(&qword_1EC1D75D8, type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors, &unk_1C6D82C70);
    swift_allocError();
    (*(v10 + 56))(v31, 1, 1, v9);
    swift_willThrow();
  }
}

uint64_t sub_1C6BC33DC(uint64_t a1, uint64_t a2)
{
  sub_1C6BC4A18(0, &qword_1EDCEA320, MEMORY[0x1E6996150]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v24 - v9;
  v11 = sub_1C6D78760();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B7A08C(0);
  sub_1C6D78520();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C6BC62FC(v10, &qword_1EDCEA320, MEMORY[0x1E6996150]);
    type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors(0);
    sub_1C6BC4924(&qword_1EC1D75D8, type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors, &unk_1C6D82C70);
    swift_allocError();
    v17 = v16;
    v18 = sub_1C6D783E0();
    v19 = *(v18 - 8);
    (*(v19 + 16))(v17, a2, v18);
    (*(v19 + 56))(v17, 0, 1, v18);
    return swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v11);
    v21 = sub_1C6D783D0();
    v23 = v22;
    (*(v12 + 16))(v6, v15, v11);
    (*(v12 + 56))(v6, 0, 1, v11);
    sub_1C6BC1B70(v6, v21, v23);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_1C6BC372C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C6B1CD10(result, a2);
  }

  return result;
}

uint64_t sub_1C6BC3740(void *a1, uint64_t a2)
{
  v3 = v2;
  v84 = a1;
  v79 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v5);
  v85 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v78 = v70 - v9;
  v10 = sub_1C6D78760();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v83 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v71 = v70 - v16;
  sub_1C6BC4A18(0, &qword_1EDCDFB80, sub_1C6BC4A6C);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v81 = (v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v80 = (v70 - v22);
  v23 = a2 + 64;
  v24 = 1 << *(a2 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(a2 + 64);
  v70[0] = (v24 + 63) >> 6;
  v70[1] = v11 + 16;
  v82 = (v11 + 32);
  v72 = v11;
  v73 = a2;
  v74 = (v11 + 8);

  v27 = 0;
  v75 = a2 + 64;
  v76 = v10;
  while (v26)
  {
    v86 = v3;
    v30 = v27;
LABEL_16:
    v33 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v34 = v33 | (v30 << 6);
    v35 = v72;
    v36 = (*(v73 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    v39 = v71;
    (*(v72 + 16))(v71, *(v73 + 56) + *(v72 + 72) * v34, v10);
    sub_1C6BC4A6C(0);
    v41 = v40;
    v42 = *(v40 + 48);
    v43 = v81;
    *v81 = v38;
    *(v43 + 8) = v37;
    (*(v35 + 32))(v43 + v42, v39, v10);
    (*(*(v41 - 8) + 56))(v43, 0, 1, v41);

LABEL_17:
    v44 = v80;
    sub_1C6BC4AD8(v43, v80);
    sub_1C6BC4A6C(0);
    if ((*(*(v41 - 8) + 48))(v44, 1, v41) == 1)
    {
    }

    v45 = *v44;
    v46 = v44[1];
    v47 = *(v41 + 48);
    v48 = v83;
    v49 = (*v82)(v83, v44 + v47, v10);
    MEMORY[0x1EEE9AC00](v49, v50);
    v70[-2] = v48;
    sub_1C6BC4924(qword_1EDCE5BF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v51 = v78;
    v52 = v86;
    sub_1C6D78C30();
    v3 = v52;
    sub_1C6BC6358(v51, v85, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v53 = v84;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *v53;
    v87 = v55;
    v57 = sub_1C6B5DEA8(v45, v46);
    v58 = v55[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_32;
    }

    v61 = v56;
    if (v55[3] >= v60)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v56)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1C6B73E84();
        if (v61)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1C6B70998(v60, isUniquelyReferenced_nonNull_native);
      v62 = sub_1C6B5DEA8(v45, v46);
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_34;
      }

      v57 = v62;
      if (v61)
      {
LABEL_4:

        v28 = v87;
        sub_1C6BC63C0(v85, v87[7] + *(v77 + 72) * v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        goto LABEL_5;
      }
    }

    v28 = v87;
    v87[(v57 >> 6) + 8] |= 1 << v57;
    v64 = (v28[6] + 16 * v57);
    *v64 = v45;
    v64[1] = v46;
    sub_1C6BC6358(v85, v28[7] + *(v77 + 72) * v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v65 = v28[2];
    v66 = __OFADD__(v65, 1);
    v67 = v65 + 1;
    if (v66)
    {
      goto LABEL_33;
    }

    v28[2] = v67;
LABEL_5:
    v29 = v83;
    *v84 = v28;
    v10 = v76;
    (*v74)(v29, v76);
    v23 = v75;
  }

  if (v70[0] <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = v70[0];
  }

  v32 = v31 - 1;
  while (1)
  {
    v30 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v30 >= v70[0])
    {
      v86 = v3;
      sub_1C6BC4A6C(0);
      v41 = v68;
      v43 = v81;
      (*(*(v68 - 8) + 56))(v81, 1, 1, v68);
      v26 = 0;
      v27 = v32;
      goto LABEL_17;
    }

    v26 = *(v23 + 8 * v30);
    ++v27;
    if (v26)
    {
      v86 = v3;
      v27 = v30;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}

uint64_t sub_1C6BC3DD4(uint64_t a1, uint64_t a2)
{
  sub_1C6BC4A18(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v40 - v6;
  v8 = sub_1C6D78760();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = (&v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v13, a2, v8, v11);
  result = (*(v9 + 88))(v13, v8);
  if (result == *MEMORY[0x1E6996138])
  {
    (*(v9 + 96))(v13, v8);
    v15 = *v13;
    v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v40 - 2) = v15;
    sub_1C6BC4924(qword_1EDCE59B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6D78C30();

    v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
LABEL_14:
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    return sub_1C6B5F5A0(v7, a1);
  }

  if (result == *MEMORY[0x1E6996140])
  {
    (*(v9 + 96))(v13, v8);
    v19 = *v13;
    v20 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
    MEMORY[0x1EEE9AC00](v20, v21);
    *(&v40 - 2) = v19;
    sub_1C6BC4924(qword_1EDCE58F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6D78C30();

    v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E6996148])
  {
    (*(v9 + 96))(v13, v8);
    v22 = *v13;
    v23 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
    MEMORY[0x1EEE9AC00](v23, v24);
    *(&v40 - 2) = v22;
    sub_1C6BC4924(&qword_1EC1D75E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6D78C30();

    v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E6996130])
  {
    (*(v9 + 96))(v13, v8);
    v25 = *v13;
    v26 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
    MEMORY[0x1EEE9AC00](v26, v27);
    *(&v40 - 2) = v25;
    sub_1C6BC4924(qword_1EDCE5A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6D78C30();

    v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E6996118])
  {
    (*(v9 + 96))(v13, v8);
    v28 = *v13;
    v29 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    MEMORY[0x1EEE9AC00](v29, v30);
    *(&v40 - 2) = v28;
    sub_1C6BC4924(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6D78C30();

LABEL_13:
    v18 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
    goto LABEL_14;
  }

  if (result == *MEMORY[0x1E6996120])
  {
    (*(v9 + 96))(v13, v8);
    v32 = *v13;
    v31 = v13[1];
    v33 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
    MEMORY[0x1EEE9AC00](v33, v34);
    *(&v40 - 2) = v32;
    *(&v40 - 1) = v31;
    sub_1C6BC4924(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6D78C30();
    sub_1C6B1C9F0(v32, v31);
    goto LABEL_13;
  }

  if (result != *MEMORY[0x1E6996128])
  {
    if (qword_1EC1D5AC8 != -1)
    {
      swift_once();
    }

    v35 = qword_1EC1D85C8;
    v36 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C6D7E630;
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1C6D79E60();
    v38 = v40;
    v39 = v41;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1C6B2064C();
    *(v37 + 32) = v38;
    *(v37 + 40) = v39;
    sub_1C6D78D30("Skipping unknown feature type when converting to smarter fetch format: %{public}@", 81, 2, &dword_1C6B09000, v35, v36, v37);

    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

uint64_t sub_1C6BC4610(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if ((v1 + 0x4000000000000000) < 0)
  {
    __break(1u);
  }

  if (v1)
  {
    if ((2 * v1) < 15)
    {
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v2 = a1;
      sub_1C6D75C40();
      swift_allocObject();
      v3 = sub_1C6D75C30();
      v4 = v3;
      v5 = v1 >> 30;
      if (v1 >> 30)
      {
        sub_1C6D75E30();
        v5 = swift_allocObject();
        v6 = v4 | 0x8000000000000000;
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
      }

      else
      {
        v6 = v3 | 0x4000000000000000;
      }

      a1 = v2;
    }

    v20 = v5;
    v21 = v6;
    v9 = (a1 + 32);
    v10 = MEMORY[0x1E69E7508];
    do
    {
      v12 = *v9++;
      v11 = HIBYTE(v12);
      sub_1C6BC6180(0, &qword_1EC1D75E8, v10, MEMORY[0x1E69E6BC0]);
      v14 = v13;
      v18 = v13;
      v15 = sub_1C6BC61D0();
      v19 = v15;
      LOBYTE(v17[0]) = v12;
      __swift_project_boxed_opaque_existential_1(v17, v14);
      sub_1C6D75E40();
      __swift_destroy_boxed_opaque_existential_1(v17);
      v18 = v14;
      v19 = v15;
      LOBYTE(v17[0]) = v11;
      __swift_project_boxed_opaque_existential_1(v17, v14);
      sub_1C6D75E40();
      __swift_destroy_boxed_opaque_existential_1(v17);
      --v1;
    }

    while (v1);
    v7 = v20;
    v8 = v21;
  }

  else
  {
    v7 = 0;
    v8 = 0xC000000000000000;
  }

  sub_1C6B1CD10(v7, v8);
  sub_1C6B1C9F0(v7, v8);
  return v7;
}

uint64_t type metadata accessor for SmarterFetchUserInterestVectorProvider.Errors(uint64_t a1)
{
  result = qword_1EC1D75F8;
  if (!qword_1EC1D75F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6BC4924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6BC496C(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6BC49C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1C6B75B88(*a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 8) = v3;
  return sub_1C6B1CD10(v4, v3);
}

void sub_1C6BC4A18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6BC4A6C(uint64_t a1)
{
  if (!qword_1EDCDFB88)
  {
    sub_1C6D78760();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB88);
    }
  }
}

uint64_t sub_1C6BC4AD8(uint64_t a1, uint64_t a2)
{
  sub_1C6BC4A18(0, &qword_1EDCDFB80, sub_1C6BC4A6C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6BC4B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_1C6B5DEA8(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v26 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v26;
    }

    v17 = *(v16 + 56);
    v18 = a3(0);
    v25 = *(v18 - 8);
    (*(v25 + 32))(a6, v17 + *(v25 + 72) * v14, v18);
    a4(v14, v16);
    *v10 = v16;
    v19 = *(v25 + 56);
    v20 = a6;
    v21 = 0;
    v22 = v18;
  }

  else
  {
    v23 = a3(0);
    v19 = *(*(v23 - 8) + 56);
    v22 = v23;
    v20 = a6;
    v21 = 1;
  }

  return v19(v20, v21, 1, v22);
}

uint64_t sub_1C6BC4D08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1C6B64FC0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C6B73F00();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = sub_1C6D78810();
    v18 = *(v11 - 8);
    (*(v18 + 32))(a2, v10 + *(v18 + 72) * v7, v11);
    sub_1C6D11F58(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = sub_1C6D78810();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1C6BC4E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1C6B5DEA8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v21 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1C6B751D4();
      v10 = v21;
    }

    v11 = *(v10 + 56);
    sub_1C6B3C1F8(0);
    v13 = v12;
    v20 = *(v12 - 8);
    sub_1C6BC6358(v11 + *(v20 + 72) * v8, a3, sub_1C6B3C1F8);
    sub_1C6D124CC(v8, v10);
    *v4 = v10;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    sub_1C6B3C1F8(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1C6BC503C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_1C6B5DEA8(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v32 = sub_1C6B5DEA8(a2, a3);
    if ((v22 & 1) == (v33 & 1))
    {
      v18 = v32;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1C6D7A1C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v24 = *v11;
  if (v22)
  {
LABEL_8:
    v25 = v24[7];
    v26 = a7(0);
    v27 = *(v26 - 8);
    v28 = *(v27 + 40);
    v29 = v26;
    v30 = v25 + *(v27 + 72) * v18;

    return v28(v30, a1, v29);
  }

LABEL_13:
  sub_1C6BC5DA4(v18, a2, a3, a1, v24, a8);
}

uint64_t sub_1C6BC51F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C6D770E0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1C6B64EEC(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1C6B73A4C();
      goto LABEL_7;
    }

    sub_1C6B702C8(v18, a3 & 1);
    v23 = sub_1C6B64EEC(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1C6BC5CEC(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1C6D7A1C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

uint64_t sub_1C6BC53C0(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1C6B64FC0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1C6B73F00();
      goto LABEL_7;
    }

    sub_1C6B70A14(v13, a3 & 1);
    v24 = sub_1C6B64FC0(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1C6BC5E58(v10, a2, a1, v16);
      return sub_1C6BC62A0(a2, v26);
    }

LABEL_15:
    result = sub_1C6D7A1C0();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = v16[7];
  v18 = sub_1C6D78810();
  v19 = *(v18 - 8);
  v20 = *(v19 + 40);
  v21 = v18;
  v22 = v17 + *(v19 + 72) * v10;

  return v20(v22, a1, v21);
}

uint64_t sub_1C6BC55B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C6B5DEA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C6B7139C(v16, a4 & 1);
      v11 = sub_1C6B5DEA8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1C6D7A1C0();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1C6B744B4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_1C6BC5730(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C6B5DEA8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C6B71A0C(v16, a4 & 1);
      result = sub_1C6B5DEA8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1C6D7A1C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1C6B74918();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1C6BC5894(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1C6B64DD0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
      return sub_1C6BC63C0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1C6B74A94();
    goto LABEL_7;
  }

  sub_1C6B71CC0(v13, a3 & 1);
  v20 = sub_1C6B64DD0(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1C6D7A1C0();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1C6BC5F20(v10, a2, a1, v16);
}

uint64_t sub_1C6BC59E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1C6B5DEA8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      sub_1C6B3C1F8(0);
      return sub_1C6BC63C0(a1, v19 + *(*(v20 - 8) + 72) * v12, sub_1C6B3C1F8);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1C6B751D4();
    goto LABEL_7;
  }

  sub_1C6B72894(v15, a4 & 1);
  v22 = sub_1C6B5DEA8(a2, a3);
  if ((v16 & 1) != (v23 & 1))
  {
LABEL_15:
    result = sub_1C6D7A1C0();
    __break(1u);
    return result;
  }

  v12 = v22;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1C6BC5FC8(v12, a2, a3, a1, v18);
}

uint64_t sub_1C6BC5B54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1C6B5DEA8(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1C6B5DEA8(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_1C6D7A1C0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_1C6BC5CEC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C6D770E0();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1C6BC5DA4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v9 = (a5[6] + 16 * a1);
  *v9 = a2;
  v9[1] = a3;
  v10 = a5[7];
  v11 = a6(0);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

uint64_t sub_1C6BC5E58(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6] + 56 * a1;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  v9 = a4[7];
  v10 = sub_1C6D78810();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a3, v10);
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_1C6BC5F20(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  result = sub_1C6BC6358(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
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

uint64_t sub_1C6BC5FC8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  sub_1C6B3C1F8(0);
  result = sub_1C6BC6358(a4, v9 + *(*(v10 - 8) + 72) * a1, sub_1C6B3C1F8);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_1C6BC6074(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];
  sub_1C6B1CD10(v4, v3);
  result = sub_1C6B1C9F0(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C6BC60D0(uint64_t a1)
{
  v3 = sub_1C6BC4610(*(v1 + 16));
  v5 = v4;
  result = sub_1C6B1C9F0(*a1, *(a1 + 8));
  *a1 = v3;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_1C6BC6134(uint64_t *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

void sub_1C6BC6180(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1C6BC61D0()
{
  result = qword_1EC1D75F0;
  if (!qword_1EC1D75F0)
  {
    sub_1C6BC6180(255, &qword_1EC1D75E8, MEMORY[0x1E69E7508], MEMORY[0x1E69E6BC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D75F0);
  }

  return result;
}

uint64_t sub_1C6BC62FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6BC4A18(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6BC6358(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BC63C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6BC6450(uint64_t a1)
{
  v1 = sub_1C6D783E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x1E69AA900];
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6BDF178(v1 + *(v8 + 24), v7, &qword_1EDCE66F0, v3);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6BDF108(v7, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6BC6674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E69AA900];
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6BDF178(a1 + *(v9 + 24), v8, &qword_1EDCE66F0, v4);
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v8, v10);
  }

  sub_1C6D78990();
  result = (v12)(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C6BDF108(v8, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  return result;
}

uint64_t sub_1C6BC680C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  sub_1C6BDF108(a2 + v10, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  sub_1C6BDF108(v1 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.timestamp.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6BDF178(v1 + v16, v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6BDF108(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6BC6C78;
}

void sub_1C6BC6C78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1C6BDF108(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1C6BDF108(v9 + v3, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.hasTimestamp.getter()
{
  v1 = MEMORY[0x1E69AA900];
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6BDF178(v0 + *(v6 + 24), v5, &qword_1EDCE66F0, v1);
  v7 = sub_1C6D789A0();
  v8 = (*(*(v7 - 8) + 48))(v5, 1, v7) != 1;
  sub_1C6BDF108(v5, &qword_1EDCE66F0, v1);
  return v8;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.clearTimestamp()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 24);
  sub_1C6BDF108(v0 + v1, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

void sub_1C6BC6FE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6BC7070(uint64_t a1, uint64_t a2)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleSeen.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6BDF178(v2, &v15 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  sub_1C6D78A30();
  v10 = *(v9 + 24);
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = *(v9 + 28);
  v13 = sub_1C6D78A00();
  return (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleSeen.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6BDF178(v2, v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6BDF108(v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6BC7B1C(v10, v14, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
      return sub_1C6BC764C;
    }

    sub_1C6BC7690(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *v14 = 0;
  sub_1C6D78A30();
  v17 = *(v11 + 24);
  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
  v19 = *(v11 + 28);
  v20 = sub_1C6D78A00();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  return sub_1C6BC764C;
}

uint64_t sub_1C6BC7690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleVisited.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6BDF178(v2, &v15 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
  v13 = *(v10 + 28);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(&a1[v13], 1, 1, v14);
}

uint64_t sub_1C6BC791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v18 - v14;
  sub_1C6BDF25C(a1, &v18 - v14, a6);
  sub_1C6BDF108(a2, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BC7B1C(v15, a2, a7);
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

uint64_t sub_1C6BC7A58(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_1C6BDF108(v3, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BC7B1C(a1, v3, a2);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t sub_1C6BC7B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleVisited.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6BDF178(v2, v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6BDF108(v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v14 = 0;
    sub_1C6D78A30();
    v17 = *(v11 + 24);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    v19 = *(v11 + 28);
    v20 = sub_1C6D78A00();
    (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
    return sub_1C6BC7E6C;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C6BC7690(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v10, v14, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  return sub_1C6BC7E6C;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleRead.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  sub_1C6BDF178(v2, &v15 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  sub_1C6D78A30();
  v11 = *(v10 + 28);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  v13 = *(v10 + 32);
  v14 = sub_1C6D78A00();
  return (*(*(v14 - 8) + 56))(a1 + v13, 1, 1, v14);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleRead.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x30uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  if (v4)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v6[1] = v9;
  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  v12 = *(*(v11 - 8) + 64);
  if (v4)
  {
    v6[2] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v6[2] = malloc(*(*(v11 - 8) + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[3] = v13;
  sub_1C6BDF178(v2, v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v6[4] = v15;
  v16 = *(v15 - 8);
  v6[5] = v16;
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_1C6BDF108(v10, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v14 = 0;
    *(v14 + 8) = MEMORY[0x1E69E7CC0];
    sub_1C6D78A30();
    v17 = *(v11 + 28);
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    v19 = *(v11 + 32);
    v20 = sub_1C6D78A00();
    (*(*(v20 - 8) + 56))(v14 + v19, 1, 1, v20);
    return sub_1C6BC83F8;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C6BC7690(v10, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v10, v14, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  return sub_1C6BC83F8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleShared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  sub_1C6D78A30();
  v11 = *(v10 + 28);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleShared.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 1;
    sub_1C6D78A30();
    v16 = *(v10 + 28);
    v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    return sub_1C6BC88F8;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  return sub_1C6BC88F8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleLiked.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BC8B24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleLiked.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BC8FC8;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  return sub_1C6BC8FC8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleDisliked.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BC91F4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleDisliked.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BC9698;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  return sub_1C6BC9698;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleSaved.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BC98C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleSaved.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BC9D68;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  return sub_1C6BC9D68;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagMuted.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6BDF178(v2, &v10 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BC9F4C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6BDF178(a1, &v10 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagMuted.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v12 = 0;
    sub_1C6D78A30();
    return sub_1C6BCA364;
  }

  if (swift_getEnumCaseMultiPayload() != 7)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  return sub_1C6BCA364;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagUnmuted.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6BDF178(v2, &v10 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BCA548@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6BDF178(a1, &v10 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagUnmuted.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v12 = 0;
    sub_1C6D78A30();
    return sub_1C6BCA960;
  }

  if (swift_getEnumCaseMultiPayload() != 8)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  return sub_1C6BCA960;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagFollowed.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6BDF178(v2, &v10 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BCAB44@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6BDF178(a1, &v10 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagFollowed.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v12 = 0;
    sub_1C6D78A30();
    return sub_1C6BCAF5C;
  }

  if (swift_getEnumCaseMultiPayload() != 9)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  return sub_1C6BCAF5C;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagUnfollowed.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6BDF178(v2, &v10 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BCB140@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6BDF178(a1, &v10 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagUnfollowed.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v12 = 0;
    sub_1C6D78A30();
    return sub_1C6BCB558;
  }

  if (swift_getEnumCaseMultiPayload() != 10)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  return sub_1C6BCB558;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagFeedView.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = sub_1C6D78A00();
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BCB784@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = sub_1C6D78A00();
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagFeedView.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = sub_1C6D78A00();
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BCBC28;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  return sub_1C6BCBC28;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackVisited.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BCBE54@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackVisited.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BCC2F8;
  }

  if (swift_getEnumCaseMultiPayload() != 12)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  return sub_1C6BCC2F8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackListened.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BCC524@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackListened.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BCC9C8;
  }

  if (swift_getEnumCaseMultiPayload() != 13)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  return sub_1C6BCC9C8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackFinished.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BCCBF4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.trackFinished.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BCD098;
  }

  if (swift_getEnumCaseMultiPayload() != 14)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  return sub_1C6BCD098;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUnliked.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BCD2C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUnliked.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BCD768;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  return sub_1C6BCD768;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUndisliked.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BCD994@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUndisliked.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BCDE38;
  }

  if (swift_getEnumCaseMultiPayload() != 16)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  return sub_1C6BCDE38;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUnsaved.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BCE064@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.articleUnsaved.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BCE508;
  }

  if (swift_getEnumCaseMultiPayload() != 17)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  return sub_1C6BCE508;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.sportsTagSeen.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = sub_1C6D78A00();
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BCE734@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = sub_1C6D78A00();
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.sportsTagSeen.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = sub_1C6D78A00();
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BCEBD8;
  }

  if (swift_getEnumCaseMultiPayload() != 18)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  return sub_1C6BCEBD8;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagIgnore.getter@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6BDF178(v2, &v10 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6BCEDBC@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6BDF178(a1, &v10 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.tagIgnore.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v12 = 0;
    sub_1C6D78A30();
    return sub_1C6BCF1D4;
  }

  if (swift_getEnumCaseMultiPayload() != 19)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  return sub_1C6BCF1D4;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.notificationVended.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(v2, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      return sub_1C6BC7B1C(v7, a1, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a1 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = sub_1C6D789A0();
  return (*(*(v12 - 8) + 56))(&a1[v11], 1, 1, v12);
}

uint64_t sub_1C6BCF400@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  sub_1C6BDF178(a1, &v13 - v6, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6BDF108(v7, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      return sub_1C6BC7B1C(v7, a2, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    }

    sub_1C6BC7690(v7, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  *a2 = 0;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  sub_1C6D78A30();
  v11 = *(v10 + 24);
  v12 = sub_1C6D789A0();
  return (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.notificationVended.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  v11 = *(*(v10 - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(*(*(v10 - 8) + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[3] = v12;
  sub_1C6BDF178(v1, v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v5[4] = v14;
  v15 = *(v14 - 8);
  v5[5] = v15;
  if ((*(v15 + 48))(v9, 1, v14) == 1)
  {
    sub_1C6BDF108(v9, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_15:
    *v13 = 0;
    sub_1C6D78A30();
    v16 = *(v10 + 24);
    v17 = sub_1C6D789A0();
    (*(*(v17 - 8) + 56))(&v13[v16], 1, 1, v17);
    return sub_1C6BCF8A4;
  }

  if (swift_getEnumCaseMultiPayload() != 20)
  {
    sub_1C6BC7690(v9, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_15;
  }

  sub_1C6BC7B1C(v9, v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  return sub_1C6BCF8A4;
}

void sub_1C6BCF8E8(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_1C6BDF25C((*a1)[3], v10, a5);
    sub_1C6BDF108(v13, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_1C6BC7690(v11, a6);
  }

  else
  {
    sub_1C6BDF108(**a1, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6D78A30();
  v4 = *(v3 + 24);
  v5 = sub_1C6D789A0();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_1C6BCFC84()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D7608);
  __swift_project_value_buffer(v0, qword_1EC1D7608);
  sub_1C6BC6FE4(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_1C6D82CB0;
  v5 = v50 + v4;
  v6 = v50 + v4 + *(v2 + 56);
  *(v50 + v4) = 1;
  *v6 = "timestamp";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v50 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "articleSeen";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v50 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "articleVisited";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v50 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "articleRead";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v50 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "articleShared";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v50 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "articleLiked";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  v19 = (v50 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "articleDisliked";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v9();
  v21 = (v50 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "articleSaved";
  *(v22 + 1) = 12;
  v22[16] = 2;
  v9();
  v23 = v50 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "tagMuted";
  *(v23 + 8) = 8;
  *(v23 + 16) = 2;
  v9();
  v24 = (v50 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "tagUnmuted";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v9();
  v26 = (v50 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "tagFollowed";
  *(v27 + 1) = 11;
  v27[16] = 2;
  v9();
  v28 = (v50 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 12;
  *v29 = "tagUnfollowed";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v9();
  v30 = (v50 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 13;
  *v31 = "tagFeedView";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v9();
  v32 = (v50 + v4 + 13 * v3);
  v33 = v32 + *(v2 + 56);
  *v32 = 14;
  *v33 = "trackVisited";
  *(v33 + 1) = 12;
  v33[16] = 2;
  v9();
  v34 = (v50 + v4 + 14 * v3);
  v35 = v34 + *(v2 + 56);
  *v34 = 15;
  *v35 = "trackListened";
  *(v35 + 1) = 13;
  v35[16] = 2;
  v9();
  v36 = (v50 + v4 + 15 * v3);
  v37 = v36 + *(v2 + 56);
  *v36 = 16;
  *v37 = "trackFinished";
  *(v37 + 1) = 13;
  v37[16] = 2;
  v9();
  v38 = v50 + v4 + 16 * v3 + *(v2 + 56);
  *(v5 + 16 * v3) = 17;
  *v38 = "articleUnliked";
  *(v38 + 8) = 14;
  *(v38 + 16) = 2;
  v9();
  v39 = (v50 + v4 + 17 * v3);
  v40 = v39 + *(v2 + 56);
  *v39 = 18;
  *v40 = "articleUndisliked";
  *(v40 + 1) = 17;
  v40[16] = 2;
  v9();
  v41 = (v50 + v4 + 18 * v3);
  v42 = v41 + *(v2 + 56);
  *v41 = 19;
  *v42 = "articleUnsaved";
  *(v42 + 1) = 14;
  v42[16] = 2;
  v9();
  v43 = (v50 + v4 + 19 * v3);
  v44 = v43 + *(v2 + 56);
  *v43 = 20;
  *v44 = "sportsTagSeen";
  *(v44 + 1) = 13;
  v44[16] = 2;
  v9();
  v45 = (v50 + v4 + 20 * v3);
  v46 = v45 + *(v2 + 56);
  *v45 = 21;
  *v46 = "tagIgnore";
  *(v46 + 1) = 9;
  v46[16] = 2;
  v9();
  v47 = (v50 + v4 + 21 * v3);
  v48 = v47 + *(v2 + 56);
  *v47 = 22;
  *v48 = "notificationVended";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEvent._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D59A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D7608);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C6BD06B0(a1, v5, a2, a3);
        break;
      case 2:
        sub_1C6BD0764(v5, a1, a2, a3);
        break;
      case 3:
        sub_1C6BD0D98(v5, a1, a2, a3);
        break;
      case 4:
        sub_1C6BD13E8(v5, a1, a2, a3);
        break;
      case 5:
        sub_1C6BD1A38(v5, a1, a2, a3);
        break;
      case 6:
        sub_1C6BD2088(v5, a1, a2, a3);
        break;
      case 7:
        sub_1C6BD26D8(v5, a1, a2, a3);
        break;
      case 8:
        sub_1C6BD2D28(v5, a1, a2, a3);
        break;
      case 9:
        sub_1C6BD3378(v5, a1, a2, a3);
        break;
      case 10:
        sub_1C6BD39C8(v5, a1, a2, a3);
        break;
      case 11:
        sub_1C6BD4018(v5, a1, a2, a3);
        break;
      case 12:
        sub_1C6BD4668(v5, a1, a2, a3);
        break;
      case 13:
        sub_1C6BD4CB8(v5, a1, a2, a3);
        break;
      case 14:
        sub_1C6BD5308(v5, a1, a2, a3);
        break;
      case 15:
        sub_1C6BD5958(v5, a1, a2, a3);
        break;
      case 16:
        sub_1C6BD5FA8(v5, a1, a2, a3);
        break;
      case 17:
        sub_1C6BD65F8(v5, a1, a2, a3);
        break;
      case 18:
        sub_1C6BD6C48(v5, a1, a2, a3);
        break;
      case 19:
        sub_1C6BD7298(v5, a1, a2, a3);
        break;
      case 20:
        sub_1C6BD78E8(v5, a1, a2, a3);
        break;
      case 21:
        sub_1C6BD7F38(v5, a1, a2, a3);
        break;
      case 22:
        sub_1C6BD8588(v5, a1, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C6BD06B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6D789A0();
  sub_1C6BDEC00(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6BD0764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v54 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v45 = &v42 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v42 - v23;
  sub_1C6BC6FE4(0, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v42 - v31;
  v47 = v5;
  v33 = *(v5 + 56);
  v50 = v4;
  v44 = v33;
  (v33)(&v42 - v31, 1, 1, v4, v30);
  sub_1C6BDF178(v54, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v43 = v17;
  v34 = (*(v17 + 48))(v15, 1, v16);
  if (v34 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_5:
    v35 = v50;
    goto LABEL_6;
  }

  sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    goto LABEL_5;
  }

  sub_1C6BDF108(v32, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  v39 = v45;
  sub_1C6BC7B1C(v20, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  sub_1C6BC7B1C(v39, v32, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  v35 = v50;
  v44(v32, 0, 1, v50);
LABEL_6:
  v36 = v48;
  sub_1C6BDEC00(qword_1EDCE3808, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  v37 = v49;
  sub_1C6D78BB0();
  if (v37)
  {
    return sub_1C6BDF108(v32, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  }

  sub_1C6BDF178(v32, v36, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  if ((*(v47 + 48))(v36, 1, v35) == 1)
  {
    sub_1C6BDF108(v32, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    return sub_1C6BDF108(v36, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  }

  else
  {
    v40 = v46;
    sub_1C6BC7B1C(v36, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    if (v34 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v32, qword_1EDCE37B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    v41 = v54;
    sub_1C6BDF108(v54, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v40, v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v41, 0, 1, v16);
  }
}

uint64_t sub_1C6BD0D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v49;
      sub_1C6BDF108(v49, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(qword_1EDCE3030, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  }

  sub_1C6BDF178(v35, v38, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    return sub_1C6BDF108(v38, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, qword_1EDCE2FE0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleVisited);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD13E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v35 = v49;
      sub_1C6BDF108(v49, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(qword_1EDCE38C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  }

  sub_1C6BDF178(v35, v38, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    return sub_1C6BDF108(v38, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, qword_1EDCE3868, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleRead);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD1A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7638, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    return sub_1C6BDF108(v38, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleShared);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD2088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7640, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    return sub_1C6BDF108(v38, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76A8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleLiked);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD26D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D70D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    return sub_1C6BDF108(v38, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleDisliked);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD2D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7648, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    return sub_1C6BDF108(v38, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76B8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSaved);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD3378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7650, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    return sub_1C6BDF108(v38, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD39C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7098, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    return sub_1C6BDF108(v38, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76C8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD4018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7658, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    return sub_1C6BDF108(v38, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76D0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD4668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7660, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    return sub_1C6BDF108(v38, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76D8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD4CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      v35 = v49;
      sub_1C6BDF108(v49, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(qword_1EDCE3758, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  }

  sub_1C6BDF178(v35, v38, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    return sub_1C6BDF108(v38, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, qword_1EDCE3708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7668, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    return sub_1C6BDF108(v38, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76E0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackVisited);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD5958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 13)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7670, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    return sub_1C6BDF108(v38, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76E8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackListened);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD5FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 14)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7678, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    return sub_1C6BDF108(v38, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76F0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTrackFinished);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD65F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 15)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7680, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    return sub_1C6BDF108(v38, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D76F8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnliked);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD6C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 16)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7688, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    return sub_1C6BDF108(v38, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D7700, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUndisliked);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD7298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 17)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D68B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    return sub_1C6BDF108(v38, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D7708, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD78E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 18)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7690, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    return sub_1C6BDF108(v38, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D7710, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD7F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 19)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7558, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    return sub_1C6BDF108(v38, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D7718, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6BD8588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6BC6FE4(0, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6BDF178(v55, v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6BDF108(v15, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
  }

  else
  {
    sub_1C6BC7B1C(v15, v24, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v24, v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 20)
    {
      v35 = v49;
      sub_1C6BDF108(v49, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      v36 = v46;
      sub_1C6BC7B1C(v20, v46, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      sub_1C6BC7B1C(v36, v35, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6BC7690(v20, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6BDEC00(&qword_1EC1D7698, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6BDF108(v35, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  }

  sub_1C6BDF178(v35, v38, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6BDF108(v35, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    return sub_1C6BDF108(v38, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
  }

  else
  {
    v41 = v45;
    sub_1C6BC7B1C(v38, v45, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6BDF108(v35, &qword_1EC1D7720, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    v42 = v55;
    sub_1C6BDF108(v55, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6BC7B1C(v41, v42, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventNotificationVended);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v14 - v10;
  result = sub_1C6BD9068(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1C6BDF178(v3, v11, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
    if ((*(*(v13 - 8) + 48))(v11, 1, v13) != 1)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          sub_1C6BD9518(v3, a1, a2, a3);
          break;
        case 2u:
          sub_1C6BD9780(v3, a1, a2, a3);
          break;
        case 3u:
          sub_1C6BD99E8(v3, a1, a2, a3);
          break;
        case 4u:
          sub_1C6BD9C50(v3, a1, a2, a3);
          break;
        case 5u:
          sub_1C6BD9EB8(v3, a1, a2, a3);
          break;
        case 6u:
          sub_1C6BDA120(v3, a1, a2, a3);
          break;
        case 7u:
          sub_1C6BDA388(v3, a1, a2, a3);
          break;
        case 8u:
          sub_1C6BDA5F0(v3, a1, a2, a3);
          break;
        case 9u:
          sub_1C6BDA858(v3, a1, a2, a3);
          break;
        case 0xAu:
          sub_1C6BDAAC0(v3, a1, a2, a3);
          break;
        case 0xBu:
          sub_1C6BDAD28(v3, a1, a2, a3);
          break;
        case 0xCu:
          sub_1C6BDAF90(v3, a1, a2, a3);
          break;
        case 0xDu:
          sub_1C6BDB1F8(v3, a1, a2, a3);
          break;
        case 0xEu:
          sub_1C6BDB460(v3, a1, a2, a3);
          break;
        case 0xFu:
          sub_1C6BDB6C8(v3, a1, a2, a3);
          break;
        case 0x10u:
          sub_1C6BDB930(v3, a1, a2, a3);
          break;
        case 0x11u:
          sub_1C6BDBB98(v3, a1, a2, a3);
          break;
        case 0x12u:
          sub_1C6BDBE00(v3, a1, a2, a3);
          break;
        case 0x13u:
          sub_1C6BDC068(v3, a1, a2, a3);
          break;
        case 0x14u:
          sub_1C6BDC2D0(v3, a1, a2, a3);
          break;
        default:
          sub_1C6BD92B4(v3, a1, a2, a3);
          break;
      }

      sub_1C6BC7690(v11, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    }

    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6BD9068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[3] = a4;
  v17[1] = a3;
  v5 = MEMORY[0x1E69AA900];
  sub_1C6BC6FE4(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v17 - v8;
  v10 = sub_1C6D789A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  sub_1C6BDF178(a1 + *(v15 + 24), v9, &qword_1EDCE66F0, v5);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1C6BDF108(v9, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  }

  (*(v11 + 32))(v14, v9, v10);
  sub_1C6BDEC00(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_1C6BD92B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6BC6FE4(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BDF178(a1, v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v13 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6BDF108(v8, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6BC7B1C(v8, v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    sub_1C6BDEC00(qword_1EDCE3808, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
    sub_1C6D78CF0();
    return sub_1C6BC7690(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleSeen);
  }

  result = sub_1C6BC7690(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  __break(1u);
  return result;
}