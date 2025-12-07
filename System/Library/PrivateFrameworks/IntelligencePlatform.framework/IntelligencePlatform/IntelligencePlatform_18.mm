uint64_t sub_1ABBC91D0(uint64_t a1)
{
  v2 = sub_1ABBCED20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC920C(uint64_t a1)
{
  v2 = sub_1ABBCED20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBC9248(uint64_t a1)
{
  v2 = sub_1ABBCEEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC9284(uint64_t a1)
{
  v2 = sub_1ABBCEEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBC92C0(uint64_t a1)
{
  v2 = sub_1ABBCEF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC92FC(uint64_t a1)
{
  v2 = sub_1ABBCEF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBC9338(uint64_t a1)
{
  v2 = sub_1ABBCED74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC9374(uint64_t a1)
{
  v2 = sub_1ABBCED74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBC93B0(uint64_t a1)
{
  v2 = sub_1ABBCEE70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBC93EC(uint64_t a1)
{
  v2 = sub_1ABBCEE70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionRankingService.CandidateConstraint.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v47 = sub_1ABAD219C(&qword_1EB4D4648, &qword_1ABF452C0);
  sub_1ABA7BB64();
  v45 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7FBE0();
  v43 = v7;
  v41 = sub_1ABAD219C(&qword_1EB4D4650, &qword_1ABF452C8);
  sub_1ABA7BB64();
  v39 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v37 = v10;
  v36.n128_u64[0] = sub_1ABAD219C(&qword_1EB4D4658, &qword_1ABF452D0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  v35 = sub_1ABAD219C(&qword_1EB4D4660, &qword_1ABF452D8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4D4668, &qword_1ABF452E0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABAD219C(&qword_1EB4D4670, &unk_1ABF452E8);
  sub_1ABA7BB64();
  v49 = v14;
  v50 = v15;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA8176C();
  v17 = *v0;
  v34 = *(v0 + 8);
  v33 = *(v0 + 16);
  v32 = *(v0 + 24);
  v53 = *(v0 + 32);
  v18 = *(v0 + 34);
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABBCED20();
  sub_1ABF252E4();
  switch(v18->n128_u64)
  {
    case 1uLL:
      sub_1ABA8BCB4();
      sub_1ABBCEEC4();
      sub_1ABAB5680(&type metadata for EntityResolutionRankingService.CandidateConstraint.ExcludeCodingKeys, v51);
      v51[0] = v17;
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABAA3C3C();
      sub_1ABBCEFC0(v29);
      v25 = v35;
      sub_1ABBD2A6C();
      sub_1ABF24F84();
      goto LABEL_12;
    case 2uLL:
      LOBYTE(v51[0]) = 2;
      sub_1ABBCEE70();
      sub_1ABAB5680(&type metadata for EntityResolutionRankingService.CandidateConstraint.SubsetCodingKeys, v51);
      v51[0] = v17;
      sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
      sub_1ABAA3C3C();
      sub_1ABBCEFC0(v24);
      v25 = v36.n128_u64[0];
      sub_1ABBD2A6C();
      sub_1ABF24F84();
LABEL_12:
      v30 = sub_1ABAA383C();
      v31(v30, v25);
      v26 = sub_1ABA992D8();
      v28 = v18;
      goto LABEL_13;
    case 3uLL:
      v44 = sub_1ABAA0A78();
      LOBYTE(v51[0]) = 3;
      sub_1ABBCEE1C();
      v46 = v17[2];
      v48 = v17[1];
      v21 = v37;
      sub_1ABA8AEFC(&type metadata for EntityResolutionRankingService.CandidateConstraint.AndCodingKeys, v51);
      sub_1ABA8BAD4(v48, v46);
      sub_1ABA97F74();
      v22 = v41;
      sub_1ABAA1F14();
      sub_1ABF24F84();
      if (!v1)
      {
        sub_1ABA8A4D8(v44, v36);
        sub_1ABA97F74();
        sub_1ABAA1F14();
        sub_1ABF24F84();
      }

      v23 = v39;
      goto LABEL_10;
    case 4uLL:
      v38 = sub_1ABAA0A78();
      LOBYTE(v51[0]) = 4;
      sub_1ABBCED74();
      v40 = v17[2];
      v42 = v17[1];
      v21 = v43;
      sub_1ABA8AEFC(&type metadata for EntityResolutionRankingService.CandidateConstraint.OrCodingKeys, v51);
      sub_1ABA8BAD4(v42, v40);
      sub_1ABA97F74();
      v22 = v47;
      sub_1ABAA1F14();
      sub_1ABF24F84();
      if (!v1)
      {
        sub_1ABA8A4D8(v38, v36);
        sub_1ABA97F74();
        sub_1ABAA1F14();
        sub_1ABF24F84();
      }

      v23 = v45;
LABEL_10:
      (*(v23 + 8))(v21, v22);
      v26 = sub_1ABAA383C();
      v28 = v17;
LABEL_13:
      v27(v26, v28);
      break;
    default:
      sub_1ABBCEF18();
      sub_1ABF24EC4();
      v51[0] = v17;
      v51[1] = v34;
      v51[2] = v33;
      v51[3] = v32;
      v52 = v53;
      sub_1ABAA68CC();
      sub_1ABF24F84();
      v19 = sub_1ABA8BAC4();
      v20(v19);
      (*(v50 + 8))(v2, v49);
      break;
  }

  sub_1ABA7BC90();
}

void EntityResolutionRankingService.CandidateConstraint.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 34))
  {
    case 1:
      v5 = 1;
      goto LABEL_10;
    case 2:
      v5 = 2;
LABEL_10:
      MEMORY[0x1AC5AA8A0](v5);

      sub_1ABB4EC5C();
      return;
    case 3:
      v3 = sub_1ABA97F4C();
      v4 = 3;
      goto LABEL_8;
    case 4:
      v3 = sub_1ABA97F4C();
      v4 = 4;
LABEL_8:
      MEMORY[0x1AC5AA8A0](v4, v3);
      EntityResolutionRankingService.CandidateConstraint.hash(into:)(a1);
      EntityResolutionRankingService.CandidateConstraint.hash(into:)(a1);
      break;
    default:
      MEMORY[0x1AC5AA8A0](0);

      sub_1ABF23D34();
      break;
  }
}

uint64_t EntityResolutionRankingService.CandidateConstraint.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 34);
  v3 = v0[1];
  v6 = *v0;
  v7 = v3;
  v8 = v1;
  v9 = v2;
  sub_1ABA7AB5C();
  EntityResolutionRankingService.CandidateConstraint.hash(into:)(v5);
  return sub_1ABF25294();
}

void EntityResolutionRankingService.CandidateConstraint.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v85 = v4;
  v78 = sub_1ABAD219C(&qword_1EB4D46B0, &qword_1ABF452F8);
  sub_1ABA7BB64();
  v81 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7FBE0();
  v84 = v7;
  sub_1ABAD219C(&qword_1EB4D46B8, &qword_1ABF45300);
  sub_1ABA7BB64();
  v79 = v9;
  v80 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v83 = v11;
  sub_1ABAD219C(&qword_1EB4D46C0, &qword_1ABF45308);
  sub_1ABA7BB64();
  v76 = v13;
  v77 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v82 = v15;
  sub_1ABAD219C(&qword_1EB4D46C8, &qword_1ABF45310);
  sub_1ABA7BB64();
  v74 = v17;
  v75 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BCE0();
  v19 = sub_1ABAD219C(&qword_1EB4D46D0, &qword_1ABF45318);
  sub_1ABA7BB64();
  v73 = v20;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v68 - v22;
  v24 = sub_1ABAD219C(&qword_1EB4D46D8, &unk_1ABF45320);
  sub_1ABA7BB64();
  v26 = v25;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7E5C0();
  v28 = v3[3];
  v86 = v3;
  sub_1ABA88DCC(v3, v28);
  sub_1ABBCED20();
  sub_1ABF252C4();
  if (!v1)
  {
    v71 = v23;
    v70 = v19;
    v72 = v24;
    v29 = v85;
    v89 = v26;
    sub_1ABF24EA4();
    sub_1ABAD4EA4();
    if (v31 != v30 >> 1)
    {
      sub_1ABA83F18();
      if (v34 == v35)
      {
        __break(1u);
        return;
      }

      v36 = 0;
      v69 = *(v33 + v32);
      sub_1ABAD4E90();
      sub_1ABAA0554();
      if (!v23)
      {
        switch(v69)
        {
          case 1:
            sub_1ABA8BCB4();
            sub_1ABBCEEC4();
            v36 = v72;
            sub_1ABF24D94();
            sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
            sub_1ABAA3048();
            sub_1ABBCEFC0(v46);
            v47 = v75;
            sub_1ABF24E64();
            swift_unknownObjectRelease();
            v59 = sub_1ABA992D8();
            v60(v59, v47);
            sub_1ABAA1BE0();
            v50 = v0;
            goto LABEL_15;
          case 2:
            LOBYTE(v87[0]) = 2;
            sub_1ABBCEE70();
            sub_1ABA9A390(&type metadata for EntityResolutionRankingService.CandidateConstraint.SubsetCodingKeys, v87);
            sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
            sub_1ABAA3048();
            sub_1ABBCEFC0(v45);
            sub_1ABAA2C4C();
            sub_1ABF24E64();
            swift_unknownObjectRelease();
            v48 = sub_1ABA7E5B0();
            v49(v48);
            v50 = sub_1ABAA5290();
LABEL_15:
            v51(v50, v36);
            sub_1ABA96C54();
            v43 = v86;
            v55 = v87[0];
            goto LABEL_17;
          case 3:
            LOBYTE(v87[0]) = 3;
            sub_1ABBCEE1C();
            sub_1ABA9A390(&type metadata for EntityResolutionRankingService.CandidateConstraint.AndCodingKeys, v87);
            sub_1ABA8913C();
            v55 = swift_allocObject();
            LOBYTE(v87[0]) = 0;
            sub_1ABBCEF6C();
            sub_1ABA974E0();
            sub_1ABF24E64();
            sub_1ABA8BCB4();
            sub_1ABA974E0();
            sub_1ABF24E64();
            swift_unknownObjectRelease();
            v64 = sub_1ABA8C744();
            v65(v64);
            v66 = sub_1ABAA5290();
            v67(v66, 0);
            sub_1ABA96C54();
            goto LABEL_16;
          case 4:
            LOBYTE(v87[0]) = 4;
            sub_1ABBCED74();
            sub_1ABA9A390(&type metadata for EntityResolutionRankingService.CandidateConstraint.OrCodingKeys, v87);
            v83 = v0;
            sub_1ABA8913C();
            v44 = swift_allocObject();
            LOBYTE(v87[0]) = 0;
            sub_1ABBCEF6C();
            sub_1ABA974E0();
            sub_1ABAA2C4C();
            sub_1ABF24E64();
            sub_1ABA8BCB4();
            sub_1ABA974E0();
            sub_1ABAA2C4C();
            sub_1ABF24E64();
            swift_unknownObjectRelease();
            v61 = sub_1ABA8EF78();
            v62(v61);
            sub_1ABAA1BE0();
            v63(v83, 0);
            sub_1ABA96C54();
            v43 = v86;
            v55 = v44;
            goto LABEL_17;
          default:
            LOBYTE(v87[0]) = 0;
            sub_1ABBCEF18();
            sub_1ABA9A390(&type metadata for EntityResolutionRankingService.CandidateConstraint.HasPredicateCodingKeys, v87);
            sub_1ABAA6FE4();
            sub_1ABA974E0();
            sub_1ABAA2C4C();
            sub_1ABF24E64();
            swift_unknownObjectRelease();
            v52 = sub_1ABA7E5B0();
            v53(v52);
            (*(v89 + 8))(v0, 0);
            v55 = v87[0];
            v54 = v87[1];
            v56 = v87[2];
            v57 = v87[3];
            v58 = v88;
LABEL_16:
            v43 = v86;
LABEL_17:
            *v29 = v55;
            *(v29 + 8) = v54;
            *(v29 + 16) = v56;
            *(v29 + 24) = v57;
            *(v29 + 32) = v58;
            *(v29 + 34) = v69;
            break;
        }

        goto LABEL_10;
      }
    }

    sub_1ABF24B44();
    swift_allocError();
    v38 = v37;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v38 = &type metadata for EntityResolutionRankingService.CandidateConstraint;
    v39 = sub_1ABF24DA4();
    sub_1ABA835CC(v39);
    sub_1ABA8AD50();
    (*(v40 + 104))(v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABAA1BE0();
    v41 = sub_1ABA8C744();
    v42(v41);
  }

  v43 = v86;
LABEL_10:
  sub_1ABA84B54(v43);
  sub_1ABA7BC90();
}

uint64_t sub_1ABBCA750(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 34);
  v4 = v1[1];
  v7 = *v1;
  v8 = v4;
  v9 = v2;
  v10 = v3;
  sub_1ABF25234();
  EntityResolutionRankingService.CandidateConstraint.hash(into:)(v6);
  return sub_1ABF25294();
}

uint64_t EntityResolutionRankingService.MentionedEntities.MentionedRankedEntities.init(mention:entities:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for EntityResolutionRankingService.MentionedEntities.MentionedRankedEntities(0, a3, v8, v9);
  v11 = (a4 + *(result + 28));
  *v11 = v6;
  v11[1] = v7;
  return result;
}

uint64_t EntityResolutionRankingService.MentionedEntities.MentionedRankedEntities.entities.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 28));
  v4 = *v3;
  v5 = v3[1];
  *a2 = v4;
  a2[1] = v5;
}

uint64_t EntityResolutionRankingService.MentionedEntities.init(mentions:inferenceEventId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t EntityResolutionRankingService.RankingOptions.typeFilter.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EntityResolutionRankingService.RankingOptions.candidateConstraints.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 42);
  v7 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 34) = v6;
  *(a1 + 32) = v7;
  return sub_1ABBC7378(v2, v3, v4, v5, v7 | (v6 << 16));
}

__n128 EntityResolutionRankingService.RankingOptions.candidateConstraints.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 34);
  v6 = *(v1 + 40);
  v5 = v1 + 40;
  sub_1ABB3E374(*(v5 - 32), *(v5 - 24), *(v5 - 16), *(v5 - 8), v6 | (*(v5 + 2) << 16));
  result = *a1;
  v8 = *(a1 + 16);
  *(v5 - 32) = *a1;
  *(v5 - 16) = v8;
  *(v5 + 2) = v4;
  *v5 = v3;
  return result;
}

uint64_t EntityResolutionRankingService.RankingOptions.rankingType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  v3 = *(v1 + 56);
  *(a1 + 8) = v3;
  return sub_1ABBCF04C(v2, v3);
}

uint64_t EntityResolutionRankingService.RankingOptions.rankingType.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1ABBCF060(*(v1 + 48), *(v1 + 56));
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

void EntityResolutionRankingService.RankingOptions.mode.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  *(a1 + 8) = v2;
}

uint64_t EntityResolutionRankingService.RankingOptions.mode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 64) = *result;
  *(v1 + 72) = v2;
  return result;
}

uint64_t EntityResolutionRankingService.RankingFilter.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

IntelligencePlatform::EntityResolutionRankingService::EntityResolutionMode_optional __swiftcall EntityResolutionRankingService.EntityResolutionMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1ABF24D84();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EntityResolutionRankingService.EntityResolutionMode.rawValue.getter()
{
  result = 0x6E6574614C776F6CLL;
  switch(*v0)
  {
    case 1:
      result = 0x6465636E616C6162;
      break;
    case 2:
      result = 0x6C61755168676968;
      break;
    case 3:
      result = 0x6553786966657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBCABEC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionRankingService.EntityResolutionMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EntityResolutionRankingService.Explanation.Feature.__allocating_init(name:value:zScore:importance:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  sub_1ABAB10A4();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  *(result + 40) = a4;
  *(result + 48) = a5;
  return result;
}

uint64_t EntityResolutionRankingService.Explanation.Feature.init(name:value:zScore:importance:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
}

uint64_t EntityResolutionRankingService.Explanation.Feature.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1ABBCAD88(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65726F63537ALL && a2 == 0xE600000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6174726F706D69 && a2 == 0xEA00000000006563)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

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

uint64_t sub_1ABBCAEE0(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x65756C6176;
      break;
    case 2:
      result = 0x65726F63537ALL;
      break;
    case 3:
      result = 0x6E6174726F706D69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBCAF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBCAD88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBCAF88(uint64_t a1)
{
  v2 = sub_1ABBCF074();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCAFC4(uint64_t a1)
{
  v2 = sub_1ABBCF074();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityResolutionRankingService.Explanation.Feature.__deallocating_deinit()
{

  sub_1ABAB10A4();

  return swift_deallocClassInstance();
}

uint64_t EntityResolutionRankingService.Explanation.Feature.encode(to:)()
{
  v2 = sub_1ABAD219C(&qword_1EB4D46E8, &qword_1ABF45330);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  v6 = sub_1ABA8C744();
  sub_1ABA88DCC(v6, v7);
  sub_1ABBCF074();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABAB5848();
  sub_1ABF24F34();
  if (!v0)
  {
    sub_1ABAB5848();
    sub_1ABF24F54();
    sub_1ABAB5848();
    sub_1ABF24F54();
    sub_1ABAB5848();
    sub_1ABF24F54();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t EntityResolutionRankingService.Explanation.Feature.__allocating_init(from:)()
{
  sub_1ABA957B8();
  swift_allocObject();
  sub_1ABA8A294();
  EntityResolutionRankingService.Explanation.Feature.init(from:)();
  return v0;
}

uint64_t EntityResolutionRankingService.Explanation.Feature.init(from:)()
{
  sub_1ABA7FC6C();
  sub_1ABA7D5F0();
  sub_1ABAD219C(&qword_1EB4D46F0, &qword_1ABF45338);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA8176C();
  sub_1ABA88DCC(v2, v2[3]);
  v4 = sub_1ABBCF074();
  sub_1ABBD2A8C(&type metadata for EntityResolutionRankingService.Explanation.Feature.CodingKeys, v5, v4);
  if (v1)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABAA2C4C();
    v0[2] = sub_1ABF24E14();
    v0[3] = v6;
    sub_1ABAA2C4C();
    sub_1ABF24E34();
    v0[4] = v7;
    sub_1ABAA2C4C();
    sub_1ABF24E34();
    v0[5] = v9;
    sub_1ABAA2C4C();
    sub_1ABF24E34();
    v11 = v10;
    v12 = sub_1ABAB2AF8();
    v13(v12);
    v0[6] = v11;
  }

  sub_1ABA84B54(v2);
  return sub_1ABAB50E4();
}

uint64_t sub_1ABBCB408@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionRankingService.Explanation.Feature.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t EntityResolutionRankingService.Explanation.__allocating_init(positiveContributions:negativeContributions:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t EntityResolutionRankingService.Explanation.init(positiveContributions:negativeContributions:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
}

uint64_t sub_1ABBCB4B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001ABF8A440 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001ABF8A460 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABBCB5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABBCB608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBCB4B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBCB630(uint64_t a1)
{
  v2 = sub_1ABBCF0C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCB66C(uint64_t a1)
{
  v2 = sub_1ABBCF0C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityResolutionRankingService.Explanation.deinit()
{

  return v0;
}

uint64_t EntityResolutionRankingService.Explanation.__deallocating_deinit()
{
  EntityResolutionRankingService.Explanation.deinit();

  return swift_deallocClassInstance();
}

uint64_t EntityResolutionRankingService.Explanation.encode(to:)()
{
  v2 = sub_1ABAD219C(&qword_1EB4D46F8, &qword_1ABF45340);
  sub_1ABA7BB64();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E338();
  v6 = sub_1ABA8C744();
  sub_1ABA88DCC(v6, v7);
  sub_1ABBCF0C8();
  sub_1ABA892E8();
  sub_1ABF252E4();
  sub_1ABAD219C(&qword_1EB4D4700, &qword_1ABF45348);
  sub_1ABBCF11C(&unk_1EB4CE718);
  sub_1ABA892E8();
  sub_1ABAB5848();
  sub_1ABF24F84();
  if (!v0)
  {
    sub_1ABA892E8();
    sub_1ABAB5848();
    sub_1ABF24F84();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t EntityResolutionRankingService.Explanation.__allocating_init(from:)()
{
  sub_1ABA957B8();
  swift_allocObject();
  v1 = sub_1ABA8A294();
  EntityResolutionRankingService.Explanation.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return v0;
}

void EntityResolutionRankingService.Explanation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABA7FC6C();
  sub_1ABA7D5F0();
  sub_1ABAD219C(&qword_1EB4D4708, &qword_1ABF45350);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA8176C();
  sub_1ABA88DCC(v12, v12[3]);
  v14 = sub_1ABBCF0C8();
  sub_1ABBD2A8C(&type metadata for EntityResolutionRankingService.Explanation.CodingKeys, v15, v14);
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4D4700, &qword_1ABF45348);
    sub_1ABBCF11C(&unk_1EB4D4710);
    sub_1ABAA2C4C();
    sub_1ABF24E64();
    *(v10 + 16) = a10;
    sub_1ABAA2C4C();
    sub_1ABF24E64();
    v16 = sub_1ABA7E5B0();
    v17(v16);
    *(v10 + 24) = a10;
  }

  sub_1ABA84B54(v12);
  sub_1ABAB50E4();
  sub_1ABA7BC90();
}

uint64_t sub_1ABBCBAFC@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionRankingService.Explanation.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t EntityResolutionRankingService.RankedEntities.ScoredEntity.init(id:score:explanation:inferenceEventId:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 16) = *a1;
  *(v5 + 24) = a5;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 56) = 1;
  return _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
}

uint64_t EntityResolutionRankingService.RankedEntities.ScoredEntity.explanation.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1ABBCBC04()
{
  v1 = v0;
  v2 = v0[7];
  v3 = v2;
  if (v2 == 1)
  {
    v4 = v1[5];
    if (v4)
    {
      v5 = v1[4];
      v6 = objc_autoreleasePoolPush();
      sub_1ABF217F4();
      swift_allocObject();
      sub_1ABF217E4();
      type metadata accessor for EntityResolutionRankingService.Explanation();

      sub_1ABB5E998(v5, v4);
      sub_1ABBCFB88(&unk_1EB4D4720);
      sub_1ABA8EF78();
      sub_1ABF217D4();
      v7 = sub_1ABA8C53C();
      sub_1ABA96210(v7, v8);

      v3 = v11;
      objc_autoreleasePoolPop(v6);
      v9 = v1[7];
    }

    else
    {
      v3 = 0;
      v9 = 1;
    }

    v1[7] = v3;

    sub_1ABBCF1D8(v9);
  }

  sub_1ABBCF1E8(v2);
  return v3;
}

uint64_t sub_1ABBCBD6C(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  return sub_1ABBCF1D8(v2);
}

uint64_t (*sub_1ABBCBD7C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1ABBCBC04();
  return sub_1ABBCBDC4;
}

uint64_t sub_1ABBCBDC4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 56);
  *(v2 + 56) = *a1;
  if (a2)
  {

    sub_1ABBCF1D8(v3);
  }

  else
  {

    return sub_1ABBCF1D8(v3);
  }
}

uint64_t EntityResolutionRankingService.RankedEntities.ScoredEntity.deinit()
{

  sub_1ABBCF1D8(*(v0 + 56));
  return v0;
}

uint64_t EntityResolutionRankingService.RankedEntities.ScoredEntity.__deallocating_deinit()
{
  EntityResolutionRankingService.RankedEntities.ScoredEntity.deinit();

  return swift_deallocClassInstance();
}

__n128 StructuredInput.init(data:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 32) = v2;
  return result;
}

uint64_t sub_1ABBCBEC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465536E75 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465726165707061 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6465747065636361 && a2 == 0xE800000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6165707061736964 && a2 == 0xEB00000000646572)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABBCC06C(char a1)
{
  result = 0x7465536E75;
  switch(a1)
  {
    case 1:
      v3 = 0x726165707061;
      goto LABEL_6;
    case 2:
      v3 = 0x747065636361;
      goto LABEL_6;
    case 3:
      v3 = 0x7463656A6572;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 4:
      result = 0x6165707061736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBCC104(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736449746E657665 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1ABA8CCD8(0x736449746E657665, 0xE800000000000000, a1);
    sub_1ABA8B8B8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBCC170(uint64_t a1)
{
  v2 = sub_1ABBCF318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC1AC(uint64_t a1)
{
  v2 = sub_1ABBCF318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCC1E8(uint64_t a1)
{
  v2 = sub_1ABBCF36C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC224(uint64_t a1)
{
  v2 = sub_1ABBCF36C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCC268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBCBEC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBCC290(uint64_t a1)
{
  v2 = sub_1ABBCF21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC2CC(uint64_t a1)
{
  v2 = sub_1ABBCF21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCC308(uint64_t a1)
{
  v2 = sub_1ABBCF270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC344(uint64_t a1)
{
  v2 = sub_1ABBCF270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCC380(uint64_t a1)
{
  v2 = sub_1ABBCF2C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC3BC(uint64_t a1)
{
  v2 = sub_1ABBCF2C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCC3F8(uint64_t a1)
{
  v2 = sub_1ABBCF3C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCC434(uint64_t a1)
{
  v2 = sub_1ABBCF3C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionRankingStatefulFeedback.FeedbackKind.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v1;
  v5 = v4;
  sub_1ABAD219C(&qword_1EB4D4728, &qword_1ABF45358);
  sub_1ABA7BB64();
  v32 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4D4730, &qword_1ABF45360);
  sub_1ABA7BB64();
  v31 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4D4738, &qword_1ABF45368);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4D4740, &qword_1ABF45370);
  sub_1ABA7BB64();
  v30 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA8176C();
  v13 = sub_1ABAD219C(&qword_1EB4D4748, &qword_1ABF45378);
  sub_1ABA7BB64();
  v29 = v14;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA9F7AC();
  sub_1ABAD219C(&qword_1EB4D4750, &unk_1ABF45380);
  sub_1ABA7BB64();
  v33 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7E5C0();
  v18 = *(v3 + 8);
  v19 = v5[4];
  sub_1ABA88DCC(v5, v5[3]);
  sub_1ABBCF21C();
  sub_1ABF252E4();
  switch(v18)
  {
    case 1:
      sub_1ABBCF36C();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABA7F0FC(&qword_1EB4D4770, MEMORY[0x1E69E7368]);
      sub_1ABA97304();
      v21 = v30;
      sub_1ABBD2A6C();
      sub_1ABF24F14();
      v27 = sub_1ABAA383C();
      goto LABEL_8;
    case 2:
      sub_1ABBCF318();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABA7F0FC(&qword_1EB4D4770, MEMORY[0x1E69E7368]);
      sub_1ABA97304();
      sub_1ABF24F14();
      v23 = sub_1ABA805B4();
      v24(v23);
      (*(v33 + 8))(v0, v19);
      goto LABEL_10;
    case 3:
      sub_1ABBCF2C4();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABA7F0FC(&qword_1EB4D4770, MEMORY[0x1E69E7368]);
      v25 = sub_1ABA97304();
      v21 = v31;
      sub_1ABAA043C(v25, v26);
      goto LABEL_6;
    case 4:
      sub_1ABBCF270();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABA7F0FC(&qword_1EB4D4770, MEMORY[0x1E69E7368]);
      v20 = sub_1ABA97304();
      v21 = v32;
      sub_1ABAA043C(v20, v22);
LABEL_6:
      v27 = sub_1ABA992D8();
LABEL_8:
      v28(v27, v21);
      break;
    default:
      sub_1ABBCF3C0();
      sub_1ABA8863C();
      sub_1ABF24EC4();
      sub_1ABA82A5C();
      sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
      sub_1ABA7F0FC(&qword_1EB4D4770, MEMORY[0x1E69E7368]);
      sub_1ABA97304();
      sub_1ABF24F14();
      (*(v29 + 8))(v2, v13);
      break;
  }

  (*(v33 + 8))(v0, v19);
LABEL_10:
  sub_1ABA7BC90();
}

void EntityResolutionRankingStatefulFeedback.FeedbackKind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v13 = v12;
  v65 = v14;
  sub_1ABAD219C(&qword_1EB4D4798, &qword_1ABF45390);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4D47A0, &qword_1ABF45398);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4D47A8, &qword_1ABF453A0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4D47B0, &qword_1ABF453A8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BCE0();
  sub_1ABAD219C(&qword_1EB4D47B8, &qword_1ABF453B0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7E338();
  v20 = sub_1ABAD219C(&qword_1EB4D47C0, &qword_1ABF453B8);
  sub_1ABA7BB64();
  v22 = v21;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9F7AC();
  v24 = v13[4];
  sub_1ABA88DCC(v13, v13[3]);
  sub_1ABBCF21C();
  sub_1ABF252C4();
  if (!v10)
  {
    sub_1ABF24EA4();
    sub_1ABAD4EA4();
    if (v26 != v25 >> 1)
    {
      sub_1ABA83F18();
      if (v29 == v30)
      {
        __break(1u);
        return;
      }

      v64 = *(v28 + v27);
      sub_1ABAD4E90();
      sub_1ABAA0554();
      if (v24 == v20 >> 1)
      {
        switch(v64)
        {
          case 1:
            LOBYTE(a10) = 1;
            sub_1ABBCF36C();
            sub_1ABA8BFB0();
            sub_1ABF24D94();
            sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
            sub_1ABA7D5CC(&qword_1EB4D47C8, MEMORY[0x1E69E7390]);
            v51 = sub_1ABA96F98();
            sub_1ABAA2880(v51, v52, v53, v54, v55);
            swift_unknownObjectRelease();
            v60 = sub_1ABA8BAC4();
            v61(v60);
            v62 = sub_1ABA8BCC0();
            v63(v62);
            goto LABEL_16;
          case 2:
            LOBYTE(a10) = 2;
            sub_1ABBCF318();
            sub_1ABA8BFB0();
            sub_1ABF24D94();
            sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
            sub_1ABA7D5CC(&qword_1EB4D47C8, MEMORY[0x1E69E7390]);
            sub_1ABF24DF4();
            sub_1ABA8C750();
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 3:
            LOBYTE(a10) = 3;
            sub_1ABBCF2C4();
            sub_1ABA827AC();
            sub_1ABF24D94();
            sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
            sub_1ABA7D5CC(&qword_1EB4D47C8, MEMORY[0x1E69E7390]);
            v46 = sub_1ABA96F98();
            sub_1ABAA2880(v46, v47, v48, v49, v50);
            sub_1ABA8C750();
            swift_unknownObjectRelease();
            goto LABEL_15;
          case 4:
            LOBYTE(a10) = 4;
            sub_1ABBCF270();
            sub_1ABA8BFB0();
            sub_1ABF24D94();
            sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
            sub_1ABA7D5CC(&qword_1EB4D47C8, MEMORY[0x1E69E7390]);
            v41 = sub_1ABA96F98();
            sub_1ABAA2880(v41, v42, v43, v44, v45);
            sub_1ABA8C750();
            swift_unknownObjectRelease();
            goto LABEL_15;
          default:
            LOBYTE(a10) = 0;
            sub_1ABBCF3C0();
            sub_1ABA8BFB0();
            sub_1ABF24D94();
            sub_1ABAD219C(&qword_1EB4D4768, &qword_1ABF497E0);
            sub_1ABA7D5CC(&qword_1EB4D47C8, MEMORY[0x1E69E7390]);
            v31 = sub_1ABA96F98();
            sub_1ABAA2880(v31, v32, v33, v34, v35);
            sub_1ABA8C750();
            swift_unknownObjectRelease();
LABEL_15:
            v56 = sub_1ABA8BAC4();
            v57(v56);
            v58 = sub_1ABA805B4();
            v59(v58);
LABEL_16:
            v40 = v13;
            *v65 = a10;
            *(v65 + 8) = v64;
            break;
        }

        goto LABEL_10;
      }
    }

    sub_1ABF24B44();
    swift_allocError();
    v37 = v36;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v37 = &type metadata for EntityResolutionRankingStatefulFeedback.FeedbackKind;
    v38 = sub_1ABF24DA4();
    sub_1ABA835CC(v38);
    sub_1ABA8AD50();
    (*(v39 + 104))(v37);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v22 + 8))(v11, v20);
  }

  v40 = v13;
LABEL_10:
  sub_1ABA84B54(v40);
  sub_1ABA7BC90();
}

uint64_t EntityResolutionRankingStatefulFeedback.__allocating_init(kind:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = *(a1 + 8);
  *(result + 16) = *a1;
  *(result + 24) = v3;
  return result;
}

uint64_t EntityResolutionRankingStatefulFeedback.init(kind:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(v1 + 16) = *a1;
  *(v1 + 24) = v2;
  return _s20IntelligencePlatform37EntityResolutionRankingDirectFeedbackCfd_0();
}

uint64_t sub_1ABBCD31C(uint64_t a1)
{
  v2 = sub_1ABBCF490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCD358(uint64_t a1)
{
  v2 = sub_1ABBCF490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityResolutionRankingStatefulFeedback.__deallocating_deinit()
{
  sub_1ABBCF47C(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBCD3F4()
{
  v1 = sub_1ABAD219C(&qword_1EB4D47D0, &qword_1ABF453C0);
  sub_1ABA7BB64();
  v3 = v2;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = sub_1ABA8C744();
  sub_1ABA88DCC(v7, v8);
  sub_1ABBCF490();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v9 = *(v0 + 24);
  v11 = *(v0 + 16);
  v12 = v9;
  sub_1ABBCF4E4(v11, v9);
  sub_1ABBCF4F8();
  sub_1ABF24F84();
  sub_1ABBCF47C(v11, v12);
  return (*(v3 + 8))(v6, v1);
}

uint64_t EntityResolutionRankingStatefulFeedback.__allocating_init(from:)()
{
  sub_1ABA957B8();
  swift_allocObject();
  sub_1ABA8A294();
  EntityResolutionRankingStatefulFeedback.init(from:)();
  return v0;
}

void EntityResolutionRankingStatefulFeedback.init(from:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D47E8, &qword_1ABF453C8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BCE0();
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABBCF490();
  sub_1ABF252C4();
  if (v1)
  {
    type metadata accessor for EntityResolutionRankingStatefulFeedback();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABBCF570();
    sub_1ABF24E64();
    v5 = sub_1ABA8C53C();
    v6(v5);
    *(v0 + 16) = v7;
    *(v0 + 24) = v8;
  }

  sub_1ABA84B54(v3);
  sub_1ABA7BC90();
}

uint64_t sub_1ABBCD718@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionRankingStatefulFeedback.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABBCD77C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7465736E75 && a2 == 0xE500000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64656761676E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64657463656A6572 && a2 == 0xE800000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x657250726576656ELL && a2 == 0xEE006465746E6573)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABBCD920(char a1)
{
  result = 0x7465736E75;
  switch(a1)
  {
    case 1:
      v3 = 0x656761676E65;
      goto LABEL_6;
    case 2:
      result = 0x64657463656A6572;
      break;
    case 3:
      v3 = 0x65726F6E6769;
LABEL_6:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
      break;
    case 4:
      result = 0x657250726576656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABBCD9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABBCDA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABBCD77C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABBCDA3C(uint64_t a1)
{
  v2 = sub_1ABBCF5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDA78(uint64_t a1)
{
  v2 = sub_1ABBCF5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCDAB4(uint64_t a1)
{
  v2 = sub_1ABBCF714();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDAF0(uint64_t a1)
{
  v2 = sub_1ABBCF714();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCDB2C(uint64_t a1)
{
  v2 = sub_1ABBCF66C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDB68(uint64_t a1)
{
  v2 = sub_1ABBCF66C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCDBA4(uint64_t a1)
{
  v2 = sub_1ABBCF618();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDBE0(uint64_t a1)
{
  v2 = sub_1ABBCF618();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCDC1C(uint64_t a1)
{
  v2 = sub_1ABBCF6C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDC58(uint64_t a1)
{
  v2 = sub_1ABBCF6C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCDC94(uint64_t a1)
{
  v2 = sub_1ABBCF768();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCDCD0(uint64_t a1)
{
  v2 = sub_1ABBCF768();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityResolutionRankingDirectFeedback.FeedbackKind.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D47F8, &qword_1ABF453D0);
  sub_1ABA7BB64();
  v45 = v6;
  v46 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v44 = v8;
  sub_1ABAD219C(&qword_1EB4D4800, &qword_1ABF453D8);
  sub_1ABA7BB64();
  v42 = v10;
  v43 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7FBE0();
  v41 = v12;
  sub_1ABAD219C(&qword_1EB4D4808, &qword_1ABF453E0);
  sub_1ABA7BB64();
  v39 = v14;
  v40 = v13;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7FBE0();
  v38 = v16;
  sub_1ABAD219C(&qword_1EB4D4810, &qword_1ABF453E8);
  sub_1ABA7BB64();
  v36 = v18;
  v37 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7FBE0();
  v35 = v20;
  sub_1ABAD219C(&qword_1EB4D4818, &qword_1ABF453F0);
  sub_1ABA7BB64();
  v33 = v22;
  v34 = v21;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9F7AC();
  v24 = sub_1ABAD219C(&qword_1EB4D4820, &qword_1ABF453F8);
  sub_1ABA7BB64();
  v26 = v25;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA8176C();
  v28 = *v0;
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABBCF5C4();
  sub_1ABF252E4();
  v29 = (v26 + 8);
  switch(v28)
  {
    case 1:
      sub_1ABBCF714();
      v30 = v35;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v32 = v36;
      v31 = v37;
      goto LABEL_7;
    case 2:
      sub_1ABBCF6C0();
      v30 = v38;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v32 = v39;
      v31 = v40;
      goto LABEL_7;
    case 3:
      sub_1ABBCF66C();
      v30 = v41;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v32 = v42;
      v31 = v43;
      goto LABEL_7;
    case 4:
      sub_1ABBCF618();
      v30 = v44;
      sub_1ABA827AC();
      sub_1ABF24EC4();
      v32 = v45;
      v31 = v46;
LABEL_7:
      (*(v32 + 8))(v30, v31);
      break;
    default:
      sub_1ABBCF768();
      sub_1ABA827AC();
      sub_1ABF24EC4();
      (*(v33 + 8))(v2, v34);
      break;
  }

  (*v29)(v1, v24);
  sub_1ABA7BC90();
}

uint64_t EntityResolutionRankingDirectFeedback.FeedbackKind.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void EntityResolutionRankingDirectFeedback.FeedbackKind.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABA7BCA8();
  a25 = v29;
  a26 = v30;
  v32 = v31;
  v83 = v33;
  sub_1ABAD219C(&qword_1EB4D4858, &qword_1ABF45400);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7FBE0();
  sub_1ABAD219C(&qword_1EB4D4860, &qword_1ABF45408);
  sub_1ABA7BB64();
  v80 = v35;
  v81 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v84 = v38;
  sub_1ABAD219C(&qword_1EB4D4868, &qword_1ABF45410);
  sub_1ABA7BB64();
  v78 = v40;
  v79 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7FBE0();
  v82 = v42;
  sub_1ABAD219C(&qword_1EB4D4870, &qword_1ABF45418);
  sub_1ABA7BB64();
  v76 = v44;
  v77 = v43;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA8176C();
  v46 = sub_1ABAD219C(&qword_1EB4D4878, &qword_1ABF45420);
  sub_1ABA7BB64();
  v75 = v47;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v48);
  sub_1ABA7E338();
  sub_1ABAD219C(&qword_1EB4D4880, &qword_1ABF45428);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA7E5C0();
  sub_1ABA88DCC(v32, v32[3]);
  sub_1ABBCF5C4();
  sub_1ABF252C4();
  if (!v26)
  {
    v74 = v46;
    v50 = v84;
    sub_1ABF24EA4();
    sub_1ABAD4EA4();
    if (v52 != v51 >> 1)
    {
      sub_1ABA83F18();
      if (v55 == v56)
      {
        __break(1u);
        return;
      }

      v73 = *(v54 + v53);
      sub_1ABAD4E90();
      v58 = v57;
      v60 = v59;
      swift_unknownObjectRelease();
      if (v58 == v60 >> 1)
      {
        switch(v73)
        {
          case 1:
            a13 = 1;
            sub_1ABBCF714();
            v50 = v28;
            sub_1ABA9070C(&type metadata for EntityResolutionRankingDirectFeedback.FeedbackKind.EngagedCodingKeys, &a13);
            swift_unknownObjectRelease();
            v70 = v76;
            v68 = v77;
            goto LABEL_15;
          case 2:
            a14 = 2;
            sub_1ABBCF6C0();
            v50 = v82;
            sub_1ABA9070C(&type metadata for EntityResolutionRankingDirectFeedback.FeedbackKind.RejectedCodingKeys, &a14);
            swift_unknownObjectRelease();
            v70 = v78;
            v68 = v79;
            goto LABEL_15;
          case 3:
            a15 = 3;
            sub_1ABBCF66C();
            sub_1ABA9070C(&type metadata for EntityResolutionRankingDirectFeedback.FeedbackKind.IgnoredCodingKeys, &a15);
            swift_unknownObjectRelease();
            v68 = v80;
            v70 = v81;
LABEL_15:
            v69 = *(v70 + 8);
            v67 = v50;
            goto LABEL_16;
          case 4:
            a16 = 4;
            sub_1ABBCF618();
            sub_1ABA974E0();
            sub_1ABF24D94();
            swift_unknownObjectRelease();
            v67 = sub_1ABAA383C();
LABEL_16:
            v69(v67, v68);
            break;
          default:
            a12 = 0;
            sub_1ABBCF768();
            sub_1ABA9070C(&type metadata for EntityResolutionRankingDirectFeedback.FeedbackKind.UnsetCodingKeys, &a12);
            swift_unknownObjectRelease();
            (*(v75 + 8))(v27, v74);
            break;
        }

        v71 = sub_1ABA8C744();
        v72(v71);
        *v83 = v73;
        sub_1ABA84B54(v32);
        goto LABEL_10;
      }
    }

    sub_1ABF24B44();
    swift_allocError();
    v62 = v61;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v62 = &type metadata for EntityResolutionRankingDirectFeedback.FeedbackKind;
    v63 = sub_1ABF24DA4();
    sub_1ABA835CC(v63);
    sub_1ABA8AD50();
    (*(v64 + 104))(v62);
    swift_willThrow();
    swift_unknownObjectRelease();
    v65 = sub_1ABA8C744();
    v66(v65);
  }

  sub_1ABA84B54(v32);
LABEL_10:
  sub_1ABA7BC90();
}

uint64_t sub_1ABBCE854(uint64_t a1, uint64_t a2)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    sub_1ABA8CCD8(1684957547, 0xE400000000000000, a1);
    sub_1ABA8B8B8();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABBCE8BC(uint64_t a1)
{
  v2 = sub_1ABBCF7BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABBCE8F8(uint64_t a1)
{
  v2 = sub_1ABBCF7BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABBCE950()
{
  v1 = sub_1ABAD219C(&qword_1EB4D4888, &qword_1ABF45430);
  sub_1ABA7BB64();
  v3 = v2;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10[-v5];
  v7 = sub_1ABA8C744();
  sub_1ABA88DCC(v7, v8);
  sub_1ABBCF7BC();
  sub_1ABA892E8();
  sub_1ABF252E4();
  v10[15] = *(v0 + 16);
  sub_1ABBCF810();
  sub_1ABF24F84();
  return (*(v3 + 8))(v6, v1);
}

uint64_t EntityResolutionRankingDirectFeedback.__allocating_init(from:)()
{
  sub_1ABAA4D8C();
  swift_allocObject();
  v1 = sub_1ABA8A294();
  EntityResolutionRankingDirectFeedback.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
  return v0;
}

void EntityResolutionRankingDirectFeedback.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_1ABA7BCA8();
  sub_1ABA7FC6C();
  v17 = sub_1ABAD219C(&qword_1EB4D48A0, &qword_1ABF45438);
  sub_1ABA7BB64();
  v19 = v18;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7BCE0();
  sub_1ABA88DCC(v14, v14[3]);
  sub_1ABBCF7BC();
  sub_1ABF252C4();
  if (v15)
  {
    type metadata accessor for EntityResolutionRankingDirectFeedback();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1ABBCF864();
    sub_1ABA827AC();
    sub_1ABF24E64();
    (*(v19 + 8))(v16, v17);
    *(v13 + 16) = a13;
  }

  sub_1ABA84B54(v14);
  sub_1ABAB50E4();
  sub_1ABA7BC90();
}

uint64_t sub_1ABBCEC44@<X0>(uint64_t *a1@<X8>)
{
  result = EntityResolutionRankingDirectFeedback.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1ABBCECB8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D4640, &qword_1ABF452B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABBCED20()
{
  result = qword_1EB4D4678;
  if (!qword_1EB4D4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4678);
  }

  return result;
}

unint64_t sub_1ABBCED74()
{
  result = qword_1EB4D4680;
  if (!qword_1EB4D4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4680);
  }

  return result;
}

unint64_t sub_1ABBCEDC8()
{
  result = qword_1EB4D4688;
  if (!qword_1EB4D4688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4688);
  }

  return result;
}

unint64_t sub_1ABBCEE1C()
{
  result = qword_1EB4D4690;
  if (!qword_1EB4D4690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4690);
  }

  return result;
}

unint64_t sub_1ABBCEE70()
{
  result = qword_1EB4D4698;
  if (!qword_1EB4D4698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4698);
  }

  return result;
}

unint64_t sub_1ABBCEEC4()
{
  result = qword_1EB4D46A0;
  if (!qword_1EB4D46A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D46A0);
  }

  return result;
}

unint64_t sub_1ABBCEF18()
{
  result = qword_1EB4D46A8;
  if (!qword_1EB4D46A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D46A8);
  }

  return result;
}

unint64_t sub_1ABBCEF6C()
{
  result = qword_1EB4D46E0;
  if (!qword_1EB4D46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D46E0);
  }

  return result;
}

unint64_t sub_1ABBCEFC0(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    v4();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1ABBCF04C(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_1ABBCF060(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

unint64_t sub_1ABBCF074()
{
  result = qword_1EB4CEC28;
  if (!qword_1EB4CEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC28);
  }

  return result;
}

unint64_t sub_1ABBCF0C8()
{
  result = qword_1EB4CEC40;
  if (!qword_1EB4CEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC40);
  }

  return result;
}

unint64_t sub_1ABBCF11C(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v4 = v3;
    sub_1ABAE2850(&qword_1EB4D4700, &qword_1ABF45348);
    sub_1ABBCFB88(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1ABBCF1D8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1ABBCF1E8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1ABBCF21C()
{
  result = qword_1EB4D4758;
  if (!qword_1EB4D4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4758);
  }

  return result;
}

unint64_t sub_1ABBCF270()
{
  result = qword_1EB4D4760;
  if (!qword_1EB4D4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4760);
  }

  return result;
}

unint64_t sub_1ABBCF2C4()
{
  result = qword_1EB4D4778;
  if (!qword_1EB4D4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4778);
  }

  return result;
}

unint64_t sub_1ABBCF318()
{
  result = qword_1EB4D4780;
  if (!qword_1EB4D4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4780);
  }

  return result;
}

unint64_t sub_1ABBCF36C()
{
  result = qword_1EB4D4788;
  if (!qword_1EB4D4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4788);
  }

  return result;
}

unint64_t sub_1ABBCF3C0()
{
  result = qword_1EB4D4790;
  if (!qword_1EB4D4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4790);
  }

  return result;
}

unint64_t sub_1ABBCF414(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    sub_1ABAE2850(&qword_1EB4D4768, &qword_1ABF497E0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1ABBCF47C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
  }

  return result;
}

unint64_t sub_1ABBCF490()
{
  result = qword_1EB4D47D8;
  if (!qword_1EB4D47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D47D8);
  }

  return result;
}

uint64_t sub_1ABBCF4E4(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 4u)
  {
  }

  return result;
}

unint64_t sub_1ABBCF4F8()
{
  result = qword_1EB4D47E0;
  if (!qword_1EB4D47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D47E0);
  }

  return result;
}

unint64_t sub_1ABBCF570()
{
  result = qword_1EB4D47F0;
  if (!qword_1EB4D47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D47F0);
  }

  return result;
}

unint64_t sub_1ABBCF5C4()
{
  result = qword_1EB4D4828;
  if (!qword_1EB4D4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4828);
  }

  return result;
}

unint64_t sub_1ABBCF618()
{
  result = qword_1EB4D4830;
  if (!qword_1EB4D4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4830);
  }

  return result;
}

unint64_t sub_1ABBCF66C()
{
  result = qword_1EB4D4838;
  if (!qword_1EB4D4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4838);
  }

  return result;
}

unint64_t sub_1ABBCF6C0()
{
  result = qword_1EB4D4840;
  if (!qword_1EB4D4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4840);
  }

  return result;
}

unint64_t sub_1ABBCF714()
{
  result = qword_1EB4D4848;
  if (!qword_1EB4D4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4848);
  }

  return result;
}

unint64_t sub_1ABBCF768()
{
  result = qword_1EB4D4850;
  if (!qword_1EB4D4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4850);
  }

  return result;
}

unint64_t sub_1ABBCF7BC()
{
  result = qword_1EB4D4890;
  if (!qword_1EB4D4890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4890);
  }

  return result;
}

unint64_t sub_1ABBCF810()
{
  result = qword_1EB4D4898;
  if (!qword_1EB4D4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4898);
  }

  return result;
}

unint64_t sub_1ABBCF864()
{
  result = qword_1EB4D48A8;
  if (!qword_1EB4D48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48A8);
  }

  return result;
}

unint64_t sub_1ABBCF8BC()
{
  result = qword_1EB4D48B0;
  if (!qword_1EB4D48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48B0);
  }

  return result;
}

unint64_t sub_1ABBCF914()
{
  result = qword_1EB4D48B8;
  if (!qword_1EB4D48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48B8);
  }

  return result;
}

unint64_t sub_1ABBCF96C()
{
  result = qword_1EB4D48C0;
  if (!qword_1EB4D48C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48C0);
  }

  return result;
}

unint64_t sub_1ABBCF9C4()
{
  result = qword_1EB4D48C8;
  if (!qword_1EB4D48C8)
  {
    sub_1ABAE2850(&qword_1EB4D48D0, &qword_1ABF45620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48C8);
  }

  return result;
}

unint64_t sub_1ABBCFA28(uint64_t a1)
{
  *(a1 + 8) = sub_1ABBCFB88(&unk_1EB4D48D8);
  result = sub_1ABBCFB88(&qword_1EB4D2B98);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABBCFAB0()
{
  result = qword_1EB4D48E0;
  if (!qword_1EB4D48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D48E0);
  }

  return result;
}

unint64_t sub_1ABBCFB04(uint64_t a1)
{
  *(a1 + 8) = sub_1ABBCFB88(&unk_1EB4D48E8);
  result = sub_1ABBCFB88(&qword_1EB4D2B90);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABBCFB88(uint64_t a1)
{
  result = sub_1ABA8C760(a1);
  if (!result)
  {
    v3();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1ABBCFBC8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of EntityResolutionRankingService.resolveEntitiesInStructuredData(_:options:)(uint64_t a1, uint64_t a2)
{
  sub_1ABA7D5F0();
  v9 = (*(v4 + 120) + **(v4 + 120));
  v5 = swift_task_alloc();
  v6 = sub_1ABA8864C(v5);
  *v6 = v7;
  sub_1ABAB52DC(v6);

  return v9(a1, a2);
}

uint64_t dispatch thunk of EntityResolutionRankingService.recordStatefulFeedback(_:)(uint64_t a1)
{
  sub_1ABA7D5F0();
  v7 = (*(v2 + 144) + **(v2 + 144));
  v3 = swift_task_alloc();
  v4 = sub_1ABA8864C(v3);
  *v4 = v5;
  sub_1ABAB52DC(v4);

  return v7(a1);
}

uint64_t dispatch thunk of EntityResolutionRankingService.recordDirectFeedback(engaged:rejected:ignored:neverPresented:)()
{
  sub_1ABA88C5C();
  sub_1ABA7D5F0();
  v6 = (*(v0 + 152) + **(v0 + 152));
  v1 = swift_task_alloc();
  v2 = sub_1ABA8864C(v1);
  *v2 = v3;
  sub_1ABAB52DC(v2);
  v4 = sub_1ABA805B4();

  return v6(v4);
}

uint64_t sub_1ABBD00C0()
{

  sub_1ABA7BBE0();

  return v0();
}

void sub_1ABBD01BC(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1ABBD057C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1ABBD0244(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFE)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return sub_1ABA7E1E0(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABBD0388(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFE)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if (a2 > 0x7FFFFFFE)
            {
              *v17 = 0;
              *v17 = a2 - 0x7FFFFFFF;
            }

            else
            {
              *v17 = a2;
            }
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_1ABBD057C(uint64_t a1)
{
  if (!qword_1EB4D4970[0])
  {
    sub_1ABAE2850(&qword_1EB4D1720, &qword_1ABF338B0);
    v1 = sub_1ABF247E4();
    if (!v2)
    {
      atomic_store(v1, qword_1EB4D4970);
    }
  }
}

uint64_t sub_1ABBD05EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABBD0640(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABBD06B8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1ABA7E1E0(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1ABBD07F4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1ABA7B9B4(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1ABBD09C4(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1ABBD09E0(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBD0A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InferenceServiceCachePolicy(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for InferenceServiceCachePolicy(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1ABBD0B10(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABBD0B2C(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t sub_1ABBD0CEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return sub_1ABA8C590(*a1 + 252);
  }

  v3 = *(a1 + 32);
  if (v3 > 3)
  {
    return sub_1ABA8C590(v3 ^ 0xFF);
  }

  else
  {
    return sub_1ABA8C590(-1);
  }
}

uint64_t sub_1ABBD0D28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1ABBD0E60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABBD0EA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABBD10C4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_1ABA8C590(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 4);
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

      return sub_1ABA8C590((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_1ABA8C590((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_1ABA8C590(v8);
}

_BYTE *sub_1ABBD1148(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABBD1214(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABBD1300(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return sub_1ABA814E4();
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

  return sub_1ABA84BA4(a1);
}

_BYTE *sub_1ABBD1348(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1ABBD1404(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_1ABA89DD0(result, v6);
        break;
      case 2:
        result = sub_1ABA89F18(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = sub_1ABA89A74(result, v6);
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
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABBD14D4()
{
  result = qword_1EB4D4A78;
  if (!qword_1EB4D4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4A78);
  }

  return result;
}

unint64_t sub_1ABBD152C()
{
  result = qword_1EB4D4A80;
  if (!qword_1EB4D4A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4A80);
  }

  return result;
}

unint64_t sub_1ABBD1584()
{
  result = qword_1EB4D4A88;
  if (!qword_1EB4D4A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4A88);
  }

  return result;
}

unint64_t sub_1ABBD15DC()
{
  result = qword_1EB4D4A90;
  if (!qword_1EB4D4A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4A90);
  }

  return result;
}

unint64_t sub_1ABBD1634()
{
  result = qword_1EB4D4A98;
  if (!qword_1EB4D4A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4A98);
  }

  return result;
}

unint64_t sub_1ABBD168C()
{
  result = qword_1EB4D4AA0;
  if (!qword_1EB4D4AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AA0);
  }

  return result;
}

unint64_t sub_1ABBD16E4()
{
  result = qword_1EB4D4AA8;
  if (!qword_1EB4D4AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AA8);
  }

  return result;
}

unint64_t sub_1ABBD173C()
{
  result = qword_1EB4D4AB0;
  if (!qword_1EB4D4AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AB0);
  }

  return result;
}

unint64_t sub_1ABBD1794()
{
  result = qword_1EB4D4AB8;
  if (!qword_1EB4D4AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AB8);
  }

  return result;
}

unint64_t sub_1ABBD17EC()
{
  result = qword_1EB4D4AC0;
  if (!qword_1EB4D4AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AC0);
  }

  return result;
}

unint64_t sub_1ABBD1844()
{
  result = qword_1EB4D4AC8;
  if (!qword_1EB4D4AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AC8);
  }

  return result;
}

unint64_t sub_1ABBD189C()
{
  result = qword_1EB4D4AD0;
  if (!qword_1EB4D4AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AD0);
  }

  return result;
}

unint64_t sub_1ABBD18F4()
{
  result = qword_1EB4D4AD8;
  if (!qword_1EB4D4AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AD8);
  }

  return result;
}

unint64_t sub_1ABBD194C()
{
  result = qword_1EB4D4AE0;
  if (!qword_1EB4D4AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AE0);
  }

  return result;
}

unint64_t sub_1ABBD19A4()
{
  result = qword_1EB4D4AE8;
  if (!qword_1EB4D4AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AE8);
  }

  return result;
}

unint64_t sub_1ABBD19FC()
{
  result = qword_1EB4D4AF0;
  if (!qword_1EB4D4AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AF0);
  }

  return result;
}

unint64_t sub_1ABBD1A54()
{
  result = qword_1EB4D4AF8;
  if (!qword_1EB4D4AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4AF8);
  }

  return result;
}

unint64_t sub_1ABBD1AAC()
{
  result = qword_1EB4D4B00;
  if (!qword_1EB4D4B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B00);
  }

  return result;
}

unint64_t sub_1ABBD1B04()
{
  result = qword_1EB4D4B08;
  if (!qword_1EB4D4B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B08);
  }

  return result;
}

unint64_t sub_1ABBD1B5C()
{
  result = qword_1EB4D4B10;
  if (!qword_1EB4D4B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B10);
  }

  return result;
}

unint64_t sub_1ABBD1BB4()
{
  result = qword_1EB4D4B18;
  if (!qword_1EB4D4B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B18);
  }

  return result;
}

unint64_t sub_1ABBD1C0C()
{
  result = qword_1EB4D4B20;
  if (!qword_1EB4D4B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B20);
  }

  return result;
}

unint64_t sub_1ABBD1C64()
{
  result = qword_1EB4D4B28;
  if (!qword_1EB4D4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B28);
  }

  return result;
}

unint64_t sub_1ABBD1CBC()
{
  result = qword_1EB4D4B30;
  if (!qword_1EB4D4B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B30);
  }

  return result;
}

unint64_t sub_1ABBD1D14()
{
  result = qword_1EB4D4B38;
  if (!qword_1EB4D4B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B38);
  }

  return result;
}

unint64_t sub_1ABBD1D6C()
{
  result = qword_1EB4D4B40;
  if (!qword_1EB4D4B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B40);
  }

  return result;
}

unint64_t sub_1ABBD1DC4()
{
  result = qword_1EB4D4B48;
  if (!qword_1EB4D4B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B48);
  }

  return result;
}

unint64_t sub_1ABBD1E1C()
{
  result = qword_1EB4D4B50;
  if (!qword_1EB4D4B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B50);
  }

  return result;
}

unint64_t sub_1ABBD1E74()
{
  result = qword_1EB4D4B58;
  if (!qword_1EB4D4B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B58);
  }

  return result;
}

unint64_t sub_1ABBD1ECC()
{
  result = qword_1EB4D4B60;
  if (!qword_1EB4D4B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B60);
  }

  return result;
}

unint64_t sub_1ABBD1F24()
{
  result = qword_1EB4D4B68;
  if (!qword_1EB4D4B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B68);
  }

  return result;
}

unint64_t sub_1ABBD1F7C()
{
  result = qword_1EB4D4B70;
  if (!qword_1EB4D4B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B70);
  }

  return result;
}

unint64_t sub_1ABBD1FD4()
{
  result = qword_1EB4D4B78;
  if (!qword_1EB4D4B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B78);
  }

  return result;
}

unint64_t sub_1ABBD202C()
{
  result = qword_1EB4D4B80;
  if (!qword_1EB4D4B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B80);
  }

  return result;
}

unint64_t sub_1ABBD2084()
{
  result = qword_1EB4D4B88;
  if (!qword_1EB4D4B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B88);
  }

  return result;
}

unint64_t sub_1ABBD20DC()
{
  result = qword_1EB4D4B90;
  if (!qword_1EB4D4B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B90);
  }

  return result;
}

unint64_t sub_1ABBD2134()
{
  result = qword_1EB4D4B98;
  if (!qword_1EB4D4B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4B98);
  }

  return result;
}

unint64_t sub_1ABBD218C()
{
  result = qword_1EB4D4BA0;
  if (!qword_1EB4D4BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BA0);
  }

  return result;
}

unint64_t sub_1ABBD21E4()
{
  result = qword_1EB4D4BA8;
  if (!qword_1EB4D4BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BA8);
  }

  return result;
}

unint64_t sub_1ABBD223C()
{
  result = qword_1EB4D4BB0;
  if (!qword_1EB4D4BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BB0);
  }

  return result;
}

unint64_t sub_1ABBD2294()
{
  result = qword_1EB4D4BB8;
  if (!qword_1EB4D4BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BB8);
  }

  return result;
}

unint64_t sub_1ABBD22EC()
{
  result = qword_1EB4D4BC0;
  if (!qword_1EB4D4BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BC0);
  }

  return result;
}

unint64_t sub_1ABBD2344()
{
  result = qword_1EB4D4BC8;
  if (!qword_1EB4D4BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BC8);
  }

  return result;
}

unint64_t sub_1ABBD239C()
{
  result = qword_1EB4D4BD0;
  if (!qword_1EB4D4BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BD0);
  }

  return result;
}

unint64_t sub_1ABBD23F4()
{
  result = qword_1EB4D4BD8;
  if (!qword_1EB4D4BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BD8);
  }

  return result;
}

unint64_t sub_1ABBD244C()
{
  result = qword_1EB4CEC30;
  if (!qword_1EB4CEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC30);
  }

  return result;
}

unint64_t sub_1ABBD24A4()
{
  result = qword_1EB4CEC38;
  if (!qword_1EB4CEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC38);
  }

  return result;
}

unint64_t sub_1ABBD24FC()
{
  result = qword_1EB4CEC18;
  if (!qword_1EB4CEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC18);
  }

  return result;
}

unint64_t sub_1ABBD2554()
{
  result = qword_1EB4CEC20;
  if (!qword_1EB4CEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEC20);
  }

  return result;
}

unint64_t sub_1ABBD25AC()
{
  result = qword_1EB4D4BE0;
  if (!qword_1EB4D4BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BE0);
  }

  return result;
}

unint64_t sub_1ABBD2604()
{
  result = qword_1EB4D4BE8;
  if (!qword_1EB4D4BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BE8);
  }

  return result;
}

unint64_t sub_1ABBD265C()
{
  result = qword_1EB4D4BF0;
  if (!qword_1EB4D4BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BF0);
  }

  return result;
}

unint64_t sub_1ABBD26B4()
{
  result = qword_1EB4D4BF8;
  if (!qword_1EB4D4BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4BF8);
  }

  return result;
}

unint64_t sub_1ABBD270C()
{
  result = qword_1EB4D4C00;
  if (!qword_1EB4D4C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C00);
  }

  return result;
}

unint64_t sub_1ABBD2764()
{
  result = qword_1EB4D4C08;
  if (!qword_1EB4D4C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C08);
  }

  return result;
}

unint64_t sub_1ABBD27BC()
{
  result = qword_1EB4D4C10;
  if (!qword_1EB4D4C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C10);
  }

  return result;
}

unint64_t sub_1ABBD2814()
{
  result = qword_1EB4D4C18;
  if (!qword_1EB4D4C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C18);
  }

  return result;
}

unint64_t sub_1ABBD286C()
{
  result = qword_1EB4D4C20;
  if (!qword_1EB4D4C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C20);
  }

  return result;
}

unint64_t sub_1ABBD28C4()
{
  result = qword_1EB4D4C28;
  if (!qword_1EB4D4C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C28);
  }

  return result;
}

unint64_t sub_1ABBD291C()
{
  result = qword_1EB4D4C30;
  if (!qword_1EB4D4C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C30);
  }

  return result;
}

unint64_t sub_1ABBD2974()
{
  result = qword_1EB4D4C38;
  if (!qword_1EB4D4C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C38);
  }

  return result;
}

unint64_t sub_1ABBD29C8()
{
  result = qword_1EB4D4C40;
  if (!qword_1EB4D4C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C40);
  }

  return result;
}

uint64_t sub_1ABBD2A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1ABF252C4();
}

void sub_1ABBD2AB0()
{
  sub_1ABA7BCA8();
  v2 = v0;
  v18 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  memcpy(v20, v10, 0x7BuLL);
  v12 = v9[139];
  v13 = v9[140];
  v14 = *(v5 + 16);
  memcpy((v2 + 16), v11, 0x7BuLL);
  memcpy((v2 + 144), v9, 0x8BuLL);
  *(v2 + 283) = v12;
  *(v2 + 284) = v13;
  *(v2 + 285) = v18;
  *(v2 + 288) = v7;
  *(v2 + 296) = v12;
  *(v2 + 304) = *v5;
  *(v2 + 320) = v14;
  v15 = sub_1ABBC3BC8(v20, v19);
  if (qword_1ED870770 != -1)
  {
    v15 = swift_once();
  }

  v16 = *(qword_1ED87C428 + 16);
  MEMORY[0x1EEE9AC00](v15);
  os_unfair_lock_lock((v16 + 24));
  sub_1ABBD8B88((v16 + 16), v19);
  os_unfair_lock_unlock((v16 + 24));
  if (v1)
  {
    __break(1u);
  }

  else
  {
    v17 = v19[0];
    sub_1ABBC3C00(v20);
    *(v2 + 328) = v17;
    sub_1ABA7BC90();
  }
}

void sub_1ABBD2C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  sub_1ABA84BAC();
  static NSUserDefaults.ecrRankerResultsMockFile.getter();
  if (v25)
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v26 = sub_1ABF237F4();
    sub_1ABA7AA24(v26, qword_1ED871B20);
    v27 = sub_1ABF237D4();
    v28 = sub_1ABF24644();
    if (os_log_type_enabled(v27, v28))
    {
      sub_1ABA8179C();
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1ABA78000, v27, v28, "ECR request manager: using mocked results.", v29, 2u);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABBC10DC();
  }

  else
  {
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v30 = sub_1ABF237F4();
    sub_1ABA7AA24(v30, qword_1ED871B20);

    v31 = sub_1ABF237D4();
    v32 = sub_1ABF24684();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = sub_1ABA7ACB4();
      a10 = sub_1ABA827B8();
      *v33 = 136315395;
      *(v33 + 4) = sub_1ABADD6D8(*(v20 + 48), *(v20 + 56), &a10);
      *(v33 + 12) = 2085;
      memcpy(__dst, (v20 + 16), 0x7BuLL);
      memcpy(__src, (v20 + 16), sizeof(__src));
      sub_1ABBC3BC8(__dst, v88);
      v34 = EntityResolutionRequest.description.getter();
      v36 = v35;
      memcpy(v88, __src, 0x7BuLL);
      sub_1ABBC3C00(v88);
      v37 = sub_1ABADD6D8(v34, v36, &a10);

      *(v33 + 14) = v37;
      _os_log_impl(&dword_1ABA78000, v31, v32, "ECR Request Submitted -- %s : %{sensitive}s", v33, 0x16u);
      swift_arrayDestroy();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }

    sub_1ABAA28A0();
    v38 = sub_1ABBD34B8();
    if (!v21)
    {
      v41 = v38;
      v42 = v39;
      v84 = v40;

      v43 = sub_1ABF237D4();
      v44 = sub_1ABF24644();

      if (os_log_type_enabled(v43, v44))
      {
        v85 = v41;
        v45 = sub_1ABA7ACB4();
        v88[0] = sub_1ABA827B8();
        *v45 = 136315394;
        *(v45 + 4) = sub_1ABAB5A44();
        *(v45 + 12) = 2080;
        if (v42)
        {
          v21 = v85;
        }

        else
        {
          v21 = 0;
        }

        if (v42)
        {
          v46 = v42;
        }

        else
        {
          v46 = 0xE000000000000000;
        }

        v47 = sub_1ABADD6D8(v21, v46, v88);

        *(v45 + 14) = v47;
        _os_log_impl(&dword_1ABA78000, v43, v44, "Preprocessed text -- %s : %s", v45, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      sub_1ABAA28A0();
      v50 = sub_1ABBD3C40(v48, v49);
      if (v21)
      {
        goto LABEL_35;
      }

      v51 = v50;

      v52 = sub_1ABF237D4();
      v53 = sub_1ABF24644();

      if (os_log_type_enabled(v52, v53))
      {
        v83 = v53;
        v54 = sub_1ABA7ACB4();
        v88[0] = sub_1ABA827B8();
        *v54 = 136315394;
        *(v54 + 4) = sub_1ABAB5A44();
        *(v54 + 12) = 2080;
        v55 = MEMORY[0x1AC5A9750](v51, &type metadata for Mention);
        v57 = sub_1ABADD6D8(v55, v56, v88);

        *(v54 + 14) = v57;
        _os_log_impl(&dword_1ABA78000, v52, v83, "Mentions -- %s : %s", v54, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      if ((v84 & 1) == 0)
      {
        switch(*(v24 + 64))
        {
          case 1:
            sub_1ABA9A3B4();
            goto LABEL_31;
          case 2:
            sub_1ABA7FC58();
            sub_1ABAA34A0();
            goto LABEL_31;
          case 3:

            break;
          case 4:
            sub_1ABA8A488();
            sub_1ABA7BB94();
            goto LABEL_31;
          case 5:
            sub_1ABA8A488();
            goto LABEL_31;
          case 6:
            sub_1ABA95110();
            goto LABEL_31;
          default:
LABEL_31:
            sub_1ABF25054();

            break;
        }
      }

      sub_1ABAA28A0();
      v62 = sub_1ABBD46C8(v58, v59, v60, v61);

      v63 = sub_1ABF237D4();
      v64 = sub_1ABF24644();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = sub_1ABA7ACB4();
        v88[0] = sub_1ABA827B8();
        *v65 = 136315394;
        *(v65 + 4) = sub_1ABAB5A44();
        *(v65 + 12) = 2080;
        v66 = type metadata accessor for PopulatedCandidatesForMention();
        v67 = MEMORY[0x1AC5A9750](v62, v66);
        v69 = sub_1ABADD6D8(v67, v68, v88);

        *(v65 + 14) = v69;
        _os_log_impl(&dword_1ABA78000, v63, v64, "Candidates retrieved -- %s : %s", v65, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      sub_1ABAA28A0();
      v74 = sub_1ABBD5030(v70, v71, v72, v73);

      v75 = sub_1ABF237D4();
      v76 = sub_1ABF24644();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = sub_1ABA7ACB4();
        v88[0] = sub_1ABA827B8();
        *v77 = 136315394;
        *(v77 + 4) = sub_1ABAB5A44();
        *(v77 + 12) = 2080;
        v78 = MEMORY[0x1AC5A9750](v74, &type metadata for RerankedEntitiesForMention);
        v80 = sub_1ABADD6D8(v78, v79, v88);

        *(v77 + 14) = v80;
        _os_log_impl(&dword_1ABA78000, v75, v76, "Ranked results -- %s : %s", v77, 0x16u);
        swift_arrayDestroy();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      if (*(v24 + 285) != 1)
      {
LABEL_35:
      }

      else
      {
        sub_1ABAA28A0();
        sub_1ABBD5684(v81, v82);
      }
    }
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABBD34B8()
{
  v1 = v0;
  v2 = type metadata accessor for TextPreprocessor(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1ABF23744();
  v4 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  v9 = sub_1ABF237F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1ABF23774();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for LogSignpost(0);
  MEMORY[0x1EEE9AC00](v48);
  v64 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v17 = sub_1ABA7AA24(v9, qword_1ED871EF8);
  (*(v10 + 16))(v12, v17, v9);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v18 = sub_1ABF23764();
  v19 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v18, v19, v21, "ECR.Manager.preprocess", "", v20, 2u);
    MEMORY[0x1AC5AB8B0](v20, -1, -1);
  }

  v22 = v52;
  (*(v4 + 16))(v51, v8, v52);
  sub_1ABF237B4();
  swift_allocObject();
  v23 = sub_1ABF237A4();
  (*(v4 + 8))(v8, v22);
  v24 = v64;
  *v64 = "ECR.Manager.preprocess";
  *(v24 + 8) = 22;
  *(v24 + 16) = 2;
  *(v24 + 24) = v23;
  (*(v49 + 32))(v24 + *(v48 + 24), v15, v50);
  v25 = *(v1 + 16);
  v26 = *(v1 + 24);
  memcpy(v61, (v1 + 32), sizeof(v61));
  v27 = *(v1 + 112);
  v60[0] = *(v1 + 120);
  *(v60 + 15) = *(v1 + 135);
  v55 = v25;
  v56 = v26;
  memcpy(v57, (v1 + 32), sizeof(v57));
  v58 = v27;
  *v59 = *(v1 + 120);
  *&v59[15] = *(v1 + 135);
  if (sub_1ABBBABC4() & 1) != 0 || (v55 = v25, v56 = v26, memcpy(v57, v61, sizeof(v57)), v58 = v27, *v59 = v60[0], *&v59[15] = *(v60 + 15), (sub_1ABBBACA4()))
  {
    if (!v27)
    {
LABEL_10:

      goto LABEL_26;
    }

    v28 = *(v27 + 16);
    v29 = *(v1 + 176);
    v30 = *(v1 + 184);
    if (v30 == 1)
    {
      if (v28 <= 0x64)
      {
        goto LABEL_10;
      }
    }

    else if (v29 >= v28)
    {
      goto LABEL_10;
    }

    v55 = 0;
    v56 = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000001FLL, 0x80000001ABF8A860);
    v53 = v28;
    v37 = sub_1ABF24FF4();
    MEMORY[0x1AC5A9410](v37);

    MEMORY[0x1AC5A9410](0xD00000000000001ELL, 0x80000001ABF8A880);
    v53 = v29;
    v54 = v30;
    sub_1ABAD219C(&qword_1EB4D4C68, &unk_1ABF478A0);
    v38 = sub_1ABF23C74();
    MEMORY[0x1AC5A9410](v38);

    MEMORY[0x1AC5A9410](0x74696D696C20, 0xE600000000000000);
    v39 = v55;
    v40 = v56;
    sub_1ABB32C5C();
    swift_allocError();
    *v41 = v39;
    *(v41 + 8) = v40;
LABEL_25:
    *(v41 + 16) = 2;
    swift_willThrow();
    goto LABEL_26;
  }

  if (!v26)
  {
    goto LABEL_24;
  }

  v31 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v31 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
LABEL_24:
    sub_1ABB32C5C();
    swift_allocError();
    *v41 = xmmword_1ABF47810;
    goto LABEL_25;
  }

  v32 = sub_1ABB31118(v25, v26);
  v35 = v46;
  v34 = v47;
  if (v33)
  {
    if (v32 == 32 && v33 == 0xE100000000000000)
    {
    }

    else
    {
      sub_1ABF25054();
    }
  }

  v43 = *(v1 + 160);
  v62[0] = *(v1 + 144);
  v62[1] = v43;
  v62[2] = *(v1 + 176);
  v63 = *(v1 + 192);

  sub_1ABE85250(v62, v35);
  v44 = sub_1ABE85574(v25, v26);
  if (!v34)
  {
    v25 = v44;
  }

  sub_1ABBD8B30(v35, type metadata accessor for TextPreprocessor);
LABEL_26:
  sub_1ABBD8690(v24);
  sub_1ABBD8B30(v24, type metadata accessor for LogSignpost);
  return v25;
}

uint64_t sub_1ABBD3C40(uint64_t a1, unint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v2 = sub_1ABF23744();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v65 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - v6;
  v8 = sub_1ABF237F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1ABF23774();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LogSignpost(0);
  MEMORY[0x1EEE9AC00](v62);
  v68 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v16 = sub_1ABA7AA24(v8, qword_1ED871EF8);
  (*(v9 + 16))(v11, v16, v8);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v17 = sub_1ABF23764();
  v18 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v19 = swift_slowAlloc();
    v59 = v3;
    v20 = v2;
    v21 = v8;
    v22 = v19;
    *v19 = 0;
    v23 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v17, v18, v23, "ECR.Manager.mengen", "", v22, 2u);
    v24 = v22;
    v8 = v21;
    v2 = v20;
    v3 = v59;
    MEMORY[0x1AC5AB8B0](v24, -1, -1);
  }

  (*(v3 + 16))(v65, v7, v2);
  sub_1ABF237B4();
  swift_allocObject();
  v25 = sub_1ABF237A4();
  (*(v3 + 8))(v7, v2);
  v26 = v68;
  *v68 = "ECR.Manager.mengen";
  v26[1] = 18;
  *(v26 + 16) = 2;
  v26[3] = v25;
  (*(v63 + 32))(v26 + *(v62 + 24), v14, v64);
  Current = CFAbsoluteTimeGetCurrent();
  v28 = v66;
  memcpy(v81, (v66 + 16), sizeof(v81));
  sub_1ABBBAF2C(__src);
  v29 = __src[0];
  v86 = __src[1];
  v30 = *&__src[2];
  v83 = *(&__src[2] + 8);
  v84 = *(&__src[3] + 8);
  v85 = BYTE8(__src[4]);
  if (*(&__src[0] + 1) == 1)
  {
    memcpy(v77, (v28 + 16), 0x7BuLL);
    sub_1ABBBB2E8(&v72);
    v31 = v72;
    v32 = v73;
    v78 = v74;
    v79 = v75;
    v80[0] = v76[0];
    *(v80 + 9) = *(v76 + 9);
    if (v73 == 1)
    {
      v33 = v8;
      v69 = *(v28 + 16);
      v34 = *(v28 + 32);
      memcpy(v71, (v28 + 40), sizeof(v71));
      v70 = v34;
      v35 = sub_1ABBBAD8C();
      if (v35)
      {
        v8 = v35;
        if (qword_1ED871B18 != -1)
        {
          swift_once();
        }

        sub_1ABA7AA24(v33, qword_1ED871B20);

        v36 = sub_1ABF237D4();
        v37 = sub_1ABF24684();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          *v38 = 134217984;
          *(v38 + 4) = *(v8 + 16);

          v39 = "ECR request manager: generate %ld preset mentions.";
LABEL_12:
          _os_log_impl(&dword_1ABA78000, v36, v37, v39, v38, 0xCu);
          MEMORY[0x1AC5AB8B0](v38, -1, -1);

          goto LABEL_35;
        }

        goto LABEL_48;
      }

      v49 = v67;
      v50 = v61;
      if (v61)
      {
        if (v34)
        {
          v51 = v34;
        }

        else
        {
          v51 = MEMORY[0x1E69E7CC0];
        }

        if (*(v28 + 256))
        {
          if (*(v28 + 256) == 1)
          {

            v52 = sub_1ABE0C5E0(v60, v50, v51);
            if (v49)
            {

LABEL_39:

              goto LABEL_35;
            }

            v8 = v52;
          }

          else
          {

            v57 = sub_1ABE0CA30(v60, v50, 2);
            if (v49)
            {
              goto LABEL_39;
            }

            v8 = v57;
          }
        }

        else
        {
          v56 = sub_1ABE0C4F4(v60, v61, v51);
          if (v49)
          {

            goto LABEL_39;
          }

          v8 = v56;
        }

        if (v8)
        {
          sub_1ABBAB434(*(v8 + 16));
          if (qword_1ED871B18 != -1)
          {
            swift_once();
          }

          sub_1ABA7AA24(v33, qword_1ED871B20);

          v36 = sub_1ABF237D4();
          v37 = sub_1ABF24684();
          if (os_log_type_enabled(v36, v37))
          {
            v38 = swift_slowAlloc();
            *v38 = 134217984;
            *(v38 + 4) = *(v8 + 16);

            v39 = "ECR request manager: generate %ld mentions from unstructured input.";
            goto LABEL_12;
          }

LABEL_48:

          goto LABEL_35;
        }
      }

      sub_1ABB32C5C();
      swift_allocError();
      *v58 = 0xD00000000000002FLL;
      *(v58 + 8) = 0x80000001ABF8A810;
      *(v58 + 16) = 3;
      swift_willThrow();
      goto LABEL_35;
    }

    if (qword_1ED871B18 != -1)
    {
      swift_once();
    }

    sub_1ABA7AA24(v8, qword_1ED871B20);
    v45 = sub_1ABF237D4();
    v46 = sub_1ABF24684();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1ABA78000, v45, v46, "ECR request manager: generate semi-structured mentions.", v47, 2u);
      MEMORY[0x1AC5AB8B0](v47, -1, -1);
    }

    sub_1ABAD219C(&qword_1EB4D1940, &qword_1ABF33AD0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1ABF34740;
    *(v8 + 32) = v31;
    *(v8 + 40) = v32;
    v48 = v79;
    *(v8 + 48) = v78;
    *(v8 + 64) = v48;
    *(v8 + 80) = v80[0];
    *(v8 + 89) = *(v80 + 9);
  }

  else
  {
    if (qword_1ED871B18 != -1)
    {
      swift_once();
    }

    sub_1ABA7AA24(v8, qword_1ED871B20);
    memcpy(v77, __src, 0x49uLL);
    sub_1ABB3E11C(v77, &v69);
    v40 = sub_1ABF237D4();
    v41 = sub_1ABF24684();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v42;
      *v42 = 134217984;
      if (v30)
      {
        v44 = *(v30 + 16);
      }

      else
      {
        v44 = 0;
      }

      *(v42 + 4) = v44;
      sub_1ABAB480C(__src, &qword_1EB4D4C60, &qword_1ABF67780);
      _os_log_impl(&dword_1ABA78000, v40, v41, "ECR request manager: generate structured mentions for %ld IDs.", v43, 0xCu);
      MEMORY[0x1AC5AB8B0](v43, -1, -1);
    }

    else
    {
      sub_1ABAB480C(__src, &qword_1EB4D4C60, &qword_1ABF67780);
    }

    sub_1ABAD219C(&qword_1EB4D1940, &qword_1ABF33AD0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1ABF34740;
    *(v8 + 48) = v86;
    v53 = v84;
    *(v8 + 72) = v83;
    *(v8 + 32) = v29;
    *(v8 + 64) = v30;
    *(v8 + 88) = v53;
    *(v8 + 104) = v85;
  }

LABEL_35:
  v54 = v68;
  sub_1ABBD5CD0(Current, v28, v68, 1);
  sub_1ABBD8B30(v54, type metadata accessor for LogSignpost);
  return v8;
}

char *sub_1ABBD46C8(uint64_t a1, int a2, int a3, int a4)
{
  v5 = v4;
  v64 = a3;
  v65 = a4;
  v63 = a2;
  v71 = a1;
  v70 = sub_1ABF23744();
  v6 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v54 - v9;
  v11 = sub_1ABF237F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1ABF23774();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LogSignpost(0);
  MEMORY[0x1EEE9AC00](v62);
  v58 = (&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v18 = sub_1ABA7AA24(v11, qword_1ED871EF8);
    (*(v12 + 16))(v14, v18, v11);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v19 = sub_1ABF23764();
    v20 = sub_1ABF24714();
    v21 = sub_1ABF247D4();
    v59 = v11;
    if (v21)
    {
      v22 = v5;
      v23 = swift_slowAlloc();
      *v23 = 0;
      v24 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v19, v20, v24, "ECR.Manager.cangen", "", v23, 2u);
      v25 = v23;
      v5 = v22;
      v11 = v59;
      MEMORY[0x1AC5AB8B0](v25, -1, -1);
    }

    v26 = v70;
    (*(v6 + 2))(v69, v10, v70);
    sub_1ABF237B4();
    swift_allocObject();
    v27 = sub_1ABF237A4();
    (*(v6 + 1))(v10, v26);
    v28 = v58;
    *v58 = "ECR.Manager.cangen";
    v28[1] = 18;
    *(v28 + 16) = 2;
    v28[3] = v27;
    (*(v66 + 32))(v28 + *(v62 + 24), v16, v68);
    Current = CFAbsoluteTimeGetCurrent();
    v6 = MEMORY[0x1E69E7CC0];
    v80 = MEMORY[0x1E69E7CC0];
    v30 = v71;
    v55 = *(v71 + 16);
    if (!v55)
    {
      break;
    }

    v14 = *(v67 + 288);
    v66 = sub_1ABAAB7C8(v14);
    v16 = 0;
    v31 = 0;
    v32 = 0;
    v33 = v30 + 32;
    v61 = v14;
    v62 = v14 & 0xC000000000000001;
    v60 = v14 & 0xFFFFFFFFFFFFFF8;
    v54 = v30 + 32;
LABEL_6:
    v57 = v6;
    memcpy(__dst, (v33 + 80 * v32), 0x49uLL);
    v12 = v32 + 1;
    v56 = v12;
    sub_1ABB3E11C(__dst, v78);
    v10 = 0;
    v6 = 0;
    while (1)
    {
      if (v66 == v10)
      {
        v46 = sub_1ABBC3DD0(__dst);
        if (!v6)
        {

          sub_1ABB32C5C();
          swift_allocError();
          *v53 = 0xD000000000000024;
          *(v53 + 8) = 0x80000001ABF8A7C0;
          *(v53 + 16) = 7;
          swift_willThrow();
          goto LABEL_37;
        }

        v14 = &v80;
        MEMORY[0x1AC5A9710](v46);
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1ABF24134();
        }

        sub_1ABF24184();
        v6 = v80;
        v32 = v56;
        v33 = v54;
        if (v56 == v55)
        {
          goto LABEL_39;
        }

        goto LABEL_6;
      }

      if (v62)
      {
        v14 = MEMORY[0x1AC5AA170](v10, v61);
      }

      else
      {
        if (v10 >= *(v60 + 16))
        {
          goto LABEL_47;
        }

        v14 = *(v61 + 8 * v10 + 32);
      }

      if (__OFADD__(v10, 1))
      {
        break;
      }

      memcpy(v78, __dst, 0x49uLL);
      v34 = *(v67 + 80);
      v35 = *(v67 + 88);
      v36 = *(v67 + 96);
      v37 = *(v67 + 106);
      v38 = *(v67 + 104);
      v72 = *(v67 + 72);
      v73 = v34;
      v74 = v35;
      v75 = v36;
      v77 = v37;
      v76 = v38;
      sub_1ABBAE7B0(v72, v34, v35, v36, v38 | (v37 << 16));
      sub_1ABB3B88C();
      if (v5)
      {

        sub_1ABB37314(v72, v73, v74, v75, v76 | (v77 << 16));

        sub_1ABBC3DD0(__dst);
LABEL_37:
        v47 = v58;
        sub_1ABBD5CD0(Current, v67, v58, 2);
        sub_1ABBD8B30(v47, type metadata accessor for LogSignpost);
        return v6;
      }

      v16 = v39;
      sub_1ABB37314(v72, v73, v74, v75, v76 | (v77 << 16));
      if (v6)
      {
        v70 = v14;
        v71 = 0;
        v68 = v31;
        swift_beginAccess();
        v12 = *(v16 + 2);
        swift_beginAccess();
        v11 = *(v12 + 16);
        v40 = *(v6 + 2);
        v14 = *(v40 + 16);
        v5 = v14 + v11;
        if (__OFADD__(v14, v11))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69 = v6;
        *(v6 + 2) = v40;
        if (isUniquelyReferenced_nonNull_native && v5 <= *(v40 + 24) >> 1)
        {
          v5 = v71;
          v6 = v69;
        }

        else
        {
          sub_1ABAD9BE8();
          v40 = v42;
          v6 = v69;
          *(v69 + 2) = v42;
          v5 = v71;
        }

        if (*(v12 + 16))
        {
          if ((*(v40 + 24) >> 1) - *(v40 + 16) < v11)
          {
            goto LABEL_51;
          }

          swift_arrayInitWithCopy();

          v14 = v70;
          if (v11)
          {
            v43 = *(v40 + 16);
            v44 = __OFADD__(v43, v11);
            v45 = v43 + v11;
            if (v44)
            {
              goto LABEL_52;
            }

            *(v40 + 16) = v45;
          }
        }

        else
        {

          v14 = v70;
          if (v11)
          {
            goto LABEL_50;
          }
        }

        *(v6 + 2) = v40;
        swift_endAccess();

        v11 = v59;
        v31 = v68;
      }

      else
      {

        v6 = v16;
      }

      swift_beginAccess();
      v14 = *(v16 + 2);

      v12 = *(v14 + 16);

      ++v10;
      v44 = __OFADD__(v31, v12);
      v16 = (v31 + v12);
      v31 += v12;
      if (v44)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v16 = 0;
LABEL_39:
  sub_1ABBAB454(v16);
  if (qword_1ED871B18 != -1)
  {
    swift_once();
  }

  sub_1ABA7AA24(v11, qword_1ED871B20);
  v48 = sub_1ABF237D4();
  v49 = sub_1ABF24684();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v16;
    _os_log_impl(&dword_1ABA78000, v48, v49, "ECR request manager: generate %ld candidate entities.", v50, 0xCu);
    MEMORY[0x1AC5AB8B0](v50, -1, -1);
  }

  v51 = v58;
  sub_1ABBD5CD0(Current, v67, v58, 2);
  sub_1ABBD8B30(v51, type metadata accessor for LogSignpost);
  return v6;
}

uint64_t sub_1ABBD5030(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v53 = a2;
  v54 = a1;
  v52 = sub_1ABF23744();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = sub_1ABF237F4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1ABF23774();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for LogSignpost(0);
  MEMORY[0x1EEE9AC00](v46);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v19 = sub_1ABA7AA24(v11, qword_1ED871EF8);
  (*(v12 + 16))(v14, v19, v11);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v20 = sub_1ABF23764();
  v21 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v22 = swift_slowAlloc();
    v45 = a3;
    v23 = v5;
    v24 = v22;
    *v22 = 0;
    v25 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v20, v21, v25, "ECR.Manager.rerank", "", v24, 2u);
    v26 = v24;
    v5 = v23;
    a3 = v45;
    MEMORY[0x1AC5AB8B0](v26, -1, -1);
  }

  v27 = v50;
  v28 = v52;
  (*(v50 + 16))(v49, v10, v52);
  sub_1ABF237B4();
  swift_allocObject();
  v29 = sub_1ABF237A4();
  v31 = *(v27 + 8);
  v30 = v27 + 8;
  v31(v10, v28);
  *v18 = "ECR.Manager.rerank";
  *(v18 + 1) = 18;
  v18[16] = 2;
  *(v18 + 3) = v29;
  (*(v47 + 32))(&v18[*(v46 + 24)], v16, v48);
  Current = CFAbsoluteTimeGetCurrent();
  v33 = *(v5 + 304);
  v34 = *(v5 + 312);
  v35 = *(v5 + 320);
  LOBYTE(v56) = *(v5 + 296);
  v57 = v33;
  v58[0] = v34;
  v58[1] = v35;
  sub_1ABBD8A4C(v33, v34);
  v36 = a3;
  v37 = v55;
  v38 = v51;
  v39 = sub_1ABB9B300(v54, v53 & 1, v36, v55);
  if (v38)
  {
    sub_1ABBA19EC(v57, v58[0]);
    goto LABEL_15;
  }

  v30 = v39;
  sub_1ABBA19EC(v57, v58[0]);
  if (!v30)
  {
    sub_1ABB32C5C();
    swift_allocError();
    *v42 = xmmword_1ABF47820;
    v43 = 9;
LABEL_14:
    *(v42 + 16) = v43;
    swift_willThrow();
    goto LABEL_15;
  }

  v41 = *(v5 + 16);
  v40 = *(v5 + 24);
  memcpy(__dst, (v5 + 32), sizeof(__dst));
  v56 = v41;
  v57 = v40;
  memcpy(v58, (v5 + 32), 0x6BuLL);
  if ((sub_1ABBBABC4() & 1) == 0)
  {
    v56 = v41;
    v57 = v40;
    memcpy(v58, __dst, 0x6BuLL);
    if ((sub_1ABBBACA4() & 1) == 0 && (!v40 || !v37))
    {

      sub_1ABB32C5C();
      swift_allocError();
      *v42 = 0xD000000000000019;
      *(v42 + 8) = 0x80000001ABF8A780;
      v43 = 2;
      goto LABEL_14;
    }
  }

LABEL_15:
  sub_1ABBD5CD0(Current, v5, v18, 3);
  sub_1ABBD8B30(v18, type metadata accessor for LogSignpost);
  return v30;
}

uint64_t sub_1ABBD5684(void *a1, void *a2)
{
  v53 = a2;
  v52 = a1;
  v59[36] = *MEMORY[0x1E69E9840];
  v2 = sub_1ABF21CF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v46 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v13 = NSTemporaryDirectory();
  sub_1ABF23C04();

  sub_1ABF21C44();

  sub_1ABF21C74();
  v16 = *(v3 + 8);
  v15 = v3 + 8;
  v14 = v16;
  v16(v9, v2);
  v17 = [objc_opt_self() defaultManager];
  sub_1ABF21CC4();
  v18 = sub_1ABF23BD4();

  v59[0] = 0;
  v19 = [v17 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:v59];

  if (v19)
  {
    v48 = v14;
    v49 = v15;
    v47 = v2;
    v56[0] = 0;
    v56[1] = 0xE000000000000000;
    v20 = v59[0];
    sub_1ABF24AB4();

    v56[0] = 0x65736E6F70736572;
    v56[1] = 0xE90000000000005FLL;
    v21 = v51;
    MEMORY[0x1AC5A9410](*(v51 + 48), *(v51 + 56));
    MEMORY[0x1AC5A9410](0x6E6F736A2ELL, 0xE500000000000000);
    v22 = v55;
    sub_1ABF21C84();

    memcpy(v57, (v21 + 16), 0x7BuLL);
    memcpy(v58, (v21 + 144), 0x8DuLL);
    memcpy(v56, (v21 + 16), 0x7BuLL);
    memcpy(&v56[16], (v21 + 144), 0x8DuLL);
    memcpy(v59, v56, 0x110uLL);
    v59[34] = v52;
    v59[35] = v53;
    sub_1ABF21854();
    swift_allocObject();
    sub_1ABBC3BC8(v57, v56);
    sub_1ABBA9514(v58, v56);

    sub_1ABF21844();
    memcpy(v56, v59, sizeof(v56));
    sub_1ABBD89F8();
    v23 = v54;
    v24 = sub_1ABF21834();
    if (v23)
    {

      v26 = v47;
      v54 = v12;
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v35 = sub_1ABF237F4();
      sub_1ABA7AA24(v35, qword_1ED871B20);
      v36 = v23;
      v37 = sub_1ABF237D4();
      v38 = sub_1ABF24664();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v53 = 0;
        v40 = v39;
        v41 = swift_slowAlloc();
        v56[0] = v41;
        *v40 = 136315138;
        swift_getErrorValue();
        v42 = sub_1ABF25154();
        v44 = sub_1ABADD6D8(v42, v43, v56);

        *(v40 + 4) = v44;
        _os_log_impl(&dword_1ABA78000, v37, v38, "Failed to write session logger JSON data: %s", v40, 0xCu);
        sub_1ABA84B54(v41);
        MEMORY[0x1AC5AB8B0](v41, -1, -1);
        MEMORY[0x1AC5AB8B0](v40, -1, -1);
      }

      sub_1ABBC47EC(v59);

      v45 = v48;
      v48(v55, v26);
      return v45(v54, v26);
    }

    else
    {
      v29 = v24;
      v30 = v25;
      v31 = v22;

      sub_1ABF21CC4();
      v32 = v50;
      sub_1ABF21C44();

      sub_1ABF21DF4();
      v33 = v47;
      v34 = v48;
      v53 = 0;
      sub_1ABA96210(v29, v30);
      sub_1ABBC47EC(v59);
      v34(v32, v33);
      v34(v31, v33);
      return (v34)(v12, v33);
    }
  }

  else
  {
    v27 = v59[0];
    sub_1ABF21BE4();

    swift_willThrow();
    return v14(v12, v2);
  }
}

uint64_t sub_1ABBD5CD0(double a1, uint64_t a2, unint64_t *a3, char a4)
{
  v8 = sub_1ABF23784();
  sub_1ABA7BB64();
  v26 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v11 = sub_1ABF23744();
  sub_1ABA7BB64();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  sub_1ABBAB2D0(a4, a1);
  type metadata accessor for LogSignpost(0);
  v18 = *a3;
  v19 = *(a3 + 16);
  v20 = sub_1ABF23764();
  sub_1ABF23794();
  v25 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_11:

    return (*(v13 + 8))(v17, v11);
  }

  if ((v19 & 1) == 0)
  {
    if (v18)
    {
LABEL_8:

      sub_1ABF237C4();

      v22 = sub_1ABAB10B4();
      if (v23(v22) != *MEMORY[0x1E69E93E8])
      {
        (*(v26 + 8))(v4, v8);
      }

      sub_1ABA8179C();
      *swift_slowAlloc() = 0;
      v24 = sub_1ABF23724();
      sub_1ABAA3080(&dword_1ABA78000, v24, v25);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_11;
    }

    __break(1u);
  }

  if (HIDWORD(v18))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v18 & 0xFFFFF800) != 0xD800)
  {
    if (v18 >> 16 <= 0x10)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t *sub_1ABBD5F40()
{
  memcpy(v2, v0 + 2, 0x7BuLL);
  sub_1ABBC3C00(v2);
  memcpy(__dst, v0 + 18, 0x8DuLL);
  sub_1ABBA954C(__dst);

  sub_1ABBA19EC(v0[38], v0[39]);

  return v0;
}

uint64_t sub_1ABBD5FB4()
{
  sub_1ABBD5F40();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBD600C()
{
  v0 = sub_1ABF230A4();
  sub_1ABA7BB64();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  v6 = v5 - v4;
  sub_1ABF21CF4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7BC58();
  v8 = sub_1ABA7D0F8();
  v9(v8);
  (*(v2 + 104))(v6, *MEMORY[0x1E69DF528], v0);
  return sub_1ABF23054();
}

void sub_1ABBD6180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v359 = v26;
  v360 = v24;
  v305 = v23;
  v338 = v27;
  v340 = v28;
  v341 = v29;
  v31 = v30;
  v356 = v32;
  v357 = v33;
  v375[18] = *MEMORY[0x1E69E9840];
  v36 = v34[2];
  v35 = v34[3];
  v302 = *v34;
  v303 = v36;
  v304 = v35;
  v37 = v34[6];
  v329 = v34;
  v330 = v37;
  v38 = sub_1ABAD219C(&qword_1EB4D4C48, &unk_1ABF47890);
  v39 = sub_1ABA7AB80(v38);
  MEMORY[0x1EEE9AC00](v39);
  v335 = &v301 - v40;
  v41 = sub_1ABA8409C();
  v350 = type metadata accessor for SearchableViewDatabaseTable(v41);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7C068();
  v334 = v43;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v44);
  v344 = &v301 - v45;
  sub_1ABA8409C();
  v316 = sub_1ABF21CF4();
  sub_1ABA7BB64();
  v311 = v46;
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7BC58();
  v315 = v49 - v48;
  sub_1ABA8409C();
  v50 = sub_1ABF23074();
  v51 = sub_1ABA7AB80(v50);
  MEMORY[0x1EEE9AC00](v51);
  sub_1ABA7BC58();
  v314 = (v53 - v52);
  v54 = sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  v55 = sub_1ABA7AB80(v54);
  MEMORY[0x1EEE9AC00](v55);
  v358 = &v301 - v56;
  v57 = sub_1ABAD219C(&qword_1EB4D3100, &qword_1ABF3AC80);
  v58 = sub_1ABA7AB80(v57);
  MEMORY[0x1EEE9AC00](v58);
  sub_1ABA7C068();
  v333 = v59;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v60);
  sub_1ABA88E50();
  v332 = v61;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v62);
  sub_1ABA88E50();
  v320 = v63;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v64);
  sub_1ABA88E50();
  v319 = v65;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v66);
  sub_1ABA88E50();
  v318 = v67;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v68);
  sub_1ABA88E50();
  v317 = v69;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v70);
  sub_1ABA88E50();
  v313 = v71;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v72);
  sub_1ABA88E50();
  v312 = v73;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v74);
  sub_1ABA88E50();
  v337 = v75;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v76);
  v336 = &v301 - v77;
  sub_1ABA8409C();
  v355 = sub_1ABF23744();
  sub_1ABA7BB64();
  v79 = v78;
  MEMORY[0x1EEE9AC00](v80);
  sub_1ABA7C068();
  v354 = v81;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v301 - v83;
  v85 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v87 = v86;
  MEMORY[0x1EEE9AC00](v88);
  sub_1ABA7BC58();
  v91 = (v90 - v89);
  v353 = sub_1ABF23774();
  sub_1ABA7BB64();
  v351 = v92;
  MEMORY[0x1EEE9AC00](v93);
  sub_1ABA7BC58();
  v94 = sub_1ABA8BFC4();
  v349 = type metadata accessor for LogSignpost(v94);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v95);
  sub_1ABA7BC58();
  v331 = (v97 - v96);
  memcpy(v374, v356, 0x7BuLL);
  memcpy(v375, v357, 0x8DuLL);
  v98 = v31[1];
  v352 = *v31;
  v99 = v31[3];
  v309 = v31[2];
  v310 = v98;
  v100 = v31[5];
  v307 = v31[4];
  v308 = v99;
  v345 = v100;
  v306 = v31[6];
  v101 = v359[1];
  v326 = *v359;
  v327 = v101;
  v328 = v359[2];
  v102 = a21[1];
  v339 = *a21;
  v103 = a21[2];
  v104 = a21[3];
  v105 = a21[4];
  v322 = v102;
  v323 = v105;
  v106 = a21[6];
  v324 = a21[5];
  v325 = v103;
  v342 = v106;
  v343 = v104;
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_113;
  }

LABEL_2:
  v107 = sub_1ABA7AA24(v85, qword_1ED871EF8);
  v108 = *(v87 + 16);
  v321 = v85;
  v108(v91, v107, v85);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v109 = sub_1ABF23764();
  v110 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v111 = swift_slowAlloc();
    *v111 = 0;
    v112 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v109, v110, v112, "ECR.Manager.initWithViews", "", v111, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v114 = v354;
  v113 = v355;
  (v79[2])(v354, v84, v355);
  sub_1ABF237B4();
  swift_allocObject();
  v115 = sub_1ABF237A4();
  v117 = v79[1];
  v116 = v79 + 1;
  v117(v84, v113);
  sub_1ABA97F80("ECR.Manager.initWithViews");
  (*(v351 + 32))(v118 + *(v349 + 24), v25, v353);
  sub_1ABAA4030();
  v351 = v375[15];
  v349 = v375[16];
  v348 = LOBYTE(v375[17]);
  v346 = BYTE2(v375[17]);
  v347 = BYTE1(v375[17]);
  v120 = v358;
  v121 = v352;
  if (BYTE1(v375[17]) == 1)
  {
    if (*v329)
    {
      v84 = v329[5];
      v85 = v329[6];
      v116 = v329[3];
      v115 = v329[4];
      v122 = v329[1];
      v114 = v329[2];
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      swift_unknownObjectRelease();
      v119 = v122;
    }

    else
    {
      if (qword_1ED871B18 != -1)
      {
        sub_1ABA7BE6C(&qword_1ED871B18);
      }

      sub_1ABA7AA24(v321, qword_1ED871B20);
      v115 = sub_1ABF237D4();
      v123 = sub_1ABF24664();
      if (sub_1ABA957C8(v123))
      {
        sub_1ABA8179C();
        *swift_slowAlloc() = 0;
        sub_1ABAA3060(&dword_1ABA78000, v124, v125, "View(entitySummary) is not available.");
        v120 = v358;
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      sub_1ABAA4030();
    }
  }

  v353 = v119;
  v354 = v114;
  v373[0] = v119;
  v373[1] = v114;
  v355 = v116;
  v373[2] = v116;
  v373[3] = v115;
  v373[4] = v84;
  v373[5] = v85;
  v330 = sub_1ABBD8A8C();
  v126 = sub_1ABF239C4();
  v359 = v85;
  v356 = v115;
  v357 = v84;
  if (v121)
  {
    if (!_Records_GDEntityClass_records)
    {
      __break(1u);
LABEL_115:
      __break(1u);
      return;
    }

    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v371);
    v366[0] = v371[0];
    v366[1] = v371[1];
    v367 = v371[2];
    v127 = v309;
    v128 = v310;
    v365[0] = v310;
    v365[1] = v309;
    v129 = v308;
    v365[2] = v308;
    v365[3] = v307;
    v365[4] = v345;
    v365[5] = v306;

    swift_unknownObjectRetain();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v371[0] = v126;
    sub_1ABAFB7D4(v365, v366, isUniquelyReferenced_nonNull_native, v131, v132, v133, v134, v135, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316);
    sub_1ABA88934(v366);
    sub_1ABBD892C(v352, v128, v127, v129);
    v126 = *&v371[0];
  }

  else
  {
    v136 = v321;
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    sub_1ABA7AA24(v136, qword_1ED871B20);
    v137 = sub_1ABF237D4();
    v138 = sub_1ABF24664();
    if (sub_1ABA957C8(v138))
    {
      sub_1ABA8179C();
      *swift_slowAlloc() = 0;
      sub_1ABAA3060(&dword_1ABA78000, v139, v140, "View(peopleSubgraph) is not available.");
      v120 = v358;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
    }
  }

  memcpy(v371, v374, 0x7BuLL);
  v91 = v371;
  sub_1ABBBAAB4();
  if (v141)
  {
    sub_1ABBD892C(v339, v322, v325, v343);
    v87 = v341;
    v25 = v360;
    v343 = v126;
  }

  else
  {
    v142 = v339;
    if (v339)
    {
      v143 = v322;
      v144 = v325;
      v362[0] = v322;
      v362[1] = v325;
      v145 = v343;
      v362[2] = v343;
      v362[3] = v323;
      v362[4] = v324;
      v362[5] = v342;

      swift_unknownObjectRetain();

      sub_1ABBD892C(v142, v143, v144, v145);
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_115;
      }

      sub_1ABA8882C(*_Records_GDEntityClass_records, *(_Records_GDEntityClass_records + 8), *(_Records_GDEntityClass_records + 8 + 8), v371);
      v363[0] = v371[0];
      v363[1] = v371[1];
      v364 = v371[2];

      swift_unknownObjectRetain();

      v146 = swift_isUniquelyReferenced_nonNull_native();
      *&v371[0] = v126;
      v91 = v371;
      sub_1ABAFB7D4(v362, v363, v146, v147, v148, v149, v150, v151, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314, v315, v316);
      sub_1ABA88934(v363);

      swift_unknownObjectRelease();

      v343 = *&v371[0];
      v87 = v341;
      v25 = v360;
    }

    else
    {
      if (qword_1ED871B18 != -1)
      {
        sub_1ABA7BE6C(&qword_1ED871B18);
      }

      sub_1ABA7AA24(v321, qword_1ED871B20);
      v91 = sub_1ABF237D4();
      v152 = sub_1ABF24664();
      v153 = sub_1ABA957C8(v152);
      v87 = v341;
      v25 = v360;
      v343 = v126;
      if (v153)
      {
        sub_1ABA8179C();
        *swift_slowAlloc() = 0;
        sub_1ABAA3060(&dword_1ABA78000, v154, v155, "Subgraph view is not available");
        v120 = v358;
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }
    }
  }

  v339 = a22;
  v352 = a23;
  v361 = MEMORY[0x1E69E7CC0];
  v84 = v351;
  v345 = *(v351 + 16);
  if (!v345)
  {

    goto LABEL_96;
  }

  v323 = 0x80000001ABF7F180;
  v324 = 0x80000001ABF7F1A0;
  v321 = (v311 + 8);
  v322 = "r subgraph matching.";

  v85 = 0;
  v156 = MEMORY[0x1E69E7CC0];
  v79 = &qword_1EB4D4C50;
  while (1)
  {
    if (v85 >= *(v84 + 16))
    {
      __break(1u);
LABEL_113:
      sub_1ABA7D608(&qword_1ED871F20);
      goto LABEL_2;
    }

    v157 = *(v85 + v84 + 32);
    v360 = v25;
    v342 = v156;
    if (v157 >> 6)
    {
      break;
    }

    sub_1ABA8F288();
    if (v87)
    {
      v164 = type metadata accessor for EntityResolutionRankingService();
      sub_1ABA8E1F0(v164, &off_1F207C6B8);
    }

    else
    {
      sub_1ABA8E818();
    }

    sub_1ABBD88DC(v340, v120, &qword_1EB4D4C50, &unk_1ABF479B0);
    v165 = type metadata accessor for EntityAliasView(0);
    if (sub_1ABA7E1E0(v120, 1, v165) == 1)
    {

      v166 = v343;

      sub_1ABAB480C(v120, &qword_1EB4D4C50, &unk_1ABF479B0);
      v167 = 1;
      v168 = v336;
    }

    else
    {
      v168 = v336;
      sub_1ABB3E614(v120 + *(v165 + 20), v336);

      v166 = v343;

      sub_1ABBD8B30(v120, type metadata accessor for EntityAliasView);
      v167 = 0;
    }

    v169 = v350;
    sub_1ABA7B9B4(v168, v167, 1, v350);
    v170 = v337;
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v171, v172, v173, v169);
    v174 = type metadata accessor for CandidateGenerator();
    v175 = sub_1ABA8A33C(v174);
    sub_1ABA95280();
    v176 = sub_1ABA809B4();
    sub_1ABBD8AE0(v176, v177, v178);
    v179 = sub_1ABA81788();
    v180 = v157;
    v157 = v175;
    v181 = v360;
    sub_1ABB3AB20(v179, v180, v182, v183, 0, v166, v168, v170, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314);
    v25 = v181;
    if (v181)
    {

      v283 = sub_1ABA809B4();
      sub_1ABB3DFF8(v283, v284, v285);
      sub_1ABAA2C58();
      sub_1ABBC3C00(v374);
      sub_1ABBA954C(v375);

      sub_1ABAA226C();
      sub_1ABAB480C(v329, &qword_1EB4D4C70, &unk_1ABF478B0);

      goto LABEL_108;
    }

    MEMORY[0x1AC5A9710]();
    sub_1ABA97794();
    v84 = v351;
    if (*(v184 + 16) >= *(v184 + 24) >> 1)
    {
      sub_1ABF24134();
    }

    v91 = &v361;
    sub_1ABF24184();
LABEL_92:
    v87 = v341;
LABEL_93:
    v85 = (v85 + 1);
    v156 = v361;
    v120 = v358;
    v79 = &qword_1EB4D4C50;
    if (v345 == v85)
    {

LABEL_96:
      memcpy(v372, v374, 0x7BuLL);
      memcpy(v371, v375, 0x8DuLL);
      v368 = v326;
      v369 = v327;
      v370 = v328;
      v157 = swift_allocObject();
      sub_1ABBD2AB0();
      if (v25)
      {
        v272 = sub_1ABA97F94();
        goto LABEL_106;
      }

      v275 = sub_1ABA97F94();
      sub_1ABB3DFF8(v275, v276, v277);
      v278 = v331;
      sub_1ABBD8690(v331);
      sub_1ABAB480C(v329, &qword_1EB4D4C70, &unk_1ABF478B0);

      swift_unknownObjectRelease();

      sub_1ABAB480C(v339, &qword_1EB4D4C48, &unk_1ABF47890);
      sub_1ABAB480C(v340, &qword_1EB4D4C50, &unk_1ABF479B0);
      sub_1ABA7F120();
      sub_1ABBD8B30(v278, v279);
      goto LABEL_109;
    }
  }

  if (v157 >> 6 == 1)
  {
    *(&v371[1] + 1) = &type metadata for Features.FeatureFlag;
    *&v371[2] = sub_1ABA8488C();
    LOBYTE(v371[0]) = 25;
    v158 = sub_1ABF220A4();
    sub_1ABA84B54(v371);
    if ((v158 & 1) == 0)
    {

      sub_1ABAA2C58();
      sub_1ABBC3C00(v374);
      sub_1ABBA954C(v375);

      sub_1ABA8A488();
      sub_1ABB32C5C();
      swift_allocError();
      sub_1ABA7BB94();
      *v280 = v281 + 36;
      *(v280 + 8) = v157;
      v282 = 8;
      goto LABEL_105;
    }

    v159 = v335;
    sub_1ABBD88DC(v339, v335, &qword_1EB4D4C48, &unk_1ABF47890);
    v160 = type metadata accessor for LemmatizedSubgraphView(0);
    if (sub_1ABA7E1E0(v159, 1, v160) == 1)
    {
      sub_1ABAA2C58();
      sub_1ABBC3C00(v374);
      sub_1ABBA954C(v375);

      sub_1ABAB480C(v159, &qword_1EB4D4C48, &unk_1ABF47890);

      sub_1ABA8A488();
      sub_1ABB32C5C();
      swift_allocError();
      sub_1ABA7BB94();
      *v280 = v286 + 2;
      *(v280 + 8) = v157;
      v282 = 5;
      goto LABEL_105;
    }

    v161 = v159 + *(v160 + 20);
    v162 = v334;
    sub_1ABB3E614(v161, v334);
    sub_1ABBD8B30(v159, type metadata accessor for LemmatizedSubgraphView);
    sub_1ABB34574(v162, v344);
    sub_1ABA8F288();
    if (v87)
    {
      v163 = type metadata accessor for EntityResolutionRankingService();
      sub_1ABA8E1F0(v163, &off_1F207C6B8);
    }

    else
    {
      sub_1ABA8E818();
    }

    v185 = v87;
    v186 = v332;
    sub_1ABA7ED8C();
    v187 = v350;
    sub_1ABA7B9B4(v188, v189, v190, v350);
    v191 = v333;
    sub_1ABB3E614(v344, v333);
    sub_1ABA7B9B4(v191, 0, 1, v187);
    v192 = type metadata accessor for CandidateGenerator();
    v193 = sub_1ABA8A33C(v192);

    v194 = v185;

    sub_1ABA95280();
    v195 = sub_1ABA809B4();
    sub_1ABBD8AE0(v195, v196, v197);
    v198 = v343;

    v199 = sub_1ABA81788();
    v200 = v157;
    v201 = v198;
    v157 = v193;
    v202 = v360;
    sub_1ABB3AB20(v199, v200, v203, v204, 0, v201, v186, v191, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314);
    v25 = v202;
    if (v202)
    {

      v287 = sub_1ABA809B4();
      sub_1ABB3DFF8(v287, v288, v289);
      sub_1ABAA2C58();
      sub_1ABBC3C00(v374);
      sub_1ABBA954C(v375);
      sub_1ABA90730();

      sub_1ABAA226C();
      sub_1ABAB480C(v329, &qword_1EB4D4C70, &unk_1ABF478B0);

      goto LABEL_108;
    }

    MEMORY[0x1AC5A9710]();
    sub_1ABA97794();
    if (*(v205 + 16) >= *(v205 + 24) >> 1)
    {
      sub_1ABAA2574();
    }

    v91 = &v361;
    sub_1ABA7D0F8();
    sub_1ABF24184();
    sub_1ABA90730();
    v84 = v351;
    v87 = v194;
    goto LABEL_93;
  }

  if (v157 == 128)
  {
    v206 = type metadata accessor for ViewService();
    v325 = static ViewService.clientService.getter(v206);
    v207 = *&v325[OBJC_IVAR___GDSwiftViewService_accessRequester];
    v208 = sub_1ABF23BD4();
    *&v371[0] = 0;
    v209 = [v207 requestAssertionForViewName:v208 error:v371];

    v157 = *&v371[0];
    if (!v209)
    {
      v294 = *&v371[0];

      sub_1ABAA2C58();
      sub_1ABBC3C00(v374);
      sub_1ABBA954C(v375);

      sub_1ABF21BE4();

      swift_willThrow();
      v295 = sub_1ABA809B4();
      sub_1ABB3DFF8(v295, v296, v297);

      goto LABEL_107;
    }

    v210 = *&v371[0];
    v211 = [v209 viewArtifactURL];
    v212 = v315;
    sub_1ABF21CA4();

    sub_1ABBD600C();
    (*v321)(v212, v316);
    sub_1ABF23044();
    swift_allocObject();
    v213 = sub_1ABF22FF4();
    sub_1ABF23024();
    sub_1ABA8F288();
    if (v87)
    {
      v214 = type metadata accessor for EntityResolutionRankingService();
      *&v371[2] = &off_1F207C6B8;
      *(&v371[1] + 1) = v214;
      *&v371[0] = v87;
    }

    else
    {
      sub_1ABA8E818();
    }

    v215 = v312;
    sub_1ABA7ED8C();
    v216 = v350;
    sub_1ABA7B9B4(v217, v218, v219, v350);
    v220 = v313;
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v221, v222, v223, v216);
    v224 = type metadata accessor for CandidateGenerator();
    v157 = sub_1ABA8A33C(v224);

    v225 = v352;
    swift_unknownObjectRetain();
    v226 = sub_1ABA809B4();
    sub_1ABBD8AE0(v226, v227, v228);
    v229 = v343;

    v230 = v229;
    v231 = v360;
    sub_1ABB3AB20(v372, 128, v373, v371, 0, v230, v215, v220, v213, v225, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312);
    if (v231)
    {

      v298 = sub_1ABA809B4();
      sub_1ABB3DFF8(v298, v299, v300);
      sub_1ABAA2C58();

      swift_unknownObjectRelease();

      sub_1ABBC3C00(v374);
      sub_1ABBA954C(v375);

      sub_1ABAA226C();
      sub_1ABAB480C(v329, &qword_1EB4D4C70, &unk_1ABF478B0);

      goto LABEL_108;
    }

    MEMORY[0x1AC5A9710]();
    sub_1ABA97794();
    if (*(v232 + 16) >= *(v232 + 24) >> 1)
    {
      sub_1ABF24134();
    }

    v91 = &v361;
    sub_1ABF24184();

    swift_unknownObjectRelease();
    v87 = v341;
    v25 = 0;
    goto LABEL_93;
  }

  if (v157 == 129)
  {
    v157 = 0xEA00000000007963;
    switch(v374[48])
    {
      case 1:
        v157 = 0xE800000000000000;
        sub_1ABA9A3B4();
        goto LABEL_74;
      case 2:
        sub_1ABAA34A0();
        sub_1ABA7FC58();
        goto LABEL_74;
      case 3:
        sub_1ABA83EA4();
        goto LABEL_74;
      case 4:

        goto LABEL_75;
      case 5:
        v157 = v324;
        goto LABEL_74;
      case 6:
        sub_1ABA83EA4();
        sub_1ABA95110();
        goto LABEL_74;
      default:
LABEL_74:
        sub_1ABA7BB94();
        v233 = sub_1ABF25054();

        if ((v233 & 1) == 0)
        {
          goto LABEL_104;
        }

LABEL_75:
        sub_1ABA8F288();
        if (v87)
        {
          v234 = type metadata accessor for EntityResolutionRankingService();
          sub_1ABA8E1F0(v234, &off_1F207C6B8);
        }

        else
        {
          sub_1ABA8E818();
        }

        v235 = v319;
        sub_1ABA7ED8C();
        v236 = v350;
        sub_1ABA7B9B4(v237, v238, v239, v350);
        v240 = v320;
        sub_1ABA7ED8C();
        sub_1ABA7B9B4(v241, v242, v243, v236);

        sub_1ABA95280();
        v244 = v338;
        v245 = v338;
        v246 = sub_1ABF239C4();
        v247 = type metadata accessor for CandidateGenerator();
        v248 = sub_1ABA8A33C(v247);
        v249 = sub_1ABA809B4();
        sub_1ABBD8AE0(v249, v250, v251);
        v252 = sub_1ABA81788();
        v255 = 129;
        break;
    }

    goto LABEL_88;
  }

  v157 = 0xEA00000000007963;
  switch(v374[48])
  {
    case 1:
      v157 = 0xE800000000000000;
      sub_1ABA9A3B4();
      goto LABEL_83;
    case 2:
      sub_1ABAA34A0();
      sub_1ABA7FC58();
      goto LABEL_83;
    case 3:
      sub_1ABA83EA4();
      goto LABEL_83;
    case 4:
      sub_1ABA7BB94();
      v157 = v323;
      goto LABEL_83;
    case 5:

      goto LABEL_84;
    case 6:
      sub_1ABA83EA4();
      sub_1ABA95110();
      goto LABEL_83;
    default:
LABEL_83:
      v256 = sub_1ABF25054();

      if (v256)
      {
LABEL_84:
        sub_1ABA8F288();
        if (v87)
        {
          v257 = type metadata accessor for EntityResolutionRankingService();
          sub_1ABA8E1F0(v257, &off_1F207C6B8);
        }

        else
        {
          sub_1ABA8E818();
        }

        v235 = v317;
        sub_1ABA7ED8C();
        v258 = v350;
        sub_1ABA7B9B4(v259, v260, v261, v350);
        v240 = v318;
        sub_1ABA7ED8C();
        sub_1ABA7B9B4(v262, v263, v264, v258);

        sub_1ABA95280();
        v244 = v338;
        v245 = v338;
        v246 = sub_1ABF239C4();
        v265 = type metadata accessor for CandidateGenerator();
        v248 = sub_1ABA8A33C(v265);
        v266 = sub_1ABA809B4();
        sub_1ABBD8AE0(v266, v267, v268);
        v252 = sub_1ABA81788();
        v255 = 130;
LABEL_88:
        v269 = v246;
        v157 = v248;
        v270 = v360;
        sub_1ABB3AB20(v252, v255, v253, v254, v244, v269, v235, v240, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312, v313, v314);
        v25 = v270;
        if (v270)
        {

          v290 = sub_1ABA809B4();
          sub_1ABB3DFF8(v290, v291, v292);
          sub_1ABAA2C58();
          sub_1ABBC3C00(v374);
          sub_1ABBA954C(v375);

          sub_1ABAA226C();
          sub_1ABAB480C(v329, &qword_1EB4D4C70, &unk_1ABF478B0);

          goto LABEL_108;
        }

        MEMORY[0x1AC5A9710]();
        sub_1ABA97794();
        if (*(v271 + 16) >= *(v271 + 24) >> 1)
        {
          sub_1ABAA2574();
        }

        v91 = &v361;
        sub_1ABA7D0F8();
        sub_1ABF24184();
        v84 = v351;
        goto LABEL_92;
      }

LABEL_104:

      sub_1ABAA2C58();
      sub_1ABBC3C00(v374);
      sub_1ABBA954C(v375);

      sub_1ABB32C5C();
      swift_allocError();
      *v280 = xmmword_1ABF47830;
      v282 = 9;
LABEL_105:
      *(v280 + 16) = v282;
      swift_willThrow();
      v272 = sub_1ABA809B4();
LABEL_106:
      sub_1ABB3DFF8(v272, v273, v274);
LABEL_107:
      sub_1ABAA226C();
      sub_1ABAB480C(v329, &qword_1EB4D4C70, &unk_1ABF478B0);

LABEL_108:

      swift_unknownObjectRelease();
      sub_1ABAB480C(v339, &qword_1EB4D4C48, &unk_1ABF47890);
      sub_1ABAB480C(v340, &qword_1EB4D4C50, &unk_1ABF479B0);
      sub_1ABA7F120();
      sub_1ABBD8B30(v157, v293);
LABEL_109:
      sub_1ABA7BC90();
      return;
  }
}

void sub_1ABBD7BEC()
{
  sub_1ABA7BCA8();
  v131 = v1;
  v105 = v0;
  HIDWORD(v104) = v2;
  v148 = v3;
  v130 = v4;
  v122 = v5;
  v6 = sub_1ABAD219C(&qword_1EB4D4C48, &unk_1ABF47890);
  v7 = sub_1ABA7AB80(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v103 = v8;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA88E50();
  v129 = v10;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v11);
  v126 = (&v95 - v12);
  v13 = sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  v14 = sub_1ABA7AB80(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C068();
  v102 = v15;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA88E50();
  v132 = v17;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v95 - v19;
  v128 = sub_1ABF23744();
  sub_1ABA7BB64();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7C068();
  v127 = v24;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v95 - v26;
  v28 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7BC58();
  v34 = (v33 - v32);
  v125 = sub_1ABF23774();
  sub_1ABA7BB64();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7BC58();
  v40 = v39 - v38;
  v123 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7BC58();
  v124 = (v43 - v42);
  memcpy(v146, v122, 0x7BuLL);
  memcpy(v147, v130, 0x8DuLL);
  if (qword_1ED871F20 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v44 = sub_1ABA7AA24(v28, qword_1ED871EF8);
    (*(v30 + 16))(v34, v44, v28);
    sub_1ABF23754();
    sub_1ABF23764();
    sub_1ABF23714();
    v45 = sub_1ABF23764();
    v46 = sub_1ABF24714();
    v47 = sub_1ABF247D4();
    v130 = v20;
    if (v47)
    {
      sub_1ABA8179C();
      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v45, v46, v49, "ECR.Manager.init", "", v48, 2u);
      v20 = v130;
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0](v50, v51, v52, v53, v54, v55, v56);
    }

    v57 = v128;
    (v22[2])(v127, v27, v128);
    sub_1ABF237B4();
    swift_allocObject();
    sub_1ABF237A4();
    (v22[1])(v27, v57);
    sub_1ABA97F80("ECR.Manager.init");
    (*(v36 + 4))(v58 + *(v123 + 24), v40);
    v59 = v131;
    sub_1ABBD8BA4();
    v27 = v59;
    if (v59)
    {

      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v60 = 0;
      v22 = 0;
      v27 = 0;
    }

    else
    {
      v117 = v136[0];
      v118 = v136[1];
      v119 = v136[2];
      v120 = v136[3];
      v60 = v136[5];
      v121 = v136[4];
      v22 = v136[6];
    }

    v34 = v126;
    v40 = v147[15];
    v61 = BYTE2(v147[17]);
    if (BYTE1(v147[17]) == 1)
    {
      sub_1ABAA4D9C();
      sub_1ABBD8BDC(v62);
      v27 = v59;
      if (v59)
      {

        sub_1ABAA52A0();
        v27 = 0;
      }

      else
      {
        v63 = v138;
        v64 = v139;
        v65 = v140;
        v66 = v141;
        v67 = v142;
        v68 = v143;
        v69 = v144;
      }
    }

    else
    {
      sub_1ABAA52A0();
    }

    v100 = v64;
    v101 = v63;
    v145[0] = v63;
    v145[1] = v64;
    v98 = v66;
    v99 = v65;
    v145[2] = v65;
    v145[3] = v66;
    v96 = v68;
    v97 = v67;
    v145[4] = v67;
    v145[5] = v68;
    v95 = v69;
    v145[6] = v69;
    if (v61)
    {
      sub_1ABBD8C5C(v136);
      v114 = v136[0];
      v115 = v136[1];
      v116 = v136[2];
      v70 = *(v148 + 16);
      os_unfair_lock_lock((v70 + 24));
      v59 = 0;
      sub_1ABBD89DC((v70 + 16), v136);
      v27 = 0;
      os_unfair_lock_unlock((v70 + 24));
      v113 = v136[0];
    }

    else
    {
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
    }

    memcpy(v136, v146, 0x7BuLL);
    v28 = v136;
    sub_1ABBBAAB4();
    v30 = v129;
    v122 = v60;
    v123 = v22;
    if (v71)
    {
      sub_1ABAB5CBC();
    }

    else
    {
      sub_1ABAA4D9C();
      sub_1ABBD8CBC();
      v27 = v59;
      if (v59)
      {

        sub_1ABAB5CBC();
        v27 = 0;
      }

      else
      {
        v106 = v136[0];
        v107 = v136[2];
        v108 = v136[1];
        v109 = v136[3];
        v112 = v136[5];
        v110 = v136[4];
        v111 = v136[6];
      }
    }

    type metadata accessor for EntityAliasView(0);
    sub_1ABA7ED8C();
    v128 = v72;
    sub_1ABA7B9B4(v73, v74, v75, v72);
    type metadata accessor for LemmatizedSubgraphView(0);
    sub_1ABA7ED8C();
    v125 = v76;
    sub_1ABA7B9B4(v77, v78, v79, v76);
    v36 = *(v40 + 16);
    if (!v36)
    {
      break;
    }

    v131 = 0;
    v20 = 0;
    v127 = v40;
    while (v20 < *(v40 + 16))
    {
      v80 = v20[v40 + 32];
      if (v80 >> 6)
      {
        if (v80 >> 6 == 1)
        {
          v136[3] = &type metadata for Features.FeatureFlag;
          v136[4] = sub_1ABA8488C();
          LOBYTE(v136[0]) = 25;
          v28 = sub_1ABF220A4();
          sub_1ABA84B54(v136);
          if (v28)
          {
            sub_1ABAA4D9C();
            sub_1ABBD8E54();
            v27 = v59;
            if (v59)
            {
              goto LABEL_44;
            }

            v28 = v126;
            v34 = &qword_1EB4D4C48;
            v22 = &unk_1ABF47890;
            sub_1ABAB480C(v126, &qword_1EB4D4C48, &unk_1ABF47890);
            sub_1ABA7B9B4(v30, 0, 1, v125);
            sub_1ABBD898C(v30, v28, &qword_1EB4D4C48, &unk_1ABF47890);
          }
        }

        else if (v80 != 128)
        {
          if (v80 == 129)
          {
            sub_1ABAA4D9C();
            v81 = sub_1ABBD8DC0();
          }

          else
          {
            sub_1ABAA4D9C();
            v81 = sub_1ABBD8D2C();
          }

          v27 = v59;
          if (v59)
          {
LABEL_44:

            sub_1ABBC3C00(v146);
            sub_1ABBD892C(v101, v100, v99, v98);

            sub_1ABBA954C(v147);
            sub_1ABBD892C(v106, v108, v107, v109);
            sub_1ABBA19EC(v114, v115);
            sub_1ABBD892C(v117, v118, v119, v120);
            sub_1ABAB480C(v126, &qword_1EB4D4C48, &unk_1ABF47890);
            sub_1ABAB480C(v130, &qword_1EB4D4C50, &unk_1ABF479B0);
            v92 = v124;
            sub_1ABBD8690(v124);

            sub_1ABA7F120();
            sub_1ABBD8B30(v92, v93);
            goto LABEL_45;
          }

          v28 = v81;

          v131 = v28;
        }
      }

      else
      {
        sub_1ABAA4D9C();
        sub_1ABBD8CF4();
        v27 = v59;
        if (v59)
        {

          v27 = 0;
          v28 = 1;
        }

        else
        {
          v28 = 0;
        }

        v22 = &qword_1EB4D4C50;
        sub_1ABAB480C(v130, &qword_1EB4D4C50, &unk_1ABF479B0);
        v34 = v132;
        sub_1ABA7B9B4(v132, v28, 1, v128);
        v82 = sub_1ABA7D0F8();
        sub_1ABBD898C(v82, v83, &qword_1EB4D4C50, &unk_1ABF479B0);
        v30 = v129;
        v40 = v127;
      }

      if (v36 == ++v20)
      {

        v20 = v130;
        v36 = v131;
        v34 = v126;
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_47:
    sub_1ABA7D608(&qword_1ED871F20);
  }

LABEL_40:
  sub_1ABAA4D9C();
  sub_1ABBD8E8C();
  v86 = v122;
  v85 = v123;
  if (v59)
  {

    v87 = 0;
  }

  else
  {
    v87 = v84;
  }

  memcpy(v137, v146, 0x7BuLL);
  memcpy(v136, v147, 0x8DuLL);
  v88 = v102;
  sub_1ABBD88DC(v20, v102, &qword_1EB4D4C50, &unk_1ABF479B0);
  v135[0] = v117;
  v135[1] = v118;
  v135[2] = v119;
  v135[3] = v120;
  v135[4] = v121;
  v135[5] = v86;
  v135[6] = v85;
  v134[0] = v114;
  v134[1] = v115;
  v134[2] = v116;
  v133[0] = v106;
  v133[1] = v108;
  v133[2] = v107;
  v133[3] = v109;
  v133[4] = v110;
  v133[5] = v112;
  v133[6] = v111;
  v89 = v103;
  sub_1ABBD88DC(v34, v103, &qword_1EB4D4C48, &unk_1ABF47890);
  LOBYTE(v94) = BYTE4(v104) & 1;
  sub_1ABBD6180(v137, v136, v88, v135, v145, v134, v113, v36, v133, v89, v87, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105);
  sub_1ABAB480C(v34, &qword_1EB4D4C48, &unk_1ABF47890);
  sub_1ABAB480C(v20, &qword_1EB4D4C50, &unk_1ABF479B0);
  v90 = v124;
  sub_1ABBD8690(v124);

  sub_1ABA7F120();
  sub_1ABBD8B30(v90, v91);
LABEL_45:
  sub_1ABA7BC90();
}

uint64_t sub_1ABBD8690(unint64_t *a1)
{
  v3 = sub_1ABF23784();
  sub_1ABA7BB64();
  v21 = v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  sub_1ABA8BFC4();
  v6 = sub_1ABF23744();
  sub_1ABA7BB64();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7BC58();
  v12 = v11 - v10;
  type metadata accessor for LogSignpost(0);
  v13 = *a1;
  v14 = *(a1 + 16);
  v15 = sub_1ABF23764();
  sub_1ABF23794();
  v20 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_11:

    return (*(v8 + 8))(v12, v6);
  }

  if ((v14 & 1) == 0)
  {
    if (v13)
    {
LABEL_8:

      sub_1ABF237C4();

      v17 = sub_1ABAB10B4();
      if (v18(v17) != *MEMORY[0x1E69E93E8])
      {
        (*(v21 + 8))(v1, v3);
      }

      sub_1ABA8179C();
      *swift_slowAlloc() = 0;
      v19 = sub_1ABF23724();
      sub_1ABAA3080(&dword_1ABA78000, v19, v20);
      sub_1ABA7BDD8();
      MEMORY[0x1AC5AB8B0]();
      goto LABEL_11;
    }

    __break(1u);
  }

  if (HIDWORD(v13))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v13 & 0xFFFFF800) != 0xD800)
  {
    if (v13 >> 16 <= 0x10)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1ABBD88DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1ABA7BCC0(a1, a2, a3, a4);
  sub_1ABA7BBB0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1ABBD892C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1ABBD898C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1ABA7BCC0(a1, a2, a3, a4);
  sub_1ABA7BBB0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

unint64_t sub_1ABBD89F8()
{
  result = qword_1EB4D4C58;
  if (!qword_1EB4D4C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D4C58);
  }

  return result;
}

uint64_t sub_1ABBD8A4C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    swift_unknownObjectRetain();

    return swift_unknownObjectRetain();
  }

  return v2;
}

unint64_t sub_1ABBD8A8C()
{
  result = qword_1ED8717F0;
  if (!qword_1ED8717F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8717F0);
  }

  return result;
}

uint64_t sub_1ABBD8AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1ABBD8B30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1ABBD8BA4()
{
  sub_1ABA809C8();
  v0 = sub_1ABA7C07C();
  sub_1ABBDAB40(v0, v1, v2, v3, v4);
  sub_1ABA7E5D0();
}

__n128 sub_1ABBD8BDC@<Q0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 6);
  sub_1ABBDA114(&v4[4], v9);
  os_unfair_lock_unlock(v4 + 6);
  if (!v2)
  {
    v6 = v9[1];
    v7 = v12;
    result = v11;
    v8 = v10;
    *a1 = v9[0];
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
    *(a1 + 32) = result;
    *(a1 + 48) = v7;
  }

  return result;
}

void sub_1ABBD8C5C(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_1ABBDA964((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 24));
}

void sub_1ABBD8CBC()
{
  sub_1ABA809C8();
  v0 = sub_1ABA7C07C();
  sub_1ABBDAB24(v0, v1, v2, v3, v4);
  sub_1ABA7E5D0();
}

void sub_1ABBD8CF4()
{
  sub_1ABA809C8();
  v0 = sub_1ABA7C07C();
  sub_1ABBDA980(v0);
  sub_1ABA7E5D0();
}

uint64_t sub_1ABBD8D2C()
{
  sub_1ABBD8BA4();
  if (!v1)
  {
    sub_1ABA7F138();
    MEMORY[0x1EEE9AC00](v3);
    sub_1ABA933F0();
    sub_1ABBDABBC((v2 + 16), v5);
    sub_1ABA7E5D0();
    v0 = v5[0];
    sub_1ABBDAC04(v6);
  }

  return v0;
}

uint64_t sub_1ABBD8DC0()
{
  sub_1ABBD8CBC();
  if (!v1)
  {
    sub_1ABA7F138();
    MEMORY[0x1EEE9AC00](v3);
    sub_1ABA933F0();
    sub_1ABBDAC58((v2 + 16), v5);
    sub_1ABA7E5D0();
    v0 = v5[0];
    sub_1ABBDACA0(v6);
  }

  return v0;
}

void sub_1ABBD8E54()
{
  sub_1ABA809C8();
  sub_1ABA7C07C();
  sub_1ABBDA99C(v0);
  sub_1ABA7E5D0();
}

void sub_1ABBD8E8C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_1ABBDAB08((v1 + 16), &v2);
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t *sub_1ABBD8EEC()
{
  sub_1ABBD892C(v0[2], v0[3], v0[4], v0[5]);
  sub_1ABBD892C(v0[9], v0[10], v0[11], v0[12]);
  sub_1ABBD892C(v0[16], v0[17], v0[18], v0[19]);
  sub_1ABA925A4(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_entityAliasView, &qword_1EB4D4C50, &unk_1ABF479B0);
  sub_1ABBA19EC(*(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView), *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView + 8));

  swift_unknownObjectRelease();

  sub_1ABA925A4(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_lemmatizedSubgraphView, &qword_1EB4D4C48, &unk_1ABF47890);
  return v0;
}

uint64_t sub_1ABBD8FD8()
{
  sub_1ABBD8EEC();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABBD9030()
{
  bzero((v0 + 16), 0xA8uLL);
  v1 = type metadata accessor for EntityAliasView(0);
  sub_1ABA94940(v1);
  v2 = (v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService) = 0;
  *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_visualIdentifierView) = 0;
  *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_peopleKnosisServer) = 0;
  *(v0 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_entityKnosisServer) = 0;
  v3 = type metadata accessor for LemmatizedSubgraphView(0);
  sub_1ABA94940(v3);
  return v0;
}

uint64_t sub_1ABBD90C8(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = a1;
  type metadata accessor for EntityResolutionServicePool.GuardedData(0);
  v3 = swift_allocObject();
  sub_1ABBD9030();
  sub_1ABAD219C(&qword_1EB4D4C78, &qword_1ABF479C0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v2 + 16) = v4;
  return v2;
}

uint64_t sub_1ABBD9138()
{
  sub_1ABBD92CC();

  return v0;
}

void sub_1ABBD92CC()
{
  v2 = *(v0 + 16);
  os_unfair_lock_lock((v2 + 24));
  sub_1ABBD9834((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1ABBD9324()
{
  sub_1ABBD9138();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EntityResolutionServicePool.GuardedData(uint64_t a1)
{
  result = qword_1ED8718F0;
  if (!qword_1ED8718F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ABBD93D0(uint64_t a1)
{
  sub_1ABBD94F8(319, &unk_1ED871C58, type metadata accessor for EntityAliasView);
  if (v1 <= 0x3F)
  {
    sub_1ABBD94F8(319, qword_1ED871158, type metadata accessor for LemmatizedSubgraphView);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1ABBD94F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1ABF247E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1ABBD954C(uint64_t a1)
{
  v4 = type metadata accessor for LemmatizedSubgraphView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v20 - v8;
  v10 = *(a1 + 120);
  v11 = *(a1 + 137);
  v12 = *(a1 + 138);
  sub_1ABBD8E8C();
  if (v2)
  {

    if (!v11)
    {
LABEL_6:
      if (!v12)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    swift_unknownObjectRelease();
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  sub_1ABBD8BDC(&v21);
  swift_unknownObjectRelease();
  v25 = v22;
  sub_1ABAFEEA0(&v25);
  swift_unknownObjectRelease();
  v24 = v23;
  sub_1ABAFEEA0(&v24);
  if (v12)
  {
LABEL_7:
    sub_1ABBD8C5C(v20);
    sub_1ABBA19EC(v20[0], v20[1]);
    v13 = *(v1 + 16);
    os_unfair_lock_lock((v13 + 24));
    sub_1ABBD89DC((v13 + 16), v20);
    os_unfair_lock_unlock((v13 + 24));
  }

LABEL_8:
  v14 = *(v10 + 16);
  if (v14)
  {
    v15 = 0;
    while (v15 < *(v10 + 16))
    {
      v16 = *(&v15[8]._os_unfair_lock_opaque + v10);
      if (v16 >> 6)
      {
        if (v16 >> 6 == 1)
        {
          v20[3] = &type metadata for Features.FeatureFlag;
          v20[4] = sub_1ABA8488C();
          LOBYTE(v20[0]) = 25;
          v17 = sub_1ABF220A4();
          sub_1ABA84B54(v20);
          if (v17)
          {
            sub_1ABBD8E54();
            sub_1ABBDACF4(v6);
          }
        }

        else if (v16 != 128)
        {
          if (v16 == 129)
          {
            v18 = sub_1ABBD8DC0();
          }

          else
          {
            v18 = sub_1ABBD8D2C();
          }
        }
      }

      else
      {
        sub_1ABBD8CF4();
        v19 = type metadata accessor for EntityAliasView(0);
        sub_1ABA7B9B4(v9, 0, 1, v19);
        sub_1ABA925A4(v9, &qword_1EB4D4C50, &unk_1ABF479B0);
      }

      v15 = (v15 + 1);
      if (v14 == v15)
      {
        return;
      }
    }

    __break(1u);
    os_unfair_lock_unlock(v15 + 6);
    __break(1u);
  }
}

uint64_t sub_1ABBD9834(uint64_t *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - v3;
  v5 = *a1;
  v6 = type metadata accessor for EntityAliasView(0);
  sub_1ABA7B9B4(v4, 1, 1, v6);
  swift_beginAccess();
  sub_1ABBDAA60();
  swift_endAccess();
  v7 = *(v5 + 128);
  v8 = *(v5 + 136);
  v9 = *(v5 + 144);
  v10 = *(v5 + 152);
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0;
  sub_1ABBD892C(v7, v8, v9, v10);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 32);
  v14 = *(v5 + 40);
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0;
  sub_1ABBD892C(v11, v12, v13, v14);
  v15 = (v5 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView);
  v16 = *(v5 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView);
  v17 = *(v5 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView + 8);
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  sub_1ABBA19EC(v16, v17);
  v18 = *(v5 + 72);
  v19 = *(v5 + 80);
  v20 = *(v5 + 88);
  v21 = *(v5 + 96);
  *(v5 + 72) = 0u;
  *(v5 + 88) = 0u;
  *(v5 + 104) = 0u;
  *(v5 + 120) = 0;
  sub_1ABBD892C(v18, v19, v20, v21);
  *(v5 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService) = 0;

  v22 = *(v5 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_peopleKnosisServer);
  *(v5 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_peopleKnosisServer) = 0;

  v23 = *(v5 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_entityKnosisServer);
  *(v5 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_entityKnosisServer) = 0;

  *(v5 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_visualIdentifierView) = 0;
  return swift_unknownObjectRelease();
}

uint64_t sub_1ABBD9A00(uint64_t *a1, uint64_t a2)
{
  v19 = a2;
  v4 = sub_1ABAD219C(&qword_1EB4D4C50, &unk_1ABF479B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  swift_beginAccess();
  sub_1ABBDA9B8();
  v12 = type metadata accessor for EntityAliasView(0);
  if (sub_1ABA7E1E0(v11, 1, v12) != 1)
  {
    return sub_1ABBDAAB4();
  }

  v13 = sub_1ABA925A4(v11, &qword_1EB4D4C50, &unk_1ABF479B0);
  result = ViewService.entityAliasView.getter(v13);
  if (!v3)
  {
    if (sub_1ABA7E1E0(v8, 1, v12) == 1)
    {
      sub_1ABA925A4(v8, &qword_1EB4D4C50, &unk_1ABF479B0);
      sub_1ABB32C5C();
      swift_allocError();
      *v15 = xmmword_1ABF478C0;
      *(v15 + 16) = 5;
      return swift_willThrow();
    }

    else
    {
      sub_1ABBDAAB4();
      v16 = v18;
      sub_1ABBDAA0C();
      sub_1ABA7B9B4(v16, 0, 1, v12);
      swift_beginAccess();
      sub_1ABBDAA60();
      return swift_endAccess();
    }
  }

  return result;
}

void sub_1ABBD9C9C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_visualIdentifierView;
  v5 = *(*a1 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_visualIdentifierView);
  if (v5)
  {
    v6 = v5;
LABEL_3:
    *a2 = v6;
    swift_unknownObjectRetain();
    return;
  }

  ViewService.visualIdentifierView()(&unk_1ED87C000);
  if (!v8)
  {
    v6 = v7;
    *(v3 + v4) = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    goto LABEL_3;
  }
}

uint64_t sub_1ABBD9D2C@<X0>(uint64_t a2@<X8>)
{
  v12[1] = a2;
  v2 = type metadata accessor for LemmatizedSubgraphView(0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1ABAD219C(&qword_1EB4D4C48, &unk_1ABF47890);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - v7;
  swift_beginAccess();
  sub_1ABBDA9B8();
  if (sub_1ABA7E1E0(v8, 1, v2) == 1)
  {
    v9 = sub_1ABA925A4(v8, &qword_1EB4D4C48, &unk_1ABF47890);
    v10 = v12[9];
    result = ViewService.lemmatizedSubgraphView.getter(v9);
    if (v10)
    {
      return result;
    }

    sub_1ABBDAA0C();
    sub_1ABA7B9B4(v5, 0, 1, v2);
    swift_beginAccess();
    sub_1ABBDAA60();
    swift_endAccess();
  }

  return sub_1ABBDAAB4();
}

void sub_1ABBD9F5C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v6 = *a1 + 16;
  v5 = *v6;
  v8 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v9 = *(*a1 + 40);
  v10 = *(*a1 + 48);
  v11 = *(*a1 + 56);
  v12 = *(*a1 + 64);
  if (*v6)
  {
    *a2 = v5;
    a2[1] = v8;
    a2[2] = v7;
    a2[3] = v9;
    a2[4] = v10;
    a2[5] = v11;
    a2[6] = v12;
LABEL_3:
    sub_1ABBDAB5C(v5);
    return;
  }

  v27 = *(*a1 + 24);
  sub_1ABB68E60();
  if (!v2)
  {
    v13 = *v23;
    if (*v23)
    {
      v25 = *&v24[8];
      v26 = *&v23[8];
      v20 = v4[3];
      v21 = v4[2];
      v18 = v4[5];
      v19 = v4[4];
      v17 = *&v23[24];
      v14 = *v24;
      v15 = *v23;
      *(v6 + 16) = *&v23[16];
      *(v6 + 32) = v14;
      *v6 = v15;
      *(v6 + 48) = *&v24[16];
      swift_unknownObjectRetain();
      sub_1ABB3E558(&v26, v22);
      swift_unknownObjectRetain();
      sub_1ABB3E558(&v25, v22);
      sub_1ABBD892C(v21, v20, v19, v18);
      *a2 = v13;
      *(a2 + 1) = *&v23[8];
      a2[3] = v17;
      *(a2 + 2) = *v24;
      a2[6] = *&v24[16];
      goto LABEL_3;
    }

    sub_1ABB32C5C();
    swift_allocError();
    *v16 = xmmword_1ABF478D0;
    *(v16 + 16) = 5;
    swift_willThrow();
  }
}

void sub_1ABBDA130(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  v8 = *a1;
  v9 = *(*a1 + 72);
  if (v9)
  {
    v10 = *(*a1 + 72);
    v11 = *(*a1 + 80);
    v12 = *(*a1 + 88);
    v13 = *(*a1 + 96);
    v14 = *(*a1 + 104);
    v15 = *(*a1 + 112);
    v16 = *(*a1 + 120);
LABEL_3:
    *a6 = v10;
    a6[1] = v11;
    a6[2] = v12;
    a6[3] = v13;
    a6[4] = v14;
    a6[5] = v15;
    a6[6] = v16;
    sub_1ABBDAB5C(v9);
    return;
  }

  ViewService.peopleSubgraphView.getter(a1, a2, *(*a1 + 88), *(*a1 + 96), *(*a1 + 104), a3, a4, a5, v19, v20, v21, v22, v23, v24, v25, v26, v28, v30, *(*a1 + 104), *(*a1 + 96), *(*a1 + 88), v32);
  if (!v6)
  {
    v10 = v33;
    if (v33)
    {
      v13 = v36;
      v12 = v35;
      v17 = v8[9];
      v29 = v8[11];
      v31 = v8[10];
      v27 = v8[12];
      v8[9] = v33;
      v8[10] = v34;
      v8[11] = v35;
      v8[12] = v36;
      v8[13] = v37;
      v8[14] = v38;
      v8[15] = v39;
      v16 = v39;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      sub_1ABBD892C(v17, v31, v29, v27);
      v14 = v37;
      v11 = v34;
      v15 = v38;
      goto LABEL_3;
    }

    sub_1ABB32C5C();
    swift_allocError();
    *v18 = xmmword_1ABF478E0;
    *(v18 + 16) = 5;
    swift_willThrow();
  }
}

void sub_1ABBDA2D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (v9)
  {
    v10 = *(*a1 + 128);
    v11 = *(*a1 + 136);
    v12 = *(*a1 + 144);
    v13 = *(*a1 + 152);
    v14 = *(*a1 + 160);
    v15 = *(*a1 + 168);
    v16 = *(*a1 + 176);
LABEL_3:
    *a6 = v10;
    a6[1] = v11;
    a6[2] = v12;
    a6[3] = v13;
    a6[4] = v14;
    a6[5] = v15;
    a6[6] = v16;
    sub_1ABBDAB5C(v9);
    return;
  }

  ViewService.entitySubgraphView.getter(a1, a2, *(*a1 + 144), *(*a1 + 152), *(*a1 + 160), a3, a4, a5, v19, v20, v21, v22, v23, v24, v25, v26, v28, v30, *(*a1 + 160), *(*a1 + 152), *(*a1 + 144), v32);
  if (!v6)
  {
    v10 = v33;
    if (v33)
    {
      v13 = v36;
      v12 = v35;
      v17 = v8[16];
      v29 = v8[18];
      v31 = v8[17];
      v27 = v8[19];
      v8[16] = v33;
      v8[17] = v34;
      v8[18] = v35;
      v8[19] = v36;
      v8[20] = v37;
      v8[21] = v38;
      v8[22] = v39;
      v16 = v39;
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();

      sub_1ABBD892C(v17, v31, v29, v27);
      v14 = v37;
      v11 = v34;
      v15 = v38;
      goto LABEL_3;
    }

    sub_1ABB32C5C();
    swift_allocError();
    *v18 = xmmword_1ABF478F0;
    *(v18 + 16) = 5;
    swift_willThrow();
  }
}

uint64_t sub_1ABBDA480@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (*a1 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_inferenceFeatureView);
  v6 = *v4;
  v5 = v4[1];
  v7 = v4[2];
  if (v5)
  {
    *a2 = v6;
    a2[1] = v5;
    a2[2] = v7;
  }

  else
  {
    ViewService.inferenceFeatureView.getter(v22);
    if (v2)
    {
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v8 = sub_1ABF237F4();
      sub_1ABA7AA24(v8, qword_1ED871B20);
      v9 = v2;
      v10 = sub_1ABF237D4();
      v11 = sub_1ABF24664();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        v14 = v2;
        v15 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v15;
        *v13 = v15;
        _os_log_impl(&dword_1ABA78000, v10, v11, "Failed to fetch inferenceFeatureView with error: %@", v12, 0xCu);
        sub_1ABA925A4(v13, &unk_1EB4D57F0, &qword_1ABF390C0);
        MEMORY[0x1AC5AB8B0](v13, -1, -1);
        MEMORY[0x1AC5AB8B0](v12, -1, -1);
      }

      else
      {
      }

      *a2 = 0;
      a2[1] = 0;
      a2[2] = 0;
    }

    else
    {
      v16 = v22[0];
      v17 = v22[1];
      v18 = v22[2];
      v19 = v4[1];
      v23 = *v4;
      v21 = v19;
      *v4 = v22[0];
      v4[1] = v17;
      v4[2] = v18;
      sub_1ABBD8A4C(v16, v17);
      sub_1ABBA19EC(v23, v21);
      *a2 = v16;
      a2[1] = v17;
      a2[2] = v18;
    }
  }

  return sub_1ABBD8A4C(v6, v5);
}

uint64_t sub_1ABBDA6A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService;
  if (*(*a1 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService))
  {
    v7 = *(*a1 + OBJC_IVAR____TtCC20IntelligencePlatform27EntityResolutionServicePool11GuardedData_rankingService);
  }

  else
  {
    v19 = 1;
    v8 = *(a2 + 24);
    type metadata accessor for EntityResolutionRankingService();
    swift_allocObject();
    v9 = EntityResolutionRankingService.init(config:viewService:)(&v19, v8);
    if (v3)
    {
      if (qword_1ED871B18 != -1)
      {
        sub_1ABA7D4EC();
        swift_once();
      }

      v10 = sub_1ABF237F4();
      sub_1ABA7AA24(v10, qword_1ED871B20);
      v11 = v3;
      v12 = sub_1ABF237D4();
      v13 = sub_1ABF24664();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        v16 = v3;
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_1ABA78000, v12, v13, "Failed to fetch Entity Resolution Ranking Service with error: %@", v14, 0xCu);
        sub_1ABA925A4(v15, &unk_1EB4D57F0, &qword_1ABF390C0);
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
        sub_1ABA7BDD8();
        MEMORY[0x1AC5AB8B0]();
      }

      else
      {
      }

      v7 = 0;
    }

    else
    {
      v7 = v9;
      *(v5 + v6) = v9;
    }
  }

  *a3 = v7;
}

id sub_1ABBDA894@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void *)@<X4>, void *a6@<X8>)
{
  v8 = *a1;
  v9 = *a3;
  v10 = *(*a1 + *a3);
  if (v10)
  {
    v11 = *(*a1 + *a3);
LABEL_3:
    *a6 = v11;
    return v10;
  }

  v14 = *a2;
  v16[0] = a4;
  v16[1] = 0xEF68706172676275;
  v16[2] = v14;
  v17 = *(a2 + 3);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  result = a5(v16);
  if (!v6)
  {
    v15 = *(v8 + v9);
    *(v8 + v9) = result;
    v11 = result;

    v10 = 0;
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1ABBDA9B8()
{
  sub_1ABA81488();
  sub_1ABAD219C(v1, v2);
  sub_1ABA8F2B0();
  v3 = sub_1ABA7D000();
  v4(v3);
  return v0;
}

uint64_t sub_1ABBDAA0C()
{
  sub_1ABA81488();
  v1(0);
  sub_1ABA8F2B0();
  v2 = sub_1ABA7D000();
  v3(v2);
  return v0;
}

uint64_t sub_1ABBDAA60()
{
  sub_1ABA81488();
  sub_1ABAD219C(v1, v2);
  sub_1ABA8F2B0();
  v3 = sub_1ABA7D000();
  v4(v3);
  return v0;
}

uint64_t sub_1ABBDAAB4()
{
  sub_1ABA81488();
  v1(0);
  sub_1ABA8F2B0();
  v2 = sub_1ABA7D000();
  v3(v2);
  return v0;
}

uint64_t sub_1ABBDAB5C(uint64_t result)
{
  if (result)
  {
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_1ABBDACF4(uint64_t a1)
{
  v2 = type metadata accessor for LemmatizedSubgraphView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1ABBDAD50(uint64_t a1, uint64_t a2)
{
  v12 = a2;
  v16 = sub_1ABAAB7C8(a1);
  v4 = 0;
  v15 = a1 & 0xC000000000000001;
  v14 = a1;
  v13 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v16 != v4)
  {
    if (v15)
    {
      v5 = MEMORY[0x1AC5AA170](v4, v14);
    }

    else
    {
      if (v4 >= *(v13 + 16))
      {
        goto LABEL_17;
      }

      v5 = *(v14 + 8 * v4 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      return;
    }

    v7 = type metadata accessor for ViewService();
    v8 = static ViewService.clientService.getter(v7);
    sub_1ABB68E60();
    if (v2)
    {

      return;
    }

    if (v18)
    {
      v9 = [v6 entityID];
      v10 = [v9 intValue];

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_18;
      }

      v23 = v6;
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);
      sub_1ABAD219C(&qword_1EB4D4CD8, &qword_1ABF47B28);
      sub_1ABF22464();
      sub_1ABD7E2F8(v17);

      swift_unknownObjectRelease();
      v22 = v19;
      sub_1ABAFEEA0(&v22);
      swift_unknownObjectRelease();
      v21 = v20;
      sub_1ABAFEEA0(&v21);
      v8 = v23;
    }

    else
    {
    }

    ++v4;
  }
}

id EntityResolutionTextClient.__allocating_init(for:viaXPC:)()
{
  sub_1ABBE1988();
  v0 = sub_1ABBE1974();
  return EntityResolutionTextClient.init(for:viaXPC:)(v0, v1);
}

id EntityResolutionTextClient.init(for:viaXPC:)(uint64_t a1, char a2)
{
  v4 = v2;
  if (a2)
  {
    v6 = type metadata accessor for EntityResolutionTextXPCService();
    swift_allocObject();
    v7 = sub_1ABBE3814(a1, 0);
    v8 = &off_1F207C688;
  }

  else
  {
    v6 = type metadata accessor for EntityResolutionTextInProcessService();
    v9 = objc_allocWithZone(v6);
    v10 = sub_1ABA8FFDC();
    v7 = sub_1ABBE19A8(v10, v11);
    if (v3)
    {
      v12 = type metadata accessor for EntityResolutionTextClient();
      return sub_1ABA97FA8(v12);
    }

    v8 = &off_1F2079850;
  }

  v16 = v6;
  v17 = v8;
  *&v15 = v7;
  sub_1ABA946C0(&v15, &v4[OBJC_IVAR___GDEntityResolutionTextClientInner_service]);
  *&v4[OBJC_IVAR___GDEntityResolutionTextClientInner_feedbackService] = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for EntityResolutionTextClient();
  return objc_msgSendSuper2(&v14, sel_init);
}

id EntityResolutionTextClient.__allocating_init(for:viaXPC:warmup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return EntityResolutionTextClient.init(for:viaXPC:warmup:)(a1, v5, v4);
}

id EntityResolutionTextClient.init(for:viaXPC:warmup:)(uint64_t a1, char a2, char a3)
{
  v5 = v3;
  if (a2)
  {
    if ((a3 & 1) == 0)
    {
      a1 = 0;
    }

    v8 = type metadata accessor for EntityResolutionTextXPCService();
    swift_allocObject();
    v9 = sub_1ABBE3814(a1, (a3 & 1) == 0);
    v10 = &off_1F207C688;
  }

  else
  {
    v8 = type metadata accessor for EntityResolutionTextInProcessService();
    v11 = objc_allocWithZone(v8);
    v9 = sub_1ABBE19A8(a1, a3 & 1);
    if (v4)
    {
      v12 = type metadata accessor for EntityResolutionTextClient();
      return sub_1ABA97FA8(v12);
    }

    v10 = &off_1F2079850;
  }

  v16 = v8;
  v17 = v10;
  *&v15 = v9;
  sub_1ABA946C0(&v15, &v5[OBJC_IVAR___GDEntityResolutionTextClientInner_service]);
  *&v5[OBJC_IVAR___GDEntityResolutionTextClientInner_feedbackService] = [objc_allocWithZone(type metadata accessor for FeedbackService()) init];
  v14.receiver = v5;
  v14.super_class = type metadata accessor for EntityResolutionTextClient();
  return objc_msgSendSuper2(&v14, sel_init);
}

id EntityResolutionTextClient.__allocating_init(viaXPC:)(uint64_t a1)
{
  v1 = a1;
  v2 = objc_allocWithZone(type metadata accessor for EntityResolutionTextClient());
  return EntityResolutionTextClient.init(for:viaXPC:warmup:)(0, v1, 0);
}

uint64_t EntityResolutionTextClient.__allocating_init(for:warmup:)()
{
  sub_1ABBE1988();
  v0 = sub_1ABBE1974();
  return EntityResolutionTextClient.init(for:warmup:)(v0, v1);
}

uint64_t EntityResolutionTextClient.init(for:warmup:)(uint64_t a1, char a2)
{
  v5 = objc_allocWithZone(type metadata accessor for EntityResolutionTextClient());
  EntityResolutionTextClient.init(for:viaXPC:warmup:)(a1, 0, a2);
  sub_1ABA96BC4();
  ObjectType = swift_getObjectType();
  sub_1ABA97FA8(ObjectType);
  return v2;
}

uint64_t sub_1ABBDB458()
{
  sub_1ABA7BBF8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1ABF23744();
  v1[4] = v3;
  sub_1ABA7BBD0(v3);
  v1[5] = v4;
  v1[6] = sub_1ABA96BDC();
  v1[7] = swift_task_alloc();
  v5 = sub_1ABF237F4();
  v1[8] = v5;
  sub_1ABA7BBD0(v5);
  v1[9] = v6;
  v1[10] = sub_1ABA7E314();
  v7 = sub_1ABF23774();
  v1[11] = v7;
  sub_1ABA7BBD0(v7);
  v1[12] = v8;
  v1[13] = sub_1ABA7E314();
  v9 = type metadata accessor for LogSignpost(0);
  sub_1ABA993BC(v9);
  v1[15] = sub_1ABA7E314();
  v10 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1ABBDB5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABAA10D4();
  sub_1ABA7AA24(v14, qword_1ED871EF8);
  v16 = sub_1ABA94978();
  v17(v16);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABAA1514())
  {
    sub_1ABA8179C();
    v18 = swift_slowAlloc();
    sub_1ABA96C68(v18);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v19, v20, v21, v22, v23, v24, v25, v26);
    v27 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v27);
  }

  sub_1ABAA3C54();
  v28 = sub_1ABA94960();
  v29(v28);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABA8FFDC();
  sub_1ABF237A4();
  v30 = sub_1ABAA52C0();
  v31(v30);
  v32 = sub_1ABA7C08C("ECR.TextClient.warmup");
  v33(v32);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  sub_1ABA7AA24(*(v15 + 64), qword_1ED871B20);
  sub_1ABF237D4();
  v34 = sub_1ABF24654();
  v35 = sub_1ABA84024();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = *(v15 + 16);
    v38 = swift_slowAlloc();
    *v38 = 134217984;
    *(v38 + 4) = v37;
    sub_1ABA9A3C8();
    _os_log_impl(v39, v40, v41, v42, v43, 0xCu);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA969A0();
  sub_1ABAA1BEC(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  v44 = sub_1ABA974EC();
  v45(v44);
  sub_1ABBDE930(v34);
  sub_1ABBA4F10(v34);

  sub_1ABA7BBE0();
  sub_1ABA8BF40();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABBDB8B0(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1ABBDB96C;

  return sub_1ABBDB458();
}

uint64_t sub_1ABBDB96C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_1ABF21BD4();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

void sub_1ABBDBAE8()
{
  sub_1ABA7BCA8();
  v35 = v3;
  v4 = sub_1ABF23744();
  sub_1ABA7BB64();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7C068();
  v34 = v8;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1ABA9939C();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7BC58();
  sub_1ABAA2C70();
  sub_1ABA7BB64();
  v32 = v13;
  v33 = v12;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  sub_1ABAB50F4();
  v31 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA809E8();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v10, qword_1ED871EF8);
  v15 = sub_1ABAB56AC();
  v16(v15);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v17 = sub_1ABF23764();
  v18 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v19 = swift_slowAlloc();
    sub_1ABA96044(v19);
    v20 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v17, v18, v20, "ECR.TextClient.warmup", "", v4, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  (*(v6 + 16))(v34, v2, v4);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABA7D1BC();
  v21 = sub_1ABF237A4();
  (*(v6 + 8))(v2, v4);
  sub_1ABA957E4("ECR.TextClient.warmup");
  *(v1 + 24) = v21;
  (*(v32 + 32))(v1 + *(v31 + 24), v0, v33);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v22 = sub_1ABAB68E0(v10, qword_1ED871B20);
  sub_1ABF24654();
  v23 = sub_1ABA817A8();
  if (os_log_type_enabled(v23, v24))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v35;
    sub_1ABA8D1E0();
    _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABAA4968(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  (*(v30 + 8))(v35, v22, v4);
  sub_1ABBDE930(v1);
  sub_1ABBA4F10(v1);
  sub_1ABA7BC90();
}

uint64_t sub_1ABBDBF64()
{
  sub_1ABA7BBF8();
  v1[2] = v0;
  v2 = sub_1ABF23744();
  v1[3] = v2;
  sub_1ABA7BBD0(v2);
  v1[4] = v3;
  v1[5] = sub_1ABA96BDC();
  v1[6] = swift_task_alloc();
  v4 = sub_1ABF237F4();
  v1[7] = v4;
  sub_1ABA7BBD0(v4);
  v1[8] = v5;
  v1[9] = sub_1ABA7E314();
  v6 = sub_1ABF23774();
  v1[10] = v6;
  sub_1ABA7BBD0(v6);
  v1[11] = v7;
  v1[12] = sub_1ABA7E314();
  v1[13] = type metadata accessor for LogSignpost(0);
  v1[14] = sub_1ABA7E314();
  v8 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1ABBDC0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v14[7], qword_1ED871EF8);
  v15 = sub_1ABA94978();
  v16(v15);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  v17 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABAA1514())
  {
    sub_1ABA8179C();
    v18 = swift_slowAlloc();
    sub_1ABA96C68(v18);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v19, v20, v21, v22, v23, v24, v25, v26);
    v27 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v27);
  }

  v56 = v14[12];

  v28 = sub_1ABA94960();
  v29(v28);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABA8FFDC();
  sub_1ABF237A4();
  v30 = sub_1ABAA52C0();
  v31(v30);
  v32 = sub_1ABA7C08C("ECR.TextClient.cooldown");
  v33(v32);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  sub_1ABA7AA24(v14[7], qword_1ED871B20);
  v34 = sub_1ABF237D4();
  sub_1ABF24654();
  v35 = sub_1ABA84024();
  if (os_log_type_enabled(v35, v36))
  {
    sub_1ABA8179C();
    v37 = swift_slowAlloc();
    sub_1ABA7ACCC(v37);
    sub_1ABA9A3C8();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v43 = v14[14];
  v44 = v14[2];

  v45 = *(v44 + OBJC_IVAR___GDEntityResolutionTextClientInner_service + 24);
  v46 = *(v44 + OBJC_IVAR___GDEntityResolutionTextClientInner_service + 32);
  sub_1ABA93E20((v44 + OBJC_IVAR___GDEntityResolutionTextClientInner_service), v45);
  (*(v46 + 16))(v45, v46);
  sub_1ABBDE930(v43);
  sub_1ABBA4F10(v43);

  sub_1ABA7BBE0();
  sub_1ABA8BF40();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, v56, a11, a12, a13, a14);
}

uint64_t sub_1ABBDC3F4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1ABBE1950;

  return sub_1ABBDBF64();
}

void sub_1ABBDC49C()
{
  sub_1ABA7BCA8();
  v43 = v0;
  v42 = sub_1ABF23744();
  sub_1ABA7BB64();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C068();
  v41 = v5;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  sub_1ABAA2C70();
  sub_1ABA7BB64();
  v39 = v14;
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v38 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7BC58();
  sub_1ABAB50F4();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v9, qword_1ED871EF8);
  v19 = sub_1ABAA12D8();
  v20(v19);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v21 = sub_1ABF23764();
  v22 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v23 = swift_slowAlloc();
    sub_1ABA96044(v23);
    v24 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v21, v22, v24, "ECR.TextClient.cooldown", "", v11, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v25 = v42;
  (*(v3 + 16))(v41, v8, v42);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  v26 = sub_1ABF237A4();
  (*(v3 + 8))(v8, v25);
  *v1 = "ECR.TextClient.cooldown";
  *(v1 + 8) = 23;
  *(v1 + 16) = 2;
  *(v1 + 24) = v26;
  (*(v39 + 32))(v1 + *(v38 + 24), v17, v40);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v27 = sub_1ABAB68E0(v9, qword_1ED871B20);
  sub_1ABF24654();
  v28 = sub_1ABA817A8();
  if (os_log_type_enabled(v28, v29))
  {
    sub_1ABA8179C();
    v30 = swift_slowAlloc();
    sub_1ABA96044(v30);
    sub_1ABA8D1E0();
    _os_log_impl(v31, v32, v33, v34, v35, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  v36 = *(v43 + OBJC_IVAR___GDEntityResolutionTextClientInner_service + 24);
  v37 = *(v43 + OBJC_IVAR___GDEntityResolutionTextClientInner_service + 32);
  sub_1ABA93E20((v43 + OBJC_IVAR___GDEntityResolutionTextClientInner_service), v36);
  (*(v37 + 16))(v36, v37);
  sub_1ABBDE930(v1);
  sub_1ABBA4F10(v1);
  sub_1ABA7BC90();
}

uint64_t sub_1ABBDC910()
{
  sub_1ABA7BBF8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1ABF23744();
  v1[4] = v3;
  sub_1ABA7BBD0(v3);
  v1[5] = v4;
  v1[6] = sub_1ABA96BDC();
  v1[7] = swift_task_alloc();
  v5 = sub_1ABF237F4();
  v1[8] = v5;
  sub_1ABA7BBD0(v5);
  v1[9] = v6;
  v1[10] = sub_1ABA7E314();
  v7 = sub_1ABF23774();
  v1[11] = v7;
  sub_1ABA7BBD0(v7);
  v1[12] = v8;
  v1[13] = sub_1ABA7E314();
  v9 = type metadata accessor for LogSignpost(0);
  sub_1ABA993BC(v9);
  v1[15] = sub_1ABA7E314();
  v10 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1ABBDCA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABAA10D4();
  sub_1ABA7AA24(v14, qword_1ED871EF8);
  v16 = sub_1ABA94978();
  v17(v16);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABAA1514())
  {
    sub_1ABA8179C();
    v18 = swift_slowAlloc();
    sub_1ABA96C68(v18);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v19, v20, v21, v22, v23, v24, v25, v26);
    v27 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v27);
  }

  sub_1ABAA3C54();
  v28 = sub_1ABA94960();
  v29(v28);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABA8FFDC();
  sub_1ABF237A4();
  v30 = sub_1ABAA52C0();
  v31(v30);
  v32 = sub_1ABA7C08C("ECR.TextClient.resolve");
  v33(v32);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  sub_1ABA7AA24(*(v15 + 64), qword_1ED871B20);
  sub_1ABF237D4();
  v34 = sub_1ABF24654();
  v35 = sub_1ABA84024();
  if (os_log_type_enabled(v35, v36))
  {
    sub_1ABA8179C();
    v37 = swift_slowAlloc();
    sub_1ABA7ACCC(v37);
    sub_1ABA9A3C8();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA969A0();
  sub_1ABAA1BEC(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  v43 = sub_1ABA974EC();
  v44(v43);
  v45 = sub_1ABA7D1BC();
  sub_1ABBDE930(v45);
  sub_1ABBA4F10(v34);

  sub_1ABA8BF40();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABBDCCF4(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1ABBDCDB8;

  return sub_1ABBDC910();
}

uint64_t sub_1ABBDCDB8(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v8 = *v2;
  sub_1ABA7BBC0();
  *v9 = v8;

  v10 = *(v5 + 32);
  if (v3)
  {
    sub_1ABF21BD4();

    (v10)[2](v10, 0, a1);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 32), a1, 0);
    _Block_release(v10);
  }

  v11 = *(v8 + 8);

  return v11();
}

void sub_1ABBDCF64()
{
  sub_1ABA7BCA8();
  v40 = v1;
  sub_1ABF23744();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7C068();
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1ABA9939C();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  sub_1ABAA2C70();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7BC58();
  v9 = v8 - v7;
  type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA809E8();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABA7AA24(v4, qword_1ED871EF8);
  v11 = sub_1ABAB56AC();
  v12(v11);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v13 = sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    sub_1ABA8179C();
    v14 = swift_slowAlloc();
    sub_1ABA96C68(v14);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v15, v16, v17, v18, v19, v20, v21, v22);
    v23 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v23);
  }

  v24 = sub_1ABA977A0();
  v25(v24);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABA7D1BC();
  sub_1ABF237A4();
  v26 = sub_1ABBE1960();
  v27(v26);
  sub_1ABA957E4("ECR.TextClient.resolve");
  v28 = sub_1ABAB5A5C();
  v29(v28);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  v30 = sub_1ABAB68E0(v4, qword_1ED871B20);
  sub_1ABF24654();
  v31 = sub_1ABA817A8();
  if (os_log_type_enabled(v31, v32))
  {
    sub_1ABA8179C();
    v33 = swift_slowAlloc();
    sub_1ABA96044(v33);
    sub_1ABA8D1E0();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABAA4968(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  (*(v39 + 24))(v40, v30, v9);
  sub_1ABA96BC4();
  sub_1ABBDE930(v0);
  sub_1ABBA4F10(v0);
  sub_1ABAB5854();
  sub_1ABA7BC90();
}

uint64_t sub_1ABBDD3A0()
{
  sub_1ABA7BBF8();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1ABF23744();
  v1[4] = v3;
  sub_1ABA7BBD0(v3);
  v1[5] = v4;
  v1[6] = sub_1ABA96BDC();
  v1[7] = swift_task_alloc();
  v5 = sub_1ABF237F4();
  v1[8] = v5;
  sub_1ABA7BBD0(v5);
  v1[9] = v6;
  v1[10] = sub_1ABA7E314();
  v7 = sub_1ABF23774();
  v1[11] = v7;
  sub_1ABA7BBD0(v7);
  v1[12] = v8;
  v1[13] = sub_1ABA7E314();
  v9 = type metadata accessor for LogSignpost(0);
  sub_1ABA993BC(v9);
  v1[15] = sub_1ABA7E314();
  v10 = sub_1ABA83840();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1ABBDD508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABA88600();
  sub_1ABA827D0();
  if (qword_1ED871F20 != -1)
  {
    sub_1ABA7D628();
    swift_once();
  }

  sub_1ABAA10D4();
  sub_1ABA7AA24(v14, qword_1ED871EF8);
  v16 = sub_1ABA94978();
  v17(v16);
  sub_1ABA977C0();
  sub_1ABF23764();
  sub_1ABF23714();
  sub_1ABF23764();
  sub_1ABF24714();
  if (sub_1ABAA1514())
  {
    sub_1ABA8179C();
    v18 = swift_slowAlloc();
    sub_1ABA96C68(v18);
    sub_1ABF23724();
    sub_1ABA840A8();
    _os_signpost_emit_with_name_impl(v19, v20, v21, v22, v23, v24, v25, v26);
    v27 = sub_1ABA7E368();
    MEMORY[0x1AC5AB8B0](v27);
  }

  sub_1ABAA3C54();
  v28 = sub_1ABA94960();
  v29(v28);
  sub_1ABF237B4();
  sub_1ABA90758();
  swift_allocObject();
  sub_1ABA8FFDC();
  sub_1ABF237A4();
  v30 = sub_1ABAA52C0();
  v31(v30);
  v32 = sub_1ABA7C08C("ECR.TextClient.resolveBatch");
  v33(v32);
  if (qword_1ED871B18 != -1)
  {
    sub_1ABA7D4EC();
    swift_once();
  }

  sub_1ABA7AA24(*(v15 + 64), qword_1ED871B20);
  sub_1ABF237D4();
  v34 = sub_1ABF24654();
  v35 = sub_1ABA84024();
  if (os_log_type_enabled(v35, v36))
  {
    sub_1ABA8179C();
    v37 = swift_slowAlloc();
    sub_1ABA7ACCC(v37);
    sub_1ABA9A3C8();
    _os_log_impl(v38, v39, v40, v41, v42, 2u);
    sub_1ABA7BDD8();
    MEMORY[0x1AC5AB8B0]();
  }

  sub_1ABA969A0();
  sub_1ABAA1BEC(OBJC_IVAR___GDEntityResolutionTextClientInner_service);
  v43 = sub_1ABA974EC();
  v44(v43);
  v45 = sub_1ABA7D1BC();
  sub_1ABBDE930(v45);
  sub_1ABBA4F10(v34);

  sub_1ABA8BF40();

  return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
}