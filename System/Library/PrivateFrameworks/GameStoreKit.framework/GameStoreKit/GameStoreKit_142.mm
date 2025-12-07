uint64_t sub_24F485954(void *a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244990, &qword_24F9FC478);
    return sub_24F92B788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244990, &qword_24F9FC478);
    return sub_24F92B798();
  }
}

uint64_t sub_24F4859D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244990, &qword_24F9FC478);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F485A6C(void *a1, int a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244990, &qword_24F9FC478);

  return sub_24F485954(a1, a2, a3);
}

uint64_t ChallengeDetailInvitedPlayersShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengeDetailInvitedPlayersShelfIntent.challengeID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_24F485B84()
{
  v1 = 0x676E656C6C616863;
  if (*v0 != 1)
  {
    v1 = 0x73726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F485BE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F48636C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F485C0C(uint64_t a1)
{
  v2 = sub_24F485ECC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F485C48(uint64_t a1)
{
  v2 = sub_24F485ECC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDetailInvitedPlayersShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244998, &unk_24F9FC4B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = v1[2];
  v13 = v1[3];
  v14 = v7;
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F485ECC();
  sub_24F92D128();
  v19 = 0;
  v8 = v15;
  sub_24F92CD08();
  if (!v8)
  {
    v10 = v12;
    v18 = 1;
    sub_24F92CD08();
    v16 = v10;
    v17 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
    sub_24E76B8D4(&qword_27F21BC30, &qword_27F213E28, &protocol conformance descriptor for Player, MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F485ECC()
{
  result = qword_27F2449A0;
  if (!qword_27F2449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2449A0);
  }

  return result;
}

uint64_t ChallengeDetailInvitedPlayersShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2449A8, &qword_24F9FC4C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F485ECC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v18 = v9;
  v21 = 1;
  v16 = sub_24F92CC28();
  v17 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  v20 = 2;
  sub_24E76B8D4(&qword_27F2196A8, &qword_27F213E38, &protocol conformance descriptor for Player, MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v19;
  *a2 = v18;
  a2[1] = v11;
  v14 = v17;
  a2[2] = v16;
  a2[3] = v14;
  a2[4] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F486268()
{
  result = qword_27F2449B0;
  if (!qword_27F2449B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2449B0);
  }

  return result;
}

unint64_t sub_24F4862C0()
{
  result = qword_27F2449B8;
  if (!qword_27F2449B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2449B8);
  }

  return result;
}

unint64_t sub_24F486318()
{
  result = qword_27F2449C0[0];
  if (!qword_27F2449C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2449C0);
  }

  return result;
}

uint64_t sub_24F48636C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEB00000000444965 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73726579616C70 && a2 == 0xE700000000000000)
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

uint64_t sub_24F486484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_24F92AFF8())
  {
    v9 = *(type metadata accessor for CarouselAnimatedValue(0, a3, v7, v8) + 28);
    v10 = *(a2 + v9);
    if (*(a1 + v9))
    {
      if (v10)
      {

        v11 = sub_24F927688();

        if (v11)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

void sub_24F486534(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_24F4868C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F4865BC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

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

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_24F486700(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_24F4868C4()
{
  if (!qword_27F244A48)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F244A48);
    }
  }
}

uint64_t ChallengesSuggestedLeaderboardsShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengesSuggestedLeaderboardsShelfIntent.initiatorID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ChallengesSuggestedLeaderboardsShelfIntent.gameBundleID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24F4869C0(uint64_t a1)
{
  v2 = sub_24F486BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4869FC(uint64_t a1)
{
  v2 = sub_24F486BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesSuggestedLeaderboardsShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244A50, &qword_24F9FC770);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F486BFC();
  sub_24F92D128();
  v14 = 0;
  v9 = v11[5];
  sub_24F92CD08();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CD08();
  v12 = 2;
  sub_24F92CD08();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F486BFC()
{
  result = qword_27F244A58;
  if (!qword_27F244A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244A58);
  }

  return result;
}

uint64_t ChallengesSuggestedLeaderboardsShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244A60, &qword_24F9FC778);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F486BFC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CC28();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CC28();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F486F3C()
{
  result = qword_27F244A68;
  if (!qword_27F244A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244A68);
  }

  return result;
}

unint64_t sub_24F486F94()
{
  result = qword_27F244A70;
  if (!qword_27F244A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244A70);
  }

  return result;
}

unint64_t sub_24F486FEC()
{
  result = qword_27F244A78;
  if (!qword_27F244A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244A78);
  }

  return result;
}

uint64_t sub_24F487098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  type metadata accessor for Player(0);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F487208, 0, 0);
}

uint64_t sub_24F487208()
{
  *(v0 + 152) = sub_24F92B7F8();
  *(v0 + 160) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F4872A0, v2, v1);
}

uint64_t sub_24F4872A0()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 168) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24F487328, 0, 0);
}

uint64_t sub_24F487328(uint64_t a1)
{
  *(v1 + 176) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F4873B4, v3, v2);
}

uint64_t sub_24F4873B4()
{
  v1 = v0[21];
  v2 = v0[18];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24F48BA48(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24F48BA90(v1 + v3, v2, type metadata accessor for Player);

  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_24F487534;

  return MEMORY[0x28217F228](v0 + 7, updated, updated);
}

uint64_t sub_24F487534()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24F487858;
  }

  else
  {
    v2 = sub_24F487648;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F487648()
{
  v1 = v0[18];
  v2 = v0[15];
  v14 = v0[17];
  v15 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v13 = v0[11];
  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v16 = v0[8];
  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v8;
  v9[4] = v1;
  v9[5] = v7;
  type metadata accessor for GSKShelf(0);
  (*(v5 + 104))(v4, *MEMORY[0x277D85778], v13);
  sub_24F92B928();

  (*(v2 + 16))(v15, v14, v3);
  sub_24E613678();
  sub_24F9280F8();

  (*(v2 + 8))(v14, v3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v10 - 8) + 56))(v16, 0, 1, v10);
  sub_24F48BB88(v1, type metadata accessor for Player);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F487858()
{
  sub_24F48BB88(*(v0 + 144), type metadata accessor for Player);

  v1 = *(v0 + 8);

  return v1();
}

double sub_24F487904(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v50 = a3;
  v47 = a4;
  v42 = a1;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v46 = *(v52 - 8);
  v48 = *(v46 + 64);
  MEMORY[0x28223BE20](v52);
  v45 = &v37 - v6;
  v7 = type metadata accessor for Player(0);
  v44 = *(v7 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v9 - 8);
  v51 = &v37 - v10;
  v11 = type metadata accessor for GameDetailsChallengesShelfIntent(0);
  v12 = v11 - 8;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_24F92C888();
  v15 = *a2;
  v16 = a2[1];

  v53 = v15;
  v54 = v16;
  MEMORY[0x253050C20](0xD000000000000025, 0x800000024FA757B0);
  MEMORY[0x253050C20](*(a2 + *(v12 + 28)), *(a2 + *(v12 + 28) + 8));
  v18 = v53;
  v17 = v54;
  v40 = v53;
  sub_24F48BA90(a2, &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameDetailsChallengesShelfIntent);
  v19 = *(v13 + 80);
  v20 = swift_allocObject();
  v20[2] = v50;
  v20[3] = v18;
  v20[4] = v17;
  v38 = type metadata accessor for GameDetailsChallengesShelfIntent;
  v39 = v17;
  v37 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F48B768(v37, v20 + ((v19 + 40) & ~v19), type metadata accessor for GameDetailsChallengesShelfIntent);

  v21 = v52;
  v22 = v42;
  sub_24F92B898();
  v23 = sub_24F92B858();
  (*(*(v23 - 8) + 56))(v51, 1, 1, v23);
  v24 = v41;
  sub_24F48BA90(v47, v41, type metadata accessor for Player);
  sub_24F48BA90(a2, &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameDetailsChallengesShelfIntent);
  v26 = v45;
  v25 = v46;
  (*(v46 + 16))(v45, v22, v21);
  v27 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v28 = (v43 + v19 + v27) & ~v19;
  v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = v25;
  v31 = (*(v25 + 80) + v29 + 8) & ~*(v25 + 80);
  v32 = (v48 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  sub_24F48B768(v24, v33 + v27, type metadata accessor for Player);
  sub_24F48B768(v37, v33 + v28, v38);
  *(v33 + v29) = v49;
  (*(v30 + 32))(v33 + v31, v26, v52);
  *(v33 + v32) = v50;
  v34 = (v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v39;
  *v34 = v40;
  v34[1] = v35;

  sub_24F1D3DA4(0, 0, v51, &unk_24F9FCA38, v33);

  return result;
}

double sub_24F487DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for GameDetailsChallengesShelfIntent(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_24F48BA90(a5, &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameDetailsChallengesShelfIntent);
  v16 = (*(v10 + 80) + 56) & ~*(v10 + 80);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a2;
  v17[5] = a3;
  v17[6] = a4;
  sub_24F48B768(&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GameDetailsChallengesShelfIntent);

  sub_24EA998B8(0, 0, v14, &unk_24F9FCA58, v17);

  return result;
}

uint64_t sub_24F487FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_24F488008, 0, 0);
}

uint64_t sub_24F488008()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = (v1 + *(type metadata accessor for GameDetailsChallengesShelfIntent(0) + 20));
  v0[6] = *v3;
  v0[7] = v3[1];

  return MEMORY[0x2822009F8](sub_24F488090, v2, 0);
}

uint64_t sub_24F488090()
{
  sub_24F5EA3E0(v0[3], v0[4], v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24F4880F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[40] = v16;
  v8[41] = v17;
  v8[38] = a7;
  v8[39] = a8;
  v8[36] = a5;
  v8[37] = a6;
  v8[35] = a4;
  v9 = sub_24F91F648();
  v8[42] = v9;
  v8[43] = *(v9 - 8);
  v8[44] = swift_task_alloc();
  v8[45] = swift_task_alloc();
  v10 = type metadata accessor for Challenge(0);
  v8[46] = v10;
  v8[47] = *(v10 - 8);
  v8[48] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213780, &unk_24F9FCA40);
  v8[49] = v11;
  v8[50] = *(v11 - 8);
  v8[51] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213788, &unk_24F93B040);
  v8[52] = v12;
  v8[53] = *(v12 - 8);
  v8[54] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v8[55] = v13;
  v8[56] = *(v13 - 8);
  v8[57] = swift_task_alloc();
  v8[58] = type metadata accessor for GameDetailsChallengesShelfConstructionIntent(0);
  v8[59] = swift_task_alloc();
  v8[60] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v8[61] = swift_task_alloc();
  v8[62] = swift_task_alloc();
  v8[63] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F4883EC, 0, 0);
}

uint64_t sub_24F4883EC()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *v1;
  v3 = v1[1];
  *(v0 + 512) = v3;
  v5 = type metadata accessor for GameDetailsChallengesShelfIntent(0);
  *(v0 + 520) = v5;
  v6 = *(v5 + 20);
  *(v0 + 704) = v6;
  v7 = (v2 + v6);
  v8 = *v7;
  *(v0 + 528) = *v7;
  v9 = v7[1];
  *(v0 + 536) = v9;

  v10 = swift_task_alloc();
  *(v0 + 544) = v10;
  *v10 = v0;
  v10[1] = sub_24F488500;
  v11 = *(v0 + 296);

  return sub_24E649538(v0 + 64, v4, v3, v8, v9, v11);
}

uint64_t sub_24F488500()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_24F48A290;
  }

  else
  {

    v2 = sub_24F488628;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F488628(__n128 a1)
{
  v2 = *(v1 + 704);
  v3 = *(v1 + 520);
  v4 = *(v1 + 480);
  v5 = *(v1 + 464);
  v6 = *(v1 + 280);
  v7 = *(v1 + 288);
  v17 = *(v1 + 72);
  v18 = *(v1 + 64);
  v9 = *(v1 + 80);
  v8 = *(v1 + 88);
  *(v1 + 560) = v9;
  *(v1 + 568) = v8;
  v10 = *(v1 + 96);
  *(v1 + 576) = v10;
  v11 = v7[1];
  v16 = *v7;
  v12 = *(v3 + 24);
  sub_24F48BA90(v7 + v2, v4 + v5[6], type metadata accessor for Game);
  sub_24F48BA90(v6, v4 + v5[7], type metadata accessor for Player);
  sub_24E7D14D8(v7 + v12, v4 + v5[8]);
  *v4 = v16;
  v4[1] = v11;
  v4[2] = v18;
  v4[3] = v17;
  v4[4] = v9;
  v4[5] = v8;
  v4[6] = v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);

  v14 = swift_task_alloc();
  *(v1 + 584) = v14;
  *v14 = v1;
  v14[1] = sub_24F4887D4;

  return MEMORY[0x28217F228](v1 + 184, v13, v13);
}

uint64_t sub_24F4887D4()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_24F488AFC;
  }

  else
  {
    v2 = sub_24F4888E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F4888E8()
{
  v1 = v0[26];
  v2 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v1);
  v3 = swift_task_alloc();
  v0[75] = v3;
  v4 = sub_24F48BA48(&qword_27F21D530, type metadata accessor for GameDetailsChallengesShelfConstructionIntent, &unk_24F9C10B8);
  *v3 = v0;
  v3[1] = sub_24F4889E8;
  v5 = v0[63];
  v6 = v0[60];
  v7 = v0[58];
  v8 = v0[37];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F4889E8()
{
  *(*v1 + 608) = v0;

  if (v0)
  {
    v2 = sub_24F488EF4;
  }

  else
  {
    v2 = sub_24F488CD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F488AFC()
{
  v1 = v0[74];
  sub_24F48BB88(v0[60], type metadata accessor for GameDetailsChallengesShelfConstructionIntent);

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameDetailsChallengesShelfIntent failed to create shelf: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[39];

  return MEMORY[0x2822009F8](sub_24F4890D4, v10, 0);
}

uint64_t sub_24F488CD4()
{
  v1 = v0[62];
  v2 = v0[63];
  v3 = v0[60];
  v5 = v0[56];
  v4 = v0[57];
  v6 = v0[55];
  v7 = v0[39];
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  sub_24F48BB88(v3, type metadata accessor for GameDetailsChallengesShelfConstructionIntent);
  sub_24F48BA90(v2, v1, type metadata accessor for GSKShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_24F488DE0, v7, 0);
}

uint64_t sub_24F488DE0()
{
  sub_24F5EA95C(*(v0 + 560));

  return MEMORY[0x2822009F8](sub_24F488E78, 0, 0);
}

uint64_t sub_24F488E78()
{
  sub_24F48BB88(*(v0 + 504), type metadata accessor for GSKShelf);
  v1 = *(v0 + 312);

  return MEMORY[0x2822009F8](sub_24F4890D4, v1, 0);
}

uint64_t sub_24F488EF4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 23);
  v1 = v0[76];
  sub_24F48BB88(v0[60], type metadata accessor for GameDetailsChallengesShelfConstructionIntent);

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameDetailsChallengesShelfIntent failed to create shelf: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[39];

  return MEMORY[0x2822009F8](sub_24F4890D4, v10, 0);
}

uint64_t sub_24F4890D4()
{
  sub_24F5E9B3C(v0[40], v0[41], v0[66], v0[67], v0[51]);

  return MEMORY[0x2822009F8](sub_24F48914C, 0, 0);
}

uint64_t sub_24F48914C()
{
  v2 = v0[50];
  v1 = v0[51];
  v3 = v0[49];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[77] = *MEMORY[0x277CBE640];
  v4 = swift_task_alloc();
  v0[78] = v4;
  *v4 = v0;
  v4[1] = sub_24F489238;
  v5 = v0[52];

  return MEMORY[0x2822003E8](v0 + 13, 0, 0, v5);
}

uint64_t sub_24F489238()
{

  return MEMORY[0x2822009F8](sub_24F489334, 0, 0);
}

uint64_t sub_24F489334(__n128 a1)
{
  v3 = *(v1 + 104);
  v2 = *(v1 + 112);
  *(v1 + 632) = v3;
  *(v1 + 640) = v2;
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *(v1 + 648) = v4;
  *(v1 + 656) = v5;
  v6 = *(v1 + 136);
  *(v1 + 664) = v6;
  if (v4)
  {
    v8 = *(v1 + 464);
    v7 = *(v1 + 472);
    v9 = *(v1 + 280);
    v10 = *(v1 + 288);
    v16 = v10[1];
    v17 = *v10;
    v15 = *(*(v1 + 520) + 24);
    sub_24F48BA90(v10 + *(v1 + 704), v7 + v8[6], type metadata accessor for Game);
    sub_24F48BA90(v9, v7 + v8[7], type metadata accessor for Player);
    sub_24E7D14D8(v10 + v15, v7 + v8[8]);
    *v7 = v17;
    v7[1] = v16;
    v7[2] = v3;
    v7[3] = v2;
    v7[4] = v4;
    v7[5] = v5;
    v7[6] = v6;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);

    sub_24F48B9F8(v3, v2, v4);
    v12 = swift_task_alloc();
    *(v1 + 672) = v12;
    *v12 = v1;
    v12[1] = sub_24F4895B8;

    return MEMORY[0x28217F228](v1 + 144, v11, v11);
  }

  else
  {
    (*(*(v1 + 424) + 8))(*(v1 + 432), *(v1 + 416), a1);

    v13 = *(v1 + 8);

    return v13();
  }
}

uint64_t sub_24F4895B8()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_24F4898DC;
  }

  else
  {
    v2 = sub_24F4896CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F4896CC()
{
  v1 = v0[21];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v1);
  v3 = swift_task_alloc();
  v0[86] = v3;
  v4 = sub_24F48BA48(&qword_27F21D530, type metadata accessor for GameDetailsChallengesShelfConstructionIntent, &unk_24F9C10B8);
  *v3 = v0;
  v3[1] = sub_24F4897C8;
  v5 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
  v8 = v0[37];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24F4897C8()
{
  *(*v1 + 696) = v0;

  if (v0)
  {
    v2 = sub_24F48A054;
  }

  else
  {
    v2 = sub_24F489A4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F4898DC()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[53];
  v7 = v0[54];
  v8 = v0[52];
  sub_24F48BB88(v0[59], type metadata accessor for GameDetailsChallengesShelfConstructionIntent);
  sub_24E614F20(v5, v4, v3, v2, v1);
  (*(v6 + 8))(v7, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24F489A4C()
{
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[59];
  v5 = v0[56];
  v4 = v0[57];
  v6 = v0[55];
  v7 = v0[39];
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  sub_24F48BB88(v3, type metadata accessor for GameDetailsChallengesShelfConstructionIntent);
  sub_24F48BA90(v1, v2, type metadata accessor for GSKShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_24F489B58, v7, 0);
}

uint64_t sub_24F489B58()
{
  v1 = v0[81];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[47];
    v49 = *(v0[46] + 24);
    v50 = v0[48];
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    swift_beginAccess();
    v48 = *(v3 + 72);
    v47 = v0 + 4;
    while (1)
    {
      v9 = v0[48];
      v10 = v0[45];
      v12 = v0[42];
      v11 = v0[43];
      v13 = v0[39];
      sub_24F48BA90(v4, v9, type metadata accessor for Challenge);
      v15 = *v9;
      v14 = v9[1];
      (*(v11 + 16))(v10, v50 + v49, v12);

      sub_24F48BB88(v9, type metadata accessor for Challenge);
      if (*(*(v13 + 152) + 16))
      {

        sub_24E76D644(v15, v14);
        if (v16)
        {
          v17 = v0[43];

          (*(v17 + 8))(v0[45], v0[42]);
          goto LABEL_5;
        }
      }

      v51 = v4;
      v52 = v2;
      v55 = v0[77];
      v18 = v0[44];
      v19 = v0[43];
      v53 = v0[42];
      v20 = v0[39];
      sub_24F91F568();
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      v23 = v15;
      v54 = v15;
      v24 = v22;
      v22[2] = v23;
      v22[3] = v14;
      v22[4] = v21;
      v25 = objc_allocWithZone(MEMORY[0x277CBEBB8]);

      v26 = sub_24F91F578();
      v0[6] = sub_24E7D0E80;
      v0[7] = v24;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_24ECAEFC8;
      v0[5] = &block_descriptor_153;
      v27 = _Block_copy(v0 + 2);
      v28 = [v25 initWithFireDate:v26 interval:0 repeats:v27 block:{0.0, v47}];
      _Block_release(v27);

      v29 = *(v19 + 8);
      v29(v18, v53);

      v30 = [objc_opt_self() mainRunLoop];
      [v30 addTimer:v28 forMode:v55];

      swift_beginAccess();
      v31 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v20 + 152);
      v0[34] = v33;
      *(v20 + 152) = 0x8000000000000000;
      v34 = sub_24E76D644(v54, v14);
      v37 = *(v33 + 16);
      v38 = (v35 & 1) == 0;
      v39 = __OFADD__(v37, v38);
      v40 = v37 + v38;
      if (v39)
      {
        __break(1u);
LABEL_28:
        __break(1u);
        return MEMORY[0x2822009F8](v34, v35, v36);
      }

      v41 = v35;
      if (*(v33 + 24) < v40)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v45 = v34;
      sub_24E8AEDB4();
      v34 = v45;
      if ((v41 & 1) == 0)
      {
LABEL_16:
        v6 = v0[34];
        v6[(v34 >> 6) + 8] |= 1 << v34;
        v42 = (v6[6] + 16 * v34);
        *v42 = v54;
        v42[1] = v14;
        *(v6[7] + 8 * v34) = v31;
        v43 = v6[2];
        v39 = __OFADD__(v43, 1);
        v44 = v43 + 1;
        if (v39)
        {
          goto LABEL_28;
        }

        v6[2] = v44;
        goto LABEL_4;
      }

LABEL_3:
      v5 = v34;

      v6 = v0[34];
      v7 = v6[7];
      v8 = *(v7 + 8 * v5);
      *(v7 + 8 * v5) = v31;

LABEL_4:
      *(v0[39] + 152) = v6;
      swift_endAccess();

      v4 = v51;
      v2 = v52;
      v29(v0[45], v0[42]);
LABEL_5:
      v4 += v48;
      if (!--v2)
      {
        v1 = v0[81];
        goto LABEL_21;
      }
    }

    sub_24E89B0F0(v40, isUniquelyReferenced_nonNull_native);
    v34 = sub_24E76D644(v54, v14);
    if ((v41 & 1) != (v35 & 1))
    {

      return sub_24F92CF88();
    }

LABEL_15:
    if ((v41 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_3;
  }

LABEL_21:
  sub_24E614F20(v0[79], v0[80], v1, v0[82], v0[83]);
  v34 = sub_24F48A1CC;
  v35 = 0;
  v36 = 0;

  return MEMORY[0x2822009F8](v34, v35, v36);
}

uint64_t sub_24F48A054()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[53];
  v7 = v0[54];
  v8 = v0[52];
  sub_24F48BB88(v0[59], type metadata accessor for GameDetailsChallengesShelfConstructionIntent);
  sub_24E614F20(v5, v4, v3, v2, v1);
  (*(v6 + 8))(v7, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24F48A1CC()
{
  sub_24F48BB88(v0[61], type metadata accessor for GSKShelf);
  v1 = swift_task_alloc();
  v0[78] = v1;
  *v1 = v0;
  v1[1] = sub_24F489238;
  v2 = v0[52];

  return MEMORY[0x2822003E8](v0 + 13, 0, 0, v2);
}

uint64_t sub_24F48A290()
{

  v1 = *(v0 + 552);
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "GameDetailsChallengesShelfIntent failed to create shelf: %@", v6, 0xCu);
    sub_24E6D44CC(v7);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 312);

  return MEMORY[0x2822009F8](sub_24F4890D4, v10, 0);
}

uint64_t sub_24F48A43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24F487098(a1, a2, a3);
}

uint64_t sub_24F48A500()
{
  v1 = type metadata accessor for GameDetailsChallengesShelfIntent(0);
  v31 = *(*(v1 - 8) + 80);

  v2 = v0 + ((v31 + 40) & ~v31);

  v3 = v2 + *(v1 + 20);

  v4 = type metadata accessor for Game(0);
  v5 = v4[18];
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);
  v9 = v4[19];
  v29 = *(v7 + 48);
  if (!v29(v3 + v9, 1, v6))
  {
    v8(v3 + v9, v6);
  }

  v30 = v8;

  v10 = v4[21];
  v11 = sub_24F920818();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v13 = v2 + *(v1 + 24);
  v14 = type metadata accessor for Page.Background(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v30(v13, v6);
          v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v19 = sub_24F922348();
          v20 = *(v19 - 8);
          if (!(*(v20 + 48))(v13 + v18, 1, v19))
          {
            (*(v20 + 8))(v13 + v18, v19);
          }
        }
      }

      else
      {
        v30(v13, v6);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      if (!v29(v13, 1, v6))
      {
        v30(v13, v6);
      }

      v21 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v22 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
      {
        v23 = sub_24F91F4A8();
        (*(*(v23 - 8) + 8))(v21, v23);
        v30(v21 + v22[5], v6);
        v24 = v22[9];
        v25 = sub_24F928698();
        v26 = *(v25 - 8);
        v27 = *(v26 + 48);
        if (!v27(v21 + v24, 1, v25))
        {
          (*(v26 + 8))(v21 + v24, v25);
        }

        v28 = v22[10];
        if (!v27(v21 + v28, 1, v25))
        {
          (*(v26 + 8))(v21 + v28, v25);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v17 = sub_24F928388();
      (*(*(v17 - 8) + 8))(v13, v17);
    }
  }

  return swift_deallocObject();
}

double sub_24F48AAA8(uint64_t a1)
{
  v3 = *(type metadata accessor for GameDetailsChallengesShelfIntent(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_24F487DF4(a1, v4, v5, v6, v7);
}

uint64_t sub_24F48AB20()
{
  v1 = type metadata accessor for Player(0);
  v61 = *(*(v1 - 1) + 80);
  v55 = *(*(v1 - 1) + 64);
  v64 = type metadata accessor for GameDetailsChallengesShelfIntent(0);
  v2 = *(*(v64 - 8) + 80);
  v58 = *(*(v64 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v59 = *(v3 - 8);
  v60 = v3;
  v57 = *(v59 + 80);
  swift_unknownObjectRelease();
  v65 = v0;
  v56 = (v61 + 32) & ~v61;
  v4 = v0 + v56;

  v5 = v1[6];
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v4 + v5, v6);

  if (*(v4 + v1[9] + 8) != 1)
  {
  }

  v9 = v4 + v1[13];
  v10 = type metadata accessor for CallProviderConversationHandleSet(0);
  v62 = v8;
  v63 = v2;
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v11 = type metadata accessor for CallProviderConversationHandle(0);
    v12 = *(*(v11 - 8) + 48);
    if (!v12(v9, 1, v11))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v7 + 48))(v9 + v13, 1, v6))
      {
        v62(v9 + v13, v6);
      }
    }

    v14 = v9 + *(v10 + 20);
    if (!v12(v14, 1, v11))
    {

      v15 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v7 + 48))(v14 + v15, 1, v6))
      {
        v62(v14 + v15, v6);
      }
    }

    v8 = v62;
    v2 = v63;
  }

  if (*(v4 + v1[15] + 8))
  {
  }

  v16 = v56 + v55 + v2;
  v17 = v4 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v17, 1, PlayedTogetherInfo))
  {

    v19 = type metadata accessor for Game(0);
    v8(v17 + v19[18], v6);
    v20 = v19[19];
    if (!(*(v7 + 48))(v17 + v20, 1, v6))
    {
      v8(v17 + v20, v6);
    }

    v21 = v19[21];
    v22 = sub_24F920818();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v17 + v21, 1, v22))
    {
      (*(v23 + 8))(v17 + v21, v22);
    }

    v8 = v62;
    v2 = v63;
  }

  v24 = v16 & ~v2;
  v25 = v4 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v25, 1, ChallengeInfo))
  {

    v27 = type metadata accessor for Game(0);
    v8(v25 + v27[18], v6);
    v28 = v27[19];
    if (!(*(v7 + 48))(v25 + v28, 1, v6))
    {
      v8(v25 + v28, v6);
    }

    v29 = v27[21];
    v30 = sub_24F920818();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v25 + v29, 1, v30))
    {
      (*(v31 + 8))(v25 + v29, v30);
    }
  }

  v32 = v65 + v24 + *(v64 + 20);

  v33 = type metadata accessor for Game(0);
  v8(v32 + v33[18], v6);
  v34 = v33[19];
  v35 = *(v7 + 48);
  if (!v35(v32 + v34, 1, v6))
  {
    v8(v32 + v34, v6);
  }

  v36 = v33[21];
  v37 = sub_24F920818();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v32 + v36, 1, v37))
  {
    (*(v38 + 8))(v32 + v36, v37);
  }

  v39 = v65 + v24 + *(v64 + 24);
  v40 = type metadata accessor for Page.Background(0);
  if (!(*(*(v40 - 8) + 48))(v39, 1, v40))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v62(v39, v6);
          v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v45 = sub_24F922348();
          v46 = *(v45 - 8);
          if (!(*(v46 + 48))(v39 + v44, 1, v45))
          {
            (*(v46 + 8))(v39 + v44, v45);
          }
        }
      }

      else
      {
        v62(v39, v6);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      if (!v35(v39, 1, v6))
      {
        v62(v39, v6);
      }

      v47 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v48 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v48 - 1) + 48))(v47, 1, v48))
      {
        v49 = sub_24F91F4A8();
        (*(*(v49 - 8) + 8))(v47, v49);
        v62(v47 + v48[5], v6);
        v50 = v48[9];
        v51 = sub_24F928698();
        v52 = *(v51 - 8);
        v53 = *(v52 + 48);
        if (!v53(v47 + v50, 1, v51))
        {
          (*(v52 + 8))(v47 + v50, v51);
        }

        v54 = v48[10];
        if (!v53(v47 + v54, 1, v51))
        {
          (*(v52 + 8))(v47 + v54, v51);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v43 = sub_24F928388();
      (*(*(v43 - 8) + 8))(v39, v43);
    }
  }

  (*(v59 + 8))(v65 + ((((v58 + v24 + 7) & 0xFFFFFFFFFFFFFFF8) + v57 + 8) & ~v57), v60);

  return swift_deallocObject();
}

uint64_t sub_24F48B768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F48B7D0(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for Player(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for GameDetailsChallengesShelfIntent(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v1 + v9);
  v13 = *(v1 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_24E614970;

  return sub_24F4880F8(a1, v14, v15, v1 + v5, v1 + v8, v12, v1 + v11, v13);
}

double sub_24F48B9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24F48BA48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F48BA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F48BAF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F48BB30()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_153(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F48BB88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F48BBE8()
{
  v1 = type metadata accessor for GameDetailsChallengesShelfIntent(0);
  v31 = *(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v2 = v0 + ((v31 + 56) & ~v31);

  v3 = v2 + *(v1 + 20);

  v4 = type metadata accessor for Game(0);
  v5 = v4[18];
  v6 = sub_24F9289E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v3 + v5, v6);
  v9 = v4[19];
  v29 = *(v7 + 48);
  if (!v29(v3 + v9, 1, v6))
  {
    v8(v3 + v9, v6);
  }

  v30 = v8;

  v10 = v4[21];
  v11 = sub_24F920818();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v3 + v10, v11);
  }

  v13 = v2 + *(v1 + 24);
  v14 = type metadata accessor for Page.Background(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v30(v13, v6);
          v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v19 = sub_24F922348();
          v20 = *(v19 - 8);
          if (!(*(v20 + 48))(v13 + v18, 1, v19))
          {
            (*(v20 + 8))(v13 + v18, v19);
          }
        }
      }

      else
      {
        v30(v13, v6);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      if (!v29(v13, 1, v6))
      {
        v30(v13, v6);
      }

      v21 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48);
      v22 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
      {
        v23 = sub_24F91F4A8();
        (*(*(v23 - 8) + 8))(v21, v23);
        v30(v21 + v22[5], v6);
        v24 = v22[9];
        v25 = sub_24F928698();
        v26 = *(v25 - 8);
        v27 = *(v26 + 48);
        if (!v27(v21 + v24, 1, v25))
        {
          (*(v26 + 8))(v21 + v24, v25);
        }

        v28 = v22[10];
        if (!v27(v21 + v28, 1, v25))
        {
          (*(v26 + 8))(v21 + v28, v25);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v17 = sub_24F928388();
      (*(*(v17 - 8) + 8))(v13, v17);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F48C198(uint64_t a1)
{
  v4 = *(type metadata accessor for GameDetailsChallengesShelfIntent(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_24E614970;

  return sub_24F487FE4(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_24F48C2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F48C378(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GameLibraryMenuShelfConstructionIntent(uint64_t a1)
{
  result = qword_27F244A80;
  if (!qword_27F244A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F48C468(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F48C518@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v7 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v7;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0x64656863746566;
    *(inited + 56) = 0xE700000000000000;
    *(inited + 88) = 0x64656863746566;
    *(inited + 96) = 0xE700000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
    v8 = swift_initStackObject();
    *(v8 + 16) = xmmword_24F93DE60;
    *(v8 + 32) = 0x65756C6176;
    *(v8 + 40) = 0xE500000000000000;
    *(v8 + 48) = a1;
    *(v8 + 56) = a2;

    v9 = sub_24E6086DC(v8);
    swift_setDeallocating();
    sub_24E772B08(v8 + 32);
    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    *(inited + 136) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0);
    *(inited + 104) = v9;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    *(inited + 32) = 0x646E696B24;
    v10 = MEMORY[0x277D22580];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v10;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = 0x676E696863746566;
    *(inited + 56) = 0xE800000000000000;
    *(inited + 88) = 0x676E696863746566;
    *(inited + 96) = 0xE800000000000000;
    *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    *(inited + 136) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20, &qword_24F9482B0);
    *(inited + 104) = MEMORY[0x277D84F98];
  }

  v11 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
  a3[3] = v12;
  a3[4] = result;
  *a3 = v11;
  return result;
}

uint64_t sub_24F48C7D0(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244AF0, &qword_24F9FCC50);
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244AF8, &qword_24F9FCC58);
  v16 = *(v7 - 8);
  v17 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244B00, &unk_24F9FCC60);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F48E0CC();
  v14 = v20;
  sub_24F92D128();
  if (v14)
  {
    v22 = 1;
    sub_24F48E120();
    sub_24F92CC98();
    sub_24F92CD08();
    (*(v18 + 8))(v6, v4);
  }

  else
  {
    v21 = 0;
    sub_24F48E174();
    sub_24F92CC98();
    (*(v16 + 8))(v9, v17);
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24F48CAC4()
{
  if (*v0)
  {
    return 0x64656863746566;
  }

  else
  {
    return 0x676E696863746566;
  }
}

uint64_t sub_24F48CB00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696863746566 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000)
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

uint64_t sub_24F48CBDC(uint64_t a1)
{
  v2 = sub_24F48E0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F48CC18(uint64_t a1)
{
  v2 = sub_24F48E0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F48CC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F48CCEC(uint64_t a1)
{
  v2 = sub_24F48E120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F48CD28(uint64_t a1)
{
  v2 = sub_24F48E120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F48CD64(uint64_t a1)
{
  v2 = sub_24F48E174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F48CDA0(uint64_t a1)
{
  v2 = sub_24F48E174();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24F48CDDC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24F48DBC0(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_24F48CE40@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A070;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v5;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 88) = 0x726579616C70;
  *(inited + 96) = 0xE600000000000000;
  v6 = type metadata accessor for GameLibraryMenuShelfConstructionIntent(0);
  v7 = v6[5];
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F48DACC(v1 + v7, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 144) = 0x656D6147736168;
  *(inited + 152) = 0xE700000000000000;
  v9 = *(v1 + v6[6]);
  v10 = MEMORY[0x277D839B0];
  v11 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v11;
  *(inited + 160) = v9;
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x800000024FA757E0;
  v12 = *(v1 + v6[7]);
  *(inited + 240) = MEMORY[0x277D83B88];
  v13 = sub_24E65901C();
  *(inited + 216) = v12;
  *(inited + 248) = v13;
  *(inited + 256) = 0xD000000000000012;
  *(inited + 264) = 0x800000024FA74710;
  v14 = *(v1 + v6[8]);
  *(inited + 296) = v10;
  *(inited + 304) = v11;
  *(inited + 272) = v14;
  strcpy((inited + 312), "arcadeSubtitle");
  *(inited + 327) = -18;
  v15 = (v1 + v6[9]);
  v16 = *v15;
  v17 = v15[1];
  v18 = MEMORY[0x277D222B0];
  *(inited + 352) = MEMORY[0x277D222B8];
  *(inited + 360) = v18;
  v19 = swift_allocObject();
  *(inited + 328) = v19;
  v19[5] = &type metadata for GameLibraryMenuShelfConstructionIntent.ArcadeSubtitle;
  v19[6] = sub_24F48DB6C();
  v19[2] = v16;
  v19[3] = v17;

  v20 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v21 = sub_24E80FFAC(v20);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20, &qword_24F93E370);
  a1[4] = result;
  *a1 = v21;
  return result;
}

uint64_t sub_24F48D120(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244AA8, &unk_24F9FCC20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F48D970();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for GameLibraryMenuShelfConstructionIntent(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Player(0);
    sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    LOBYTE(v12) = 2;
    sub_24F92CD18();
    LOBYTE(v12) = 3;
    sub_24F92CD38();
    LOBYTE(v12) = 4;
    sub_24F92CD18();
    v12 = *(v3 + *(v9 + 36));
    v11[15] = 5;
    sub_24F48DA78();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F48D390@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244A90, &qword_24F9FCC18);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for GameLibraryMenuShelfConstructionIntent(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F48D970();
  v21 = v8;
  v12 = v22;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = a1;
  v13 = v19;
  v14 = v20;
  LOBYTE(v23) = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v15;
  LOBYTE(v23) = 1;
  sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E61C0A8(v5, v11 + v9[5]);
  LOBYTE(v23) = 2;
  *(v11 + v9[6]) = sub_24F92CC38() & 1;
  LOBYTE(v23) = 3;
  *(v11 + v9[7]) = sub_24F92CC58();
  LOBYTE(v23) = 4;
  *(v11 + v9[8]) = sub_24F92CC38() & 1;
  v24 = 5;
  sub_24F48D9C4();
  sub_24F92CC68();
  (*(v13 + 8))(v21, v14);
  *(v11 + v9[9]) = v23;
  sub_24F48DACC(v11, v18, type metadata accessor for GameLibraryMenuShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_24F48DA18(v11, type metadata accessor for GameLibraryMenuShelfConstructionIntent);
}

unint64_t sub_24F48D79C()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0xD000000000000016;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x7553656461637261;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x726579616C70;
  if (v1 != 1)
  {
    v5 = 0x656D6147736168;
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

uint64_t sub_24F48D868@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F48E5D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F48D890(uint64_t a1)
{
  v2 = sub_24F48D970();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F48D8CC(uint64_t a1)
{
  v2 = sub_24F48D970();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F48D970()
{
  result = qword_27F244A98;
  if (!qword_27F244A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244A98);
  }

  return result;
}

unint64_t sub_24F48D9C4()
{
  result = qword_27F244AA0;
  if (!qword_27F244AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244AA0);
  }

  return result;
}

uint64_t sub_24F48DA18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F48DA78()
{
  result = qword_27F244AB0;
  if (!qword_27F244AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244AB0);
  }

  return result;
}

uint64_t sub_24F48DACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F48DB34()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_24F48DB6C()
{
  result = qword_27F244AB8;
  if (!qword_27F244AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244AB8);
  }

  return result;
}

void *sub_24F48DBC0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244AC0, &qword_24F9FCC30);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244AC8, &qword_24F9FCC38);
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244AD0, &unk_24F9FCC40);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v31 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24F48E0CC();
  v14 = v30;
  sub_24F92D108();
  if (!v14)
  {
    v26 = v5;
    v15 = v29;
    v30 = v9;
    v16 = sub_24F92CC78();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_24E643430();
    v19 = v8;
    v13 = v11;
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v21 = sub_24F92C918();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v23 = &type metadata for GameLibraryMenuShelfConstructionIntent.ArcadeSubtitle;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v30 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v36 = 1;
      sub_24F48E120();
      sub_24F92CBA8();
      v20 = v30;
      v27 = v11;
      v13 = sub_24F92CC28();
      (*(v28 + 8))(v4, v15);
      (*(v20 + 8))(v27, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      sub_24F48E174();
      sub_24F92CBA8();
      v25 = v30;
      (*(v27 + 1))(v7, v26);
      (*(v25 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v13;
}

unint64_t sub_24F48E0CC()
{
  result = qword_27F244AD8;
  if (!qword_27F244AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244AD8);
  }

  return result;
}

unint64_t sub_24F48E120()
{
  result = qword_27F244AE0;
  if (!qword_27F244AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244AE0);
  }

  return result;
}

unint64_t sub_24F48E174()
{
  result = qword_27F244AE8;
  if (!qword_27F244AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244AE8);
  }

  return result;
}

unint64_t sub_24F48E20C()
{
  result = qword_27F244B08;
  if (!qword_27F244B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B08);
  }

  return result;
}

unint64_t sub_24F48E264()
{
  result = qword_27F244B10;
  if (!qword_27F244B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B10);
  }

  return result;
}

unint64_t sub_24F48E2BC()
{
  result = qword_27F244B18;
  if (!qword_27F244B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B18);
  }

  return result;
}

unint64_t sub_24F48E314()
{
  result = qword_27F244B20;
  if (!qword_27F244B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B20);
  }

  return result;
}

unint64_t sub_24F48E36C()
{
  result = qword_27F244B28;
  if (!qword_27F244B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B28);
  }

  return result;
}

unint64_t sub_24F48E3C4()
{
  result = qword_27F244B30;
  if (!qword_27F244B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B30);
  }

  return result;
}

unint64_t sub_24F48E41C()
{
  result = qword_27F244B38;
  if (!qword_27F244B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B38);
  }

  return result;
}

unint64_t sub_24F48E474()
{
  result = qword_27F244B40;
  if (!qword_27F244B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B40);
  }

  return result;
}

unint64_t sub_24F48E4CC()
{
  result = qword_27F244B48;
  if (!qword_27F244B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B48);
  }

  return result;
}

unint64_t sub_24F48E524()
{
  result = qword_27F244B50;
  if (!qword_27F244B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B50);
  }

  return result;
}

unint64_t sub_24F48E57C()
{
  result = qword_27F244B58;
  if (!qword_27F244B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B58);
  }

  return result;
}

uint64_t sub_24F48E5D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6147736168 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA757E0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA74710 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7553656461637261 && a2 == 0xEE00656C74697462)
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

uint64_t ChallengeDetailHeaderShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t ChallengeDetailHeaderShelfIntent.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x444965676170;
  *(inited + 40) = 0xE600000000000000;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x676E656C6C616863;
  *(inited + 96) = 0xEF6C696174654465;
  v7 = type metadata accessor for ChallengeDetailHeaderShelfIntent(0);
  v8 = v7[5];
  *(inited + 128) = type metadata accessor for ChallengeDetail(0);
  *(inited + 136) = sub_24F48F2B8(&qword_27F21DD30, type metadata accessor for ChallengeDetail, &protocol conformance descriptor for ChallengeDetail);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24F48F300(v1 + v8, boxed_opaque_existential_1, type metadata accessor for ChallengeDetail);
  *(inited + 144) = 0x6F43657469766E69;
  *(inited + 152) = 0xEA00000000006564;
  v10 = (v1 + v7[6]);
  v11 = *v10;
  v12 = v10[1];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 184) = v13;
  v14 = sub_24E605DB4();
  *(inited + 160) = v11;
  *(inited + 168) = v12;
  *(inited + 192) = v14;
  *(inited + 200) = 0x4E72657469766E69;
  *(inited + 208) = 0xEB00000000656D61;
  v15 = (v1 + v7[7]);
  v16 = *v15;
  v17 = v15[1];
  *(inited + 240) = v13;
  *(inited + 248) = v14;
  *(inited + 216) = v16;
  *(inited + 224) = v17;
  strcpy((inited + 256), "pageBackground");
  *(inited + 271) = -18;
  v18 = v7[8];
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 304) = sub_24E7D17FC();
  v19 = __swift_allocate_boxed_opaque_existential_1((inited + 272));
  sub_24E7D14D8(v1 + v18, v19);

  v20 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v21 = sub_24E80FFAC(v20);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v21;
  return result;
}

uint64_t type metadata accessor for ChallengeDetailHeaderShelfIntent(uint64_t a1)
{
  result = qword_27F244B70;
  if (!qword_27F244B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F48EB30()
{
  v1 = *v0;
  v2 = 0x444965676170;
  v3 = 0x6F43657469766E69;
  v4 = 0x4E72657469766E69;
  if (v1 != 3)
  {
    v4 = 0x6B63614265676170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676E656C6C616863;
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

uint64_t sub_24F48EBEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F48F814(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F48EC14(uint64_t a1)
{
  v2 = sub_24F48F200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F48EC50(uint64_t a1)
{
  v2 = sub_24F48F200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDetailHeaderShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = v27 - v4;
  v30 = type metadata accessor for ChallengeDetail(0);
  MEMORY[0x28223BE20](v30);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244B60, &qword_24F9FD0A0);
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v27 - v8;
  v10 = type metadata accessor for ChallengeDetailHeaderShelfIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F48F200();
  v13 = v33;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v33 = a1;
  v38 = 0;
  v14 = v12;
  *v12 = sub_24F92CC28();
  v12[1] = v15;
  v27[1] = v15;
  v37 = 1;
  sub_24F48F2B8(&qword_27F21DD48, type metadata accessor for ChallengeDetail, &protocol conformance descriptor for ChallengeDetail);
  sub_24F92CC68();
  sub_24F48F254(v6, v12 + v10[5]);
  v36 = 2;
  v30 = 0;
  v16 = sub_24F92CBC8();
  v17 = v33;
  v18 = v31;
  v19 = v14;
  v20 = (v14 + v10[6]);
  *v20 = v16;
  v20[1] = v21;
  v35 = 3;
  v22 = sub_24F92CBC8();
  v23 = (v14 + v10[7]);
  *v23 = v22;
  v23[1] = v24;
  type metadata accessor for Page.Background(0);
  v34 = 4;
  sub_24F48F2B8(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  v25 = v29;
  sub_24F92CC18();
  (*(v18 + 8))(v9, v32);
  sub_24E7DF71C(v25, v19 + v10[8]);
  sub_24F48F300(v19, v28, type metadata accessor for ChallengeDetailHeaderShelfIntent);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return sub_24F48F368(v19, type metadata accessor for ChallengeDetailHeaderShelfIntent);
}

unint64_t sub_24F48F200()
{
  result = qword_27F244B68;
  if (!qword_27F244B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B68);
  }

  return result;
}

uint64_t sub_24F48F254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeDetail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F48F2B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F48F300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F48F368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F48F3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ChallengeDetail(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F48F520(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for ChallengeDetail(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F48F650(uint64_t a1)
{
  type metadata accessor for ChallengeDetail(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24E7D231C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24F48F710()
{
  result = qword_27F244B80;
  if (!qword_27F244B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B80);
  }

  return result;
}

unint64_t sub_24F48F768()
{
  result = qword_27F244B88;
  if (!qword_27F244B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B88);
  }

  return result;
}

unint64_t sub_24F48F7C0()
{
  result = qword_27F244B90;
  if (!qword_27F244B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244B90);
  }

  return result;
}

uint64_t sub_24F48F814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E656C6C616863 && a2 == 0xEF6C696174654465 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F43657469766E69 && a2 == 0xEA00000000006564 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4E72657469766E69 && a2 == 0xEB00000000656D61 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B63614265676170 && a2 == 0xEE00646E756F7267)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F48F9DC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24F491F84(v6);
  return sub_24F92C958();
}

uint64_t ChallengesSuggestedGamesDataIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[10] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EBE0, &qword_24F95E500);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  v2[13] = v5;
  v2[14] = v6;
  v2[15] = v7;

  return MEMORY[0x2822009F8](sub_24F48FB30, 0, 0);
}

uint64_t sub_24F48FB30()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = swift_task_alloc();
  v0[16] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[17] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8, 0x277D0C170);
  *v4 = v0;
  v4[1] = sub_24F48FC3C;

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24F48FC3C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24F48FF40;
  }

  else
  {

    v2 = sub_24F48FD58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F48FD58()
{
  v1 = v0[7];
  v0[19] = [v1 internal];

  v2 = type metadata accessor for ASKBagContract(0);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_24F48FE2C;

  return MEMORY[0x28217F228](v0 + 8, v2, v2);
}

uint64_t sub_24F48FE2C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24F4905B0;
  }

  else
  {
    v2 = sub_24F48FFAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F48FF40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F48FFAC()
{
  v0[22] = v0[8];
  if (qword_27F210A20 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_24F92A398();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  v0[23] = v0[9];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720, &qword_24F940B20);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = sub_24F49011C;

  return MEMORY[0x28217F228](v0 + 2, v4, v4);
}

uint64_t sub_24F49011C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_24F490754;
  }

  else
  {
    v2 = sub_24F490230;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F490230()
{
  v9 = v0;
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v8 = 33;
  v3 = (*(v2 + 8))(&v8, v1, v2);
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_24F490314;
  v5 = v0[23];
  v6 = v0[19];

  return sub_24F490AB4(v6, v5, v3 & 1);
}

uint64_t sub_24F490314(uint64_t a1)
{
  v3 = *v2;
  v3[27] = a1;
  v3[28] = v1;

  if (v1)
  {
    v4 = sub_24F490900;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 2);
    v4 = sub_24F490430;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F490430()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[19];
  if (v4)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v5 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "ChallengesSuggestedGamesDataIntentImplementation fetched with %ld suggestions", v7, 0xCu);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v8 = v0[27];

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_24F4905B0()
{
  v1 = v0[21];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesSuggestedGamesDataIntentImplementation failed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[19];

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F490754()
{

  v1 = v0[25];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesSuggestedGamesDataIntentImplementation failed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[19];

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F490900()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[28];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "ChallengesSuggestedGamesDataIntentImplementation failed: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v10 = v0[19];

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F490AB4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 72) = a3;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  return MEMORY[0x2822009F8](sub_24F490AD8, 0, 0);
}

uint64_t sub_24F490AD8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  v3 = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];
  *(v0 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *(v4 + 32) = v1;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E0, &qword_24F96B290);
  *v5 = v0;
  v5[1] = sub_24F490C14;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000050, 0x800000024FA75800, sub_24F491E1C, v4, v6);
}

uint64_t sub_24F490C14()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_24F490D98;
  }

  else
  {

    v2 = sub_24F490D30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F490D30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_24F490D98()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24F490E04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E8, &qword_24F9FD320);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  v13 = [objc_opt_self() proxyForPlayer_];
  v14 = [v13 gameStatServicePrivate];

  v15 = sub_24F92B098();
  (*(v9 + 16))(v12, a1, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  (*(v9 + 32))(v17 + v16, v12, v8);
  *(v17 + v16 + v10) = a4;
  aBlock[4] = sub_24F491EC0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EFA60B8;
  aBlock[3] = &block_descriptor_154;
  v18 = _Block_copy(aBlock);

  [v14 getGamesFriendsPlayed:10 type:v15 withinSecs:a3 matchingBundleIDs:0 handler:v18];
  _Block_release(v18);
  swift_unknownObjectRelease();
}

void sub_24F491040(unint64_t a1, void *a2, uint64_t a3, int a4)
{
  LODWORD(v4) = a4;
  v86 = a3;
  v95 = a1;
  v6 = type metadata accessor for GameSuggestion(0);
  v90 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Player(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v79 - v14;
  v16 = type metadata accessor for Game(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v79 - v21);
  MEMORY[0x28223BE20](v23);
  if (a2)
  {
    v96 = a2;
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E8, &qword_24F9FD320);
    sub_24F92B788();
    return;
  }

  v81 = v10;
  v83 = &v79 - v24;
  v89 = v6;
  v79 = v15;
  v85 = v12;

  v96 = sub_24EC4E0E0(v26);
  sub_24F48F9DC(&v96);
  v27 = v96;
  if ((v96 & 0x8000000000000000) != 0 || (v96 & 0x4000000000000000) != 0)
  {
LABEL_67:
    v28 = sub_24F92C738();
  }

  else
  {
    v28 = *(v96 + 16);
  }

  v82 = v17;
  v91 = v8;
  if (v28)
  {
    v29 = 0;
    v30 = 0;
    v31 = MEMORY[0x277D84F90];
    v17 = MEMORY[0x277D84F98];
    v94 = v19;
    v95 = v27 & 0xC000000000000001;
    v92 = v28;
    v93 = v27;
    v80 = v4;
    while (1)
    {
      if (v95)
      {
        v32 = MEMORY[0x253052270](v29, v27);
        v33 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v29 >= *(v27 + 16))
        {
          goto LABEL_65;
        }

        v32 = *(v27 + 8 * v29 + 32);
        v33 = (v29 + 1);
        if (__OFADD__(v29, 1))
        {
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
          goto LABEL_67;
        }
      }

      v19 = v32;
      v34 = [v19 lastPlayedGame];
      if (v34)
      {
        v35 = v34;
        if ((v4 & 1) != 0 && ([v34 supportsLeaderboards] & 1) != 0 && objc_msgSend(v35, sel_numberOfLeaderboards))
        {
          v87 = v30;

          v88 = v35;
          v36 = [v88 bundleIdentifier];
          v37 = sub_24F92B0D8();
          v39 = v38;

          if (*(v17 + 16))
          {
            sub_24E76D644(v37, v39);
            v41 = v40;

            v42 = v85;
            if (v41)
            {
              v84 = v31;
              goto LABEL_30;
            }
          }

          else
          {

            v42 = v85;
          }

          v43 = sub_24F91F648();
          v44 = v79;
          (*(*(v43 - 8) + 56))(v79, 1, 1, v43);
          v45 = v88;
          sub_24E7EDF8C(v45, v44, v83);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_24E616850(0, v31[2] + 1, 1, v31);
          }

          v47 = v31[2];
          v46 = v31[3];
          if (v47 >= v46 >> 1)
          {
            v31 = sub_24E616850((v46 > 1), v47 + 1, 1, v31);
          }

          v31[2] = v47 + 1;
          v48 = (*(v82 + 80) + 32) & ~*(v82 + 80);
          v84 = v31;
          sub_24E960F10(v83, v31 + v48 + *(v82 + 72) * v47, type metadata accessor for Game);
LABEL_30:
          v49 = v88;
          v50 = [v88 bundleIdentifier];

          v51 = sub_24F92B0D8();
          v4 = v52;

          sub_24F3FAC70(v19, 0, 0, v42);
          sub_24E824448(v87, 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v96 = v17;
          v27 = v17;
          v8 = sub_24E76D644(v51, v4);
          v55 = v17;
          v56 = *(v17 + 16);
          v57 = (v54 & 1) == 0;
          v58 = v56 + v57;
          if (__OFADD__(v56, v57))
          {
            goto LABEL_66;
          }

          v59 = v54;
          if (*(v55 + 24) >= v58)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v62 = v96;
              if ((v54 & 1) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              sub_24E8B07DC();
              v62 = v96;
              if ((v59 & 1) == 0)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
            sub_24E89DAD4(v58, isUniquelyReferenced_nonNull_native);
            v60 = sub_24E76D644(v51, v4);
            if ((v59 & 1) != (v61 & 1))
            {
              sub_24F92CF88();
              __break(1u);

              __break(1u);
              return;
            }

            v8 = v60;
            v62 = v96;
            if ((v59 & 1) == 0)
            {
LABEL_34:
              sub_24EC275F0(v8, v51, v4, MEMORY[0x277D84F90], v62);
LABEL_38:
              v63 = v62;
              v4 = *(v62 + 56);
              v64 = *(v4 + 8 * v8);
              v65 = swift_isUniquelyReferenced_nonNull_native();
              *(v4 + 8 * v8) = v64;
              if ((v65 & 1) == 0)
              {
                v64 = sub_24E618138(0, v64[2] + 1, 1, v64);
                *(v4 + 8 * v8) = v64;
              }

              v67 = v64[2];
              v66 = v64[3];
              if (v67 >= v66 >> 1)
              {
                *(v4 + 8 * v8) = sub_24E618138((v66 > 1), v67 + 1, 1, v64);
              }

              v68 = *(v4 + 8 * v8);
              *(v68 + 16) = v67 + 1;
              sub_24E960F10(v85, v68 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v67, type metadata accessor for Player);
              v30 = sub_24E95DAD0;
              v8 = v91;
              v17 = v63;
              v31 = v84;
              LODWORD(v4) = v80;
              goto LABEL_10;
            }
          }

          goto LABEL_38;
        }
      }

LABEL_10:
      ++v29;
      v27 = v93;
      v19 = v94;
      if (v33 == v92)
      {

        goto LABEL_47;
      }
    }
  }

  v30 = 0;
  v17 = MEMORY[0x277D84F98];
  v31 = MEMORY[0x277D84F90];
LABEL_47:
  v87 = v30;
  v69 = v31[2];
  if (v69)
  {
    v70 = v31 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v71 = *(v82 + 72);
    v72 = MEMORY[0x277D84F90];
    do
    {
      sub_24E69BF7C(v70, v22);
      if (v72[2] >= 3uLL)
      {
        sub_24E69BFE0(v22);
      }

      else
      {
        sub_24E69BF7C(v22, v19);
        if (*(v17 + 16) && (v73 = sub_24E76D644(*v22, v22[1]), (v74 & 1) != 0))
        {
          v75 = *(*(v17 + 56) + 8 * v73);
        }

        else
        {
          v75 = MEMORY[0x277D84F90];
        }

        sub_24E960F10(v19, v8, type metadata accessor for Game);
        *(v8 + *(v89 + 20)) = v75;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v72 = sub_24E618110(0, v72[2] + 1, 1, v72);
        }

        v77 = v72[2];
        v76 = v72[3];
        if (v77 >= v76 >> 1)
        {
          v72 = sub_24E618110((v76 > 1), v77 + 1, 1, v72);
        }

        sub_24E69BFE0(v22);
        v72[2] = v77 + 1;
        v78 = v72 + ((*(v90 + 80) + 32) & ~*(v90 + 80)) + *(v90 + 72) * v77;
        v8 = v91;
        sub_24E960F10(v91, v78, type metadata accessor for GameSuggestion);
      }

      v70 += v71;
      --v69;
    }

    while (v69);
  }

  else
  {

    v72 = MEMORY[0x277D84F90];
  }

  v96 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E8, &qword_24F9FD320);
  sub_24F92B798();

  sub_24E824448(v87, 0);
}

uint64_t sub_24F491988(id *a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = sub_24F91F648();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v35 - v18;
  v20 = *a2;
  v21 = &selRef_systemBackgroundColor;
  v22 = [*a1 lastPlayedDate];
  v37 = v19;
  if (v22)
  {
    v23 = v22;
    sub_24F91F608();

    v24 = *(v10 + 32);
    v24(v8, v15, v9);
    v36 = *(v10 + 56);
    v36(v8, 0, 1, v9);
    v24(v19, v8, v9);
    v21 = &selRef_systemBackgroundColor;
  }

  else
  {
    v36 = *(v10 + 56);
    v36(v8, 1, 1, v9);
    sub_24F91F618();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_24E601704(v8, &unk_27F22EC30, &qword_24F939880);
    }
  }

  v25 = [v20 v21[76]];
  if (v25)
  {
    v26 = v25;
    sub_24F91F608();

    v27 = *(v10 + 32);
    v28 = v38;
    v27(v38, v15, v9);
    v36(v28, 0, 1, v9);
    v27(v12, v28, v9);
    v29 = v37;
  }

  else
  {
    v30 = v38;
    v36(v38, 1, 1, v9);
    sub_24F91F618();
    v31 = (*(v10 + 48))(v30, 1, v9);
    v29 = v37;
    if (v31 != 1)
    {
      sub_24E601704(v30, &unk_27F22EC30, &qword_24F939880);
    }
  }

  v32 = sub_24F91F588();
  v33 = *(v10 + 8);
  v33(v12, v9);
  v33(v29, v9);
  return v32 & 1;
}

uint64_t sub_24F491D68(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return ChallengesSuggestedGamesDataIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_24F491E28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E8, &qword_24F9FD320);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

void sub_24F491EC0(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2229E8, &qword_24F9FD320) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  sub_24F491040(a1, a2, v6, v7);
}

uint64_t block_copy_helper_154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_24F491F84(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24E69A5C4(0, &qword_27F235820, 0x277D0C038);
        v6 = sub_24F92B618();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_24F492530(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_24F492098(0, v2, 1, a1);
  }
}

void sub_24F492098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v13 = sub_24F91F648();
  MEMORY[0x28223BE20](v13);
  v60 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v46 - v16;
  MEMORY[0x28223BE20](v17);
  v51 = &v46 - v19;
  v47 = a2;
  if (a3 != a2)
  {
    v56 = (v18 + 32);
    v20 = *a4;
    v59 = (v18 + 56);
    v52 = (v18 + 48);
    v53 = (v18 + 8);
    v54 = v20;
    v21 = v20 + 8 * a3 - 8;
    v22 = a1 - a3;
LABEL_5:
    v49 = v21;
    v50 = a3;
    v23 = *(v54 + 8 * a3);
    v48 = v22;
    v24 = v51;
    while (1)
    {
      v25 = *v21;
      v26 = v23;
      v61 = v25;
      v58 = v26;
      v27 = [v26 lastPlayedDate];
      if (v27)
      {
        v28 = v27;
        v29 = v57;
        sub_24F91F608();

        v30 = *v56;
        (*v56)(v12, v29, v13);
        v31 = *v59;
        (*v59)(v12, 0, 1, v13);
        v30(v24, v12, v13);
      }

      else
      {
        v31 = *v59;
        (*v59)(v12, 1, 1, v13);
        sub_24F91F618();
        if ((*v52)(v12, 1, v13) != 1)
        {
          sub_24E601704(v12, &unk_27F22EC30, &qword_24F939880);
        }
      }

      v32 = [v61 lastPlayedDate];
      if (v32)
      {
        v33 = v57;
        v34 = v32;
        sub_24F91F608();

        v35 = *v56;
        v36 = v12;
        v37 = v55;
        v38 = v33;
        v24 = v51;
        (*v56)(v55, v38, v13);
        v31(v37, 0, 1, v13);
        v39 = v37;
        v12 = v36;
        v35(v60, v39, v13);
      }

      else
      {
        v40 = v55;
        v31(v55, 1, 1, v13);
        sub_24F91F618();
        if ((*v52)(v40, 1, v13) != 1)
        {
          sub_24E601704(v55, &unk_27F22EC30, &qword_24F939880);
        }
      }

      v41 = v60;
      v42 = sub_24F91F588();
      v43 = *v53;
      (*v53)(v41, v13);
      v43(v24, v13);

      if ((v42 & 1) == 0)
      {
LABEL_4:
        a3 = v50 + 1;
        v21 = v49 + 8;
        v22 = v48 - 1;
        if (v50 + 1 == v47)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v54)
      {
        break;
      }

      v44 = *v21;
      v23 = *(v21 + 8);
      *v21 = v23;
      *(v21 + 8) = v44;
      v21 -= 8;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24F492530(uint64_t **a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v161 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v140 - v11;
  MEMORY[0x28223BE20](v12);
  v151 = &v140 - v13;
  MEMORY[0x28223BE20](v14);
  v149 = &v140 - v15;
  v16 = sub_24F91F648();
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v165 = &v140 - v18;
  MEMORY[0x28223BE20](v19);
  v148 = &v140 - v20;
  MEMORY[0x28223BE20](v21);
  v163 = &v140 - v22;
  MEMORY[0x28223BE20](v23);
  v152 = a3;
  v153 = &v140 - v26;
  if (*(a3 + 8) < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_106:
    a3 = *v144;
    if (!*v144)
    {
      goto LABEL_147;
    }

    a4 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    v135 = a4;
LABEL_109:
    v169 = v135;
    a4 = *(v135 + 2);
    if (a4 >= 2)
    {
      while (*v152)
      {
        v136 = *&v135[16 * a4];
        v137 = v135;
        v138 = *&v135[16 * a4 + 24];
        sub_24F4932B4((*v152 + 8 * v136), (*v152 + 8 * *&v135[16 * a4 + 16]), (*v152 + 8 * v138), a3);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v138 < v136)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_24E86164C(v137);
        }

        if (a4 - 2 >= *(v137 + 2))
        {
          goto LABEL_135;
        }

        v139 = &v137[16 * a4];
        *v139 = v136;
        *(v139 + 1) = v138;
        v169 = v137;
        sub_24E8615C0(a4 - 1);
        v135 = v169;
        a4 = *(v169 + 2);
        if (a4 <= 1)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_145;
    }

LABEL_117:

    return;
  }

  v27 = *(a3 + 8);
  v141 = a4;
  v28 = 0;
  v162 = (v24 + 32);
  v166 = (v24 + 56);
  v155 = (v24 + 48);
  v29 = MEMORY[0x277D84F90];
  v160 = (v24 + 8);
  v156 = v16;
  v157 = v25;
  while (1)
  {
    v30 = v28;
    if (v28 + 1 >= v27)
    {
      v43 = v28 + 1;
    }

    else
    {
      v154 = v27;
      v143 = v29;
      a4 = *v152;
      v31 = *(*v152 + 8 * (v28 + 1));
      v167 = *(*v152 + 8 * v28);
      v32 = v167;
      v168 = v31;
      v33 = v31;
      a3 = v32;
      LODWORD(v159) = sub_24F491988(&v168, &v167);
      if (v5)
      {

        return;
      }

      v34 = v28 + 2;
      v142 = v28;
      v147 = 8 * v28;
      v35 = (a4 + 8 * v28 + 16);
      v150 = 0;
      while (1)
      {
        v43 = v154;
        if (v154 == v34)
        {
          break;
        }

        v44 = *(v35 - 1);
        v45 = *v35;
        v46 = v44;
        v164 = v45;
        v47 = [v45 lastPlayedDate];
        if (v47)
        {
          v48 = v47;
          v49 = v163;
          sub_24F91F608();

          v50 = *v162;
          v51 = v149;
          (*v162)(v149, v49, v16);
          v52 = *v166;
          (*v166)(v51, 0, 1, v16);
          (v50)(v153, v51, v16);
        }

        else
        {
          v52 = *v166;
          v53 = v149;
          (*v166)(v149, 1, 1, v16);
          sub_24F91F618();
          if ((*v155)(v53, 1, v16) != 1)
          {
            sub_24E601704(v53, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v54 = [v46 lastPlayedDate];
        if (v54)
        {
          v36 = v163;
          v37 = v54;
          sub_24F91F608();

          v38 = *v162;
          v39 = v151;
          (*v162)(v151, v36, v16);
          v52(v39, 0, 1, v16);
          v40 = v148;
          (v38)(v148, v39, v16);
        }

        else
        {
          v55 = v151;
          v52(v151, 1, 1, v16);
          v40 = v148;
          sub_24F91F618();
          if ((*v155)(v55, 1, v16) != 1)
          {
            sub_24E601704(v151, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v41 = v153;
        a4 = sub_24F91F588();
        a3 = v160;
        v42 = *v160;
        (*v160)(v40, v16);
        v42(v41, v16);

        ++v34;
        ++v35;
        v5 = v150;
        if ((v159 ^ a4))
        {
          v43 = v34 - 1;
          break;
        }
      }

      v29 = v143;
      v30 = v142;
      v56 = v147;
      if (v159)
      {
        if (v43 < v142)
        {
          goto LABEL_140;
        }

        if (v142 < v43)
        {
          v57 = 8 * v43 - 8;
          v58 = v43;
          v59 = v142;
          do
          {
            if (v59 != --v58)
            {
              v60 = *v152;
              if (!*v152)
              {
                goto LABEL_144;
              }

              v61 = *(v60 + v56);
              *(v60 + v56) = *(v60 + v57);
              *(v60 + v57) = v61;
            }

            ++v59;
            v57 -= 8;
            v56 += 8;
          }

          while (v59 < v58);
        }
      }
    }

    v62 = v152[1];
    if (v43 < v62)
    {
      if (__OFSUB__(v43, v30))
      {
        goto LABEL_137;
      }

      if (v43 - v30 < v141)
      {
        if (__OFADD__(v30, v141))
        {
          goto LABEL_138;
        }

        if (v30 + v141 < v62)
        {
          v62 = v30 + v141;
        }

        if (v62 < v30)
        {
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          v135 = sub_24E86164C(a4);
          goto LABEL_109;
        }

        if (v43 != v62)
        {
          break;
        }
      }
    }

    v28 = v43;
    if (v43 < v30)
    {
      goto LABEL_136;
    }

LABEL_36:
    v63 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v29 = v63;
    }

    else
    {
      v29 = sub_24E615ED8(0, *(v63 + 2) + 1, 1, v63);
    }

    a3 = *(v29 + 2);
    v64 = *(v29 + 3);
    v65 = a3 + 1;
    if (a3 >= v64 >> 1)
    {
      v29 = sub_24E615ED8((v64 > 1), a3 + 1, 1, v29);
    }

    *(v29 + 2) = v65;
    v66 = &v29[16 * a3];
    *(v66 + 4) = v30;
    *(v66 + 5) = v28;
    v67 = *v144;
    if (!*v144)
    {
      goto LABEL_146;
    }

    if (a3)
    {
      while (1)
      {
        a3 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v29 + 4);
          v69 = *(v29 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_55:
          if (v71)
          {
            goto LABEL_125;
          }

          v84 = &v29[16 * v65];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_128;
          }

          v90 = &v29[16 * a3 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_132;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              a3 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v94 = &v29[16 * v65];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_69:
        if (v89)
        {
          goto LABEL_127;
        }

        v97 = &v29[16 * a3];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_130;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_76:
        a4 = a3 - 1;
        if (a3 - 1 >= v65)
        {
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v152)
        {
          goto LABEL_143;
        }

        v105 = v29;
        v106 = *&v29[16 * a4 + 32];
        v107 = *&v29[16 * a3 + 40];
        sub_24F4932B4((*v152 + 8 * v106), (*v152 + 8 * *&v29[16 * a3 + 32]), (*v152 + 8 * v107), v67);
        if (v5)
        {
          goto LABEL_117;
        }

        if (v107 < v106)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_24E86164C(v105);
        }

        if (a4 >= *(v105 + 2))
        {
          goto LABEL_122;
        }

        v108 = &v105[16 * a4];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v169 = v105;
        a4 = &v169;
        sub_24E8615C0(a3);
        v29 = v169;
        v65 = *(v169 + 2);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v29[16 * v65 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_123;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_124;
      }

      v79 = &v29[16 * v65];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_126;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_129;
      }

      if (v83 >= v75)
      {
        v101 = &v29[16 * a3 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_133;
        }

        if (v70 < v104)
        {
          a3 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v27 = v152[1];
    if (v28 >= v27)
    {
      goto LABEL_106;
    }
  }

  v145 = v62;
  v143 = v29;
  v150 = v5;
  v159 = *v152;
  v109 = v159 + 8 * v43 - 8;
  v142 = v30;
  v110 = v30 - v43;
LABEL_87:
  v154 = v43;
  v111 = *(v159 + 8 * v43);
  v146 = v110;
  v147 = v109;
  while (1)
  {
    v112 = *v109;
    v113 = v111;
    v114 = v112;
    v164 = v113;
    v115 = [v113 lastPlayedDate];
    if (v115)
    {
      v116 = v163;
      v117 = v115;
      sub_24F91F608();

      v118 = *v162;
      v119 = v158;
      (*v162)(v158, v116, v16);
      v120 = *v166;
      (*v166)(v119, 0, 1, v16);
      (v118)(v165, v119, v16);
    }

    else
    {
      v120 = *v166;
      v121 = v158;
      (*v166)(v158, 1, 1, v16);
      sub_24F91F618();
      if ((*v155)(v121, 1, v16) != 1)
      {
        sub_24E601704(v121, &unk_27F22EC30, &qword_24F939880);
      }
    }

    v122 = [v114 lastPlayedDate];
    if (v122)
    {
      v123 = v163;
      v124 = v122;
      sub_24F91F608();

      v125 = v161;
      v126 = *v162;
      v127 = v123;
      v128 = v156;
      (*v162)(v161, v127, v156);
      v120(v125, 0, 1, v128);
      v129 = v157;
      v126();
      v16 = v128;
    }

    else
    {
      v130 = v161;
      v16 = v156;
      v120(v161, 1, 1, v156);
      v129 = v157;
      sub_24F91F618();
      if ((*v155)(v130, 1, v16) != 1)
      {
        sub_24E601704(v161, &unk_27F22EC30, &qword_24F939880);
      }
    }

    v131 = v165;
    a4 = sub_24F91F588();
    a3 = v160;
    v132 = *v160;
    (*v160)(v129, v16);
    v132(v131, v16);

    if ((a4 & 1) == 0)
    {
LABEL_86:
      v43 = v154 + 1;
      v109 = v147 + 8;
      v110 = v146 - 1;
      if (v154 + 1 != v145)
      {
        goto LABEL_87;
      }

      v5 = v150;
      v29 = v143;
      v30 = v142;
      v28 = v145;
      if (v145 < v142)
      {
        goto LABEL_136;
      }

      goto LABEL_36;
    }

    if (!v159)
    {
      break;
    }

    v133 = *v109;
    v111 = *(v109 + 8);
    *v109 = v111;
    *(v109 + 8) = v133;
    v109 -= 8;
    if (__CFADD__(v110++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

uint64_t sub_24F4932B4(void **a1, void **a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = (&v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v95 = &v89 - v11;
  MEMORY[0x28223BE20](v12);
  v98 = &v89 - v13;
  MEMORY[0x28223BE20](v14);
  v96 = &v89 - v15;
  v16 = sub_24F91F648();
  MEMORY[0x28223BE20](v16);
  v94 = (&v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v102 = &v89 - v19;
  MEMORY[0x28223BE20](v20);
  v93 = (&v89 - v21);
  MEMORY[0x28223BE20](v22);
  v103 = &v89 - v23;
  MEMORY[0x28223BE20](v24);
  v101 = &v89 - v26;
  v27 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v27 = a2 - a1;
  }

  v28 = v27 >> 3;
  v29 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v29 = a3 - a2;
  }

  v30 = v29 >> 3;
  if (v28 < v29 >> 3)
  {
    if (a4 != a1 || &a1[v28] <= a4)
    {
      v31 = v25;
      memmove(a4, a1, 8 * v28);
      v25 = v31;
    }

    v92 = &a4[v28];
    if (a2 - a1 < 8)
    {
      a2 = a1;
    }

    else
    {
      v32 = a1;
      if (a2 < a3)
      {
        v97 = (v25 + 32);
        v102 = (v25 + 56);
        v94 = (v25 + 48);
        v95 = (v25 + 8);
        v33 = v92;
        while (1)
        {
          v100 = a2;
          v34 = *a2;
          v104 = a4;
          v35 = *a4;
          v36 = v34;
          v37 = v35;
          v99 = v36;
          v38 = [v36 lastPlayedDate];
          if (v38)
          {
            v39 = v38;
            v40 = v103;
            sub_24F91F608();

            v41 = v96;
            v42 = *v97;
            (*v97)(v96, v40, v16);
            v43 = *v102;
            (*v102)(v41, 0, 1, v16);
            v42(v101, v41, v16);
          }

          else
          {
            v43 = *v102;
            v44 = v96;
            (*v102)(v96, 1, 1, v16);
            sub_24F91F618();
            if ((*v94)(v44, 1, v16) != 1)
            {
              sub_24E601704(v44, &unk_27F22EC30, &qword_24F939880);
            }
          }

          v45 = [v37 lastPlayedDate];
          if (v45)
          {
            v46 = v32;
            v47 = v103;
            v48 = v45;
            sub_24F91F608();

            v49 = v98;
            v50 = *v97;
            v51 = v47;
            v32 = v46;
            v33 = v92;
            (*v97)(v98, v51, v16);
            v43(v49, 0, 1, v16);
            v52 = v93;
            v50(v93, v49, v16);
          }

          else
          {
            v53 = v98;
            v43(v98, 1, 1, v16);
            v52 = v93;
            sub_24F91F618();
            if ((*v94)(v53, 1, v16) != 1)
            {
              sub_24E601704(v98, &unk_27F22EC30, &qword_24F939880);
            }
          }

          v54 = v101;
          v55 = sub_24F91F588();
          v56 = v52;
          v57 = *v95;
          (*v95)(v56, v16);
          v57(v54, v16);

          if ((v55 & 1) == 0)
          {
            break;
          }

          v58 = v100;
          a2 = v100 + 1;
          a4 = v104;
          if (v32 != v100)
          {
            goto LABEL_24;
          }

LABEL_25:
          ++v32;
          if (a4 >= v33 || a2 >= a3)
          {
            a2 = v32;
            goto LABEL_56;
          }
        }

        v58 = v104;
        a4 = v104 + 1;
        a2 = v100;
        if (v32 == v104)
        {
          goto LABEL_25;
        }

LABEL_24:
        *v32 = *v58;
        goto LABEL_25;
      }

      a2 = a1;
    }

    v33 = v92;
    goto LABEL_56;
  }

  v90 = a1;
  if (a4 != a2 || &a2[v30] <= a4)
  {
    v59 = v25;
    memmove(a4, a2, 8 * v30);
    v25 = v59;
  }

  v33 = &a4[v30];
  if (a3 - a2 >= 8 && a2 > v90)
  {
    v96 = (v25 + 32);
    v101 = (v25 + 56);
    v91 = (v25 + 48);
    v92 = (v25 + 8);
    v104 = a4;
    do
    {
      v100 = a2;
      v60 = a2 - 1;
      --a3;
      v61 = v33;
      v93 = v60;
      while (1)
      {
        v62 = *--v61;
        v63 = *v60;
        v64 = v62;
        v65 = v63;
        v66 = [v64 lastPlayedDate];
        v99 = v64;
        if (v66)
        {
          v67 = v66;
          v68 = v103;
          sub_24F91F608();

          v69 = v95;
          v70 = *v96;
          (*v96)(v95, v68, v16);
          v71 = *v101;
          (*v101)(v69, 0, 1, v16);
          v70(v102, v69, v16);
        }

        else
        {
          v71 = *v101;
          v72 = v95;
          (*v101)(v95, 1, 1, v16);
          sub_24F91F618();
          if ((*v91)(v72, 1, v16) != 1)
          {
            sub_24E601704(v72, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v98 = v65;
        v73 = [v65 lastPlayedDate];
        if (v73)
        {
          v74 = a3;
          v75 = v33;
          v76 = v103;
          v77 = v73;
          sub_24F91F608();

          v78 = v97;
          v79 = *v96;
          v80 = v76;
          v33 = v75;
          a3 = v74;
          (*v96)(v97, v80, v16);
          v71(v78, 0, 1, v16);
          v81 = v94;
          v79(v94, v78, v16);
        }

        else
        {
          v82 = v97;
          v71(v97, 1, 1, v16);
          v81 = v94;
          sub_24F91F618();
          if ((*v91)(v82, 1, v16) != 1)
          {
            sub_24E601704(v97, &unk_27F22EC30, &qword_24F939880);
          }
        }

        v83 = v102;
        v84 = sub_24F91F588();
        v85 = *v92;
        (*v92)(v81, v16);
        v85(v83, v16);

        v86 = (a3 + 1);
        if (v84)
        {
          break;
        }

        a4 = v104;
        v60 = v93;
        if (v86 != v33)
        {
          *a3 = *v61;
        }

        --a3;
        v33 = v61;
        if (v61 <= a4)
        {
          v33 = v61;
          a2 = v100;
          goto LABEL_56;
        }
      }

      a4 = v104;
      v87 = v93;
      if (v86 != v100)
      {
        *a3 = *v93;
      }

      if (v33 <= a4)
      {
        break;
      }

      a2 = v87;
    }

    while (v87 > v90);
    a2 = v87;
  }

LABEL_56:
  if (a2 != a4 || a2 >= (a4 + ((v33 - a4 + (v33 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v33 - a4));
  }

  return 1;
}

uint64_t sub_24F493C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_24F928AD8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24F493CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_24F928AD8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t type metadata accessor for WaitAction(uint64_t a1)
{
  result = qword_27F244B98;
  if (!qword_27F244B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F493D90(uint64_t a1)
{
  result = sub_24F928AD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F493E0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = sub_24F928AD8();
  v19 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BA8, &qword_24F9FD388);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = &v16 - v6;
  v8 = type metadata accessor for WaitAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F49427C();
  sub_24F92D108();
  if (!v2)
  {
    v18 = v8;
    v11 = v21;
    v12 = v22;
    v25 = 0;
    v13 = v23;
    sub_24F92CC48();
    *v10 = v14;
    v24 = 1;
    sub_24E862F10();
    v17 = v5;
    sub_24F92CC68();
    (*(v11 + 8))(v7, v13);
    (*(v19 + 32))(&v10[*(v18 + 20)], v17, v12);
    sub_24E981074(v10, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F4940C0()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_24F494108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
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

uint64_t sub_24F4941EC(uint64_t a1)
{
  v2 = sub_24F49427C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F494228(uint64_t a1)
{
  v2 = sub_24F49427C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F49427C()
{
  result = qword_27F244BB0;
  if (!qword_27F244BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244BB0);
  }

  return result;
}

unint64_t sub_24F4942E4()
{
  result = qword_27F244BB8;
  if (!qword_27F244BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244BB8);
  }

  return result;
}

unint64_t sub_24F49433C()
{
  result = qword_27F244BC0;
  if (!qword_27F244BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244BC0);
  }

  return result;
}

unint64_t sub_24F494394()
{
  result = qword_27F244BC8;
  if (!qword_27F244BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244BC8);
  }

  return result;
}

uint64_t ChallengesHubPageIntent.init(player:hubData:gameSource:background:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a2 + 32);
  sub_24E61C0A8(a1, a5);
  v10 = type metadata accessor for ChallengesHubPageIntent(0);
  v11 = a5 + v10[5];
  v12 = *(a2 + 16);
  *v11 = *a2;
  *(v11 + 16) = v12;
  *(v11 + 32) = v9;
  sub_24E6009C8(a3, a5 + v10[6], &qword_27F244BD0, &unk_24F9FD4B0);
  return sub_24E6009C8(a4, a5 + v10[7], &qword_27F21D8F8, &qword_24F95ADB0);
}

uint64_t type metadata accessor for ChallengesHubPageIntent(uint64_t a1)
{
  result = qword_27F244C00;
  if (!qword_27F244C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ChallengesHubPageIntent.hubData.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ChallengesHubPageIntent(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_24F48B9F8(v4, v5, v6);
}

unint64_t ChallengesHubPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24F495210(&qword_27F215388, type metadata accessor for Player, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F495258(v1, boxed_opaque_existential_1, type metadata accessor for Player);
  *(inited + 88) = 0x61746144627568;
  *(inited + 96) = 0xE700000000000000;
  v5 = type metadata accessor for ChallengesHubPageIntent(0);
  v6 = (v2 + v5[5]);
  v7 = *v6;
  v8 = v6[1];
  v19 = v8;
  v20 = *v6;
  v9 = v6[2];
  v10 = v6[3];
  v11 = v6[4];
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD8, &qword_24F9FD4E0);
  *(inited + 136) = sub_24F4948DC();
  v12 = swift_allocObject();
  *(inited + 104) = v12;
  v12[2] = v7;
  v12[3] = v8;
  v12[4] = v9;
  v12[5] = v10;
  v12[6] = v11;
  *(inited + 144) = 0x72756F53656D6167;
  *(inited + 152) = 0xEA00000000006563;
  v13 = v5[6];
  *(inited + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
  *(inited + 192) = sub_24F4949AC();
  v14 = __swift_allocate_boxed_opaque_existential_1((inited + 160));
  sub_24E60169C(v2 + v13, v14, &qword_27F244BD0, &unk_24F9FD4B0);
  *(inited + 200) = 0x756F72676B636162;
  *(inited + 208) = 0xEA0000000000646ELL;
  v15 = v5[7];
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  *(inited + 248) = sub_24E7D17FC();
  v16 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2 + v15, v16, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24F48B9F8(v20, v19, v9);
  v17 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v17;
  return result;
}

unint64_t sub_24F4948DC()
{
  result = qword_27F244BE0;
  if (!qword_27F244BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244BD8, &qword_24F9FD4E0);
    sub_24EE56F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244BE0);
  }

  return result;
}

uint64_t sub_24F494960()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

unint64_t sub_24F4949AC()
{
  result = qword_27F244BE8;
  if (!qword_27F244BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244BD0, &unk_24F9FD4B0);
    sub_24F495210(&qword_27F221F68, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244BE8);
  }

  return result;
}

uint64_t sub_24F494A60()
{
  v1 = 0x726579616C70;
  v2 = 0x72756F53656D6167;
  if (*v0 != 2)
  {
    v2 = 0x756F72676B636162;
  }

  if (*v0)
  {
    v1 = 0x61746144627568;
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

uint64_t sub_24F494AE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F49591C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F494B0C(uint64_t a1)
{
  v2 = sub_24F495154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F494B48(uint64_t a1)
{
  v2 = sub_24F495154();

  return MEMORY[0x2821FE720](a1, v2);
}

void ChallengesHubPageIntent.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = &v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v8);
  v26 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BF0, &qword_24F9FD4E8);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v11 = &v24 - v10;
  v12 = type metadata accessor for ChallengesHubPageIntent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F495154();
  v29 = v11;
  v15 = v31;
  sub_24F92D108();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = v7;
    v17 = v14;
    v18 = v27;
    LOBYTE(v32) = 0;
    sub_24F495210(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
    v19 = v26;
    sub_24F92CC68();
    sub_24E61C0A8(v19, v17);
    v35 = 1;
    sub_24EC994E4();
    sub_24F92CC18();
    v20 = v34;
    v21 = v17 + v12[5];
    v22 = v33;
    *v21 = v32;
    *(v21 + 16) = v22;
    *(v21 + 32) = v20;
    type metadata accessor for GameSource(0);
    LOBYTE(v32) = 2;
    sub_24F495210(&qword_27F221F50, type metadata accessor for GameSource, &protocol conformance descriptor for GameSource);
    sub_24F92CC18();
    sub_24E6009C8(v16, v17 + v12[6], &qword_27F244BD0, &unk_24F9FD4B0);
    type metadata accessor for Page.Background(0);
    LOBYTE(v32) = 3;
    sub_24F495210(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
    v23 = v25;
    sub_24F92CC18();
    (*(v28 + 8))(v29, v30);
    sub_24E6009C8(v23, v17 + v12[7], &qword_27F21D8F8, &qword_24F95ADB0);
    sub_24F495258(v17, v18, type metadata accessor for ChallengesHubPageIntent);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_24F4952C0(v17, type metadata accessor for ChallengesHubPageIntent);
  }
}

unint64_t sub_24F495154()
{
  result = qword_27F244BF8;
  if (!qword_27F244BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244BF8);
  }

  return result;
}

uint64_t sub_24F4951A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F495210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F495258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4952C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F495334(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Player(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_24F4954E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Player(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 16) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244BD0, &unk_24F9FD4B0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_24F495674(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24F495760();
    if (v2 <= 0x3F)
    {
      sub_24F4957B0(319, &qword_27F244C18, type metadata accessor for GameSource);
      if (v3 <= 0x3F)
      {
        sub_24F4957B0(319, &qword_27F21D948, type metadata accessor for Page.Background);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F495760()
{
  if (!qword_27F244C10)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F244C10);
    }
  }
}

void sub_24F4957B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F495818()
{
  result = qword_27F244C20;
  if (!qword_27F244C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244C20);
  }

  return result;
}

unint64_t sub_24F495870()
{
  result = qword_27F244C28;
  if (!qword_27F244C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244C28);
  }

  return result;
}

unint64_t sub_24F4958C8()
{
  result = qword_27F244C30;
  if (!qword_27F244C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244C30);
  }

  return result;
}

uint64_t sub_24F49591C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726579616C70 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144627568 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F53656D6167 && a2 == 0xEA00000000006563 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F495A88(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v20 = a3;
  v6 = sub_24F9218F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GSKShelf(0);
  v11 = *(*(a1 + *(v10 + 60)) + 16);
  sub_24F4BAB50(a2, v9);
  v12 = 0;
  v13 = 0;
  v14 = (a1 + *(v10 + 44));
  v15 = *(v14 + 16);
  if (v15 <= 0xFB)
  {
    v22 = *v14;
    v23 = v15;
    v12 = sub_24F495E00();
    v13 = v16;
  }

  v17 = sub_24F926CE8();
  sub_24F495C20(v11, v9, v12, v13, v17, v20, v21);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_24F495C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C0, &qword_24F9C5190);
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C8, &qword_24F9C5198);
  sub_24F924038();
  sub_24F09B68C();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F2387D8, &qword_27F2387C0, &qword_24F9C5190, MEMORY[0x277CE07F0]);
  swift_getWitnessTable();
  sub_24E602068(&qword_27F2387E0, &qword_27F2387C8, &qword_24F9C5198, MEMORY[0x277CDFC88]);
  swift_getWitnessTable();
  return sub_24F926B08();
}

uint64_t sub_24F495E00()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    if (!v4)
    {
      return 0x5279616C7265766FLL;
    }

    v8 = 0;
    sub_24F92C888();
    MEMORY[0x253050C20](0x746E6F7A69726F68, 0xEB00000000286C61);
    v7 = sub_24F92CD88();
    MEMORY[0x253050C20](v7);

    MEMORY[0x253050C20](120, 0xE100000000000000);
    sub_24F92CA38();
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v8 = 0x6C61636974726576;
    v6 = sub_24F92CD88();
    MEMORY[0x253050C20](v6);

LABEL_7:
    MEMORY[0x253050C20](41, 0xE100000000000000);
    return v8;
  }

  if (!(v2 | v1) && v3 == 192)
  {
    return 0x746C7561666564;
  }

  if (v1 == 1 && !v2 && v3 == 192)
  {
    return 0x4164697267;
  }

  if (v1 == 2 && !v2 && v3 == 192)
  {
    return 0x4264697267;
  }

  if (v1 == 3 && !v2 && v3 == 192)
  {
    return 0x4364697267;
  }

  if (v1 == 4 && !v2 && v3 == 192)
  {
    return 0x4464697267;
  }

  if (v1 == 5 && !v2 && v3 == 192)
  {
    return 0x4C7972617262696CLL;
  }

  if (v1 == 6 && !v2 && v3 == 192)
  {
    return 0x7262694C656D6167;
  }

  if (v1 == 7 && !v2 && v3 == 192)
  {
    return 0x65756E69746E6F63;
  }

  result = 0xD000000000000014;
  if (v1 != 8 || v2 || v3 != 192)
  {
    return 0xD000000000000015;
  }

  return result;
}

uint64_t sub_24F496134@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v36 = a5;
  v35 = a4;
  v34 = a3;
  v33 = a2;
  v32 = a1;
  v39 = a8;
  v51 = a6;
  v52 = a7;
  v37 = MEMORY[0x277CDE858];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C0, &qword_24F9C5190);
  v14 = sub_24F924038();
  v38 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2387C8, &qword_24F9C5198);
  v17 = sub_24F924038();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v32 - v22;
  v24 = sub_24F926CE8();
  sub_24F916DA4(v24, a6, a7);

  v40 = v32;
  v41 = v33;
  v42 = v34;
  v43 = v35;
  v44 = v36;
  v45 = a9;
  v46 = a10;
  sub_24F927618();
  v36 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C38, &qword_24F9FD6E8);
  v51 = a6;
  v52 = a7;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = sub_24E602068(&qword_27F2387D8, &qword_27F2387C0, &qword_24F9C5190, MEMORY[0x277CE07F0]);
  v49 = OpaqueTypeConformance2;
  v50 = v27;
  WitnessTable = swift_getWitnessTable();
  sub_24F496A38();
  sub_24F926A08();
  (*(v38 + 8))(v16, v14);
  v29 = sub_24E602068(&qword_27F2387E0, &qword_27F2387C8, &qword_24F9C5198, MEMORY[0x277CDFC88]);
  v47 = WitnessTable;
  v48 = v29;
  swift_getWitnessTable();
  sub_24E7896B8();
  v30 = *(v18 + 8);
  v30(v20, v17);
  sub_24E7896B8();
  return (v30)(v23, v17);
}

uint64_t sub_24F49652C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226848, &unk_24F9FAA20);
  v12 = swift_allocObject();
  *&v77[0] = 0x203A736D657469;
  *(&v77[0] + 1) = 0xE700000000000000;
  *&v62 = a1;
  v13 = sub_24F92CD88();
  MEMORY[0x253050C20](v13);

  v12[4] = 0x203A736D657469;
  v14 = v12 + 4;
  v12[5] = 0xE700000000000000;
  v12[6] = a2;
  v12[7] = a3;

  result = sub_24F496AF0();
  v16 = 0;
  v12[8] = result;
  v12[9] = v17;
  v18 = MEMORY[0x277D84F90];
LABEL_2:
  v19 = 3;
  if (v16 > 3)
  {
    v19 = v16;
  }

  v20 = v19 + 1;
  v21 = 16 * v16 + 40;
  while (1)
  {
    if (v16 == 3)
    {
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *&v77[0] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
      sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
      v28 = sub_24F92AF68();
      v30 = v29;

      v31 = sub_24F9249A8();
      v60 = 0;
      sub_24F496E4C(a4, v28, v30, &v44);
      v73 = v55;
      v74 = v56;
      v75 = v57;
      v70 = v52;
      v71 = v53;
      v72 = v54;
      v66 = v48;
      v67 = v49;
      v68 = v50;
      v69 = v51;
      v62 = v44;
      v63 = v45;
      v64 = v46;
      v65 = v47;
      v77[12] = v56;
      v77[13] = v57;
      v77[8] = v52;
      v77[9] = v53;
      v77[10] = v54;
      v77[11] = v55;
      v77[4] = v48;
      v77[5] = v49;
      v77[6] = v50;
      v77[7] = v51;
      v77[0] = v44;
      v77[1] = v45;
      v76 = v58;
      v78 = v58;
      v77[2] = v46;
      v77[3] = v47;
      sub_24E60169C(&v62, v43, &qword_27F23AB38, &qword_24F9CF470);
      sub_24E601704(v77, &qword_27F23AB38, &qword_24F9CF470);

      *(&v59[11] + 7) = v73;
      *(&v59[12] + 7) = v74;
      *(&v59[13] + 7) = v75;
      *(&v59[7] + 7) = v69;
      *(&v59[8] + 7) = v70;
      *(&v59[9] + 7) = v71;
      *(&v59[10] + 7) = v72;
      *(&v59[3] + 7) = v65;
      *(&v59[4] + 7) = v66;
      *(&v59[5] + 7) = v67;
      *(&v59[6] + 7) = v68;
      *(v59 + 7) = v62;
      *(&v59[1] + 7) = v63;
      *(&v59[14] + 7) = v76;
      *(&v59[2] + 7) = v64;
      LOBYTE(v30) = v60;
      sub_24F927618();
      result = sub_24F9238C8();
      *&v61[6] = v44;
      *&v61[22] = v45;
      *&v61[38] = v46;
      v32 = v59[10];
      *(a5 + 193) = v59[11];
      v33 = v59[13];
      *(a5 + 209) = v59[12];
      *(a5 + 225) = v33;
      *(a5 + 234) = *(&v59[13] + 9);
      v34 = v59[6];
      *(a5 + 129) = v59[7];
      v35 = v59[9];
      *(a5 + 145) = v59[8];
      *(a5 + 161) = v35;
      *(a5 + 177) = v32;
      v36 = v59[2];
      *(a5 + 65) = v59[3];
      v37 = v59[5];
      *(a5 + 81) = v59[4];
      *(a5 + 97) = v37;
      *(a5 + 113) = v34;
      v38 = v59[1];
      *(a5 + 17) = v59[0];
      *a5 = v31;
      *(a5 + 8) = 0;
      *(a5 + 16) = v30;
      *(a5 + 33) = v38;
      *(a5 + 49) = v36;
      v39 = *&v61[16];
      *(a5 + 250) = *v61;
      v40 = *&v61[32];
      *(a5 + 266) = v39;
      *(a5 + 282) = v40;
      *(a5 + 296) = *&v61[46];
      return result;
    }

    if (v20 == ++v16)
    {
      break;
    }

    v22 = v21 + 16;
    v23 = *(v12 + v21);
    v21 += 16;
    if (v23)
    {
      v42 = v14;
      v24 = *(v12 + v22 - 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      v41 = a4;
      if ((result & 1) == 0)
      {
        result = sub_24E615CF4(0, *(v18 + 16) + 1, 1, v18);
        v18 = result;
      }

      v26 = *(v18 + 16);
      v25 = *(v18 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_24E615CF4((v25 > 1), v26 + 1, 1, v18);
        v18 = result;
      }

      *(v18 + 16) = v26 + 1;
      v27 = v18 + 16 * v26;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      a4 = v41;
      v14 = v42;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24F496A38()
{
  result = qword_27F244C40;
  if (!qword_27F244C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244C38, &qword_24F9FD6E8);
    sub_24E602068(&qword_27F244C48, &qword_27F244C50, &qword_24F9FD6F0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244C40);
  }

  return result;
}

uint64_t sub_24F496AF0()
{
  v1 = v0;
  v2 = sub_24F9219E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F9218F8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D7EB20])
  {
    (*(v7 + 96))(v10, v6);
    v12 = *v10;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8, &unk_24F9A1D20);
    (*(v3 + 32))(v5, &v10[*(v13 + 48)], v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0x746E6F7A69726F68, 0xEB00000000286C61);
    v20 = v12;
    v14 = sub_24F92CD88();
    MEMORY[0x253050C20](v14);

    MEMORY[0x253050C20](120, 0xE100000000000000);
    sub_24F92CA38();
    MEMORY[0x253050C20](41, 0xE100000000000000);
    v15 = v21;
    (*(v3 + 8))(v5, v2);
  }

  else if (v11 == *MEMORY[0x277D7EB30])
  {
    (*(v7 + 96))(v10, v6);
    v16 = *v10;
    v21 = 0x6C61636974726576;
    v22 = 0xE900000000000028;
    v20 = v16;
    v17 = sub_24F92CD88();
    MEMORY[0x253050C20](v17);

    MEMORY[0x253050C20](41, 0xE100000000000000);
    return v21;
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    return 0x6E776F6E6B6E75;
  }

  return v15;
}

uint64_t sub_24F496E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = sub_24F9257B8();
  sub_24F927618();
  sub_24F9238C8();

  *&v34 = a2;
  *(&v34 + 1) = a3;
  *&v35 = sub_24F9275F8();
  *(&v35 + 1) = v9;
  v36 = 0u;
  v37 = 0u;
  *&v38 = a1;
  *(&v38 + 1) = 0x4010000000000000;
  v39 = 1;
  sub_24EB1FB58(&v34, v62);
  LOBYTE(a3) = sub_24F9257B8();
  sub_24F927618();
  sub_24F9238C8();
  v20 = v36;
  v21 = v37;
  v22 = v38;
  v18 = v34;
  v19 = v35;
  LOBYTE(v42) = v12;
  *(&v42 + 1) = a1;
  *&v43 = v24;
  BYTE8(v43) = v25;
  *&v44 = v26;
  BYTE8(v44) = v27;
  v45 = v28;
  v13 = v44;
  v47[0] = v34;
  v47[1] = v35;
  v47[4] = v38;
  v47[2] = v36;
  v47[3] = v37;
  v41 = v30;
  v40 = v32;
  v23 = v39;
  v46 = 0;
  *v14 = 0;
  v48 = v39;
  *&v14[24] = v35;
  *&v14[8] = v34;
  v14[88] = v39;
  *&v14[72] = v38;
  *&v14[56] = v37;
  *&v14[40] = v36;
  LOBYTE(v49) = a3;
  *(&v49 + 1) = a1;
  *&v50 = v29;
  BYTE8(v50) = v30;
  *&v51 = v31;
  BYTE8(v51) = v32;
  v52 = v33;
  v53 = 0;
  v17 = v51;
  v15 = v49;
  v16 = v50;
  v10 = v43;
  *a4 = v42;
  *(a4 + 16) = v10;
  *(a4 + 64) = *v14;
  *(a4 + 80) = *&v14[16];
  *(a4 + 32) = v13;
  *(a4 + 48) = v28;
  *(a4 + 128) = *&v14[64];
  *(a4 + 144) = *&v14[80];
  *(a4 + 96) = *&v14[32];
  *(a4 + 112) = *&v14[48];
  *(a4 + 224) = 0;
  *(a4 + 192) = v17;
  *(a4 + 208) = v33;
  *(a4 + 160) = v15;
  *(a4 + 176) = v16;
  v54[0] = a3;
  v55 = a1;
  v56 = v29;
  v57 = v30;
  v58 = v31;
  v59 = v32;
  v60 = v33;
  v61 = 0;

  sub_24E60169C(&v42, v62, &qword_27F244C58, &qword_24F9FD6F8);
  sub_24EB1FB58(v47, v62);
  sub_24E60169C(&v49, v62, &qword_27F244C58, &qword_24F9FD6F8);
  sub_24E601704(v54, &qword_27F244C58, &qword_24F9FD6F8);
  v62[2] = v20;
  v62[3] = v21;
  v62[4] = v22;
  v63 = v23;
  v62[0] = v18;
  v62[1] = v19;
  sub_24F497184(v62);
  v64[0] = v12;
  v65 = a1;
  v66 = v24;
  v67 = v25;
  v68 = v26;
  v69 = v27;
  v70 = v28;
  v71 = 0;
  return sub_24E601704(v64, &qword_27F244C58, &qword_24F9FD6F8);
}

void sub_24F4971D8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_24F92B098();
  [v0 setLocalizedDateFormatFromTemplate_];

  qword_27F39E5C0 = v0;
}

uint64_t sub_24F497278(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsCountHeaderItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F497318(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsCountHeaderItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24F4973A8(uint64_t a1)
{
  result = type metadata accessor for AchievementsCountHeaderItem(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24F497428(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70, &qword_24F9FD758);
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
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F497578(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70, &qword_24F9FD758);
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
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_24F4976B4(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24F497800(319, &qword_27F244C88, type metadata accessor for FriendsPlayingHeaderItem);
    if (v2 <= 0x3F)
    {
      sub_24E61C8D4(319);
      if (v3 <= 0x3F)
      {
        sub_24F497800(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F4977B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F497800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F497854(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CD8, &qword_24F9FD988);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F49A5E8();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD38();
    v8[13] = 2;
    sub_24F92CD38();
    type metadata accessor for AchievementsCountHeaderItem(0);
    v8[12] = 3;
    type metadata accessor for FriendsPlayingHeaderItem(0);
    sub_24F4977B8(&qword_27F244CE0, type metadata accessor for FriendsPlayingHeaderItem, &unk_24FA2C740);
    sub_24F92CCF8();
    v8[11] = 4;
    sub_24F92CD18();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[9] = 6;
    sub_24F929608();
    sub_24F4977B8(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F497C04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244C70, &qword_24F9FD758);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CC0, &unk_24F9FD978);
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = type metadata accessor for AchievementsCountHeaderItem(0);
  MEMORY[0x28223BE20](v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 28);
  v15 = type metadata accessor for FriendsPlayingHeaderItem(0);
  v16 = *(*(v15 - 8) + 56);
  v41 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = &v12[v10[9]];
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0;
  v39 = v17;
  sub_24E61DA68(&v43, v17, qword_27F21B590, &unk_24F93BE30);
  v18 = v10[10];
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v40 = v18;
  v20(&v12[v18], 1, 1, v19);
  v21 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F49A5E8();
  v22 = v38;
  sub_24F92D108();
  if (v22)
  {
    v24 = v39;
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_24E601704(&v12[v41], &qword_27F244C70, &qword_24F9FD758);
    sub_24E601704(v24, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v12[v40], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v38 = v15;
    v23 = v35;
    v32[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v46 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v25 = v44;
    *v12 = v43;
    *(v12 + 1) = v25;
    *(v12 + 4) = v45;
    LOBYTE(v43) = 1;
    v26 = sub_24F92CC58();
    v27 = v36;
    v28 = v39;
    *(v12 + 5) = v26;
    LOBYTE(v43) = 2;
    *(v12 + 6) = sub_24F92CC58();
    LOBYTE(v43) = 3;
    sub_24F4977B8(&qword_27F244CD0, type metadata accessor for FriendsPlayingHeaderItem, &unk_24FA2C768);
    sub_24F92CC18();
    sub_24E61DA68(v23, &v12[v41], &qword_27F244C70, &qword_24F9FD758);
    LOBYTE(v43) = 4;
    v12[v10[8]] = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v46 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v43, v28, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v43) = 6;
    sub_24F4977B8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v29 = v34;
    v30 = v37;
    sub_24F92CC18();
    (*(v27 + 8))(v9, v30);
    sub_24E61DA68(v29, &v12[v40], &qword_27F213E68, &unk_24F93BC80);
    sub_24F499C5C(v12, v33);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_24F49AA8C(v12, type metadata accessor for AchievementsCountHeaderItem);
  }
}

uint64_t sub_24F4982E4()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD00000000000001DLL;
    if (v1 != 1)
    {
      v5 = 0xD000000000000019;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0x6575676573;
    if (v1 != 5)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0xD000000000000018;
    if (v1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F4983CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F49A808(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4983F4(uint64_t a1)
{
  v2 = sub_24F49A5E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F498430(uint64_t a1)
{
  v2 = sub_24F49A5E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4984B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CA0, &qword_24F9FD958);
  MEMORY[0x28223BE20](v4 - 8);
  v21 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for AchievementsCountHeaderItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F499C5C(a1, v11);
  if (qword_27F211478 != -1)
  {
    swift_once();
  }

  v13 = qword_27F39E9B8;
  v12 = unk_27F39E9C0;
  v14 = *(v11 + 5);
  v15 = *(v11 + 6);
  v16 = v11[*(v9 + 32)];

  sub_24F49AA8C(v11, type metadata accessor for AchievementsCountHeaderItem);
  sub_24F6698FC(a1 + *(v9 + 28), v8);
  v17 = v21;
  sub_24E60169C(v8, v21, &qword_27F244CA0, &qword_24F9FD958);
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CA8, &qword_24F9FD960);
  sub_24E60169C(v17, a2 + *(v18 + 48), &qword_27F244CA0, &qword_24F9FD958);

  sub_24E601704(v8, &qword_27F244CA0, &qword_24F9FD958);
  sub_24E601704(v17, &qword_27F244CA0, &qword_24F9FD958);
}

uint64_t sub_24F4986DC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = type metadata accessor for AchievementsCountHeaderItem(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_24F499C5C(a1, &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  result = sub_24F49A514(&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *a2 = sub_24F49A578;
  a2[1] = v8;
  return result;
}

uint64_t sub_24F4987D4(uint64_t a1)
{
  sub_24F47DE08();

  return sub_24F9218E8();
}

uint64_t sub_24F498818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = sub_24F924218();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F233180, &qword_24F9FDB90);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v48 - v6;
  v60 = type metadata accessor for AchievementCountHeaderText(0);
  MEMORY[0x28223BE20](v60);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D30, &qword_24F9FDB98);
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D38, &unk_24F9FDBA0);
  v61 = *(v12 - 8);
  v62 = v12;
  MEMORY[0x28223BE20](v12);
  v53 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v48 - v15;
  v17 = sub_24F91F008();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D40, &qword_24F9FDBB0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v48 - v28;
  v59 = a1;
  sub_24F498FB0(v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_24E601704(v16, &qword_27F215340, &qword_24F943530);
    v30 = 1;
    v31 = v59;
    v33 = v61;
    v32 = v62;
  }

  else
  {
    (*(v18 + 32))(v23, v16, v17);
    v34 = *(v18 + 16);
    v50 = v23;
    v34(v20, v23, v17);
    v35 = v52;
    sub_24E984D7C(v20, v52);
    v49 = *(v18 + 8);
    v49(v20, v17);
    sub_24F91EF98();
    v36 = sub_24F91EFA8();
    (*(*(v36 - 8) + 56))(v7, 0, 1, v36);
    v37 = sub_24F4977B8(&qword_27F244D50, type metadata accessor for AchievementCountHeaderText, &unk_24F96D56C);
    v51 = v11;
    sub_24F9260F8();
    sub_24E601704(v7, &qword_27F233180, &qword_24F9FDB90);
    sub_24F49AA8C(v35, type metadata accessor for AchievementCountHeaderText);
    v31 = v59;
    if (*(v59 + 32))
    {
      v38 = v56;
      sub_24F924208();
      v39 = v58;
    }

    else
    {
      v64[0] = MEMORY[0x277D84F90];
      sub_24F4977B8(&qword_27F216C88, MEMORY[0x277CDFB98], MEMORY[0x277CDFBA8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21AE40, &unk_24F94F9F0);
      sub_24E602068(&qword_27F21AE48, &qword_27F21AE40, &unk_24F94F9F0, MEMORY[0x277D83970]);
      v38 = v56;
      v39 = v58;
      sub_24F92C6A8();
    }

    v64[0] = v60;
    v64[1] = v37;
    swift_getOpaqueTypeConformance2();
    v40 = v53;
    v41 = v55;
    v42 = v51;
    sub_24F926AE8();
    (*(v57 + 8))(v38, v39);
    (*(v54 + 8))(v42, v41);
    v49(v50, v17);
    v33 = v61;
    v32 = v62;
    (*(v61 + 32))(v29, v40, v62);
    v30 = 0;
  }

  (*(v33 + 56))(v29, v30, 1, v32);
  v43 = *v31;
  v44 = v31[1];
  sub_24E60169C(v29, v26, &qword_27F244D40, &qword_24F9FDBB0);
  v45 = v63;
  sub_24E60169C(v26, v63, &qword_27F244D40, &qword_24F9FDBB0);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D48, &unk_24F9FDBB8) + 48));
  *v46 = v43;
  v46[1] = v44;
  sub_24F49AA54(v31, v64);

  sub_24E601704(v29, &qword_27F244D40, &qword_24F9FDBB0);

  return sub_24E601704(v26, &qword_27F244D40, &qword_24F9FDBB0);
}

uint64_t sub_24F498FB0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v20 - v3;
  v4 = sub_24F91EE98();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F91EEA8();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v10 - 8);
  v21 = "showPlaceholders";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10, &unk_24F94D880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x6F746172656D756ELL;
  *(inited + 40) = 0xE900000000000072;
  v27 = *(v1 + 16);
  sub_24E9B5BEC();
  *(inited + 48) = sub_24F92C628();
  *(inited + 56) = v12;
  *(inited + 64) = 0x616E696D6F6E6564;
  *(inited + 72) = 0xEB00000000726F74;
  v27 = *(v1 + 24);
  *(inited + 80) = sub_24F92C628();
  *(inited + 88) = v13;
  v14 = sub_24E6086DC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F90, &qword_24F955020);
  swift_arrayDestroy();
  v15._object = (v21 | 0x8000000000000000);
  v15._countAndFlagsBits = 0xD00000000000001ELL;
  localizedString(_:with:)(v15, v14);

  type metadata accessor for AttributeScopes.AchievementCountTextAttributes(0);
  (*(v7 + 104))(v9, *MEMORY[0x277CC8BA8], v22);
  v16 = v25;
  (*(v23 + 104))(v6, *MEMORY[0x277CC8BA0], v24);
  sub_24F91EEB8();
  v17 = sub_24F91F4A8();
  (*(*(v17 - 8) + 56))(v26, 1, 1, v17);
  sub_24F4977B8(&qword_27F223A78, type metadata accessor for AttributeScopes.AchievementCountTextAttributes, &protocol conformance descriptor for AttributeScopes.AchievementCountTextAttributes);
  sub_24F91EFE8();
  v18 = sub_24F91F008();
  return (*(*(v18 - 8) + 56))(v16, 0, 1, v18);
}

uint64_t sub_24F499538@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v4;
  v12 = *(v2 + 32);
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D20, &qword_24F9FDB48);
  sub_24F498818(v11, a2 + *(v5 + 44));
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244D28, &unk_24F9FDB50) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212858, &qword_24F950980) + 28);
  v8 = *MEMORY[0x277CDF3C0];
  v9 = sub_24F9234D8();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  result = swift_getKeyPath();
  *v6 = result;
  return result;
}

uint64_t sub_24F499638@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CA0, &qword_24F9FD958);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v43 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217710, &unk_24F9462C0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for AchievementsCountHeaderItem(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F499C5C(a1, v16);
  if (qword_27F211478 != -1)
  {
    swift_once();
  }

  v17 = unk_27F39E9C0;
  v18 = *(v16 + 6);
  v46 = *(v16 + 5);
  v47 = qword_27F39E9B8;
  v45 = v18;
  v44 = v16[*(v14 + 32)];

  sub_24F49AA8C(v16, type metadata accessor for AchievementsCountHeaderItem);
  sub_24F9271E8();
  v19 = sub_24F9251C8();
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2145B0, &qword_24F93D200) + 36)] = v19;
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214598, &qword_24F978EC0) + 36);
  v21 = *MEMORY[0x277CE13B8];
  v22 = sub_24F927748();
  (*(*(v22 - 8) + 104))(&v13[v20], v21, v22);
  LOBYTE(v21) = sub_24F9257F8();
  sub_24F923318();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217788, &unk_24F946340) + 36)];
  *v31 = v21;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  LOBYTE(v21) = sub_24F925868();
  sub_24F923318();
  v32 = &v13[*(v8 + 36)];
  *v32 = v21;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_24F6698FC(a1 + *(v14 + 28), v7);
  sub_24E60169C(v13, v10, &qword_27F217710, &unk_24F9462C0);
  v37 = v48;
  sub_24E60169C(v7, v48, &qword_27F244CA0, &qword_24F9FD958);
  v38 = v46;
  v39 = v43;
  *v43 = v47;
  v39[1] = v17;
  v40 = v45;
  v39[2] = v38;
  v39[3] = v40;
  *(v39 + 32) = v44;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CB8, &qword_24F9FD970);
  sub_24E60169C(v10, v39 + *(v41 + 48), &qword_27F217710, &unk_24F9462C0);
  sub_24E60169C(v37, v39 + *(v41 + 64), &qword_27F244CA0, &qword_24F9FD958);

  sub_24E601704(v7, &qword_27F244CA0, &qword_24F9FD958);
  sub_24E601704(v13, &qword_27F217710, &unk_24F9462C0);
  sub_24E601704(v37, &qword_27F244CA0, &qword_24F9FD958);
  sub_24E601704(v10, &qword_27F217710, &unk_24F9462C0);
}

uint64_t sub_24F499A70@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24F924998();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244CB0, &qword_24F9FD968);
  return sub_24F499638(v2, (a1 + *(v4 + 44)));
}

unint64_t sub_24F499B5C()
{
  result = qword_27F244C98;
  if (!qword_27F244C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244C98);
  }

  return result;
}

uint64_t sub_24F499C5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsCountHeaderItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F499CC0()
{
  v1 = type metadata accessor for AchievementsCountHeaderItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v0 + ((v2 + 16) & ~v2));
  __swift_destroy_boxed_opaque_existential_1(v3);
  v4 = &v3[v1[7]];
  v5 = type metadata accessor for FriendsPlayingHeaderItem(0);
  if (!(*(*(v5 - 1) + 48))(v4, 1, v5))
  {
    __swift_destroy_boxed_opaque_existential_1(v4);

    v6 = &v4[v5[6]];

    v7 = type metadata accessor for Player(0);
    v8 = v7[6];
    v9 = sub_24F9289E8();
    v47 = *(v9 - 8);
    v48 = v9;
    v10 = &v6[v8];
    v11 = *(v47 + 8);
    v11(v10);

    if (*&v6[v7[9] + 8] != 1)
    {
    }

    v12 = &v6[v7[13]];
    v13 = type metadata accessor for CallProviderConversationHandleSet(0);
    v49 = v11;
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v44 = v5;
      v45 = v4;
      v14 = type metadata accessor for CallProviderConversationHandle(0);
      v15 = *(*(v14 - 8) + 48);
      if (!(v15)(v12, 1, v14))
      {
        v16 = v11;

        v17 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v47 + 48))(&v12[v17], 1, v48))
        {
          v16(&v12[v17], v48);
        }
      }

      v43 = &v12[*(v13 + 20)];
      v18 = v15();
      v5 = v44;
      if (!v18)
      {

        v19 = *(type metadata accessor for CallProvider(0) + 24);
        if (!(*(v47 + 48))(&v43[v19], 1, v48))
        {
          v49(&v43[v19], v48);
        }
      }

      v4 = v45;
    }

    if (*&v6[v7[15] + 8])
    {
    }

    v20 = &v6[v7[16]];
    PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
    if (!(*(*(PlayedTogetherInfo - 8) + 48))(v20, 1, PlayedTogetherInfo))
    {
      v46 = v1;

      v22 = type metadata accessor for Game(0);
      v49(&v20[v22[18]], v48);
      v23 = v22[19];
      if (!(*(v47 + 48))(&v20[v23], 1, v48))
      {
        v49(&v20[v23], v48);
      }

      v24 = v22[21];
      v25 = sub_24F920818();
      v26 = *(v25 - 8);
      if (!(*(v26 + 48))(&v20[v24], 1, v25))
      {
        (*(v26 + 8))(&v20[v24], v25);
      }

      v1 = v46;
    }

    v27 = &v6[v7[17]];
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    if (!(*(*(ChallengeInfo - 8) + 48))(v27, 1, ChallengeInfo))
    {

      v29 = type metadata accessor for Game(0);
      v49(&v27[v29[18]], v48);
      v30 = v29[19];
      if (!(*(v47 + 48))(&v27[v30], 1, v48))
      {
        v49(&v27[v30], v48);
      }

      v31 = v29[21];
      v32 = sub_24F920818();
      v33 = *(v32 - 8);
      if (!(*(v33 + 48))(&v27[v31], 1, v32))
      {
        (*(v33 + 8))(&v27[v31], v32);
      }
    }

    v34 = &v4[v5[8]];
    if (*(v34 + 3))
    {
      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    v35 = v5[9];
    v36 = sub_24F929608();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(&v4[v35], 1, v36))
    {
      (*(v37 + 8))(&v4[v35], v36);
    }
  }

  v38 = &v3[v1[9]];
  if (*(v38 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v39 = v1[10];
  v40 = sub_24F929608();
  v41 = *(v40 - 8);
  if (!(*(v41 + 48))(&v3[v39], 1, v40))
  {
    (*(v41 + 8))(&v3[v39], v40);
  }

  return swift_deallocObject();
}

uint64_t sub_24F49A514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementsCountHeaderItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F49A578@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AchievementsCountHeaderItem(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F4984B8(v4, a1);
}

unint64_t sub_24F49A5E8()
{
  result = qword_27F244CC8;
  if (!qword_27F244CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244CC8);
  }

  return result;
}

unint64_t sub_24F49A704()
{
  result = qword_27F244D08;
  if (!qword_27F244D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244D08);
  }

  return result;
}

unint64_t sub_24F49A75C()
{
  result = qword_27F244D10;
  if (!qword_27F244D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244D10);
  }

  return result;
}

unint64_t sub_24F49A7B4()
{
  result = qword_27F244D18;
  if (!qword_27F244D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244D18);
  }

  return result;
}

uint64_t sub_24F49A808(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x800000024FA75860 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x800000024FA75880 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA758A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA758C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
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

uint64_t sub_24F49AA8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F49AAF0()
{
  result = qword_27F244D58;
  if (!qword_27F244D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244D28, &unk_24F9FDB50);
    sub_24F49ABA8();
    sub_24E602068(&qword_27F21B308, &qword_27F212858, &qword_24F950980, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244D58);
  }

  return result;
}

unint64_t sub_24F49ABA8()
{
  result = qword_27F244D60;
  if (!qword_27F244D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244D68, &qword_24F9FDBC8);
    sub_24E602068(&qword_27F244D70, qword_27F244D78, &unk_24F9FDBD0, MEMORY[0x277CE1198]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244D60);
  }

  return result;
}

__n128 FullScreenCoverFlowActionImplementation.init(following:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  v3 = a1[1].n128_u64[0];
  *a2 = *a1;
  a2[1].n128_u64[0] = v3;
  return result;
}

uint64_t sub_24F49ACB4(uint64_t a1)
{
  v3 = sub_24F928AE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = (a1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  swift_beginAccess();
  v11 = *v10 == 0xD000000000000016 && 0x800000024FA75900 == v10[1];
  if (v11 || (sub_24F92CE08() & 1) != 0)
  {
    v14[5] = v7;
    v14[6] = v8;
    v14[7] = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21C2A8, &qword_24F955400);
    MEMORY[0x25304CAF0](&v15);

    v15 = a1;
    v14[2] = v7;
    v14[3] = v8;
    v14[4] = v9;
    v14[1] = a1;

    sub_24F927178();

    v12 = MEMORY[0x277D21CA8];
  }

  else
  {
    v12 = MEMORY[0x277D21CA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v4 + 104))(v6, *v12, v3);
  return sub_24F92A988();
}

unint64_t sub_24F49AEC0()
{
  result = qword_27F216400;
  if (!qword_27F216400)
  {
    type metadata accessor for FlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216400);
  }

  return result;
}

uint64_t sub_24F49AF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t FriendshipStatusDataIntentImplementation.perform(_:objectGraph:)(uint64_t *a1, uint64_t a2)
{
  v2[7] = a2;
  type metadata accessor for FriendsDataIntent(0);
  v2[8] = swift_task_alloc();
  v2[9] = *(type metadata accessor for Player(0) - 8);
  v2[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *a1;
  v6 = a1[1];
  v2[11] = v4;
  v2[12] = v5;
  v2[13] = v6;

  return MEMORY[0x2822009F8](sub_24F49B06C, 0, 0);
}

uint64_t sub_24F49B06C()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[14] = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendshipStatusDataIntentImplementation] Fetching friendship status...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v0[15] = sub_24F92B7F8();
  v0[16] = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F49B1C4, v6, v5);
}

uint64_t sub_24F49B1C4()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 136) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24F49B24C, 0, 0);
}

uint64_t sub_24F49B24C(uint64_t a1)
{
  *(v1 + 144) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F49B2D8, v3, v2);
}

uint64_t sub_24F49B2D8()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[8];

  swift_getKeyPath();
  v0[6] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E70D960(v1 + v4, v2);

  sub_24E70D960(v2, v3);
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_24F49B420;
  v6 = v0[7];
  v7 = v0[8];

  return sub_24E6480C8(v7, v6);
}

uint64_t sub_24F49B420(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_24F49B750;
  }

  else
  {
    v4 = sub_24F49B534;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24F49B534()
{
  v1 = 0;
  v2 = v0[20];
  v4 = v0[9];
  v3 = v0[10];
  v5 = *(v2 + 16);
  do
  {
    v6 = v1;
    if (v5 == v1)
    {
      break;
    }

    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[10];
    sub_24E70D960(v0[20] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v6, v9);
    if (*v9 == v8 && *(v3 + 8) == v7)
    {
      sub_24EADE8B0(v0[10], type metadata accessor for Player);
      break;
    }

    v1 = v6 + 1;
    v11 = v0[10];
    v12 = sub_24F92CE08();
    sub_24EADE8B0(v11, type metadata accessor for Player);
  }

  while ((v12 & 1) == 0);

  v13 = sub_24F9220B8();
  v14 = sub_24F92BD98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24E5DD000, v13, v14, "[FriendshipStatusDataIntentImplementation] Fetched friendship status.", v15, 2u);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  v16 = v5 != v6;
  v17 = v0[11];
  v18 = v0[8];

  sub_24EADE8B0(v18, type metadata accessor for FriendsDataIntent);
  sub_24EADE8B0(v17, type metadata accessor for Player);

  v19 = v0[1];

  v19(v16);
}

uint64_t sub_24F49B750()
{
  v1 = v0[11];
  sub_24EADE8B0(v0[8], type metadata accessor for FriendsDataIntent);
  sub_24EADE8B0(v1, type metadata accessor for Player);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F49B80C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24EA2DAEC;

  return FriendshipStatusDataIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_24F49B8D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24F49B8F4, 0, 0);
}

uint64_t sub_24F49B8F4()
{
  v1 = v0[3];
  v3 = *v1;
  v2 = *(v1 + 8);
  if (*(v1 + 16))
  {
    v4 = swift_task_alloc();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_24F49BB3C;

    return sub_24F49C7E8(v3, v2);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_24F49BA0C;

    return sub_24F49C5B0(v3, v2);
  }
}

uint64_t sub_24F49BA0C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E93AB90, 0, 0);
  }
}

uint64_t sub_24F49BB3C()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24F49CC58, 0, 0);
  }
}

void sub_24F49BC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v22 = a6;
  v23 = a7;
  v21 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0, &unk_24F944870);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  v14 = [objc_opt_self() proxyForLocalPlayer];
  v15 = [v14 utilityServicePrivate];

  v16 = sub_24F92B098();
  (*(v11 + 16))(v13, a1, v10);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  (*(v11 + 32))(v18 + v17, v13, v10);
  aBlock[4] = v21;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E9FABA0;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);

  [v15 *v23];
  _Block_release(v19);
  swift_unknownObjectRelease();
}

uint64_t sub_24F49BE90(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, const char *a5)
{
  if (a1)
  {
    v9 = a1;
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v10 = sub_24F9220D8();
    __swift_project_value_buffer(v10, qword_27F39E808);
    v11 = a1;

    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_24E7620D4(a2, a3, &v20);
      *(v14 + 12) = 2112;
      v17 = a1;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&dword_24E5DD000, v12, v13, a5, v14, 0x16u);
      sub_24E6D44CC(v15);
      MEMORY[0x2530542D0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x2530542D0](v16, -1, -1);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v20 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0, &unk_24F944870);
    return sub_24F92B788();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0, &unk_24F944870);
    return sub_24F92B798();
  }
}

uint64_t sub_24F49C0A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for RemoveFriendSuggestionAction(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_24E6741C8(a1, &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(a2 + 16);
  sub_24F49C420(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v12 = sub_24F92A9E8();
  v13 = sub_24F92B858();
  (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24F9FDDE0;
  v14[5] = v11;
  v14[6] = v12;

  sub_24E6959D8(0, 0, v6, &unk_24F94D7B0, v14);

  return v12;
}

unint64_t sub_24F49C2C4()
{
  result = qword_27F216348;
  if (!qword_27F216348)
  {
    type metadata accessor for RemoveFriendSuggestionAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216348);
  }

  return result;
}

uint64_t sub_24F49C334()
{
  v1 = (type metadata accessor for RemoveFriendSuggestionAction(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  sub_24E63FFA4(*(v0 + v2), *(v0 + v2 + 8));
  v3 = v1[7];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F49C420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFriendSuggestionAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F49C484(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for RemoveFriendSuggestionAction(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F49B8D0(a1, v1 + v6, v4);
}

uint64_t sub_24F49C568()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F49C5B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24F49C5D0, 0, 0);
}

uint64_t sub_24F49C5D0()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_24F49C6CC;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x746E6F43796E6564, 0xEF293A5F28746361, sub_24F49CA38, v3, v5);
}

uint64_t sub_24F49C6CC()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24F49CC64;
  }

  else
  {

    v2 = sub_24F49CC5C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F49C7E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24F49C808, 0, 0);
}

uint64_t sub_24F49C808()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_24F49C904;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x79616C50796E6564, 0xEE00293A5F287265, sub_24F49CAA8, v3, v5);
}

uint64_t sub_24F49C904()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24EA53D04;
  }

  else
  {

    v2 = sub_24F49CA20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t block_copy_helper_155(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_16Tm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2358A0, &unk_24F944870);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t static ContactAvatarProtocol.placeholderTemplate.getter()
{
  v0 = sub_24F91EAA8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0x6C6F686563616C70;
  v11 = 0xEB00000000726564;
  sub_24F91EA28();
  sub_24E600AEC();
  v4 = sub_24F92C578();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6C6F686563616C70;
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEB00000000726564;
  }

  v10 = 0x3A746361746E6F63;
  v11 = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v7, v8);

  return v10;
}

id sub_24F49CDC8()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDBD0]) init];
  qword_27F244E80 = result;
  return result;
}

uint64_t sub_24F49CDFC()
{
  v0 = sub_24F928CE8();
  __swift_allocate_value_buffer(v0, qword_27F244E88);
  __swift_project_value_buffer(v0, qword_27F244E88);
  return sub_24F928CC8();
}

uint64_t ContactAvatarProtocol.match(_:)@<X0>(uint64_t *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244EB0, &unk_24F9FDE00);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_24F928CB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  if (qword_27F211298 != -1)
  {
    swift_once();
  }

  v13 = sub_24F928CE8();
  __swift_project_value_buffer(v13, qword_27F244E88);
  sub_24F928CD8();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_24EC61CB0(v5);
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v9, v12, v6);
    sub_24EC606EC(v9, a2);
    return (*(v7 + 8))(v12, v6);
  }

  return result;
}

uint64_t ContactAvatarProtocol.fetch(contentsOf:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4B0, &qword_24F9903A8);
  v3 = MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778], v3);
  return sub_24F92B928();
}

void sub_24F49D1C8(uint64_t a1)
{
  v35 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0, &qword_24F990470);
  v1 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v33 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4C8, &qword_24F9FDEF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244EE0, &qword_24F9FDEF8);
  sub_24F9288F8();
  v43 = aBlock;
  v44 = v38;
  v7 = sub_24F49D654();

  if (v7)
  {
    v8 = objc_opt_self();
    sub_24F928908();
    v10 = v9;
    v12 = v11;
    sub_24F928918();
    v14 = [v8 scopeWithPointSize:0 scale:0 rightToLeft:v10 style:{v12, v13}];
    if (qword_27F211290 != -1)
    {
      swift_once();
    }

    v15 = qword_27F244E80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_24F941C80;
    *(v16 + 32) = v7;
    sub_24E7FA974();
    v17 = v7;
    v18 = sub_24F92B588();

    v19 = v34;
    v20 = v36;
    (*(v1 + 16))(v34, v35, v36);
    v21 = (*(v1 + 80) + 16) & ~*(v1 + 80);
    v22 = swift_allocObject();
    (*(v1 + 32))(v22 + v21, v19, v20);
    v41 = sub_24F49DF64;
    v42 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v38 = 1107296256;
    v39 = sub_24ECAEFC8;
    v40 = &block_descriptor_156;
    v23 = _Block_copy(&aBlock);

    v24 = [v15 renderAvatarsForContacts:v18 scope:v14 imageHandler:v23];
    _Block_release(v23);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27F211290 != -1)
    {
      swift_once();
    }

    v25 = [qword_27F244E80 placeholderImageProvider];
    sub_24F928908();
    v27 = v26;
    v29 = v28;
    sub_24F928918();
    v31 = [v25 imageForSize:0 scale:v27 style:{v29, v30}];
    swift_unknownObjectRelease();
    v32 = v31;
    aBlock = sub_24F926DD8();
    sub_24F92B8C8();

    (*(v4 + 8))(v6, v3);
  }
}

id sub_24F49D654()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = v0[1];
  v3 = *v0 == 0x6C6F686563616C70 && v2 == 0xEB00000000726564;
  if (!v3 && (sub_24F92CE08() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24F95C300;
    *(v4 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
    *(v4 + 40) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
    *(v4 + 48) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
    *(v4 + 56) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
    *(v4 + 64) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
    *(v4 + 72) = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];
    v5 = [objc_opt_self() descriptorForRequiredKeys];
    MEMORY[0x253050F00]();
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
    if (qword_27F2112A0 != -1)
    {
      swift_once();
    }

    v6 = qword_27F244EA0;
    v7 = sub_24F92B098();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
    v8 = sub_24F92B588();

    v19[0] = 0;
    v9 = [v6 unifiedContactWithIdentifier:v7 keysToFetch:v8 error:v19];

    if (v9)
    {
      v10 = v19[0];
      return v9;
    }

    v12 = v19[0];
    v13 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F211408 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E868);

    v15 = sub_24F9220B8();
    v16 = sub_24F92BDB8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19[0] = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_24E7620D4(v1, v2, v19);
      _os_log_impl(&dword_24E5DD000, v15, v16, "Failed to fetch contact for identifier: %s, so cannot fetch avatar", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x2530542D0](v18, -1, -1);
      MEMORY[0x2530542D0](v17, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_24F49DA88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4C8, &qword_24F9FDEF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - v4;
  v6 = a1;
  v8[1] = sub_24F926DD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0, &qword_24F990470);
  sub_24F92B8C8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F49DBAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C4B0, &qword_24F9903A8);
  v3 = MEMORY[0x28223BE20](v2);
  v8 = a1;
  (*(v5 + 104))(&v7[-v4], *MEMORY[0x277D85778], v3);
  return sub_24F92B928();
}

id sub_24F49DCB4()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  qword_27F244EA0 = result;
  return result;
}

uint64_t _s12GameStoreKit21ContactAvatarProtocolV14avatarTemplate3forS2S_tFZ_0(uint64_t a1, unint64_t a2)
{
  v4 = sub_24F91EAA8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v14 = a1;
  v15 = a2;
  sub_24F91EA28();
  sub_24E600AEC();
  v9 = sub_24F92C578();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (v11)
  {
    v12 = v9;
    a2 = v11;
  }

  else
  {

    v12 = v8;
  }

  v14 = 0x3A746361746E6F63;
  v15 = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](v12, a2);

  return v14;
}

unint64_t sub_24F49DE4C()
{
  result = qword_27F244EC0;
  if (!qword_27F244EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C4B8, &qword_24F9FDE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244EC0);
  }

  return result;
}

uint64_t sub_24F49DED0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0, &qword_24F990470);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F49DF64(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F244ED0, &qword_24F990470);

  return sub_24F49DA88(a1);
}

uint64_t block_copy_helper_156(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for QuoteViewModel(uint64_t a1)
{
  result = qword_27F244EE8;
  if (!qword_27F244EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F49E06C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F49E1BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendInviteButton(uint64_t a1)
{
  result = qword_27F244EF8;
  if (!qword_27F244EF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F49E344(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F58, &qword_24F9FE150);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F49F528();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for FriendInviteButton(0);
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v8[12] = 3;
    sub_24F929608();
    sub_24F49F77C(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F49E624@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F48, &qword_24F9FE148);
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for FriendInviteButton(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v14 + 40) = 0u;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  *(v14 + 56) = 0u;
  *(v14 + 9) = 0;
  v40 = v14 + 40;
  sub_24E61DA68(&v41, (v14 + 40), qword_27F21B590, &unk_24F93BE30);
  v15 = *(v12 + 32);
  v16 = sub_24F92A6D8();
  v17 = *(*(v16 - 8) + 56);
  v38 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = *(v12 + 36);
  v19 = sub_24F929608();
  v20 = *(*(v19 - 8) + 56);
  v37 = v18;
  v20(&v14[v18], 1, 1, v19);
  v21 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_24F49F528();
  v35 = v10;
  v22 = v36;
  sub_24F92D108();
  if (v22)
  {
    v24 = v38;
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_24E601704(v40, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v14[v24], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v14[v37], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v44 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v23 = v34;
    sub_24F92CC68();
    v25 = v42;
    *v14 = v41;
    *(v14 + 1) = v25;
    *(v14 + 4) = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v44 = 1;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v26 = v38;
    v27 = v33;
    sub_24E61DA68(&v41, v40, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v41) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v7, &v14[v26], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v41) = 3;
    sub_24F49F77C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v28 = v32;
    v29 = v35;
    sub_24F92CC18();
    (*(v27 + 8))(v29, v23);
    sub_24E61DA68(v28, &v14[v37], &qword_27F213E68, &unk_24F93BC80);
    sub_24F49F57C(v14, v31);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return sub_24F49F5E0(v14);
  }
}

uint64_t sub_24F49EBEC(uint64_t a1)
{
  v2 = sub_24F49F528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F49EC28(uint64_t a1)
{
  v2 = sub_24F49F528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F49EC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F49ED94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F18, &qword_24F9FE0B8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F20, &unk_24F9FE0C0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-v9 - 8];
  *v6 = sub_24F9249A8();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F28, &qword_24FA1BB10);
  sub_24F49F06C(&v6[*(v11 + 44)]);
  sub_24E60169C(a1 + 40, v18, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v18, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9248C8();
  __swift_project_value_buffer(v12, qword_27F39F078);
  sub_24E602068(&qword_27F244F30, &qword_27F244F18, &qword_24F9FE0B8, MEMORY[0x277CE1138]);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24F49F4B0(v6);
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F38, &qword_24F9FE0D0) + 36);
  v14 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v15 = type metadata accessor for GradientBackground(0);
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(v13 + 16) = xmmword_24F956A30;
  *(v13 + 32) = 0x4030000000000000;
  *(v13 + 40) = 257;
  return (*(v8 + 32))(a2, v10, v7);
}

uint64_t sub_24F49F06C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177F8, &unk_24F946410);
  MEMORY[0x28223BE20](v2);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE70, &qword_24F9FE110);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  if (qword_27F211520 != -1)
  {
    swift_once();
  }

  v20[0] = qword_27F39EB08;
  v20[1] = unk_27F39EB10;
  sub_24E600AEC();

  sub_24F926EB8();
  v12 = sub_24F925A28();
  KeyPath = swift_getKeyPath();
  v14 = &v4[*(v2 + 36)];
  *v14 = KeyPath;
  v14[1] = v12;
  sub_24E6AFC48();
  sub_24F9268B8();
  sub_24E601704(v4, &qword_27F2177F8, &unk_24F946410);
  v15 = *(v6 + 16);
  v15(v8, v11, v5);
  *a1 = 0;
  *(a1 + 8) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F40, &unk_24FA1BB80);
  v15((a1 + *(v16 + 48)), v8, v5);
  v17 = a1 + *(v16 + 64);
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = *(v6 + 8);
  v18(v11, v5);
  return (v18)(v8, v5);
}

uint64_t sub_24F49F320(uint64_t a1)
{
  sub_24F47D7E4();

  return sub_24F9218E8();
}

unint64_t sub_24F49F3B0()
{
  result = qword_27F244F10;
  if (!qword_27F244F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F10);
  }

  return result;
}

uint64_t sub_24F49F4B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244F18, &qword_24F9FE0B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F49F528()
{
  result = qword_27F244F50;
  if (!qword_27F244F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F50);
  }

  return result;
}

uint64_t sub_24F49F57C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendInviteButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F49F5E0(uint64_t a1)
{
  v2 = type metadata accessor for FriendInviteButton(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F49F650()
{
  result = qword_27F244F60;
  if (!qword_27F244F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244F38, &qword_24F9FE0D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F244F18, &qword_24F9FE0B8);
    sub_24E602068(&qword_27F244F30, &qword_27F244F18, &qword_24F9FE0B8, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_24F49F77C(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F60);
  }

  return result;
}

uint64_t sub_24F49F77C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F49F7C8()
{
  result = qword_27F244F68;
  if (!qword_27F244F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F68);
  }

  return result;
}

unint64_t sub_24F49F820()
{
  result = qword_27F244F70;
  if (!qword_27F244F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F70);
  }

  return result;
}

unint64_t sub_24F49F878()
{
  result = qword_27F244F78;
  if (!qword_27F244F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244F78);
  }

  return result;
}

uint64_t sub_24F49F8E0(uint64_t a1, uint64_t a2, int *a3)
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
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968, &unk_24F9EDA20);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[11];

  return v17(v18, a2, v16);
}

uint64_t sub_24F49FB14(uint64_t result, uint64_t a2, int a3, int *a4)
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
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968, &unk_24F9EDA20);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[11];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for ChartCard(uint64_t a1)
{
  result = qword_27F244F80;
  if (!qword_27F244F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F49FD80(uint64_t a1)
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
        sub_24F49FEF4(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F9289E8();
            if (v6 <= 0x3F)
            {
              sub_24F49FEF4(319, &qword_27F216990, type metadata accessor for DescriptionLabelConfig);
              if (v7 <= 0x3F)
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

void sub_24F49FEF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F49FF48@<X0>(double *a1@<X0>, char *a2@<X8>)
{
  v3 = qword_24F9FE458[sub_24E6B00B4(*a1)];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2140B8, &unk_24F9A1D20) + 48);
  *a2 = 1;
  *&a2[v4] = v3;
  v5 = *MEMORY[0x277D7EB60];
  v6 = sub_24F9219E8();
  (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
  v7 = *MEMORY[0x277D7EB20];
  v8 = sub_24F9218F8();
  v9 = *(*(v8 - 8) + 104);

  return v9(a2, v7, v8);
}

unint64_t sub_24F4A0050(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x4D747865746E6F63;
    if (a1 != 2)
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v5 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1802396018;
    v2 = 0xD000000000000017;
    if (a1 == 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000014;
    if (a1 != 4)
    {
      v3 = 0x77747241656D6167;
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

uint64_t sub_24F4A016C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216968, &unk_24F9EDA20);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = v41 - v4;
  v5 = sub_24F9289E8();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v45);
  v46 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = v41 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v10);
  v12 = v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F244FA0, &qword_24F9FE338);
  v14 = *(v13 - 8);
  v48 = v13;
  v49 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = v41 - v15;
  v17 = type metadata accessor for ChartCard(0);
  MEMORY[0x28223BE20](v17);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v19 + 40) = 0u;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 9) = 0;
  v55 = v19 + 40;
  sub_24E61DA68(&v59, (v19 + 40), qword_27F21B590, &unk_24F93BE30);
  v20 = *(v17 + 24);
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v57 = v20;
  v22(&v19[v20], 1, 1, v21);
  v54 = v17;
  v23 = *(v17 + 44);
  v24 = type metadata accessor for DescriptionLabelConfig(0);
  (*(*(v24 - 8) + 56))(&v19[v23], 1, 1, v24);
  v25 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24F4A0E38();
  v52 = v16;
  v26 = v53;
  sub_24F92D108();
  if (v26)
  {
    v28 = v55;
    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_24E601704(v28, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v19[v57], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v19[v23], &qword_27F216968, &unk_24F9EDA20);
  }

  else
  {
    v41[2] = v10;
    v53 = v12;
    v41[1] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v58 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v27 = v48;
    sub_24F92CC68();
    v29 = v60;
    *v19 = v59;
    *(v19 + 1) = v29;
    *(v19 + 4) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v58 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v30 = v23;
    v31 = v54;
    sub_24E61DA68(&v59, v55, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v59) = 2;
    sub_24E65CAA0();
    v32 = v53;
    sub_24F92CC68();
    sub_24E61DA68(v32, &v19[v57], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v59) = 3;
    sub_24F4A0E8C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v33 = v47;
    sub_24F92CC18();
    sub_24E6009C8(v33, &v19[v31[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v59) = 4;
    sub_24F4A0E8C(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v34 = v46;
    sub_24F92CC68();
    sub_24E706B90(v34, &v19[v31[8]]);
    LOBYTE(v59) = 5;
    sub_24F4A0E8C(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v35 = v44;
    v36 = v51;
    sub_24F92CC68();
    (*(v50 + 32))(&v19[v31[9]], v35, v36);
    LOBYTE(v59) = 6;
    *&v19[v31[10]] = sub_24F92CC58();
    LOBYTE(v59) = 7;
    sub_24F4A0E8C(&qword_27F216A18, type metadata accessor for DescriptionLabelConfig, &unk_24F9564D8);
    v37 = v43;
    sub_24F92CC18();
    sub_24E61DA68(v37, &v19[v30], &qword_27F216968, &unk_24F9EDA20);
    LOBYTE(v59) = 8;
    sub_24F92CC48();
    v39 = v38;
    (*(v49 + 8))(v52, v27);
    *&v19[v31[12]] = v39;
    sub_24F4A0ED4(v19, v42, type metadata accessor for ChartCard);
    __swift_destroy_boxed_opaque_existential_1(v56);
    return sub_24F4A0F3C(v19, type metadata accessor for ChartCard);
  }
}

uint64_t sub_24F4A0BA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F4A10B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F4A0BCC(uint64_t a1)
{
  v2 = sub_24F4A0E38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4A0C08(uint64_t a1)
{
  v2 = sub_24F4A0E38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F4A0C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F4A0D6C(uint64_t a1)
{
  *(a1 + 8) = sub_24F4A0E8C(&qword_27F21AB48, type metadata accessor for ChartCard, &unk_24F9FE2F4);
  result = sub_24F4A0E8C(&qword_27F244F90, type metadata accessor for ChartCard, &unk_24F9FE2A0);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F4A0E38()
{
  result = qword_27F244FA8;
  if (!qword_27F244FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244FA8);
  }

  return result;
}

uint64_t sub_24F4A0E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F4A0ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F4A0F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F4A0FB0()
{
  result = qword_27F244FB0;
  if (!qword_27F244FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244FB0);
  }

  return result;
}

unint64_t sub_24F4A1008()
{
  result = qword_27F244FB8;
  if (!qword_27F244FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F244FB8);
  }

  return result;
}

unint64_t sub_24F4A1060()
{
  result = qword_27F244FC0[0];
  if (!qword_27F244FC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F244FC0);
  }

  return result;
}

uint64_t sub_24F4A10B4(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x77747241656D6167 && a2 == 0xEB000000006B726FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1802396018 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA75970 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA75990 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_24F92CE08();

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