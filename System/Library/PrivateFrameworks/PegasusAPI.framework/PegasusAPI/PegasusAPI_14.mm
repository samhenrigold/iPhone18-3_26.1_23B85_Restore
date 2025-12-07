uint64_t sub_1B8E19D88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB3A0, type metadata accessor for Electionspb_ElectionRace, protocol conformance descriptor for Electionspb_ElectionRace);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E19E08(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB1B0, type metadata accessor for Electionspb_ElectionRace, protocol conformance descriptor for Electionspb_ElectionRace);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E19E78(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B98(&qword_1EBABB1B0, type metadata accessor for Electionspb_ElectionRace, protocol conformance descriptor for Electionspb_ElectionRace);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E19F10()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB0B8);
  __swift_project_value_buffer(v0, qword_1EBABB0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1B9656D00;
  v4 = v35 + v3;
  v5 = v35 + v3 + v1[14];
  *(v35 + v3) = 1;
  *v5 = "siribaseId";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "vote_info";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "running_mate";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "politicalParty";
  *(v15 + 1) = 14;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "isWinner";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "delegateCount";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "voteCount";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "delegateCountTotal";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "statesWon";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "incumbent";
  *(v27 + 1) = 9;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "image_url";
  *(v29 + 1) = 9;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "political_party_name";
  *(v31 + 1) = 20;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "is_attention_candidate";
  *(v33 + 1) = 22;
  v33[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Electionspb_Candidate.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
      case 12:
      case 13:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E1A4EC(v3, v4, v5, v6);
        break;
      case 6:
      case 11:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E1A4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Electionspb_Candidate(0);
  type metadata accessor for Electionspb_VoteInfo(0);
  sub_1B8CD1B98(&qword_1EBABB180, type metadata accessor for Electionspb_VoteInfo, protocol conformance descriptor for Electionspb_VoteInfo);
  return sub_1B964C580();
}

uint64_t Electionspb_Candidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for Electionspb_VoteInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v11 || (result = sub_1B964C700(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v13 || (result = sub_1B964C700(), !v4))
    {
      v22[1] = type metadata accessor for Electionspb_Candidate(0);
      sub_1B8D92024();
      v14 = OUTLINED_FUNCTION_355();
      if (__swift_getEnumTagSinglePayload(v14, v15, v9) == 1)
      {
        sub_1B8D9207C(v8, &qword_1EBABB160, &qword_1B9656D10);
      }

      else
      {
        sub_1B8E1632C();
        OUTLINED_FUNCTION_71_1();
        sub_1B8CD1B98(v16, v17, protocol conformance descriptor for Electionspb_VoteInfo);
        sub_1B964C740();
        result = sub_1B8E163DC();
        if (v4)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_1();
      if (!v18 || (result = sub_1B964C700(), !v4))
      {
        OUTLINED_FUNCTION_1();
        if (!v19 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v4))
        {
          if (*(v3 + 64) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v4))
          {
            if (!*(v3 + 68) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v4))
            {
              if (!*(v3 + 72) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v4))
              {
                if (!*(v3 + 76) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v4))
                {
                  if (!*(*(v3 + 80) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v4))
                  {
                    if (*(v3 + 88) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v4))
                    {
                      OUTLINED_FUNCTION_1();
                      if (!v20 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v4))
                      {
                        OUTLINED_FUNCTION_1();
                        if (!v21 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v4))
                        {
                          if (*(v3 + 128) != 1)
                          {
                            return OUTLINED_FUNCTION_8_1();
                          }

                          OUTLINED_FUNCTION_29();
                          result = sub_1B964C670();
                          if (!v4)
                          {
                            return OUTLINED_FUNCTION_8_1();
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

  return result;
}

void static Electionspb_Candidate.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_16();
  v4 = type metadata accessor for Electionspb_VoteInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  v8 = (v7 - v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB160, &qword_1B9656D10);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB188, &unk_1B9656D30);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_428();
  v15 = v15 && v13 == v14;
  if (!v15 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  v16 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_55;
  }

  type metadata accessor for Electionspb_Candidate(0);
  v17 = *(v11 + 48);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_178(v2, 1, v4);
  if (v15)
  {
    OUTLINED_FUNCTION_178(v2 + v17, 1, v4);
    if (v15)
    {
      goto LABEL_15;
    }

    goto LABEL_46;
  }

  OUTLINED_FUNCTION_690();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2 + v17, 1, v4);
  if (v24)
  {
    OUTLINED_FUNCTION_2_9();
    sub_1B8E163DC();
LABEL_46:
    v25 = &qword_1EBABB188;
    v26 = &unk_1B9656D30;
LABEL_54:
    sub_1B8D9207C(v2, v25, v26);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_1_12();
  sub_1B8E1632C();
  if (*v3 != *v8 || v3[1] != v8[1] || v3[2] != v8[2])
  {
    OUTLINED_FUNCTION_2_9();
    sub_1B8E163DC();
    goto LABEL_53;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  sub_1B8CD1B98(v27, v28, MEMORY[0x1E69AAC10]);
  v29 = sub_1B964C850();
  OUTLINED_FUNCTION_2_9();
  sub_1B8E163DC();
  if ((v29 & 1) == 0)
  {
LABEL_53:
    OUTLINED_FUNCTION_2_9();
    sub_1B8E163DC();
    v25 = &qword_1EBABB160;
    v26 = &qword_1B9656D10;
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_2_9();
  sub_1B8E163DC();
LABEL_15:
  sub_1B8D9207C(v2, &qword_1EBABB160, &qword_1B9656D10);
  v18 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
  if (v18 || (sub_1B964C9F0() & 1) != 0)
  {
    v19 = *(v1 + 48) == *(v0 + 48) && *(v1 + 56) == *(v0 + 56);
    if (v19 || (sub_1B964C9F0()) && *(v1 + 64) == *(v0 + 64) && *(v1 + 68) == *(v0 + 68) && *(v1 + 72) == *(v0 + 72) && *(v1 + 76) == *(v0 + 76) && (sub_1B8D6123C(*(v1 + 80), *(v0 + 80)) & 1) != 0 && *(v1 + 88) == *(v0 + 88))
    {
      v20 = *(v1 + 96) == *(v0 + 96) && *(v1 + 104) == *(v0 + 104);
      if (v20 || (sub_1B964C9F0() & 1) != 0)
      {
        v21 = *(v1 + 112) == *(v0 + 112) && *(v1 + 120) == *(v0 + 120);
        if (v21 || (sub_1B964C9F0()) && *(v1 + 128) == *(v0 + 128))
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_14();
          sub_1B8CD1B98(v22, v23, MEMORY[0x1E69AAC10]);
          sub_1B964C850();
        }
      }
    }
  }

LABEL_55:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E1AE1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB398, type metadata accessor for Electionspb_Candidate, protocol conformance descriptor for Electionspb_Candidate);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1AE9C(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate, protocol conformance descriptor for Electionspb_Candidate);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1AF0C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate, protocol conformance descriptor for Electionspb_Candidate);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1AFA4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB0D0);
  __swift_project_value_buffer(v0, qword_1EBABB0D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siribaseId";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "candidateInfo";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "hasRaceToday";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "congress_info";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_PoliticalParty.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8E1B300(v7, v8, v9, v10);
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E1B3A0(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E1B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Electionspb_Candidate(0);
  sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate, protocol conformance descriptor for Electionspb_Candidate);
  return sub_1B964C570();
}

uint64_t sub_1B8E1B3A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Electionspb_PoliticalParty(0);
  type metadata accessor for Electionspb_CongressInfo(0);
  sub_1B8CD1B98(&qword_1EBABB1A0, type metadata accessor for Electionspb_CongressInfo, protocol conformance descriptor for Electionspb_CongressInfo);
  return sub_1B964C580();
}

uint64_t Electionspb_PoliticalParty.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9250, &qword_1B964DA38);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_1();
  if (!v12 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v5 = v4) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v14 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), (v5 = v4) == 0))
    {
      if (*(*(v3 + 32) + 16))
      {
        v17 = v10;
        type metadata accessor for Electionspb_Candidate(0);
        sub_1B8CD1B98(&qword_1EBABB198, type metadata accessor for Electionspb_Candidate, protocol conformance descriptor for Electionspb_Candidate);
        OUTLINED_FUNCTION_231();
        OUTLINED_FUNCTION_687();
        result = sub_1B964C730();
        v5 = v4;
        if (v4)
        {
          return result;
        }

        v10 = v17;
      }

      if (*(v3 + 40) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), (v5 = v4) == 0))
      {
        v15 = type metadata accessor for Electionspb_PoliticalParty(0);
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
        {
          sub_1B8D9207C(v9, &qword_1EBAB9250, &qword_1B964DA38);
        }

        else
        {
          v17 = v15;
          sub_1B8E1632C();
          sub_1B8CD1B98(&qword_1EBABB1A0, type metadata accessor for Electionspb_CongressInfo, protocol conformance descriptor for Electionspb_CongressInfo);
          sub_1B964C740();
          result = sub_1B8E163DC();
          if (v5)
          {
            return result;
          }
        }

        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

void static Electionspb_PoliticalParty.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_468();
  type metadata accessor for Electionspb_CongressInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9250, &qword_1B964DA38);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_137();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9258, &unk_1B964DA40);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_428();
  v14 = v14 && v12 == v13;
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_84_1();
  v17 = v14 && v15 == v16;
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1B8D7BBCC(*(v1 + 32), *(v0 + 32));
  if ((v18 & 1) == 0 || *(v1 + 40) != *(v0 + 40))
  {
    goto LABEL_22;
  }

  type metadata accessor for Electionspb_PoliticalParty(0);
  v19 = *(v10 + 48);
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_162_1();
  OUTLINED_FUNCTION_75(v2);
  if (v14)
  {
    OUTLINED_FUNCTION_75(v2 + v19);
    if (v14)
    {
      sub_1B8D9207C(v2, &qword_1EBAB9250, &qword_1B964DA38);
LABEL_24:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_14();
      v24 = sub_1B8CD1B98(v22, v23, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_634(v24);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_75(v2 + v19);
  if (v20)
  {
    sub_1B8E163DC();
LABEL_21:
    sub_1B8D9207C(v2, &qword_1EBAB9258, &unk_1B964DA40);
    goto LABEL_22;
  }

  sub_1B8E1632C();
  v21 = static Electionspb_CongressInfo.== infix(_:_:)(v3, v7);
  OUTLINED_FUNCTION_236();
  sub_1B8E163DC();
  sub_1B8E163DC();
  sub_1B8D9207C(v2, &qword_1EBAB9250, &qword_1B964DA38);
  if (v21)
  {
    goto LABEL_24;
  }

LABEL_22:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8E1BA74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB390, type metadata accessor for Electionspb_PoliticalParty, protocol conformance descriptor for Electionspb_PoliticalParty);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1BAF4(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty, protocol conformance descriptor for Electionspb_PoliticalParty);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1BB64(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty, protocol conformance descriptor for Electionspb_PoliticalParty);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1BBFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB0E8);
  __swift_project_value_buffer(v0, qword_1EBABB0E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "electionRaces";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "politicalParties";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "snippetType";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dialog_id";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "result_use_case";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_ElectionsResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8E1BF64(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_9();
        sub_1B8E1C004(v15, v16, v17, v18);
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B8E1C0A4(v11, v12, v13, v14);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B8E1C10C(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E1BF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Electionspb_ElectionRace(0);
  sub_1B8CD1B98(&qword_1EBABB1B0, type metadata accessor for Electionspb_ElectionRace, protocol conformance descriptor for Electionspb_ElectionRace);
  return sub_1B964C570();
}

uint64_t sub_1B8E1C004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Electionspb_PoliticalParty(0);
  sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty, protocol conformance descriptor for Electionspb_PoliticalParty);
  return sub_1B964C570();
}

uint64_t Electionspb_ElectionsResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (type metadata accessor for Electionspb_ElectionRace(0), sub_1B8CD1B98(&qword_1EBABB1B0, type metadata accessor for Electionspb_ElectionRace, protocol conformance descriptor for Electionspb_ElectionRace), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
  {
    if (!*(v2[1] + 16) || (type metadata accessor for Electionspb_PoliticalParty(0), sub_1B8CD1B98(&qword_1EBABB1B8, type metadata accessor for Electionspb_PoliticalParty, protocol conformance descriptor for Electionspb_PoliticalParty), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v1))
      {
        if (!v2[4] || (sub_1B8E1E03C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
        {
          if (!v2[6] || (sub_1B8E1E090(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
          {
            type metadata accessor for Electionspb_ElectionsResponse(0);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Electionspb_ElectionsResponse.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  sub_1B8D79C38(*v2, *v3);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  sub_1B8D79C8C(*(v1 + 8), v0[1]);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v1 + 32), *(v1 + 40), v0[4]) || !sub_1B8D92198(*(v1 + 48), *(v1 + 56), v0[6]))
  {
    return 0;
  }

  type metadata accessor for Electionspb_ElectionsResponse(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  v11 = sub_1B8CD1B98(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8E1C4B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB388, type metadata accessor for Electionspb_ElectionsResponse, protocol conformance descriptor for Electionspb_ElectionsResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1C538(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB2A8, type metadata accessor for Electionspb_ElectionsResponse, protocol conformance descriptor for Electionspb_ElectionsResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1C5A8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B98(&qword_1EBABB2A8, type metadata accessor for Electionspb_ElectionsResponse, protocol conformance descriptor for Electionspb_ElectionsResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1C640()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB100);
  __swift_project_value_buffer(v0, qword_1EBABB100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "current";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "won";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "net_change_seats";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "hold_over_seats";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "in_control";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "had_control";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_CongressInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Electionspb_CongressInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        if (!*(v2 + 12) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
        {
          if (*(v2 + 16) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            if (*(v2 + 17) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
            {
              type metadata accessor for Electionspb_CongressInfo(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Electionspb_CongressInfo.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12) || *(v3 + 16) != *(v2 + 16) || *(v3 + 17) != *(v2 + 17))
  {
    return 0;
  }

  type metadata accessor for Electionspb_CongressInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  v9 = sub_1B8CD1B98(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8E1CC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB380, type metadata accessor for Electionspb_CongressInfo, protocol conformance descriptor for Electionspb_CongressInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1CCD0(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB1A0, type metadata accessor for Electionspb_CongressInfo, protocol conformance descriptor for Electionspb_CongressInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1CD40(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B98(&qword_1EBABB1A0, type metadata accessor for Electionspb_CongressInfo, protocol conformance descriptor for Electionspb_CongressInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1CDD8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB118);
  __swift_project_value_buffer(v0, qword_1EBABB118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "vote_count";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "delegate_count";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "electoral_vote";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_VoteInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }
  }

  return result;
}

uint64_t Electionspb_VoteInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        type metadata accessor for Electionspb_VoteInfo(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Electionspb_VoteInfo.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8))
  {
    return 0;
  }

  type metadata accessor for Electionspb_VoteInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  v8 = sub_1B8CD1B98(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8E1D254(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB378, type metadata accessor for Electionspb_VoteInfo, protocol conformance descriptor for Electionspb_VoteInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1D2D4(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB180, type metadata accessor for Electionspb_VoteInfo, protocol conformance descriptor for Electionspb_VoteInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1D344(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B98(&qword_1EBABB180, type metadata accessor for Electionspb_VoteInfo, protocol conformance descriptor for Electionspb_VoteInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1D3DC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB130);
  __swift_project_value_buffer(v0, qword_1EBABB130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "race_date";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "race_id";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "candidates_info";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_RunOffInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Electionspb_RunOffInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v2 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      if (!*(*(v1 + 32) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
      {
        type metadata accessor for Electionspb_RunOffInfo(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Electionspb_RunOffInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_428();
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v1 + 32), *(v0 + 32)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Electionspb_RunOffInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  v10 = sub_1B8CD1B98(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B8E1D894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB370, type metadata accessor for Electionspb_RunOffInfo, protocol conformance descriptor for Electionspb_RunOffInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1D914(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB2E0, type metadata accessor for Electionspb_RunOffInfo, protocol conformance descriptor for Electionspb_RunOffInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1D984(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B98(&qword_1EBABB2E0, type metadata accessor for Electionspb_RunOffInfo, protocol conformance descriptor for Electionspb_RunOffInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E1DA1C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB148);
  __swift_project_value_buffer(v0, qword_1EBABB148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start_datetime";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "close_datetime";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Electionspb_PollTiming.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Electionspb_PollTiming.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v3 || (OUTLINED_FUNCTION_49_1(), result = sub_1B964C700(), !v0))
    {
      type metadata accessor for Electionspb_PollTiming(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Electionspb_PollTiming.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_428();
  v2 = v2 && v0 == v1;
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v5 = v2 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Electionspb_PollTiming(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_14();
  v8 = sub_1B8CD1B98(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8E1DDEC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD1B98(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E1DECC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1B98(&qword_1EBABB368, type metadata accessor for Electionspb_PollTiming, protocol conformance descriptor for Electionspb_PollTiming);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E1DF4C(uint64_t a1)
{
  v2 = sub_1B8CD1B98(&qword_1EBABB2F8, type metadata accessor for Electionspb_PollTiming, protocol conformance descriptor for Electionspb_PollTiming);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E1DFBC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1B98(&qword_1EBABB2F8, type metadata accessor for Electionspb_PollTiming, protocol conformance descriptor for Electionspb_PollTiming);

  return sub_1B964C5D0();
}

unint64_t sub_1B8E1E03C()
{
  result = qword_1EBABB1C0;
  if (!qword_1EBABB1C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_DialogID, &type metadata for Electionspb_DialogID, v0, v1);
    atomic_store(result, &qword_1EBABB1C0);
  }

  return result;
}

unint64_t sub_1B8E1E090()
{
  result = qword_1EBABB1C8;
  if (!qword_1EBABB1C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_ElectionResultUseCase, &type metadata for Electionspb_ElectionResultUseCase, v0, v1);
    atomic_store(result, &qword_1EBABB1C8);
  }

  return result;
}

unint64_t sub_1B8E1E0E8()
{
  result = qword_1EBABB1F8;
  if (!qword_1EBABB1F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_Status, &type metadata for Electionspb_Status, v0, v1);
    atomic_store(result, &qword_1EBABB1F8);
  }

  return result;
}

unint64_t sub_1B8E1E140()
{
  result = qword_1EBABB200;
  if (!qword_1EBABB200)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_Status, &type metadata for Electionspb_Status, v0, v1);
    atomic_store(result, &qword_1EBABB200);
  }

  return result;
}

unint64_t sub_1B8E1E198()
{
  result = qword_1EBABB208;
  if (!qword_1EBABB208)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_Status, &type metadata for Electionspb_Status, v0, v1);
    atomic_store(result, &qword_1EBABB208);
  }

  return result;
}

unint64_t sub_1B8E1E220()
{
  result = qword_1EBABB220;
  if (!qword_1EBABB220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_DialogID, &type metadata for Electionspb_DialogID, v0, v1);
    atomic_store(result, &qword_1EBABB220);
  }

  return result;
}

unint64_t sub_1B8E1E278()
{
  result = qword_1EBABB228;
  if (!qword_1EBABB228)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_DialogID, &type metadata for Electionspb_DialogID, v0, v1);
    atomic_store(result, &qword_1EBABB228);
  }

  return result;
}

unint64_t sub_1B8E1E2D0()
{
  result = qword_1EBABB230;
  if (!qword_1EBABB230)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_DialogID, &type metadata for Electionspb_DialogID, v0, v1);
    atomic_store(result, &qword_1EBABB230);
  }

  return result;
}

unint64_t sub_1B8E1E358()
{
  result = qword_1EBABB248;
  if (!qword_1EBABB248)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_ElectionResultUseCase, &type metadata for Electionspb_ElectionResultUseCase, v0, v1);
    atomic_store(result, &qword_1EBABB248);
  }

  return result;
}

unint64_t sub_1B8E1E3B0()
{
  result = qword_1EBABB250;
  if (!qword_1EBABB250)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_ElectionResultUseCase, &type metadata for Electionspb_ElectionResultUseCase, v0, v1);
    atomic_store(result, &qword_1EBABB250);
  }

  return result;
}

unint64_t sub_1B8E1E408()
{
  result = qword_1EBABB258;
  if (!qword_1EBABB258)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_ElectionResultUseCase, &type metadata for Electionspb_ElectionResultUseCase, v0, v1);
    atomic_store(result, &qword_1EBABB258);
  }

  return result;
}

uint64_t sub_1B8E1EDE4(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Electionspb_ElectionRace._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8E1EE90(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B8E1F0DC(319, &qword_1ED9CD7D8, type metadata accessor for Electionspb_VoteInfo, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8E1EFC8(uint64_t a1)
{
  sub_1B8E1F0DC(319, &qword_1EBABB338, type metadata accessor for Electionspb_Candidate, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      sub_1B8E1F0DC(319, &qword_1EBABB340, type metadata accessor for Electionspb_CongressInfo, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8E1F0DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8E1F168(uint64_t a1)
{
  sub_1B8E1F0DC(319, &qword_1EBABB348, type metadata accessor for Electionspb_ElectionRace, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B8E1F0DC(319, &qword_1EBABB350, type metadata accessor for Electionspb_PoliticalParty, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8E1F2A8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8E1F360(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E1F40C(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8E1F4C8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8E1F54C(uint64_t a1)
{
  sub_1B8E1F0DC(319, &qword_1ED9CD7D8, type metadata accessor for Electionspb_VoteInfo, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B8E1F0DC(319, &qword_1ED9CD2B0, type metadata accessor for Electionspb_RunOffInfo, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1B8E1F0DC(319, &qword_1ED9CD2C8, type metadata accessor for Electionspb_PollTiming, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1B8E1F75C()
{
  result = qword_1EBABB3A8;
  if (!qword_1EBABB3A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Electionspb_Status, &type metadata for Electionspb_Status, v0, v1);
    atomic_store(result, &qword_1EBABB3A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Electionspb_ElectionRace(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_5_7(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return type metadata accessor for Electionspb_ElectionRace(0);
}

uint64_t OUTLINED_FUNCTION_14_6()
{
  type metadata accessor for Electionspb_ElectionRace(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_16_8()
{
  type metadata accessor for Electionspb_ElectionRace._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_4()
{
  type metadata accessor for Electionspb_ElectionRace(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_35_2()
{
  type metadata accessor for Electionspb_ElectionRace(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_59_3(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_69_1()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_81_1()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_94_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_120_0()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_132_1(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_133_2(uint64_t a1)
{
  *v1 = 0;
  *(v1 + 8) = 0;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t OUTLINED_FUNCTION_134_1()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_135_3()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_137_1()
{

  return sub_1B8E1632C();
}

uint64_t OUTLINED_FUNCTION_141_2()
{
  type metadata accessor for Electionspb_ElectionRace(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t Geopb_StructuredAddress.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v1[8] = 0;
  v1[9] = v2;
  v1[10] = 0;
  v1[11] = v2;
  v1[12] = 0;
  v1[13] = v2;
  v1[14] = 0;
  v1[15] = v2;
  v1[16] = 0;
  v1[17] = v2;
  v1[18] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Geopb_StructuredAddress(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Geopb_Timezone.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  type metadata accessor for Geopb_Timezone(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Geopb_LatLng.init()()
{
  v1 = OUTLINED_FUNCTION_27();
  type metadata accessor for Geopb_LatLng(v1);
  *v0 = 0;
  v0[1] = 0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  sub_1B964C1C0();
  OUTLINED_FUNCTION_35_3();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  OUTLINED_FUNCTION_35_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Geopb_StructuredAddress.administrativeAreaCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.subAdministrativeArea.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.locality.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.postCode.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.thoroughfare.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.subThoroughfare.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Geopb_StructuredAddress.dependentLocality.setter(uint64_t a1)
{

  *(v1 + 144) = a1;
  return result;
}

uint64_t Geopb_StructuredAddress.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Geopb_StructuredAddress(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Geopb_StructuredAddress.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Geopb_StructuredAddress(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Geopb_StructuredAddress.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Geopb_StructuredAddress(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Geopb_LatLng.clientSideExtensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_45_1(*(v5 + 28));
  v6 = sub_1B964C1C0();
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    sub_1B964C1B0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    return (*(v8 + 32))(a1, v1, v6);
  }

  return result;
}

uint64_t sub_1B8E203A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Geopb_LatLng.clientSideExtensions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Geopb_LatLng(v2) + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_35_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t (*Geopb_LatLng.clientSideExtensions.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v3[3] = v7;
  v9 = *(v8 + 64);
  v3[4] = __swift_coroFrameAllocStub(v9);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = *(type metadata accessor for Geopb_LatLng(0) + 28);
  *(v3 + 12) = v10;
  sub_1B8E203A8(v1 + v10, v6);
  OUTLINED_FUNCTION_17_5();
  if (v11)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_17_5();
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_461();
    v13(v12);
  }

  return sub_1B8E2062C;
}

uint64_t Geopb_LatLng.hasClientSideExtensions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_45_1(*(v3 + 28));
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_11(v4);
  return v0;
}

Swift::Void __swiftcall Geopb_LatLng.clearClientSideExtensions()()
{
  v1 = type metadata accessor for Geopb_LatLng(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB8F20, &qword_1B964D720);
  sub_1B964C1C0();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Geopb_LatLng.serverSideExtensions.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_45_1(*(v5 + 32));
  v6 = sub_1B964C1C0();
  OUTLINED_FUNCTION_9_2();
  if (v7)
  {
    sub_1B964C1B0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_5();
    return (*(v8 + 32))(a1, v1, v6);
  }

  return result;
}

uint64_t sub_1B8E207EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_30_8();
  v8 = OUTLINED_FUNCTION_461();
  v9(v8);
  return a5(v5);
}

uint64_t Geopb_LatLng.serverSideExtensions.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Geopb_LatLng(v2) + 32);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB8F20, &qword_1B964D720);
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_59_1();
  (*(v5 + 32))(v1 + v3, v0, v4);
  OUTLINED_FUNCTION_35_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t (*Geopb_LatLng.serverSideExtensions.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v3[2] = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v3[3] = v7;
  v9 = *(v8 + 64);
  v3[4] = __swift_coroFrameAllocStub(v9);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = *(type metadata accessor for Geopb_LatLng(0) + 32);
  *(v3 + 12) = v10;
  sub_1B8E203A8(v1 + v10, v6);
  OUTLINED_FUNCTION_17_5();
  if (v11)
  {
    sub_1B964C1B0();
    OUTLINED_FUNCTION_17_5();
    if (!v11)
    {
      sub_1B8D9207C(v6, &qword_1EBAB8F20, &qword_1B964D720);
    }
  }

  else
  {
    v12 = OUTLINED_FUNCTION_461();
    v13(v12);
  }

  return sub_1B8E24714;
}

void sub_1B8E20AB0(uint64_t **a1, char a2)
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
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v7 + 32))(v9 + v3, v4, v6);
    OUTLINED_FUNCTION_43_1();
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1B8D9207C(v9 + v3, &qword_1EBAB8F20, &qword_1B964D720);
    (*(v7 + 32))(v9 + v3, v5, v6);
    OUTLINED_FUNCTION_43_1();
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Geopb_LatLng.hasServerSideExtensions.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_45_1(*(v3 + 32));
  v4 = sub_1B964C1C0();
  OUTLINED_FUNCTION_11(v4);
  return v0;
}

Swift::Void __swiftcall Geopb_LatLng.clearServerSideExtensions()()
{
  v1 = type metadata accessor for Geopb_LatLng(0);
  sub_1B8D9207C(v0 + *(v1 + 32), &qword_1EBAB8F20, &qword_1B964D720);
  sub_1B964C1C0();
  v2 = OUTLINED_FUNCTION_59_2();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Geopb_LatLng.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Geopb_LatLng(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Geopb_LatLng.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Geopb_LatLng(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Geopb_LatLng.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Geopb_LatLng(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Geopb_BusinessCard.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Geopb_BusinessCard.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Geopb_BusinessCard.LocalizedName.name.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Geopb_BusinessCard.LocalizedName.phoneticName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Geopb_BusinessCard.LocalizedName.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Geopb_BusinessCard.LocalizedName(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Geopb_BusinessCard.LocalizedName.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Geopb_BusinessCard.LocalizedName(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Geopb_BusinessCard.LocalizedName.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Geopb_BusinessCard.LocalizedName(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Geopb_BusinessCard.LocalizedName.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  v1[2] = 0;
  v1[3] = v2;
  v1[4] = 0;
  v1[5] = v2;
  type metadata accessor for Geopb_BusinessCard.LocalizedName(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Geopb_BusinessCard.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Geopb_BusinessCard(0) + 20);
  type metadata accessor for Geopb_BusinessCard._StorageClass();
  result = swift_initStaticObject();
  *(a2 + v3) = result;
  return result;
}

uint64_t Geopb_Timezone.identifier.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Geopb_Timezone.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Geopb_Timezone(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Geopb_Timezone.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Geopb_Timezone(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Geopb_Timezone.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Geopb_Timezone(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8E21358()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB3C0);
  __swift_project_value_buffer(v0, qword_1EBABB3C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "country";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "countryCode";
  *(v8 + 8) = 11;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "administrativeArea";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "administrativeAreaCode";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "subAdministrativeArea";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "locality";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "postCode";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 10;
  *v20 = "thoroughfare";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 11;
  *v22 = "subThoroughfare";
  *(v22 + 1) = 15;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 17;
  *v24 = "dependentLocality";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Geopb_StructuredAddress.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 10:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 17:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Geopb_StructuredAddress.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), (v0 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 2), (v0 = v1) == 0))
    {
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 3), (v0 = v1) == 0))
      {
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(v13, v14, 4), (v0 = v1) == 0))
        {
          OUTLINED_FUNCTION_1();
          if (!v18 || (result = OUTLINED_FUNCTION_3(v16, v17, 5), (v0 = v1) == 0))
          {
            OUTLINED_FUNCTION_1();
            if (!v21 || (result = OUTLINED_FUNCTION_3(v19, v20, 6), (v0 = v1) == 0))
            {
              OUTLINED_FUNCTION_1();
              if (!v24 || (result = OUTLINED_FUNCTION_3(v22, v23, 7), (v0 = v1) == 0))
              {
                OUTLINED_FUNCTION_1();
                if (!v27 || (result = OUTLINED_FUNCTION_3(v25, v26, 10), (v0 = v1) == 0))
                {
                  OUTLINED_FUNCTION_1();
                  if (!v30 || (result = OUTLINED_FUNCTION_3(v28, v29, 11), (v0 = v1) == 0))
                  {
                    if (!*(*(v2 + 144) + 16) || (result = sub_1B964C6E0(), !v0))
                    {
                      type metadata accessor for Geopb_StructuredAddress(0);
                      OUTLINED_FUNCTION_12();
                      return sub_1B964C290();
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

  return result;
}

uint64_t static Geopb_StructuredAddress.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v2[6] == v1[6] && v2[7] == v1[7];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v2[8] == v1[8] && v2[9] == v1[9];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v2[10] == v1[10] && v2[11] == v1[11];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v2[12] == v1[12] && v2[13] == v1[13];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = v2[14] == v1[14] && v2[15] == v1[15];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = v2[16] == v1[16] && v2[17] == v1[17];
  if (!v13 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(v2[18], v1[18]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Geopb_StructuredAddress(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_15();
  v16 = sub_1B8CD1BE0(v14, v15, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v16) & 1;
}

uint64_t sub_1B8E21BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1BE0(&qword_1EBABB538, type metadata accessor for Geopb_StructuredAddress, protocol conformance descriptor for Geopb_StructuredAddress);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E21C5C(uint64_t a1)
{
  v2 = sub_1B8CD1BE0(&qword_1EBABAC68, type metadata accessor for Geopb_StructuredAddress, protocol conformance descriptor for Geopb_StructuredAddress);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E21CCC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1BE0(&qword_1EBABAC68, type metadata accessor for Geopb_StructuredAddress, protocol conformance descriptor for Geopb_StructuredAddress);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E21D6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB3D8);
  __swift_project_value_buffer(v0, qword_1EBABB3D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "lat";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lng";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "client_side_extensions";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "server_side_extensions";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Geopb_LatLng.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_288();
        sub_1B8E22084(v5, v6, v2, v1);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_288();
        sub_1B8E22138(v7, v8, v2, v1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E22084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Geopb_LatLng(0);
  sub_1B964C1C0();
  sub_1B8CD1BE0(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]);
  return sub_1B964C580();
}

uint64_t sub_1B8E22138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Geopb_LatLng(0);
  sub_1B964C1C0();
  sub_1B8CD1BE0(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]);
  return sub_1B964C580();
}

uint64_t Geopb_LatLng.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  v3 = OUTLINED_FUNCTION_183(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_66();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v30 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_66();
  v29 = (v13 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v26 - v16;
  if (*v1 == 0.0 || (OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
  {
    if (v1[1] == 0.0 || (OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v0))
    {
      v28 = type metadata accessor for Geopb_LatLng(0);
      sub_1B8E203A8(v1 + *(v28 + 28), v9);
      if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
      {
        sub_1B8D9207C(v9, &qword_1EBAB8F20, &qword_1B964D720);
      }

      else
      {
        v27 = v1;
        v19 = v30;
        (*(v30 + 32))(v17, v9, v10);
        OUTLINED_FUNCTION_2_10();
        sub_1B8CD1BE0(v20, v21, MEMORY[0x1E69AAB08]);
        sub_1B964C740();
        if (v0)
        {
          v22 = v19;
          return (*(v22 + 8))(v17, v10);
        }

        (*(v19 + 8))(v17, v10);
        v1 = v27;
      }

      sub_1B8E203A8(v1 + *(v28 + 32), v6);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v10);
      v17 = v29;
      if (EnumTagSinglePayload == 1)
      {
        sub_1B8D9207C(v6, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_17:
        OUTLINED_FUNCTION_186();
        return sub_1B964C290();
      }

      v22 = v30;
      (*(v30 + 32))(v29, v6, v10);
      OUTLINED_FUNCTION_2_10();
      sub_1B8CD1BE0(v24, v25, MEMORY[0x1E69AAB08]);
      sub_1B964C740();
      if (!v0)
      {
        (*(v22 + 8))(v17, v10);
        goto LABEL_17;
      }

      return (*(v22 + 8))(v17, v10);
    }
  }

  return result;
}

uint64_t static Geopb_LatLng.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v3 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_30_8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  v8 = OUTLINED_FUNCTION_183(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_66();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_66();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49[-v21];
  if (*v1 != *v0 || v1[1] != v0[1])
  {
    goto LABEL_23;
  }

  v51 = v11;
  v53 = v5;
  v52 = type metadata accessor for Geopb_LatLng(0);
  v23 = *(v52 + 28);
  v24 = *(v15 + 48);
  sub_1B8E203A8(v1 + v23, v22);
  sub_1B8E203A8(v0 + v23, &v22[v24]);
  OUTLINED_FUNCTION_37_0(v22);
  if (v25)
  {
    OUTLINED_FUNCTION_37_0(&v22[v24]);
    if (v25)
    {
      sub_1B8D9207C(v22, &qword_1EBAB8F20, &qword_1B964D720);
      goto LABEL_13;
    }

LABEL_11:
    v28 = v22;
LABEL_22:
    sub_1B8D9207C(v28, &qword_1EBAB8F28, &unk_1B9683B20);
    goto LABEL_23;
  }

  sub_1B8E203A8(v22, v14);
  OUTLINED_FUNCTION_37_0(&v22[v24]);
  if (v25)
  {
    v26 = OUTLINED_FUNCTION_444();
    v27(v26);
    goto LABEL_11;
  }

  v29 = v53;
  (*(v53 + 32))(v2, &v22[v24], v3);
  OUTLINED_FUNCTION_2_10();
  sub_1B8CD1BE0(v30, v31, MEMORY[0x1E69AAB20]);
  v50 = OUTLINED_FUNCTION_44_2();
  v32 = *(v29 + 8);
  v32(v2, v3);
  v33 = OUTLINED_FUNCTION_444();
  (v32)(v33);
  sub_1B8D9207C(v22, &qword_1EBAB8F20, &qword_1B964D720);
  if ((v50 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_13:
  v34 = *(v52 + 32);
  v35 = *(v15 + 48);
  sub_1B8E203A8(v1 + v34, v19);
  sub_1B8E203A8(v0 + v34, v19 + v35);
  OUTLINED_FUNCTION_37_0(v19);
  if (v25)
  {
    OUTLINED_FUNCTION_37_0(v19 + v35);
    if (v25)
    {
      sub_1B8D9207C(v19, &qword_1EBAB8F20, &qword_1B964D720);
LABEL_26:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_15();
      sub_1B8CD1BE0(v47, v48, MEMORY[0x1E69AAC10]);
      v39 = sub_1B964C850();
      return v39 & 1;
    }

    goto LABEL_21;
  }

  sub_1B8E203A8(v19, v51);
  OUTLINED_FUNCTION_37_0(v19 + v35);
  if (v36)
  {
    v37 = OUTLINED_FUNCTION_444();
    v38(v37);
LABEL_21:
    v28 = v19;
    goto LABEL_22;
  }

  v41 = v53;
  (*(v53 + 32))(v2, v19 + v35, v3);
  OUTLINED_FUNCTION_2_10();
  sub_1B8CD1BE0(v42, v43, MEMORY[0x1E69AAB20]);
  v44 = OUTLINED_FUNCTION_44_2();
  v45 = *(v41 + 8);
  v45(v2, v3);
  v46 = OUTLINED_FUNCTION_444();
  (v45)(v46);
  sub_1B8D9207C(v19, &qword_1EBAB8F20, &qword_1B964D720);
  if (v44)
  {
    goto LABEL_26;
  }

LABEL_23:
  v39 = 0;
  return v39 & 1;
}

uint64_t sub_1B8E22A94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1BE0(&qword_1EBABB530, type metadata accessor for Geopb_LatLng, protocol conformance descriptor for Geopb_LatLng);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E22B14(uint64_t a1)
{
  v2 = sub_1B8CD1BE0(&qword_1EBABADD0, type metadata accessor for Geopb_LatLng, protocol conformance descriptor for Geopb_LatLng);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E22B84(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1BE0(&qword_1EBABADD0, type metadata accessor for Geopb_LatLng, protocol conformance descriptor for Geopb_LatLng);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E22C20()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB3F0);
  __swift_project_value_buffer(v0, qword_1EBABB3F0);
  return sub_1B964C770();
}

uint64_t Geopb_BusinessCard.decodeMessage<A>(decoder:)()
{
  v1 = *(type metadata accessor for Geopb_BusinessCard(0) + 20);
  if (!swift_isUniquelyReferenced_nonNull_native())
  {
    type metadata accessor for Geopb_BusinessCard._StorageClass();
    v2 = swift_allocObject();

    *(v0 + v1) = v2;
  }

  OUTLINED_FUNCTION_12();
  return sub_1B8E22D34(v3, v4, v5);
}

uint64_t sub_1B8E22D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  do
  {
    result = sub_1B964C3C0();
  }

  while (!v3 && (v5 & 1) == 0);
  return result;
}

uint64_t Geopb_BusinessCard.traverse<A>(visitor:)()
{
  type metadata accessor for Geopb_BusinessCard(0);
  OUTLINED_FUNCTION_12();
  return sub_1B964C290();
}

uint64_t static Geopb_BusinessCard.== infix(_:_:)()
{
  type metadata accessor for Geopb_BusinessCard(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_15();
  sub_1B8CD1BE0(v0, v1, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8E22EE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1BE0(&qword_1EBABB528, type metadata accessor for Geopb_BusinessCard, protocol conformance descriptor for Geopb_BusinessCard);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E22F64(uint64_t a1)
{
  v2 = sub_1B8CD1BE0(&qword_1EBABB498, type metadata accessor for Geopb_BusinessCard, protocol conformance descriptor for Geopb_BusinessCard);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E22FD4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1BE0(&qword_1EBABB498, type metadata accessor for Geopb_BusinessCard, protocol conformance descriptor for Geopb_BusinessCard);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E23054()
{
  result = MEMORY[0x1BFADC850](0x7A696C61636F4C2ELL, 0xEE00656D614E6465);
  qword_1EBABB408 = 0xD000000000000012;
  unk_1EBABB410 = 0x80000001B96ECC40;
  return result;
}

uint64_t static Geopb_BusinessCard.LocalizedName.protoMessageName.getter()
{
  if (qword_1EBAB6180 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8E23130()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB418);
  __swift_project_value_buffer(v0, qword_1EBABB418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "language_code";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 9;
  *v12 = "phonetic_name";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Geopb_BusinessCard.LocalizedName.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 9 || result == 4 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Geopb_BusinessCard.LocalizedName.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_1();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 2), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (result = OUTLINED_FUNCTION_3(v5, v6, 4), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v10 || (result = OUTLINED_FUNCTION_3(v8, v9, 9), !v0))
      {
        type metadata accessor for Geopb_BusinessCard.LocalizedName(0);
        OUTLINED_FUNCTION_12();
        return sub_1B964C290();
      }
    }
  }

  return result;
}

uint64_t static Geopb_BusinessCard.LocalizedName.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v2[2] == v1[2] && v2[3] == v1[3];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v2[4] == v1[4] && v2[5] == v1[5];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Geopb_BusinessCard.LocalizedName(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_15();
  v10 = sub_1B8CD1BE0(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

uint64_t sub_1B8E235D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1BE0(&qword_1EBABB520, type metadata accessor for Geopb_BusinessCard.LocalizedName, protocol conformance descriptor for Geopb_BusinessCard.LocalizedName);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E23650(uint64_t a1)
{
  v2 = sub_1B8CD1BE0(&qword_1EBABAC88, type metadata accessor for Geopb_BusinessCard.LocalizedName, protocol conformance descriptor for Geopb_BusinessCard.LocalizedName);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E236C0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1BE0(&qword_1EBABAC88, type metadata accessor for Geopb_BusinessCard.LocalizedName, protocol conformance descriptor for Geopb_BusinessCard.LocalizedName);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E23764()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB430);
  __swift_project_value_buffer(v0, qword_1EBABB430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "identifier";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t sub_1B8E238F4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1B964C780();
  __swift_project_value_buffer(v6, a2);
  OUTLINED_FUNCTION_26_5();
  v8 = *(v7 + 16);

  return v8(a4);
}

uint64_t Geopb_Timezone.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Geopb_Timezone.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_8();
  OUTLINED_FUNCTION_1();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    type metadata accessor for Geopb_Timezone(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Geopb_Timezone.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Geopb_Timezone(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_15();
  v6 = sub_1B8CD1BE0(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B8E23B1C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD1BE0(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E23C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1BE0(&qword_1EBABB518, type metadata accessor for Geopb_Timezone, protocol conformance descriptor for Geopb_Timezone);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E23C80(uint64_t a1)
{
  v2 = sub_1B8CD1BE0(&qword_1EBABAC60, type metadata accessor for Geopb_Timezone, protocol conformance descriptor for Geopb_Timezone);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E23CF0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1BE0(&qword_1EBABAC60, type metadata accessor for Geopb_Timezone, protocol conformance descriptor for Geopb_Timezone);

  return sub_1B964C5D0();
}

void sub_1B8E24338(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E2440C(uint64_t a1)
{
  sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    sub_1B8E244A0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E244A0(uint64_t a1)
{
  if (!qword_1ED9F44A8[0])
  {
    sub_1B964C1C0();
    v1 = sub_1B964C930();
    if (!v2)
    {
      atomic_store(v1, qword_1ED9F44A8);
    }
  }
}

uint64_t sub_1B8E24520(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Geopb_BusinessCard._StorageClass();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8E245CC(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8E24678(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_6()
{

  return type metadata accessor for Geopb_LatLng(0);
}

uint64_t OUTLINED_FUNCTION_43_1()
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 0, 1, v0);
}

uint64_t OUTLINED_FUNCTION_44_2()
{

  return sub_1B964C850();
}

uint64_t OUTLINED_FUNCTION_45_1@<X0>(uint64_t a1@<X8>)
{

  return sub_1B8E203A8(v1 + a1, v2);
}

uint64_t Kgqsapipb_BaikeCard.id.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.name.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.description_p.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.shortAbstract.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.baikepageurl.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.thumbNailURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.thumbNail3XURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.thumbNailNanoURLN27.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.thumbNailNanoURLN28.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.properties.setter(uint64_t a1)
{

  *(v1 + 152) = a1;
  return result;
}

uint64_t Kgqsapipb_BaikeCard.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_BaikeCard(0) + 64);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Kgqsapipb_BaikeCard.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_BaikeCard(v2) + 64);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Kgqsapipb_BaikeCard.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_BaikeCard(v0);
  return nullsub_1;
}

uint64_t Kgqsapipb_BaikeCard.Property.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_BaikeCard.Property(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Kgqsapipb_BaikeCard.Property.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_BaikeCard.Property(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Kgqsapipb_BaikeCard.Property.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_BaikeCard.Property(v0);
  return nullsub_1;
}

uint64_t Kgqsapipb_BaikeCard.Property.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  type metadata accessor for Kgqsapipb_BaikeCard.Property(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_BaikeCard.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_15_7(a1);
  v1[4] = 0;
  v1[5] = v2;
  v1[6] = 0;
  v1[7] = v2;
  v1[8] = 0;
  v1[9] = v2;
  v1[10] = 0;
  v1[11] = v2;
  v1[12] = 0;
  v1[13] = v2;
  v1[14] = 0;
  v1[15] = v2;
  v1[16] = 0;
  v1[17] = v2;
  v1[18] = 0;
  v1[19] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_BaikeCard(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E250D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB540);
  __swift_project_value_buffer(v0, qword_1EBABB540);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1B964D040;
  v4 = v31 + v3;
  v5 = v31 + v3 + v1[14];
  *(v31 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "name";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 10;
  *v11 = "description";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "shortAbstract";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "baikepageurl";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "thumbNailUrl";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "thumbNail3xUrl";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "thumbNailNanoUrlN27";
  *(v21 + 1) = 19;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 8;
  *v23 = "thumbNailNanoUrlN28";
  *(v23 + 1) = 19;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "originThumbNailWidth";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "originThumbNailHeight";
  *(v27 + 1) = 21;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 9;
  *v29 = "properties";
  *(v29 + 1) = 10;
  v29[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_BaikeCard.decodeMessage<A>(decoder:)()
{
  v4 = v0;
  OUTLINED_FUNCTION_12_8();
  v6 = v5;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v1 || (v8 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 9:
        sub_1B8E25610(v6, v4, v3, v2);
        break;
      case 11:
      case 12:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E25610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_BaikeCard.Property(0);
  sub_1B8E263A0(&qword_1EBABB580, type metadata accessor for Kgqsapipb_BaikeCard.Property, protocol conformance descriptor for Kgqsapipb_BaikeCard.Property);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_BaikeCard.traverse<A>(visitor:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(v3, v4, 1), (v2 = v1) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 2), (v2 = v1) == 0))
    {
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 3), (v2 = v1) == 0))
      {
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(v13, v14, 4), (v2 = v1) == 0))
        {
          OUTLINED_FUNCTION_1();
          if (!v18 || (result = OUTLINED_FUNCTION_3(v16, v17, 5), (v2 = v1) == 0))
          {
            OUTLINED_FUNCTION_1();
            if (!v21 || (result = OUTLINED_FUNCTION_3(v19, v20, 6), (v2 = v1) == 0))
            {
              OUTLINED_FUNCTION_1();
              if (!v24 || (result = OUTLINED_FUNCTION_3(v22, v23, 7), (v2 = v1) == 0))
              {
                OUTLINED_FUNCTION_1();
                if (!v27 || (result = OUTLINED_FUNCTION_3(v25, v26, 8), (v2 = v1) == 0))
                {
                  if (!*(*(v0 + 152) + 16) || (type metadata accessor for Kgqsapipb_BaikeCard.Property(0), sub_1B8E263A0(&qword_1EBABB580, type metadata accessor for Kgqsapipb_BaikeCard.Property, protocol conformance descriptor for Kgqsapipb_BaikeCard.Property), v1 = v2, result = sub_1B964C730(), !v2))
                  {
                    OUTLINED_FUNCTION_1();
                    if (!v30 || (result = OUTLINED_FUNCTION_3(v28, v29, 10), !v1))
                    {
                      v31 = *(v0 + 144);
                      if (!v31 || (result = OUTLINED_FUNCTION_16_9(v31, 11), !v1))
                      {
                        v32 = *(v0 + 148);
                        if (!v32 || (result = OUTLINED_FUNCTION_16_9(v32, 12), !v1))
                        {
                          type metadata accessor for Kgqsapipb_BaikeCard(0);
                          OUTLINED_FUNCTION_12();
                          return sub_1B964C290();
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

  return result;
}

uint64_t static Kgqsapipb_BaikeCard.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + 48) == *(v1 + 48) && *(v2 + 56) == *(v1 + 56);
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + 64) == *(v1 + 64) && *(v2 + 72) == *(v1 + 72);
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v2 + 80) == *(v1 + 80) && *(v2 + 88) == *(v1 + 88);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v2 + 96) == *(v1 + 96) && *(v2 + 104) == *(v1 + 104);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v2 + 112) == *(v1 + 112) && *(v2 + 120) == *(v1 + 120);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v2 + 128) == *(v1 + 128) && *(v2 + 136) == *(v1 + 136);
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 144) != *(v1 + 144))
  {
    return 0;
  }

  if (*(v2 + 148) != *(v1 + 148))
  {
    return 0;
  }

  sub_1B8D7D948(*(v2 + 152), *(v1 + 152));
  if ((v14 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_BaikeCard(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_11();
  v17 = sub_1B8E263A0(v15, v16, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v17) & 1;
}

uint64_t sub_1B8E25B40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E263A0(&qword_1EBABB5F0, type metadata accessor for Kgqsapipb_BaikeCard, protocol conformance descriptor for Kgqsapipb_BaikeCard);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E25BC0(uint64_t a1)
{
  v2 = sub_1B8E263A0(&qword_1EBABB5A0, type metadata accessor for Kgqsapipb_BaikeCard, protocol conformance descriptor for Kgqsapipb_BaikeCard);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E25C30(uint64_t a1, uint64_t a2)
{
  sub_1B8E263A0(&qword_1EBABB5A0, type metadata accessor for Kgqsapipb_BaikeCard, protocol conformance descriptor for Kgqsapipb_BaikeCard);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E25CB0()
{
  result = MEMORY[0x1BFADC850](0x747265706F72502ELL, 0xE900000000000079);
  qword_1EBABB558 = 0xD000000000000013;
  unk_1EBABB560 = 0x80000001B96ECDE0;
  return result;
}

uint64_t static Kgqsapipb_BaikeCard.Property.protoMessageName.getter()
{
  if (qword_1EBAB61A0 != -1)
  {
    swift_once();
  }

  return OUTLINED_FUNCTION_432();
}

uint64_t sub_1B8E25D84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB568);
  __swift_project_value_buffer(v0, qword_1EBABB568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_BaikeCard.Property.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_12_8();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Kgqsapipb_BaikeCard.Property.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_1();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (result = OUTLINED_FUNCTION_3(v5, v6, 2), !v0))
    {
      type metadata accessor for Kgqsapipb_BaikeCard.Property(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Kgqsapipb_BaikeCard.Property.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_BaikeCard.Property(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_2_11();
  v9 = sub_1B8E263A0(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8E26168(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8E263A0(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E26230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E263A0(&qword_1EBABB5E8, type metadata accessor for Kgqsapipb_BaikeCard.Property, protocol conformance descriptor for Kgqsapipb_BaikeCard.Property);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E262B0(uint64_t a1)
{
  v2 = sub_1B8E263A0(&qword_1EBABB580, type metadata accessor for Kgqsapipb_BaikeCard.Property, protocol conformance descriptor for Kgqsapipb_BaikeCard.Property);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E26320(uint64_t a1, uint64_t a2)
{
  sub_1B8E263A0(&qword_1EBABB580, type metadata accessor for Kgqsapipb_BaikeCard.Property, protocol conformance descriptor for Kgqsapipb_BaikeCard.Property);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E263A0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B8E26650(uint64_t a1)
{
  sub_1B8E2670C(319);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E2670C(uint64_t a1)
{
  if (!qword_1EBABB5D0)
  {
    type metadata accessor for Kgqsapipb_BaikeCard.Property(255);
    v1 = sub_1B964C910();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBABB5D0);
    }
  }
}

uint64_t OUTLINED_FUNCTION_7_8()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_15_7(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_16_9(uint64_t a1, uint64_t a2)
{

  return sub_1B964C6C0();
}

uint64_t Kgqsapipb_Pair.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Kgqsapipb_Pair.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Kgqsapipb_Pair.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_Pair(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Kgqsapipb_Pair(uint64_t a1)
{
  result = qword_1EBABB630;
  if (!qword_1EBABB630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Kgqsapipb_Pair.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Kgqsapipb_Pair(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Kgqsapipb_Pair.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for Kgqsapipb_Pair(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E26AB4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB5F8);
  __swift_project_value_buffer(v0, qword_1EBABB5F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Kgqsapipb_Pair._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB61B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABB5F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Kgqsapipb_Pair.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C490();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Kgqsapipb_Pair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1B964C700(), !v4))
  {
    if (*(v3 + 16) == 0.0 || (OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v4))
    {
      type metadata accessor for Kgqsapipb_Pair(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Kgqsapipb_Pair.== infix(_:_:)(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0 || a1[4] != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_Pair(0);
  sub_1B964C2B0();
  sub_1B8CD1C28(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Kgqsapipb_Pair.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Kgqsapipb_Pair(0);
  sub_1B8CD1C28(&qword_1EBABB610, type metadata accessor for Kgqsapipb_Pair, protocol conformance descriptor for Kgqsapipb_Pair);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E27024(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1C28(&qword_1EBABB640, type metadata accessor for Kgqsapipb_Pair, protocol conformance descriptor for Kgqsapipb_Pair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E270A4(uint64_t a1)
{
  v2 = sub_1B8CD1C28(&qword_1EBABB620, type metadata accessor for Kgqsapipb_Pair, protocol conformance descriptor for Kgqsapipb_Pair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E27114(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1C28(&qword_1EBABB620, type metadata accessor for Kgqsapipb_Pair, protocol conformance descriptor for Kgqsapipb_Pair);

  return sub_1B964C5D0();
}

unint64_t Kgqsapipb_AssertionType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8E27320@<X0>(uint64_t *a1@<X8>)
{
  result = Kgqsapipb_AssertionType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E27354(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E284BC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Kgqsapipb_AssertionType.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABB648 = a1;
}

uint64_t sub_1B8E2749C@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_AssertionType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Kgqsapipb_Assertion.comments.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t Kgqsapipb_Assertion.comments.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Kgqsapipb_Assertion.curatorID.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Kgqsapipb_Assertion.curatorID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void Kgqsapipb_Assertion.assertionType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Kgqsapipb_Assertion.assertionType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Kgqsapipb_Assertion.closedPropIds.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Kgqsapipb_Assertion.closedLocales.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Kgqsapipb_Assertion.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_Assertion(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Kgqsapipb_Assertion.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_Assertion(v2) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Kgqsapipb_Assertion.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_Assertion(v0);
  return nullsub_1;
}

uint64_t Kgqsapipb_Assertion.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = 0;
  *(a1 + 72) = v2;
  *(a1 + 80) = 0;
  type metadata accessor for Kgqsapipb_Assertion(0);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_CurationReview.entityID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Kgqsapipb_CurationReview.entityID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Kgqsapipb_CurationReview.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_CurationReview(0) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Kgqsapipb_CurationReview.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_CurationReview(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Kgqsapipb_CurationReview.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_CurationReview(v0);
  return nullsub_1;
}

uint64_t Kgqsapipb_CurationReview.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  type metadata accessor for Kgqsapipb_CurationReview(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E27B70()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB650);
  __swift_project_value_buffer(v0, qword_1EBABB650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FACT";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "ERROR";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8E27DB8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB668);
  __swift_project_value_buffer(v0, qword_1EBABB668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1B9656CE0;
  v4 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v4 = "date";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v26 + v3 + v2 + v1[14];
  *(v26 + v3 + v2) = 2;
  *v8 = "comments";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v26 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "curator_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v26 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "assertionType";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v26 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "closedPropIds";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v7();
  v15 = (v26 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 12;
  *v16 = "closeAllPropIds";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v26 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 13;
  *v18 = "closedLocales";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  v19 = (v26 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 14;
  *v20 = "closeAllLocales";
  *(v20 + 1) = 15;
  v20[16] = 2;
  v7();
  v21 = (v26 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 15;
  *v22 = "lastReviewedTimestamp";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v7();
  v23 = (v26 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 16;
  *v24 = "nextScheduledReviewTimestamp";
  *(v24 + 1) = 28;
  v24[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_Assertion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v2 || (v6 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 15:
      case 16:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 10:
        sub_1B8E28284(v1, v0, v4, v3);
        break;
      case 11:
      case 13:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 12:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_Assertion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
  {
    OUTLINED_FUNCTION_1();
    if (!v4 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v5 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v1))
      {
        if (!*(v2 + 40) || (sub_1B8E284BC(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v1))
        {
          if (!*(*(v2 + 56) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
          {
            if (*(v2 + 64) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
            {
              if (!*(*(v2 + 72) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
              {
                if (*(v2 + 80) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
                {
                  if (!*(v2 + 88) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
                  {
                    if (!*(v2 + 96) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
                    {
                      type metadata accessor for Kgqsapipb_Assertion(0);
                      OUTLINED_FUNCTION_12();
                      return sub_1B964C290();
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

  return result;
}

unint64_t sub_1B8E284BC()
{
  result = qword_1EBABB698;
  if (!qword_1EBABB698)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_AssertionType, &type metadata for Kgqsapipb_AssertionType, v0, v1);
    atomic_store(result, &qword_1EBABB698);
  }

  return result;
}

uint64_t static Kgqsapipb_Assertion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(a1 + 40), *(a1 + 48), *(a2 + 40)) || (sub_1B8D6123C(*(a1 + 56), *(a2 + 56)) & 1) == 0 || *(a1 + 64) != *(a2 + 64) || (sub_1B8D6123C(*(a1 + 72), *(a2 + 72)) & 1) == 0 || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96))
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_Assertion(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_13();
  v8 = sub_1B8CD1C70(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8E286F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1C70(&qword_1EBABB720, type metadata accessor for Kgqsapipb_Assertion, protocol conformance descriptor for Kgqsapipb_Assertion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E28778(uint64_t a1)
{
  v2 = sub_1B8CD1C70(&qword_1EBABB6E0, type metadata accessor for Kgqsapipb_Assertion, protocol conformance descriptor for Kgqsapipb_Assertion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E287E8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1C70(&qword_1EBABB6E0, type metadata accessor for Kgqsapipb_Assertion, protocol conformance descriptor for Kgqsapipb_Assertion);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E28884()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB680);
  __swift_project_value_buffer(v0, qword_1EBABB680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "entityId";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Kgqsapipb_CurationReview.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Kgqsapipb_CurationReview.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v1 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v0))
  {
    type metadata accessor for Kgqsapipb_CurationReview(0);
    OUTLINED_FUNCTION_12();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Kgqsapipb_CurationReview.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_CurationReview(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_13();
  v5 = sub_1B8CD1C70(v3, v4, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v5) & 1;
}

uint64_t sub_1B8E28BCC(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD1C70(a2, a3, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E28CB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1C70(&qword_1EBABB718, type metadata accessor for Kgqsapipb_CurationReview, protocol conformance descriptor for Kgqsapipb_CurationReview);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E28D30(uint64_t a1)
{
  v2 = sub_1B8CD1C70(&qword_1EBABB6F8, type metadata accessor for Kgqsapipb_CurationReview, protocol conformance descriptor for Kgqsapipb_CurationReview);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E28DA0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1C70(&qword_1EBABB6F8, type metadata accessor for Kgqsapipb_CurationReview, protocol conformance descriptor for Kgqsapipb_CurationReview);

  return sub_1B964C5D0();
}

unint64_t sub_1B8E28E24()
{
  result = qword_1EBABB6B0;
  if (!qword_1EBABB6B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_AssertionType, &type metadata for Kgqsapipb_AssertionType, v0, v1);
    atomic_store(result, &qword_1EBABB6B0);
  }

  return result;
}

unint64_t sub_1B8E28E7C()
{
  result = qword_1EBABB6B8;
  if (!qword_1EBABB6B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_AssertionType, &type metadata for Kgqsapipb_AssertionType, v0, v1);
    atomic_store(result, &qword_1EBABB6B8);
  }

  return result;
}

unint64_t sub_1B8E28ED4()
{
  result = qword_1EBABB6C0;
  if (!qword_1EBABB6C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_AssertionType, &type metadata for Kgqsapipb_AssertionType, v0, v1);
    atomic_store(result, &qword_1EBABB6C0);
  }

  return result;
}

unint64_t sub_1B8E28F2C()
{
  result = qword_1EBABB6C8;
  if (!qword_1EBABB6C8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABB6D0, &qword_1B9658DC8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBABB6C8);
  }

  return result;
}

void sub_1B8E29208(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Kgqsapipb_Span.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Kgqsapipb_Span.label.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Kgqsapipb_Span.syn.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Kgqsapipb_Span.syn.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Kgqsapipb_Span.sem.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Kgqsapipb_Span.sem.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Kgqsapipb_Span.ontology.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void Kgqsapipb_Span.spanType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t Kgqsapipb_Span.spanType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t Kgqsapipb_Span.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_Span(0) + 44);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Kgqsapipb_Span(uint64_t a1)
{
  result = qword_1EBABB7B0;
  if (!qword_1EBABB7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Kgqsapipb_Span.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Kgqsapipb_Span(0) + 44);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t Kgqsapipb_Span.TypeEnum.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8E29768@<X0>(uint64_t *a1@<X8>)
{
  result = Kgqsapipb_Span.TypeEnum.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E2979C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E29F6C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Kgqsapipb_Span.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = v1;
  *(a1 + 72) = 1;
  type metadata accessor for Kgqsapipb_Span(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Kgqsapipb_Span.TypeEnum.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABB728 = a1;
}

uint64_t sub_1B8E29940@<X0>(uint64_t *a1@<X8>)
{
  result = static Kgqsapipb_Span.TypeEnum.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8E2998C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB730);
  __swift_project_value_buffer(v0, qword_1EBABB730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B9650810;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "label";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "syn";
  *(v8 + 8) = 3;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "sem";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ontology";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "begin";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "end";
  *(v16 + 1) = 3;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "span_type";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_Span.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 5:
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 7:
        sub_1B8E29D80(a1, v5, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t Kgqsapipb_Span.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1();
  if (!v5 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
    {
      OUTLINED_FUNCTION_1();
      if (!v8 || (OUTLINED_FUNCTION_79_0(), result = sub_1B964C700(), !v4))
      {
        if (!*(*(v3 + 48) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v4))
        {
          if (!*(v3 + 56) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v4))
          {
            if (!*(v3 + 60) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v4))
            {
              if (!*(v3 + 64) || (sub_1B8E29F6C(), OUTLINED_FUNCTION_79_0(), result = sub_1B964C680(), !v4))
              {
                type metadata accessor for Kgqsapipb_Span(0);
                OUTLINED_FUNCTION_12();
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B8E29F6C()
{
  result = qword_1EBABB760;
  if (!qword_1EBABB760)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_Span.TypeEnum, &type metadata for Kgqsapipb_Span.TypeEnum, v0, v1);
    atomic_store(result, &qword_1EBABB760);
  }

  return result;
}

uint64_t static Kgqsapipb_Span.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40);
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(a1[6], *(a2 + 48)) & 1) == 0 || *(a1 + 14) != *(a2 + 56) || *(a1 + 15) != *(a2 + 60) || !sub_1B8D92198(a1[8], *(a1 + 72), *(a2 + 64)))
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_Span(0);
  sub_1B964C2B0();
  sub_1B8CD1CB8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Kgqsapipb_Span.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Kgqsapipb_Span(0);
  sub_1B8CD1CB8(&qword_1EBABB768, type metadata accessor for Kgqsapipb_Span, protocol conformance descriptor for Kgqsapipb_Span);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E2A1F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1CB8(&qword_1EBABB7C0, type metadata accessor for Kgqsapipb_Span, protocol conformance descriptor for Kgqsapipb_Span);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E2A270(uint64_t a1)
{
  v2 = sub_1B8CD1CB8(&qword_1EBABB7A0, type metadata accessor for Kgqsapipb_Span, protocol conformance descriptor for Kgqsapipb_Span);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E2A2E0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1CB8(&qword_1EBABB7A0, type metadata accessor for Kgqsapipb_Span, protocol conformance descriptor for Kgqsapipb_Span);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E2A360()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB748);
  __swift_project_value_buffer(v0, qword_1EBABB748);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ENTITYNAME";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "QUERYPREFIX";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "QUERYSUFFIX";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

unint64_t sub_1B8E2A5C8()
{
  result = qword_1EBABB770;
  if (!qword_1EBABB770)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_Span.TypeEnum, &type metadata for Kgqsapipb_Span.TypeEnum, v0, v1);
    atomic_store(result, &qword_1EBABB770);
  }

  return result;
}

unint64_t sub_1B8E2A620()
{
  result = qword_1EBABB778;
  if (!qword_1EBABB778)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_Span.TypeEnum, &type metadata for Kgqsapipb_Span.TypeEnum, v0, v1);
    atomic_store(result, &qword_1EBABB778);
  }

  return result;
}

unint64_t sub_1B8E2A678()
{
  result = qword_1EBABB780;
  if (!qword_1EBABB780)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Kgqsapipb_Span.TypeEnum, &type metadata for Kgqsapipb_Span.TypeEnum, v0, v1);
    atomic_store(result, &qword_1EBABB780);
  }

  return result;
}

unint64_t sub_1B8E2A6D0()
{
  result = qword_1EBABB788;
  if (!qword_1EBABB788)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABB790, &qword_1B9659298);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBABB788);
  }

  return result;
}

void sub_1B8E2A87C(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Kgqsapipb_QueryFeatures.query.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.query.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.query.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2AAC0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.query.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.qsyn.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 32, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.qsyn.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.qsyn.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v4 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2AC90()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.qsyn.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.pattern.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 48, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.pattern.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.pattern.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  v4 = *(v0 + 56);
  *(v1 + 48) = *(v0 + 48);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2AE60()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.pattern.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 48);
    *(v7 + 48) = v3;
    *(v7 + 56) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.algo.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 64, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.algo.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.algo.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  v4 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2B030()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.algo.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.flowDomain.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 80, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.flowDomain.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 80, v5);
  *(v6 + 80) = v2;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.flowDomain.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2B200()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.flowDomain.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 80);
    *(v7 + 80) = v3;
    *(v7 + 88) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.executedDomain.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 96, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.executedDomain.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 96, v5);
  *(v6 + 96) = v2;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.executedDomain.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2B3D0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.executedDomain.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 96);
    *(v7 + 96) = v3;
    *(v7 + 104) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.parser.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 112, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.parser.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 112, v5);
  *(v6 + 112) = v2;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.parser.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  v4 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2B5A0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.parser.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 112);
    *(v7 + 112) = v3;
    *(v7 + 120) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.entities.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 128, v2);
}

uint64_t Kgqsapipb_QueryFeatures.entities.setter()
{
  v3 = OUTLINED_FUNCTION_13_5();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E2E970(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 128, v4);
  *(v5 + 128) = v0;
}

uint64_t Kgqsapipb_QueryFeatures.entities.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_4(v3);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  *(v1 + 48) = *(v0 + 128);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2B754()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_QueryFeatures.entities.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_11_8();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E2E970(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 128);
    *(v6 + 128) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.dbQueryPattern.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 136, v2);
}

uint64_t Kgqsapipb_QueryFeatures.dbQueryPattern.setter()
{
  v3 = OUTLINED_FUNCTION_13_5();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E2E970(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 136, v4);
  *(v5 + 136) = v0;
}

uint64_t Kgqsapipb_QueryFeatures.dbQueryPattern.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_4(v3);
  OUTLINED_FUNCTION_62_0(v0 + 136);
  *(v1 + 48) = *(v0 + 136);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2B90C()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_QueryFeatures.dbQueryPattern.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_11_8();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E2E970(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 136);
    *(v6 + 136) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.unfulfilledCfgdbquery.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 144, v2);
}

uint64_t Kgqsapipb_QueryFeatures.unfulfilledCfgdbquery.setter()
{
  v3 = OUTLINED_FUNCTION_13_5();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E2E970(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 144, v4);
  *(v5 + 144) = v0;
}

uint64_t Kgqsapipb_QueryFeatures.unfulfilledCfgdbquery.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_4(v3);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  *(v1 + 48) = *(v0 + 144);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2BAC4()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_QueryFeatures.unfulfilledCfgdbquery.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_11_8();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E2E970(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 144);
    *(v6 + 144) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.unfulfilledCfgdbqueryPattern.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 152, v2);
}

uint64_t Kgqsapipb_QueryFeatures.unfulfilledCfgdbqueryPattern.setter()
{
  v3 = OUTLINED_FUNCTION_13_5();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E2E970(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 152, v4);
  *(v5 + 152) = v0;
}

uint64_t Kgqsapipb_QueryFeatures.unfulfilledCfgdbqueryPattern.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_4(v3);
  OUTLINED_FUNCTION_62_0(v0 + 152);
  *(v1 + 48) = *(v0 + 152);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2BC7C()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_QueryFeatures.unfulfilledCfgdbqueryPattern.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_11_8();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E2E970(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 152);
    *(v6 + 152) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.aProps.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 160, v2);
}

uint64_t Kgqsapipb_QueryFeatures.aProps.setter()
{
  v3 = OUTLINED_FUNCTION_13_5();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E2E970(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 160, v4);
  *(v5 + 160) = v0;
}

uint64_t Kgqsapipb_QueryFeatures.aProps.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_4(v3);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  *(v1 + 48) = *(v0 + 160);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2BE34()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_QueryFeatures.aProps.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_11_8();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E2E970(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 160);
    *(v6 + 160) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.props.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 168, v2);
}

uint64_t Kgqsapipb_QueryFeatures.props.setter()
{
  v3 = OUTLINED_FUNCTION_13_5();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E2E970(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3(v5 + 168, v4);
  *(v5 + 168) = v0;
}

uint64_t Kgqsapipb_QueryFeatures.props.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_6_4(v3);
  OUTLINED_FUNCTION_62_0(v0 + 168);
  *(v1 + 48) = *(v0 + 168);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2BFEC()
{
  OUTLINED_FUNCTION_22_5();
  if (v4)
  {
    OUTLINED_FUNCTION_61_1();
    Kgqsapipb_QueryFeatures.props.setter();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_41_2();
    v6 = *(v3 + v1);
    if ((v5 & 1) == 0)
    {
      OUTLINED_FUNCTION_11_8();
      v7 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8E2E970(v7);
      OUTLINED_FUNCTION_15(v8);
    }

    OUTLINED_FUNCTION_59_3(v6 + 168);
    *(v6 + 168) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.pageviews.getter()
{
  OUTLINED_FUNCTION_7_9();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 176, v3);
  return *(v2 + 176);
}

uint64_t Kgqsapipb_QueryFeatures.pageviews.setter()
{
  v3 = OUTLINED_FUNCTION_13_5();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E2E970(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 176, v4);
  *(v5 + 176) = v0;
  return result;
}

void (*Kgqsapipb_QueryFeatures.pageviews.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_7_9();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 176);
  v3[9] = *(v5 + 176);
  return sub_1B8E2C180;
}

void sub_1B8E2C180(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_54_2(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E2E970(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_18(v7 + 176, v1 + v10);
  *(v7 + 176) = v4;

  free(v1);
}

uint64_t Kgqsapipb_QueryFeatures.frequency.getter()
{
  OUTLINED_FUNCTION_7_9();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 184, v3);
  return *(v2 + 184);
}

uint64_t Kgqsapipb_QueryFeatures.frequency.setter()
{
  v3 = OUTLINED_FUNCTION_13_5();
  v5 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8E2E970(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3(v5 + 184, v4);
  *(v5 + 184) = v0;
  return result;
}

void (*Kgqsapipb_QueryFeatures.frequency.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_7_9();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 184);
  v3[9] = *(v5 + 184);
  return sub_1B8E2C308;
}

void sub_1B8E2C308(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_54_2(a1);
  v7 = *(v5 + v2);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8E2E970(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  v10 = 48;
  if (v3)
  {
    v10 = 24;
  }

  OUTLINED_FUNCTION_18(v7 + 184, v1 + v10);
  *(v7 + 184) = v4;

  free(v1);
}

uint64_t Kgqsapipb_QueryFeatures.extractionDate.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 192, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.extractionDate.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 192, v5);
  *(v6 + 192) = v2;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.extractionDate.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 192);
  v4 = *(v0 + 200);
  *(v1 + 48) = *(v0 + 192);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2C4D0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.extractionDate.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 192);
    *(v7 + 192) = v3;
    *(v7 + 200) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.extractionSource.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 208, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.extractionSource.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 208, v5);
  *(v6 + 208) = v2;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.extractionSource.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 208);
  v4 = *(v0 + 216);
  *(v1 + 48) = *(v0 + 208);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2C6A0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.extractionSource.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 208);
    *(v7 + 208) = v3;
    *(v7 + 216) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.bodyPart.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 224, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.bodyPart.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 224, v5);
  *(v6 + 224) = v2;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.bodyPart.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 224);
  v4 = *(v0 + 232);
  *(v1 + 48) = *(v0 + 224);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2C870()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.bodyPart.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 224);
    *(v7 + 224) = v3;
    *(v7 + 232) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.locale.getter()
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 240, v2);

  return OUTLINED_FUNCTION_432();
}

void Kgqsapipb_QueryFeatures.locale.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_4_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 240, v5);
  *(v6 + 240) = v2;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.locale.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_14(v3);
  OUTLINED_FUNCTION_62_0(v0 + 240);
  v4 = *(v0 + 248);
  *(v1 + 48) = *(v0 + 240);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8E2CA40()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Kgqsapipb_QueryFeatures.locale.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_8_10();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8E2E970(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 240);
    *(v7 + 240) = v3;
    *(v7 + 248) = v2;
  }

  free(v0);
}

uint64_t Kgqsapipb_QueryFeatures.intentRankerModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB860, &qword_1B96594D0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14[-v5 - 8];
  OUTLINED_FUNCTION_7_9();
  v8 = *(v1 + v7);
  v9 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  OUTLINED_FUNCTION_521(v8 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel, v14);
  sub_1B8E2F130(v8 + v9, v6);
  v10 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  OUTLINED_FUNCTION_178(v6, 1, v10);
  if (!v11)
  {
    return sub_1B8E2F1C0(v6, a1);
  }

  OUTLINED_FUNCTION_92_0();
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_178(v6, 1, v10);
  if (!v11)
  {
    return sub_1B8D9207C(v6, &qword_1EBABB860, &qword_1B96594D0);
  }

  return result;
}

uint64_t sub_1B8E2CBD4(uint64_t a1)
{
  v2 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8E2F294(a1, v4);
  return Kgqsapipb_QueryFeatures.intentRankerModel.setter(v4);
}

uint64_t Kgqsapipb_QueryFeatures.intentRankerModel.setter(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB860, &qword_1B96594D0);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = *(OUTLINED_FUNCTION_68_3() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E2E970(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  sub_1B8E2F1C0(a1, v1);
  v11 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  swift_beginAccess();
  sub_1B8E2F224(v1, v8 + v12);
  return swift_endAccess();
}

uint64_t Kgqsapipb_IntentRankerModel.init()()
{
  OUTLINED_FUNCTION_92_0();
  type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void (*Kgqsapipb_QueryFeatures.intentRankerModel.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB860, &qword_1B96594D0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[4] = v6;
  v7 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  OUTLINED_FUNCTION_7_9();
  v12 = *(v1 + v11);
  v13 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  OUTLINED_FUNCTION_521(v12 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel, v3);
  sub_1B8E2F130(v12 + v13, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBABB860, &qword_1B96594D0);
    }
  }

  else
  {
    sub_1B8E2F1C0(v6, v10);
  }

  return sub_1B8E2CEF8;
}

void sub_1B8E2CEF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 32);
  if (a2)
  {
    sub_1B8E2F294(v4, v3);
    Kgqsapipb_QueryFeatures.intentRankerModel.setter(v3);
    sub_1B8E2F2F8(v4);
  }

  else
  {
    Kgqsapipb_QueryFeatures.intentRankerModel.setter(v4);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t Kgqsapipb_QueryFeatures.hasIntentRankerModel.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-v5 - 8];
  OUTLINED_FUNCTION_7_9();
  v8 = *(v0 + v7);
  v9 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  OUTLINED_FUNCTION_521(v8 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel, v15);
  sub_1B8E2F130(v8 + v9, v6);
  v10 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  OUTLINED_FUNCTION_178(v6, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1B8D9207C(v6, &qword_1EBABB860, &qword_1B96594D0);
  return v12;
}

Swift::Void __swiftcall Kgqsapipb_QueryFeatures.clearIntentRankerModel()()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB860, &qword_1B96594D0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = *(OUTLINED_FUNCTION_68_3() + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8E2E970(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  v9 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  swift_beginAccess();
  sub_1B8E2F224(v0, v6 + v10);
  swift_endAccess();
}

uint64_t Kgqsapipb_QueryFeatures.executableQueryString.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_521(*(v1 + v2) + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString, v4);

  return OUTLINED_FUNCTION_288();
}

void Kgqsapipb_QueryFeatures.executableQueryString.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v24;
  a20 = v25;
  v26 = OUTLINED_FUNCTION_4_10();
  v27 = *(v21 + v23);
  if ((v26 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_8();
    v28 = OUTLINED_FUNCTION_40_0();
    v29 = sub_1B8E2E970(v28);
    OUTLINED_FUNCTION_135(v29);
  }

  v30 = (v27 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString);
  OUTLINED_FUNCTION_18(v30, &a10);
  *v30 = v22;
  v30[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Kgqsapipb_QueryFeatures.executableQueryString.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  *v0 = v3;
  v3[8] = v1;
  OUTLINED_FUNCTION_7_9();
  *(v3 + 18) = v4;
  v5 = (*(v1 + v4) + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString);
  OUTLINED_FUNCTION_62_0(v5);
  v6 = v5[1];
  v3[6] = *v5;
  v3[7] = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Kgqsapipb_QueryFeatures.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Kgqsapipb_QueryFeatures.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

uint64_t Kgqsapipb_QueryFeatures.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Kgqsapipb_QueryFeatures(0) + 20);
  if (qword_1EBAB61E8 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBABB7E0;
}

uint64_t Kgqsapipb_IntentRankerModel.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_IntentRankerModel(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_FeatureEntity.sem.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Kgqsapipb_FeatureEntity.syn.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Kgqsapipb_FeatureEntity.types.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Kgqsapipb_FeatureEntity.ontologyPaths.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Kgqsapipb_FeatureEntity.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_FeatureEntity(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_FeatureEntity.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_FeatureEntity(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_FeatureEntity.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_FeatureEntity(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_FeatureEntity.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  a1[3] = 0;
  v1 = MEMORY[0x1E69E7CC0];
  a1[4] = 0xE000000000000000;
  a1[5] = v1;
  a1[6] = v1;
  type metadata accessor for Kgqsapipb_FeatureEntity(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_OntologyPath.ontology.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Kgqsapipb_OntologyPath.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_OntologyPath(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_OntologyPath.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_OntologyPath(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_OntologyPath.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_OntologyPath(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_OntologyPath.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_OntologyPath(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_CFGFeature.name.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Kgqsapipb_CFGFeature.values.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B8E2DB30()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8E2DBB8()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Kgqsapipb_CFGFeature.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_CFGFeature(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_CFGFeature.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_CFGFeature(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_IntentFeatures.dbQueryPattern.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Kgqsapipb_IntentFeatures.entityTypes.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Kgqsapipb_IntentFeatures.entityNames.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Kgqsapipb_IntentFeatures.attributes.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Kgqsapipb_IntentFeatures.cfgFeatures.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t Kgqsapipb_IntentFeatures.noReferDbQueryPattern.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t Kgqsapipb_IntentFeatures.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  type metadata accessor for Kgqsapipb_IntentFeatures(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_18_1();

  return v2(v1);
}

uint64_t Kgqsapipb_IntentFeatures.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_IntentFeatures(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v1 = OUTLINED_FUNCTION_209();

  return v2(v1);
}

uint64_t Kgqsapipb_IntentFeatures.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_IntentFeatures(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Kgqsapipb_IntentFeatures.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_92_0();
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = MEMORY[0x1E69E7CC0];
  *(a1 + 72) = v2;
  *(a1 + 80) = v2;
  *(a1 + 88) = v2;
  *(a1 + 96) = 0;
  *(a1 + 104) = v3;
  *(a1 + 112) = 0;
  type metadata accessor for Kgqsapipb_IntentFeatures(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E2E240()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB7C8);
  __swift_project_value_buffer(v0, qword_1EBABB7C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1B9652FF0;
  v4 = v49 + v3;
  v5 = v49 + v3 + v1[14];
  *(v49 + v3) = 1;
  *v5 = "query";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "qsyn";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "pattern";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "algo";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "flowDomain";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "executedDomain";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "parser";
  *(v19 + 1) = 6;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "entities";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "dbQueryPattern";
  *(v23 + 1) = 14;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "unfulfilledCFGDBQuery";
  *(v25 + 1) = 21;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "unfulfilledCFGDBQueryPattern";
  *(v27 + 1) = 28;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "aProps";
  *(v29 + 1) = 6;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "props";
  *(v31 + 1) = 5;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "pageviews";
  *(v33 + 1) = 9;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "frequency";
  *(v35 + 1) = 9;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "extractionDate";
  *(v37 + 1) = 14;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "extractionSource";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "bodyPart";
  *(v41 + 1) = 8;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "locale";
  *(v43 + 1) = 6;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "intentRankerModel";
  *(v45 + 1) = 17;
  v45[16] = 2;
  v8();
  v46 = (v4 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "executableQueryString";
  *(v47 + 1) = 21;
  v47[16] = 2;
  v8();
  return sub_1B964C760();
}

void *sub_1B8E2E89C()
{
  OUTLINED_FUNCTION_11_8();
  result = sub_1B8E2E8CC();
  qword_1EBABB7E0 = result;
  return result;
}

void *sub_1B8E2E8CC()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0xE000000000000000;
  v0[6] = 0;
  v0[7] = 0xE000000000000000;
  v0[8] = 0;
  v0[9] = 0xE000000000000000;
  v0[10] = 0;
  v0[11] = 0xE000000000000000;
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  v0[14] = 0;
  v0[15] = 0xE000000000000000;
  v1 = MEMORY[0x1E69E7CC0];
  v0[16] = MEMORY[0x1E69E7CC0];
  v0[17] = v1;
  v0[18] = v1;
  v0[19] = v1;
  v0[20] = v1;
  v0[21] = v1;
  v0[22] = 0;
  v0[23] = 0;
  v0[24] = 0;
  v0[25] = 0xE000000000000000;
  v0[26] = 0;
  v0[27] = 0xE000000000000000;
  v0[28] = 0;
  v0[29] = 0xE000000000000000;
  v0[30] = 0;
  v0[31] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  v3 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  return v0;
}

void *sub_1B8E2E970(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB860, &qword_1B96594D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v79 = &v62 - v4;
  v1[2] = 0;
  v1[4] = 0;
  v1[3] = 0xE000000000000000;
  v1[5] = 0xE000000000000000;
  v1[6] = 0;
  v1[7] = 0xE000000000000000;
  v1[8] = 0;
  v1[10] = 0;
  v1[9] = 0xE000000000000000;
  v1[11] = 0xE000000000000000;
  v1[12] = 0;
  v63 = v1 + 12;
  v1[13] = 0xE000000000000000;
  v1[14] = 0;
  v64 = v1 + 14;
  v1[15] = 0xE000000000000000;
  v5 = MEMORY[0x1E69E7CC0];
  v1[16] = MEMORY[0x1E69E7CC0];
  v65 = v1 + 16;
  v1[17] = v5;
  v66 = v1 + 17;
  v1[18] = v5;
  v67 = v1 + 18;
  v1[19] = v5;
  v68 = v1 + 19;
  v1[20] = v5;
  v69 = v1 + 20;
  v1[21] = v5;
  v1[24] = 0;
  v73 = v1 + 24;
  v1[23] = 0;
  v72 = v1 + 23;
  v1[22] = 0;
  v70 = v1 + 21;
  v71 = v1 + 22;
  v1[26] = 0;
  v74 = v1 + 26;
  v1[25] = 0xE000000000000000;
  v1[27] = 0xE000000000000000;
  v1[28] = 0;
  v75 = v1 + 28;
  v1[29] = 0xE000000000000000;
  v1[30] = 0;
  v76 = v1 + 30;
  v1[31] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  v77 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  v7 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  v8 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString);
  v78 = (v1 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  swift_beginAccess();
  v10 = a1[2];
  v9 = a1[3];
  swift_beginAccess();
  v1[2] = v10;
  v1[3] = v9;
  swift_beginAccess();
  v11 = a1[4];
  v12 = a1[5];
  swift_beginAccess();
  v1[4] = v11;
  v1[5] = v12;

  swift_beginAccess();
  v14 = a1[6];
  v13 = a1[7];
  swift_beginAccess();
  v1[6] = v14;
  v1[7] = v13;

  swift_beginAccess();
  v16 = a1[8];
  v15 = a1[9];
  swift_beginAccess();
  v1[8] = v16;
  v1[9] = v15;

  swift_beginAccess();
  v18 = a1[10];
  v17 = a1[11];
  swift_beginAccess();
  v1[10] = v18;
  v1[11] = v17;

  swift_beginAccess();
  v20 = a1[12];
  v19 = a1[13];
  v21 = v63;
  swift_beginAccess();
  *v21 = v20;
  v1[13] = v19;

  swift_beginAccess();
  v23 = a1[14];
  v22 = a1[15];
  v24 = v64;
  swift_beginAccess();
  *v24 = v23;
  v1[15] = v22;

  swift_beginAccess();
  v25 = a1[16];
  v26 = v65;
  swift_beginAccess();
  *v26 = v25;

  swift_beginAccess();
  v27 = a1[17];
  v28 = v66;
  swift_beginAccess();
  *v28 = v27;

  swift_beginAccess();
  v29 = a1[18];
  v30 = v67;
  swift_beginAccess();
  *v30 = v29;

  swift_beginAccess();
  v31 = a1[19];
  v32 = v68;
  swift_beginAccess();
  *v32 = v31;

  swift_beginAccess();
  v33 = a1[20];
  v34 = v69;
  swift_beginAccess();
  *v34 = v33;

  swift_beginAccess();
  v35 = a1[21];
  v36 = v70;
  swift_beginAccess();
  *v36 = v35;

  swift_beginAccess();
  v37 = a1[22];
  v38 = v71;
  swift_beginAccess();
  *v38 = v37;
  swift_beginAccess();
  v39 = a1[23];
  v40 = v72;
  swift_beginAccess();
  *v40 = v39;
  swift_beginAccess();
  v42 = a1[24];
  v41 = a1[25];
  v43 = v73;
  swift_beginAccess();
  *v43 = v42;
  v1[25] = v41;

  swift_beginAccess();
  v45 = a1[26];
  v44 = a1[27];
  v46 = v74;
  swift_beginAccess();
  *v46 = v45;
  v1[27] = v44;

  swift_beginAccess();
  v48 = a1[28];
  v47 = a1[29];
  v49 = v75;
  swift_beginAccess();
  *v49 = v48;
  v1[29] = v47;

  swift_beginAccess();
  v51 = a1[30];
  v50 = a1[31];
  v52 = v76;
  swift_beginAccess();
  *v52 = v51;
  v1[31] = v50;

  v53 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  swift_beginAccess();
  v54 = a1 + v53;
  v55 = v79;
  sub_1B8E2F130(v54, v79);
  v56 = v77;
  swift_beginAccess();
  sub_1B8E2F224(v55, v1 + v56);
  swift_endAccess();
  v57 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString);
  swift_beginAccess();
  v59 = *v57;
  v58 = v57[1];

  v60 = v78;
  swift_beginAccess();
  *v60 = v59;
  v60[1] = v58;

  return v1;
}

uint64_t sub_1B8E2F130(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB860, &qword_1B96594D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8E2F1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8E2F224(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB860, &qword_1B96594D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8E2F294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8E2F2F8(uint64_t a1)
{
  v2 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B8E2F3D4()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel, &qword_1EBABB860, &qword_1B96594D0);

  return v0;
}

uint64_t sub_1B8E2F4A8()
{
  v0 = sub_1B8E2F3D4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Kgqsapipb_QueryFeatures.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Kgqsapipb_QueryFeatures(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Kgqsapipb_QueryFeatures._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8E2E970(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B8E2F59C(v10, a1, a2, a3);
}

uint64_t sub_1B8E2F59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C(a2, a1);
        break;
      case 2:
        sub_1B8DC46F4(a2, a1);
        break;
      case 3:
        sub_1B8DC4778(a2, a1);
        break;
      case 4:
        sub_1B8E16ACC(a2, a1);
        break;
      case 5:
        sub_1B8E16B50(a2, a1);
        break;
      case 6:
        sub_1B8E16BD4(a2, a1);
        break;
      case 7:
        sub_1B8E2F858(a2, a1);
        break;
      case 8:
        sub_1B8E2F8DC(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B8E2F9A8(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B8E2FA2C(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B8E2FAB0(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8E2FB34(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B8E2FBB8(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8E2FC84(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B8E2FD08(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B8E2FD8C(a2, a1);
        break;
      case 17:
        sub_1B8E2FE10(a2, a1);
        break;
      case 18:
        sub_1B8E2FE94(a2, a1);
        break;
      case 19:
        sub_1B8E2FF18(a2, a1);
        break;
      case 20:
        sub_1B8E2FF9C(a2, a1, a3, a4);
        break;
      case 21:
        sub_1B8E30078(a2, a1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E2F858(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E2F8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_FeatureEntity(0);
  sub_1B8CD1D00(&qword_1EBABB8E0, type metadata accessor for Kgqsapipb_FeatureEntity, protocol conformance descriptor for Kgqsapipb_FeatureEntity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E2F9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E2FA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E2FAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E2FB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4D0();
  return swift_endAccess();
}

uint64_t sub_1B8E2FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_Pair(0);
  sub_1B8CD1D00(&qword_1EBABB620, type metadata accessor for Kgqsapipb_Pair, protocol conformance descriptor for Kgqsapipb_Pair);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8E2FC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8E2FD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8E2FD8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E2FE10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E2FE94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E2FF18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t sub_1B8E2FF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  sub_1B8CD1D00(&qword_1EBABB8C8, type metadata accessor for Kgqsapipb_IntentRankerModel, protocol conformance descriptor for Kgqsapipb_IntentRankerModel);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8E30078(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1B964C530();
  return swift_endAccess();
}

uint64_t Kgqsapipb_QueryFeatures.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Kgqsapipb_QueryFeatures(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8E30168(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8E30168(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB860, &qword_1B96594D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v39 - v7;
  v41 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = a1[3];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v13 = a1[5];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = a1[4] & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v15 = a1[7];
  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = a1[6] & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v17 = a1[9];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = a1[8] & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v19 = a1[11];
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = a1[10] & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v21 = a1[13];
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = a1[12] & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v23 = a1[15];
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = a1[14] & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1[16] + 16))
  {
    v40 = type metadata accessor for Kgqsapipb_FeatureEntity(0);
    sub_1B8CD1D00(&qword_1EBABB8E0, type metadata accessor for Kgqsapipb_FeatureEntity, protocol conformance descriptor for Kgqsapipb_FeatureEntity);

    sub_1B964C730();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1[17] + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (*(a1[18] + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1[19] + 16))
  {
    goto LABEL_48;
  }

  sub_1B964C6E0();
  if (v4)
  {
  }

LABEL_48:
  swift_beginAccess();
  if (*(a1[20] + 16))
  {

    sub_1B964C6E0();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1[21] + 16) || (v40 = type metadata accessor for Kgqsapipb_Pair(0), sub_1B8CD1D00(&qword_1EBABB620, type metadata accessor for Kgqsapipb_Pair, protocol conformance descriptor for Kgqsapipb_Pair), , sub_1B964C730(), result = , !v4))
  {
    swift_beginAccess();
    if (!a1[22] || (result = sub_1B964C6D0(), !v4))
    {
      swift_beginAccess();
      if (!a1[23] || (result = sub_1B964C6D0(), !v4))
      {
        swift_beginAccess();
        v26 = a1[25];
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = a1[24] & 0xFFFFFFFFFFFFLL;
        }

        if (!v27 || (, sub_1B964C700(), result = , !v4))
        {
          swift_beginAccess();
          v28 = a1[27];
          v29 = HIBYTE(v28) & 0xF;
          if ((v28 & 0x2000000000000000) == 0)
          {
            v29 = a1[26] & 0xFFFFFFFFFFFFLL;
          }

          if (!v29 || (, sub_1B964C700(), result = , !v4))
          {
            swift_beginAccess();
            v30 = a1[29];
            v31 = HIBYTE(v30) & 0xF;
            if ((v30 & 0x2000000000000000) == 0)
            {
              v31 = a1[28] & 0xFFFFFFFFFFFFLL;
            }

            if (!v31 || (, sub_1B964C700(), result = , !v4))
            {
              swift_beginAccess();
              v32 = a1[31];
              v33 = HIBYTE(v32) & 0xF;
              if ((v32 & 0x2000000000000000) == 0)
              {
                v33 = a1[30] & 0xFFFFFFFFFFFFLL;
              }

              if (!v33 || (, sub_1B964C700(), result = , !v4))
              {
                v34 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
                swift_beginAccess();
                sub_1B8E2F130(a1 + v34, v8);
                if (__swift_getEnumTagSinglePayload(v8, 1, v41) == 1)
                {
                  sub_1B8D9207C(v8, &qword_1EBABB860, &qword_1B96594D0);
                }

                else
                {
                  sub_1B8E2F1C0(v8, v10);
                  sub_1B8CD1D00(&qword_1EBABB8C8, type metadata accessor for Kgqsapipb_IntentRankerModel, protocol conformance descriptor for Kgqsapipb_IntentRankerModel);
                  sub_1B964C740();
                  result = sub_1B8E2F2F8(v10);
                  if (v4)
                  {
                    return result;
                  }
                }

                v35 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString);
                result = swift_beginAccess();
                v36 = *v35;
                v37 = v35[1];
                v38 = HIBYTE(v37) & 0xF;
                if ((v37 & 0x2000000000000000) == 0)
                {
                  v38 = v36 & 0xFFFFFFFFFFFFLL;
                }

                if (v38)
                {

                  sub_1B964C700();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_QueryFeatures.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_7_9();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1B8E30B60(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_16();
  sub_1B8CD1D00(v8, v9, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

BOOL sub_1B8E30B60(void *a1, void *a2)
{
  v4 = type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  v88 = (&v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB998, &unk_1B9659F70);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v86 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABB860, &qword_1B96594D0);
  v12 = OUTLINED_FUNCTION_183(v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v86 - v16;
  OUTLINED_FUNCTION_521((a1 + 2), v130);
  v19 = a1[2];
  v18 = a1[3];
  OUTLINED_FUNCTION_521((a2 + 2), v129);
  v20 = v19 == a2[2] && v18 == a2[3];
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521((a1 + 4), v128);
  v21 = a1[4];
  v22 = a1[5];
  OUTLINED_FUNCTION_521((a2 + 4), v127);
  v23 = v21 == a2[4] && v22 == a2[5];
  if (!v23 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521((a1 + 6), v126);
  v24 = a1[6];
  v25 = a1[7];
  OUTLINED_FUNCTION_521((a2 + 6), v125);
  v26 = v24 == a2[6] && v25 == a2[7];
  if (!v26 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521((a1 + 8), v124);
  v27 = a1[8];
  v28 = a1[9];
  OUTLINED_FUNCTION_521((a2 + 8), &v123);
  v29 = v27 == a2[8] && v28 == a2[9];
  if (!v29 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521((a1 + 10), &v122);
  v30 = a1[10];
  v31 = a1[11];
  OUTLINED_FUNCTION_521((a2 + 10), &v121);
  v32 = v30 == a2[10] && v31 == a2[11];
  if (!v32 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521((a1 + 12), &v120);
  v33 = a1[12];
  v34 = a1[13];
  OUTLINED_FUNCTION_521((a2 + 12), &v119);
  v35 = v33 == a2[12] && v34 == a2[13];
  if (!v35 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521((a1 + 14), &v118);
  v36 = a1[14];
  v37 = a1[15];
  OUTLINED_FUNCTION_521((a2 + 14), &v117);
  v38 = v36 == a2[14] && v37 == a2[15];
  if (!v38 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    return 0;
  }

  v87 = v10;
  OUTLINED_FUNCTION_521((a1 + 16), &v116);
  v39 = a1[16];
  OUTLINED_FUNCTION_521((a2 + 16), &v115);
  v40 = a2[16];

  sub_1B8D886C0(v39, v40);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 17), &v114);
  v43 = a1[17];
  OUTLINED_FUNCTION_521((a2 + 17), &v113);
  if ((sub_1B8D6123C(v43, a2[17]) & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 18), &v112);
  v44 = a1[18];
  OUTLINED_FUNCTION_521((a2 + 18), &v111);
  if ((sub_1B8D6123C(v44, a2[18]) & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 19), &v110);
  v45 = a1[19];
  OUTLINED_FUNCTION_521((a2 + 19), &v109);
  if ((sub_1B8D6123C(v45, a2[19]) & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 20), &v108);
  v46 = a1[20];
  OUTLINED_FUNCTION_521((a2 + 20), &v107);
  if ((sub_1B8D6123C(v46, a2[20]) & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 21), &v106);
  v47 = a1[21];
  OUTLINED_FUNCTION_521((a2 + 21), &v105);
  v48 = a2[21];

  sub_1B8D888F4(v47, v48);
  v50 = v49;

  if ((v50 & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 22), &v104);
  v51 = a1[22];
  OUTLINED_FUNCTION_521((a2 + 22), &v103);
  if (v51 != a2[22])
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 23), &v102);
  v52 = a1[23];
  OUTLINED_FUNCTION_521((a2 + 23), &v101);
  if (v52 != a2[23])
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 24), &v100);
  v53 = a1[24];
  v54 = a1[25];
  OUTLINED_FUNCTION_521((a2 + 24), &v99);
  v55 = v53 == a2[24] && v54 == a2[25];
  if (!v55 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 26), &v98);
  v56 = a1[26];
  v57 = a1[27];
  OUTLINED_FUNCTION_521((a2 + 26), &v97);
  v58 = v56 == a2[26] && v57 == a2[27];
  if (!v58 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 28), &v96);
  v59 = a1[28];
  v60 = a1[29];
  OUTLINED_FUNCTION_521((a2 + 28), &v95);
  v61 = v59 == a2[28] && v60 == a2[29];
  if (!v61 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_74;
  }

  OUTLINED_FUNCTION_521((a1 + 30), &v94);
  v62 = a1[30];
  v63 = a1[31];
  OUTLINED_FUNCTION_521((a2 + 30), &v93);
  v64 = v62 == a2[30] && v63 == a2[31];
  if (!v64 && (OUTLINED_FUNCTION_34_2() & 1) == 0)
  {
    goto LABEL_74;
  }

  v65 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel, &v92);
  sub_1B8E2F130(a1 + v65, v17);
  v66 = OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel;
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__intentRankerModel, &v91);
  v67 = *(v7 + 48);
  v68 = v87;
  sub_1B8E2F130(v17, v87);
  sub_1B8E2F130(a2 + v66, v68 + v67);
  OUTLINED_FUNCTION_178(v68, 1, v4);
  if (!v20)
  {
    sub_1B8E2F130(v68, v15);
    OUTLINED_FUNCTION_178(v68 + v67, 1, v4);
    if (!v69)
    {
      v74 = v88;
      sub_1B8E2F1C0(v68 + v67, v88);
      v75 = *v15 == *v74 && v15[1] == v74[1];
      if (v75 || (sub_1B964C9F0() & 1) != 0)
      {
        v76 = v15[2] == v74[2] && v15[3] == v74[3];
        if (v76 || (sub_1B964C9F0() & 1) != 0)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_16();
          sub_1B8CD1D00(v77, v78, MEMORY[0x1E69AAC10]);
          v79 = sub_1B964C850();
          sub_1B8E2F2F8(v74);
          sub_1B8D9207C(v17, &qword_1EBABB860, &qword_1B96594D0);
          sub_1B8E2F2F8(v15);
          sub_1B8D9207C(v87, &qword_1EBABB860, &qword_1B96594D0);
          if (v79)
          {
            goto LABEL_88;
          }

LABEL_74:

          return 0;
        }
      }

      sub_1B8E2F2F8(v74);
      sub_1B8D9207C(v17, &qword_1EBABB860, &qword_1B96594D0);
      sub_1B8E2F2F8(v15);
      v72 = v87;
      v70 = &qword_1EBABB860;
      v71 = &qword_1B96594D0;
LABEL_73:
      sub_1B8D9207C(v72, v70, v71);
      goto LABEL_74;
    }

    sub_1B8D9207C(v17, &qword_1EBABB860, &qword_1B96594D0);
    sub_1B8E2F2F8(v15);
LABEL_72:
    v70 = &qword_1EBABB998;
    v71 = &unk_1B9659F70;
    v72 = v68;
    goto LABEL_73;
  }

  sub_1B8D9207C(v17, &qword_1EBABB860, &qword_1B96594D0);
  OUTLINED_FUNCTION_178(v68 + v67, 1, v4);
  if (!v20)
  {
    goto LABEL_72;
  }

  sub_1B8D9207C(v68, &qword_1EBABB860, &qword_1B96594D0);
LABEL_88:
  v80 = (a1 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString);
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString, &v90);
  v81 = *v80;
  v82 = v80[1];
  v83 = (a2 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString);
  OUTLINED_FUNCTION_521(a2 + OBJC_IVAR____TtCV10PegasusAPI23Kgqsapipb_QueryFeaturesP33_0384B7A4074D033DDD127A0E96F0780B13_StorageClass__executableQueryString, &v89);
  if (v81 == *v83 && v82 == v83[1])
  {

    return 1;
  }

  v85 = sub_1B964C9F0();

  return (v85 & 1) != 0;
}

uint64_t sub_1B8E31410(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D00(&qword_1EBABB990, type metadata accessor for Kgqsapipb_QueryFeatures, protocol conformance descriptor for Kgqsapipb_QueryFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E31490(uint64_t a1)
{
  v2 = sub_1B8CD1D00(&qword_1EBABB8B0, type metadata accessor for Kgqsapipb_QueryFeatures, protocol conformance descriptor for Kgqsapipb_QueryFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E31500(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D00(&qword_1EBABB8B0, type metadata accessor for Kgqsapipb_QueryFeatures, protocol conformance descriptor for Kgqsapipb_QueryFeatures);

  return sub_1B964C5D0();
}

uint64_t Kgqsapipb_IntentRankerModel.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Kgqsapipb_IntentRankerModel.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (result = OUTLINED_FUNCTION_3(v5, v6, 2), !v0))
    {
      type metadata accessor for Kgqsapipb_IntentRankerModel(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Kgqsapipb_IntentRankerModel.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_IntentRankerModel(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_16();
  v9 = sub_1B8CD1D00(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8E31808(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D00(&qword_1EBABB988, type metadata accessor for Kgqsapipb_IntentRankerModel, protocol conformance descriptor for Kgqsapipb_IntentRankerModel);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E31888(uint64_t a1)
{
  v2 = sub_1B8CD1D00(&qword_1EBABB8C8, type metadata accessor for Kgqsapipb_IntentRankerModel, protocol conformance descriptor for Kgqsapipb_IntentRankerModel);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E318F8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D00(&qword_1EBABB8C8, type metadata accessor for Kgqsapipb_IntentRankerModel, protocol conformance descriptor for Kgqsapipb_IntentRankerModel);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E31990()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB800);
  __swift_project_value_buffer(v0, qword_1EBABB800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "start";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "end";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sem";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "syn";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "types";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ontologyPaths";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_FeatureEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 6:
        v5 = OUTLINED_FUNCTION_288();
        sub_1B8E31D2C(v5, v6, v2, v1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E31D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_OntologyPath(0);
  sub_1B8CD1D00(&qword_1EBABB878, type metadata accessor for Kgqsapipb_OntologyPath, protocol conformance descriptor for Kgqsapipb_OntologyPath);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_FeatureEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v6 || (result = OUTLINED_FUNCTION_3(v4, v5, 3), !v1))
      {
        OUTLINED_FUNCTION_1();
        if (!v9 || (result = OUTLINED_FUNCTION_3(v7, v8, 4), !v1))
        {
          if (!*(*(v2 + 40) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
          {
            if (!*(*(v2 + 48) + 16) || (type metadata accessor for Kgqsapipb_OntologyPath(0), sub_1B8CD1D00(&qword_1EBABB878, type metadata accessor for Kgqsapipb_OntologyPath, protocol conformance descriptor for Kgqsapipb_OntologyPath), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v1))
            {
              type metadata accessor for Kgqsapipb_FeatureEntity(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Kgqsapipb_FeatureEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(a1 + 40), *(a2 + 40)) & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7CD18(*(a1 + 48), *(a2 + 48));
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_FeatureEntity(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_16();
  v9 = sub_1B8CD1D00(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8E320BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D00(&qword_1EBABB980, type metadata accessor for Kgqsapipb_FeatureEntity, protocol conformance descriptor for Kgqsapipb_FeatureEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E3213C(uint64_t a1)
{
  v2 = sub_1B8CD1D00(&qword_1EBABB8E0, type metadata accessor for Kgqsapipb_FeatureEntity, protocol conformance descriptor for Kgqsapipb_FeatureEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E321AC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D00(&qword_1EBABB8E0, type metadata accessor for Kgqsapipb_FeatureEntity, protocol conformance descriptor for Kgqsapipb_FeatureEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E32244()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB818);
  __swift_project_value_buffer(v0, qword_1EBABB818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "ontology";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t Kgqsapipb_OntologyPath.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }
  }

  return result;
}

uint64_t Kgqsapipb_OntologyPath.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
  {
    type metadata accessor for Kgqsapipb_OntologyPath(0);
    return OUTLINED_FUNCTION_8_1();
  }

  return result;
}

uint64_t static Kgqsapipb_OntologyPath.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1B8D6123C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_OntologyPath(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_16();
  v4 = sub_1B8CD1D00(v2, v3, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v4) & 1;
}

uint64_t sub_1B8E325B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D00(&qword_1EBABB978, type metadata accessor for Kgqsapipb_OntologyPath, protocol conformance descriptor for Kgqsapipb_OntologyPath);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E32638(uint64_t a1)
{
  v2 = sub_1B8CD1D00(&qword_1EBABB878, type metadata accessor for Kgqsapipb_OntologyPath, protocol conformance descriptor for Kgqsapipb_OntologyPath);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E326A8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D00(&qword_1EBABB878, type metadata accessor for Kgqsapipb_OntologyPath, protocol conformance descriptor for Kgqsapipb_OntologyPath);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E32760(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B964D060;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = a4;
  *(v18 + 1) = a5;
  v18[16] = 2;
  v17();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_CFGFeature.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4D0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Kgqsapipb_CFGFeature.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
    {
      type metadata accessor for Kgqsapipb_CFGFeature(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Kgqsapipb_CFGFeature.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || (sub_1B8D6123C(*(v2 + 16), *(v1 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_CFGFeature(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_16();
  v8 = sub_1B8CD1D00(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8E32B64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D00(&qword_1EBABB970, type metadata accessor for Kgqsapipb_CFGFeature, protocol conformance descriptor for Kgqsapipb_CFGFeature);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E32BE4(uint64_t a1)
{
  v2 = sub_1B8CD1D00(&qword_1EBABB898, type metadata accessor for Kgqsapipb_CFGFeature, protocol conformance descriptor for Kgqsapipb_CFGFeature);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E32C54(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D00(&qword_1EBABB898, type metadata accessor for Kgqsapipb_CFGFeature, protocol conformance descriptor for Kgqsapipb_CFGFeature);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E32CEC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB848);
  __swift_project_value_buffer(v0, qword_1EBABB848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1B96594C0;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "query";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "dbQueryPattern";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "dbQueryDepth";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "popularity";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "parsingScore";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "affinityScore";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "parseHeight";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "intentPosition";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "hasResponse";
  *(v23 + 1) = 11;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "entityTypes";
  *(v25 + 1) = 11;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "entityNames";
  *(v27 + 1) = 11;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "attributes";
  *(v29 + 1) = 10;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "cfgFeatures";
  *(v31 + 1) = 11;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "noReferDbQueryPattern";
  *(v33 + 1) = 21;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "noReferQueryDepth";
  *(v35 + 1) = 17;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "prunerScore";
  *(v37 + 1) = 11;
  v37[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Kgqsapipb_IntentFeatures.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v4 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 14:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
      case 7:
      case 8:
      case 15:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
      case 5:
      case 6:
      case 16:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 10:
      case 11:
      case 12:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      case 13:
        v5 = OUTLINED_FUNCTION_288();
        sub_1B8E33354(v5, v6, v2, v1);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8E33354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_CFGFeature(0);
  sub_1B8CD1D00(&qword_1EBABB898, type metadata accessor for Kgqsapipb_CFGFeature, protocol conformance descriptor for Kgqsapipb_CFGFeature);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_IntentFeatures.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      if (!*(v1 + 32) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
      {
        if (*(v1 + 36) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
        {
          if (*(v1 + 40) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
          {
            if (*(v1 + 44) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
            {
              if (!*(v1 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
              {
                if (!*(v1 + 52) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
                {
                  if (*(v1 + 56) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v0))
                  {
                    if (!*(*(v1 + 64) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
                    {
                      if (!*(*(v1 + 72) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
                      {
                        if (!*(*(v1 + 80) + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v0))
                        {
                          if (!*(*(v1 + 88) + 16) || (type metadata accessor for Kgqsapipb_CFGFeature(0), sub_1B8CD1D00(&qword_1EBABB898, type metadata accessor for Kgqsapipb_CFGFeature, protocol conformance descriptor for Kgqsapipb_CFGFeature), OUTLINED_FUNCTION_79_0(), result = sub_1B964C730(), !v0))
                          {
                            OUTLINED_FUNCTION_1();
                            if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 14), !v0))
                            {
                              if (!*(v1 + 112) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
                              {
                                if (*(v1 + 116) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
                                {
                                  type metadata accessor for Kgqsapipb_IntentFeatures(0);
                                  return OUTLINED_FUNCTION_8_1();
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

  return result;
}

uint64_t static Kgqsapipb_IntentFeatures.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16) == *(v1 + 16) && *(v2 + 24) == *(v1 + 24);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v2 + 32) != *(v1 + 32))
  {
    return 0;
  }

  if (*(v2 + 36) != *(v1 + 36))
  {
    return 0;
  }

  if (*(v2 + 40) != *(v1 + 40))
  {
    return 0;
  }

  if (*(v2 + 44) != *(v1 + 44))
  {
    return 0;
  }

  if (*(v2 + 48) != *(v1 + 48))
  {
    return 0;
  }

  if (*(v2 + 52) != *(v1 + 52))
  {
    return 0;
  }

  if (*(v2 + 56) != *(v1 + 56))
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v2 + 64), *(v1 + 64)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v2 + 72), *(v1 + 72)) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(*(v2 + 80), *(v1 + 80)) & 1) == 0)
  {
    return 0;
  }

  sub_1B8D7C4D0(*(v2 + 88), *(v1 + 88));
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(v2 + 96) == *(v1 + 96) && *(v2 + 104) == *(v1 + 104);
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 112) != *(v1 + 112) || *(v2 + 116) != *(v1 + 116))
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_IntentFeatures(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_16();
  v11 = sub_1B8CD1D00(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B8E33880(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD1D00(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E33984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1D00(&qword_1EBABB968, type metadata accessor for Kgqsapipb_IntentFeatures, protocol conformance descriptor for Kgqsapipb_IntentFeatures);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E33A04(uint64_t a1)
{
  v2 = sub_1B8CD1D00(&qword_1EBABB918, type metadata accessor for Kgqsapipb_IntentFeatures, protocol conformance descriptor for Kgqsapipb_IntentFeatures);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E33A74(uint64_t a1, uint64_t a2)
{
  sub_1B8CD1D00(&qword_1EBABB918, type metadata accessor for Kgqsapipb_IntentFeatures, protocol conformance descriptor for Kgqsapipb_IntentFeatures);

  return sub_1B964C5D0();
}

void sub_1B8E34258(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B8E3468C(319, &qword_1EBABB938, type metadata accessor for Kgqsapipb_OntologyPath, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B8E34394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void __swift_store_extra_inhabitant_index_77Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    OUTLINED_FUNCTION_249_0();
    v4 = OUTLINED_FUNCTION_61_0(*(v2 + 24));

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

void sub_1B8E344B0(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E3456C(uint64_t a1)
{
  sub_1B8CD1878();
  if (v1 <= 0x3F)
  {
    sub_1B8E3468C(319, &qword_1EBABB960, type metadata accessor for Kgqsapipb_CFGFeature, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1B964C2B0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B8E3468C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B8E346F8(uint64_t a1)
{
  sub_1B8E3468C(319, &qword_1ED9CCAB8, type metadata accessor for Kgqsapipb_IntentRankerModel, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Kgqsapipb_QueryFeatures(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_10()
{
  type metadata accessor for Kgqsapipb_QueryFeatures(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Kgqsapipb_QueryFeatures(0);
  *(a1 + 64) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_10()
{
  type metadata accessor for Kgqsapipb_QueryFeatures._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_8()
{
  type metadata accessor for Kgqsapipb_QueryFeatures._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_13_5()
{
  type metadata accessor for Kgqsapipb_QueryFeatures(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_34_2()
{

  return sub_1B964C9F0();
}

uint64_t OUTLINED_FUNCTION_41_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_54_2(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_61_1()
{
}

uint64_t OUTLINED_FUNCTION_68_3()
{

  return type metadata accessor for Kgqsapipb_QueryFeatures(0);
}

uint64_t Kgqsapipb_KGDBResponseList.kgdbResponses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Kgqsapipb_KGDBResponseList.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Kgqsapipb_KGDBResponseList(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Kgqsapipb_KGDBResponseList(uint64_t a1)
{
  result = qword_1EBABB9D8;
  if (!qword_1EBABB9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Kgqsapipb_KGDBResponseList.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Kgqsapipb_KGDBResponseList(0) + 20);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Kgqsapipb_KGDBResponseList.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_KGDBResponseList(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8E34C6C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABB9A0);
  __swift_project_value_buffer(v0, qword_1EBABB9A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "kgdbResponses";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t static Kgqsapipb_KGDBResponseList._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6218 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABB9A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Kgqsapipb_KGDBResponseList.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B8E34EE8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B8E34EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Kgqsapipb_KGDBResponse(0);
  sub_1B8E35598(&qword_1EBABAFD0, type metadata accessor for Kgqsapipb_KGDBResponse, protocol conformance descriptor for Kgqsapipb_KGDBResponse);
  return sub_1B964C570();
}

uint64_t Kgqsapipb_KGDBResponseList.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Kgqsapipb_KGDBResponse(0), sub_1B8E35598(&qword_1EBABAFD0, type metadata accessor for Kgqsapipb_KGDBResponse, protocol conformance descriptor for Kgqsapipb_KGDBResponse), result = sub_1B964C730(), !v4))
  {
    type metadata accessor for Kgqsapipb_KGDBResponseList(0);
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Kgqsapipb_KGDBResponseList.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1B8D7BB78(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Kgqsapipb_KGDBResponseList(0);
  sub_1B964C2B0();
  sub_1B8E35598(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Kgqsapipb_KGDBResponseList.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Kgqsapipb_KGDBResponseList(0);
  sub_1B8E35598(&qword_1EBABB9B8, type metadata accessor for Kgqsapipb_KGDBResponseList, protocol conformance descriptor for Kgqsapipb_KGDBResponseList);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8E35204(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8E35598(&qword_1EBABB9F0, type metadata accessor for Kgqsapipb_KGDBResponseList, protocol conformance descriptor for Kgqsapipb_KGDBResponseList);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E35284(uint64_t a1)
{
  v2 = sub_1B8E35598(&qword_1EBABB9C8, type metadata accessor for Kgqsapipb_KGDBResponseList, protocol conformance descriptor for Kgqsapipb_KGDBResponseList);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E352F4(uint64_t a1, uint64_t a2)
{
  sub_1B8E35598(&qword_1EBABB9C8, type metadata accessor for Kgqsapipb_KGDBResponseList, protocol conformance descriptor for Kgqsapipb_KGDBResponseList);

  return sub_1B964C5D0();
}

void sub_1B8E354BC(uint64_t a1)
{
  sub_1B8E35540(319);
  if (v1 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8E35540(uint64_t a1)
{
  if (!qword_1EBABB9E8)
  {
    type metadata accessor for Kgqsapipb_KGDBResponse(255);
    v1 = sub_1B964C910();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBABB9E8);
    }
  }
}

uint64_t sub_1B8E35598(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Kgqsapipb_TokenPair.unknownFields.getter()
{
  type metadata accessor for Kgqsapipb_TokenPair(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Kgqsapipb_TokenPair.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_TokenPair(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Kgqsapipb_TokenPair.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_TokenPair(v0);
  return nullsub_1;
}

uint64_t Kgqsapipb_TokenPair.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Kgqsapipb_TokenPair(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_LSTMScoresArray.unknownFields.getter()
{
  type metadata accessor for Kgqsapipb_LSTMScoresArray(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}

uint64_t Kgqsapipb_LSTMScoresArray.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Kgqsapipb_LSTMScoresArray(v2) + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Kgqsapipb_LSTMScoresArray.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Kgqsapipb_LSTMScoresArray(v0);
  return nullsub_1;
}

uint64_t Kgqsapipb_LSTMScoresArray.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Kgqsapipb_LSTMScoresArray(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Kgqsapipb_NEROutput.lstmScoresArray.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Kgqsapipb_NEROutput.tokenPairs.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Kgqsapipb_NEROutput.modelVersion.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Kgqsapipb_NEROutput.modelVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Kgqsapipb_NEROutput.unknownFields.getter()
{
  type metadata accessor for Kgqsapipb_NEROutput(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_18_1();

  return v1(v0);
}