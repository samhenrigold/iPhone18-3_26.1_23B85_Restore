uint64_t sub_218A1C4C0(uint64_t a1)
{
  result = type metadata accessor for TodayGapLocation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218A1C584(uint64_t a1)
{
  result = type metadata accessor for TodayFailedData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218A1C5F0(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v101 = a3;
  v102 = a2;
  v5 = sub_219BE6DF4();
  v93 = *(v5 - 8);
  v94 = v5;
  MEMORY[0x28223BE20](v5);
  v92 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849878(0, &unk_280EE4B30, MEMORY[0x277D6DF88]);
  v8 = *(v7 - 8);
  v98 = v7;
  v99 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = (&v74 - v9);
  sub_218853494(0);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v91);
  v82 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BF0644();
  v88 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v85 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v86 = &v74 - v16;
  v17 = type metadata accessor for TodayGapLocation(0);
  MEMORY[0x28223BE20](v17 - 8);
  v97 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EA98C(0);
  v95 = *(v19 - 8);
  v96 = v19;
  MEMORY[0x28223BE20](v19);
  v87 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218849878(0, &qword_280EE3720, MEMORY[0x277D6EC60]);
  v22 = v21;
  v100 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v74 - v23;
  sub_2188118D4(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v81 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v74 - v33;
  v35 = v3;
  sub_219BEB244();
  if ((*(v30 + 48))(v27, 1, v29) == 1)
  {
    sub_218A1D47C(v27, sub_2188118D4);
    sub_218A1D3C4();
    *v10 = swift_allocError();
    v36 = v98;
    v37 = v99;
    (*(v99 + 104))(v10, *MEMORY[0x277D6DF68], v98);
    v102(v10);
    return (*(v37 + 8))(v10, v36);
  }

  v78 = v10;
  v77 = v30;
  (*(v30 + 32))(v34, v27, v29);
  v39 = a1;
  (*(v100 + 16))(v24, a1, v22);
  v40 = *(type metadata accessor for TodayFailedData(0) + 20);
  v41 = v97;
  sub_218A1D418(v35 + v40, v97);
  v42 = v41;
  v43 = v96;
  v44 = (*(v95 + 48))(v42, 1, v96);
  v45 = v35;
  v79 = v39;
  v90 = v22;
  v83 = v34;
  v89 = v29;
  v76 = v24;
  if (v44 == 1)
  {
    sub_218A1D47C(v97, type metadata accessor for TodayGapLocation);
LABEL_5:
    type metadata accessor for TodaySectionGapDescriptor(0);
    v46 = swift_allocBox();
    v48 = v47;
    v49 = type metadata accessor for TodayBlueprintCollapsedSection(0);
    (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
    v105 = v46;
    sub_218811948(0, &qword_280E8BFF0, sub_218853400, MEMORY[0x277D84560]);
    sub_218853400(0);
    v51 = v50;
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_219C09BA0;
    sub_218A1D4DC(0);
    v54 = *(v53 + 48);
    v55 = v82;
    sub_218A1D418(v45 + v40, v82);
    v56 = v77;
    if (qword_27CC08700 != -1)
    {
      swift_once();
    }

    v57 = sub_219BF1584();
    v58 = __swift_project_value_buffer(v57, qword_27CC1DDF0);
    (*(*(v57 - 8) + 16))(v55 + v54, v58, v57);
    swift_storeEnumTagMultiPayload();
    sub_2186EF594(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    sub_219BE5FB4();
    v59 = sub_2186EF594(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
    v60 = sub_2186EF594(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9150](v52, v51, v59, v60);
    sub_2186EB3E8();
    v61 = v81;
    sub_219BE6924();
    sub_219BEB234();
    (*(v56 + 8))(v61, v89);
    v62 = v56;
    v63 = v99;
    v64 = v78;
    goto LABEL_13;
  }

  v75 = v40;
  v65 = v95;
  (*(v95 + 32))(v87, v97, v43);
  sub_219BF0F74();
  v66 = v80;
  (*(v88 + 104))(v85, *MEMORY[0x277D32EF8], v80);
  sub_2186EF594(&qword_280E90ED0, MEMORY[0x277D32F00], MEMORY[0x277D32F18]);
  sub_219BF5874();
  sub_219BF5874();
  if (v105 == v103 && v106 == v104)
  {
    v67 = *(v88 + 8);
    v67(v85, v66);
    v67(v86, v66);
  }

  else
  {
    v68 = sub_219BF78F4();
    v69 = *(v88 + 8);
    v69(v85, v66);
    v69(v86, v66);

    if ((v68 & 1) == 0)
    {
      (*(v65 + 8))(v87, v96);
      v40 = v75;
      goto LABEL_5;
    }
  }

  sub_219BE6944();
  sub_219BEB214();

  (*(v65 + 8))(v87, v96);
  v63 = v99;
  v64 = v78;
  v62 = v77;
LABEL_13:
  v71 = v92;
  v70 = v93;
  v72 = v94;
  (*(v93 + 104))(v92, *MEMORY[0x277D6D868], v94);
  sub_2186EB3E8();
  sub_2186EF594(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
  sub_2188552DC();
  v73 = v76;
  sub_219BE85E4();
  (*(v70 + 8))(v71, v72);
  v102(v64);
  (*(v63 + 8))(v64, v98);
  (*(v100 + 8))(v73, v90);
  return (*(v62 + 8))(v83, v89);
}

uint64_t sub_218A1D2C8(uint64_t a1)
{
  v2 = sub_2186EF594(&qword_280EB1F68, type metadata accessor for TodayFailedBlueprintModifier, &unk_219C12B78);

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218A1D3C4()
{
  result = qword_280EB1F70[0];
  if (!qword_280EB1F70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EB1F70);
  }

  return result;
}

uint64_t sub_218A1D418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TodayGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A1D47C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218A1D4DC(uint64_t a1)
{
  if (!qword_280ED7560)
  {
    type metadata accessor for TodayGapLocation(255);
    sub_219BF1584();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ED7560);
    }
  }
}

unint64_t sub_218A1D564()
{
  result = qword_27CC0C878;
  if (!qword_27CC0C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C878);
  }

  return result;
}

void sub_218A1D5B8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v9 = sub_219BDB954();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_219BDB854();
  v13 = [v12 nss_isNewsURL];

  if (!v13)
  {
    sub_218A1D928(a1, a2, v30, a4);
LABEL_8:
    (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v25 = swift_allocObject();
    (*(v10 + 32))(v25 + v24, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    sub_219BDD154();

    return;
  }

  v29 = a2;
  v14 = *(v5 + 24);
  v15 = [v14 delegate];
  if (v15)
  {
    v16 = v15;
    if ([v15 respondsToSelector_])
    {
      sub_218A1DEB8(0, &qword_280E8B5D0, sub_218A1DE4C);
      v27 = v14;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      v18 = *MEMORY[0x277D766D0];
      v28 = a4;
      *(inited + 32) = v18;
      v19 = sub_219BF5414();
      *(inited + 64) = MEMORY[0x277D837D0];
      *(inited + 40) = v19;
      *(inited + 48) = v20;
      v21 = v18;
      v26 = sub_2194AEBD4(inited);
      swift_setDeallocating();
      sub_218A1DF0C(inited + 32, sub_218A1DE4C);
      v22 = sub_219BDB854();
      type metadata accessor for OpenURLOptionsKey(0);
      sub_218A1DF6C(&unk_280E8DC50, type metadata accessor for OpenURLOptionsKey, &unk_219C098B0);
      v23 = sub_219BF5204();

      LODWORD(inited) = [v16 application:v27 openURL:v22 options:{v23, v26}];
      swift_unknownObjectRelease();

      a4 = v28;
      if (inited)
      {
        if (v30)
        {
          (v30)(1);
        }

        goto LABEL_8;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_218A1D928(a1, v29, v30, a4);
}

void sub_218A1D928(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *(v4 + 24);
  v8 = sub_219BDB854();
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_218A1DF6C(&qword_27CC0A770, type metadata accessor for OpenExternalURLOptionsKey, &unk_219C0986C);
  v9 = sub_219BF5204();
  if (a3)
  {
    v10[4] = a3;
    v10[5] = a4;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_218A1DA70;
    v10[3] = &block_descriptor_5;
    a3 = _Block_copy(v10);
  }

  [v7 openURL:v8 options:v9 completionHandler:a3];
  _Block_release(a3);
}

double sub_218A1DA70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_218A1DAC4()
{
  v0 = sub_219BE1464();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB804();
  sub_219BE1454();
  sub_218A1DEB8(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
  v4 = sub_219BDCD44();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  (*(v5 + 104))(v7 + v6, *MEMORY[0x277CEAD18], v4);
  sub_218A1DF6C(&qword_280EE8020, MEMORY[0x277D2F270], MEMORY[0x277D2F268]);
  sub_219BDCCC4();

  (*(v1 + 8))(v3, v0);
  sub_219BDF334();
  sub_218A1DF6C(&qword_280EE87E8, MEMORY[0x277D2DA10], MEMORY[0x277D2DA08]);
  memset(v9, 0, sizeof(v9));
  sub_219BDCCE4();
  return sub_218A1DF0C(v9, sub_21880702C);
}

uint64_t sub_218A1DD74()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218A1DDDC()
{
  sub_219BDB954();

  return sub_218A1DAC4();
}

void sub_218A1DE4C(uint64_t a1)
{
  if (!qword_280E8DC30)
  {
    type metadata accessor for OpenURLOptionsKey(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8DC30);
    }
  }
}

void sub_218A1DEB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218A1DF0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A1DF6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MagazineFeedGroupMoreActionsButton(uint64_t a1)
{
  result = qword_280E9FE90;
  if (!qword_280E9FE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_218A1E04C(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  *&a1[qword_280E9FEA0] = 0;
  v13.receiver = a1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithFrame_, a2, a3, a4, a5);
  [v11 setUserInteractionEnabled_];
  [v11 setHidden_];
  [v11 setContextMenuInteractionEnabled_];
  [v11 setShowsMenuAsPrimaryAction_];

  return v11;
}

void sub_218A1E124(uint64_t a1)
{
  *(a1 + qword_280E9FEA0) = 0;
  sub_219BF7514();
  __break(1u);
}

void sub_218A1E1B4()
{
  v1 = *v0;
  [*v0 setUserInteractionEnabled_];
  [v1 setHidden_];
  v2 = *&v1[qword_280E9FEA0];
  *&v1[qword_280E9FEA0] = 0;
}

void sub_218A1E224()
{
  sub_218A1E3BC(&qword_27CC0C888, &unk_219C12D78);

  JUMPOUT(0x21CEC1E40);
}

void *sub_218A1E27C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v3 = *(Strong + qword_280E9FEA0);
  v4 = Strong;
  v5 = v3;

  return v3;
}

id sub_218A1E2E8(uint64_t a1)
{
  sub_218A1E400();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = sub_2191000C0(0, sub_218973C20, 0, sub_218A1E44C, v1);

  return v2;
}

uint64_t sub_218A1E3BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineFeedGroupMoreActionsButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218A1E400()
{
  result = qword_27CC0C890;
  if (!qword_27CC0C890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC0C890);
  }

  return result;
}

id sub_218A1E454()
{
  v0 = objc_opt_self();

  return [v0 openAppleAccountLoginSettings];
}

uint64_t sub_218A1E48C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  sub_218A20070(v0 + OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute);

  return swift_deallocClassInstance();
}

uint64_t sub_218A1E510(uint64_t a1, int a2)
{
  v30 = a2;
  v31 = *v2;
  v4 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2187C5110(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = [objc_opt_self() sharedAccount];
  v13 = [v12 isUserSignedInToiCloud];

  if (v13)
  {
    sub_218A1F008(0);
    sub_219BE3204();
    sub_2187D9028();
    v14 = sub_219BF66A4();
    (*(v9 + 16))(&v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v8);
    v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v16 = v15 + v10;
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v15, v11, v8);
    *(v17 + v16) = v30 & 1;
    v18 = sub_219BE2F84();

    return v18;
  }

  else
  {
    if (qword_280E8D818 != -1)
    {
      swift_once();
    }

    v20 = qword_280F61718;
    sub_2187C5050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09BA0;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_219BEA7A4();
    v22 = v37;
    v36 = v37;
    sub_219BF7484();
    sub_218932F9C(v22);
    v23 = v32;
    v24 = v33;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_2186FC3BC();
    *(v21 + 32) = v23;
    *(v21 + 40) = v24;
    v25 = sub_219BF6214();
    sub_219BE5314("Sports redirect route to require sign-in, activity=%{public}@", 61, 2, &dword_2186C1000, v20, v25, v21);

    v26 = swift_allocObject();
    v34 = &type metadata for AlertSportsOnboardingSignInRequired;
    v35 = sub_218A1FF80();
    sub_219BEA744();
    swift_allocObject();
    v27 = sub_219BEA6C4();
    sub_219BEA6F4();

    *(v26 + 16) = v27;
    *(v26 + 56) = 0;
    v32 = v26;
    sub_2186CF9A8();
    sub_219BEA7C4();
    v28 = sub_218932F9C(v32);
    (*(v9 + 56))(v6, 0, 2, v8, v28);
    sub_2187C5050(0, &qword_27CC0C8A0, type metadata accessor for SportsOnboardingRedirectRoute, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_218A1E9CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v16 - v11;
  sub_218A1F290(a1, v16 - v11);
  sub_2187C5110(0);
  if ((*(*(v13 - 8) + 48))(v12, 2, v13))
  {
    sub_218A1F290(a1, v9);
    sub_2187C5050(0, &qword_27CC0C8A0, type metadata accessor for SportsOnboardingRedirectRoute, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v15 = sub_218A1E510(a3, a4 & 1);
    sub_218A1F2F4(v12);
    return v15;
  }
}

uint64_t sub_218A1EB50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17[-v7];
  if (*a1 == 1 && a1[1] == 2)
  {
    v15 = OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute;
    swift_beginAccess();
    sub_218A1F10C(a2 + v15, a3);
    sub_2187C5110(0);
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    swift_beginAccess();
    sub_218A1F078(v8, a2 + v15);
    return swift_endAccess();
  }

  else
  {
    sub_2187C5110(0);
    v11 = v10;
    v12 = *(*(v10 - 8) + 56);
    v12(v8, 1, 1, v10);
    v13 = OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute;
    swift_beginAccess();
    sub_218A1F078(v8, a2 + v13);
    swift_endAccess();
    return v12(a3, 1, 1, v11);
  }
}

uint64_t sub_218A1ED44(uint64_t a1, char a2, uint64_t a3)
{
  v15[1] = a3;
  sub_2187C5110(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v15[4] = *v3;
  v15[5] = a1;
  type metadata accessor for SportsOnboardingRedirectRoute(0);
  sub_219BE3204();
  (*(v8 + 16))(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  (*(v8 + 32))(v11 + v10, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v11 + v10 + v9) = a2;
  v12 = sub_219BE2E54();
  v13 = sub_219BE2F84();

  return v13;
}

uint64_t sub_218A1EEFC(uint64_t a1)
{
  sub_218A1F008(0);
  sub_219BE3204();
  sub_2187D9028();
  v1 = sub_219BF66A4();
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  v2 = sub_219BE2F94();

  return v2;
}

void sub_218A1F008(uint64_t a1)
{
  if (!qword_27CC0C898)
  {
    type metadata accessor for FCSportsOnboardingState(255);
    type metadata accessor for FCSportsSyncState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0C898);
    }
  }
}

uint64_t sub_218A1F078(uint64_t a1, uint64_t a2)
{
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A1F10C(uint64_t a1, uint64_t a2)
{
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A1F1F4(uint64_t a1, uint64_t a2)
{
  sub_2187C5110(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  return sub_218A1E9CC(a1, a2, v2 + v6, *(v2 + v6 + *(*(v5 - 8) + 64)));
}

uint64_t sub_218A1F290(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A1F2F4(uint64_t a1)
{
  v2 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A1F350(void *a1)
{
  v2 = a1[6];
  v3 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v2);
  (*(v3 + 8))(v2, v3);
  v4 = a1[11];
  v5 = a1[12];
  __swift_project_boxed_opaque_existential_1(a1 + 8, v4);
  (*(v5 + 16))(v4, v5);
  v6 = sub_219BE31C4();

  return v6;
}

uint64_t sub_218A1F414(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  HIDWORD(v63) = a4;
  v64 = a2;
  v6 = type metadata accessor for SportsOnboardingRedirectRoute(0);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v10 = qword_280F61718;
  sub_2187C5050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D83B88];
  *(v11 + 16) = xmmword_219C0B8C0;
  v13 = MEMORY[0x277D83C10];
  *(v11 + 56) = v12;
  *(v11 + 64) = v13;
  *(v11 + 32) = v8;
  *(v11 + 96) = v12;
  *(v11 + 104) = v13;
  *(v11 + 72) = v9;
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_2187C5110(0);
  v15 = v14;
  sub_219BEA7A4();
  v16 = v70;
  v67 = v70;
  sub_219BF7484();
  sub_218932F9C(v16);
  v17 = v68;
  v18 = v69;
  *(v11 + 136) = MEMORY[0x277D837D0];
  v65 = sub_2186FC3BC();
  *(v11 + 144) = v65;
  *(v11 + 112) = v17;
  *(v11 + 120) = v18;
  v19 = a3;
  v20 = v10;
  v21 = sub_219BF6214();
  sub_219BE5314("Determining sports redirect route for onboarding state=%ld, sync status=%ld, activity=%{public}@", 96, 2, &dword_2186C1000, v10, v21, v11);

  if (v9 >= 2)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        goto LABEL_6;
      }

LABEL_17:
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_219C09BA0;
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_219BEA7A4();
      v51 = v70;
      v67 = v70;
      sub_219BF7484();
      sub_218932F9C(v51);
      v52 = v68;
      v53 = v69;
      v54 = v65;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = v54;
      *(v50 + 32) = v52;
      *(v50 + 40) = v53;
      v55 = sub_219BF6214();
      sub_219BE5314("Sports route is unavailable because of unknown status, %{public}@", 65, 2, &dword_2186C1000, v20, v55, v50);

      v42 = 2;
LABEL_20:
      v32 = v66;
      goto LABEL_21;
    }

    if (v8 == 1)
    {
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_219C09BA0;
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_219BEA7A4();
      v57 = v70;
      v67 = v70;
      sub_219BF7484();
      sub_218932F9C(v57);
      v58 = v68;
      v59 = v69;
      v60 = v65;
      *(v56 + 56) = MEMORY[0x277D837D0];
      *(v56 + 64) = v60;
      *(v56 + 32) = v58;
      *(v56 + 40) = v59;
      v61 = sub_219BF6214();
      sub_219BE5314("Sports allowing route to activity, %{public}@", 45, 2, &dword_2186C1000, v20, v61, v56);
    }

    else
    {
      if (v8)
      {
        goto LABEL_17;
      }

      sub_218A1FC50(v19, BYTE4(v63) & 1);
      sub_219BEA7A4();
      if (v68 != 0xF000000000000050)
      {
        sub_218932F9C(v68);
        sub_219BEA7A4();
        v43 = (v68 >> 58) & 0x3C | (v68 >> 1) & 3;
        v34.n128_f64[0] = sub_218932F9C(v68);
        if (v43 != 39)
        {
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_219C09BA0;
          v68 = 0;
          v69 = 0xE000000000000000;
          sub_219BEA7A4();
          v45 = v70;
          v67 = v70;
          sub_219BF7484();
          sub_218932F9C(v45);
          v46 = v68;
          v47 = v69;
          v48 = v65;
          *(v44 + 56) = MEMORY[0x277D837D0];
          *(v44 + 64) = v48;
          *(v44 + 32) = v46;
          *(v44 + 40) = v47;
          v49 = sub_219BF6214();
          sub_219BE5314("Sports redirecting route to sports management, %{public}@", 57, 2, &dword_2186C1000, v20, v49, v44);

          v68 = 0xF000000000000050;
          sub_2186CF9A8();
          v32 = v66;
          sub_219BEA7C4();
          goto LABEL_11;
        }
      }
    }

LABEL_19:
    v42 = 1;
    goto LABEL_20;
  }

LABEL_6:
  sub_218A1FC50(v19, BYTE4(v63) & 1);
  sub_219BEA7A4();
  v22 = v68;
  if (((v22 >> 58) & 0x3C | (v22 >> 1) & 3) != 0x27)
  {
    sub_218932F9C(v68);
    sub_219BEA7A4();
    v33 = (v68 >> 58) & 0x3C | (v68 >> 1) & 3;
    v34.n128_f64[0] = sub_218932F9C(v68);
    if (v33 != 41)
    {
      v35 = swift_allocObject();
      *(v35 + 16) = xmmword_219C09BA0;
      v68 = 0;
      v69 = 0xE000000000000000;
      sub_219BEA7A4();
      v36 = v70;
      v67 = v70;
      sub_219BF7484();
      sub_218932F9C(v36);
      v37 = v68;
      v38 = v69;
      v39 = v65;
      *(v35 + 56) = MEMORY[0x277D837D0];
      *(v35 + 64) = v39;
      *(v35 + 32) = v37;
      *(v35 + 40) = v38;
      v40 = sub_219BF6214();
      sub_219BE5314("Sports redirecting route to sports sync, %{public}@", 51, 2, &dword_2186C1000, v20, v40, v35);

      v41 = swift_allocObject();
      *(v41 + 16) = 0;
      *(v41 + 24) = 0;
      v68 = v41 | 0xA000000000000002;
      sub_2186CF9A8();
      v32 = v66;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  v24 = *((v68 & 0xFFFFFFFFFFFFFF9) + 0x10);
  v23 = *((v68 & 0xFFFFFFFFFFFFFF9) + 0x18);

  sub_218932F9C(v22);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_219C09BA0;
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_219BEA7A4();
  v26 = v70;
  v67 = v70;
  sub_219BF7484();
  sub_218932F9C(v26);
  v27 = v68;
  v28 = v69;
  v29 = v65;
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = v29;
  *(v25 + 32) = v27;
  *(v25 + 40) = v28;
  v30 = sub_219BF6214();
  sub_219BE5314("Sports redirecting route to sports sync, %{public}@", 51, 2, &dword_2186C1000, v20, v30, v25);

  v31 = swift_allocObject();
  *(v31 + 16) = v24;
  *(v31 + 24) = v23;
  v68 = v31 | 0xA000000000000002;
  sub_2186CF9A8();
  v32 = v66;
LABEL_10:
  sub_219BEA7C4();
  v34.n128_f64[0] = sub_218932F9C(v68);
LABEL_11:
  v42 = 0;
LABEL_21:
  (*(*(v15 - 8) + 56))(v32, v42, 2, v15, v34);
  sub_2187C5050(0, &qword_27CC0C8A0, type metadata accessor for SportsOnboardingRedirectRoute, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

double sub_218A1FC50(uint64_t a1, char a2)
{
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  if ((a2 & 1) == 0)
  {
    sub_2187C5110(0);
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    v24 = OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute;
    swift_beginAccess();
    v22 = v2 + v24;
LABEL_11:
    sub_218A1F078(v7, v22);
    swift_endAccess();
    return result;
  }

  v8 = v2;
  sub_2187C5110(0);
  v10 = v9;
  sub_219BEA7A4();
  v12 = (v27 >> 58) & 0x3C | (v27 >> 1) & 3;
  if (v12 == 41)
  {
    return sub_218932F9C(v27);
  }

  if (v12 != 60 || v27 != 0xF000000000000050)
  {
    sub_218932F9C(v27);
    if (qword_280E8D818 != -1)
    {
      swift_once();
    }

    v14 = qword_280F61718;
    sub_2187C5050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_219BEA7A4();
    v16 = v26;
    v25 = v26;
    sub_219BF7484();
    sub_218932F9C(v16);
    v17 = v28;
    v18 = v29;
    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = sub_2186FC3BC();
    *(v15 + 32) = v17;
    *(v15 + 40) = v18;
    v19 = sub_219BF6214();
    sub_219BE5314("Enqueueing pending sports route activity=%{public}@", 51, 2, &dword_2186C1000, v14, v19, v15);

    v20 = *(v10 - 8);
    (*(v20 + 16))(v7, a1, v10);
    (*(v20 + 56))(v7, 0, 1, v10);
    v21 = OBJC_IVAR____TtC7NewsUI227SportsOnboardingFlowManager_pendingRoute;
    swift_beginAccess();
    v22 = v8 + v21;
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_218A1FF80()
{
  result = qword_27CC0C8A8;
  if (!qword_27CC0C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C8A8);
  }

  return result;
}

uint64_t sub_218A1FFD4(uint64_t *a1, uint64_t a2)
{
  sub_2187C5110(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  return sub_218A1F414(a1, a2, v2 + v6, *(v2 + v6 + *(*(v5 - 8) + 64)));
}

uint64_t sub_218A20070(uint64_t a1)
{
  sub_2187C5050(0, &qword_280EE39F8, sub_2187C5110, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A20124(uint64_t a1)
{
  sub_2187C5110(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

unint64_t sub_218A20194(uint64_t a1)
{
  v2 = type metadata accessor for FollowingNotificationsPrewarm(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A26460(a1, v4, type metadata accessor for FollowingNotificationsPrewarm);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v7 = MEMORY[0x277D84F90];
    v23 = MEMORY[0x277D84F90];
    v8 = sub_218E940FC();
    v10 = v9;
    v11 = sub_218BDEB88(0, 1, v8);
    sub_2191ED6F4(v11);
    v12 = sub_218BDEB88(0, 1, v10);

    sub_2191ED6F4(v12);
    v13 = v23;
    v22 = v7;
    if (v23 >> 62)
    {
      goto LABEL_18;
    }

    v14 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
LABEL_19:

      v22 = sub_219758FD4(v19, v18);
      sub_218A24FC0(&v22);

      v5 = v22;
      goto LABEL_20;
    }

LABEL_5:
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x21CECE0F0](v15, v13);
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_15:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_18:
          v14 = sub_219BF7214();
          if (!v14)
          {
            goto LABEL_19;
          }

          goto LABEL_5;
        }

        v16 = *(v13 + 8 * v15 + 32);

        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_15;
        }
      }

      if (*(*(v16 + 24) + 25))
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v15;
      if (v17 == v14)
      {
        goto LABEL_19;
      }
    }
  }

  v5 = *v4;
  sub_21878D714(0);
  v4 = (v4 + *(v6 + 48));
LABEL_20:
  sub_218A26744(v4, sub_218A25CA4);
  return v5;
}

void sub_218A20430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a3;
  v77 = a2;
  sub_218A25E40(0);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25F90(0);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v74 = &v65 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v67 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v65 - v18;
  MEMORY[0x28223BE20](v19);
  v69 = &v65 - v20;
  MEMORY[0x28223BE20](v21);
  v70 = &v65 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v65 - v24;
  sub_218A26004(0);
  MEMORY[0x28223BE20](v26 - 8);
  sub_218A2634C(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v28 = v27;
  v76 = swift_allocBox();
  v30 = v29;
  v31 = sub_218A260D0(&qword_27CC0C8F0, MEMORY[0x277D6D720]);
  v32 = sub_218A260D0(&qword_27CC0C8F8, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v14, v31, v32);
  v33 = sub_21878D8D8();
  sub_21878D92C();
  v68 = v33;
  sub_219BEB2D4();
  v34 = v3;
  sub_218A20DAC(v12);
  v79 = *(v15 + 48);
  v35 = v79(v12, 1, v14);
  v73 = v28;
  v72 = v30;
  if (v35 == 1)
  {
    sub_218A26744(v12, sub_218A25F90);
  }

  else
  {
    (*(v15 + 32))(v25, v12, v14);
    sub_218A26130();
    sub_219BEB324();
    (*(v15 + 8))(v25, v14);
  }

  v36 = v3;
  v37 = *(v3 + 160);
  if (v37 >= 2)
  {
    v44 = v75;
    if (v37 != 2)
    {
      *&v80[0] = *(v3 + 160);
      sub_219BF7974();
      __break(1u);
      return;
    }
  }

  else
  {
    *&v80[0] = *(v3 + 160);
    BYTE8(v81) = 6;
    sub_218A25EF0(0);
    v39 = v38;
    v40 = sub_218A25F4C(&qword_27CC0C8C8, MEMORY[0x277D6D408]);
    v41 = sub_218A25F4C(&qword_27CC0C8D0, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v39, v40, v41);
    v42 = v69;
    sub_219BE6924();
    v43 = v70;
    (*(v15 + 32))(v70, v42, v14);
    sub_218A26130();
    sub_219BEB324();
    (*(v15 + 8))(v43, v14);
    v44 = v75;
  }

  v45 = v74;
  sub_218A21014(*(v34 + 56), v74);
  v46 = v79;
  if (v79(v45, 1, v14) == 1)
  {
    sub_218A26744(v45, sub_218A25F90);
  }

  else
  {
    v47 = v66;
    (*(v15 + 32))(v66, v45, v14);
    sub_218A26130();
    sub_219BEB324();
    v48 = v47;
    v46 = v79;
    (*(v15 + 8))(v48, v14);
  }

  sub_218A21684(v44);
  if (v46(v44, 1, v14) == 1)
  {
    v49 = sub_218A26744(v44, sub_218A25F90);
  }

  else
  {
    v50 = v67;
    (*(v15 + 32))(v67, v44, v14);
    sub_218A26130();
    sub_219BEB324();
    v49 = (*(v15 + 8))(v50, v14);
  }

  v51 = v78;
  v52 = v77;
  v53 = v76;
  MEMORY[0x28223BE20](v49);
  *(&v65 - 2) = v36;
  sub_218A261A0(0);
  sub_219BE3204();
  sub_218A26290(v36, v80);
  v54 = swift_allocObject();
  v55 = v87;
  *(v54 + 176) = v86;
  *(v54 + 192) = v55;
  *(v54 + 208) = v88;
  v56 = v83;
  *(v54 + 112) = v82;
  *(v54 + 128) = v56;
  v57 = v85;
  *(v54 + 144) = v84;
  *(v54 + 160) = v57;
  v58 = v80[3];
  *(v54 + 48) = v80[2];
  *(v54 + 64) = v58;
  v59 = v81;
  *(v54 + 80) = v80[4];
  *(v54 + 96) = v59;
  v60 = v80[1];
  *(v54 + 16) = v80[0];
  *(v54 + 32) = v60;
  *(v54 + 224) = v53;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_218A262C8;
  *(v61 + 24) = v54;

  v62 = sub_219BE2E54();
  sub_219BE2F74();

  v63 = swift_allocObject();
  v63[2] = v52;
  v63[3] = v51;
  v63[4] = v53;

  v64 = sub_219BE2E54();
  sub_219BE3024();
}

uint64_t sub_218A20DAC@<X0>(uint64_t a1@<X8>)
{
  sub_218A25E40(0);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = v1[20];
  if (v4 >= 2)
  {
    if (v4 == 2)
    {
      __swift_project_boxed_opaque_existential_1(v1 + 21, v1[24]);
      sub_218BAE24C();
      sub_218A25EF0(0);
      v9 = v8;
      v10 = sub_218A25F4C(&qword_27CC0C8C8, MEMORY[0x277D6D408]);
      v11 = sub_218A25F4C(&qword_27CC0C8D0, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v9, v10, v11);
      sub_21878D8D8();
      sub_21878D92C();
      sub_219BE6924();
      sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
      return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
    }

    else
    {
      result = sub_219BF7974();
      __break(1u);
    }
  }

  else
  {
    sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    v6 = *(*(v5 - 8) + 56);

    return v6(a1, 1, 1, v5);
  }

  return result;
}

void sub_218A21014(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218A25EF0(0);
  v46 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25E40(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v12 = sub_219BF7214();
    if (!v12)
    {
      goto LABEL_4;
    }

LABEL_3:
    v13 = *(v2 + 160);
    if (v13 < 2)
    {
      goto LABEL_4;
    }

    if (v13 != 2)
    {
      goto LABEL_34;
    }

    MEMORY[0x28223BE20](v12);
    *(&v42 - 2) = v2;

    v16 = a1;
    a1 = 0;
    sub_2195EB2C4(sub_218A26880, &v42 - 4, v16);

    *&v47[0] = sub_219758FD4(v18, v17);
    sub_218A24FC0(v47);

    v19 = *&v47[0];
    v20 = MEMORY[0x277D84F90];
    if ((*&v47[0] & 0x8000000000000000) != 0 || (*&v47[0] & 0x4000000000000000) != 0)
    {
      if (sub_219BF7214())
      {
        v21 = sub_219BF7214();
        if (!v21)
        {
          v43 = v8;
          v44 = v11;
          v45 = a2;

          v23 = MEMORY[0x277D84F90];
          v29 = *(MEMORY[0x277D84F90] + 16);
          if (v29)
          {
LABEL_20:
            v50 = MEMORY[0x277D84F90];
            sub_218C349A8(0, v29, 0);
            v30 = v50;
            v31 = v23 + 32;
            v32 = v46;
            v33 = v43;
            do
            {
              sub_218A26508(v31, v47);
              sub_218A26508(v47, v49);
              sub_21878D92C();
              sub_219BE5FB4();
              sub_218A26564(v47);
              v50 = v30;
              v35 = *(v30 + 16);
              v34 = *(v30 + 24);
              if (v35 >= v34 >> 1)
              {
                sub_218C349A8((v34 > 1), v35 + 1, 1);
                v32 = v46;
                v30 = v50;
              }

              *(v30 + 16) = v35 + 1;
              (*(v6 + 32))(v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v35, v33, v32);
              v31 += 48;
              --v29;
            }

            while (v29);

            goto LABEL_31;
          }

LABEL_30:

          v32 = v46;
LABEL_31:
          sub_2197EBCE8(v47);
          v48 = 1;
          v36 = sub_218A25F4C(&qword_27CC0C8C8, MEMORY[0x277D6D408]);
          v37 = sub_218A25F4C(&qword_27CC0C8D0, MEMORY[0x277D6D3F8]);
          MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v32, v36, v37);
          sub_21878D8D8();
          sub_21878D92C();
          v38 = v45;
          sub_219BE6924();
          sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
          v40 = v39;
          sub_219BE6984();

          (*(*(v40 - 8) + 56))(v38, 0, 1, v40);
          return;
        }

        goto LABEL_11;
      }
    }

    else
    {
      v21 = *(*&v47[0] + 16);
      if (v21)
      {
LABEL_11:
        v43 = v8;
        v44 = v11;
        v45 = a2;
        v49[0] = v20;
        sub_218C349C8(0, v21 & ~(v21 >> 63), 0);
        if ((v21 & 0x8000000000000000) == 0)
        {
          v22 = 0;
          v23 = v49[0];
          do
          {
            if ((v19 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x21CECE0F0](v22, v19);
            }

            else
            {
              v24 = *(v19 + 8 * v22 + 32);
            }

            v49[0] = v23;
            v26 = *(v23 + 16);
            v25 = *(v23 + 24);
            if (v26 >= v25 >> 1)
            {
              sub_218C349C8((v25 > 1), v26 + 1, 1);
              v23 = v49[0];
            }

            ++v22;
            *(v23 + 16) = v26 + 1;
            v27 = v23 + 48 * v26;
            *(v27 + 32) = v24;
            v28 = v47[0];
            *(v27 + 56) = v47[1];
            *(v27 + 40) = v28;
            *(v27 + 72) = 0;
          }

          while (v21 != v22);

          v29 = *(v23 + 16);
          if (v29)
          {
            goto LABEL_20;
          }

          goto LABEL_30;
        }

        __break(1u);
LABEL_34:
        *&v47[0] = v13;
        sub_219BF7974();
        __break(1u);

        __break(1u);
        return;
      }
    }

    sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    (*(*(v41 - 8) + 56))(a2, 1, 1, v41);

    return;
  }

  v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_3;
  }

LABEL_4:
  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v15 = *(*(v14 - 8) + 56);

  v15(a2, 1, 1, v14);
}

uint64_t sub_218A21684@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_218A25E40(0);
  MEMORY[0x28223BE20](v4 - 8);
  sub_218A25EF0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  *&v8 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v10 = &v30[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + 96);
  if ([v11 isSignedIntoEmailAccount])
  {
    v12 = *(v2 + 144);
    v13 = *(v2 + 152);
    __swift_project_boxed_opaque_existential_1((v2 + 120), v12);
    EmailSignupModelFactoryType.model(from:)(v11, v12, v13);
    v14 = v31[0];
    if (*(&v31[0] + 1))
    {
      if ([*(v2 + 80) useFineGrainedNewsletterManagement])
      {
        *&v31[0] = sub_218CD4B58(v14 != 0);
        BYTE8(v32) = 2;
        sub_21878D92C();
        sub_219BE5FB4();
        v15 = 0;
        v16 = 0;
      }

      else
      {
        v20 = sub_218C31128(1, *(&v14 + 1));
        v15 = sub_2196EDF8C(v20 & 1);
        v16 = v21;
        if (v14)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        sub_219096198(v22, v38);
        v30[3] = &type metadata for NotificationsNewsletterRowModel;
        v30[4] = &off_282A5BBF0;
        v23 = swift_allocObject();
        v30[0] = v23;
        v24 = v38[1];
        v23[1] = v38[0];
        v23[2] = v24;
        v23[3] = v39[0];
        *(v23 + 58) = *(v39 + 10);
        sub_218718690(v30, v31);
        BYTE8(v32) = 1;
        sub_218A26508(v31, v40);
        sub_21878D92C();
        sub_219BE5FB4();
        sub_218A26564(v31);
        __swift_destroy_boxed_opaque_existential_1(v30);
      }

      sub_2197EBDDC(v40);
      v32 = v40[2];
      v33 = v40[3];
      v31[0] = v40[0];
      v31[1] = v40[1];
      v34 = v41;
      v35 = v15;
      v36 = v16;
      v37 = 4;
      sub_218967C1C(v40, v30);
      v25 = sub_218A25F4C(&qword_27CC0C8C8, MEMORY[0x277D6D408]);
      v26 = sub_218A25F4C(&qword_27CC0C8D0, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v6, v25, v26);
      sub_21878D8D8();
      sub_21878D92C();
      sub_219BE6924();
      sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
      v28 = v27;
      sub_219BE6994();

      sub_218967CDC(v40);
      (*(v7 + 8))(v10, v6);
      return (*(*(v28 - 8) + 56))(a1, 0, 1, v28);
    }
  }

  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v18 = *(*(v17 - 8) + 56);

  return v18(a1, 1, 1, v17);
}

uint64_t sub_218A21AF4(uint64_t a1)
{
  sub_218A25F90(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a1;
  sub_21878D560(0, &qword_27CC0C938, sub_218A26228, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  v8 = sub_218A232F0();
  if (v9)
  {
    MEMORY[0x28223BE20](v8);
    *&v19[-32] = a1;
    *&v19[-24] = v10;
    *&v19[-16] = v11;
    sub_21878D560(0, &qword_27CC0C940, sub_218A2625C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();
  }

  else
  {
    sub_218A25EF0(0);
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    sub_21878D560(0, &qword_27CC0C940, sub_218A2625C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v12 = sub_219BE3014();
  }

  MEMORY[0x28223BE20](v12);
  *&v19[-16] = a1;
  sub_21878D560(0, &qword_27CC0C940, sub_218A2625C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v14 = sub_219BE30B4();
  v15 = *(a1 + 160);
  if (v15 >= 2)
  {
    if (v15 != 2)
    {
      v21 = *(a1 + 160);
      result = sub_219BF7974();
      __break(1u);
      return result;
    }

    MEMORY[0x28223BE20](v14);
    *&v19[-16] = a1;
    sub_21878D560(0, &qword_27CC0C948, sub_218A25F90, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();
  }

  else
  {
    sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
    sub_21878D560(0, &qword_27CC0C948, sub_218A25F90, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
  }

  v17 = sub_219BE31A4();

  return v17;
}

uint64_t sub_218A21FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25[1] = a5;
  v26 = a4;
  sub_218A25F90(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v25 - v13;
  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v25[0] = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v25 - v20;
  sub_218A2634C(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  swift_projectBox();
  sub_218A22360(a1, a2, a3, v14);
  v22 = *(v17 + 48);
  if (v22(v14, 1, v16) == 1)
  {
    sub_218A26744(v14, sub_218A25F90);
  }

  else
  {
    (*(v17 + 32))(v21, v14, v16);
    swift_beginAccess();
    sub_218A26130();
    sub_219BEB324();
    swift_endAccess();
    (*(v17 + 8))(v21, v16);
  }

  sub_218A26460(v26, v11, sub_218A25F90);
  if (v22(v11, 1, v16) == 1)
  {
    return sub_218A26744(v11, sub_218A25F90);
  }

  v24 = v25[0];
  (*(v17 + 32))(v25[0], v11, v16);
  swift_beginAccess();
  sub_218A26130();
  sub_219BEB324();
  swift_endAccess();
  return (*(v17 + 8))(v24, v16);
}

uint64_t sub_218A22360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v99 = a2;
  v100 = a3;
  v103 = a1;
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v84 - v11;
  sub_218A25EF0(0);
  v14 = v13;
  v102 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v84 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v84 - v21;
  sub_218A25E40(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v84 - v30;
  v32 = *(v5 + 160);
  if (v32 >= 2)
  {
    v90 = v25;
    v91 = v9;
    v85 = v22;
    v86 = v19;
    v92 = v12;
    v93 = v14;
    v97 = v28;
    v98 = v31;
    v95 = v16;
    if (v32 != 2)
    {
      *&v112 = v32;
      result = sub_219BF7974();
      __break(1u);
      return result;
    }

    v35 = v27;
    v36 = [objc_opt_self() sharedAccount];
    v96 = [v36 isUserSignedIntoiTunes];

    v101 = v5;
    v37 = [*(v5 + 72) cachedSubscription];
    v38 = v35;
    if (objc_getAssociatedObject(v37, v37 + 1))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v124 = 0u;
      v125 = 0u;
    }

    v112 = v124;
    v113 = v125;
    v39 = v92;
    v40 = v96;
    v94 = a4;
    if (*(&v125 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v41 = *&v110[0];
        v42 = [*&v110[0] integerValue];
        if (v42 == -1)
        {
          goto LABEL_23;
        }

        goto LABEL_16;
      }
    }

    else
    {
      sub_218806FD0(&v112);
    }

    v41 = 0;
    v42 = 0;
LABEL_16:
    if (objc_getAssociatedObject(v37, ~v42))
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v124 = 0u;
      v125 = 0u;
    }

    v112 = v124;
    v113 = v125;
    if (*(&v125 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v43 = *&v110[0];
        v44 = [v43 integerValue];

        v45 = v44 - 277;
        goto LABEL_24;
      }
    }

    else
    {
      sub_218806FD0(&v112);
    }

LABEL_23:

    v45 = -277;
LABEL_24:
    v46 = v45 ^ v42;
    v47 = [v101[10] narrativeAudio];
    v48 = v47;
    if (v46)
    {
      v49 = v40;
    }

    else
    {
      v49 = 1;
    }

    v50 = v93;
    v51 = v102;
    if ((v49 & 1) == 0 && (v47 & 1) == 0 && !*(v103 + 16))
    {
      return (*(v97 + 56))(v94, 1, 1, v38);
    }

    v87 = v46;
    v52 = [v101[11] appConfiguration];
    if ([v52 respondsToSelector_])
    {
      v53 = [v52 paidBundleConfig];
      swift_unknownObjectRelease();
      v54 = [v53 audioDailyBriefingFeatureName];

      if (v54)
      {
        v88 = sub_219BF5414();
        v56 = v55;

        goto LABEL_35;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v88 = 0;
    v56 = 0;
LABEL_35:
    v57 = v99;
    sub_2197EBECC(&v124);
    v121 = v126;
    v122 = v127;
    v123 = v128;
    v119 = v124;
    v120 = v125;
    LODWORD(v99) = v48;
    v89 = v56;
    if (v48)
    {
      v58 = v40;
      v59 = sub_2196EE08C(v88, v56);
    }

    else
    {
      v58 = v40;
      v59 = 0;
      v60 = 0;
    }

    v114[0] = v121;
    v114[1] = v122;
    v112 = v119;
    v113 = v120;
    v115 = v123;
    v116 = v59;
    v117 = v60;
    v118 = 3;
    sub_218967C1C(&v124, v110);
    v61 = sub_218A25F4C(&qword_27CC0C8C8, MEMORY[0x277D6D408]);
    v62 = sub_218A25F4C(&qword_27CC0C8D0, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v50, v61, v62);
    sub_21878D8D8();
    sub_21878D92C();
    sub_219BE6924();
    sub_219BE6984();
    sub_218A26460(v57, v39, sub_218A2625C);
    v63 = *(v51 + 48);
    if (v63(v39, 1, v50) == 1)
    {
      sub_218A26744(v39, sub_218A2625C);
    }

    else
    {
      v64 = v85;
      (*(v51 + 32))(v85, v39, v50);
      sub_219BE6994();
      v58 = v96;
      (*(v51 + 8))(v64, v50);
    }

    v65 = v91;
    sub_218A26460(v100, v91, sub_218A2625C);
    if (v63(v65, 1, v50) == 1)
    {
      sub_218A26744(v65, sub_218A2625C);
      v66 = v98;
      if (!v58)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v67 = v86;
      (*(v51 + 32))(v86, v65, v50);
      v66 = v98;
      sub_219BE6994();
      (*(v51 + 8))(v67, v50);
      if (!v58)
      {
        goto LABEL_49;
      }
    }

    if ([v101[8] marketingNotificationsEnabled])
    {
      v68 = 1;
    }

    else
    {
      v68 = 2;
    }

    sub_2190962D4(v68, v110);
    v104[3] = &type metadata for NotificationsMarketingRowModel;
    v104[4] = &off_282A5B968;
    v69 = swift_allocObject();
    v104[0] = v69;
    v70 = v110[1];
    v69[1] = v110[0];
    v69[2] = v70;
    v69[3] = v111[0];
    *(v69 + 58) = *(v111 + 10);
    sub_218718690(v104, &v112);
    BYTE8(v114[0]) = 1;
    sub_218A26508(&v112, v105);
    v71 = v95;
    sub_219BE5FB4();
    sub_219BE6994();
    (*(v51 + 8))(v71, v50);
    sub_218A26564(&v112);
    __swift_destroy_boxed_opaque_existential_1(v104);
LABEL_49:
    if (v87)
    {
      if (v99)
      {
LABEL_51:
        if ([v101[8] endOfAudioTrackNotificationsEnabled])
        {
          v72 = 1;
        }

        else
        {
          v72 = 2;
        }

        if (v89)
        {
          v73 = v88;
        }

        else
        {
          v73 = 0;
        }

        if (v89)
        {
          v74 = v89;
        }

        else
        {
          v74 = 0xE000000000000000;
        }

        if (qword_27CC08428 != -1)
        {
          swift_once();
        }

        v75 = qword_27CCD88C8;
        v108 = &type metadata for NotificationsEndOfAudioTrackRowModel;
        v109 = &off_282A5B9C8;
        v76 = swift_allocObject();
        v107[0] = v76;
        *(v76 + 16) = 4;
        *(v76 + 24) = v75;
        *(v76 + 32) = 0;
        *(v76 + 40) = 1;
        *(v76 + 48) = 4;
        *(v76 + 56) = v73;
        *(v76 + 64) = v74;
        *(v76 + 72) = v72;
        *(v76 + 73) = 1;
        sub_218718690(v107, v105);
        v106 = 1;
        sub_218A26508(v105, v104);
        v77 = v75;
        v78 = v95;
        sub_219BE5FB4();
        v66 = v98;
        sub_219BE6994();
        sub_218967CDC(&v124);
        (*(v102 + 8))(v78, v50);
        sub_218A26564(v105);
        __swift_destroy_boxed_opaque_existential_1(v107);
        goto LABEL_68;
      }
    }

    else
    {
      if ([v101[8] newIssueNotificationsEnabled])
      {
        v79 = 1;
      }

      else
      {
        v79 = 2;
      }

      sub_219096410(v79, &v112);
      v108 = &type metadata for NotificationsNewIssuesRowModel;
      v109 = &off_282A5B998;
      v80 = swift_allocObject();
      v107[0] = v80;
      v81 = v113;
      v80[1] = v112;
      v80[2] = v81;
      v80[3] = v114[0];
      *(v80 + 58) = *(v114 + 10);
      sub_218718690(v107, v105);
      v106 = 1;
      sub_218A26508(v105, v104);
      v82 = v95;
      sub_219BE5FB4();
      sub_219BE6994();
      (*(v51 + 8))(v82, v50);
      sub_218A26564(v105);
      __swift_destroy_boxed_opaque_existential_1(v107);
      if (v99)
      {
        goto LABEL_51;
      }
    }

    sub_218967CDC(&v124);
LABEL_68:
    v83 = v94;
    (*(v97 + 32))(v94, v66, v38);
    return (*(v97 + 56))(v83, 0, 1, v38);
  }

  v33 = *(v28 + 56);

  return v33(a4, 1, 1, v29);
}

uint64_t sub_218A22F30(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  sub_218A2634C(0, &qword_27CC0C928, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  sub_218A2634C(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v10 = v9;
  v11 = swift_projectBox();
  sub_218A263D0(0);
  v13 = *(v12 + 48);
  swift_beginAccess();
  (*(*(v10 - 8) + 16))(v8, v11, v10);
  v14 = *MEMORY[0x277D6D868];
  v15 = sub_219BE6DF4();
  (*(*(v15 - 8) + 104))(&v8[v13], v14, v15);
  (*(v6 + 104))(v8, *MEMORY[0x277D6DF70], v5);
  a1(v8);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218A23124(uint64_t a1, uint64_t a2)
{
  v5 = *(*(v2 + 104) + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController);
  v6 = sub_219BF53D4();
  LOBYTE(v5) = [v5 isAppleNewsNotificationForTagID_];

  if (v5)
  {
    goto LABEL_2;
  }

  v8 = sub_218A23230();
  if (!v9)
  {
    goto LABEL_7;
  }

  if (v8 == a1 && v9 == a2)
  {
    goto LABEL_10;
  }

  v10 = sub_219BF78F4();

  if ((v10 & 1) == 0)
  {
LABEL_7:
    v11 = sub_218A232F0();
    if (!v12)
    {
      v7 = 0;
      return v7 & 1;
    }

    if (v11 != a1 || v12 != a2)
    {
      v7 = sub_219BF78F4();
      goto LABEL_13;
    }

LABEL_10:
    v7 = 1;
LABEL_13:

    return v7 & 1;
  }

LABEL_2:
  v7 = 1;
  return v7 & 1;
}

uint64_t sub_218A23230()
{
  if (![*(v0 + 80) puzzlesEnabled])
  {
    return 0;
  }

  v1 = [objc_msgSend(*(v0 + 88) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v2 = [v1 puzzleHubTagID];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_219BF5414();

  return v3;
}

uint64_t sub_218A232F0()
{
  v1 = [objc_msgSend(*(v0 + 88) possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_219BF5414();
  }

  else
  {
    if (qword_280EE5F70 != -1)
    {
      swift_once();
    }

    v3 = sub_219BE5434();
    __swift_project_value_buffer(v3, qword_280F625C8);
    v4 = sub_219BE5414();
    v5 = sub_219BF61F4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2186C1000, v4, v5, "FollowingNotificationsPrewarmModifier unable to fetch appConfiguration for mySportsTagID", v6, 2u);
      MEMORY[0x21CECF960](v6, -1, -1);
    }

    return 0;
  }

  return v2;
}

BOOL sub_218A23430(uint64_t a1)
{
  v1 = [*(*(*a1 + 24) + 16) identifier];
  v2 = sub_219BF5414();
  v4 = v3;

  v5 = sub_218A23124(v2, v4);

  return (v5 & 1) == 0;
}

void sub_218A234BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a5;
  v8 = a5[7];
  if (v8 >> 62)
  {
    v9 = sub_219BF7214();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
LABEL_13:
    v20 = sub_218845F78(v10);

    v21 = v5[3];
    v22 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v21);
    sub_218A26290(v5, v34);
    v23 = swift_allocObject();
    v24 = v34[11];
    *(v23 + 176) = v34[10];
    *(v23 + 192) = v24;
    *(v23 + 208) = v34[12];
    v25 = v34[7];
    *(v23 + 112) = v34[6];
    *(v23 + 128) = v25;
    v26 = v34[9];
    *(v23 + 144) = v34[8];
    *(v23 + 160) = v26;
    v27 = v34[3];
    *(v23 + 48) = v34[2];
    *(v23 + 64) = v27;
    v28 = v34[5];
    *(v23 + 80) = v34[4];
    *(v23 + 96) = v28;
    v29 = v34[1];
    *(v23 + 16) = v34[0];
    *(v23 + 32) = v29;
    *(v23 + 224) = v20;
    *(v23 + 232) = a1;
    *(v23 + 240) = a2;
    v30 = *(v22 + 32);

    v30(sub_218A2669C, v23, v21, v22);

    return;
  }

  *&v34[0] = MEMORY[0x277D84F90];
  sub_21870B65C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v31 = v5;
    v32 = a1;
    v33 = a2;
    v11 = 0;
    v10 = *&v34[0];
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v11, v8);
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      v13 = [*(*(v12 + 24) + 16) identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      *&v34[0] = v10;
      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_21870B65C((v17 > 1), v18 + 1, 1);
        v10 = *&v34[0];
      }

      ++v11;
      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
    }

    while (v9 != v11);
    a1 = v32;
    a2 = v33;
    v5 = v31;
    goto LABEL_13;
  }

  __break(1u);
}

void sub_218A23718(uint64_t a1, char *a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  sub_218A25F90(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A26460(a1, v52, sub_218A266AC);
  if (v53)
  {
    sub_218A26744(v52, sub_218A266AC);
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v13 = sub_219BF6F44();
    v14 = sub_219BF6214();
    sub_219BE5314("Failed to refresh notification configuration", 44, 2, &dword_2186C1000, v13, v14, MEMORY[0x277D84F90]);

    sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    a4(v12);
    sub_218A26744(v12, sub_218A25F90);
    return;
  }

  v45 = v12;
  v47 = a4;
  v48 = a5;
  v16 = *(a2 + 3);
  v17 = *(a2 + 4);
  v46 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v18 = (*(v17 + 8))(v16, v17);
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = 0;
    v50 = v18 + 32;
    v22 = a3 + 56;
    v23 = MEMORY[0x277D84F90];
    v49 = v20;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        return;
      }

      v24 = (v50 + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      ++v21;
      if (!*(a3 + 16))
      {
        break;
      }

      sub_219BF7AA4();

      sub_219BF5524();
      v27 = sub_219BF7AE4();
      v28 = -1 << *(a3 + 32);
      v29 = v27 & ~v28;
      if ((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a3 + 48) + 16 * v29);
          v32 = *v31 == v26 && v31[1] == v25;
          if (v32 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_16;
          }
        }

        if (v21 == v20)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_16:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21870B65C(0, *(v23 + 16) + 1, 1);
          v23 = v51;
        }

        v35 = *(v23 + 16);
        v34 = *(v23 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_21870B65C((v34 > 1), v35 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v35 + 1;
        v36 = v23 + 16 * v35;
        *(v36 + 32) = v26;
        *(v36 + 40) = v25;
        v20 = v49;
        if (v21 == v49)
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_16;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_24:

  MEMORY[0x28223BE20](v37);
  v38 = v46;
  *(&v45 - 2) = v46;
  sub_2195E6068(sub_218A267A4, (&v45 - 4), v23);
  if (*(v39 + 16))
  {
    v40 = *(v38 + 5);
    v41 = v39;
    v42 = v48;

    sub_218E98AD4(v41, v40, v47, v42);
  }

  else
  {

    sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    v44 = v45;
    (*(*(v43 - 8) + 56))(v45, 1, 1, v43);
    v47(v44);
    sub_218A26744(v44, sub_218A25F90);
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
}

void sub_218A23BE8(unint64_t a1, char a2, void (*a3)(char *), uint64_t a4)
{
  sub_218A25EF0(0);
  v45 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25F90(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25E40(0);
  MEMORY[0x28223BE20](v15 - 8);
  v44 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2634C(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  if (a2)
  {
    goto LABEL_17;
  }

  if (a1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_4;
    }

LABEL_17:
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v33 = sub_219BF6F44();
    v34 = sub_219BF6214();
    sub_219BE5314("Failed to fetch recommended channels for manage notifications section", 69, 2, &dword_2186C1000, v33, v34, MEMORY[0x277D84F90]);

    (*(v19 + 56))(v14, 1, 1, v18);
    a3(v14);
    sub_218A26744(v14, sub_218A25F90);
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_17;
  }

LABEL_4:
  sub_218BDEB88(0, 1, a1);

  v47[0] = sub_219758FD4(v23, v22);
  sub_218A24FC0(v47);
  v43 = v21;

  v46 = v47[0];
  if ((v47[0] & 0x8000000000000000) == 0 && (v47[0] & 0x4000000000000000) == 0)
  {
    v24 = *(v47[0] + 16);
    if (v24)
    {
      goto LABEL_7;
    }

LABEL_19:

    v28 = v45;
LABEL_20:
    sub_2197EBFB8(v47);
    v49 = 2;
    v35 = sub_218A25F4C(&qword_27CC0C8C8, MEMORY[0x277D6D408]);
    v36 = sub_218A25F4C(&qword_27CC0C8D0, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v28, v35, v36);
    sub_21878D8D8();
    sub_21878D92C();
    v37 = v43;
    sub_219BE6924();
    sub_219BE6984();

    (*(v19 + 16))(v14, v37, v18);
    (*(v19 + 56))(v14, 0, 1, v18);
    a3(v14);
    sub_218A26744(v14, sub_218A25F90);
    (*(v19 + 8))(v37, v18);
    return;
  }

  v24 = sub_219BF7214();
  if (!v24)
  {
    goto LABEL_19;
  }

LABEL_7:
  v38 = v19;
  v39 = v18;
  v40 = v14;
  v41 = a4;
  v42 = a3;
  v50 = MEMORY[0x277D84F90];
  sub_218C349A8(0, v24 & ~(v24 >> 63), 0);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = v50;
    v28 = v45;
    v27 = v46;
    v29 = v46 & 0xC000000000000001;
    do
    {
      if (v29)
      {
        v30 = MEMORY[0x21CECE0F0](v25, v27);
      }

      else
      {
      }

      v47[0] = v30;
      v48 = 0;
      sub_21878D92C();
      sub_219BE5FB4();
      v50 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_218C349A8((v31 > 1), v32 + 1, 1);
        v28 = v45;
        v26 = v50;
      }

      ++v25;
      *(v26 + 16) = v32 + 1;
      (*(v9 + 32))(v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v32, v11, v28);
      v27 = v46;
    }

    while (v24 != v25);

    a3 = v42;
    v14 = v40;
    v18 = v39;
    v19 = v38;
    goto LABEL_20;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_218A241B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(*(a5 + 104) + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController);

  v10 = [v9 appleNewsNotificationChannelIDs];
  if (v10)
  {
    v11 = v10;
    v12 = sub_219BF5924();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(a5 + 40);

  sub_218E9905C(v12, v13, sub_218846958, v8);
}

void sub_218A24298(unint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4)
{
  sub_218A25EF0(0);
  v30 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    goto LABEL_16;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_16:
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v24 = sub_219BF6F44();
    v25 = sub_219BF6214();
    v26 = MEMORY[0x277D84F90];
    sub_219BE5314("Failed to fetch channels for alerts from Apple news section", 59, 2, &dword_2186C1000, v24, v25, MEMORY[0x277D84F90]);

    a3(v26);
    return;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_16;
  }

LABEL_4:
  v12 = sub_218BDEB88(0, 1, a1);
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_18:

    a3(MEMORY[0x277D84F90]);
LABEL_19:

    return;
  }

  v27 = v12;
  v13 = sub_219BF7214();
  v12 = v27;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_6:
  v14 = v12;
  v28[1] = a4;
  v29 = a3;
  v34 = MEMORY[0x277D84F90];
  sub_218C349A8(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = v34;
    v17 = v14;
    v31 = v14 & 0xC000000000000001;
    v18 = v30;
    v19 = v14;
    v20 = v13;
    do
    {
      if (v31)
      {
        v21 = MEMORY[0x21CECE0F0](v15, v17);
      }

      else
      {
      }

      v32[0] = v21;
      v33 = 0;
      sub_21878D92C();
      sub_219BE5FB4();
      v34 = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_218C349A8((v22 > 1), v23 + 1, 1);
        v18 = v30;
        v16 = v34;
      }

      ++v15;
      *(v16 + 16) = v23 + 1;
      (*(v9 + 32))(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, v11, v18);
      v17 = v19;
    }

    while (v20 != v15);

    v29(v16);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_218A2458C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_218A23230();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    sub_2186DEF40(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09BA0;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    sub_218A26290(a5, v24);
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    v17 = v24[11];
    *(v16 + 192) = v24[10];
    *(v16 + 208) = v17;
    *(v16 + 224) = v24[12];
    v18 = v24[7];
    *(v16 + 128) = v24[6];
    *(v16 + 144) = v18;
    v19 = v24[9];
    *(v16 + 160) = v24[8];
    *(v16 + 176) = v19;
    v20 = v24[3];
    *(v16 + 64) = v24[2];
    *(v16 + 80) = v20;
    v21 = v24[5];
    *(v16 + 96) = v24[4];
    *(v16 + 112) = v21;
    v22 = v24[1];
    *(v16 + 32) = v24[0];
    *(v16 + 48) = v22;

    sub_218E94884(v15, sub_218A26870, v16);
  }

  else
  {
    sub_218A25EF0(0);
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
    a1(v10);
    sub_218A26744(v10, sub_218A2625C);
  }
}

uint64_t sub_218A2478C(unint64_t a1, char a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5)
{
  sub_218A2625C(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a2)
  {
    goto LABEL_12;
  }

  if (a1 >> 62)
  {
    result = sub_219BF7214();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_12:
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v23 = sub_219BF6F44();
    v24 = sub_219BF6214();
    sub_219BE5314("Failed to fetch channels for alerts from Apple news section", 59, 2, &dword_2186C1000, v23, v24, MEMORY[0x277D84F90]);

    sub_218A25EF0(0);
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
    a3(v12);
    return sub_218A26744(v12, sub_218A2625C);
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x21CECE0F0](0, a1, v10);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = *(a1 + 32);
  }

  if ([*(a5 + 64) puzzleNotificationsEnabled])
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = [*(v14 + 16) displayName];
  v17 = sub_219BF5414();
  v19 = v18;

  v20 = *(v14 + 16);
  v29[3] = &type metadata for NotificationsPuzzlesRowModel;
  v29[4] = &off_282A5B9F8;
  v21 = swift_allocObject();
  v29[0] = v21;
  *(v21 + 16) = v17;
  *(v21 + 24) = v19;
  *(v21 + 32) = 1;
  *(v21 + 40) = v20;
  *(v21 + 48) = 0;
  *(v21 + 56) = 3;
  *(v21 + 64) = 1;
  *(v21 + 72) = v15;
  *(v21 + 73) = 1;
  sub_218718690(v29, v28);
  v28[40] = 1;
  sub_218A26508(v28, v27);
  sub_21878D92C();
  swift_unknownObjectRetain();
  sub_219BE5FB4();
  sub_218A25EF0(0);
  (*(*(v22 - 8) + 56))(v12, 0, 1, v22);
  a3(v12);

  sub_218A26744(v12, sub_218A2625C);
  sub_218A26564(v28);
  return __swift_destroy_boxed_opaque_existential_1(v29);
}

double sub_218A24AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2186DEF40(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  *(v12 + 32) = a6;
  *(v12 + 40) = a7;
  sub_218A26290(a5, v21);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = v21[11];
  *(v13 + 192) = v21[10];
  *(v13 + 208) = v14;
  *(v13 + 224) = v21[12];
  v15 = v21[7];
  *(v13 + 128) = v21[6];
  *(v13 + 144) = v15;
  v16 = v21[9];
  *(v13 + 160) = v21[8];
  *(v13 + 176) = v16;
  v17 = v21[3];
  *(v13 + 64) = v21[2];
  *(v13 + 80) = v17;
  v18 = v21[5];
  *(v13 + 96) = v21[4];
  *(v13 + 112) = v18;
  v19 = v21[1];
  *(v13 + 32) = v21[0];
  *(v13 + 48) = v19;

  sub_218E94884(v12, sub_218A265DC, v13);

  return result;
}

uint64_t sub_218A24BEC(unint64_t a1, char a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5)
{
  sub_218A2625C(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    goto LABEL_12;
  }

  if (a1 >> 62)
  {
    result = sub_219BF7214();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_12:
    if (qword_280EE5F70 != -1)
    {
      swift_once();
    }

    v24 = sub_219BE5434();
    __swift_project_value_buffer(v24, qword_280F625C8);
    v25 = sub_219BE5414();
    v26 = sub_219BF61F4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2186C1000, v25, v26, "Failed to fetch channels for sports alerts from Apple news section", v27, 2u);
      MEMORY[0x21CECF960](v27, -1, -1);
    }

    sub_218A25EF0(0);
    (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
    a3(v12);
    return sub_218A26744(v12, sub_218A2625C);
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x21CECE0F0](0, a1, v10);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v14 = *(a1 + 32);
  }

  if ([*(a5 + 64) sportsTopicNotificationsEnabledState] == 3)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = [*(v14 + 16) displayName];
  v17 = sub_219BF5414();
  v19 = v18;

  v20 = *(v14 + 16);
  *&v33 = v17;
  *(&v33 + 1) = v19;
  LOBYTE(v34) = 6;
  *(&v34 + 1) = v20;
  *v35 = 0;
  v35[8] = 3;
  *&v35[16] = 0;
  v35[24] = v15;
  v35[25] = 1;
  v31[3] = &type metadata for NotificationsSportsRowModel;
  v31[4] = &off_282A5BA28;
  v21 = swift_allocObject();
  v31[0] = v21;
  v22 = v34;
  v21[1] = v33;
  v21[2] = v22;
  v21[3] = *v35;
  *(v21 + 58) = *&v35[10];
  v32 = 1;
  sub_218A26508(v31, v30);
  swift_unknownObjectRetain();
  sub_218A265EC(&v33, v29);
  sub_21878D92C();
  sub_219BE5FB4();
  sub_218A25EF0(0);
  (*(*(v23 - 8) + 56))(v12, 0, 1, v23);
  a3(v12);

  sub_218A26648(&v33);
  sub_218A26744(v12, sub_218A2625C);
  return sub_218A26564(v31);
}

uint64_t sub_218A24F84(uint64_t a1)
{
  v2 = sub_218A268A0();

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_218A24FC0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_218A2503C(v6);
  return sub_219BF73E4();
}

void sub_218A2503C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
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
        type metadata accessor for FollowingTagModel();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_218A25228(v8, v9, a1, v4);
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
    sub_218A25140(0, v2, 1, a1);
  }
}

void sub_218A25140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *(v8 + 24);
      v12 = *(*v10 + 24);

      LOBYTE(v12) = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v11, v12);

      if ((v12 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v13 = *v10;
      v8 = v10[1];
      *v10 = v8;
      v10[1] = v13;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_218A25228(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v100 = v7;
    v7 = v10;
    v10 = *v100;
    if (!*v100)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v7 = sub_218C81048(v7);
    }

    v101 = *(v7 + 2);
    if (v101 >= 2)
    {
      do
      {
        v102 = *v6;
        if (!*v6)
        {
          goto LABEL_124;
        }

        v6 = (v101 - 1);
        v103 = *&v7[16 * v101];
        v104 = *&v7[16 * v101 + 24];
        sub_218A259F0((v102 + 8 * v103), (v102 + 8 * *&v7[16 * v101 + 16]), (v102 + 8 * v104), v10);
        if (v5)
        {
          break;
        }

        if (v104 < v103)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_218C81048(v7);
        }

        if (v101 - 2 >= *(v7 + 2))
        {
          goto LABEL_114;
        }

        v105 = &v7[16 * v101];
        *v105 = v103;
        *(v105 + 1) = v104;
        sub_218C80FBC(v101 - 1);
        v101 = *(v7 + 2);
        v6 = a3;
      }

      while (v101 > 1);
    }

LABEL_98:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    v112 = v9;
    if (v9 + 1 < v8)
    {
      v108 = v10;
      v110 = v5;
      v13 = *v6;
      v14 = *(*v6 + 8 * v12);
      v15 = 8 * v11;
      v16 = (v13 + 8 * v11);
      v18 = *v16;
      v17 = v16 + 2;
      v19 = *(v14 + 24);
      v20 = v11;
      v21 = *(v18 + 24);

      v22 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v19, v21);

      v23 = v20 + 2;
      while (v8 != v23)
      {
        v24 = *(*v17 + 24);
        v25 = *(*(v17 - 1) + 24);

        v26 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v24, v25);

        ++v23;
        ++v17;
        if (v22 != v26)
        {
          v8 = v23 - 1;
          break;
        }
      }

      v10 = v108;
      v5 = v110;
      v6 = a3;
      if (v22)
      {
        v11 = v112;
        v7 = a1;
        if (v8 < v112)
        {
          goto LABEL_117;
        }

        if (v112 < v8)
        {
          v27 = 8 * v8 - 8;
          v28 = v8;
          v29 = v112;
          do
          {
            if (v29 != --v28)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v30 = *(v31 + v15);
              *(v31 + v15) = *(v31 + v27);
              *(v31 + v27) = v30;
            }

            ++v29;
            v27 -= 8;
            v15 += 8;
          }

          while (v29 < v28);
        }

        v12 = v8;
      }

      else
      {
        v12 = v8;
        v7 = a1;
        v11 = v112;
      }
    }

    v32 = v6[1];
    if (v12 < v32)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_116;
      }

      if (v12 - v11 < a4)
      {
        v33 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_118;
        }

        if (v33 >= v32)
        {
          v33 = v6[1];
        }

        if (v33 < v11)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v12 != v33)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v12 < v11)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2191F6B60(0, *(v10 + 2) + 1, 1, v10);
    }

    v54 = *(v10 + 2);
    v53 = *(v10 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v10 = sub_2191F6B60((v53 > 1), v54 + 1, 1, v10);
    }

    *(v10 + 2) = v55;
    v56 = &v10[16 * v54];
    *(v56 + 4) = v112;
    *(v56 + 5) = v12;
    v57 = *v7;
    if (!*v7)
    {
      goto LABEL_125;
    }

    v118 = v12;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v10 + 4);
          v60 = *(v10 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_104;
          }

          v75 = &v10[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_107;
          }

          v81 = &v10[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_111;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v10[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_106;
        }

        v88 = &v10[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_109;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v97 = *&v10[16 * v96 + 32];
        v98 = *&v10[16 * v58 + 40];
        sub_218A259F0((*v6 + 8 * v97), (*v6 + 8 * *&v10[16 * v58 + 32]), (*v6 + 8 * v98), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v98 < v97)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_218C81048(v10);
        }

        if (v96 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v99 = &v10[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        sub_218C80FBC(v58);
        v55 = *(v10 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v10[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_102;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_103;
      }

      v70 = &v10[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_105;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_108;
      }

      if (v74 >= v66)
      {
        v92 = &v10[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_112;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = v6[1];
    v9 = v118;
    if (v118 >= v8)
    {
      goto LABEL_88;
    }
  }

  v109 = v10;
  v111 = v5;
  v119 = *v6;
  v34 = (*v6 + 8 * v12 - 8);
  v35 = v11 - v12;
  v114 = v33;
LABEL_30:
  v116 = v34;
  v117 = v12;
  v36 = *(v119 + 8 * v12);
  v115 = v35;
  while (1)
  {
    v37 = *(*v34 + 24);
    v38 = *(*(v36 + 24) + 16);

    v39 = [v38 name];
    sub_219BF5414();

    sub_219BF54D4();

    v40 = [v38 identifier];
    v41 = sub_219BF5414();
    v43 = v42;

    MEMORY[0x21CECC330](v41, v43);

    v44 = *(v37 + 16);
    v45 = [v44 name];
    sub_219BF5414();

    sub_219BF54D4();

    v46 = [v44 identifier];
    v47 = sub_219BF5414();
    v49 = v48;

    MEMORY[0x21CECC330](v47, v49);

    sub_2187F3BD4();
    v50 = sub_219BF7054();

    if (v50 != -1)
    {
LABEL_29:
      v12 = v117 + 1;
      v34 = v116 + 1;
      v35 = v115 - 1;
      if (v117 + 1 != v114)
      {
        goto LABEL_30;
      }

      v12 = v114;
      v10 = v109;
      v5 = v111;
      v11 = v112;
      v6 = a3;
      v7 = a1;
      goto LABEL_37;
    }

    if (!v119)
    {
      break;
    }

    v51 = *v34;
    v36 = v34[1];
    *v34 = v36;
    v34[1] = v51;
    --v34;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_218A259F0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
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
    v20 = __src;
    if (a4 != __src || &__src[8 * v12] <= a4)
    {
      memmove(a4, __src, 8 * v12);
    }

    v14 = &v4[8 * v12];
    if (v10 >= 8 && v20 > v6)
    {
      v31 = v4;
LABEL_27:
      v30 = v20;
      v21 = v20 - 8;
      v5 -= 8;
      v22 = v14;
      do
      {
        v23 = v5 + 8;
        v24 = *(v22 - 1);
        v22 -= 8;
        v25 = v21;
        v26 = *(v24 + 24);
        v27 = *(*v21 + 24);

        LOBYTE(v27) = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v26, v27);

        if (v27)
        {
          v28 = v25;
          if (v23 != v30)
          {
            *v5 = *v25;
          }

          v4 = v31;
          if (v14 <= v31 || (v20 = v28, v28 <= v6))
          {
            v20 = v28;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v23 != v14)
        {
          *v5 = *v22;
        }

        v5 -= 8;
        v14 = v22;
        v21 = v25;
      }

      while (v22 > v31);
      v14 = v22;
      v20 = v30;
      v4 = v31;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 >= 8 && __src < v5)
    {
      v15 = __src;
      while (1)
      {
        v16 = *(*v15 + 24);
        v17 = *(*v4 + 24);

        LOBYTE(v17) = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v16, v17);

        if ((v17 & 1) == 0)
        {
          break;
        }

        v18 = v15;
        v19 = v6 == v15;
        v15 += 8;
        if (!v19)
        {
          goto LABEL_17;
        }

LABEL_18:
        v6 += 8;
        if (v4 >= v14 || v15 >= v5)
        {
          goto LABEL_20;
        }
      }

      v18 = v4;
      v19 = v6 == v4;
      v4 += 8;
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v6 = *v18;
      goto LABEL_18;
    }

LABEL_20:
    v20 = v6;
  }

LABEL_38:
  if (v20 != v4 || v20 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v20, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_218A25D14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218A25D5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_218A25DE4()
{
  result = qword_27CC0C8B0;
  if (!qword_27CC0C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C8B0);
  }

  return result;
}

void sub_218A25E40(uint64_t a1)
{
  if (!qword_27CC0C8B8)
  {
    sub_218A25EF0(255);
    sub_218A25F4C(&qword_27CC0C8C8, MEMORY[0x277D6D408]);
    sub_218A25F4C(&qword_27CC0C8D0, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C8B8);
    }
  }
}

void sub_218A25EF0(uint64_t a1)
{
  if (!qword_27CC0C8C0)
  {
    sub_21878D92C();
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C8C0);
    }
  }
}

uint64_t sub_218A25F4C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_218A25EF0(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218A25F90(uint64_t a1)
{
  if (!qword_27CC0C8D8)
  {
    sub_218A2634C(255, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C8D8);
    }
  }
}

void sub_218A26004(uint64_t a1)
{
  if (!qword_27CC0C8E8)
  {
    sub_218A2634C(255, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    sub_218A260D0(&qword_27CC0C8F0, MEMORY[0x277D6D720]);
    sub_218A260D0(&qword_27CC0C8F8, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C8E8);
    }
  }
}

uint64_t sub_218A260D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_218A2634C(255, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218A26130()
{
  result = qword_27CC0C908;
  if (!qword_27CC0C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C908);
  }

  return result;
}

void sub_218A261A0(uint64_t a1)
{
  if (!qword_27CC0C910)
  {
    sub_218A26228(255);
    sub_218A2625C(255);
    sub_218A25F90(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC0C910);
    }
  }
}

uint64_t sub_218A262D4(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_218A261A0(0);
  return v3(v4, &a1[v5[12]], &a1[v5[16]], &a1[v5[20]]);
}

void sub_218A2634C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingNotificationsDescriptor;
    v8[1] = &type metadata for FollowingNotificationsModel;
    v8[2] = sub_21878D8D8();
    v8[3] = sub_21878D92C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218A263D0(uint64_t a1)
{
  if (!qword_27CC0C930)
  {
    sub_218A2634C(255, &qword_27CC0C900, MEMORY[0x277D6EC60]);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0C930);
    }
  }
}

uint64_t sub_218A26460(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_218A264C8(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        swift_unknownObjectRelease();
      }

      return result;
    }

LABEL_8:

    return result;
  }

  if (!a3)
  {

    return result;
  }

  if (a3 == 1)
  {
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_218A266E0()
{
  result = qword_280EAFB10;
  if (!qword_280EAFB10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EAFB10);
  }

  return result;
}

uint64_t sub_218A26744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_17Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1((v0 + 200));

  return swift_deallocObject();
}

unint64_t sub_218A268A0()
{
  result = qword_27CC0C950;
  if (!qword_27CC0C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C950);
  }

  return result;
}

uint64_t sub_218A268F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v4 = type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer(0);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v36 - v7;
  v42 = sub_219BF00D4();
  v8 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header(0);
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v17 = sub_219BE9834();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2702C(0);
  sub_219BE8184();
  v21 = v44;
  v43 = v45;
  sub_219BE95F4();
  v22 = (*(v18 + 88))(v20, v17);
  if (v22 == *MEMORY[0x277D6E758])
  {
    v23 = sub_219BE9604();
    if ((v23 & 0x8000000000000000) == 0)
    {
      if (v23 < *(v21 + 16))
      {
        sub_218A270E4(v21 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v23, v16, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header);
        sub_218A270E4(v16, v13, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header);
        v24 = v42;
        (*(v8 + 32))(v10, v13, v42);
        __swift_project_boxed_opaque_existential_1((v40 + 16), *(v40 + 40));
        v25 = sub_219BF0234();

        (*(v8 + 8))(v10, v24);
        v26 = v16;
        v27 = type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Header;
LABEL_10:
        sub_218A2714C(v26, v27);
        return v25;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v22 == *MEMORY[0x277D6E750])
  {
    v28 = sub_219BE9604();
    v29 = *(v21 + 16);
    v30 = __OFSUB__(v28, v29);
    v31 = v28 - v29;
    if (!v30)
    {
      if ((v31 & 0x8000000000000000) == 0)
      {
        if (v31 < *(v43 + 16))
        {
          v32 = v38;
          sub_218A270E4(v43 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v31, v38, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer);
          v33 = v37;
          sub_218A270E4(v32, v37, type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer);
          v34 = v42;
          (*(v8 + 32))(v10, v33, v42);
          __swift_project_boxed_opaque_existential_1((v40 + 16), *(v40 + 40));
          v25 = sub_219BF0234();

          (*(v8 + 8))(v10, v34);
          v26 = v32;
          v27 = type metadata accessor for SportsFavoritesLayoutSectionDescriptor.Footer;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

unint64_t sub_218A26E88()
{
  result = qword_27CC0F710;
  if (!qword_27CC0F710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0F710);
  }

  return result;
}

uint64_t sub_218A26F6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218A2702C(uint64_t a1)
{
  if (!qword_27CC0C968)
  {
    type metadata accessor for SportsFavoritesLayoutModel(255);
    sub_218A26E88();
    sub_218A26F6C(&qword_27CC0C960, type metadata accessor for SportsFavoritesLayoutModel, &unk_219C85F2C);
    v1 = sub_219BE81B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C968);
    }
  }
}

uint64_t sub_218A270E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A2714C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218A271BC()
{
  sub_2186CF94C(0);
  sub_2189B4DD4();
  return sub_219BEB484();
}

uint64_t sub_218A27224()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double sub_218A27274(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_219BDD804();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a3;
  v10 = swift_allocObject();
  sub_218A27458(0, v11);
  *v9 = a1;
  v9[1] = a2;
  swift_bridgeObjectRetain_n();

  sub_219BDDBE4();
  (*(v7 + 104))(v9, *MEMORY[0x277D2FB08], v6);
  sub_219BDE674();
  swift_allocObject();
  *(v10 + 16) = sub_219BDE614();
  v14 = v10 | 0x7000000000000004;
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB484();
  sub_218932F9C(v14);

  return result;
}

void sub_218A27458(uint64_t a1, __n128 a2)
{
  if (!qword_27CC11390)
  {
    sub_219BDDBF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11390);
    }
  }
}

void sub_218A274C4(uint64_t a1@<X0>, char *a3@<X8>)
{
  v5 = v3[1];
  v6 = *(v5 + 16);
  v61 = *v3;
  swift_unknownObjectRetain();
  v70 = v6;
  if (v6)
  {
    v7 = 0;
    v68 = v5 + 32;
    v8 = a1 + 56;
    v65 = MEMORY[0x277D84F90];
    v66 = v5;
    while (1)
    {
      while (1)
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v9 = v68 + 24 * v7;
        v10 = *v9;
        v11 = *(v9 + 8);
        v12 = *(v9 + 16);
        ++v7;
        swift_unknownObjectRetain();

        v13 = [v10 sourceChannelID];
        if (v13)
        {
          break;
        }

LABEL_16:
        v24 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_218C34A08(0, *(v65 + 16) + 1, 1);
          v24 = v65;
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        v27 = v24;
        if (v26 >= v25 >> 1)
        {
          sub_218C34A08((v25 > 1), v26 + 1, 1);
          v27 = v65;
        }

        *(v27 + 16) = v26 + 1;
        v65 = v27;
        v28 = (v27 + 24 * v26);
        v28[4] = v10;
        v28[5] = v11;
        v28[6] = v12;
        if (v7 == v70)
        {
          goto LABEL_23;
        }
      }

      v14 = v13;
      v15 = sub_219BF5414();
      v17 = v16;

      if (!*(a1 + 16) || (sub_219BF7AA4(), sub_219BF5524(), v18 = sub_219BF7AE4(), v19 = -1 << *(a1 + 32), v20 = v18 & ~v19, ((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0))
      {
LABEL_15:

        v5 = v66;
        goto LABEL_16;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = (*(a1 + 48) + 16 * v20);
        v23 = *v22 == v15 && v22[1] == v17;
        if (v23 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v8 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      swift_unknownObjectRelease();

      v5 = v66;
      if (v7 == v70)
      {
        goto LABEL_23;
      }
    }
  }

  v65 = MEMORY[0x277D84F90];
LABEL_23:
  v29 = *(v63 + 16);
  v71 = *(v29 + 16);
  if (v71)
  {
    v30 = 0;
    v67 = v29 + 32;
    v31 = a1 + 56;
    v64 = MEMORY[0x277D84F90];
    v69 = *(v63 + 16);
    while (v30 < *(v29 + 16))
    {
      v32 = v67 + 24 * v30;
      v33 = *(v32 + 8);
      v34 = *(v32 + 16);
      ++v30;
      v35 = *v32;

      v36 = [objc_msgSend(v35 sourceChannel)];
      swift_unknownObjectRelease();
      v37 = sub_219BF5414();
      v39 = v38;

      if (*(a1 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v40 = sub_219BF7AE4(), v41 = -1 << *(a1 + 32), v42 = v40 & ~v41, ((*(v31 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = (*(a1 + 48) + 16 * v42);
          v45 = *v44 == v37 && v44[1] == v39;
          if (v45 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v31 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_37:

        v46 = v64;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_218C349E8(0, *(v64 + 16) + 1, 1);
          v46 = v64;
        }

        v48 = *(v46 + 16);
        v47 = *(v46 + 24);
        v49 = v46;
        if (v48 >= v47 >> 1)
        {
          sub_218C349E8((v47 > 1), v48 + 1, 1);
          v49 = v64;
        }

        *(v49 + 16) = v48 + 1;
        v64 = v49;
        v50 = (v49 + 24 * v48);
        v50[4] = v35;
        v50[5] = v33;
        v50[6] = v34;
      }

      v29 = v69;
      if (v30 == v71)
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    __break(1u);
  }

  else
  {
    v64 = MEMORY[0x277D84F90];
LABEL_43:
    v51 = type metadata accessor for TagFeedCuration(0);
    v52 = v51[7];
    sub_218A27A84(0);
    (*(*(v53 - 8) + 16))(&a3[v52], v63 + v52, v53);
    sub_218A27B78(v63 + v51[8], &a3[v51[8]], type metadata accessor for CuratedTagFeedGroupKnobs);
    sub_218A27B78(v63 + v51[9], &a3[v51[9]], type metadata accessor for TagFeedCurationHeader);
    v54 = v51[11];
    v55 = *(v63 + v51[10]);
    v56 = sub_219BF1934();
    (*(*(v56 - 8) + 16))(&a3[v54], v63 + v54, v56);
    v57 = (v63 + v51[12]);
    *a3 = v61;
    *(a3 + 1) = v65;
    *(a3 + 2) = v64;
    a3[v51[10]] = v55;
    v59 = *v57;
    v58 = v57[1];
    v60 = &a3[v51[12]];
    *v60 = v59;
    *(v60 + 1) = v58;
  }
}

void sub_218A27A84(uint64_t a1)
{
  if (!qword_280E92490)
  {
    type metadata accessor for CuratedTagFeedGroupConfigData(255);
    sub_218A27B34(&unk_280EB1020, &unk_219C3C7F0);
    sub_218A27B34(&qword_280EB1030, &unk_219C3C7C8);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92490);
    }
  }
}

uint64_t sub_218A27B34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CuratedTagFeedGroupConfigData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218A27B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A27C28(uint64_t a1)
{
  result = type metadata accessor for TagFeedCuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_218A27CC4(uint64_t a1)
{
  sub_2186D8870();
  if (v1 <= 0x3F)
  {
    sub_2187B2E78(319, &qword_280E8F0F8, &type metadata for TagFeedCurationHeadline);
    if (v2 <= 0x3F)
    {
      sub_2187B2E78(319, &unk_280E8F180, &type metadata for TagFeedCurationRecipe);
      if (v3 <= 0x3F)
      {
        sub_218A27A84(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CuratedTagFeedGroupKnobs(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for TagFeedCurationHeader(319);
            if (v6 <= 0x3F)
            {
              sub_219BF1934();
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

uint64_t sub_218A27E3C(uint64_t a1)
{
  v2 = sub_218A28044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218A27E78(uint64_t a1)
{
  v2 = sub_218A28044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218A27EDC(void *a1)
{
  sub_218A27FE8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218A28044();
  sub_219BF7B44();
  return (*(v4 + 8))(v6, v3);
}

void sub_218A27FE8(uint64_t a1)
{
  if (!qword_27CC0C970)
  {
    sub_218A28044();
    v1 = sub_219BF7864();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0C970);
    }
  }
}

unint64_t sub_218A28044()
{
  result = qword_27CC0C978;
  if (!qword_27CC0C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C978);
  }

  return result;
}

unint64_t sub_218A280AC()
{
  result = qword_27CC0C980;
  if (!qword_27CC0C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C980);
  }

  return result;
}

unint64_t sub_218A28104()
{
  result = qword_27CC0C988;
  if (!qword_27CC0C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C988);
  }

  return result;
}

uint64_t sub_218A2815C(uint64_t a1, uint64_t a2)
{
  v4 = sub_218A28314(&qword_27CC0C998, &unk_219C1340C);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t type metadata accessor for WebEmbedModel(uint64_t a1)
{
  result = qword_280EDCEA8;
  if (!qword_280EDCEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218A28314(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WebEmbedModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218A28380(uint64_t a1)
{
  sub_219BDB954();
  if (v1 <= 0x3F)
  {
    sub_2186E5370(319, &qword_280EE7018, sub_21873F65C, MEMORY[0x277D6CF30]);
    if (v2 <= 0x3F)
    {
      sub_21873F65C(319);
      if (v3 <= 0x3F)
      {
        sub_2186E5370(319, &qword_27CC0C9A8, type metadata accessor for HeadlineModel, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_2186E5370(319, &qword_27CC20280, MEMORY[0x277D34048], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2186E3374();
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

uint64_t sub_218A2850C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_218A28578(uint64_t a1)
{
  v55 = a1;
  v58 = sub_219BEDF04();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v50 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BEF564();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 64) aggregateStore];
  v9 = *(v1 + 16);
  v10 = [objc_msgSend(v9 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  v52 = v8;
  v11 = [v8 baselineAggregateWithConfigurableValues_];
  v51 = v10;
  v12 = [v10 defaultScoringConfig];
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = v12;
  [v12 decayFactor];
  v15 = v14;

  [v11 personalizationValueWithBaseline:0 decayRate:v15];
  v17 = v16;
  swift_unknownObjectRelease();
  v18 = [objc_msgSend(v9 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  [v18 minimumMyMagazinesIssueScoreBaselineMultiplier];
  v20 = v19;

  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  (*(v4 + 104))(v7, *MEMORY[0x277D32660], v3);
  v21 = sub_219BF0014();
  (*(v4 + 8))(v7, v3);
  v55 = *(v21 + 16);
  if (!v55)
  {
    v25 = MEMORY[0x277D84F98];
LABEL_25:

    return v25;
  }

  v22 = 0;
  v23 = v17 * v20;
  v54 = v21 + ((*(v56 + 80) + 32) & ~*(v56 + 80));
  v53 = v56 + 16;
  v24 = (v56 + 8);
  v25 = MEMORY[0x277D84F98];
  while (v22 < *(v21 + 16))
  {
    (*(v56 + 16))(v57, v54 + *(v56 + 72) * v22, v58);
    v28 = sub_219BEDEC4();
    v30 = v29;
    sub_219BEDEF4();
    v32 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v25;
    v35 = sub_21870F700(v28, v30);
    v36 = v25[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_27;
    }

    v39 = v34;
    if (v25[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v42 = v23 < v32;
        if (v34)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_219490ED8();
        v42 = v23 < v32;
        if (v39)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_21947F018(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_21870F700(v28, v30);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_30;
      }

      v35 = v40;
      v42 = v23 < v32;
      if (v39)
      {
LABEL_4:
        v26 = v42;

        v27 = v58;
        v25 = v59;
        *(v59[7] + v35) = v26;
        (*v24)(v57, v27);
        goto LABEL_8;
      }
    }

    v43 = v42;
    v44 = v58;
    v25 = v59;
    v59[(v35 >> 6) + 8] |= 1 << v35;
    v45 = (v25[6] + 16 * v35);
    *v45 = v28;
    v45[1] = v30;
    *(v25[7] + v35) = v43;
    (*v24)(v57, v44);
    v46 = v25[2];
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_28;
    }

    v25[2] = v48;
LABEL_8:
    if (v55 == ++v22)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

void sub_218A28A88(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v112 = a4;
  v110 = a3;
  v12 = sub_219BE8164();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = v17;
  v116 = v16;
  (*(*&v17 + 16))(v15, a5, v13);
  sub_219BE8004();
  v19 = v18;
  sub_219BE8014();
  sub_219BF6034();
  v21 = v19 - v20;
  v22 = sub_219BE8034();
  v23 = [v22 preferredContentSizeCategory];

  v113 = sub_219BF6924();
  v24 = *(*__swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40)) + 16);
  v25 = [objc_opt_self() systemFontOfSize:16.0 weight:*MEMORY[0x277D74418]];
  v26 = [v24 scaledFontForFont:v25 maximumPointSize:48.0];

  *&v139 = 0;
  *(&v139 + 1) = 0xE000000000000000;
  sub_219BF7314();
  sub_219BE8014();
  v27 = sub_219BF5CA4();
  v29 = v28;

  *&v139 = v27;
  *(&v139 + 1) = v29;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v30 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v30);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  [v26 pointSize];
  v31 = sub_219BF5CA4();
  MEMORY[0x21CECC330](v31);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  MEMORY[0x21CECC330](a1, a2);
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  v32 = sub_219BE8034();
  [v32 horizontalSizeClass];

  v33 = sub_219BF6A04();
  MEMORY[0x21CECC330](v33);

  v34 = v139;
  v114 = v7;

  sub_219BE2DD4();

  v147 = v137;
  v148[0] = v138[0];
  *(v148 + 9) = *(v138 + 9);
  v143 = v133;
  v144 = v134;
  v145 = v135;
  v146 = v136;
  v139 = v129;
  v140 = v130;
  v141 = v131;
  v142 = v132;
  if (sub_218A29390(&v139) == 1)
  {
    v104 = *(&v34 + 1);
    v106 = v34;
    sub_219BF54E4();
    sub_21899E550(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_219C09BA0;
    v36 = *MEMORY[0x277D740A8];
    *(v35 + 32) = *MEMORY[0x277D740A8];
    *(v35 + 64) = sub_218A293AC();
    *(v35 + 40) = v26;
    v37 = v36;
    v105 = v26;
    sub_2188195F4(v35);
    swift_setDeallocating();
    sub_21899E5A8(v35 + 32);
    swift_deallocClassInstance();
    v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v39 = sub_219BF53D4();

    type metadata accessor for Key(0);
    sub_21899E604();
    v40 = sub_219BF5204();

    v41 = [v38 initWithString:v39 attributes:v40];

    sub_219BF67A4();
    v43 = (v42 + 15.0 + 15.0) * 0.5;
    v103 = v42;
    v111 = v43 - v42 * 0.5;
    if (v112)
    {
      v44 = v112;
      [v44 size];
      v46 = ceil(v45);
      [v44 size];
      v48 = v47;
      if (v110 == 0.0)
      {
        v53 = 0;
        v51 = 0.0;
        v55 = 0.0;
        v57 = 0.0;
      }

      else
      {
        v49 = *&v110;
        [v49 size];
        v51 = v43 + v50 * -0.5 + 2.0;
        sub_219BE7FF4();
        v53 = v52;
        [v49 size];
        v55 = v54;
        [v49 size];
        v57 = v56;
      }

      v84 = v115;
      v83 = v116;
      v112 = v53;
      v109 = v55;
      v110 = v51;
      v108 = v57;
      if (v46 <= 0.0)
      {
        *&v151.origin.x = v53;
        v151.origin.y = v51;
        v151.size.width = v55;
        v151.size.height = v57;
        MaxX = CGRectGetMaxX(v151);

        v80 = MaxX + 10.0;
        v81 = 0.0;
        v101 = 0.0;
        v102 = 0.0;
        v107 = 0.0;
        v82 = v21;
      }

      else
      {
        v101 = ceil(v48);
        v102 = v43 + v101 * -0.5;
        *&v149.origin.x = v53;
        v149.origin.y = v51;
        v149.size.width = v55;
        v85 = v57;
        v149.size.height = v57;
        v80 = CGRectGetMaxX(v149) + 10.0;
        v107 = v46;
        v86 = v21 - v46;
        *&v150.origin.x = v53;
        v150.origin.y = v51;
        v150.size.width = v55;
        v150.size.height = v85;
        v82 = v86 - CGRectGetWidth(v150);
        sub_219BE7FF4();
        v88 = v87;

        v81 = v86 - v88;
      }
    }

    else
    {
      sub_219BE7FF4();
      v80 = v79;
      v81 = 0.0;
      v101 = 0.0;
      v102 = 0.0;
      v107 = 0.0;
      v108 = 0.0;
      v112 = 0;
      v109 = 0.0;
      v110 = 0.0;
      v82 = v21;
      v84 = v115;
      v83 = v116;
    }

    v115 = v81;
    v116 = v80;
    sub_219BE7FF4();
    v91 = v90;
    v152.origin.x = v80;
    v92 = v111;
    v152.origin.y = v111;
    v93 = v82;
    v152.size.width = v82;
    v100 = v82;
    v63 = v103;
    v152.size.height = v103;
    v94 = ceil(CGRectGetMaxY(v152));
    v95 = sub_219BE8034();
    [v95 displayScale];
    v97 = v96;

    v98 = v94 + 15.0;
    v76 = 1.0 / fmax(v97, 1.0);
    v153.origin.x = v91;
    v99 = v91;
    v153.origin.y = v98;
    v153.size.width = v21;
    v153.size.height = v76;
    v59 = v21;
    v60 = ceil(CGRectGetMaxY(v153));
    v78 = v113 & 1;
    v129 = 0uLL;
    *&v130 = v59;
    *(&v130 + 1) = v60;
    *&v131 = v116;
    *(&v131 + 1) = v92;
    *&v132 = v93;
    *(&v132 + 1) = v63;
    *&v133 = v112;
    *(&v133 + 1) = v110;
    *&v134 = v109;
    *(&v134 + 1) = v108;
    v72 = v101;
    v69 = v102;
    *&v135 = v115;
    *(&v135 + 1) = v102;
    *&v136 = v107;
    *(&v136 + 1) = v101;
    *&v137 = v91;
    *(&v137 + 1) = v98;
    v73 = v98;
    *v138 = v59;
    *(v138 + 1) = v76;
    *&v138[1] = v60;
    BYTE8(v138[1]) = v113 & 1;
    nullsub_1();
    v127 = v137;
    v128[0] = v138[0];
    *(v128 + 9) = *(v138 + 9);
    v123 = v133;
    v124 = v134;
    v125 = v135;
    v126 = v136;
    v119 = v129;
    v120 = v130;
    v121 = v131;
    v122 = v132;
    v117 = v106;
    v118 = v104;

    sub_219BE2DE4();

    (*(*&v84 + 8))(v15, COERCE_DOUBLE(*&v83));
    v74 = v99;
    v64 = v100;
    v70 = v115;
    v62 = v116;
    v65 = v110;
    v61 = v111;
    v58 = 0uLL;
    v75 = v59;
    v77 = v60;
    v71 = v107;
    v68 = v108;
    v66 = v112;
    v67 = v109;
  }

  else
  {
    (*(*&v115 + 8))(v15, COERCE_DOUBLE(*&v116));

    v58 = v139;
    v60 = *(&v140 + 1);
    v59 = *&v140;
    v61 = *(&v141 + 1);
    v62 = *&v141;
    v63 = *(&v142 + 1);
    v64 = *&v142;
    v65 = *(&v143 + 1);
    v66 = v143;
    v68 = *(&v144 + 1);
    v67 = *&v144;
    v69 = *(&v145 + 1);
    v70 = *&v145;
    v72 = *(&v146 + 1);
    v71 = *&v146;
    v73 = *(&v147 + 1);
    v74 = *&v147;
    v76 = *(v148 + 1);
    v75 = *v148;
    v77 = *&v148[1];
    v78 = BYTE8(v148[1]);
  }

  *a6 = v58;
  *(a6 + 16) = v59;
  *(a6 + 24) = v60;
  *(a6 + 32) = v62;
  *(a6 + 40) = v61;
  *(a6 + 48) = v64;
  *(a6 + 56) = v63;
  *(a6 + 64) = v66;
  *(a6 + 72) = v65;
  *(a6 + 80) = v67;
  *(a6 + 88) = v68;
  *(a6 + 96) = v70;
  *(a6 + 104) = v69;
  *(a6 + 112) = v71;
  *(a6 + 120) = v72;
  *(a6 + 128) = v74;
  *(a6 + 136) = v73;
  *(a6 + 144) = v75;
  *(a6 + 152) = v76;
  *(a6 + 160) = v77;
  *(a6 + 168) = v78;
}

uint64_t sub_218A2932C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_218A29390(uint64_t a1)
{
  v1 = *(a1 + 168);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_218A293AC()
{
  result = qword_280E8DB00;
  if (!qword_280E8DB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DB00);
  }

  return result;
}

uint64_t FeedServiceContextPurpose.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_218A29484()
{
  result = qword_27CC0CA10;
  if (!qword_27CC0CA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA10);
  }

  return result;
}

double sub_218A294FC()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
  byte_27CCD8250 = 0;
  result = 0.0;
  unk_27CCD8258 = 0u;
  unk_27CCD8268 = 0u;
  unk_27CCD8278 = 0u;
  unk_27CCD8288 = 0u;
  unk_27CCD8298 = 0u;
  qword_27CCD82A8 = v0;
  xmmword_27CCD82B0 = 0u;
  unk_27CCD82C0 = 0u;
  xmmword_27CCD82D0 = 0u;
  unk_27CCD82E0 = 0u;
  xmmword_27CCD82F0 = 0u;
  unk_27CCD8300 = 0u;
  xmmword_27CCD8310 = 0u;
  unk_27CCD8320 = 0u;
  xmmword_27CCD8330 = 0u;
  unk_27CCD8340 = 0u;
  xmmword_27CCD8350 = 0u;
  unk_27CCD8360 = 0u;
  xmmword_27CCD8370 = 0u;
  unk_27CCD8380 = 0u;
  xmmword_27CCD8390 = 0u;
  unk_27CCD83A0 = 0u;
  xmmword_27CCD83B0 = 0u;
  unk_27CCD83C0 = 0u;
  xmmword_27CCD83D0 = 0u;
  unk_27CCD83E0 = 0u;
  return result;
}

uint64_t sub_218A29580(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218A295C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 416) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_218A29684(uint64_t a1, uint64_t a2, void (*a3)(uint64_t (*)(uint64_t (*)(void)), uint64_t), uint64_t a4)
{
  v5 = v4;
  v61 = a4;
  v62 = a3;
  sub_218A2AFF0(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v61 - v8;
  v10 = sub_219BE88E4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = sub_219BE7BC4();
  v63 = [v64 superview];
  if (v63)
  {
    v14 = [v64 snapshotViewAfterScreenUpdates_];
    if (!v14)
    {

      if (qword_280E8D8A0 != -1)
      {
        swift_once();
      }

      v35 = qword_280F61768;
      v36 = sub_219BF61F4();
      v37 = sub_219BE5314("AudioPlaylistFeedAnimator Failed to get a snapshot of the content view", 70, 2, &dword_2186C1000, v35, v36, MEMORY[0x277D84F90]);
      (v62)(sub_218A2B1BC, 0, v37);

      v34 = &v74;
      goto LABEL_12;
    }

    v15 = v14;
    [v64 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    [v15 setFrame_];
    [v63 addSubview_];
    (*(v11 + 16))(v13, a1, v10);
    if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D6E040])
    {
      (*(v11 + 96))(v13, v10);
      __swift_destroy_boxed_opaque_existential_1(v13);
      sub_219BE7294();
      if (v69[3])
      {
        if (swift_dynamicCast())
        {
          v70 = aBlock;
          v71 = v66;
          v72 = v67;
          v73 = v68;
          v24 = sub_219BE7BC4();
          *&aBlock = *(v4 + 16);
          sub_218987004(0);
          sub_218795CA8(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
          sub_219BE7B94();
          _s8SnapshotCMa();
          swift_allocObject();
          v25 = v63;
          v50 = sub_2197967FC(v24, v9, v25);
          v51 = objc_opt_self();
          v52 = swift_allocObject();
          v53 = v61;
          *(v52 + 16) = v62;
          *(v52 + 24) = v53;
          *(v52 + 32) = v5;
          *(v52 + 40) = v25;
          *(v52 + 48) = v15;
          *(v52 + 56) = v50;
          v54 = v71;
          *(v52 + 64) = v70;
          *(v52 + 80) = v54;
          *(v52 + 96) = v72;
          *(v52 + 112) = v73;
          *(v52 + 120) = v64;
          v55 = swift_allocObject();
          *(v55 + 16) = sub_218A2B0E4;
          *(v55 + 24) = v52;
          *&v67 = sub_218807D50;
          *(&v67 + 1) = v55;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          *&v66 = sub_218807CE4;
          *(&v66 + 1) = &block_descriptor_6;
          v56 = _Block_copy(&aBlock);
          v57 = v64;
          v58 = v25;

          v59 = v15;

          [v51 performWithoutAnimation_];

          _Block_release(v56);

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return;
          }

          __break(1u);
          goto LABEL_26;
        }
      }

      else
      {
        sub_218806FD0(v69);
      }

      if (qword_280E8D8A0 != -1)
      {
        swift_once();
      }

      v44 = qword_280F61768;
      v45 = sub_219BF61F4();
      sub_2186F20D4(0);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_219C09BA0;
      sub_219BE7294();
      sub_21880702C();
      v47 = sub_219BF5484();
      v49 = v48;
      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 64) = sub_2186FC3BC();
      *(v46 + 32) = v47;
      *(v46 + 40) = v49;
      sub_219BE5314("AudioPlaylistFeedAnimator Failed to cast animation context to AudioPlaylistFeedAnimator.Context %{public}@", 106, 2, &dword_2186C1000, v44, v45, v46);

      v41 = swift_allocObject();
      *(v41 + 16) = v15;
      v42 = v15;
      v43 = sub_218A2B1AC;
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      if (qword_280E8D8A0 != -1)
      {
        swift_once();
      }

      v39 = qword_280F61768;
      v40 = sub_219BF61F4();
      sub_219BE5314("AudioPlaylistFeedAnimator given non .changes animator context, this is unsupported.", 83, 2, &dword_2186C1000, v39, v40, MEMORY[0x277D84F90]);
      v41 = swift_allocObject();
      *(v41 + 16) = v15;
      v42 = v15;
      v43 = sub_218A2AFA8;
    }

    v62(v43, v41);

    return;
  }

  if (qword_280E8D8A0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v26 = qword_280F61768;
  v27 = sub_219BF61F4();
  sub_2186F20D4(0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09BA0;
  v29 = sub_219BE7BC4();
  v30 = [v29 description];
  v31 = sub_219BF5414();
  v33 = v32;

  *(v28 + 56) = MEMORY[0x277D837D0];
  *(v28 + 64) = sub_2186FC3BC();
  *(v28 + 32) = v31;
  *(v28 + 40) = v33;
  sub_219BE5314("AudioPlaylistFeedAnimator didn't find a parentView for our viewProviders's view %{public}@", 90, 2, &dword_2186C1000, v26, v27, v28);

  v62(sub_218A2B1BC, 0);
  v34 = &v75;
LABEL_12:
  v38 = *(v34 - 32);
}

double sub_218A2A164(void (*a1)(uint64_t (*)(), uint64_t), uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = a6;
  v16 = *(a7 + 16);
  *(v15 + 48) = *a7;
  *(v15 + 64) = v16;
  *(v15 + 80) = *(a7 + 32);
  *(v15 + 96) = *(a7 + 48);
  *(v15 + 104) = a8;

  v17 = a4;
  v18 = a5;
  v19 = a8;
  a1(sub_218A2B0FC, v15);

  return result;
}

uint64_t sub_218A2A250(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v39 = a8;
  v36 = a1;
  v37 = a2;
  v44 = sub_219BED174();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BED1D4();
  v45 = *(v14 - 8);
  v46 = v14;
  MEMORY[0x28223BE20](v14);
  v38 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BED214();
  v42 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v36 - v21;
  sub_2187D9028();

  v40 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v41 = *(v17 + 8);
  v41(v19, v16);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = v36;
  *(v23 + 32) = a5;
  *(v23 + 40) = v24;
  *(v23 + 48) = v37;
  *(v23 + 56) = a6;
  v25 = *(a7 + 16);
  *(v23 + 64) = *a7;
  *(v23 + 80) = v25;
  *(v23 + 96) = *(a7 + 32);
  *(v23 + 112) = *(a7 + 48);
  v26 = v39;
  *(v23 + 120) = v39;
  aBlock[4] = sub_218A2B110;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_24;
  v27 = _Block_copy(aBlock);

  v28 = a4;
  v29 = a5;

  v30 = v26;

  v31 = v38;
  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_218795CA8(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_21879DD98(0);
  sub_218795CA8(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
  v33 = v43;
  v32 = v44;
  sub_219BF7164();
  v34 = v40;
  MEMORY[0x21CECD420](v22, v31, v33, v27);
  _Block_release(v27);

  (*(v47 + 8))(v33, v32);
  (*(v45 + 8))(v31, v46);
  return (v41)(v22, v42);
}

double sub_218A2A68C(uint64_t a1, void *a2, unint64_t a3, void (*a4)(id), uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v58 = a8;
  v59 = a6;
  v60 = a7;
  v61 = a4;
  v62 = a5;
  v63 = a3;
  v10 = sub_219BED174();
  v65 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BED1D4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2AFF0(0, &qword_27CC0CA18, MEMORY[0x277D6EC60]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v55 - v18;
  v20 = sub_219BE7BC4();
  aBlock = *(a1 + 16);
  sub_218987004(0);
  sub_218795CA8(&qword_27CC11BF0, sub_218987004, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  _s8SnapshotCMa();
  swift_allocObject();
  v21 = a2;
  v28 = sub_2197967FC(v20, v19, v21);
  v55 = v16;
  v56 = v14;
  v57 = v12;
  v64 = v13;
  _s4PlanCMa();
  swift_allocObject();

  v30 = sub_218A8F584(v29, v28, v60);
  v60 = v28;

  v31 = v63;
  sub_218A8EE44(v21, v63);
  [v31 removeFromSuperview];
  v32 = dispatch_group_create();
  v59 = v30;
  v63 = v30[11];
  if (v63 >> 62)
  {
    v54 = v32;
    v33 = sub_219BF7214();
    v32 = v54;
  }

  else
  {
    v33 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = v64;
  v34 = v65;
  v36 = v32;
  v37 = v63;
  if (!v33)
  {
LABEL_14:

    sub_2187D9028();
    v65 = sub_219BF66A4();
    v44 = swift_allocObject();
    v45 = v58;
    v46 = v59;
    v44[2] = v58;
    v44[3] = v46;
    v47 = v62;
    v44[4] = v61;
    v44[5] = v47;
    v70 = sub_218A2B148;
    v71 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v67 = 1107296256;
    v68 = sub_218793E0C;
    v69 = &block_descriptor_30;
    v48 = _Block_copy(&aBlock);
    v49 = v45;

    v50 = v55;
    sub_219BED1A4();
    v72 = MEMORY[0x277D84F90];
    sub_218795CA8(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_21879DD98(0);
    sub_218795CA8(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
    v51 = v57;
    sub_219BF7164();
    v52 = v65;
    sub_219BF6654();

    _Block_release(v48);

    (*(v34 + 8))(v51, v10);
    (*(v56 + 8))(v50, v35);

    return result;
  }

  v38 = 0;
  v39 = v63 & 0xC000000000000001;
  v40 = v63 & 0xFFFFFFFFFFFFFF8;
  v41 = v10;
  while (v39)
  {
    v35 = MEMORY[0x21CECE0F0](v38);
    v10 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_8:
    aBlock = v35;
    v42 = v36;
    sub_218A9C328(&aBlock, v42);

    v35 = v64;
    v34 = v65;
    ++v38;
    v43 = v10 == v33;
    v10 = v41;
    v37 = v63;
    if (v43)
    {
      goto LABEL_14;
    }
  }

  if (v38 < *(v40 + 16))
  {
    v35 = *(v37 + 8 * v38 + 32);

    v10 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  __break(1u);
  swift_once();
  v22 = qword_280F61768;
  v23 = sub_219BF61F4();
  sub_2186F20D4(0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  aBlock = 0;
  v67 = 0xE000000000000000;
  v72 = 0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v25 = aBlock;
  v26 = v67;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_2186FC3BC();
  *(v24 + 32) = v25;
  *(v24 + 40) = v26;
  sub_219BE5314("AudioPlaylistFeedAnimator Failed to create a snapshot after updates applied, proceeding with no animation %{public}@", 116, 2, &dword_2186C1000, v22, v23, v24);

  v27 = [v63 removeFromSuperview];
  v61(v27);

  return result;
}

id sub_218A2AE44(void *a1, void *a2, double a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v10[4] = sub_218A2B194;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_218A8F318;
  v10[3] = &block_descriptor_36;
  v7 = _Block_copy(v10);
  v8 = a2;

  [a1 addCompletion_];
  _Block_release(v7);
  dispatch_group_enter(v8);
  return [a1 startAnimationAfterDelay_];
}

void sub_218A2AF4C(uint64_t a1, dispatch_group_t group)
{
  if (!a1)
  {
    dispatch_group_leave(group);
  }
}

void sub_218A2AFF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioPlaylistFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioPlaylistFeedModel(255);
    v8[2] = sub_218795CA8(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor, &unk_219C3085C);
    v8[3] = sub_218795CA8(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F008);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218A2B148()
{
  v1 = *(v0 + 32);
  [*(v0 + 16) reloadData];
  sub_218A8F36C();
  return v1();
}

void sub_218A2B194(uint64_t a1)
{
  if (!a1)
  {
    dispatch_group_leave(*(v1 + 16));
  }
}

uint64_t sub_218A2B1C0()
{
  swift_getKeyPath();
  sub_218A2B4DC();
  sub_219BDC204();

  return *(v0 + 80);
}

double sub_218A2B230(unsigned __int8 a1)
{
  if (*(v1 + 80) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_218A2B4DC();
    sub_219BDC1F4();
  }

  return result;
}

uint64_t sub_218A2B310()
{

  v1 = OBJC_IVAR____TtC7NewsUI233RecipeFilterDurationItemViewModel___observationRegistrar;
  v2 = sub_219BDC244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipeFilterDurationItemViewModel(uint64_t a1)
{
  result = qword_27CC0CA28;
  if (!qword_27CC0CA28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218A2B420(uint64_t a1)
{
  result = sub_219BDC244();
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

double sub_218A2B4CC@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;

  return result;
}

unint64_t sub_218A2B4DC()
{
  result = qword_27CC0B230;
  if (!qword_27CC0B230)
  {
    type metadata accessor for RecipeFilterDurationItemViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0B230);
  }

  return result;
}

unint64_t WelcomeError.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t sub_218A2B574(uint64_t a1, uint64_t a2)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_218A2B5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_218A2B988();

  return MEMORY[0x28211C010](a1, a2, v4);
}

unint64_t *sub_218A2B624@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_218A2B640(uint64_t a1)
{
  v2 = sub_218A2B988();

  return MEMORY[0x28211C020](a1, v2);
}

uint64_t sub_218A2B67C(uint64_t a1)
{
  v2 = sub_218A2B988();

  return MEMORY[0x28211C018](a1, v2);
}

uint64_t sub_218A2B6D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_218A2B988();

  return MEMORY[0x28211C008](a1, a2, v4);
}

unint64_t WelcomeUserType.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_218A2B740()
{
  result = qword_27CC0CA38;
  if (!qword_27CC0CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA38);
  }

  return result;
}

unint64_t sub_218A2B798()
{
  result = qword_27CC0CA40;
  if (!qword_27CC0CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA40);
  }

  return result;
}

unint64_t sub_218A2B7F0()
{
  result = qword_27CC0CA48;
  if (!qword_27CC0CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA48);
  }

  return result;
}

unint64_t sub_218A2B848()
{
  result = qword_27CC0CA50;
  if (!qword_27CC0CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA50);
  }

  return result;
}

unint64_t sub_218A2B8A0()
{
  result = qword_27CC0CA58;
  if (!qword_27CC0CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA58);
  }

  return result;
}

unint64_t sub_218A2B8F8()
{
  result = qword_27CC0CA60;
  if (!qword_27CC0CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA60);
  }

  return result;
}

unint64_t *sub_218A2B94C@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

unint64_t sub_218A2B988()
{
  result = qword_27CC0CA68;
  if (!qword_27CC0CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CA68);
  }

  return result;
}

uint64_t sub_218A2B9E4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 464))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218A2BA2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 456) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 464) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 464) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_218A2BAF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = a2;
  sub_218A2D07C(0);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v34 - v10;
  sub_218A2D09C(0);
  MEMORY[0x28223BE20](v11 - 8);
  sub_218950ACC(0);
  v36 = swift_allocBox();
  sub_218950928(0);
  v13 = v12;
  v14 = sub_2186D557C(&qword_280EE5770, sub_218950928, MEMORY[0x277D6D720]);
  v15 = sub_2186D557C(&qword_280EE5778, sub_218950928, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v13, v14, v15);
  type metadata accessor for FollowingModel(0);
  sub_2187490E4();
  sub_2186D557C(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  sub_219BEB2D4();
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v16 = sub_219BE5434();
  __swift_project_value_buffer(v16, qword_280F62748);
  v17 = sub_219BE5414();
  v18 = sub_219BF6214();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2186C1000, v17, v18, "Following prewarm prepare family status...", v19, 2u);
    MEMORY[0x21CECF960](v19, -1, -1);
  }

  swift_getObjectType();
  sub_219BF42D4();
  v20 = sub_219BE5414();
  v21 = sub_219BF6214();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2186C1000, v20, v21, "Following prewarm prepared family status...done", v22, 2u);
    MEMORY[0x21CECF960](v22, -1, -1);
  }

  MEMORY[0x28223BE20](v23);
  *(&v34 - 2) = v4;
  sub_218977394();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v24 = sub_219BF66A4();
  sub_218A2D7B4(v4, v39);
  v25 = v38;
  sub_218A2D7EC(v38, v8);
  v26 = (*(v35 + 80) + 488) & ~*(v35 + 80);
  v27 = swift_allocObject();
  memcpy((v27 + 16), v39, 0x1D0uLL);
  *(v27 + 480) = v36;
  sub_218A2D850(v8, v27 + v26);
  v28 = (v27 + ((v7 + v26 + 7) & 0xFFFFFFFFFFFFFFF8));
  v29 = v37;
  *v28 = v37;
  v28[1] = a3;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_218A2D8B4;
  *(v30 + 24) = v27;

  sub_219BE2F74();

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = a3;

  v32 = sub_219BE2E54();
  sub_219BE2FD4();

  sub_218A2D9F8(v25, sub_218A2D07C);

  return result;
}

uint64_t sub_218A2C068()
{
  sub_218A2C104("Following prewarm preparing notification configuration...", sub_218A2DAE8);
  sub_218A2C104("Following prewarm preparing tag service...", sub_218A2DACC);
  v0 = sub_219BE31C4();

  return v0;
}

uint64_t sub_218A2C104(const char *a1, uint64_t a2)
{
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F62748);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, a1, v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  MEMORY[0x28223BE20](v7);
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218A2C23C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v102 = a5;
  v103 = a4;
  v96 = a3;
  sub_218748264(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v100 = *(v6 - 8);
  v101 = v6;
  MEMORY[0x28223BE20](v6);
  v99 = &v85 - v7;
  sub_218950ACC(0);
  v9 = v8;
  v98 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v97 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v11 - 8);
  v95 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v94 = &v85 - v14;
  MEMORY[0x28223BE20](v15);
  v93 = &v85 - v16;
  MEMORY[0x28223BE20](v17);
  v92 = &v85 - v18;
  MEMORY[0x28223BE20](v19);
  v91 = &v85 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  sub_218950928(0);
  v28 = v27;
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v90 = &v85 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v106 = &v85 - v32;
  MEMORY[0x28223BE20](v33);
  v89 = &v85 - v34;
  MEMORY[0x28223BE20](v35);
  v88 = &v85 - v36;
  MEMORY[0x28223BE20](v37);
  v87 = &v85 - v38;
  MEMORY[0x28223BE20](v39);
  v86 = &v85 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v85 - v42;
  MEMORY[0x28223BE20](v44);
  v105 = &v85 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v85 - v47;
  v49 = swift_projectBox();
  sub_2198CE64C(v26);
  v108 = *(v29 + 48);
  v104 = v29 + 48;
  v50 = v108(v26, 1, v28);
  v107 = v29;
  if (v50 == 1)
  {
    sub_218A2D9F8(v26, sub_218A2D984);
  }

  else
  {
    (*(v29 + 32))(v48, v26, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v29 + 8))(v48, v28);
  }

  sub_2198CF7A4(v105);
  swift_beginAccess();
  sub_219BEB1E4();
  swift_endAccess();
  v51 = sub_2198D0420(v23);
  v52 = v9;
  if ((v108)(v23, 1, v28, v51) == 1)
  {
    sub_218A2D9F8(v23, sub_218A2D984);
  }

  else
  {
    v53 = v107;
    (*(v107 + 32))(v43, v23, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v53 + 8))(v43, v28);
  }

  v54 = v92;
  v55 = v91;
  v56 = sub_2198D068C(v91);
  if ((v108)(v55, 1, v28, v56) == 1)
  {
    sub_218A2D9F8(v55, sub_218A2D984);
  }

  else
  {
    v57 = v107;
    v58 = v86;
    (*(v107 + 32))(v86, v55, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v57 + 8))(v58, v28);
  }

  v59 = v93;
  v93 = *(a1 + 392);
  v60 = sub_218845E04();
  sub_2198D09F4(v54, v60);
  if (v108(v54, 1, v28) == 1)
  {
    sub_218A2D9F8(v54, sub_218A2D984);
  }

  else
  {
    v61 = v107;
    v62 = v87;
    (*(v107 + 32))(v87, v54, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v61 + 8))(v62, v28);
  }

  v63 = sub_2198D0D0C(v60, v59);
  if ((v108)(v59, 1, v28, v63) == 1)
  {
    sub_218A2D9F8(v59, sub_218A2D984);
    v64 = v107;
  }

  else
  {
    v64 = v107;
    v65 = v88;
    (*(v107 + 32))(v88, v59, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v64 + 8))(v65, v28);
  }

  v66 = v94;
  v67 = sub_2198D1190(v94, v60);
  if ((v108)(v66, 1, v28, v67) == 1)
  {
    sub_218A2D9F8(v66, sub_218A2D984);
  }

  else
  {
    v68 = v89;
    (*(v64 + 32))(v89, v66, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v64 + 8))(v68, v28);
  }

  sub_2198D1458(v60);

  swift_beginAccess();
  sub_219BEB1E4();
  swift_endAccess();
  sub_218E93D80();
  v69 = v95;
  sub_2198D1674(v70, v96, v95);

  if (v108(v69, 1, v28) == 1)
  {
    sub_218A2D9F8(v69, sub_218A2D984);
  }

  else
  {
    v71 = v90;
    (*(v64 + 32))(v90, v69, v28);
    swift_beginAccess();
    sub_219BEB1E4();
    swift_endAccess();
    (*(v64 + 8))(v71, v28);
  }

  v72 = v99;
  swift_beginAccess();
  v73 = v97;
  v74 = v98;
  v75 = *(v98 + 16);
  v75(v97, v49, v52);
  sub_2186D557C(&unk_280EE3770, sub_218950ACC, MEMORY[0x277D6EC70]);
  sub_219BF5DF4();
  sub_219BF5E84();
  (*(v74 + 8))(v73, v52);
  if (v109 == v110)
  {
    v76 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_218A2DA58(0);
    v78 = *(v77 + 48);
    swift_beginAccess();
    v75(v72, v49, v52);
    v79 = *MEMORY[0x277D6D868];
    v80 = sub_219BE6DF4();
    (*(*(v80 - 8) + 104))(&v72[v78], v79, v80);
    v76 = MEMORY[0x277D6DF70];
  }

  v82 = v100;
  v81 = v101;
  (*(v100 + 104))(v72, *v76, v101);
  v103(v72);
  (*(v82 + 8))(v72, v81);
  v83 = *(v64 + 8);
  v83(v106, v28);
  return (v83)(v105, v28);
}

uint64_t sub_218A2CE78(void *a1, void (*a2)(char *))
{
  sub_218748264(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  *(&v12 - v8) = a1;
  (*(v6 + 104))(&v12 - v8, *MEMORY[0x277D6DF68], v5, v7);
  v10 = a1;
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_218A2CFA0(uint64_t a1)
{
  v2 = sub_218A2DB00();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218A2CFE0()
{
  result = qword_280EC1AE8;
  if (!qword_280EC1AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1AE8);
  }

  return result;
}

void sub_218A2D09C(uint64_t a1)
{
  if (!qword_280EE7480)
  {
    sub_218950928(255);
    sub_2186D557C(&qword_280EE5770, sub_218950928, MEMORY[0x277D6D720]);
    sub_2186D557C(&qword_280EE5778, sub_218950928, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7480);
    }
  }
}

void sub_218A2D168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 392);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = sub_2187A913C;
  v12[5] = v10;
  v13 = *(v11 + 32);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  v14 = sub_219BF66A4();
  v15 = swift_allocObject();
  *(v15 + 16) = sub_218A2DAD4;
  *(v15 + 24) = v12;
  v17[4] = sub_218A2DAE0;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_218793E0C;
  v17[3] = &block_descriptor_7;
  v16 = _Block_copy(v17);

  [v13 prewarmFromCacheWithCallbackQueue:v14 completion:v16];
  _Block_release(v16);
}

void sub_218A2D308(void *a1, void (*a2)(void *), uint64_t a3, void (*a4)(void))
{
  if (a1)
  {
    v6 = a1;
    if (qword_280EE6048 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62748);
    v8 = a1;
    v9 = sub_219BE5414();
    v10 = sub_219BF61F4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543362;
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_2186C1000, v9, v10, "Following prewarm preparing tag service, failed=%{public}@", v11, 0xCu);
      sub_218A2D9F8(v12, sub_2189B3F3C);
      MEMORY[0x21CECF960](v12, -1, -1);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    a2(a1);
  }

  else
  {
    if (qword_280EE6048 != -1)
    {
      swift_once();
    }

    v16 = sub_219BE5434();
    __swift_project_value_buffer(v16, qword_280F62748);
    v17 = sub_219BE5414();
    v18 = sub_219BF6214();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2186C1000, v17, v18, "Following prewarm prepared tag service...done", v19, 2u);
      MEMORY[0x21CECF960](v19, -1, -1);
    }

    a4();
  }
}

double sub_218A2D574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a5 + 392);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_218A2DB54;
  *(v10 + 24) = v8;
  v11 = v9[9];
  v12 = v9[10];
  __swift_project_boxed_opaque_existential_1(v9 + 6, v11);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_218A2DAF0;
  *(v13 + 24) = v10;
  v14 = *(v12 + 32);

  v14(sub_218A2DAF8, v13, v11, v12);

  return result;
}

uint64_t sub_218A2D6A4(uint64_t a1, uint64_t (*a2)(void))
{
  if (qword_280EE6048 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F62748);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, "Following prewarm preparing notification configuration...done", v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  return a2();
}

uint64_t sub_218A2D7EC(uint64_t a1, uint64_t a2)
{
  sub_218A2D07C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A2D850(uint64_t a1, uint64_t a2)
{
  sub_218A2D07C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A2D8B4()
{
  sub_218A2D07C(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 488) & ~*(v2 + 80);
  v4 = *(v0 + 480);
  v5 = v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);

  return sub_218A2C23C(v0 + 16, v4, v0 + v3, v6, v7);
}

void sub_218A2D9A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_218A2D9F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218A2DA58(uint64_t a1)
{
  if (!qword_280EE3788)
  {
    sub_218950ACC(255);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE3788);
    }
  }
}

unint64_t sub_218A2DB00()
{
  result = qword_280EC1AF0;
  if (!qword_280EC1AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1AF0);
  }

  return result;
}

id sub_218A2DB58()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_readingList] removeObserver_];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_218A2DCE8(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for SavedFeedGapLocation(0);
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = CACurrentMediaTime();
  v6 = *a1;
  v5 = a1[1];
  v7 = *(type metadata accessor for SavedFeedExpandRequest(0) + 20);
  v8 = qword_280E8D7A8;

  if (v8 != -1)
  {
    swift_once();
  }

  v22 = qword_280F616E0;
  v21 = sub_219BF6214();
  sub_2186F20D4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v9 + 64) = v11;
  *(v9 + 32) = v6;
  *(v9 + 40) = v5;
  v25 = 0;
  v26 = 0xE000000000000000;

  sub_219BF7484();
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0xE000000000000000;
  sub_219BE5314("SavedFeed start expanding identifier=%{public}@, location=%{public}@", 68, 2, &dword_2186C1000, v22, v21, v9);

  sub_218A2F228(a1 + v7, &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v12 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v13 = swift_allocObject();
  sub_218A2F28C(&v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v13 + v12);
  sub_218A2F35C(0, &qword_280E90A10, MEMORY[0x277D33098]);
  sub_219BE31F4();

  sub_218A2F35C(0, &qword_280E91630, MEMORY[0x277D32580]);
  sub_219BE2F84();

  sub_2187D9028();
  v14 = sub_219BF66A4();
  v15 = swift_allocObject();
  *(v15 + 2) = v6;
  *(v15 + 3) = v5;
  v15[4] = v4;

  sub_219BE2F74();

  v16 = swift_allocObject();
  v16[2] = v4;
  *(v16 + 3) = v6;
  *(v16 + 4) = v5;
  v17 = sub_219BE2E54();
  v18 = sub_219BE2FD4();

  return v18;
}

uint64_t sub_218A2E0C0(void *a1)
{
  sub_218A2F1D8();
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218A2E138(uint64_t a1, uint64_t a2)
{
  sub_218A2F35C(0, &qword_280E90A10, MEMORY[0x277D33098]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  v12 = type metadata accessor for SavedFeedGapLocation(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2F228(a2, v14);
  v15 = (*(v6 + 48))(v14, 1, v5);
  if (v15 == 1)
  {
    MEMORY[0x28223BE20](v15);
    *(&v19 - 2) = a1;
    type metadata accessor for SavedFeedServiceConfig(0);
    sub_219BE3204();
    v16 = sub_219BE2E54();
    v17 = sub_219BE2F74();
  }

  else
  {
    (*(v6 + 32))(v11, v14, v5);
    (*(v6 + 16))(v8, v11, v5);
    sub_218A2F3F4(0);
    swift_allocObject();
    v17 = sub_219BE3014();
    (*(v6 + 8))(v11, v5);
  }

  return v17;
}

uint64_t sub_218A2E3C4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_feedServiceContextFactory);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  (*(v3 + 8))(v2, v3);
  v4 = [objc_opt_self() currentDevice];
  [v4 userInterfaceIdiom];

  v5 = sub_219BED564();

  return v5;
}

uint64_t sub_218A2E4B8(uint64_t a1)
{
  type metadata accessor for SavedFeedServiceConfig(0);
  sub_21877F710();
  return sub_219BF0F44();
}

void sub_218A2E544(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  v9 = qword_280E8D7A8;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_280F616E0;
  sub_2186F20D4(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v12 = MEMORY[0x277D83A80];
  *(v11 + 56) = MEMORY[0x277D839F8];
  *(v11 + 64) = v12;
  *(v11 + 32) = v13;
  v14 = MEMORY[0x277D837D0];
  *(v11 + 96) = MEMORY[0x277D837D0];
  v15 = sub_2186FC3BC();
  *(v11 + 104) = v15;
  *(v11 + 72) = a2;
  *(v11 + 80) = a3;

  sub_219BF7484();
  *(v11 + 136) = v14;
  *(v11 + 144) = v15;
  *(v11 + 112) = 0;
  *(v11 + 120) = 0xE000000000000000;
  v16 = sub_219BF6214();
  sub_219BE5314("SavedFeed successfully expanded gap, time=%fms, identifier=%{public}@, fetchResultData=%@", 89, 2, &dword_2186C1000, v10, v16, v11);

  *a4 = a2;
  a4[1] = a3;
  a4[2] = v8;
}

void sub_218A2E6D8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  v6 = qword_280F616E0;
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C0B8C0;
  sub_219BF5CD4();
  v8 = MEMORY[0x277D83A80];
  *(v7 + 56) = MEMORY[0x277D839F8];
  *(v7 + 64) = v8;
  *(v7 + 32) = v9;
  v10 = MEMORY[0x277D837D0];
  *(v7 + 96) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v7 + 104) = v11;
  *(v7 + 72) = a2;
  *(v7 + 80) = a3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);

  sub_219BF7484();
  *(v7 + 136) = v10;
  *(v7 + 144) = v11;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0xE000000000000000;
  v12 = sub_219BF6214();
  sub_219BE5314("SavedFeed failed expanded gap, time=%fms, identifier=%{public}@, error=%{public}@", 81, 2, &dword_2186C1000, v6, v12, v7);
}

uint64_t sub_218A2E854(uint64_t a1, void *a2)
{
  v3 = (a1 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_headlineService);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return MEMORY[0x21CEC9610](*a2, *MEMORY[0x277D30B90], v4, v5);
}

uint64_t sub_218A2E8C0(uint64_t *a1, uint64_t a2, double a3)
{
  refreshed = type metadata accessor for SavedFeedRefreshResult(0);
  MEMORY[0x28223BE20](refreshed);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (qword_280E8D7A8 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v10 = MEMORY[0x277D83A80];
  *(v9 + 56) = MEMORY[0x277D839F8];
  *(v9 + 64) = v10;
  *(v9 + 32) = v11;
  sub_219BF6214();
  sub_219BE5314("SavedFeed got a refresh fetch result time=%fms", v18);

  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(type metadata accessor for SavedFeedRefreshRequest(0) + 28);
  v15 = *(refreshed + 28);
  v16 = sub_219BF0BD4();
  (*(*(v16 - 8) + 16))(&v7[v15], a2 + v14, v16);
  *v7 = v8;
  *(v7 + 1) = v12;
  *(v7 + 2) = v13;
  sub_218A2F490(0);
  swift_allocObject();

  return sub_219BE3014();
}

BOOL sub_218A2EAFC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_readingList) allSortedArticleIDsInReadingList];
  v2 = sub_219BF5924();

  v3 = *(v2 + 16);

  return v3 == 0;
}

uint64_t sub_218A2EB64()
{
  swift_getObjectType();
  v1 = type metadata accessor for SavedFeedExpandRequest(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v4 + 28);
  sub_218A2F35C(0, &qword_280E90A10, MEMORY[0x277D33098]);
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  *v3 = 0x6D726177657270;
  *(v3 + 1) = 0xE700000000000000;
  v11 = v0;
  v12 = v3;
  sub_219BE3204();
  v7 = sub_219BE2E54();
  v8 = sub_219BE2F84();

  sub_218A2F17C(v3);
  return v8;
}

void sub_218A2ED80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v5 = a4 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = *(a4 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 24);
      v9 = *(a4 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 32);
      __swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider), v8);
      v10 = (*(v9 + 8))(v8, v9);
      (*(v6 + 8))(a4, &off_282A325F0, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v10, ObjectType, v6);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_218A2EE90()
{
  swift_getObjectType();

  return sub_219BE24C4();
}

uint64_t sub_218A2EECC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_219BE24B4();
}

double sub_218A2EF24()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 24];
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider], v1);
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v4 = *(v2 + 16);
  v5 = v0;
  v4(sub_218A2F484, v3, v1, v2);

  return result;
}

uint64_t sub_218A2EFE0()
{
  swift_getObjectType();

  return sub_219BE24E4();
}

uint64_t sub_218A2F01C(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  return sub_219BE24D4();
}

uint64_t sub_218A2F074()
{
  swift_getObjectType();

  return sub_219BE2484();
}

uint64_t sub_218A2F0B0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v2, a2, 0, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218A2F17C(uint64_t a1)
{
  v2 = type metadata accessor for SavedFeedExpandRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218A2F1D8()
{
  if (!qword_280EE6DF0)
  {
    v0 = sub_219BE3114();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6DF0);
    }
  }
}

uint64_t sub_218A2F228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A2F28C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedGapLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218A2F35C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SavedFeedServiceConfig(255);
    v7 = sub_21877F710();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218A2F3F4(uint64_t a1)
{
  if (!qword_280EE6C08)
  {
    sub_218A2F35C(255, &qword_280E90A10, MEMORY[0x277D33098]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6C08);
    }
  }
}

void sub_218A2F490(uint64_t a1)
{
  if (!qword_280EE6DE0)
  {
    type metadata accessor for SavedFeedRefreshResult(255);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6DE0);
    }
  }
}

uint64_t sub_218A2F4E8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    v9 = *(v2 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 24);
    v10 = *(v2 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI220SavedFeedDataManager_dataProvider), v9);
    v11 = (*(v10 + 8))(v9, v10);
    (*(v7 + 8))(v2, &off_282A325F0, a1, a2, v11, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_218A2F614(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7954788;
  if (v2 != 1)
  {
    v4 = 0x7473694C74616C66;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1953720684;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7954788;
  if (*a2 != 1)
  {
    v8 = 0x7473694C74616C66;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953720684;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_218A2F700()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218A2F794(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218A2F814(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_218A2F8A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218A2FA2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_218A2F8D4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE300000000000000;
  v5 = 7954788;
  if (v2 != 1)
  {
    v5 = 0x7473694C74616C66;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953720684;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_218A2F9D8()
{
  result = qword_27CC0CB20;
  if (!qword_27CC0CB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CB20);
  }

  return result;
}

unint64_t sub_218A2FA2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_218A2FA78()
{
  result = qword_280EBE3F0;
  if (!qword_280EBE3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBE3F0);
  }

  return result;
}

uint64_t sub_218A2FAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BEE5D4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_218A2FB7C@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_218A2FBF0()
{
  v1 = type metadata accessor for ArticleListAudioHistoryFeedGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A30324(v0, v6);
  sub_2189BD64C(v6, v3);
  v7 = sub_218CFA2BC();
  sub_218A30388(v3);
  return v7;
}

uint64_t sub_218A2FCCC(uint64_t a1)
{
  v2 = sub_218A303E4(&qword_27CC161B0, &unk_219C13F68);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_218A2FD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A303E4(&qword_27CC0CB48, &unk_219C13F00);

  return sub_219BF1174();
}

uint64_t sub_218A2FDA4()
{
  v1 = type metadata accessor for ArticleListAudioHistoryFeedGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A30324(v0, v6);
  sub_2189BD64C(v6, v3);
  v7 = *v3;

  sub_218A30388(v3);
  return v7;
}

uint64_t sub_218A2FE84(uint64_t a1)
{
  v2 = sub_218A303E4(&qword_27CC0CB48, &unk_219C13F00);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218A2FEFC()
{
  v1 = type metadata accessor for ArticleListAudioHistoryFeedGroup(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A30324(v0, v6);
  sub_2189BD64C(v6, v3);
  v7 = sub_219BED774();
  sub_218A30388(v3);
  return v7;
}

uint64_t sub_218A2FFE8(uint64_t a1)
{
  sub_218A303E4(&qword_27CC0CB50, &unk_219C13ED0);

  return sub_219BE2324();
}

uint64_t type metadata accessor for AudioHistoryFeedGroup(uint64_t a1)
{
  result = qword_27CC0CB60;
  if (!qword_27CC0CB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_218A301C8()
{
  result = qword_280EBF7C0;
  if (!qword_280EBF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF7C0);
  }

  return result;
}

unint64_t sub_218A30220()
{
  result = qword_280EBF7D8;
  if (!qword_280EBF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF7D8);
  }

  return result;
}

unint64_t sub_218A30278()
{
  result = qword_280EBF7D0;
  if (!qword_280EBF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBF7D0);
  }

  return result;
}

unint64_t sub_218A302D0()
{
  result = qword_27CC0CB58;
  if (!qword_27CC0CB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0CB58);
  }

  return result;
}

uint64_t sub_218A30324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218A30388(uint64_t a1)
{
  v2 = type metadata accessor for ArticleListAudioHistoryFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A303E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioHistoryFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218A30428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioHistoryFeedGroup(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2188860CC);
}

uint64_t sub_218A30480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleListAudioHistoryFeedGroup(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_218886178);
}

uint64_t sub_218A304E8(uint64_t a1)
{
  result = type metadata accessor for ArticleListAudioHistoryFeedGroup(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_218A3058C()
{
  v1 = type metadata accessor for SearchResultsGroup(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        return;
      }

      sub_218A324A4(v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v7, v4, type metadata accessor for SearchResultsGroup);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          v9 = *(*v4 + 16);

          v10 = sub_218A35880;
          goto LABEL_13;
        }
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_218A358E8(v4, type metadata accessor for SearchModel);
          return;
        }
      }

      else if (EnumCaseMultiPayload != 2)
      {
        v9 = *(*v4 + 16);

        v10 = sub_218A35948;
        goto LABEL_13;
      }

      v9 = *(*v4 + 16);

      v10 = sub_218A32864;
LABEL_13:
      sub_218A358E8((v4 + 8), v10);
      if (!v9 && v6 != ++v7)
      {
        continue;
      }

      return;
    }
  }
}

double SearchResults.excluding(contentIdentifiers:)@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_218713330(0, &unk_27CC0CB70, type metadata accessor for SearchResultsGroup, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SearchResultsGroup(0);
  MEMORY[0x28223BE20](v8);
  v41 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  if (*(a1 + 16))
  {
    v36 = v2;
    v37 = a2;
    v14 = *(v2 + 16);
    v15 = *(v14 + 16);
    if (v15)
    {
      v38 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v16 = v14 + v38;
      v17 = *(v11 + 72);
      v18 = (v11 + 48);
      v19 = MEMORY[0x277D84F90];
      v39 = v8;
      v40 = a1;
      do
      {
        sub_218A324A4(v16, v13, type metadata accessor for SearchResultsGroup);
        sub_218968774(a1, v7);
        sub_218A358E8(v13, type metadata accessor for SearchResultsGroup);
        if ((*v18)(v7, 1, v8) == 1)
        {
          sub_218A30B10(v7);
        }

        else
        {
          sub_218A3243C(v7, v41, type metadata accessor for SearchResultsGroup);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_2191F7430(0, v19[2] + 1, 1, v19);
          }

          v21 = v19[2];
          v20 = v19[3];
          if (v21 >= v20 >> 1)
          {
            v19 = sub_2191F7430((v20 > 1), v21 + 1, 1, v19);
          }

          v19[2] = v21 + 1;
          sub_218A3243C(v41, v19 + v38 + v21 * v17, type metadata accessor for SearchResultsGroup);
          v8 = v39;
          a1 = v40;
        }

        v16 += v17;
        --v15;
      }

      while (v15);
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v23 = v36;
    v24 = *v36;
    v25 = *(v36 + 1);
    v26 = type metadata accessor for SearchResults(0);
    v27 = v26[6];
    v28 = sub_219BDF034();
    v29 = v37;
    (*(*(v28 - 8) + 16))(v37 + v27, &v23[v27], v28);
    v30 = &v23[v26[7]];
    v31 = *v30;
    v32 = v30[1];
    sub_218A30B9C(&v23[v26[8]], v29 + v26[8]);
    v33 = *&v23[v26[9]];
    v34 = *&v23[v26[10]];
    *v29 = v24;
    v29[1] = v25;
    v29[2] = v19;
    v35 = (v29 + v26[7]);
    *v35 = v31;
    v35[1] = v32;
    *(v29 + v26[9]) = v33;
    *(v29 + v26[10]) = v34;
  }

  else
  {
    sub_218A324A4(v2, a2, type metadata accessor for SearchResults);
  }

  return result;
}

uint64_t sub_218A30B10(uint64_t a1)
{
  sub_218713330(0, &unk_27CC0CB70, type metadata accessor for SearchResultsGroup, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218A30B9C(uint64_t a1, uint64_t a2)
{
  sub_218713330(0, &qword_280EE83B8, MEMORY[0x277D2E5A0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static SearchResults.empty(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SearchResults(0);
  v5 = v4[6];
  v6 = sub_219BDF034();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  v7 = v4[8];
  v8 = sub_219BE04F4();
  result = (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  strcpy(a2, "empty-search");
  *(a2 + 13) = 0;
  *(a2 + 14) = -5120;
  *(a2 + 16) = MEMORY[0x277D84F90];
  v10 = (a2 + v4[7]);
  *v10 = 0;
  v10[1] = 0;
  *(a2 + v4[9]) = 0;
  *(a2 + v4[10]) = 9;
  return result;
}

void SearchResults.topHitTopic()()
{
  v37 = sub_219BF04A4();
  v0 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v32 - v11;
  v13 = type metadata accessor for SearchResultsGroup(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v40 + 16);
  v40 = *(v17 + 16);
  if (v40)
  {
    v18 = v0;
    v19 = 0;
    v20 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v38 = v17;
    v39 = v20;
    v35 = (v18 + 8);
    v33 = (v4 + 32);
    v34 = (v4 + 8);
    v21 = v17;
    v32[0] = v14;
    v32[1] = v13;
    while (v19 < *(v21 + 16))
    {
      sub_218A324A4(v39 + *(v14 + 72) * v19, v16, type metadata accessor for SearchResultsGroup);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_218A358E8(v16, type metadata accessor for SearchResultsGroup);
      }

      else
      {
        sub_218A3243C(v16, v12, type metadata accessor for SearchModel);
        sub_218A324A4(v12, v9, type metadata accessor for SearchModel);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v22 = v7;
          v23 = v12;
          v24 = v9;
          (*v33)(v6, v9, v3);
          v25 = v6;
          v26 = v36;
          sub_219BF07D4();
          v27 = sub_219BF0404();
          v28 = v3;
          v29 = *v35;
          (*v35)(v26, v37);
          v30 = [v27 tagType];
          swift_unknownObjectRelease();
          if (v30 == 1)
          {
            v31 = v36;
            sub_219BF07D4();
            sub_219BF0404();
            v29(v31, v37);
            (*v34)(v25, v28);
            sub_218A358E8(v23, type metadata accessor for SearchModel);
            return;
          }

          (*v34)(v25, v28);
          sub_218A358E8(v23, type metadata accessor for SearchModel);
          v3 = v28;
          v6 = v25;
          v12 = v23;
          v7 = v22;
          v9 = v24;
          v14 = v32[0];
          v21 = v38;
        }

        else
        {
          sub_218A358E8(v12, type metadata accessor for SearchModel);
          sub_218A358E8(v9, type metadata accessor for SearchModel);
          v21 = v38;
        }
      }

      if (v40 == ++v19)
      {
        return;
      }
    }

    __break(1u);
  }
}

void SearchResults.topics()()
{
  v1 = sub_219BF04A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v87 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v86 - v5;
  sub_2186EB018(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v105 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v86 - v12;
  v14 = type metadata accessor for SearchModel(0);
  v90 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v112 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v113 = &v86 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v86 - v19;
  MEMORY[0x28223BE20](v21);
  v93 = &v86 - v22;
  v102 = type metadata accessor for SearchResultsGroup(0);
  MEMORY[0x28223BE20](v102);
  v97 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + 16);
  v101 = *(v25 + 16);
  if (!v101)
  {
    return;
  }

  v26 = 0;
  v100 = v25 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  v107 = (v2 + 8);
  v108 = (v9 + 32);
  v106 = (v9 + 8);
  v110 = v6;
  v27 = MEMORY[0x277D84F90];
  v94 = v8;
  v109 = v14;
  v95 = v20;
  v28 = v93;
  v29 = v23;
  v96 = v23;
  v30 = v97;
  v88 = v1;
  v91 = v13;
  v99 = v25;
  while (v26 < *(v25 + 16))
  {
    v31 = *(v29 + 72);
    v103 = v26;
    sub_218A324A4(v100 + v31 * v26, v30, type metadata accessor for SearchResultsGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v44 = *v30;
      v45 = MEMORY[0x277D84F90];
      v114[0] = MEMORY[0x277D84F90];
      v46 = *(v44 + 16);
      if (v46)
      {
        v98 = v27;
        v47 = (*(v90 + 80) + 32) & ~*(v90 + 80);
        v92 = v44;
        v48 = v44 + v47;
        v49 = *(v90 + 72);
        v104 = MEMORY[0x277D84F90];
        v50 = v112;
        v51 = v113;
        v111 = v49;
        do
        {
          sub_218A324A4(v48, v51, type metadata accessor for SearchModel);
          sub_218A324A4(v51, v50, type metadata accessor for SearchModel);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v52 = v105;
            (*v108)(v105, v50, v8);
            v53 = v110;
            sub_219BF07D4();
            v54 = sub_219BF0404();
            v55 = v8;
            v56 = *v107;
            (*v107)(v53, v1);
            v57 = v1;
            v58 = [v54 tagType];
            swift_unknownObjectRelease();
            if (v58 == 1)
            {
              sub_219BF07D4();
              sub_219BF0404();
              v56(v53, v57);
              (*v106)(v52, v55);
              v59 = sub_218A358E8(v113, type metadata accessor for SearchModel);
              MEMORY[0x21CECC690](v59);
              v60 = v57;
              v8 = v55;
              if (*((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_219BF5A14();
                v8 = v94;
              }

              sub_219BF5A54();
              v51 = v113;
              v104 = v114[0];
              v50 = v112;
              v1 = v60;
            }

            else
            {
              (*v106)(v52, v55);
              v51 = v113;
              sub_218A358E8(v113, type metadata accessor for SearchModel);
              v1 = v57;
              v8 = v55;
              v50 = v112;
            }

            v49 = v111;
          }

          else
          {
            sub_218A358E8(v51, type metadata accessor for SearchModel);
            sub_218A358E8(v50, type metadata accessor for SearchModel);
          }

          v48 += v49;
          --v46;
        }

        while (v46);

        v27 = v98;
        v61 = v104;
      }

      else
      {

        v61 = v45;
      }

      if (v61 >> 62)
      {
        v62 = sub_219BF7214();
      }

      else
      {
        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v63 = v27 >> 62;
      if (v27 >> 62)
      {
        v64 = sub_219BF7214();
      }

      else
      {
        v64 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v65 = v62;
      v66 = __OFADD__(v64, v62);
      v67 = v64 + v62;
      if (v66)
      {
        goto LABEL_75;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v63)
        {
          v68 = v27 & 0xFFFFFFFFFFFFFF8;
          if (v67 > *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_41:
            v27 = sub_219BF7364();
            v68 = v27 & 0xFFFFFFFFFFFFFF8;
          }

          v69 = *(v68 + 16);
          v70 = (*(v68 + 24) >> 1) - v69;
          v111 = v68;
          if (v61 >> 62)
          {
            v72 = sub_219BF7214();
            v73 = v61;
            if (v72)
            {
              v74 = v72;
              v104 = v73;
              v75 = sub_219BF7214();
              if (v70 < v75)
              {
                goto LABEL_79;
              }

              if (v74 < 1)
              {
                goto LABEL_80;
              }

              v89 = v75;
              v92 = v65;
              v98 = v27;
              v76 = v111 + 8 * v69 + 32;
              sub_218A354D8(0);
              sub_218A35D58(&qword_280E8ECE8, sub_218A354D8, MEMORY[0x277D83988]);
              v77 = 0;
              v78 = v104;
              do
              {
                v79 = sub_218A35450(v114, v77, v78);
                v81 = *v80;
                swift_unknownObjectRetain();
                (v79)(v114, 0);
                *(v76 + 8 * v77++) = v81;
              }

              while (v74 != v77);
              v1 = v88;
              v27 = v98;
              v65 = v92;
              v71 = v89;
              goto LABEL_52;
            }
          }

          else
          {
            v71 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v71)
            {
              v104 = v61;
              if (v70 < v71)
              {
                goto LABEL_78;
              }

              sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
              swift_arrayInitWithCopy();
LABEL_52:

              v8 = v94;
              v13 = v91;
              v28 = v93;
              v29 = v96;
              v30 = v97;
              if (v71 < v65)
              {
                goto LABEL_76;
              }

              if (v71 > 0)
              {
                v82 = *(v111 + 16);
                v66 = __OFADD__(v82, v71);
                v83 = v82 + v71;
                if (v66)
                {
                  goto LABEL_77;
                }

                *(v111 + 16) = v83;
              }

LABEL_57:
              sub_218A358E8((v30 + 1), sub_218A32864);
LABEL_59:
              v20 = v95;
              goto LABEL_4;
            }
          }

          v8 = v94;
          v13 = v91;
          v28 = v93;
          v29 = v96;
          v30 = v97;
          if (v65 > 0)
          {
            goto LABEL_76;
          }

          goto LABEL_57;
        }
      }

      else if (!v63)
      {
        goto LABEL_41;
      }

      sub_219BF7214();
      goto LABEL_41;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_218A3243C(v30, v28, type metadata accessor for SearchModel);
      sub_218A324A4(v28, v20, type metadata accessor for SearchModel);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_218A358E8(v28, type metadata accessor for SearchModel);
        sub_218A358E8(v20, type metadata accessor for SearchModel);
        goto LABEL_65;
      }

      v98 = v27;
      (*v108)(v13, v20, v8);
      v33 = v110;
      sub_219BF07D4();
      v34 = sub_219BF0404();
      v35 = v8;
      v36 = *v107;
      (*v107)(v33, v1);
      v37 = [v34 tagType];
      swift_unknownObjectRelease();
      if (v37 == 1)
      {
        v38 = v87;
        sub_219BF07D4();
        v39 = sub_219BF0404();
        v36(v38, v1);
        v27 = v98;
        v40 = v98 >> 62;
        if (v98 >> 62)
        {
          if (sub_219BF7214() < 0)
          {
            goto LABEL_81;
          }

          v84 = sub_219BF7214();
          v20 = v95;
          if (v84 < 0)
          {
            goto LABEL_82;
          }

          v85 = sub_219BF7214();
          v42 = v85 + 1;
          if (__OFADD__(v85, 1))
          {
LABEL_72:
            __break(1u);
            return;
          }
        }

        else
        {
          v41 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v20 = v95;
          v42 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_72;
          }
        }

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        v115 = v27;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          if (!v40)
          {
            if (v42 <= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v8 = v94;
              goto LABEL_64;
            }

LABEL_61:
            v8 = v94;
LABEL_63:
            v27 = sub_219BF7364();
            v115 = v27;
LABEL_64:
            sub_2194B2A1C(0, 0, 1, v39);
            swift_unknownObjectRelease();
            (*v106)(v13, v8);
            sub_218A358E8(v28, type metadata accessor for SearchModel);
            v29 = v96;
LABEL_65:
            v30 = v97;
            goto LABEL_4;
          }
        }

        else if (!v40)
        {
          goto LABEL_61;
        }

        sub_219BF7214();
        v8 = v94;
        goto LABEL_63;
      }

      (*v106)(v13, v35);
      sub_218A358E8(v28, type metadata accessor for SearchModel);
      v8 = v35;
      v29 = v96;
      v30 = v97;
      v27 = v98;
      goto LABEL_59;
    }

    sub_218A358E8(v30, type metadata accessor for SearchResultsGroup);
LABEL_4:
    v26 = v103 + 1;
    v25 = v99;
    if (v103 + 1 == v101)
    {
      return;
    }
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
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
}

uint64_t SearchResults.description.getter()
{
  v1 = v0;
  sub_218713330(0, &qword_280EE83B8, MEMORY[0x277D2E5A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2);
  v4 = v11 - v3;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000019, 0x8000000219CE0580);
  MEMORY[0x21CECC330](*v1, v1[1]);
  MEMORY[0x21CECC330](0x7370756F7267202CLL, 0xE90000000000003DLL);
  v5 = v0[2];
  v6 = type metadata accessor for SearchResultsGroup(0);
  v7 = MEMORY[0x21CECC6D0](v5, v6);
  MEMORY[0x21CECC330](v7);

  MEMORY[0x21CECC330](0xD000000000000010, 0x8000000219CE05A0);
  v8 = type metadata accessor for SearchResults(0);
  sub_218A30B9C(v1 + *(v8 + 32), v4);
  v9 = sub_219BF5484();
  MEMORY[0x21CECC330](v9);

  MEMORY[0x21CECC330](0x6154656D6974202CLL, 0xEC0000003D6E656BLL);
  sub_219BF5CB4();
  MEMORY[0x21CECC330](0x6E696769726F202CLL, 0xEE003D6E6F697461);
  v11[1] = *(v1 + *(v8 + 40));
  sub_219BF7484();
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return v12;
}

uint64_t SearchResults.debugDescription.getter()
{
  v1 = v0;
  sub_218713330(0, &qword_280EE83B8, MEMORY[0x277D2E5A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2);
  v4 = v14 - v3;
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000019, 0x8000000219CE0580);
  MEMORY[0x21CECC330](*v1, v1[1]);
  MEMORY[0x21CECC330](0x7370756F7267202CLL, 0xE90000000000003DLL);
  v5 = v0[2];
  v6 = type metadata accessor for SearchResultsGroup(0);
  v7 = MEMORY[0x21CECC6D0](v5, v6);
  MEMORY[0x21CECC330](v7);

  MEMORY[0x21CECC330](0x686372616573202CLL, 0xED00003D61746144);
  v8 = type metadata accessor for SearchResults(0);
  sub_219BDF034();
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000011, 0x8000000219CE05C0);
  v9 = (v1 + v8[7]);
  v10 = v9[1];
  v14[0] = *v9;
  v14[1] = v10;
  sub_2186E3374();

  v11 = sub_219BF5484();
  MEMORY[0x21CECC330](v11);

  MEMORY[0x21CECC330](0xD000000000000010, 0x8000000219CE05A0);
  sub_218A30B9C(v1 + v8[8], v4);
  v12 = sub_219BF5484();
  MEMORY[0x21CECC330](v12);

  MEMORY[0x21CECC330](0x6154656D6974202CLL, 0xEC0000003D6E656BLL);
  sub_219BF5CB4();
  MEMORY[0x21CECC330](0x6E696769726F202CLL, 0xEE003D6E6F697461);
  v14[0] = *(v1 + v8[10]);
  sub_219BF7484();
  MEMORY[0x21CECC330](41, 0xE100000000000000);
  return v15;
}

unint64_t sub_218A323F8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_218A3241C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_218A3243C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A324A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218A3250C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A357B0(0);
          sub_218A35D58(&qword_27CC0CBD0, sub_218A357B0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8DCF0, 0x277D75088);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A326B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A354D8(0);
          sub_218A35D58(&qword_280E8ECE8, sub_218A354D8, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A35450(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_218A32864(uint64_t a1)
{
  if (!qword_280ED01D0)
  {
    sub_2186CFDE4(255, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280ED01D0);
    }
  }
}

uint64_t sub_218A328CC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35C88(0);
          sub_218A35D58(&unk_27CC0CCD8, sub_218A35C88, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A32A78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218799754(0);
          sub_218A35D58(&qword_27CC0CBF0, sub_218799754, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8DA30, 0x277D312A8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A32C24(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2187E7248(0);
          sub_218A35D58(&qword_280E8EBE0, sub_2187E7248, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A352D0(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A32DD0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_2189FE7E4(0);
          sub_218A35D58(&qword_27CC0CBE8, sub_2189FE7E4, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8E800, 0x277D35488);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A32F7C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218713330(0, &qword_280E8F2C0, type metadata accessor for FollowingTagModel, MEMORY[0x277D83940]);
          sub_218A35DA0(&unk_27CC0CC40, &qword_280E8F2C0, type metadata accessor for FollowingTagModel);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A35350(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for FollowingTagModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A33130(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218713330(0, &qword_27CC0CBD8, _s4ItemCMa, MEMORY[0x277D83940]);
          sub_218A35DA0(&qword_27CC0CBE0, &qword_27CC0CBD8, _s4ItemCMa);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A35350(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s4ItemCMa(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A332E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35CF0(0);
          sub_218A35D58(&unk_280E8EB50, sub_218A35CF0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A352D0(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A33490(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A35818(0);
          sub_218A35D58(&qword_27CC0CC08, sub_218A35818, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8E5D0, 0x277D751E0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A3363C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_219BF7214();
    a2 = v13;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          v8 = MEMORY[0x277D34298];
          sub_218713330(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
          sub_218A35DA0(&qword_27CC0CC70, &qword_280E8EE90, v8);
          for (i = 0; i != v6; ++i)
          {
            v10 = sub_218A35350(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v4 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_219BF4044();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218A337F0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_219BF7214();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_219BF7214();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_218A359B0(0);
          sub_218A35D58(&qword_280E8ED18, sub_218A359B0, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_218A353D0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_2186C6148(0, &qword_280E8E6A8, 0x277D31138);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}