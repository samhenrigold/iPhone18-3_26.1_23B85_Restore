uint64_t sub_24F779708(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F91F6B8();
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

uint64_t type metadata accessor for GSKDebugMetricsEvent(uint64_t a1)
{
  result = qword_27F24FA78;
  if (!qword_27F24FA78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F779870(uint64_t a1, uint64_t a2)
{
  v4 = aPagetype_4[0] == a1 && aPagetype_4[1] == a2;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return sub_24F926C38();
  }

  v6 = *aPageid_86 == a1 && unk_281C9F470 == a2;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    return sub_24F926CC8();
  }

  v7 = aPagecontext_9[0] == a1 && aPagecontext_9[1] == a2;
  if (v7 || (sub_24F92CE08() & 1) != 0)
  {

    return sub_24F926CE8();
  }

  if (*aType_20 == a1 && unk_281C9F4F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a1 == 0x6973736572706D69 && a2 == 0xEB00000000736E6FLL || (sub_24F92CE08() & 1) != 0)
  {
    goto LABEL_34;
  }

  if (aTargettype_7[0] == a1 && aTargettype_7[1] == a2 || (sub_24F92CE08() & 1) != 0)
  {
LABEL_28:

    return sub_24F926CD8();
  }

  if (aTargetid_4[0] == a1 && aTargetid_4[1] == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return sub_24F926C28();
  }

  else
  {
    if ((aActiontype_5[0] != a1 || aActiontype_5[1] != a2) && (sub_24F92CE08() & 1) == 0)
    {
      if ((a1 != 0x6E6F697461636F6CLL || a2 != 0xE800000000000000) && (sub_24F92CE08() & 1) == 0)
      {
        sub_24F926D18();
        v8 = sub_24F926D08();

        return v8;
      }

LABEL_34:

      return sub_24F926CA8();
    }

    return MEMORY[0x282133438]();
  }
}

uint64_t sub_24F779B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F779B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t ChallengesSuggestedLeaderboardDataIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[7] = a2;
  v2[8] = *(type metadata accessor for Leaderboard(0) - 8);
  v2[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v6 = *a1;
  v5 = a1[1];
  v2[10] = v4;
  v2[11] = v6;
  v7 = a1[2];
  v8 = a1[3];
  v2[12] = v5;
  v2[13] = v7;
  v2[14] = v8;

  return MEMORY[0x2822009F8](sub_24F779CD0, 0, 0);
}

uint64_t sub_24F779CD0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 32) = v2;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_24F779D90;
  v4 = *(v0 + 56);

  return sub_24E64CE24(v0 + 16, v4);
}

uint64_t sub_24F779D90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_24F77A030;
  }

  else
  {
    sub_24F4FD6C0(v3 + 16);
    v4 = sub_24F779EAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F779EAC()
{
  v1 = v0[16];
  if (*(v1 + 16))
  {
    v2 = v0[9];
    v3 = v0[10];
    v4 = *(v0[8] + 80);
    sub_24E7E048C(v1 + ((v4 + 32) & ~v4), v2);

    sub_24E90FDA8(v2, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FB20, &unk_24FA27468);
    v5 = (type metadata accessor for ChallengesLeaderboardSuggestion(0) - 8);
    v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F93DE60;
    v8 = v7 + v6;
    sub_24E7E048C(v3, v8);
    *(v8 + v5[7]) = MEMORY[0x277D84F90];
    sub_24F3A3AEC(v3);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
  }

  v9 = v0[1];

  return v9(v7);
}

uint64_t sub_24F77A030()
{
  sub_24F4FD6C0(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F77A0AC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return ChallengesSuggestedLeaderboardDataIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_24F77A170(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[10];
    goto LABEL_13;
  }

  v16 = type metadata accessor for PlayerAvatar(0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

uint64_t sub_24F77A398(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[10];
    goto LABEL_11;
  }

  v16 = type metadata accessor for PlayerAvatar(0);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[11];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for AchievementsCard(uint64_t a1)
{
  result = qword_27F24FB28;
  if (!qword_27F24FB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F77A5F8(uint64_t a1)
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
        sub_24F77A79C(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F77A79C(319, &qword_27F246A60, type metadata accessor for Achievement, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_24F9289E8();
              if (v7 <= 0x3F)
              {
                type metadata accessor for PlayerAvatar(319);
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

void sub_24F77A79C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F77A800@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v43 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v43);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9289E8();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v41);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FB48, &qword_24FA275C8);
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v15 = &v35 - v14;
  v16 = type metadata accessor for AchievementsCard(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v18 + 40) = 0u;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 9) = 0;
  v49 = v18 + 40;
  sub_24E61DA68(&v53, (v18 + 40), qword_27F21B590, &unk_24F93BE30);
  v50 = v16;
  v19 = *(v16 + 24);
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v52 = v19;
  v21(&v18[v19], 1, 1, v20);
  v22 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F77B5F8();
  v45 = v15;
  v23 = v48;
  sub_24F92D108();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_24E601704(v49, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v18[v52], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v37 = v11;
    v48 = v13;
    v36 = v10;
    v35 = v7;
    v24 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v56 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v25 = v54;
    *v18 = v53;
    *(v18 + 1) = v25;
    *(v18 + 4) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v56 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v26 = v24;
    sub_24E61DA68(&v53, v49, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v53) = 2;
    sub_24E65CAA0();
    v27 = v48;
    sub_24F92CC68();
    sub_24E61DA68(v27, &v18[v52], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v53) = 3;
    sub_24F77B700(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v28 = v36;
    sub_24F92CC18();
    v29 = v50;
    sub_24E6009C8(v28, &v18[v50[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v53) = 4;
    sub_24F77B700(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v30 = v35;
    sub_24F92CC68();
    sub_24E7CB43C(v30, &v18[v29[8]], type metadata accessor for CommonCardAttributes);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246A30, &qword_24FA042F8);
    v56 = 5;
    sub_24F77B64C();
    sub_24F92CC68();
    *&v18[v29[9]] = v53;
    LOBYTE(v53) = 6;
    sub_24F77B700(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v31 = v40;
    v32 = v47;
    sub_24F92CC68();
    (*(v46 + 32))(&v18[v29[10]], v31, v32);
    LOBYTE(v53) = 7;
    sub_24F77B700(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    v33 = v39;
    sub_24F92CC68();
    (*(v26 + 8))(v45, v44);
    sub_24E7CB43C(v33, &v18[v29[11]], type metadata accessor for PlayerAvatar);
    sub_24F77B748(v18, v38, type metadata accessor for AchievementsCard);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return sub_24F77B7B0(v18, type metadata accessor for AchievementsCard);
  }
}

uint64_t sub_24F77B26C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F6349656D6167;
  if (v1 != 6)
  {
    v3 = 0x7641646E65697266;
  }

  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x6D65766569686361;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4D747865746E6F63;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_24F77B37C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F77B928(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F77B3A4(uint64_t a1)
{
  v2 = sub_24F77B5F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F77B3E0(uint64_t a1)
{
  v2 = sub_24F77B5F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F77B454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F77B52C(uint64_t a1)
{
  *(a1 + 8) = sub_24F77B700(&qword_27F21AA40, type metadata accessor for AchievementsCard, &unk_24FA27584);
  result = sub_24F77B700(&qword_27F24FB38, type metadata accessor for AchievementsCard, &unk_24FA27540);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F77B5F8()
{
  result = qword_27F24FB50;
  if (!qword_27F24FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FB50);
  }

  return result;
}

unint64_t sub_24F77B64C()
{
  result = qword_27F246A48;
  if (!qword_27F246A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246A30, &qword_24FA042F8);
    sub_24F77B700(&qword_27F218968, type metadata accessor for Achievement, &protocol conformance descriptor for Achievement);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246A48);
  }

  return result;
}

uint64_t sub_24F77B700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F77B748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F77B7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F77B824()
{
  result = qword_27F24FB58;
  if (!qword_27F24FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FB58);
  }

  return result;
}

unint64_t sub_24F77B87C()
{
  result = qword_27F24FB60;
  if (!qword_27F24FB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FB60);
  }

  return result;
}

unint64_t sub_24F77B8D4()
{
  result = qword_27F24FB68;
  if (!qword_27F24FB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FB68);
  }

  return result;
}

uint64_t sub_24F77B928(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6D65766569686361 && a2 == 0xEC00000073746E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7641646E65697266 && a2 == 0xEC00000072617461)
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

uint64_t sub_24F77BBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_24E60169C(a3, v23 - v10, &unk_27F21B570, &qword_24F93B020);
  v12 = sub_24F92B858();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24E601704(v11, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24F92B778();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24F92B1B8() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_24F77BE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_24E60169C(a3, v22 - v9, &unk_27F21B570, &qword_24F93B020);
  v11 = sub_24F92B858();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_24E601704(v10, &unk_27F21B570, &qword_24F93B020);
  }

  else
  {
    sub_24F92B848();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_24F92B778();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_24F92B1B8() + 32;
      sub_24F91FD28();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_24F91FD28();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void *sub_24F77C0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a1;
  v48 = a2;
  v4 = sub_24F92AA48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for GSKShelf(0) - 8;
  MEMORY[0x28223BE20](v11);
  v52 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v20 = *(a3 + 16);
  if (v20)
  {
    v21 = a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v22 = *(v17 + 72);
    v49 = (v5 + 16);
    v43 = v5;
    v44 = (v5 + 8);
    v23 = MEMORY[0x277D84F98];
    v45 = v15;
    v46 = &v42 - v18;
    while (1)
    {
      v50 = v21;
      v51 = v20;
      sub_24F78B65C(v21, v19, type metadata accessor for GSKShelf);
      swift_getAtKeyPath();
      swift_getAtKeyPath();
      v25 = *v49;
      v26 = v10;
      v27 = v10;
      v28 = v4;
      (*v49)(v7, v27, v4);
      sub_24F78B65C(v15, v52, type metadata accessor for GSKShelf);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v23;
      v31 = sub_24E76EC54(v7);
      v32 = v23[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        break;
      }

      v35 = v30;
      if (v23[3] >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_24E8B839C();
        }
      }

      else
      {
        sub_24E8ABB70(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_24E76EC54(v7);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_18;
        }

        v31 = v36;
      }

      v4 = v28;
      v23 = v53;
      v10 = v26;
      if (v35)
      {
        sub_24F78E5DC(v52, v53[7] + v31 * v22, type metadata accessor for GSKShelf);
      }

      else
      {
        v53[(v31 >> 6) + 8] |= 1 << v31;
        v25((v23[6] + *(v43 + 72) * v31), v7, v4);
        sub_24F78B6C4(v52, v23[7] + v31 * v22, type metadata accessor for GSKShelf);
        v38 = v23[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_17;
        }

        v23[2] = v40;
      }

      v24 = *v44;
      (*v44)(v7, v4);
      v15 = v45;
      sub_24F78BE40(v45, type metadata accessor for GSKShelf);
      v24(v26, v4);
      v19 = v46;
      sub_24F78BE40(v46, type metadata accessor for GSKShelf);
      v21 = v50 + v22;
      v20 = v51 - 1;
      if (v51 == 1)
      {
        return v23;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_24F92CF88();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24F77C4FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v52 = a2;
  v53 = sub_24F924098();
  v4 = *(v53 - 8);
  v55 = *(v4 + 64);
  MEMORY[0x28223BE20](v53);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC68, &qword_24FA27968);
  v7 = *(v49 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v49);
  v10 = &v39 - v9;
  v11 = sub_24F9235D8();
  v12 = *(v11 - 8);
  v56 = v11;
  v57 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC70, &unk_24FA27A60);
  v16 = *(v15 - 8);
  v50 = v15;
  v51 = v16;
  MEMORY[0x28223BE20](v15);
  v54 = &v39 - v17;
  sub_24F9235E8();
  v18 = v2;
  v19 = v10;
  v41 = v10;
  sub_24E60169C(v18, v10, &qword_27F24FC68, &qword_24FA27968);
  v47 = *(v4 + 16);
  v40 = v6;
  v20 = v53;
  v47(v6, a1, v53);
  v21 = *(v7 + 80);
  v22 = *(v4 + 80);
  v23 = v4;
  v24 = v8 + v22 + ((v21 + 16) & ~v21);
  v25 = (v21 + 16) & ~v21;
  v26 = v24 & ~v22;
  v44 = v21 | v22;
  v45 = v25;
  v27 = swift_allocObject();
  sub_24E6009C8(v19, v27 + v25, &qword_27F24FC68, &qword_24FA27968);
  v43 = *(v23 + 32);
  v43(v27 + v26, v6, v20);
  v28 = sub_24E602068(&qword_27F24FC78, &qword_27F24FC68, &qword_24FA27968, &unk_24FA0AFB0);
  v29 = v49;
  v30 = v42;
  sub_24F926988();

  v31 = *(v57 + 8);
  v57 += 8;
  v46 = v31;
  v31(v14, v56);
  sub_24F9235E8();
  v32 = v41;
  sub_24E60169C(v30, v41, &qword_27F24FC68, &qword_24FA27968);
  v33 = v40;
  v34 = v53;
  v47(v40, v48, v53);
  v35 = swift_allocObject();
  sub_24E6009C8(v32, v35 + v45, &qword_27F24FC68, &qword_24FA27968);
  v43(v35 + v26, v33, v34);
  v58 = v29;
  v59 = v28;
  swift_getOpaqueTypeConformance2();
  v36 = v50;
  v37 = v54;
  sub_24F926988();

  v46(v14, v56);
  return (*(v51 + 8))(v37, v36);
}

uint64_t sub_24F77CA5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50, &unk_24FA10C90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_24E60169C(a1, &v9 - v6, &qword_27F216F50, &unk_24FA10C90);
  sub_24E60169C(v7, v4, &qword_27F216F50, &unk_24FA10C90);
  sub_24F78C5EC();
  sub_24F924878();
  return sub_24E601704(v7, &qword_27F216F50, &unk_24FA10C90);
}

uint64_t sub_24F77CB60@<X0>(char *a1@<X8>)
{
  v4 = type metadata accessor for PlayNowPageView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_24F78B65C(v2, &v31 - v7, type metadata accessor for PlayNowPageView);
  v8 = *(v5 + 80);
  v9 = (v8 + 16) & ~v8;
  v37 = swift_allocObject();
  v10 = sub_24F78B6C4(&v31 - v7, v37 + v9, type metadata accessor for PlayNowPageView);
  MEMORY[0x28223BE20](v10);
  sub_24F78B65C(v2, &v31 - v7, type metadata accessor for PlayNowPageView);
  v36 = swift_allocObject();
  v11 = sub_24F78B6C4(&v31 - v7, v36 + v9, type metadata accessor for PlayNowPageView);
  MEMORY[0x28223BE20](v11);
  sub_24F78B65C(v2, &v31 - v7, type metadata accessor for PlayNowPageView);
  sub_24F92B7F8();
  v12 = sub_24F92B7E8();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 16) = v12;
  *(v13 + 24) = v14;
  sub_24F78B6C4(&v31 - v7, v13 + ((v8 + 32) & ~v8), type metadata accessor for PlayNowPageView);
  v15 = sub_24F92B858();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v31 - v18;
  sub_24F92B818();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v34 = sub_24F923DD8();
    v35 = &v31;
    v33 = *(v34 - 8);
    MEMORY[0x28223BE20](v34);
    v32 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_24F92C888();

    v39 = 0xD00000000000002FLL;
    v40 = 0x800000024FA7D9B0;
    v38 = 73;
    v21 = sub_24F92CD88();
    MEMORY[0x253050C20](v21);

    v23 = MEMORY[0x28223BE20](v22);
    (*(v16 + 16))(&v31 - v18, &v31 - v18, v15, v23);
    v24 = v32;
    sub_24F923DC8();
    (*(v16 + 8))(v19, v15);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B10, &qword_24F935608);
    result = (*(v33 + 32))(&a1[*(v25 + 36)], v24, v34);
  }

  else
  {
    v29 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B20, &unk_24FA27940) + 36)];
    v30 = sub_24F923AD8();
    result = (*(v16 + 32))(&v29[*(v30 + 20)], &v31 - v18, v15);
    *v29 = &unk_24FA27930;
    *(v29 + 1) = v13;
  }

  v27 = v36;
  v28 = v37;
  *a1 = sub_24F789CDC;
  *(a1 + 1) = v28;
  *(a1 + 2) = sub_24F78A894;
  *(a1 + 3) = v27;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  return result;
}

uint64_t sub_24F77D074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v59 = a1;
  v4 = type metadata accessor for PlayNowPageIntent(0);
  MEMORY[0x28223BE20](v4);
  v56 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  MEMORY[0x28223BE20](v55);
  v54 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x28223BE20](v7);
  v50 = &v43 - v8;
  v44 = sub_24F92A498();
  v49 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for PlayNowPageView(0);
  v17 = v16 - 8;
  v46 = *(v16 - 8);
  v18 = *(v46 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC68, &qword_24FA27968);
  MEMORY[0x28223BE20](v19);
  v21 = (&v43 - v20);
  v63[3] = v4;
  v51 = sub_24F78BEA0(&qword_27F21D3A8, type metadata accessor for PlayNowPageIntent, &protocol conformance descriptor for PlayNowPageIntent);
  v63[4] = v51;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  sub_24F78B65C(a2, boxed_opaque_existential_1, type metadata accessor for PlayNowPageIntent);
  v22 = *(a2 + *(v17 + 28));
  v57 = v4;
  v47 = *(a2 + *(v4 + 20));
  sub_24F78B65C(a2, &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlayNowPageView);
  v23 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v46 = swift_allocObject();
  v24 = v46 + v23;
  v25 = v43;
  sub_24F78B6C4(&v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v24, type metadata accessor for PlayNowPageView);
  *v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v26 = v19[13];
  *(v21 + v26) = swift_getKeyPath();
  v27 = v44;
  swift_storeEnumTagMultiPayload();
  v28 = v21 + v19[14];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  v29 = v21 + v19[15];
  *v29 = swift_getKeyPath();
  v29[8] = 0;
  v30 = v19[16];
  *(v21 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  sub_24F91F618();
  (*(v11 + 16))(v45, v15, v10);
  sub_24F926F28();
  (*(v11 + 8))(v15, v10);
  v31 = v21 + v19[18];
  LOBYTE(v60) = 1;
  sub_24F926F28();
  v32 = v62;
  *v31 = v61;
  *(v31 + 1) = v32;
  v33 = (v21 + v19[30]);
  sub_24F929EB8();
  v60 = sub_24F929EA8();
  sub_24F926F28();
  v34 = v62;
  *v33 = v61;
  v33[1] = v34;
  sub_24E615E00(v63, v21 + v19[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v35 = v50;
  sub_24F92A448();
  v36 = v53;
  sub_24F92A408();
  (*(v52 + 8))(v35, v36);
  (*(v49 + 8))(v25, v27);
  v37 = v62;
  v38 = (v21 + v19[23]);
  *v38 = v61;
  v38[1] = v37;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928EF8();
  *(v21 + v19[25]) = v61;
  v39 = (v21 + v19[27]);
  *v39 = CGSizeMake;
  v39[1] = 0;
  v40 = (v21 + v19[28]);
  v41 = v46;
  *v40 = sub_24F78BEE8;
  v40[1] = v41;
  *(v21 + v19[20]) = v22;
  *(v21 + v19[22]) = v47;
  *(v21 + v19[21]) = 2;
  type metadata accessor for FeedRefreshNotifier(0);

  sub_24F928F28();
  *(v21 + v19[26]) = v61;
  type metadata accessor for NetworkConnectionMonitor(0);
  sub_24F928F28();
  *(v21 + v19[31]) = v61;
  sub_24F78B65C(boxed_opaque_existential_1, v56, type metadata accessor for PlayNowPageIntent);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  __swift_destroy_boxed_opaque_existential_1(v63);
  sub_24F77C4FC(v59, v58);
  return sub_24E601704(v21, &qword_27F24FC68, &qword_24FA27968);
}

uint64_t sub_24F77D8DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC40, &unk_24FA277C0);
  MEMORY[0x28223BE20](v20);
  v19 = type metadata accessor for PlayNowFeedShelvesIntent(0);
  MEMORY[0x28223BE20](v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PlayNowPageView(0);
  sub_24F78B65C(a2 + *(v11 + 24), v10, type metadata accessor for PlayNowFeedShelvesIntent);
  v12 = type metadata accessor for Page(0);
  v13 = *(*(a1 + *(v12 + 48)) + 16);
  v14 = *(a1 + *(v12 + 84));
  v15 = *(a2 + *(v11 + 20));
  v16 = type metadata accessor for PlayNowFeedView(0);
  v17 = v16[9];
  *(a3 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8, &qword_24F984960);
  swift_storeEnumTagMultiPayload();
  sub_24F78B65C(v10, a3, type metadata accessor for PlayNowFeedShelvesIntent);
  *(a3 + v16[5]) = v13;
  *(a3 + v16[6]) = v14;
  *(a3 + v16[7]) = v15;
  sub_24F78B65C(v10, v7, type metadata accessor for PlayNowFeedShelvesIntent);
  type metadata accessor for PlayNowFeedShelvesIntent.ReturnType(0);
  sub_24F78BEA0(&qword_27F24FC80, type metadata accessor for PlayNowFeedShelvesIntent, &unk_24FA13E44);

  sub_24F9217D8();
  sub_24F926F28();
  return sub_24F78BE40(v10, type metadata accessor for PlayNowFeedShelvesIntent);
}

void sub_24F77DB54(__n128 a1, uint64_t a2)
{
  v3 = type metadata accessor for PlayNowPageView(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E7F0);
  sub_24F78B65C(a2, v5, type metadata accessor for PlayNowPageView);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = type metadata accessor for PlayNowPageIntent(0);
    if (v5[*(v11 + 20)])
    {
      v12 = 0x676F742D79616C70;
    }

    else
    {
      v12 = 1701670760;
    }

    if (v5[*(v11 + 20)])
    {
      v13 = 0xED00007265687465;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

    sub_24F78BE40(v5, type metadata accessor for PlayNowPageView);
    v14 = sub_24E7620D4(v12, v13, &v16);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24E5DD000, v7, v8, "PlayNowPageView - %s appeared", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {

    sub_24F78BE40(v5, type metadata accessor for PlayNowPageView);
  }
}

uint64_t sub_24F77DD8C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(type metadata accessor for PlayNowPageView(0) - 8);
  v4[3] = v5;
  v4[4] = *(v5 + 64);
  v4[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v4[6] = swift_task_alloc();
  sub_24F92B7F8();
  v4[7] = sub_24F92B7E8();
  v7 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F77DEBC, v7, v6);
}

uint64_t sub_24F77DEBC()
{
  v1 = v0[2];

  if ((*(v1 + *(type metadata accessor for PlayNowPageIntent(0) + 20)) & 1) == 0)
  {

    goto LABEL_5;
  }

  v2 = sub_24F92CE08();

  if (v2)
  {
LABEL_5:
    v3 = v0[5];
    v4 = v0[6];
    v5 = v0[3];
    v6 = v0[2];
    v7 = sub_24F92B858();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    sub_24F78B65C(v6, v3, type metadata accessor for PlayNowPageView);
    v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    sub_24F78B6C4(v3, v9 + v8, type metadata accessor for PlayNowPageView);
    sub_24F77BBE4(0, 0, v4, &unk_24FA27958, v9, MEMORY[0x277D84F78] + 8);

    sub_24E601704(v4, &unk_27F21B570, &qword_24F93B020);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F77E0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  type metadata accessor for PlayNowPageIntent(0);
  v4[9] = swift_task_alloc();
  v4[10] = type metadata accessor for ContinuePlayingPreloadIntent(0);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F77E16C, 0, 0);
}

uint64_t sub_24F77E16C(__n128 a1)
{
  v2 = v1[11];
  v4 = v1[8];
  v3 = v1[9];
  sub_24F78B65C(v4, v3, type metadata accessor for PlayNowPageIntent);
  sub_24F78B6C4(v3, v2, type metadata accessor for Player);
  v1[12] = *(v4 + *(type metadata accessor for PlayNowPageView(0) + 20));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v6 = swift_task_alloc();
  v1[13] = v6;
  *v6 = v1;
  v6[1] = sub_24F77E288;

  return MEMORY[0x28217F228](v1 + 2, v5, v5);
}

uint64_t sub_24F77E288()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_24F77E644;
  }

  else
  {
    v2 = sub_24F77E39C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F77E39C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = sub_24F78BEA0(&qword_27F24FC60, type metadata accessor for ContinuePlayingPreloadIntent, &unk_24F9A4668);
  *v3 = v0;
  v3[1] = sub_24F77E498;
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];

  return MEMORY[0x28217F4B0](v0 + 7, v5, v6, v7, v4, v1, v2);
}

uint64_t sub_24F77E498()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24F77E6D0;
  }

  else
  {
    v2 = sub_24F77E5AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F77E5AC()
{
  sub_24F78BE40(v0[11], type metadata accessor for ContinuePlayingPreloadIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F77E644()
{
  sub_24F78BE40(*(v0 + 88), type metadata accessor for ContinuePlayingPreloadIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F77E6D0()
{
  sub_24F78BE40(v0[11], type metadata accessor for ContinuePlayingPreloadIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F77E768@<X0>(uint64_t a1@<X8>)
{
  v84 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FCF8, &unk_24FA27B30);
  v82 = *(v2 - 8);
  v83 = v2;
  MEMORY[0x28223BE20](v2);
  v88 = v70 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B28, &unk_24F935620);
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v86 = v70 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD00, &qword_24FA27B40);
  MEMORY[0x28223BE20](v77);
  v75 = (v70 - v6);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD08, &qword_24FA27B48);
  v76 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v85 = v70 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD10, &qword_24FA27B50);
  v70[4] = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v78 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = type metadata accessor for PlayNowFeedView(0);
  v70[3] = *(v10 + 32);
  v70[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC18, &qword_24FA277A0);
  v89 = v1;
  v11 = sub_24F926F58();
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v11);
  v87 = v13;
  v72 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v14 = v70 - v72;
  v71 = type metadata accessor for PlayNowFeedView;
  sub_24F78B65C(v1, v70 - v72, type metadata accessor for PlayNowFeedView);
  v15 = *(v12 + 80);
  v16 = swift_allocObject();
  v73 = type metadata accessor for PlayNowFeedView;
  v81 = (v15 + 16) & ~v15;
  sub_24F78B6C4(v14, v16 + v81, type metadata accessor for PlayNowFeedView);
  v70[1] = type metadata accessor for PlayNowFeedShelvesIntent.ReturnType(0);
  v70[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD18, &qword_24FA27B58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD20, &qword_24FA27B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD28, &qword_24FA27B68);
  sub_24F78CBE8();
  sub_24E602068(&qword_27F24FD38, &qword_27F24FD20, &qword_24FA27B60, MEMORY[0x277CE14C0]);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24FD40, &qword_24FA27B80);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24FD48, &qword_24FA27B88);
  v19 = sub_24F78CD10();
  v92 = v18;
  v93 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v92 = v17;
  v93 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v21 = sub_24F921918();
  MEMORY[0x28223BE20](v21);
  v22 = v70 - v78;
  sub_24F926F58();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50, &unk_24FA10C90);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v70 - v24;
  v78 = v10;
  sub_24F76A468((v70 - v24));
  v26 = type metadata accessor for PlayNowFeedShelvesIntent(0);
  v27 = type metadata accessor for Page(0);
  v28 = sub_24E602068(&qword_27F24FD58, &qword_27F24FD08, &qword_24FA27B48, MEMORY[0x277D7EB38]);
  v29 = sub_24F78BEA0(&qword_27F24FC80, type metadata accessor for PlayNowFeedShelvesIntent, &unk_24FA13E44);
  v30 = v75;
  v31 = v74;
  v32 = v85;
  sub_24F925FA8();
  sub_24E601704(v25, &qword_27F216F50, &unk_24FA10C90);
  sub_24E601704(v22, &qword_27F24FD10, &qword_24FA27B50);
  (*(v76 + 8))(v32, v31);
  v92 = v31;
  v93 = v26;
  v94 = v27;
  v95 = v28;
  v96 = v29;
  swift_getOpaqueTypeConformance2();
  sub_24F923FC8();
  v33 = sub_24E601704(v30, &qword_27F24FD00, &qword_24FA27B40);
  MEMORY[0x28223BE20](v33);
  v34 = v70 - v72;
  sub_24F78B65C(v89, v70 - v72, v71);
  sub_24F92B7F8();
  v35 = sub_24F92B7E8();
  v85 = v15;
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  *(v36 + 16) = v35;
  *(v36 + 24) = v37;
  sub_24F78B6C4(v34, v36 + ((v15 + 32) & ~v15), v73);
  v38 = sub_24F92B858();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38);
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_24F92B818();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v76 = sub_24F923DD8();
    v77 = v70;
    v75 = *(v76 - 8);
    MEMORY[0x28223BE20](v76);
    v43 = v70 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_24F92C888();

    v92 = 0xD00000000000002FLL;
    v93 = 0x800000024FA7D9B0;
    v91 = 163;
    v44 = sub_24F92CD88();
    MEMORY[0x253050C20](v44);

    v46 = MEMORY[0x28223BE20](v45);
    (*(v39 + 16))(v70 - v41, v70 - v41, v38, v46);
    sub_24F923DC8();
    (*(v39 + 8))(v70 - v41, v38);
    v47 = v88;
    (*(v79 + 32))(v88, v86, v80);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B30, &qword_24FA27BE0);
    v75[4](&v47[*(v48 + 36)], v43, v76);
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F211B38, &unk_24F935630);
    v50 = v88;
    v51 = &v88[*(v49 + 36)];
    v52 = sub_24F923AD8();
    (*(v39 + 32))(&v51[*(v52 + 20)], v70 - v41, v38);
    *v51 = &unk_24FA27BD8;
    *(v51 + 1) = v36;
    (*(v79 + 32))(v50, v86, v80);
  }

  type metadata accessor for FeedRefreshNotifier(0);
  sub_24F928F28();
  v91 = *(v92 + OBJC_IVAR____TtC12GameStoreKit19FeedRefreshNotifier_refreshSubject);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230DC0, &unk_24F9A4110);
  sub_24E602068(&qword_27F230DC8, &qword_27F230DC0, &unk_24F9A4110, MEMORY[0x277CBCE20]);
  v53 = sub_24F9230C8();
  v86 = v53;

  v91 = v53;
  v79 = sub_24F92BED8();
  v80 = v70;
  v54 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v56 = v70 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92BEC8();
  sub_24E74EC40();
  v57 = sub_24F92BEF8();
  v90 = v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468, &qword_24F962020);
  v77 = v70;
  MEMORY[0x28223BE20](v58 - 8);
  v60 = v70 - v59;
  v61 = sub_24F92BEB8();
  (*(*(v61 - 8) + 56))(v60, 1, 1, v61);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD60, &qword_24FA27BE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237750, &qword_24FA0B0F0);
  sub_24E602068(&qword_27F237758, &qword_27F237750, &qword_24FA0B0F0, MEMORY[0x277CBCD90]);
  sub_24F78BEA0(&qword_27F21F498, sub_24E74EC40, MEMORY[0x277D85228]);
  v62 = v84;
  sub_24F923128();
  sub_24E601704(v60, &qword_27F21F468, &qword_24F962020);

  (*(v54 + 8))(v56, v79);

  v64 = v87;
  MEMORY[0x28223BE20](v63);
  v65 = v70 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F78B65C(v89, v65, type metadata accessor for PlayNowFeedView);
  v66 = v81;
  v67 = swift_allocObject();
  sub_24F78B6C4(v65, v67 + v66, type metadata accessor for PlayNowFeedView);
  result = (*(v82 + 32))(v62, v88, v83);
  v69 = (v62 + *(v78 + 56));
  *v69 = sub_24F78D600;
  v69[1] = v67;
  return result;
}

uint64_t sub_24F77F634@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_24F921BD8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238CD0, &unk_24FA27B70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FDB0, &qword_24FA27C98);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - v11;
  sub_24F921758();
  (*(v2 + 104))(v4, *MEMORY[0x277D7EC58], v1);
  sub_24E602068(&qword_27F238CD8, &qword_27F238CD0, &unk_24FA27B70, MEMORY[0x277D7EAF0]);
  sub_24F925E48();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  sub_24F923918();
  sub_24F923678();
  v13 = sub_24F923698();

  if (v13)
  {
    sub_24F9276A8();
  }

  sub_24F923948();

  sub_24F923938();
  v14 = sub_24F9238E8();

  v15 = v18;
  (*(v10 + 32))(v18, v12, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD18, &qword_24FA27B58);
  *(v15 + *(result + 36)) = v14;
  return result;
}

int *sub_24F77F960@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v74 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC40, &unk_24FA277C0);
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v64 - v5;
  v68 = type metadata accessor for ShelvesView(0);
  MEMORY[0x28223BE20](v68);
  v73 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v66 = (&v64 - v8);
  MEMORY[0x28223BE20](v9);
  v72 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD88, &qword_24FA2B7D0);
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v64 - v12;
  v13 = type metadata accessor for GamesHeroCarousel(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v64 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD90, &unk_24FA27C30);
  MEMORY[0x28223BE20](v16 - 8);
  v71 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v78 = &v64 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AAA8, &qword_24FA13DD0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v64 - v24);
  MEMORY[0x28223BE20](v26);
  v28 = &v64 - v27;
  v29 = a1;
  sub_24E60169C(a1, &v64 - v27, &qword_27F24AAA8, &qword_24FA13DD0);
  v30 = *(v14 + 48);
  LODWORD(a1) = v30(v28, 1, v13);
  sub_24E601704(v28, &qword_27F24AAA8, &qword_24FA13DD0);
  if (a1 == 1)
  {
    v31 = 0;
    v33 = v77;
    v32 = v78;
    v34 = v29;
    goto LABEL_8;
  }

  sub_24E60169C(v29, v25, &qword_27F24AAA8, &qword_24FA13DD0);
  result = v30(v25, 1, v13);
  if (result == 1)
  {
    goto LABEL_15;
  }

  v34 = v29;
  v36 = *v25;

  sub_24F78BE40(v25, type metadata accessor for GamesHeroCarousel);
  v37 = *(v36 + 16);

  v33 = v77;
  v32 = v78;
  if (!v37)
  {
    v31 = 0;
LABEL_8:
    (*(v75 + 56))(v32, 1, 1, v76);
    v38 = *(v34 + *(type metadata accessor for PlayNowFeedShelvesIntent.ReturnType(0) + 20));
    if (!v31)
    {
      v39 = type metadata accessor for PlayNowFeedView(0);
      v40 = *(v33 + v39[5]);
LABEL_13:
      type metadata accessor for PlayNowFeedView(0);
      v48 = *(v33 + v39[6]);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC18, &qword_24FA277A0);
      v49 = v67;
      sub_24F926F38();
      v50 = v70;
      v51 = sub_24F9217E8();
      (*(v69 + 8))(v49, v50);
      v52 = *(v33 + v39[7]);
      v53 = v66;
      *v66 = v38;
      *(v53 + 8) = v40;
      *(v53 + 16) = v48;
      *(v53 + 24) = v51;
      *(v53 + 32) = v52;
      v54 = v53 + *(v68 + 36);
      v55 = type metadata accessor for ShelfHydrator(0);
      v56 = *(v55 + 20);
      *(v54 + v56) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58, &unk_24F9C4F00);
      swift_storeEnumTagMultiPayload();
      *(v54 + *(v55 + 24)) = v38;
      v57 = swift_allocObject();
      *(v57 + 16) = v38;
      *(v57 + 24) = v52;
      type metadata accessor for Hydrator(0);
      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_24F9233C8();
      v58 = v72;
      sub_24F78B6C4(v53, v72, type metadata accessor for ShelvesView);
      v59 = v78;
      v60 = v71;
      sub_24F78DF88(v78, v71);
      v61 = v73;
      sub_24F78B65C(v58, v73, type metadata accessor for ShelvesView);
      v62 = v74;
      sub_24F78DF88(v60, v74);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD98, &qword_24FA27C70);
      sub_24F78B65C(v61, v62 + *(v63 + 48), type metadata accessor for ShelvesView);
      sub_24F78BE40(v58, type metadata accessor for ShelvesView);
      sub_24E601704(v59, &qword_27F24FD90, &unk_24FA27C30);
      sub_24F78BE40(v61, type metadata accessor for ShelvesView);
      return sub_24E601704(v60, &qword_27F24FD90, &unk_24FA27C30);
    }

    goto LABEL_11;
  }

  sub_24E60169C(v29, v22, &qword_27F24AAA8, &qword_24FA13DD0);
  if (v30(v22, 1, v13) == 1)
  {
    sub_24E601704(v22, &qword_27F24AAA8, &qword_24FA13DD0);
    v31 = 1;
    goto LABEL_8;
  }

  v41 = v22;
  v42 = v64;
  sub_24F78B6C4(v41, v64, type metadata accessor for GamesHeroCarousel);
  v79 = *(v33 + *(type metadata accessor for PlayNowFeedView(0) + 24));
  sub_24EAB4870();
  v43 = v65;
  sub_24F921D38();
  sub_24F78BE40(v42, type metadata accessor for GamesHeroCarousel);
  v44 = v75;
  v45 = v43;
  v46 = v76;
  (*(v75 + 32))(v32, v45, v76);
  (*(v44 + 56))(v32, 0, 1, v46);
  v38 = *(v34 + *(type metadata accessor for PlayNowFeedShelvesIntent.ReturnType(0) + 20));
LABEL_11:
  result = type metadata accessor for PlayNowFeedView(0);
  v47 = *(v33 + result[5]);
  v40 = v47 + 1;
  if (!__OFADD__(v47, 1))
  {
    v39 = result;
    goto LABEL_13;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_24F780188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = sub_24F921CB8();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  MEMORY[0x28223BE20](v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD48, &qword_24FA27B88);
  MEMORY[0x28223BE20](v25);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD40, &qword_24FA27B80);
  v13 = *(v12 - 8);
  v26 = v12;
  v27 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v16 = sub_24E6A4C1C();
  sub_24F924B68();
  v34 = a1;
  v35 = a2;
  v36 = a3;
  v31 = a1;
  v32 = a2;
  v33 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C778, &qword_24FA1A7A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
  v37 = &type metadata for GameOverlayViewPredicate;
  v38 = v16;
  swift_getOpaqueTypeConformance2();
  sub_24F6AC0B0();
  sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
  sub_24F927568();
  v18 = v28;
  v17 = v29;
  (*(v28 + 104))(v9, *MEMORY[0x277D7ECB0], v29);
  v19 = sub_24F78CD10();
  v20 = v25;
  sub_24F925E38();
  (*(v18 + 8))(v9, v17);
  sub_24E601704(v11, &qword_27F24FD48, &qword_24FA27B88);
  sub_24F9257D8();
  sub_24F927618();
  v37 = v20;
  v38 = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v26;
  sub_24F9266F8();
  return (*(v27 + 8))(v15, v21);
}

uint64_t sub_24F780588@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v17[0] = a2;
  v17[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219DC8, &unk_24F94D3F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24C798, &unk_24FA27C20);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229128, &unk_24FA27BA0);
  MEMORY[0x28223BE20](v12);
  v14 = v17 - v13;
  swift_getErrorValue();
  if (sub_24F6A92A4(v17[3], v17[4]))
  {
    sub_24F6A94D4(v14);
    sub_24E60169C(v14, v11, &qword_27F229128, &unk_24FA27BA0);
    swift_storeEnumTagMultiPayload();
    sub_24EB3A624();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    sub_24F924E28();
    return sub_24E601704(v14, &qword_27F229128, &unk_24FA27BA0);
  }

  else
  {
    v16 = a1;

    sub_24F921A18();
    (*(v6 + 16))(v11, v8, v5);
    swift_storeEnumTagMultiPayload();
    sub_24EB3A624();
    sub_24E602068(&qword_27F219DD0, &qword_27F219DC8, &unk_24F94D3F0, MEMORY[0x277D7EB80]);
    sub_24F924E28();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_24F780884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *(type metadata accessor for PlayNowFeedView(0) - 8);
  v3[3] = v4;
  v3[4] = *(v4 + 64);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v3[6] = swift_task_alloc();
  sub_24F92B7F8();
  v3[7] = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F7809B4, v6, v5);
}

uint64_t sub_24F7809B4()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = sub_24F92B858();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_24F78B65C(v3, v2, type metadata accessor for PlayNowFeedView);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_24F78B6C4(v2, v7 + v6, type metadata accessor for PlayNowFeedView);
  sub_24F77BBE4(0, 0, v1, &unk_24FA27BF8, v7, MEMORY[0x277D84F78] + 8);

  sub_24E601704(v1, &unk_27F21B570, &qword_24F93B020);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24F780B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD68, &qword_24FA27C00);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for PlayNowFeedShelvesIntent.ReturnType(0);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = sub_24F91F648();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  type metadata accessor for PlayNowFeedView(0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F780CDC, 0, 0);
}

uint64_t sub_24F780CDC()
{
  v18 = v0;
  if (qword_27F2113E0 != -1)
  {
    swift_once();
  }

  v1 = v0[19];
  v2 = v0[7];
  v3 = sub_24F9220D8();
  v0[20] = __swift_project_value_buffer(v3, qword_27F39E7F0);
  sub_24F78B65C(v2, v1, type metadata accessor for PlayNowFeedView);
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[19];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = type metadata accessor for PlayNowFeedShelvesIntent(0);
    if (*(v7 + *(v10 + 20)))
    {
      v11 = 0x676F742D79616C70;
    }

    else
    {
      v11 = 1701670760;
    }

    if (*(v7 + *(v10 + 20)))
    {
      v12 = 0xED00007265687465;
    }

    else
    {
      v12 = 0xE400000000000000;
    }

    sub_24F78BE40(v7, type metadata accessor for PlayNowFeedView);
    v13 = sub_24E7620D4(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "PlayNowPageView - %s: Fetching placeholder data", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {

    sub_24F78BE40(v7, type metadata accessor for PlayNowFeedView);
  }

  sub_24F91F638();
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_24F780F58;
  v15 = v0[13];

  return sub_24F781660(v15);
}

uint64_t sub_24F780F58()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_24F78158C;
  }

  else
  {
    v2 = sub_24F78106C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F78106C(__n128 a1)
{
  v29 = v1;
  v2 = v1[17];
  v4 = v1[15];
  v3 = v1[16];
  v5 = v1[14];
  sub_24F78B65C(v1[7], v1[18], type metadata accessor for PlayNowFeedView);
  (*(v4 + 16))(v3, v2, v5);
  v6 = sub_24F9220B8();
  v7 = sub_24F92BD98();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[18];
  v11 = v1[15];
  v10 = v1[16];
  v12 = v1[14];
  if (v8)
  {
    v27 = v1[14];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    v15 = type metadata accessor for PlayNowFeedShelvesIntent(0);
    if (*(v9 + *(v15 + 20)))
    {
      v16 = 0x676F742D79616C70;
    }

    else
    {
      v16 = 1701670760;
    }

    if (*(v9 + *(v15 + 20)))
    {
      v17 = 0xED00007265687465;
    }

    else
    {
      v17 = 0xE400000000000000;
    }

    sub_24F78BE40(v9, type metadata accessor for PlayNowFeedView);
    v18 = sub_24E7620D4(v16, v17, &v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2048;
    sub_24F91F5C8();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v10, v27);
    *(v13 + 14) = -v20;
    _os_log_impl(&dword_24E5DD000, v6, v7, "PlayNowPageView - %s: received placeholder data, took: %fs", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {

    v21 = *(v11 + 8);
    v21(v10, v12);
    sub_24F78BE40(v9, type metadata accessor for PlayNowFeedView);
  }

  v1[23] = v21;
  v22 = v1[7];
  sub_24F78B65C(v1[13], v1[12], type metadata accessor for PlayNowFeedShelvesIntent.ReturnType);
  v1[5] = type metadata accessor for PlayNowFeedShelvesIntent(0);
  v1[6] = sub_24F78BEA0(&qword_27F24FC80, type metadata accessor for PlayNowFeedShelvesIntent, &unk_24FA13E44);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 2);
  sub_24F78B65C(v22, boxed_opaque_existential_1, type metadata accessor for PlayNowFeedShelvesIntent);
  sub_24F9294E8();
  sub_24F92B7F8();
  v1[24] = sub_24F92B7E8();
  v25 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F7813BC, v25, v24);
}

void sub_24F7813BC()
{
  v1 = v0[22];
  v2 = v0[10];
  v3 = v0[7];

  sub_24F781DD0(v3, v2);
  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24F781470, 0, 0);
  }
}

uint64_t sub_24F781470()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[13];
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_24F78BE40(v4, type metadata accessor for PlayNowFeedShelvesIntent.ReturnType);
  v1(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F78158C()
{
  (*(v0[15] + 8))(v0[17], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F781660(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = type metadata accessor for PlayNowFeedShelvesIntent(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for PlayNowFeedShelvesPlaceholderIntent(0);
  v2[12] = swift_task_alloc();
  sub_24F92B7F8();
  v2[13] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v2[14] = v4;
  v2[15] = v3;

  return MEMORY[0x2822009F8](sub_24F781758, v4, v3);
}

uint64_t sub_24F781758(__n128 a1)
{
  v3 = v1[11];
  v2 = v1[12];
  v5 = v1[9];
  v4 = v1[10];
  v6 = v1[8];
  sub_24F78B65C(v6, v4, type metadata accessor for PlayNowFeedShelvesIntent);
  sub_24F78B6C4(v4, v2, type metadata accessor for Player);
  *(v2 + *(v3 + 20)) = *(v6 + *(v5 + 20));
  v1[16] = *(v6 + *(type metadata accessor for PlayNowFeedView(0) + 28));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v8 = swift_task_alloc();
  v1[17] = v8;
  *v8 = v1;
  v8[1] = sub_24F781890;

  return MEMORY[0x28217F228](v1 + 2, v7, v7);
}

uint64_t sub_24F781890()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_24F781CA0;
  }

  else
  {
    v5 = sub_24F7819CC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7819CC()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[19] = v3;
  v4 = sub_24F78BEA0(&qword_27F24FD80, type metadata accessor for PlayNowFeedShelvesPlaceholderIntent, &unk_24FA1429C);
  *v3 = v0;
  v3[1] = sub_24F781AC8;
  v5 = v0[16];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[7];

  return MEMORY[0x28217F4B0](v8, v6, v5, v7, v4, v1, v2);
}

uint64_t sub_24F781AC8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_24F781D34;
  }

  else
  {
    v5 = sub_24F781C04;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F781C04()
{
  v1 = v0[12];

  sub_24F78BE40(v1, type metadata accessor for PlayNowFeedShelvesPlaceholderIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F781CA0()
{
  v1 = *(v0 + 96);

  sub_24F78BE40(v1, type metadata accessor for PlayNowFeedShelvesPlaceholderIntent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F781D34()
{
  v1 = v0[12];

  sub_24F78BE40(v1, type metadata accessor for PlayNowFeedShelvesPlaceholderIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

double sub_24F781DD0(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD70, &unk_24FA27C10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC40, &unk_24FA277C0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  type metadata accessor for PlayNowFeedView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC18, &qword_24FA277A0);
  v21 = a1;
  sub_24F926F38();
  sub_24F9217F8();
  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = type metadata accessor for PlayNowFeedShelvesIntent.ReturnType(0);
  LODWORD(v12) = (*(*(v14 - 8) + 48))(v5, 1, v14);
  sub_24E601704(v5, &qword_27F24FD70, &unk_24FA27C10);
  if (v12 == 1)
  {
    v16 = v21;
    sub_24F926F38();
    v17 = sub_24F921818();
    v18 = (v13)(v9, v6);
    if (v17)
    {
    }

    else
    {
      MEMORY[0x28223BE20](v18);
      v19 = v20;
      *(&v20 - 2) = v16;
      *(&v20 - 1) = v19;
      sub_24F9276F8();
      sub_24F923B18();
    }
  }

  return result;
}

uint64_t sub_24F782090(uint64_t a1, uint64_t a2)
{
  v16[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD68, &qword_24FA27C00);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC40, &unk_24FA277C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v16 - v13;
  (*(v4 + 16))(v6, a2, v3, v12);
  type metadata accessor for PlayNowFeedShelvesIntent.ReturnType(0);
  sub_24E602068(&qword_27F24FD78, &qword_27F24FD68, &qword_24FA27C00, MEMORY[0x277D21F08]);
  sub_24F9217D8();
  type metadata accessor for PlayNowFeedView(0);
  (*(v8 + 16))(v10, v14, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC18, &qword_24FA277A0);
  sub_24F926F48();
  return (*(v8 + 8))(v14, v7);
}

uint64_t sub_24F7822E4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC40, &unk_24FA277C0);
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for PlayNowFeedView(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E850);
  sub_24F78B65C(a2, v6, type metadata accessor for PlayNowFeedView);
  v8 = sub_24F9220B8();
  v9 = sub_24F92BD98();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = v3;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    v13 = type metadata accessor for PlayNowFeedShelvesIntent(0);
    if (v6[*(v13 + 20)])
    {
      v14 = 0x676F742D79616C70;
    }

    else
    {
      v14 = 1701670760;
    }

    if (v6[*(v13 + 20)])
    {
      v15 = 0xED00007265687465;
    }

    else
    {
      v15 = 0xE400000000000000;
    }

    sub_24F78BE40(v6, type metadata accessor for PlayNowFeedView);
    v16 = sub_24E7620D4(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_24E5DD000, v8, v9, "Refreshing shelf %s for feed refresh", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  else
  {

    sub_24F78BE40(v6, type metadata accessor for PlayNowFeedView);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC18, &qword_24FA277A0);
  sub_24F926F38();
  sub_24F9217B8();
  return sub_24F926F48();
}

uint64_t sub_24F7825D0@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v3 = type metadata accessor for ShelvesView(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v18[1] = v5;
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC90, &qword_24FA27AA8);
  MEMORY[0x28223BE20](v20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC98, &unk_24FA27AB0);
  v8 = *(v7 - 8);
  v21 = v7;
  v22 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = v18 - v9;
  v11 = *v2;
  v19 = v2;
  v24 = v11;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB48, &qword_24FA13F28);
  sub_24E602068(&qword_27F24FCA0, &qword_27F24AB48, &qword_24FA13F28, MEMORY[0x277D83980]);
  sub_24F921BA8();
  v18[0] = swift_getKeyPath();
  sub_24F78B65C(v2, v6, type metadata accessor for ShelvesView);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_24F78B6C4(v6, v13 + v12, type metadata accessor for ShelvesView);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24F78C644;
  *(v14 + 24) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FCB8, &unk_24FA27AF8);
  sub_24E602068(&qword_27F24FCC0, &qword_27F24FC90, &qword_24FA27AA8, MEMORY[0x277D7EC38]);
  sub_24F78C76C();
  sub_24F927228();
  v24 = v19[3];
  sub_24F78B65C(v19, v6, type metadata accessor for ShelvesView);
  v15 = swift_allocObject();
  sub_24F78B6C4(v6, v15 + v12, type metadata accessor for ShelvesView);
  sub_24F78CAA4();
  v16 = v21;
  sub_24F926AB8();

  return (*(v22 + 8))(v10, v16);
}

uint64_t sub_24F7829BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X1>)
{
  v54 = a1;
  v52 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDC0, &qword_24F95E4A0);
  MEMORY[0x28223BE20](v51);
  v50 = &v45 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229248, &qword_24F984910);
  MEMORY[0x28223BE20](v53);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FCE8, &qword_24FA27B18);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for HydratingShelfView(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for GSKShelf(0);
  MEMORY[0x28223BE20](v49);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F78B65C(a4, v19, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB00, &qword_24FA13F00) + 48);
    sub_24F78B6C4(v19, v16, type metadata accessor for GSKShelf);
    type metadata accessor for ShelvesView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FBF8, &unk_24FA27780);
    sub_24F9233D8();
    v42 = *&v60[0];
    v43 = &v14[*(v12 + 24)];
    v44 = sub_24F92AA48();
    (*(*(v44 - 8) + 16))(v43, v16, v44);
    *v14 = *(a2 + 16);
    *(v14 + 1) = v54;
    *&v43[*(type metadata accessor for ShelfLoader(0) + 20)] = v42;
    sub_24F78B65C(v14, v11, type metadata accessor for HydratingShelfView);
    swift_storeEnumTagMultiPayload();
    sub_24F78BEA0(&qword_27F24FCD0, type metadata accessor for HydratingShelfView, &unk_24FA27DC0);
    sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
    sub_24F924E28();
    sub_24F78BE40(v14, type metadata accessor for HydratingShelfView);
    sub_24F78BE40(v16, type metadata accessor for GSKShelf);
    v38 = &qword_27F24AA88;
    v39 = &unk_24FA13DA0;
    v40 = &v19[v41];
    return sub_24E601704(v40, v38, v39);
  }

  v20 = v53;
  v46 = v11;
  v47 = v9;
  v48 = v12;
  v21 = *(v19 + 1);
  v60[0] = *v19;
  v60[1] = v21;
  v61 = *(v19 + 4);
  sub_24E615E00(v60, v59);
  v22 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720, &qword_24F940B20);
  result = sub_24F928F28();
  v24 = *(a2 + 8);
  v25 = v24 + v54;
  if (!__OFADD__(v24, v54))
  {
    sub_24E615E00(v59, v56);
    sub_24E615E00(v58, v55);
    v26 = v20;
    v27 = v20[17];
    *&v8[v27] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8, &qword_24F984960);
    swift_storeEnumTagMultiPayload();
    v8[v26[13]] = v22;
    v28 = __swift_project_boxed_opaque_existential_1(v56, v57);
    v29 = MEMORY[0x28223BE20](v28);
    (*(v31 + 16))(&v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
    sub_24F928D38();
    v32 = &v8[v26[14]];
    *v32 = v25;
    v32[8] = 0;
    sub_24E615E00(v55, &v8[v26[15]]);
    v33 = &v8[v26[16]];
    *v33 = sub_24F78343C;
    v33[1] = 0;
    v34 = __swift_project_boxed_opaque_existential_1(v56, v57);
    v35 = MEMORY[0x28223BE20](v34);
    (*(v37 + 16))(&v45 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
    sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
    sub_24F9217C8();
    sub_24F926F28();
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_24E60169C(v8, v46, &qword_27F229248, &qword_24F984910);
    swift_storeEnumTagMultiPayload();
    sub_24F78BEA0(&qword_27F24FCD0, type metadata accessor for HydratingShelfView, &unk_24FA27DC0);
    sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
    sub_24F924E28();
    sub_24E601704(v8, &qword_27F229248, &qword_24F984910);
    v38 = &qword_27F225D38;
    v39 = &qword_24FA27B20;
    v40 = v60;
    return sub_24E601704(v40, v38, v39);
  }

  __break(1u);
  return result;
}

double sub_24F783220(__n128 a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for ShelvesView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FBF8, &unk_24FA27780);
  sub_24F9233D8();
  sub_24F7834D8(*a4);

  return result;
}

uint64_t sub_24F78328C@<X0>(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for GSKShelf(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v1;
  type metadata accessor for HydratingShelfView(0);
  sub_24F78B72C(v5);
  v7 = *(v1 + 1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FE20, &qword_24FA27E10);
  v9 = &a1[v8[14]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = &a1[v8[15]];
  v18[15] = 0;
  sub_24F926F28();
  v11 = v19;
  *v10 = v18[16];
  *(v10 + 1) = v11;
  v12 = v8[16];
  *&a1[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58, &unk_24F9C4F00);
  swift_storeEnumTagMultiPayload();
  *a1 = v6;
  sub_24E64346C(&a1[v8[9]]);
  result = sub_24F78BE40(v5, type metadata accessor for GSKShelf);
  v14 = &a1[v8[10]];
  *v14 = v7;
  v14[8] = 0;
  v15 = &a1[v8[11]];
  *v15 = sub_24F78343C;
  v15[1] = 0;
  v16 = &a1[v8[12]];
  *v16 = 0;
  v16[1] = 0;
  v17 = &a1[v8[13]];
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t sub_24F783448()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E614970;

  return sub_24F784B3C();
}

uint64_t sub_24F7834D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AA88, &unk_24FA13DA0);
  MEMORY[0x28223BE20](v2 - 8);
  v181 = &v165 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v188 = &v165 - v5;
  v180 = type metadata accessor for PlayNowFeedHydrationShelfIntent(0);
  v169 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v171 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v187 = &v165 - v8;
  v9 = type metadata accessor for GSKShelf(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v170 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v178 = &v165 - v13;
  MEMORY[0x28223BE20](v14);
  v174 = &v165 - v15;
  MEMORY[0x28223BE20](v16);
  v185 = &v165 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8, &qword_24F95C7D0);
  MEMORY[0x28223BE20](v18 - 8);
  v175 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v173 = &v165 - v21;
  MEMORY[0x28223BE20](v22);
  v195 = &v165 - v23;
  MEMORY[0x28223BE20](v24);
  v184 = &v165 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v165 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v165 - v30;
  v200 = sub_24F92AA48();
  v32 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v177 = &v165 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v196 = &v165 - v35;
  MEMORY[0x28223BE20](v36);
  v182 = &v165 - v37;
  MEMORY[0x28223BE20](v38);
  v194 = &v165 - v39;
  v201 = type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf(0);
  MEMORY[0x28223BE20](v201);
  v172 = &v165 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v176 = &v165 - v42;
  MEMORY[0x28223BE20](v43);
  v197 = &v165 - v44;
  MEMORY[0x28223BE20](v45);
  v186 = &v165 - v46;
  MEMORY[0x28223BE20](v47);
  v183 = &v165 - v48;
  MEMORY[0x28223BE20](v49);
  v51 = &v165 - v50;
  MEMORY[0x28223BE20](v52);
  v55 = &v165 - v54;
  v56 = *(a1 + 16);
  v198 = v9;
  v189 = v10;
  v190 = v32;
  v167 = v56;
  v166 = a1;
  v165 = v53;
  if (v56)
  {
    v57 = a1 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v58 = (v10 + 56);
    v59 = *(v53 + 72);
    v192 = (v10 + 48);
    v193 = v59;
    v179 = (v32 + 16);
    v199 = MEMORY[0x277D84F90];
    v191 = (v32 + 32);
    do
    {
      sub_24F78B65C(v57, v55, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
      sub_24F78B6C4(v55, v51, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v58)(v28, 1, 1, v9);
        v60 = v51;
        v61 = &qword_27F225D38;
        v62 = &qword_24FA27B20;
      }

      else
      {
        v63 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB00, &qword_24FA13F00) + 48);
        sub_24F78B6C4(v51, v28, type metadata accessor for GSKShelf);
        (*v58)(v28, 0, 1, v9);
        v60 = &v51[v63];
        v61 = &qword_27F24AA88;
        v62 = &unk_24FA13DA0;
      }

      sub_24E601704(v60, v61, v62);
      sub_24E6009C8(v28, v31, &qword_27F21E5E8, &qword_24F95C7D0);
      if ((*v192)(v31, 1, v9) == 1)
      {
        sub_24E601704(v31, &qword_27F21E5E8, &qword_24F95C7D0);
      }

      else
      {
        v64 = v58;
        v65 = v55;
        v66 = v28;
        v67 = v182;
        v68 = v200;
        (*v179)(v182, v31, v200);
        sub_24F78BE40(v31, type metadata accessor for GSKShelf);
        v69 = *v191;
        (*v191)(v194, v67, v68);
        v70 = v199;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_24E61ABDC(0, v70[2] + 1, 1, v70);
        }

        v72 = v70[2];
        v71 = v70[3];
        v199 = v70;
        if (v72 >= v71 >> 1)
        {
          v199 = sub_24E61ABDC((v71 > 1), v72 + 1, 1, v199);
        }

        v74 = v199;
        v73 = v200;
        *(v199 + 16) = v72 + 1;
        (v69)(v74 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v72, v194, v73);
        v9 = v198;
        v28 = v66;
        v55 = v65;
        v58 = v64;
      }

      v57 += v193;
      --v56;
    }

    while (v56);
  }

  else
  {
    v199 = MEMORY[0x277D84F90];
  }

  v75 = v168;
  v76 = v168[3];

  v77 = v199;

  v79 = sub_24F45E0A4(v78);

  sub_24EDD5110(v76, v79);
  v81 = v80;

  if (v81)
  {
  }

  *(v75 + OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_initialBatchComplete) = 0;

  v83 = sub_24F45E0A4(v82);

  v75[3] = v83;

  swift_beginAccess();
  v75[4] = MEMORY[0x277D84FA0];

  v75[5] = v77;

  v84 = v167;
  if (v167)
  {
    v85 = v166 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
    v194 = (v189 + 56);
    v86 = MEMORY[0x277D84F90];
    v199 = *(v165 + 72);
    v193 = (v189 + 48);
    v87 = v195;
    v88 = v186;
    do
    {
      v89 = v183;
      sub_24F78B65C(v85, v183, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
      sub_24F78B6C4(v89, v88, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v90 = v198;
        (*v194)(v87, 1, 1, v198);
        v91 = v88;
        v92 = &qword_27F225D38;
        v93 = &qword_24FA27B20;
      }

      else
      {
        v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB00, &qword_24FA13F00) + 48);
        sub_24F78B6C4(v88, v195, type metadata accessor for GSKShelf);
        v90 = v198;
        (*v194)(v195, 0, 1, v198);
        v91 = v88 + v94;
        v87 = v195;
        v92 = &qword_27F24AA88;
        v93 = &unk_24FA13DA0;
      }

      sub_24E601704(v91, v92, v93);
      v95 = v184;
      sub_24E6009C8(v87, v184, &qword_27F21E5E8, &qword_24F95C7D0);
      if ((*v193)(v95, 1, v90) == 1)
      {
        sub_24E601704(v95, &qword_27F21E5E8, &qword_24F95C7D0);
        v88 = v186;
      }

      else
      {
        sub_24F78B6C4(v95, v185, type metadata accessor for GSKShelf);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_24E6186FC(0, v86[2] + 1, 1, v86);
        }

        v88 = v186;
        v97 = v86[2];
        v96 = v86[3];
        if (v97 >= v96 >> 1)
        {
          v86 = sub_24E6186FC((v96 > 1), v97 + 1, 1, v86);
        }

        v86[2] = v97 + 1;
        sub_24F78B6C4(v185, v86 + ((*(v189 + 80) + 32) & ~*(v189 + 80)) + *(v189 + 72) * v97, type metadata accessor for GSKShelf);
        v87 = v195;
      }

      v85 += v199;
      --v84;
    }

    while (v84);
  }

  else
  {
    v86 = MEMORY[0x277D84F90];
  }

  v98 = sub_24E612708(MEMORY[0x277D84F90]);
  v199 = v86[2];
  if (!v199)
  {
    v102 = v188;
LABEL_46:

    v168[6] = v98;

    v195 = sub_24E6128F0(MEMORY[0x277D84F90]);
    v124 = v167;
    if (v167)
    {
      v125 = v166 + ((*(v165 + 80) + 32) & ~*(v165 + 80));
      v126 = (v169 + 56);
      v196 = *(v165 + 72);
      v199 = v169 + 48;
      v193 = (v189 + 48);
      v194 = (v189 + 56);
      v191 = (v190 + 8);
      v192 = (v190 + 16);
      v127 = v175;
      v128 = v176;
      do
      {
        v129 = v197;
        sub_24F78B65C(v125, v197, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
        sub_24F78B65C(v129, v128, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v130 = v181;
          v131 = v180;
          (*v126)(v181, 1, 1, v180);
          sub_24E601704(v128, &qword_27F225D38, &qword_24FA27B20);
        }

        else
        {
          v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB00, &qword_24FA13F00);
          v130 = v181;
          sub_24E6009C8(v128 + *(v132 + 48), v181, &qword_27F24AA88, &unk_24FA13DA0);
          sub_24F78BE40(v128, type metadata accessor for GSKShelf);
          v131 = v180;
        }

        sub_24E6009C8(v130, v102, &qword_27F24AA88, &unk_24FA13DA0);
        if ((*v199)(v102, 1, v131) == 1)
        {
          sub_24F78BE40(v197, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
          sub_24E601704(v102, &qword_27F24AA88, &unk_24FA13DA0);
        }

        else
        {
          sub_24F78B6C4(v102, v187, type metadata accessor for PlayNowFeedHydrationShelfIntent);
          v133 = v172;
          sub_24F78B65C(v197, v172, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v134 = v127;
            v135 = v127;
            v136 = v198;
            (*v194)(v134, 1, 1, v198);
            v137 = v133;
            v138 = &qword_27F225D38;
            v139 = &qword_24FA27B20;
          }

          else
          {
            v140 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AB00, &qword_24FA13F00) + 48);
            sub_24F78B6C4(v133, v127, type metadata accessor for GSKShelf);
            v141 = v127;
            v135 = v127;
            v136 = v198;
            (*v194)(v141, 0, 1, v198);
            v137 = v133 + v140;
            v138 = &qword_27F24AA88;
            v139 = &unk_24FA13DA0;
          }

          sub_24E601704(v137, v138, v139);
          v142 = v173;
          sub_24E6009C8(v135, v173, &qword_27F21E5E8, &qword_24F95C7D0);
          if ((*v193)(v142, 1, v136) == 1)
          {
            sub_24F78BE40(v187, type metadata accessor for PlayNowFeedHydrationShelfIntent);
            sub_24F78BE40(v197, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
            sub_24E601704(v142, &qword_27F21E5E8, &qword_24F95C7D0);
            v127 = v175;
            v128 = v176;
          }

          else
          {
            v143 = v126;
            v144 = v142;
            v145 = v170;
            sub_24F78B6C4(v144, v170, type metadata accessor for GSKShelf);
            v146 = *v192;
            v147 = v177;
            (*v192)(v177, v145, v200);
            sub_24F78B65C(v187, v171, type metadata accessor for PlayNowFeedHydrationShelfIntent);
            v148 = v195;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v202 = v148;
            v150 = sub_24E76EC54(v147);
            v152 = *(v148 + 16);
            v153 = (v151 & 1) == 0;
            v112 = __OFADD__(v152, v153);
            v154 = v152 + v153;
            v128 = v176;
            if (v112)
            {
              goto LABEL_74;
            }

            v155 = v151;
            if (*(v148 + 24) >= v154)
            {
              v127 = v175;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v163 = v150;
                sub_24E8B7DCC();
                v150 = v163;
              }
            }

            else
            {
              sub_24E8AB2F4(v154, isUniquelyReferenced_nonNull_native);
              v150 = sub_24E76EC54(v177);
              v127 = v175;
              if ((v155 & 1) != (v156 & 1))
              {
                goto LABEL_76;
              }
            }

            v102 = v188;
            v157 = v202;
            v195 = v202;
            if (v155)
            {
              sub_24F78E5DC(v171, *(v202 + 56) + *(v169 + 72) * v150, type metadata accessor for PlayNowFeedHydrationShelfIntent);
              (*v191)(v177, v200);
              sub_24F78BE40(v170, type metadata accessor for GSKShelf);
              sub_24F78BE40(v187, type metadata accessor for PlayNowFeedHydrationShelfIntent);
              sub_24F78BE40(v197, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
              v126 = v143;
            }

            else
            {
              *(v202 + 8 * (v150 >> 6) + 64) |= 1 << v150;
              v158 = v190;
              v159 = v150;
              v160 = v200;
              v146((v157[6] + *(v190 + 72) * v150), v177, v200);
              sub_24F78B6C4(v171, v157[7] + *(v169 + 72) * v159, type metadata accessor for PlayNowFeedHydrationShelfIntent);
              (*(v158 + 8))(v177, v160);
              sub_24F78BE40(v170, type metadata accessor for GSKShelf);
              sub_24F78BE40(v187, type metadata accessor for PlayNowFeedHydrationShelfIntent);
              sub_24F78BE40(v197, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf);
              v161 = v157[2];
              v112 = __OFADD__(v161, 1);
              v162 = v161 + 1;
              if (v112)
              {
                goto LABEL_75;
              }

              v157[2] = v162;
              v128 = v176;
              v126 = v143;
            }
          }
        }

        v125 += v196;
        --v124;
      }

      while (v124);
    }

    v168[7] = v195;
  }

  v99 = 0;
  v195 = v86 + ((*(v189 + 80) + 32) & ~*(v189 + 80));
  v100 = (v190 + 16);
  v194 = (v190 + 8);
  v101 = v174;
  while (v99 < v86[2])
  {
    sub_24F78B65C(v195 + *(v189 + 72) * v99, v101, type metadata accessor for GSKShelf);
    v103 = *v100;
    v104 = v196;
    (*v100)(v196, v101, v200);
    v105 = v178;
    sub_24F78B65C(v101, v178, type metadata accessor for GSKShelf);
    type metadata accessor for ShelfObserver(0);
    v106 = swift_allocObject();
    sub_24F91FDB8();
    sub_24F78B6C4(v105, v106 + OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD13ShelfObserver__shelf, type metadata accessor for GSKShelf);
    v107 = swift_isUniquelyReferenced_nonNull_native();
    v202 = v98;
    v108 = sub_24E76EC54(v104);
    v110 = v98[2];
    v111 = (v109 & 1) == 0;
    v112 = __OFADD__(v110, v111);
    v113 = v110 + v111;
    if (v112)
    {
      goto LABEL_72;
    }

    v114 = v109;
    if (v98[3] < v113)
    {
      sub_24E8AB794(v113, v107);
      v108 = sub_24E76EC54(v196);
      if ((v114 & 1) != (v115 & 1))
      {
        goto LABEL_76;
      }

LABEL_40:
      v98 = v202;
      if (v114)
      {
        goto LABEL_32;
      }

      goto LABEL_41;
    }

    if (v107)
    {
      goto LABEL_40;
    }

    v123 = v108;
    sub_24E8B80F8();
    v108 = v123;
    v98 = v202;
    if (v114)
    {
LABEL_32:
      *(v98[7] + 8 * v108) = v106;

      (*v194)(v196, v200);
      sub_24F78BE40(v101, type metadata accessor for GSKShelf);
      goto LABEL_33;
    }

LABEL_41:
    v98[(v108 >> 6) + 8] |= 1 << v108;
    v116 = v190;
    v117 = v108;
    v118 = v196;
    v119 = v200;
    v103(v98[6] + *(v190 + 72) * v108, v196, v200);
    *(v98[7] + 8 * v117) = v106;
    v120 = v119;
    v101 = v174;
    (*(v116 + 8))(v118, v120);
    sub_24F78BE40(v101, type metadata accessor for GSKShelf);
    v121 = v98[2];
    v112 = __OFADD__(v121, 1);
    v122 = v121 + 1;
    if (v112)
    {
      goto LABEL_73;
    }

    v98[2] = v122;
LABEL_33:
    ++v99;
    v102 = v188;
    if (v199 == v99)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24F784B3C()
{
  v1[9] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v2 = sub_24F92AA48();
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247800, &qword_24FA27D10);
  v1[16] = swift_task_alloc();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FDA8, &qword_24FA27C80);
  v1[18] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FDC8, &qword_24FA27D18);
  v1[19] = v3;
  v1[20] = *(v3 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F784D28, 0, 0);
}

uint64_t sub_24F784D28()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[9];
  v4 = swift_allocObject();
  v0[22] = v4;
  *(v4 + 16) = MEMORY[0x277D84FA0];
  sub_24E60169C(v3 + OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_hydrationRequests, v1, &qword_27F24FDA8, &qword_24FA27C80);
  v5 = *(v2 + 48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FDD0, &qword_24FA27D20);
  sub_24F92B8F8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FDD8, &qword_24FA27D28);
  (*(*(v7 - 8) + 8))(v1 + v5, v7);
  (*(*(v6 - 8) + 8))(v1, v6);
  v0[23] = 0;
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_24F784EC8;
  v9 = v0[19];
  v10 = v0[16];

  return MEMORY[0x2822003E8](v10, 0, 0, v9);
}

uint64_t sub_24F784EC8()
{

  return MEMORY[0x2822009F8](sub_24F784FC4, 0, 0);
}

uint64_t sub_24F784FC4()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];

    (*(v5 + 8))(v4, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[23];
    v11 = v0[14];
    v10 = v0[15];
    (*(v3 + 32))(v11, v1, v2);
    swift_beginAccess();
    sub_24ED801C4(v10, v11);
    swift_endAccess();
    (*(v3 + 8))(v10, v2);
    if (v9)
    {
      sub_24F92B958();
    }

    v12 = v0[22];
    v14 = v0[10];
    v13 = v0[11];
    v15 = v0[9];
    v16 = sub_24F92B858();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v13, 1, 1, v16);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v12;
    v18[5] = v15;
    sub_24E60169C(v13, v14, &unk_27F21B570, &qword_24F93B020);
    LODWORD(v13) = (*(v17 + 48))(v14, 1, v16);

    v19 = v0[10];
    if (v13 == 1)
    {
      sub_24E601704(v0[10], &unk_27F21B570, &qword_24F93B020);
    }

    else
    {
      sub_24F92B848();
      (*(v17 + 8))(v19, v16);
    }

    v20 = v18[2];
    swift_unknownObjectRetain();

    if (v20)
    {
      swift_getObjectType();
      v21 = sub_24F92B778();
      v23 = v22;
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    sub_24E601704(v0[11], &unk_27F21B570, &qword_24F93B020);
    v24 = swift_allocObject();
    *(v24 + 16) = &unk_24FA27D38;
    *(v24 + 24) = v18;
    if (v23 | v21)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v21;
      v0[5] = v23;
    }

    v25 = swift_task_create();

    v0[23] = v25;
    v26 = swift_task_alloc();
    v0[24] = v26;
    *v26 = v0;
    v26[1] = sub_24F784EC8;
    v27 = v0[19];
    v28 = v0[16];

    return MEMORY[0x2822003E8](v28, 0, 0, v27);
  }
}

uint64_t sub_24F785410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_24F92CA08();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7854D0, 0, 0);
}

uint64_t sub_24F7854D0()
{
  sub_24F92CFB8();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_24F78559C;

  return sub_24E70C87C(100000000000000000, 0, 0, 0, 1);
}

uint64_t sub_24F78559C()
{
  v2 = *v1;

  v3 = v2[12];
  v4 = v2[11];
  v5 = v2[10];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_24F78EE74;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_24F785734;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F785734(uint64_t a1)
{
  v15 = v1;
  if (sub_24F92B978())
  {
    goto LABEL_11;
  }

  v2 = v1[8];
  swift_beginAccess();
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = sub_24EAE6C50(*(v3 + 16), 0);
  v6 = *(sub_24F92AA48() - 8);
  sub_24EAE98EC(&v14, &v5[(*(v6 + 80) + 32) & ~*(v6 + 80)], v4, v3);
  v8 = v7;
  v9 = v14;

  sub_24E6586B4(v9);
  if (v8 != v4)
  {
    __break(1u);
LABEL_5:
    v5 = MEMORY[0x277D84F90];
  }

  v1[14] = v5;
  v10 = v1[8];
  swift_beginAccess();
  *(v10 + 16) = MEMORY[0x277D84FA0];

  if (*(v5 + 2))
  {
    v11 = swift_task_alloc();
    v1[15] = v11;
    *v11 = v1;
    v11[1] = sub_24F785940;

    return sub_24F785A68(v5, 0);
  }

LABEL_11:

  v13 = v1[1];

  return v13();
}

uint64_t sub_24F785940()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24F785A68(uint64_t a1, uint64_t a2)
{
  v3[25] = a2;
  v3[26] = v2;
  v3[24] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FCF0, &qword_24FA27B28);
  v3[27] = swift_task_alloc();
  v3[28] = *(type metadata accessor for PlayNowFeedHydrationShelfIntent(0) - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v4 = sub_24F92AA48();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F785BEC, 0, 0);
}

uint64_t sub_24F785BEC()
{
  v1 = v0[24];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[32];
    v4 = v0[26];
    v6 = *(v3 + 16);
    v3 += 16;
    v5 = v6;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v28 = v0[28];
    v29 = *(v3 + 56);
    v8 = (v3 - 8);
    v9 = MEMORY[0x277D84F90];
    v26 = v4;
    v25 = v6;
    v6(v0[36], v7, v0[31]);
    while (1)
    {
      v10 = *(v4 + 56);
      if (!*(v10 + 16))
      {
        goto LABEL_4;
      }

      v11 = v0[36];

      v12 = sub_24E76EC54(v11);
      if ((v13 & 1) == 0)
      {
        break;
      }

      v14 = v0[36];
      v16 = v0[30];
      v15 = v0[31];
      v17 = v0[29];
      v27 = *(v28 + 72);
      sub_24F78B65C(*(v10 + 56) + v27 * v12, v17, type metadata accessor for PlayNowFeedHydrationShelfIntent);
      (*v8)(v14, v15);

      sub_24F78B6C4(v17, v16, type metadata accessor for PlayNowFeedHydrationShelfIntent);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_24E61AC04(0, v9[2] + 1, 1, v9);
      }

      v19 = v9[2];
      v18 = v9[3];
      v4 = v26;
      v5 = v25;
      if (v19 >= v18 >> 1)
      {
        v9 = sub_24E61AC04((v18 > 1), v19 + 1, 1, v9);
      }

      v20 = v0[30];
      v9[2] = v19 + 1;
      sub_24F78B6C4(v20, v9 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + v19 * v27, type metadata accessor for PlayNowFeedHydrationShelfIntent);
LABEL_5:
      v7 += v29;
      if (!--v2)
      {
        goto LABEL_15;
      }

      v5(v0[36], v7, v0[31]);
    }

LABEL_4:
    (*v8)(v0[36], v0[31]);
    goto LABEL_5;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_15:
  v0[37] = v9;
  if (v9[2])
  {
    v0[38] = *(v0[26] + 16);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
    v22 = swift_task_alloc();
    v0[39] = v22;
    *v22 = v0;
    v22[1] = sub_24F785F48;

    return MEMORY[0x28217F228](v0 + 2, v21, v21);
  }

  else
  {

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_24F785F48()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_24F787554;
  }

  else
  {
    v2 = sub_24F786064;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F786064()
{
  v19 = v0;
  if (qword_27F211838 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  *(v0 + 328) = __swift_project_value_buffer(v1, qword_27F24FB70);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 248);
    v5 = *(v0 + 192);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = MEMORY[0x253050F40](v5, v4);
    v10 = sub_24E7620D4(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_24E5DD000, v2, v3, "Hydrating shelves: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v11 = *(v0 + 296);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  *(v0 + 152) = v11;
  *(v0 + 160) = 0;
  v14 = swift_task_alloc();
  *(v0 + 336) = v14;
  v15 = sub_24F78E448();
  *v14 = v0;
  v14[1] = sub_24F786288;
  v16 = *(v0 + 304);

  return MEMORY[0x28217F4B0](v0 + 184, v0 + 152, v16, &type metadata for PlayNowFeedHydrationShelfBatchIntent, v15, v12, v13);
}

uint64_t sub_24F786288()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24F787A88;
  }

  else
  {

    v2 = sub_24F7863A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7863A4()
{
  v56 = v0;
  v1 = v0[26];
  v2 = v0[23];
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  v0[44] = sub_24F77C0C4(KeyPath, v4, v2);

  swift_beginAccess();

  sub_24EAE9F20(v5);
  swift_endAccess();

  v50 = v1;
  v6 = *(v1 + 40);
  v7 = *(v6 + 16);

  v49 = v7;
  if (v7)
  {
    v11 = 0;
    v12 = v0[32];
    v53 = (v12 + 8);
    v13 = MEMORY[0x277D84F90];
    v47 = v6;
    v48 = v12;
    v14 = (v12 + 32);
    v46 = (v12 + 32);
    while (1)
    {
      if (v11 >= *(v6 + 16))
      {
        __break(1u);
        return MEMORY[0x2822009F8](v8, v9, v10);
      }

      v17 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v54 = *(v48 + 72);
      v18 = *(v48 + 16);
      v18(v0[35], v6 + v17 + v54 * v11, v0[31]);
      v19 = *(v50 + 32);
      if (*(v19 + 16))
      {
        v51 = v13;
        v52 = v11;
        sub_24F78BEA0(&qword_27F21BCA0, MEMORY[0x277D224C0], MEMORY[0x277D224D0]);

        v20 = sub_24F92AEE8();
        v21 = -1 << *(v19 + 32);
        v22 = v20 & ~v21;
        if ((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v23 = ~v21;
          while (1)
          {
            v24 = v0[34];
            v25 = v0[31];
            v18(v24, *(v19 + 48) + v22 * v54, v25);
            sub_24F78BEA0(&qword_27F21BCA8, MEMORY[0x277D224C0], MEMORY[0x277D224D8]);
            v26 = sub_24F92AFF8();
            v27 = *v53;
            (*v53)(v24, v25);
            if (v26)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v19 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_11;
            }
          }

          v15 = v0[35];
          v16 = v0[31];

          v8 = v27(v15, v16);
          v14 = v46;
          v6 = v47;
          v13 = v51;
          v11 = v52;
          goto LABEL_4;
        }

LABEL_11:

        v14 = v46;
        v6 = v47;
        v13 = v51;
        v11 = v52;
      }

      v28 = *v14;
      (*v14)(v0[33], v0[35], v0[31]);
      v55 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24F458FB4(0, *(v13 + 16) + 1, 1);
        v13 = v55;
      }

      v30 = *(v13 + 16);
      v29 = *(v13 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_24F458FB4((v29 > 1), v30 + 1, 1);
        v13 = v55;
      }

      v31 = v0[33];
      v32 = v0[31];
      *(v13 + 16) = v30 + 1;
      v8 = v28(v13 + v17 + v30 * v54, v31, v32);
LABEL_4:
      if (++v11 == v49)
      {
        goto LABEL_18;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_18:

  *(v50 + 40) = v13;

  v33 = sub_24F9220B8();
  v34 = sub_24F92BD98();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = v0[31];
    v36 = v0[24];
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v55 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x253050F40](v36, v35);
    v41 = sub_24E7620D4(v39, v40, &v55);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_24E5DD000, v33, v34, "Finished hydrating shelves: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530542D0](v38, -1, -1);
    MEMORY[0x2530542D0](v37, -1, -1);
  }

  v0[45] = sub_24F92B7F8();
  v0[46] = sub_24F92B7E8();
  v42 = sub_24F92B778();
  v44 = v43;
  v8 = sub_24F7868CC;
  v9 = v42;
  v10 = v44;

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_24F7868CC()
{
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[26];
  v4 = v0[24];

  sub_24F787FCC(v4, v1, v3);
  if (v2)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_24F786998, 0, 0);
  }
}

uint64_t sub_24F786998(uint64_t a1)
{
  v2 = v1[26];
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_initialBatchComplete))
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v3 = v1[1];

    return v3();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_initialBatchComplete) = 1;
    v1[47] = sub_24F92B7E8();
    v6 = sub_24F92B778();

    return MEMORY[0x2822009F8](sub_24F786AD4, v6, v5);
  }
}

uint64_t sub_24F786AD4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  v3 = OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_finishLaunchTest;
  swift_beginAccess();
  sub_24E60169C(v1 + v3, v2, &qword_27F24FCF0, &qword_24FA27B28);
  v4 = sub_24F925168();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 48))(v2, 1, v4);
  if (v6 == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = *(v0 + 216);
    sub_24F925158();
    (*(v5 + 8))(v9, v4);
    v6 = sub_24F786C00;
    v7 = 0;
    v8 = 0;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

void sub_24F786C00()
{
  v1 = *(v0[26] + 40);
  v45 = v1[2];
  if (v45)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      ++v3;
      v4 = v2 + 3;
      if (__OFADD__(v2, 3))
      {
        break;
      }

      v2 += 3;
    }

    while (v4 < v45);
  }

  else
  {
    v3 = 0;
  }

  v46 = MEMORY[0x277D84F90];

  sub_24F458F74(0, v3, 0);
  v40 = v0;
  if (v3)
  {
    v5 = 0;
    v43 = v0[32];
    v41 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    while (v5 < v45)
    {
      v6 = v5 + 3;
      if (__OFADD__(v5, 3))
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = v5 + 3;
      }

      if (v5 > 0x7FFFFFFFFFFFFFFCLL)
      {
        goto LABEL_74;
      }

      v8 = v1[2];
      if (v8 < v6)
      {
        v6 = v1[2];
      }

      v9 = v6 - v5;
      if (v6 < v5)
      {
        goto LABEL_75;
      }

      if (v5 < 0)
      {
        goto LABEL_76;
      }

      if (v8 == v9)
      {

        v10 = v1;
      }

      else
      {
        v10 = MEMORY[0x277D84F90];
        if (v6 != v5)
        {
          if (v9 >= 1)
          {
            v37 = *(v43 + 72);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213890, &unk_24F980DA0);
            v10 = swift_allocObject();
            v14 = _swift_stdlib_malloc_size(v10);
            if (!v37)
            {
              goto LABEL_80;
            }

            if (v14 - v41 == 0x8000000000000000 && v37 == -1)
            {
              goto LABEL_82;
            }

            v10[2] = v9;
            v10[3] = 2 * ((v14 - v41) / v37);
          }

          swift_arrayInitWithCopy();
        }
      }

      v12 = *(v46 + 16);
      v11 = *(v46 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_24F458F74((v11 > 1), v12 + 1, 1);
      }

      *(v46 + 16) = v12 + 1;
      *(v46 + 8 * v12 + 32) = v10;
      v13 = v7;
      v5 = v7;
      if (!--v3)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
  }

  else
  {
    v13 = 0;
LABEL_34:
    v44 = v1;
    if (v13 >= v45)
    {
LABEL_66:
      v40[48] = v46;

      v33 = *(v46 + 16);
      v40[49] = v33;
      if (v33)
      {
        v40[50] = 0;
        v34 = *(v40[48] + 32);
        v40[51] = v34;

        v35 = swift_task_alloc();
        v40[52] = v35;
        *v35 = v40;
        v35[1] = sub_24F787128;

        sub_24F785A68(v34, 0);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v40 + 2);

        v36 = v40[1];

        v36();
      }

      return;
    }

    v39 = v0[32];
    v16 = -v13;
    v17 = v13 + 3;
    v18 = v13;
    v42 = v13;
    while (1)
    {
      v19 = v18 + 3;
      v20 = __OFADD__(v18, 3);
      if (v18 > 0x7FFFFFFFFFFFFFFCLL)
      {
        break;
      }

      v21 = v44[2];
      if (v21 >= v19)
      {
        v22 = v18 + 3;
      }

      else
      {
        v22 = v44[2];
      }

      if (v22 < v18)
      {
        goto LABEL_78;
      }

      if (v13 < 0)
      {
        goto LABEL_79;
      }

      if (v21 >= v17)
      {
        v23 = v17;
      }

      else
      {
        v23 = v44[2];
      }

      v24 = v23 + v16;
      if (v23 + v16 == v21)
      {
        v25 = v44;
      }

      else
      {
        v25 = MEMORY[0x277D84F90];
        if (v18 != v22)
        {
          v29 = *(v39 + 80);
          if (v24 > 0)
          {
            v38 = *(v39 + 72);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213890, &unk_24F980DA0);
            v30 = (v29 + 32) & ~v29;
            v25 = swift_allocObject();
            v31 = _swift_stdlib_malloc_size(v25);
            if (!v38)
            {
              goto LABEL_81;
            }

            if (v31 - v30 == 0x8000000000000000 && v38 == -1)
            {
              goto LABEL_83;
            }

            v25[2] = v24;
            v25[3] = 2 * ((v31 - v30) / v38);
          }

          swift_arrayInitWithCopy();
        }
      }

      v27 = *(v46 + 16);
      v26 = *(v46 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_24F458F74((v26 > 1), v27 + 1, 1);
      }

      *(v46 + 16) = v27 + 1;
      *(v46 + 8 * v27 + 32) = v25;
      v28 = v19 >= v45 || v20;
      v18 += 3;
      v16 -= 3;
      v17 += 3;
      v13 = v42;
      if (v28)
      {
        goto LABEL_66;
      }
    }
  }

  __break(1u);
LABEL_78:
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
}

uint64_t sub_24F787128()
{

  return MEMORY[0x2822009F8](sub_24F787240, 0, 0);
}

uint64_t sub_24F787240()
{
  v1 = v0[50] + 1;
  if (v1 == v0[49])
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[50] = v1;
    v4 = *(v0[48] + 8 * v1 + 32);
    v0[51] = v4;

    v5 = swift_task_alloc();
    v0[52] = v5;
    *v5 = v0;
    v5[1] = sub_24F787128;

    return sub_24F785A68(v4, 0);
  }
}

uint64_t sub_24F7873A4()
{

  return MEMORY[0x2822009F8](sub_24F7874A0, 0, 0);
}

uint64_t sub_24F7874A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F787554()
{
  v45 = v0;
  v1 = v0[40];
  v0[53] = v1;
  if (qword_27F211838 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F24FB70);

  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315394;
    v10 = MEMORY[0x253050F40](v7, v6);
    v12 = sub_24E7620D4(v10, v11, &v44);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_24F92CFE8();
    v15 = sub_24E7620D4(v13, v14, &v44);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to hydrate shelf batch: %s, error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v16 = v0[25];
  if (v16 > 2)
  {

    v30 = v1;
    v31 = sub_24F9220B8();
    v32 = sub_24F92BDB8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[31];
      v34 = v0[24];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v35 = 136315394;
      v37 = MEMORY[0x253050F40](v34, v33);
      v39 = sub_24E7620D4(v37, v38, &v44);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      swift_getErrorValue();
      v40 = sub_24F92CFE8();
      v42 = sub_24E7620D4(v40, v41, &v44);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_24E5DD000, v31, v32, "Max retries exceeded for shelf batch: %s, error: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v36, -1, -1);
      MEMORY[0x2530542D0](v35, -1, -1);
    }

    else
    {
    }

    v43 = v0[1];

    return v43();
  }

  else
  {
    v17 = v16 + 1;

    v18 = sub_24F9220B8();
    v19 = sub_24F92BDB8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[31];
      v21 = v0[24];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136315394;
      v24 = MEMORY[0x253050F40](v21, v20);
      v26 = sub_24E7620D4(v24, v25, &v44);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v17;
      _os_log_impl(&dword_24E5DD000, v18, v19, "Retrying to hydrate shelf batch: %s, attempt: %ld", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x2530542D0](v23, -1, -1);
      MEMORY[0x2530542D0](v22, -1, -1);
    }

    v27 = swift_task_alloc();
    v0[54] = v27;
    *v27 = v0;
    v27[1] = sub_24F7873A4;
    v28 = v0[24];

    return sub_24F785A68(v28, v17);
  }
}

uint64_t sub_24F787A88()
{
  v45 = v0;

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[43];
  v0[53] = v1;
  if (qword_27F211838 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F24FB70);

  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[31];
    v7 = v0[24];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315394;
    v10 = MEMORY[0x253050F40](v7, v6);
    v12 = sub_24E7620D4(v10, v11, &v44);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_24F92CFE8();
    v15 = sub_24E7620D4(v13, v14, &v44);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to hydrate shelf batch: %s, error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  v16 = v0[25];
  if (v16 > 2)
  {

    v30 = v1;
    v31 = sub_24F9220B8();
    v32 = sub_24F92BDB8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = v0[31];
      v34 = v0[24];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v44 = v36;
      *v35 = 136315394;
      v37 = MEMORY[0x253050F40](v34, v33);
      v39 = sub_24E7620D4(v37, v38, &v44);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2080;
      swift_getErrorValue();
      v40 = sub_24F92CFE8();
      v42 = sub_24E7620D4(v40, v41, &v44);

      *(v35 + 14) = v42;
      _os_log_impl(&dword_24E5DD000, v31, v32, "Max retries exceeded for shelf batch: %s, error: %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v36, -1, -1);
      MEMORY[0x2530542D0](v35, -1, -1);
    }

    else
    {
    }

    v43 = v0[1];

    return v43();
  }

  else
  {
    v17 = v16 + 1;

    v18 = sub_24F9220B8();
    v19 = sub_24F92BDB8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v0[31];
      v21 = v0[24];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44 = v23;
      *v22 = 136315394;
      v24 = MEMORY[0x253050F40](v21, v20);
      v26 = sub_24E7620D4(v24, v25, &v44);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v17;
      _os_log_impl(&dword_24E5DD000, v18, v19, "Retrying to hydrate shelf batch: %s, attempt: %ld", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x2530542D0](v23, -1, -1);
      MEMORY[0x2530542D0](v22, -1, -1);
    }

    v27 = swift_task_alloc();
    v0[54] = v27;
    *v27 = v0;
    v27[1] = sub_24F7873A4;
    v28 = v0[24];

    return sub_24F785A68(v28, v17);
  }
}

void sub_24F787FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GSKShelf(0);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v39 = v34 - v9;
  MEMORY[0x28223BE20](v10);
  v41 = v34 - v11;
  v12 = sub_24F92AA48();
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (v17)
  {
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v20 = a1 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v42 = *(v18 + 56);
    v43 = v19;
    v21 = (v18 - 8);
    v22 = v18;
    v34[0] = a3;
    v19(v16, v20, v12, v14);
    while (1)
    {
      if (!*(a2 + 16) || (v24 = v22, v25 = sub_24E76EC54(v16), (v26 & 1) == 0))
      {
        (*v21)(v16, v12);
        goto LABEL_4;
      }

      v27 = v39;
      sub_24F78B65C(*(a2 + 56) + *(v40 + 72) * v25, v39, type metadata accessor for GSKShelf);
      sub_24F78B6C4(v27, v41, type metadata accessor for GSKShelf);
      v28 = *(a3 + 48);
      if (!*(v28 + 16))
      {
        goto LABEL_12;
      }

      v29 = sub_24E76EC54(v16);
      if ((v30 & 1) == 0)
      {
        break;
      }

      v31 = *(*(v28 + 56) + 8 * v29);

      v32 = v37;
      sub_24F78B65C(v41, v37, type metadata accessor for GSKShelf);
      KeyPath = swift_getKeyPath();
      v36 = v34;
      MEMORY[0x28223BE20](KeyPath);
      v34[1] = v31;
      v34[2] = &v34[-4];
      v34[-2] = v31;
      v34[-1] = v32;
      v44 = v31;
      sub_24F78BEA0(&qword_27F24FDB8, type metadata accessor for ShelfObserver, &unk_24FA278B8);
      v33 = v38;
      sub_24F91FD78();
      v38 = v33;

      sub_24F78BE40(v41, type metadata accessor for GSKShelf);
      (*v21)(v16, v12);
      a3 = v34[0];

      sub_24F78BE40(v37, type metadata accessor for GSKShelf);
LABEL_13:
      v22 = v24;
LABEL_4:
      v20 += v42;
      if (!--v17)
      {
        return;
      }

      v43(v16, v20, v12, v23);
    }

LABEL_12:
    sub_24F78BE40(v41, type metadata accessor for GSKShelf);
    (*v21)(v16, v12);
    goto LABEL_13;
  }
}

uint64_t sub_24F7883F4()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_finishLaunchTest, &qword_27F24FCF0, &qword_24FA27B28);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_hydrationRequests, &qword_27F24FDA8, &qword_24FA27C80);
  return v0;
}

double sub_24F78847C()
{
  sub_24F7883F4();

  swift_deallocClassInstance();
  return result;
}

void sub_24F7884F8(uint64_t a1)
{
  v6 = MEMORY[0x277D83428] + 64;
  v7 = MEMORY[0x277D833F0] + 64;
  v8 = MEMORY[0x277D833F0] + 64;
  v9 = MEMORY[0x277D833F0] + 64;
  v10 = MEMORY[0x277D833F0] + 64;
  v11 = MEMORY[0x277D833F0] + 64;
  sub_24F7886CC(319, &qword_27F24FBB0, MEMORY[0x277CDE160], MEMORY[0x277D83D88]);
  if (v2 <= 0x3F)
  {
    v12 = *(v1 - 8) + 64;
    sub_24F7886CC(319, &qword_27F24FBB8, MEMORY[0x277D224C0], MEMORY[0x277D857B8]);
    if (v3 <= 0x3F)
    {
      sub_24F7886CC(319, &qword_27F24FBC0, MEMORY[0x277D224C0], MEMORY[0x277D85788]);
      if (v4 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v13 = &v5;
        v14 = &unk_24FA27748;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24F7886CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F788730@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24F78BEA0(&qword_27F24FDB8, type metadata accessor for ShelfObserver, &unk_24FA278B8);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD13ShelfObserver__shelf;
  swift_beginAccess();
  return sub_24F78B65C(v5 + v3, a1, type metadata accessor for GSKShelf);
}

uint64_t sub_24F78880C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F78BEA0(&qword_27F24FDB8, type metadata accessor for ShelfObserver, &unk_24FA278B8);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD13ShelfObserver__shelf;
  swift_beginAccess();
  return sub_24F78B65C(v3 + v4, a2, type metadata accessor for GSKShelf);
}

uint64_t sub_24F7888E8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for GSKShelf(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24F78B65C(a1, v6, type metadata accessor for GSKShelf);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24F78BEA0(&qword_27F24FDB8, type metadata accessor for ShelfObserver, &unk_24FA278B8);
  sub_24F91FD78();

  return sub_24F78BE40(v6, type metadata accessor for GSKShelf);
}

uint64_t sub_24F788A38(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD13ShelfObserver__shelf;
  swift_beginAccess();
  sub_24F78E3E4(a2, a1 + v4);
  return swift_endAccess();
}

double sub_24F788AA4()
{
  sub_24F78BE40(v0 + OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD13ShelfObserver__shelf, type metadata accessor for GSKShelf);
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD13ShelfObserver___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_24F788B8C(uint64_t a1)
{
  result = type metadata accessor for GSKShelf(319);
  if (v2 <= 0x3F)
  {
    result = sub_24F91FDC8();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_24F788C6C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ShelfHydrator(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_24F788D4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ShelfHydrator(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F788E10(uint64_t a1)
{
  sub_24F7886CC(319, &qword_27F24AAC8, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ShelfHydrator(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F788F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FBF8, &unk_24FA27780);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F238678, &qword_24F9C4E48);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F789044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FBF8, &unk_24FA27780);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F238678, &qword_24F9C4E48);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F789164(uint64_t a1)
{
  sub_24F7886CC(319, &qword_27F24FC10, type metadata accessor for Hydrator, MEMORY[0x277CDF338]);
  if (v1 <= 0x3F)
  {
    sub_24F7886CC(319, &qword_27F238700, MEMORY[0x277CDE160], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_24F7886CC(319, &qword_27F24AAC8, type metadata accessor for PlayNowFeedShelvesIntent.PlayNowShelf, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F7892A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PlayNowFeedShelvesIntent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[7]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC18, &qword_24FA277A0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC20, &qword_24FA277A8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[9];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_24F789444(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PlayNowFeedShelvesIntent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC18, &qword_24FA277A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC20, &qword_24FA277A8);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_24F7895F0(uint64_t a1)
{
  type metadata accessor for PlayNowFeedShelvesIntent(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24F789714(319, &qword_27F24FC38, &qword_27F24FC40, &unk_24FA277C0, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_24F789714(319, &qword_27F24FC48, &qword_27F216F50, &unk_24FA10C90, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F789714(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24F78978C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayNowPageIntent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PlayNowFeedShelvesIntent(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F7898C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlayNowPageIntent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PlayNowFeedShelvesIntent(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_24F789A08(uint64_t a1)
{
  result = type metadata accessor for PlayNowPageIntent(319);
  if (v2 <= 0x3F)
  {
    result = sub_24F928FD8();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PlayNowFeedShelvesIntent(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_24F789AC0(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  type metadata accessor for Hydrator(0);
  swift_allocObject();

  v6 = sub_24F78DFF8(a1, a2);

  *a3 = v6;
}

double sub_24F789B38()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FCF0, &qword_24FA27B28);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v10 - v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FBF8, &unk_24FA27780);
  sub_24F9233D8();
  v5 = v10[1];
  v6 = type metadata accessor for ShelfHydrator(0);
  sub_24F76A218(v4);
  v7 = sub_24F925168();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_finishLaunchTest;
  swift_beginAccess();
  sub_24F78CB48(v4, v5 + v8);
  swift_endAccess();

  sub_24F9233D8();
  sub_24F7834D8(*(v1 + *(v6 + 24)));

  return result;
}

uint64_t objectdestroyTm_87()
{
  v1 = type metadata accessor for PlayNowPageView(0);
  v55 = *(*(v1 - 8) + 80);
  v2 = v0 + ((v55 + 16) & ~v55);

  v3 = type metadata accessor for Player(0);
  v4 = v3[6];
  v5 = sub_24F9289E8();
  v6 = (*(v5 - 8) + 8);
  v56 = *(v5 - 8);
  v57 = *v6;
  (*v6)(v2 + v4, v5);

  if (*(v2 + v3[9] + 8) != 1)
  {
  }

  v7 = v2 + v3[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet(0);
  v54 = *(*(v8 - 8) + 48);
  if (!v54(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle(0);
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v56 + 48))(v7 + v11, 1, v5))
      {
        v57(v7 + v11, v5);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v56 + 48))(v12 + v13, 1, v5))
      {
        v57(v12 + v13, v5);
      }
    }
  }

  if (*(v2 + v3[15] + 8))
  {
  }

  v14 = v2 + v3[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v52 = *(*(PlayedTogetherInfo - 8) + 48);
  v53 = PlayedTogetherInfo;
  v16 = v57;
  if (!v52(v14, 1))
  {

    v17 = type metadata accessor for Game(0);
    v57(v14 + v17[18], v5);
    v18 = v17[19];
    if (!(*(v56 + 48))(v14 + v18, 1, v5))
    {
      v57(v14 + v18, v5);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v14 + v19, 1, v20))
    {
      (*(v21 + 8))(v14 + v19, v20);
    }

    v16 = v57;
  }

  v22 = v2 + v3[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v51 = *(*(ChallengeInfo - 8) + 48);
  if (!v51(v22, 1, ChallengeInfo))
  {
    v50 = v1;

    v24 = type metadata accessor for Game(0);
    v16(v22 + v24[18], v5);
    v25 = v24[19];
    if (!(*(v56 + 48))(v22 + v25, 1, v5))
    {
      v16(v22 + v25, v5);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }

    v16 = v57;
    v1 = v50;
  }

  v29 = v2 + *(v1 + 24);

  v16(v29 + v3[6], v5);

  if (*(v29 + v3[9] + 8) != 1)
  {
  }

  v30 = v29 + v3[13];
  if (!v54(v30, 1, v8))
  {
    v31 = type metadata accessor for CallProviderConversationHandle(0);
    v32 = *(*(v31 - 8) + 48);
    if (!v32(v30, 1, v31))
    {

      v33 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v56 + 48))(v30 + v33, 1, v5))
      {
        v57(v30 + v33, v5);
      }
    }

    v34 = v30 + *(v8 + 20);
    v35 = v32(v34, 1, v31);
    v16 = v57;
    if (!v35)
    {

      v36 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v56 + 48))(v34 + v36, 1, v5))
      {
        v57(v34 + v36, v5);
      }
    }
  }

  if (*(v29 + v3[15] + 8))
  {
  }

  v37 = v29 + v3[16];
  if (!(v52)(v37, 1, v53))
  {

    v38 = type metadata accessor for Game(0);
    v16(v37 + v38[18], v5);
    v39 = v38[19];
    if (!(*(v56 + 48))(v37 + v39, 1, v5))
    {
      v16(v37 + v39, v5);
    }

    v40 = v38[21];
    v41 = sub_24F920818();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v37 + v40, 1, v41))
    {
      (*(v42 + 8))(v37 + v40, v41);
    }

    v16 = v57;
  }

  v43 = v29 + v3[17];
  if (!v51(v43, 1, ChallengeInfo))
  {

    v44 = type metadata accessor for Game(0);
    v16(v43 + v44[18], v5);
    v45 = v44[19];
    if (!(*(v56 + 48))(v43 + v45, 1, v5))
    {
      v16(v43 + v45, v5);
    }

    v46 = v44[21];
    v47 = sub_24F920818();
    v48 = *(v47 - 8);
    if (!(*(v48 + 48))(v43 + v46, 1, v47))
    {
      (*(v48 + 8))(v43 + v46, v47);
    }
  }

  return swift_deallocObject();
}

void sub_24F78A894()
{
  v1 = *(type metadata accessor for PlayNowPageView(0) - 8);
  v3 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_24F77DB54(v2, v3);
}

uint64_t sub_24F78A8F8()
{
  v2 = *(type metadata accessor for PlayNowPageView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24E6541E4;

  return sub_24F77DD8C(v7, v4, v5, v0 + v3);
}

uint64_t objectdestroy_74Tm()
{
  v1 = type metadata accessor for PlayNowPageView(0);
  v55 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v2 = v0 + ((v55 + 32) & ~v55);

  v3 = type metadata accessor for Player(0);
  v4 = v3[6];
  v5 = sub_24F9289E8();
  v6 = (*(v5 - 8) + 8);
  v56 = *(v5 - 8);
  v57 = *v6;
  (*v6)(v2 + v4, v5);

  if (*(v2 + v3[9] + 8) != 1)
  {
  }

  v7 = v2 + v3[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet(0);
  v54 = *(*(v8 - 8) + 48);
  if (!v54(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle(0);
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v56 + 48))(v7 + v11, 1, v5))
      {
        v57(v7 + v11, v5);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v56 + 48))(v12 + v13, 1, v5))
      {
        v57(v12 + v13, v5);
      }
    }
  }

  if (*(v2 + v3[15] + 8))
  {
  }

  v14 = v2 + v3[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v52 = *(*(PlayedTogetherInfo - 8) + 48);
  v53 = PlayedTogetherInfo;
  v16 = v57;
  if (!v52(v14, 1))
  {

    v17 = type metadata accessor for Game(0);
    v57(v14 + v17[18], v5);
    v18 = v17[19];
    if (!(*(v56 + 48))(v14 + v18, 1, v5))
    {
      v57(v14 + v18, v5);
    }

    v19 = v17[21];
    v20 = sub_24F920818();
    v21 = *(v20 - 8);
    if (!(*(v21 + 48))(v14 + v19, 1, v20))
    {
      (*(v21 + 8))(v14 + v19, v20);
    }

    v16 = v57;
  }

  v22 = v2 + v3[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v51 = *(*(ChallengeInfo - 8) + 48);
  if (!v51(v22, 1, ChallengeInfo))
  {
    v50 = v1;

    v24 = type metadata accessor for Game(0);
    v16(v22 + v24[18], v5);
    v25 = v24[19];
    if (!(*(v56 + 48))(v22 + v25, 1, v5))
    {
      v16(v22 + v25, v5);
    }

    v26 = v24[21];
    v27 = sub_24F920818();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v22 + v26, 1, v27))
    {
      (*(v28 + 8))(v22 + v26, v27);
    }

    v16 = v57;
    v1 = v50;
  }

  v29 = v2 + *(v1 + 24);

  v16(v29 + v3[6], v5);

  if (*(v29 + v3[9] + 8) != 1)
  {
  }

  v30 = v29 + v3[13];
  if (!v54(v30, 1, v8))
  {
    v31 = type metadata accessor for CallProviderConversationHandle(0);
    v32 = *(*(v31 - 8) + 48);
    if (!v32(v30, 1, v31))
    {

      v33 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v56 + 48))(v30 + v33, 1, v5))
      {
        v57(v30 + v33, v5);
      }
    }

    v34 = v30 + *(v8 + 20);
    v35 = v32(v34, 1, v31);
    v16 = v57;
    if (!v35)
    {

      v36 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v56 + 48))(v34 + v36, 1, v5))
      {
        v57(v34 + v36, v5);
      }
    }
  }

  if (*(v29 + v3[15] + 8))
  {
  }

  v37 = v29 + v3[16];
  if (!(v52)(v37, 1, v53))
  {

    v38 = type metadata accessor for Game(0);
    v16(v37 + v38[18], v5);
    v39 = v38[19];
    if (!(*(v56 + 48))(v37 + v39, 1, v5))
    {
      v16(v37 + v39, v5);
    }

    v40 = v38[21];
    v41 = sub_24F920818();
    v42 = *(v41 - 8);
    if (!(*(v42 + 48))(v37 + v40, 1, v41))
    {
      (*(v42 + 8))(v37 + v40, v41);
    }

    v16 = v57;
  }

  v43 = v29 + v3[17];
  if (!v51(v43, 1, ChallengeInfo))
  {

    v44 = type metadata accessor for Game(0);
    v16(v43 + v44[18], v5);
    v45 = v44[19];
    if (!(*(v56 + 48))(v43 + v45, 1, v5))
    {
      v16(v43 + v45, v5);
    }

    v46 = v44[21];
    v47 = sub_24F920818();
    v48 = *(v47 - 8);
    if (!(*(v48 + 48))(v43 + v46, 1, v47))
    {
      (*(v48 + 8))(v43 + v46, v47);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F78B56C(uint64_t a1)
{
  v4 = *(type metadata accessor for PlayNowPageView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F77E0AC(a1, v6, v7, v1 + v5);
}

uint64_t sub_24F78B65C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F78B6C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24F78B72C(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + *(type metadata accessor for ShelfLoader(0) + 20)) + 48);
  if (*(v3 + 16))
  {

    v4 = sub_24E76EC54(v1);
    if (v5)
    {
      v6 = *(*(v3 + 56) + 8 * v4);

      swift_getKeyPath();
      sub_24F78BEA0(&qword_27F24FDB8, type metadata accessor for ShelfObserver, &unk_24FA278B8);
      sub_24F91FD88();

      v7 = OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD13ShelfObserver__shelf;
      swift_beginAccess();
      sub_24F78B65C(v6 + v7, a1, type metadata accessor for GSKShelf);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_24F78B860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_24F92AA48();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FDA8, &qword_24FA27C80);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FE28, &unk_24FA27E50);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F78B9C4, 0, 0);
}

uint64_t sub_24F78B9C4()
{
  v1 = v0[5];
  v2 = *(v1 + *(type metadata accessor for ShelfLoader(0) + 20));
  swift_beginAccess();
  v3 = *(v2 + 32);

  LOBYTE(v1) = sub_24F4D5044(v1, v3);

  if ((v1 & 1) == 0)
  {
    v5 = v0[12];
    v4 = v0[13];
    v6 = v0[10];
    v17 = v0[11];
    v7 = v0[8];
    v8 = v0[9];
    v9 = v0[6];
    v10 = v0[7];
    v11 = v0[5];
    sub_24E60169C(v2 + OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_hydrationRequests, v6, &qword_27F24FDA8, &qword_24FA27C80);
    v12 = *(v8 + 48);
    (*(v10 + 16))(v7, v11, v9);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FDD8, &qword_24FA27D28);
    sub_24F92B8C8();
    (*(v5 + 8))(v4, v17);
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FDD0, &qword_24FA27D20);
    (*(*(v14 - 8) + 8))(v6, v14);
  }

  v15 = v0[1];

  return v15();
}

double sub_24F78BBC8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24F78B65C(v2, v5, type metadata accessor for ShelfLoader);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_24F78B6C4(v5, v11 + v10, type metadata accessor for ShelfLoader);
  sub_24F1D3DA4(0, 0, v8, &unk_24FA27E48, v11);

  return result;
}

uint64_t sub_24F78BD84()
{
  v0 = sub_24F9220D8();
  __swift_allocate_value_buffer(v0, qword_27F24FB70);
  __swift_project_value_buffer(v0, qword_27F24FB70);
  if (qword_27F211390 != -1)
  {
    swift_once();
  }

  return sub_24F9220C8();
}

uint64_t sub_24F78BE40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F78BEA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F78BF14(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t objectdestroy_104Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC68, &qword_24FA27968);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v21 = *(*(v1 - 1) + 64);
  v22 = sub_24F924098();
  v4 = *(v22 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_24F925218();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

  else
  {
  }

  v9 = v1[13];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_24F925218();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(v6 + v9, 1, v10))
    {
      (*(v11 + 8))(v6 + v9, v10);
    }
  }

  else
  {
  }

  sub_24E62A5EC(*(v6 + v1[14]), *(v6 + v1[14] + 8));
  sub_24E62A5EC(*(v6 + v1[15]), *(v6 + v1[15] + 8));
  v12 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_24F923E98();
    (*(*(v13 - 8) + 8))(v6 + v12, v13);
  }

  else
  {
  }

  v14 = v6 + v1[17];
  v15 = sub_24F91F648();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD0, &qword_24F95E150);

  __swift_destroy_boxed_opaque_existential_1((v6 + v1[19]));

  v16 = v1[24];
  v17 = sub_24F929158();
  (*(*(v17 - 8) + 8))(v6 + v16, v17);

  v18 = v6 + v1[29];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  (*(*(v19 - 8) + 8))(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ECD8, &qword_24FA27A70);

  (*(v4 + 8))(v0 + ((v3 + v21 + v5) & ~v5), v22);

  return swift_deallocObject();
}

uint64_t sub_24F78C4D4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC68, &qword_24FA27968) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_24F924098() - 8);
  return sub_24E831AA8(a1, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

unint64_t sub_24F78C5EC()
{
  result = qword_27F24FC88;
  if (!qword_27F24FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FC88);
  }

  return result;
}

uint64_t sub_24F78C644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X1>)
{
  v7 = *(type metadata accessor for ShelvesView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_24F7829BC(a1, v8, a2, a3);
}

uint64_t sub_24F78C6CC()
{

  return swift_deallocObject();
}

uint64_t sub_24F78C704(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FCE0, &unk_24FA27B08);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_24F78C76C()
{
  result = qword_27F24FCC8;
  if (!qword_27F24FCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24FCB8, &unk_24FA27AF8);
    sub_24F78BEA0(&qword_27F24FCD0, type metadata accessor for HydratingShelfView, &unk_24FA27DC0);
    sub_24E602068(&qword_27F229270, &qword_27F229248, &qword_24F984910, &unk_24FA2E9A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FCC8);
  }

  return result;
}

uint64_t objectdestroy_117Tm_0()
{
  v1 = (type metadata accessor for ShelvesView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[11];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FCA8, &qword_24FA27AE0);
  (*(*(v4 - 8) + 8))(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FCB0, &unk_24FA27AE8);

  v5 = *(type metadata accessor for ShelfHydrator(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58, &unk_24F9C4F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925168();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_24F78CA24(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ShelvesView(0) - 8);
  v7 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_24F783220(v6, a1, a2, v7);
}

unint64_t sub_24F78CAA4()
{
  result = qword_27F24FCD8;
  if (!qword_27F24FCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24FC98, &unk_24FA27AB0);
    sub_24F78C76C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FCD8);
  }

  return result;
}

uint64_t sub_24F78CB48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FCF0, &qword_24FA27B28);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F78CBE8()
{
  result = qword_27F24FD30;
  if (!qword_27F24FD30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24FD18, &qword_24FA27B58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F238CD0, &unk_24FA27B70);
    sub_24E602068(&qword_27F238CD8, &qword_27F238CD0, &unk_24FA27B70, MEMORY[0x277D7EAF0]);
    swift_getOpaqueTypeConformance2();
    sub_24E602068(&qword_27F224B60, &qword_27F224B68, &qword_24F973590, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FD30);
  }

  return result;
}

unint64_t sub_24F78CD10()
{
  result = qword_27F24FD50;
  if (!qword_27F24FD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24FD48, &qword_24FA27B88);
    sub_24F6AC1C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FD50);
  }

  return result;
}

uint64_t sub_24F78CD98()
{
  v2 = *(type metadata accessor for PlayNowFeedView(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24E614970;

  return sub_24F780884(v4, v5, v0 + v3);
}

uint64_t objectdestroy_126Tm()
{
  v34 = type metadata accessor for PlayNowFeedView(0);
  v1 = *(*(v34 - 8) + 80);
  v2 = v0 + ((v1 + 16) & ~v1);

  v3 = type metadata accessor for Player(0);
  v4 = v3[6];
  v5 = sub_24F9289E8();
  v35 = *(v5 - 8);
  v33 = *(v35 + 8);
  v33(v2 + v4, v5);

  if (*(v2 + v3[9] + 8) != 1)
  {
  }

  v6 = v2 + v3[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle(0);
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v35 + 48))(v6 + v10, 1, v5))
      {
        v33(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v35 + 48))(v11 + v12, 1, v5))
      {
        v33(v11 + v12, v5);
      }
    }
  }

  if (*(v2 + v3[15] + 8))
  {
  }

  v13 = v2 + v3[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game(0);
    v33(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v35 + 48))(v13 + v16, 1, v5))
    {
      v33(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v2 + v3[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game(0);
    v33(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v35 + 48))(v20 + v23, 1, v5))
    {
      v33(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  v27 = v2 + *(v34 + 32);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC40, &unk_24FA277C0);
  (*(*(v28 - 8) + 8))(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC18, &qword_24FA277A0);

  v29 = v2 + *(v34 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8, &qword_24F984960);
  LODWORD(v27) = swift_getEnumCaseMultiPayload();

  if (v27 == 1)
  {

    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50, &unk_24FA10C90) + 32);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
    (*(*(v31 - 8) + 8))(v29 + v30, v31);
  }

  return swift_deallocObject();
}

uint64_t sub_24F78D600(uint64_t a1)
{
  v3 = *(type metadata accessor for PlayNowFeedView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F7822E4(a1, v4);
}

uint64_t objectdestroy_134Tm_0()
{
  v34 = type metadata accessor for PlayNowFeedView(0);
  v1 = *(*(v34 - 8) + 80);
  swift_unknownObjectRelease();
  v2 = v0 + ((v1 + 32) & ~v1);

  v3 = type metadata accessor for Player(0);
  v4 = v3[6];
  v5 = sub_24F9289E8();
  v35 = *(v5 - 8);
  v33 = *(v35 + 8);
  v33(v2 + v4, v5);

  if (*(v2 + v3[9] + 8) != 1)
  {
  }

  v6 = v2 + v3[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle(0);
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v35 + 48))(v6 + v10, 1, v5))
      {
        v33(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v35 + 48))(v11 + v12, 1, v5))
      {
        v33(v11 + v12, v5);
      }
    }
  }

  if (*(v2 + v3[15] + 8))
  {
  }

  v13 = v2 + v3[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game(0);
    v33(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v35 + 48))(v13 + v16, 1, v5))
    {
      v33(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v2 + v3[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game(0);
    v33(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v35 + 48))(v20 + v23, 1, v5))
    {
      v33(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  v27 = v2 + *(v34 + 32);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC40, &unk_24FA277C0);
  (*(*(v28 - 8) + 8))(v27, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FC18, &qword_24FA277A0);

  v29 = v2 + *(v34 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EDD8, &qword_24F984960);
  LODWORD(v27) = swift_getEnumCaseMultiPayload();

  if (v27 == 1)
  {

    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F50, &unk_24FA10C90) + 32);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
    (*(*(v31 - 8) + 8))(v29 + v30, v31);
  }

  return swift_deallocObject();
}

uint64_t sub_24F78DE04(uint64_t a1)
{
  v4 = *(type metadata accessor for PlayNowFeedView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F780B34(a1, v6, v7, v1 + v5);
}

uint64_t sub_24F78DF40()
{

  return swift_deallocObject();
}

uint64_t sub_24F78DF88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD90, &unk_24FA27C30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_24F78DFF8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FDA0, &qword_24FA27C78);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - v10;
  v12 = MEMORY[0x277D84FA0];
  *(v2 + 3) = MEMORY[0x277D84FA0];
  *(v2 + 4) = v12;
  v13 = MEMORY[0x277D84F90];
  *(v2 + 5) = MEMORY[0x277D84F90];
  *(v2 + 6) = sub_24E612708(v13);
  *(v2 + 7) = sub_24E6128F0(v13);
  v14 = OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_finishLaunchTest;
  v15 = sub_24F925168();
  (*(*(v15 - 8) + 56))(&v2[v14], 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FDA8, &qword_24FA27C80);
  sub_24F92AA48();
  (*(v9 + 104))(v11, *MEMORY[0x277D85778], v8);
  sub_24F92B868();
  (*(v9 + 8))(v11, v8);
  v2[OBJC_IVAR____TtC12GameStoreKitP33_585537ACF351138A22BC63321AE563FD8Hydrator_initialBatchComplete] = 0;
  *(v2 + 2) = a2;

  sub_24F7834D8(a1);

  v16 = sub_24F92B858();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;

  sub_24EA998B8(0, 0, v7, &unk_24FA27C90, v17);

  return v2;
}

uint64_t sub_24F78E2CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F78E30C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24E6541E4;

  return sub_24F783448();
}

uint64_t sub_24F78E3E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKShelf(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F78E448()
{
  result = qword_27F24FDC0;
  if (!qword_27F24FDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FDC0);
  }

  return result;
}

uint64_t sub_24F78E49C()
{

  return swift_deallocObject();
}

uint64_t sub_24F78E4D4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F78E51C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F785410(a1, v4, v5, v7, v6);
}

uint64_t sub_24F78E5DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F78E658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92AA48();
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

uint64_t sub_24F78E728(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F92AA48();
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

uint64_t sub_24F78E7E0(uint64_t a1)
{
  result = sub_24F92AA48();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Hydrator(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F78E878(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 249)
  {
    v4 = *a1;
    if (v4 >= 7)
    {
      return v4 - 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for ShelfLoader(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 24)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_24F78E930(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 249)
  {
    *result = a2 + 6;
  }

  else
  {
    v7 = type metadata accessor for ShelfLoader(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 24)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F78E9D0(uint64_t a1)
{
  result = type metadata accessor for ShelfLoader(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F78EA54()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24FE00, qword_24FA27D78);
  sub_24F78EAB8();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F78EAB8()
{
  result = qword_27F24FE08;
  if (!qword_27F24FE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24FE00, qword_24FA27D78);
    sub_24E602068(&qword_27F24FE10, &qword_27F211B18, &unk_24F935610, MEMORY[0x277CDDB40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F24FE08);
  }

  return result;
}

uint64_t sub_24F78EB70()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F24FC98, &unk_24FA27AB0);
  sub_24F78CAA4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F78EC50()
{
  v1 = *(type metadata accessor for ShelfLoader(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_24F92AA48();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_24F78ED40(uint64_t a1)
{
  v4 = *(type metadata accessor for ShelfLoader(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F78B860(a1, v6, v7, v1 + v5);
}

uint64_t ChallengesHubDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = swift_task_alloc();
  *(v3 + 64) = v9;
  *v9 = v3;
  v9[1] = sub_24F78EF84;

  return sub_24F78F3E8(v3 + 16, v5, v6, v7, v8, a3);
}

uint64_t sub_24F78EF84()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_24F78F250;
  }

  else
  {
    v2 = sub_24F78F098;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F78F098()
{
  v11 = *(v0 + 16);
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E778);

  v5 = sub_24F9220B8();
  v6 = sub_24F92BD98();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = *(v1 + 16);
    *(v7 + 12) = 2048;
    *(v7 + 14) = *(v2 + 16);

    _os_log_impl(&dword_24E5DD000, v5, v6, "ChallengesHubDataIntentImplementation fetched hub data with %ld challenges and %ld invites", v7, 0x16u);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 56);
  *v8 = v11;
  *(v8 + 16) = v1;
  *(v8 + 24) = v2;
  *(v8 + 32) = v3;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_24F78F250()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesHubDataIntentImplementation hub data fetch failed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F78F3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[22] = a3;
  v6[23] = a4;
  v6[20] = a1;
  v6[21] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FE38, &qword_24FA27EE8);
  v6[26] = swift_task_alloc();
  v7 = type metadata accessor for CompletedChallengeSummary(0);
  v6[27] = v7;
  v6[28] = *(v7 - 8);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FE40, &unk_24FA27EF0);
  v6[31] = swift_task_alloc();
  v8 = type metadata accessor for ChallengeInvite(0);
  v6[32] = v8;
  v6[33] = *(v8 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DDF8, &qword_24F95B110);
  v6[36] = swift_task_alloc();
  v9 = type metadata accessor for Challenge(0);
  v6[37] = v9;
  v6[38] = *(v9 - 8);
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F78F634, 0, 0);
}

uint64_t sub_24F78F634()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = swift_task_alloc();
  v0[41] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[42] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8, 0x277D0C170);
  *v4 = v0;
  v4[1] = sub_24F78F740;

  return MEMORY[0x2822008A0](v0 + 18, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24F78F740()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24F78FA4C;
  }

  else
  {

    v2 = sub_24F78F85C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F78F85C()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = [v2 internal];
  v0[44] = v3;

  v4 = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];
  v0[45] = v4;
  v5 = [objc_opt_self() proxyForPlayer_];
  v6 = [v5 challengeServicePrivate];
  v0[46] = v6;

  v7 = sub_24F92B098();
  v0[47] = v7;
  if (v1)
  {
    v8 = sub_24F92B098();
  }

  else
  {
    v8 = 0;
  }

  v0[48] = v8;
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_24F78FB2C;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FE48, &qword_24FA27F00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_24E787F20;
  v0[13] = &block_descriptor_176;
  v0[14] = v9;
  [v6 getLeaderboardChallengeSummaryForPlayerID:v7 bundleID:v8 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_24F78FA4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F78FB2C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_24F790AB4;
  }

  else
  {
    v2 = sub_24F78FC3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F78FC3C()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[19];
  v0[50] = v3;
  swift_unknownObjectRelease();

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[51] = v4;
    *v4 = v0;
    v4[1] = sub_24F78FDE0;
    v5 = v0[25];

    return sub_24F790D8C(v3, v5);
  }

  else
  {
    v8 = v0[44];
    v7 = v0[45];
    sub_24F79667C();
    swift_allocError();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_24F78FDE0(uint64_t a1)
{
  v3 = *v2;
  v3[52] = a1;
  v3[53] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24F790BB4, 0, 0);
  }

  else
  {
    v4 = v3[50];
    v5 = swift_task_alloc();
    v3[54] = v5;
    *v5 = v3;
    v5[1] = sub_24F78FF54;
    v6 = v3[25];

    return sub_24F791300(v4, v6);
  }
}

uint64_t sub_24F78FF54(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[55] = a1;
  v4[56] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24F790CA0, 0, 0);
  }

  else
  {
    v6 = v4[50];
    v7 = swift_task_alloc();
    v4[57] = v7;
    *v7 = v5;
    v7[1] = sub_24F7900E8;
    v8 = v4[25];

    return sub_24F791E74(v6, a1, v8);
  }
}

uint64_t sub_24F7900E8(uint64_t a1)
{
  *(*v1 + 464) = a1;

  return MEMORY[0x2822009F8](sub_24F7901E8, 0, 0);
}

uint64_t sub_24F7901E8()
{
  v74 = v0;
  v1 = *(v0 + 400);
  v2 = [v1 completedCount];
  v67 = [v2 integerValue];

  v3 = [v1 winCount];
  v66 = [v3 integerValue];

  v4 = [v1 activeChallenges];
  v5 = [v4 actives];

  sub_24E69A5C4(0, &qword_27F24FE58, 0x277D0C0A8);
  v6 = sub_24F92B5A8();

  if (v6 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v8 = 0;
    v70 = *(v0 + 304);
    v72 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x253052270](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = *(v0 + 464);
      v13 = *(v0 + 440);
      v14 = *(v0 + 416);
      v15 = *(v0 + 288);
      v16 = *(v0 + 296);
      v73[0] = v9;
      sub_24F792FEC(v73, v13, v14, v12, v15);

      if ((*(v70 + 48))(v15, 1, v16) == 1)
      {
        sub_24E601704(*(v0 + 288), &qword_27F21DDF8, &qword_24F95B110);
      }

      else
      {
        v18 = *(v0 + 312);
        v17 = *(v0 + 320);
        sub_24F7966D0(*(v0 + 288), v17, type metadata accessor for Challenge);
        sub_24F7966D0(v17, v18, type metadata accessor for Challenge);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_24E6177DC(0, v72[2] + 1, 1, v72);
        }

        v20 = v72[2];
        v19 = v72[3];
        if (v20 >= v19 >> 1)
        {
          v72 = sub_24E6177DC((v19 > 1), v20 + 1, 1, v72);
        }

        v21 = *(v0 + 312);
        v72[2] = v20 + 1;
        sub_24F7966D0(v21, v72 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v20, type metadata accessor for Challenge);
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v72 = MEMORY[0x277D84F90];
LABEL_21:
  v22 = *(v0 + 400);

  v23 = [v22 invitedPlayers];
  v24 = [v23 invites];

  sub_24E69A5C4(0, &qword_27F24FE60, 0x277D0C0D8);
  v25 = sub_24F92B5A8();

  if (v25 >> 62)
  {
    goto LABEL_39;
  }

  for (j = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_24F92C738())
  {
    v27 = 0;
    v69 = *(v0 + 264);
    v71 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x253052270](v27, v25);
      }

      else
      {
        if (v27 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v31 = *(v0 + 464);
      v32 = *(v0 + 440);
      v33 = *(v0 + 416);
      v34 = *(v0 + 248);
      v35 = *(v0 + 256);
      v73[0] = v28;
      sub_24F7941CC(v73, v33, v32, v31, v34);

      if ((*(v69 + 48))(v34, 1, v35) == 1)
      {
        sub_24E601704(*(v0 + 248), &qword_27F24FE40, &unk_24FA27EF0);
      }

      else
      {
        v36 = *(v0 + 272);
        v37 = *(v0 + 280);
        sub_24F7966D0(*(v0 + 248), v37, type metadata accessor for ChallengeInvite);
        sub_24F7966D0(v37, v36, type metadata accessor for ChallengeInvite);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_24E61A494(0, v71[2] + 1, 1, v71);
        }

        v39 = v71[2];
        v38 = v71[3];
        if (v39 >= v38 >> 1)
        {
          v71 = sub_24E61A494((v38 > 1), v39 + 1, 1, v71);
        }

        v40 = *(v0 + 272);
        v71[2] = v39 + 1;
        sub_24F7966D0(v40, v71 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v39, type metadata accessor for ChallengeInvite);
      }

      ++v27;
      if (v30 == j)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v71 = MEMORY[0x277D84F90];
LABEL_41:
  v41 = *(v0 + 400);

  v42 = [v41 completedChallenges];
  v43 = [v42 details];

  sub_24E69A5C4(0, &qword_27F21DE20, 0x277D0C0C0);
  v44 = sub_24F92B5A8();

  if (v44 >> 62)
  {
    goto LABEL_59;
  }

  for (k = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10); k; k = sub_24F92C738())
  {
    v46 = 0;
    v68 = *(v0 + 224);
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x253052270](v46, v44);
      }

      else
      {
        if (v46 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v48 = *(v44 + 8 * v46 + 32);
      }

      v49 = v48;
      v50 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      v51 = *(v0 + 464);
      v52 = *(v0 + 440);
      v53 = *(v0 + 416);
      v55 = *(v0 + 208);
      v54 = *(v0 + 216);
      v73[0] = v48;
      sub_24F794D7C(v73, v52, v53, v51, v55);

      if ((*(v68 + 48))(v55, 1, v54) == 1)
      {
        sub_24E601704(*(v0 + 208), &qword_27F24FE38, &qword_24FA27EE8);
      }

      else
      {
        v56 = *(v0 + 232);
        v57 = *(v0 + 240);
        sub_24F7966D0(*(v0 + 208), v57, type metadata accessor for CompletedChallengeSummary);
        sub_24F7966D0(v57, v56, type metadata accessor for CompletedChallengeSummary);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_24E61AC74(0, v47[2] + 1, 1, v47);
        }

        v59 = v47[2];
        v58 = v47[3];
        if (v59 >= v58 >> 1)
        {
          v47 = sub_24E61AC74((v58 > 1), v59 + 1, 1, v47);
        }

        v60 = *(v0 + 232);
        v47[2] = v59 + 1;
        sub_24F7966D0(v60, v47 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v59, type metadata accessor for CompletedChallengeSummary);
      }

      ++v46;
      if (v50 == k)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    ;
  }

  v47 = MEMORY[0x277D84F90];
LABEL_61:
  v61 = *(v0 + 400);
  v62 = *(v0 + 352);
  v63 = *(v0 + 160);

  *v63 = v67;
  v63[1] = v66;
  v63[2] = v72;
  v63[3] = v71;
  v63[4] = v47;

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_24F790AB4(uint64_t a1)
{
  v2 = v1[48];
  v3 = v1[47];
  v5 = v1[44];
  v4 = v1[45];
  swift_willThrow();

  swift_unknownObjectRelease();

  v6 = v1[1];

  return v6();
}

uint64_t sub_24F790BB4()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F790CA0()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 360);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F790D8C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24F790DAC, 0, 0);
}

char *sub_24F790DAC()
{
  v38 = v0;
  v1 = [*(v0 + 16) activeChallenges];
  v2 = sub_24F795E70();

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_24EAE678C(*(v2 + 16), 0);
    v5 = sub_24EAE7C84(&v37, v4 + 4, v3, v2);
    sub_24E6586B4(v37);
    if (v5 == v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = [*(v0 + 16) invitedPlayers];
  v7 = [v6 invites];

  sub_24E69A5C4(0, &qword_27F24FE60, 0x277D0C0D8);
  v8 = sub_24F92B5A8();

  if (v8 >> 62)
  {
    v9 = sub_24F92C738();
    if (v9)
    {
      goto LABEL_7;
    }

LABEL_17:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_17;
  }

LABEL_7:
  v37 = MEMORY[0x277D84F90];
  result = sub_24F4578E0(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v35 = v4;
  v36 = v0;
  v11 = 0;
  v12 = v37;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x253052270](v11, v8);
    }

    else
    {
      v13 = *(v8 + 8 * v11 + 32);
    }

    v14 = v13;
    v15 = [v13 fromPlayerID];
    v16 = sub_24F92B0D8();
    v18 = v17;

    v37 = v12;
    v20 = *(v12 + 16);
    v19 = *(v12 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_24F4578E0((v19 > 1), v20 + 1, 1);
      v12 = v37;
    }

    ++v11;
    *(v12 + 16) = v20 + 1;
    v21 = v12 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
  }

  while (v9 != v11);

  v4 = v35;
  v0 = v36;
LABEL_18:
  v22 = *(v0 + 16);
  v37 = v4;
  sub_24EA0A4AC(v12);
  v23 = v37;
  v24 = [v22 completedChallenges];
  v25 = sub_24F796208();

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = sub_24EAE678C(*(v25 + 16), 0);
    v28 = sub_24EAE7C84(&v37, v27 + 4, v26, v25);
    sub_24E6586B4(v37);
    if (v28 == v26)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  v27 = MEMORY[0x277D84F90];
LABEL_22:
  v37 = v23;
  sub_24EA0A4AC(v27);
  v29 = sub_24F45D828(v37);

  v30 = *(v29 + 16);
  if (!v30)
  {
LABEL_25:

    v31 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v31 = sub_24EAE678C(*(v29 + 16), 0);
  v32 = sub_24EAE7C84(&v37, v31 + 4, v30, v29);
  sub_24E6586B4(v37);
  if (v32 != v30)
  {
    __break(1u);
    goto LABEL_25;
  }

LABEL_26:
  *(v0 + 32) = v31;
  v33 = swift_task_alloc();
  *(v0 + 40) = v33;
  *v33 = v0;
  v33[1] = sub_24F7911A8;
  v34 = *(v0 + 24);

  return sub_24E6473DC(v31, 0, v34);
}

uint64_t sub_24F7911A8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24F796868, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_24F791300(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24F791320, 0, 0);
}

char *sub_24F791320()
{
  v89 = v0;
  v2 = [*(v0 + 16) activeChallenges];
  v3 = [v2 actives];

  sub_24E69A5C4(0, &qword_27F24FE58, 0x277D0C0A8);
  v4 = sub_24F92B5A8();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = &selRef_buttonShapesDidChange;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_22:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v5 = sub_24F92C738();
  v6 = &selRef_buttonShapesDidChange;
  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D837D0];
  do
  {
    v1 = v7;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x253052270](v1, v4);
      }

      else
      {
        if (v1 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v10 = *(v4 + 8 * v1 + 32);
      }

      v11 = v10;
      v7 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = [v10 v6[52]];
      if (v12)
      {
        break;
      }

      ++v1;
      if (v7 == v5)
      {
        goto LABEL_23;
      }
    }

    v13 = v12;
    v86 = sub_24F92B5A8();

    v1 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_24E61AC2C(0, v8[2] + 1, 1, v8);
    }

    v15 = v8[2];
    v14 = v8[3];
    v6 = &selRef_buttonShapesDidChange;
    if (v15 >= v14 >> 1)
    {
      v8 = sub_24E61AC2C((v14 > 1), v15 + 1, 1, v8);
    }

    v8[2] = v15 + 1;
    v8[v15 + 4] = v86;
    v9 = v1;
  }

  while (v7 != v5);
LABEL_23:

  v16 = v8[2];
  if (v16)
  {
    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    v19 = MEMORY[0x277D837D0];
    while (1)
    {
      if (v17 >= v8[2])
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v1 = v8[v17 + 4];
      v20 = *(v1 + 16);
      v21 = *(v18 + 2);
      v22 = v21 + v20;
      if (__OFADD__(v21, v20))
      {
        goto LABEL_61;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v22 <= *(v18 + 3) >> 1)
      {
        if (!*(v1 + 16))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v21 <= v22)
        {
          v24 = v21 + v20;
        }

        else
        {
          v24 = v21;
        }

        v18 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v24, 1, v18);
        if (!*(v1 + 16))
        {
LABEL_25:

          if (v20)
          {
            goto LABEL_62;
          }

          goto LABEL_26;
        }
      }

      if ((*(v18 + 3) >> 1) - *(v18 + 2) < v20)
      {
        goto LABEL_65;
      }

      swift_arrayInitWithCopy();

      if (v20)
      {
        v25 = *(v18 + 2);
        v26 = __OFADD__(v25, v20);
        v27 = v25 + v20;
        if (v26)
        {
          goto LABEL_66;
        }

        *(v18 + 2) = v27;
      }

LABEL_26:
      if (v16 == ++v17)
      {
        goto LABEL_42;
      }
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_42:
  v28 = v87[2];

  v29 = [v28 invitedPlayers];
  v30 = [v29 invites];

  sub_24E69A5C4(0, &qword_27F24FE60, 0x277D0C0D8);
  v19 = sub_24F92B5A8();

  v1 = v19 & 0xFFFFFFFFFFFFFF8;
  if (v19 >> 62)
  {
    goto LABEL_67;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v32 = 0;
    v33 = MEMORY[0x277D84F90];
LABEL_45:
    v34 = v32;
    while (1)
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x253052270](v34, v19);
      }

      else
      {
        if (v34 >= *(v1 + 16))
        {
          goto LABEL_64;
        }

        v35 = *(v19 + 8 * v34 + 32);
      }

      v36 = v35;
      v32 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      v37 = [v35 bundleIDs];
      if (v37)
      {
        v38 = v37;
        v39 = sub_24F92B5A8();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_24E61AC2C(0, *(v33 + 16) + 1, 1, v33);
        }

        v41 = *(v33 + 16);
        v40 = *(v33 + 24);
        if (v41 >= v40 >> 1)
        {
          v33 = sub_24E61AC2C((v40 > 1), v41 + 1, 1, v33);
        }

        *(v33 + 16) = v41 + 1;
        *(v33 + 8 * v41 + 32) = v39;
        if (v32 != i)
        {
          goto LABEL_45;
        }

        goto LABEL_69;
      }

      ++v34;
      if (v32 == i)
      {
        goto LABEL_69;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    ;
  }

  v33 = MEMORY[0x277D84F90];
LABEL_69:

  v42 = *(v33 + 16);
  if (v42)
  {
    v43 = 0;
    v44 = v33 + 32;
    v45 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v43 >= *(v33 + 16))
      {
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v46 = *(v44 + 8 * v43);
      v47 = *(v46 + 16);
      v48 = *(v45 + 2);
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_107;
      }

      v50 = swift_isUniquelyReferenced_nonNull_native();
      if (v50 && v49 <= *(v45 + 3) >> 1)
      {
        if (!*(v46 + 16))
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v51 = v48 + v47;
        }

        else
        {
          v51 = v48;
        }

        v45 = sub_24E615CF4(v50, v51, 1, v45);
        if (!*(v46 + 16))
        {
LABEL_71:

          if (v47)
          {
            goto LABEL_108;
          }

          goto LABEL_72;
        }
      }

      if ((*(v45 + 3) >> 1) - *(v45 + 2) < v47)
      {
        goto LABEL_111;
      }

      swift_arrayInitWithCopy();

      if (v47)
      {
        v52 = *(v45 + 2);
        v26 = __OFADD__(v52, v47);
        v53 = v52 + v47;
        if (v26)
        {
          goto LABEL_112;
        }

        *(v45 + 2) = v53;
      }

LABEL_72:
      if (v42 == ++v43)
      {
        goto LABEL_88;
      }
    }
  }

  v45 = MEMORY[0x277D84F90];
LABEL_88:
  v54 = v87[2];

  v88 = v18;
  sub_24EA0A4AC(v45);
  v86 = v18;
  v55 = [v54 completedChallenges];
  v56 = [v55 details];

  sub_24E69A5C4(0, &qword_27F21DE20, 0x277D0C0C0);
  v33 = sub_24F92B5A8();

  v44 = v33 & 0xFFFFFFFFFFFFFF8;
  if (v33 >> 62)
  {
    goto LABEL_113;
  }

  v57 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (j = &selRef_buttonShapesDidChange; v57; j = &selRef_buttonShapesDidChange)
  {
    v59 = 0;
    v60 = MEMORY[0x277D84F90];
LABEL_91:
    v61 = v59;
    while (1)
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x253052270](v61, v33);
      }

      else
      {
        if (v61 >= *(v44 + 16))
        {
          goto LABEL_110;
        }

        v62 = *(v33 + 8 * v61 + 32);
      }

      v63 = v62;
      v59 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      v64 = [v62 j[52]];
      if (v64)
      {
        v65 = v64;
        v66 = sub_24F92B5A8();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_24E61AC2C(0, v60[2] + 1, 1, v60);
        }

        v68 = v60[2];
        v67 = v60[3];
        if (v68 >= v67 >> 1)
        {
          v60 = sub_24E61AC2C((v67 > 1), v68 + 1, 1, v60);
        }

        v60[2] = v68 + 1;
        v60[v68 + 4] = v66;
        j = &selRef_buttonShapesDidChange;
        if (v59 != v57)
        {
          goto LABEL_91;
        }

        goto LABEL_115;
      }

      ++v61;
      if (v59 == v57)
      {
        goto LABEL_115;
      }
    }

LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    v57 = sub_24F92C738();
  }

  v60 = MEMORY[0x277D84F90];
LABEL_115:

  v70 = v60[2];
  if (!v70)
  {
LABEL_134:
    v72 = MEMORY[0x277D84F90];
LABEL_135:

    v88 = v86;
    sub_24EA0A4AC(v72);
    v80 = sub_24F45D828(v86);

    v81 = *(v80 + 16);
    if (v81)
    {
      v82 = sub_24EAE678C(*(v80 + 16), 0);
      v83 = sub_24EAE7C84(&v88, v82 + 4, v81, v80);
      sub_24E6586B4(v88);
      if (v83 == v81)
      {
LABEL_139:
        v87[4] = v82;
        v84 = swift_task_alloc();
        v87[5] = v84;
        *v84 = v87;
        v84[1] = sub_24F791D1C;
        v85 = v87[3];

        return sub_24E64768C(v82, 0, v85);
      }

      __break(1u);
    }

    v82 = MEMORY[0x277D84F90];
    goto LABEL_139;
  }

  v71 = 0;
  v72 = MEMORY[0x277D84F90];
  while (v71 < v60[2])
  {
    v73 = v60[v71 + 4];
    v74 = *(v73 + 16);
    v75 = *(v72 + 2);
    v76 = v75 + v74;
    if (__OFADD__(v75, v74))
    {
      goto LABEL_143;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v76 <= *(v72 + 3) >> 1)
    {
      if (!*(v73 + 16))
      {
        goto LABEL_132;
      }
    }

    else
    {
      if (v75 <= v76)
      {
        v79 = v75 + v74;
      }

      else
      {
        v79 = v75;
      }

      result = sub_24E615CF4(result, v79, 1, v72);
      v72 = result;
      if (!*(v73 + 16))
      {
LABEL_132:

        if (v74)
        {
          __break(1u);
          goto LABEL_134;
        }

        goto LABEL_117;
      }
    }

    if ((*(v72 + 3) >> 1) - *(v72 + 2) < v74)
    {
      goto LABEL_144;
    }

    swift_arrayInitWithCopy();

    if (v74)
    {
      v77 = *(v72 + 2);
      v26 = __OFADD__(v77, v74);
      v78 = v77 + v74;
      if (v26)
      {
        goto LABEL_145;
      }

      *(v72 + 2) = v78;
    }

LABEL_117:
    if (v70 == ++v71)
    {
      goto LABEL_135;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

uint64_t sub_24F791D1C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_24EB7F064, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_24F791E74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FE68, &qword_24FA27F28);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F792020, 0, 0);
}

uint64_t sub_24F792020()
{
  v1 = [*(v0 + 16) activeChallenges];
  v2 = [v1 actives];

  sub_24E69A5C4(0, &qword_27F24FE58, 0x277D0C0A8);
  v3 = sub_24F92B5A8();

  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v5 = 0;
    v98 = *(v0 + 96);
    v110 = v3 & 0xFFFFFFFFFFFFFF8;
    v113 = v3 & 0xC000000000000001;
    v101 = (v98 + 32);
    v116 = MEMORY[0x277D84F90];
    v104 = i;
    v107 = v3;
    while (1)
    {
      if (v113)
      {
        v8 = MEMORY[0x253052270](v5, v3);
      }

      else
      {
        if (v5 >= *(v110 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(v3 + 8 * v5 + 32);
      }

      v9 = v8;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v8 bundleIDs];
      if (v10)
      {
        v11 = *(v0 + 56);
        v12 = *(v0 + 24);
        v13 = v10;
        v14 = sub_24F92B5A8();

        sub_24F793E3C(v14, v12, v11);

        v15 = type metadata accessor for Game(0);
        v16 = (*(*(v15 - 8) + 48))(v11, 1, v15);
        v17 = *(v0 + 56);
        if (v16 != 1)
        {

          sub_24F796738(v17, type metadata accessor for Game);
          goto LABEL_16;
        }

        sub_24E601704(*(v0 + 56), &qword_27F216FE0, &unk_24F959350);
        v18 = [v9 bundleID];
      }

      else
      {
        v18 = [v9 bundleID];
      }

      v19 = v18;
      sub_24F92B0D8();

LABEL_16:
      v21 = *(v0 + 80);
      v20 = *(v0 + 88);
      v22 = [v9 challengeVendorID];
      sub_24F92B0D8();

      sub_24F920F98();
      (*(v98 + 56))(v21, 0, 1, v20);

      if ((*(v98 + 48))(v21, 1, v20) == 1)
      {
        sub_24E601704(*(v0 + 80), &qword_27F24FE68, &qword_24FA27F28);
        v6 = v104;
        v3 = v107;
        v7 = v5 + 1;
      }

      else
      {
        v23 = *(v0 + 136);
        v24 = *(v0 + 144);
        v25 = *(v0 + 88);
        v26 = *v101;
        (*v101)(v24, *(v0 + 80), v25);
        v26(v23, v24, v25);
        v7 = v5 + 1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_24E61AC50(0, v116[2] + 1, 1, v116);
        }

        v28 = v116[2];
        v27 = v116[3];
        v6 = v104;
        v3 = v107;
        if (v28 >= v27 >> 1)
        {
          v116 = sub_24E61AC50((v27 > 1), v28 + 1, 1, v116);
        }

        v29 = *(v0 + 136);
        v30 = *(v0 + 88);
        v116[2] = v28 + 1;
        v26(v116 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v28, v29, v30);
      }

      ++v5;
      if (v7 == v6)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  v116 = MEMORY[0x277D84F90];
LABEL_27:
  v31 = *(v0 + 16);

  v32 = [v31 invitedPlayers];
  v33 = [v32 invites];

  sub_24E69A5C4(0, &qword_27F24FE60, 0x277D0C0D8);
  v34 = sub_24F92B5A8();

  if (v34 >> 62)
  {
    goto LABEL_51;
  }

  v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v35)
  {
LABEL_29:
    v36 = 0;
    v95 = *(v0 + 48);
    v97 = *(v0 + 96);
    v108 = v34 & 0xFFFFFFFFFFFFFF8;
    v111 = v34 & 0xC000000000000001;
    v99 = (v97 + 32);
    v114 = MEMORY[0x277D84F90];
    v105 = v34;
    v102 = v35;
    while (1)
    {
      if (v111)
      {
        v39 = MEMORY[0x253052270](v36, v34);
      }

      else
      {
        if (v36 >= *(v108 + 16))
        {
          goto LABEL_50;
        }

        v39 = *(v34 + 8 * v36 + 32);
      }

      v40 = v39;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v35 = sub_24F92C738();
        if (!v35)
        {
          break;
        }

        goto LABEL_29;
      }

      v41 = [v39 bundleIDs];
      if (v41)
      {
        v42 = *(v0 + 48);
        v43 = *(v0 + 24);
        v44 = v41;
        v45 = sub_24F92B5A8();

        sub_24F793E3C(v45, v43, v42);

        v46 = type metadata accessor for Game(0);
        v47 = (*(*(v46 - 8) + 48))(v42, 1, v46);
        v48 = *(v0 + 48);
        if (v47 != 1)
        {

          sub_24F796738(v48, type metadata accessor for Game);
          goto LABEL_42;
        }

        sub_24E601704(*(v0 + 48), &qword_27F216FE0, &unk_24F959350);
        v49 = [v40 bundleID];
      }

      else
      {
        v49 = [v40 bundleID];
      }

      v50 = v49;
      sub_24F92B0D8();

LABEL_42:
      v51 = *(v0 + 88);
      v52 = *(v0 + 72);
      v53 = [v40 challengeVendorID];
      sub_24F92B0D8();

      sub_24F920F98();
      (*(v97 + 56))(v52, 0, 1, v51);

      if ((*(v97 + 48))(v52, 1, v51) == 1)
      {
        sub_24E601704(*(v0 + 72), &qword_27F24FE68, &qword_24FA27F28);
        v37 = v102;
        v38 = v36 + 1;
      }

      else
      {
        v54 = *(v0 + 120);
        v55 = *(v0 + 128);
        v56 = *(v0 + 88);
        v57 = *v99;
        (*v99)(v55, *(v0 + 72), v56);
        v57(v54, v55, v56);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = sub_24E61AC50(0, v114[2] + 1, 1, v114);
        }

        v59 = v114[2];
        v58 = v114[3];
        v37 = v102;
        v38 = v36 + 1;
        if (v59 >= v58 >> 1)
        {
          v114 = sub_24E61AC50((v58 > 1), v59 + 1, 1, v114);
        }

        v60 = *(v0 + 120);
        v61 = *(v0 + 88);
        v114[2] = v59 + 1;
        v57(v114 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v59, v60, v61);
      }

      ++v36;
      v34 = v105;
      if (v38 == v37)
      {
        goto LABEL_53;
      }
    }
  }

  v114 = MEMORY[0x277D84F90];
LABEL_53:
  v62 = *(v0 + 16);

  sub_24EA0CCB4(v114);
  v96 = v116;
  v63 = [v62 completedChallenges];
  v64 = [v63 details];

  sub_24E69A5C4(0, &qword_27F21DE20, 0x277D0C0C0);
  v65 = sub_24F92B5A8();

  if (v65 >> 62)
  {
    goto LABEL_77;
  }

  v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v66)
  {
LABEL_55:
    v67 = 0;
    v100 = *(v0 + 96);
    v112 = v65 & 0xFFFFFFFFFFFFFF8;
    v115 = v65 & 0xC000000000000001;
    v103 = (v100 + 32);
    v117 = MEMORY[0x277D84F90];
    v106 = v66;
    v109 = v65;
    while (1)
    {
      if (v115)
      {
        v69 = MEMORY[0x253052270](v67, v65);
      }

      else
      {
        if (v67 >= *(v112 + 16))
        {
          goto LABEL_76;
        }

        v69 = *(v65 + 8 * v67 + 32);
      }

      v70 = v69;
      v65 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        v66 = sub_24F92C738();
        if (!v66)
        {
          break;
        }

        goto LABEL_55;
      }

      v71 = [v69 bundleIDs];
      v118 = v67 + 1;
      if (v71)
      {
        v72 = *(v0 + 40);
        v73 = *(v0 + 24);
        v74 = v71;
        v75 = sub_24F92B5A8();

        sub_24F793E3C(v75, v73, v72);

        v76 = type metadata accessor for Game(0);
        v77 = (*(*(v76 - 8) + 48))(v72, 1, v76);
        v78 = *(v0 + 40);
        if (v77 != 1)
        {

          sub_24F796738(v78, type metadata accessor for Game);
          goto LABEL_68;
        }

        sub_24E601704(*(v0 + 40), &qword_27F216FE0, &unk_24F959350);
        v79 = [v70 bundleID];
      }

      else
      {
        v79 = [v70 bundleID];
      }

      v80 = v79;
      sub_24F92B0D8();

LABEL_68:
      v81 = *(v0 + 88);
      v82 = *(v0 + 64);
      v83 = [v70 challengeVendorID];
      sub_24F92B0D8();

      sub_24F920F98();
      (*(v100 + 56))(v82, 0, 1, v81);

      if ((*(v100 + 48))(v82, 1, v81) == 1)
      {
        sub_24E601704(*(v0 + 64), &qword_27F24FE68, &qword_24FA27F28);
        v68 = v106;
      }

      else
      {
        v84 = *(v0 + 104);
        v85 = *(v0 + 112);
        v86 = *(v0 + 88);
        v87 = *v103;
        (*v103)(v85, *(v0 + 64), v86);
        v87(v84, v85, v86);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v117 = sub_24E61AC50(0, v117[2] + 1, 1, v117);
        }

        v89 = v117[2];
        v88 = v117[3];
        v68 = v106;
        if (v89 >= v88 >> 1)
        {
          v117 = sub_24E61AC50((v88 > 1), v89 + 1, 1, v117);
        }

        v90 = *(v0 + 104);
        v91 = *(v0 + 88);
        v117[2] = v89 + 1;
        v87(v117 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v89, v90, v91);
      }

      ++v67;
      v65 = v109;
      if (v118 == v68)
      {
        goto LABEL_79;
      }
    }
  }

  v117 = MEMORY[0x277D84F90];
LABEL_79:

  sub_24EA0CCB4(v117);
  *(v0 + 152) = v96;
  v92 = swift_task_alloc();
  *(v0 + 160) = v92;
  *v92 = v0;
  v92[1] = sub_24F792D54;
  v93 = *(v0 + 32);

  return sub_24EDFA4FC(v93, v96);
}

uint64_t sub_24F792D54(uint64_t a1)
{
  v5 = *v1;

  v2 = *(v5 + 8);

  return v2(a1);
}

uint64_t sub_24F792FEC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v136 = a4;
  v156 = a3;
  v143 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v9 - 8);
  v139 = &v130 - v10;
  v11 = type metadata accessor for Player(0);
  v149 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v152 = &v130 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v148 = &v130 - v14;
  MEMORY[0x28223BE20](v15);
  v151 = &v130 - v16;
  v17 = type metadata accessor for Challenge.Participant(0);
  v146 = *(v17 - 8);
  v147 = v17;
  MEMORY[0x28223BE20](v17);
  v145 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v150 = &v130 - v20;
  v21 = sub_24F91F648();
  v137 = *(v21 - 8);
  v138 = v21;
  MEMORY[0x28223BE20](v21);
  v142 = &v130 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Game(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v141 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v140 = &v130 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = MEMORY[0x28223BE20](v31).n128_u64[0];
  v34 = &v130 - v33;
  v35 = *a1;
  v36 = [*a1 bundleIDs];
  v144 = v35;
  if (v36)
  {
    v37 = v36;
    v38 = sub_24F92B5A8();

    sub_24F793E3C(v38, a2, v34);

    goto LABEL_9;
  }

  v39 = [v35 bundleID];
  v40 = sub_24F92B0D8();
  v42 = v41;

  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v43 = sub_24E76D644(v40, v42);
  v45 = v44;

  if ((v45 & 1) == 0)
  {
LABEL_7:
    (*(v24 + 56))(v34, 1, 1, v23);
    goto LABEL_8;
  }

  sub_24F796798(*(a2 + 56) + *(v24 + 72) * v43, v34, type metadata accessor for Game);
  (*(v24 + 56))(v34, 0, 1, v23);
LABEL_8:
  v6 = v5;
LABEL_9:
  sub_24E736938(v34, v30);
  if ((*(v24 + 48))(v30, 1, v23) == 1)
  {
    sub_24E601704(v30, &qword_27F216FE0, &unk_24F959350);
    if (qword_27F2113B8 != -1)
    {
      goto LABEL_51;
    }

    goto LABEL_11;
  }

  v134 = v34;
  v59 = v140;
  sub_24F7966D0(v30, v140, type metadata accessor for Game);
  v60 = v144;
  v61 = [v144 challengeID];
  v133 = sub_24F92B0D8();
  v132 = v62;

  v63 = [v60 challengeVendorID];
  v131 = sub_24F92B0D8();
  v130 = v64;

  v65 = [v60 endDate];
  sub_24F91F608();

  sub_24F796798(v59, v141, type metadata accessor for Game);
  v66 = [v60 participants];
  sub_24E69A5C4(0, &qword_27F21DE28, 0x277D0C0F0);
  v67 = sub_24F92B5A8();

  if (v67 >> 62)
  {
    v68 = sub_24F92C738();
  }

  else
  {
    v68 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v135 = v6;
  if (!v68)
  {
    v155 = MEMORY[0x277D84F90];
LABEL_37:

    v91 = v144;
    v92 = [v144 localizedText];
    v93 = sub_24F92B0D8();
    v95 = v94;

    v96 = [v91 challengeVendorID];
    v97 = sub_24F92B0D8();
    v99 = v98;

    v100 = v136;
    if (*(v136 + 16))
    {
      v101 = sub_24E76D644(v97, v99);
      v103 = v102;

      if (v103)
      {
        v104 = *(v100 + 56);
        v105 = type metadata accessor for ChallengeDefinitionDetail(0);
        v106 = *(v105 - 8);
        v107 = v104 + *(v106 + 72) * v101;
        v108 = v139;
        sub_24F796798(v107, v139, type metadata accessor for ChallengeDefinitionDetail);
        (*(v106 + 56))(v108, 0, 1, v105);
LABEL_42:
        v110 = [v91 remainingAttempts];
        v111 = v110;
        v156 = v93;
        if (v110)
        {
          v154 = [v110 integerValue];
        }

        else
        {
          v154 = 0;
        }

        v112 = [v91 rank];
        v113 = v112;
        v114 = v95;
        if (v112)
        {
          v115 = [v112 integerValue];
        }

        else
        {
          v115 = 0;
        }

        v116 = v113 == 0;
        v117 = v111 == 0;
        v118 = type metadata accessor for Challenge(0);
        v119 = v118[13];
        v120 = [v144 scheduledEndDate];
        v121 = v143;
        sub_24F91F608();

        sub_24F796738(v140, type metadata accessor for Game);
        sub_24E601704(v134, &qword_27F216FE0, &unk_24F959350);
        v122 = v137;
        v123 = v138;
        (*(v137 + 56))(v121 + v119, 0, 1, v138);
        v124 = v132;
        *v121 = v133;
        v121[1] = v124;
        v125 = v130;
        v121[2] = v131;
        v121[3] = v125;
        (*(v122 + 32))(v121 + v118[6], v142, v123);
        sub_24F7966D0(v141, v121 + v118[7], type metadata accessor for Game);
        v126 = v156;
        *(v121 + v118[8]) = v155;
        v127 = (v121 + v118[9]);
        *v127 = v126;
        v127[1] = v114;
        sub_24E6009C8(v139, v121 + v118[10], &qword_27F212A08, &qword_24F9397D0);
        v128 = v121 + v118[11];
        *v128 = v154;
        v128[8] = v117;
        v129 = v121 + v118[12];
        *v129 = v115;
        v129[8] = v116;
        return (*(*(v118 - 1) + 56))(v121, 0, 1, v118);
      }
    }

    else
    {
    }

    v109 = type metadata accessor for ChallengeDefinitionDetail(0);
    (*(*(v109 - 8) + 56))(v139, 1, 1, v109);
    goto LABEL_42;
  }

  v69 = 0;
  v153 = v67 & 0xFFFFFFFFFFFFFF8;
  v154 = (v67 & 0xC000000000000001);
  v155 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v154)
    {
      v70 = MEMORY[0x253052270](v69, v67);
    }

    else
    {
      if (v69 >= *(v153 + 16))
      {
        goto LABEL_50;
      }

      v70 = *(v67 + 8 * v69 + 32);
    }

    v71 = v70;
    v72 = v69 + 1;
    if (__OFADD__(v69, 1))
    {
      break;
    }

    v73 = [v70 playerID];
    v74 = sub_24F92B0D8();
    v34 = v75;

    if (*(v156 + 16))
    {
      v76 = v74;
      v77 = v156;
      v78 = sub_24E76D644(v76, v34);
      v80 = v79;

      if (v80)
      {
        v81 = v148;
        sub_24F796798(*(v77 + 56) + *(v149 + 72) * v78, v148, type metadata accessor for Player);
        v82 = v81;
        v83 = v151;
        sub_24F7966D0(v82, v151, type metadata accessor for Player);
        sub_24F796798(v83, v152, type metadata accessor for Player);
        v84 = [v71 rank];
        v34 = v84;
        if (v84)
        {
          v85 = [v84 integerValue];
        }

        else
        {
          v85 = 0;
        }

        sub_24F796738(v151, type metadata accessor for Player);
        v86 = v145;
        sub_24F7966D0(v152, v145, type metadata accessor for Player);
        v87 = v86 + *(v147 + 20);
        *v87 = v85;
        *(v87 + 8) = v34 == 0;
        sub_24F7966D0(v86, v150, type metadata accessor for Challenge.Participant);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_24E61782C(0, v155[2] + 1, 1, v155);
        }

        v89 = v155[2];
        v88 = v155[3];
        if (v89 >= v88 >> 1)
        {
          v155 = sub_24E61782C((v88 > 1), v89 + 1, 1, v155);
        }

        v90 = v155;
        v155[2] = v89 + 1;
        sub_24F7966D0(v150, v90 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v89, type metadata accessor for Challenge.Participant);
        goto LABEL_20;
      }
    }

    else
    {
    }

LABEL_20:
    ++v69;
    if (v72 == v68)
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  swift_once();
LABEL_11:
  v46 = sub_24F9220D8();
  __swift_project_value_buffer(v46, qword_27F39E778);
  v47 = v144;
  v48 = sub_24F9220B8();
  v49 = sub_24F92BDB8();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v157 = v51;
    *v50 = 136315138;
    v52 = [v47 challengeID];
    v53 = sub_24F92B0D8();
    v55 = v54;

    v56 = sub_24E7620D4(v53, v55, &v157);

    *(v50 + 4) = v56;
    _os_log_impl(&dword_24E5DD000, v48, v49, "ChallengesHubDataIntentImplementation activeChallenges: Failed to find game for challenge: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x2530542D0](v51, -1, -1);
    MEMORY[0x2530542D0](v50, -1, -1);
  }

  sub_24E601704(v34, &qword_27F216FE0, &unk_24F959350);
  v57 = type metadata accessor for Challenge(0);
  return (*(*(v57 - 8) + 56))(v143, 1, 1, v57);
}

uint64_t sub_24F793E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  v5 = type metadata accessor for Game(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v32 - v16;
  v37 = v6;
  v18 = *(v6 + 56);
  v34 = v6 + 56;
  v35 = v5;
  v33 = v18;
  (v18)(&v32 - v16, 1, 1, v5, v15);
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = (v37 + 48);
    v21 = (a1 + 40);
    do
    {
      if (*(a2 + 16))
      {
        v22 = *(v21 - 1);
        v23 = *v21;

        v24 = sub_24E76D644(v22, v23);
        v26 = v25;

        if (v26)
        {
          v27 = *(a2 + 56) + *(v37 + 72) * v24;
          v28 = v36;
          sub_24F796798(v27, v36, type metadata accessor for Game);
          sub_24F7966D0(v28, v10, type metadata accessor for Game);
          if (v10[96])
          {
            sub_24E601704(v17, &qword_27F216FE0, &unk_24F959350);
            v31 = v32;
            sub_24F7966D0(v10, v32, type metadata accessor for Game);
            return v33(v31, 0, 1, v35);
          }

          sub_24E736938(v17, v13);
          v29 = v35;
          if ((*v20)(v13, 1, v35) == 1)
          {
            sub_24E601704(v17, &qword_27F216FE0, &unk_24F959350);
            sub_24E601704(v13, &qword_27F216FE0, &unk_24F959350);
            sub_24F7966D0(v10, v17, type metadata accessor for Game);
            v33(v17, 0, 1, v29);
          }

          else
          {
            sub_24F796738(v10, type metadata accessor for Game);
            sub_24E601704(v13, &qword_27F216FE0, &unk_24F959350);
          }
        }
      }

      v21 += 2;
      --v19;
    }

    while (v19);
  }

  return sub_24E6009C8(v17, v32, &qword_27F216FE0, &unk_24F959350);
}

uint64_t sub_24F7941CC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v115 = a5;
  v104 = a4;
  v107 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v7 - 8);
  v112 = &v103 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v9 - 8);
  v105 = &v103 - v10;
  v11 = type metadata accessor for Game(0);
  v108 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v106 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v113 = &v103 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v110 = &v103 - v19;
  v111 = type metadata accessor for Player(0);
  v114 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22 = MEMORY[0x28223BE20](v21).n128_u64[0];
  v24 = &v103 - v23;
  v25 = *a1;
  v26 = [*a1 fromPlayerID];
  v27 = sub_24F92B0D8();
  v29 = v28;

  if (!*(a2 + 16))
  {

LABEL_6:
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v38 = sub_24F9220D8();
    __swift_project_value_buffer(v38, qword_27F39E778);
    v39 = v25;

    v40 = sub_24F9220B8();
    v41 = sub_24F92BDB8();
    if (!os_log_type_enabled(v40, v41))
    {

LABEL_31:
      v97 = type metadata accessor for ChallengeInvite(0);
      return (*(*(v97 - 8) + 56))(v115, 1, 1, v97);
    }

    v42 = swift_slowAlloc();
    *v42 = 67109120;
    v43 = [v39 fromPlayerID];
    v44 = sub_24F92B0D8();
    v46 = v45;

    if (*(a2 + 16))
    {
      v47 = sub_24E76D644(v44, v46);
      v49 = v48;

      if (v49)
      {
        v50 = v114;
        v51 = v112;
        sub_24F796798(*(a2 + 56) + *(v114 + 72) * v47, v112, type metadata accessor for Player);
        (*(v50 + 56))(v51, 0, 1, v111);
        v52 = 0;
LABEL_15:
        sub_24E601704(v51, &unk_27F23E1F0, &unk_24F9549C0);
        *(v42 + 4) = v52;

        _os_log_impl(&dword_24E5DD000, v40, v41, "ChallengesHubDataIntentImplementation invites skipped: inviter is nil == %{BOOL}d", v42, 8u);
        MEMORY[0x2530542D0](v42, -1, -1);

        goto LABEL_31;
      }
    }

    else
    {
    }

    v52 = 1;
    v51 = v112;
    (*(v114 + 56))(v112, 1, 1, v111);
    goto LABEL_15;
  }

  v30 = sub_24E76D644(v27, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_24F796798(*(a2 + 56) + *(v114 + 72) * v30, v24, type metadata accessor for Player);
  v33 = [v25 bundleIDs];
  if (v33)
  {
    v34 = v33;
    v35 = sub_24F92B5A8();

    v36 = v110;
    sub_24F793E3C(v35, v107, v110);

    v37 = v108;
    goto LABEL_21;
  }

  v53 = [v25 bundleID];
  v54 = sub_24F92B0D8();
  v56 = v55;

  v57 = v107;
  v36 = v110;
  if (*(v107 + 16))
  {
    v58 = sub_24E76D644(v54, v56);
    v60 = v59;

    if (v60)
    {
      v37 = v108;
      sub_24F796798(*(v57 + 56) + *(v108 + 72) * v58, v36, type metadata accessor for Game);
      (*(v37 + 56))(v36, 0, 1, v11);
      goto LABEL_21;
    }
  }

  else
  {
  }

  v37 = v108;
  (*(v108 + 56))(v36, 1, 1, v11);
LABEL_21:
  sub_24E736938(v36, v17);
  v61 = (*(v37 + 48))(v17, 1, v11);
  v62 = v113;
  if (v61 == 1)
  {
    sub_24E601704(v17, &qword_27F216FE0, &unk_24F959350);
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v63 = sub_24F9220D8();
    __swift_project_value_buffer(v63, qword_27F39E778);
    v64 = v25;
    v65 = sub_24F9220B8();
    v66 = sub_24F92BDB8();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v116 = v68;
      *v67 = 136315138;
      v69 = [v64 challengeID];
      v70 = v36;
      v71 = sub_24F92B0D8();
      v73 = v72;

      v74 = sub_24E7620D4(v71, v73, &v116);

      *(v67 + 4) = v74;
      _os_log_impl(&dword_24E5DD000, v65, v66, "ChallengesHubDataIntentImplementation invites skipped: Failed to find game for challenge: %s", v67, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v68);
      MEMORY[0x2530542D0](v68, -1, -1);
      MEMORY[0x2530542D0](v67, -1, -1);

      v75 = v70;
    }

    else
    {

      v75 = v36;
    }

    sub_24E601704(v75, &qword_27F216FE0, &unk_24F959350);
    sub_24F796738(v24, type metadata accessor for Player);
    goto LABEL_31;
  }

  sub_24F7966D0(v17, v113, type metadata accessor for Game);
  v76 = [v25 challengeID];
  v77 = sub_24F92B0D8();
  v79 = v78;

  sub_24F796798(v24, v109, type metadata accessor for Player);
  v80 = v106;
  sub_24F796798(v62, v106, type metadata accessor for Game);
  v81 = [v25 challengeVendorID];
  v82 = sub_24F92B0D8();
  v84 = v83;

  v85 = v62;
  v86 = v104;
  if (!*(v104 + 16))
  {

    v99 = v85;
LABEL_34:
    sub_24F796738(v99, type metadata accessor for Game);
    sub_24E601704(v36, &qword_27F216FE0, &unk_24F959350);
    sub_24F796738(v24, type metadata accessor for Player);
    v100 = type metadata accessor for ChallengeDefinitionDetail(0);
    v95 = v105;
    (*(*(v100 - 8) + 56))(v105, 1, 1, v100);
    goto LABEL_35;
  }

  v87 = sub_24E76D644(v82, v84);
  v89 = v88;

  if ((v89 & 1) == 0)
  {
    v99 = v113;
    goto LABEL_34;
  }

  v90 = *(v86 + 56);
  v91 = type metadata accessor for ChallengeDefinitionDetail(0);
  v92 = v36;
  v93 = *(v91 - 8);
  v94 = v90 + *(v93 + 72) * v87;
  v95 = v105;
  sub_24F796798(v94, v105, type metadata accessor for ChallengeDefinitionDetail);
  sub_24F796738(v113, type metadata accessor for Game);
  v96 = v92;
  v80 = v106;
  sub_24E601704(v96, &qword_27F216FE0, &unk_24F959350);
  sub_24F796738(v24, type metadata accessor for Player);
  (*(v93 + 56))(v95, 0, 1, v91);
LABEL_35:
  v101 = v115;
  *v115 = v77;
  v101[1] = v79;
  v102 = type metadata accessor for ChallengeInvite(0);
  sub_24F7966D0(v109, v101 + v102[5], type metadata accessor for Player);
  sub_24F7966D0(v80, v101 + v102[6], type metadata accessor for Game);
  sub_24E6009C8(v95, v101 + v102[7], &qword_27F212A08, &qword_24F9397D0);
  return (*(*(v102 - 1) + 56))(v101, 0, 1, v102);
}

uint64_t sub_24F794D7C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v155 = a4;
  v173 = a3;
  v158 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v7 - 8);
  v149 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v154 = &v144 - v10;
  v11 = type metadata accessor for Player(0);
  v167 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v166 = &v144 - v15;
  MEMORY[0x28223BE20](v16);
  v169 = &v144 - v17;
  v18 = type metadata accessor for Challenge.Participant(0);
  v164 = *(v18 - 8);
  v165 = v18;
  MEMORY[0x28223BE20](v18);
  v163 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v168 = &v144 - v21;
  v151 = sub_24F91F648();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v160 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Challenge(0);
  MEMORY[0x28223BE20](v152);
  v156 = &v144 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v153 = (&v144 - v25);
  v26 = type metadata accessor for Game(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v159 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v157 = &v144 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v35 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v37 = &v144 - v36;
  v38 = *a1;
  v39 = [v38 bundleIDs];
  v162 = v38;
  if (v39)
  {
    v40 = v39;
    v41 = sub_24F92B5A8();

    v42 = v162;
    sub_24F793E3C(v41, a2, v37);

    goto LABEL_9;
  }

  v43 = [v38 bundleID];
  v44 = sub_24F92B0D8();
  v46 = v45;

  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v47 = sub_24E76D644(v44, v46);
  v49 = v48;

  if ((v49 & 1) == 0)
  {
LABEL_7:
    (*(v27 + 56))(v37, 1, 1, v26);
    goto LABEL_8;
  }

  sub_24F796798(*(a2 + 56) + *(v27 + 72) * v47, v37, type metadata accessor for Game);
  (*(v27 + 56))(v37, 0, 1, v26);
LABEL_8:
  v42 = v162;
LABEL_9:
  sub_24E736938(v37, v33);
  if ((*(v27 + 48))(v33, 1, v26) == 1)
  {
    sub_24E601704(v33, &qword_27F216FE0, &unk_24F959350);
    if (qword_27F2113B8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_11;
  }

  v148 = v37;
  v64 = v157;
  sub_24F7966D0(v33, v157, type metadata accessor for Game);
  v65 = v42;
  v66 = [v42 challengeID];
  v147 = sub_24F92B0D8();
  v146 = v67;

  v68 = [v65 challengeVendorID];
  v145 = sub_24F92B0D8();
  v144 = v69;

  v70 = [v65 endDate];
  sub_24F91F608();

  sub_24F796798(v64, v159, type metadata accessor for Game);
  v71 = [v65 participants];
  sub_24E69A5C4(0, &qword_27F21DE28, 0x277D0C0F0);
  v72 = sub_24F92B5A8();

  if (v72 >> 62)
  {
    v37 = sub_24F92C738();
    if (v37)
    {
      goto LABEL_16;
    }

LABEL_39:
    v172 = MEMORY[0x277D84F90];
LABEL_40:

    v98 = [v162 challengeVendorID];
    v99 = sub_24F92B0D8();
    v101 = v100;

    v102 = v155;
    if (*(v155 + 16))
    {
      v103 = sub_24E76D644(v99, v101);
      v105 = v104;

      v106 = v154;
      v107 = v153;
      if (v105)
      {
        v108 = *(v102 + 56);
        v109 = type metadata accessor for ChallengeDefinitionDetail(0);
        v110 = *(v109 - 8);
        sub_24F796798(v108 + *(v110 + 72) * v103, v106, type metadata accessor for ChallengeDefinitionDetail);
        (*(v110 + 56))(v106, 0, 1, v109);
      }

      else
      {
        v112 = type metadata accessor for ChallengeDefinitionDetail(0);
        (*(*(v112 - 8) + 56))(v106, 1, 1, v112);
      }
    }

    else
    {

      v111 = type metadata accessor for ChallengeDefinitionDetail(0);
      v106 = v154;
      (*(*(v111 - 8) + 56))(v154, 1, 1, v111);
      v107 = v153;
    }

    v113 = [v162 rank];
    v114 = v113;
    if (v113)
    {
      v115 = [v113 integerValue];
    }

    else
    {
      v115 = 0;
    }

    v116 = v152;
    v117 = *(v152 + 52);
    v118 = v162;
    v119 = [v162 scheduledEndDate];
    sub_24F91F608();

    v120 = v150;
    v121 = v107 + v117;
    v122 = v151;
    (*(v150 + 56))(v121, 0, 1, v151);
    v123 = v146;
    *v107 = v147;
    v107[1] = v123;
    v124 = v144;
    v107[2] = v145;
    v107[3] = v124;
    (*(v120 + 32))(v107 + v116[6], v160, v122);
    sub_24F7966D0(v159, v107 + v116[7], type metadata accessor for Game);
    *(v107 + v116[8]) = v172;
    v125 = (v107 + v116[9]);
    *v125 = 0;
    v125[1] = 0xE000000000000000;
    sub_24E6009C8(v106, v107 + v116[10], &qword_27F212A08, &qword_24F9397D0);
    v126 = v107 + v116[11];
    *v126 = 0;
    v126[8] = 0;
    v127 = v107 + v116[12];
    *v127 = v115;
    v127[8] = v114 == 0;
    v128 = v156;
    sub_24F796798(v107, v156, type metadata accessor for Challenge);
    v129 = [v118 challengeVendorID];
    v130 = sub_24F92B0D8();
    v132 = v131;

    if (*(v102 + 16))
    {
      v133 = sub_24E76D644(v130, v132);
      v135 = v134;

      if (v135)
      {
        v136 = *(v102 + 56);
        v137 = type metadata accessor for ChallengeDefinitionDetail(0);
        v138 = *(v137 - 8);
        v139 = v136 + *(v138 + 72) * v133;
        v140 = v149;
        sub_24F796798(v139, v149, type metadata accessor for ChallengeDefinitionDetail);
        sub_24F796738(v107, type metadata accessor for Challenge);
        sub_24F796738(v157, type metadata accessor for Game);
        sub_24E601704(v148, &qword_27F216FE0, &unk_24F959350);
        (*(v138 + 56))(v140, 0, 1, v137);
LABEL_53:
        v142 = v158;
        sub_24F7966D0(v128, v158, type metadata accessor for Challenge);
        v143 = type metadata accessor for CompletedChallengeSummary(0);
        sub_24E6009C8(v140, v142 + *(v143 + 20), &qword_27F212A08, &qword_24F9397D0);
        return (*(*(v143 - 8) + 56))(v142, 0, 1, v143);
      }
    }

    else
    {
    }

    sub_24F796738(v107, type metadata accessor for Challenge);
    sub_24F796738(v157, type metadata accessor for Game);
    sub_24E601704(v148, &qword_27F216FE0, &unk_24F959350);
    v141 = type metadata accessor for ChallengeDefinitionDetail(0);
    v140 = v149;
    (*(*(v141 - 8) + 56))(v149, 1, 1, v141);
    goto LABEL_53;
  }

  v37 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_39;
  }

LABEL_16:
  v161 = v13;
  v42 = 0;
  v170 = v72 & 0xFFFFFFFFFFFFFF8;
  v171 = v72 & 0xC000000000000001;
  v172 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v171)
    {
      v73 = MEMORY[0x253052270](v42, v72);
    }

    else
    {
      if (v42 >= *(v170 + 16))
      {
        goto LABEL_36;
      }

      v73 = *(v72 + 8 * v42 + 32);
    }

    v74 = v73;
    v75 = (v42 + 1);
    if (__OFADD__(v42, 1))
    {
      break;
    }

    v76 = [v73 playerID];
    v77 = sub_24F92B0D8();
    v79 = v78;

    if (*(v173 + 16))
    {
      v80 = v77;
      v81 = v173;
      v82 = sub_24E76D644(v80, v79);
      v84 = v83;

      if (v84)
      {
        v85 = v166;
        sub_24F796798(*(v81 + 56) + *(v167 + 72) * v82, v166, type metadata accessor for Player);
        v86 = v85;
        v87 = v169;
        sub_24F7966D0(v86, v169, type metadata accessor for Player);
        v88 = v161;
        sub_24F796798(v87, v161, type metadata accessor for Player);
        v89 = [v74 rank];
        v90 = v89;
        if (v89)
        {
          v91 = [v89 integerValue];
        }

        else
        {
          v91 = 0;
        }

        sub_24F796738(v169, type metadata accessor for Player);
        v92 = v88;
        v93 = v163;
        sub_24F7966D0(v92, v163, type metadata accessor for Player);
        v94 = v93 + *(v165 + 20);
        *v94 = v91;
        *(v94 + 8) = v90 == 0;
        sub_24F7966D0(v93, v168, type metadata accessor for Challenge.Participant);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = sub_24E61782C(0, v172[2] + 1, 1, v172);
        }

        v96 = v172[2];
        v95 = v172[3];
        if (v96 >= v95 >> 1)
        {
          v172 = sub_24E61782C((v95 > 1), v96 + 1, 1, v172);
        }

        v97 = v172;
        v172[2] = v96 + 1;
        sub_24F7966D0(v168, v97 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v96, type metadata accessor for Challenge.Participant);
        goto LABEL_19;
      }
    }

    else
    {
    }

LABEL_19:
    ++v42;
    if (v75 == v37)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  swift_once();
LABEL_11:
  v50 = sub_24F9220D8();
  __swift_project_value_buffer(v50, qword_27F39E778);
  v51 = v42;
  v52 = sub_24F9220B8();
  v53 = sub_24F92BDB8();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v174 = v55;
    *v54 = 136315138;
    v56 = [v51 challengeID];
    v57 = sub_24F92B0D8();
    v59 = v58;

    v60 = sub_24E7620D4(v57, v59, &v174);

    *(v54 + 4) = v60;
    _os_log_impl(&dword_24E5DD000, v52, v53, "ChallengesHubDataIntentImplementation activeChallenges: Failed to find game for challenge: %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x2530542D0](v55, -1, -1);
    MEMORY[0x2530542D0](v54, -1, -1);
  }

  sub_24E601704(v37, &qword_27F216FE0, &unk_24F959350);
  v61 = v158;
  v62 = type metadata accessor for CompletedChallengeSummary(0);
  return (*(*(v62 - 8) + 56))(v61, 1, 1, v62);
}

uint64_t sub_24F795E70()
{
  v1 = [v0 actives];
  sub_24E69A5C4(0, &qword_27F24FE58, 0x277D0C0A8);
  v2 = sub_24F92B5A8();

  if (v2 >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v4 = MEMORY[0x277D84F90];
  v33 = v2;
  if (v3)
  {
    v5 = 0;
    v36 = v2 & 0xFFFFFFFFFFFFFF8;
    v37 = v2 & 0xC000000000000001;
    v34 = v3;
    v35 = v2 + 32;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v37)
      {
        v7 = MEMORY[0x253052270](v5, v33);
      }

      else
      {
        if (v5 >= *(v36 + 16))
        {
          goto LABEL_41;
        }

        v7 = *(v35 + 8 * v5);
      }

      v8 = v7;
      v9 = __OFADD__(v5, 1);
      v10 = v5 + 1;
      if (v9)
      {
        __break(1u);
LABEL_41:
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
        v3 = sub_24F92C738();
        goto LABEL_3;
      }

      v39 = v10;
      v40 = v6;
      v11 = [v7 participants];
      sub_24E69A5C4(0, &qword_27F21DE28, 0x277D0C0F0);
      v12 = sub_24F92B5A8();

      if (v12 >> 62)
      {
        v13 = sub_24F92C738();
        if (!v13)
        {
LABEL_24:

          v2 = v4;
          goto LABEL_25;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_24;
        }
      }

      v41 = v4;
      v2 = &v41;
      sub_24F4578E0(0, v13 & ~(v13 >> 63), 0);
      if (v13 < 0)
      {
        goto LABEL_44;
      }

      v38 = v8;
      v14 = 0;
      v2 = v41;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x253052270](v14, v12);
        }

        else
        {
          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = [v15 playerID];
        v18 = sub_24F92B0D8();
        v20 = v19;

        v41 = v2;
        v22 = *(v2 + 16);
        v21 = *(v2 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_24F4578E0((v21 > 1), v22 + 1, 1);
          v2 = v41;
        }

        ++v14;
        *(v2 + 16) = v22 + 1;
        v23 = v2 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
      }

      while (v13 != v14);

      v3 = v34;
      v4 = MEMORY[0x277D84F90];
LABEL_25:
      v24 = *(v2 + 16);
      v6 = v40;
      v25 = *(v40 + 2);
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v26 <= *(v40 + 3) >> 1)
      {
        if (*(v2 + 16))
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v25 <= v26)
        {
          v28 = v25 + v24;
        }

        else
        {
          v28 = v25;
        }

        v6 = sub_24E615CF4(isUniquelyReferenced_nonNull_native, v28, 1, v40);
        if (*(v2 + 16))
        {
LABEL_34:
          if ((*(v6 + 3) >> 1) - *(v6 + 2) < v24)
          {
            goto LABEL_45;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v29 = *(v6 + 2);
            v9 = __OFADD__(v29, v24);
            v30 = v29 + v24;
            if (v9)
            {
              goto LABEL_46;
            }

            *(v6 + 2) = v30;
          }

          goto LABEL_6;
        }
      }

      if (v24)
      {
        goto LABEL_43;
      }

LABEL_6:
      v5 = v39;
      if (v39 == v3)
      {
        goto LABEL_39;
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_39:

  v31 = sub_24F45D828(v6);

  return v31;
}