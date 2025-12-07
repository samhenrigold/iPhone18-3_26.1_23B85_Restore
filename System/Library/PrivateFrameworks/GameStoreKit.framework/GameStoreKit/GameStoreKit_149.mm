uint64_t sub_24F54BC18@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v36 - v6;
  v8 = [a1 identifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_24F92B0D8();
    v36 = v11;
    v37 = v10;
  }

  else
  {
    v36 = 0;
    v37 = 0;
  }

  v12 = [a1 name];
  if (v12)
  {
    v13 = v12;
    v14 = sub_24F92B0D8();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 image];
  if (v17)
  {
    v18 = v17;
    v19 = sub_24F92B0D8();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 description];
  v23 = sub_24F92B0D8();
  v25 = v24;

  v26 = [a1 timeStamp];
  if (v26)
  {
    v27 = v26;
    sub_24F91F608();

    v28 = sub_24F91F648();
    (*(*(v28 - 8) + 56))(v7, 0, 1, v28);
  }

  else
  {
    v29 = sub_24F91F648();
    (*(*(v29 - 8) + 56))(v7, 1, 1, v29);
  }

  v30 = [a1 progress];
  v31 = type metadata accessor for ActivityFeedItemRelationshipAchievement(0);
  v32 = (a2 + v31[7]);
  v33 = (a2 + v31[8]);
  v34 = (a2 + v31[9]);
  *v32 = v37;
  v32[1] = v36;
  *v33 = v14;
  v33[1] = v16;
  *v34 = v19;
  v34[1] = v21;
  *a2 = v23;
  a2[1] = v25;
  sub_24E6009C8(v7, a2 + v31[5], &unk_27F22EC30, &qword_24F939880);
  *(a2 + v31[6]) = v30;
  return (*(*(v31 - 1) + 56))(a2, 0, 1, v31);
}

uint64_t sub_24F54BED4@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247938, &qword_24FA07D90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v55 - v5;
  v66 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0);
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v61 = &v55 - v10;
  v11 = [a1 leaderboardType];
  if (v11 == 2)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (v11 == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v14 = [a1 scores];
  if (!v14)
  {
    goto LABEL_29;
  }

  v15 = v14;
  sub_24F54C4B0();
  v16 = sub_24F92B5A8();

  v17 = [a1 leaderboardInternal];
  if (!v17)
  {

LABEL_29:
    v29 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard(0);
    v30 = *(*(v29 - 8) + 56);

    return v30(a2, 1, 1, v29);
  }

  v18 = v17;
  v62 = v16;
  v19 = [objc_allocWithZone(MEMORY[0x277D0C0A0]) initWithInternalRepresentation_];
  if (!v19)
  {

    goto LABEL_29;
  }

  v56 = v19;
  if (v62 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v57 = v18;
    v58 = a1;
    v59 = v13;
    v60 = a2;
    if (!i)
    {
      break;
    }

    a2 = 0;
    v13 = 0;
    v18 = v62;
    v64 = v62 & 0xC000000000000001;
    v21 = v62 & 0xFFFFFFFFFFFFFF8;
    v22 = (v63 + 48);
    v23 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v64)
      {
        v24 = MEMORY[0x253052270](a2, v18);
      }

      else
      {
        if (a2 >= *(v21 + 16))
        {
          goto LABEL_44;
        }

        v24 = *(v18 + a2 + 4);
      }

      v25 = v24;
      a1 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      v67 = v24;
      sub_24F54C4FC(&v67, v6);

      if ((*v22)(v6, 1, v66) == 1)
      {
        sub_24E601704(v6, &qword_27F247938, &qword_24FA07D90);
      }

      else
      {
        v26 = v61;
        sub_24F54C918(v6, v61, type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore);
        sub_24F54C918(v26, v65, type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_24E616E68(0, v23[2] + 1, 1, v23);
        }

        v28 = v23[2];
        v27 = v23[3];
        if (v28 >= v27 >> 1)
        {
          v23 = sub_24E616E68((v27 > 1), v28 + 1, 1, v23);
        }

        v23[2] = v28 + 1;
        sub_24F54C918(v65, v23 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v28, type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore);
        v18 = v62;
      }

      ++a2;
      if (a1 == i)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_33:

  v32 = v58;
  v33 = [v58 identifier];
  if (v33)
  {
    v34 = v33;
    v35 = sub_24F92B0D8();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = v60;
  v39 = [v32 name];
  if (v39)
  {
    v40 = v39;
    v41 = sub_24F92B0D8();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = [v32 image];
  if (v44)
  {
    v45 = v44;
    v46 = sub_24F92B0D8();
    v48 = v47;
  }

  else
  {
    v46 = 0;
    v48 = 0;
  }

  v49 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard(0);
  v50 = v49[6];
  sub_24F6BA118(v56, (v38 + v50));

  v51 = type metadata accessor for Leaderboard(0);
  (*(*(v51 - 8) + 56))(v38 + v50, 0, 1, v51);
  v52 = (v38 + v49[7]);
  v53 = (v38 + v49[8]);
  v54 = (v38 + v49[9]);
  *v52 = v35;
  v52[1] = v37;
  *v53 = v41;
  v53[1] = v43;
  *v54 = v46;
  v54[1] = v48;
  *v38 = v23;
  *(v38 + 8) = v59;
  return (*(*(v49 - 1) + 56))(v38, 0, 1, v49);
}

unint64_t sub_24F54C4B0()
{
  result = qword_27F247940;
  if (!qword_27F247940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F247940);
  }

  return result;
}

uint64_t sub_24F54C4FC@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247948, &qword_24FA07D98);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v43[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v43[-v12];
  v14 = *a1;
  v15 = [*a1 player];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 playerInternal];
    if (v17)
    {
      sub_24F3FAC70(v17, 0, 0, v6);

      sub_24F54C918(v6, v13, type metadata accessor for Player);
      v18 = type metadata accessor for ActivityFeedItemRelationshipPlayer(0);
      (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
      goto LABEL_6;
    }

    v15 = 0;
  }

  v19 = type metadata accessor for ActivityFeedItemRelationshipPlayer(v15);
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
LABEL_6:
  sub_24F54C8A8(v13, v9);
  v20 = [v14 score];
  if (v20)
  {
    v21 = v20;
    v22 = sub_24F92B0D8();
    v46 = v23;
    v47 = v22;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v45 = [v14 rank];
  v44 = [v14 gained];
  v24 = [v14 message];
  if (v24)
  {
    v25 = v24;
    v26 = sub_24F92B0D8();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = [v14 symbol];
  if (v29)
  {
    v30 = v29;
    v31 = sub_24F92B0D8();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  sub_24E601704(v13, &qword_27F247948, &qword_24FA07D98);
  v34 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard.LeaderboardScore(0);
  v35 = (a2 + v34[10]);
  *v35 = 0;
  v35[1] = 0;
  v36 = (a2 + v34[11]);
  *v36 = 0;
  v36[1] = 0;
  v37 = (a2 + v34[12]);
  *v37 = 0;
  v37[1] = 0;
  sub_24E6009C8(v9, a2, &qword_27F247948, &qword_24FA07D98);
  v38 = (a2 + v34[5]);
  v39 = v46;
  *v38 = v47;
  v38[1] = v39;
  *(a2 + v34[6]) = v45;
  *(a2 + v34[7]) = v44;
  v40 = (a2 + v34[8]);
  *v40 = v26;
  v40[1] = v28;
  v41 = (a2 + v34[9]);
  *v41 = v31;
  v41[1] = v33;
  return (*(*(v34 - 1) + 56))(a2, 0, 1, v34);
}

uint64_t sub_24F54C8A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247948, &qword_24FA07D98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F54C918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F54C9A4(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F54CAF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GroupedTable(uint64_t a1)
{
  result = qword_27F247950;
  if (!qword_27F247950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F54CC7C(uint64_t a1)
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
        sub_24F54CDE0(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24F54CDE0(319, &qword_27F247960, type metadata accessor for GroupedTableRow, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F54CDE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F54CE44@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_24F929B38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226A68, &unk_24FA2E790);
  v12 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v14 = &v26 - v13;
  sub_24F929B18();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92ADC8();
  v15 = sub_24E66C1E0();
  sub_24F925E88();
  sub_24E601704(v7, &qword_27F213E68, &unk_24F93BC80);
  (*(v9 + 8))(v11, v8);
  v16 = a1[3];
  v17 = a1[4];
  v18 = __swift_project_boxed_opaque_existential_1(a1, v16);
  v37[3] = v16;
  v37[4] = *(v17 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v18, v16);
  v20 = sub_24F9275D8();
  v22 = v21;
  v23 = sub_24F926CA8();
  v29 = v37;
  v30 = a2;
  v31 = 0;
  v32 = v20;
  v33 = v22;
  v34 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238950, &unk_24F9C5450);
  v35 = &type metadata for GSKComponentView;
  v36 = v15;
  swift_getOpaqueTypeConformance2();
  sub_24F09B638();
  sub_24F54F998();
  v24 = v27;
  sub_24F926B08();

  (*(v12 + 8))(v14, v24);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_24F54D1AC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_24F929B38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238968, &qword_24F9C54C0);
  v13 = *(v12 - 8);
  v29 = v12;
  v30 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  sub_24F929B18();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92ADC8();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C5F8, &qword_24F955EE8);
  v17 = sub_24F550040(&qword_27F21C608, &qword_27F21C5F8, &qword_24F955EE8, sub_24E66C1E0);
  sub_24F925E88();
  sub_24E601704(v7, &qword_27F213E68, &unk_24F93BC80);
  (*(v9 + 8))(v11, v8);
  v18 = a1[3];
  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
  v40[3] = v18;
  v40[4] = *(v19 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v20, v18);
  v22 = sub_24F9275D8();
  v24 = v23;
  v25 = sub_24F926CA8();
  v32 = v40;
  v33 = a2;
  v34 = 0;
  v35 = v22;
  v36 = v24;
  v37 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238970, &unk_24F9ECF90);
  v38 = v16;
  v39 = v17;
  swift_getOpaqueTypeConformance2();
  sub_24F09B638();
  sub_24F3980BC();
  v26 = v29;
  sub_24F926B08();

  (*(v30 + 8))(v15, v26);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_24F54D550@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_24F929B38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238958, &qword_24F9C54B0);
  v13 = *(v12 - 8);
  v29 = v12;
  v30 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  sub_24F929B18();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F92ADC8();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244380, &unk_24F9FAF00);
  v17 = sub_24F550040(&qword_27F244388, &qword_27F244380, &unk_24F9FAF00, sub_24F463B20);
  sub_24F925E88();
  sub_24E601704(v7, &qword_27F213E68, &unk_24F93BC80);
  (*(v9 + 8))(v11, v8);
  v18 = a1[3];
  v19 = a1[4];
  v20 = __swift_project_boxed_opaque_existential_1(a1, v18);
  v40[3] = v18;
  v40[4] = *(v19 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v20, v18);
  v22 = sub_24F9275D8();
  v24 = v23;
  v25 = sub_24F926CA8();
  v32 = v40;
  v33 = a2;
  v34 = 0;
  v35 = v22;
  v36 = v24;
  v37 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238960, &qword_24F9C54B8);
  v38 = v16;
  v39 = v17;
  swift_getOpaqueTypeConformance2();
  sub_24F09B638();
  sub_24F463BAC();
  v26 = v29;
  sub_24F926B08();

  (*(v30 + 8))(v15, v26);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_24F54D8F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247A08, &qword_24FA07FF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F54FA94();
  sub_24F92D128();
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v16 = 1;
    sub_24F92CD18();
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v9 = type metadata accessor for GroupedTable(0);
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v13 = 4;
    sub_24F929608();
    sub_24F54FCDC(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v12 = *(v3 + *(v9 + 36));
    v11[15] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2479A8, &qword_24FA07F88);
    sub_24F54FAE8(&qword_27F247A10, &qword_27F247A18, &unk_24FA19418, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F54DC8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2479E8, &unk_24FA07FE8);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v34 - v9;
  v11 = type metadata accessor for GroupedTable(0);
  MEMORY[0x28223BE20](v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 3) = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  *(v13 + 4) = 0u;
  *(v13 + 10) = 0;
  v42 = v13 + 48;
  sub_24E61DA68(&v45, (v13 + 48), qword_27F21B590, &unk_24F93BE30);
  v14 = v11[7];
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v41 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = v11[8];
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v43 = v17;
  v19(&v13[v17], 1, 1, v18);
  v20 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24F54FA94();
  v39 = v10;
  v21 = v40;
  sub_24F92D108();
  if (v21)
  {
    v22 = v41;
    v23 = v42;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v24 = v43;
    sub_24E601704(v23, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v13[v22], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v13[v24], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v34[1] = v18;
    v40 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v48 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v25 = v46;
    *v13 = v45;
    *(v13 + 1) = v25;
    *(v13 + 4) = v47;
    LOBYTE(v45) = 1;
    v26 = sub_24F92CC38();
    v27 = v41;
    v28 = v42;
    v13[40] = v26 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v48 = 2;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v29 = v37;
    sub_24E61DA68(&v45, v28, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v45) = 3;
    sub_24E65CAA0();
    v30 = v40;
    sub_24F92CC68();
    sub_24E61DA68(v30, &v13[v27], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v45) = 4;
    sub_24F54FCDC(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v31 = v36;
    sub_24F92CC18();
    sub_24E61DA68(v31, &v13[v43], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2479A8, &qword_24FA07F88);
    v48 = 5;
    sub_24F54FAE8(&qword_27F2479F8, &qword_27F247A00, &unk_24FA19440, MEMORY[0x277D83978]);
    v32 = v39;
    sub_24F92CC68();
    (*(v29 + 8))(v32, v38);
    *&v13[v11[9]] = v45;
    sub_24F54F930(v13, v35, type metadata accessor for GroupedTable);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_24F54FB84(v13);
  }
}

uint64_t sub_24F54E378()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x736D657469;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6469766944736168;
  if (v1 != 1)
  {
    v5 = 0x6575676573;
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

uint64_t sub_24F54E430@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F54FE44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F54E458(uint64_t a1)
{
  v2 = sub_24F54FA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F54E494(uint64_t a1)
{
  v2 = sub_24F54FA94();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F54E4D0@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 48, v5, qword_27F24EC90, &unk_24F93C1D0);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24F54E528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 28), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F54E668@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_24F925068();
  MEMORY[0x28223BE20](v3);
  sub_24F924C88();
  sub_24F54FCDC(&qword_27F2150C0, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_24F92D1D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247978, &qword_24FA07F38);
  sub_24F54F4A0();
  sub_24F9233F8();
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247998, &qword_24FA07F48) + 36);
  v5 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v6 = type metadata accessor for GradientBackground(0);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  result = swift_getKeyPath();
  *v4 = result;
  *(v4 + 8) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0x403A000000000000;
  *(v4 + 40) = 256;
  return result;
}

uint64_t sub_24F54E830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[0] = a2;
  v3 = type metadata accessor for GroupedTable(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2479A0, &qword_24FA07F80);
  MEMORY[0x28223BE20](v7);
  v12[1] = *(a1 + *(v4 + 44));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2479A8, &qword_24FA07F88);
  sub_24E602068(&qword_27F2479B0, &qword_27F2479A8, &qword_24FA07F88, MEMORY[0x277D83980]);
  sub_24F921BA8();
  swift_getKeyPath();
  sub_24F54F930(a1, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupedTable);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_24F54F7A4(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_24F54F808;
  *(v10 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247990, &qword_24FA07F40);
  sub_24E602068(&qword_27F2479B8, &qword_27F2479A0, &qword_24FA07F80, MEMORY[0x277D7EC38]);
  sub_24E602068(&qword_27F247988, &qword_27F247990, &qword_24FA07F40, MEMORY[0x277CE14C0]);
  return sub_24F927228();
}

uint64_t sub_24F54EAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v67 = a3;
  v60 = a1;
  v72 = a4;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223E08, &qword_24F96F880);
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v59 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F5C0, &qword_24F99CAC8);
  MEMORY[0x28223BE20](v6 - 8);
  v71 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v58 - v9;
  v10 = sub_24F929888();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2479C8, &qword_24FA07FD0);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v18 = &v58 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2479D0, &qword_24FA07FD8);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v65 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v73 = &v58 - v21;
  v22 = type metadata accessor for GroupedTableRow(0);
  v80 = v22;
  v23 = sub_24F54FCDC(&qword_27F21AC38, type metadata accessor for GroupedTableRow, &unk_24FA194B8);
  v81 = v23;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v78);
  sub_24F54F930(a2, boxed_opaque_existential_1, type metadata accessor for GroupedTableRow);
  type metadata accessor for GSKComponentContentBuilder(0);
  sub_24F54FCDC(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);
  *&v77 = sub_24F923598();
  BYTE8(v77) = v25 & 1;
  *(&v75 + 1) = v22;
  v76 = v23;
  v26 = v60;
  v27 = __swift_allocate_boxed_opaque_existential_1(&v74);
  sub_24F54F930(a2, v27, type metadata accessor for GroupedTableRow);
  v61 = v18;
  sub_24F54CE44(&v74, v26, v18);
  sub_24E88F154(&v77);
  __swift_destroy_boxed_opaque_existential_1(&v74);
  v77 = 0u;
  v78 = 0u;
  v74 = 0u;
  v75 = 0u;

  sub_24F929828();

  sub_24E601704(&v74, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(&v77, &qword_27F2129B0, &unk_24F945320);
  *&v74 = v26;
  sub_24E9B5BEC();
  v28 = sub_24F92C638();
  *(&v78 + 1) = MEMORY[0x277D837D0];
  *&v77 = v28;
  *(&v77 + 1) = v29;
  sub_24F929868();
  v30 = *(v11 + 8);
  v30(v13, v10);
  sub_24E601704(&v77, &qword_27F2129B0, &unk_24F945320);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226A68, &unk_24FA2E790);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238950, &unk_24F9C5450);
  v33 = sub_24E66C1E0();
  *&v77 = &type metadata for GSKComponentView;
  *(&v77 + 1) = v33;
  v34 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v26;
  v37 = sub_24F09B638();
  v38 = sub_24F54F998();
  *&v77 = v31;
  *(&v77 + 1) = &type metadata for IsDebugImpressionIndexOverlayEnabled;
  *&v78 = v32;
  *(&v78 + 1) = OpaqueTypeConformance2;
  v79 = v37;
  v80 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v63;
  v40 = v61;
  sub_24F925EE8();
  v30(v16, v10);
  (*(v62 + 8))(v40, v39);
  v41 = v67;
  v43 = v69;
  v42 = v70;
  if (*(v67 + 40) == 1)
  {
    v34 = 1;
    if (*(*(v41 + *(type metadata accessor for GroupedTable(0) + 36)) + 16) - 1 != v36)
    {
      v44 = v59;
      sub_24F9271E8();
      v45 = sub_24F925838();
      v46 = v44 + *(v42 + 36);
      *v46 = v45;
      *(v46 + 8) = 0u;
      *(v46 + 24) = 0u;
      *(v46 + 40) = 1;
      sub_24E6009C8(v44, v43, &qword_27F223E08, &qword_24F96F880);
      v34 = 0;
    }
  }

  (*(v68 + 56))(v43, v34, 1, v42);
  v47 = v64;
  v48 = v43;
  v49 = *(v64 + 16);
  v50 = v65;
  v51 = v73;
  v52 = v66;
  v49(v65, v73, v66);
  v53 = v71;
  sub_24E60169C(v48, v71, &qword_27F22F5C0, &qword_24F99CAC8);
  v54 = v72;
  v49(v72, v50, v52);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2479E0, &qword_24FA07FE0);
  sub_24E60169C(v53, &v54[*(v55 + 48)], &qword_27F22F5C0, &qword_24F99CAC8);
  sub_24E601704(v48, &qword_27F22F5C0, &qword_24F99CAC8);
  v56 = *(v47 + 8);
  v56(v51, v52);
  sub_24E601704(v53, &qword_27F22F5C0, &qword_24F99CAC8);
  return (v56)(v50, v52);
}

uint64_t sub_24F54F308(uint64_t a1)
{
  sub_24F47D640();

  return sub_24F9218E8();
}

unint64_t sub_24F54F350()
{
  result = qword_27F247968;
  if (!qword_27F247968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247968);
  }

  return result;
}

unint64_t sub_24F54F4A0()
{
  result = qword_27F247980;
  if (!qword_27F247980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247978, &qword_24FA07F38);
    sub_24E602068(&qword_27F247988, &qword_27F247990, &qword_24FA07F40, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247980);
  }

  return result;
}

double sub_24F54F558@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24E60169C(a1, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_24F54F5B0()
{
  v1 = type metadata accessor for GroupedTable(0);
  v2 = (v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)));
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 9))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 6);
  }

  v3 = *(v1 + 28);
  v4 = sub_24F92A6D8();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(&v2[v3], 1, v4))
  {
    (*(v5 + 8))(&v2[v3], v4);
  }

  v6 = *(v1 + 32);
  v7 = sub_24F929608();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(&v2[v6], 1, v7))
  {
    (*(v8 + 8))(&v2[v6], v7);
  }

  return swift_deallocObject();
}

uint64_t sub_24F54F7A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupedTable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F54F808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(type metadata accessor for GroupedTable(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24F54EAFC(a1, a2, v8, a3);
}

uint64_t sub_24F54F890()
{

  return swift_deallocObject();
}

uint64_t sub_24F54F8C8(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2479C0, &qword_24FA07FC8);
  return v3(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_24F54F930(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F54F998()
{
  result = qword_27F2479D8;
  if (!qword_27F2479D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238950, &unk_24F9C5450);
    sub_24E66C1E0();
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F2387B8, &qword_27F2387A8, &qword_24F9CFD50, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2479D8);
  }

  return result;
}

unint64_t sub_24F54FA94()
{
  result = qword_27F2479F0;
  if (!qword_27F2479F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2479F0);
  }

  return result;
}

uint64_t sub_24F54FAE8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2479A8, &qword_24FA07F88);
    sub_24F54FCDC(a2, type metadata accessor for GroupedTableRow, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F54FB84(uint64_t a1)
{
  v2 = type metadata accessor for GroupedTable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F54FBF4()
{
  result = qword_27F247A20;
  if (!qword_27F247A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247998, &qword_24FA07F48);
    sub_24E602068(&qword_27F247A28, &qword_27F247A30, &qword_24FA08010, MEMORY[0x277CDF340]);
    sub_24F54FCDC(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247A20);
  }

  return result;
}

uint64_t sub_24F54FCDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F54FD28()
{
  result = qword_27F247A38;
  if (!qword_27F247A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247A38);
  }

  return result;
}

unint64_t sub_24F54FD80()
{
  result = qword_27F247A40;
  if (!qword_27F247A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247A40);
  }

  return result;
}

unint64_t sub_24F54FDD8()
{
  result = qword_27F247A48;
  if (!qword_27F247A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247A48);
  }

  return result;
}

uint64_t sub_24F54FE44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6469766944736168 && a2 == 0xEB00000000737265 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F550040(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F5500F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  sub_24F30B990();
  sub_24F924868();
  result = v11;
  if (v11 == 4)
  {
    sub_24F9246B8();
    sub_24F924658();
    type metadata accessor for ShelfGeometryEnvironmentValues(0);
    sub_24F550A3C(&qword_27F21ECE8, type metadata accessor for ShelfGeometryEnvironmentValues, &unk_24F9C6B88);
    v7 = sub_24F924888();
    if (v7)
    {
      v8 = v7;
      swift_getKeyPath();
      v10 = v8;
      sub_24F91FD88();

      v9 = *(v8 + 51);
    }

    else
    {
      v9 = 0;
    }

    return sub_24F5502F0(v5, v2, v9);
  }

  return result;
}

uint64_t sub_24F55028C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24F550B04();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24F5502F0(uint64_t a1, uint64_t a2, int a3)
{
  v42 = a3;
  v52 = a1;
  v4 = sub_24F925218();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v43 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v7);
  v49 = &v38[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v38[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v12 - 8);
  v50 = &v38[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v48 = &v38[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v38[-v17];
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v38[-v21];
  v23 = v5[13];
  v46 = *MEMORY[0x277CE0558];
  v45 = v23;
  v23(&v38[-v21], v20);
  v44 = v5[7];
  v44(v22, 0, 1, v4);
  v47 = v7;
  v24 = *(v7 + 48);
  sub_24EDEBCCC(a2, v11);
  sub_24EDEBCCC(v22, &v11[v24]);
  v51 = v5;
  v25 = v5[6];
  if (v25(v11, 1, v4) == 1)
  {
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    if (v25(&v11[v24], 1, v4) == 1)
    {
      sub_24E601704(v11, &qword_27F215598, &qword_24F945EF0);
LABEL_17:
      sub_24E601704(a2, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v52, &qword_27F215598, &qword_24F945EF0);
      return 2;
    }

    goto LABEL_6;
  }

  sub_24EDEBCCC(v11, v18);
  v41 = v25;
  if (v25(&v11[v24], 1, v4) == 1)
  {
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    (v51[1])(v18, v4);
    v25 = v41;
LABEL_6:
    sub_24E601704(v11, &unk_27F254F20, &qword_24F940790);
    goto LABEL_7;
  }

  v40 = a2;
  v31 = v51;
  v32 = &v11[v24];
  v33 = v43;
  (v51[4])(v43, v32, v4);
  sub_24F550A3C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v39 = sub_24F92AFF8();
  v34 = v31[1];
  v34(v33, v4);
  sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
  v34(v18, v4);
  a2 = v40;
  sub_24E601704(v11, &qword_27F215598, &qword_24F945EF0);
  v25 = v41;
  if (v39)
  {
    goto LABEL_17;
  }

LABEL_7:
  v26 = v48;
  v45(v48, v46, v4);
  v44(v26, 0, 1, v4);
  v27 = *(v47 + 48);
  v28 = v52;
  v29 = v49;
  sub_24EDEBCCC(v52, v49);
  sub_24EDEBCCC(v26, &v29[v27]);
  if (v25(v29, 1, v4) == 1)
  {
    sub_24E601704(a2, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v26, &qword_27F215598, &qword_24F945EF0);
    if (v25(&v29[v27], 1, v4) == 1)
    {
      sub_24E601704(v29, &qword_27F215598, &qword_24F945EF0);
      return 0;
    }

    goto LABEL_12;
  }

  sub_24EDEBCCC(v29, v50);
  if (v25(&v29[v27], 1, v4) == 1)
  {
    sub_24E601704(a2, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v26, &qword_27F215598, &qword_24F945EF0);
    (v51[1])(v50, v4);
LABEL_12:
    sub_24E601704(v29, &unk_27F254F20, &qword_24F940790);
    goto LABEL_13;
  }

  v35 = v51;
  v36 = v43;
  (v51[4])(v43, &v29[v27], v4);
  sub_24F550A3C(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  LODWORD(v47) = sub_24F92AFF8();
  sub_24E601704(a2, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v28, &qword_27F215598, &qword_24F945EF0);
  v37 = v35[1];
  v37(v36, v4);
  sub_24E601704(v26, &qword_27F215598, &qword_24F945EF0);
  v37(v50, v4);
  sub_24E601704(v29, &qword_27F215598, &qword_24F945EF0);
  if (v47)
  {
    return 0;
  }

LABEL_13:
  if (v42 <= 4u)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_24F550A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F550AB0()
{
  result = qword_27F247A50;
  if (!qword_27F247A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247A50);
  }

  return result;
}

unint64_t sub_24F550B04()
{
  result = qword_27F247A58;
  if (!qword_27F247A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247A60, &qword_24FA08228);
    sub_24F550AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247A58);
  }

  return result;
}

double GameSuggestion.friendsWhoPlay.getter()
{
  type metadata accessor for GameSuggestion(0);

  return result;
}

uint64_t type metadata accessor for GameSuggestion(uint64_t a1)
{
  result = qword_27F247A80;
  if (!qword_27F247A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GameSuggestion.friendsWhoPlay.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GameSuggestion(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

unint64_t GameSuggestion.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = type metadata accessor for Game(0);
  *(inited + 80) = sub_24E81A5FC(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F5518BC(v2, boxed_opaque_existential_1, type metadata accessor for Game);
  strcpy((inited + 88), "friendsWhoPlay");
  *(inited + 103) = -18;
  v6 = *(v2 + *(type metadata accessor for GameSuggestion(0) + 20));
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  *(inited + 136) = sub_24F551820(&qword_27F21BC38, &qword_27F215388, &protocol conformance descriptor for Player, MEMORY[0x277D22590]);
  *(inited + 104) = v6;

  v7 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

uint64_t sub_24F550EAC()
{
  if (*v0)
  {
    return 0x5773646E65697266;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24F550EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5773646E65697266 && a2 == 0xEE0079616C506F68)
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

uint64_t sub_24F550FD0(uint64_t a1)
{
  v2 = sub_24F5517CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F55100C(uint64_t a1)
{
  v2 = sub_24F5517CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameSuggestion.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247A68, &qword_24FA08230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5517CC();
  sub_24F92D128();
  v12 = 0;
  type metadata accessor for Game(0);
  sub_24E81A5FC(&qword_27F214950, type metadata accessor for Game, &protocol conformance descriptor for Game);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for GameSuggestion(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
    sub_24F551820(&qword_27F21BC30, &qword_27F213E28, &protocol conformance descriptor for Player, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t GameSuggestion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247A78, &qword_24FA08238);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for GameSuggestion(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5517CC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_24E81A5FC(&qword_27F214968, type metadata accessor for Game, &protocol conformance descriptor for Game);
  v14 = v19;
  sub_24F92CC68();
  sub_24E636644(v20, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  v22 = 1;
  sub_24F551820(&qword_27F2196A8, &qword_27F213E38, &protocol conformance descriptor for Player, MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_24F5518BC(v12, v17, type metadata accessor for GameSuggestion);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F551924(v12, type metadata accessor for GameSuggestion);
}

unint64_t sub_24F5515E8@<X0>(uint64_t a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = type metadata accessor for Game(0);
  *(inited + 80) = sub_24E81A5FC(&qword_27F217960, type metadata accessor for Game, &protocol conformance descriptor for Game);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F5518BC(v4, boxed_opaque_existential_1, type metadata accessor for Game);
  strcpy((inited + 88), "friendsWhoPlay");
  *(inited + 103) = -18;
  v8 = *(v4 + *(a1 + 20));
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  *(inited + 136) = sub_24F551820(&qword_27F21BC38, &qword_27F215388, &protocol conformance descriptor for Player, MEMORY[0x277D22590]);
  *(inited + 104) = v8;

  v9 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v9;
  return result;
}

unint64_t sub_24F5517CC()
{
  result = qword_27F247A70;
  if (!qword_27F247A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247A70);
  }

  return result;
}

uint64_t sub_24F551820(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240, qword_24F957DE0);
    sub_24E81A5FC(a2, type metadata accessor for Player, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F5518BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F551924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F551998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Game(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F551A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Game(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24F551B20(uint64_t a1)
{
  type metadata accessor for Game(319);
  if (v1 <= 0x3F)
  {
    sub_24E76AE60(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F551BB8()
{
  result = qword_27F247A90;
  if (!qword_27F247A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247A90);
  }

  return result;
}

unint64_t sub_24F551C10()
{
  result = qword_27F247A98;
  if (!qword_27F247A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247A98);
  }

  return result;
}

unint64_t sub_24F551C68()
{
  result = qword_27F247AA0;
  if (!qword_27F247AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247AA0);
  }

  return result;
}

uint64_t sub_24F551D0C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v4 = (v2 + *a2);
  swift_beginAccess();
  v5 = *v4;

  return v5;
}

uint64_t sub_24F551DFC@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v10 = v4;
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v8 = *a2;
  swift_beginAccess();
  return sub_24F556460(v10 + v8, a4, a3);
}

uint64_t LocalPlayerProvider.playerRef.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  swift_beginAccess();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t LocalPlayerProvider.avatarMediaArtwork.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24F9289E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_24F559120(&qword_27F21E3F8, MEMORY[0x277D21C48], MEMORY[0x277D21C58]);
  v9 = sub_24F92AFF8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD78();
  }

  return (v10)(a1, v4);
}

uint64_t sub_24F552250()
{
  v1[24] = v0;
  sub_24F92B7F8();
  v1[25] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[26] = v3;
  v1[27] = v2;

  return MEMORY[0x2822009F8](sub_24F5522E8, v3, v2);
}

uint64_t sub_24F5522E8()
{
  v1 = v0[24];
  swift_getKeyPath();
  v0[23] = v1;
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v0[28] = v4;

  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_24F55242C;

  return sub_24F556E6C(v3, v4);
}

uint64_t sub_24F55242C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 240) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x2822009F8](sub_24F552578, v4, v3);
}

uint64_t sub_24F552578()
{
  v1 = v0[30];
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_24F552698;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247B30, &qword_24FA08748);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24F557200;
  v0[13] = &block_descriptor_69_0;
  v0[14] = v2;
  [v1 loadPlayerContactForAvatarControllerWithImageSize:65537 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F552698()
{
  v1 = *(*v0 + 216);
  v2 = *(*v0 + 208);

  return MEMORY[0x2822009F8](sub_24F5527A0, v2, v1);
}

uint64_t sub_24F5527A0()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 168);

  v3 = v2;
  sub_24F556BB0(v2);
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E8F8);
  v5 = sub_24F9220B8();
  v6 = sub_24F92BD98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24E5DD000, v5, v6, "LocalPlayerProvider contact loaded.", v7, 2u);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t LocalPlayerProvider.avatarMediaArtwork.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
  swift_beginAccess();
  v4 = sub_24F9289E8();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t LocalPlayerProvider.__allocating_init(current:gameServices:arcadeSubscription:)(char *a1, void *a2, uint64_t a3)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = sub_24F558AE8(a1, v9, a3, v3, v7, v8);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v10;
}

uint64_t sub_24F552A54()
{
  v1[11] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = sub_24F920958();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F552B7C, 0, 0);
}

uint64_t sub_24F552B7C()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 88) + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_gameServices), *(*(v0 + 88) + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_gameServices + 24));
  sub_24F920508();
  v1 = *(v0 + 40);
  *(v0 + 144) = v1;
  *(v0 + 160) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  sub_24F92B7F8();
  *(v0 + 168) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F552C60, v3, v2);
}

uint64_t sub_24F552C60()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];

  swift_getKeyPath();
  v0[10] = v4;
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_24F552DD0;
  v7 = v0[19];
  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[14];

  return MEMORY[0x282165208](v8, v10, v9, v7);
}

uint64_t sub_24F552DD0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24F552FF0;
  }

  else
  {
    v5 = sub_24F552F40;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F552F40()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = sub_24F920928();
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_24F552FF0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_24F553070()
{
  v1[12] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  v1[16] = swift_task_alloc();
  v3 = type metadata accessor for Player(0);
  v1[17] = v3;
  v1[18] = *(v3 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  sub_24F92B7F8();
  v1[21] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v1[22] = v5;
  v1[23] = v4;

  return MEMORY[0x2822009F8](sub_24F553210, v5, v4);
}

uint64_t sub_24F553210()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  sub_24E615E00(v3 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_gameServices, (v0 + 2));
  v5 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  swift_getKeyPath();
  v0[10] = v3;
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v6 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  swift_beginAccess();
  (*(v1 + 16))(v2, v3 + v6, v4);
  v7 = *(v3 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_arcadeSubscription);
  if (v7)
  {
    swift_getKeyPath();
    v0[11] = v7;
    sub_24F559120(&qword_27F21FE50, type metadata accessor for ArcadeSubscription, &protocol conformance descriptor for ArcadeSubscription);
    sub_24F91FD88();

    v8 = *(v7 + 16) < 2u;
  }

  else
  {
    v8 = 2;
  }

  v9 = swift_task_alloc();
  v0[24] = v9;
  *v9 = v0;
  v9[1] = sub_24F553444;
  v11 = v0[15];
  v10 = v0[16];

  return sub_24F6F8A58(v10, v11, v8, v5, v13);
}

uint64_t sub_24F553444()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  (*(v2[14] + 8))(v2[15], v2[13]);
  v3 = v2[23];
  v4 = v2[22];
  if (v0)
  {
    v5 = sub_24F55382C;
  }

  else
  {
    v5 = sub_24F5535CC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F5535CC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[16], &unk_27F23E1F0, &unk_24F9549C0);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    sub_24F5590C4();
    swift_allocError();
    swift_willThrow();

    v4 = v0[1];
  }

  else
  {
    sub_24F559398(v0[16], v0[20], type metadata accessor for Player);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    if (qword_27F211438 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E8F8);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "LocalPlayerProvider reloaded.", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v10 = v0[19];
    v9 = v0[20];

    sub_24F556460(v9, v10, type metadata accessor for Player);
    LocalPlayerProvider.current.setter(v10);
    sub_24F558C90(v9, type metadata accessor for Player);

    v4 = v0[1];
  }

  return v4();
}

uint64_t sub_24F55382C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t LocalPlayerProvider.init(current:gameServices:arcadeSubscription:)(char *a1, void *a2, uint64_t a3)
{
  v7 = a2[3];
  v8 = a2[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a2, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = sub_24F558314(a1, v12, a3, v3, v7, v8);

  __swift_destroy_boxed_opaque_existential_1(a2);
  return v14;
}

uint64_t LocalPlayerProvider.current.setter(void *a1)
{
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24F556460(v1 + v6, v5, type metadata accessor for Player);
  v7 = _s12GameStoreKit6PlayerV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_24F558C90(v5, type metadata accessor for Player);
  if (v7)
  {
    sub_24F556460(a1, v5, type metadata accessor for Player);
    swift_beginAccess();
    sub_24F559330(v5, v1 + v6, type metadata accessor for Player);
    swift_endAccess();
    sub_24F554A30();
    sub_24F558C90(v5, type metadata accessor for Player);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD78();
  }

  return sub_24F558C90(a1, type metadata accessor for Player);
}

uint64_t LocalPlayerProvider.playerRef.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - v6;
  v8 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_24ECCA9F8();
  v9 = sub_24F92AFF8();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD78();
  }

  return (v10)(a1, v4);
}

uint64_t sub_24F553E98(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = (v5 + *a3);
  swift_beginAccess();
  v9 = *v8 == a1 && v8[1] == a2;
  if (v9 || (sub_24F92CE08() & 1) != 0)
  {
    *v8 = a1;
    v8[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD78();
  }
}

uint64_t LocalPlayerProvider.playerAvatar.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD78();

  return sub_24F558C90(a1, type metadata accessor for PlayerAvatar);
}

uint64_t sub_24F5540D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v4[7] = swift_task_alloc();
  v4[8] = sub_24F92B7F8();
  v4[9] = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F5541A8, v6, v5);
}

uint64_t sub_24F5541A8()
{

  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E8F8);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Received onUpdate reload LocalPlayerProvider", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = v0[7];
  v6 = v0[5];

  v7 = sub_24F92B858();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v9 = sub_24F92B7E8();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  v10[2] = v9;
  v10[3] = v11;
  v10[4] = v8;
  v10[5] = v6;

  sub_24EA998B8(0, 0, v5, &unk_24FA08630, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24F5543E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  sub_24F92B7F8();
  v5[22] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v5[23] = v7;
  v5[24] = v6;

  return MEMORY[0x2822009F8](sub_24F554478, v7, v6);
}

uint64_t sub_24F554478()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 200) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(v0 + 168);
    if (!*(v3 + 16))
    {
LABEL_6:
      v8 = swift_task_alloc();
      *(v0 + 208) = v8;
      *v8 = v0;
      v8[1] = sub_24F5546C8;

      return sub_24F553070();
    }

    swift_getKeyPath();
    *(v0 + 152) = v2;
    sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD88();

    v4 = (v2 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
    swift_beginAccess();
    v5 = v4[1];
    *(v0 + 136) = *v4;
    *(v0 + 144) = v5;

    sub_24F92C7F8();
    if (*(v3 + 16))
    {
      v6 = sub_24E76D934(v0 + 16);
      if (v7)
      {
        sub_24E643A9C(*(*(v0 + 168) + 56) + 32 * v6, v0 + 56);
        sub_24E6585F8(v0 + 16);
        sub_24E601704(v0 + 56, &qword_27F2129B0, &unk_24F945320);
        goto LABEL_6;
      }
    }

    sub_24E6585F8(v0 + 16);

    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_24E601704(v0 + 56, &qword_27F2129B0, &unk_24F945320);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24F5546C8()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_24F554870;
  }

  else
  {
    v5 = sub_24F554804;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F554804()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F554870()
{

  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8F8);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to reload local player: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_24F554A30()
{
  v1 = v0;
  v76 = sub_24F9289E8();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v3 - 8);
  v72 = (&v68 - v4);
  v77 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v77);
  v73 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = (&v68 - v7);
  v8 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
  *&v83[0] = v0;
  v12 = sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v13 = (v0 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current);
  swift_beginAccess();
  sub_24F556460(v13, v10, type metadata accessor for Player);
  v14 = sub_24F92B188();
  v16 = v15;
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v17 = sub_24F9220D8();
  v18 = __swift_project_value_buffer(v17, qword_27F39E8F8);

  v79 = v18;
  v19 = sub_24F9220B8();
  v20 = sub_24F92BD98();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v71 = v12;
    v22 = v11;
    v23 = v21;
    v24 = swift_slowAlloc();
    *&v83[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_24E7620D4(v14, v16, v83);
    _os_log_impl(&dword_24E5DD000, v19, v20, "LocalPlayerProvider.current updated with %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x2530542D0](v24, -1, -1);
    v25 = v23;
    v11 = v22;
    MEMORY[0x2530542D0](v25, -1, -1);
  }

  swift_getKeyPath();
  *&v83[0] = v1;
  sub_24F91FD88();

  v26 = *v13;
  v27 = v13[1];

  LocalPlayerProvider.playerID.setter(v26, v27);
  swift_getKeyPath();
  *&v83[0] = v1;
  sub_24F91FD88();

  v28 = v78;
  sub_24F920FC8();
  LocalPlayerProvider.playerRef.setter(v28);
  swift_getKeyPath();
  *&v83[0] = v1;
  sub_24F91FD88();

  v29 = (v13 + *(v8 + 28));
  v30 = *v29;
  v31 = v29[1];

  LocalPlayerProvider.name.setter(v30, v31);
  swift_getKeyPath();
  *&v83[0] = v1;
  sub_24F91FD88();

  if (sub_24F92B358())
  {
  }

  else
  {
    v32 = sub_24F92B358();

    if ((v32 & 1) == 0)
    {
      swift_getKeyPath();
      *&v83[0] = v1;
      sub_24F91FD88();

      v45 = v13[3];
      v69 = v13[2];
      v68 = v45;
      v46 = type metadata accessor for PlayerAvatar.Overlay(0);
      v47 = *(*(v46 - 8) + 56);
      v70 = v11;
      v71 = v16;
      v48 = v72;
      v47(v72, 1, 1, v46);
      v84 = 0;
      memset(v83, 0, sizeof(v83));
      v49 = v77;
      v78 = v8;
      v50 = *(v77 + 20);
      v51 = v73;
      v47(&v73[v50], 1, 1, v46);
      v52 = v51 + *(v49 + 24);
      v82 = 0;
      memset(v81, 0, sizeof(v81));
      *v52 = 0u;
      *(v52 + 16) = 0u;
      *(v52 + 32) = 0;
      v53 = v68;

      sub_24E61DA68(v81, v52, qword_27F21B590, &unk_24F93BE30);
      *v51 = v69;
      v51[1] = v53;
      sub_24E61DA68(v48, v51 + v50, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(v83, v52, qword_27F21B590, &unk_24F93BE30);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v68 - 2) = v1;
      *(&v68 - 1) = v51;
      *&v83[0] = v1;
      sub_24F91FD78();

      v72 = type metadata accessor for PlayerAvatar;
      sub_24F558C90(v51, type metadata accessor for PlayerAvatar);
      swift_getKeyPath();
      *&v83[0] = v1;
      sub_24F91FD88();

      v55 = *(v78 + 6);
      v78 = *(v75 + 16);
      v56 = v74;
      v57 = v76;
      v78(v74, v13 + v55, v76);
      LocalPlayerProvider.avatarMediaArtwork.setter(v56);
      swift_getKeyPath();
      *&v83[0] = v1;
      sub_24F91FD88();

      v58 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerAvatar;
      swift_beginAccess();
      sub_24F556460(v1 + v58, v51, v72);
      v59 = sub_24F92B188();
      v61 = v60;
      swift_getKeyPath();
      *&v81[0] = v1;
      sub_24F91FD88();

      v62 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
      swift_beginAccess();
      v78(v56, (v1 + v62), v57);
      v63 = sub_24F92B188();
      v65 = v64;

      v38 = sub_24F9220B8();
      v39 = sub_24F92BD98();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v80[0] = v41;
        *v40 = 136315394;
        v66 = sub_24E7620D4(v59, v61, v80);

        *(v40 + 4) = v66;
        *(v40 + 12) = 2080;
        v67 = sub_24E7620D4(v63, v65, v80);

        *(v40 + 14) = v67;
        v44 = "LocalPlayerProvider.current updated playerAvatar: %s\navatarMediaArtwork: %s";
        goto LABEL_13;
      }

LABEL_14:

      goto LABEL_15;
    }
  }

  swift_getKeyPath();
  *&v83[0] = v1;
  sub_24F91FD88();

  v34 = v13[2];
  v33 = v13[3];
  swift_getKeyPath();
  *&v83[0] = v1;

  sub_24F91FD88();

  v35 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerAvatar);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];

  v38 = sub_24F9220B8();
  v39 = sub_24F92BDB8();

  if (!os_log_type_enabled(v38, v39))
  {
    goto LABEL_14;
  }

  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  *&v81[0] = v41;
  *v40 = 136315394;
  v42 = sub_24E7620D4(v34, v33, v81);

  *(v40 + 4) = v42;
  *(v40 + 12) = 2080;
  v43 = sub_24E7620D4(v37, v36, v81);

  *(v40 + 14) = v43;
  v44 = "ignoring updated avatar: %s keeping %s";
LABEL_13:
  _os_log_impl(&dword_24E5DD000, v38, v39, v44, v40, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x2530542D0](v41, -1, -1);
  MEMORY[0x2530542D0](v40, -1, -1);
LABEL_15:
}

void (*sub_24F5555CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24F555630;
}

void sub_24F555630(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_24F554A30();
  }
}

uint64_t sub_24F555690(uint64_t a1)
{
  v2 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F556460(a1, v4, type metadata accessor for Player);
  return LocalPlayerProvider.current.setter(v4);
}

uint64_t type metadata accessor for LocalPlayerProvider(uint64_t a1)
{
  result = qword_27F247B00;
  if (!qword_27F247B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F555780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F556460(a2, v6, type metadata accessor for Player);
  v7 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24F559330(v6, a1 + v7, type metadata accessor for Player);
  swift_endAccess();
  sub_24F554A30();
  return sub_24F558C90(v6, type metadata accessor for Player);
}

uint64_t (*LocalPlayerProvider.current.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  v4[7] = sub_24F5555CC(v4);
  return sub_24F5559AC;
}

void sub_24F5559AC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v1);
}

uint64_t (*LocalPlayerProvider.playerID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F555B8C;
}

uint64_t sub_24F555B98@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24F555C9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, a1, v3);
  return LocalPlayerProvider.playerRef.setter(v5);
}

uint64_t sub_24F555D70(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  swift_beginAccess();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t (*LocalPlayerProvider.playerRef.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F555F60;
}

double sub_24F555F6C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v4 = (v3 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__name);
  swift_beginAccess();
  v5 = v4[1];
  *a2 = *v4;
  a2[1] = v5;

  return result;
}

uint64_t sub_24F55603C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return LocalPlayerProvider.name.setter(v1, v2);
}

uint64_t sub_24F55607C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return LocalPlayerProvider.name.setter(v1, v2);
}

uint64_t (*LocalPlayerProvider.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F556204;
}

uint64_t sub_24F556238@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v9 = *a3;
  swift_beginAccess();
  return sub_24F556460(v8 + v9, a5, a4);
}

uint64_t sub_24F556310(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F556460(a1, v6, type metadata accessor for PlayerAvatar);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD78();

  return sub_24F558C90(v6, type metadata accessor for PlayerAvatar);
}

uint64_t sub_24F556460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5564D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerAvatar;
  swift_beginAccess();
  sub_24F559330(a2, a1 + v4, type metadata accessor for PlayerAvatar);
  return swift_endAccess();
}

uint64_t (*LocalPlayerProvider.playerAvatar.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F556698;
}

uint64_t sub_24F5566A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
  swift_beginAccess();
  v5 = sub_24F9289E8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_24F5567A0(uint64_t a1)
{
  v2 = sub_24F9289E8();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return LocalPlayerProvider.avatarMediaArtwork.setter(v5);
}

uint64_t sub_24F556870(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
  swift_beginAccess();
  v5 = sub_24F9289E8();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t (*LocalPlayerProvider.avatarMediaArtwork.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F556A70;
}

void sub_24F556A7C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_endAccess();
  *v3 = v3[3];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v3);
}

void *sub_24F556B00()
{
  swift_getKeyPath();
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact);
  v2 = v1;
  return v1;
}

void sub_24F556BB0(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact;
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
    sub_24F91FD78();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24E7FA974();
  v6 = v5;
  v7 = a1;
  v8 = sub_24F92C408();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_24F556D38@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__profileDidChangeToken;
  swift_beginAccess();
  return sub_24E94E17C(v5 + v3, a1);
}

uint64_t sub_24F556E00(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__profileDidChangeToken;
  swift_beginAccess();
  sub_24F559168(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_24F556E6C(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  sub_24F92B7F8();
  v2[20] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[21] = v4;
  v2[22] = v3;

  return MEMORY[0x2822009F8](sub_24F556F04, v4, v3);
}

uint64_t sub_24F556F04()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D0C138]) init];
  v0[23] = v1;
  v2 = [v1 internal];
  v3 = sub_24F92B098();
  [v2 setPlayerID_];

  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_24F557094;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226C30, &qword_24F97C128);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24EA9EF1C;
  v0[13] = &block_descriptor_66;
  v0[14] = v4;
  [v1 refreshInternalWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F557094()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x2822009F8](sub_24F55719C, v2, v1);
}

uint64_t sub_24F55719C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_24F557200(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *v5;
  v7 = *(*(*v5 + 64) + 40);
  *v7 = a2;
  v7[1] = a3;
  v8 = a2;
  v9 = a3;

  return MEMORY[0x282200948](v6);
}

uint64_t sub_24F557274(uint64_t a1, uint64_t a2)
{
  v3[23] = a2;
  v3[24] = v2;
  v3[22] = a1;
  sub_24F92B7F8();
  v3[25] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v3[26] = v5;
  v3[27] = v4;

  return MEMORY[0x2822009F8](sub_24F557310, v5, v4);
}

uint64_t sub_24F557310()
{
  v1 = v0[24];
  swift_getKeyPath();
  v0[21] = v1;
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v0[28] = v4;

  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_24F557454;

  return sub_24F556E6C(v3, v4);
}

uint64_t sub_24F557454(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 240) = a1;

  v3 = *(v2 + 216);
  v4 = *(v2 + 208);

  return MEMORY[0x2822009F8](sub_24F5575A0, v4, v3);
}

uint64_t sub_24F5575A0()
{
  v1 = v0[30];
  v3 = v0[22];
  v2 = v0[23];
  v0[2] = v0;
  v0[3] = sub_24F5576C8;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B618, &unk_24FA08730);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E760660;
  v0[13] = &block_descriptor_161;
  v0[14] = v4;
  [v1 setPhotoFromCNContactImage:v3 pendingContact:v2 withCompletionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F5576C8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_24F557864;
  }

  else
  {
    v5 = sub_24F5577F8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F5577F8()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F557864()
{
  v1 = *(v0 + 240);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

double sub_24F5578DC(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_arcadeSubscription))
  {
    swift_getKeyPath();
    sub_24F559120(&qword_27F21FE50, type metadata accessor for ArcadeSubscription, &protocol conformance descriptor for ArcadeSubscription);
    sub_24F91FD88();
  }

  return result;
}

double (*sub_24F557984())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_24F558F70;
}

double sub_24F5579E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_24F92B7F8();

  v6 = sub_24F92B7E8();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_24EA998B8(0, 0, v4, &unk_24FA085C0, v7);

  return result;
}

uint64_t sub_24F557B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  sub_24F92B7F8();
  v4[9] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[10] = v6;
  v4[11] = v5;

  return MEMORY[0x2822009F8](sub_24F557B9C, v6, v5);
}

uint64_t sub_24F557B9C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[13] = v2;
    *v2 = v0;
    v2[1] = sub_24F557CFC;

    return sub_24F553070();
  }

  else
  {

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_24F91FD68();
    }

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_24F557CFC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_24F557EE8;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_24F557E18;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F557E18()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24F91FD68();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F557EE8()
{

  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E8F8);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to reload local player: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24F91FD68();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t LocalPlayerProvider.deinit()
{
  sub_24F558C90(v0 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current, type metadata accessor for Player);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_gameServices));

  v1 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24F558C90(v0 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerAvatar, type metadata accessor for PlayerAvatar);
  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
  v4 = sub_24F9289E8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__profileDidChangeToken, &qword_27F2129B0, &unk_24F945320);
  v5 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider___observationRegistrar;
  v6 = sub_24F91FDC8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

double LocalPlayerProvider.__deallocating_deinit()
{
  LocalPlayerProvider.deinit();

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_24F558314(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0, &unk_24F948490);
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v50 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v50 - v14;
  v53 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v53);
  v54 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v50 - v19;
  v64[3] = a5;
  v64[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v64);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  *(a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact) = 0;
  v22 = (a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__profileDidChangeToken);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24F91FDB8();
  if (qword_27F211438 != -1)
  {
    swift_once();
  }

  v23 = sub_24F9220D8();
  __swift_project_value_buffer(v23, qword_27F39E8F8);
  v24 = sub_24F9220B8();
  v25 = sub_24F92BD98();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_24E5DD000, v24, v25, "Constructing LocalPlayerProvider", v26, 2u);
    MEMORY[0x2530542D0](v26, -1, -1);
  }

  v55 = type metadata accessor for Player;
  sub_24F556460(a1, a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current, type metadata accessor for Player);
  sub_24E615E00(v64, a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_gameServices);
  *(a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider_arcadeSubscription) = a3;
  v27 = *(a1 + 1);
  v28 = (a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  *v28 = *a1;
  v28[1] = v27;

  swift_bridgeObjectRetain_n();
  sub_24F920FC8();
  (*(v18 + 32))(a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerRef, v20, v17);
  v52 = type metadata accessor for Player(0);
  v29 = &a1[*(v52 + 28)];
  v30 = *v29;
  v31 = v29[1];
  v32 = (a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__name);
  *v32 = v30;
  v32[1] = v31;
  v33 = *(a1 + 3);
  v50 = *(a1 + 2);
  v34 = type metadata accessor for PlayerAvatar.Overlay(0);
  v35 = *(*(v34 - 8) + 56);
  v35(v15, 1, 1, v34);
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v51 = a1;
  v36 = v53;
  v37 = *(v53 + 20);
  v38 = v54;
  v35(&v54[v37], 1, 1, v34);
  v39 = v38 + *(v36 + 24);
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  *v39 = 0u;
  *(v39 + 16) = 0u;
  *(v39 + 32) = 0;

  sub_24E61DA68(v59, v39, qword_27F21B590, &unk_24F93BE30);
  *v38 = v50;
  v38[1] = v33;
  sub_24E61DA68(v15, v38 + v37, &qword_27F22DF80, &unk_24F942E50);
  sub_24E61DA68(&v61, v39, qword_27F21B590, &unk_24F93BE30);
  sub_24F559398(v38, a4 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerAvatar, type metadata accessor for PlayerAvatar);
  v40 = *(v52 + 24);
  v41 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__avatarMediaArtwork;
  v42 = sub_24F9289E8();
  v43 = v51;
  (*(*(v42 - 8) + 16))(a4 + v41, &v51[v40], v42);
  v44 = sub_24E802CE0(&unk_2861C1F58);
  v45 = swift_allocObject();
  swift_weakInit();
  *(&v62 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  v46 = __swift_allocate_boxed_opaque_existential_1(&v61);
  v47 = MEMORY[0x28223BE20](v46);
  *(&v50 - 4) = v44;
  *(&v50 - 3) = &unk_24F9BE548;
  *(&v50 - 2) = v45;
  *(&v50 - 4) = 256;
  (*(v56 + 104))(v57, *MEMORY[0x277D85778], v58, v47);
  sub_24F92B928();

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v50 - 2) = a4;
  *(&v50 - 1) = &v61;
  *&v59[0] = a4;
  sub_24F559120(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD78();

  sub_24E601704(&v61, &qword_27F2129B0, &unk_24F945320);
  sub_24F91FD68();
  sub_24F558C90(v43, v55);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return a4;
}

uint64_t sub_24F558AE8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, a2, a5);
  return sub_24F558314(a1, v13, a3, v14, a5, a6);
}

uint64_t sub_24F558C90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_24F558CFC(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24F558ED4(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlayerAvatar(319);
      if (v3 <= 0x3F)
      {
        sub_24F9289E8();
        if (v4 <= 0x3F)
        {
          sub_24F91FDC8();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_24F558ED4(uint64_t a1)
{
  if (!qword_27F247B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247B18, &qword_24FA08590);
    v1 = sub_24F921018();
    if (!v2)
    {
      atomic_store(v1, &qword_27F247B10);
    }
  }
}

uint64_t sub_24F558F38()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F558F78()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F558FB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F557B04(a1, v4, v5, v6);
}

double (*sub_24F55906C())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_24F558F70;
}

unint64_t sub_24F5590C4()
{
  result = qword_27F247B20;
  if (!qword_27F247B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247B20);
  }

  return result;
}

uint64_t sub_24F559120(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F559168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2129B0, &unk_24F945320);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F5591E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F559228(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F5543E0(a1, v4, v5, v7, v6);
}

void sub_24F5592F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__contact) = v2;
  v4 = v2;
}

uint64_t sub_24F559330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F559398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F559414()
{
  result = qword_27F247B28;
  if (!qword_27F247B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247B28);
  }

  return result;
}

uint64_t sub_24F5594E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24F559598(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ReportPromptDidPresentAction(uint64_t a1)
{
  result = qword_27F247B38;
  if (!qword_27F247B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F559684(uint64_t a1)
{
  result = sub_24F928AD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F559710(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247B68, &qword_24FA088F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F55A25C();
  sub_24F92D128();
  v10[15] = *v3;
  v10[14] = 0;
  sub_24F55A368();
  sub_24F92CD48();
  if (!v2)
  {
    type metadata accessor for ReportPromptDidPresentAction(0);
    v10[13] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F5598CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_24F928AD8();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247B50, &qword_24FA088F0);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ReportPromptDidPresentAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F55A25C();
  sub_24F92D108();
  if (!v2)
  {
    v11 = v10;
    v19 = v8;
    v12 = v22;
    v13 = v23;
    v26 = 0;
    sub_24F55A2B0();
    v14 = v24;
    sub_24F92CC68();
    v18 = v11;
    *v11 = v27;
    v25 = 1;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    v17 = v5;
    sub_24F92CC68();
    (*(v12 + 8))(v7, v14);
    v15 = v18;
    (*(v20 + 32))(&v18[*(v19 + 20)], v17, v13);
    sub_24F55A304(v15, v21);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F559BC8(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000011;
  v3 = *a1;
  v4 = 0x800000024FA42F90;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000011;
  }

  if (v3 == 1)
  {
    v6 = 0x800000024FA42F90;
  }

  else
  {
    v6 = 0x800000024FA42FB0;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7974697669746361;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEF676E6972616853;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x800000024FA42FB0;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x7974697669746361;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEF676E6972616853;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24F559CB0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F559D6C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F559E14()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F559ECC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F55A3BC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F559EFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF676E6972616853;
  v4 = 0x800000024FA42F90;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000024FA42FB0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7974697669746361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24F55A028()
{
  result = qword_27F247B48;
  if (!qword_27F247B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247B48);
  }

  return result;
}

uint64_t sub_24F55A07C()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x694B74706D6F7270;
  }
}

uint64_t sub_24F55A0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x694B74706D6F7270 && a2 == 0xEA0000000000646ELL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
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

uint64_t sub_24F55A1B4(uint64_t a1)
{
  v2 = sub_24F55A25C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F55A1F0(uint64_t a1)
{
  v2 = sub_24F55A25C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F55A25C()
{
  result = qword_27F247B58;
  if (!qword_27F247B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247B58);
  }

  return result;
}

unint64_t sub_24F55A2B0()
{
  result = qword_27F247B60;
  if (!qword_27F247B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247B60);
  }

  return result;
}

uint64_t sub_24F55A304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportPromptDidPresentAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F55A368()
{
  result = qword_27F247B70;
  if (!qword_27F247B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247B70);
  }

  return result;
}

unint64_t sub_24F55A3BC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F55A408()
{
  result = qword_27F247B78;
  if (!qword_27F247B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247B78);
  }

  return result;
}

unint64_t sub_24F55A470()
{
  result = qword_27F247B80;
  if (!qword_27F247B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247B80);
  }

  return result;
}

unint64_t sub_24F55A4C8()
{
  result = qword_27F247B88;
  if (!qword_27F247B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247B88);
  }

  return result;
}

unint64_t sub_24F55A520()
{
  result = qword_27F247B90;
  if (!qword_27F247B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247B90);
  }

  return result;
}

uint64_t sub_24F55A5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_24F55A760;

  return MEMORY[0x28217F228](v3 + 2, updated, updated);
}

uint64_t sub_24F55A760()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24E7CC784;
  }

  else
  {
    v2 = sub_24F55A874;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F55A874()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[5];
  v13 = v0[6];
  v14 = v0[11];
  v7 = v0[4];
  v15 = v0[3];
  v8 = v0[2];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v6;
  type metadata accessor for GSKShelf(0);
  (*(v4 + 104))(v5, *MEMORY[0x277D85778], v13);
  sub_24F92B928();

  (*(v2 + 16))(v14, v1, v3);
  sub_24E613678();
  sub_24F9280F8();

  (*(v2 + 8))(v1, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v10 - 8) + 56))(v15, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

double sub_24F55AA54(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v44 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v42 = *(v7 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v7);
  v41 = &v35 - v8;
  started = type metadata accessor for PlayTogetherStartPlayingShelfIntent(0);
  v40 = *(started - 8);
  v10 = *(v40 + 64);
  MEMORY[0x28223BE20](started - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35 - v12;
  v36 = &v35 - v12;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_24F92C888();
  v14 = *a2;
  v15 = a2[1];

  v45 = v14;
  v46 = v15;
  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA769E0);
  v16 = v45;
  v17 = v46;
  v39 = v45;
  v18 = swift_allocObject();
  v37 = v17;
  v38 = a3;
  v18[2] = a3;
  v18[3] = v16;
  v18[4] = v17;

  v19 = v7;
  sub_24F92B898();
  v20 = sub_24F92B858();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F55D044(a2, v21, type metadata accessor for PlayTogetherStartPlayingShelfIntent);
  v23 = v41;
  v22 = v42;
  v24 = a1;
  v25 = v19;
  (*(v42 + 16))(v41, v24, v19);
  v26 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v22 + 80) + v27 + 8) & ~*(v22 + 80);
  v29 = (v43 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_24F55CDCC(v21, v30 + v26);
  *(v30 + v27) = v44;
  (*(v22 + 32))(v30 + v28, v23, v25);
  v31 = v39;
  *(v30 + v29) = v38;
  v32 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v37;
  *v32 = v31;
  v32[1] = v33;

  sub_24F1D3DA4(0, 0, v36, &unk_24FA08AB8, v30);

  return result;
}

double sub_24F55AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_24F92B858();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = a4;

  sub_24EA998B8(0, 0, v9, &unk_24FA08AC8, v11);

  return result;
}

uint64_t sub_24F55AF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_24F55AF5C, a4, 0);
}

uint64_t sub_24F55AF5C()
{
  sub_24F5EA3E0(v0[3], v0[4], 0, 0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24F55AFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[21] = a8;
  v8[22] = v14;
  v8[19] = a6;
  v8[20] = a7;
  v8[17] = a4;
  v8[18] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213780, &unk_24F9FCA40);
  v8[23] = v9;
  v8[24] = *(v9 - 8);
  v8[25] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213788, &unk_24F93B040);
  v8[26] = v10;
  v8[27] = *(v10 - 8);
  v8[28] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v8[29] = v11;
  v8[30] = *(v11 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent(0);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F55B1F4, 0, 0);
}

uint64_t sub_24F55B1F4()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 136);
  v18 = *v3;
  *(v0 + 304) = *v3;
  v4 = v3[1];
  *(v0 + 312) = v4;
  started = type metadata accessor for PlayTogetherStartPlayingShelfIntent(0);
  v6 = *(started + 20);
  *(v0 + 472) = v6;
  v7 = (v3 + *(started + 24));
  v16 = v7[1];
  v17 = *v7;
  v8 = v7[2];
  v9 = v7[3];
  v10 = v7[4];
  v11 = *(v2 + 20);

  sub_24F55D044(v3 + v6, v1 + v11, type metadata accessor for Player);
  *v1 = v18;
  v1[1] = v4;
  v12 = (v1 + *(v2 + 24));
  *v12 = v17;
  v12[1] = v16;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  *(v0 + 320) = v13;

  v14 = swift_task_alloc();
  *(v0 + 328) = v14;
  *v14 = v0;
  v14[1] = sub_24F55B384;

  return MEMORY[0x28217F228](v0 + 16, v13, v13);
}

uint64_t sub_24F55B384()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_24F55B6B0;
  }

  else
  {
    v2 = sub_24F55B498;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F55B498()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[43] = v3;
  v4 = sub_24F55CFFC(&qword_27F21D590, type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent, &unk_24F9D1BD8);
  v0[44] = v4;
  *v3 = v0;
  v3[1] = sub_24F55B59C;
  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[32];
  v8 = v0[18];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F55B59C()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_24F55BA04;
  }

  else
  {
    v2 = sub_24F55B794;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F55B6B0()
{
  sub_24F55D0AC(*(v0 + 272), type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F55B794()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v7 = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24F55D0AC(v3, type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent);
  sub_24F55D044(v2, v1, type metadata accessor for GSKShelf);
  v0[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  v8 = *(v5 + 8);
  v0[47] = v8;
  v0[48] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v6);

  return MEMORY[0x2822009F8](sub_24F55B8B0, v7, 0);
}

uint64_t sub_24F55B8B0()
{
  sub_24F5E9B3C(v0[21], v0[22], 0, 0, v0[25]);

  return MEMORY[0x2822009F8](sub_24F55B928, 0, 0);
}

uint64_t sub_24F55B928()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = sub_24F55BAF0;
  v5 = v0[26];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v5);
}

uint64_t sub_24F55BA04()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24F55D0AC(v0[34], type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F55BAF0()
{

  return MEMORY[0x2822009F8](sub_24F55BBEC, 0, 0);
}

uint64_t sub_24F55BBEC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  *(v0 + 400) = v2;
  *(v0 + 408) = v1;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 416) = v3;
  *(v0 + 424) = v4;
  v5 = *(v0 + 88);
  *(v0 + 432) = v5;
  if (v3)
  {
    v7 = *(v0 + 304);
    v6 = *(v0 + 312);
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    sub_24F55D044(*(v0 + 136) + *(v0 + 472), v8 + *(v9 + 20), type metadata accessor for Player);
    *v8 = v7;
    v8[1] = v6;
    v10 = (v8 + *(v9 + 24));
    *v10 = v2;
    v10[1] = v1;
    v10[2] = v3;
    v10[3] = v4;
    v10[4] = v5;

    sub_24F48B9F8(v2, v1, v3);
    v11 = swift_task_alloc();
    *(v0 + 440) = v11;
    *v11 = v0;
    v11[1] = sub_24F55BE04;
    v12 = *(v0 + 320);

    return MEMORY[0x28217F228](v0 + 96, v12, v12);
  }

  else
  {
    v13 = *(v0 + 296);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    sub_24F55D0AC(v13, type metadata accessor for GSKShelf);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_24F55BE04()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_24F55C0F4;
  }

  else
  {
    v2 = sub_24F55BF18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F55BF18()
{
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[57] = v3;
  *v3 = v0;
  v3[1] = sub_24F55BFE0;
  v4 = v0[44];
  v5 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[18];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F55BFE0()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_24F55C3E0;
  }

  else
  {
    v2 = sub_24F55C24C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F55C0F4()
{
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v6 = v0[37];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[26];
  sub_24F55D0AC(v0[33], type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent);
  sub_24E614F20(v5, v4, v3, v2, v1);
  (*(v7 + 8))(v8, v9);
  sub_24F55D0AC(v6, type metadata accessor for GSKShelf);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F55C24C()
{
  v1 = v0[53];
  v2 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v14 = v0[47];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[33];
  v9 = v0[31];
  v13 = v0[29];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_24E614F20(v5, v4, v3, v1, v2);
  sub_24F55D0AC(v8, type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent);
  sub_24F55D044(v7, v6, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v14(v9, v13);
  sub_24F55D0AC(v7, type metadata accessor for GSKShelf);
  v10 = swift_task_alloc();
  v0[49] = v10;
  *v10 = v0;
  v10[1] = sub_24F55BAF0;
  v11 = v0[26];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v11);
}

uint64_t sub_24F55C3E0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v2 = v0[53];
  v1 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v6 = v0[37];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[26];
  sub_24F55D0AC(v0[33], type metadata accessor for PlayTogetherStartPlayingShelfConstructionIntent);
  sub_24E614F20(v5, v4, v3, v2, v1);
  (*(v7 + 8))(v8, v9);
  sub_24F55D0AC(v6, type metadata accessor for GSKShelf);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F55C540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24F55A5CC(a1, a2, a3);
}

uint64_t sub_24F55C5FC()
{

  return swift_deallocObject();
}

uint64_t sub_24F55C648()
{
  started = type metadata accessor for PlayTogetherStartPlayingShelfIntent(0);
  v38 = *(*(started - 8) + 80);
  v36 = *(*(started - 8) + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v3 = *(v2 - 8);
  v35 = *(v3 + 80);
  swift_unknownObjectRelease();
  v37 = (v38 + 32) & ~v38;

  v4 = v0 + v37 + *(started + 20);

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v39 = *(v7 - 8);
  v40 = v7;
  v34 = *(v39 + 8);
  v34(v4 + v6);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v8 = v4 + v5[13];
  v9 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v32 = v3;
    v31 = v2;
    v10 = type metadata accessor for CallProviderConversationHandle(0);
    v11 = *(*(v10 - 8) + 48);
    if (!v11(v8, 1, v10))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v39 + 48))(v8 + v12, 1, v40))
      {
        (v34)(v8 + v12, v40);
      }
    }

    v13 = v8 + *(v9 + 20);
    v14 = v11(v13, 1, v10);
    v2 = v31;
    if (!v14)
    {

      v15 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v39 + 48))(v13 + v15, 1, v40))
      {
        (v34)(v13 + v15, v40);
      }
    }

    v3 = v32;
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v16 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {
    v33 = v3;

    v18 = type metadata accessor for Game(0);
    (v34)(v16 + v18[18], v40);
    v19 = v18[19];
    if (!(*(v39 + 48))(v16 + v19, 1, v40))
    {
      (v34)(v16 + v19, v40);
    }

    v20 = v18[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v3 = v33;
  }

  v23 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game(0);
    (v34)(v23 + v25[18], v40);
    v26 = v25[19];
    if (!(*(v39 + 48))(v23 + v26, 1, v40))
    {
      (v34)(v23 + v26, v40);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  (*(v3 + 8))(v0 + ((((v36 + v37 + 7) & 0xFFFFFFFFFFFFFFF8) + v35 + 8) & ~v35), v2);

  return swift_deallocObject();
}

uint64_t sub_24F55CDCC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for PlayTogetherStartPlayingShelfIntent(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_24F55CE30(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayTogetherStartPlayingShelfIntent(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v5);
  v10 = *(v1 + v8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_24E614970;

  return sub_24F55AFC8(a1, v11, v12, v1 + v4, v9, v1 + v7, v10, v13);
}

uint64_t sub_24F55CFFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F55D044(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F55D0AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F55D10C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F55D154(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24E614970;

  return sub_24F55AF38(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24F55D21C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v9[4] = *(a2 + 64);
  v10 = *(a2 + 80);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_24F55DBBC(v7, v9) & 1;
}

uint64_t sub_24F55D288@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BD0, &qword_24FA08AF8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v59 - v2;
  v4 = sub_24F9211F8();
  v65 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BD8, &qword_24FA08B00);
  v66 = *(v64 - 1);
  MEMORY[0x28223BE20](v64);
  v62 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BE0, &qword_24FA08B08);
  v11 = *(v10 - 8);
  v78 = v10;
  v79 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v59 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BB0, &qword_24FA08AE8);
  v17 = *(v16 - 8);
  v67 = v16;
  v68 = v17;
  MEMORY[0x28223BE20](v16);
  v74 = &v59 - v18;
  v19 = sub_24F9214F8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v59 - v24;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BE8, &unk_24FA08B10);
  v77 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v61 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v70 = &v59 - v28;
  v82 = 31524;
  v83 = 0xE200000000000000;
  v73 = sub_24E8B9818();
  MEMORY[0x253046B40](v84, &v82, MEMORY[0x277D837D0], v73);
  sub_24F9211E8();
  sub_24F921508();
  sub_24F921518();
  v29 = sub_24F921528();
  (*(*(v29 - 8) + 56))(v3, 0, 1, v29);
  sub_24F9211E8();
  sub_24F55F430(v30);
  v31 = MEMORY[0x277D83E40];
  v60 = v13;
  sub_24F9214C8();
  v32 = *(v20 + 8);
  v71 = v20 + 8;
  v72 = v32;
  v59 = v19;
  v32(v22, v19);
  sub_24F55F488(v3);
  v65[1](v6, v4);
  v33 = v62;
  MEMORY[0x253046B60](v13, v31);
  v34 = sub_24E602068(&qword_27F247BF8, &qword_27F247BD8, &qword_24FA08B00, MEMORY[0x277D853C0]);
  v35 = v63;
  v36 = v64;
  MEMORY[0x253046B40](v33, v64, v34);
  v37 = *(v66 + 8);
  v37(v33, v36);
  v38 = v76;
  sub_24F9211C8();
  v37(v35, v36);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BB8, &qword_24FA08AF0);
  v66 = MEMORY[0x277D85AC0];
  v40 = sub_24E602068(&qword_27F247C00, &qword_27F247BE0, &qword_24FA08B08, MEMORY[0x277D85AC0]);
  v41 = v74;
  v63 = v39;
  v42 = v78;
  v43 = v25;
  sub_24F9214E8();
  v64 = *(v79 + 8);
  v79 += 8;
  (v64)(v38, v42);
  v72(v25, v19);
  v44 = v61;
  MEMORY[0x253046B90](v41, v39);
  v45 = sub_24E602068(&qword_27F247C08, &qword_27F247BE8, &unk_24FA08B10, MEMORY[0x277D85408]);
  v46 = v75;
  MEMORY[0x253046B40](v44, v75, v45);
  v47 = *(v77 + 8);
  v77 += 8;
  v65 = v47;
  (v47)(v44, v46);
  v80 = 125;
  v81 = 0xE100000000000000;
  MEMORY[0x253046B40](&v82, &v80, MEMORY[0x277D837D0], v73);
  v80 = v84[0];
  v81 = v84[1];
  sub_24F9211C8();

  sub_24F9211E8();
  v48 = v60;
  v49 = v78;
  v62 = v40;
  sub_24F9214D8();
  sub_24F9214B8();
  v50 = v64;
  (v64)(v48, v49);
  v51 = v59;
  v52 = v72;
  v72(v43, v59);
  v53 = v82;
  v54 = v83;
  sub_24F9211E8();
  v80 = v53;
  v81 = v54;
  sub_24F9214D8();

  sub_24E602068(&qword_27F247BC0, &qword_27F247BB0, &qword_24FA08AE8, v66);
  v55 = v74;
  v56 = v67;
  v57 = v78;
  sub_24F9214B8();
  v50(v48, v57);
  v52(v43, v51);
  (*(v68 + 8))(v55, v56);
  v50(v76, v57);
  return (v65)(v70, v75);
}

uint64_t sub_24F55DBBC(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17) | ((*(a1 + 21) | (*(a1 + 23) << 16)) << 32);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 65) | ((*(a1 + 69) | (*(a1 + 71) << 16)) << 32);
  if (*(a1 + 80) > 1u)
  {
    if (*(a1 + 80) != 2)
    {
      if (*(a2 + 80) != 3)
      {
        goto LABEL_64;
      }

      v45 = *(a1 + 48);
      v48 = *(a1 + 56);
      v21 = a2[2];
      v20 = a2[3];
      v23 = a2[4];
      v22 = a2[5];
      v33 = a2[6];
      v39 = a2[7];
      v42 = *(a1 + 64);
      v36 = *(a2 + 64);
      if ((v3 != *a2 || v4 != a2[1]) && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_64;
      }

      if (((v5 | (v6 << 8)) != v21 || v8 != v20) && (sub_24F92CE08() & 1) == 0)
      {
        goto LABEL_64;
      }

      if (v9)
      {
        if (!v22 || (v7 != v23 || v9 != v22) && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else if (v22)
      {
        goto LABEL_64;
      }

      if (v48)
      {
        v25 = v42;
        if (!v39 || (v45 != v33 || v48 != v39) && (sub_24F92CE08() & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v25 = v42;
        if (v39)
        {
          goto LABEL_64;
        }
      }

      v12 = v25 ^ v36;
      goto LABEL_8;
    }

    if (*(a2 + 80) != 2)
    {
      goto LABEL_64;
    }

    v43 = *(a1 + 48);
    v46 = *(a1 + 56);
    v14 = a2[2];
    v37 = a2[3];
    v40 = *(a1 + 64);
    v15 = a2[4];
    v31 = a2[6];
    v34 = a2[5];
    v27 = a2[8];
    v29 = a2[7];
    v16 = a2[1];
    if ((sub_24EA14BB8(v3, *a2) & 1) == 0)
    {
      goto LABEL_64;
    }

    if ((v4 != v16 || (v5 | (v6 << 8)) != v14) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_64;
    }

    if ((v8 != v37 || v7 != v15) && (sub_24F92CE08() & 1) == 0 || (v9 != v34 || v43 != v31) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_64;
    }

    if (v46 == v29 && (v40 | (v10 << 8)) == v27)
    {
LABEL_39:
      v13 = 1;
      return v13 & 1;
    }
  }

  else
  {
    if (!*(a1 + 80))
    {
      if (!*(a2 + 80))
      {
        if (v11 = *(a2 + 16), v3 == *a2) && v4 == a2[1] || (sub_24F92CE08())
        {
          v12 = v5 ^ v11;
LABEL_8:
          v13 = v12 ^ 1;
          return v13 & 1;
        }
      }

LABEL_64:
      v13 = 0;
      return v13 & 1;
    }

    if (*(a2 + 80) != 1)
    {
      goto LABEL_64;
    }

    v44 = *(a1 + 48);
    v47 = *(a1 + 56);
    v17 = a2[2];
    v18 = a2[3];
    v19 = a2[5];
    v38 = a2[4];
    v41 = *(a1 + 64);
    v35 = a2[6];
    v30 = *(a1 + 72);
    v32 = a2[7];
    v26 = a2[9];
    v28 = a2[8];
    if ((v3 != *a2 || v4 != a2[1]) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_64;
    }

    if (((v5 | (v6 << 8)) != v17 || v8 != v18) && (sub_24F92CE08() & 1) == 0 || (v7 != v38 || v9 != v19) && (sub_24F92CE08() & 1) == 0 || (v44 != v35 || v47 != v32) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_64;
    }

    if ((v41 | (v10 << 8)) == v28 && v30 == v26)
    {
      goto LABEL_39;
    }
  }

  return sub_24F92CE08();
}

uint64_t sub_24F55DFB0(char *a1, char *a2, void *a3)
{
  v160 = a1;
  v161 = a2;
  v119 = type metadata accessor for ActivityFeedItemRelationshipLeaderboard(0);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v115 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for ActivityFeedItemRelationshipAchievement(0);
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v128 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityFeedItemRelationshipPlayer(0);
  v133 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v116 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v130 = &v115 - v9;
  v132 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v132);
  v131 = (&v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247B98, &qword_24FA08AD0);
  v146 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v162 = &v115 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BA0, &qword_24FA08AD8);
  v157 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v142 = (&v115 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BA8, &qword_24FA08AE0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v159 = &v115 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BB0, &qword_24FA08AE8);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v115 - v25;
  v27 = a3[1];
  v147 = *a3;
  v134 = v27;
  v28 = a3[3];
  v122 = a3[2];
  v120 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BB8, &qword_24FA08AF0);
  sub_24E602068(&qword_27F247BC0, &qword_27F247BB0, &qword_24FA08AE8, MEMORY[0x277D85AC0]);
  sub_24F921538();
  sub_24F921548();
  v29 = *(v21 + 8);
  v30 = v23;
  v31 = v17;
  v126 = v21 + 8;
  v124 = v29;
  v29(v30, v20);
  v168 = v160;
  v169 = v161;
  sub_24E8B97C4();
  v125 = v26;
  v32 = v147;
  v127 = v20;
  result = sub_24F92AF48();
  v34 = result;
  v35 = 0;
  v36 = *(result + 16);
  v141 = v146 + 16;
  v37 = v157;
  v157 += 6;
  v158 = (v37 + 7);
  v154 = (v146 + 32);
  v129 = v32 + 4;
  v153 = (v146 + 8);
  v161 = MEMORY[0x277D84F90];
  v144 = v11;
  v145 = v13;
  v136 = v17;
  v156 = result;
  v155 = v36;
  while (1)
  {
    if (v35 == v36)
    {
      v38 = 1;
      v35 = v36;
      v39 = v159;
    }

    else
    {
      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_81;
      }

      v39 = v159;
      if (v35 >= *(v34 + 16))
      {
        goto LABEL_82;
      }

      v40 = v35++;
      v41 = v146;
      v42 = v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40;
      v43 = *(v13 + 48);
      v44 = v142;
      *v142 = v40;
      (*(v41 + 16))(v44 + v43, v42, v11);
      sub_24E6009C8(v44, v31, &qword_27F247BA0, &qword_24FA08AD8);
      v38 = 0;
    }

    (*v158)(v31, v38, 1, v13);
    sub_24E6009C8(v31, v39, &qword_27F247BA8, &qword_24FA08AE0);
    if ((*v157)(v39, 1, v13) == 1)
    {
      v124(v125, v127);

      return v161;
    }

    v45 = *v39;
    (*v154)(v162, &v39[*(v13 + 48)], v11);
    sub_24F921568();

    v165 = v170;
    v166 = v171;
    v167 = v172;
    v163 = 58;
    v164 = 0xE100000000000000;
    sub_24F55F314();
    sub_24E600AEC();
    v46 = sub_24F92C4E8();

    if (v46[2] < 2uLL)
    {
      break;
    }

    v47 = v46[6];
    v48 = v46[7];

    result = sub_24E9EEBE0(v47, v48, v49);
    if (v50)
    {
      v51 = 0;
    }

    else
    {
      v51 = result;
    }

    if (!v46[2])
    {
LABEL_2:

      result = (*v153)(v162, v11);
      goto LABEL_3;
    }

    v52 = v46[4];
    v53 = v46[5];
    if (v52 == 0x73726579616C70 && v53 == 0xE700000000000000 || (result = sub_24F92CE08(), (result & 1) != 0))
    {
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_83;
      }

      if (v51 >= *(v134 + 16))
      {
        goto LABEL_84;
      }

      v54 = v130;
      sub_24F55F368(v134 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v51, v130, type metadata accessor for ActivityFeedItemRelationshipPlayer);
      v55 = v54;
      v56 = v131;
      sub_24E61C0A8(v55, v131);
      v57 = (v56 + *(v132 + 28));
      v58 = *v57;
      v59 = v57[1];
      v60 = *(v56 + 8);
      v160 = *v56;

      v150 = v60;

      sub_24F55F3D0(v56, type metadata accessor for Player);
      LODWORD(v149) = 0;
      v151 = 0;
      v61 = 0;
      v152 = 0;
      v62 = 0;
LABEL_21:
      v63 = sub_24F921558();
      v65 = v64;
      if (v46[2] == 3)
      {

        if (v46[2] < 3uLL)
        {
          goto LABEL_85;
        }

        v58 = v46[8];
        v59 = v46[9];
      }

      v148 = v45;

      v66 = v35;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v161 = sub_24E616A60(0, *(v161 + 2) + 1, 1, v161);
      }

      v68 = *(v161 + 2);
      v67 = *(v161 + 3);
      v69 = v152;
      if (v68 >= v67 >> 1)
      {
        v161 = sub_24E616A60((v67 > 1), v68 + 1, 1, v161);
        v69 = v152;
      }

      v70 = v62 | v69;
      v71 = v61 | v151;
      v11 = v144;
      result = (*v153)(v162, v144);
      v73 = v160;
      v72 = v161;
      *(v161 + 2) = v68 + 1;
      v74 = &v72[128 * v68];
      *(v74 + 4) = v63;
      *(v74 + 5) = v65;
      *(v74 + 6) = v58;
      *(v74 + 7) = v59;
      v75 = v150;
      *(v74 + 8) = v73;
      *(v74 + 9) = v75;
      v76 = v143;
      *(v74 + 10) = v70;
      *(v74 + 11) = v76;
      v77 = v139;
      *(v74 + 12) = v140;
      *(v74 + 13) = v77;
      v78 = v138;
      *(v74 + 14) = v137;
      *(v74 + 15) = v78;
      v79 = v135;
      *(v74 + 16) = v71;
      *(v74 + 17) = v79;
      v74[144] = v149;
      LODWORD(v79) = v168;
      *(v74 + 37) = *(&v168 + 3);
      *(v74 + 145) = v79;
      *(v74 + 19) = v148;
      v13 = v145;
      v31 = v136;
      v32 = v147;
      v34 = v156;
      v36 = v155;
      v35 = v66;
    }

    else
    {
      if (v52 == 0x73656D6167 && v53 == 0xE500000000000000 || (result = sub_24F92CE08(), (result & 1) != 0))
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_86;
        }

        if (v51 >= v32[2])
        {
          goto LABEL_87;
        }

        v80 = &v129[13 * v51];
        v81 = v80[1];
        v82 = v80[8];
        v59 = v80[10];
        if (v59)
        {
          v83 = v81 == 0;
        }

        else
        {
          v83 = 1;
        }

        if (!v83 && v82 != 0)
        {
          v160 = *v80;
          v58 = v80[9];
          v152 = v80[7];
          v62 = v152 & 0xFFFFFFFFFFFFFF00;

          v150 = v81;

          v143 = v82;

          v140 = 0;
          v139 = 0;
          v137 = 0;
          v138 = 0;
          v151 = 0;
          v61 = 0;
          LODWORD(v149) = 3;
          goto LABEL_21;
        }

        result = (*v153)(v162, v11);
        goto LABEL_62;
      }

      if (v52 == 0x6D65766569686361 && v53 == 0xEC00000073746E65 || (result = sub_24F92CE08(), (result & 1) != 0))
      {
        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_88;
        }

        v85 = *(v122 + 16);
        if (v51 >= v85)
        {
          goto LABEL_89;
        }

        v86 = v122 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
        v149 = *(v121 + 72);
        v87 = (v86 + v149 * v51 + *(v123 + 32));
        v59 = v87[1];
        if (v59 && v147[2] && (v88 = v147[5]) != 0 && (v89 = v147[12]) != 0)
        {
          v34 = v156;
          v36 = v155;
          if (*(v134 + 16))
          {
            v115 = *v87;
            v150 = v147[4];
            v143 = v147[11];
            v90 = (v134 + ((*(v133 + 80) + 32) & ~*(v133 + 80)));
            v91 = v90[1];
            v139 = *v90;
            v92 = (v90 + *(v132 + 28));
            v93 = v92[1];
            v138 = *v92;
            v148 = (v128 + *(v123 + 28));
            v94 = v88;
            v95 = v89;

            v152 = v94;

            v140 = v95;

            v137 = v91;

            v151 = v93;

            v160 = MEMORY[0x277D84F90];
            do
            {
              v98 = v128;
              sub_24F55F368(v86, v128, type metadata accessor for ActivityFeedItemRelationshipAchievement);
              v100 = *v148;
              v99 = v148[1];

              sub_24F55F3D0(v98, type metadata accessor for ActivityFeedItemRelationshipAchievement);
              if (v99)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v160 = sub_24E615CF4(0, *(v160 + 2) + 1, 1, v160);
                }

                v102 = *(v160 + 2);
                v101 = *(v160 + 3);
                if (v102 >= v101 >> 1)
                {
                  v160 = sub_24E615CF4((v101 > 1), v102 + 1, 1, v160);
                }

                v96 = v160;
                *(v160 + 2) = v102 + 1;
                v97 = &v96[16 * v102];
                *(v97 + 4) = v100;
                *(v97 + 5) = v99;
              }

              v86 += v149;
              --v85;
            }

            while (v85);
            v62 = v152 & 0xFFFFFFFFFFFFFF00;
            v61 = v151 & 0xFFFFFFFFFFFFFF00;
            LODWORD(v149) = 2;
            v58 = v115;
            goto LABEL_21;
          }

          result = (*v153)(v162, v11);
          v13 = v145;
          v32 = v147;
        }

        else
        {

          result = (*v153)(v162, v11);
          v13 = v145;
LABEL_62:
          v32 = v147;
LABEL_3:
          v34 = v156;
          v36 = v155;
        }
      }

      else
      {
        if (v52 != 0x6F6272656461656CLL || v53 != 0xEC00000073647261)
        {
          result = sub_24F92CE08();
          if ((result & 1) == 0)
          {
            goto LABEL_2;
          }
        }

        if ((v51 & 0x8000000000000000) != 0)
        {
          goto LABEL_90;
        }

        if (v51 >= *(v120 + 16))
        {
          goto LABEL_91;
        }

        v103 = v117;
        sub_24F55F368(v120 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v51, v117, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
        v104 = v103 + *(v119 + 28);
        v105 = *(v104 + 8);
        v36 = v155;
        if (v105 && (v106 = (v103 + *(v119 + 32)), v106[1]))
        {
          v143 = v106[1];
          v34 = v156;
          if (v32[2])
          {
            v107 = v32[5];
            if (v107)
            {
              v108 = v32[12];
              if (v108)
              {
                if (*(v134 + 16))
                {
                  v160 = *v104;
                  v152 = *v106;
                  v140 = v32[4];
                  v137 = v32[11];
                  v109 = v105;
                  v110 = v107;
                  v111 = v108;
                  v112 = v116;
                  sub_24F55F368(v134 + ((*(v133 + 80) + 32) & ~*(v133 + 80)), v116, type metadata accessor for ActivityFeedItemRelationshipPlayer);
                  v150 = v109;

                  v59 = v143;

                  v139 = v110;

                  v138 = v111;

                  sub_24F55F3D0(v103, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
                  v113 = v131;
                  sub_24F55F368(v112, v131, type metadata accessor for Player);
                  sub_24F55F3D0(v112, type metadata accessor for ActivityFeedItemRelationshipPlayer);
                  v114 = *v113;
                  v135 = v113[1];

                  sub_24F55F3D0(v113, type metadata accessor for Player);
                  v58 = v152;
                  v62 = v152 & 0xFFFFFFFFFFFFFF00;
                  v151 = v114;
                  v61 = v114 & 0xFFFFFFFFFFFFFF00;

                  LODWORD(v149) = 1;
                  goto LABEL_21;
                }
              }
            }
          }

          sub_24F55F3D0(v103, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
          v11 = v144;
          result = (*v153)(v162, v144);
        }

        else
        {

          sub_24F55F3D0(v103, type metadata accessor for ActivityFeedItemRelationshipLeaderboard);
          v11 = v144;
          result = (*v153)(v162, v144);
          v34 = v156;
        }
      }
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
  return result;
}

unint64_t sub_24F55F314()
{
  result = qword_27F247BC8;
  if (!qword_27F247BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247BC8);
  }

  return result;
}

uint64_t sub_24F55F368(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F55F3D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F55F430(__n128 a1)
{
  result = qword_27F247BF0;
  if (!qword_27F247BF0)
  {
    sub_24F9211F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247BF0);
  }

  return result;
}

uint64_t sub_24F55F488(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247BD0, &qword_24FA08AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F55F51C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 81))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 80);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24F55F564(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_24F55F5FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 40);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F55F74C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for PlayTogetherTile(uint64_t a1)
{
  result = qword_27F247C28;
  if (!qword_27F247C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F55F8D4(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F247C38, &type metadata for PlayTogetherTile.Accessory);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
          if (v5 <= 0x3F)
          {
            sub_24E61C938(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F55FA10(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_24F55FA6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_24F55FAE0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247D58, &qword_24FA09168);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F562D6C();
  sub_24F92D128();
  v9 = *(v3 + 8);
  v10 = *(v3 + 16);
  v13 = *v3;
  v14 = v9;
  v15 = v10;
  v12[7] = 0;
  sub_24E672C48(v13, v9);
  sub_24E63FF50();
  sub_24F92CD48();
  sub_24E63FFA4(v13, v14);
  if (!v2)
  {
    LOBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F55FCD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247D48, &qword_24FA09160);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  sub_24E61DA68(&v10, v15, qword_27F21B590, &unk_24F93BE30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F562D6C();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E601704(v15, qword_27F24EC90, &unk_24F93C1D0);
  }

  else
  {
    v17 = 0;
    sub_24E641300();
    sub_24F92CC68();
    v13 = v10;
    v14 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v17 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    sub_24E61DA68(&v10, v15, qword_27F24EC90, &unk_24F93C1D0);
    sub_24F562A58(&v13, a2);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24F562AF4(&v13);
  }
}

uint64_t sub_24F55FF9C()
{
  if (*v0)
  {
    return 0x6575676573;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_24F55FFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
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

uint64_t sub_24F56009C(uint64_t a1)
{
  v2 = sub_24F562D6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5600D8(uint64_t a1)
{
  v2 = sub_24F562D6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F560144(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247D38, &qword_24FA09158);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F562B64();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F562CD0();
    sub_24F92CCF8();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for PlayTogetherTile(0);
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[8] = 7;
    sub_24F929608();
    sub_24F562D24(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F560500@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = v37 - v6;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247D20, &qword_24FA09150);
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = v37 - v8;
  v10 = type metadata accessor for PlayTogetherTile(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 152) = 0u;
  *&v50 = 0;
  v48 = 0u;
  v49 = 0u;
  *(v13 + 168) = 0u;
  *(v13 + 23) = 0;
  v45 = v13 + 152;
  sub_24E61DA68(&v48, (v13 + 152), qword_27F21B590, &unk_24F93BE30);
  v14 = *(v11 + 48);
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v44 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = *(v11 + 52);
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v47 = v17;
  v19(&v13[v17], 1, 1, v18);
  v20 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24F562B64();
  v41 = v9;
  v21 = v43;
  sub_24F92D108();
  if (v21)
  {
    v24 = v44;
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_24E601704(v45, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v13[v24], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v13[v47], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v43 = v7;
    v23 = v39;
    v22 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v52 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v25 = v49;
    *v13 = v48;
    *(v13 + 1) = v25;
    *(v13 + 4) = v50;
    LOBYTE(v48) = 1;
    v26 = sub_24F92CC28();
    v27 = v44;
    v28 = v23;
    *(v13 + 5) = v26;
    *(v13 + 6) = v29;
    LOBYTE(v48) = 2;
    v30 = sub_24F92CC28();
    v31 = v45;
    *(v13 + 7) = v30;
    *(v13 + 8) = v32;
    LOBYTE(v48) = 3;
    v37[1] = 0;
    *(v13 + 9) = sub_24F92CBC8();
    *(v13 + 10) = v33;
    v52 = 4;
    sub_24F562BB8();
    sub_24F92CC18();
    v34 = v49;
    *(v13 + 88) = v48;
    *(v13 + 104) = v34;
    v35 = v51;
    *(v13 + 120) = v50;
    *(v13 + 136) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v52 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v48, v31, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v48) = 6;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v43, &v13[v27], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v48) = 7;
    sub_24F562D24(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    (*(v28 + 8))(v41, v42);
    sub_24E61DA68(v22, &v13[v47], &qword_27F213E68, &unk_24F93BC80);
    sub_24F562C0C(v13, v38, type metadata accessor for PlayTogetherTile);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return sub_24F562C74(v13);
  }
}

unint64_t sub_24F560C8C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 6)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x726F737365636361;
  if (v1 != 4)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 2)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = 0x614E6C6F626D7973;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F560D88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F563138(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F560DB0(uint64_t a1)
{
  v2 = sub_24F562B64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F560DEC(uint64_t a1)
{
  v2 = sub_24F562B64();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F560E28@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 152, v5, qword_27F24EC90, &unk_24F93C1D0);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_24F560E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

__n128 sub_24F560FB0()
{
  v0 = sub_24F924258();
  __swift_allocate_value_buffer(v0, qword_27F247C10);
  v1 = __swift_project_value_buffer(v0, qword_27F247C10);
  v2 = *(v0 + 20);
  v3 = *MEMORY[0x277CE0118];
  v4 = sub_24F924B38();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  __asm { FMOV            V0.2D, #18.0 }

  *v1 = result;
  return result;
}

uint64_t sub_24F561054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247C50, &qword_24FA09040);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247C58, &qword_24FA09048);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247C60, &qword_24FA09050);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247C68, &qword_24FA09058);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247C70, &qword_24FA09060);
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v18 = &v59 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247C78, &qword_24FA09068);
  MEMORY[0x28223BE20](v60);
  v61 = &v59 - v19;
  *v5 = sub_24F924C98();
  *(v5 + 1) = 0x4028000000000000;
  v5[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247C80, &qword_24FA09070);
  sub_24F5617DC(a1, &v5[*(v20 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v5, v9, &qword_27F247C50, &qword_24FA09040);
  v21 = &v9[*(v7 + 44)];
  v22 = v71;
  *(v21 + 4) = v70;
  *(v21 + 5) = v22;
  *(v21 + 6) = v72;
  v23 = v67;
  *v21 = v66;
  *(v21 + 1) = v23;
  v24 = v69;
  *(v21 + 2) = v68;
  *(v21 + 3) = v24;
  v25 = sub_24F9275B8();
  v27 = v26;
  v28 = &v13[*(v11 + 44)];
  sub_24F56222C(a1, v28);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247C88, &unk_24FA09078) + 36));
  *v29 = v25;
  v29[1] = v27;
  sub_24E6009C8(v9, v13, &qword_27F247C58, &qword_24FA09048);
  LOBYTE(v25) = sub_24F925808();
  sub_24E6009C8(v13, v16, &qword_27F247C60, &qword_24FA09050);
  v30 = &v16[*(v14 + 36)];
  *v30 = v25;
  *(v30 + 8) = 0u;
  *(v30 + 24) = 0u;
  v30[40] = 1;
  sub_24E60169C((a1 + 19), v65, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v65, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v31 = sub_24F9248C8();
  __swift_project_value_buffer(v31, qword_27F39F078);
  sub_24F562854();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v16, &qword_27F247C68, &qword_24FA09058);
  if (qword_27F211340 != -1)
  {
    swift_once();
  }

  v32 = sub_24F924258();
  v33 = __swift_project_value_buffer(v32, qword_27F247C10);
  v34 = v61;
  v35 = &v61[*(v60 + 36)];
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48, &qword_24F9570D0);
  v37 = *(v36 + 36);
  v38 = type metadata accessor for GradientBackground(0);
  (*(*(v38 - 8) + 56))(v35 + v37, 1, 1, v38);
  v39 = MEMORY[0x277CDFC08];
  sub_24F562C0C(v33, v35, MEMORY[0x277CDFC08]);
  *(v35 + *(v36 + 40)) = 0;
  (*(v62 + 32))(v34, v18, v63);
  v65[3] = v32;
  v65[4] = sub_24F562D24(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  sub_24F562C0C(v33, boxed_opaque_existential_1, v39);
  v41 = v64;
  sub_24E60169C(v65, v64, &qword_27F247CB8, &qword_24FA09088);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247CC0, &qword_24FA09090);
  sub_24E60169C(v34, v41 + v42[9], &qword_27F247C78, &qword_24FA09068);
  v43 = v41 + v42[10];
  *v43 = sub_24F923398() & 1;
  *(v43 + 8) = v44;
  *(v43 + 16) = v45 & 1;
  v46 = v41 + v42[11];
  *v46 = swift_getKeyPath();
  *(v46 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v47 = qword_27F24E488;
  v48 = sub_24F923398();
  v50 = v49;
  v52 = v51;
  v53 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247CC8, &qword_24FA090C0) + 36);
  *v53 = v47;
  *(v53 + 8) = v48 & 1;
  *(v53 + 16) = v50;
  *(v53 + 24) = v52 & 1;
  LOBYTE(v47) = sub_24F923398();
  v55 = v54;
  LOBYTE(v50) = v56;
  sub_24E601704(v65, &qword_27F247CB8, &qword_24FA09088);
  sub_24E601704(v34, &qword_27F247C78, &qword_24FA09068);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247CD0, &unk_24FA090C8);
  v58 = v41 + *(result + 36);
  *v58 = v47 & 1;
  *(v58 + 8) = v55;
  *(v58 + 16) = v50 & 1;
  return result;
}

double sub_24F5617DC@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247CF8, &qword_24FA090F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247D00, &qword_24FA090F8);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;

  v27 = sub_24F926E48();
  v17 = sub_24F925888();
  KeyPath = swift_getKeyPath();
  *v6 = sub_24F924C98();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247D08, &qword_24FA09130);
  sub_24F561AC0(a1, &v6[*(v19 + 44)]);
  sub_24F927608();
  sub_24F9242E8();
  sub_24E6009C8(v6, v13, &qword_27F247CF8, &qword_24FA090F0);
  v20 = &v13[*(v8 + 44)];
  v21 = v33;
  *(v20 + 4) = v32;
  *(v20 + 5) = v21;
  *(v20 + 6) = v34;
  v22 = v29;
  *v20 = v28;
  *(v20 + 1) = v22;
  v23 = v31;
  *(v20 + 2) = v30;
  *(v20 + 3) = v23;
  sub_24E6009C8(v13, v16, &qword_27F247D00, &qword_24FA090F8);
  sub_24E60169C(v16, v10, &qword_27F247D00, &qword_24FA090F8);
  *a2 = v27;
  a2[1] = KeyPath;
  a2[2] = v17;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247D10, &unk_24FA09138);
  sub_24E60169C(v10, a2 + *(v24 + 48), &qword_27F247D00, &qword_24FA090F8);

  sub_24E601704(v16, &qword_27F247D00, &qword_24FA090F8);
  sub_24E601704(v10, &qword_27F247D00, &qword_24FA090F8);

  return result;
}

uint64_t sub_24F561AC0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v74 = a2;
  v65 = sub_24F9297D8();
  v63 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_24F929888();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v62 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217370, &qword_24F9454E0);
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v60 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241258, &qword_24F9EDB30);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v67 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v71 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;

  sub_24F925998();
  v15 = sub_24F925C98();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  *&v75 = v15;
  *(&v75 + 1) = v17;
  v22 = v19 & 1;
  LOBYTE(v76) = v19 & 1;
  *(&v76 + 1) = v21;
  v23 = 1;
  v69 = v14;
  sub_24F9268B8();
  sub_24E600B40(v15, v17, v22);

  if (a1[10])
  {

    sub_24F925898();
    v24 = sub_24F925C98();
    v26 = v25;
    v28 = v27;

    LODWORD(v75) = sub_24F9251C8();
    v29 = sub_24F925C58();
    v31 = v30;
    v59 = v30;
    v33 = v32;
    v35 = v34;
    sub_24E600B40(v24, v26, v28 & 1);

    v80 = v29;
    v81 = v31;
    v82 = v33 & 1;
    v83 = v35;
    v36 = v63;
    v37 = v61;
    v38 = v65;
    (*(v63 + 104))(v61, *MEMORY[0x277D22070], v65);
    memset(v79, 0, sizeof(v79));
    v78[3] = MEMORY[0x277D84030];
    v39 = swift_allocObject();
    v78[0] = v39;
    sub_24E60169C(a1, &v75, &qword_27F213F18, &qword_24F93BE20);
    v40 = v76;
    *(v39 + 16) = v75;
    *(v39 + 32) = v40;
    *(v39 + 48) = v77;
    v41 = v62;
    sub_24F929818();
    sub_24E601704(v79, &qword_27F2129B0, &unk_24F945320);
    (*(v36 + 8))(v37, v38);
    sub_24E601704(v78, &qword_27F2129B0, &unk_24F945320);
    v42 = v60;
    sub_24F925EE8();
    (*(v64 + 8))(v41, v66);
    sub_24E600B40(v29, v59, v33 & 1);

    v43 = v70;
    v44 = v68;
    v45 = v72;
    (*(v70 + 32))(v68, v42, v72);
    v23 = 0;
    v46 = v45;
    v47 = v43;
    v48 = v44;
  }

  else
  {
    v46 = v72;
    v47 = v70;
    v48 = v68;
  }

  (*(v47 + 56))(v48, v23, 1, v46);
  v49 = v67;
  v50 = *(v67 + 16);
  v51 = v71;
  v52 = v69;
  v50(v71, v69, v10);
  v53 = v73;
  sub_24E60169C(v48, v73, &qword_27F241258, &qword_24F9EDB30);
  v54 = v74;
  v50(v74, v51, v10);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247D18, &qword_24FA09148);
  sub_24E60169C(v53, &v54[*(v55 + 48)], &qword_27F241258, &qword_24F9EDB30);
  sub_24E601704(v48, &qword_27F241258, &qword_24F9EDB30);
  v56 = *(v49 + 8);
  v56(v52, v10);
  sub_24E601704(v53, &qword_27F241258, &qword_24F9EDB30);
  return (v56)(v51, v10);
}

uint64_t sub_24F56222C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_24F9241F8();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247CD8, &qword_24FA090D8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247CE0, &qword_24FA090E0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v25 - v15;
  sub_24E60169C(a1 + 88, &v29, &qword_27F247CE8, &qword_24FA090E8);
  if (v32 == 1)
  {
    sub_24E601704(&v29, &qword_27F247CE8, &qword_24FA090E8);
    return (*(v14 + 56))(v27, 1, 1, v13);
  }

  else
  {
    v33 = v29;
    v34[0] = v30;
    v34[1] = v31;
    v34[2] = v32;
    v18 = sub_24F9232F8();
    (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    sub_24E60169C(v34 + 8, v28, qword_27F24EC90, &unk_24F93C1D0);
    sub_24F562A58(&v33, &v29);
    v19 = swift_allocObject();
    v20 = v30;
    v19[1] = v29;
    v19[2] = v20;
    v21 = v32;
    v19[3] = v31;
    v19[4] = v21;
    sub_24E7DD2E0();
    sub_24F921788();
    sub_24F9241E8();
    sub_24E602068(&qword_27F247CF0, &qword_27F247CD8, &qword_24FA090D8, MEMORY[0x277D7EB00]);
    sub_24F562D24(&qword_27F212838, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    sub_24F926178();
    (*(v26 + 8))(v5, v3);
    (*(v10 + 8))(v12, v9);
    sub_24F927618();
    sub_24F9238C8();
    sub_24F562AF4(&v33);
    v22 = &v16[*(v13 + 36)];
    v23 = v30;
    *v22 = v29;
    *(v22 + 1) = v23;
    *(v22 + 2) = v31;
    v24 = v27;
    sub_24E6009C8(v16, v27, &qword_27F247CE0, &qword_24FA090E0);
    return (*(v14 + 56))(v24, 0, 1, v13);
  }
}

uint64_t sub_24F5626C4(uint64_t a1)
{
  sub_24F47D2E0();

  return sub_24F9218E8();
}

unint64_t sub_24F562754()
{
  result = qword_27F247C48;
  if (!qword_27F247C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247C48);
  }

  return result;
}

unint64_t sub_24F562854()
{
  result = qword_27F247C90;
  if (!qword_27F247C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247C68, &qword_24FA09058);
    sub_24F5628E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247C90);
  }

  return result;
}

unint64_t sub_24F5628E0()
{
  result = qword_27F247C98;
  if (!qword_27F247C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247C60, &qword_24FA09050);
    sub_24F562998();
    sub_24E602068(&qword_27F247CB0, &qword_27F247C88, &unk_24FA09078, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247C98);
  }

  return result;
}

unint64_t sub_24F562998()
{
  result = qword_27F247CA0;
  if (!qword_27F247CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247C58, &qword_24FA09048);
    sub_24E602068(&qword_27F247CA8, &qword_27F247C50, &qword_24FA09040, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247CA0);
  }

  return result;
}

uint64_t sub_24F562A90()
{
  sub_24E63FFA4(v0[2], v0[3]);
  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  return swift_deallocObject();
}

uint64_t sub_24F562ADC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_24E672C48(v2, v3);
}

uint64_t sub_24F562B2C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_24F562B64()
{
  result = qword_27F247D28;
  if (!qword_27F247D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D28);
  }

  return result;
}

unint64_t sub_24F562BB8()
{
  result = qword_27F247D30;
  if (!qword_27F247D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D30);
  }

  return result;
}

uint64_t sub_24F562C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F562C74(uint64_t a1)
{
  v2 = type metadata accessor for PlayTogetherTile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F562CD0()
{
  result = qword_27F247D40;
  if (!qword_27F247D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D40);
  }

  return result;
}

uint64_t sub_24F562D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F562D6C()
{
  result = qword_27F247D50;
  if (!qword_27F247D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D50);
  }

  return result;
}

unint64_t sub_24F562DE4()
{
  result = qword_27F247D60;
  if (!qword_27F247D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247CD0, &unk_24FA090C8);
    sub_24F562E70();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D60);
  }

  return result;
}

unint64_t sub_24F562E70()
{
  result = qword_27F247D68;
  if (!qword_27F247D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247CC8, &qword_24FA090C0);
    sub_24E602068(&qword_27F247D70, &qword_27F247CC0, &qword_24FA09090, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D68);
  }

  return result;
}

unint64_t sub_24F562F2C()
{
  result = qword_27F247D78;
  if (!qword_27F247D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D78);
  }

  return result;
}

unint64_t sub_24F562F84()
{
  result = qword_27F247D80;
  if (!qword_27F247D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D80);
  }

  return result;
}

unint64_t sub_24F562FDC()
{
  result = qword_27F247D88;
  if (!qword_27F247D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D88);
  }

  return result;
}

unint64_t sub_24F563034()
{
  result = qword_27F247D90;
  if (!qword_27F247D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D90);
  }

  return result;
}

unint64_t sub_24F56308C()
{
  result = qword_27F247D98;
  if (!qword_27F247D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247D98);
  }

  return result;
}

unint64_t sub_24F5630E4()
{
  result = qword_27F247DA0;
  if (!qword_27F247DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247DA0);
  }

  return result;
}

uint64_t sub_24F563138(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE900000000000079 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t ChallengesAllLeaderboardsDataIntent.initiatorID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengesAllLeaderboardsDataIntent.gameBundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_24F5634B0()
{
  sub_24EB68F4C();
  sub_24F924868();
  return v1;
}

uint64_t sub_24F563500@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_24F923998();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247DA8, &qword_24FA094A8);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247DB0, &qword_24FA094D8);
  v9 = (a2 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_24F5635BC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247DA8, &qword_24FA094A8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  (*(v5 + 16))(&v12 - v7, a1, v4, v6);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  result = (*(v5 + 32))(v10 + v9, v8, v4);
  *a2 = sub_24F563788;
  a2[1] = v10;
  return result;
}

uint64_t sub_24F5636F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247DA8, &qword_24FA094A8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F563788@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247DA8, &qword_24FA094A8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F563500(v4, a1);
}

unint64_t sub_24F563830()
{
  result = qword_27F247DB8;
  if (!qword_27F247DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247DC0, &qword_24FA094F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247DB8);
  }

  return result;
}

uint64_t sub_24F563894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24E7DDA4C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_24F56391C(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24F563AB4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for FriendSuggestionLockup(uint64_t a1)
{
  result = qword_27F247DC8;
  if (!qword_27F247DC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F563C84(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E6CFC68(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PlayerAvatar(319);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F563DA0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247E88, &qword_24FA097A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5661A4();
  sub_24F92D128();
  v27[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v9 = *(v3 + 88);
    v25[2] = *(v3 + 72);
    v25[3] = v9;
    v25[4] = *(v3 + 104);
    v26 = *(v3 + 120);
    v10 = *(v3 + 56);
    v25[0] = *(v3 + 40);
    v25[1] = v10;
    v11 = *(v3 + 88);
    v21 = *(v3 + 72);
    v22 = v11;
    v23 = *(v3 + 104);
    v24 = *(v3 + 120);
    v12 = *(v3 + 56);
    v19 = *(v3 + 40);
    v20 = v12;
    v18 = 1;
    sub_24E7FA89C(v25, v16);
    sub_24F536D28();
    sub_24F92CD48();
    v16[2] = v21;
    v16[3] = v22;
    v16[4] = v23;
    v17 = v24;
    v16[0] = v19;
    v16[1] = v20;
    sub_24E7FA8F8(v16);
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
    sub_24E602068(&qword_27F218310, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AA8]);
    sub_24F92CD48();
    type metadata accessor for FriendSuggestionLockup(0);
    v15 = 3;
    type metadata accessor for PlayerAvatar(0);
    sub_24F5662C0(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CD48();
    v15 = 4;
    sub_24F929608();
    sub_24F5662C0(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v15 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v15 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F564268@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v40);
  v41 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v35 - v5;
  v43 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v43);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247E78, &unk_24FA09798);
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = &v35 - v8;
  v10 = type metadata accessor for FriendSuggestionLockup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 32);
  v15 = sub_24F929608();
  v16 = *(*(v15 - 8) + 56);
  v49 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = &v12[*(v10 + 36)];
  *&v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v60 = v17;
  sub_24E61DA68(&v54, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = *(v10 + 40);
  v19 = sub_24F92A6D8();
  v20 = *(*(v19 - 8) + 56);
  v48 = v18;
  v20(&v12[v18], 1, 1, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F5661A4();
  v46 = v9;
  v21 = v47;
  sub_24F92D108();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v22 = v49;
LABEL_4:
    sub_24E601704(&v12[v22], &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v60, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v12[v48], &qword_27F215440, &unk_24F942BD0);
  }

  v37 = v15;
  v38 = v7;
  v47 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  LOBYTE(v51[0]) = 0;
  sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
  sub_24F92CC68();
  v24 = v55;
  *v12 = v54;
  *(v12 + 1) = v24;
  *(v12 + 4) = v56;
  v53 = 1;
  sub_24F536D7C();
  sub_24F92CC68();
  v25 = v44;
  v26 = v57;
  *(v12 + 72) = v56;
  *(v12 + 88) = v26;
  *(v12 + 104) = v58;
  *(v12 + 60) = v59;
  v27 = v55;
  *(v12 + 40) = v54;
  *(v12 + 56) = v27;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
  v50 = 2;
  v28 = v45;
  v29 = v36;
  sub_24E602068(&qword_27F243830, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AB0]);
  sub_24F92CC68();
  v30 = v47;
  if (v29)
  {
    (*(v25 + 8))(v46, v28);
    v22 = v49;
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24E601704(v12, &qword_27F213F18, &qword_24F93BE20);
    goto LABEL_4;
  }

  v31 = v51[1];
  *(v12 + 8) = v51[0];
  *(v12 + 9) = v31;
  *(v12 + 20) = v52;
  LOBYTE(v51[0]) = 3;
  sub_24F5662C0(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
  v32 = v38;
  sub_24F92CC68();
  sub_24E72FFFC(v32, &v12[*(v30 + 28)]);
  LOBYTE(v51[0]) = 4;
  sub_24F5662C0(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
  v33 = v42;
  sub_24F92CC18();
  sub_24E61DA68(v33, &v12[v49], &qword_27F213E68, &unk_24F93BC80);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
  v50 = 5;
  sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
  sub_24F92CC68();
  sub_24E61DA68(v51, v60, qword_27F24EC90, &unk_24F93C1D0);
  LOBYTE(v51[0]) = 6;
  sub_24E65CAA0();
  v34 = v41;
  sub_24F92CC68();
  (*(v44 + 8))(v46, v45);
  sub_24E61DA68(v34, &v12[v48], &qword_27F215440, &unk_24F942BD0);
  sub_24F5661F8(v12, v39, type metadata accessor for FriendSuggestionLockup);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F566260(v12, type metadata accessor for FriendSuggestionLockup);
}

uint64_t sub_24F564C40()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 5)
  {
    v3 = 0x4D747865746E6F63;
  }

  v4 = 0x726174617661;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6974736567677573;
  if (v1 != 1)
  {
    v5 = 0x6341657469766E69;
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

uint64_t sub_24F564D20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F5664DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F564D48(uint64_t a1)
{
  v2 = sub_24F5661A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F564D84(uint64_t a1)
{
  v2 = sub_24F5661A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F564DC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F564EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = sub_24F924C38();
  v4 = *(v3 - 8);
  v91 = v3;
  v92 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v87[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v87[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247DF8, &qword_24FA09700);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v87[-v12];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247E00, &qword_24FA09708);
  MEMORY[0x28223BE20](v90);
  v15 = &v87[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247E08, &qword_24FA09710);
  v94 = *(v16 - 8);
  v95 = v16;
  MEMORY[0x28223BE20](v16);
  v93 = &v87[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v99 = &v87[-v19];
  v20 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v87[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v100 = &v87[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v28 = &v87[-v27];
  v29 = type metadata accessor for FriendSuggestionLockup(0);
  sub_24F5661F8(a1 + *(v29 + 28), v22, type metadata accessor for PlayerAvatar);
  LOBYTE(v109[0]) = 7;
  sub_24F8319B8(v22, v109, v28);
  sub_24F927618();
  sub_24F9238C8();
  v30 = *(v24 + 44);
  v98 = v28;
  v31 = &v28[v30];
  v32 = v101[6];
  *v31 = v101[5];
  v31[1] = v32;
  v31[2] = v101[7];
  v89 = sub_24F924C98();
  LOBYTE(v109[0]) = 1;
  sub_24F565914(v102);
  *(v101 + 7) = v102[0];
  *(&v101[1] + 7) = v102[1];
  *(&v101[2] + 7) = v102[2];
  *(&v101[3] + 7) = v102[3];
  v97 = LOBYTE(v109[0]);
  v88 = sub_24F925838();
  sub_24F923318();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = sub_24F9232F8();
  (*(*(v41 - 8) + 56))(v9, 1, 1, v41);
  sub_24E60169C(a1 + 128, &v104, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80(&v104, v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247E10, &qword_24FA09718);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247E18, &unk_24FA09720);
  v43 = sub_24F565FA0();
  *&v104 = v42;
  *(&v104 + 1) = v43;
  swift_getOpaqueTypeConformance2();
  sub_24F921788();
  v44 = sub_24F926D18();
  LOBYTE(a1) = sub_24F925808();
  v45 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247E38, &unk_24FA09738) + 36)];
  *v45 = v44;
  v45[8] = a1;
  v46 = &v13[*(v11 + 44)];
  v47 = *MEMORY[0x277CE0118];
  v48 = sub_24F924B38();
  v49 = *(*(v48 - 8) + 104);
  v49(v46, v47, v48);
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2552C0, &qword_24F951970) + 36)) = 256;
  *&v111[7] = sub_24F9271D8();
  *&v111[15] = sub_24F5662C0(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v109);
  v49(boxed_opaque_existential_1, v47, v48);
  sub_24E60169C(v109, v15, &qword_27F247E40, &qword_24FA09748);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247E48, &qword_24FA09750);
  sub_24E60169C(v13, &v15[v51[9]], &qword_27F247DF8, &qword_24FA09700);
  v52 = &v15[v51[10]];
  *v52 = sub_24F923398() & 1;
  *(v52 + 1) = v53;
  v52[16] = v54 & 1;
  v55 = &v15[v51[11]];
  *v55 = swift_getKeyPath();
  v55[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v56 = qword_27F24E488;
  v57 = sub_24F923398();
  v59 = v58;
  v61 = v60;
  v62 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247E50, &qword_24FA09780) + 36)];
  *v62 = v56;
  v62[8] = v57 & 1;
  *(v62 + 2) = v59;
  v62[24] = v61 & 1;
  LOBYTE(v56) = sub_24F923398();
  v64 = v63;
  LOBYTE(v59) = v65;
  sub_24E601704(v109, &qword_27F247E40, &qword_24FA09748);
  sub_24E601704(v13, &qword_27F247DF8, &qword_24FA09700);
  v66 = &v15[*(v90 + 36)];
  *v66 = v56 & 1;
  *(v66 + 1) = v64;
  v66[16] = v59 & 1;
  sub_24F924C28();
  sub_24F566060();
  sub_24F5662C0(&qword_27F21A8C0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v67 = v99;
  v68 = v91;
  sub_24F926178();
  (*(v92 + 8))(v6, v68);
  sub_24E601704(v15, &qword_27F247E00, &qword_24FA09708);
  v69 = v100;
  sub_24E60169C(v98, v100, &qword_27F2233D0, &qword_24F958810);
  v71 = v93;
  v70 = v94;
  v72 = *(v94 + 16);
  v73 = v95;
  v72(v93, v67, v95);
  v74 = v69;
  v75 = v96;
  sub_24E60169C(v74, v96, &qword_27F2233D0, &qword_24F958810);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247E70, &qword_24FA09788);
  v77 = v75 + v76[12];
  v78 = v89;
  v104 = v89;
  LOBYTE(v105[0]) = v97;
  *(&v105[3] + 1) = v101[3];
  *&v105[4] = *(&v101[3] + 15);
  *(&v105[1] + 1) = v101[1];
  *(&v105[2] + 1) = v101[2];
  *(v105 + 1) = v101[0];
  LOBYTE(v67) = v88;
  BYTE8(v105[4]) = v88;
  *(&v105[4] + 9) = *v103;
  HIDWORD(v105[4]) = *&v103[3];
  *&v106 = v34;
  *(&v106 + 1) = v36;
  *&v107 = v38;
  *(&v107 + 1) = v40;
  v108 = 0;
  *(v77 + 128) = 0;
  v79 = v105[4];
  v80 = v104;
  *(v77 + 64) = v105[3];
  *(v77 + 80) = v79;
  v81 = v105[2];
  *(v77 + 32) = v105[1];
  *(v77 + 48) = v81;
  v82 = v105[0];
  *v77 = v80;
  *(v77 + 16) = v82;
  v83 = v107;
  *(v77 + 96) = v106;
  *(v77 + 112) = v83;
  v84 = v75 + v76[16];
  *v84 = 0;
  *(v84 + 8) = 1;
  v72((v75 + v76[20]), v71, v73);
  sub_24E60169C(&v104, v109, &qword_27F22C9B0, &qword_24FA09790);
  v85 = *(v70 + 8);
  v85(v99, v73);
  sub_24E601704(v98, &qword_27F2233D0, &qword_24F958810);
  v85(v71, v73);
  v109[0] = v78;
  v109[1] = 0;
  v110 = v97;
  v112 = v101[2];
  *v113 = v101[3];
  *&v113[15] = *(&v101[3] + 15);
  *v111 = v101[0];
  *&v111[16] = v101[1];
  v114 = v67;
  *v115 = *v103;
  *&v115[3] = *&v103[3];
  v116 = v34;
  v117 = v36;
  v118 = v38;
  v119 = v40;
  v120 = 0;
  sub_24E601704(v109, &qword_27F22C9B0, &qword_24FA09790);
  return sub_24E601704(v100, &qword_27F2233D0, &qword_24F958810);
}

uint64_t sub_24F565914@<X0>(uint64_t a2@<X8>)
{
  sub_24E600AEC();

  v3 = sub_24F925E18();
  v26 = v4;
  v27 = v3;
  v25 = v5;
  v28 = v6;
  if (qword_27F211560 != -1)
  {
    swift_once();
  }

  v7 = sub_24F925E18();
  v9 = v8;
  v11 = v10;
  sub_24F9259E8();
  v12 = sub_24F925C98();
  v14 = v13;
  v16 = v15;

  sub_24E600B40(v7, v9, v11 & 1);

  sub_24F9251C8();
  v17 = sub_24F925C58();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_24E600B40(v12, v14, v16 & 1);

  *a2 = v27;
  *(a2 + 8) = v26;
  *(a2 + 16) = v25 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = v17;
  *(a2 + 40) = v19;
  *(a2 + 48) = v21 & 1;
  *(a2 + 56) = v23;
  sub_24E5FD138(v27, v26, v25 & 1);

  sub_24E5FD138(v17, v19, v21 & 1);

  sub_24E600B40(v17, v19, v21 & 1);

  sub_24E600B40(v27, v26, v25 & 1);
}

uint64_t sub_24F565B34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247E18, &unk_24FA09720);
  MEMORY[0x28223BE20](v0);
  v2 = &v21 - v1;
  if (qword_27F211558 != -1)
  {
    swift_once();
  }

  v21 = qword_27F39EB78;
  v22 = unk_27F39EB80;
  sub_24E600AEC();

  v3 = sub_24F925E18();
  v5 = v4;
  v21 = v3;
  v22 = v4;
  v7 = v6 & 1;
  v23 = v6 & 1;
  v24 = v8;
  sub_24F9268B8();
  sub_24E600B40(v3, v5, v7);

  v9 = sub_24F9257F8();
  sub_24F923318();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = &v2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8, &unk_24F946390) + 36)];
  *v18 = v9;
  *(v18 + 1) = v11;
  *(v18 + 2) = v13;
  *(v18 + 3) = v15;
  *(v18 + 4) = v17;
  v18[40] = 0;
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v19 = sub_24F9248C8();
  __swift_project_value_buffer(v19, qword_27F39F078);
  sub_24F565FA0();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v2, &qword_27F247E18, &unk_24FA09720);
}

uint64_t sub_24F565D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247DE8, &qword_24FA096E8);
  sub_24F564EF0(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = sub_24F925868();
  sub_24F923318();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247DF0, &unk_24FA096F0);
  v14 = a2 + *(result + 36);
  *v14 = a1;
  *(v14 + 8) = v6;
  *(v14 + 16) = v8;
  *(v14 + 24) = v10;
  *(v14 + 32) = v12;
  *(v14 + 40) = 0;
  return result;
}

uint64_t sub_24F565E10(uint64_t a1)
{
  sub_24F47D73C();

  return sub_24F9218E8();
}

unint64_t sub_24F565EA0()
{
  result = qword_27F247DE0;
  if (!qword_27F247DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247DE0);
  }

  return result;
}

unint64_t sub_24F565FA0()
{
  result = qword_27F247E20;
  if (!qword_27F247E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247E18, &unk_24FA09720);
    sub_24E6AFAB0();
    sub_24E602068(&qword_27F247E28, &qword_27F247E30, &qword_24FA09730, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247E20);
  }

  return result;
}

unint64_t sub_24F566060()
{
  result = qword_27F247E58;
  if (!qword_27F247E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247E00, &qword_24FA09708);
    sub_24F5660EC();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247E58);
  }

  return result;
}

unint64_t sub_24F5660EC()
{
  result = qword_27F247E60;
  if (!qword_27F247E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247E50, &qword_24FA09780);
    sub_24E602068(&qword_27F247E68, &qword_27F247E48, &qword_24FA09750, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247E60);
  }

  return result;
}

unint64_t sub_24F5661A4()
{
  result = qword_27F247E80;
  if (!qword_27F247E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247E80);
  }

  return result;
}

uint64_t sub_24F5661F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F566260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F5662C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F56631C()
{
  result = qword_27F247E90;
  if (!qword_27F247E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247DF0, &unk_24FA096F0);
    sub_24E602068(&qword_27F247E98, &qword_27F247EA0, &qword_24FA097C0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247E90);
  }

  return result;
}

unint64_t sub_24F5663D8()
{
  result = qword_27F247EA8;
  if (!qword_27F247EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247EA8);
  }

  return result;
}

unint64_t sub_24F566430()
{
  result = qword_27F247EB0;
  if (!qword_27F247EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247EB0);
  }

  return result;
}

unint64_t sub_24F566488()
{
  result = qword_27F247EB8;
  if (!qword_27F247EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247EB8);
  }

  return result;
}

uint64_t sub_24F5664DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974736567677573 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6341657469766E69 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
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

uint64_t ChallengesSuggestedGamesShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t ChallengesSuggestedGamesShelfConstructionIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = 0x67677553656D6167;
  *(inited + 40) = 0xEF736E6F69747365;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E0, &qword_24F96B290);
  v8 = sub_24F567034(&qword_27F247EC0, &qword_27F247EC8, &protocol conformance descriptor for GameSuggestion, MEMORY[0x277D22590]);
  *(inited + 48) = v3;
  *(inited + 80) = v8;
  *(inited + 88) = 0x444965676170;
  v9 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v9;
  *(inited + 96) = 0xE600000000000000;
  *(inited + 104) = v4;
  *(inited + 112) = v5;
  *(inited + 144) = 0x706574537478656ELL;
  *(inited + 152) = 0xE800000000000000;
  *(inited + 184) = &type metadata for ChallengesGamePickerNextStep;
  *(inited + 192) = sub_24E606E50();
  *(inited + 160) = v6;

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

uint64_t sub_24F566964()
{
  v1 = 0x444965676170;
  if (*v0 != 1)
  {
    v1 = 0x706574537478656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x67677553656D6167;
  }
}

uint64_t sub_24F5669C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F567228(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F5669F0(uint64_t a1)
{
  v2 = sub_24F566FE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F566A2C(uint64_t a1)
{
  v2 = sub_24F566FE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesSuggestedGamesShelfConstructionIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247ED0, &qword_24FA09900);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v13 = v1[2];
  v14 = v8;
  HIDWORD(v12) = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F566FE0();

  sub_24F92D128();
  v19 = v9;
  v18 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E0, &qword_24F96B290);
  sub_24F567034(&qword_27F247EE0, &qword_27F247EE8, &protocol conformance descriptor for GameSuggestion, MEMORY[0x277D83948]);
  sub_24F92CD48();

  if (!v2)
  {
    v10 = BYTE4(v12);
    v17 = 1;
    sub_24F92CD08();
    v16 = v10;
    v15 = 2;
    sub_24E607F0C();
    sub_24F92CD48();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t ChallengesSuggestedGamesShelfConstructionIntent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247EF0, &qword_24FA09908);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F566FE0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E0, &qword_24F96B290);
  v22 = 0;
  sub_24F567034(&qword_27F247EF8, &qword_27F247F00, &protocol conformance descriptor for GameSuggestion, MEMORY[0x277D83978]);
  sub_24F92CC68();
  v18 = a2;
  v9 = v23;
  v21 = 1;
  v10 = sub_24F92CC28();
  v17 = v11;
  v19 = 2;
  sub_24E60802C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v12 = v20;
  v14 = v17;
  v13 = v18;
  *v18 = v9;
  v13[1] = v10;
  v13[2] = v14;
  *(v13 + 24) = v12;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F566FE0()
{
  result = qword_27F247ED8;
  if (!qword_27F247ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247ED8);
  }

  return result;
}

uint64_t sub_24F567034(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2229E0, &qword_24F96B290);
    sub_24F5670BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F5670BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GameSuggestion(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F567124()
{
  result = qword_27F247F08;
  if (!qword_27F247F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F08);
  }

  return result;
}

unint64_t sub_24F56717C()
{
  result = qword_27F247F10;
  if (!qword_27F247F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F10);
  }

  return result;
}

unint64_t sub_24F5671D4()
{
  result = qword_27F247F18;
  if (!qword_27F247F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247F18);
  }

  return result;
}

uint64_t sub_24F567228(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x67677553656D6167 && a2 == 0xEF736E6F69747365;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444965676170 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706574537478656ELL && a2 == 0xE800000000000000)
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

uint64_t static GamesMapEventHelper.postGamesMapEvent(provider:canonicalID:actionType:hostAppBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_24E614970;

  return sub_24F567434(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_24F567434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v7[19] = a2;
  v7[20] = a3;
  v7[18] = a1;
  v10 = sub_24F921638();
  v7[25] = v10;
  v7[26] = *(v10 - 8);
  v7[27] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[28] = v11;
  v12 = sub_24F921658();
  v7[29] = v12;
  v7[30] = *(v12 - 8);
  v7[31] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[32] = v13;
  v7[12] = a2;
  v7[13] = a3;
  v14 = swift_task_alloc();
  v7[33] = v14;
  *v14 = v7;
  v14[1] = sub_24F567604;
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x277D83840];

  return MEMORY[0x282140760](v13, 0x73656D6167, 0xE500000000000000, v7 + 12, v15, v16, v11);
}

uint64_t sub_24F567604()
{

  if (v0)
  {
    v1 = sub_24F567BB8;
  }

  else
  {
    v1 = sub_24F567714;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_24F567714()
{
  v2 = v0[19];
  v1 = v0[20];
  sub_24F921648();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[16] = sub_24F9215F8();
  v0[17] = v3;
  v0[34] = v3;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[14] = v2;
  v0[15] = v1;
  v4 = swift_task_alloc();
  v0[35] = v4;
  *v4 = v0;
  v4[1] = sub_24F56783C;
  v5 = v0[31];
  v6 = v0[27];
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D83840];

  return MEMORY[0x282140760](v5, 0x746E6563656D6167, 0xEA00000000007265, v0 + 14, v7, v8, v6);
}

uint64_t sub_24F56783C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_24F567C80;
  }

  else
  {
    *(v2 + 288) = *(v2 + 128);
    v3 = sub_24F56795C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F56795C()
{
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  v14 = *(v3 + 8);
  v14(v1, v4);
  (*(v3 + 32))(v1, v2, v4);
  sub_24F921648();
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9215F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = [objc_opt_self() proxyForLocalPlayer];
  v6 = [v5 utilityServicePrivate];

  v7 = sub_24F92B098();

  v8 = sub_24F92B098();

  v9 = sub_24F92B098();
  v10 = sub_24F92B098();
  sub_24E608448(MEMORY[0x277D84F90]);
  v11 = sub_24F92AE28();

  [v6 postGamesMapEventWithGamesUserID:v7 gameCenterUserID:v8 actionType:v9 hostAppBundleId:v10 additionalFields:v11];

  swift_unknownObjectRelease();
  v14(v1, v4);

  v12 = v0[1];

  return v12();
}

uint64_t sub_24F567BB8()
{
  v1 = v0[28];
  v2 = v0[25];
  v3 = v0[26];
  sub_24F567D88();
  swift_allocError();
  (*(v3 + 32))(v4, v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F567C80()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  sub_24F567D88();
  swift_allocError();
  (*(v5 + 32))(v7, v4, v6);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

unint64_t sub_24F567D88()
{
  result = qword_27F22D528;
  if (!qword_27F22D528)
  {
    sub_24F921638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22D528);
  }

  return result;
}

uint64_t sub_24F567DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a2;
  v39 = a1;
  v49 = sub_24F928698();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F80, &qword_24FA09D48);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = (&v39 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F88, &unk_24FA09D50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v39 - v14);
  v16 = *(type metadata accessor for SearchPageContainer(0) + 36);
  v17 = sub_24F928AD8();
  (*(*(v17 - 8) + 16))(a3, v3 + v16, v17);
  v41 = a3;
  v18 = a3;
  v19 = sub_24F928AC8();
  v20 = 0;
  v21 = *(v19 + 16);
  v42 = v5 + 16;
  v22 = (v47 + 7);
  v47 += 6;
  v48 = v19;
  v44 = v5;
  v45 = (v5 + 8);
  v46 = (v5 + 32);
  while (1)
  {
    if (v20 == v21)
    {
      v23 = 1;
      v20 = v21;
    }

    else
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v20 >= *(v48 + 16))
      {
        goto LABEL_25;
      }

      v24 = v44;
      v25 = v49;
      v26 = v48 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20;
      v27 = *(v8 + 48);
      v28 = v7;
      v29 = v43;
      *v43 = v20;
      (*(v24 + 16))(v29 + v27, v26, v25);
      v30 = v29;
      v7 = v28;
      sub_24E6009C8(v30, v12, &qword_27F247F80, &qword_24FA09D48);
      v23 = 0;
      ++v20;
    }

    (*v22)(v12, v23, 1, v8);
    sub_24E6009C8(v12, v15, &qword_27F247F88, &unk_24FA09D50);
    if ((*v47)(v15, 1, v8) == 1)
    {
    }

    v5 = *v15;
    (*v46)(v7, v15 + *(v8 + 48), v49);
    v18 = sub_24F928688();
    if (!v18[2] || (v31 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v32 & 1) == 0))
    {

      goto LABEL_3;
    }

    sub_24E643A9C(v18[7] + 32 * v31, v53);

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_3:
    (*v45)(v7, v49);
  }

  v18 = v52;
  if (v51 != 0x6B63696C63 || v52 != 0xE500000000000000)
  {
    v33 = v5;
    v5 = sub_24F92CE08();

    if (v5)
    {

      v5 = v33;
      goto LABEL_19;
    }

    goto LABEL_3;
  }

LABEL_19:
  v53[3] = MEMORY[0x277D837D0];
  v53[0] = v39;
  v53[1] = v40;

  v20 = sub_24F928AB8();
  v21 = v35;
  v18 = *v35;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v18;
  if (result)
  {
    v36 = v49;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_26:
  result = sub_24ECDE188(v18);
  v18 = result;
  *v21 = result;
  v36 = v49;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v5 < v18[2])
  {
    v37 = v44;
    v38 = sub_24F928678();
    sub_24E98859C(v53, 0x6554686372616573, 0xEA00000000006D72);
    v38(v50, 0);
    (v20)(&v51, 0);
    return (*(v37 + 8))(v7, v36);
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_24F568388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a2;
  v39 = a1;
  v49 = sub_24F928698();
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F80, &qword_24FA09D48);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = (&v39 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F88, &unk_24FA09D50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v39 - v14);
  v16 = *(type metadata accessor for SearchPageContainer(0) + 40);
  v17 = sub_24F928AD8();
  (*(*(v17 - 8) + 16))(a3, v3 + v16, v17);
  v41 = a3;
  v18 = a3;
  v19 = sub_24F928AC8();
  v20 = 0;
  v21 = *(v19 + 16);
  v42 = v5 + 16;
  v22 = (v47 + 7);
  v47 += 6;
  v48 = v19;
  v44 = v5;
  v45 = (v5 + 8);
  v46 = (v5 + 32);
  while (1)
  {
    if (v20 == v21)
    {
      v23 = 1;
      v20 = v21;
    }

    else
    {
      if ((v20 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v20 >= *(v48 + 16))
      {
        goto LABEL_25;
      }

      v24 = v44;
      v25 = v49;
      v26 = v48 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20;
      v27 = *(v8 + 48);
      v28 = v7;
      v29 = v43;
      *v43 = v20;
      (*(v24 + 16))(v29 + v27, v26, v25);
      v30 = v29;
      v7 = v28;
      sub_24E6009C8(v30, v12, &qword_27F247F80, &qword_24FA09D48);
      v23 = 0;
      ++v20;
    }

    (*v22)(v12, v23, 1, v8);
    sub_24E6009C8(v12, v15, &qword_27F247F88, &unk_24FA09D50);
    if ((*v47)(v15, 1, v8) == 1)
    {
    }

    v5 = *v15;
    (*v46)(v7, v15 + *(v8 + 48), v49);
    v18 = sub_24F928688();
    if (!v18[2] || (v31 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v32 & 1) == 0))
    {

      goto LABEL_3;
    }

    sub_24E643A9C(v18[7] + 32 * v31, v53);

    if (swift_dynamicCast())
    {
      break;
    }

LABEL_3:
    (*v45)(v7, v49);
  }

  v18 = v52;
  if (v51 != 0x6B63696C63 || v52 != 0xE500000000000000)
  {
    v33 = v5;
    v5 = sub_24F92CE08();

    if (v5)
    {

      v5 = v33;
      goto LABEL_19;
    }

    goto LABEL_3;
  }

LABEL_19:
  v53[3] = MEMORY[0x277D837D0];
  v53[0] = v39;
  v53[1] = v40;

  v20 = sub_24F928AB8();
  v21 = v35;
  v18 = *v35;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v21 = v18;
  if (result)
  {
    v36 = v49;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

LABEL_26:
  result = sub_24ECDE188(v18);
  v18 = result;
  *v21 = result;
  v36 = v49;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (v5 < v18[2])
  {
    v37 = v44;
    v38 = sub_24F928678();
    sub_24E98859C(v53, 0x6554686372616573, 0xEA00000000006D72);
    v38(v50, 0);
    (v20)(&v51, 0);
    return (*(v37 + 8))(v7, v36);
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_24F568930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(&v97 + 1) = a2;
  *&v97 = a1;
  v5 = sub_24F928698();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F80, &qword_24FA09D48);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v99 = (&v94 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247F88, &unk_24FA09D50);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v94 - v16;
  v18 = *(type metadata accessor for SearchPageContainer(0) + 32);
  v19 = sub_24F928AD8();
  v20 = v3 + v18;
  v21 = v5;
  (*(*(v19 - 8) + 16))(a3, v20, v19);
  v96 = a3;
  v22 = 0;
  v100 = sub_24F928AC8();
  v23 = *(v100 + 16);
  v98 = v6 + 16;
  v105 = (v10 + 48);
  v106 = (v10 + 56);
  v104 = (v6 + 32);
  v101 = v6;
  v102 = (v6 + 8);
  v107 = v21;
  for (i = v23; ; v23 = i)
  {
    if (v22 == v23)
    {
      v26 = 1;
      v22 = v23;
      goto LABEL_12;
    }

    if ((v22 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v22 >= *(v100 + 16))
    {
      goto LABEL_79;
    }

    v27 = v101;
    v28 = v100 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22;
    v29 = *(v9 + 48);
    v30 = v99;
    *v99 = v22;
    (*(v27 + 16))(v30 + v29, v28, v21);
    sub_24E6009C8(v30, v14, &qword_27F247F80, &qword_24FA09D48);
    v26 = 0;
    ++v22;
LABEL_12:
    (*v106)(v14, v26, 1, v9);
    sub_24E6009C8(v14, v17, &qword_27F247F88, &unk_24FA09D50);
    if ((*v105)(v17, 1, v9) == 1)
    {
    }

    v31 = *v17;
    (*v104)(v8, &v17[*(v9 + 48)], v21);
    v32 = sub_24F928688();
    if (*(v32 + 16) && (v33 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v34 & 1) != 0))
    {
      sub_24E643A9C(*(v32 + 56) + 32 * v33, &v114);

      if (swift_dynamicCast())
      {
        if (v112 == 0x6B63696C63 && v113 == 0xE500000000000000)
        {

LABEL_29:
          v115 = MEMORY[0x277D837D0];
          v114 = v97;

          v95 = sub_24F928AB8();
          v41 = v40;
          v42 = *v40;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v41 = v42;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v31 & 0x8000000000000000) != 0)
            {
              goto LABEL_80;
            }
          }

          else
          {
            v42 = sub_24ECDE188(v42);
            *v41 = v42;
            if ((v31 & 0x8000000000000000) != 0)
            {
              goto LABEL_80;
            }
          }

          if (v31 >= v42[2])
          {
            goto LABEL_81;
          }

          v94 = sub_24F928678();
          v45 = v44;
          if (v115)
          {
            sub_24E612B0C(&v114, &v109);
            v46 = swift_isUniquelyReferenced_nonNull_native();
            v108 = *v45;
            v47 = v108;
            *v45 = 0x8000000000000000;
            v49 = sub_24E76D644(0x6554686372616573, 0xEA00000000006D72);
            v50 = v47[2];
            v51 = (v48 & 1) == 0;
            v52 = v50 + v51;
            if (__OFADD__(v50, v51))
            {
              goto LABEL_84;
            }

            v53 = v48;
            if (v47[3] >= v52)
            {
              if (v46)
              {
                v56 = v108;
                if ((v48 & 1) == 0)
                {
                  goto LABEL_57;
                }
              }

              else
              {
                sub_24E8AD8E4();
                v56 = v108;
                if ((v53 & 1) == 0)
                {
                  goto LABEL_57;
                }
              }
            }

            else
            {
              sub_24E89873C(v52, v46);
              v54 = sub_24E76D644(0x6554686372616573, 0xEA00000000006D72);
              if ((v53 & 1) != (v55 & 1))
              {
                goto LABEL_88;
              }

              v49 = v54;
              v56 = v108;
              if ((v53 & 1) == 0)
              {
LABEL_57:
                v56[(v49 >> 6) + 8] |= 1 << v49;
                v84 = (v56[6] + 16 * v49);
                *v84 = 0x6554686372616573;
                v84[1] = 0xEA00000000006D72;
                sub_24E612B0C(&v109, (v56[7] + 32 * v49));
                v85 = v56[2];
                v70 = __OFADD__(v85, 1);
                v86 = v85 + 1;
                if (v70)
                {
                  goto LABEL_86;
                }

                v56[2] = v86;
LABEL_3:
                *v45 = v56;

                v21 = v107;
LABEL_4:
                v25 = v95;
                v94(v111, 0);
                v25(&v112, 0);
                goto LABEL_5;
              }
            }

            v24 = (v56[7] + 32 * v49);
            __swift_destroy_boxed_opaque_existential_1(v24);
            sub_24E612B0C(&v109, v24);
            goto LABEL_3;
          }

          sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
          v74 = sub_24E76D644(0x6554686372616573, 0xEA00000000006D72);
          if (v75)
          {
            v76 = v74;
            v77 = swift_isUniquelyReferenced_nonNull_native();
            v108 = *v45;
            *v45 = 0x8000000000000000;
            if ((v77 & 1) == 0)
            {
              sub_24E8AD8E4();
            }

            v78 = v108;

            sub_24E612B0C((*(v78 + 56) + 32 * v76), &v109);
            sub_24EB52998(v76, v78);
            *v45 = v78;
          }

          else
          {
            v109 = 0u;
            v110 = 0u;
          }

          sub_24E601704(&v109, &qword_27F2129B0, &unk_24F945320);
          v21 = v107;
          goto LABEL_4;
        }

        v39 = sub_24F92CE08();

        if (v39)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
    }

    v35 = sub_24F928688();
    if (*(v35 + 16) && (v36 = sub_24E76D644(0x707954746E657665, 0xE900000000000065), (v37 & 1) != 0))
    {
      sub_24E643A9C(*(v35 + 56) + 32 * v36, &v114);

      v38 = swift_dynamicCast();
      v21 = v107;
      if ((v38 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (v112 == 0x686372616573 && v113 == 0xE600000000000000)
      {

LABEL_39:
        v115 = MEMORY[0x277D837D0];
        v114 = v97;

        v95 = sub_24F928AB8();
        v59 = v58;
        v60 = *v58;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        *v59 = v60;
        if (v61)
        {
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v60 = sub_24ECDE188(v60);
          *v59 = v60;
          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_82;
          }
        }

        if (v31 >= v60[2])
        {
          goto LABEL_83;
        }

        v94 = sub_24F928678();
        v63 = v62;
        if (v115)
        {
          sub_24E612B0C(&v114, &v109);
          v64 = swift_isUniquelyReferenced_nonNull_native();
          v108 = *v63;
          v65 = v108;
          *v63 = 0x8000000000000000;
          v66 = sub_24E76D644(1836213620, 0xE400000000000000);
          v68 = v65[2];
          v69 = (v67 & 1) == 0;
          v70 = __OFADD__(v68, v69);
          v71 = v68 + v69;
          if (v70)
          {
            goto LABEL_85;
          }

          v72 = v67;
          if (v65[3] >= v71)
          {
            if (v64)
            {
              goto LABEL_60;
            }

            v89 = v66;
            sub_24E8AD8E4();
            v66 = v89;
            v87 = v108;
            if ((v72 & 1) == 0)
            {
              goto LABEL_73;
            }

LABEL_61:
            v88 = (v87[7] + 32 * v66);
            __swift_destroy_boxed_opaque_existential_1(v88);
            sub_24E612B0C(&v109, v88);
          }

          else
          {
            sub_24E89873C(v71, v64);
            v66 = sub_24E76D644(1836213620, 0xE400000000000000);
            if ((v72 & 1) != (v73 & 1))
            {
              goto LABEL_88;
            }

LABEL_60:
            v87 = v108;
            if (v72)
            {
              goto LABEL_61;
            }

LABEL_73:
            v87[(v66 >> 6) + 8] |= 1 << v66;
            v90 = (v87[6] + 16 * v66);
            *v90 = 1836213620;
            v90[1] = 0xE400000000000000;
            sub_24E612B0C(&v109, (v87[7] + 32 * v66));
            v91 = v87[2];
            v70 = __OFADD__(v91, 1);
            v92 = v91 + 1;
            if (v70)
            {
              goto LABEL_87;
            }

            v87[2] = v92;
          }

          *v63 = v87;
        }

        else
        {
          sub_24E601704(&v114, &qword_27F2129B0, &unk_24F945320);
          v79 = sub_24E76D644(1836213620, 0xE400000000000000);
          if (v80)
          {
            v81 = v79;
            v82 = swift_isUniquelyReferenced_nonNull_native();
            v83 = *v63;
            v108 = *v63;
            if ((v82 & 1) == 0)
            {
              sub_24E8AD8E4();
              v83 = v108;
            }

            sub_24E612B0C((*(v83 + 56) + 32 * v81), &v109);
            sub_24EB52998(v81, v83);
            *v63 = v83;
          }

          else
          {
            v109 = 0u;
            v110 = 0u;
          }

          sub_24E601704(&v109, &qword_27F2129B0, &unk_24F945320);
        }

        v21 = v107;
        v94(v111, 0);
        v95(&v112, 0);
LABEL_5:
        (*v102)(v8, v21);
        continue;
      }

      v57 = sub_24F92CE08();

      if (v57)
      {
        goto LABEL_39;
      }
    }

    else
    {
    }

    v21 = v107;
    (*v102)(v8, v107);
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t SearchPageContainer.landingPage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SearchPageContainer(0);
  sub_24F5695EC(v1 + *(v3 + 28), v5);
  return sub_24E612C80(v5, a1);
}

uint64_t type metadata accessor for SearchPageContainer(uint64_t a1)
{
  result = qword_27F247F40;
  if (!qword_27F247F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F5695EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215768, "D5\r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F56965C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchPageContainer(0);
  sub_24F5695EC(a1 + *(v4 + 28), v6);
  return sub_24E612C80(v6, a2);
}

uint64_t SearchPageContainer.landingPage.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for SearchPageContainer(0) + 28);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_24E612C80(a1, v1 + v3);
}

uint64_t SearchPageContainer.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchPageContainer(0) + 44));

  return v1;
}

uint64_t SearchPageContainer.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SearchPageContainer(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SearchPageContainer.titleDisplayMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SearchPageContainer(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t SearchPageContainer.titleDisplayMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SearchPageContainer(0);
  *(v1 + *(result + 48)) = v2;
  return result;
}

uint64_t SearchPageContainer.navigationBarVisibility.setter(char a1)
{
  result = type metadata accessor for SearchPageContainer(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

double SearchPageContainer.toolbarItemGroups.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchPageContainer(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v6;
  *(a1 + 32) = v3;

  return result;
}