uint64_t sub_24F516948(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247038, &qword_24FA055E0);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = sub_24F9249B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247040, &qword_24FA055E8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v16 - v13;
  if (a1)
  {
    (*(v8 + 104))(v10, *MEMORY[0x277CE00F0], v7, v12);
    sub_24F924E68();
    sub_24F924E48();
    sub_24F924E58();
    sub_24E60169C(v2, v14, &qword_27F247018, &qword_24FA05598);
    sub_24E60169C(v14, v6, &qword_27F247040, &qword_24FA055E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247018, &qword_24FA05598);
    sub_24F51765C();
    sub_24F5176E8();
    sub_24F924E28();
    return sub_24E601704(v14, &qword_27F247040, &qword_24FA055E8);
  }

  else
  {
    sub_24E60169C(v2, v6, &qword_27F247018, &qword_24FA05598);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247018, &qword_24FA05598);
    sub_24F51765C();
    sub_24F5176E8();
    return sub_24F924E28();
  }
}

uint64_t type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView(uint64_t a1)
{
  result = qword_27F246FD8;
  if (!qword_27F246FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F516C70()
{
  result = qword_27F246FB0;
  if (!qword_27F246FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246F80, &qword_24FA054B8);
    sub_24F516D28();
    sub_24F516F2C(&qword_27F2417F0, &qword_27F241778, &qword_24F9EE480, sub_24E7179AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246FB0);
  }

  return result;
}

unint64_t sub_24F516D28()
{
  result = qword_27F246FB8;
  if (!qword_27F246FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246F78, &qword_24FA054B0);
    sub_24F516DB4();
    sub_24E8178E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246FB8);
  }

  return result;
}

unint64_t sub_24F516DB4()
{
  result = qword_27F246FC0;
  if (!qword_27F246FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246FA0, &qword_24FA054D8);
    sub_24F516E40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246FC0);
  }

  return result;
}

unint64_t sub_24F516E40()
{
  result = qword_27F246FC8;
  if (!qword_27F246FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246F98, &qword_24FA054D0);
    sub_24F517E14(&qword_27F219ED8, type metadata accessor for CardCompactAvatarView, &unk_24F9B7498);
    sub_24F517E14(&qword_27F246FD0, type metadata accessor for LeaderboardWithFriendCardConfiguration.VisualView, &unk_24FA05538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246FC8);
  }

  return result;
}

uint64_t sub_24F516F2C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24F517E14(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F516FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F517050()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_24F9289E8();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_24F5171AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for LeaderboardWithFriendCard(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_24F923E98();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_24F5172CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for LeaderboardWithFriendCard(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_24F923E98();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24F5173D4(uint64_t a1)
{
  type metadata accessor for LeaderboardWithFriendCard(319);
  if (v1 <= 0x3F)
  {
    sub_24F923E98();
    if (v2 <= 0x3F)
    {
      sub_24F517490(319);
      if (v3 <= 0x3F)
      {
        sub_24E7268F0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F517490(uint64_t a1)
{
  if (!qword_27F246FE8)
  {
    v2 = type metadata accessor for LeaderboardWithFriendCard(255);
    v3 = sub_24F517E14(&qword_27F246F58, type metadata accessor for LeaderboardWithFriendCard, &unk_24F9EEBF0);
    v5 = type metadata accessor for DefaultCardConfiguration(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27F246FE8);
    }
  }
}

unint64_t sub_24F517528()
{
  result = qword_27F246FF0;
  if (!qword_27F246FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246FF8, &qword_24FA05530);
    sub_24F5175AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F246FF0);
  }

  return result;
}

unint64_t sub_24F5175AC()
{
  result = qword_27F247000;
  if (!qword_27F247000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F246FA8, &unk_24FA054E0);
    sub_24F516C70();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247000);
  }

  return result;
}

unint64_t sub_24F51765C()
{
  result = qword_27F247048;
  if (!qword_27F247048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247040, &qword_24FA055E8);
    sub_24F5176E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247048);
  }

  return result;
}

unint64_t sub_24F5176E8()
{
  result = qword_27F247050;
  if (!qword_27F247050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247018, &qword_24FA05598);
    sub_24F5177A0();
    sub_24E602068(&qword_27F247098, &qword_27F247028, &qword_24FA055A8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247050);
  }

  return result;
}

unint64_t sub_24F5177A0()
{
  result = qword_27F247058;
  if (!qword_27F247058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247010, &qword_24FA05590);
    sub_24F51782C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247058);
  }

  return result;
}

unint64_t sub_24F51782C()
{
  result = qword_27F247060;
  if (!qword_27F247060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247008, &qword_24FA05588);
    sub_24F5178B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247060);
  }

  return result;
}

unint64_t sub_24F5178B0()
{
  result = qword_27F247068;
  if (!qword_27F247068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247070, &qword_24FA055F0);
    sub_24F51793C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247068);
  }

  return result;
}

unint64_t sub_24F51793C()
{
  result = qword_27F247078;
  if (!qword_27F247078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247080, &qword_24FA055F8);
    sub_24F5179F8();
    sub_24F517E14(&qword_27F247090, type metadata accessor for CardLeaderboardView, &unk_24FA33C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247078);
  }

  return result;
}

unint64_t sub_24F5179F8()
{
  result = qword_27F247088;
  if (!qword_27F247088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247088);
  }

  return result;
}

unint64_t sub_24F517A4C()
{
  result = qword_27F2470D0;
  if (!qword_27F2470D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2470C8, &qword_24FA05628);
    sub_24F517AD8();
    sub_24F517B64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2470D0);
  }

  return result;
}

unint64_t sub_24F517AD8()
{
  result = qword_27F2470D8;
  if (!qword_27F2470D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2470E0, &qword_24FA05630);
    sub_24E86BC28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2470D8);
  }

  return result;
}

unint64_t sub_24F517B64()
{
  result = qword_27F2470E8;
  if (!qword_27F2470E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2470B0, &qword_24FA05610);
    sub_24F517C1C();
    sub_24E602068(&qword_27F21E230, &qword_27F21E238, &unk_24F9A9110, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2470E8);
  }

  return result;
}

unint64_t sub_24F517C1C()
{
  result = qword_27F2470F0;
  if (!qword_27F2470F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2470F8, &unk_24FA05638);
    sub_24F517CA8();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2470F0);
  }

  return result;
}

unint64_t sub_24F517CA8()
{
  result = qword_27F247100;
  if (!qword_27F247100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2470A8, &qword_24FA05608);
    sub_24E701970();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247100);
  }

  return result;
}

uint64_t sub_24F517D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F517DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F517E14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F517F10()
{
  result = qword_27F247120;
  if (!qword_27F247120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247030, &qword_24FA055D8);
    sub_24F517F9C();
    sub_24F3147F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247120);
  }

  return result;
}

unint64_t sub_24F517F9C()
{
  result = qword_27F247128;
  if (!qword_27F247128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247020, &qword_24FA055A0);
    sub_24F51765C();
    sub_24F5176E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247128);
  }

  return result;
}

uint64_t sub_24F51803C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementDetails(0);
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
    v11 = sub_24F929158();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_24F518174(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementDetails(0);
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
    v11 = sub_24F929158();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for AchievementDetailsPageView(uint64_t a1)
{
  result = qword_27F247130;
  if (!qword_27F247130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F5182E4(uint64_t a1)
{
  type metadata accessor for AchievementDetails(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24F1F9B74(319);
      if (v3 <= 0x3F)
      {
        sub_24F929158();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F5183BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v42 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8, &unk_24F940C00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0, &qword_24F9846A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = type metadata accessor for AchievementsDetailsPageMainContentView(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247140, &qword_24FA05788);
  MEMORY[0x28223BE20](v43);
  v45 = &v42 - v14;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247148, &qword_24FA05790);
  MEMORY[0x28223BE20](v46);
  v44 = &v42 - v15;
  v16 = a1;
  sub_24F5197DC(a1, v13, type metadata accessor for AchievementDetails);
  sub_24F923998();
  v18 = v17;
  v20 = v19;
  *&v13[v11[8]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v21 = &v13[v11[5]];
  *v21 = v18;
  *(v21 + 1) = v20;
  v22 = v11[6];
  if (qword_27F210E90 != -1)
  {
    swift_once();
  }

  memcpy(v50, &xmmword_27F237800, 0x178uLL);
  memcpy(&v13[v22], &xmmword_27F237800, 0x178uLL);
  *&v13[v11[7]] = 0x4078900000000000;
  v23 = v11[9];
  *&v13[v23] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for AchievementDetails(0);
  v25 = *(v24 + 48);
  v26 = sub_24F928818();
  v27 = *(v26 - 8);
  (*(v27 + 16))(v10, v16 + v25, v26);
  (*(v27 + 56))(v10, 0, 1, v26);
  v28 = (v16 + *(type metadata accessor for AchievementDetailsPageView(0) + 28));
  v30 = *v28;
  v29 = v28[1];
  v49[47] = v30;
  v49[48] = v29;
  sub_24E76A93C(v50, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215810, &unk_24F9D5560);
  sub_24F926F38();
  v31 = sub_24F921B48();
  (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
  sub_24F519AFC(&qword_27F247150, type metadata accessor for AchievementsDetailsPageMainContentView, &unk_24F9531D0);
  v32 = v45;
  sub_24F925E58();

  sub_24E601704(v7, &qword_27F2157E8, &unk_24F940C00);
  sub_24E601704(v10, &qword_27F2157F0, &qword_24F9846A0);
  sub_24F519854(v13);
  v33 = *(v24 + 40);
  v34 = v32 + *(v43 + 36);
  sub_24E7D14D8(v16 + v33, v34);
  v35 = type metadata accessor for PageBackgroundViewModifier(0);
  *(v34 + *(v35 + 20)) = 3;
  *(v34 + *(v35 + 24)) = 0;
  v36 = v47;
  sub_24E7D14D8(v16 + v33, v47);
  v37 = type metadata accessor for Page.Background(0);
  LOBYTE(v33) = (*(*(v37 - 8) + 48))(v36, 1, v37) == 1;
  sub_24E601704(v36, &qword_27F21D8F8, &qword_24F95ADB0);
  KeyPath = swift_getKeyPath();
  v39 = v44;
  sub_24F5198B8(v32, v44);
  v40 = v39 + *(v46 + 36);
  *v40 = KeyPath;
  *(v40 + 8) = v33;
  sub_24F519928();
  sub_24F9267F8();
  return sub_24F519B44(v39);
}

uint64_t sub_24F5189C4@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_24F5197DC(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AchievementDetailsPageView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_24F5196F8(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_24F51975C;
  a2[1] = v7;
  return result;
}

uint64_t sub_24F518AC4()
{
  v62 = type metadata accessor for AchievementDetailsPageView(0);
  v1 = *(*(v62 - 8) + 80);
  v2 = (v0 + ((v1 + 16) & ~v1));
  __swift_destroy_boxed_opaque_existential_1(v2);

  v3 = type metadata accessor for AchievementDetailsHeader(0);
  v4 = &v2[v3[7]];
  v5 = sub_24F9289E8();
  v61 = *(v5 - 8);
  v58 = *(v61 + 48);
  if (!v58(v4, 1, v5))
  {
    (*(v61 + 8))(v4, v5);
  }

  v60 = v5;
  v6 = *(type metadata accessor for AchievementBadgeModel(0) + 20);
  type metadata accessor for AchievementProgressStatus(0);
  if (!swift_getEnumCaseMultiPayload())
  {
    v7 = sub_24F91F648();
    (*(*(v7 - 8) + 8))(&v4[v6], v7);
  }

  v8 = &v2[v3[8]];
  if (*(v8 + 3))
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  v9 = v3[9];
  v10 = sub_24F929608();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(&v2[v9], 1, v10))
  {
    (*(v11 + 8))(&v2[v9], v10);
  }

  v59 = v11;
  v13 = type metadata accessor for AchievementDetails(0);
  v14 = &v2[v13[5]];
  v15 = type metadata accessor for GameLockup(0);
  if (!(*(*(v15 - 1) + 48))(v14, 1, v15))
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v16 = v15[5];
    v17 = type metadata accessor for TransitionalGameIcon(0);
    if (!(*(*(v17 - 8) + 48))(&v14[v16], 1, v17))
    {
      (*(v61 + 8))(&v14[v16], v60);
    }

    v18 = &v14[v15[10]];
    v19 = type metadata accessor for DescriptionLabelConfig(0);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {

      v20 = &v18[*(v19 + 24)];
      v21 = type metadata accessor for JSColor(0);
      if (!(*(*(v21 - 8) + 48))(v20, 1, v21))
      {
        v22 = sub_24F928388();
        (*(*(v22 - 8) + 8))(v20, v22);
      }
    }

    v23 = &v14[v15[13]];
    v24 = type metadata accessor for GameLockup.TrailingButtonType(0);
    if (!(*(*(v24 - 8) + 48))(v23, 1, v24))
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        __swift_destroy_boxed_opaque_existential_1(v23 + 2);
      }

      else
      {
        v25 = type metadata accessor for OfferButtonInfo(0);
        if (!(*(*(v25 - 8) + 48))(v23, 1, v25))
        {

          v26 = *(v25 + 24);
          v27 = sub_24F91F4A8();
          v56 = *(v27 - 8);
          v57 = v26;
          v28 = &v23[v26];
          v29 = v27;
          if (!(*(v56 + 48))(v28, 1, v27))
          {
            (*(v56 + 8))(&v23[v57], v29);
          }
        }
      }
    }

    v30 = v15[15];
    if (!v12(&v14[v30], 1, v10))
    {
      (*(v59 + 8))(&v14[v30], v10);
    }

    v31 = &v14[v15[16]];
    if (*(v31 + 3))
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    v32 = v15[17];
    v33 = sub_24F92A6D8();
    v34 = *(v33 - 8);
    if (!(*(v34 + 48))(&v14[v32], 1, v33))
    {
      (*(v34 + 8))(&v14[v32], v33);
    }

    if (*&v14[v15[21] + 8])
    {
    }
  }

  v35 = &v2[v13[10]];
  v36 = type metadata accessor for Page.Background(0);
  if (!(*(*(v36 - 8) + 48))(v35, 1, v36))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          (*(v61 + 8))(v35, v60);
          v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2151F8, &unk_24F93F910) + 48);
          v46 = sub_24F922348();
          v47 = *(v46 - 8);
          if (!(*(v47 + 48))(&v35[v45], 1, v46))
          {
            (*(v47 + 8))(&v35[v45], v46);
          }
        }
      }

      else
      {
        (*(v61 + 8))(v35, v60);
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      if (!v58(v35, 1, v60))
      {
        (*(v61 + 8))(v35, v60);
      }

      v48 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215200, &qword_24F95E450) + 48)];
      v49 = type metadata accessor for GSKVideo(0);
      if (!(*(*(v49 - 1) + 48))(v48, 1, v49))
      {
        v50 = sub_24F91F4A8();
        (*(*(v50 - 8) + 8))(v48, v50);
        (*(v61 + 8))(&v48[v49[5]], v60);
        v51 = v49[9];
        v52 = sub_24F928698();
        v53 = *(v52 - 8);
        v54 = *(v53 + 48);
        if (!v54(&v48[v51], 1, v52))
        {
          (*(v53 + 8))(&v48[v51], v52);
        }

        v55 = v49[10];
        if (!v54(&v48[v55], 1, v52))
        {
          (*(v53 + 8))(&v48[v55], v52);
        }
      }
    }

    else if (EnumCaseMultiPayload == 3 || EnumCaseMultiPayload == 4)
    {
      v44 = sub_24F928388();
      (*(*(v44 - 8) + 8))(v35, v44);
    }
  }

  if (*&v2[v13[11]] != 1)
  {
  }

  v37 = v13[12];
  v38 = sub_24F928818();
  (*(*(v38 - 8) + 8))(&v2[v37], v38);
  if (*&v2[v13[13] + 8])
  {
  }

  v39 = &v2[*(v62 + 24)];

  v40 = *(v62 + 32);
  v41 = sub_24F929158();
  (*(*(v41 - 8) + 8))(&v2[v40], v41);

  return swift_deallocObject();
}

uint64_t sub_24F5196F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementDetailsPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F51975C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AchievementDetailsPageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24F5183BC(v4, a1);
}

uint64_t sub_24F5197DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F519854(uint64_t a1)
{
  v2 = type metadata accessor for AchievementsDetailsPageMainContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F5198B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247140, &qword_24FA05788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F519928()
{
  result = qword_27F247158;
  if (!qword_27F247158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247148, &qword_24FA05790);
    sub_24F5199E0();
    sub_24E602068(&qword_27F22F6E0, &qword_27F22F6E8, &unk_24FA0B110, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247158);
  }

  return result;
}

unint64_t sub_24F5199E0()
{
  result = qword_27F247160;
  if (!qword_27F247160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247140, &qword_24FA05788);
    type metadata accessor for AchievementsDetailsPageMainContentView(255);
    sub_24F519AFC(&qword_27F247150, type metadata accessor for AchievementsDetailsPageMainContentView, &unk_24F9531D0);
    swift_getOpaqueTypeConformance2();
    sub_24F519AFC(&qword_27F22F6D8, type metadata accessor for PageBackgroundViewModifier, &protocol conformance descriptor for PageBackgroundViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247160);
  }

  return result;
}

uint64_t sub_24F519AFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F519B44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247148, &qword_24FA05790);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F519BF0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  sub_24F028328(a1, &v11 - v6);
  v8 = sub_24F922348();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24F0F8BDC(v7);
  }

  else
  {
    sub_24F9222E8();
    (*(v9 + 8))(v7, v8);
  }

  return sub_24F926168();
}

uint64_t sub_24F519D70(uint64_t a1)
{
  v2 = sub_24F519F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F519DAC(uint64_t a1)
{
  v2 = sub_24F519F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F519E08(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247178, &qword_24FA058F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F519F1C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F519F1C()
{
  result = qword_27F247180;
  if (!qword_27F247180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247180);
  }

  return result;
}

unint64_t sub_24F519F84()
{
  result = qword_27F247188;
  if (!qword_27F247188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247188);
  }

  return result;
}

unint64_t sub_24F519FDC()
{
  result = qword_27F247190;
  if (!qword_27F247190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247190);
  }

  return result;
}

uint64_t sub_24F51A030(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_24E8617B4(v2);
  }

  v3 = *(v2 + 2);
  v33[0] = (v2 + 32);
  v33[1] = v3;
  result = sub_24F92CD78();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 112;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*v12)
          {
            break;
          }

          if (!v12[88])
          {
            break;
          }

          v13 = v12 - 80;
          v14 = *(v12 + 24);
          v27 = *(v12 + 8);
          v28 = v14;
          v15 = *(v12 + 40);
          v16 = *(v12 + 56);
          v17 = *(v12 + 72);
          v32 = *(v12 + 44);
          v30 = v16;
          v31 = v17;
          v29 = v15;
          *(v12 + 11) = *v12;
          v18 = *(v12 - 2);
          *(v12 + 72) = *(v12 - 1);
          v19 = *(v12 - 4);
          v20 = *(v12 - 3);
          *(v12 + 56) = v18;
          *(v12 + 40) = v20;
          *(v12 + 8) = *(v12 - 5);
          *(v12 + 24) = v19;
          v21 = v28;
          *v13 = v27;
          *(v13 + 1) = v21;
          v22 = v29;
          v23 = v30;
          v24 = v31;
          *v12 = v32;
          *(v13 + 3) = v23;
          *(v13 + 4) = v24;
          *(v13 + 2) = v22;
          v12 -= 88;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 88;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_24F92B618();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v27 = v7 + 32;
    *(&v27 + 1) = v6;
    sub_24F521388(&v27, v26, v33, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_24F51A1D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480, &unk_24F944D20);
  v3 = sub_24F92AE38();

  v2(v3);
}

uint64_t sub_24F51A268()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471D0, &qword_24FA059B8);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2471E8, &unk_24FA059D0);
  v3 = swift_allocObject();
  *&v3[(*(*v3 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24E6009C8(v2, &v3[*(*v3 + *MEMORY[0x277D841D0] + 16)], &unk_27F2471D0, &qword_24FA059B8);
  off_27F2471A0 = v3;
  return result;
}

uint64_t sub_24F51A3B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  MEMORY[0x28223BE20](v0);
  v2 = &v5 - v1;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2471E0, &unk_24F9F3AD0);
  v3 = swift_allocObject();
  *&v3[(*(*v3 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24E6009C8(v2, &v3[*(*v3 + *MEMORY[0x277D841D0] + 16)], &qword_27F242AC8, &unk_24FA059C0);
  off_27F2471A8 = v3;
  return result;
}

uint64_t sub_24F51A500()
{
  v0 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471F0, &unk_24FA2D8D0);
  v4 = swift_allocObject();
  *&v4[(*(*v4 + 48) + 3) & 0x1FFFFFFFCLL] = 0;
  result = sub_24F5242C4(v2, &v4[*(*v4 + *MEMORY[0x277D841D0] + 16)], type metadata accessor for DataIntentCacheBusterStreamState);
  off_27F2471B0 = v4;
  return result;
}

id sub_24F51A678()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F941C80;
  result = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  *(v0 + 32) = result;
  qword_27F2471B8 = v0;
  return result;
}

uint64_t sub_24F51A6F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0, &unk_24F948490);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - v5;
  v7 = type metadata accessor for DataIntentCacheBusterStreamState(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F52425C(a1, v9, type metadata accessor for DataIntentCacheBusterStreamState);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24F52432C(v9, type metadata accessor for DataIntentCacheBusterStreamState);
  }

  sub_24F52432C(a1, type metadata accessor for DataIntentCacheBusterStreamState);
  v12 = sub_24E802CE0(&unk_2861C2388);
  v16[1] = v1;
  v13 = MEMORY[0x28223BE20](v12);
  v16[-4] = v14;
  v16[-3] = &unk_24FA059B0;
  v16[-2] = 0;
  LOWORD(v16[-1]) = 1;
  (*(v4 + 104))(v6, *MEMORY[0x277D85778], v3, v13);
  sub_24F92B928();

  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_24F51A9C4()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation] UpdateListener says friend suggestions updated, dropping previously cached suggestions.", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F211320 != -1)
  {
    swift_once();
  }

  v5 = off_27F2471A0;
  v6 = MEMORY[0x277D841D0];
  v7 = *(*off_27F2471A0 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_27F2471A0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F2471A0 + v8));
  sub_24E601704(&v5[v7], &unk_27F2471D0, &qword_24FA059B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471D0, &qword_24FA059B8);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock(&v5[v8]);
  if (qword_27F211328 != -1)
  {
    swift_once();
  }

  v9 = off_27F2471A8;
  v10 = *(*off_27F2471A8 + *v6 + 16);
  v11 = (*(*off_27F2471A8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F2471A8 + v11));
  sub_24E601704(&v9[v10], &qword_27F242AC8, &unk_24FA059C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  swift_storeEnumTagMultiPayload();
  os_unfair_lock_unlock(&v9[v11]);
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24F51AC6C(uint64_t a1, uint64_t a2)
{
  v2[243] = a2;
  v2[242] = a1;
  v2[244] = *(type metadata accessor for ActivityFriendSuggestion(0) - 8);
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v3 = type metadata accessor for FriendSuggestion(0);
  v2[247] = v3;
  v2[248] = *(v3 - 8);
  v2[249] = swift_task_alloc();
  v2[250] = swift_task_alloc();
  v2[251] = swift_task_alloc();
  v2[252] = swift_task_alloc();
  v2[253] = swift_task_alloc();
  v4 = type metadata accessor for Player(0);
  v2[254] = v4;
  v5 = *(v4 - 8);
  v2[255] = v5;
  v2[256] = *(v5 + 64);
  v2[257] = swift_task_alloc();
  v2[258] = swift_task_alloc();
  v2[259] = swift_task_alloc();
  v2[260] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F51AE4C, 0, 0);
}

uint64_t sub_24F51AE4C()
{
  *(v0 + 2088) = sub_24F92B7F8();
  *(v0 + 2096) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F51AEE4, v2, v1);
}

uint64_t sub_24F51AEE4()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 2104) = *(v0 + 1784);

  return MEMORY[0x2822009F8](sub_24F51AF6C, 0, 0);
}

uint64_t sub_24F51AF6C(uint64_t a1)
{
  *(v1 + 2112) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F51AFF8, v3, v2);
}

uint64_t sub_24F51AFF8()
{
  v1 = v0[263];
  v2 = v0[260];

  swift_getKeyPath();
  v0[229] = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24F52425C(v1 + v3, v2, type metadata accessor for Player);

  v4 = swift_task_alloc();
  v0[265] = v4;
  *v4 = v0;
  v4[1] = sub_24F51B13C;
  v5 = v0[243];

  return sub_24E64AFB8(2, v5);
}

uint64_t sub_24F51B13C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 2128) = a1;
  *(v3 + 2136) = v1;

  if (v1)
  {
    v4 = sub_24F51C2FC;
  }

  else
  {
    v4 = sub_24F51B254;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F51B254()
{
  v42 = v0;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1936);
  v2 = sub_24F9220D8();
  *(v0 + 2144) = __swift_project_value_buffer(v2, qword_27F39E808);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1936);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = v7;
    v40 = v7;
    *v6 = 136315138;
    if (v5)
    {
      v9 = *(v1 + 16);
      v10 = MEMORY[0x277D84F90];
      if (v9)
      {
        v37 = v7;
        v38 = v6;
        v39 = v4;
        v41 = MEMORY[0x277D84F90];
        sub_24F4578E0(0, v9, 0);
        v11 = (v1 + 32);
        v10 = v41;
        do
        {
          v13 = *v11++;
          v12 = v13;
          v14 = v13 == 1;
          if (v13 == 1)
          {
            v15 = 0x746E6F4368737570;
          }

          else
          {
            v15 = 0x79616C5068737570;
          }

          if (v14)
          {
            v16 = 0xEB00000000746361;
          }

          else
          {
            v16 = 0xEA00000000007265;
          }

          if (v12)
          {
            v17 = v15;
          }

          else
          {
            v17 = 0x736567617373656DLL;
          }

          if (v12)
          {
            v18 = v16;
          }

          else
          {
            v18 = 0xE800000000000000;
          }

          v41 = v10;
          v20 = *(v10 + 16);
          v19 = *(v10 + 24);
          if (v20 >= v19 >> 1)
          {
            sub_24F4578E0((v19 > 1), v20 + 1, 1);
            v10 = v41;
          }

          *(v10 + 16) = v20 + 1;
          v21 = v10 + 16 * v20;
          *(v21 + 32) = v17;
          *(v21 + 40) = v18;
          --v9;
        }

        while (v9);
        v4 = v39;
        v8 = v37;
        v6 = v38;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v22 = MEMORY[0x253050F40](v10, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_24E7620D4(v22, v24, &v40);

    *(v6 + 4) = v25;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendSuggestionsDataIntentImplementation] Fetching friend suggestions with filters: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  v26 = *(v0 + 2080);
  v27 = *(v0 + 2072);
  v28 = *(v0 + 2048);
  v29 = *(v0 + 2040);
  v30 = *(v0 + 1944);
  v31 = *(v0 + 1936);
  v32 = swift_allocObject();
  *(v0 + 2152) = v32;
  *(v32 + 16) = v31;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247208, &qword_24FA05A98);
  swift_asyncLet_begin();
  sub_24F52425C(v26, v27, type metadata accessor for Player);
  v33 = *(v29 + 80);
  *(v0 + 1420) = v33;
  v34 = (v33 + 24) & ~v33;
  v35 = swift_allocObject();
  *(v0 + 2160) = v35;
  *(v35 + 16) = v31;
  sub_24F5242C4(v27, v35 + v34, type metadata accessor for Player);
  *(v35 + ((v28 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247210, &qword_24FA05AB0);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1880, sub_24F51B6AC, v0 + 1296);
}

uint64_t sub_24F51B6AC()
{
  v1[271] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 241, sub_24F51C41C, v1 + 178);
  }

  else
  {
    v1[272] = v1[235];

    return MEMORY[0x282200930](v1 + 82, v1 + 241, sub_24F51B768, v1 + 210);
  }
}

uint64_t sub_24F51B768()
{
  *(v1 + 2184) = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 656, v1 + 1928, sub_24F51C5AC, v1 + 1744);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24F51B820, 0, 0);
  }
}

uint64_t sub_24F51B820()
{
  v1 = *(v0 + 2176);
  v2 = *(v0 + 1936);
  v3 = *(v0 + 1928);

  v89 = sub_24F51F18C(v2, v1);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  v87 = v3;
  if (v4)
  {
    v6 = *(v0 + 1984);
    v7 = *(v0 + 1952);
    v92 = MEMORY[0x277D84F90];
    v8 = sub_24F458E8C(0, v4, 0);
    v12 = 0;
    v13 = v92;
    v85 = v7;
    v14 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    while (v12 < *(v3 + 16))
    {
      v15 = *(v0 + 2024);
      v16 = *(v0 + 1968);
      sub_24F52425C(v14 + *(v85 + 72) * v12, v16, type metadata accessor for ActivityFriendSuggestion);
      sub_24F52425C(v16, v15, type metadata accessor for ActivityFriendSuggestion);
      swift_storeEnumTagMultiPayload();
      sub_24F52432C(v16, type metadata accessor for ActivityFriendSuggestion);
      v18 = *(v92 + 16);
      v17 = *(v92 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_24F458E8C((v17 > 1), v18 + 1, 1);
      }

      v19 = *(v0 + 2024);
      ++v12;
      *(v92 + 16) = v18 + 1;
      v8 = sub_24F5242C4(v19, v92 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, type metadata accessor for FriendSuggestion);
      v3 = v87;
      if (v4 == v12)
      {
        v5 = MEMORY[0x277D84F90];
        goto LABEL_9;
      }
    }

    goto LABEL_70;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_9:
  v91 = v13;
  v20 = v89;
  v21 = *(v89 + 16);
  if (v21)
  {
    v93 = v5;
    v8 = sub_24F458E8C(0, v21, 0);
    if (!*(v89 + 16))
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      return MEMORY[0x282200920](v8, v9, v10, v11);
    }

    v22 = 0;
    v23 = v93;
    v24 = *(v0 + 1984);
    v25 = 32;
    while (1)
    {
      v26 = *(v0 + 2016);
      v27 = *(v20 + v25 + 16);
      *(v0 + 1336) = *(v20 + v25);
      *(v0 + 1352) = v27;
      v29 = *(v20 + v25 + 48);
      v28 = *(v20 + v25 + 64);
      v30 = *(v20 + v25 + 32);
      *(v0 + 1416) = *(v20 + v25 + 80);
      *(v0 + 1384) = v29;
      *(v0 + 1400) = v28;
      *(v0 + 1368) = v30;
      memmove(v26, (v20 + v25), 0x52uLL);
      swift_storeEnumTagMultiPayload();
      sub_24E7FA89C(v0 + 1336, v0 + 1464);
      v32 = *(v93 + 16);
      v31 = *(v93 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_24F458E8C((v31 > 1), v32 + 1, 1);
      }

      v33 = *(v0 + 2016);
      *(v93 + 16) = v32 + 1;
      v8 = sub_24F5242C4(v33, v93 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v32, type metadata accessor for FriendSuggestion);
      if (v21 - 1 == v22)
      {
        break;
      }

      ++v22;
      v20 = v89;
      v25 += 88;
      if (v22 >= *(v89 + 16))
      {
        goto LABEL_69;
      }
    }
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v8 = sub_24EA0C5BC(v23);
  v34 = v91;
  v82 = *(v91 + 16);
  if (v82)
  {
    v35 = 0;
    v80 = (v0 + 1592);
    v36 = *(v0 + 2128);
    v37 = *(v0 + 2040);
    v77 = *(v0 + 2032);
    v81 = *(v0 + 1984);
    v88 = *(v0 + 2064);
    v90 = v36 + ((*(v0 + 1420) + 32) & ~*(v0 + 1420));
    v38 = MEMORY[0x277D84F90];
    v78 = *(v0 + 1960);
    while (1)
    {
      if (v35 >= *(v34 + 16))
      {
        goto LABEL_71;
      }

      v40 = v37;
      v41 = *(v0 + 2008);
      v42 = *(v0 + 2000);
      v84 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v86 = v35;
      v83 = *(v81 + 72);
      sub_24F52425C(v34 + v84 + v83 * v35, v41, type metadata accessor for FriendSuggestion);
      sub_24F52425C(v41, v42, type metadata accessor for FriendSuggestion);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v8 = *(v0 + 2000);
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      v79 = v38;
      v52 = *(v8 + 16);
      *v80 = *v8;
      *(v0 + 1608) = v52;
      v53 = *(v8 + 32);
      v54 = *(v8 + 48);
      v55 = *(v8 + 64);
      *(v0 + 1672) = *(v8 + 80);
      *(v0 + 1640) = v54;
      *(v0 + 1656) = v55;
      *(v0 + 1624) = v53;
      v56 = *(v36 + 16);
      if (v56)
      {
        v57 = 0;
        v58 = (*(v0 + 2056) + *(v77 + 40));
        v59 = *(v0 + 1656);
        v60 = *(v0 + 1664);
        while (v57 < *(v36 + 16))
        {
          sub_24F52425C(v90 + *(v37 + 72) * v57, *(v0 + 2056), type metadata accessor for Player);
          v61 = v58[1];
          if (v61)
          {
            v62 = *(v0 + 2056);
            if (*v58 == v59 && v61 == v60)
            {
              sub_24F52432C(*(v0 + 2056), type metadata accessor for Player);
              v37 = v40;
LABEL_56:
              sub_24E7FA8F8(v80);
              v38 = v79;
              v34 = v91;
LABEL_23:
              v39 = v86;
              v8 = sub_24F52432C(*(v0 + 2008), type metadata accessor for FriendSuggestion);
              goto LABEL_24;
            }

            v64 = sub_24F92CE08();
            v8 = sub_24F52432C(v62, type metadata accessor for Player);
            v37 = v40;
            if (v64)
            {
              goto LABEL_56;
            }
          }

          else
          {
            v8 = sub_24F52432C(*(v0 + 2056), type metadata accessor for Player);
          }

          if (v56 == ++v57)
          {
            goto LABEL_48;
          }
        }

        goto LABEL_68;
      }

LABEL_48:
      sub_24E7FA8F8(v80);
      v38 = v79;
      v34 = v91;
LABEL_50:
      sub_24F5242C4(*(v0 + 2008), *(v0 + 1992), type metadata accessor for FriendSuggestion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_24F458E8C(0, *(v38 + 16) + 1, 1);
      }

      v66 = *(v38 + 16);
      v65 = *(v38 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_24F458E8C((v65 > 1), v66 + 1, 1);
      }

      v67 = *(v0 + 1992);
      *(v38 + 16) = v66 + 1;
      v8 = sub_24F5242C4(v67, v38 + v84 + v66 * v83, type metadata accessor for FriendSuggestion);
      v39 = v86;
LABEL_24:
      v35 = v39 + 1;
      if (v35 == v82)
      {
        goto LABEL_58;
      }
    }

    v8 = sub_24F5242C4(v8, *(v0 + 1960), type metadata accessor for ActivityFriendSuggestion);
    v44 = 0;
    v45 = *(v36 + 16);
    v34 = v91;
    while (1)
    {
      if (v45 == v44)
      {
        sub_24F52432C(*(v0 + 1960), type metadata accessor for ActivityFriendSuggestion);
        goto LABEL_50;
      }

      if (v44 >= *(v36 + 16))
      {
        break;
      }

      v46 = *(v0 + 2064);
      v47 = *(v0 + 1960);
      sub_24F52425C(v90 + *(v37 + 72) * v44, v46, type metadata accessor for Player);
      v48 = *v46;
      v49 = *(v0 + 2064);
      if (v48 == *v47 && *(v88 + 8) == *(v78 + 8))
      {
        sub_24F52432C(*(v0 + 2064), type metadata accessor for Player);
LABEL_22:
        sub_24F52432C(*(v0 + 1960), type metadata accessor for ActivityFriendSuggestion);
        goto LABEL_23;
      }

      ++v44;
      v51 = sub_24F92CE08();
      v8 = sub_24F52432C(v49, type metadata accessor for Player);
      if (v51)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v38 = MEMORY[0x277D84F90];
LABEL_58:
  *(v0 + 2192) = v38;

  v68 = sub_24F9220B8();
  v69 = sub_24F92BD98();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134217984;
    v71 = *(v34 + 16);
    v72 = *(v38 + 16);

    *(v70 + 4) = v71 - v72;

    _os_log_impl(&dword_24E5DD000, v68, v69, "[FriendSuggestionsDataIntentImplementation] Filtered out %ld pending friend requests.", v70, 0xCu);
    MEMORY[0x2530542D0](v70, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v73 = sub_24F9220B8();
  v74 = sub_24F92BD98();
  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    *(v75 + 4) = *(v38 + 16);

    _os_log_impl(&dword_24E5DD000, v73, v74, "[FriendSuggestionsDataIntentImplementation] Fetched %ld friend suggestions.", v75, 0xCu);
    MEMORY[0x2530542D0](v75, -1, -1);
  }

  else
  {
  }

  v10 = sub_24F51C164;
  v8 = v0 + 656;
  v9 = v0 + 1928;
  v11 = v0 + 1840;

  return MEMORY[0x282200920](v8, v9, v10, v11);
}

uint64_t sub_24F51C1BC()
{
  sub_24F52432C(v0[260], type metadata accessor for Player);

  v1 = v0[1];
  v2 = v0[274];

  return v1(v2);
}

uint64_t sub_24F51C2FC()
{
  sub_24F52432C(*(v0 + 2080), type metadata accessor for Player);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51C474()
{
  sub_24F52432C(*(v0 + 2080), type metadata accessor for Player);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51C604()
{
  sub_24F52432C(*(v0 + 2080), type metadata accessor for Player);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51C73C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24F51C75C, 0, 0);
}

uint64_t sub_24F51C75C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v1 + 16);
    v3 = (v1 + 32);
    v4 = v2;
    v5 = (v1 + 32);
    while (v4)
    {
      if (*v5 && *v5 != 2)
      {
LABEL_12:

        goto LABEL_13;
      }

      v6 = sub_24F92CE08();

      ++v5;
      --v4;
      if (v6)
      {
        goto LABEL_13;
      }
    }

    while (v2)
    {
      v8 = *v3;
      if (v8 != 1 && v8 != 2)
      {
        goto LABEL_12;
      }

      v7 = sub_24F92CE08();

      ++v3;
      --v2;
      if (v7)
      {
        goto LABEL_13;
      }
    }

    **(v0 + 16) = MEMORY[0x277D84F90];
    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
LABEL_13:
    v9 = swift_task_alloc();
    *(v0 + 32) = v9;
    *v9 = v0;
    v9[1] = sub_24F51C978;

    return sub_24F525850();
  }
}

uint64_t sub_24F51C978(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_24F51CAC4, 0, 0);
  }
}

uint64_t sub_24F51CAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24F51CB0C, 0, 0);
}

uint64_t sub_24F51CB0C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = (v1 + 32);
    v3 = *(v1 + 16);
    while (v3)
    {
      if (*v2 && *v2 != 1)
      {

        goto LABEL_12;
      }

      v4 = sub_24F92CE08();

      ++v2;
      --v3;
      if (v4)
      {
        goto LABEL_12;
      }
    }

    **(v0 + 16) = MEMORY[0x277D84F90];
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
LABEL_12:
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_24F51CCBC;
    v9 = *(v0 + 32);
    v8 = *(v0 + 40);

    return sub_24F51CE2C(v9, v8);
  }
}

uint64_t sub_24F51CCBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_24F51CE08, 0, 0);
  }
}

uint64_t sub_24F51CE2C(uint64_t a1, uint64_t a2)
{
  v2[271] = a2;
  v2[265] = a1;
  v3 = type metadata accessor for ActivityFriendSuggestion(0);
  v2[277] = v3;
  v2[283] = *(v3 - 8);
  v2[289] = swift_task_alloc();
  v2[295] = swift_task_alloc();
  v2[301] = swift_task_alloc();
  v4 = type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity(0);
  v2[307] = v4;
  v2[313] = *(v4 - 8);
  v2[319] = swift_task_alloc();
  v2[325] = swift_task_alloc();
  v2[331] = swift_task_alloc();
  v2[332] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247218, &qword_24FA05AC0);
  v2[333] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  v2[334] = swift_task_alloc();
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  v2[335] = ChallengeInfo;
  v2[336] = *(ChallengeInfo - 8);
  v2[337] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  v2[338] = swift_task_alloc();
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v2[339] = PlayedTogetherInfo;
  v2[340] = *(PlayedTogetherInfo - 8);
  v2[341] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247230, &qword_24FA05AC8);
  v2[342] = swift_task_alloc();
  v2[343] = swift_task_alloc();
  v2[344] = swift_task_alloc();
  v2[345] = swift_task_alloc();
  v2[346] = swift_task_alloc();
  v2[347] = swift_task_alloc();
  v2[348] = swift_task_alloc();
  v2[349] = swift_task_alloc();
  v7 = *(type metadata accessor for FriendsDataIntent(0) - 8);
  v2[350] = v7;
  v2[351] = *(v7 + 64);
  v2[352] = swift_task_alloc();
  v2[353] = swift_task_alloc();
  v8 = type metadata accessor for Player(0);
  v2[354] = v8;
  v9 = *(v8 - 8);
  v2[355] = v9;
  v2[356] = *(v9 + 64);
  v2[357] = swift_task_alloc();
  v2[358] = swift_task_alloc();
  v2[359] = swift_task_alloc();
  v2[360] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F51D260, 0, 0);
}

uint64_t sub_24F51D260()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  *(v0 + 2888) = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Fetching denylist, played-with, and friends...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  v5 = *(v0 + 2880);
  v6 = *(v0 + 2840);
  v7 = *(v0 + 2824);
  v8 = *(v0 + 2816);
  v18 = *(v0 + 2808);
  v9 = *(v0 + 2800);
  v10 = *(v0 + 2168);
  v11 = *(v0 + 2120);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480, &unk_24F944D20);
  swift_asyncLet_begin();
  sub_24F52425C(v11, v5, type metadata accessor for Player);
  v12 = *(v6 + 80);
  *(v0 + 2960) = v12;
  v13 = (v12 + 16) & ~v12;
  v14 = swift_allocObject();
  *(v0 + 2896) = v14;
  sub_24F5242C4(v5, v14 + v13, type metadata accessor for Player);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  swift_asyncLet_begin();
  sub_24F52425C(v11, v7, type metadata accessor for Player);
  sub_24F52425C(v7, v8, type metadata accessor for FriendsDataIntent);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v0 + 2904) = v16;
  sub_24F5242C4(v8, v16 + v15, type metadata accessor for FriendsDataIntent);
  *(v16 + ((v18 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v10;

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1976, sub_24F51D57C, v0 + 1936);
}

uint64_t sub_24F51D57C()
{
  v1[364] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 162, v1 + 259, sub_24F51E814, v1 + 248);
  }

  else
  {
    v1[365] = v1[247];

    return MEMORY[0x282200930](v1 + 82, v1 + 253, sub_24F51D630, v1 + 266);
  }
}

uint64_t sub_24F51D630()
{
  v1[366] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F51EAF0, 0, 0);
  }

  else
  {
    v1[367] = v1[253];

    return MEMORY[0x282200930](v1 + 162, v1 + 259, sub_24F51D6E0, v1 + 290);
  }
}

uint64_t sub_24F51D6E0()
{
  *(v1 + 2944) = v0;
  if (v0)
  {
    v2 = sub_24F51EE38;
  }

  else
  {
    v2 = sub_24F51D714;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24F51D714()
{
  v133 = v0;
  v130 = *(v0 + 2072);

  v1 = sub_24F9220B8();
  v2 = sub_24F92BD98();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_24E5DD000, v1, v2, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Fetched required data, building suggestions.", v3, 2u);
    MEMORY[0x2530542D0](v3, -1, -1);
  }

  v4 = *(v0 + 2936);

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = *(v0 + 2920);
    v127 = *(v0 + 2872);
    v129 = *(v0 + 2864);
    v8 = (*(v0 + 2960) + 32) & ~*(v0 + 2960);
    v125 = *(v0 + 2936) + v8;
    v126 = *(v0 + 2840);
    v131 = v7 + 56;
    v122 = v130 + v8;
    v9 = *(v0 + 2504);
    v123 = (v9 + 56);
    v113 = (*(v0 + 2688) + 48);
    v114 = (*(v0 + 2720) + 48);
    v117 = (v9 + 48);
    v128 = *(v0 + 2832);
    v112 = *(v0 + 2656);
    v116 = *(v0 + 2456);
    v110 = *(v0 + 2216);
    v111 = *(v0 + 2264);
    v115 = MEMORY[0x277D84F90];
    v120 = v7;
    v121 = v4;
    v124 = *(v4 + 16);
    while (1)
    {
      if (v6 >= *(v4 + 16))
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v1 = *(v0 + 2872);
      v10 = *(v126 + 72);
      sub_24F52425C(v125 + v10 * v6, v1, type metadata accessor for Player);
      v11.isa = *v1;
      v12 = *(v127 + 8);
      if (*(v7 + 16))
      {
        sub_24F92D068();
        sub_24F92B218();
        v13 = sub_24F92D0B8();
        v14 = -1 << *(v7 + 32);
        v1 = v13 & ~v14;
        if ((*(v131 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1))
        {
          v15 = ~v14;
          do
          {
            v16 = (*(v7 + 48) + 16 * v1);
            v17 = *v16 == v11.isa && v16[1] == v12;
            if (v17 || (sub_24F92CE08() & 1) != 0)
            {
              goto LABEL_7;
            }

            v1 = (v1 + 1) & v15;
          }

          while (((*(v131 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0);
        }
      }

      if (*(*(v0 + 2872) + v128[18]) == 1)
      {
        break;
      }

LABEL_7:
      ++v6;
      sub_24F52432C(*(v0 + 2872), type metadata accessor for Player);
      if (v6 == v5)
      {

        v1 = v115;
        goto LABEL_63;
      }
    }

    v18 = -*(v130 + 16);
    v19 = -1;
    v1 = v122;
    while (v18 + v19 != -1)
    {
      if (++v19 >= *(v130 + 16))
      {
        __break(1u);
        goto LABEL_71;
      }

      v20 = *(v0 + 2864);
      sub_24F52425C(v1, v20, type metadata accessor for Player);
      v21 = *v20;
      v22 = *(v0 + 2864);
      if (v21 == v11.isa && *(v129 + 8) == v12)
      {
        sub_24F52432C(*(v0 + 2864), type metadata accessor for Player);
LABEL_6:
        v7 = v120;
        v4 = v121;
        v5 = v124;
        goto LABEL_7;
      }

      v1 += v10;
      v24 = sub_24F92CE08();
      sub_24F52432C(v22, type metadata accessor for Player);
      if (v24)
      {
        goto LABEL_6;
      }
    }

    v25 = *(v0 + 2712);
    v26 = *(v0 + 2704);
    sub_24E60169C(*(v0 + 2872) + v128[16], v26, &unk_27F23E220, &unk_24F9F2E30);
    v27 = (*v114)(v26, 1, v25);
    v28 = *(v0 + 2784);
    if (v27 == 1)
    {
      v29 = *(v0 + 2456);
      sub_24E601704(*(v0 + 2704), &unk_27F23E220, &unk_24F9F2E30);
      v30 = *v123;
      v31 = v28;
      v32 = 1;
      v33 = v29;
    }

    else
    {
      v34 = *(v0 + 2728);
      v35 = *(v0 + 2456);
      sub_24F5242C4(*(v0 + 2704), v34, type metadata accessor for Player.LastPlayedTogetherInfo);
      sub_24F52425C(v34, &v28[*(v116 + 20)], type metadata accessor for Game);
      sub_24F91F5D8();
      sub_24F52432C(v34, type metadata accessor for Player.LastPlayedTogetherInfo);
      *v28 = 0;
      v30 = *v123;
      v31 = v28;
      v32 = 0;
      v33 = v35;
    }

    v118 = v30;
    v30(v31, v32, 1, v33);
    v7 = v120;
    v36 = *(v0 + 2872);
    v37 = *(v0 + 2680);
    v38 = *(v0 + 2672);
    sub_24E6009C8(*(v0 + 2784), *(v0 + 2792), &unk_27F247230, &qword_24FA05AC8);
    sub_24E60169C(v36 + v128[17], v38, &unk_27F247220, &unk_24F9DFEB0);
    v39 = (*v113)(v38, 1, v37);
    v40 = *(v0 + 2768);
    if (v39 == 1)
    {
      v41 = *(v0 + 2456);
      sub_24E601704(*(v0 + 2672), &unk_27F247220, &unk_24F9DFEB0);
      v42 = v40;
      v43 = 1;
      v44 = v41;
    }

    else
    {
      v45 = *(v0 + 2696);
      v46 = *(v0 + 2456);
      sub_24F5242C4(*(v0 + 2672), v45, type metadata accessor for Player.LastChallengeInfo);
      sub_24F52425C(v45, &v40[*(v116 + 20)], type metadata accessor for Game);
      sub_24F91F5D8();
      sub_24F52432C(v45, type metadata accessor for Player.LastChallengeInfo);
      *v40 = 1;
      v42 = v40;
      v43 = 0;
      v44 = v46;
    }

    v118(v42, v43, 1, v44);
    v47 = *(v0 + 2792);
    v48 = *(v0 + 2776);
    v49 = *(v0 + 2664);
    v50 = *(v0 + 2456);
    sub_24E6009C8(*(v0 + 2768), v48, &unk_27F247230, &qword_24FA05AC8);
    v51 = *(v112 + 48);
    sub_24E60169C(v47, v49, &unk_27F247230, &qword_24FA05AC8);
    sub_24E60169C(v48, v49 + v51, &unk_27F247230, &qword_24FA05AC8);
    v52 = *v117;
    LODWORD(v48) = (*v117)(v49, 1, v50);
    v53 = v50;
    v54 = v52;
    v55 = v52(v49 + v51, 1, v53);
    v56 = *(v0 + 2752);
    if (v48 == 1)
    {
      v57 = *(v0 + 2456);
      if (v55 == 1)
      {
        v58 = *(v0 + 2752);
        v59 = 1;
LABEL_41:
        v118(v58, v59, 1, v57);
LABEL_49:
        v5 = v124;
        v67 = *(v0 + 2760);
        v68 = *(v0 + 2736);
        v69 = *(v0 + 2456);
        sub_24E6009C8(*(v0 + 2752), v67, &unk_27F247230, &qword_24FA05AC8);
        sub_24E60169C(v67, v68, &unk_27F247230, &qword_24FA05AC8);
        if (v54(v68, 1, v69) == 1)
        {
          v70 = *(v0 + 2872);
          v71 = *(v0 + 2856);
          sub_24E601704(*(v0 + 2736), &unk_27F247230, &qword_24FA05AC8);
          sub_24F52425C(v70, v71, type metadata accessor for Player);
          v72 = sub_24F9220B8();
          v109 = sub_24F92BD98();
          v73 = os_log_type_enabled(v72, v109);
          v1 = &qword_24FA05AC8;
          v74 = *(v0 + 2856);
          v75 = *(v0 + 2792);
          v76 = *(v0 + 2776);
          v119 = *(v0 + 2760);
          if (v73)
          {
            v107 = *(v0 + 2792);
            v77 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v132[0] = v104;
            *v77 = 136315138;
            v78 = (v74 + v128[7]);
            v105 = v76;
            v79 = *v78;
            v80 = v78[1];

            sub_24F52432C(v74, type metadata accessor for Player);
            v81 = sub_24E7620D4(v79, v80, v132);

            *(v77 + 4) = v81;
            _os_log_impl(&dword_24E5DD000, v72, v109, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Skipping %s due to us not having played anything together.", v77, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v104);
            MEMORY[0x2530542D0](v104, -1, -1);
            MEMORY[0x2530542D0](v77, -1, -1);

            v1 = &qword_24FA05AC8;
            sub_24E601704(v119, &unk_27F247230, &qword_24FA05AC8);
            sub_24E601704(v105, &unk_27F247230, &qword_24FA05AC8);
            v82 = v107;
          }

          else
          {

            sub_24F52432C(v74, type metadata accessor for Player);
            sub_24E601704(v119, &unk_27F247230, &qword_24FA05AC8);
            sub_24E601704(v76, &unk_27F247230, &qword_24FA05AC8);
            v82 = v75;
          }

          sub_24E601704(v82, &unk_27F247230, &qword_24FA05AC8);
        }

        else
        {
          v83 = *(v0 + 2872);
          v84 = *(v0 + 2552);
          v85 = *(v0 + 2408);
          v86 = *(v0 + 2360);
          sub_24F5242C4(*(v0 + 2736), v84, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
          sub_24F52425C(v83, v85, type metadata accessor for Player);
          v87 = *v84;
          sub_24F52425C(&v84[*(v116 + 20)], v85 + v110[6], type metadata accessor for Game);
          v88 = *(v116 + 24);
          v89 = v110[7];
          v90 = sub_24F91F648();
          (*(*(v90 - 8) + 16))(v85 + v89, &v84[v88], v90);
          *(v85 + v110[5]) = v87;
          sub_24F52425C(v85, v86, type metadata accessor for ActivityFriendSuggestion);
          v91 = v115;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v91 = sub_24E61A618(0, v115[2] + 1, 1, v115);
          }

          v93 = v91[2];
          v92 = v91[3];
          v5 = v124;
          if (v93 >= v92 >> 1)
          {
            v115 = sub_24E61A618((v92 > 1), v93 + 1, 1, v91);
          }

          else
          {
            v115 = v91;
          }

          v94 = *(v0 + 2792);
          v95 = *(v0 + 2776);
          v96 = *(v0 + 2760);
          v97 = *(v0 + 2552);
          v1 = *(v0 + 2360);
          sub_24F52432C(*(v0 + 2408), type metadata accessor for ActivityFriendSuggestion);
          sub_24F52432C(v97, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
          sub_24E601704(v96, &unk_27F247230, &qword_24FA05AC8);
          sub_24E601704(v95, &unk_27F247230, &qword_24FA05AC8);
          sub_24E601704(v94, &unk_27F247230, &qword_24FA05AC8);
          v115[2] = v93 + 1;
          sub_24F5242C4(v1, v115 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v93, type metadata accessor for ActivityFriendSuggestion);
        }

        v4 = v121;
        goto LABEL_7;
      }

      v60 = v49 + v51;
    }

    else
    {
      if (v55 != 1)
      {
        v106 = *(v0 + 2744);
        v61 = *(v0 + 2648);
        v62 = *(v0 + 2600);
        v108 = *(v0 + 2456);
        sub_24F5242C4(*(v0 + 2664), v61, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
        sub_24F5242C4(v49 + v51, v62, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
        v63 = sub_24F91F588();
        v64 = (v63 & 1) == 0;
        if (v63)
        {
          v65 = v62;
        }

        else
        {
          v65 = v61;
        }

        if (v64)
        {
          v66 = v62;
        }

        else
        {
          v66 = v61;
        }

        v54 = v52;
        sub_24F52432C(v65, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
        sub_24F5242C4(v66, v106, type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
        v118(v106, 0, 1, v108);
        sub_24E6009C8(v106, v56, &unk_27F247230, &qword_24FA05AC8);
        goto LABEL_49;
      }

      v60 = *(v0 + 2664);
      v57 = *(v0 + 2456);
    }

    sub_24F5242C4(v60, *(v0 + 2752), type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity);
    v58 = v56;
    v59 = 0;
    goto LABEL_41;
  }

  v1 = MEMORY[0x277D84F90];
LABEL_63:

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_72:
    v1 = sub_24ECDE3E4(v1);
  }

  *(v0 + 2952) = v1;
  v98 = *(v0 + 2944);
  v99 = *(v1 + 16);
  v100 = *(*(v0 + 2264) + 80);
  v132[0] = v1 + ((v100 + 32) & ~v100);
  v132[1] = v99;
  sub_24F520FF8(v132);
  if (!v98)
  {
    v101 = sub_24F9220B8();
    v102 = sub_24F92BD98();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 0;
      _os_log_impl(&dword_24E5DD000, v101, v102, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Finished.", v103, 2u);
      MEMORY[0x2530542D0](v103, -1, -1);
    }

    MEMORY[0x282200920](v0 + 1296, v0 + 2072, sub_24F51E53C, v0 + 2512);
  }
}

uint64_t sub_24F51E558()
{
  sub_24F52432C(*(v0 + 2824), type metadata accessor for FriendsDataIntent);

  return MEMORY[0x282200920](v0 + 656, v0 + 2024, sub_24F51E5D8, v0 + 2560);
}

uint64_t sub_24F51E630()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 2952);

  return v1(v2);
}

uint64_t sub_24F51E830()
{
  sub_24F52432C(*(v0 + 2824), type metadata accessor for FriendsDataIntent);

  return MEMORY[0x282200920](v0 + 656, v0 + 2024, sub_24F51E8B0, v0 + 2032);
}

uint64_t sub_24F51E908()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51EAF0()
{

  return MEMORY[0x282200920](v0 + 1296, v0 + 2072, sub_24F51EB5C, v0 + 2176);
}

uint64_t sub_24F51EB78()
{
  sub_24F52432C(*(v0 + 2824), type metadata accessor for FriendsDataIntent);

  return MEMORY[0x282200920](v0 + 656, v0 + 2024, sub_24F51EBF8, v0 + 2224);
}

uint64_t sub_24F51EC50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51EE38()
{

  return MEMORY[0x282200920](v0 + 1296, v0 + 2072, sub_24F51EEB0, v0 + 2368);
}

uint64_t sub_24F51EECC()
{
  sub_24F52432C(*(v0 + 2824), type metadata accessor for FriendsDataIntent);

  return MEMORY[0x282200920](v0 + 656, v0 + 2024, sub_24F51EF4C, v0 + 2416);
}

uint64_t sub_24F51EFA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F51F18C(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
LABEL_30:

    return v2;
  }

  v3 = *(result + 16);
  v4 = (result + 32);
  v5 = v3;
  v6 = (result + 32);
  while (1)
  {
    v8 = v5;
    if (!v5)
    {
      goto LABEL_9;
    }

    v9 = *v6;
    if (v9 != 1 && v9 != 2)
    {
      break;
    }

    v7 = sub_24F92CE08();

    ++v6;
    v5 = v8 - 1;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  while (1)
  {
LABEL_9:
    if (!v3)
    {
      if (v8)
      {
        v11 = *(a2 + 16);
        if (v11)
        {
          v12 = 0;
          v2 = MEMORY[0x277D84F90];
          do
          {
            v13 = a2 + 32 + 88 * v12;
            for (i = v12; ; ++i)
            {
              if (i >= v11)
              {
                __break(1u);
LABEL_49:
                __break(1u);
                goto LABEL_50;
              }

              v15 = *(v13 + 32);
              v16 = *(v13 + 64);
              v44 = *(v13 + 48);
              v45 = v16;
              v46 = *(v13 + 80);
              v17 = *(v13 + 16);
              v41 = *v13;
              v42 = v17;
              v43 = v15;
              v12 = i + 1;
              if (__OFADD__(i, 1))
              {
                goto LABEL_49;
              }

              if ((v46 & 1) == 0)
              {
                break;
              }

              v13 += 88;
              if (v12 == v11)
              {
                return v2;
              }
            }

            sub_24E7FA89C(&v41, v40);
            result = swift_isUniquelyReferenced_nonNull_native();
            v47 = v2;
            if ((result & 1) == 0)
            {
              result = sub_24F457F38(0, *(v2 + 16) + 1, 1);
              v2 = v47;
            }

            v19 = *(v2 + 16);
            v18 = *(v2 + 24);
            if (v19 >= v18 >> 1)
            {
              result = sub_24F457F38((v18 > 1), v19 + 1, 1);
              v2 = v47;
            }

            *(v2 + 16) = v19 + 1;
            v20 = v2 + 88 * v19;
            v21 = v42;
            *(v20 + 32) = v41;
            *(v20 + 48) = v21;
            v22 = v43;
            v23 = v44;
            v24 = v45;
            *(v20 + 112) = v46;
            *(v20 + 80) = v23;
            *(v20 + 96) = v24;
            *(v20 + 64) = v22;
          }

          while (v12 != v11);
          return v2;
        }
      }

      return MEMORY[0x277D84F90];
    }

    if (*v4 && *v4 != 2)
    {
      break;
    }

    v10 = sub_24F92CE08();

    ++v4;
    --v3;
    if (v10)
    {
      if (!v8)
      {
        goto LABEL_32;
      }

LABEL_29:
      v2 = a2;
      goto LABEL_30;
    }
  }

  if (v8)
  {
    goto LABEL_29;
  }

LABEL_32:
  v25 = *(a2 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v26 = 0;
  v2 = MEMORY[0x277D84F90];
LABEL_34:
  v27 = a2 + 32 + 88 * v26;
  for (j = v26; j < v25; ++j)
  {
    v29 = *(v27 + 32);
    v30 = *(v27 + 64);
    v44 = *(v27 + 48);
    v45 = v30;
    v46 = *(v27 + 80);
    v31 = *(v27 + 16);
    v41 = *v27;
    v42 = v31;
    v43 = v29;
    v26 = j + 1;
    if (__OFADD__(j, 1))
    {
      goto LABEL_51;
    }

    if (v46)
    {
      sub_24E7FA89C(&v41, v40);
      result = swift_isUniquelyReferenced_nonNull_native();
      v47 = v2;
      if ((result & 1) == 0)
      {
        result = sub_24F457F38(0, *(v2 + 16) + 1, 1);
        v2 = v47;
      }

      v33 = *(v2 + 16);
      v32 = *(v2 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_24F457F38((v32 > 1), v33 + 1, 1);
        v2 = v47;
      }

      *(v2 + 16) = v33 + 1;
      v34 = v2 + 88 * v33;
      v35 = v42;
      *(v34 + 32) = v41;
      *(v34 + 48) = v35;
      v36 = v43;
      v37 = v44;
      v38 = v45;
      *(v34 + 112) = v46;
      *(v34 + 80) = v37;
      *(v34 + 96) = v38;
      *(v34 + 64) = v36;
      if (v26 != v25)
      {
        goto LABEL_34;
      }

      return v2;
    }

    v27 += 88;
    if (v26 == v25)
    {
      return v2;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

double sub_24F51F558(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247278, &qword_24FA05B58);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 utilityServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24F527D94;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F7F8270;
  aBlock[3] = &block_descriptor_86_1;
  v10 = _Block_copy(aBlock);

  [v7 suggestedFriendsWithHandler_];
  _Block_release(v10);
  swift_unknownObjectRelease();
  return result;
}

void sub_24F51F74C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v24 = v4;
      v5 = v2;
      while (1)
      {
        if (v5 >= v1)
        {
          __break(1u);
LABEL_35:
          __break(1u);
          return;
        }

        v2 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_35;
        }

        v6 = *(v3 + 8 * v5);
        if (*(v6 + 16))
        {
          v7 = sub_24E76D644(0x49746361746E6F63, 0xE900000000000044);
          if (v8)
          {
            sub_24E643A9C(*(v6 + 56) + 32 * v7, v27);
            if (swift_dynamicCast())
            {
              break;
            }
          }
        }

LABEL_5:
        ++v5;
        if (v2 == v1)
        {
          v4 = v24;
          goto LABEL_33;
        }
      }

      if (!*(v6 + 16))
      {
        break;
      }

      v9 = sub_24E76D644(0x656C646E6168, 0xE600000000000000);
      if ((v10 & 1) == 0)
      {
        break;
      }

      sub_24E643A9C(*(v6 + 56) + 32 * v9, v27);
      if (!swift_dynamicCast())
      {
        break;
      }

      if (*(v6 + 16))
      {
        v11 = sub_24E76D644(1684627811, 0xE400000000000000);
        v12 = v24;
        if (v13)
        {
          sub_24E643A9C(*(v6 + 56) + 32 * v11, v27);
          v14 = swift_dynamicCast();
          if (v14)
          {
            v15 = v25;
          }

          else
          {
            v15 = 0;
          }

          if (v14)
          {
            v16 = v26;
          }

          else
          {
            v16 = 0;
          }

          v22 = v16;
          v23 = v15;
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }
      }

      else
      {
        v22 = 0;
        v23 = 0;
        v12 = v24;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_24E61A640(0, v12[2] + 1, 1, v12);
      }

      v17 = v12;
      v18 = v12[2];
      v19 = v17;
      v20 = v17[3];
      if (v18 >= v20 >> 1)
      {
        v19 = sub_24E61A640((v20 > 1), v18 + 1, 1, v19);
      }

      v4 = v19;
      v19[2] = v18 + 1;
      v21 = &v19[6 * v18];
      v21[4] = v25;
      v21[5] = v26;
      v21[6] = v23;
      v21[7] = v22;
      v21[8] = v25;
      v21[9] = v26;
      if (v2 == v1)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_5;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_33:
  v27[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247278, &qword_24FA05B58);
  sub_24F92B798();
}

void sub_24F51F9EC(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  v7 = [objc_opt_self() proxyForLocalPlayer];
  v8 = [v7 profileServicePrivate];

  v9 = sub_24F92B588();
  (*(v4 + 16))(v6, a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v10, v6, v3);
  aBlock[4] = sub_24F527CC0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F7F8178;
  aBlock[3] = &block_descriptor_80_1;
  v12 = _Block_copy(aBlock);

  [v8 filterForContactIDsSupportingFriendingViaPushFromContactIDs:v9 withCompletion:v12];
  _Block_release(v12);
  swift_unknownObjectRelease();
}

uint64_t sub_24F51FC00(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v3 = sub_24F9220D8();
    __swift_project_value_buffer(v3, qword_27F39E808);
    v4 = sub_24F9220B8();
    v5 = sub_24F92BDB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24E5DD000, v4, v5, "[FriendSuggestionsDataIntentImplementation loadContactSuggestions] Unable to determine who supports friending via push", v6, 2u);
      MEMORY[0x2530542D0](v6, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
    return sub_24F92B788();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
    return sub_24F92B798();
  }
}

void *sub_24F51FD64(uint64_t a1)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v1 = objc_opt_self();
  v2 = sub_24F92B588();
  v3 = [v1 predicateForContactsWithIdentifiers_];

  v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  if (qword_27F211338 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4A0, &unk_24F95C410);
    v5 = sub_24F92B588();
    v48[0] = 0;
    v6 = [v4 unifiedContactsMatchingPredicate:v3 keysToFetch:v5 error:v48];

    v7 = v48[0];
    if (!v6)
    {
      v35 = v48[0];
      v36 = sub_24F91F278();

      swift_willThrow();
      if (qword_27F2113E8 != -1)
      {
        swift_once();
      }

      v37 = sub_24F9220D8();
      __swift_project_value_buffer(v37, qword_27F39E808);
      v38 = v36;
      v39 = sub_24F9220B8();
      v40 = sub_24F92BDB8();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v36;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_24E5DD000, v39, v40, "[FriendSuggestionsDataIntentImplementation loadContactSuggestions] CNContactStore threw an exception: %@", v41, 0xCu);
        sub_24E601704(v42, &qword_27F227B20, &qword_24F944D30);
        MEMORY[0x2530542D0](v42, -1, -1);
        MEMORY[0x2530542D0](v41, -1, -1);
      }

      v10 = sub_24E611E60(MEMORY[0x277D84F90]);
      goto LABEL_36;
    }

    v46 = v4;
    sub_24E7FA974();
    v4 = sub_24F92B5A8();
    v8 = v7;

    if (!(v4 >> 62))
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v47 = v3;
      if (!v9)
      {
        break;
      }

      goto LABEL_5;
    }

    v9 = sub_24F92C738();
    v47 = v3;
    if (!v9)
    {
      break;
    }

LABEL_5:
    v3 = 0;
    v10 = MEMORY[0x277D84F98];
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x253052270](v3, v4);
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v14 = *(v4 + 8 * v3 + 32);
      }

      v15 = v14;
      v16 = (v3 + 1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v17 = [v14 identifier];
      v18 = sub_24F92B0D8();
      v20 = v19;

      v21 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48[0] = v10;
      v23 = sub_24E76D644(v18, v20);
      v25 = v10[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_29;
      }

      v29 = v24;
      if (v10[3] < v28)
      {
        sub_24E8AB044(v28, isUniquelyReferenced_nonNull_native);
        v23 = sub_24E76D644(v18, v20);
        if ((v29 & 1) != (v30 & 1))
        {
          result = sub_24F92CF88();
          __break(1u);
          return result;
        }

LABEL_18:
        if (v29)
        {
          goto LABEL_6;
        }

        goto LABEL_19;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_18;
      }

      v34 = v23;
      sub_24E8B7C5C();
      v23 = v34;
      if (v29)
      {
LABEL_6:
        v11 = v23;

        v10 = v48[0];
        v12 = *(v48[0] + 7);
        v13 = *(v12 + 8 * v11);
        *(v12 + 8 * v11) = v21;

        goto LABEL_7;
      }

LABEL_19:
      v10 = v48[0];
      *(v48[0] + (v23 >> 6) + 8) |= 1 << v23;
      v31 = (v10[6] + 16 * v23);
      *v31 = v18;
      v31[1] = v20;
      *(v10[7] + 8 * v23) = v21;

      v32 = v10[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_30;
      }

      v10[2] = v33;
LABEL_7:
      ++v3;
      if (v16 == v9)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
  }

  v10 = MEMORY[0x277D84F98];
LABEL_35:

  v3 = v47;
LABEL_36:

  return v10;
}

uint64_t sub_24F52026C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480, &unk_24F944D20);
  *v3 = v1;
  v3[1] = sub_24E614970;

  return MEMORY[0x2822008A0](a1, 0, 0, 0xD00000000000002ALL, 0x800000024FA760C0, sub_24F520360, 0, v4);
}

double sub_24F520360(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = [objc_opt_self() proxyForLocalPlayer];
  v7 = [v6 utilityServicePrivate];

  (*(v3 + 16))(v5, a1, v2);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  (*(v3 + 32))(v9 + v8, v5, v2);
  aBlock[4] = sub_24F527C28;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F51A1D8;
  aBlock[3] = &block_descriptor_64_0;
  v10 = _Block_copy(aBlock);

  [v7 getFriendSuggestionDenyListWithHandler_];
  _Block_release(v10);
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_24F520554(uint64_t a1)
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Fetched denylist.", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  if (*(a1 + 16))
  {
    sub_24E76D644(0x4449726579616C70, 0xE900000000000073);
    if (v6)
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251720, &qword_24F95C3F0);
  return sub_24F92B798();
}

uint64_t sub_24F5206B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E83F06C;

  return sub_24F526AE8(a2);
}

uint64_t sub_24F520748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E67D244;

  return sub_24E6480C8(a2, a3);
}

uint64_t sub_24F520800(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_24E601704(a1, a3, a4);
  *a1 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_storeEnumTagMultiPayload();
}

double sub_24F520878(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8, &unk_24F9F3B70);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - v5;
  v7 = [objc_allocWithZone(MEMORY[0x277D0C1C8]) init];
  v8 = sub_24F92B098();
  [v7 setPlayerID_];

  v9 = [objc_opt_self() proxyForLocalPlayer];
  v10 = [v9 friendServicePrivate];

  (*(v4 + 16))(v6, a1, v3);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v6, v3);
  aBlock[4] = sub_24F527BD4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E872254;
  aBlock[3] = &block_descriptor_157;
  v13 = _Block_copy(aBlock);

  [v10 getFriendsForPlayer:v7 withFilter:2 handler:v13];
  _Block_release(v13);

  swift_unknownObjectRelease();
  return result;
}

void *sub_24F520ABC(unint64_t a1, void *a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!a2)
  {
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v18 = sub_24F9220D8();
    __swift_project_value_buffer(v18, qword_27F39E808);
    v19 = sub_24F9220B8();
    v20 = sub_24F92BD98();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_24E5DD000, v19, v20, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Fetched played-with.", v21, 2u);
      MEMORY[0x2530542D0](v21, -1, -1);
    }

    if (a1 >> 62)
    {
      v22 = sub_24F92C738();
    }

    else
    {
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v29 = MEMORY[0x277D84F90];
      result = sub_24F457FDC(0, v22 & ~(v22 >> 63), 0);
      if (v22 < 0)
      {
        __break(1u);
        return result;
      }

      v24 = 0;
      v23 = v29;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x253052270](v24, a1);
        }

        else
        {
          v25 = *(a1 + 8 * v24 + 32);
        }

        sub_24F3FAC70(v25, 0, 0, v7);
        v29 = v23;
        v27 = v23[2];
        v26 = v23[3];
        if (v27 >= v26 >> 1)
        {
          sub_24F457FDC((v26 > 1), v27 + 1, 1);
          v23 = v29;
        }

        ++v24;
        v23[2] = v27 + 1;
        sub_24F5242C4(v7, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, type metadata accessor for Player);
      }

      while (v22 != v24);
    }

    v29 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8, &unk_24F9F3B70);
    return sub_24F92B798();
  }

  v8 = a2;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v9 = sub_24F9220D8();
  __swift_project_value_buffer(v9, qword_27F39E808);
  v10 = a2;
  v11 = sub_24F9220B8();
  v12 = sub_24F92BDB8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = a2;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_24E5DD000, v11, v12, "Unable to fetch recently played with: %@", v13, 0xCu);
    sub_24E601704(v14, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  v29 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD8, &unk_24F9F3B70);
  return sub_24F92B788();
}

uint64_t sub_24F520EB8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_24E601704(a1, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  *a1 = a2;

  sub_24F91F618();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24F520F58(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E7E3A7C;

  return sub_24F51AC6C(v5, a3);
}

void sub_24F520FF8(uint64_t *a1)
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
        type metadata accessor for ActivityFriendSuggestion(0);
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActivityFriendSuggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24F5219B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_24F521124(0, v2, 1, a1);
  }
}

void sub_24F521124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v8);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_24F52425C(v22, v16, type metadata accessor for ActivityFriendSuggestion);
      sub_24F52425C(v19, v12, type metadata accessor for ActivityFriendSuggestion);
      v23 = sub_24F91F588();
      sub_24F52432C(v12, type metadata accessor for ActivityFriendSuggestion);
      sub_24F52432C(v16, type metadata accessor for ActivityFriendSuggestion);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_24F5242C4(v22, v34, type metadata accessor for ActivityFriendSuggestion);
      swift_arrayInitWithTakeFrontToBack();
      sub_24F5242C4(v24, v19, type metadata accessor for ActivityFriendSuggestion);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24F521388(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_92:
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = sub_24E86164C(v7);
      v7 = result;
    }

    v76 = (v7 + 16);
    v77 = *(v7 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v7 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_24F52231C((*a3 + 88 * *v78), (*a3 + 88 * *v80), (*a3 + 88 * v81), v85);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_118;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_119;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_120;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *a3;
      v10 = *(v9 + 88 * v6 + 80) & (*(v9 + 88 * v8 + 80) ^ 1);
      v6 = v8 + 2;
      if (v8 + 2 < v5)
      {
        v11 = (v9 + 88 * v8 + 256);
        do
        {
          v12 = *v11;
          if (v12 == *(v11 - 88))
          {
            if (v10)
            {
              goto LABEL_14;
            }
          }

          else if ((v10 ^ v12))
          {
            goto LABEL_13;
          }

          ++v6;
          v11 += 88;
        }

        while (v5 != v6);
        v6 = v5;
      }

LABEL_13:
      if (v10)
      {
LABEL_14:
        if (v6 < v8)
        {
          goto LABEL_123;
        }

        if (v8 < v6)
        {
          v13 = 88 * v6 - 88;
          v14 = 88 * v8;
          v15 = v6;
          v16 = v8;
          do
          {
            if (v16 != --v15)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v17 = v18 + v13;
              v90 = *(v18 + v14 + 32);
              v92 = *(v18 + v14 + 48);
              v94 = *(v18 + v14 + 64);
              v96 = *(v18 + v14 + 80);
              v86 = *(v18 + v14);
              v88 = *(v18 + v14 + 16);
              result = memmove((v18 + v14), (v18 + v13), 0x58uLL);
              *(v17 + 32) = v90;
              *(v17 + 48) = v92;
              *(v17 + 64) = v94;
              *(v17 + 80) = v96;
              *v17 = v86;
              *(v17 + 16) = v88;
            }

            ++v16;
            v13 -= 88;
            v14 += 88;
          }

          while (v16 < v15);
          v5 = a3[1];
        }
      }
    }

    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_122;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_124;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v6 < v8)
    {
      goto LABEL_121;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_24E615ED8(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v29 = *(v7 + 16);
    v28 = *(v7 + 24);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_24E615ED8((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v30;
    v31 = v7 + 32;
    v32 = (v7 + 32 + 16 * v29);
    *v32 = v8;
    v32[1] = v6;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_131;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = *(v7 + 32);
          v35 = *(v7 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_61:
          if (v37)
          {
            goto LABEL_108;
          }

          v50 = (v7 + 16 * v30);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_110;
          }

          v56 = (v31 + 16 * v33);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_115;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        if (v30 < 2)
        {
          goto LABEL_116;
        }

        v60 = (v7 + 16 * v30);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_76:
        if (v55)
        {
          goto LABEL_112;
        }

        v63 = (v31 + 16 * v33);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_114;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_83:
        if (v33 - 1 >= v30)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v71 = (v31 + 16 * (v33 - 1));
        v72 = *v71;
        v73 = (v31 + 16 * v33);
        v74 = v73[1];
        sub_24F52231C((*a3 + 88 * *v71), (*a3 + 88 * *v73), (*a3 + 88 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_103;
        }

        if (v33 > *(v7 + 16))
        {
          goto LABEL_104;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v7 + 16);
        if (v33 >= v75)
        {
          goto LABEL_105;
        }

        v30 = v75 - 1;
        result = memmove((v31 + 16 * v33), v73 + 2, 16 * (v75 - 1 - v33));
        *(v7 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v31 + 16 * v30;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_106;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_107;
      }

      v45 = (v7 + 16 * v30);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_109;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_111;
      }

      if (v49 >= v41)
      {
        v67 = (v31 + 16 * v33);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_117;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_92;
    }
  }

  v19 = *a3;
  v20 = *a3 + 88 * v6;
  v21 = v8 - v6;
LABEL_33:
  v22 = v21;
  v23 = v20;
  while (1)
  {
    if ((*(v23 - 8) & 1) != 0 || !*(v23 + 80))
    {
LABEL_32:
      ++v6;
      v20 += 88;
      --v21;
      if (v6 != v5)
      {
        goto LABEL_33;
      }

      v6 = v5;
      goto LABEL_41;
    }

    if (!v19)
    {
      break;
    }

    v24 = v23 - 88;
    v91 = *(v23 + 32);
    v93 = *(v23 + 48);
    v95 = *(v23 + 64);
    v97 = *(v23 + 80);
    v87 = *v23;
    v89 = *(v23 + 16);
    v25 = *(v23 - 40);
    *(v23 + 32) = *(v23 - 56);
    *(v23 + 48) = v25;
    *(v23 + 64) = *(v23 - 24);
    *(v23 + 80) = *(v23 - 8);
    v26 = *(v23 - 72);
    *v23 = *(v23 - 88);
    *(v23 + 16) = v26;
    *(v24 + 32) = v91;
    *(v24 + 48) = v93;
    *(v24 + 64) = v95;
    *(v24 + 80) = v97;
    v23 -= 88;
    *v24 = v87;
    *(v24 + 16) = v89;
    if (__CFADD__(v22++, 1))
    {
      goto LABEL_32;
    }
  }

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
  return result;
}

void sub_24F5219B8(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  v9 = type metadata accessor for ActivityFriendSuggestion(0);
  v112 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v107 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v115 = &v100 - v12;
  MEMORY[0x28223BE20](v13);
  v116 = &v100 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v100 - v16;
  v114 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v95 = a4;
    }

    else
    {
LABEL_128:
      v95 = sub_24E86164C(a4);
    }

    v118 = v95;
    a4 = *(v95 + 2);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *&v95[16 * a4];
        v97 = v95;
        v98 = *&v95[16 * a4 + 24];
        sub_24F522580(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *&v95[16 * a4 + 16], *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_24E86164C(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_24E8615C0(a4 - 1);
        v95 = v118;
        a4 = *(v118 + 2);
        if (a4 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F90];
  v103 = a4;
  v117 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v108 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v112 + 72);
      v5 = *v114 + v23 * v22;
      v110 = *v114;
      v24 = v110;
      sub_24F52425C(v110 + v23 * v22, v17, type metadata accessor for ActivityFriendSuggestion);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v116;
      sub_24F52425C(v25, v116, type metadata accessor for ActivityFriendSuggestion);
      LODWORD(v111) = sub_24F91F588();
      sub_24F52432C(v27, type metadata accessor for ActivityFriendSuggestion);
      sub_24F52432C(v17, type metadata accessor for ActivityFriendSuggestion);
      v102 = v26;
      v28 = v26 + 2;
      v113 = v23;
      v29 = v110 + v23 * (v26 + 2);
      while (v18 != v28)
      {
        sub_24F52425C(v29, v17, type metadata accessor for ActivityFriendSuggestion);
        v30 = v116;
        sub_24F52425C(v5, v116, type metadata accessor for ActivityFriendSuggestion);
        v31 = sub_24F91F588() & 1;
        sub_24F52432C(v30, type metadata accessor for ActivityFriendSuggestion);
        sub_24F52432C(v17, type metadata accessor for ActivityFriendSuggestion);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v102;
      a4 = v103;
      if (v111)
      {
        if (v18 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v18)
        {
          v101 = v6;
          v32 = v113 * (v18 - 1);
          v33 = v18;
          v34 = v18 * v113;
          v111 = v18;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_24F5242C4(v38 + v37, v107, type metadata accessor for ActivityFriendSuggestion);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_24F5242C4(v107, v38 + v32, type metadata accessor for ActivityFriendSuggestion);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v21 = v36;
          v18 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v18 < v39)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_124;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_126;
        }

        if ((v21 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v21 + a4;
        }

        if (v40 < v21)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v18 != v40)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v108;
    }

    else
    {
      v20 = sub_24E615ED8(0, *(v108 + 2) + 1, 1, v108);
    }

    a4 = *(v20 + 2);
    v41 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v20 = sub_24E615ED8((v41 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[16 * a4];
    *(v42 + 4) = v21;
    *(v42 + 5) = v19;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v20[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v20[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v20[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
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
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v20;
        v83 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v44 + 40];
        sub_24F522580(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v20[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_24E86164C(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        sub_24E8615C0(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v20[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v20[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v114[1];
    a4 = v103;
    if (v19 >= v18)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v18;
  v86 = v21;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v18 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v18;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    sub_24F52425C(v5, v17, type metadata accessor for ActivityFriendSuggestion);
    v92 = v116;
    sub_24F52425C(v89, v116, type metadata accessor for ActivityFriendSuggestion);
    a4 = sub_24F91F588();
    sub_24F52432C(v92, type metadata accessor for ActivityFriendSuggestion);
    sub_24F52432C(v17, type metadata accessor for ActivityFriendSuggestion);
    if ((a4 & 1) == 0)
    {
LABEL_84:
      v19 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v21 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for ActivityFriendSuggestion;
    v93 = v115;
    sub_24F5242C4(v5, v115, type metadata accessor for ActivityFriendSuggestion);
    swift_arrayInitWithTakeFrontToBack();
    sub_24F5242C4(v93, v89, type metadata accessor for ActivityFriendSuggestion);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

uint64_t sub_24F52231C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 88;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 88;
  if (v9 >= v11)
  {
    v16 = 88 * v11;
    if (a4 != __src || &__src[v16] <= a4)
    {
      memmove(a4, __src, 88 * v11);
    }

    v13 = &v4[v16];
    if (v10 >= 88 && v6 > v7)
    {
LABEL_22:
      v5 -= 88;
      do
      {
        if ((*(v6 - 8) & 1) == 0 && *(v13 - 8))
        {
          v18 = v6 - 88;
          if (v5 + 88 != v6)
          {
            memmove(v5, v6 - 88, 0x58uLL);
          }

          if (v13 <= v4 || (v6 -= 88, v18 <= v7))
          {
            v6 = v18;
            goto LABEL_35;
          }

          goto LABEL_22;
        }

        v17 = (v13 - 88);
        if (v5 + 88 != v13)
        {
          memmove(v5, v13 - 88, 0x58uLL);
        }

        v5 -= 88;
        v13 -= 88;
      }

      while (v17 > v4);
      v13 = v17;
    }
  }

  else
  {
    v12 = 88 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 88)
    {
      v6 = v7;
    }

    else
    {
      if (v6 < v5)
      {
        while ((v4[80] & 1) == 0 && v6[80])
        {
          v14 = v6;
          v15 = v7 == v6;
          v6 += 88;
          if (!v15)
          {
            goto LABEL_13;
          }

LABEL_14:
          v7 += 88;
          if (v4 >= v13 || v6 >= v5)
          {
            goto LABEL_16;
          }
        }

        v14 = v4;
        v15 = v7 == v4;
        v4 += 88;
        if (v15)
        {
          goto LABEL_14;
        }

LABEL_13:
        memmove(v7, v14, 0x58uLL);
        goto LABEL_14;
      }

LABEL_16:
      v6 = v7;
    }
  }

LABEL_35:
  v19 = 88 * ((v13 - v4) / 88);
  if (v6 != v4 || v6 >= &v4[v19])
  {
    memmove(v6, v4, v19);
  }

  return 1;
}

void sub_24F522580(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for ActivityFriendSuggestion(0);
  MEMORY[0x28223BE20](v44);
  v43 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = &v34 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v47 = a1;
  v46 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v22 = a4 + v16;
    if (v16 >= 1)
    {
      v23 = -v12;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = -v12;
      do
      {
        v35 = v22;
        v25 = a2;
        v26 = a2 + v23;
        v40 = v25;
        v41 = v26;
        while (1)
        {
          if (v25 <= a1)
          {
            v47 = v25;
            v45 = v35;
            goto LABEL_59;
          }

          v36 = v22;
          v28 = a3 + v23;
          v29 = v24 + v23;
          v30 = v42;
          sub_24F52425C(v29, v42, type metadata accessor for ActivityFriendSuggestion);
          v31 = v43;
          sub_24F52425C(v26, v43, type metadata accessor for ActivityFriendSuggestion);
          v32 = sub_24F91F588();
          sub_24F52432C(v31, type metadata accessor for ActivityFriendSuggestion);
          sub_24F52432C(v30, type metadata accessor for ActivityFriendSuggestion);
          if (v32)
          {
            break;
          }

          v22 = v29;
          if (a3 < v24 || v28 >= v24)
          {
            a3 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v33 = a3 == v24;
            a3 = v28;
            a1 = v38;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v29;
          v25 = v40;
          v27 = v29 > v39;
          v26 = v41;
          v23 = v37;
          if (!v27)
          {
            a2 = v40;
            goto LABEL_58;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v23 = v37;
          a1 = v38;
          v22 = v36;
        }

        else
        {
          v33 = a3 == v40;
          a3 = v28;
          a2 = v41;
          v23 = v37;
          a1 = v38;
          v22 = v36;
          if (!v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v39);
    }

LABEL_58:
    v47 = a2;
    v45 = v22;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    v45 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = a3;
        v19 = v42;
        sub_24F52425C(a2, v42, type metadata accessor for ActivityFriendSuggestion);
        v20 = v43;
        sub_24F52425C(a4, v43, type metadata accessor for ActivityFriendSuggestion);
        v21 = sub_24F91F588();
        sub_24F52432C(v20, type metadata accessor for ActivityFriendSuggestion);
        sub_24F52432C(v19, type metadata accessor for ActivityFriendSuggestion);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v12;
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v12;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v18;
          }

          else
          {
            a3 = v18;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  sub_24F8FB158(&v47, &v46, &v45);
}

uint64_t sub_24F522ACC()
{

  return swift_deallocObject();
}

uint64_t sub_24F522B04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24E6541E4;

  return sub_24F51C73C(a1, v4);
}

uint64_t sub_24F522BA4()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);

  v3 = v0 + ((v2 + 24) & ~v2);

  v4 = v1[6];
  v5 = sub_24F9289E8();
  v29 = *(v5 - 8);
  v28 = *(v29 + 8);
  v28(v3 + v4, v5);

  if (*(v3 + v1[9] + 8) != 1)
  {
  }

  v6 = v3 + v1[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle(0);
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v29 + 48))(v6 + v10, 1, v5))
      {
        v28(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v29 + 48))(v11 + v12, 1, v5))
      {
        v28(v11 + v12, v5);
      }
    }
  }

  if (*(v3 + v1[15] + 8))
  {
  }

  v13 = v3 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game(0);
    v28(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v29 + 48))(v13 + v16, 1, v5))
    {
      v28(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v3 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game(0);
    v28(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v29 + 48))(v20 + v23, 1, v5))
    {
      v28(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F523224(uint64_t a1)
{
  v4 = *(type metadata accessor for Player(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E6541E4;

  return sub_24F51CAE8(a1, v6, v1 + v5, v7);
}

uint64_t type metadata accessor for FriendSuggestionsDataIntentImplementation.RecentActivity(uint64_t a1)
{
  result = qword_27F247288;
  if (!qword_27F247288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F52338C()
{
  v1 = type metadata accessor for Player(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);

  v4 = v1[6];
  v5 = sub_24F9289E8();
  v28 = *(*(v5 - 8) + 8);
  v29 = *(v5 - 8);
  v28(v3 + v4, v5);

  if (*(v3 + v1[9] + 8) != 1)
  {
  }

  v6 = v3 + v1[13];
  v7 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v8 = type metadata accessor for CallProviderConversationHandle(0);
    v9 = *(*(v8 - 8) + 48);
    if (!v9(v6, 1, v8))
    {

      v10 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v29 + 48))(v6 + v10, 1, v5))
      {
        v28(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v29 + 48))(v11 + v12, 1, v5))
      {
        v28(v11 + v12, v5);
      }
    }
  }

  if (*(v3 + v1[15] + 8))
  {
  }

  v13 = v3 + v1[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v13, 1, PlayedTogetherInfo))
  {

    v15 = type metadata accessor for Game(0);
    v28(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v29 + 48))(v13 + v16, 1, v5))
    {
      v28(v13 + v16, v5);
    }

    v17 = v15[21];
    v18 = sub_24F920818();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v13 + v17, 1, v18))
    {
      (*(v19 + 8))(v13 + v17, v18);
    }
  }

  v20 = v3 + v1[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v20, 1, ChallengeInfo))
  {

    v22 = type metadata accessor for Game(0);
    v28(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v29 + 48))(v20 + v23, 1, v5))
    {
      v28(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F5239F4(uint64_t a1)
{
  v4 = *(type metadata accessor for Player(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24E614970;

  return sub_24F5206B0(a1, v1 + v5);
}

uint64_t sub_24F523AD0()
{
  v1 = *(type metadata accessor for FriendsDataIntent(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for Player(0);
  v4 = v3[6];
  v5 = sub_24F9289E8();
  v28 = *(*(v5 - 8) + 8);
  v29 = *(v5 - 8);
  v28(v2 + v4, v5);

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
      if (!(*(v29 + 48))(v6 + v10, 1, v5))
      {
        v28(v6 + v10, v5);
      }
    }

    v11 = v6 + *(v7 + 20);
    if (!v9(v11, 1, v8))
    {

      v12 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v29 + 48))(v11 + v12, 1, v5))
      {
        v28(v11 + v12, v5);
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
    v28(v13 + v15[18], v5);
    v16 = v15[19];
    if (!(*(v29 + 48))(v13 + v16, 1, v5))
    {
      v28(v13 + v16, v5);
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
    v28(v20 + v22[18], v5);
    v23 = v22[19];
    if (!(*(v29 + 48))(v20 + v23, 1, v5))
    {
      v28(v20 + v23, v5);
    }

    v24 = v22[21];
    v25 = sub_24F920818();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v20 + v24, 1, v25))
    {
      (*(v26 + 8))(v20 + v24, v25);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F524150(uint64_t a1)
{
  v4 = *(type metadata accessor for FriendsDataIntent(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F520748(a1, v1 + v5, v6);
}

uint64_t sub_24F52425C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F5242C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F52432C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F52438C()
{
  v1 = sub_24F91EAA8();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[9] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247270, &unk_24FA05B48);
  *v2 = v0;
  v2[1] = sub_24F5244D0;

  return MEMORY[0x2822008A0](v0 + 4, 0, 0, 0xD000000000000018, 0x800000024FA760F0, sub_24F51F558, 0, v3);
}

uint64_t sub_24F5244D0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24EB1B50C;
  }

  else
  {
    v2 = sub_24F5245E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F5245E4()
{
  v1 = v0[4];
  v0[11] = v1;
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v20 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v2, 0);
    v3 = v20;
    v4 = *(v20 + 16);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v9 = v4 + 1;
      v10 = *(v20 + 24);

      if (v4 >= v10 >> 1)
      {
        sub_24F4578E0((v10 > 1), v9, 1);
      }

      *(v20 + 16) = v9;
      v11 = v20 + v5;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v5 += 16;
      v6 += 6;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v0[12] = v3;
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9220D8();
  v0[13] = __swift_project_value_buffer(v12, qword_27F39E808);
  v13 = sub_24F9220B8();
  v14 = sub_24F92BD98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_24E5DD000, v13, v14, "[FriendSuggestionsDataIntentImplementation loadContactSuggestions] Determining Friending via Push capability...", v15, 2u);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[14] = v16;
  *(v16 + 16) = v3;
  v17 = swift_task_alloc();
  v0[15] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480, &unk_24F944D20);
  *v17 = v0;
  v17[1] = sub_24F524860;

  return MEMORY[0x2822008A0](v0 + 5, 0, 0, 0xD000000000000018, 0x800000024FA760F0, sub_24F527CB8, v16, v18);
}

uint64_t sub_24F524860()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_24F524EBC;
  }

  else
  {

    v2 = sub_24F5249B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24F5249B0()
{
  v54 = v0;
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[5];
  v52 = sub_24F51FD64(v0[12]);

  v51 = *(v1 + 16);
  if (v51)
  {
    v4 = 0;
    v50 = v1 + 32;
    v5 = v3 + 56;
    v45 = (v2 + 8);
    v47 = MEMORY[0x277D84F90];
    v6 = v52;
    while (v4 < *(v0[11] + 16))
    {
      v7 = v0;
      v8 = (v50 + 48 * v4);
      v10 = *v8;
      v9 = v8[1];
      v11 = v8[3];
      v12 = v8[5];
      v48 = v8[2];
      v49 = v8[4];
      if (*(v3 + 16))
      {
        sub_24F92D068();

        sub_24F92B218();
        v13 = sub_24F92D0B8();
        v14 = -1 << *(v3 + 32);
        v15 = v13 & ~v14;
        if ((*(v5 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          v16 = ~v14;
          while (1)
          {
            v17 = (*(v3 + 48) + 16 * v15);
            v18 = *v17 == v10 && v17[1] == v9;
            if (v18 || (sub_24F92CE08() & 1) != 0)
            {
              break;
            }

            v15 = (v15 + 1) & v16;
            if (((*(v5 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v19 = v11 != 0;
        }

        else
        {
LABEL_14:
          v19 = 0;
        }

        v6 = v52;
      }

      else
      {

        v19 = 0;
      }

      ++v4;
      if (v6[2] && (v20 = sub_24E76D644(v10, v9), v6 = v52, (v21 & 1) != 0))
      {
        v46 = v7[8];
        v41 = v7[6];
        v42 = *(v52[7] + 8 * v20);
        v22 = [v42 _gkCompositeName];
        v23 = sub_24F92B0D8();
        v43 = v24;
        v44 = v23;

        v7[2] = v10;
        v7[3] = v9;
        sub_24F91EA28();
        sub_24E600AEC();
        v40 = sub_24F92C578();
        v26 = v25;
        (*v45)(v46, v41);
        if (v26)
        {
          v27 = v26;
          v28 = v40;
        }

        else
        {

          v28 = v10;
          v27 = v9;
        }

        v53[0] = 0x3A746361746E6F63;
        v53[1] = 0xEA00000000002F2FLL;
        MEMORY[0x253050C20](v28, v27);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_24E617854(0, *(v47 + 2) + 1, 1, v47);
        }

        v30 = *(v47 + 2);
        v29 = *(v47 + 3);
        v31 = v30 + 1;
        if (v30 >= v29 >> 1)
        {
          v33 = sub_24E617854((v29 > 1), v30 + 1, 1, v47);
          v31 = v30 + 1;
          v47 = v33;
        }

        *(v47 + 2) = v31;
        v32 = &v47[88 * v30];
        *(v32 + 4) = v10;
        *(v32 + 5) = v9;
        *(v32 + 6) = v48;
        *(v32 + 7) = v11;
        *(v32 + 8) = v44;
        *(v32 + 9) = v43;
        *(v32 + 10) = 0x3A746361746E6F63;
        *(v32 + 11) = 0xEA00000000002F2FLL;
        *(v32 + 12) = v49;
        *(v32 + 13) = v12;
        v32[112] = v19;
        v32[113] = 1;
        v6 = v52;
        v0 = v7;
        if (v4 == v51)
        {
          goto LABEL_30;
        }
      }

      else
      {

        v0 = v7;
        if (v4 == v51)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
  }

  else
  {
    v47 = MEMORY[0x277D84F90];
LABEL_30:
    v34 = v0[16];

    v53[0] = v47;

    sub_24F51A030(v53);
    if (v34)
    {
    }

    else
    {

      v35 = v53[0];
      v36 = sub_24F9220B8();
      v37 = sub_24F92BD98();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_24E5DD000, v36, v37, "[FriendSuggestionsDataIntentImplementation loadContactSuggestions] Finished.", v38, 2u);
        MEMORY[0x2530542D0](v38, -1, -1);
      }

      v39 = v0[1];

      v39(v35);
    }
  }
}

uint64_t sub_24F524EBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F524F3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247268, &qword_24FA05B38);
  *(v0 + 24) = sub_24F92A9E8();
  if (qword_27F211320 != -1)
  {
    swift_once();
  }

  v1 = off_27F2471A0;
  *(v0 + 32) = off_27F2471A0;
  v2 = *v1;
  v3 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 40) = v3;
  v4 = *(v2 + 48);
  *(v0 + 72) = v4;
  v5 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v5));
  sub_24F527C50((v1 + v3));
  os_unfair_lock_unlock((v1 + v5));
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_24F5250BC;

  return sub_24F52438C();
}

uint64_t sub_24F5250BC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v4 = sub_24F5254F8;
  }

  else
  {
    v4 = sub_24F5251D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_24F5251D0()
{
  v1 = qword_27F2113E8;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);

  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = *(v6 + 16);

    *(v7 + 4) = v8;

    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Loaded %ld suggestions.", v7, 0xCu);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  v11 = qword_27F2113E8;

  if (v11 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F39E808);

  v12 = sub_24F9220B8();
  v13 = sub_24F92BD98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v9 + 16);

    _os_log_impl(&dword_24E5DD000, v12, v13, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Caching and returning %ld suggestions.", v14, 0xCu);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 32);
  v15 = *(v0 + 40);
  v17 = (*(v0 + 72) + 3) & 0x1FFFFFFFCLL;
  *(v0 + 16) = v9;

  sub_24F92A9C8();

  *(swift_task_alloc() + 16) = v9;
  os_unfair_lock_lock((v16 + v17));
  sub_24F527C7C((v16 + v15));
  v18 = *(v0 + 72);
  v19 = *(v0 + 32);
  if (v10)
  {

    os_unfair_lock_unlock((v19 + ((v18 + 3) & 0x1FFFFFFFCLL)));
  }

  else
  {
    os_unfair_lock_unlock((v19 + ((v18 + 3) & 0x1FFFFFFFCLL)));

    v20 = *(v0 + 8);

    v20(v9);
  }
}

uint64_t sub_24F5254F8()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E808);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 64);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Unable to load suggestions: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  v11 = *(v0 + 64);

  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_27F39E808);
  v12 = MEMORY[0x277D84F90];

  v13 = sub_24F9220B8();
  v14 = sub_24F92BD98();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v12 + 16);

    _os_log_impl(&dword_24E5DD000, v13, v14, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Caching and returning %ld suggestions.", v15, 0xCu);
    MEMORY[0x2530542D0](v15, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 32);
  v16 = *(v0 + 40);
  v18 = (*(v0 + 72) + 3) & 0x1FFFFFFFCLL;
  *(v0 + 16) = v12;

  sub_24F92A9C8();

  *(swift_task_alloc() + 16) = v12;
  os_unfair_lock_lock((v17 + v18));
  sub_24F527C7C((v17 + v16));
  os_unfair_lock_unlock((*(v0 + 32) + ((*(v0 + 72) + 3) & 0x1FFFFFFFCLL)));

  v19 = MEMORY[0x277D84F90];

  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_24F525850()
{
  v1 = sub_24F91F648();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v0[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471D0, &qword_24FA059B8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F525960, 0, 0);
}

uint64_t sub_24F525960()
{
  if (qword_27F2113E8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  v0[10] = __swift_project_value_buffer(v1, qword_27F39E808);
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Fetching...", v4, 2u);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  if (qword_27F211320 != -1)
  {
    swift_once();
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = off_27F2471A0;
  v8 = *(*off_27F2471A0 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*off_27F2471A0 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F2471A0 + v9));
  sub_24E60169C(&v7[v8], v5, &unk_27F2471D0, &qword_24FA059B8);
  os_unfair_lock_unlock(&v7[v9]);
  sub_24E60169C(v5, v6, &unk_27F2471D0, &qword_24FA059B8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v24 = sub_24F9220B8();
      v25 = sub_24F92BD98();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_24E5DD000, v24, v25, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Suggestions not yet loaded, starting load...", v26, 2u);
        MEMORY[0x2530542D0](v26, -1, -1);
      }

      v27 = swift_task_alloc();
      v0[11] = v27;
      *v27 = v0;
      v28 = sub_24F525FA8;
      goto LABEL_24;
    }

    v11 = v0[8];
    v12 = v0[6];
    v13 = v0[3];
    v14 = v0[4];
    v15 = *v11;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247260, &qword_24FA05B28);
    (*(v14 + 32))(v12, &v11[*(v16 + 48)], v13);

    v17 = sub_24F9220B8();
    v18 = sub_24F92BD98();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = *(v15 + 16);

      _os_log_impl(&dword_24E5DD000, v17, v18, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Suggestions already cached, returning %ld", v19, 0xCu);
      MEMORY[0x2530542D0](v19, -1, -1);
    }

    else
    {
    }

    v29 = v0[5];
    v30 = v0[3];
    v31 = v0[4];
    sub_24F91F638();
    sub_24F91F558();
    v33 = v32;
    v34 = *(v31 + 8);
    v0[16] = v34;
    v0[17] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v29, v30);
    if (v33 > 300.0)
    {

      v35 = sub_24F9220B8();
      v36 = sub_24F92BD98();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_24E5DD000, v35, v36, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Cache is getting old, marking it as dirty for next fetch", v37, 2u);
        MEMORY[0x2530542D0](v37, -1, -1);
      }

      v27 = swift_task_alloc();
      v0[18] = v27;
      *v27 = v0;
      v28 = sub_24F5263B4;
LABEL_24:
      v27[1] = v28;

      return sub_24F524F20();
    }

    v38 = v0[9];
    v34(v0[6], v0[3]);
    sub_24E601704(v38, &unk_27F2471D0, &qword_24FA059B8);

    v39 = v0[1];

    return v39(v15);
  }

  else
  {
    v0[13] = *v0[8];
    v20 = sub_24F9220B8();
    v21 = sub_24F92BD98();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_24E5DD000, v20, v21, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Suggestions already fetching, returning cached once it's ready...", v22, 2u);
      MEMORY[0x2530542D0](v22, -1, -1);
    }

    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_24F526150;

    return MEMORY[0x282180668](v0 + 2);
  }
}

uint64_t sub_24F525FA8(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_24F5260A8, 0, 0);
}

uint64_t sub_24F5260A8()
{
  sub_24E601704(v0[9], &unk_27F2471D0, &qword_24FA059B8);
  v1 = v0[12];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24F526150()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24F526570;
  }

  else
  {
    v2 = sub_24F526264;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F526264()
{
  v1 = v0[2];

  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation fetchContactSuggestions] Cached suggestions are ready, returning %ld", v4, 0xCu);
    MEMORY[0x2530542D0](v4, -1, -1);
  }

  else
  {
  }

  v5 = v0[9];

  sub_24E601704(v5, &unk_27F2471D0, &qword_24FA059B8);

  v6 = v0[1];

  return v6(v1);
}

uint64_t sub_24F5263B4(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_24F5264B4, 0, 0);
}

uint64_t sub_24F5264B4()
{
  v1 = *(v0 + 72);
  (*(v0 + 128))(*(v0 + 48), *(v0 + 24));
  sub_24E601704(v1, &unk_27F2471D0, &qword_24FA059B8);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_24F526570()
{
  v1 = *(v0 + 72);

  sub_24E601704(v1, &unk_27F2471D0, &qword_24FA059B8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F52663C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247250, &qword_24F9F3B60);
  *(v0 + 40) = sub_24F92A9E8();
  if (qword_27F211328 != -1)
  {
    swift_once();
  }

  v1 = off_27F2471A8;
  *(v0 + 48) = off_27F2471A8;
  v2 = *v1;
  v3 = *(*v1 + *MEMORY[0x277D841D0] + 16);
  *(v0 + 56) = v3;
  v4 = *(v2 + 48);
  *(v0 + 88) = v4;
  v5 = (v4 + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v5));
  sub_24F527B50((v1 + v3));
  os_unfair_lock_unlock((v1 + v5));
  v6 = *(v0 + 32);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *(v7 + 16) = v6;
  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
  *v8 = v0;
  v8[1] = sub_24F526830;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000025, 0x800000024FA76090, sub_24F527B7C, v7, v9);
}

uint64_t sub_24F526830()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24F526A78;
  }

  else
  {

    v2 = sub_24F52694C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_24F52694C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = (*(v0 + 88) + 3) & 0x1FFFFFFFCLL;
  v5 = *(v0 + 16);
  *(swift_task_alloc() + 16) = v5;
  os_unfair_lock_lock((v3 + v4));
  sub_24F527B84((v3 + v2));
  if (v1)
  {
    v6 = (*(v0 + 48) + ((*(v0 + 88) + 3) & 0x1FFFFFFFCLL));

    os_unfair_lock_unlock(v6);
  }

  else
  {
    os_unfair_lock_unlock((*(v0 + 48) + ((*(v0 + 88) + 3) & 0x1FFFFFFFCLL)));

    *(v0 + 24) = v5;
    sub_24F92A9C8();

    v7 = *(v0 + 8);

    v7(v5);
  }
}

uint64_t sub_24F526A78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F526AE8(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_24F91F648();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AC8, &unk_24FA059C0);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F526BFC, 0, 0);
}

uint64_t sub_24F526BFC()
{
  if (qword_27F211328 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = v0[10];
  v3 = off_27F2471A8;
  v4 = *(*off_27F2471A8 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*off_27F2471A8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_27F2471A8 + v5));
  sub_24E60169C(&v3[v4], v2, &qword_27F242AC8, &unk_24FA059C0);
  os_unfair_lock_unlock(&v3[v5]);
  sub_24E60169C(v2, v1, &qword_27F242AC8, &unk_24FA059C0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (qword_27F2113E8 != -1)
      {
        swift_once();
      }

      v28 = sub_24F9220D8();
      v0[11] = __swift_project_value_buffer(v28, qword_27F39E808);
      v29 = sub_24F9220B8();
      v30 = sub_24F92BD98();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_24E5DD000, v29, v30, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is empty, fetching.", v31, 2u);
        MEMORY[0x2530542D0](v31, -1, -1);
      }

      v21 = swift_task_alloc();
      v0[12] = v21;
      *v21 = v0;
      v22 = sub_24F527284;
      goto LABEL_23;
    }

    v7 = v0[9];
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = *v7;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242AD0, &qword_24F9F3B50);
    (*(v11 + 32))(v8, &v7[*(v13 + 48)], v10);
    sub_24F91F618();
    sub_24F91F558();
    v15 = v14;
    v16 = *(v11 + 8);
    v0[19] = v16;
    v0[20] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v9, v10);
    if (v15 > 300.0)
    {

      if (qword_27F2113E8 != -1)
      {
        swift_once();
      }

      v17 = sub_24F9220D8();
      v0[21] = __swift_project_value_buffer(v17, qword_27F39E808);
      v18 = sub_24F9220B8();
      v19 = sub_24F92BD98();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_24E5DD000, v18, v19, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is expired, refetching.", v20, 2u);
        MEMORY[0x2530542D0](v20, -1, -1);
      }

      v21 = swift_task_alloc();
      v0[22] = v21;
      *v21 = v0;
      v22 = sub_24F527798;
LABEL_23:
      v21[1] = v22;
      v32 = v0[3];

      return sub_24F52661C(v32);
    }

    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v33 = sub_24F9220D8();
    __swift_project_value_buffer(v33, qword_27F39E808);
    v34 = sub_24F9220B8();
    v35 = sub_24F92BD98();
    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[10];
    v38 = v0[7];
    v39 = v0[4];
    if (v36)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_24E5DD000, v34, v35, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is valid, returning.", v40, 2u);
      MEMORY[0x2530542D0](v40, -1, -1);
    }

    v16(v38, v39);
    sub_24E601704(v37, &qword_27F242AC8, &unk_24FA059C0);

    v41 = v0[1];

    return v41(v12);
  }

  else
  {
    v0[15] = *v0[9];
    if (qword_27F2113E8 != -1)
    {
      swift_once();
    }

    v23 = sub_24F9220D8();
    v0[16] = __swift_project_value_buffer(v23, qword_27F39E808);
    v24 = sub_24F9220B8();
    v25 = sub_24F92BD98();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_24E5DD000, v24, v25, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is mid-update, waiting on it to finish.", v26, 2u);
      MEMORY[0x2530542D0](v26, -1, -1);
    }

    v27 = swift_task_alloc();
    v0[17] = v27;
    *v27 = v0;
    v27[1] = sub_24F527554;

    return MEMORY[0x282180668](v0 + 2);
  }
}

uint64_t sub_24F527284(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_24F5274B4;
  }

  else
  {
    v4 = sub_24F527398;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F527398(uint64_t a1)
{
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[10];
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is now full, returning.", v6, 2u);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  sub_24E601704(v5, &qword_27F242AC8, &unk_24FA059C0);
  v7 = v1[13];

  v8 = v1[1];

  return v8(v7);
}

uint64_t sub_24F5274B4()
{
  sub_24E601704(*(v0 + 80), &qword_27F242AC8, &unk_24FA059C0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F527554()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24F527AA4;
  }

  else
  {
    v2 = sub_24F527668;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F527668(uint64_t a1)
{
  v2 = v1[2];
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache finished its update, returning.", v7, 2u);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  sub_24E601704(v6, &qword_27F242AC8, &unk_24FA059C0);

  v8 = v1[1];

  return v8(v2);
}

uint64_t sub_24F527798(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_24F5279F0;
  }

  else
  {
    v4 = sub_24F5278AC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F5278AC(uint64_t a1)
{
  v2 = sub_24F9220B8();
  v3 = sub_24F92BD98();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[19];
  v6 = v1[10];
  v7 = v1[7];
  v8 = v1[4];
  if (v4)
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v2, v3, "[FriendSuggestionsDataIntentImplementation fetchActivitySuggestions] Recently played with cache is valid again, returning.", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v5(v7, v8);
  sub_24E601704(v6, &qword_27F242AC8, &unk_24FA059C0);
  v10 = v1[23];

  v11 = v1[1];

  return v11(v10);
}

uint64_t sub_24F5279F0()
{
  v1 = *(v0 + 80);
  (*(v0 + 152))(*(v0 + 56), *(v0 + 32));
  sub_24E601704(v1, &qword_27F242AC8, &unk_24FA059C0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F527AA4()
{
  v1 = *(v0 + 80);

  sub_24E601704(v1, &qword_27F242AC8, &unk_24FA059C0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t block_copy_helper_157(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F527CE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_24F527DBC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_24F527E58(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Game(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = &a1[*(a3 + 20)];

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_24F91F648();
      v14 = *(*(v13 - 8) + 48);
      v15 = &a1[*(a3 + 24)];

      return v14(v15, a2, v13);
    }
  }
}

_BYTE *sub_24F527F88(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v8 = type metadata accessor for Game(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = &v5[*(a4 + 20)];

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_24F91F648();
      v14 = *(*(v13 - 8) + 56);
      v15 = &v5[*(a4 + 24)];

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_24F5280A8(uint64_t a1)
{
  result = type metadata accessor for Game(319);
  if (v2 <= 0x3F)
  {
    result = sub_24F91F648();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t PlayerDataIntent.playerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F5281AC(uint64_t a1)
{
  v2 = sub_24F528360();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F5281E8(uint64_t a1)
{
  v2 = sub_24F528360();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayerDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247298, &qword_24FA05B88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F528360();
  sub_24F92D128();
  sub_24F92CCA8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F528360()
{
  result = qword_27F2472A0;
  if (!qword_27F2472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2472A0);
  }

  return result;
}

uint64_t PlayerDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2472A8, &qword_24FA05B90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F528360();
  sub_24F92D108();
  if (!v2)
  {
    v9 = sub_24F92CBC8();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F528560(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247298, &qword_24FA05B88);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F528360();
  sub_24F92D128();
  sub_24F92CCA8();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F5286C0()
{
  result = qword_27F2472B0;
  if (!qword_27F2472B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2472B0);
  }

  return result;
}

unint64_t sub_24F528718()
{
  result = qword_27F2472B8;
  if (!qword_27F2472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2472B8);
  }

  return result;
}

unint64_t sub_24F528770()
{
  result = qword_27F2472C0;
  if (!qword_27F2472C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2472C0);
  }

  return result;
}

uint64_t sub_24F5287C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217C08, &qword_24F9FAD50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2472C8, &unk_24FA05D80);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    while (1)
    {
      sub_24E60169C(v11, v5, &qword_27F217C08, &qword_24F9FAD50);
      if ((v5[*(v2 + 48) + 8] & 1) == 0)
      {
        break;
      }

      sub_24E601704(v5, &qword_27F217C08, &qword_24F9FAD50);
      v11 += v12;
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    sub_24E6009C8(v5, v9, &qword_27F217C08, &qword_24F9FAD50);
    v14 = 0;
    v13 = 1;
  }

  else
  {
LABEL_5:
    v13 = 0;
    v14 = 1;
  }

  (*(v3 + 56))(v9, v14, 1, v2, v7);
  sub_24E601704(v9, &qword_27F2472C8, &unk_24FA05D80);
  return v13;
}

char *sub_24F5289A8(unint64_t a1, int a2, uint64_t *a3, char *a4, char *a5)
{
  v130 = a4;
  LODWORD(v122) = a2;
  v132 = a1;
  v7 = type metadata accessor for PlayerAvatar(0);
  v128 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v121 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType(0);
  v134 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v127 = &v117 - v13;
  MEMORY[0x28223BE20](v14);
  v120 = &v117 - v15;
  MEMORY[0x28223BE20](v16);
  v124 = &v117 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217C08, &qword_24F9FAD50);
  v133 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v123 = &v117 - v22;
  MEMORY[0x28223BE20](v23);
  v126 = &v117 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v117 - v26;
  MEMORY[0x28223BE20](v28);
  v119 = &v117 - v29;
  MEMORY[0x28223BE20](v30);
  v131 = &v117 - v31;
  MEMORY[0x28223BE20](v32);
  v135 = &v117 - v33;
  MEMORY[0x28223BE20](v34);
  v125 = &v117 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v117 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2472C8, &unk_24FA05D80);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  MEMORY[0x28223BE20](v43);
  v45 = &v117 - v44;
  MEMORY[0x28223BE20](v46);
  v49 = &v117 - v48;
  v129 = a3;
  if (v122)
  {
    v50 = sub_24E6B7C60(a5, a3);
    v131 = v52;
    v132 = v53 >> 1;
    v54 = (v53 >> 1) - v51;
    if (__OFSUB__(v53 >> 1, v51))
    {
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

    v27 = v50;
    if (!v54)
    {

      swift_unknownObjectRelease();
      v27 = MEMORY[0x277D84F90];
LABEL_52:
      v84 = *(v27 + 2);
      v41 = a3[2];
      v11 = MEMORY[0x277D84F90];
      if (v84 == v41)
      {
        return v27;
      }

      v51 = v84 - 1;
      if (v41 >= v84 - 1)
      {
        if (v84)
        {
          if (v84 == 1)
          {

            if (!v41)
            {
LABEL_96:

              return v27;
            }

LABEL_57:
            v136 = v11;
            sub_24F457BF8(0, v41, 0);
            v85 = v136;
            v86 = v133[80];
            v129 = a3;
            v87 = a3 + ((v86 + 32) & ~v86);
            v134 = *(v133 + 9);
            v88 = v128;
            v89 = v121;
            do
            {
              v90 = v135;
              sub_24E60169C(v87, v135, &qword_27F217C08, &qword_24F9FAD50);
              sub_24E6009C8(v90, v20, &qword_27F217C08, &qword_24F9FAD50);
              sub_24F5299C0(v20, v89, type metadata accessor for PlayerAvatar);
              v136 = v85;
              v92 = *(v85 + 2);
              v91 = *(v85 + 3);
              if (v92 >= v91 >> 1)
              {
                sub_24F457BF8((v91 > 1), v92 + 1, 1);
                v88 = v128;
                v85 = v136;
              }

              *(v85 + 2) = v92 + 1;
              sub_24F5299C0(v89, &v85[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v92], type metadata accessor for PlayerAvatar);
              v87 += v134;
              --v41;
            }

            while (v41);
            goto LABEL_96;
          }

LABEL_95:
          sub_24E6B87A4(a3, a3 + ((v133[80] + 32) & ~v133[80]), v51, (2 * v41) | 1);
          a3 = v116;
          v41 = v116[2];
          if (!v41)
          {
            goto LABEL_96;
          }

          goto LABEL_57;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v55 = v51;
    v136 = MEMORY[0x277D84F90];
    v41 = v54 & ~(v54 >> 63);

    sub_24F457A38(0, v41, 0);
    if (v54 < 0)
    {
      goto LABEL_91;
    }

    v130 = v27;
    v27 = v136;
    v41 = &qword_27F217C08;
    a3 = &qword_24F9FAD50;
    if (v55 <= v132)
    {
      v56 = v132;
    }

    else
    {
      v56 = v55;
    }

    while (v56 != v55)
    {
      v57 = v135;
      sub_24E60169C(v131 + *(v133 + 9) * v55, v135, &qword_27F217C08, &qword_24F9FAD50);
      v58 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78, &qword_24F93E8B0) + 48)];
      sub_24E6009C8(v57, v20, &qword_27F217C08, &qword_24F9FAD50);
      sub_24F5299C0(v20, v11, type metadata accessor for PlayerAvatar);
      *v58 = 0;
      v58[8] = 1;
      v136 = v27;
      v60 = *(v27 + 2);
      v59 = *(v27 + 3);
      if (v60 >= v59 >> 1)
      {
        sub_24F457A38((v59 > 1), v60 + 1, 1);
        v27 = v136;
      }

      *(v27 + 2) = v60 + 1;
      sub_24F5299C0(v11, &v27[((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v60], type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
      if (v132 == ++v55)
      {
        swift_unknownObjectRelease();
        a3 = v129;
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v11 = a5;
  v122 = v47;
  if ((v132 & 0x8000000000000000) != 0 || a3[2] <= v132)
  {
    (*(v133 + 7))(v45, 1, 1, v18);
  }

  else
  {
    v20 = v133;
    sub_24E60169C(a3 + ((v20[80] + 32) & ~v20[80]) + *(v133 + 9) * v132, v45, &qword_27F217C08, &qword_24F9FAD50);
    (*(v20 + 7))(v45, 0, 1, v18);
  }

  sub_24E6009C8(v45, v49, &qword_27F2472C8, &unk_24FA05D80);
  v61 = sub_24F5287C4(a3);
  v118 = v49;
  if ((v61 & 1) == 0)
  {
    sub_24E60169C(v49, v41, &qword_27F2472C8, &unk_24FA05D80);
    if ((*(v133 + 6))(v41, 1, v18) == 1)
    {
      sub_24E601704(v41, &qword_27F2472C8, &unk_24FA05D80);
      v27 = MEMORY[0x277D84F90];
LABEL_64:
      v95 = a3[2];
      v96 = v132;
      if (v95)
      {
        v97 = 0;
        v98 = MEMORY[0x277D84F90];
        do
        {
          if (v96 != v97)
          {
            v102 = *(v27 + 2);
            if (v102 == v130)
            {
              sub_24E60169C(a3 + ((v133[80] + 32) & ~v133[80]) + *(v133 + 9) * v97, v126, &qword_27F217C08, &qword_24F9FAD50);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v98 = sub_24E6168A0(0, v98[2] + 1, 1, v98);
              }

              v104 = v98[2];
              v103 = v98[3];
              if (v104 >= v103 >> 1)
              {
                v98 = sub_24E6168A0((v103 > 1), v104 + 1, 1, v98);
              }

              v98[2] = v104 + 1;
              v99 = v98 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v104;
              v100 = type metadata accessor for PlayerAvatar;
              v101 = v126;
            }

            else
            {
              v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78, &qword_24F93E8B0);
              v106 = a3;
              v107 = v127;
              v108 = &v127[*(v105 + 48)];
              v109 = v123;
              sub_24E60169C(v106 + ((v133[80] + 32) & ~v133[80]) + *(v133 + 9) * v97, v123, &qword_27F217C08, &qword_24F9FAD50);
              sub_24F5299C0(v109, v107, type metadata accessor for PlayerAvatar);
              *v108 = 0;
              v108[8] = 1;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v27 = sub_24E6168C8(0, (v102 + 1), 1, v27);
              }

              v111 = *(v27 + 2);
              v110 = *(v27 + 3);
              if (v111 >= v110 >> 1)
              {
                v27 = sub_24E6168C8((v110 > 1), v111 + 1, 1, v27);
              }

              *(v27 + 2) = v111 + 1;
              v99 = &v27[((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v111];
              v100 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType;
              v101 = v127;
            }

            sub_24F5299C0(v101, v99, v100);
            a3 = v129;
            v96 = v132;
          }

          ++v97;
        }

        while (v95 != v97);
      }

      sub_24E601704(v118, &qword_27F2472C8, &unk_24FA05D80);
      return v27;
    }

    v11 = v119;
    sub_24E6009C8(v41, v119, &qword_27F217C08, &qword_24F9FAD50);
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78, &qword_24F93E8B0);
    v63 = v120;
    v94 = &v120[*(v93 + 48)];
    sub_24E60169C(v11, v27, &qword_27F217C08, &qword_24F9FAD50);
    sub_24F5299C0(v27, v63, type metadata accessor for PlayerAvatar);
    *v94 = 0;
    v94[8] = 1;
    v27 = sub_24E6168C8(0, 1, 1, MEMORY[0x277D84F90]);
    v38 = *(v27 + 2);
    v65 = *(v27 + 3);
    v41 = v38 + 1;
    if (v38 < v65 >> 1)
    {
LABEL_63:
      sub_24E601704(v11, &qword_27F217C08, &qword_24F9FAD50);
      *(v27 + 2) = v41;
      sub_24F5299C0(v63, &v27[((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v38], type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType);
      goto LABEL_64;
    }

LABEL_99:
    v27 = sub_24E6168C8((v65 > 1), v41, 1, v27);
    goto LABEL_63;
  }

  v62 = (a5 - 1);
  if (__OFSUB__(a5, 1))
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v123 = v18;
  v63 = v132;
  v64 = v132;
  v41 = v124;
  if (v62 >= 1)
  {
    v63 = v132;
    v64 = v132;
    do
    {
      if (v63 <= 0)
      {
        if (v64 >= a3[2] - 1)
        {
          break;
        }
      }

      else
      {
        --v63;
      }

      if (__OFSUB__(v64, v63))
      {
        goto LABEL_88;
      }

      if (v64 - v63 == 3)
      {
        break;
      }

      if (v64 < a3[2] - 1)
      {
        ++v64;
      }

      if (__OFSUB__(v64, v63))
      {
        goto LABEL_89;
      }
    }

    while (v64 - v63 < v62);
  }

  v65 = a3[2];
  v130 = v65;
  if (!v65)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_82;
  }

  if (v64 < v63)
  {
    __break(1u);
    goto LABEL_99;
  }

  v66 = 0;
  v67 = v129 + ((v133[80] + 32) & ~v133[80]);
  v68 = MEMORY[0x277D84F90];
  v129 = *(v133 + 9);
  v27 = MEMORY[0x277D84F90];
  v126 = v63;
  v127 = v38;
  do
  {
    sub_24E60169C(v67, v38, &qword_27F217C08, &qword_24F9FAD50);
    if (v66 < v63 || v64 < v66)
    {
      sub_24E60169C(v38, v131, &qword_27F217C08, &qword_24F9FAD50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v68 = sub_24E6168A0(0, v68[2] + 1, 1, v68);
      }

      v79 = v68[2];
      v78 = v68[3];
      if (v79 >= v78 >> 1)
      {
        v68 = sub_24E6168A0((v78 > 1), v79 + 1, 1, v68);
      }

      sub_24E601704(v38, &qword_27F217C08, &qword_24F9FAD50);
      v68[2] = v79 + 1;
      v69 = v68 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v79;
      v70 = type metadata accessor for PlayerAvatar;
      v71 = v131;
    }

    else
    {
      v72 = v125;
      sub_24E60169C(v38, v125, &qword_27F217C08, &qword_24F9FAD50);
      sub_24F5299C0(v72, v41, type metadata accessor for PlayerAvatar);
      if (v132 == v66)
      {
        v73 = v135;
        sub_24E60169C(v38, v135, &qword_27F217C08, &qword_24F9FAD50);
        v74 = v73 + *(v123 + 48);
        v75 = *v74;
        v76 = *(v74 + 8);
        v77 = v73;
        v41 = v124;
        sub_24F529A28(v77);
      }

      else
      {
        v75 = 0;
        v76 = 1;
      }

      v80 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D78, &qword_24F93E8B0) + 48);
      *v80 = v75;
      *(v80 + 8) = v76;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v126;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_24E6168C8(0, *(v27 + 2) + 1, 1, v27);
      }

      v38 = v127;
      v83 = *(v27 + 2);
      v82 = *(v27 + 3);
      if (v83 >= v82 >> 1)
      {
        v27 = sub_24E6168C8((v82 > 1), v83 + 1, 1, v27);
      }

      sub_24E601704(v38, &qword_27F217C08, &qword_24F9FAD50);
      *(v27 + 2) = v83 + 1;
      v69 = &v27[((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v83];
      v70 = type metadata accessor for ChallengesSlashHeaderView.SlashHeaderItemType;
      v71 = v41;
    }

    sub_24F5299C0(v71, v69, v70);
    ++v66;
    v67 += v129;
  }

  while (v130 != v66);
LABEL_82:
  v112 = v122;
  sub_24E6009C8(v118, v122, &qword_27F2472C8, &unk_24FA05D80);
  v113 = v123;
  if ((*(v133 + 6))(v112, 1, v123) == 1)
  {
    sub_24E601704(v112, &qword_27F2472C8, &unk_24FA05D80);
    return v27;
  }

  v114 = *(v112 + *(v113 + 48) + 8);
  result = sub_24F529A28(v112);
  if ((v114 & 1) != 0 || !__OFSUB__(v132, v63))
  {
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F5299C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F529A28(uint64_t a1)
{
  v2 = type metadata accessor for PlayerAvatar(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for FramedVideoViewModel(uint64_t a1)
{
  result = qword_27F2472D0;
  if (!qword_27F2472D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F529AF4(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24F529C98(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for ChallengesLeaderboardSuggestionLockup(uint64_t a1)
{
  result = qword_27F2472E0;
  if (!qword_27F2472E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F529E74(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24F52A020(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_24F52A020(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
          if (v5 <= 0x3F)
          {
            sub_24F52A020(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
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

void sub_24F52A020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24F52A084(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247380, &qword_24FA060B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F52C174();
  sub_24F92D128();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v2)
  {
    v11 = *(v3 + 40);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
    sub_24F52C288(&qword_27F21BC30, &qword_27F213E28, &protocol conformance descriptor for Player, MEMORY[0x277D83948]);
    sub_24F92CD48();
    type metadata accessor for ChallengesLeaderboardSuggestionLockup(0);
    v10[14] = 2;
    sub_24F9289E8();
    sub_24F52C324(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CCF8();
    v10[13] = 3;
    sub_24F92CD08();
    v10[12] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v10[11] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
    v10[10] = 6;
    sub_24F929608();
    sub_24F52C324(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F52A498@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = v42 - v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v45);
  v46 = v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247370, &unk_24FA060A8);
  v47 = *(v9 - 8);
  v48 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v42 - v10;
  v12 = type metadata accessor for ChallengesLeaderboardSuggestionLockup(0);
  MEMORY[0x28223BE20](v12);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 24);
  v17 = sub_24F9289E8();
  v18 = *(*(v17 - 8) + 56);
  v53 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[8]];
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v52 = v19;
  sub_24E61DA68(&v56, v19, qword_27F21B590, &unk_24F93BE30);
  v20 = v12[9];
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v51 = v20;
  v22(&v14[v20], 1, 1, v21);
  v23 = v12[10];
  v24 = sub_24F929608();
  v25 = *(*(v24 - 8) + 56);
  v54 = v23;
  v25(&v14[v23], 1, 1, v24);
  v26 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_24F52C174();
  v49 = v11;
  v27 = v50;
  sub_24F92D108();
  if (v27)
  {
    v28 = v51;
    v29 = v52;
    __swift_destroy_boxed_opaque_existential_1(v55);
    sub_24E601704(&v14[v53], &qword_27F213FB0, &qword_24F93E6B0);
    sub_24E601704(v29, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v14[v28], &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(&v14[v54], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v50 = v8;
    v42[2] = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v59 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v30 = v57;
    *v14 = v56;
    *(v14 + 1) = v30;
    *(v14 + 4) = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
    v59 = 1;
    sub_24F52C288(&qword_27F2196A8, &qword_27F213E38, &protocol conformance descriptor for Player, MEMORY[0x277D83978]);
    sub_24F92CC68();
    v31 = v51;
    v32 = v52;
    *(v14 + 5) = v56;
    LOBYTE(v56) = 2;
    sub_24F52C324(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v33 = v50;
    v42[1] = 0;
    sub_24F92CC18();
    v34 = v12;
    sub_24E61DA68(v33, &v14[v53], &qword_27F213FB0, &qword_24F93E6B0);
    LOBYTE(v56) = 3;
    v35 = sub_24F92CC28();
    v36 = v47;
    v37 = &v14[v34[7]];
    *v37 = v35;
    v37[1] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v59 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v56, v32, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v56) = 5;
    sub_24E65CAA0();
    v39 = v46;
    sub_24F92CC68();
    sub_24E61DA68(v39, &v14[v31], &qword_27F215440, &unk_24F942BD0);
    LOBYTE(v56) = 6;
    sub_24F52C324(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v40 = v44;
    sub_24F92CC18();
    (*(v36 + 8))(v49, v48);
    sub_24E61DA68(v40, &v14[v54], &qword_27F213E68, &unk_24F93BC80);
    sub_24F52C1C8(v14, v43);
    __swift_destroy_boxed_opaque_existential_1(v55);
    return sub_24F52C22C(v14);
  }
}

unint64_t sub_24F52AD40()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 1701667182;
  if (v1 != 3)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 0x6B726F77747261;
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

uint64_t sub_24F52AE18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F52BF28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F52AE40(uint64_t a1)
{
  v2 = sub_24F52C174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F52AE7C(uint64_t a1)
{
  v2 = sub_24F52C174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F52AEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 36), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E68039C(v7, a2);
}

uint64_t sub_24F52AFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247300, &qword_24FA05F78);
  MEMORY[0x28223BE20](v49);
  v4 = &v47 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247308, &qword_24FA05F80);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247310, &qword_24FA05F88);
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v9 = &v47 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247318, &qword_24FA05F90);
  MEMORY[0x28223BE20](v52);
  v11 = &v47 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247320, &qword_24FA05F98);
  MEMORY[0x28223BE20](v51);
  v13 = &v47 - v12;
  *v7 = sub_24F9249A8();
  *(v7 + 1) = 0x4030000000000000;
  v7[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247328, &qword_24FA05FA0);
  sub_24F52B5B0(a1, &v7[*(v14 + 44)]);
  v15 = type metadata accessor for ChallengesLeaderboardSuggestionLockup(0);
  sub_24E60169C(a1 + *(v15 + 32), v54, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v54, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v16 = sub_24F9248C8();
  __swift_project_value_buffer(v16, qword_27F39F078);
  sub_24E602068(&qword_27F247330, &qword_27F247308, &qword_24FA05F80, MEMORY[0x277CE1138]);
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v7, &qword_27F247308, &qword_24FA05F80);
  v17 = *(sub_24F924258() + 20);
  v18 = *MEMORY[0x277CE0118];
  v19 = sub_24F924B38();
  (*(*(v19 - 8) + 104))(&v4[v17], v18, v19);
  __asm { FMOV            V0.2D, #12.0 }

  *v4 = _Q0;
  *&v4[*(sub_24F924248() + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v25 = sub_24F926D08();

  *&v4[*(v49 + 52)] = v25;
  sub_24F52BE30(v4, v11);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247338, &qword_24FA05FA8);
  v27 = v48;
  v28 = v50;
  (*(v48 + 16))(&v11[v26[9]], v9, v50);
  v29 = &v11[v26[10]];
  *v29 = sub_24F923398() & 1;
  *(v29 + 1) = v30;
  v29[16] = v31 & 1;
  v32 = &v11[v26[11]];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v33 = qword_27F24E488;
  v34 = sub_24F923398();
  v36 = v35;
  v38 = v37;
  v39 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247340, &qword_24FA05FD8) + 36)];
  *v39 = v33;
  v39[8] = v34 & 1;
  *(v39 + 2) = v36;
  v39[24] = v38 & 1;
  LOBYTE(v33) = sub_24F923398();
  v41 = v40;
  LOBYTE(v36) = v42;
  sub_24F52BEA8(v4);
  (*(v27 + 8))(v9, v28);
  v43 = &v11[*(v52 + 36)];
  *v43 = v33 & 1;
  *(v43 + 1) = v41;
  v43[16] = v36 & 1;
  LOBYTE(v33) = sub_24F925868();
  sub_24E6009C8(v11, v13, &qword_27F247318, &qword_24FA05F90);
  v44 = &v13[*(v51 + 36)];
  *v44 = v33;
  *(v44 + 8) = 0u;
  *(v44 + 24) = 0u;
  v44[40] = 1;
  v45 = v53;
  sub_24E6009C8(v13, v53, &qword_27F247320, &qword_24FA05F98);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247348, &qword_24FA05FE0);
  *(v45 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24F52B5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247350, &qword_24FA05FE8);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v9 = type metadata accessor for ChallengesLeaderboardSuggestionLockup(0);
  sub_24E60169C(a1 + *(v9 + 24), v8, &qword_27F213FB0, &qword_24F93E6B0);
  v10 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247358, &unk_24FA05FF0) + 36)];
  v11 = *(sub_24F924258() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_24F924B38();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #12.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
  sub_24F927618();
  sub_24F9238C8();
  v19 = &v8[*(v4 + 44)];
  v20 = *&v58[11];
  *v19 = *&v58[9];
  *(v19 + 1) = v20;
  *(v19 + 2) = *&v58[13];
  v45 = sub_24F924C98();
  LOBYTE(v50[0]) = 1;
  sub_24F52BA58(a1, v59);
  *(v58 + 7) = v59[0];
  *(&v58[2] + 7) = v59[1];
  *(&v58[4] + 7) = v59[2];
  *(&v58[6] + 7) = v59[3];
  v44 = LOBYTE(v50[0]);
  KeyPath = swift_getKeyPath();
  sub_24E60169C(a1 + *(v9 + 32), v50, qword_27F24EC90, &unk_24F93C1D0);
  v21 = *(&v52 + 7);
  sub_24E601704(v50, qword_27F21B590, &unk_24F93BE30);
  if (v21)
  {
    v22 = sub_24F926DF8();
    v23 = sub_24F925898();
    v24 = swift_getKeyPath();
    v25 = sub_24F926D38();
    v26 = swift_getKeyPath();
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v23 = 0;
    v26 = 0;
    v25 = 0;
  }

  v27 = v46;
  sub_24E60169C(v8, v46, &qword_27F247350, &qword_24FA05FE8);
  v28 = v27;
  v29 = v43;
  sub_24E60169C(v28, v43, &qword_27F247350, &qword_24FA05FE8);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247360, &qword_24FA06030);
  v31 = v29 + v30[12];
  v41 = v8;
  v47[0] = v45;
  v47[1] = 0;
  LOBYTE(v48[0]) = v44;
  *(v48 + 1) = *v58;
  *(&v48[1] + 1) = *&v58[2];
  *(&v48[3] + 1) = *&v58[6];
  *(&v48[2] + 1) = *&v58[4];
  v32 = KeyPath;
  *&v48[4] = *(&v58[7] + 7);
  *(&v48[4] + 1) = KeyPath;
  v49 = 0;
  v33 = v48[0];
  *v31 = v45;
  *(v31 + 16) = v33;
  v34 = v48[1];
  v35 = v48[2];
  v36 = v48[3];
  v37 = v48[4];
  *(v31 + 96) = 0;
  *(v31 + 64) = v36;
  *(v31 + 80) = v37;
  *(v31 + 32) = v34;
  *(v31 + 48) = v35;
  v38 = v29 + v30[16];
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = (v29 + v30[20]);
  sub_24E60169C(v47, v50, &qword_27F247368, &qword_24FA06038);
  sub_24E6DC040(v22, v24, v23, v26, v25);
  sub_24E6DC0B0(v22, v24, v23, v26, v25);
  *v39 = v22;
  v39[1] = v24;
  v39[2] = v23;
  v39[3] = v26;
  v39[4] = v25;
  sub_24E601704(v41, &qword_27F247350, &qword_24FA05FE8);
  sub_24E6DC0B0(v22, v24, v23, v26, v25);
  v53 = *&v58[2];
  v54 = *&v58[4];
  *v55 = *&v58[6];
  v50[0] = v45;
  v50[1] = 0;
  v51 = v44;
  v52 = *v58;
  *&v55[15] = *(&v58[7] + 7);
  v56 = v32;
  v57 = 0;
  sub_24E601704(v50, &qword_27F247368, &qword_24FA06038);
  return sub_24E601704(v46, &qword_27F247350, &qword_24FA05FE8);
}

uint64_t sub_24F52BA58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ChallengesLeaderboardSuggestionLockup(0);
  sub_24E600AEC();

  v5 = sub_24F925E18();
  v7 = v6;
  v9 = v8;
  v10 = *(*(a1 + 40) + 16);
  if (v10)
  {
    v33 = v4;
    sub_24F69AF8C(v10);
    v11 = sub_24F925E18();
    v13 = v12;
    v15 = v14;
    sub_24F925A18();
    v34 = v7;
    v16 = sub_24F925C98();
    v18 = v17;
    v35 = v9;
    v20 = v19;

    sub_24E600B40(v11, v13, v15 & 1);

    sub_24F9251C8();
    v21 = sub_24F925C58();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = v20 & 1;
    v9 = v35;
    v29 = v16;
    v7 = v34;
    sub_24E600B40(v29, v18, v28);

    v30 = v25 & 1;
    sub_24E5FD138(v21, v23, v30);

    v4 = v33;
  }

  else
  {
    v21 = 0;
    v23 = 0;
    v30 = 0;
    v27 = 0;
  }

  v31 = v4 & 1;
  sub_24E5FD138(v5, v7, v4 & 1);

  sub_24E65D2B4(v21, v23, v30, v27);
  sub_24E65D2F8(v21, v23, v30, v27);
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v31;
  *(a2 + 24) = v9;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = v30;
  *(a2 + 56) = v27;
  sub_24E65D2F8(v21, v23, v30, v27);
  sub_24E600B40(v5, v7, v31);
}

uint64_t sub_24F52BCA0(uint64_t a1)
{
  sub_24F47D8E0();

  return sub_24F9218E8();
}

unint64_t sub_24F52BD30()
{
  result = qword_27F2472F8;
  if (!qword_27F2472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2472F8);
  }

  return result;
}

uint64_t sub_24F52BE30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247300, &qword_24FA05F78);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F52BEA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247300, &qword_24FA05F78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F52BF28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA6B270 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
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

unint64_t sub_24F52C174()
{
  result = qword_27F247378;
  if (!qword_27F247378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247378);
  }

  return result;
}

uint64_t sub_24F52C1C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesLeaderboardSuggestionLockup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F52C22C(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesLeaderboardSuggestionLockup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F52C288(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240, qword_24F957DE0);
    sub_24F52C324(a2, type metadata accessor for Player, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F52C324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F52C380()
{
  result = qword_27F247388;
  if (!qword_27F247388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247348, &qword_24FA05FE0);
    sub_24F52C438();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247388);
  }

  return result;
}

unint64_t sub_24F52C438()
{
  result = qword_27F247390;
  if (!qword_27F247390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247320, &qword_24FA05F98);
    sub_24F52C4C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247390);
  }

  return result;
}

unint64_t sub_24F52C4C4()
{
  result = qword_27F247398;
  if (!qword_27F247398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247318, &qword_24FA05F90);
    sub_24F52C550();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247398);
  }

  return result;
}

unint64_t sub_24F52C550()
{
  result = qword_27F2473A0;
  if (!qword_27F2473A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F247340, &qword_24FA05FD8);
    sub_24E602068(&qword_27F2473A8, &qword_27F247338, &qword_24FA05FA8, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2473A0);
  }

  return result;
}

unint64_t sub_24F52C60C()
{
  result = qword_27F2473B0;
  if (!qword_27F2473B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2473B0);
  }

  return result;
}

unint64_t sub_24F52C664()
{
  result = qword_27F2473B8;
  if (!qword_27F2473B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2473B8);
  }

  return result;
}

unint64_t sub_24F52C6BC()
{
  result = qword_27F2473C0;
  if (!qword_27F2473C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2473C0);
  }

  return result;
}

uint64_t FriendCountFieldsProvider.init(player:buckets:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E70D960(a1, a4);
  v14 = type metadata accessor for FriendCountFieldsProvider(0);
  *(a4 + v14[5]) = a3;
  sub_24E70D960(a1, v13);
  type metadata accessor for FriendCountFieldsProvider.FriendListObserver(0);
  v15 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v15 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_friends) = 0;
  sub_24E70D960(v13, v15 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_player);
  *(v15 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_objectGraph) = a3;
  v16 = sub_24F92B858();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v15;

  sub_24F1D3DA4(0, 0, v10, &unk_24FA061F0, v17);

  sub_24EBA228C(v13, type metadata accessor for Player);
  result = sub_24EBA228C(a1, type metadata accessor for Player);
  *(a4 + v14[6]) = v15;
  *(a4 + v14[7]) = a2;
  return result;
}

uint64_t FriendCountFieldsProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_24F928418();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F52CA28, 0, 0);
}

uint64_t sub_24F52CA28()
{
  *(v0 + 168) = type metadata accessor for FriendCountFieldsProvider(0);
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_24F52CACC;

  return sub_24F52E040();
}

uint64_t sub_24F52CACC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {
    v4 = sub_24F52D01C;
  }

  else
  {
    v4 = sub_24F52CBE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F52CBE0()
{
  v1 = v0[23];
  if (v1)
  {
    v2 = v0[21];
    v3 = v0[19];
    v4 = *(v1 + 16);

    v5 = *(v3 + *(v2 + 28));
    v6 = sub_24F1A78D8(v4, v5);
    if (v7)
    {
      if (qword_27F210580 != -1)
      {
        swift_once();
      }

      v8 = sub_24F92AAE8();
      __swift_project_value_buffer(v8, qword_27F39C3E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F928408();
      sub_24F9283F8();
      v0[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218050, qword_24F99DB70);
      v0[6] = v5;

      sub_24F9283D8();
      sub_24E857CC8((v0 + 6));
      sub_24F9283F8();
      sub_24F928428();
      sub_24F92A5A8();
    }

    else
    {
      v9 = v0[24];
      v10 = v0[18];
      v0[13] = MEMORY[0x277D83B88];
      v0[10] = v6;
      __swift_mutable_project_boxed_opaque_existential_1(v10, *(v10 + 24));
      sub_24F929A28();
      __swift_destroy_boxed_opaque_existential_1(v0 + 10);
      if (v9)
      {
        if (qword_27F210580 != -1)
        {
          swift_once();
        }

        v11 = sub_24F92AAE8();
        __swift_project_value_buffer(v11, qword_27F39C3E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
        sub_24F928468();
        *(swift_allocObject() + 16) = xmmword_24F93DE60;
        sub_24F928408();
        sub_24F9283F8();
        swift_getErrorValue();
        v12 = v0[14];
        v13 = v0[15];
        v0[5] = v13;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
        (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v12, v13);
        sub_24F9283D8();
        sub_24E857CC8((v0 + 2));
        sub_24F9283F8();
        sub_24F928428();
        sub_24F92A5A8();
      }
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24F52D01C()
{
  v1 = v0[24];
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F928408();
  sub_24F9283F8();
  swift_getErrorValue();
  v3 = v0[14];
  v4 = v0[15];
  v0[5] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v3, v4);
  sub_24F9283D8();
  sub_24E857CC8((v0 + 2));
  sub_24F9283F8();
  sub_24F928428();
  sub_24F92A5A8();

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F52D244(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24E614970;

  return FriendCountFieldsProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t sub_24F52D2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v4[11] = type metadata accessor for FriendsDataIntent(0);
  v4[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40, &unk_24F95C720);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508, &unk_24F9C0390);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = sub_24F91F6B8();
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F52D498, 0, 0);
}

uint64_t sub_24F52D498(uint64_t a1)
{
  sub_24F91F6A8();
  *(v1 + 176) = sub_24E802CE0(&unk_2861C23B0);
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v2 = qword_27F252DD0;
  *(v1 + 184) = qword_27F252DD0;
  *(v1 + 272) = 1;

  return MEMORY[0x2822009F8](sub_24F52D550, v2, 0);
}

uint64_t sub_24F52D550()
{
  sub_24F83EC44(*(v0 + 176), *(v0 + 168), (v0 + 272));

  return MEMORY[0x2822009F8](sub_24F52D5D0, 0, 0);
}

uint64_t sub_24F52D5D0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_player;
  v0[24] = OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_objectGraph;
  v0[25] = v4;
  v0[26] = OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_friends;
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_24F52D6CC;
  v6 = v0[16];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v6);
}

uint64_t sub_24F52D6CC()
{

  return MEMORY[0x2822009F8](sub_24F52D7C8, 0, 0);
}

uint64_t sub_24F52D7C8()
{
  if (v0[8])
  {
    v1 = v0[10];

    return MEMORY[0x2822009F8](sub_24F52D8E4, v1, 0);
  }

  else
  {
    v3 = v0[20];
    v2 = v0[21];
    v4 = v0[19];
    (*(v0[17] + 8))(v0[18], v0[16]);
    (*(v3 + 8))(v2, v4);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_24F52D8E4()
{
  v0[28] = *(v0[10] + v0[24]);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v2 = swift_task_alloc();
  v0[29] = v2;
  *v2 = v0;
  v2[1] = sub_24F52D9AC;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24F52D9AC()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_24F52DCE4;
  }

  else
  {
    v4 = sub_24F52DAD8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F52DAD8()
{
  sub_24E70D960(v0[10] + v0[25], v0[12]);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[31] = v3;
  v4 = sub_24F408D14();
  *v3 = v0;
  v3[1] = sub_24F52DBB8;
  v5 = v0[28];
  v7 = v0[11];
  v6 = v0[12];

  return MEMORY[0x28217F4B0](v0 + 9, v6, v5, v7, v4, v1, v2);
}

uint64_t sub_24F52DBB8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 80);
  if (v0)
  {
    v4 = sub_24F52DDF4;
  }

  else
  {
    v4 = sub_24F52DD08;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F52DD08()
{
  v1 = v0[26];
  v2 = v0[10];
  sub_24EBA228C(v0[12], type metadata accessor for FriendsDataIntent);
  v3 = v0[9];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *(v2 + v1) = v3;

  v4 = swift_task_alloc();
  v0[27] = v4;
  *v4 = v0;
  v4[1] = sub_24F52D6CC;
  v5 = v0[16];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v5);
}

uint64_t sub_24F52DDF4()
{
  sub_24EBA228C(v0[12], type metadata accessor for FriendsDataIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[33] = v0[32];

  return MEMORY[0x2822009F8](sub_24F52DE80, 0, 0);
}

uint64_t sub_24F52DE80()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[17] + 8))(v0[18], v0[16]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F52DF4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F52DF8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F52D2D8(a1, v4, v5, v6);
}

uint64_t sub_24F52E060()
{
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  v3 = OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_friends;
  v0[3] = OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_friends;
  v4 = *(v1 + v3);
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  if (v4)
  {

    sub_24F9283A8();
    sub_24F92A588();

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    sub_24F9283A8();
    sub_24F92A588();

    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_24F1A8714;

    return sub_24F52E574();
  }
}

uint64_t sub_24F52E338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Player(0);
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

uint64_t sub_24F52E408(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Player(0);
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

void sub_24F52E4C0(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for FriendCountFieldsProvider.FriendListObserver(319);
      if (v3 <= 0x3F)
      {
        sub_24ECD93D0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24F52E574()
{
  v1[8] = v0;
  v1[9] = type metadata accessor for FriendsDataIntent(0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F52E608, v0, 0);
}

uint64_t sub_24F52E608()
{
  v0[11] = *(v0[8] + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_objectGraph);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_24F52E6D4;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24F52E6D4()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_24F1A9060;
  }

  else
  {
    v4 = sub_24F52E800;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F52E800()
{
  sub_24E70D960(v0[8] + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_player, v0[10]);
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_24F408D14();
  *v3 = v0;
  v3[1] = sub_24F52E8E4;
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];

  return MEMORY[0x28217F4B0](v0 + 7, v5, v6, v7, v4, v1, v2);
}

uint64_t sub_24F52E8E4()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_24F52EAA4;
  }

  else
  {
    v4 = sub_24F52EA10;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24F52EA10()
{
  sub_24EBA228C(v0[10], type metadata accessor for FriendsDataIntent);
  v1 = v0[7];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24F52EAA4()
{
  sub_24EBA228C(v0[10], type metadata accessor for FriendsDataIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F52EB2C()
{
  sub_24EBA228C(v0 + OBJC_IVAR____TtCV12GameStoreKit25FriendCountFieldsProviderP33_DFBD3B45E0FB58D64D15DCF07008CE5E18FriendListObserver_player, type metadata accessor for Player);

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_24F52EBA8(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F52EC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v30 = a3;
  v5 = sub_24F925218();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  (*(v6 + 104))(&v29 - v18, *MEMORY[0x277CE0558], v5, v17);
  (*(v6 + 56))(v19, 0, 1, v5);
  v20 = *(v10 + 56);
  v29 = a1;
  sub_24EDEBCCC(a1, v12);
  sub_24EDEBCCC(v19, &v12[v20]);
  v21 = *(v6 + 48);
  if (v21(v12, 1, v5) != 1)
  {
    sub_24EDEBCCC(v12, v15);
    if (v21(&v12[v20], 1, v5) != 1)
    {
      (*(v6 + 32))(v8, &v12[v20], v5);
      sub_24EDEBD3C();
      v22 = sub_24F92AFF8();
      v23 = *(v6 + 8);
      v23(v8, v5);
      sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
      v23(v15, v5);
      sub_24E601704(v12, &qword_27F215598, &qword_24F945EF0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    (*(v6 + 8))(v15, v5);
LABEL_6:
    sub_24E601704(v12, &unk_27F254F20, &qword_24F940790);
    goto LABEL_9;
  }

  sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
  if (v21(&v12[v20], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v12, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  if ((_s12GameStoreKit15PageEnvironmentV4isAXSbvg_0() & 1) == 0)
  {
    v28 = sub_24F923E98();
    (*(*(v28 - 8) + 8))(a2, v28);
    result = sub_24E601704(v29, &qword_27F215598, &qword_24F945EF0);
    v27 = 2;
    goto LABEL_10;
  }

LABEL_9:
  v24 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  v25 = sub_24F923E98();
  (*(*(v25 - 8) + 8))(a2, v25);
  result = sub_24E601704(v29, &qword_27F215598, &qword_24F945EF0);
  v27 = v24 & 1;
LABEL_10:
  *v30 = v27;
  return result;
}

uint64_t CustomViewLayout.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F52F138()
{
  result = qword_27F247400;
  if (!qword_27F247400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247400);
  }

  return result;
}

unint64_t InternalSettingsArcadeEntitlementPageIntent.jsRepresentation(in:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() valueWithNewObjectInContext_];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v3;
  return result;
}

uint64_t sub_24F52F23C(uint64_t a1)
{
  v2 = sub_24F52F3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F52F278(uint64_t a1)
{
  v2 = sub_24F52F3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalSettingsArcadeEntitlementPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247408, &qword_24FA063E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F52F3C8();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F52F3C8()
{
  result = qword_27F247410;
  if (!qword_27F247410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247410);
  }

  return result;
}

uint64_t sub_24F52F464(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247408, &qword_24FA063E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F52F3C8();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F52F578@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = [objc_opt_self() valueWithNewObjectInContext_];
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v3;
  return result;
}

double sub_24F52F608(unsigned __int8 *a1)
{
  v2 = *a1;
  if (sub_24F0CCA98(*(v1 + 24), *a1))
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F531234(&qword_27F247498, type metadata accessor for InternalSettingsArcadeEntitlementModel, &unk_24FA065DC);
    sub_24F91FD78();
  }

  return result;
}

void sub_24F52F71C(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_24F531234(&qword_27F247498, type metadata accessor for InternalSettingsArcadeEntitlementModel, &unk_24FA065DC);
  sub_24F91FD88();

  *a1 = *(v1 + 24);
}

void sub_24F52F7C4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F531234(&qword_27F247498, type metadata accessor for InternalSettingsArcadeEntitlementModel, &unk_24FA065DC);
  sub_24F91FD88();

  *a2 = *(v3 + 24);
}

double sub_24F52F86C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_24F531234(&qword_27F21FE50, type metadata accessor for ArcadeSubscription, &protocol conformance descriptor for ArcadeSubscription);
  sub_24F91FD88();

  v3 = *(v2 + 16);
  if (sub_24F0CCA98(*(v1 + 24), v3))
  {
    *(v1 + 24) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F531234(&qword_27F247498, type metadata accessor for InternalSettingsArcadeEntitlementModel, &unk_24FA065DC);
    sub_24F91FD78();
  }

  return result;
}

double sub_24F52F9F4(uint64_t a1)
{
  swift_getKeyPath();
  sub_24F531234(&qword_27F21FE50, type metadata accessor for ArcadeSubscription, &protocol conformance descriptor for ArcadeSubscription);
  sub_24F91FD88();

  return result;
}

double sub_24F52FA90(uint64_t a1)
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
  sub_24EA998B8(0, 0, v4, &unk_24FA06720, v7);

  return result;
}

uint64_t sub_24F52FBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24F92B7F8();
  *(v4 + 24) = sub_24F92B7E8();
  v6 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F52FC4C, v6, v5);
}

uint64_t sub_24F52FC4C()
{

  sub_24F52F86C();
  sub_24F91FD68();
  v1 = *(v0 + 8);

  return v1();
}

double sub_24F52FCF0()
{

  v1 = OBJC_IVAR____TtC12GameStoreKitP33_82CBCFFA1301A47C3728014E077C3DF538InternalSettingsArcadeEntitlementModel___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_24F52FDBC(uint64_t a1)
{
  result = sub_24F91FDC8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F52FE88()
{
  result = qword_27F247430;
  if (!qword_27F247430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247430);
  }

  return result;
}

unint64_t sub_24F52FEE0()
{
  result = qword_27F247438;
  if (!qword_27F247438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F247438);
  }

  return result;
}

uint64_t sub_24F52FF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_24F91F6A8();
  v8 = type metadata accessor for InternalSettingsEntitlementEntry(0);
  v9 = (a4 + *(v8 + 20));
  *v9 = a1;
  v9[1] = a2;
  sub_24F53276C(a3, &v16);
  if (v17)
  {
    sub_24E612C80(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    v10 = sub_24F92CD88();
    v12 = v11;
    sub_24E601704(a3, &qword_27F2474D0, &unk_24FA06790);
    v13 = (a4 + *(v8 + 24));
    *v13 = v10;
    v13[1] = v12;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_24E601704(&v16, &qword_27F2474D0, &unk_24FA06790);
    result = sub_24E601704(a3, &qword_27F2474D0, &unk_24FA06790);
    v15 = (a4 + *(v8 + 24));
    *v15 = 0;
    v15[1] = 0xE000000000000000;
  }

  return result;
}

uint64_t sub_24F530068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_24F923C68();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F9248F8();
  v58 = *(v7 - 8);
  v59 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247440, &qword_24FA06698);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247448, &qword_24FA066A0);
  v50 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247450, &qword_24FA066A8);
  v54 = *(v15 - 8);
  v55 = v15;
  MEMORY[0x28223BE20](v15);
  v51 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247458, &qword_24FA066B0);
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x28223BE20](v17);
  v52 = &v48 - v18;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247460, &qword_24FA066B8);
  MEMORY[0x28223BE20](v48);
  v20 = &v48 - v19;
  v64 = a1;
  v66 = a1;
  v67 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247468, &qword_24FA066C0);
  sub_24F530DCC();
  sub_24F925A98();
  swift_getKeyPath();
  v68 = a2;
  sub_24F531234(&qword_27F247498, type metadata accessor for InternalSettingsArcadeEntitlementModel, &unk_24FA065DC);
  sub_24F91FD88();

  v65 = a2;
  v21 = *(a2 + 24);
  if (v21 <= 2)
  {
    v28 = 0xE500000000000000;
    v29 = 0x6C61697274;
    if (v21 != 1)
    {
      v29 = 0x6973616863727570;
      v28 = 0xEA0000000000676ELL;
    }

    v30 = v21 == 0;
    if (*(a2 + 24))
    {
      v26 = v29;
    }

    else
    {
      v26 = 0x6269726373627573;
    }

    if (v30)
    {
      v27 = 0xEA00000000006465;
    }

    else
    {
      v27 = v28;
    }
  }

  else
  {
    v22 = 0xED000064656E696DLL;
    v23 = 0x7265746544746F6ELL;
    if (v21 != 5)
    {
      v23 = 0xD000000000000011;
      v22 = 0x800000024FA42890;
    }

    v24 = 0x800000024FA42840;
    v25 = 0xD00000000000001FLL;
    if (v21 == 3)
    {
      v25 = 0xD00000000000001CLL;
    }

    else
    {
      v24 = 0x800000024FA42860;
    }

    if (*(a2 + 24) <= 4u)
    {
      v26 = v25;
    }

    else
    {
      v26 = v23;
    }

    if (*(a2 + 24) <= 4u)
    {
      v27 = v24;
    }

    else
    {
      v27 = v22;
    }
  }

  v68 = v26;
  v69 = v27;
  v31 = sub_24E602068(&qword_27F2474A0, &qword_27F247440, &qword_24FA06698, MEMORY[0x277CDE5A0]);
  v32 = sub_24E600AEC();
  v33 = MEMORY[0x277D837D0];
  sub_24F926458();

  (*(v10 + 8))(v12, v9);
  v35 = v58;
  v34 = v59;
  v36 = v49;
  (*(v58 + 104))(v49, *MEMORY[0x277CDDDC0], v59);
  v68 = v9;
  v69 = v33;
  v70 = v31;
  v71 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v51;
  v39 = v53;
  sub_24F926868();
  (*(v35 + 8))(v36, v34);
  (*(v50 + 8))(v14, v39);
  v40 = v60;
  sub_24F923C58();
  v68 = v39;
  v69 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v52;
  v42 = v55;
  v43 = v62;
  sub_24F926B98();
  (*(v61 + 8))(v40, v43);
  (*(v54 + 8))(v38, v42);
  v44 = &v20[*(v48 + 36)];
  sub_24F923AD8();
  sub_24F92B808();
  v45 = swift_allocObject();
  v46 = v65;
  *(v45 + 16) = v64;
  *(v45 + 24) = v46;
  *v44 = &unk_24FA06708;
  *(v44 + 1) = v45;
  (*(v56 + 32))(v20, v41, v57);
  sub_24F531078(v20, v63);
}

uint64_t sub_24F530828(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F247480, &qword_24FA066C8);
  sub_24F530E64();
  return sub_24F927298();
}