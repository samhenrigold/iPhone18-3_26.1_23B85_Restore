uint64_t sub_218DB1188(uint64_t a1, uint64_t a2)
{
  sub_219BF2FA4();
  sub_218846C98(0, &unk_280EE6950, type metadata accessor for FCSportsOnboardingState, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_218DB1218(uint64_t *a3@<X8>)
{
  v4 = sub_219BF2FA4();
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  v5 = qword_280F61778;
  v6 = sub_219BF61F4();
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09EC0;
  v13 = a3;
  if (v4 == 1)
  {
    v8 = 0xE900000000000064;
    v9 = 0x656472616F626E6FLL;
  }

  else if (v4)
  {
    v10 = sub_219BF7894();
    MEMORY[0x21CECC330](v10);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    v9 = 0x286E776F6E6B6E75;
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xEC00000064656472;
    v9 = 0x616F626E4F746F6ELL;
  }

  v11 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v12 = sub_2186FC3BC();
  *(v7 + 64) = v12;
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = 0;
  *(v7 + 80) = 0xE000000000000000;
  sub_219BE5314("SportsOnboardingManager recovering error in ensuring latest onboarding state=%{public}@, error=%{public}@", 105, 2, &dword_2186C1000, v5, v6, v7);

  *v13 = v4;
}

void sub_218DB1434(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo);
    v6 = sub_219BF2FA4();

    a2(v6, 0);
  }

  else
  {
    a2(0, 1);
  }
}

double sub_218DB14DC(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v12 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_20:
    v5 = sub_219BF7214();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v10 = v3;
    v11 = v1;
    v3 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v3, v4);
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v11;
          v8 = v12;
          v3 = v10;
          goto LABEL_18;
        }
      }

      else
      {
        if (v3 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong || (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        v1 = &v12;
        sub_219BF73E4();
      }

      ++v3;
      if (v6 == v5)
      {
        goto LABEL_16;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_18:

  *(v1 + v3) = v8;

  return result;
}

uint64_t sub_218DB16A0(uint64_t a1)
{
  sub_219BE3204();
  v1 = sub_219BE1C44();
  type metadata accessor for FCSportsOnboardingState(0);
  sub_219BE2F84();

  v2 = sub_219BE1C44();
  v3 = sub_219BE3084();

  return v3;
}

uint64_t sub_218DB1798@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_userInfo) sportsOnboardingCompletedDate];
  if (v3)
  {
    v4 = v3;
    sub_219BDBCA4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_219BDBD34();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_218DB1848()
{
  sub_21874D974();
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218DB18F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_280E8D8B0 != -1)
    {
      swift_once();
    }

    v3 = qword_280F61778;
    v4 = sub_219BF6214();
    sub_219BE5314("SportsOnboardingManager refreshing onboarding state, in response to subscription change...", 90, 2, &dword_2186C1000, v3, v4, MEMORY[0x277D84F90]);
    MEMORY[0x28223BE20](v5);
    sub_219BE3204();
    v6 = sub_219BE2E54();
    sub_219BE3024();
  }
}

uint64_t sub_218DB1A50()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 24);
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager), v1);
  v3 = *(v0 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSubscriptionChangeToken);
  v4 = *(v0 + OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSubscriptionChangeToken + 8);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v5 = sub_219BF66A4();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = *(v2 + 56);

  v7(v3, v4, v5, sub_218DB23A4, v6, v1, v2);
}

void sub_218DB1B90(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = &a1[OBJC_IVAR____TtC7NewsUI223SportsOnboardingManager_sportsSyncManager];
  v7 = *(v6 + 3);
  v8 = *(v6 + 4);
  __swift_project_boxed_opaque_existential_1(v6, v7);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v12 = a1;
  v9 = sub_219BF66A4();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *(v8 + 8);

  v11(v9, a4, v10, v7, v8);
}

void sub_218DB1CA4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_218856F00(a2);
  }
}

uint64_t sub_218DB1E38(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280E8D8B0 != -1)
  {
    swift_once();
  }

  v4 = qword_280F61778;
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  v6 = sub_219BF6214();
  sub_219BE5314("SportsOnboardingManager failed to fetch favorited sports tags, error=%{public}@", 79, 2, &dword_2186C1000, v4, v6, v5);

  return a2(a1);
}

double sub_218DB1F80(uint64_t a1, unint64_t a2)
{
  v4 = sub_219BED224();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  *v7 = sub_219BF66A4();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_219BED254();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v8 = OBJC_IVAR____TtC7NewsUI219SubscriptionService_observers;
    swift_beginAccess();
    v4 = *(a2 + v8);
    v16 = MEMORY[0x277D84F90];
    if (!(v4 >> 62))
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v9 = sub_219BF7214();
LABEL_4:

  if (v9)
  {
    v14 = v8;
    v15 = a2;
    a2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](a2, v4);
        v10 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          a2 = v15;
          v12 = v16;
          v8 = v14;
          goto LABEL_20;
        }
      }

      else
      {
        if (a2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v10 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          goto LABEL_17;
        }
      }

      if (!swift_unknownObjectWeakLoadStrong() || (swift_unknownObjectRelease(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0) && (v8 = Strong, swift_unknownObjectRelease(), v8 == a1))
      {
      }

      else
      {
        v8 = &v16;
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++a2;
      if (v10 == v9)
      {
        goto LABEL_18;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  *(a2 + v8) = v12;

  return result;
}

unint64_t sub_218DB220C()
{
  result = qword_27CC0B2F0;
  if (!qword_27CC0B2F0)
  {
    sub_219BE1D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B2F0);
  }

  return result;
}

uint64_t sub_218DB226C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v13, a2, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t objectdestroy_11Tm_1()
{

  return swift_deallocObject();
}

unint64_t sub_218DB2454()
{
  result = qword_27CC11DC8;
  if (!qword_27CC11DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11DC8);
  }

  return result;
}

uint64_t sub_218DB24B0()
{
  v0 = sub_219BE84F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE5F74();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() areAnimationsEnabled];
  if (v8)
  {
    sub_218DB2968(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
    sub_219BE2534();
    sub_219BE5F54();
    (*(v5 + 8))(v7, v4);
    v9 = sub_219BE84E4();
    (*(v1 + 8))(v3, v0);
    if (v9)
    {
      LOBYTE(v8) = 1;
    }

    else
    {
      v10 = sub_218DB26B0();
      if (v10)
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        LOBYTE(v8) = sub_218DB2A58(v10);
      }
    }
  }

  return v8 & 1;
}

uint64_t sub_218DB26B0()
{
  sub_218DB2968(0, &qword_280EE59D8, MEMORY[0x277D6D700], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - v4;
  v6 = sub_219BE5F74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DB2968(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2534();
  sub_219BE5F64();
  (*(v7 + 8))(v9, v6);
  v10 = sub_219BE6914();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v5, 1, v10) == 1 || (sub_218DB2BFC(v5, v2), v12 = (*(v11 + 88))(v2, v10), v12 == *MEMORY[0x277D6D6F8]))
  {
    v13 = sub_218DB29CC(v5);
    v14 = sub_218DB2A58(v13) ^ 1;
  }

  else if (v12 == *MEMORY[0x277D6D6F0] || v12 == *MEMORY[0x277D6D6E8])
  {
    sub_218DB29CC(v5);
    v14 = 1;
  }

  else
  {
    (*(v11 + 8))(v2, v10);
    sub_218DB29CC(v5);
    v14 = 0;
  }

  return v14 & 1;
}

void sub_218DB2968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218DB29CC(uint64_t a1)
{
  sub_218DB2968(0, &qword_280EE59D8, MEMORY[0x277D6D700], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218DB2A58(uint64_t a1)
{
  v1 = sub_219BE2554();
  if (*(v1 + 16))
  {
    v2 = *MEMORY[0x277D35598];
    v4 = sub_2188198D8(v2, v3);
    if (v5)
    {
      sub_2186D1230(*(v1 + 56) + 32 * v4, v20);

      v6 = swift_dynamicCast();
      v7 = (v6 & v19);
      goto LABEL_6;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = sub_218DB2C90(v6);
  v10 = v9;
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (!v12)
  {
    if (v10)
    {
      goto LABEL_18;
    }

    return 1;
  }

  v13 = sub_219BF5414();
  v15 = v14;

  if (!v10)
  {
    if (v15)
    {
      goto LABEL_18;
    }

    return 1;
  }

  if (v15)
  {
    if (v8 == v13 && v10 == v15)
    {
    }

    else
    {
      v17 = sub_219BF78F4();

      if ((v17 & 1) == 0)
      {
        return v7;
      }
    }

    return 1;
  }

LABEL_18:

  return v7;
}

uint64_t sub_218DB2BFC(uint64_t a1, uint64_t a2)
{
  sub_218DB2968(0, &qword_280EE59D8, MEMORY[0x277D6D700], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DB2C90(uint64_t a1)
{
  v1 = sub_219BE2554();
  if (*(v1 + 16) && (v3 = sub_2188198D8(*MEMORY[0x277D766D0], v2), (v4 & 1) != 0))
  {
    sub_2186D1230(*(v1 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_218DB2D78()
{
  sub_218747EAC(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v50 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v52 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v2;
  MEMORY[0x28223BE20](v3);
  v49 = &v43 - v4;
  v53 = sub_219BDE294();
  v5 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747EAC(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  v47 = sub_219BDD534();
  v46 = *(v47 - 8);
  *&v11 = MEMORY[0x28223BE20](v47).n128_u64[0];
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + 32);
  v48 = *(v0 + 24);
  v15 = [objc_msgSend(v14 appConfiguration];
  result = swift_unknownObjectRelease();
  if (v15)
  {
    sub_2187B2C48(0);
    v18 = v17;
    v54 = swift_allocBox();
    v20 = v19;
    v45 = *(v18 + 48);
    sub_2187B2DA0(0);
    v44 = *(v21 + 48);
    sub_219BF5414();

    v22 = sub_219BDB954();
    v23 = *(*(v22 - 8) + 56);
    v23(v10, 1, 1, v22);
    sub_219BDD514();
    v23(v10, 1, 1, v22);
    v24 = v53;
    (*(v5 + 104))(v7, *MEMORY[0x277D2FF08], v53);
    sub_219BDD894();
    (*(v5 + 8))(v7, v24);
    sub_2187BC574(v10, &unk_280EE9D00, MEMORY[0x277CC9260]);
    (*(v46 + 8))(v13, v47);
    v25 = MEMORY[0x277D84F90];
    *(v20 + v44) = MEMORY[0x277D84F90];
    *(v20 + v45) = v25;
    v26 = v54 | 2;
    v27 = sub_219BDFA44();
    v28 = v49;
    (*(*(v27 - 8) + 56))(v49, 1, 1, v27);
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    v62 = 0;
    memset(v61, 0, sizeof(v61));
    v60 = v48;
    sub_2187B14CC(v61, &v56, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v57 + 1))
    {
      sub_21875F93C(&v56, v58);
      *&v56 = v26;
      v29 = sub_2194DA78C(v58);
      v31 = v30;
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1(v58);
    }

    else
    {
      sub_218744BD0(&v56, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v29 = qword_280ED32D8;
      v31 = qword_280ED32E0;
      v33 = qword_280ED32E8;

      sub_2188202A8(v31);
    }

    v55 = v26;
    v57 = 0u;
    v56 = 0u;
    v34 = v52;
    sub_2189B4E2C(v28, v52);
    sub_2187B14CC(v63, v58, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v35 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v36 = (v51 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = (v36 + 47) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    sub_2189B4EAC(v34, v38 + v35);
    v39 = v38 + v36;
    v40 = v58[1];
    *v39 = v58[0];
    *(v39 + 16) = v40;
    *(v39 + 32) = v59;
    v41 = (v38 + v37);
    v42 = (v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v41 = 0;
    v41[1] = 0;
    *v42 = v29;
    v42[1] = v31;
    v42[2] = v33;

    sub_2188202A8(v31);
    sub_2186CF94C(0);
    sub_218DB387C(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v31, v33);
    sub_218744BD0(v61, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_218744BD0(v63, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_2187BC574(v28, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_218744BD0(&v56, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2187B2EC4);

    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DB36B0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218DB379C(void *a1)
{
  sub_218747EAC(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218DB387C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double _s7NewsUI224ArticleLinkActionHandlerC6handle6action7trackery0A8Articles0dE0O_12AppAnalytics7TrackerCtF_0(uint64_t a1, uint64_t a2)
{
  v202 = a2;
  sub_2186E5554(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v3 - 8);
  v191 = &v187 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v199 = &v187 - v6;
  v196 = sub_219BDD534();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v8 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_219BDE294();
  v207 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  v198 = &v187 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v206 = &v187 - v11;
  sub_2186E5554(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v209 = *(v12 - 8);
  v13 = *(v209 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v188 = &v187 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v190 = &v187 - v15;
  MEMORY[0x28223BE20](v16);
  v189 = &v187 - v17;
  MEMORY[0x28223BE20](v18);
  v193 = &v187 - v19;
  MEMORY[0x28223BE20](v20);
  v192 = &v187 - v21;
  MEMORY[0x28223BE20](v22);
  v194 = &v187 - v23;
  MEMORY[0x28223BE20](v24);
  v197 = &v187 - v25;
  MEMORY[0x28223BE20](v26);
  v205 = &v187 - v27;
  MEMORY[0x28223BE20](v28);
  v203 = &v187 - v29;
  MEMORY[0x28223BE20](v30);
  v204 = &v187 - v31;
  v32 = type metadata accessor for WebLinkViewControllerType(0);
  MEMORY[0x28223BE20](v32);
  v211 = &v187 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_219BDD434();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v187 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = sub_219BDB954();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v210 = &v187 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v187 - v43;
  (*(v35 + 16))(v37, a1, v34, v42);
  v45 = (*(v35 + 88))(v37, v34);
  if (v45 == *MEMORY[0x277D2F978])
  {
    goto LABEL_2;
  }

  v200 = v39;
  v201 = v38;
  if (v45 == *MEMORY[0x277D2F968])
  {
    (*(v35 + 96))(v37, v34);
    sub_218DB63C8(0);
    v47 = v200;
    v48 = v210;
    v49 = v201;
    (*(v200 + 32))(v210, v37, v201);
    v50 = v211;
    (*(v47 + 16))(v211, v48, v49);
    swift_storeEnumTagMultiPayload();
    v51 = v212[2];
    v52 = swift_allocBox();
    sub_218DB6434(v50, v53);
    v212 = v52;
    v54 = v52 | 0xB000000000000000;
    v55 = sub_219BDFA44();
    v56 = v204;
    (*(*(v55 - 8) + 56))(v204, 1, 1, v55);
    v225 = 0;
    v223 = 0u;
    v224 = 0u;
    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = v51;
    sub_2187B14CC(&v220, &v214, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v215 + 1))
    {
      sub_21875F93C(&v214, &v216);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v57 = qword_280ED32D8;
      v58 = qword_280ED32E0;
      v59 = qword_280ED32E8;

      sub_2188202A8(v58);
      __swift_destroy_boxed_opaque_existential_1(&v216);
    }

    else
    {
      sub_2187448D0(&v214, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v57 = qword_280ED32D8;
      v58 = qword_280ED32E0;
      v59 = qword_280ED32E8;

      sub_2188202A8(v58);
    }

    v213 = v54;
    v215 = 0u;
    v214 = 0u;
    v105 = v203;
    sub_2189B4E2C(v56, v203);
    sub_2187B14CC(&v223, &v216, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v106 = (*(v209 + 80) + 24) & ~*(v209 + 80);
    v107 = (v13 + v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v108 = (v107 + 47) & 0xFFFFFFFFFFFFFFF8;
    v109 = swift_allocObject();
    *(v109 + 16) = 0;
    sub_218DB61E8(v105, v109 + v106, &qword_280EE8610, MEMORY[0x277D2DED0]);
    v110 = v109 + v107;
    v111 = v217;
    *v110 = v216;
    *(v110 + 16) = v111;
    *(v110 + 32) = v218;
    v112 = (v109 + v108);
    v113 = (v109 + ((v108 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v112 = 0;
    v112[1] = 0;
    *v113 = v57;
    v113[1] = v58;
    v113[2] = v59;

    sub_2188202A8(v58);
    sub_2186CF94C(0);
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v58, v59);
    sub_2187448D0(&v220, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(&v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218DB6258(v56, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_218DB6700(v211);
    (*(v200 + 8))(v210, v201);
    sub_2187448D0(&v214, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F84F8);
    goto LABEL_43;
  }

  if (v45 == *MEMORY[0x277D2F960])
  {
    (*(v35 + 96))(v37, v34);
    v203 = *v37;
    sub_218DB635C(0);
    (*(v207 + 32))(v206, v37 + *(v60 + 48), v208);
    v210 = v212[2];
    sub_2187B2C48(0);
    v62 = v61;
    v63 = swift_allocBox();
    v65 = v64;
    v211 = *(v62 + 48);
    sub_2187B2DA0(0);
    v204 = *(v66 + 48);
    v67 = *(v200 + 56);
    v68 = v199;
    v69 = v201;
    v67(v199, 1, 1, v201);
    sub_219BDD514();
    v67(v68, 1, 1, v69);
    sub_219BDD894();
    sub_218DB6258(v68, &unk_280EE9D00, MEMORY[0x277CC9260]);
    (*(v195 + 8))(v8, v196);
    *(v65 + v204) = MEMORY[0x277D84F90];
    *(v65 + v211) = &unk_282A243C0;
    v211 = v63;
    v70 = v63 | 2;
    v71 = sub_219BDFA44();
    v72 = v205;
    (*(*(v71 - 8) + 56))(v205, 1, 1, v71);
    sub_218718690((v212 + 8), &v223);
    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = v210;
    sub_2187B14CC(&v220, &v214, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v215 + 1))
    {
      sub_21875F93C(&v214, &v216);
      *&v214 = v70;
      v73 = sub_2194DA78C(&v216);
      v75 = v74;
      v77 = v76;
      __swift_destroy_boxed_opaque_existential_1(&v216);
      v78 = v202;
    }

    else
    {
      sub_2187448D0(&v214, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      v78 = v202;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v73 = qword_280ED32D8;
      v75 = qword_280ED32E0;
      v77 = qword_280ED32E8;

      sub_2188202A8(v75);
    }

    v213 = v70;
    if (v78)
    {
      v125 = sub_219BDD274();
      v126 = v78;
    }

    else
    {
      v126 = 0;
      v125 = 0;
      *&v215 = 0;
      *(&v214 + 1) = 0;
    }

    *&v214 = v126;
    *(&v215 + 1) = v125;
    v127 = v197;
    sub_2189B4E2C(v72, v197);
    sub_2187B14CC(&v223, &v216, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v128 = (*(v209 + 80) + 24) & ~*(v209 + 80);
    v129 = (v13 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
    v130 = (v129 + 47) & 0xFFFFFFFFFFFFFFF8;
    v131 = swift_allocObject();
    *(v131 + 16) = v78;
    sub_218DB61E8(v127, v131 + v128, &qword_280EE8610, MEMORY[0x277D2DED0]);
    v132 = v131 + v129;
    v133 = v217;
    *v132 = v216;
    *(v132 + 16) = v133;
    *(v132 + 32) = v218;
    v134 = (v131 + v130);
    v135 = (v131 + ((v130 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v134 = 0;
    v134[1] = 0;
    *v135 = v73;
    v135[1] = v75;
    v135[2] = v77;
    swift_retain_n();

    sub_2188202A8(v75);
    sub_2186CF94C(0);
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v75, v77);
    sub_2187448D0(&v220, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(&v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218DB6258(v205, &qword_280EE8610, MEMORY[0x277D2DED0]);
    (*(v207 + 8))(v206, v208);
    goto LABEL_42;
  }

  if (v45 == *MEMORY[0x277D2F970])
  {
    (*(v35 + 96))(v37, v34);
    sub_218DB62B4(0);
    v80 = v207;
    v81 = v198;
    v82 = v208;
    (*(v207 + 32))(v198, v37 + *(v79 + 64), v208);
    sub_219BDEA94();
    (*(v200 + 56))(v199, 1, 1, v201);
    sub_2187B3078(MEMORY[0x277D84F90]);
    v83 = v212;
    v84 = sub_219BDEA44();
    v206 = v83[2];
    sub_2187B2C48(0);
    v86 = v85;
    v87 = swift_allocBox();
    v89 = v88;
    v90 = *(v86 + 48);
    sub_2187B2DA0(0);
    v92 = *(v91 + 48);
    sub_2187B3004(0);
    v94 = *(v93 + 48);
    *v89 = v84;
    (*(v80 + 16))(v89 + v94, v81, v82);
    sub_219BDD944();
    swift_storeEnumTagMultiPayload();
    v95 = MEMORY[0x277D84F90];
    *(v89 + v92) = MEMORY[0x277D84F90];
    *(v89 + v90) = v95;
    v211 = v87;
    v96 = v87 | 2;
    v97 = sub_219BDFA44();
    v98 = v194;
    (*(*(v97 - 8) + 56))(v194, 1, 1, v97);
    sub_218718690((v83 + 8), &v223);
    v222 = 0;
    v220 = 0u;
    v221 = 0u;
    v219 = v206;
    sub_2187B14CC(&v220, &v214, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v215 + 1))
    {
      sub_21875F93C(&v214, &v216);
      *&v214 = v87 | 2;

      v99 = sub_2194DA78C(&v216);
      v101 = v100;
      v103 = v102;
      __swift_destroy_boxed_opaque_existential_1(&v216);
      v104 = v202;
    }

    else
    {

      sub_2187448D0(&v214, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      v104 = v202;
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v99 = qword_280ED32D8;
      v101 = qword_280ED32E0;
      v103 = qword_280ED32E8;

      sub_2188202A8(v101);
    }

    v212 = v103;
    v213 = v96;
    v210 = v84;
    if (v104)
    {
      v152 = sub_219BDD274();
      v153 = v104;
    }

    else
    {
      v153 = 0;
      v152 = 0;
      *&v215 = 0;
      *(&v214 + 1) = 0;
    }

    *&v214 = v153;
    *(&v215 + 1) = v152;
    v154 = v192;
    sub_2189B4E2C(v98, v192);
    sub_2187B14CC(&v223, &v216, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v155 = (*(v209 + 80) + 24) & ~*(v209 + 80);
    v156 = (v13 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
    v157 = v98;
    v158 = (v156 + 47) & 0xFFFFFFFFFFFFFFF8;
    v159 = swift_allocObject();
    *(v159 + 16) = v104;
    sub_218DB61E8(v154, v159 + v155, &qword_280EE8610, MEMORY[0x277D2DED0]);
    v160 = v159 + v156;
    v161 = v217;
    *v160 = v216;
    *(v160 + 16) = v161;
    *(v160 + 32) = v218;
    v162 = (v159 + v158);
    v163 = (v159 + ((v158 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v162 = 0;
    v162[1] = 0;
    *v163 = v99;
    v163[1] = v101;
    v164 = v101;
    v165 = v212;
    v163[2] = v212;
    swift_retain_n();

    sub_2188202A8(v164);
    sub_2186CF94C(0);
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v164, v165);

    sub_2187448D0(&v220, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(&v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218DB6258(v157, &qword_280EE8610, MEMORY[0x277D2DED0]);
    (*(v207 + 8))(v198, v208);
    goto LABEL_42;
  }

  if (v45 != *MEMORY[0x277D2F958])
  {
    if (v45 == *MEMORY[0x277D2F950])
    {
      (*(v35 + 96))(v37, v34);
      v136 = *v37;
      v137 = v37[1];
      sub_218DB60E0(0);
      v139 = v191;
      sub_218DB61E8(v37 + *(v138 + 48), v191, &unk_280EE9D00, MEMORY[0x277CC9260]);
      v140 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
      v141 = OBJC_IVAR___TSFeedViewContext_sourceURL;
      swift_beginAccess();
      sub_218DB6168(v139, v140 + v141);
      swift_endAccess();
      v142 = v212[2];
      v143 = swift_allocObject();
      *(v143 + 16) = v136;
      *(v143 + 24) = v137;
      v144 = MEMORY[0x277D84F90];
      *(v143 + 32) = v140;
      *(v143 + 40) = v144;
      *(v143 + 48) = 1;
      *(v143 + 56) = 0u;
      *(v143 + 72) = 0u;
      *(v143 + 88) = 0;
      *(v143 + 96) = -1;
      v145 = sub_219BDFA44();
      v146 = v190;
      (*(*(v145 - 8) + 56))(v190, 1, 1, v145);
      v225 = 0;
      v223 = 0u;
      v224 = 0u;
      v222 = 0;
      v220 = 0u;
      v221 = 0u;
      v219 = v142;
      sub_2187B14CC(&v220, &v214, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      v211 = v140;
      if (*(&v215 + 1))
      {
        sub_21875F93C(&v214, &v216);
        v147 = qword_280ED32D0;
        v148 = v140;
        if (v147 != -1)
        {
          swift_once();
        }

        v150 = qword_280ED32D8;
        v149 = qword_280ED32E0;
        v151 = qword_280ED32E8;

        sub_2188202A8(v149);
        __swift_destroy_boxed_opaque_existential_1(&v216);
      }

      else
      {
        v177 = v140;
        sub_2187448D0(&v214, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v150 = qword_280ED32D8;
        v149 = qword_280ED32E0;
        v151 = qword_280ED32E8;

        sub_2188202A8(v149);
      }

      v213 = v143 | 0x2000000000000006;
      v215 = 0u;
      v214 = 0u;
      v178 = v188;
      sub_2189B4E2C(v146, v188);
      sub_2187B14CC(&v223, &v216, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v179 = (*(v209 + 80) + 24) & ~*(v209 + 80);
      v180 = (v13 + v179 + 7) & 0xFFFFFFFFFFFFFFF8;
      v181 = (v180 + 47) & 0xFFFFFFFFFFFFFFF8;
      v182 = swift_allocObject();
      *(v182 + 16) = 0;
      sub_218DB61E8(v178, v182 + v179, &qword_280EE8610, MEMORY[0x277D2DED0]);
      v183 = v182 + v180;
      v184 = v217;
      *v183 = v216;
      *(v183 + 16) = v184;
      *(v183 + 32) = v218;
      v185 = (v182 + v181);
      v186 = (v182 + ((v181 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v185 = 0;
      v185[1] = 0;
      *v186 = v150;
      v186[1] = v149;
      v186[2] = v151;

      sub_2188202A8(v149);
      sub_2186CF94C(0);
      sub_2189B4DD4();
      sub_219BEB464();

      sub_2187FABEC(v149, v151);

      sub_2187448D0(&v220, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      sub_2187448D0(&v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
      sub_218DB6258(v190, &qword_280EE8610, MEMORY[0x277D2DED0]);
      sub_218DB6258(v191, &unk_280EE9D00, MEMORY[0x277CC9260]);
      sub_2187448D0(&v214, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F84F8);
      goto LABEL_43;
    }

    v38 = v201;
    v39 = v200;
    if (v45 == *MEMORY[0x277D2F948] || v45 == *MEMORY[0x277D2F940])
    {
LABEL_2:
      (*(v35 + 96))(v37, v34);
      (*(v39 + 32))(v44, v37, v38);
      __swift_project_boxed_opaque_existential_1(v212 + 3, v212[6]);
      sub_219BE6DC4();
      (*(v39 + 8))(v44, v38);
      return result;
    }

    sub_219BF7514();
    __break(1u);
    goto LABEL_47;
  }

  (*(v35 + 96))(v37, v34);
  v114 = *v37;
  v115 = v37[1];
  v116 = v212;
  v117 = v212[2];
  v118 = swift_allocObject();
  v119 = MEMORY[0x277D84F90];
  *(v118 + 16) = v114;
  *(v118 + 24) = v115;
  *(v118 + 32) = v119;
  *(v118 + 56) = 0x4000000000000000;
  v211 = v118;
  v35 = v118 | 0x5000000000000000;
  v120 = sub_219BDFA44();
  v8 = v193;
  (*(*(v120 - 8) + 56))(v193, 1, 1, v120);
  sub_218718690((v116 + 8), &v223);
  v222 = 0;
  v220 = 0u;
  v221 = 0u;
  v219 = v117;
  sub_2187B14CC(&v220, &v214, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (!*(&v215 + 1))
  {
LABEL_47:
    sub_2187448D0(&v214, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    v121 = v202;
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v123 = qword_280ED32D8;
    v122 = qword_280ED32E0;
    v124 = qword_280ED32E8;

    sub_2188202A8(v122);
    goto LABEL_50;
  }

  sub_21875F93C(&v214, &v216);
  v121 = v202;
  if (qword_280ED32D0 != -1)
  {
    swift_once();
  }

  v123 = qword_280ED32D8;
  v122 = qword_280ED32E0;
  v124 = qword_280ED32E8;

  sub_2188202A8(v122);
  __swift_destroy_boxed_opaque_existential_1(&v216);
LABEL_50:
  v213 = v35;
  if (v121)
  {
    v166 = sub_219BDD274();
    v167 = v121;
  }

  else
  {
    v167 = 0;
    v166 = 0;
    *&v215 = 0;
    *(&v214 + 1) = 0;
  }

  *&v214 = v167;
  *(&v215 + 1) = v166;
  v168 = v189;
  sub_2189B4E2C(v8, v189);
  sub_2187B14CC(&v223, &v216, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v169 = (*(v209 + 80) + 24) & ~*(v209 + 80);
  v170 = (v13 + v169 + 7) & 0xFFFFFFFFFFFFFFF8;
  v171 = (v170 + 47) & 0xFFFFFFFFFFFFFFF8;
  v172 = swift_allocObject();
  *(v172 + 16) = v121;
  sub_218DB61E8(v168, v172 + v169, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v173 = v172 + v170;
  v174 = v217;
  *v173 = v216;
  *(v173 + 16) = v174;
  *(v173 + 32) = v218;
  v175 = (v172 + v171);
  v176 = (v172 + ((v171 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v175 = 0;
  v175[1] = 0;
  *v176 = v123;
  v176[1] = v122;
  v176[2] = v124;
  swift_retain_n();

  sub_2188202A8(v122);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v122, v124);
  sub_2187448D0(&v220, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(&v223, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218DB6258(v193, &qword_280EE8610, MEMORY[0x277D2DED0]);
LABEL_42:
  sub_2187448D0(&v214, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F84F8);
LABEL_43:

  return result;
}

void *ArticleLinkActionHandler.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ArticleLinkActionHandler.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_218DB60E0(uint64_t a1)
{
  if (!qword_27CC19A40)
  {
    sub_2186E5554(255, &unk_280EE9D00, MEMORY[0x277CC9260]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC19A40);
    }
  }
}

uint64_t sub_218DB6168(uint64_t a1, uint64_t a2)
{
  sub_2186E5554(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DB61E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186E5554(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_218DB6258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186E5554(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_218DB62B4(uint64_t a1)
{
  if (!qword_27CC19A50)
  {
    sub_2186F84F8(255, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_219BDE294();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC19A50);
    }
  }
}

void sub_218DB635C(uint64_t a1)
{
  if (!qword_27CC19A60)
  {
    sub_219BDE294();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC19A60);
    }
  }
}

void sub_218DB63C8(uint64_t a1)
{
  if (!qword_27CC11DD8)
  {
    sub_219BDB954();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11DD8);
    }
  }
}

uint64_t sub_218DB6434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebLinkViewControllerType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_4Tm_0()
{
  sub_2186E5554(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218DB6620(void *a1)
{
  sub_2186E5554(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218DB6700(uint64_t a1)
{
  v2 = type metadata accessor for WebLinkViewControllerType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218DB6788()
{
  result = qword_27CC11DE0;
  if (!qword_27CC11DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11DE0);
  }

  return result;
}

unint64_t sub_218DB67E4()
{
  result = qword_27CC0F818;
  if (!qword_27CC0F818)
  {
    type metadata accessor for MagazineCategoriesPickerLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F818);
  }

  return result;
}

unint64_t sub_218DB6840()
{
  result = qword_27CC17650;
  if (!qword_27CC17650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17650);
  }

  return result;
}

uint64_t sub_218DB68F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MagazineCategoriesPickerLayoutModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  sub_218C3FDA4(0);
  sub_219BE75E4();
  sub_218DB6AE4(0);
  (*(v6 + 32))(v8, &v11[*(v13 + 48)], v5);
  __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
  v14 = sub_219BF0224();
  sub_218DB6B50(0);
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = v15;
    v17 = sub_219BE8204();
    sub_219BE60F4();

    v14 = v16;
  }

  (*(v6 + 8))(v8, v5);
  sub_218C113E0(v11);
  return v14;
}

void sub_218DB6AE4(uint64_t a1)
{
  if (!qword_27CC11DE8)
  {
    sub_219BEF974();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11DE8);
    }
  }
}

void sub_218DB6B50(uint64_t a1)
{
  if (!qword_27CC11DF0[0])
  {
    sub_219BE6104();
    v1 = sub_219BE8224();
    if (!v2)
    {
      atomic_store(v1, qword_27CC11DF0);
    }
  }
}

uint64_t sub_218DB6BB0()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218DB6C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_219BE8944();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_219BE8164();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_218951268(0);
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  type metadata accessor for MagazineSectionBarLayoutOptions(0);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DB6DF8, 0, 0);
}

uint64_t sub_218DB6DF8()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v6 = v0[7];
  v13 = v0[8];
  v14 = v0[6];
  v7 = v0[4];
  v15 = v0[5];
  (*(v0[13] + 16))(v1);
  v8 = *(v3 + 16);
  v8(v4, v7, v5);
  v9 = swift_unknownObjectRetain();
  sub_218EB8C30(v9, v1, v4, v2);
  v8(v4, v7, v5);
  (*(v6 + 104))(v13, *MEMORY[0x277D6E078], v14);
  v10 = swift_task_alloc();
  *(v10 + 16) = v2;
  *(v10 + 24) = v15;
  sub_218946CA8(sub_218DB77AC, v10);

  type metadata accessor for MagazineSectionBarLayoutModel(0);
  sub_218DB77CC();
  sub_218DB7820(&unk_280EB01E0, &unk_219CC8358);
  sub_219BE6564();
  sub_218DB7864(v2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_218DB6FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = a1;
  v37 = a3;
  v39 = a4;
  v40 = a2;
  v4 = sub_219BE7C84();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF3874();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MagazineSectionBarLayoutOptions(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BE9FA4();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DB78E0(0, &qword_280E8BF58, MEMORY[0x277D6D500], MEMORY[0x277D84560]);
  v15 = sub_219BE6124();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09BA0;
  sub_2189A71D0(v40, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v33;
    v19 = v34;
    v20 = v11;
    v21 = v35;
    (*(v34 + 32))(v33, v20, v35);
    sub_219BE7C74();
  }

  else
  {
    v19 = v31;
    v23 = v11;
    v21 = v32;
    (*(v31 + 32))(v8, v23, v32);
    sub_219BF3854();
  }

  v24 = v22;
  (*(v19 + 8))(v8, v21);
  *(v18 + v17) = v24;
  (*(v16 + 104))(v18 + v17, *MEMORY[0x277D6D4F8], v15);
  *v14 = v18;
  v25 = *MEMORY[0x277D6E9A8];
  v26 = sub_219BE9F94();
  (*(*(v26 - 8) + 104))(v14, v25, v26);
  v27 = (*(v12 + 104))(v14, *MEMORY[0x277D6E998], v36);
  MEMORY[0x28223BE20](v27);
  v28 = v40;
  *(&v30 - 2) = v37;
  *(&v30 - 1) = v28;
  sub_218947040(sub_218DB78C0, (&v30 - 4));
  type metadata accessor for MagazineSectionBarLayoutModel(0);
  sub_218DB77CC();
  sub_218DB7820(&unk_280EB01E0, &unk_219CC8358);
  return sub_219BE81A4();
}

uint64_t sub_218DB748C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v14 = a2;
  v15 = a3;
  v12[1] = a1;
  v13 = type metadata accessor for MagazineSectionBarLayoutModel(0);
  MEMORY[0x28223BE20](v13);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = sub_219BF0DE4();
  v5 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BBF5C0(0);
  sub_219BE5FC4();
  v22[0] = v23[9];
  v22[1] = v23[10];
  v23[0] = v24[0];
  *(v23 + 9) = *(v24 + 9);
  v20[1] = v23[5];
  v21[0] = v23[6];
  v21[1] = v23[7];
  v21[2] = v23[8];
  v19[0] = v23[2];
  v19[1] = v23[3];
  v20[0] = v23[4];
  sub_218AB7A30(v20, &v18);
  sub_218AB7A30(v21 + 8, &v17);
  sub_218AB7A30(v22, &v16);

  sub_219BF0D84();
  sub_218BBF200(0);
  v9 = *(v8 + 48);
  v10 = v12[0];
  (*(v5 + 16))(v4, v7, v12[0]);
  sub_2189A6A74(v7, v14, &v4[v9]);
  sub_218DB7820(&qword_280EB01F0, &unk_219CC8320);
  sub_219BE75D4();
  (*(v5 + 8))(v7, v10);
  return sub_218C113E0(v19);
}

uint64_t sub_218DB76F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_218DB6C50(a1, a2, a3);
}

unint64_t sub_218DB77CC()
{
  result = qword_280EE24F8;
  if (!qword_280EE24F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE24F8);
  }

  return result;
}

uint64_t sub_218DB7820(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineSectionBarLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218DB7864(uint64_t a1)
{
  v2 = type metadata accessor for MagazineSectionBarLayoutOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218DB78E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218DB7944(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_218DB7A08(char a1, char a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    ObjectType = swift_unknownObjectWeakLoadStrong();
    if (ObjectType)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      ObjectType = swift_unknownObjectRelease();
    }
  }

  MEMORY[0x28223BE20](ObjectType);
  sub_219BE3204();
  sub_2187D9028();
  v9 = sub_219BF66A4();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  sub_2188202A8(a3);
  sub_219BE2F94();

  v11 = sub_219BF66A4();
  sub_219BE2FE4();
}

void sub_218DB7C30()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78));
  swift_beginAccess();
  v3 = v1[7];
  v2 = v1[8];
  v4 = __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  v5 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, v6);
  v9 = (*(v2 + 40))(v3, v2);
  v11 = v10;
  (*(v5 + 8))(v8, v3);
  if (v11)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_218DB935C(v9, v11, Strong);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  sub_218DB7A08(1, 4, 0, 0);
}

double sub_218DB7E04(uint64_t a1)
{
  v2 = *MEMORY[0x277D85000] & *v1;
  sub_219BE6EC4();
  v3 = sub_218982850();

  if ((v3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v2 + 80);
  *(v6 + 24) = *(v2 + 88);
  *(v6 + 32) = v5;
  *(v6 + 40) = HIBYTE(v3) & 1;

  sub_219BE6F24();

  return result;
}

void sub_218DB7FDC(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a3)
    {
      v5 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          *(swift_allocObject() + 16) = v6;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

double sub_218DB80E8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_218DB7A08(0, a1, sub_218807D28, v6);

  return result;
}

uint64_t sub_218DB817C(void *a1, uint64_t a2)
{
  v3 = *(a1 + *((*MEMORY[0x277D85000] & *a1) + 0x78));
  swift_beginAccess();
  sub_218718690(v3 + 32, v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v6 = (*(v5 + 64))(a2, v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

double sub_218DB8244(_OWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *MEMORY[0x277D85000];
  v9 = a1[1];
  v16[0] = *a1;
  v16[1] = v9;
  v17[0] = a1[2];
  *(v17 + 9) = *(a1 + 41);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = *((v8 & v7) + 0x50);
  v12 = *((v8 & v7) + 0x58);
  v13 = a1[1];
  *(v11 + 56) = *a1;
  *(v11 + 24) = v12;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = v10;
  *(v11 + 72) = v13;
  *(v11 + 88) = a1[2];
  *(v11 + 97) = *(a1 + 41);
  sub_2188202A8(a3);

  sub_218B88148(v16, &v15);
  sub_218DB8548(v16, sub_218DB9348, v11);

  return result;
}

void sub_218DB83A4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    a2(a1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(*a1 + 16);
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          *(swift_allocObject() + 16) = v11;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
LABEL_11:

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else if (v10)
    {
      v12 = *(a5 + 24);
      v13 = *(a5 + 32);
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = swift_allocObject();
        v16[2] = v12;
        v16[3] = v13;
        v16[4] = v15;
        sub_218DB964C(v12, v13);
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

LABEL_12:

      swift_unknownObjectRelease();
      return;
    }
  }
}

double sub_218DB8548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x277D85000] & *v3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_218DB935C(v8, v9, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v15 = (*(*(v7 + 88) + 40))(a1, *(v7 + 80));
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(a1 + 16);
  *(v11 + 32) = *a1;
  *(v11 + 48) = v12;
  *(v11 + 64) = *(a1 + 32);
  *(v11 + 73) = *(a1 + 41);
  sub_2188202A8(a2);
  sub_218B88148(a1, v14);
  sub_218DB95D0(0);
  sub_218DB95F0(&unk_27CC11E90, sub_218DB95D0, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_218DB8754(uint64_t a1, void *a2)
{
  v2 = sub_219BF1584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = v3;
    v22 = v2;
    v20[0] = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20[1] = "BlueprintLayoutBuilder";
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();
    v11 = [v10 bundleForClass_];
    sub_219BDB5E4();

    v12 = [v10 bundleForClass_];
    sub_219BDB5E4();

    sub_219BF1514();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v16 = v21;
      v15 = v22;
      v17 = v20[0];
      (*(v21 + 16))(v20[0], v7, v22);
      v18 = (*(v16 + 80) + 24) & ~*(v16 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v14;
      (*(v16 + 32))(v19 + v18, v17, v15);
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v16 = v21;
      v15 = v22;
    }

    return (*(v16 + 8))(v7, v15);
  }

  return result;
}

uint64_t sub_218DB8AA4(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    return a2(a4);
  }

  return result;
}

void sub_218DB8B18(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  sub_218774F78(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x70)]);
  swift_unknownObjectRelease();
  v5 = *&a1[*((*v3 & *a1) + 0x80)];
}

double sub_218DB8C64(void *a1, unsigned int a2, void *a3)
{
  v6 = MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *a3;
  sub_218DB9970(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - v11;
  sub_218DB9918(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC(0);
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x28223BE20](v16);
  v32 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = &unk_282B7DDA8;
  v18 = swift_dynamicCastObjCProtocolConditional();
  if (v18)
  {
    v20 = v18;
    v30 = a2;
    swift_unknownObjectRetain();
    v21 = [v20 currentIssueIDs];
    v31 = a1;
    v29 = v7;
    if (v21)
    {
      v22 = v21;
      v23 = sub_219BF5924();

      if (*(v23 + 16))
      {

        goto LABEL_7;
      }
    }

    v24 = [a1 identifier];
    sub_219BF5414();

LABEL_7:
    v28 = *(a3 + *((*v6 & *a3) + 0x68));
    sub_219BE6EC4();
    v35 = v36;
    sub_2189870F0(0);
    sub_218DB95F0(&unk_27CC11EB0, sub_2189870F0, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    sub_219BEB1C4();

    (*(v10 + 8))(v12, v9);
    v26 = v33;
    v25 = v34;
    if ((*(v33 + 48))(v15, 1, v34) == 1)
    {
      swift_unknownObjectRelease();
      sub_218DB9A30(v15);
    }

    else
    {
      v27 = v32;
      (*(v26 + 32))(v32, v15, v25);
      v36 = (*(*(v29 + 88) + 48))(v27, v30, *(v29 + 80));
      sub_218DB95D0(0);
      sub_218DB95F0(&unk_27CC11E90, sub_218DB95D0, MEMORY[0x277D6D890]);
      sub_219BE6EF4();
      swift_unknownObjectRelease();
      (*(v26 + 8))(v27, v25);
    }
  }

  return result;
}

void sub_218DB90FC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(*a1 + 16);
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      if (v6)
      {
        v7 = swift_unknownObjectWeakLoadStrong();
        if (v7)
        {
          *(swift_allocObject() + 16) = v7;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
LABEL_9:

          goto LABEL_10;
        }

        goto LABEL_10;
      }
    }

    else if (v6)
    {
      v8 = a1[3];
      v9 = a1[4];
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v11 = v10;
        v12 = swift_allocObject();
        v12[2] = v8;
        v12[3] = v9;
        v12[4] = v11;
        sub_218DB964C(v8, v9);
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

LABEL_10:

      swift_unknownObjectRelease();
      return;
    }
  }
}

uint64_t sub_218DB92E4()
{
  sub_219BF1584();

  return sub_2196F29A8();
}

void sub_218DB935C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE7C14();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a3 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerConfig) == 1)
  {
    v11 = v8;
    v12 = sub_219BF65B4();
    v13 = [v12 title];

    if (v13)
    {
    }

    else
    {
      v16[2] = *(a3 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_toolbarManager + 8);
      v16[1] = swift_getObjectType();
      sub_219BE5CC4();
      v16[3] = sub_219BE5CA4();
      *v10 = a1;
      v10[1] = a2;
      (*(v7 + 104))(v10, *MEMORY[0x277D6DCB0], v11);
      sub_219BE7C24();
      sub_218DB95F0(&qword_280EE4E50, MEMORY[0x277D6DCC8], MEMORY[0x277D6DCB8]);

      sub_219BE7514();
      (*(v7 + 8))(v10, v11);
    }

    v14 = sub_219BF65B4();
    v15 = sub_219BF53D4();
    [v14 setTitle_];
  }
}

uint64_t sub_218DB9598()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(v0 + 32);
  }

  return result;
}

uint64_t sub_218DB95F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_218DB964C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void sub_218DB96A0(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  if (a2 == 2)
  {
    if (v3)
    {
      v4 = (a1 + 40);
      do
      {
        v8 = *v4 >> 6;
        if ((v8 - 1) >= 2)
        {
          if (v8)
          {
            v5 = 3;
          }

          else
          {
            v5 = 2;
          }

          v6 = *(v4 - 1);
          j__swift_retain();
          v7 = swift_unknownObjectRetain();
          sub_218DB8C64(v7, v5, v2);
          swift_unknownObjectRelease();
          j__swift_release(v6);
        }

        v4 += 16;
        --v3;
      }

      while (v3);
    }
  }

  else if (v3)
  {
    v9 = (a1 + 40);
    do
    {
      v10 = *v9 >> 6;
      if ((v10 - 1) >= 2)
      {
        v11 = *(v9 - 1);
        v12 = v10 != 0;
        j__swift_retain();
        v13 = swift_unknownObjectRetain();
        sub_218DB8C64(v13, v12, v2);
        swift_unknownObjectRelease();
        j__swift_release(v11);
      }

      v9 += 16;
      --v3;
    }

    while (v3);
  }
}

double sub_218DB97D4(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = *((v4 & v3) + 0x50);
  v6[3] = *((v4 & v3) + 0x58);
  v6[4] = v5;

  sub_218DB8548(a1, sub_218DB98C4, v6);

  return result;
}

uint64_t objectdestroy_22Tm_0()
{
  if (*(v0 + 24) >= 3uLL)
  {
  }

  return swift_deallocObject();
}

void sub_218DB9918(uint64_t a1)
{
  if (!qword_27CC11770)
  {
    sub_21897BFEC(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11770);
    }
  }
}

void sub_218DB9970(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel(255);
    v8[2] = sub_21895164C();
    v8[3] = sub_218DB95F0(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218DB9A30(uint64_t a1)
{
  sub_218DB9918(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218DB9AA0(uint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1 == 1 || !a1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v1 = sub_219BDB5E4();

    return v1;
  }

  result = sub_219BF7974();
  __break(1u);
  return result;
}

uint64_t sub_218DB9C18(uint64_t a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  if (a1 == 1 || !a1)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v1 = sub_219BDB5E4();

    return v1;
  }

  result = sub_219BF7974();
  __break(1u);
  return result;
}

uint64_t sub_218DB9DC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15 = a1;
  v32 = a3;
  v4 = type metadata accessor for SearchHomeSectionTitleViewLayoutOptions(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951378(0);
  sub_219BE6934();
  v13 = v17[10];
  v14 = v17[9];
  v8 = v18;
  v9 = v19;
  sub_219822EE8(&v20);
  v10 = sub_219BE8164();
  (*(*(v10 - 8) + 16))(v7, a2, v10);
  *&v7[*(v5 + 28)] = 0x4032000000000000;
  *&v7[*(v5 + 32)] = 0x4030000000000000;
  v11 = sub_219BE8034();
  sub_219728FF8(v7, v11, v22);
  v21 = v20;
  sub_2189AD3D8(&v21);

  sub_218DBA4F4(v7, type metadata accessor for SearchHomeSectionTitleViewLayoutOptions);
  v23[0] = v14;
  v23[1] = v13;
  v24 = v8;
  v25 = v9;
  v28 = v22[2];
  v29 = v22[3];
  v30 = v22[4];
  v31 = v22[5];
  v26 = v22[0];
  v27 = v22[1];
  nullsub_1();
  sub_218980668(v23, v17);
  v16[2] = v15;
  v16[3] = a2;
  sub_2189477A4(sub_218DBA4D4, v16);
  sub_218951470();
  sub_2189514C4();
  return sub_219BE8174();
}

uint64_t sub_218DBA024@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v15 = a2;
  v16 = a3;
  v4 = type metadata accessor for RecentSearchLayoutOptions(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189320DC(0);
  sub_219BE5FC4();
  v7 = v20;
  if (qword_27CC083D8 != -1)
  {
    swift_once();
  }

  v8 = qword_27CC083D0;
  v9 = qword_27CCD88A8;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = qword_27CCD88A0;
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  v11 = sub_219BE8164();
  (*(*(v11 - 8) + 16))(v6, v15, v11);
  *&v6[*(v4 + 20)] = 0x4010000000000000;
  *&v6[*(v4 + 24)] = 0x4010000000000000;
  v12 = v10;
  sub_218A28A88(v7, *(&v7 + 1), *&v9, v10, v6, v18);
  sub_218DBA4F4(v6, type metadata accessor for RecentSearchLayoutOptions);
  v20 = v7;
  v21 = v9;
  v22 = v10;
  v31 = v18[8];
  v32[0] = v19[0];
  *(v32 + 9) = *(v19 + 9);
  v27 = v18[4];
  v28 = v18[5];
  v30 = v18[7];
  v29 = v18[6];
  v23 = v18[0];
  v24 = v18[1];
  v26 = v18[3];
  v25 = v18[2];
  nullsub_1();
  sub_218D56F34(&v20, v17);
  sub_2189514C4();
  return sub_219BE75D4();
}

uint64_t sub_218DBA2D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_218DBA3A0, 0, 0);
}

uint64_t sub_218DBA3A0()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_21894740C(sub_218DBA4B4, v3);

  sub_218951470();
  sub_2189514C4();
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

uint64_t sub_218DBA4F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218DBA554@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v6 = type metadata accessor for AudioFeedServiceConfig(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 && (sub_219BEF0B4(), v9 = *&v8[*(v6 + 32)], sub_218DBA6DC(v8), v10 = sub_219BF53D4(), v11 = [v9 hasMutedSubscriptionForTagID_], v9, v10, v11))
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000038, 0x8000000219CF7F50);
    MEMORY[0x21CECC330](a1, a2);
    v12 = v18;
    *a3 = v17;
    a3[1] = v12;
    v13 = MEMORY[0x277D328F0];
  }

  else
  {
    v13 = MEMORY[0x277D328E8];
  }

  v14 = *v13;
  v15 = sub_219BEFBB4();
  return (*(*(v15 - 8) + 104))(a3, v14, v15);
}

uint64_t sub_218DBA6DC(uint64_t a1)
{
  v2 = type metadata accessor for AudioFeedServiceConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218DBA768()
{
  v1 = *(v0 + qword_280EDEE90);
}

void sub_218DBA878(uint64_t a1)
{
  v2 = *(a1 + qword_280EDEE90);
}

id sub_218DBA9BC(uint64_t a1, double a2, double a3)
{
  v12.receiver = v3;
  v12.super_class = swift_getObjectType();
  v7 = objc_msgSendSuper2(&v12, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_2186C6148(0, &qword_280E8D9B8, 0x277D75220);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = v7;
    if ([v9 isKindOfClass_])
    {
LABEL_6:

      return v7;
    }

    v10 = [v9 isDescendantOfView_];

    if ((v10 & 1) == 0 && v9 != *&v3[qword_280EDEE48])
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  return v7;
}

id sub_218DBAAB8(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = a1;
  v11 = sub_218DBA9BC(a5, a2, a3);

  return v11;
}

uint64_t sub_218DBAC78()
{
  v1 = &v0[OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_cachedAccessibilityLabel];
  if (*&v0[OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_cachedAccessibilityLabel + 8])
  {
    v2 = *v1;
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC7NewsUI218MastheadTitleLabel_model];
    if ((~v3 & 0xF000000000000007) != 0)
    {

      v4 = [v0 superview];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        Width = CGRectGetWidth(v24);
        v7 = sub_218817E30(v3, Width);
        v21 = v8;
        sub_218DBAF00(0);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_219C09EC0;
        if (qword_280EE9338 != -1)
        {
          swift_once();
        }

        if (sub_219BDC834())
        {
          sub_219BDC8D4();
          sub_219BDC8B4();

          sub_219BDC8A4();

          v10 = v22;
          v11 = v23;
        }

        else
        {
          v11 = 0xA300000000000000;
          v10 = 12559343;
        }

        v12 = sub_218816B8C();
        v14 = v13;

        MEMORY[0x21CECC330](v12, v14);

        v15 = sub_218816CD4(v3);
        v17 = v16;

        MEMORY[0x21CECC330](v15, v17);

        *(v9 + 32) = v10;
        *(v9 + 40) = v11;
        *(v9 + 48) = v7;
        *(v9 + 56) = v21;
        v2 = sub_219BE5F34();
        v19 = v18;
        sub_2188031B0(v3);

        *v1 = v2;
        v1[1] = v19;
      }

      else
      {
        sub_2188031B0(v3);
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void sub_218DBAF00(uint64_t a1)
{
  if (!qword_280E8B740)
  {
    sub_2186DF0D0(255, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B740);
    }
  }
}

void sub_218DBAF7C()
{
  v1 = qword_280EDEE80;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v2 = qword_280EDEE50;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  v3 = qword_280EDEE40;
  sub_2186DF0D0(0, &qword_280EE39E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  v5 = v4;
  *(v0 + v3) = [objc_allocWithZone(v4) init];
  v6 = qword_280EDEE30;
  *(v0 + v6) = [objc_allocWithZone(sub_219BE58D4()) initWithFrame_];
  v7 = qword_280EDEE68;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v8 = qword_280EDEE58;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D30378]) initWithFrame_];
  v9 = qword_280EDEE60;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v10 = qword_280EDEE48;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithFrame_];
  v11 = qword_280EDEE38;
  *(v0 + v11) = [objc_allocWithZone(v5) init];
  v12 = qword_280EDEE78;
  *(v0 + v12) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v13 = qword_280EDEE98;
  *(v0 + v13) = [objc_allocWithZone(MEMORY[0x277D355C0]) initWithFrame_];
  v14 = qword_280EDEEA0;
  *(v0 + v14) = [objc_allocWithZone(sub_219BE3E44()) initWithFrame_];
  v15 = qword_280EDEE88;
  *(v0 + v15) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v16 = qword_280EDEE90;
  *(v0 + v16) = [objc_allocWithZone(sub_219BEBF44()) initWithFrame_];
  sub_219BF7514();
  __break(1u);
}

uint64_t sub_218DBB290@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for AudioHistoryFeedModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for AudioHistoryFeedModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DBB340(void *a1)
{
  v2 = sub_219BDBD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187006BC(0);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    sub_219BDBD54();
    v8 = sub_219BDBD44();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    v11 = qword_280E8D8C8;
    v12 = *MEMORY[0x277D30B58];
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = qword_280F61788;
    v15[2] = v10;
    v15[3] = v7;
    v15[1] = v8;
    sub_218DC1340(0);
    swift_allocObject();
    v14 = v13;
    return sub_219BEF444();
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_218DBB4DC()
{
  v0 = sub_219BE3344();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioHistoryFeedViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC11ED0, &protocol descriptor for AudioHistoryFeedStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC11ED8, &protocol descriptor for AudioHistoryFeedRouterType, 1);
  sub_219BE2914();
  type metadata accessor for AudioHistoryFeedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC11EE0, &protocol descriptor for AudioHistoryFeedEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC11EE8, &protocol descriptor for AudioHistoryFeedInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC11EF0, &protocol descriptor for AudioHistoryFeedTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC11EF8, &protocol descriptor for AudioHistoryFeedDataManagerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  sub_219BE2914();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF70], v0);
  sub_219BE19A4();

  (*(v1 + 8))(v3, v0);
  sub_2189879C0(0);
  sub_219BE2904();

  type metadata accessor for AudioHistoryFeedBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC11F00, &protocol descriptor for AudioHistoryFeedSectionFactoryType, 1);
  sub_219BE2914();

  sub_218DBFDCC(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218DC06B4(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_218DBFEB8(0);
  sub_219BE2904();

  sub_218DC07F0(0);
  sub_219BE2904();

  sub_218DC0340(0);
  sub_219BE2904();

  type metadata accessor for AudioHistoryFeedBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_218DC08A8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8E74();
  sub_219BE2904();

  sub_218DBFFF4(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AB4C(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();

  sub_218DC0170(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218DC03F8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218DC0578(0);
  sub_219BE2904();

  type metadata accessor for AudioHistoryFeedBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for AudioHistoryFeedBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_218DC0AD0(0, &qword_27CC11FB0, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_218DC09E4(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  return result;
}

char *sub_218DBBF9C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC11ED0, &protocol descriptor for AudioHistoryFeedStylerType, 1);
  result = sub_219BE1E34();
  if (!v25)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC11EE0, &protocol descriptor for AudioHistoryFeedEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v22;
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC08A8(0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v20 = type metadata accessor for AudioHistoryFeedStyler();
    v21 = &off_282A6C180;
    v19[0] = v11;
    v12 = objc_allocWithZone(type metadata accessor for AudioHistoryFeedViewController());
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = sub_218DC0D60(*v16, v3, v4, v5, v12);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218DBC25C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_21872F630(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for AudioHistoryFeedStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A6C180;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218DBC4BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC12D0(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBC3A0, &protocol descriptor for AudioHeadlineConverterType, 1);
  result = sub_219BE1E34();
  if (v10)
  {
    v7 = type metadata accessor for AudioHistoryFeedRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v13, v8 + 24);
    *(v8 + 64) = v5;
    sub_2186CB1F0(&v11, v8 + 72);
    *(v8 + 112) = v6;
    result = sub_2186CB1F0(&v9, v8 + 120);
    a2[3] = v7;
    a2[4] = &off_282A42D48;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218DBC6B4(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioHistoryFeedViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_218DBC734@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC11EE8, &protocol descriptor for AudioHistoryFeedInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC11ED8, &protocol descriptor for AudioHistoryFeedRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC11EF0, &protocol descriptor for AudioHistoryFeedTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_218DC0F7C(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A7DA88;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_218DBC9E4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC11EF8, &protocol descriptor for AudioHistoryFeedDataManagerType, 0);
  sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DBFDCC(0);
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioHistoryFeedBlueprintModifierFactory();
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC12D0(0, &unk_280E90700, sub_2186F17B0, &type metadata for AudioFeedOfflineModel, MEMORY[0x277D33538]);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_218DC1188(v11, v12, v5, v7, v8);
    swift_unknownObjectRelease();

    *a2 = v10;
    a2[1] = &off_282AA1590;
    return;
  }

LABEL_9:
  __break(1u);
}

void *sub_218DBCB9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC27E0, &protocol descriptor for AudioPlaybackContextType, 1);
  result = sub_219BE1E34();
  if (!v34)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB9190, &protocol descriptor for AudioSuggestionsTrackerType, 1);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v26 = v6;
  v27 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v30)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v12;
    v15 = type metadata accessor for AudioSuggestionsStore();
    v28[3] = v15;
    v28[4] = &off_282A86138;
    v28[0] = v14;
    v16 = type metadata accessor for AudioHistoryFeedTracker();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v28, v15);
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = *v21;
    v17[12] = v15;
    v17[13] = &off_282A86138;
    v17[9] = v23;
    v17[2] = v5;
    sub_2186CB1F0(&v33, (v17 + 3));
    v17[8] = v26;
    v17[14] = v7;
    v17[15] = v8;
    sub_2186CB1F0(&v29, (v17 + 16));
    __swift_destroy_boxed_opaque_existential_1(v28);
    result = __swift_destroy_boxed_opaque_existential_1(v31);
    v24 = v27;
    v27[3] = v16;
    v24[4] = &off_282A361C8;
    *v24 = v17;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_218DBCFA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187006BC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187003E4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1DF4();
  if (!v21[3])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for AudioHistoryFeedDataManager();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v14 = OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_accessQueue;
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    (*(v5 + 104))(v7, *MEMORY[0x277D851B8], v4);
    v15 = sub_219BF66E4();
    (*(v5 + 8))(v7, v4);
    *&v13[v14] = v15;
    *&v13[OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_feedServiceConfigFetcher] = v9;
    *&v13[OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_feedService] = v10;
    sub_218718690(v21, &v13[OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_headlineService]);
    *&v13[OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_readingHistory] = v11;
    v20.receiver = v13;
    v20.super_class = v12;

    v16 = v11;
    v17 = objc_msgSendSuper2(&v20, sel_init);
    [v16 addObserver_];

    result = __swift_destroy_boxed_opaque_existential_1(v21);
    v18 = v19;
    *v19 = v17;
    v18[1] = &off_282A42778;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218DBD30C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC11F00, &protocol descriptor for AudioHistoryFeedSectionFactoryType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for AudioHistoryFeedSectionFactory();
    v16[3] = v8;
    v16[4] = &off_282AA0C38;
    v16[0] = v7;
    type metadata accessor for AudioHistoryFeedBlueprintModifierFactory();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v8;
    v9[6] = &off_282AA0C38;
    v9[2] = v15;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218DBD51C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for HeadlineModelFactory();
    v19[3] = v10;
    v19[4] = &off_282A8B8E8;
    v19[0] = v9;
    v11 = type metadata accessor for AudioHistoryFeedSectionFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A8B8E8;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282AA0C38;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DBD748(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189879C0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218DBFEB8(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218DBFDCC(0);
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_218DBD828(uint64_t a1, void *a2)
{
  sub_218DC0D40(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_218DC0BF0(0, &qword_27CC12008, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_21872F630(&qword_27CC12010, sub_218DC0D40, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218DC06B4(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_21872F630(&qword_27CC12018, sub_218DC06B4, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_218DBD9C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC0340(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioHistoryFeedBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC07F0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_218DC06B4(0);
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218DBDBC8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_218DBDC0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DBFFF4(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_218DBFEB8(0);
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218DBDD64(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AB4C(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BF44C4();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for AudioHistoryFeedBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218DBDE50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189879C0(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DBFFF4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC0AD0(0, &qword_27CC11FB0, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21872F630(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_218DC08A8(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_218DBE16C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_21872F630(&qword_280E8FF80, MEMORY[0x277D34268], MEMORY[0x277D34260]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70, MEMORY[0x277D34270], 0);
  sub_219BE1E34();
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_218DC0340(0);
    if (sub_219BE1E24())
    {
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_219BF35C4();
      swift_allocObject();
      sub_21872F630(&qword_27CC11F30, sub_218DC0340, MEMORY[0x277D6DF38]);

      sub_219BF35A4();
      sub_219BF3EC4();
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_218DBE39C(uint64_t a1, uint64_t a2)
{
  sub_218DC0B7C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DC0BF0(0, &qword_27CC0C088, MEMORY[0x277D6EC60]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_219BE86A4();

    v18 = v17[1];
    sub_2189879C0(0);
    sub_21872F630(&qword_27CC0B898, sub_2189879C0, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    v12 = sub_219207A3C();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v12 = 0xF000000000000007;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_219BE86A4();

    v17[0] = v18;
    sub_2189879C0(0);
    sub_21872F630(&qword_27CC0B898, sub_2189879C0, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    (*(v7 + 56))(v4, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v4, 1, 1, v6);
  }

  sub_219BE6684();
  type metadata accessor for AudioHistoryFeedSectionDescriptor(0);
  type metadata accessor for AudioHistoryFeedModel(0);
  sub_21872F630(&unk_27CC0DC20, type metadata accessor for AudioHistoryFeedSectionDescriptor, &unk_219CABCCC);
  sub_21872F630(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel, &unk_219CC7C58);
  sub_219BF44D4();
  sub_218DC0CE4(v4);
  type metadata accessor for AudioHistoryFeedServiceConfig(0);
  sub_21872F630(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig, &unk_219CA2BD8);
  v15 = sub_219BE6624();

  sub_21885AB78(v12);
  return v15;
}

void *sub_218DBE774(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AB4C(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
    result = sub_219BE1E34();
    if (v4)
    {
      v3 = objc_allocWithZone(sub_219BE8E74());
      return sub_219BE8E64();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218DBE8AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE8E74();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC0170(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC03F8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC0578(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_218DBFFF4(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218DBEA08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DBFFF4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DBEAC0()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_218DBEB90(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879AB4C(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218DBEC58(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189879C0(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC0340(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioHistoryFeedBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioHistoryFeedBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_218DC0170(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_218DBEDF4(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE8E74();
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790, 0x277D759D8);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_218DBEEF4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218DBEFC8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189879C0(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC0340(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC0AD0(0, &qword_27CC11FB0, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_21872F630(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_218DC03F8(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218DBF234(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218DC09E4(0);
  if (sub_219BE1E24())
  {
    sub_21872F630(&qword_27CC11FF0, sub_218DC09E4, MEMORY[0x277D6E7F8]);
  }

  return sub_219BE9774();
}

uint64_t sub_218DBF338(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189879C0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218DC0340(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218DC0578(0);
      v4 = objc_allocWithZone(v3);
      return sub_219BEA184();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218DBF3F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for AudioHistoryFeedBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218DBF4A4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for AudioHistoryFeedViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A3C238;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_218DBF538(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0, MEMORY[0x277D32C08], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for AudioHistoryFeedBlueprintViewSupplementaryViewProvider();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DBF5D8(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_218DC0AD0(0, &qword_27CC11FE8, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189879C0(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_218DC0AD0(0, &qword_27CC11FB0, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DBF864(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC09E4(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_21872F630(&qword_27CC11FE0, sub_218DC09E4, MEMORY[0x277D6E800]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218DBF9A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DBFFF4(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2189879C0(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218DC09E4(0);
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218DBFAB4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DBFFF4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DBFB70(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218DC08A8(0);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21872F630(a3, sub_218DC08A8, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_218DBFC24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC08A8(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_21872F630(&qword_27CC11FC8, sub_218DC08A8, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218DBFCCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = off_282A3C268[0];
        type metadata accessor for AudioHistoryFeedViewController();

        v4(v3);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_218DBFDCC(uint64_t a1)
{
  if (!qword_27CC11F08)
  {
    sub_2189879C0(255);
    sub_218DBFEB8(255);
    sub_21872F630(&qword_27CC0B898, sub_2189879C0, MEMORY[0x277D6D8C8]);
    sub_21872F630(&qword_27CC11F80, sub_218DBFEB8, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11F08);
    }
  }
}

void sub_218DBFEB8(uint64_t a1)
{
  if (!qword_27CC11F10)
  {
    type metadata accessor for AudioHistoryFeedSectionDescriptor(255);
    type metadata accessor for AudioHistoryFeedModel(255);
    sub_218DBFFF4(255);
    sub_21872F630(&unk_27CC0DC20, type metadata accessor for AudioHistoryFeedSectionDescriptor, &unk_219CABCCC);
    sub_21872F630(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel, &unk_219CC7C58);
    sub_21872F630(&qword_27CC11F78, sub_218DBFFF4, MEMORY[0x277D6DC88]);
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11F10);
    }
  }
}

void sub_218DBFFF4(uint64_t a1)
{
  if (!qword_27CC11F18)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_218DC0170(255);
    sub_218DC03F8(255);
    sub_218DC0578(255);
    type metadata accessor for AudioHistoryFeedViewController();
    sub_21872F630(&qword_27CC11F60, sub_218DC0170, MEMORY[0x277D6E820]);
    sub_21872F630(&qword_27CC11F68, sub_218DC03F8, MEMORY[0x277D6E738]);
    sub_21872F630(&qword_27CC11F70, sub_218DC0578, MEMORY[0x277D6E9D8]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11F18);
    }
  }
}

void sub_218DC0170(uint64_t a1)
{
  if (!qword_27CC11F20)
  {
    sub_2189879C0(255);
    sub_218DC0340(255);
    type metadata accessor for AudioHistoryFeedBlueprintViewCellProvider();
    type metadata accessor for AudioHistoryFeedBlueprintViewSupplementaryViewProvider();
    sub_21872F630(&qword_27CC0B898, sub_2189879C0, MEMORY[0x277D6D8C8]);
    sub_21872F630(&qword_27CC11F30, sub_218DC0340, MEMORY[0x277D6DF38]);
    sub_21872F630(&qword_27CC11F38, type metadata accessor for AudioHistoryFeedBlueprintViewCellProvider, &unk_219C945AC);
    sub_21872F630(&qword_27CC11F40, type metadata accessor for AudioHistoryFeedBlueprintViewSupplementaryViewProvider, &unk_219C75048);
    sub_21872F630(&qword_27CC0C0B8, type metadata accessor for AudioHistoryFeedLayoutModel, &unk_219C57B64);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11F20);
    }
  }
}

void sub_218DC0340(uint64_t a1)
{
  if (!qword_27CC11F28)
  {
    type metadata accessor for AudioHistoryFeedLayoutModel(255);
    sub_2189BB078();
    sub_21872F630(&qword_27CC0F300, type metadata accessor for AudioHistoryFeedLayoutModel, &unk_219C57B2C);
    v1 = sub_219BE8564();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11F28);
    }
  }
}

void sub_218DC03F8(uint64_t a1)
{
  if (!qword_27CC11F48)
  {
    sub_2189879C0(255);
    sub_218DC0340(255);
    type metadata accessor for AudioHistoryFeedViewController();
    sub_21872F630(&qword_27CC0B898, sub_2189879C0, MEMORY[0x277D6D8C8]);
    sub_21872F630(&qword_27CC11F30, sub_218DC0340, MEMORY[0x277D6DF38]);
    sub_21872F630(&qword_27CC11F50, type metadata accessor for AudioHistoryFeedViewController, &unk_219C23298);
    sub_21872F630(&qword_27CC0C0B8, type metadata accessor for AudioHistoryFeedLayoutModel, &unk_219C57B64);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11F48);
    }
  }
}

void sub_218DC0578(uint64_t a1)
{
  if (!qword_27CC11F58)
  {
    sub_2189879C0(255);
    sub_218DC0340(255);
    type metadata accessor for AudioHistoryFeedViewController();
    sub_21872F630(&qword_27CC0B898, sub_2189879C0, MEMORY[0x277D6D8C8]);
    sub_21872F630(&qword_27CC11F30, sub_218DC0340, MEMORY[0x277D6DF38]);
    sub_21872F630(&qword_27CC11F50, type metadata accessor for AudioHistoryFeedViewController, &unk_219C23298);
    v1 = sub_219BEA194();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11F58);
    }
  }
}

void sub_218DC06B4(uint64_t a1)
{
  if (!qword_27CC11F88)
  {
    sub_218DC0340(255);
    type metadata accessor for AudioHistoryFeedBlueprintLayoutBuilder();
    sub_218DC07F0(255);
    sub_21872F630(&qword_27CC11F30, sub_218DC0340, MEMORY[0x277D6DF38]);
    sub_21872F630(&qword_27CC11F98, type metadata accessor for AudioHistoryFeedBlueprintLayoutBuilder, &unk_219C101C0);
    sub_21872F630(&qword_27CC11FA0, sub_218DC07F0, MEMORY[0x277D6E7B8]);
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11F88);
    }
  }
}

void sub_218DC07F0(uint64_t a1)
{
  if (!qword_27CC11F90)
  {
    type metadata accessor for AudioHistoryFeedLayoutModel(255);
    sub_2189BD7C8();
    sub_21872F630(&qword_27CC0C0B8, type metadata accessor for AudioHistoryFeedLayoutModel, &unk_219C57B64);
    v1 = sub_219BE9974();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11F90);
    }
  }
}

void sub_218DC08A8(uint64_t a1)
{
  if (!qword_27CC11FA8)
  {
    sub_2189879C0(255);
    sub_218DBFFF4(255);
    type metadata accessor for AudioHistoryFeedViewController();
    sub_21872F630(&qword_27CC0B898, sub_2189879C0, MEMORY[0x277D6D8C8]);
    sub_21872F630(&qword_27CC11F78, sub_218DBFFF4, MEMORY[0x277D6DC88]);
    sub_21872F630(&qword_27CC11F50, type metadata accessor for AudioHistoryFeedViewController, &unk_219C23298);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11FA8);
    }
  }
}

void sub_218DC09E4(uint64_t a1)
{
  if (!qword_27CC11FB8)
  {
    sub_218DBFFF4(255);
    sub_2189879C0(255);
    sub_21872F630(&qword_27CC11F78, sub_218DBFFF4, MEMORY[0x277D6DC88]);
    sub_21872F630(&qword_27CC11FC0, sub_2189879C0, MEMORY[0x277D6D8C0]);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11FB8);
    }
  }
}

void sub_218DC0AD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2189879C0(255);
    v7 = v6;
    v8 = sub_21872F630(&qword_27CC0B898, sub_2189879C0, MEMORY[0x277D6D8C8]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_218DC0B7C(uint64_t a1)
{
  if (!qword_27CC11FF8)
  {
    sub_218DC0BF0(255, &qword_27CC0C088, MEMORY[0x277D6EC60]);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11FF8);
    }
  }
}

void sub_218DC0BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioHistoryFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioHistoryFeedModel(255);
    v8[2] = sub_21872F630(&unk_27CC0DC20, type metadata accessor for AudioHistoryFeedSectionDescriptor, &unk_219CABCCC);
    v8[3] = sub_21872F630(&unk_27CC0B8B0, type metadata accessor for AudioHistoryFeedModel, &unk_219CC7C58);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218DC0CE4(uint64_t a1)
{
  sub_218DC0B7C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_218DC0D60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  ObjectType = swift_getObjectType();
  v19[3] = type metadata accessor for AudioHistoryFeedStyler();
  v19[4] = &off_282A6C180;
  v19[0] = a1;
  sub_218718690(v19, &a5[OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_styler]);
  v11 = &a5[OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_eventHandler];
  *v11 = a2;
  *(v11 + 1) = a3;
  *&a5[OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_blueprintViewController] = a4;
  v18.receiver = a5;
  v18.super_class = ObjectType;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  *(*&v13[OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_eventHandler] + 24) = &off_282A3C248;
  swift_unknownObjectWeakAssign();
  v14 = *&v13[OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_blueprintViewController];
  v15 = v13;
  v16 = v14;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v15;
}

void *sub_218DC0E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for AudioHistoryFeedRouter();
  v15[4] = &off_282A42D48;
  v15[0] = a3;
  v14[3] = type metadata accessor for AudioHistoryFeedTracker();
  v14[4] = &off_282A361C8;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A7DA60, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_218DC0F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for AudioHistoryFeedRouter();
  v27 = &off_282A42D48;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_282A361C8;
  v22[0] = a4;
  type metadata accessor for AudioHistoryFeedEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_218DC0E84(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

void *sub_218DC1188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_21879AB4C(0, &qword_27CC12020, type metadata accessor for AudioHistoryFeedBlueprintModifierFactory, &off_282A42C80, type metadata accessor for AudioHistoryFeedInteractor);
  v10 = swift_allocObject();
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[6] = a1;
  v10[7] = a2;
  v10[4] = a3;
  v10[5] = a4;
  v10[8] = a5;
  *(a1 + OBJC_IVAR____TtC7NewsUI227AudioHistoryFeedDataManager_delegate + 8) = &off_282AA1580;
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v11 = a5;

  return v10;
}

void sub_218DC12D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_218DC1340(uint64_t a1)
{
  if (!qword_280E91560)
  {
    sub_2187006BC(255);
    sub_21872F630(&unk_280E926F8, sub_2187006BC, MEMORY[0x277D31BE0]);
    v1 = sub_219BEF494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91560);
    }
  }
}

double sub_218DC1404(uint64_t *a1, void (*a2)(uint64_t *))
{
  v4 = *a1;

  a2(&v4);

  return result;
}

double sub_218DC150C(uint64_t a1, void (*a2)(unint64_t *))
{
  BridgedNewsActivityData.convertToNewsActivity2()(&v5);
  v3 = v5;

  a2(&v5);

  return sub_218932F9C(v3);
}

Swift::Void __swiftcall NewsActivityManager.clearAllSavedUserActivities()()
{

  sub_219BE7874();
}

id NewsActivityManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsActivityManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t NewsActivityManager.stateRestorationActivity.getter()
{

  v0 = sub_219BE7894();

  return v0;
}

void sub_218DC18F0(uint64_t *a2@<X8>)
{

  v3 = sub_219BE7894();

  *a2 = v3;
}

double sub_218DC1944(id *a1, void *a2)
{
  v2 = *a1;

  sub_219BE78A4();

  return result;
}

double NewsActivityManager.stateRestorationActivity.setter(uint64_t a1)
{

  sub_219BE78A4();

  return result;
}

double (*NewsActivityManager.stateRestorationActivity.modify(uint64_t *a1))(id *a1, char a2)
{
  v3 = OBJC_IVAR____TtC7NewsUI219NewsActivityManager_newsUserActivityManager;
  a1[1] = v1;
  a1[2] = v3;

  v4 = sub_219BE7894();

  *a1 = v4;
  return sub_218DC1A5C;
}

double sub_218DC1A5C(id *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_219BE78A4();
  }

  else
  {

    sub_219BE78A4();
  }

  return result;
}

uint64_t sub_218DC1AD4()
{

  v0 = sub_219BE7894();

  return v0;
}

double sub_218DC1B1C(uint64_t a1)
{

  sub_219BE78A4();

  return result;
}

void (*sub_218DC1B70(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = NewsActivityManager.stateRestorationActivity.modify(v2);
  return sub_218C263FC;
}

uint64_t sub_218DC1C18(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v55 = a3;
  v56 = a2;
  sub_218DC26D8(0, &unk_280EE4AF8, MEMORY[0x277D6DF88]);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v45 - v5;
  v6 = type metadata accessor for HistoryFeedGapLocation(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_219BF0BD4();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954178(0);
  v13 = v12;
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for HistoryFeedGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DC260C(0);
  MEMORY[0x28223BE20](v18 - 8);
  sub_218DC26D8(0, &qword_280EE3638, MEMORY[0x277D6EC60]);
  v20 = v19;
  v51 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v45 - v21;
  v23 = sub_2186FF834(&qword_280EE5978, sub_218954178, MEMORY[0x277D6D720]);
  v24 = sub_2186FF834(&qword_280EE5988, sub_218954178, MEMORY[0x277D6D718]);
  v59 = v13;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v13, v23, v24);
  v25 = type metadata accessor for HistoryFeedSectionDescriptor(0);
  v26 = type metadata accessor for HistoryFeedModel(0);
  v27 = sub_2186FF834(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A558);
  v28 = sub_2186FF834(&qword_280ED8650, type metadata accessor for HistoryFeedModel, &unk_219C441A0);
  v49 = v26;
  v50 = v25;
  v47 = v28;
  v48 = v27;
  sub_219BEB2D4();
  v29 = v3[2] >> 61;
  if (v29 <= 2 && v29 != 1)
  {
    sub_218DC27CC(0);
    v30 = swift_projectBox();
    sub_218B73EE8(v30, v17);
    __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    type metadata accessor for HistoryFeedServiceConfig(0);
    sub_2186FF834(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig, &unk_219C4C2E8);

    sub_219BEE7A4();
    v31 = v57;
    sub_2195D2344(v17, v11, v57);
    (*(v45 + 8))(v11, v46);
    sub_219BEB1E4();

    (*(v58 + 8))(v31, v59);
    sub_218DC28F4(v17, type metadata accessor for HistoryFeedGroup);
  }

  type metadata accessor for HistoryFeedServiceConfig(0);
  sub_2186FF834(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig, &unk_219C4C2E8);
  sub_219BEF3D4();
  if (sub_219BEF394())
  {
    if ((sub_219BEE854() & 1) == 0)
    {
      goto LABEL_9;
    }

    v32 = swift_allocObject();
    sub_218DC2858(0, &qword_280E91AD8, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v32 + 16) = sub_219BEE874();
    *v8 = v32;
    v33 = MEMORY[0x277D33068];
  }

  else
  {
    v34 = swift_allocObject();
    sub_218DC2858(0, &qword_280E91AD8, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v34 + 16) = sub_219BEE874();
    *v8 = v34;
    v33 = MEMORY[0x277D33090];
  }

  v35 = *v33;
  sub_218DC2858(0, &qword_280E909F0, MEMORY[0x277D33098]);
  v37 = v36;
  v38 = v20;
  v39 = *(v36 - 8);
  (*(v39 + 104))(v8, v35, v36);
  (*(v39 + 56))(v8, 0, 1, v37);
  v20 = v38;
  v40 = v57;
  sub_219B7B44C(v8, v57);
  sub_218DC28F4(v8, type metadata accessor for HistoryFeedGapLocation);
  sub_219BEB1E4();
  (*(v58 + 8))(v40, v59);
LABEL_9:
  sub_219BEEFF4();

  sub_219BEEFE4();
  v41 = sub_219BEEFC4();

  v42 = 0;
  if (v41)
  {
    v42 = sub_219BEDC74();
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v60 = v41;
  v63 = v42;
  sub_219BEB2C4();

  v43 = v52;
  sub_219BE85C4();
  v56(v43);

  (*(v53 + 8))(v43, v54);
  return (*(v51 + 8))(v22, v20);
}

uint64_t sub_218DC24E8(uint64_t a1)
{
  v2 = sub_218DC2954();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218DC2528()
{
  result = qword_280E9D660;
  if (!qword_280E9D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D660);
  }

  return result;
}

void sub_218DC260C(uint64_t a1)
{
  if (!qword_280EE74C8)
  {
    sub_218954178(255);
    sub_2186FF834(&qword_280EE5978, sub_218954178, MEMORY[0x277D6D720]);
    sub_2186FF834(&qword_280EE5988, sub_218954178, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE74C8);
    }
  }
}

void sub_218DC26D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for HistoryFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for HistoryFeedModel(255);
    v8[2] = sub_2186FF834(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A558);
    v8[3] = sub_2186FF834(&qword_280ED8650, type metadata accessor for HistoryFeedModel, &unk_219C441A0);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218DC27CC(uint64_t a1)
{
  if (!qword_27CC20790)
  {
    type metadata accessor for HistoryFeedGroup(255);
    sub_218DC2858(255, &unk_27CC12030, MEMORY[0x277D32170]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20790);
    }
  }
}

void sub_218DC2858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for HistoryFeedServiceConfig(255);
    v7 = sub_2186FF834(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig, &unk_219C4C2E8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218DC28F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218DC2954()
{
  result = qword_280E9D668[0];
  if (!qword_280E9D668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9D668);
  }

  return result;
}

uint64_t sub_218DC29A8()
{
  v1 = OBJC_IVAR____TtC7NewsUI234AppIntentsAppDependencyStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234AppIntentsAppDependencyStartupTask_resolver));

  return swift_deallocClassInstance();
}

uint64_t sub_218DC2A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC2A8C, 0, 0);
}

uint64_t sub_218DC2A8C()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC2B20, v2, v1);
}

void *sub_218DC2B20()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &unk_280E91330, MEMORY[0x277D326D0], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC2BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC2C10, 0, 0);
}

uint64_t sub_218DC2C10()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC2CA4, v2, v1);
}

void *sub_218DC2CA4()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &unk_280EE8B88, MEMORY[0x277D300F8], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC2D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC2D94, 0, 0);
}

uint64_t sub_218DC2D94()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC2E28, v2, v1);
}

void *sub_218DC2E28()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &qword_280EE8D30, MEMORY[0x277D2FD00], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC2EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC2F18, 0, 0);
}

uint64_t sub_218DC2F18()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC2FAC, v2, v1);
}

void *sub_218DC2FAC()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &qword_280E8FD48, MEMORY[0x277D34600], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC307C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC309C, 0, 0);
}

uint64_t sub_218DC309C()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC3130, v2, v1);
}

void *sub_218DC3130()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &unk_280E8FF50, MEMORY[0x277D34278], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC3200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC3220, 0, 0);
}

uint64_t sub_218DC3220()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC32B4, v2, v1);
}

void *sub_218DC32B4()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &qword_280E8FF18, MEMORY[0x277D342D0], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC3384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC33A4, 0, 0);
}

uint64_t sub_218DC33A4()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC3438, v2, v1);
}

void *sub_218DC3438()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &unk_280E8FE70, MEMORY[0x277D343B8], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC3508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC3528, 0, 0);
}

uint64_t sub_218DC3528()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC35BC, v2, v1);
}

void *sub_218DC35BC()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &unk_280E92648, MEMORY[0x277D31C18], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC368C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC36AC, 0, 0);
}

uint64_t sub_218DC36AC()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC3740, v2, v1);
}

void *sub_218DC3740()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &unk_280E8FE80, MEMORY[0x277D343B0], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC3810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC3830, 0, 0);
}

uint64_t sub_218DC3830()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC38C4, v2, v1);
}

void *sub_218DC38C4()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &unk_280E90620, MEMORY[0x277D33550], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC3994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC39B4, 0, 0);
}

uint64_t sub_218DC39B4()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC3A48, v2, v1);
}

void *sub_218DC3A48()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &unk_280E90270, MEMORY[0x277D33C30], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC3B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC3B38, 0, 0);
}

uint64_t sub_218DC3B38()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC3BCC, v2, v1);
}

void *sub_218DC3BCC()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &qword_280E927A0, MEMORY[0x277D30420], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC3C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC3CBC, 0, 0);
}

uint64_t sub_218DC3CBC()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC3D50, v2, v1);
}

void *sub_218DC3D50()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &qword_280EE9E00, MEMORY[0x277D33810], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC3E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = a3;
  return MEMORY[0x2822009F8](sub_218DC3E40, 0, 0);
}

uint64_t sub_218DC3E40()
{
  sub_219BF5BD4();
  *(v0 + 72) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC3ED4, v2, v1);
}

void *sub_218DC3ED4()
{
  v1 = *(v0 + 64);

  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  if (*(v0 + 40))
  {
    sub_2186CB1F0((v0 + 16), *(v0 + 56));
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC3FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  sub_218DC5EB0(0);
  v3[4] = swift_task_alloc();
  v4 = sub_219BF3D94();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DC4090, 0, 0);
}

uint64_t sub_218DC4090()
{
  sub_219BF5BD4();
  *(v0 + 64) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC4124, v2, v1);
}

uint64_t sub_218DC4124()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_219BE1E34();
  v5 = (*(v2 + 48))(v4, 1, v1);
  if (v5 == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[4];
    v11 = v0[5];
    v12 = *(v9 + 32);
    v0[9] = v12;
    v0[10] = (v9 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v8, v10, v11);
    v5 = sub_218DC421C;
    v6 = 0;
    v7 = 0;
  }

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_218DC421C()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[2];
  v5 = MEMORY[0x277D341D0];
  v4[3] = v3;
  v4[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  v1(boxed_opaque_existential_1, v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_218DC42C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a3;
  return MEMORY[0x2822009F8](sub_218DC42E4, 0, 0);
}

uint64_t sub_218DC42E4()
{
  sub_219BF5BD4();
  *(v0 + 112) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC4378, v2, v1);
}

uint64_t sub_218DC4378()
{
  v1 = *(v0 + 104);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = sub_219BE1E34();
  if (*(v0 + 80))
  {
    v5 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v5;
    *(v0 + 48) = *(v0 + 88);
    v2 = sub_218DC4438;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_218DC4438()
{
  v1 = *(v0 + 96);
  v1[3] = &type metadata for SaveIntentArticleProvider;
  v1[4] = sub_218DC5F08();
  v2 = swift_allocObject();
  *v1 = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 48);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_218DC44D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 96) = a1;
  *(v3 + 104) = a3;
  return MEMORY[0x2822009F8](sub_218DC44F4, 0, 0);
}

uint64_t sub_218DC44F4()
{
  sub_219BF5BD4();
  *(v0 + 112) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC4588, v2, v1);
}

uint64_t sub_218DC4588()
{
  v1 = *(v0 + 104);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = sub_219BE1E34();
  if (*(v0 + 80))
  {
    v5 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v5;
    *(v0 + 48) = *(v0 + 88);
    v2 = sub_218DC4648;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_218DC4648()
{
  v1 = *(v0 + 96);
  v1[3] = &type metadata for ArticleHistoryOptionsProvider;
  v1[4] = sub_218DC5F5C();
  v2 = swift_allocObject();
  *v1 = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 48);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_218DC46E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_218DC4704, 0, 0);
}

uint64_t sub_218DC4704()
{
  sub_219BF5BD4();
  *(v0 + 32) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC4798, v2, v1);
}

uint64_t sub_218DC4798()
{
  v1 = *(v0 + 24);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = sub_219BE1E34();
  if (*(v0 + 40))
  {
    __break(1u);
  }

  else
  {
    v2 = sub_218DC4844;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_218DC4844()
{
  v1 = *(v0 + 16);
  *(v1 + 24) = &type metadata for NoOpAudioArticleOptionsProvider;
  *(v1 + 32) = sub_218DC5FB0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218DC48B8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC46E4(a1, v4, v1 + 24);
}

uint64_t sub_218DC4964(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC3E20(a1, v4, v1 + 24);
}

uint64_t sub_218DC4A10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC3C9C(a1, v4, v1 + 24);
}

uint64_t sub_218DC4ABC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC3B18(a1, v4, v1 + 24);
}

uint64_t sub_218DC4B68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC3994(a1, v4, v1 + 24);
}

uint64_t sub_218DC4C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 176) = a1;
  *(v3 + 184) = a3;
  return MEMORY[0x2822009F8](sub_218DC4C34, 0, 0);
}

uint64_t sub_218DC4C34()
{
  sub_219BF5BD4();
  *(v0 + 192) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC4CC8, v2, v1);
}

uint64_t sub_218DC4CC8()
{
  v1 = *(v0 + 184);

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = sub_219BE1E34();
  if (*(v0 + 120))
  {
    v5 = *(v0 + 144);
    *(v0 + 48) = *(v0 + 128);
    *(v0 + 64) = v5;
    *(v0 + 80) = *(v0 + 160);
    v6 = *(v0 + 112);
    *(v0 + 16) = *(v0 + 96);
    *(v0 + 32) = v6;
    v2 = sub_218DC4D8C;
    v3 = 0;
    v4 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_218DC4D8C()
{
  v1 = *(v0 + 176);
  v1[3] = &type metadata for AudioArticleOptionsProvider;
  v1[4] = sub_218DC5E5C();
  v2 = swift_allocObject();
  *v1 = v2;
  v3 = *(v0 + 32);
  v2[1] = *(v0 + 16);
  v2[2] = v3;
  v4 = *(v0 + 64);
  v2[3] = *(v0 + 48);
  v2[4] = v4;
  v2[5] = *(v0 + 80);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_218DC4E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a3;
  return MEMORY[0x2822009F8](sub_218DC4E50, 0, 0);
}

uint64_t sub_218DC4E50()
{
  sub_219BF5BD4();
  *(v0 + 48) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC4EE4, v2, v1);
}

void *sub_218DC4EE4()
{
  v1 = v0[5];

  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  v3 = v0[2];
  if (v3)
  {
    v5 = v0[3];
    v4 = v0[4];
    *v4 = v3;
    v4[1] = v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC4FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = a3;
  return MEMORY[0x2822009F8](sub_218DC4FD0, 0, 0);
}

uint64_t sub_218DC4FD0()
{
  sub_219BF5BD4();
  *(v0 + 48) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC5064, v2, v1);
}

void *sub_218DC5064()
{
  v1 = v0[5];

  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  v3 = v0[2];
  if (v3)
  {
    v5 = v0[3];
    v4 = v0[4];
    *v4 = v3;
    v4[1] = v5;
    v6 = v0[1];

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC5130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  return MEMORY[0x2822009F8](sub_218DC5150, 0, 0);
}

uint64_t sub_218DC5150()
{
  sub_219BF5BD4();
  *(v0 + 40) = sub_219BF5BC4();
  v2 = sub_219BF5B44();

  return MEMORY[0x2822009F8](sub_218DC51E4, v2, v1);
}

void *sub_218DC51E4()
{
  v1 = *(v0 + 32);

  sub_2186CF94C(0);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  result = sub_219BE1E34();
  v3 = *(v0 + 16);
  if (v3)
  {
    **(v0 + 24) = v3;
    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218DC529C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC5130(a1, v4, v1 + 24);
}

uint64_t sub_218DC5354(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC4FB0(a1, v4, v1 + 24);
}

uint64_t sub_218DC540C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC4E30(a1, v4, v1 + 24);
}

uint64_t sub_218DC54C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC3810(a1, v4, v1 + 24);
}

uint64_t sub_218DC5570(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC368C(a1, v4, v1 + 24);
}

uint64_t sub_218DC561C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC3508(a1, v4, v1 + 24);
}

uint64_t sub_218DC56C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC3384(a1, v4, v1 + 24);
}

uint64_t sub_218DC5774(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC3200(a1, v4, v1 + 24);
}

uint64_t sub_218DC5820(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC307C(a1, v4, v1 + 24);
}

uint64_t sub_218DC58CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC2EF8(a1, v4, v1 + 24);
}

uint64_t sub_218DC5978(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC2D74(a1, v4, v1 + 24);
}

uint64_t sub_218DC5A24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC2BF0(a1, v4, v1 + 24);
}

uint64_t sub_218DC5AD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC2A6C(a1, v4, v1 + 24);
}

uint64_t sub_218DC5B88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC44D4(a1, v4, v1 + 24);
}

uint64_t sub_218DC5C34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC42C4(a1, v4, v1 + 24);
}

uint64_t sub_218DC5CE0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_218DC3FA4(a1, v4, v1 + 24);
}

id sub_218DC5D98@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

uint64_t sub_218DC5DB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DC4C14(a1, v4, v1 + 24);
}

unint64_t sub_218DC5E5C()
{
  result = qword_27CC12040;
  if (!qword_27CC12040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12040);
  }

  return result;
}

void sub_218DC5EB0(uint64_t a1)
{
  if (!qword_27CC12048)
  {
    sub_219BF3D94();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12048);
    }
  }
}

unint64_t sub_218DC5F08()
{
  result = qword_27CC12050;
  if (!qword_27CC12050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12050);
  }

  return result;
}

unint64_t sub_218DC5F5C()
{
  result = qword_27CC12058;
  if (!qword_27CC12058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12058);
  }

  return result;
}

unint64_t sub_218DC5FB0()
{
  result = qword_27CC12060;
  if (!qword_27CC12060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12060);
  }

  return result;
}

uint64_t sub_218DC602C(void *a1)
{
  sub_218DC6C44(0, &qword_27CC12098, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC6B30();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2186ECD30(0);
  sub_218DC6CA8(&qword_27CC120A0, sub_2186ECD30, MEMORY[0x277D31E78]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for NewIssueMagazineFeedGroup(0);
    v9[14] = 1;
    sub_219BED8D4();
    sub_218DC6CA8(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218DC623C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_219BED8D4();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186ECD30(0);
  v29 = v6;
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DC6C44(0, &qword_27CC12080, MEMORY[0x277D844C8]);
  v30 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC6B30();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v11;
  v14 = v13;
  v16 = v25;
  v15 = v26;
  v32 = 0;
  sub_218DC6CA8(&qword_27CC12090, sub_2186ECD30, MEMORY[0x277D31E80]);
  v17 = v27;
  sub_219BF7734();
  v18 = *(v16 + 32);
  v21 = v14;
  v18(v14, v17, v29);
  v31 = 1;
  sub_218DC6CA8(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  sub_219BF7734();
  (*(v28 + 8))(v10, v30);
  v19 = v21;
  (*(v23 + 32))(v21 + *(v22 + 20), v5, v15);
  sub_218DC6B84(v19, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218DC6BE8(v19);
}

uint64_t sub_218DC666C()
{
  if (*v0)
  {
    return 0x724774616D726F66;
  }

  else
  {
    return 0x6769666E6F63;
  }
}

void sub_218DC66AC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6769666E6F63 && a2 == 0xE600000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_218DC6788(uint64_t a1)
{
  v2 = sub_218DC6B30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DC67C4(uint64_t a1)
{
  v2 = sub_218DC6B30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218DC6830(uint64_t a1)
{
  v1 = sub_219BED784();
  v3 = v2;
  if (v1 == sub_219BED784() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_219BF78F4();
  }

  return v6 & 1;
}

uint64_t sub_218DC68CC(uint64_t a1)
{
  v2 = sub_218DC6CA8(&qword_27CC12070, type metadata accessor for NewIssueMagazineFeedGroup, &unk_219C38BF0);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218DC6954(void *a1)
{
  a1[1] = sub_218DC6CA8(&qword_27CC12070, type metadata accessor for NewIssueMagazineFeedGroup, &unk_219C38BF0);
  a1[2] = sub_218DC6CA8(&qword_27CC10EA0, type metadata accessor for NewIssueMagazineFeedGroup, &unk_219C38BAC);
  result = sub_218DC6CA8(&qword_27CC10EB8, type metadata accessor for NewIssueMagazineFeedGroup, &unk_219C38B84);
  a1[3] = result;
  return result;
}

uint64_t sub_218DC6AD8(uint64_t a1)
{
  result = sub_218DC6CA8(&qword_27CC10E80, type metadata accessor for NewIssueMagazineFeedGroup, &unk_219C38BD4);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_218DC6B30()
{
  result = qword_27CC12088;
  if (!qword_27CC12088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12088);
  }

  return result;
}

uint64_t sub_218DC6B84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DC6BE8(uint64_t a1)
{
  v2 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218DC6C44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218DC6B30();
    v7 = a3(a1, &type metadata for NewIssueMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218DC6CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218DC6D04()
{
  result = qword_27CC120A8;
  if (!qword_27CC120A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC120A8);
  }

  return result;
}

unint64_t sub_218DC6D5C()
{
  result = qword_27CC120B0;
  if (!qword_27CC120B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC120B0);
  }

  return result;
}

unint64_t sub_218DC6DB4()
{
  result = qword_27CC120B8;
  if (!qword_27CC120B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC120B8);
  }

  return result;
}

uint64_t WebViewerViewImpression.DismissalType.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

uint64_t WebViewerViewImpression.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BDBD34();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WebViewerViewImpression.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebViewerViewImpression(0) + 20);
  v4 = sub_219BDBD34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WebViewerViewImpression(uint64_t a1)
{
  result = qword_27CC120C8;
  if (!qword_27CC120C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebViewerViewImpression.dismissalType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WebViewerViewImpression(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

unint64_t sub_218DC6FFC()
{
  result = qword_27CC120C0;
  if (!qword_27CC120C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC120C0);
  }

  return result;
}

uint64_t sub_218DC7078(uint64_t a1)
{
  result = sub_219BDBD34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218DC712C@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  LODWORD(v80) = a2;
  v83 = a1;
  sub_218DC8508(0, qword_280EA8D00, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v6 - 8);
  v78 = &v69 - v7;
  sub_218DC8508(0, qword_280EA0FE0, type metadata accessor for BestOfBundleMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v69 - v9;
  sub_218DC8508(0, qword_280EAA120, type metadata accessor for TrendingMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v10 - 8);
  v76 = &v69 - v11;
  sub_218DC8508(0, qword_280EB61C0, type metadata accessor for TopicMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v12 - 8);
  v75 = &v69 - v13;
  sub_218DC8508(0, qword_280E96AE0, type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v14 - 8);
  v74 = &v69 - v15;
  sub_218DC8508(0, &qword_280EAF818, type metadata accessor for PaywallMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v16 - 8);
  v73 = &v69 - v17;
  sub_218DC8508(0, qword_280EAC0A0, type metadata accessor for NewIssueMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v18 - 8);
  v82 = (&v69 - v19);
  sub_218DC8508(0, qword_280EA3068, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v20 - 8);
  v81 = &v69 - v21;
  sub_218DC8508(0, &qword_280E983F0, type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v22 - 8);
  v79 = &v69 - v23;
  sub_218DC8508(0, qword_280E9DAE8, type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v69 - v25;
  sub_218DC8508(0, qword_280E94EA0, type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v69 - v28;
  sub_218DC8508(0, qword_280E99AE8, type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v69 - v31;
  sub_218DC8508(0, qword_280EC7CD0, type metadata accessor for MagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v69 - v34;
  v36 = type metadata accessor for MagazineFeedGroupKnobs(0);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = (&v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9810 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  v40 = 15;
  if ((v80 & 1) == 0)
  {
    v40 = v83;
  }

  v41 = 0x7FFFFFFFFFFFFFFFLL;
  if (!v84)
  {
    v41 = v40;
  }

  v83 = a4;
  *a4 = v41;
  sub_218DC855C(a3, v35);
  v42 = *(v37 + 48);
  if (v42(v35, 1, v36) == 1)
  {
    v43 = v36;
    v80 = a3;
    v44 = type metadata accessor for FeaturedArticleMagazineFeedGroupKnobs(0);
    v45 = *(*(v44 - 8) + 56);
    v72 = v32;
    v45(v32, 1, 1, v44);
    v46 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroupKnobs(0);
    v47 = *(*(v46 - 8) + 56);
    v71 = v29;
    v47(v29, 1, 1, v46);
    v48 = type metadata accessor for FeaturedIssueMagazineFeedGroupKnobs(0);
    v49 = *(*(v48 - 8) + 56);
    v70 = v26;
    v49(v26, 1, 1, v48);
    v50 = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs(0);
    (*(*(v50 - 8) + 56))(v79, 1, 1, v50);
    v51 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(0);
    (*(*(v51 - 8) + 56))(v81, 1, 1, v51);
    v52 = type metadata accessor for NewIssueMagazineFeedGroupKnobs(0);
    (*(*(v52 - 8) + 56))(v82, 1, 1, v52);
    v53 = type metadata accessor for PaywallMagazineFeedGroupKnobs(0);
    v54 = *(*(v53 - 8) + 56);
    v69 = v42;
    v55 = v73;
    v54(v73, 1, 1, v53);
    v56 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs(0);
    v57 = v74;
    (*(*(v56 - 8) + 56))(v74, 1, 1, v56);
    v58 = type metadata accessor for TopicMagazineFeedGroupKnobs(0);
    v59 = v75;
    (*(*(v58 - 8) + 56))(v75, 1, 1, v58);
    v60 = type metadata accessor for TrendingMagazineFeedGroupKnobs(0);
    v61 = v76;
    (*(*(v60 - 8) + 56))(v76, 1, 1, v60);
    v62 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(0);
    v63 = v77;
    (*(*(v62 - 8) + 56))(v77, 1, 1, v62);
    v64 = type metadata accessor for NewspaperMagazineFeedGroupKnobs(0);
    v65 = v43;
    v66 = v78;
    (*(*(v64 - 8) + 56))(v78, 1, 1, v64);
    sub_218933F00(0, 0, 1, v72, v71, v70, v79, v81, v39, v82, v55, v57, v59, v61, v63, v66);
    sub_218DC85DC(v80);
    if (v69(v35, 1, v65) != 1)
    {
      sub_218DC85DC(v35);
    }
  }

  else
  {
    sub_218DC85DC(a3);
    sub_218DC8654(v35, v39);
  }

  v67 = type metadata accessor for MagazineKnobsConfig(0);
  return sub_218DC8654(v39, v83 + *(v67 + 20));
}

uint64_t sub_218DC7B68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F6E4B70756F7267;
  }

  else
  {
    v3 = 0x70756F724778616DLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000073;
  }

  else
  {
    v4 = 0xEA00000000007362;
  }

  if (*a2)
  {
    v5 = 0x6F6E4B70756F7267;
  }

  else
  {
    v5 = 0x70756F724778616DLL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007362;
  }

  else
  {
    v6 = 0xE900000000000073;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218DC7C18()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218DC7CA4(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218DC7D1C(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_218DC7DA4(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_218DC7E04(uint64_t *a1@<X8>)
{
  v2 = 0x70756F724778616DLL;
  if (*v1)
  {
    v2 = 0x6F6E4B70756F7267;
  }

  v3 = 0xE900000000000073;
  if (*v1)
  {
    v3 = 0xEA00000000007362;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_218DC7E4C(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_218DC7EB0(uint64_t a1)
{
  v2 = sub_218DC86B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DC7EEC(uint64_t a1)
{
  v2 = sub_218DC86B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218DC7F28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_218DC8508(0, qword_280EC7CD0, type metadata accessor for MagazineFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  sub_218DC870C(0, &qword_280E8CF30, sub_218DC86B8, &type metadata for MagazineKnobsConfig.Keys, MEMORY[0x277D844C8]);
  v8 = v7;
  v14 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC86B8();
  sub_219BF7B34();
  if (!v2)
  {
    v19 = 0;
    sub_219BF7674();
    v11 = v16;
    v12 = v17;
    type metadata accessor for MagazineFeedGroupKnobs(0);
    v18 = 1;
    sub_218DC87C8(&qword_280EC7D40, &unk_219C09F38);
    sub_219BF7674();
    sub_218DC712C(v11, v12, v6, v15);
    (*(v14 + 8))(v10, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218DC8188(void *a1)
{
  sub_218DC870C(0, &qword_27CC120D8, sub_218DC8774, &type metadata for MagazineKnobsConfig.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218DC8774();
  sub_219BF7B44();
  v11 = 0;
  sub_219BF7824();
  if (!v1)
  {
    type metadata accessor for MagazineKnobsConfig(0);
    v10 = 1;
    type metadata accessor for MagazineFeedGroupKnobs(0);
    sub_218DC87C8(&qword_280EC7D48, &unk_219C09F10);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_218DC835C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70756F724778616DLL && a2 == 0xE900000000000073;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6F6E4B70756F7267 && a2 == 0xEA00000000007362)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_218DC8448(uint64_t a1)
{
  v2 = sub_218DC8774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218DC8484(uint64_t a1)
{
  v2 = sub_218DC8774();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218DC8508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218DC855C(uint64_t a1, uint64_t a2)
{
  sub_218DC8508(0, qword_280EC7CD0, type metadata accessor for MagazineFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DC85DC(uint64_t a1)
{
  sub_218DC8508(0, qword_280EC7CD0, type metadata accessor for MagazineFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218DC8654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218DC86B8()
{
  result = qword_280ED1048;
  if (!qword_280ED1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1048);
  }

  return result;
}

void sub_218DC870C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_218DC8774()
{
  result = qword_27CC120E0;
  if (!qword_27CC120E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC120E0);
  }

  return result;
}

uint64_t sub_218DC87C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineFeedGroupKnobs(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218DC880C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218DC8894()
{
  result = qword_27CC120E8;
  if (!qword_27CC120E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC120E8);
  }

  return result;
}

unint64_t sub_218DC88EC()
{
  result = qword_27CC120F0;
  if (!qword_27CC120F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC120F0);
  }

  return result;
}

unint64_t sub_218DC8944()
{
  result = qword_27CC120F8;
  if (!qword_27CC120F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC120F8);
  }

  return result;
}

unint64_t sub_218DC899C()
{
  result = qword_27CC12100;
  if (!qword_27CC12100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12100);
  }

  return result;
}

unint64_t sub_218DC89F4()
{
  result = qword_280ED1050;
  if (!qword_280ED1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED1050);
  }

  return result;
}

unint64_t sub_218DC8A4C()
{
  result = qword_280ED1058[0];
  if (!qword_280ED1058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED1058);
  }

  return result;
}

uint64_t sub_218DC8AA4()
{
  v0 = sub_219BF1904();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  sub_219BED874();
  v7 = sub_219BF1844();
  v8 = *(v1 + 8);
  v8(v6, v0);
  if (v7)
  {
    sub_218725F94();
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C146A0;
    *(v9 + 32) = v7;
    swift_unknownObjectRetain();
    sub_219BED874();
    v10 = sub_219BF1864();
    v8(v3, v0);
    v14 = v9;
    sub_2191ED550(v10);
    swift_unknownObjectRelease();
    return v14;
  }

  else
  {
    sub_219BED874();
    v12 = sub_219BF1864();
    v8(v3, v0);
    return v12;
  }
}

uint64_t sub_218DC8C58(uint64_t (*a1)(void))
{
  v2 = sub_219BF1904();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  (a1)(0, v7);
  sub_219BED874();
  v10 = sub_219BF1844();
  v11 = *(v3 + 8);
  v11(v9, v2);
  if (v10)
  {
    sub_218725F94();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C146A0;
    *(v12 + 32) = v10;
    swift_unknownObjectRetain();
    sub_219BED874();
    v13 = sub_219BF1864();
    v11(v5, v2);
    v17 = v12;
    sub_2191ED550(v13);
    swift_unknownObjectRelease();
    return v17;
  }

  else
  {
    sub_219BED874();
    v15 = sub_219BF1864();
    v11(v5, v2);
    return v15;
  }
}

uint64_t sub_218DC8F3C(void *a1)
{
  a1[1] = sub_218DC8FC8(&qword_27CC12108, MEMORY[0x277D31C40]);
  a1[2] = sub_218DC8FC8(&unk_280E92630, MEMORY[0x277D31C60]);
  result = sub_218DC8FC8(&qword_280E92640, MEMORY[0x277D31C58]);
  a1[3] = result;
  return result;
}

uint64_t sub_218DC8FC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_219BED8D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218DC9274(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_219BF1904();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED874();
  v9 = a3(v8);
  (*(v5 + 8))(v7, v4);
  return v9;
}

uint64_t sub_218DC93D8@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t type metadata accessor for SavedFeedRefreshRequest(uint64_t a1)
{
  result = qword_280EC3B40;
  if (!qword_280EC3B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218DC9508()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D048], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE9278 = result;
  return result;
}

uint64_t sub_218DC96D8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC12110 = result;
  return result;
}

uint64_t sub_218DC98EC()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D048], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE9230 = result;
  return result;
}

uint64_t sub_218DC9ABC()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_27CC12118 = result;
  return result;
}

uint64_t sub_218DC9C8C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE92A0 = result;
  return result;
}

uint64_t sub_218DC9E5C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12120 = result;
  return result;
}

uint64_t sub_218DCA1A0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12128 = result;
  return result;
}

uint64_t sub_218DCA4E4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 1;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12130 = result;
  return result;
}

uint64_t sub_218DCA828()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12138 = result;
  return result;
}

uint64_t sub_218DCAB6C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12140 = result;
  return result;
}

uint64_t sub_218DCAEB0()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12148 = result;
  return result;
}

uint64_t sub_218DCB1F4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC12150 = result;
  return result;
}

uint64_t sub_218DCB404()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12158 = result;
  return result;
}

uint64_t sub_218DCB748()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE91D8 = result;
  return result;
}

uint64_t sub_218DCB918()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  sub_219BF5414();
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12160 = result;
  return result;
}

uint64_t sub_218DCBC64()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE91E8 = result;
  return result;
}

uint64_t sub_218DCBE34()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12168 = result;
  return result;
}

uint64_t sub_218DCC178()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE91C8 = result;
  return result;
}

uint64_t sub_218DCC368()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D050], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_27CC12170 = result;
  return result;
}

uint64_t sub_218DCC538()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE9258 = result;
  return result;
}

uint64_t sub_218DCC708()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12178 = result;
  return result;
}

uint64_t sub_218DCCA4C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D048], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE91B8 = result;
  return result;
}

uint64_t sub_218DCCC1C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12180 = result;
  return result;
}

uint64_t sub_218DCCF60()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12188 = result;
  return result;
}

uint64_t sub_218DCD2A4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12190 = result;
  return result;
}

uint64_t sub_218DCD5E8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  v10[1] = 2;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2189A8294(0);
  sub_2189A82EC();
  *(swift_allocObject() + 16) = xmmword_219C0B8C0;
  v10[0] = 0;
  sub_219BDC954();
  v10[0] = 1;
  sub_219BDC954();
  v10[0] = 2;
  sub_219BDC954();
  result = sub_219BDC9B4();
  qword_27CC12198 = result;
  return result;
}

uint64_t sub_218DCD974()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D048], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE9200 = result;
  return result;
}

uint64_t type metadata accessor for ShortcutsTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EAB2E8;
  if (!qword_280EAB2E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218DCDC10(uint64_t a1)
{
  sub_2186E1164(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ShortcutsTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_218DCDCB4(uint64_t a1)
{
  v1 = type metadata accessor for ShortcutsTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ShortcutsTodayFeedGroupEmitter(0);
  v39 = 20;
  sub_2189AE994(0);
  v37 = sub_219BEE964();
  v4 = MEMORY[0x277D84560];
  v35 = MEMORY[0x277D84560];
  sub_2186ECBA0(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4(0);
  v31 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  v36 = v9;
  *(v9 + 16) = xmmword_219C0EE20;
  v10 = (v9 + v8);
  sub_218D90870(0);
  swift_allocObject();
  *v10 = sub_219BEFB94();
  v34 = *MEMORY[0x277D32308];
  v32 = *(v6 + 104);
  v32(v10);
  sub_2186ECBA0(0, &unk_280E8B880, MEMORY[0x277D330A8], v4);
  v11 = sub_219BF0FB4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v33 = xmmword_219C09BA0;
  *(v14 + 16) = xmmword_219C09BA0;
  (*(v12 + 104))(v14 + v13, *MEMORY[0x277D330A0], v11);
  v15 = sub_2194B3494(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  *(v10 + v7) = v15;
  v16 = v31;
  v17 = v32;
  (v32)(v10 + v7, *MEMORY[0x277D322E0], v31);
  sub_2186E1164(0);
  sub_219BEDD14();
  v18 = sub_219BF1784();
  v20 = v19;
  v21 = sub_219BF1934();
  (*(*(v21 - 8) + 8))(v3, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  *(v22 + 24) = v20;
  swift_allocObject();
  *(v10 + 2 * v7) = sub_219BEFB94();
  v23 = v16;
  (v17)(v10 + 2 * v7, v34, v16);
  v24 = 3 * v7;
  sub_2186ECBA0(0, &qword_280E8B8A0, MEMORY[0x277D32F00], v35);
  v25 = sub_219BF0644();
  v26 = *(v25 - 8);
  v27 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v33;
  (*(v26 + 104))(v28 + v27, *MEMORY[0x277D32EF8], v25);
  v29 = sub_2194B3180(v28);
  swift_setDeallocating();
  (*(v26 + 8))(v28 + v27, v25);
  swift_deallocClassInstance();
  *(v10 + v24) = v29;
  (v17)(v10 + v24, *MEMORY[0x277D322C8], v23);
  v38 = v37;
  sub_2191EE478(v36);
  return v38;
}

uint64_t sub_218DCE224(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186ECBA0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2186ECBA0(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  sub_2186ECBA0(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF0BD4();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_2186F97D4(0);
  v3[14] = swift_task_alloc();
  v7 = sub_219BEF554();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  type metadata accessor for ShortcutsTodayFeedGroupConfigData(0);
  v3[19] = swift_task_alloc();
  v8 = sub_219BED8D4();
  v3[20] = v8;
  v3[21] = *(v8 - 8);
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DCE558, 0, 0);
}

uint64_t sub_218DCE558()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v20 = *(v0 + 88);
  v21 = *(v0 + 56);
  v22 = *(v0 + 48);
  v3 = *(v0 + 32);
  v23 = *(v0 + 40);
  v4 = type metadata accessor for ShortcutsTodayFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((v3 + *(v4 + 24)), *(v3 + *(v4 + 24) + 24));
  sub_2186E1164(0);
  sub_219BEDD14();
  sub_219BEDCC4();
  sub_219BEDCC4();
  v5 = v3 + *(v4 + 20);
  type metadata accessor for ShortcutsTodayFeedGroupKnobs(0);
  sub_219BEF134();
  sub_2189AE9B4(0);
  sub_219BEEC94();
  (*(v2 + 8))(v1, v20);
  sub_2189AE994(0);
  v7 = v6;
  v8 = *(v6 - 8);
  (*(v8 + 16))(v21, v5, v6);
  (*(v8 + 56))(v21, 0, 1, v7);
  v9 = sub_219BF35D4();
  (*(*(v9 - 8) + 56))(v22, 1, 1, v9);
  *(v0 + 200) = 20;
  sub_218D451AC(0);
  swift_allocObject();

  sub_219BF38D4();
  v10 = sub_219BF2774();
  (*(*(v10 - 8) + 56))(v23, 1, 1, v10);
  v11 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v11 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v12 = swift_task_alloc();
  *(v0 + 184) = v12;
  *v12 = v0;
  v12[1] = sub_218DCE904;
  v13 = *(v0 + 176);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  v16 = *(v0 + 136);
  v17 = *(v0 + 112);
  v18 = MEMORY[0x277D84F90];

  return sub_218F0A5B4(v13, v14, 0x74756374726F6873, 0xE900000000000073, v15, v16, v18, v17);
}

uint64_t sub_218DCE904()
{
  v14 = *(*v1 + 152);
  v13 = *(*v1 + 144);
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 72);
  v8 = *(*v1 + 64);
  *(*v1 + 192) = v0;

  (*(v7 + 8))(v6, v8);
  sub_218DCF544(v5, sub_2186F97D4);
  v9 = *(v3 + 8);
  v9(v2, v4);
  v9(v13, v4);
  v10 = sub_219BF1934();
  (*(*(v10 - 8) + 8))(v14, v10);
  if (v0)
  {
    v11 = sub_218DCECC8;
  }

  else
  {
    v11 = sub_218DCEB90;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_218DCEB90()
{
  (*(v0[21] + 32))(v0[2], v0[22], v0[20]);
  type metadata accessor for TodayFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_218DCECC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218DCEDAC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_218DCE224(a1, a2);
}

uint64_t sub_218DCEE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_218DCEE74, 0, 0);
}

uint64_t sub_218DCEE74()
{
  v1 = v0[2];
  sub_218DCF4DC(v0[3], v1, sub_218D3BC94);
  sub_218D3BC94(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_218DCEF30@<X0>(uint64_t a1@<X8>)
{
  sub_2186E1164(0);
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218DCEFB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for ShortcutsTodayFeedGroupKnobs(0);
  a2[4] = sub_2186E127C(&qword_280EB2CD8, type metadata accessor for ShortcutsTodayFeedGroupKnobs, &unk_219C1D710);
  a2[5] = sub_2186E127C(&qword_280EB2CE0, type metadata accessor for ShortcutsTodayFeedGroupKnobs, &unk_219C1D738);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_218DCF4DC(v2 + v4, boxed_opaque_existential_1, type metadata accessor for ShortcutsTodayFeedGroupKnobs);
}

uint64_t sub_218DCF078()
{
  sub_2186E1164(0);

  return sub_219BEDCA4();
}

uint64_t sub_218DCF0A4@<X0>(uint64_t *a2@<X8>)
{
  sub_2186ECBA0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E1164(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218DCF544(inited + 32, sub_2188317B0);
  sub_218DCF5A4(0);
  a2[3] = v6;
  a2[4] = sub_2186E127C(&unk_280EE7868, sub_218DCF5A4, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_218DCF228(uint64_t a1)
{
  sub_2186E127C(&qword_280EAB300, type metadata accessor for ShortcutsTodayFeedGroupEmitter, &unk_219C39368);

  return sub_219BE2324();
}

uint64_t sub_218DCF3FC@<X0>(void *a1@<X8>)
{
  sub_219BDC8D4();
  sub_219BDC8B4();
  sub_219BDC614();
  v2 = sub_219BDC894();

  if (v2)
  {
    v3 = MEMORY[0x277D328E8];
  }

  else
  {
    *a1 = 0xD000000000000020;
    a1[1] = 0x8000000219CF89D0;
    v3 = MEMORY[0x277D328F0];
  }

  v4 = *v3;
  v5 = sub_219BEFBB4();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_218DCF4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DCF544(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218DCF5E8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218DCF6C0(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218DCF784(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_218DCF858@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218DCFA30(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_218DCF888(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0x8000000219CD7330;
  v5 = 0xD000000000000014;
  if (*v1 != 2)
  {
    v5 = 0x6C616E6F73726570;
    v4 = 0xEF6E6F6974617A69;
  }

  if (*v1)
  {
    v3 = 0x6F6C6F6E6F726863;
    v2 = 0xED00006C61636967;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_218DCF9DC()
{
  result = qword_27CC121A0;
  if (!qword_27CC121A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC121A0);
  }

  return result;
}

unint64_t sub_218DCFA30(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_218DCFA7C()
{
  result = qword_280EB84A0;
  if (!qword_280EB84A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB84A0);
  }

  return result;
}

uint64_t sub_218DCFB08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218DD13A0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EditorialModelRoute(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218DD1190(v2, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v11 + 32))(a1, v16, v10);
      return (*(v11 + 56))(a1, 0, 1, v10);
    }

    v20 = objc_opt_self();
    v21 = sub_219BF53D4();

    v22 = [v20 nss:v21 NewsURLForArticleID:?];

    if (v22)
    {
      sub_219BDB8B4();

      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    (*(v11 + 56))(v6, v23, 1, v10);
    v30 = v6;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v18 = [*(*(*v16 + 3) + 16) identifier];
      if (!v18)
      {
        sub_219BF5414();
        v18 = sub_219BF53D4();
      }

      v19 = [objc_opt_self() nss:v18 NewsURLForTagID:?];

      sub_219BDB8B4();

      return (*(v11 + 56))(a1, 0, 1, v10);
    }

    v24 = *v16;
    v25 = [*v16 identifier];
    if (!v25)
    {
      sub_219BF5414();
      v25 = sub_219BF53D4();
    }

    v26 = [v24 routeURL];
    if (v26)
    {
      v27 = v26;
      sub_219BDB8B4();

      v28 = sub_219BDB854();
      (*(v11 + 8))(v13, v10);
    }

    else
    {
      v28 = 0;
    }

    v31 = [objc_opt_self() nss:v25 NewsURLForArticleID:v28 routeURL:?];

    if (v31)
    {
      sub_219BDB8B4();
      swift_unknownObjectRelease();

      v32 = 0;
    }

    else
    {
      swift_unknownObjectRelease();
      v32 = 1;
    }

    (*(v11 + 56))(v9, v32, 1, v10);
    v30 = v9;
  }

  return sub_218AB007C(v30, a1);
}

uint64_t sub_218DCFF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v29 = a2;
  sub_218DD13A0(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - v9;
  v11 = sub_219BDB954();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v26 - v16;
  sub_218DCFB08(v10);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_218DD13F4(v10, &unk_280EE9D00, MEMORY[0x277CC9260]);
  }

  else
  {
    v27 = a1;
    v28 = a3;
    v19 = *(v12 + 32);
    v19(v17, v10, v11);
    sub_218DD1450(v29, v7, &unk_280EE9D00, MEMORY[0x277CC9260]);
    if (v18(v7, 1, v11) == 1)
    {
      (*(v12 + 8))(v17, v11);
      sub_218DD13F4(v7, &unk_280EE9D00, MEMORY[0x277CC9260]);
    }

    else
    {
      v19(v14, v7, v11);
      v20 = sub_219BDB854();
      v21 = [v20 nss_isNewsURL];

      if (v21)
      {
        sub_218DD14BC();
        v22 = sub_219BF53A4();
        v23 = *(v12 + 8);
        v23(v17, v11);
        if ((v22 & 1) == 0)
        {
          v19(v28, v14, v11);
          type metadata accessor for EditorialModelRoute(0);
          return swift_storeEnumTagMultiPayload();
        }

        v23(v14, v11);
      }

      else
      {
        v24 = *(v12 + 8);
        v24(v14, v11);
        v24(v17, v11);
      }
    }

    a1 = v27;
    a3 = v28;
  }

  return sub_218DD1190(a1, a3);
}

uint64_t sub_218DD02BC()
{

  sub_218DD1338(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_218DD13F4(v0 + OBJC_IVAR____TtC7NewsUI214EditorialModel_route, qword_280ED17E0, type metadata accessor for EditorialModelRoute);

  return swift_deallocClassInstance();
}

void sub_218DD039C(uint64_t a1)
{
  sub_218DD13A0(319, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_218DD04AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_218DD04F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_218DD0568(uint64_t a1)
{
  result = type metadata accessor for FollowingTagModel();
  if (v2 <= 0x3F)
  {
    result = sub_218731D50();
    if (v3 <= 0x3F)
    {
      result = sub_219BDB954();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_218DD05FC()
{
  result = qword_27CC121A8;
  if (!qword_27CC121A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC121A8);
  }

  return result;
}

uint64_t sub_218DD065C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  sub_218DD112C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (v13 + *(v14 + 56));
  sub_218DD1190(a1, v13);
  sub_218DD1190(a2, v15);
  type metadata accessor for EditorialModelRoute(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v19 = *v13;
      v18 = v13[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_23;
      }

      v20 = *v15;
      v21 = v15[1];
      if (v19 == v20 && v18 == v21)
      {

        v23 = 1;
      }

      else
      {
        v23 = sub_219BF78F4();
      }
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v5 + 8))(v13, v4);
        goto LABEL_23;
      }

      v35 = *(v5 + 32);
      v35(v10, v13, v4);
      v35(v7, v15, v4);
      v23 = sub_219BDB8A4();
      v36 = *(v5 + 8);
      v36(v7, v4);
      v36(v10, v4);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v24 = *v13;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    v25 = *v15;
    v26 = [v24 identifier];
    v27 = sub_219BF5414();
    v29 = v28;

    v30 = [v25 identifier];
    v31 = sub_219BF5414();
    v33 = v32;

    if (v27 == v31 && v29 == v33)
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_219BF78F4();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = *v13;
    if (swift_getEnumCaseMultiPayload())
    {

LABEL_23:
      sub_218DD1274(v15, type metadata accessor for EditorialModelRoute);
      v23 = 0;
      return v23 & 1;
    }

    v38 = *v15;
    v39 = [*(v17[3] + 16) identifier];
    v40 = sub_219BF5414();
    v42 = v41;

    v43 = [*(v38[3] + 16) identifier];
    v44 = sub_219BF5414();
    v46 = v45;

    if (v40 == v44 && v42 == v46)
    {
      v23 = 1;
    }

    else
    {
      v23 = sub_219BF78F4();
    }
  }

  return v23 & 1;
}

uint64_t sub_218DD0AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialModelRoute(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DD13A0(0, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  sub_218DD11F4(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) != *(a2 + 16) && (sub_219BF78F4() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_219BF78F4() & 1) == 0)
  {
    goto LABEL_40;
  }

  v15 = *(a1 + 56);
  v16 = *(a2 + 56);
  if (v15)
  {
    if (!v16 || (*(a1 + 48) != *(a2 + 48) || v15 != v16) && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v16)
  {
    goto LABEL_40;
  }

  v17 = *(a1 + 64);
  v18 = *(a2 + 64);
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_40;
    }

    v45 = v5;
    sub_2186F8B0C();
    v19 = v18;
    v20 = v17;
    v21 = sub_219BF6DD4();

    if ((v21 & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v45 = v5;
    if (v18)
    {
      goto LABEL_40;
    }
  }

  if (!sub_21941AA80(*(a1 + 72), *(a2 + 72)))
  {
    goto LABEL_40;
  }

  v22 = *(a1 + 104);
  v23 = *(a2 + 104);
  if (v22 == 255)
  {
    if (v23 == 255)
    {
      goto LABEL_34;
    }

    goto LABEL_40;
  }

  if (v23 == 255)
  {
    goto LABEL_40;
  }

  v24 = *(a1 + 80);
  v26 = *(a2 + 80);
  v25 = *(a2 + 88);
  if ((v22 & 1) == 0)
  {
    if ((v23 & 1) != 0 || (v24 != v26 || *(a1 + 88) != v25) && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if ((v23 & 1) == 0)
  {
    goto LABEL_40;
  }

  v42 = *(a2 + 96);
  v43 = v25;
  swift_unknownObjectRetain();
  v27 = [v24 identifier];
  v28 = sub_219BF5414();
  v40 = v29;
  v41 = v28;

  v39 = v26;
  v30 = [v26 identifier];
  v31 = sub_219BF5414();
  v44 = v32;

  if (v41 == v31 && v40 == v44)
  {
    sub_218DD1338(v39, v43, v42, v23);

    goto LABEL_34;
  }

  LODWORD(v41) = sub_219BF78F4();
  sub_218DD1338(v39, v43, v42, v23);

  if ((v41 & 1) == 0)
  {
LABEL_40:
    v36 = 0;
    return v36 & 1;
  }

LABEL_34:
  v33 = OBJC_IVAR____TtC7NewsUI214EditorialModel_route;
  v34 = *(v12 + 48);
  sub_218DD1450(a1 + OBJC_IVAR____TtC7NewsUI214EditorialModel_route, v14, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
  sub_218DD1450(a2 + v33, &v14[v34], qword_280ED17E0, type metadata accessor for EditorialModelRoute);
  v35 = *(v45 + 48);
  if (v35(v14, 1, v4) != 1)
  {
    sub_218DD1450(v14, v10, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
    if (v35(&v14[v34], 1, v4) != 1)
    {
      sub_218DD12D4(&v14[v34], v7);
      v36 = sub_218DD065C(v10, v7);
      sub_218DD1274(v7, type metadata accessor for EditorialModelRoute);
      sub_218DD1274(v10, type metadata accessor for EditorialModelRoute);
      sub_218DD13F4(v14, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
      return v36 & 1;
    }

    sub_218DD1274(v10, type metadata accessor for EditorialModelRoute);
    goto LABEL_39;
  }

  if (v35(&v14[v34], 1, v4) != 1)
  {
LABEL_39:
    sub_218DD1274(v14, sub_218DD11F4);
    goto LABEL_40;
  }

  sub_218DD13F4(v14, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
  v36 = 1;
  return v36 & 1;
}

uint64_t sub_218DD1004(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a8)
    {
      v9 = [a1 identifier];
      v10 = sub_219BF5414();
      v12 = v11;

      v13 = [a5 identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      if (v10 != v14 || v12 != v16)
      {
        v18 = sub_219BF78F4();

        return v18 & 1;
      }

      return 1;
    }

    return 0;
  }

  if (a8)
  {
    return 0;
  }

  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  return sub_219BF78F4();
}

void sub_218DD112C(uint64_t a1)
{
  if (!qword_280ED1760[0])
  {
    type metadata accessor for EditorialModelRoute(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280ED1760);
    }
  }
}

uint64_t sub_218DD1190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialModelRoute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218DD11F4(uint64_t a1)
{
  if (!qword_280ED17D8)
  {
    sub_218DD13A0(255, qword_280ED17E0, type metadata accessor for EditorialModelRoute);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ED17D8);
    }
  }
}

uint64_t sub_218DD1274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218DD12D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditorialModelRoute(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218DD1338(uint64_t result, uint64_t a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    sub_218DD1350(result, a2, a3, a4 & 1);
  }
}

void sub_218DD1350(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_218DD13A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218DD13F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218DD13A0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218DD1450(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218DD13A0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_218DD14BC()
{
  result = qword_280EE9D20;
  if (!qword_280EE9D20)
  {
    sub_219BDB954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9D20);
  }

  return result;
}

uint64_t sub_218DD1514(uint64_t a1)
{
  sub_2186FF4C0(0);
  v1 = sub_219BEE964();
  sub_218DD6F40(0, &qword_27CC105F0, sub_218C93E04, MEMORY[0x277D84560]);
  sub_218C93E04(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_2186FF440(0, &qword_27CC10600, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EE22C(v6);
  return v1;
}

uint64_t sub_218DD1704(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for RecipesSearchFeedGroupConfigData(0);
  v3[11] = swift_task_alloc();
  v4 = sub_219BDBD64();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_219BED8D4();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for SearchFeedGroup(0);
  v3[19] = swift_task_alloc();
  sub_218DD6F40(0, &qword_27CC121F8, type metadata accessor for RecipesSearchFeedGroupEmitterCursor, MEMORY[0x277D83D88]);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for RecipesSearchFeedGroupEmitterCursor(0);
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DD1960, 0, 0);
}

uint64_t sub_218DD1960()
{
  v1 = swift_task_alloc();
  v0[13].i64[1] = v1;
  v1[1] = vextq_s8(v0[4], v0[4], 8uLL);
  v2 = swift_task_alloc();
  v0[14].i64[0] = v2;
  *v2 = v0;
  v2[1] = sub_218DD1A38;
  v3 = v0[13].i64[0];
  v4 = v0[11].i64[1];

  return MEMORY[0x282190858](v3, v4, &unk_219C39A08, v1, v4);
}

uint64_t sub_218DD1A38()
{
  v2 = *v1;
  v2[29] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218DD2224, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[30] = v3;
    *v3 = v2;
    v3[1] = sub_218DD1BB8;
    v4 = v2[26];
    v5 = v2[22];
    v6 = v2[8];

    return sub_218DD39A0(v5, v6, v4);
  }
}

uint64_t sub_218DD1BB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = sub_218DD2304;
  }

  else
  {
    v4 = sub_218DD1CCC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_218DD1CCC()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  (*(*(v0 + 128) + 16))(*(v0 + 136), v1, *(v0 + 120));
  v48 = *(v1 + *(v3 + 20));
  sub_218DD6C64(v4, v5);
  v44 = *(v2 + 48);
  if (v44(v5, 1, v3) == 1)
  {
    sub_218DD6CF8(*(v0 + 168), &qword_27CC121F8, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
  }

  else
  {
    v6 = *(v0 + 168);
    sub_218C93D70(v6 + *(*(v0 + 184) + 28), v0 + 16);
    sub_218DD6D68(v6, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
  }

  v7 = *(v0 + 152);
  v46 = *(v0 + 248);
  v8 = *(v0 + 128);
  v9 = *(v0 + 136);
  v10 = *(v0 + 112);
  v45 = *(v0 + 120);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  v47 = *(v0 + 80);
  sub_219BDBD54();
  v14 = sub_219BDBD44();
  v16 = v15;
  (*(v11 + 8))(v10, v12);
  MEMORY[0x21CECC330](v14, v16);

  sub_218DD5614(0x2D73657069636572, 0xE800000000000000, v48, v9, v7);

  (*(v8 + 8))(v9, v45);
  v17 = type metadata accessor for RecipesSearchFeedGroup(0);
  v18 = v7 + *(v17 + 24);
  v19 = *(v0 + 16);
  v20 = *(v0 + 32);
  *(v18 + 32) = *(v0 + 48);
  *v18 = v19;
  *(v18 + 16) = v20;
  *(v7 + *(v17 + 20)) = v46;
  swift_storeEnumTagMultiPayload();
  sub_2186FEF84(0);
  sub_219BEDD14();
  LOBYTE(v10) = *(v13 + *(v47 + 24));
  sub_218DD6D68(v13, type metadata accessor for RecipesSearchFeedGroupConfigData);
  v21 = *(v0 + 176);
  if ((v10 & 1) == 0)
  {
    v31 = *(v0 + 208);
    v32 = *(v0 + 152);
    v33 = *(v0 + 56);
    sub_218DD6CF8(v21, &qword_27CC121F8, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
    sub_218DD6D68(v31, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
    v29 = v32;
    v30 = v33;
    goto LABEL_8;
  }

  v22 = *(v0 + 184);
  v23 = *(v0 + 160);
  sub_218DD6C64(v21, v23);
  v24 = v44(v23, 1, v22);
  v25 = *(v0 + 208);
  if (v24 == 1)
  {
    v27 = *(v0 + 152);
    v26 = *(v0 + 160);
    v28 = *(v0 + 56);
    sub_218DD6CF8(*(v0 + 176), &qword_27CC121F8, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
    sub_218DD6D68(v25, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
    sub_218DD6CF8(v26, &qword_27CC121F8, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
    v29 = v27;
    v30 = v28;
LABEL_8:
    sub_218DD6DC8(v29, v30, type metadata accessor for SearchFeedGroup);
    goto LABEL_10;
  }

  v34 = *(v0 + 200);
  v35 = *(v0 + 176);
  v36 = *(v0 + 184);
  v37 = *(v0 + 152);
  v38 = *(v0 + 56);
  sub_218DD6DC8(*(v0 + 160), v34, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
  sub_218B6F3E4(0);
  v40 = (v38 + *(v39 + 48));
  sub_218DD6E30(v37, v38, type metadata accessor for SearchFeedGroup);
  v40[3] = v36;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  sub_218DD6DC8(v34, boxed_opaque_existential_1, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
  sub_218DD6D68(v37, type metadata accessor for SearchFeedGroup);
  sub_218DD6CF8(v35, &qword_27CC121F8, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
  sub_218DD6D68(v25, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
LABEL_10:
  sub_2186FF440(0, &qword_27CC0E4D8, type metadata accessor for SearchFeedGroup, sub_218B6F2E4, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v42 = *(v0 + 8);

  return v42();
}