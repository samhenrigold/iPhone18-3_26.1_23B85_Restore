uint64_t sub_21CA73EE8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__subscriptions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

void *sub_21CA73F58()
{
  swift_getKeyPath(byte_21CBC28F8);
  sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  sub_21C7FB8AC(v1, *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 8), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 16));
  return v1;
}

double sub_21CA74024(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  v9 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  v8 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 8);
  v10 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 16);
  if (!v9)
  {
    if (!a1)
    {
      v13 = 0;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  v11 = v10;
  if ((sub_21C714F88(v9, a1) & 1) == 0 || (sub_21C967788(v8, a2) & 1) == 0)
  {
    sub_21C713140(v9, v8, v10);
    goto LABEL_13;
  }

  sub_21C6E8F4C(0, &qword_27CDF76A0, 0x277D82BB8);
  v12 = sub_21CB85DD4();
  sub_21C713140(v9, v8, v10);
  if ((v12 & 1) == 0)
  {
LABEL_13:
    KeyPath = swift_getKeyPath(byte_21CBC28F8);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
    sub_21CB810C4();
    sub_21C713140(a1, a2, a3);

    return result;
  }

  v13 = *v7;
  v8 = v7[1];
  v10 = v7[2];
LABEL_9:
  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;

  sub_21C713140(v13, v8, v10);
  return result;
}

double sub_21CA7424C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC58, &qword_21CBA0EC0);
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v20 = v17 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - v6;
  v24 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState;
  v8 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState);
  v9 = qword_27CDEA4C0;

  if (v9 != -1)
  {
    swift_once();
  }

  v23 = qword_27CE18778;
  sub_21CB86544();
  sub_21C7072A8(v8, v25);

  swift_beginAccess();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
  sub_21CB81E04();

  v10 = *(v5 + 8);
  v17[1] = v5 + 8;
  v18 = v10;
  v10(v7, v4);
  swift_getKeyPath(byte_21CBC27A0);
  v17[0] = v4;
  v25 = v1;
  sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
  sub_21CB810D4();

  v25 = v1;
  swift_getKeyPath(byte_21CBC27A0);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v25 = v1;
  swift_getKeyPath(byte_21CBC27A0);
  sub_21CB810E4();

  v11 = *(v1 + v24);

  sub_21CB86544();
  sub_21C7072A8(v11, v25);

  swift_beginAccess();
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  v12 = v17[0];
  sub_21CB81E04();

  v18(v7, v12);
  swift_getKeyPath(byte_21CBC27A0);
  v25 = v1;
  sub_21CB810D4();

  v25 = v1;
  swift_getKeyPath(byte_21CBC27A0);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v25 = v1;
  swift_getKeyPath(byte_21CBC27A0);
  sub_21CB810E4();

  v13 = *(v1 + v24);

  sub_21CB86544();
  sub_21C7072A8(v13, v25);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC78, &qword_21CBA00C0);
  v14 = v20;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC80, &qword_27CDEAC58, &qword_21CBA0EC0);
  v15 = v22;
  sub_21CB81E04();

  (*(v21 + 8))(v14, v15);
  swift_getKeyPath(byte_21CBC27A0);
  v25 = v1;
  sub_21CB810D4();

  v25 = v1;
  swift_getKeyPath(byte_21CBC27A0);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v25 = v1;
  swift_getKeyPath(byte_21CBC27A0);
  sub_21CB810E4();

  return result;
}

void sub_21CA74988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v3, v5);

  sub_21C8329EC(a2);
}

void sub_21CA74A4C(uint64_t a1)
{
  v71 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v71);
  v70 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v75);
  v5 = (&v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v8 = (&v69 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF58, &unk_21CBA0980);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v69 - v10;
  v74 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v74);
  MEMORY[0x28223BE20](v12);
  v14 = (&v69 - v13);
  MEMORY[0x28223BE20](v15);
  v73 = &v69 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v69 - v21;
  MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  v72 = v1;
  v28 = *(v1 + 24);
  if (!(v28 >> 62))
  {
    v39 = v25;
    v40 = *(a1 + 16);
    v41 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
    v70 = v24;
    v71 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState;

    swift_beginAccess();
    if (!v40)
    {
      a1 = MEMORY[0x277D84F90];
LABEL_35:
      sub_21C8D75F0(v28);
      goto LABEL_59;
    }

    v69 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v42 = a1 + v69;
    a1 = MEMORY[0x277D84F90];
    v75 = *(v39 + 72);
    v73 = v41;
    while (1)
    {
      sub_21CA77220(v42, v14, type metadata accessor for PMAccount);
      v43 = *v14;
      v44 = v14[1];
      swift_getKeyPath(aP_91);
      v76 = v28;
      sub_21CA77288(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
      sub_21CB810D4();

      v45 = *(v28 + 64);
      if (*(v45 + 16))
      {

        v46 = sub_21CB10A3C(v43, v44);
        if (v47)
        {
          v48 = *(v45 + 56) + 32 * v46;
          LODWORD(v74) = *(v48 + 16);
          v49 = *(v48 + 24);

          v50 = v49;

          v51 = *(v72 + v71);
          v52 = qword_27CDEA4C0;

          if (v52 != -1)
          {
            swift_once();
          }

          sub_21CB86544();
          sub_21C7072A8(v51, v76);

          swift_getKeyPath(byte_21CBC28D8);
          sub_21CB81DB4();

          if ((v76 & 1) != 0 || v74 != 1)
          {
            v53 = v70;
            sub_21CA772F0(v14, v70, type metadata accessor for PMAccount);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78 = a1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21C7B0C4C(0, *(a1 + 16) + 1, 1);
              a1 = v78;
            }

            v56 = *(a1 + 16);
            v55 = *(a1 + 24);
            if (v56 >= v55 >> 1)
            {
              sub_21C7B0C4C((v55 > 1), v56 + 1, 1);
              a1 = v78;
            }

            *(a1 + 16) = v56 + 1;
            sub_21CA772F0(v53, a1 + v69 + v56 * v75, type metadata accessor for PMAccount);
            goto LABEL_22;
          }
        }

        else
        {
        }
      }

      sub_21C719780(v14, type metadata accessor for PMAccount);
LABEL_22:
      v42 += v75;
      if (!--v40)
      {
        goto LABEL_35;
      }
    }
  }

  if (v28 >> 62 == 1)
  {
    return;
  }

  if (v28 != 0x8000000000000000)
  {
    if (v28 == 0x8000000000000008)
    {
      v29 = *(a1 + 16);
      if (v29)
      {
        v73 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v30 = a1 + v73;
        v31 = *(v25 + 72);
        a1 = MEMORY[0x277D84F90];
        v69 = v31;
        do
        {
          sub_21CA77220(v30, v27, type metadata accessor for PMAccount);
          sub_21CA77220(&v27[*(v74 + 24)], v8, type metadata accessor for PMAccount.Storage);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v32 = v70;
            sub_21CA772F0(v8, v70, type metadata accessor for PMAccount.MockData);
            sub_21C6EDBAC(v32 + *(v71 + 60), v11, &qword_27CDEAF58, &unk_21CBA0980);
            sub_21C719780(v32, type metadata accessor for PMAccount.MockData);
          }

          else
          {
            v33 = *v8;
            sub_21CB85BD4();
          }

          v34 = sub_21CB85BB4();
          if ((*(*(v34 - 8) + 48))(v11, 1, v34) == 1)
          {
            sub_21C719780(v27, type metadata accessor for PMAccount);
            sub_21C6EA794(v11, &qword_27CDEAF58, &unk_21CBA0980);
          }

          else
          {
            sub_21C6EA794(v11, &qword_27CDEAF58, &unk_21CBA0980);
            sub_21CA772F0(v27, v22, type metadata accessor for PMAccount);
            v35 = swift_isUniquelyReferenced_nonNull_native();
            v77[0] = a1;
            if ((v35 & 1) == 0)
            {
              sub_21C7B0C4C(0, *(a1 + 16) + 1, 1);
              a1 = v77[0];
            }

            v37 = *(a1 + 16);
            v36 = *(a1 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_21C7B0C4C((v36 > 1), v37 + 1, 1);
              a1 = v77[0];
            }

            *(a1 + 16) = v37 + 1;
            v38 = a1 + v73 + v37 * v69;
            v31 = v69;
            sub_21CA772F0(v22, v38, type metadata accessor for PMAccount);
          }

          v30 += v31;
          --v29;
        }

        while (v29);
        goto LABEL_59;
      }

      goto LABEL_58;
    }

    v57 = *(a1 + 16);
    if (!v57)
    {
LABEL_58:
      a1 = MEMORY[0x277D84F90];
      goto LABEL_59;
    }

    v58 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v59 = a1 + v58;
    a1 = MEMORY[0x277D84F90];
    v60 = *(v25 + 72);
    while (1)
    {
      sub_21CA77220(v59, v19, type metadata accessor for PMAccount);
      sub_21CA77220(&v19[*(v74 + 24)], v5, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v61 = v70;
        sub_21CA772F0(v5, v70, type metadata accessor for PMAccount.MockData);
        v62 = *(v61 + *(v71 + 56));
        v63 = v62;
        sub_21C719780(v61, type metadata accessor for PMAccount.MockData);
        if (v62)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v63 = *v5;
        v64 = [*v5 totpGenerators];
        sub_21C6E8F4C(0, &qword_27CDEB030, 0x277D49B78);
        v65 = sub_21CB85824();

        if (v65 >> 62)
        {
          if (sub_21CB85FA4())
          {
LABEL_47:
            if ((v65 & 0xC000000000000001) != 0)
            {
              MEMORY[0x21CF15BD0](0, v65);
              swift_unknownObjectRelease();
            }

            else if (!*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

LABEL_50:

            sub_21CA772F0(v19, v73, type metadata accessor for PMAccount);
            v66 = swift_isUniquelyReferenced_nonNull_native();
            v77[0] = a1;
            if ((v66 & 1) == 0)
            {
              sub_21C7B0C4C(0, *(a1 + 16) + 1, 1);
              a1 = v77[0];
            }

            v68 = *(a1 + 16);
            v67 = *(a1 + 24);
            if (v68 >= v67 >> 1)
            {
              sub_21C7B0C4C((v67 > 1), v68 + 1, 1);
              a1 = v77[0];
            }

            *(a1 + 16) = v68 + 1;
            sub_21CA772F0(v73, a1 + v58 + v68 * v60, type metadata accessor for PMAccount);
            goto LABEL_41;
          }
        }

        else if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_47;
        }
      }

      sub_21C719780(v19, type metadata accessor for PMAccount);
LABEL_41:
      v59 += v60;
      if (!--v57)
      {
        goto LABEL_59;
      }
    }
  }

LABEL_59:
  sub_21CA75504(a1);
}

uint64_t sub_21CA75504(uint64_t a1)
{
  v92 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v92);
  v93 = (&v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v94 = type metadata accessor for PMAppAccountDetailsModel.State(0);
  MEMORY[0x28223BE20](v94);
  v90 = (&v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v87 = &v84 - v5;
  v103 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  MEMORY[0x28223BE20](v103);
  v99 = (&v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v102 = (&v84 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v9 - 8);
  v96 = &v84 - v10;
  v98 = sub_21CB85C44();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v85 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v91);
  v89 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v101 = &v84 - v14;
  MEMORY[0x28223BE20](v15);
  v88 = (&v84 - v16);
  MEMORY[0x28223BE20](v17);
  v100 = (&v84 - v18);
  MEMORY[0x28223BE20](v19);
  v105 = &v84 - v20;
  MEMORY[0x28223BE20](v21);
  v24 = (&v84 - v23);
  v25 = *(a1 + 16);
  v86 = a1;
  v95 = v22;
  if (v25)
  {
    v26 = 0;
    v27 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v108 = *(v22 + 72);
    v104 = v27;
    v106 = a1 + v27;
    v28 = MEMORY[0x277D84F90];
    do
    {
      v29 = v25;
      sub_21CA77220(v106 + v108 * v26, v24, type metadata accessor for PMAccount);
      v30 = *(v107 + 16);
      if (*(v30 + 16) && (v31 = *v24, v32 = v24[1], sub_21CB86484(), sub_21CB854C4(), v33 = sub_21CB864D4(), v34 = -1 << *(v30 + 32), v35 = v33 & ~v34, ((*(v30 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
      {
        v36 = ~v34;
        while (1)
        {
          v37 = (*(v30 + 48) + 16 * v35);
          v38 = *v37 == v31 && v37[1] == v32;
          if (v38 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v35 = (v35 + 1) & v36;
          if (((*(v30 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_21CA772F0(v24, v105, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109 = v28;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v28 + 16) + 1, 1);
          v28 = v109;
        }

        v25 = v29;
        v41 = *(v28 + 16);
        v40 = *(v28 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_21C7B0C4C((v40 > 1), v41 + 1, 1);
          v28 = v109;
        }

        *(v28 + 16) = v41 + 1;
        sub_21CA772F0(v105, v28 + v104 + v41 * v108, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_3:
        sub_21C719780(v24, type metadata accessor for PMAccount);
        v25 = v29;
      }

      ++v26;
    }

    while (v26 != v25);
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  v42 = *(v28 + 16);
  if (v42)
  {
    if (v42 == 1)
    {
      v43 = v100;
      sub_21CA77220(v28 + ((*(v95 + 80) + 32) & ~*(v95 + 80)), v100, type metadata accessor for PMAccount);

      swift_getKeyPath(byte_21CBC2740);
      v44 = v107;
      v111 = v107;
      sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
      sub_21CB810D4();

      v45 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
      swift_beginAccess();
      v46 = v44 + v45;
      v47 = v99;
      sub_21CA77220(v46, v99, type metadata accessor for PMMultipleAccountsDetailsModel.State);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v48 = *v47;
        swift_getKeyPath(a0_51);
        v109 = v48;
        sub_21CA77288(&qword_27CDED418, type metadata accessor for PMAppAccountDetailsModel, &unk_21CBA6850);
        sub_21CB810D4();

        v49 = OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state;
        swift_beginAccess();
        v50 = v48 + v49;
        v51 = v87;
        sub_21CA77220(v50, v87, type metadata accessor for PMAppAccountDetailsModel.State);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v52 = v88;
          sub_21CA772F0(v51, v88, type metadata accessor for PMAccount);
        }

        else
        {
          swift_getKeyPath(byte_21CBC2868);
          swift_getKeyPath(byte_21CBC2890);
          v52 = v88;
          sub_21CB81DB4();
        }

        v70 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v52, v43);

        sub_21C719780(v52, type metadata accessor for PMAccount);
        if (v70)
        {
          v60 = type metadata accessor for PMAccount;
          v61 = v43;
          return sub_21C719780(v61, v60);
        }
      }

      else
      {
        sub_21C719780(v47, type metadata accessor for PMMultipleAccountsDetailsModel.State);
      }

      v71 = v101;
      sub_21CA77220(v43, v101, type metadata accessor for PMAccount);
      type metadata accessor for PMAppAccountDetailsModel(0);
      v72 = swift_allocObject();
      sub_21CB81104();
      v73 = v93;
      sub_21CA77220(v71 + *(v91 + 24), v93, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C719780(v73, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v74 = *v73;
        v75 = [*v73 credentialTypes];

        if (v75 == 4)
        {
          sub_21CA772F0(v101, v72 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAccount);
          swift_storeEnumTagMultiPayload();
LABEL_40:
          v80 = v102;
          *v102 = v72;
          swift_storeEnumTagMultiPayload();
          KeyPath = swift_getKeyPath(byte_21CBC2740);
          MEMORY[0x28223BE20](KeyPath);
          v82 = v107;
          *(&v84 - 2) = v107;
          *(&v84 - 1) = v80;
          v110 = v82;

          sub_21CB810C4();

          sub_21C719780(v43, type metadata accessor for PMAccount);
          v60 = type metadata accessor for PMMultipleAccountsDetailsModel.State;
          v61 = v80;
          return sub_21C719780(v61, v60);
        }
      }

      v76 = v101;
      v77 = v89;
      sub_21CA77220(v101, v89, type metadata accessor for PMAccount);
      type metadata accessor for PMCombinedAccountDetailsModel(0);
      swift_allocObject();
      v78 = sub_21CA4B79C(v77);
      sub_21C719780(v76, type metadata accessor for PMAccount);
      v79 = v90;
      *v90 = v78;
      swift_storeEnumTagMultiPayload();
      sub_21CA772F0(v79, v72 + OBJC_IVAR____TtC17PasswordManagerUI24PMAppAccountDetailsModel__state, type metadata accessor for PMAppAccountDetailsModel.State);
      goto LABEL_40;
    }

    v57 = v102;
    *v102 = v28;
    swift_storeEnumTagMultiPayload();
    v58 = swift_getKeyPath(byte_21CBC2740);
    MEMORY[0x28223BE20](v58);
    v59 = v107;
    *(&v84 - 2) = v107;
    *(&v84 - 1) = v57;
    v111 = v59;
    sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
    sub_21CB810C4();

    v60 = type metadata accessor for PMMultipleAccountsDetailsModel.State;
    v61 = v57;
  }

  else
  {

    v53 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel_groupID;
    v54 = v96;
    sub_21C6EDBAC(v107 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel_groupID, v96, &unk_27CDF20B0, &unk_21CBA0090);
    v55 = v97;
    v56 = v98;
    if ((*(v97 + 48))(v54, 1, v98) == 1)
    {
      sub_21C6EA794(v54, &unk_27CDF20B0, &unk_21CBA0090);
    }

    else
    {
      v62 = v85;
      v63 = (*(v55 + 32))(v85, v54, v56);
      MEMORY[0x28223BE20](v63);
      *(&v84 - 2) = v62;
      v64 = v86;

      sub_21CAE8024(sub_21CA772D0, (&v84 - 4), v64);
      v25 = *(v65 + 16);

      (*(v55 + 8))(v62, v56);
    }

    v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE90, &qword_21CBC2AD0) + 48);
    v67 = v102;
    *v102 = v25 == 0;
    v68 = v107;
    sub_21C6EDBAC(v107 + v53, v67 + v66, &unk_27CDF20B0, &unk_21CBA0090);
    swift_storeEnumTagMultiPayload();
    v69 = swift_getKeyPath(byte_21CBC2740);
    MEMORY[0x28223BE20](v69);
    *(&v84 - 2) = v68;
    *(&v84 - 1) = v67;
    v111 = v68;
    sub_21CA77288(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
    sub_21CB810C4();

    v60 = type metadata accessor for PMMultipleAccountsDetailsModel.State;
    v61 = v67;
  }

  return sub_21C719780(v61, v60);
}

void sub_21CA763D8(uint64_t a1, int a2)
{
  v27 = a2;
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v24 - v8);
  v10 = *(v2 + 24);
  if (!(v10 >> 62))
  {
    v24 = v2;
    v11 = *(a1 + 16);
    v28 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;

    swift_beginAccess();
    if (v11)
    {
      v12 = *(v5 + 72);
      v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v13 = a1 + v25;
      v14 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21CA77220(v13, v9, type metadata accessor for PMAccount);
        v15 = *v9;
        v16 = v9[1];
        swift_getKeyPath(aP_91);
        v29 = v10;
        sub_21CA77288(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);
        sub_21CB810D4();

        v17 = *(v10 + 64);
        if (*(v17 + 16))
        {

          v18 = sub_21CB10A3C(v15, v16);
          if (v19)
          {
            v20 = *(*(v17 + 56) + 32 * v18 + 16);

            if ((v27 & 1) != 0 || !v20)
            {
              sub_21CA772F0(v9, v26, type metadata accessor for PMAccount);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v30 = v14;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_21C7B0C4C(0, *(v14 + 16) + 1, 1);
                v14 = v30;
              }

              v23 = *(v14 + 16);
              v22 = *(v14 + 24);
              if (v23 >= v22 >> 1)
              {
                sub_21C7B0C4C((v22 > 1), v23 + 1, 1);
                v14 = v30;
              }

              *(v14 + 16) = v23 + 1;
              sub_21CA772F0(v26, v14 + v25 + v23 * v12, type metadata accessor for PMAccount);
              goto LABEL_6;
            }
          }

          else
          {
          }
        }

        sub_21C719780(v9, type metadata accessor for PMAccount);
LABEL_6:
        v13 += v12;
        if (!--v11)
        {
          goto LABEL_17;
        }
      }
    }

    v14 = MEMORY[0x277D84F90];
LABEL_17:
    sub_21CA75504(v14);

    sub_21C8D75F0(v10);
  }
}

uint64_t sub_21CA766E8(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v37 = a1;
  v2 = sub_21CB85C44();
  v40 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v35 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC40, &qword_21CBA1A40);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - v4;
  v6 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  v23 = type metadata accessor for PMAccount(0);
  sub_21CA77220(v37 + *(v23 + 24), v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CA772F0(v11, v8, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v8[*(v6 + 72)], v19, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C719780(v8, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v24 = *v11;
    sub_21CB85B94();
  }

  sub_21C7C3490(v19, v22);
  v25 = v40;
  (*(v40 + 16))(v16, v39, v2);
  (*(v25 + 56))(v16, 0, 1, v2);
  v26 = *(v38 + 48);
  sub_21C6EDBAC(v22, v5, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EDBAC(v16, &v5[v26], &unk_27CDF20B0, &unk_21CBA0090);
  v27 = *(v25 + 48);
  if (v27(v5, 1, v2) != 1)
  {
    v29 = v36;
    sub_21C6EDBAC(v5, v36, &unk_27CDF20B0, &unk_21CBA0090);
    if (v27(&v5[v26], 1, v2) != 1)
    {
      v30 = v40;
      v31 = &v5[v26];
      v32 = v35;
      (*(v40 + 32))(v35, v31, v2);
      sub_21CA77288(&qword_27CDEAC48, MEMORY[0x277D49978], MEMORY[0x277D49990]);
      v28 = sub_21CB85574();
      v33 = *(v30 + 8);
      v33(v32, v2);
      sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
      v33(v36, v2);
      sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
      return v28 & 1;
    }

    sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
    (*(v40 + 8))(v29, v2);
    goto LABEL_9;
  }

  sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C6EA794(v22, &unk_27CDF20B0, &unk_21CBA0090);
  if (v27(&v5[v26], 1, v2) != 1)
  {
LABEL_9:
    sub_21C6EA794(v5, &qword_27CDEAC40, &qword_21CBA1A40);
    v28 = 0;
    return v28 & 1;
  }

  sub_21C6EA794(v5, &unk_27CDF20B0, &unk_21CBA0090);
  v28 = 1;
  return v28 & 1;
}

double sub_21CA76CB0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21CA74A4C(v2);
  }

  return result;
}

double sub_21CA76D10(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 24) >> 62 == 1)
    {
      sub_21CA75504(v2);
    }
  }

  return result;
}

double sub_21CA76D80(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState);
      v6 = qword_27CDEA4C0;

      if (v6 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(v5, v8);

      swift_getKeyPath(byte_21CBC27D0);
      swift_getKeyPath(aH_98);
      sub_21CB81DB4();

      v7 = v8;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    sub_21CA763D8(v7, v2);
  }

  return result;
}

uint64_t sub_21CA76F00()
{

  sub_21C8D75F0(*(v0 + 24));
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel_groupID, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C719780(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state, type metadata accessor for PMMultipleAccountsDetailsModel.State);

  sub_21C713140(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 8), *(v0 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 16));
  v1 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21CA76FEC()
{
  sub_21CA76F00();

  return swift_deallocClassInstance();
}

uint64_t sub_21CA7704C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA770B0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE90, &qword_21CBC2AD0) + 48);
  *v7 = 0;
  v9 = sub_21CB85C44();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  swift_storeEnumTagMultiPayload();
  *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__subscriptions) = MEMORY[0x277D84FA0];
  v10 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__accountsState;
  v11 = (v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  *v11 = 0;
  v11[1] = 0;
  v11[2] = 0;
  sub_21CB81104();
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  sub_21C6EDBAC(a3, v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel_groupID, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21C940A00(a2);
  sub_21CA7424C();
  sub_21C6EA794(a3, &unk_27CDF20B0, &unk_21CBA0090);
  return v3;
}

uint64_t sub_21CA77220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA77288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CA772F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21CA77374()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = (v0[2] + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *v4 = v1;
  v4[1] = v2;
  v4[2] = v3;
  sub_21C7FB8AC(v1, v2, v3);
  sub_21C713140(v5, v6, v7);
}

id sub_21CA77434@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CBC2A20);
  sub_21C706138(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
  sub_21CB810D4();

  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration);
  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 8);
  v6 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__deleteAccountAlertConfiguration + 16);
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return sub_21C7FB8AC(v4, v5, v6);
}

double sub_21CA774F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  sub_21C7FB8AC(*a1, v2, v3);
  return sub_21CA74024(v1, v2, v3);
}

uint64_t sub_21CA77544@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  v84 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v83 = &v76 - v3;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BB0, &qword_21CBC29A0);
  MEMORY[0x28223BE20](v99);
  v86 = &v76 - v4;
  v80 = sub_21CB82FD4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BB8, &qword_21CBC29A8);
  v87 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = &v76 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BC0, &qword_21CBC29B0);
  MEMORY[0x28223BE20](v97);
  v98 = &v76 - v7;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BC8, &qword_21CBC29B8);
  MEMORY[0x28223BE20](v92);
  *&v94 = &v76 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BD0, &qword_21CBC29C0);
  MEMORY[0x28223BE20](v96);
  *&v95 = &v76 - v9;
  v10 = type metadata accessor for PMMultipleAccountsDetailsView(0);
  v88 = *(v10 - 8);
  v11 = *(v88 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v90 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BD8, &unk_21CBC29C8);
  v82 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v81 = &v76 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v77 = *(v13 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  v19 = type metadata accessor for PMMultipleAccountsDetailsModel.State(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = v2;
  v22 = v1;
  sub_21CB85084();
  v23 = v101;
  swift_getKeyPath(aH_99);
  *&v101 = v23;
  sub_21C706138(&qword_27CDEFE68, type metadata accessor for PMMultipleAccountsDetailsModel, &unk_21CBC2720);
  sub_21CB810D4();

  v24 = OBJC_IVAR____TtC17PasswordManagerUI30PMMultipleAccountsDetailsModel__state;
  swift_beginAccess();
  sub_21CA7A4A4(v23 + v24, v21, type metadata accessor for PMMultipleAccountsDetailsModel.State);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *v21;

      sub_21CB85084();
      v27 = *(v101 + 24);
      sub_21C940A00(v27);

      KeyPath = swift_getKeyPath(byte_21CBC2A80);
      v29 = swift_getKeyPath(byte_21CBC2AA8);
      *&v101 = v26;
      *(&v101 + 1) = KeyPath;
      v90 = v26;
      *&v102 = v27;
      *(&v102 + 1) = v29;
      LOBYTE(v103) = 1;
      v30 = v79;
      v31 = v78;
      v32 = v80;
      (*(v79 + 104))(v78, *MEMORY[0x277CDDDC0], v80);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C28, &qword_21CBC2A60);
      v91 = sub_21CA7A114();
      v34 = v85;
      sub_21CB84684();
      (*(v30 + 8))(v31, v32);

      sub_21C8D75F0(v27);

      v35 = v87;
      v36 = v89;
      (*(v87 + 16))(v94, v34, v89);
      swift_storeEnumTagMultiPayload();
      v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C18, &qword_21CBC2A58);
      v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
      v39 = sub_21C6EADEC(&qword_27CDF6C20, &qword_27CDF6C18, &qword_21CBC2A58, &unk_21CBCA068);
      v40 = sub_21C8F0690();
      *&v101 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      *(&v101 + 1) = v40;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v101 = v37;
      *(&v101 + 1) = v38;
      *&v102 = v39;
      *(&v102 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      *&v101 = v33;
      *(&v101 + 1) = v91;
      swift_getOpaqueTypeConformance2();
      v42 = v95;
      sub_21CB83494();
      sub_21C6EDBAC(v42, v98, &qword_27CDF6BD0, &qword_21CBC29C0);
      swift_storeEnumTagMultiPayload();
      sub_21CA79F84();
      sub_21CA7A284();
      sub_21CB83494();

      sub_21C6EA794(v42, &qword_27CDF6BD0, &qword_21CBC29C0);
      return (*(v35 + 8))(v34, v36);
    }

    else
    {
      sub_21CA79090(*v21, &v101);

      v62 = v101;
      v63 = BYTE1(v102);
      v64 = v102;
      *&v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6BE0, &unk_21CBC2A00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
      sub_21CA79C98();
      v65 = sub_21C8F0690();
      v104 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      v105 = v65;
      swift_getOpaqueTypeConformance2();
      v66 = v86;
      sub_21CB84894();
      sub_21CA79E2C(v62, *(&v62 + 1), v64, v63);
      v67 = v83;
      v68 = v91;
      sub_21CB85094();
      swift_getKeyPath(asc_21CBC2A20);
      sub_21CB850B4();

      (*(v84 + 8))(v67, v68);
      v94 = v102;
      v95 = v101;
      v69 = v103;
      v70 = v90;
      sub_21CA7A4A4(v22, v90, type metadata accessor for PMMultipleAccountsDetailsView);
      v71 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v72 = swift_allocObject();
      sub_21CA79E48(v70, v72 + v71);
      v73 = v98;
      v74 = v66 + *(v99 + 36);
      v75 = v94;
      *v74 = v95;
      *(v74 + 16) = v75;
      *(v74 + 32) = v69;
      *(v74 + 40) = &unk_21CBC2A50;
      *(v74 + 48) = v72;
      sub_21C6EDBAC(v66, v73, &qword_27CDF6BB0, &qword_21CBC29A0);
      swift_storeEnumTagMultiPayload();
      sub_21CA79F84();
      sub_21CA7A284();
      sub_21CB83494();
      return sub_21C6EA794(v66, &qword_27CDF6BB0, &qword_21CBC29A0);
    }
  }

  else
  {
    v44 = *v21;
    v45 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFE90, &qword_21CBC2AD0) + 48);
    v76 = v18;
    sub_21C7C3490(v45, v18);
    v46 = v22;
    v47 = v90;
    sub_21CA7A4A4(v46, v90, type metadata accessor for PMMultipleAccountsDetailsView);
    sub_21C6EDBAC(v18, v15, &unk_27CDF20B0, &unk_21CBA0090);
    v48 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v49 = (v11 + *(v77 + 80) + v48) & ~*(v77 + 80);
    v50 = swift_allocObject();
    sub_21CA79E48(v47, v50 + v48);
    sub_21C7C3490(v15, v50 + v49);
    *(v50 + v49 + v14) = v44;
    *&v101 = sub_21CA7A3A4;
    *(&v101 + 1) = v50;
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C18, &qword_21CBC2A58);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
    v53 = sub_21C6EADEC(&qword_27CDF6C20, &qword_27CDF6C18, &qword_21CBC2A58, &unk_21CBCA068);
    v54 = sub_21C8F0690();
    v104 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
    v105 = v54;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = v81;
    sub_21CB84894();

    v57 = v82;
    v58 = v93;
    (*(v82 + 16))(v94, v56, v93);
    swift_storeEnumTagMultiPayload();
    *&v101 = v51;
    *(&v101 + 1) = v52;
    *&v102 = v53;
    *(&v102 + 1) = v55;
    swift_getOpaqueTypeConformance2();
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C28, &qword_21CBC2A60);
    v60 = sub_21CA7A114();
    *&v101 = v59;
    *(&v101 + 1) = v60;
    swift_getOpaqueTypeConformance2();
    v61 = v95;
    sub_21CB83494();
    sub_21C6EDBAC(v61, v98, &qword_27CDF6BD0, &qword_21CBC29C0);
    swift_storeEnumTagMultiPayload();
    sub_21CA79F84();
    sub_21CA7A284();
    sub_21CB83494();
    sub_21C6EA794(v61, &qword_27CDF6BD0, &qword_21CBC29C0);
    (*(v57 + 8))(v56, v58);
    return sub_21C6EA794(v76, &unk_27CDF20B0, &unk_21CBA0090);
  }
}

uint64_t sub_21CA7841C@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v55 = a2;
  v45 = a1;
  v60 = a3;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C60, &qword_21CBC2AD8);
  MEMORY[0x28223BE20](v58);
  v59 = &v43 - v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C68, &qword_21CBC2AE0);
  MEMORY[0x28223BE20](v51);
  v53 = &v43 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C70, &qword_21CBC2AE8);
  MEMORY[0x28223BE20](v46);
  v47 = &v43 - v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C78, &qword_21CBC2AF0);
  MEMORY[0x28223BE20](v52);
  v48 = &v43 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C80, &qword_21CBC2AF8);
  MEMORY[0x28223BE20](v57);
  v54 = &v43 - v7;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC10, &unk_21CBC2B00);
  MEMORY[0x28223BE20](v49);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v56 = type metadata accessor for PMEmptyStateDetailView(0);
  MEMORY[0x28223BE20](v56);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v23 = (&v43 - v22);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEC18, &qword_21CBAAD20);
  MEMORY[0x28223BE20](v50);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v43 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  sub_21CB85084();
  v29 = *(v61 + 24);
  sub_21C940A00(v29);

  if (!(v29 >> 62))
  {
    sub_21C8D75F0(v29);
    v31 = sub_21CB85C44();
    (*(*(v31 - 8) + 56))(v15, 5, 6, v31);
    sub_21C9E14F8(v15, v55 & 1, v20);
    sub_21CA7A4A4(v20, v9, type metadata accessor for PMEmptyStateDetailView);
    goto LABEL_5;
  }

  if (v29 >> 62 == 1)
  {
    sub_21C8D75F0(v29);
    v30 = sub_21CB85C44();
    (*(*(v30 - 8) + 56))(v15, 6, 6, v30);
    sub_21C9E14F8(v15, v55 & 1, v20);
    sub_21CA7A4A4(v20, v9, type metadata accessor for PMEmptyStateDetailView);
LABEL_5:
    swift_storeEnumTagMultiPayload();
    sub_21C706138(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    sub_21CB83494();
    sub_21C6EDBAC(v25, v53, &qword_27CDEEC18, &qword_21CBAAD20);
    swift_storeEnumTagMultiPayload();
    sub_21CA7A598();
    sub_21C87CAD0();
    v32 = v54;
    sub_21CB83494();
    sub_21C6EA794(v25, &qword_27CDEEC18, &qword_21CBAAD20);
    sub_21C6EDBAC(v32, v59, &qword_27CDF6C80, &qword_21CBC2AF8);
    swift_storeEnumTagMultiPayload();
    sub_21CA7A50C();
    goto LABEL_6;
  }

  if (v29 == 0x8000000000000000)
  {
    v35 = sub_21CB85C44();
    v36 = *(v35 - 8);
    v37 = *(v36 + 48);
    v38 = v45;
    v43 = v36 + 48;
    v44 = v37;
    if (v37(v45, 1, v35) == 1)
    {
      (*(v36 + 56))(v15, 1, 6, v35);
      sub_21C9E14F8(v15, v55 & 1, v20);
      v23 = v20;
    }

    else
    {
      sub_21C6EDBAC(v38, v12, &unk_27CDF20B0, &unk_21CBA0090);
      result = v44(v12, 1, v35);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      (*(v36 + 32))(v18, v12, v35);
      (*(v36 + 56))(v18, 0, 6, v35);
      sub_21C9E14F8(v18, v55 & 1, v23);
    }

    sub_21CA7A4A4(v23, v9, type metadata accessor for PMEmptyStateDetailView);
    swift_storeEnumTagMultiPayload();
    sub_21C706138(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    sub_21CB83494();
    sub_21CA7A654(v23);
    sub_21C6EDBAC(v28, v47, &qword_27CDEEC18, &qword_21CBAAD20);
    swift_storeEnumTagMultiPayload();
    sub_21C87CAD0();
    v41 = v48;
    sub_21CB83494();
    sub_21C6EDBAC(v41, v53, &qword_27CDF6C78, &qword_21CBC2AF0);
    swift_storeEnumTagMultiPayload();
    sub_21CA7A598();
    v42 = v54;
    sub_21CB83494();
    sub_21C6EA794(v41, &qword_27CDF6C78, &qword_21CBC2AF0);
    sub_21C6EDBAC(v42, v59, &qword_27CDF6C80, &qword_21CBC2AF8);
    swift_storeEnumTagMultiPayload();
    sub_21CA7A50C();
    sub_21CB83494();
    sub_21C6EA794(v42, &qword_27CDF6C80, &qword_21CBC2AF8);
    return sub_21C6EA794(v28, &qword_27CDEEC18, &qword_21CBAAD20);
  }

  if (v29 == 0x8000000000000008)
  {
    v34 = sub_21CB85C44();
    (*(*(v34 - 8) + 56))(v15, 2, 6, v34);
    sub_21C9E14F8(v15, v55 & 1, v20);
    sub_21CA7A4A4(v20, v59, type metadata accessor for PMEmptyStateDetailView);
    swift_storeEnumTagMultiPayload();
    sub_21CA7A50C();
    sub_21C706138(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    sub_21CB83494();
    return sub_21CA7A654(v20);
  }

  v39 = sub_21CB85C44();
  (*(*(v39 - 8) + 56))(v15, 3, 6, v39);
  sub_21C9E14F8(v15, v55 & 1, v20);
  sub_21CA7A4A4(v20, v47, type metadata accessor for PMEmptyStateDetailView);
  swift_storeEnumTagMultiPayload();
  sub_21C87CAD0();
  sub_21C706138(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
  v40 = v48;
  sub_21CB83494();
  sub_21C6EDBAC(v40, v53, &qword_27CDF6C78, &qword_21CBC2AF0);
  swift_storeEnumTagMultiPayload();
  sub_21CA7A598();
  v32 = v54;
  sub_21CB83494();
  sub_21C6EA794(v40, &qword_27CDF6C78, &qword_21CBC2AF0);
  sub_21C6EDBAC(v32, v59, &qword_27CDF6C80, &qword_21CBC2AF8);
  swift_storeEnumTagMultiPayload();
  sub_21CA7A50C();
LABEL_6:
  sub_21CB83494();
  sub_21C6EA794(v32, &qword_27CDF6C80, &qword_21CBC2AF8);
  return sub_21CA7A654(v20);
}

double sub_21CA79090@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v65 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v65 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v65 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v65 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  sub_21CB85084();
  v21 = *(v75 + 24);
  sub_21C940A00(v21);

  v71 = a1;
  v72 = a2;
  v67 = v20;
  v68 = v17;
  if (!(v21 >> 62))
  {
    sub_21C8D75F0(v21);
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v66 = sub_21CB81034();
    v22 = *(v66 - 8);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    sub_21CB81014();
    sub_21CB81014();
    v25 = v70;
    sub_21CB81014();
    v26 = v69;
    sub_21CB81014();
    sub_21CB80FE4();
    v27 = *(v5 + 8);
    v27(v26, v4);
    v27(v25, v4);
    v27(v11, v4);
    v27(v14, v4);
    swift_setDeallocating();
    (*(v22 + 8))(v24 + v23, v66);
    swift_deallocClassInstance();
    v28 = v67;
    sub_21CB81004();
    v27(v68, v4);
    v27(v28, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21CBA0690;
    v30 = *(v71 + 16);
    v31 = MEMORY[0x277D83C10];
    *(v29 + 56) = MEMORY[0x277D83B88];
    *(v29 + 64) = v31;
    *(v29 + 32) = v30;
    v32 = sub_21CB85594();
    v34 = v33;

    *&v73 = v32;
    *(&v73 + 1) = v34;
    LOBYTE(v74) = 1;
LABEL_8:
    sub_21C989C28();
    sub_21CB83494();
    v73 = v75;
    v74 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C08, &qword_21CBC2A18);
    sub_21CA79DA8();
    goto LABEL_9;
  }

  if (v21 >> 62 == 1)
  {
    sub_21C8D75F0(v21);
LABEL_7:
    sub_21CB81014();
    sub_21CB81014();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
    v66 = sub_21CB81034();
    v48 = *(v66 - 8);
    v49 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v50 = swift_allocObject();
    sub_21CB81014();
    sub_21CB81014();
    v51 = v70;
    sub_21CB81014();
    v52 = v69;
    sub_21CB81014();
    sub_21CB80FE4();
    v53 = *(v5 + 8);
    v53(v52, v4);
    v53(v51, v4);
    v53(v11, v4);
    v53(v14, v4);
    swift_setDeallocating();
    (*(v48 + 8))(v50 + v49, v66);
    swift_deallocClassInstance();
    v54 = v67;
    sub_21CB81004();
    v53(v68, v4);
    v53(v54, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_21CBA0690;
    v56 = *(v71 + 16);
    v57 = MEMORY[0x277D83C10];
    *(v55 + 56) = MEMORY[0x277D83B88];
    *(v55 + 64) = v57;
    *(v55 + 32) = v56;
    v58 = sub_21CB85594();
    v60 = v59;

    *&v73 = v58;
    *(&v73 + 1) = v60;
    LOBYTE(v74) = 0;
    goto LABEL_8;
  }

  if (v21 != 0x8000000000000008)
  {
    goto LABEL_7;
  }

  sub_21CB81014();
  sub_21CB81014();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
  v66 = sub_21CB81034();
  v35 = *(v66 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  sub_21CB81014();
  sub_21CB81014();
  v38 = v70;
  sub_21CB81014();
  v39 = v69;
  sub_21CB81014();
  sub_21CB80FE4();
  v40 = *(v5 + 8);
  v40(v39, v4);
  v40(v38, v4);
  v40(v11, v4);
  v40(v14, v4);
  swift_setDeallocating();
  (*(v35 + 8))(v37 + v36, v66);
  swift_deallocClassInstance();
  v41 = v67;
  sub_21CB81004();
  v40(v68, v4);
  v40(v41, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_21CBA0690;
  v43 = *(v71 + 16);
  v44 = MEMORY[0x277D83C10];
  *(v42 + 56) = MEMORY[0x277D83B88];
  *(v42 + 64) = v44;
  *(v42 + 32) = v43;
  v45 = sub_21CB85594();
  v47 = v46;

  *&v73 = v45;
  *(&v73 + 1) = v47;
  v74 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6C08, &qword_21CBC2A18);
  sub_21CA79DA8();
  sub_21C989C28();
LABEL_9:
  sub_21CB83494();
  result = *&v75;
  v62 = v76;
  v63 = v77;
  v64 = v72;
  *v72 = v75;
  *(v64 + 16) = v62;
  *(v64 + 17) = v63;
  return result;
}

uint64_t sub_21CA79B0C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_21CB858B4();
  v2[5] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CA79BA4, v4, v3);
}

uint64_t sub_21CA79BA4()
{
  v1 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6B90, &unk_21CBC2920);
  sub_21CB85084();
  v2 = v0[2];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_21CB85254();
  sub_21CB82524();

  v4 = v0[1];

  return v4();
}

unint64_t sub_21CA79C98()
{
  result = qword_27CDF6BE8;
  if (!qword_27CDF6BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6BE0, &unk_21CBC2A00);
    sub_21CA79D1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6BE8);
  }

  return result;
}

unint64_t sub_21CA79D1C()
{
  result = qword_27CDF6BF0;
  if (!qword_27CDF6BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6BF8, &qword_21CBC2A10);
    sub_21CA79DA8();
    sub_21C989C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6BF0);
  }

  return result;
}

unint64_t sub_21CA79DA8()
{
  result = qword_27CDF6C00;
  if (!qword_27CDF6C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C08, &qword_21CBC2A18);
    sub_21C989C28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C00);
  }

  return result;
}

uint64_t sub_21CA79E2C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    return sub_21CA79E40();
  }
}

uint64_t sub_21CA79E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMMultipleAccountsDetailsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA79EAC(uint64_t a1)
{
  v4 = *(type metadata accessor for PMMultipleAccountsDetailsView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21CA79B0C(a1, v1 + v5);
}

unint64_t sub_21CA79F84()
{
  result = qword_27CDF6C10;
  if (!qword_27CDF6C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6BD0, &qword_21CBC29C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C18, &qword_21CBC2A58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
    sub_21C6EADEC(&qword_27CDF6C20, &qword_27CDF6C18, &qword_21CBC2A58, &unk_21CBCA068);
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C28, &qword_21CBC2A60);
    sub_21CA7A114();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C10);
  }

  return result;
}

unint64_t sub_21CA7A114()
{
  result = qword_27CDF6C30;
  if (!qword_27CDF6C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C28, &qword_21CBC2A60);
    sub_21CA7A1CC();
    sub_21C6EADEC(&qword_27CDEB1B8, &qword_27CDEB1C0, &unk_21CBA1390, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C30);
  }

  return result;
}

unint64_t sub_21CA7A1CC()
{
  result = qword_27CDF6C38;
  if (!qword_27CDF6C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C40, &qword_21CBC2A68);
    sub_21C95DCB4();
    sub_21C6EADEC(&qword_27CDF6C48, &qword_27CDF6C50, &unk_21CBC2A70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C38);
  }

  return result;
}

unint64_t sub_21CA7A284()
{
  result = qword_27CDF6C58;
  if (!qword_27CDF6C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6BB0, &qword_21CBC29A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6BE0, &unk_21CBC2A00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0560, &qword_21CBAEF20);
    sub_21CA79C98();
    sub_21C8F0690();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C58);
  }

  return result;
}

uint64_t sub_21CA7A3A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMMultipleAccountsDetailsView(0) - 8);
  v4 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + *(v3 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090) - 8);
  v6 = v1 + ((v4 + *(v5 + 80)) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_21CA7841C(v6, v7, a1);
}

uint64_t sub_21CA7A4A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CA7A50C()
{
  result = qword_27CDF6C88;
  if (!qword_27CDF6C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C80, &qword_21CBC2AF8);
    sub_21CA7A598();
    sub_21C87CAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C88);
  }

  return result;
}

unint64_t sub_21CA7A598()
{
  result = qword_27CDF6C90;
  if (!qword_27CDF6C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6C78, &qword_21CBC2AF0);
    sub_21C87CAD0();
    sub_21C706138(&qword_27CDEEC28, type metadata accessor for PMEmptyStateDetailView, &unk_21CBBAF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C90);
  }

  return result;
}

uint64_t sub_21CA7A654(uint64_t a1)
{
  v2 = type metadata accessor for PMEmptyStateDetailView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CA7A6CC()
{
  result = qword_27CDF6C98;
  if (!qword_27CDF6C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6CA0, &unk_21CBC2B10);
    sub_21CA79F84();
    sub_21CA7A284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6C98);
  }

  return result;
}

uint64_t sub_21CA7A784@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_21CB829D4();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  MEMORY[0x28223BE20](v2);
  v34 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21CB83554();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_21CB83584();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CC8, &qword_21CBC2C90);
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CD0, &qword_21CBC2C98);
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CD8, &qword_21CBC2CA0);
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x28223BE20](v14);
  v26 = &v26 - v15;
  v40 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CE0, &qword_21CBC2CA8);
  sub_21C6EADEC(&qword_27CDF6CE8, &qword_27CDF6CE0, &qword_21CBC2CA8, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  type metadata accessor for _PMMyPasswordsAccountsView(0);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C706180(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  sub_21CB82B54();
  swift_getKeyPath(byte_21CBC2CB0);
  sub_21CB82B74();

  sub_21CB83544();
  sub_21CB83534();
  (*(v27 + 8))(v6, v29);
  v25 = sub_21C6EADEC(&qword_27CDF6CF0, &qword_27CDF6CC8, &qword_21CBC2C90, MEMORY[0x277CDE580]);
  sub_21CB84114();

  (*(v30 + 8))(v8, v32);
  v16 = v11;
  v17 = v26;
  (*(v28 + 8))(v16, v9);
  v18 = v34;
  sub_21CB85294();
  v43 = v9;
  v44 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_21C706180(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v21 = v31;
  v22 = v37;
  sub_21CB849C4();
  (*(v38 + 8))(v18, v22);
  (*(v33 + 8))(v13, v21);
  if (qword_27CDEA4A0 != -1)
  {
    swift_once();
  }

  v41 = qword_27CE18758;
  v42 = qword_27CE18760;
  v43 = v21;
  v44 = v22;
  v45 = OpaqueTypeConformance2;
  v46 = v20;
  swift_getOpaqueTypeConformance2();
  sub_21C71F3FC();
  v23 = v36;
  sub_21CB842F4();
  return (*(v35 + 8))(v17, v23);
}

uint64_t sub_21CA7AE58@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3958, &qword_21CBB8708);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3960, &qword_21CBB8710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  type metadata accessor for _PMMyPasswordsAccountsView(0);
  swift_getKeyPath(byte_21CBC2CD8);
  swift_getKeyPath(aP_92);
  sub_21CB81DB4();

  v13 = *(v22[1] + 16);

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB68, &qword_21CBB8730);
    sub_21C6EADEC(&qword_27CDF3988, &qword_27CDEDB68, &qword_21CBB8730, &unk_21CBA7010);
    sub_21CB85054();
    (*(v4 + 32))(v12, v6, v3);
    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  (*(v4 + 56))(v12, v14, 1, v3);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C706180(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  v15 = sub_21CB82B84();
  v17 = v16;
  v18 = [objc_opt_self() safari_browserDefaults];
  v19 = sub_21CB81E74();
  sub_21CA7B880(v12, v9);
  sub_21CA7B880(v9, a2);
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CF8, &qword_21CBC2D28) + 48));
  *v20 = v15;
  v20[1] = v17;
  v20[2] = v19;

  sub_21CA7B8F0(v12);

  return sub_21CA7B8F0(v9);
}

uint64_t sub_21CA7B1BC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 2, 2, v2);
  type metadata accessor for PMSystemSettingsNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDB68, &qword_21CBB8730);
  v4 = a1 + v3[19];
  result = swift_getKeyPath(byte_21CBC2BD0);
  *v4 = result;
  *(v4 + 8) = 0;
  v6 = (a1 + v3[18]);
  *v6 = sub_21CA7B2A8;
  v6[1] = 0;
  v7 = (a1 + v3[17]);
  *v7 = sub_21CA7B364;
  v7[1] = 0;
  return result;
}

void *sub_21CA7B2A8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 2, 2, v2);
  v3 = (a1 + *(type metadata accessor for PMRecentlyDeletedAccountsView(0) + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE0, &qword_21CBB8760);
  *(swift_allocObject() + 16) = 0;
  result = sub_21CB84D44();
  *v3 = v5;
  v3[1] = v6;
  return result;
}

uint64_t sub_21CA7B364@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 2, 2, v2);
  v3 = type metadata accessor for PMRecentlyDeletedRow(0);
  v4 = *(v3 + 20);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v12);

  type metadata accessor for PMAccountsState(0);
  sub_21C706180(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = a1 + *(v3 + 24);
  result = swift_getKeyPath(aH_100);
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_21CA7B4E0@<X0>(void *a1@<X8>)
{
  *a1 = swift_getKeyPath(asc_21CBC2B98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for _PMMyPasswordsAccountsView(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath(byte_21CBC2BD0);
  v3[8] = 0;
  v4 = v2[6];
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a1 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v13);

  type metadata accessor for PMAccountsState(0);
  sub_21C706180(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = (a1 + v2[7]);
  type metadata accessor for PMAccountsListModel(0);
  sub_21C706180(&qword_27CDEC988, type metadata accessor for PMAccountsListModel, &unk_21CBA5618);
  result = sub_21CB82B84();
  *v10 = result;
  v10[1] = v12;
  return result;
}

uint64_t sub_21CA7B6A4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB85C44();
  (*(*(v2 - 8) + 56))(a1, 2, 2, v2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6CA8, &qword_21CBC2B90);
  v4 = (a1 + *(result + 36));
  *v4 = sub_21CA7B4E0;
  v4[1] = 0;
  return result;
}

uint64_t type metadata accessor for _PMMyPasswordsAccountsView(uint64_t a1)
{
  result = qword_27CDF6CB0;
  if (!qword_27CDF6CB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA7B7A8(uint64_t a1)
{
  sub_21C721A6C(319);
  if (v1 <= 0x3F)
  {
    sub_21C7205C4();
    if (v2 <= 0x3F)
    {
      sub_21C705CFC(319);
      if (v3 <= 0x3F)
      {
        sub_21C713510(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_21CA7B880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3960, &qword_21CBB8710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA7B8F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF3960, &qword_21CBB8710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CA7B984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v39 = a5;
  v9 = sub_21CB83124();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED670, &qword_21CBA7280);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D00, &qword_21CBC2E40);
  v14 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v16 = &v38 - v15;
  v40 = a1;
  v41 = a2;
  v42 = a3;
  v43 = a4 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED680, &unk_21CBA7290);
  sub_21C830C8C();
  sub_21CB84C84();
  KeyPath = swift_getKeyPath(byte_21CBC2E48);
  LOBYTE(v45) = 0;
  v17 = sub_21C830DF8();
  v18 = sub_21C830EB0();
  sub_21CB840E4();

  (*(v11 + 8))(v13, v10);
  swift_getKeyPath(byte_21CBC2E70);
  swift_getKeyPath(aX_68);
  sub_21CB81DB4();

  v19 = *(KeyPath + 16);

  sub_21CB83114();
  sub_21CB83104();
  KeyPath = v19;
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v20 = sub_21CB84034();
  v22 = v21;
  KeyPath = v10;
  v45 = &type metadata for PMAccountsListNavigationCellLabelStyle;
  v46 = v17;
  LOBYTE(v10) = v23 & 1;
  v47 = v18;
  swift_getOpaqueTypeConformance2();
  v25 = v38;
  v24 = v39;
  sub_21CB84774();
  sub_21C74A72C(v20, v22, v10);

  LOBYTE(v13) = sub_21CB83D34();
  sub_21CB81F24();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  (*(v14 + 8))(v16, v25);
  v34 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D08, &unk_21CBC8240) + 36);
  *v34 = v13;
  *(v34 + 8) = v27;
  *(v34 + 16) = v29;
  *(v34 + 24) = v31;
  *(v34 + 32) = v33;
  *(v34 + 40) = 0;
  v35 = swift_getKeyPath(byte_21CBC2E48);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D10, &unk_21CBC2EC0);
  v37 = v24 + *(result + 36);
  *v37 = v35;
  *(v37 + 8) = 0;
  return result;
}

uint64_t sub_21CA7BE08@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CDEA4A0 != -1)
  {
    swift_once();
  }

  sub_21C71F3FC();

  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

double sub_21CA7BEAC@<D0>(uint64_t a1@<X2>, char a2@<W3>, uint64_t a3@<X8>)
{
  v6 = sub_21CB82F84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_21CB85B04();
    v12 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(a1, 0);
    (*(v7 + 8))(v9, v6);
    if ((v19 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17[0] = sub_21CB84BB4();
    memset(&v17[1], 0, 32);
    v18 = 1;
    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_21CB84BB4();
  v11 = sub_21CB84A74();
  v17[0] = v10;
  v17[1] = v11;
  *&v17[2] = vdupq_n_s64(0x4040000000000000uLL);
  v17[4] = 0x4018000000000000;
  v18 = 0;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  sub_21C830D18();
  sub_21CB83494();
  result = *&v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  *a3 = v19;
  *(a3 + 16) = v14;
  *(a3 + 32) = v15;
  *(a3 + 40) = v16;
  return result;
}

void sub_21CA7C0F4(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBC2E70);
  swift_getKeyPath(aX_68);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CA7C174(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBC2E70);
  swift_getKeyPath(aX_68);

  return sub_21CB81DC4();
}

unint64_t sub_21CA7C1F0()
{
  result = qword_27CDF6D18;
  if (!qword_27CDF6D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6D10, &unk_21CBC2EC0);
    sub_21CA7C27C();
    sub_21C9CF6A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6D18);
  }

  return result;
}

unint64_t sub_21CA7C27C()
{
  result = qword_27CDF6D20;
  if (!qword_27CDF6D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6D08, &unk_21CBC8240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6D00, &qword_21CBC2E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDED670, &qword_21CBA7280);
    sub_21C830DF8();
    sub_21C830EB0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6D20);
  }

  return result;
}

unint64_t sub_21CA7C3AC()
{
  result = qword_27CDF6D28;
  if (!qword_27CDF6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6D28);
  }

  return result;
}

unint64_t sub_21CA7C404()
{
  result = qword_27CDF6D30;
  if (!qword_27CDF6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6D30);
  }

  return result;
}

void sub_21CA7C478(uint64_t a1)
{
  sub_21CA7C4EC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMSharingGroup(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21CA7C4EC(uint64_t a1)
{
  if (!qword_27CDF6D48)
  {
    type metadata accessor for PMSharingGroup(255);
    type metadata accessor for PMDeviceSharingAvailability(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CDF6D48);
    }
  }
}

uint64_t sub_21CA7C5D4(uint64_t a1)
{
  v2 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v57 - v9;
  v11 = type metadata accessor for PMNewGroupFlow.Step(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA83DA4(v1, v13, type metadata accessor for PMNewGroupFlow.Step);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v58 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E58, &unk_21CBC3290) + 48)];
      sub_21CA83E0C(v13, v10, type metadata accessor for PMSharingGroup);
      MEMORY[0x21CF15F90](2);
      sub_21CB85C44();
      sub_21C7061C8(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
      sub_21CB85494();
      sub_21CB854C4();
      v15 = *&v10[*(v2 + 24)];
      MEMORY[0x21CF15F90](*(v15 + 16));
      v16 = *(v15 + 16);
      if (!v16)
      {
LABEL_48:
        sub_21CB854C4();
        v56 = v58;
        sub_21CB85DE4();

        v41 = v10;
        return sub_21C7197E0(v41, type metadata accessor for PMSharingGroup);
      }

      v17 = (v15 + 32);
      while (1)
      {
        v18 = v17[2];
        v19 = *v17;
        v61 = v17[1];
        v62 = v18;
        v60 = v19;
        v20 = v17[3];
        v21 = v17[4];
        v22 = v17[6];
        v65 = v17[5];
        v66 = v22;
        v63 = v20;
        v64 = v21;
        if (*(&v19 + 1))
        {
          sub_21CB864A4();
          sub_21C7A33F0(&v60, v59);
          sub_21CB854C4();
          if (*(&v61 + 1))
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_21CB864A4();
          sub_21C7A33F0(&v60, v59);
          if (*(&v61 + 1))
          {
LABEL_11:
            sub_21CB864A4();
            sub_21CB854C4();
            goto LABEL_14;
          }
        }

        sub_21CB864A4();
LABEL_14:
        sub_21CB854C4();
        sub_21CB854C4();
        sub_21CB854C4();
        v23 = v66;
        v24 = BYTE2(v65);
        v25 = BYTE1(v65);
        sub_21CB864A4();
        MEMORY[0x21CF15F90](v25);
        MEMORY[0x21CF15F90](v24);
        if (v23)
        {
          sub_21CB864A4();
          sub_21CB854C4();
          v26 = *(&v66 + 1);
          if (*(&v66 + 1))
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_21CB864A4();
          v26 = *(&v66 + 1);
          if (*(&v66 + 1))
          {
LABEL_18:
            sub_21CB864A4();
            v27 = v26;
            sub_21CB85DE4();

            goto LABEL_8;
          }
        }

        sub_21CB864A4();
LABEL_8:
        sub_21C7A344C(&v60);
        v17 += 7;
        if (!--v16)
        {
          goto LABEL_48;
        }
      }
    }

    sub_21CA83E0C(v13, v7, type metadata accessor for PMSharingGroup);
    MEMORY[0x21CF15F90](3);
    sub_21CB85C44();
    sub_21C7061C8(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
    sub_21CB85494();
    sub_21CB854C4();
    v43 = *&v7[*(v2 + 24)];
    MEMORY[0x21CF15F90](*(v43 + 16));
    v44 = *(v43 + 16);
    if (!v44)
    {
LABEL_49:
      sub_21CB854C4();
      v41 = v7;
      return sub_21C7197E0(v41, type metadata accessor for PMSharingGroup);
    }

    v45 = (v43 + 32);
    while (1)
    {
      v46 = v45[2];
      v47 = *v45;
      v61 = v45[1];
      v62 = v46;
      v60 = v47;
      v48 = v45[3];
      v49 = v45[4];
      v50 = v45[6];
      v65 = v45[5];
      v66 = v50;
      v63 = v48;
      v64 = v49;
      if (*(&v47 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v60, v59);
        sub_21CB854C4();
        if (*(&v61 + 1))
        {
          goto LABEL_40;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v60, v59);
        if (*(&v61 + 1))
        {
LABEL_40:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_43;
        }
      }

      sub_21CB864A4();
LABEL_43:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v51 = v66;
      v52 = BYTE2(v65);
      v53 = BYTE1(v65);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v53);
      MEMORY[0x21CF15F90](v52);
      if (v51)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v54 = *(&v66 + 1);
        if (*(&v66 + 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        sub_21CB864A4();
        v54 = *(&v66 + 1);
        if (*(&v66 + 1))
        {
LABEL_47:
          sub_21CB864A4();
          v55 = v54;
          sub_21CB85DE4();

          goto LABEL_37;
        }
      }

      sub_21CB864A4();
LABEL_37:
      sub_21C7A344C(&v60);
      v45 += 7;
      if (!--v44)
      {
        goto LABEL_49;
      }
    }
  }

  if (EnumCaseMultiPayload != 2)
  {
    return MEMORY[0x21CF15F90](EnumCaseMultiPayload != 3);
  }

  sub_21CA83E0C(v13, v4, type metadata accessor for PMSharingGroup);
  MEMORY[0x21CF15F90](4);
  sub_21CB85C44();
  sub_21C7061C8(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  sub_21CB854C4();
  v28 = *&v4[*(v2 + 24)];
  MEMORY[0x21CF15F90](*(v28 + 16));
  v29 = *(v28 + 16);
  if (v29)
  {
    v30 = (v28 + 32);
    do
    {
      v32 = v30[2];
      v33 = *v30;
      v61 = v30[1];
      v62 = v32;
      v60 = v33;
      v34 = v30[3];
      v35 = v30[4];
      v36 = v30[6];
      v65 = v30[5];
      v66 = v36;
      v63 = v34;
      v64 = v35;
      if (*(&v33 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v60, v59);
        sub_21CB854C4();
        if (*(&v61 + 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v60, v59);
        if (*(&v61 + 1))
        {
LABEL_25:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_28;
        }
      }

      sub_21CB864A4();
LABEL_28:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v37 = v66;
      v38 = BYTE2(v65);
      v39 = BYTE1(v65);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v39);
      MEMORY[0x21CF15F90](v38);
      if (v37)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v40 = *(&v66 + 1);
        if (!*(&v66 + 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_21CB864A4();
        v40 = *(&v66 + 1);
        if (!*(&v66 + 1))
        {
LABEL_32:
          sub_21CB864A4();
          goto LABEL_22;
        }
      }

      sub_21CB864A4();
      v31 = v40;
      sub_21CB85DE4();

LABEL_22:
      sub_21C7A344C(&v60);
      v30 += 7;
      --v29;
    }

    while (v29);
  }

  sub_21CB854C4();
  v41 = v4;
  return sub_21C7197E0(v41, type metadata accessor for PMSharingGroup);
}

uint64_t sub_21CA7CEF8()
{
  sub_21CB86484();
  sub_21CA7C5D4(v1);
  return sub_21CB864D4();
}

uint64_t sub_21CA7CF3C(uint64_t a1)
{
  sub_21CB86484();
  sub_21CA7C5D4(v2);
  return sub_21CB864D4();
}

__n128 sub_21CA7CFE0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = type metadata accessor for PMNewGroupFlow(0);
  v4 = v3 - 8;
  v49 = *(v3 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v3);
  v47 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = v38 - v7;
  v41 = sub_21CB81024();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A50, &qword_21CBB51C0);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D98, &qword_21CBC3118);
  v45 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = v38 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DA0, &qword_21CBC3120) - 8;
  MEMORY[0x28223BE20](v46);
  v42 = v38 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
  sub_21CB84D74();
  v53 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DA8, &qword_21CBC3128);
  v13 = type metadata accessor for PMNewGroupFlow.Step(255);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6DB0, &qword_21CBC3130);
  v15 = sub_21C7061C8(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6DB8, &qword_21CBC3138);
  v17 = sub_21CA830EC();
  *&v58 = v16;
  *(&v58 + 1) = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v58 = MEMORY[0x277CE1428];
  *(&v58 + 1) = v13;
  *&v59 = v14;
  *(&v59 + 1) = MEMORY[0x277CE1410];
  *&v60 = v15;
  *(&v60 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_21CB82904();
  sub_21CB81014();
  v19 = sub_21CB81004();
  v21 = v20;
  v38[1] = v20;
  (*(v40 + 8))(v9, v41);
  v56 = v19;
  v57 = v21;
  v22 = v2 + *(v4 + 40);
  v23 = *v22;
  v24 = *(v22 + 8);
  v54 = v23;
  v55 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  LODWORD(v41) = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);
  v25 = v43;
  sub_21CB84D54();
  v52 = v2;
  v51 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  type metadata accessor for MoveAccountFailureAlertData(0);
  sub_21C6EADEC(&qword_27CDF6E18, &qword_27CDF6D98, &qword_21CBC3118, MEMORY[0x277CDDA18]);
  sub_21C71F3FC();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v26 = v44;
  v27 = v42;
  v28 = v39;
  sub_21CB84714();

  sub_21C6EA794(v25, &qword_27CDECBD8, &unk_21CBA5300);

  (*(v45 + 8))(v28, v26);
  v29 = v47;
  sub_21CA83DA4(v2, v47, type metadata accessor for PMNewGroupFlow);
  v30 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v31 = swift_allocObject();
  sub_21CA83E0C(v29, v31 + v30, type metadata accessor for PMNewGroupFlow);
  v32 = (v27 + *(v46 + 44));
  *v32 = sub_21CA83548;
  v32[1] = v31;
  v32[2] = 0;
  v32[3] = 0;
  sub_21CB85214();
  sub_21CB82AC4();
  v33 = v50;
  sub_21C77F3A8(v27, v50);
  v34 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E20, L"B\a¯") + 36);
  v35 = v63;
  *(v34 + 64) = v62;
  *(v34 + 80) = v35;
  *(v34 + 96) = v64;
  v36 = v59;
  *v34 = v58;
  *(v34 + 16) = v36;
  result = v61;
  *(v34 + 32) = v60;
  *(v34 + 48) = result;
  return result;
}

double sub_21CA7D7D4(uint64_t a1)
{
  v2 = type metadata accessor for PMNewGroupFlow(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for PMNewGroupFlow.Step(0);
  sub_21CA83DA4(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMNewGroupFlow);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_21CA83E0C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PMNewGroupFlow);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DB0, &qword_21CBC3130);
  sub_21C7061C8(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6DB8, &qword_21CBC3138);
  v8 = sub_21CA830EC();
  v10[0] = v7;
  v10[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_21CB84564();

  return result;
}

uint64_t sub_21CA7D9D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DB8, &qword_21CBC3138);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  sub_21CA7DAAC(a1, a2, &v8 - v5);
  sub_21CA830EC();
  sub_21CB84674();
  return sub_21C6EA794(v6, &qword_27CDF6DB8, &qword_21CBC3138);
}

uint64_t sub_21CA7DAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a2;
  v139 = a1;
  v148 = a3;
  v146 = type metadata accessor for PMNotifyGroupMembersView(0);
  MEMORY[0x28223BE20](v146);
  v123 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E28, &qword_21CBC3258);
  v125 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v124 = &v118 - v4;
  v130 = type metadata accessor for PMMoveAccountsList(0);
  MEMORY[0x28223BE20](v130);
  v126 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E30, &qword_21CBC3260);
  v122 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v127 = &v118 - v6;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E38, &qword_21CBC3268);
  MEMORY[0x28223BE20](v128);
  v129 = &v118 - v7;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E10, &unk_21CBC3158);
  MEMORY[0x28223BE20](v137);
  v131 = &v118 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E40, &qword_21CBC3270);
  v121 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v118 - v10;
  v12 = type metadata accessor for PMSharingGroup(0);
  v133 = *(v12 - 8);
  v13 = *(v133 + 64);
  MEMORY[0x28223BE20](v12);
  v134 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v149 = &v118 - v15;
  v120 = sub_21CB81024();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v17 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v118 - v19;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E48, &qword_21CBC3278);
  MEMORY[0x28223BE20](v143);
  v145 = &v118 - v21;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E50, &unk_21CBC3280);
  MEMORY[0x28223BE20](v135);
  v136 = (&v118 - v22);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DE0, &qword_21CBC3148);
  MEMORY[0x28223BE20](v144);
  v138 = &v118 - v23;
  v24 = type metadata accessor for PMNewGroupFlow(0);
  v141 = *(v24 - 8);
  v25 = *(v141 + 64);
  MEMORY[0x28223BE20](v24);
  v142 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PMNewGroupFlow.Step(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA83DA4(v139, v28, type metadata accessor for PMNewGroupFlow.Step);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v40 = v126;
    v139 = v9;
    if (EnumCaseMultiPayload)
    {
      v84 = v12;
      v85 = v149;
      sub_21CA83E0C(v28, v149, type metadata accessor for PMSharingGroup);
      sub_21CA83DA4(v85, v40, type metadata accessor for PMSharingGroup);
      v86 = v133 + 56;
      (*(v133 + 56))(v40, 0, 1, v84);
      v87 = v142;
      sub_21CA83DA4(v140, v142, type metadata accessor for PMNewGroupFlow);
      v88 = v85;
      v89 = v134;
      sub_21CA83DA4(v88, v134, type metadata accessor for PMSharingGroup);
      v90 = (*(v141 + 80) + 16) & ~*(v141 + 80);
      v91 = (v25 + *(v86 + 24) + v90) & ~*(v86 + 24);
      v92 = swift_allocObject();
      sub_21CA83E0C(v87, v92 + v90, type metadata accessor for PMNewGroupFlow);
      sub_21CA83E0C(v89, v92 + v91, type metadata accessor for PMSharingGroup);
      v93 = v130;
      *(v40 + *(v130 + 20)) = 0;
      v94 = (v40 + *(v93 + 24));
      *v94 = sub_21CA85008;
      v94[1] = v92;
      v95 = (v40 + *(v93 + 28));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD0, &unk_21CBB9040);
      v96 = swift_allocObject();
      *(v96 + 16) = 0;
      v150 = v96;
      sub_21CB84D44();
      v97 = *(&v163 + 1);
      *v95 = v163;
      v95[1] = v97;
      v98 = sub_21C7061C8(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList, &unk_21CBC1478);
      v99 = v127;
      sub_21CB84644();
      sub_21C7197E0(v40, type metadata accessor for PMMoveAccountsList);
      v100 = v122;
      v101 = v132;
      (*(v122 + 16))(v129, v99, v132);
      swift_storeEnumTagMultiPayload();
      v102 = sub_21C9B9F2C();
      *&v163 = &type metadata for PMDeviceListView;
      *(&v163 + 1) = v102;
      swift_getOpaqueTypeConformance2();
      *&v163 = v93;
      *(&v163 + 1) = v98;
      swift_getOpaqueTypeConformance2();
      v103 = v131;
      sub_21CB83494();
      sub_21C6EDBAC(v103, v136, &qword_27CDF6E10, &unk_21CBC3158);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DF0, &qword_21CBC3150);
      sub_21CA832F0();
      sub_21CA83424();
      v104 = v138;
      sub_21CB83494();
      sub_21C6EA794(v103, &qword_27CDF6E10, &unk_21CBC3158);
      sub_21C6EDBAC(v104, v145, &qword_27CDF6DE0, &qword_21CBC3148);
      swift_storeEnumTagMultiPayload();
      sub_21CA83264();
      v105 = sub_21C7061C8(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView, &unk_21CBC3A8C);
      *&v163 = v146;
      *(&v163 + 1) = v105;
      swift_getOpaqueTypeConformance2();
      sub_21CB83494();
      sub_21C6EA794(v104, &qword_27CDF6DE0, &qword_21CBC3148);
      (*(v100 + 8))(v127, v101);
    }

    else
    {
      v41 = *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E58, &unk_21CBC3290) + 48)];
      v127 = v41;
      v42 = v28;
      v43 = v149;
      sub_21CA83E0C(v42, v149, type metadata accessor for PMSharingGroup);
      v44 = v142;
      sub_21CA83DA4(v140, v142, type metadata accessor for PMNewGroupFlow);
      v45 = v134;
      sub_21CA83DA4(v43, v134, type metadata accessor for PMSharingGroup);
      v46 = (*(v141 + 80) + 16) & ~*(v141 + 80);
      v47 = (v25 + *(v133 + 80) + v46) & ~*(v133 + 80);
      v48 = swift_allocObject();
      sub_21CA83E0C(v44, v48 + v46, type metadata accessor for PMNewGroupFlow);
      sub_21CA83E0C(v45, v48 + v47, type metadata accessor for PMSharingGroup);
      *&v163 = v41;
      *(&v163 + 1) = sub_21CA850C8;
      *&v164 = v48;
      v49 = sub_21C9B9F2C();
      v118 = v11;
      sub_21CB84644();

      v50 = v121;
      v51 = v139;
      (*(v121 + 16))(v129, v11, v139);
      swift_storeEnumTagMultiPayload();
      *&v163 = &type metadata for PMDeviceListView;
      *(&v163 + 1) = v49;
      swift_getOpaqueTypeConformance2();
      v52 = sub_21C7061C8(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList, &unk_21CBC1478);
      *&v163 = v130;
      *(&v163 + 1) = v52;
      swift_getOpaqueTypeConformance2();
      v53 = v131;
      sub_21CB83494();
      sub_21C6EDBAC(v53, v136, &qword_27CDF6E10, &unk_21CBC3158);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DF0, &qword_21CBC3150);
      sub_21CA832F0();
      sub_21CA83424();
      v54 = v138;
      sub_21CB83494();
      sub_21C6EA794(v53, &qword_27CDF6E10, &unk_21CBC3158);
      sub_21C6EDBAC(v54, v145, &qword_27CDF6DE0, &qword_21CBC3148);
      swift_storeEnumTagMultiPayload();
      sub_21CA83264();
      v55 = sub_21C7061C8(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView, &unk_21CBC3A8C);
      *&v163 = v146;
      *(&v163 + 1) = v55;
      swift_getOpaqueTypeConformance2();
      sub_21CB83494();

      sub_21C6EA794(v54, &qword_27CDF6DE0, &qword_21CBC3148);
      (*(v50 + 8))(v118, v51);
    }

    return sub_21C7197E0(v149, type metadata accessor for PMSharingGroup);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v56 = v149;
    sub_21CA83E0C(v28, v149, type metadata accessor for PMSharingGroup);
    v57 = v123;
    sub_21CA83DA4(v56, v123, type metadata accessor for PMSharingGroup);
    v58 = v140;
    v59 = sub_21CA81890(v56);
    v60 = v142;
    sub_21CA83DA4(v58, v142, type metadata accessor for PMNewGroupFlow);
    v61 = v134;
    sub_21CA83DA4(v56, v134, type metadata accessor for PMSharingGroup);
    v62 = (*(v141 + 80) + 16) & ~*(v141 + 80);
    v63 = (v25 + *(v133 + 80) + v62) & ~*(v133 + 80);
    v64 = swift_allocObject();
    sub_21CA83E0C(v60, v64 + v62, type metadata accessor for PMNewGroupFlow);
    sub_21CA83E0C(v61, v64 + v63, type metadata accessor for PMSharingGroup);
    v65 = v146;
    *(v57 + *(v146 + 20)) = v59;
    v66 = (v57 + v65[6]);
    *v66 = sub_21CA83FBC;
    v66[1] = v64;
    v67 = v57 + v65[7];
    LOBYTE(v150) = 0;
    sub_21CB84D44();
    v68 = *(&v163 + 1);
    *v67 = v163;
    *(v67 + 8) = v68;
    v69 = v57 + v65[8];
    type metadata accessor for PMGlobalAnimationNamespaceContainer(0);
    sub_21C7061C8(&qword_27CDEADC8, type metadata accessor for PMGlobalAnimationNamespaceContainer, &unk_21CBA8E84);
    *v69 = sub_21CB82084();
    *(v69 + 8) = v70 & 1;
    v71 = sub_21C7061C8(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView, &unk_21CBC3A8C);
    v72 = v124;
    sub_21CB84644();
    sub_21C7197E0(v57, type metadata accessor for PMNotifyGroupMembersView);
    v73 = v125;
    v74 = v147;
    (*(v125 + 16))(v145, v72, v147);
    swift_storeEnumTagMultiPayload();
    sub_21CA83264();
    *&v163 = v65;
    *(&v163 + 1) = v71;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();
    (*(v73 + 8))(v72, v74);
    return sub_21C7197E0(v149, type metadata accessor for PMSharingGroup);
  }

  v30 = EnumCaseMultiPayload == 3;
  v31 = v140;
  if (v30)
  {
    v32 = v142;
    sub_21CA83DA4(v140, v142, type metadata accessor for PMNewGroupFlow);
    v33 = (*(v141 + 80) + 16) & ~*(v141 + 80);
    v34 = swift_allocObject();
    sub_21CA83E0C(v32, v34 + v33, type metadata accessor for PMNewGroupFlow);
    v162 = 0;
    v150 = sub_21CA85210;
    v151 = v34;
    v158 = 0;
    sub_21CA8337C();
    sub_21CA833D0();

    sub_21CB83494();
    v35 = v164;
    v36 = v136;
    *v136 = v163;
    v36[1] = v35;
    v36[2] = *v165;
    *(v36 + 42) = *&v165[10];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DF0, &qword_21CBC3150);
    sub_21CA832F0();
    sub_21CA83424();
    v37 = v138;
    sub_21CB83494();
    sub_21C6EDBAC(v37, v145, &qword_27CDF6DE0, &qword_21CBC3148);
    swift_storeEnumTagMultiPayload();
    sub_21CA83264();
    v38 = sub_21C7061C8(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView, &unk_21CBC3A8C);
    v150 = v146;
    v151 = v38;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();

    v39 = v37;
  }

  else
  {
    v75 = *(v140 + *(v24 + 20));
    if (v75)
    {
      v76 = v140;
      sub_21CB81014();
      sub_21CB81014();
      v77 = sub_21CB80FF4();
      v79 = v78;
      v80 = *(v119 + 8);
      v81 = v17;
      v82 = v120;
      v80(v81, v120);
      v80(v20, v82);
      v31 = v76;
      v83 = v75;
    }

    else
    {
      v77 = 0;
      v79 = 0xE000000000000000;
      v83 = MEMORY[0x277D84F90];
    }

    v107 = v142;
    sub_21CA83DA4(v31, v142, type metadata accessor for PMNewGroupFlow);
    v108 = (*(v141 + 80) + 16) & ~*(v141 + 80);
    v109 = swift_allocObject();
    sub_21CA83E0C(v107, v109 + v108, type metadata accessor for PMNewGroupFlow);
    sub_21C94B944();

    sub_21CB81FA4();
    v110 = v163;
    v111 = *(&v163 + 1);
    v112 = v164;
    v113 = swift_allocObject();
    v113[2] = v77;
    v113[3] = v79;
    v113[4] = v83;
    v161 = 0;
    v160 = v110;
    v159 = v112;
    v162 = 1;
    v150 = sub_21CA85194;
    v151 = v109;
    v152 = sub_21CA85204;
    v153 = v113;
    v154 = 0;
    v155 = v110;
    v156 = v111;
    v157 = v112;
    v158 = 1;
    sub_21CA8337C();
    sub_21CA833D0();

    sub_21CB83494();
    v114 = v164;
    v115 = v136;
    *v136 = v163;
    v115[1] = v114;
    v115[2] = *v165;
    *(v115 + 42) = *&v165[10];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6DF0, &qword_21CBC3150);
    sub_21CA832F0();
    sub_21CA83424();
    v116 = v138;
    sub_21CB83494();
    sub_21C6EDBAC(v116, v145, &qword_27CDF6DE0, &qword_21CBC3148);
    swift_storeEnumTagMultiPayload();
    sub_21CA83264();
    v117 = sub_21C7061C8(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView, &unk_21CBC3A8C);
    v150 = v146;
    v151 = v117;
    swift_getOpaqueTypeConformance2();
    sub_21CB83494();

    v39 = v116;
  }

  return sub_21C6EA794(v39, &qword_27CDF6DE0, &qword_21CBC3148);
}

uint64_t sub_21CA7F2FC(char a1)
{
  v2 = sub_21CB82644();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = type metadata accessor for PMNewGroupFlow.Step(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB823B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PMNewGroupFlow(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    sub_21CB84D54();
    sub_21C7061C8(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
    sub_21CB82634();
    sub_21C7197E0(v5, type metadata accessor for PMNewGroupFlow.Step);
    return sub_21CB84D64();
  }

  else
  {
    type metadata accessor for PMNewGroupFlow(0);
    sub_21C95B2C8(v9);
    sub_21CB823A4();
    return (*(v7 + 8))(v9, v6);
  }
}

double sub_21CA7F538(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMNewGroupFlow(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMCreateGroupView.Action(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_21CA83DA4(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMCreateGroupView.Action);
  sub_21CA83DA4(a2, v7, type metadata accessor for PMNewGroupFlow);
  sub_21CB858B4();
  v15 = sub_21CB858A4();
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_21CA83E0C(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for PMCreateGroupView.Action);
  sub_21CA83E0C(v7, v18 + v17, type metadata accessor for PMNewGroupFlow);
  sub_21C98B308(0, 0, v13, &unk_21CBC32B0, v18);

  return result;
}

uint64_t sub_21CA7F7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21CB82644();
  v5[4] = swift_task_alloc();
  v5[5] = type metadata accessor for PMNewGroupFlow.Step(0);
  v5[6] = swift_task_alloc();
  type metadata accessor for PMSharingGroup(0);
  v5[7] = swift_task_alloc();
  v6 = sub_21CB823B4();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  type metadata accessor for PMCreateGroupView.Action(0);
  v5[11] = swift_task_alloc();
  sub_21CB858B4();
  v5[12] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v5[13] = v8;
  v5[14] = v7;

  return MEMORY[0x2822009F8](sub_21CA7F998, v8, v7);
}

uint64_t sub_21CA7F998(__n128 a1)
{
  v2 = v1[11];
  sub_21CA83DA4(v1[2], v2, type metadata accessor for PMCreateGroupView.Action);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EC8, &qword_21CBB2AB8);
  if ((*(*(v3 - 8) + 48))(v2, 1, v3) == 1)
  {
    v5 = v1[9];
    v4 = v1[10];
    v6 = v1[8];

    type metadata accessor for PMNewGroupFlow(0);
    sub_21C95B2C8(v4);
    sub_21CB823A4();
    (*(v5 + 8))(v4, v6);
LABEL_8:

    v18 = v1[1];

    return v18();
  }

  v7 = v1[11];
  v8 = v1[7];
  v9 = *(v7 + *(v3 + 48));
  v1[15] = v9;
  sub_21CA83E0C(v7, v8, type metadata accessor for PMSharingGroup);
  if (v9)
  {
    v10 = v9;
    v11 = [v10 devicesWithSharingUnavailable];
    type metadata accessor for PMDevice(0);
    v12 = sub_21CB85824();

    if (v12 >> 62)
    {
      v13 = sub_21CB85FA4();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      v15 = v1[6];
      v14 = v1[7];

      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E58, &unk_21CBC3290) + 48);
      sub_21CA83DA4(v14, v15, type metadata accessor for PMSharingGroup);
      *(v15 + v16) = v10;
      swift_storeEnumTagMultiPayload();
      type metadata accessor for PMNewGroupFlow(0);
      v17 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
      sub_21CB84D54();
      sub_21C7061C8(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
      sub_21CB82634();
      sub_21C7197E0(v15, type metadata accessor for PMNewGroupFlow.Step);
      sub_21CB84D64();

      sub_21C7197E0(v14, type metadata accessor for PMSharingGroup);
      goto LABEL_8;
    }
  }

  v20 = swift_task_alloc();
  v1[16] = v20;
  *v20 = v1;
  v20[1] = sub_21CA7FD5C;
  v21 = v1[7];

  return sub_21CA7FF3C(v21);
}

uint64_t sub_21CA7FD5C()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return MEMORY[0x2822009F8](sub_21CA7FE7C, v3, v2);
}

uint64_t sub_21CA7FE7C()
{
  v1 = v0[15];
  v2 = v0[7];

  sub_21C7197E0(v2, type metadata accessor for PMSharingGroup);

  v3 = v0[1];

  return v3();
}

uint64_t sub_21CA7FF3C(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  sub_21CB82644();
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for PMNewGroupFlow.Step(0);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  type metadata accessor for PMAccount.SIWAUniqueID(0);
  v2[14] = swift_task_alloc();
  type metadata accessor for PMAccount.CombinedUniqueID(0);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for PMAccount.UniqueID(0);
  v2[17] = swift_task_alloc();
  v2[18] = type metadata accessor for PMAccount.Storage(0);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for PMAccount(0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration(0);
  v2[26] = swift_task_alloc();
  sub_21CB858B4();
  v2[27] = sub_21CB858A4();
  v5 = sub_21CB85874();
  v2[28] = v5;
  v2[29] = v4;

  return MEMORY[0x2822009F8](sub_21CA80248, v5, v4);
}

uint64_t sub_21CA80248(__n128 a1)
{
  v2 = v1[26];
  v3 = v1[22];
  v4 = v1[23];
  sub_21CA83DA4(v1[6], v2, type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v6 = v1[12];
    v5 = v1[13];
    v7 = v1[5];

    type metadata accessor for PMNewGroupFlow(0);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
    v9 = (v5 + *(v8 + 48));
    v10 = sub_21CB85C44();
    (*(*(v10 - 8) + 16))(v5, v7, v10);
    *v9 = 0;
    v9[1] = 0;
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    swift_getKeyPath(asc_21CBC32C8);
    swift_getKeyPath(byte_21CBC32F0);
    sub_21C6EDBAC(v5, v6, &qword_27CDEFEB8, &unk_21CBADD00);

    sub_21CB81DC4();
    sub_21C6EA794(v5, &qword_27CDEFEB8, &unk_21CBADD00);
    swift_getKeyPath(byte_21CBC3338);
    sub_21CB81DB4();

    v11 = *(v1[4] + 16);

    if (v11)
    {
      v12 = v1[11];
      sub_21CA83DA4(v1[5], v12, type metadata accessor for PMSharingGroup);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
      sub_21CB84D54();
      sub_21C7061C8(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
      sub_21CB82634();
      sub_21C7197E0(v12, type metadata accessor for PMNewGroupFlow.Step);
      sub_21CB84D64();
    }

    else
    {
      sub_21CA8158C(v1[5]);
    }

    v24 = v1[1];

    return v24();
  }

  else
  {
    v13 = v1[21];
    v15 = v1[5];
    v14 = v1[6];
    sub_21CA83E0C(v1[26], v1[25], type metadata accessor for PMAccount);
    v16 = type metadata accessor for PMNewGroupFlow(0);
    v1[30] = v16;
    v1[31] = *(v14 + *(v16 + 44) + 8);
    v17 = sub_21CB85C44();
    v1[32] = v17;
    v18 = *(v17 - 8);
    v19 = *(v18 + 16);
    v1[33] = v19;
    v1[34] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v13, v15, v17);
    (*(v18 + 56))(v13, 0, 1, v17);
    v20 = swift_task_alloc();
    v1[35] = v20;
    *v20 = v1;
    v20[1] = sub_21CA8076C;
    v21 = v1[25];
    v22 = v1[21];

    return sub_21C835884(v21, v22, 1);
  }
}

uint64_t sub_21CA8076C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  *(*v1 + 288) = v0;

  sub_21C6EA794(v3, &unk_27CDF20B0, &unk_21CBA0090);
  v4 = *(v2 + 232);
  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_21CA80E84;
  }

  else
  {
    v6 = sub_21CA808D4;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_21CA808D4()
{
  v1 = v0[5];

  sub_21CA8158C(v1);
  v2 = *(sub_21CA81890(v1) + 16);

  if (!v2 || (sub_21CA2EEF0() & 1) == 0)
  {
    v3 = v0[22];
    sub_21CA83DA4(v0[25] + *(v3 + 24), v0[20], type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = v0[33];
      v5 = v0[32];
      v6 = v0[12];
      v7 = v0[13];
      v8 = v0[5];
      sub_21C7197E0(v0[20], type metadata accessor for PMAccount.Storage);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
      v10 = (v7 + *(v9 + 48));
      v4(v7, v8, v5);
      *v10 = 0;
      v10[1] = 0;
      (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
      swift_getKeyPath(asc_21CBC32C8);
      swift_getKeyPath(byte_21CBC32F0);
      sub_21C6EDBAC(v7, v6, &qword_27CDEFEB8, &unk_21CBADD00);

      sub_21CB81DC4();
      sub_21C6EA794(v7, &qword_27CDEFEB8, &unk_21CBADD00);
    }

    else
    {
      v11 = v0[24];
      v12 = v0[22];
      v14 = v0[19];
      v13 = v0[20];
      v15 = v0[17];
      v16 = *v13;
      *v14 = *v13;
      swift_storeEnumTagMultiPayload();
      v17 = (v11 + *(v12 + 28));
      *v17 = 0u;
      v17[1] = 0u;
      sub_21CA83DA4(v14, v11 + *(v3 + 24), type metadata accessor for PMAccount.Storage);
      v18 = *(v12 + 20);
      v41 = v16;
      sub_21C7C8A3C((v11 + v18));
      sub_21CA83DA4(v11 + v18, v15, type metadata accessor for PMAccount.UniqueID);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v20 = v0[17];
      if (EnumCaseMultiPayload == 1)
      {
        v21 = v0[14];
        sub_21CA83E0C(v20, v21, type metadata accessor for PMAccount.SIWAUniqueID);
        v39 = sub_21C7CE99C();
        v23 = v22;
        v24 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v21 = v0[15];
        sub_21CA83E0C(v20, v21, type metadata accessor for PMAccount.CombinedUniqueID);
        v39 = sub_21C7CE408();
        v23 = v25;
        v24 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C7197E0(v21, v24);
      v26 = v0[33];
      v27 = v0[32];
      v28 = v0[24];
      v29 = v0[13];
      v38 = v0[12];
      v30 = v0[5];
      sub_21C7197E0(v0[19], type metadata accessor for PMAccount.Storage);
      v40 = v28;
      *v28 = v39;
      v28[1] = v23;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
      v32 = v23;
      v33 = (v29 + *(v31 + 48));
      v26(v29, v30, v27);
      *v33 = v39;
      v33[1] = v32;
      (*(*(v31 - 8) + 56))(v29, 0, 1, v31);
      swift_getKeyPath(asc_21CBC32C8);
      swift_getKeyPath(byte_21CBC32F0);
      sub_21C6EDBAC(v29, v38, &qword_27CDEFEB8, &unk_21CBADD00);

      sub_21CB81DC4();

      sub_21C6EA794(v29, &qword_27CDEFEB8, &unk_21CBADD00);
      sub_21C7197E0(v40, type metadata accessor for PMAccount);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v34 = *(v0[31] + 24);
      ObjectType = swift_getObjectType();
      (*(v34 + 72))(ObjectType, v34);
      swift_unknownObjectRelease();
    }
  }

  sub_21C7197E0(v0[25], type metadata accessor for PMAccount);

  v36 = v0[1];

  return v36();
}

uint64_t sub_21CA80E84()
{
  v17 = *(v0 + 264);
  v16 = *(v0 + 256);
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v19 = v2;
  v20 = *(v0 + 288);
  v3 = *(v0 + 104);
  v18 = *(v0 + 96);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v7 = *(v0 + 40);
  v6 = *(v0 + 48);

  sub_21CA83DA4(v2, v4, type metadata accessor for PMAccount);
  v8 = type metadata accessor for MoveAccountFailureAlertData(0);
  sub_21CA83DA4(v7, v4 + *(v8 + 20), type metadata accessor for PMSharingGroup);
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  sub_21C6EDBAC(v4, v5, &qword_27CDECBD8, &unk_21CBA5300);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);
  sub_21CB84D64();
  sub_21C6EA794(v4, &qword_27CDECBD8, &unk_21CBA5300);
  v9 = (v6 + *(v1 + 32));
  v10 = *v9;
  v11 = *(v9 + 1);
  *(v0 + 16) = v10;
  *(v0 + 24) = v11;
  *(v0 + 296) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D64();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
  v13 = (v3 + *(v12 + 48));
  v17(v3, v7, v16);
  *v13 = 0;
  v13[1] = 0;
  (*(*(v12 - 8) + 56))(v3, 0, 1, v12);
  swift_getKeyPath(asc_21CBC32C8);
  swift_getKeyPath(byte_21CBC32F0);
  sub_21C6EDBAC(v3, v18, &qword_27CDEFEB8, &unk_21CBADD00);

  sub_21CB81DC4();

  sub_21C6EA794(v3, &qword_27CDEFEB8, &unk_21CBADD00);
  sub_21C7197E0(v19, type metadata accessor for PMAccount);

  v14 = *(v0 + 8);

  return v14();
}

double sub_21CA81218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMNewGroupFlow(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_21CB858E4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_21CA83DA4(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMNewGroupFlow);
  sub_21CA83DA4(a2, v7, type metadata accessor for PMSharingGroup);
  sub_21CB858B4();
  v15 = sub_21CB858A4();
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = (v10 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_21CA83E0C(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v16, type metadata accessor for PMNewGroupFlow);
  sub_21CA83E0C(v7, v18 + v17, type metadata accessor for PMSharingGroup);
  sub_21C98B308(0, 0, v13, &unk_21CBC3360, v18);

  return result;
}

uint64_t sub_21CA814D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_21CB858B4();
  v5[3] = sub_21CB858A4();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_21C74FDC4;

  return sub_21CA7FF3C(a5);
}

uint64_t sub_21CA8158C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CB823B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB82644();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = type metadata accessor for PMNewGroupFlow.Step(0);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(sub_21CA81890(a1) + 16);

  if (v12 && (sub_21CA2EEF0() & 1) != 0)
  {
    sub_21CA83DA4(a1, v11, type metadata accessor for PMSharingGroup);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PMNewGroupFlow(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
    sub_21CB84D54();
    sub_21C7061C8(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
    sub_21CB82634();
    sub_21C7197E0(v11, type metadata accessor for PMNewGroupFlow.Step);
    return sub_21CB84D64();
  }

  else
  {
    sub_21CA82364(a1);
    v14 = *(v2 + *(type metadata accessor for PMNewGroupFlow(0) + 64));
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v15 = sub_21C741948(v14, v16[1]);

    if (v15)
    {
      sub_21C91C160();
    }

    sub_21C95B2C8(v7);
    sub_21CB823A4();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_21CA81890(uint64_t a1)
{
  result = type metadata accessor for PMSharingGroup(0);
  v3 = *(a1 + *(result + 24));
  v4 = *(v3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = *(v3 + 16);
    v8 = (v3 + 32 + 112 * v5);
    for (i = v5; ; ++i)
    {
      if (i >= v7)
      {
        __break(1u);
        return result;
      }

      v10 = v8[3];
      v11 = v8[4];
      v12 = v8[6];
      v29 = v8[5];
      v13 = v8[1];
      v14 = v8[2];
      v24 = *v8;
      v25 = v13;
      v30 = v12;
      v27 = v10;
      v28 = v11;
      v26 = v14;
      v5 = i + 1;
      if ((v29 & 1) == 0)
      {
        break;
      }

      v8 += 7;
      if (v4 == v5)
      {
        return v6;
      }
    }

    sub_21C7A33F0(&v24, &v23);
    result = swift_isUniquelyReferenced_nonNull_native();
    v31 = v6;
    if ((result & 1) == 0)
    {
      result = sub_21C7B10A0(0, *(v6 + 16) + 1, 1);
      v6 = v31;
    }

    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_21C7B10A0((v15 > 1), v16 + 1, 1);
      v6 = v31;
    }

    *(v6 + 16) = v16 + 1;
    v17 = (v6 + 112 * v16);
    v18 = v24;
    v19 = v26;
    v17[3] = v25;
    v17[4] = v19;
    v17[2] = v18;
    v20 = v27;
    v21 = v28;
    v22 = v30;
    v17[7] = v29;
    v17[8] = v22;
    v17[5] = v20;
    v17[6] = v21;
  }

  while (v4 - 1 != i);
  return v6;
}

uint64_t sub_21CA81A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v5 - 8);
  v67 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v7 - 8);
  v66 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v68);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEB8, &unk_21CBADD00);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v66 - v13;
  v71 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v71);
  v70 = (&v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v17 = (&v66 - v16);
  v18 = type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for PMAccount(0);
  v22 = *(v21 - 1);
  MEMORY[0x28223BE20](v21);
  v72 = (&v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v73 = &v66 - v25;
  v26 = sub_21CB823B4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a3;
  sub_21CA82364(a3);
  v30 = type metadata accessor for PMNewGroupFlow(0);
  v77 = a2;
  v78 = v30;
  v31 = *(a2 + *(v30 + 64));
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v32 = sub_21C741948(v31, v79);

  if (v32)
  {
    sub_21C91C160();
  }

  v33 = v77;
  v34 = v78;
  sub_21C95B2C8(v29);
  sub_21CB823A4();
  (*(v27 + 8))(v29, v26);
  sub_21CA83DA4(v33, v20, type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v35 = type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration;
    v36 = v20;
  }

  else
  {
    v37 = v73;
    sub_21CA83E0C(v20, v73, type metadata accessor for PMAccount);
    sub_21CA83DA4(v37 + v21[6], v17, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C7197E0(v17, type metadata accessor for PMAccount.Storage);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
      v39 = v76;
      v40 = &v76[*(v38 + 48)];
      v41 = sub_21CB85C44();
      (*(*(v41 - 8) + 16))(v39, v74, v41);
      *v40 = 0;
      *(v40 + 1) = 0;
      (*(*(v38 - 8) + 56))(v39, 0, 1, v38);
      swift_getKeyPath(asc_21CBC32C8);
      swift_getKeyPath(byte_21CBC32F0);
      sub_21C6EDBAC(v39, v75, &qword_27CDEFEB8, &unk_21CBADD00);

      sub_21CB81DC4();
      v42 = v39;
      v34 = v78;
      sub_21C6EA794(v42, &qword_27CDEFEB8, &unk_21CBADD00);
      v35 = type metadata accessor for PMAccount;
      v36 = v37;
    }

    else
    {
      v43 = *v17;
      v44 = v70;
      *v70 = *v17;
      swift_storeEnumTagMultiPayload();
      v45 = v72;
      v46 = (v72 + v21[7]);
      *v46 = 0u;
      v46[1] = 0u;
      sub_21CA83DA4(v44, v45 + v21[6], type metadata accessor for PMAccount.Storage);
      v47 = v21[5];
      v71 = v43;
      sub_21C7C8A3C(v45 + v47);
      v48 = v69;
      sub_21CA83DA4(v45 + v47, v69, type metadata accessor for PMAccount.UniqueID);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v49 = v48;
        v50 = v67;
        sub_21CA83E0C(v49, v67, type metadata accessor for PMAccount.SIWAUniqueID);
        v51 = sub_21C7CE99C();
        v53 = v52;
        v54 = type metadata accessor for PMAccount.SIWAUniqueID;
      }

      else
      {
        v55 = v48;
        v50 = v66;
        sub_21CA83E0C(v55, v66, type metadata accessor for PMAccount.CombinedUniqueID);
        v51 = sub_21C7CE408();
        v53 = v56;
        v54 = type metadata accessor for PMAccount.CombinedUniqueID;
      }

      sub_21C7197E0(v50, v54);
      sub_21C7197E0(v44, type metadata accessor for PMAccount.Storage);
      v57 = v72;
      *v72 = v51;
      *(v57 + 8) = v53;
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEC0, &qword_21CBC32C0);
      v59 = v76;
      v60 = &v76[*(v58 + 48)];
      v61 = sub_21CB85C44();
      (*(*(v61 - 8) + 16))(v59, v74, v61);
      *v60 = v51;
      v60[1] = v53;
      (*(*(v58 - 8) + 56))(v59, 0, 1, v58);
      swift_getKeyPath(asc_21CBC32C8);
      swift_getKeyPath(byte_21CBC32F0);
      sub_21C6EDBAC(v59, v75, &qword_27CDEFEB8, &unk_21CBADD00);

      sub_21CB81DC4();

      v33 = v77;
      v34 = v78;
      sub_21C6EA794(v59, &qword_27CDEFEB8, &unk_21CBADD00);
      sub_21C7197E0(v57, type metadata accessor for PMAccount);
      v36 = v37;
      v35 = type metadata accessor for PMAccount;
    }
  }

  sub_21C7197E0(v36, v35);
  v62 = *(v33 + *(v34 + 44) + 8);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v64 = *(v62 + 24);
    ObjectType = swift_getObjectType();
    (*(v64 + 72))(ObjectType, v64);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21CA82364(uint64_t a1)
{
  v3 = sub_21CB82F84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for PMNewGroupFlow(0);
  v8 = result;
  v9 = v1 + *(result + 56);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    v19 = *v9;
    if (v10)
    {
      return result;
    }
  }

  else
  {

    sub_21CB85B04();
    v11 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v10, 0);
    result = (*(v4 + 8))(v6, v3);
    if (v19)
    {
      return result;
    }
  }

  v12 = *(v1 + *(v8 + 48));
  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA60, &qword_21CBB6DD0);
    v13 = *(type metadata accessor for PMSystemSettingsNavigationDestination(0) - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21CBA0690;
    v16 = sub_21CB85C44();
    (*(*(v16 - 8) + 16))(v15 + v14, a1, v16);
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath(byte_21CBC3210);
    swift_getKeyPath(byte_21CBC3238);
    v18 = v15;
    v17 = v12;
    return sub_21CB81DC4();
  }

  else
  {
    type metadata accessor for PMPasswordManagerState(0);
    sub_21C7061C8(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
    result = sub_21CB82B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_21CA8266C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v21 = a1;
  v22 = a3;
  v3 = type metadata accessor for MoveAccountFailureAlertData(0);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = type metadata accessor for PMNewGroupFlow(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v23 = v12;
  v24 = v14;
  sub_21CA83DA4(v19, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMNewGroupFlow);
  sub_21CA83DA4(v21, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MoveAccountFailureAlertData);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = (v7 + *(v20 + 80) + v15) & ~*(v20 + 80);
  v17 = swift_allocObject();
  sub_21CA83E0C(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for PMNewGroupFlow);
  sub_21CA83E0C(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for MoveAccountFailureAlertData);
  sub_21C71F3FC();
  return sub_21CB84DE4();
}

uint64_t sub_21CA82944@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v32 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v32);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = *(type metadata accessor for PMNewGroupFlow(0) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);
  v33 = v14;
  v34 = a1;
  sub_21CB84D54();
  v15 = type metadata accessor for MoveAccountFailureAlertData(0);
  v16 = *(*(v15 - 8) + 48);
  if (v16(v13, 1, v15))
  {
    sub_21C6EA794(v13, &qword_27CDECBD8, &unk_21CBA5300);
LABEL_5:
    v38 = 0;
    v17 = MEMORY[0x277D84F90];
    goto LABEL_6;
  }

  sub_21CA83DA4(v13, v7, type metadata accessor for PMAccount);
  sub_21C6EA794(v13, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CA83DA4(&v7[*(v5 + 24)], v4, type metadata accessor for PMAccount.Storage);
  sub_21C7197E0(v7, type metadata accessor for PMAccount);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C7197E0(v4, type metadata accessor for PMAccount.Storage);
    goto LABEL_5;
  }

  v38 = *v4;
  v17 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  if (v38)
  {
    v30 = v38;
    MEMORY[0x21CF15300]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21CB85834();
    }

    sub_21CB85854();
    v17 = v36;
  }

LABEL_6:
  sub_21C6EA794(&v38, &qword_27CDF6930, &unk_21CBC3200);
  sub_21CB84D54();
  if (v16(v10, 1, v15))
  {
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v20 = *(v15 + 20);
    v21 = &v10[v20 + *(type metadata accessor for PMSharingGroup(0) + 20)];
    v18 = *v21;
    v19 = v21[1];
  }

  sub_21C6EA794(v10, &qword_27CDECBD8, &unk_21CBA5300);
  v22 = sub_21C7C1BFC(v17, v18, v19);
  v24 = v23;

  v36 = v22;
  v37 = v24;
  sub_21C71F3FC();
  result = sub_21CB84054();
  v26 = v35;
  *v35 = result;
  v26[1] = v27;
  *(v26 + 16) = v28 & 1;
  v26[3] = v29;
  return result;
}

void sub_21CA82D3C(uint64_t a1)
{
  v2 = sub_21CB82644();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for PMNewGroupFlow(0);
  swift_getKeyPath(a0_52);
  swift_getKeyPath(byte_21CBC3198);
  sub_21CB81DB4();

  v10 = *(v14 + 16);

  if (v10)
  {
    v11 = *(a1 + *(v9 + 60));
    if (qword_27CDEA4C0 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7253C8(v11, v14);

    swift_getKeyPath(byte_21CBC31B8);
    sub_21CB81DB4();

    if ((v14 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
      type metadata accessor for PMNewGroupFlow.Step(0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_21CBA0690;
      swift_storeEnumTagMultiPayload();
      v14 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
      sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310, MEMORY[0x277D83970]);
      sub_21C7061C8(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
      sub_21CB82654();
      (*(v3 + 16))(v5, v8, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);
      sub_21CB84D64();
      (*(v3 + 8))(v8, v2);
    }
  }
}

unint64_t sub_21CA830EC()
{
  result = qword_27CDF6DC0;
  if (!qword_27CDF6DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6DB8, &qword_21CBC3138);
    sub_21CA83170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6DC0);
  }

  return result;
}

unint64_t sub_21CA83170()
{
  result = qword_27CDF6DC8;
  if (!qword_27CDF6DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6DD0, &qword_21CBC3140);
    sub_21CA83264();
    type metadata accessor for PMNotifyGroupMembersView(255);
    sub_21C7061C8(&qword_27CDF2A90, type metadata accessor for PMNotifyGroupMembersView, &unk_21CBC3A8C);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6DC8);
  }

  return result;
}

unint64_t sub_21CA83264()
{
  result = qword_27CDF6DD8;
  if (!qword_27CDF6DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6DE0, &qword_21CBC3148);
    sub_21CA832F0();
    sub_21CA83424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6DD8);
  }

  return result;
}

unint64_t sub_21CA832F0()
{
  result = qword_27CDF6DE8;
  if (!qword_27CDF6DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6DF0, &qword_21CBC3150);
    sub_21CA8337C();
    sub_21CA833D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6DE8);
  }

  return result;
}

unint64_t sub_21CA8337C()
{
  result = qword_27CDF6DF8;
  if (!qword_27CDF6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6DF8);
  }

  return result;
}

unint64_t sub_21CA833D0()
{
  result = qword_27CDF6E00;
  if (!qword_27CDF6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6E00);
  }

  return result;
}

unint64_t sub_21CA83424()
{
  result = qword_27CDF6E08;
  if (!qword_27CDF6E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6E10, &unk_21CBC3158);
    sub_21C9B9F2C();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for PMMoveAccountsList(255);
    sub_21C7061C8(&qword_27CDEE968, type metadata accessor for PMMoveAccountsList, &unk_21CBC1478);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6E08);
  }

  return result;
}

void sub_21CA83548()
{
  v1 = *(type metadata accessor for PMNewGroupFlow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_21CA82D3C(v2);
}

uint64_t sub_21CA835A8(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v34 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  v11 = type metadata accessor for PMNewGroupFlow.Step(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E60, &qword_21CBC3368);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v34 - v21;
  v24 = &v34 + *(v23 + 56) - v21;
  sub_21CA83DA4(a1, &v34 - v21, type metadata accessor for PMNewGroupFlow.Step);
  sub_21CA83DA4(v35, v24, type metadata accessor for PMNewGroupFlow.Step);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_21CA83DA4(v22, v16, type metadata accessor for PMNewGroupFlow.Step);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CA83E0C(v24, v7, type metadata accessor for PMSharingGroup);
        v29 = sub_21CB26494(v16, v7);
        sub_21C7197E0(v7, type metadata accessor for PMSharingGroup);
        v30 = v16;
        goto LABEL_15;
      }

      v19 = v16;
    }

    else
    {
      sub_21CA83DA4(v22, v19, type metadata accessor for PMNewGroupFlow.Step);
      v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E58, &unk_21CBC3290) + 48);
      v27 = *&v19[v26];
      if (!swift_getEnumCaseMultiPayload())
      {
        v32 = *&v24[v26];
        sub_21CA83E0C(v24, v10, type metadata accessor for PMSharingGroup);
        v33 = sub_21CB26494(v19, v10);
        sub_21C7197E0(v19, type metadata accessor for PMSharingGroup);
        if ((v33 & 1) == 0)
        {
          sub_21C7197E0(v10, type metadata accessor for PMSharingGroup);

          sub_21C7197E0(v22, type metadata accessor for PMNewGroupFlow.Step);
          goto LABEL_20;
        }

        sub_21C7EBFE0();
        v29 = sub_21CB85DD4();

        v30 = v10;
        goto LABEL_15;
      }
    }

LABEL_18:
    sub_21C7197E0(v19, type metadata accessor for PMSharingGroup);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_21CA83DA4(v22, v13, type metadata accessor for PMNewGroupFlow.Step);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v28 = v34;
      sub_21CA83E0C(v24, v34, type metadata accessor for PMSharingGroup);
      v29 = sub_21CB26494(v13, v28);
      sub_21C7197E0(v28, type metadata accessor for PMSharingGroup);
      v30 = v13;
LABEL_15:
      sub_21C7197E0(v30, type metadata accessor for PMSharingGroup);
      sub_21C7197E0(v22, type metadata accessor for PMNewGroupFlow.Step);
      return v29 & 1;
    }

    v19 = v13;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_19:
    sub_21C6EA794(v22, &qword_27CDF6E60, &qword_21CBC3368);
LABEL_20:
    v29 = 0;
    return v29 & 1;
  }

LABEL_12:
  sub_21C7197E0(v22, type metadata accessor for PMNewGroupFlow.Step);
  v29 = 1;
  return v29 & 1;
}

BOOL sub_21CA83ABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E68, &unk_21CBC3370);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v15 = *(v14 + 56);
  sub_21CA83DA4(a1, &v19 - v12, type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration);
  sub_21CA83DA4(a2, &v13[v15], type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_21CA83DA4(v13, v10, type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_21CA83E0C(&v13[v15], v7, type metadata accessor for PMAccount);
      v17 = _s17PasswordManagerUI9PMAccountV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_21C7197E0(v7, type metadata accessor for PMAccount);
      sub_21C7197E0(v10, type metadata accessor for PMAccount);
      sub_21C7197E0(v13, type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration);
      return v17;
    }

    sub_21C7197E0(v10, type metadata accessor for PMAccount);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_21C6EA794(v13, &qword_27CDF6E68, &unk_21CBC3370);
    return 0;
  }

  sub_21C7197E0(v13, type metadata accessor for PMNewGroupFlow.MoveAccountsConfiguration);
  return 1;
}

uint64_t sub_21CA83DA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA83E0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA83E74()
{
  v1 = *(type metadata accessor for PMNewGroupFlow(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = type metadata accessor for MoveAccountFailureAlertData(0);
  return sub_21CA8158C(v0 + *(v4 + 20) + ((v2 + v3 + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80)));
}

uint64_t sub_21CA83F3C(uint64_t a1)
{
  v3 = *(type metadata accessor for PMNewGroupFlow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA7D9D0(a1, v4);
}

uint64_t sub_21CA83FBC(char a1)
{
  v3 = *(type metadata accessor for PMNewGroupFlow(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMSharingGroup(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_21CA81A1C(a1 & 1, v1 + v4, v7);
}

uint64_t objectdestroy_51Tm()
{
  v1 = v0;
  v2 = type metadata accessor for PMNewGroupFlow(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v98 = *(*(v2 - 1) + 64);
  v5 = type metadata accessor for PMSharingGroup(0);
  v97 = *(*(v5 - 8) + 80);
  v6 = *(*(v5 - 8) + 64);
  v7 = v1 + v4;
  v8 = type metadata accessor for PMAccount(0);
  if ((*(*(v8 - 1) + 48))(v1 + v4, 1, v8))
  {
    goto LABEL_25;
  }

  v95 = v3;

  v9 = v7 + v8[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v93 = v8;
  if (EnumCaseMultiPayload != 1)
  {
    v33 = (v3 + 16) & ~v3;

    v34 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v35 = v34[7];
    v36 = sub_21CB85C04();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v9 + v35, 1, v36))
    {
      (*(v37 + 8))(v9 + v35, v36);
    }

    v38 = v34[8];
    v39 = sub_21CB85BB4();
    v40 = *(v39 - 8);
    if (!(*(v40 + 48))(v9 + v38, 1, v39))
    {
      (*(v40 + 8))(v9 + v38, v39);
    }

    v14 = v34[9];
    v15 = sub_21CB85C44();
    v16 = *(v15 - 8);
    v4 = v33;
    v8 = v93;
    if ((*(v16 + 48))(v9 + v14, 1, v15))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v11 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v12 = *(v11 + 28);
  v13 = sub_21CB85B74();
  (*(*(v13 - 8) + 8))(v9 + v12, v13);

  v14 = *(v11 + 36);
  v15 = sub_21CB85C44();
  v16 = *(v15 - 8);
  if (!(*(v16 + 48))(v9 + v14, 1, v15))
  {
LABEL_4:
    (*(v16 + 8))(v9 + v14, v15);
  }

LABEL_5:
  v17 = (v7 + v8[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v89 = v4;
    v91 = v6;

    v18 = type metadata accessor for PMAccount.MockData(0);
    v19 = v18[8];
    v20 = sub_21CB80DD4();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (!v22(v17 + v19, 1, v20))
    {
      (*(v21 + 8))(v17 + v19, v20);
    }

    v23 = v18[12];
    if (!v22(v17 + v23, 1, v20))
    {
      (*(v21 + 8))(v17 + v23, v20);
    }

    v24 = v18[15];
    v25 = sub_21CB85BB4();
    v26 = *(v25 - 8);
    if (!(*(v26 + 48))(v17 + v24, 1, v25))
    {
      (*(v26 + 8))(v17 + v24, v25);
    }

    v27 = v18[16];
    v28 = sub_21CB85C04();
    v29 = *(v28 - 8);
    v6 = v91;
    v8 = v93;
    if (!(*(v29 + 48))(v17 + v27, 1, v28))
    {
      (*(v29 + 8))(v17 + v27, v28);
    }

    v30 = v18[18];
    v31 = sub_21CB85C44();
    v32 = *(v31 - 8);
    v4 = v89;
    if (!(*(v32 + 48))(v17 + v30, 1, v31))
    {
      (*(v32 + 8))(v17 + v30, v31);
    }
  }

  else
  {
  }

  v41 = v7 + v8[7];
  v3 = v95;
  if (*(v41 + 8))
  {
  }

LABEL_25:

  __swift_destroy_boxed_opaque_existential_0((v7 + v2[6]));
  v42 = v7 + v2[7];
  v43 = sub_21CB82644();
  (*(*(v43 - 8) + 8))(v42, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2A20, &unk_21CBB8EA0);

  v44 = v7 + v2[9];
  v45 = type metadata accessor for MoveAccountFailureAlertData(0);
  if ((*(*(v45 - 8) + 48))(v44, 1, v45))
  {
    goto LABEL_50;
  }

  v88 = v45;
  v90 = v4;
  v96 = v3;
  v92 = v6;

  v46 = v44 + v8[5];
  type metadata accessor for PMAccount.UniqueID(0);
  v47 = swift_getEnumCaseMultiPayload();

  v94 = v8;
  if (v47 != 1)
  {
    v70 = v1;

    v71 = type metadata accessor for PMAccount.CombinedUniqueID(0);
    v72 = v71[7];
    v73 = sub_21CB85C04();
    v74 = *(v73 - 8);
    if (!(*(v74 + 48))(v46 + v72, 1, v73))
    {
      (*(v74 + 8))(v46 + v72, v73);
    }

    v75 = v71[8];
    v76 = sub_21CB85BB4();
    v77 = *(v76 - 8);
    if (!(*(v77 + 48))(v46 + v75, 1, v76))
    {
      (*(v77 + 8))(v46 + v75, v76);
    }

    v51 = v71[9];
    v52 = sub_21CB85C44();
    v53 = *(v52 - 8);
    v1 = v70;
    v8 = v94;
    if ((*(v53 + 48))(v46 + v51, 1, v52))
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v48 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  v49 = *(v48 + 28);
  v50 = sub_21CB85B74();
  (*(*(v50 - 8) + 8))(v46 + v49, v50);

  v51 = *(v48 + 36);
  v52 = sub_21CB85C44();
  v53 = *(v52 - 8);
  if (!(*(v53 + 48))(v46 + v51, 1, v52))
  {
LABEL_28:
    (*(v53 + 8))(v46 + v51, v52);
  }

LABEL_29:
  v54 = (v44 + v8[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v87 = v1;

    v55 = type metadata accessor for PMAccount.MockData(0);
    v56 = v55[8];
    v57 = sub_21CB80DD4();
    v58 = *(v57 - 8);
    v59 = *(v58 + 48);
    if (!v59(v54 + v56, 1, v57))
    {
      (*(v58 + 8))(v54 + v56, v57);
    }

    v60 = v55[12];
    if (!v59(v54 + v60, 1, v57))
    {
      (*(v58 + 8))(v54 + v60, v57);
    }

    v61 = v55[15];
    v62 = sub_21CB85BB4();
    v63 = *(v62 - 8);
    v8 = v94;
    if (!(*(v63 + 48))(v54 + v61, 1, v62))
    {
      (*(v63 + 8))(v54 + v61, v62);
    }

    v64 = v55[16];
    v65 = sub_21CB85C04();
    v66 = *(v65 - 8);
    if (!(*(v66 + 48))(v54 + v64, 1, v65))
    {
      (*(v66 + 8))(v54 + v64, v65);
    }

    v67 = v55[18];
    v68 = sub_21CB85C44();
    v69 = *(v68 - 8);
    v1 = v87;
    if (!(*(v69 + 48))(v54 + v67, 1, v68))
    {
      (*(v69 + 8))(v54 + v67, v68);
    }
  }

  else
  {
  }

  v78 = v44 + v8[7];
  if (*(v78 + 8))
  {
  }

  v79 = v44 + *(v88 + 20);
  v80 = sub_21CB85C44();
  (*(*(v80 - 8) + 8))(v79, v80);

  v4 = v90;
  v6 = v92;
  v3 = v96;
LABEL_50:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D60, &unk_21CBC2FE8);

  v81 = v2[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v82 = sub_21CB823B4();
    (*(*(v82 - 8) + 8))(v7 + v81, v82);
  }

  else
  {
  }

  v83 = v3 | v97;
  v84 = (v4 + v98 + v97) & ~v97;

  sub_21C7025C4(*(v7 + v2[14]), *(v7 + v2[14] + 8));

  v85 = sub_21CB85C44();
  (*(*(v85 - 8) + 8))(v1 + v84, v85);

  return MEMORY[0x2821FE8E8](v1, v84 + v6, v83 | 7);
}

uint64_t sub_21CA85008()
{
  v1 = *(type metadata accessor for PMNewGroupFlow(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMSharingGroup(0) - 8);
  return sub_21CA8158C(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

double sub_21CA850C8()
{
  v1 = *(type metadata accessor for PMNewGroupFlow(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PMSharingGroup(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21CA81218(v0 + v2, v5);
}

double sub_21CA85194(uint64_t a1)
{
  v3 = *(type metadata accessor for PMNewGroupFlow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA7F538(a1, v4);
}

uint64_t sub_21CA85210(char a1)
{
  type metadata accessor for PMNewGroupFlow(0);

  return sub_21CA7F2FC(a1 & 1);
}

uint64_t sub_21CA85280(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMCreateGroupView.Action(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PMNewGroupFlow(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21C702EFC;

  return sub_21CA7F7F0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_21CA853D0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for PMNewGroupFlow(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PMSharingGroup(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_21C6F35D0;

  return sub_21CA814D0(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_21CA85520()
{
  result = qword_27CDF6E70;
  if (!qword_27CDF6E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6E20, L"B\a¯");
    sub_21CA855AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6E70);
  }

  return result;
}

unint64_t sub_21CA855AC()
{
  result = qword_27CDF6E78;
  if (!qword_27CDF6E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6DA0, &qword_21CBC3120);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6D98, &qword_21CBC3118);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    type metadata accessor for MoveAccountFailureAlertData(255);
    sub_21C6EADEC(&qword_27CDF6E18, &qword_27CDF6D98, &qword_21CBC3118, MEMORY[0x277CDDA18]);
    sub_21C71F3FC();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6E78);
  }

  return result;
}

uint64_t sub_21CA85740(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_21C6E8F4C(0, &qword_27CDF4460, 0x277CDBD40);
  **(*(v2 + 64) + 40) = sub_21CB85824();

  return MEMORY[0x282200948](v2);
}

uint64_t sub_21CA857E0()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[33] = v1;
  v0[2] = v0;
  v0[7] = v0 + 32;
  v0[3] = sub_21CA85920;
  v2 = swift_continuation_init();
  v0[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E80, &unk_21CBC33B0);
  v0[24] = MEMORY[0x277D85DD0];
  v0[25] = 1107296256;
  v0[26] = sub_21CA85740;
  v0[27] = &block_descriptor_33;
  v0[28] = v2;
  [v1 as:v0 + 24 getKCSharingParticipantsForFamilyMembersWithCompletionHandler:?];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_21CA85920()
{

  return MEMORY[0x2822009F8](sub_21CA85A00, 0, 0);
}

char *sub_21CA85A00()
{
  v1 = [objc_opt_self() sharedManager];
  sub_21C6E8F4C(0, &qword_27CDF4460, 0x277CDBD40);
  v2 = sub_21CB85814();

  v3 = [v1 groupMemberDataForGroupParticipants_];

  sub_21C6E8F4C(0, &qword_27CDEE440, 0x277CBAA00);
  v4 = sub_21CB85824();

  if (v4 >> 62)
  {
    v5 = sub_21CB85FA4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  v20 = MEMORY[0x277D84F90];
  result = sub_21C7B10A0(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  v8 = v20;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CF15BD0](v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    v10 = v9;
    sub_21C9DCC64(v9, v0 + 80);

    v12 = *(v20 + 16);
    v11 = *(v20 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_21C7B10A0((v11 > 1), v12 + 1, 1);
    }

    ++v7;
    *(v20 + 16) = v12 + 1;
    v13 = (v20 + 112 * v12);
    v14 = *(v0 + 80);
    v15 = *(v0 + 112);
    v13[3] = *(v0 + 96);
    v13[4] = v15;
    v13[2] = v14;
    v16 = *(v0 + 128);
    v17 = *(v0 + 144);
    v18 = *(v0 + 176);
    v13[7] = *(v0 + 160);
    v13[8] = v18;
    v13[5] = v16;
    v13[6] = v17;
  }

  while (v5 != v7);

LABEL_14:
  v19 = *(v0 + 8);

  return v19(v8);
}

uint64_t sub_21CA85C6C(uint64_t a1)
{
  v2 = sub_21CB82834();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_21CB82C94();
}

uint64_t PMWiFiDetailsWindowView.init(model:)@<X0>(uint64_t a2@<X8>)
{
  v3 = *(type metadata accessor for PMWiFiDetailsWindowView(0) + 20);
  *(a2 + v3) = swift_getKeyPath(a0_53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PMWiFiDetailsWindowModel(0);
  sub_21CA86898(&qword_27CDF2E90, type metadata accessor for PMWiFiDetailsWindowModel, &protocol conformance descriptor for PMWiFiDetailsWindowModel);

  return sub_21CB850A4();
}

uint64_t type metadata accessor for PMWiFiDetailsWindowView(uint64_t a1)
{
  result = qword_27CDF6E98;
  if (!qword_27CDF6E98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PMWiFiDetailsWindowView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v2 = type metadata accessor for PMWiFiDetailsWindowView(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMEmptyStateDetailView.Source(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2528, &qword_21CBB40D8);
  MEMORY[0x28223BE20](v28);
  v8 = (&v25 - v7);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E88, &qword_21CBC33F0);
  MEMORY[0x28223BE20](v27);
  v10 = &v25 - v9;
  v11 = type metadata accessor for PMWiFiDetailsView(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6E90, &qword_21CBC33F8);
  v14 = v1;
  sub_21CB85084();
  v15 = v30;
  swift_getKeyPath(byte_21CBC3400);
  v30 = v15;
  sub_21CA86898(&qword_27CDF2E90, type metadata accessor for PMWiFiDetailsWindowModel, &protocol conformance descriptor for PMWiFiDetailsWindowModel);
  sub_21CB810D4();

  v16 = *(v15 + 48);

  if (v16)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v17 = v11[5];
    *(v13 + v17) = swift_getKeyPath(byte_21CBC3460);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PMWiFiDetailsModel(0);
    sub_21CA86898(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);

    sub_21CB850A4();
    *(v13 + v11[7]) = 0;
    v18 = (v13 + v11[8]);
    *v18 = 0x6F435251776F6873;
    v18[1] = 0xEA00000000006564;
    sub_21CA868E0(v13, v10, type metadata accessor for PMWiFiDetailsView);
    swift_storeEnumTagMultiPayload();
    sub_21CA86898(&qword_27CDF2F88, type metadata accessor for PMWiFiDetailsView, &unk_21CBBE0B4);
    sub_21C95DD6C();
    sub_21CB83494();

    return sub_21C989EA8(v13);
  }

  else
  {
    v20 = sub_21CB85C44();
    (*(*(v20 - 8) + 56))(v6, 4, 6, v20);
    sub_21C9E14F8(v6, 0, v8);
    v21 = v26;
    sub_21CA868E0(v14, v26, type metadata accessor for PMWiFiDetailsWindowView);
    v22 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v23 = swift_allocObject();
    sub_21CA867D4(v21, v23 + v22);
    v24 = (v8 + *(v28 + 36));
    *v24 = sub_21CA86838;
    v24[1] = v23;
    v24[2] = 0;
    v24[3] = 0;
    sub_21C6EDBAC(v8, v10, &qword_27CDF2528, &qword_21CBB40D8);
    swift_storeEnumTagMultiPayload();
    sub_21CA86898(&qword_27CDF2F88, type metadata accessor for PMWiFiDetailsView, &unk_21CBBE0B4);
    sub_21C95DD6C();
    sub_21CB83494();
    return sub_21C95DE28(v8);
  }
}

uint64_t sub_21CA863D0(uint64_t a1)
{
  v16 = sub_21CB82F84();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF2518, &qword_21CBB40D0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = sub_21CB832B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMWiFiDetailsWindowView(0);
  sub_21C6EDBAC(a1 + *(v12 + 20), v7, &qword_27CDF2518, &qword_21CBB40D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_21CB85B04();
    v13 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v16);
  }

  sub_21CB832A4();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21CA8665C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(byte_21CBC3400);
  sub_21CA86898(&qword_27CDF2E90, type metadata accessor for PMWiFiDetailsWindowModel, &protocol conformance descriptor for PMWiFiDetailsWindowModel);
  sub_21CB810D4();

  *a2 = *(v3 + 48);
}

double sub_21CA86708(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBC3400);
  sub_21CA86898(&qword_27CDF2E90, type metadata accessor for PMWiFiDetailsWindowModel, &protocol conformance descriptor for PMWiFiDetailsWindowModel);
  sub_21CB810C4();

  return result;
}

uint64_t sub_21CA867D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMWiFiDetailsWindowView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA86838()
{
  v1 = *(type metadata accessor for PMWiFiDetailsWindowView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CA863D0(v2);
}

uint64_t sub_21CA86898(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CA868E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21CA8698C(uint64_t a1)
{
  sub_21CA86A70(319, &qword_27CDF6EA8, type metadata accessor for PMWiFiDetailsWindowModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_21CA86A70(319, &qword_27CDF2580, MEMORY[0x277CDDEF0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CA86A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21CA86AD4()
{
  result = qword_27CDF6EB0;
  if (!qword_27CDF6EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CDF6EB8, &qword_21CBC3518);
    sub_21CA86898(&qword_27CDF2F88, type metadata accessor for PMWiFiDetailsView, &unk_21CBBE0B4);
    sub_21C95DD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6EB0);
  }

  return result;
}

void sub_21CA86B90(uint64_t a1)
{
  sub_21C6EDA64();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21CA86C28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 32) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21CA86DB4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 32) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_21CA87068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6F40, &qword_21CBC3598);
  v3 = *(a1 + 16);
  v4 = sub_21C6EADEC(&qword_27CDF6F48, &qword_27CDF6F40, &qword_21CBC3598, MEMORY[0x277CE1198]);
  v5 = *(a1 + 24);
  v33 = v24;
  v34 = v3;
  v35 = v4;
  v36 = v5;
  v6 = sub_21CB84CC4();
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v22 - v7;
  WitnessTable = swift_getWitnessTable();
  v22[0] = WitnessTable;
  v10 = sub_21CA878A4();
  v33 = v6;
  v34 = &type metadata for PMHistoryItemLabelStyle;
  v35 = WitnessTable;
  v36 = v10;
  v22[1] = MEMORY[0x277CDE608];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v12 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v22 - v16;
  v30 = v3;
  v31 = v5;
  v32 = v25;
  v27 = v3;
  v28 = v5;
  v29 = v25;
  sub_21CB84C84();
  v18 = v22[0];
  sub_21CB840E4();
  (*(v23 + 8))(v8, v6);
  v33 = v6;
  v34 = &type metadata for PMHistoryItemLabelStyle;
  v35 = v18;
  v36 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21C72BE10(v14, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v20 = *(v12 + 8);
  v20(v14, OpaqueTypeMetadata2);
  sub_21C72BE10(v17, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v20)(v17, OpaqueTypeMetadata2);
}

double sub_21CA8738C@<D0>(uint64_t a1@<X8>, uint64_t *a2@<X0>)
{
  if (qword_27CDEA408 != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  v3 = qword_27CE185D0;
  v17 = 1;
  sub_21CA874D4(a2, &v10);
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v18 = v10;
  v19 = v11;
  v25 = v15;
  v24[2] = v12;
  v24[3] = v13;
  v24[4] = v14;
  v24[0] = v10;
  v24[1] = v11;
  sub_21CA87910(&v18, v9);
  sub_21CA87980(v24);
  *&v16[39] = v20;
  *&v16[55] = v21;
  *&v16[71] = v22;
  *&v16[87] = v23;
  *&v16[7] = v18;
  *&v16[23] = v19;
  v4 = *&v16[48];
  *(a1 + 49) = *&v16[32];
  *(a1 + 65) = v4;
  *(a1 + 81) = *&v16[64];
  *(a1 + 96) = *&v16[79];
  result = *&v16[16];
  v6 = *v16;
  *(a1 + 33) = *&v16[16];
  v7 = v17;
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 17) = v6;
  return result;
}

uint64_t sub_21CA874D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C71F3FC();

  v4 = sub_21CB84054();
  v6 = v5;
  v8 = v7;
  sub_21CB83DD4();
  v9 = sub_21CB83FA4();
  v40 = v10;
  v12 = v11;
  v14 = v13;
  sub_21C74A72C(v4, v6, v8 & 1);

  if (qword_27CDEA408 != -1)
  {
    swift_once();
  }

  v15 = qword_27CE185D0;
  if (a1[3])
  {

    v16 = sub_21CB84054();
    v18 = v17;
    v20 = v19;
    sub_21CB83EB4();
    v37 = v15;
    v21 = sub_21CB84024();
    v38 = v12;
    v23 = v22;
    v39 = v14;
    v25 = v24;

    sub_21C74A72C(v16, v18, v20 & 1);

    sub_21CB837E4();
    v26 = sub_21CB83FC4();
    v28 = v27;
    LOBYTE(v16) = v29;
    v31 = v30;
    v32 = v25 & 1;
    v14 = v39;
    v33 = v21;
    v15 = v37;
    v34 = v23;
    v12 = v38;
    sub_21C74A72C(v33, v34, v32);

    v35 = v16 & 1;
    sub_21C79B058(v26, v28, v16 & 1);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v35 = 0;
    v31 = 0;
  }

  sub_21C79B058(v9, v40, v12 & 1);

  sub_21C8FECB4(v26, v28, v35, v31);
  sub_21C85CDBC(v26, v28, v35, v31);
  *a2 = v9;
  *(a2 + 8) = v40;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = sub_21C7902AC;
  *(a2 + 48) = 0;
  *(a2 + 56) = v26;
  *(a2 + 64) = v28;
  *(a2 + 72) = v35;
  *(a2 + 80) = v31;
  sub_21C85CDBC(v26, v28, v35, v31);
  sub_21C74A72C(v9, v40, v12 & 1);
}

uint64_t sub_21CA877A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PMHistoryItemLabel(0, v9, v10, v11);
  sub_21C72BE10(a1 + *(v12 + 40), a2, a3);
  sub_21C72BE10(v8, a2, a3);
  return (*(v6 + 8))(v8, a2);
}

unint64_t sub_21CA878A4()
{
  result = qword_27CDF6F50;
  if (!qword_27CDF6F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6F50);
  }

  return result;
}

uint64_t sub_21CA87910(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6F58, &unk_21CBC35A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA87980(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6F58, &unk_21CBC35A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CA87A14@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_21CB838A4();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = sub_21CB83884();
  v27 = *(v8 - 8);
  v9 = v27;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  sub_21CB83894();
  sub_21CB838B4();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6F68, &qword_21CBC3608) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_21CA87CA4@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_21CB83074();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6F60, &qword_21CBC3600);
  return sub_21CA87A14((a2 + *(v3 + 44)));
}

uint64_t sub_21CA87CFC(uint64_t a1, char a2)
{
  *(swift_allocObject() + 16) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1EB8, &qword_21CBB5E80);
  sub_21CA895B0();
  sub_21CA0E1E8();
  sub_21C9FA524();
  return sub_21CB84FF4();
}

double sub_21CA87DD4@<D0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = a1[5];
  v38 = a1[4];
  v39 = v5;
  v40 = a1[6];
  v6 = a1[1];
  v34 = *a1;
  v35 = v6;
  v7 = a1[3];
  v36 = a1[2];
  v37 = v7;
  v23 = 0;
  KeyPath = swift_getKeyPath(aP_93);
  sub_21C7A33F0(&v34, v55);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C328(KeyPath, *&v55[0]);

  type metadata accessor for PMGroupMemberImageCache();
  sub_21CA89614();
  v9 = sub_21CB82674();
  v11 = v10;

  v31 = v38;
  v32 = v39;
  v33 = v40;
  v27 = v34;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  type metadata accessor for PMGroupMemberImageModel(0);
  swift_allocObject();
  sub_21C7A33F0(&v34, v55);

  v13 = sub_21CA42988(v12, &v34, 32.0);
  sub_21C7A344C(&v34);

  v45 = v31;
  v46 = v32;
  v47 = v33;
  v41 = v27;
  v42 = v28;
  v43 = v29;
  v44 = v30;
  LOWORD(v48) = 0;
  BYTE2(v48) = (a2 & 1) == 0;
  BYTE7(v48) = v26;
  *(&v48 + 3) = v25;
  *(&v48 + 1) = nullsub_1;
  *&v49 = 0;
  *(&v49 + 1) = nullsub_1;
  *&v50 = 0;
  BYTE8(v50) = 0;
  *(&v50 + 9) = *v24;
  HIDWORD(v50) = *&v24[3];
  *&v51 = v13;
  *(&v51 + 1) = 0x4040000000000000;
  *&v52 = sub_21C9FA598;
  *(&v52 + 1) = 0;
  LOBYTE(v53) = v23;
  DWORD1(v53) = *&v22[3];
  *(&v53 + 1) = *v22;
  *(&v53 + 1) = v9;
  v54 = v11;
  v55[0] = v27;
  v55[1] = v28;
  v55[5] = v32;
  v55[6] = v33;
  v55[3] = v30;
  v55[4] = v31;
  v55[2] = v29;
  v56 = 0;
  v57 = BYTE2(v48);
  v59 = v26;
  v58 = v25;
  v60 = nullsub_1;
  v61 = 0;
  v62 = nullsub_1;
  v63 = 0;
  v64 = 0;
  *&v65[3] = *&v24[3];
  *v65 = *v24;
  v66 = v13;
  v67 = 0x4040000000000000;
  v68 = sub_21C9FA598;
  v69 = 0;
  v70 = v23;
  *&v71[3] = *&v22[3];
  *v71 = *v22;
  v72 = v9;
  v73 = v11;
  sub_21CA0EB14(&v41, &v21);
  sub_21CA0EB70(v55);
  v14 = v52;
  *(a3 + 160) = v51;
  *(a3 + 176) = v14;
  *(a3 + 192) = v53;
  *(a3 + 208) = v54;
  v15 = v48;
  *(a3 + 96) = v47;
  *(a3 + 112) = v15;
  v16 = v50;
  *(a3 + 128) = v49;
  *(a3 + 144) = v16;
  v17 = v44;
  *(a3 + 32) = v43;
  *(a3 + 48) = v17;
  v18 = v46;
  *(a3 + 64) = v45;
  *(a3 + 80) = v18;
  result = *&v41;
  v20 = v42;
  *a3 = v41;
  *(a3 + 16) = v20;
  return result;
}

id sub_21CA88110@<X0>(uint64_t *a1@<X8>)
{
  sub_21CB25E88(v23);
  if (v24)
  {
    v2 = v25;
    sub_21CA89540(v23);
  }

  else
  {
    v2 = 0;
  }

  result = [objc_opt_self() groupMemberListFooterTextForPermissionLevel_];
  if (result)
  {
    v4 = result;
    sub_21CB855C4();

    sub_21C71F3FC();
    v5 = sub_21CB84054();
    v7 = v6;
    v9 = v8;
    sub_21CB84B34();
    v10 = sub_21CB83FB4();
    v12 = v11;
    v14 = v13;

    sub_21C74A72C(v5, v7, v9 & 1);

    sub_21CB83E84();
    v15 = sub_21CB84024();
    v17 = v16;
    v19 = v18;
    v21 = v20;

    sub_21C74A72C(v10, v12, v14 & 1);

    v22 = v19 & 1;
  }

  else
  {
    v15 = 0;
    v17 = 0;
    v22 = 0;
    v21 = 0;
  }

  *a1 = v15;
  a1[1] = v17;
  a1[2] = v22;
  a1[3] = v21;
  return result;
}

uint64_t sub_21CA882A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a1;
  v56 = a2;
  v2 = sub_21CB81024();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21CB82054();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 104);
  v10(v9, *MEMORY[0x277CDF3D0], v5, v7);
  LODWORD(v53) = sub_21CB82044();
  v51 = *(v6 + 8);
  v51(v9, v5);
  sub_21CB855C4();
  v11 = objc_allocWithZone(MEMORY[0x277D1B1A8]);
  v12 = sub_21CB85584();

  v13 = [v11 initWithBundleIdentifier_];

  v14 = [objc_opt_self() mainScreen];
  [v14 scale];
  v16 = v15;

  v17 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:82.0 scale:{82.0, v16}];
  (v10)(v9, *MEMORY[0x277CDF3C0], v5);
  LOBYTE(v10) = sub_21CB82044();
  v51(v9, v5);
  [v17 setAppearance_];
  [v17 setDrawBorder_];
  v18 = [v13 prepareImageForDescriptor_];
  if (!v18)
  {
    goto LABEL_5;
  }

  v19 = v18;
  v20 = [v18 CGImage];
  if (!v20)
  {

LABEL_5:
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    goto LABEL_6;
  }

  v21 = v20;
  [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

  v13 = v19;
  v17 = v21;
LABEL_6:

  v53 = sub_21CB84BA4();
  sub_21CB81014();
  v22 = sub_21CB81004();
  v51 = v23;
  v52 = v22;
  v24 = v55;
  v25 = *(v54 + 8);
  v25(v4, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64E8, &qword_21CBC1290);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_21CBA15A0;
  v27 = sub_21CB84BB4();
  sub_21CB81014();
  v28 = sub_21CB81004();
  v30 = v29;
  v25(v4, v24);
  sub_21CB81014();
  v31 = sub_21CB81004();
  v33 = v32;
  v25(v4, v24);
  *(v26 + 32) = v27;
  *(v26 + 40) = v28;
  *(v26 + 48) = v30;
  *(v26 + 56) = v31;
  *(v26 + 64) = v33;
  v34 = sub_21CB84BB4();
  sub_21CB81014();
  v35 = sub_21CB81004();
  v37 = v36;
  v25(v4, v24);
  sub_21CB81014();
  v38 = sub_21CB81004();
  v40 = v39;
  v25(v4, v24);
  *(v26 + 72) = v34;
  *(v26 + 80) = v35;
  *(v26 + 88) = v37;
  *(v26 + 96) = v38;
  *(v26 + 104) = v40;
  v41 = sub_21CB84BB4();
  sub_21CB81014();
  v42 = sub_21CB81004();
  v44 = v43;
  v25(v4, v24);
  sub_21CB81014();
  v45 = sub_21CB81004();
  v47 = v46;
  result = (v25)(v4, v24);
  *(v26 + 112) = v41;
  *(v26 + 120) = v42;
  *(v26 + 128) = v44;
  *(v26 + 136) = v45;
  *(v26 + 144) = v47;
  v49 = v56;
  v50 = v52;
  *v56 = v53;
  v49[1] = v50;
  v49[2] = v51;
  v49[3] = 0;
  v49[4] = 0;
  v49[5] = v26;
  *(v49 + 24) = 0;
  return result;
}

uint64_t sub_21CA88900@<X0>(uint64_t a1@<X1>, char a2@<W2>, uint64_t a3@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6F80, &qword_21CBC3630);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - v6;
  v7 = objc_opt_self();
  v8 = v7;
  if (a2)
  {
    v9 = [v7 knownSenderHeaderImageName];
    sub_21CB855C4();

    v10 = sub_21CB84BB4();
    type metadata accessor for PMSharingGroup(0);
    v11 = sub_21CB85584();
    v12 = [v8 knownSenderHeaderTitleWithGroupName_];

    v13 = sub_21CB855C4();
    v15 = v14;

    sub_21CB25E88(v36);
    if (v37)
    {
      v16 = v38;
      sub_21CA89540(v36);
    }

    else
    {
      v16 = 0;
    }

    v26 = [v8 knownSenderHeaderSubtitleForPermissionLevel_];
    v22 = sub_21CB855C4();
    v24 = v27;

    v32 = v10;
    v31 = v13;
    v20 = v15;
  }

  else
  {
    v17 = [v7 unknownSenderImageName];
    sub_21CB855C4();

    v32 = sub_21CB84BB4();
    v18 = [v8 unknownSenderHeaderTitle];
    v31 = sub_21CB855C4();
    v20 = v19;

    v21 = [v8 unknownSenderHeaderSubtitle];
    v22 = sub_21CB855C4();
    v24 = v23;
  }

  MEMORY[0x28223BE20](v25);
  *(&v30 - 2) = a1;
  *(&v30 - 8) = a2 & 1;
  sub_21CA88110(v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6F88, &qword_21CBC3638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  sub_21CA89424();
  sub_21C87DED8();
  sub_21CB85064();
  sub_21CA894A8();
  result = sub_21CB84F14();
  v29 = v31;
  *a3 = v32;
  *(a3 + 8) = v29;
  *(a3 + 16) = v20;
  *(a3 + 24) = v22;
  *(a3 + 32) = v24;
  *(a3 + 40) = result;
  *(a3 + 48) = 257;
  return result;
}

void sub_21CA88C38(unsigned __int8 a1)
{
  v1 = a1;
  v2 = objc_opt_self();
  v3 = [v2 firstBulletImageNameForWelcomeView];
  sub_21CB855C4();

  v4 = sub_21CB84BB4();
  v5 = [v2 firstBulletTitleForWelcomeView];
  v6 = sub_21CB855C4();
  v8 = v7;

  v9 = [v2 firstBulletDescriptionForWelcomeView];
  v10 = sub_21CB855C4();
  v12 = v11;

  v47[2] = v4;
  v47[3] = v6;
  v47[4] = v8;
  v47[5] = v10;
  v47[6] = v12;
  if (v1)
  {
    v13 = [v2 secondBulletImageNameForWelcomeView];
    sub_21CB855C4();

    v14 = sub_21CB84BB4();
    v15 = [v2 secondBulletTitleForWelcomeView];
    v16 = sub_21CB855C4();
    v18 = v17;

    v19 = [v2 secondBulletDescriptionForWelcomeView];
    v20 = sub_21CB855C4();
    v22 = v21;
  }

  else
  {
    v14 = 0;
    v16 = 0;
    v18 = 0;
    v20 = 0;
    v22 = 0;
  }

  v47[7] = v14;
  v47[8] = v16;
  v47[9] = v18;
  v47[10] = v20;
  v47[11] = v22;
  v23 = [v2 thirdBulletImageNameForWelcomeView];
  sub_21CB855C4();

  v24 = sub_21CB84BB4();
  v25 = [v2 thirdBulletTitleForWelcomeView];
  v26 = sub_21CB855C4();
  v28 = v27;

  v29 = [v2 thirdBulletDescriptionForWelcomeView];
  v30 = sub_21CB855C4();
  v32 = v31;

  v33 = 0;
  v47[12] = v24;
  v47[13] = v26;
  v47[14] = v28;
  v47[15] = v30;
  v47[16] = v32;
  v34 = 3;
  v35 = MEMORY[0x277D84F90];
LABEL_5:
  if (v33 > 3)
  {
    v34 = v33;
  }

  v36 = v34 + 1;
  v37 = &v47[5 * v33];
  while (1)
  {
    if (v33 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6FA8, &qword_21CBC3688);
      swift_arrayDestroy();
      return;
    }

    if (v36 == ++v33)
    {
      break;
    }

    v38 = v37 + 5;
    v39 = v37[2];
    v37 += 5;
    if (v39)
    {
      v41 = *v38;
      v40 = v38[1];
      v43 = *(v38 - 2);
      v42 = *(v38 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_21CA4FA54(0, *(v35 + 2) + 1, 1, v35);
      }

      v45 = *(v35 + 2);
      v44 = *(v35 + 3);
      if (v45 >= v44 >> 1)
      {
        v35 = sub_21CA4FA54((v44 > 1), v45 + 1, 1, v35);
      }

      *(v35 + 2) = v45 + 1;
      v46 = &v35[40 * v45];
      *(v46 + 4) = v39;
      *(v46 + 5) = v43;
      *(v46 + 6) = v42;
      *(v46 + 7) = v41;
      *(v46 + 8) = v40;
      v34 = 3;
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_21CA88FA4(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 headerImageNameForWelcomeView];
  sub_21CB855C4();

  v4 = sub_21CB84BB4();
  type metadata accessor for PMSharingGroup(0);
  v5 = sub_21CB85584();
  v6 = [v2 headerTitleForWelcomeViewWithGroupName_];

  v7 = sub_21CB855C4();
  v9 = v8;

  sub_21CB25E88(v12);
  if (v13)
  {
    v10 = v14;
    sub_21CA89540(v12);
  }

  else
  {
    v10 = 0;
  }

  sub_21CA88C38(v10);
  *a1 = v4;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v11;
  *(a1 + 48) = 256;
}

uint64_t sub_21CA890BC@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_21CB81024();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_21CB84BB4();
  sub_21CB81014();
  v5 = sub_21CB81004();
  v32 = v6;
  v33 = v5;
  v7 = *(v2 + 8);
  v7(v4, v1);
  sub_21CB81014();
  v8 = sub_21CB81004();
  v30 = v9;
  v31 = v8;
  v7(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64E8, &qword_21CBC1290);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CBA15B0;
  v11 = sub_21CB84C14();
  sub_21CB81014();
  v12 = sub_21CB81004();
  v14 = v13;
  v7(v4, v1);
  sub_21CB81014();
  v15 = sub_21CB81004();
  v17 = v16;
  v7(v4, v1);
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  *(v10 + 48) = v14;
  *(v10 + 56) = v15;
  *(v10 + 64) = v17;
  v18 = sub_21CB84BB4();
  sub_21CB81014();
  v19 = sub_21CB81004();
  v21 = v20;
  v7(v4, v1);
  sub_21CB81014();
  v22 = sub_21CB81004();
  v24 = v23;
  result = (v7)(v4, v1);
  *(v10 + 72) = v18;
  *(v10 + 80) = v19;
  *(v10 + 88) = v21;
  *(v10 + 96) = v22;
  *(v10 + 104) = v24;
  v26 = v35;
  v27 = v32;
  v28 = v33;
  *v35 = v34;
  v26[1] = v28;
  v26[2] = v27;
  v29 = v30;
  v26[3] = v31;
  v26[4] = v29;
  v26[5] = v10;
  *(v26 + 24) = 0;
  return result;
}

unint64_t sub_21CA89424()
{
  result = qword_27CDF6F90;
  if (!qword_27CDF6F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6F88, &qword_21CBC3638);
    sub_21CA0E1E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6F90);
  }

  return result;
}

unint64_t sub_21CA894A8()
{
  result = qword_27CDF6F98;
  if (!qword_27CDF6F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF6F80, &qword_21CBC3630);
    sub_21CA89424();
    sub_21C87DED8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6F98);
  }

  return result;
}

uint64_t sub_21CA89540(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECC50, &unk_21CBB52A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CA895B0()
{
  result = qword_27CDF4E88;
  if (!qword_27CDF4E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1EB8, &qword_21CBB5E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF4E88);
  }

  return result;
}

unint64_t sub_21CA89614()
{
  result = qword_27CDEECA8;
  if (!qword_27CDEECA8)
  {
    type metadata accessor for PMGroupMemberImageCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEECA8);
  }

  return result;
}

void sub_21CA8966C(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 headerImageName];
  sub_21CB855C4();

  v39 = sub_21CB84BB4();
  v4 = [v2 headerTitle];
  v38 = sub_21CB855C4();
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64E8, &qword_21CBC1290);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21CBA15A0;
  v8 = [v2 firstBulletImageName];
  sub_21CB855C4();

  v9 = sub_21CB84BB4();
  v10 = [v2 firstBulletTitle];
  v11 = sub_21CB855C4();
  v13 = v12;

  v14 = [v2 firstBulletDescription];
  v15 = sub_21CB855C4();
  v17 = v16;

  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  *(v7 + 48) = v13;
  *(v7 + 56) = v15;
  *(v7 + 64) = v17;
  v18 = [v2 secondBulletImageName];
  sub_21CB855C4();

  v19 = sub_21CB84BB4();
  v20 = [v2 secondBulletTitle];
  v21 = sub_21CB855C4();
  v23 = v22;

  v24 = [v2 secondBulletDescription];
  v25 = sub_21CB855C4();
  v27 = v26;

  *(v7 + 72) = v19;
  *(v7 + 80) = v21;
  *(v7 + 88) = v23;
  *(v7 + 96) = v25;
  *(v7 + 104) = v27;
  v28 = [v2 thirdBulletImageName];
  sub_21CB855C4();

  v29 = sub_21CB84BB4();
  v30 = [v2 thirdBulletTitle];
  v31 = sub_21CB855C4();
  v33 = v32;

  v34 = [v2 thirdBulletDescription];
  v35 = sub_21CB855C4();
  v37 = v36;

  *(v7 + 112) = v29;
  *(v7 + 120) = v31;
  *(v7 + 128) = v33;
  *(v7 + 136) = v35;
  *(v7 + 144) = v37;
  *a1 = v39;
  *(a1 + 8) = v38;
  *(a1 + 16) = v6;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v7;
  *(a1 + 48) = 256;
}

uint64_t sub_21CA89950(uint64_t a1)
{
  if (*(a1 + 16) < 2uLL)
  {
    return 0;
  }

  v18 = v1;
  v19 = v2;
  sub_21CB13134(MEMORY[0x277D84F90]);
  KeyPath = swift_getKeyPath(aP_93);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C81C328(KeyPath, v10);

  type metadata accessor for PMGroupMemberImageCache();
  sub_21CA89614();
  v5 = sub_21CB82674();
  v7 = v6;

  v14 = v5;
  v15 = v7;
  v16 = swift_getKeyPath(a8_36);
  v17 = 0;
  v11[0] = a1;
  *&v11[1] = xmmword_21CBC3620;
  v11[3] = 5;
  v11[4] = 0x3FF0CCCCCCCCCCCDLL;
  v12 = 0;

  v8 = sub_21C867B48(MEMORY[0x277D84F98], a1, v11, 100.0);

  v13 = v8;
  sub_21CA89DD8();
  return sub_21CB84F14();
}

uint64_t sub_21CA89B14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 headerImageName];
  sub_21CB855C4();

  v32 = sub_21CB84C14();
  v6 = *(a1 + 16);
  if (v6)
  {
    v33[0] = MEMORY[0x277D84F90];
    sub_21CB86154();
    v7 = (a1 + 32);
    v8 = v6;
    do
    {
      v9 = v7[5];
      v35[4] = v7[4];
      v35[5] = v9;
      v35[6] = v7[6];
      v10 = v7[1];
      v35[0] = *v7;
      v35[1] = v10;
      v11 = v7[3];
      v35[2] = v7[2];
      v35[3] = v11;
      sub_21C7A33F0(v35, v34);
      sub_21C9DC5CC();
      sub_21C7A344C(v35);
      sub_21CB86134();
      sub_21CB86164();
      sub_21CB86174();
      sub_21CB86144();
      v7 += 7;
      --v8;
    }

    while (v8);
  }

  sub_21C7B9798();
  v12 = sub_21CB85814();

  v13 = [v4 headerTitleForInvitedGroupMemberData_];

  v14 = sub_21CB855C4();
  v16 = v15;

  if (v6)
  {
    v31 = v16;
    v33[14] = MEMORY[0x277D84F90];
    sub_21CB86154();
    v17 = (a1 + 32);
    do
    {
      v18 = v17[4];
      v19 = v17[5];
      v20 = v17[2];
      v34[3] = v17[3];
      v34[4] = v18;
      v21 = v17[6];
      v34[5] = v19;
      v34[6] = v21;
      v22 = *v17;
      v23 = v17[1];
      v17 += 7;
      v34[0] = v22;
      v34[1] = v23;
      v34[2] = v20;
      sub_21C7A33F0(v34, v33);
      sub_21C9DC5CC();
      sub_21C7A344C(v34);
      sub_21CB86134();
      sub_21CB86164();
      sub_21CB86174();
      sub_21CB86144();
      --v6;
    }

    while (v6);
    v16 = v31;
  }

  v24 = sub_21CB85814();

  v25 = [v4 headerSubtitleForInvitedGroupMemberData_];

  v26 = sub_21CB855C4();
  v28 = v27;

  result = sub_21CA89950(a1);
  *a2 = v32;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v26;
  *(a2 + 32) = v28;
  *(a2 + 40) = result;
  *(a2 + 48) = v30;
  *(a2 + 49) = 1;
  return result;
}

unint64_t sub_21CA89DD8()
{
  result = qword_27CDF6FA0;
  if (!qword_27CDF6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6FA0);
  }

  return result;
}

uint64_t static LAContext.pm_authenticate(reason:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21C6F35D0;

  return sub_21CA8A084(a1, a2);
}

uint64_t static LAContext.pm_authenticate(localAuthenticationOptions:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21C702EFC;

  return sub_21CA8A978(a1);
}

uint64_t sub_21CA89F88(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = sub_21CB85474();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_21CA8A084(uint64_t a1, uint64_t a2)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;

  return MEMORY[0x2822009F8](sub_21CA8A114, 0, 0);
}

uint64_t sub_21CA8A114()
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v0[29] = v1;
  v2 = WBSAuthenticationPolicyForPasswordManager();
  v0[18] = 0;
  v3 = [v1 canEvaluatePolicy:v2 error:v0 + 18];
  v4 = v0[18];
  v0[30] = v4;
  if (v3)
  {
    v5 = v4;
    goto LABEL_8;
  }

  if (!v4 || (v6 = v4, [v6 code] != -5))
  {
LABEL_8:
    v9 = v0 + 26;
    if (v0[28])
    {
      v10 = v0 + 10;
      v11 = sub_21CB85584();
      v0[31] = v11;
      v0[10] = v0;
      v0[15] = v9;
      v0[11] = sub_21CA8A44C;
      v12 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF5F90, &unk_21CBBFE80);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_21CA92000;
      v0[21] = &block_descriptor_12;
      v0[22] = v12;
      [v1 evaluatePolicy:v2 localizedReason:v11 reply:{v0 + 18, v15}];
    }

    else
    {
      v10 = v0 + 2;
      sub_21CB12FF8(MEMORY[0x277D84F90]);
      v13 = sub_21CB85464();
      v0[33] = v13;

      v0[2] = v0;
      v0[7] = v9;
      v0[3] = sub_21CA8A62C;
      v14 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6FB0, &qword_21CBC36B0);
      v0[18] = MEMORY[0x277D85DD0];
      v0[19] = 1107296256;
      v0[20] = sub_21CA89F88;
      v0[21] = &block_descriptor_8_0;
      v0[22] = v14;
      [v1 evaluatePolicy:v2 options:v13 reply:{v0 + 18, v15}];
    }

    return MEMORY[0x282200938](v10);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_21CA8A44C()
{
  v1 = *(*v0 + 112);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_21CA8A818;
  }

  else
  {
    v2 = sub_21CA8A588;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CA8A588()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CA8A62C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_21CA8A8C8;
  }

  else
  {
    v2 = sub_21CA8A768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CA8A768()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CA8A818(uint64_t a1)
{
  v2 = v1[31];
  v4 = v1[29];
  v3 = v1[30];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_21CA8A8C8(uint64_t a1)
{
  v2 = v1[33];
  v4 = v1[29];
  v3 = v1[30];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_21CA8A978(uint64_t a1)
{
  *(v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_21CA8AA08, 0, 0);
}

uint64_t sub_21CA8AA08()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD4790]) init];
  v0[20] = v1;
  v2 = WBSAuthenticationPolicyForPasswordManager();
  v0[10] = 0;
  v3 = [v1 canEvaluatePolicy:v2 error:v0 + 10];
  v4 = v0[10];
  v0[21] = v4;
  if (v3)
  {
    v5 = v4;
    goto LABEL_8;
  }

  if (!v4 || (v6 = v4, [v6 code] != -5))
  {
LABEL_8:
    v9 = sub_21CB85464();
    v0[22] = v9;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_21CA8AC64;
    v10 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6FB0, &qword_21CBC36B0);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_21CA89F88;
    v0[13] = &block_descriptor_34;
    v0[14] = v10;
    [v1 evaluatePolicy:v2 options:v9 reply:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_21CA8AC64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_21CA8AE50;
  }

  else
  {
    v2 = sub_21CA8ADA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21CA8ADA0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21CA8AE50(uint64_t a1)
{
  v2 = v1[22];
  v4 = v1[20];
  v3 = v1[21];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_21CA8AF10()
{
  swift_getKeyPath(aP_94);
  sub_21CA8BA08();
  sub_21CB810D4();
}

uint64_t PMWiFiDetailsWindowModel.__allocating_init(networkID:)(__int128 *a1)
{
  v2 = swift_allocObject();
  PMWiFiDetailsWindowModel.init(networkID:)(a1);
  return v2;
}

uint64_t PMWiFiDetailsWindowModel.init(networkID:)(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v34 = type metadata accessor for PMWiFiNetwork(0);
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v33 = &v31 - v10;
  v35 = *a1;
  v12 = *(a1 + 2);
  v11 = *(a1 + 3);
  v13 = MEMORY[0x277D84FA0];
  *(v2 + 48) = 0;
  *(v2 + 56) = v13;
  *(v2 + 64) = swift_getKeyPath(byte_21CBC36B8);
  sub_21CB81104();
  *(v2 + 16) = v35;
  *(v2 + 32) = v12;
  *(v2 + 40) = v11;
  v14 = sub_21CA8B574();
  v37 = v2;
  *&v35 = sub_21CA8BA08();
  sub_21CB810D4();

  v15 = *(v2 + 24);
  v16 = *(v2 + 32);
  v17 = *(v2 + 40);
  v37 = *(v2 + 16);
  v38 = v15;
  v39 = v16;
  v40 = v17;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6FC0, &qword_21CBC3700);
  MEMORY[0x21CF14A20](v36, v18);
  v19 = v36[0];
  v20 = v36[1];

  if (v20)
  {
    v21 = *(v2 + 64);
    v22 = qword_27CDEA4C0;

    if (v22 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C746438(v21, v37);

    swift_getKeyPath(byte_21CBC3708);
    swift_getKeyPath(byte_21CBC3730);
    sub_21CB81DB4();

    v24 = v37;
    v37 = v19;
    v38 = v20;
    MEMORY[0x28223BE20](v23);
    *(&v31 - 2) = &v37;
    sub_21C9693F8(sub_21C864F4C, v24, v6);

    if ((*(v7 + 48))(v6, 1, v34) == 1)
    {
      sub_21CA8C01C(v6);
    }

    else
    {
      v25 = v33;
      sub_21C6F0E30(v6, v33);
      v26 = v32;
      sub_21C84BF7C(v25, v32);
      type metadata accessor for PMWiFiDetailsModel(0);
      v27 = swift_allocObject();
      *(v27 + 16) = swift_getKeyPath(byte_21CBC36B8);
      v28 = (v27 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
      v28[1] = 0;
      v28[2] = 0;
      *v28 = 0;
      *(v27 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) = 0;
      sub_21CB81104();
      sub_21C6F0E30(v26, v27 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network);
      KeyPath = swift_getKeyPath(aP_94);
      MEMORY[0x28223BE20](KeyPath);
      *(&v31 - 2) = v2;
      *(&v31 - 1) = v27;
      v37 = v2;
      sub_21CB810C4();

      sub_21C864EF0(v25);
    }
  }

  return v2;
}

uint64_t sub_21CA8B45C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C7A230C(v3, a1);

  if (v4)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath(asc_21CBC3830);
    MEMORY[0x28223BE20](KeyPath);
    sub_21CA8BA08();
    sub_21CB810C4();
  }
}

double sub_21CA8B574()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE660, &unk_21CBC3820);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = *(v0 + 64);
  v7 = qword_27CDEA4C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v6, v10);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CA8C180();
  sub_21CB81E04();

  (*(v3 + 8))(v5, v2);
  swift_getKeyPath(asc_21CBC3830);
  v10 = v1;
  sub_21CA8BA08();
  sub_21CB810D4();

  v10 = v1;
  swift_getKeyPath(asc_21CBC3830);
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v10 = v1;
  swift_getKeyPath(asc_21CBC3830);
  sub_21CB810E4();

  return result;
}

uint64_t sub_21CA8B830@<X0>(void *a1@<X8>)
{
  sub_21CA8BA08();
  sub_21CB810D4();

  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  *a1 = v1[2];
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v4;
}

uint64_t sub_21CA8B8C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21CA8BA08();
  sub_21CB810D4();

  v4 = v3[3];
  v6 = v3[4];
  v5 = v3[5];
  *a2 = v3[2];
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
}

double sub_21CA8B958(__n128 *a1, uint64_t *a2)
{
  sub_21CA8BA08();
  sub_21CB810C4();

  return result;
}

unint64_t sub_21CA8BA08()
{
  result = qword_27CDF2E90;
  if (!qword_27CDF2E90)
  {
    type metadata accessor for PMWiFiDetailsWindowModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF2E90);
  }

  return result;
}

uint64_t type metadata accessor for PMWiFiDetailsWindowModel(uint64_t a1)
{
  result = qword_27CDF6FC8;
  if (!qword_27CDF6FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CA8BAAC()
{
  swift_getKeyPath(asc_21CBC3830);
  sub_21CA8BA08();
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21CA8BB34@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath(asc_21CBC3830);
  sub_21CA8BA08();
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

double sub_21CA8BBC4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v16 = v5;
    sub_21CA8BA08();
    sub_21CB810D4();

    v6 = v5[3];
    v7 = v5[4];
    v8 = v5[5];
    v16 = v5[2];
    v17 = v6;
    v18 = v7;
    v19 = v8;

    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6FC0, &qword_21CBC3700);
    MEMORY[0x21CF14A20](&v14, v9);
    v10 = v15;
    if (v15)
    {
      v11 = v14;

      v12 = sub_21C7A1508(v11, v10, v2);

      if ((v12 & 1) == 0)
      {
        KeyPath = swift_getKeyPath(aP_94);
        MEMORY[0x28223BE20](KeyPath);
        v16 = v5;
        sub_21CB810C4();

        return result;
      }
    }

    else
    {
    }
  }

  return result;
}

char *PMWiFiDetailsWindowModel.deinit()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI24PMWiFiDetailsWindowModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PMWiFiDetailsWindowModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17PasswordManagerUI24PMWiFiDetailsWindowModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_21CA8BF20(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBC3708);
  swift_getKeyPath(byte_21CBC3730);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CA8BFA0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBC3708);
  swift_getKeyPath(byte_21CBC3730);

  return sub_21CB81DC4();
}

uint64_t sub_21CA8C01C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE678, &unk_21CBBA210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CA8C08C(uint64_t a1)
{
  result = sub_21CB81114();
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

unint64_t sub_21CA8C180()
{
  result = qword_27CDEE670;
  if (!qword_27CDEE670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEE660, &unk_21CBC3820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEE670);
  }

  return result;
}

uint64_t sub_21CA8C210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - v11;
  sub_21CA8966C(v28);
  sub_21CB81014();
  sub_21CB81014();
  v13 = sub_21CB80FF4();
  v26 = v14;
  v27 = v13;
  v15 = *(v7 + 8);
  v15(v9, v6);
  v15(v12, v6);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;

  sub_21CB81014();
  v17 = sub_21CB81004();
  v19 = v18;
  v15(v12, v6);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = v28[1];
  *a3 = v28[0];
  *(a3 + 16) = v21;
  *(a3 + 32) = v28[2];
  *(a3 + 48) = v29;
  v22 = v26;
  *(a3 + 56) = v27;
  *(a3 + 64) = v22;
  *(a3 + 72) = sub_21CA8C4A8;
  *(a3 + 80) = v16;
  *(a3 + 88) = 0;
  *(a3 + 96) = v17;
  *(a3 + 104) = v19;
  *(a3 + 112) = sub_21CA8C4D4;
  *(a3 + 120) = v20;
  *(a3 + 128) = 0;
  v23 = *(type metadata accessor for PMOnboardingView(0) + 28);
  *(a3 + v23) = swift_getKeyPath(byte_21CBC38F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
}

unint64_t sub_21CA8C514()
{
  result = qword_27CDF6FD8;
  if (!qword_27CDF6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF6FD8);
  }

  return result;
}

uint64_t type metadata accessor for PMNotifyGroupMembersView(uint64_t a1)
{
  result = qword_27CDF6FF0;
  if (!qword_27CDF6FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CA8C5DC(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21CA8C6F0(319, &qword_27CDEE458, &type metadata for PMGroupMember, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_21C7226D8();
      if (v3 <= 0x3F)
      {
        sub_21CA8C6F0(319, &qword_27CDF4000, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_21C95B8A4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21CA8C6F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_21CA8C75C@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = type metadata accessor for PMNotifyGroupMembersView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for PMOnboardingView(0);
  MEMORY[0x28223BE20](v38);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA89B14(*(v1 + *(v3 + 28)), v45);
  v9 = objc_opt_self();
  v10 = [v9 sendMessageButtonTitle];
  v11 = sub_21CB855C4();
  v34 = v12;
  v35 = v11;

  v36 = type metadata accessor for PMNotifyGroupMembersView;
  sub_21CA8D2A0(v1, v6, type metadata accessor for PMNotifyGroupMembersView);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_21CA8D0B4(v6, v14 + v13);
  v15 = [v9 notNowButtonTitle];
  v16 = sub_21CB855C4();
  v32 = v17;
  v33 = v16;

  sub_21CA8D2A0(v1, v6, type metadata accessor for PMNotifyGroupMembersView);
  v18 = swift_allocObject();
  sub_21CA8D0B4(v6, v18 + v13);
  v19 = v45[2];
  *(v8 + 1) = v45[1];
  *(v8 + 2) = v19;
  *(v8 + 24) = v46;
  *v8 = v45[0];
  v20 = v34;
  *(v8 + 7) = v35;
  *(v8 + 8) = v20;
  *(v8 + 9) = sub_21CA8D118;
  *(v8 + 10) = v14;
  v8[88] = 0;
  v21 = v32;
  *(v8 + 12) = v33;
  *(v8 + 13) = v21;
  *(v8 + 14) = sub_21CA8D178;
  *(v8 + 15) = v18;
  v8[128] = 0;
  v22 = *(v38 + 28);
  *&v8[v22] = swift_getKeyPath(asc_21CBC3AE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v23 = v1 + *(v3 + 36);
  v24 = *v23;
  v25 = *(v23 + 8);
  v43 = v24;
  v44 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  sub_21CB84D74();
  sub_21CA8D2A0(v1, v6, v36);
  v26 = swift_allocObject();
  sub_21CA8D0B4(v6, v26 + v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7000, &qword_21CBC3B08);
  sub_21CA8D258(&qword_27CDEE360, type metadata accessor for PMOnboardingView, &unk_21CBB3918);
  v27 = type metadata accessor for PMSendGroupInviteMessageSheet(255);
  v28 = sub_21CB83994();
  v29 = sub_21CA8D258(&qword_27CDF7008, type metadata accessor for PMSendGroupInviteMessageSheet, &unk_21CBCA388);
  v39 = v27;
  v40 = v28;
  v41 = v29;
  v42 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  sub_21CB847B4();

  return sub_21CA8D378(v8, type metadata accessor for PMOnboardingView);
}

uint64_t sub_21CA8CBAC(uint64_t a1)
{
  type metadata accessor for PMNotifyGroupMembersView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CA8CC20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_21CB82F84();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB83994();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMNotifyGroupMembersView(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMSendGroupInviteMessageSheet(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CA8D2A0(a1, v16, type metadata accessor for PMSharingGroup);
  v17 = *(a1 + *(v10 + 28));
  sub_21CA8D2A0(a1, v13, type metadata accessor for PMNotifyGroupMembersView);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_21CA8D0B4(v13, v19 + v18);
  *&v16[*(v14 + 20)] = v17;
  v20 = &v16[*(v14 + 24)];
  *v20 = sub_21CA8D308;
  v20[1] = v19;
  v29 = 0xD00000000000001BLL;
  v30 = 0x800000021CB93A80;
  LOBYTE(v19) = *(a1 + *(v10 + 40) + 8);

  if ((v19 & 1) == 0)
  {
    sub_21CB85B04();
    v21 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v24 + 8))(v5, v25);
  }

  sub_21CB834F4();
  sub_21CA8D258(&qword_27CDF7008, type metadata accessor for PMSendGroupInviteMessageSheet, &unk_21CBCA388);
  v22 = v27;
  sub_21CB84524();
  (*(v26 + 8))(v8, v22);
  return sub_21CA8D378(v16, type metadata accessor for PMSendGroupInviteMessageSheet);
}

uint64_t sub_21CA8D01C(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = type metadata accessor for PMNotifyGroupMembersView(0);
    (*(a2 + *(v3 + 24)))(1);
  }

  type metadata accessor for PMNotifyGroupMembersView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF40F0, &qword_21CBA2500);
  return sub_21CB84D64();
}

uint64_t sub_21CA8D0B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMNotifyGroupMembersView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CA8D118()
{
  v1 = *(type metadata accessor for PMNotifyGroupMembersView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CA8CBAC(v2);
}

uint64_t sub_21CA8D1E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMNotifyGroupMembersView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA8CC20(v4, a1);
}

uint64_t sub_21CA8D258(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CA8D2A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CA8D308(char a1)
{
  v3 = *(type metadata accessor for PMNotifyGroupMembersView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CA8D01C(a1 & 1, v4);
}

uint64_t sub_21CA8D378(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CA8D3EC()
{
  result = qword_27CDF7010;
  if (!qword_27CDF7010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7010);
  }

  return result;
}

void sub_21CA8D488(uint64_t a1)
{
  sub_21CA8D528(319);
  if (v1 <= 0x3F)
  {
    sub_21CB811C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CA8D528(uint64_t a1)
{
  if (!qword_27CDF7040)
  {
    type metadata accessor for PMOfflineMigrationPayload.OTPParameters(255);
    v1 = sub_21CB85864();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF7040);
    }
  }
}

uint64_t sub_21CA8D5C8(uint64_t a1)
{
  result = sub_21CB811C4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_21CA8D6B0(uint64_t a1@<X8>)
{
  sub_21CA903DC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_21CA8D6E4(uint64_t a2@<X8>)
{
  sub_21CA903DC();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_21CA8D71C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CA902E0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_21CA8D76C()
{
  result = qword_27CDF7058;
  if (!qword_27CDF7058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7058);
  }

  return result;
}

unint64_t sub_21CA8D7C4()
{
  result = qword_27CDF7060;
  if (!qword_27CDF7060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7060);
  }

  return result;
}

unint64_t sub_21CA8D81C()
{
  result = qword_27CDF7068;
  if (!qword_27CDF7068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7068);
  }

  return result;
}

uint64_t sub_21CA8D870(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CA90334();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_21CA8D8C0()
{
  result = qword_27CDF7070;
  if (!qword_27CDF7070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7070);
  }

  return result;
}

unint64_t sub_21CA8D918()
{
  result = qword_27CDF7078;
  if (!qword_27CDF7078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7078);
  }

  return result;
}

unint64_t sub_21CA8D970()
{
  result = qword_27CDF7080;
  if (!qword_27CDF7080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7080);
  }

  return result;
}

uint64_t sub_21CA8D9C4(uint64_t a1, uint64_t a2)
{
  sub_21CB86484();
  sub_21CB85494();
  return sub_21CB864D4();
}

uint64_t sub_21CA8DA30(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CA90388();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_21CA8DA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21CB86484();
  sub_21CB85494();
  return sub_21CB864D4();
}

unint64_t sub_21CA8DAE8()
{
  result = qword_27CDF7088;
  if (!qword_27CDF7088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7088);
  }

  return result;
}

unint64_t sub_21CA8DB40()
{
  result = qword_27CDF7090;
  if (!qword_27CDF7090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7090);
  }

  return result;
}

unint64_t sub_21CA8DB98()
{
  result = qword_27CDF7098;
  if (!qword_27CDF7098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7098);
  }

  return result;
}

uint64_t sub_21CA8DC1C()
{
  v0 = sub_21CB81374();
  __swift_allocate_value_buffer(v0, qword_27CE185F0);
  __swift_project_value_buffer(v0, qword_27CE185F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7110, &qword_21CBC4298);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7118, &unk_21CBC42A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21CBBC030;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "otp_parameters";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_21CB81354();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "batch_size";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "batch_index";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "batch_id";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return sub_21CB81364();
}

uint64_t sub_21CA8DEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CB81224();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
          sub_21CA8F734(&qword_27CDF70A8, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3FF8);
          sub_21CB81294();
        }

        else if (result == 2)
        {
          sub_21CB81254();
        }
      }

      else if (result == 3 || result == 4 || result == 5)
      {
        sub_21CB81274();
      }

      result = sub_21CB81224();
    }
  }

  return result;
}

uint64_t sub_21CA8DFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0), sub_21CA8F734(&qword_27CDF70A8, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3FF8), result = sub_21CB81344(), !v4))
  {
    if (!v3[2] || (result = sub_21CB81304(), !v4))
    {
      if (!v3[3] || (result = sub_21CB81324(), !v4))
      {
        if (!v3[4] || (result = sub_21CB81324(), !v4))
        {
          if (!v3[5] || (result = sub_21CB81324(), !v4))
          {
            type metadata accessor for PMOfflineMigrationPayload(0);
            return sub_21CB811A4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_21CA8E160@<X0>(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v1;
  return sub_21CB811B4();
}

uint64_t sub_21CA8E1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_21CB811C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21CA8E220(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_21CB811C4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21CA8E2E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CA8F734(&qword_27CDF7108, type metadata accessor for PMOfflineMigrationPayload, &unk_21CBC4128);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CA8E388(uint64_t a1)
{
  v2 = sub_21CA8F734(&qword_27CDF70C0, type metadata accessor for PMOfflineMigrationPayload, &unk_21CBC4160);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CA8E3F4(uint64_t a1, uint64_t a2)
{
  sub_21CA8F734(&qword_27CDF70C0, type metadata accessor for PMOfflineMigrationPayload, &unk_21CBC4160);

  return sub_21CB812D4();
}

uint64_t sub_21CA8E474()
{
  v0 = sub_21CB81374();
  __swift_allocate_value_buffer(v0, qword_27CE18608);
  __swift_project_value_buffer(v0, qword_27CE18608);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7110, &qword_21CBC4298);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7118, &unk_21CBC42A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21CBC3B80;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "secret";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21CB81354();
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
  *v11 = "issuer";
  *(v11 + 1) = 6;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "algorithm";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "digits";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "type";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "counter";
  *(v19 + 1) = 7;
  v19[16] = 2;
  v8();
  return sub_21CB81364();
}

uint64_t sub_21CA8E774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21CB81224();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result == 1)
        {
          sub_21CB81244();
        }

        else if (result == 2 || result == 3)
        {
          sub_21CB81264();
        }
      }

      else
      {
        if (result <= 5)
        {
          v6 = v3;
          if (result == 4)
          {
            sub_21CA902E0();
          }

          else
          {
            sub_21CA90334();
          }

          goto LABEL_5;
        }

        if (result == 6)
        {
          v6 = v3;
          sub_21CA90388();
LABEL_5:
          v3 = v6;
          sub_21CB81234();
          goto LABEL_6;
        }

        if (result == 7)
        {
          sub_21CB81284();
        }
      }

LABEL_6:
      result = sub_21CB81224();
    }
  }

  return result;
}

uint64_t sub_21CA8E8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
  }

  else
  {
    if (!v7)
    {
      if ((v6 & 0xFF000000000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v8 = v5;
    v9 = v5 >> 32;
  }

  if (v8 == v9)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_21CB812F4();
  if (v4)
  {
    return result;
  }

LABEL_10:
  v11 = v3[3];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v3[2] & 0xFFFFFFFFFFFFLL;
  }

  if (!v12 || (result = sub_21CB81314(), !v4))
  {
    v13 = v3[5];
    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v3[4] & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 || (result = sub_21CB81314(), !v4))
    {
      v15 = v4;
      if (v3[6])
      {
        sub_21CA902E0();
        result = sub_21CB812E4();
        if (v4)
        {
          return result;
        }

        v15 = 0;
      }

      if (v3[8])
      {
        sub_21CA90334();
        result = sub_21CB812E4();
        if (v15)
        {
          return result;
        }

        v15 = 0;
      }

      if (v3[10])
      {
        sub_21CA90388();
        v16 = v15;
        result = sub_21CB812E4();
        if (v15)
        {
          return result;
        }
      }

      else
      {
        v16 = v15;
      }

      if (!v3[12] || (result = sub_21CB81334(), !v16))
      {
        type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
        return sub_21CB811A4();
      }
    }
  }

  return result;
}

uint64_t sub_21CA8EB10@<X0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_21CBA6120;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  return sub_21CB811B4();
}

uint64_t sub_21CA8EB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_21CB811C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21CA8EBF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_21CB811C4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_21CA8ECC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CA8F734(&qword_27CDF7120, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3FC0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21CA8ED60(uint64_t a1)
{
  v2 = sub_21CA8F734(&qword_27CDF70A8, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3FF8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21CA8EDCC(uint64_t a1, uint64_t a2)
{
  sub_21CB86484();
  sub_21CB85494();
  return sub_21CB864D4();
}

uint64_t sub_21CA8EE24(uint64_t a1, uint64_t a2)
{
  sub_21CA8F734(&qword_27CDF70A8, type metadata accessor for PMOfflineMigrationPayload.OTPParameters, &unk_21CBC3FF8);

  return sub_21CB812D4();
}

uint64_t sub_21CA8EEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21CB86484();
  sub_21CB85494();
  return sub_21CB864D4();
}

uint64_t sub_21CA8EEF8()
{
  v0 = sub_21CB81374();
  __swift_allocate_value_buffer(v0, qword_27CE18620);
  __swift_project_value_buffer(v0, qword_27CE18620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7110, &qword_21CBC4298);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7118, &unk_21CBC42A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21CBBC030;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "ALGORITHM_UNSPECIFIED";
  *(v5 + 8) = 21;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_21CB81354();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "ALGORITHM_SHA1";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ALGORITHM_SHA256";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ALGORITHM_SHA512";
  *(v13 + 1) = 16;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "ALGORITHM_MD5";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return sub_21CB81364();
}

uint64_t sub_21CA8F1A4()
{
  v0 = sub_21CB81374();
  __swift_allocate_value_buffer(v0, qword_27CE18638);
  __swift_project_value_buffer(v0, qword_27CE18638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7110, &qword_21CBC4298);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7118, &unk_21CBC42A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21CBA15A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DIGIT_COUNT_UNSPECIFIED";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21CB81354();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DIGIT_COUNT_SIX";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DIGIT_COUNT_EIGHT";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_21CB81364();
}

uint64_t sub_21CA8F3D8()
{
  v0 = sub_21CB81374();
  __swift_allocate_value_buffer(v0, qword_27CE18650);
  __swift_project_value_buffer(v0, qword_27CE18650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7110, &qword_21CBC4298);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7118, &unk_21CBC42A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21CBA15A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "OTP_TYPE_UNSPECIFIED";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21CB81354();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "OTP_TYPE_HOTP";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "OTP_TYPE_TOTP";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_21CB81364();
}

uint64_t sub_21CA8F608@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_21CB81374();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_21CA8F734(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CA8F9BC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21CA8FA10@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21CB808C4();
    if (v10)
    {
      v11 = sub_21CB808F4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21CB808E4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21CB808C4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21CB808F4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21CB808E4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_21CA8FC40(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_21CA8FDD0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21C7A34C0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_21CA8FA10(v13, a3, a4, &v12);
  v10 = v4;
  sub_21C7A34C0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_21CA8FDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21CB808C4();
  v11 = result;
  if (result)
  {
    result = sub_21CB808F4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21CB808E4();
  sub_21CA8FA10(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_21CA8FE88(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21C7A35D0(a3, a4);
          return sub_21CA8FC40(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21CA8FFF0(uint64_t a1, uint64_t a2)
{
  if ((sub_21C9679D8(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  type metadata accessor for PMOfflineMigrationPayload(0);
  sub_21CB811C4();
  sub_21CA8F734(&unk_27CDF8A70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_21CB85574() & 1;
}

uint64_t sub_21CA900DC(_BOOL8 *a1, uint64_t a2)
{
  if (!sub_21CA8FE88(*a1, a1[1], *a2, *(a2 + 8)))
  {
    return 0;
  }

  v4 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v4 && (sub_21CB86344() & 1) == 0 || (a1[4] != *(a2 + 32) || a1[5] != *(a2 + 40)) && (sub_21CB86344() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[6];
  v6 = *(a2 + 48);
  if (*(a2 + 56) == 1)
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v5 != 1)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }
    }

    else if (v6 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }
    }

    else if (v6 == 3)
    {
      if (v5 != 3)
      {
        return 0;
      }
    }

    else if (v5 != 4)
    {
      return 0;
    }
  }

  else if (v5 != v6)
  {
    return 0;
  }

  v7 = a1[8];
  v8 = *(a2 + 64);
  if (*(a2 + 72) == 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        if (v7 != 1)
        {
          return 0;
        }
      }

      else if (v7 != 2)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }
  }

  else if (v7 != v8)
  {
    return 0;
  }

  v9 = a1[10];
  v10 = *(a2 + 80);
  if (*(a2 + 88) == 1)
  {
    if (v10)
    {
      if (v10 == 1)
      {
        if (v9 != 1)
        {
          return 0;
        }
      }

      else if (v9 != 2)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  if (a1[12] == *(a2 + 96))
  {
    type metadata accessor for PMOfflineMigrationPayload.OTPParameters(0);
    sub_21CB811C4();
    sub_21CA8F734(&unk_27CDF8A70, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_21CB85574() & 1;
  }

  return 0;
}

unint64_t sub_21CA902E0()
{
  result = qword_27CDF7128;
  if (!qword_27CDF7128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7128);
  }

  return result;
}

unint64_t sub_21CA90334()
{
  result = qword_27CDF7130;
  if (!qword_27CDF7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7130);
  }

  return result;
}

unint64_t sub_21CA90388()
{
  result = qword_27CDF7138;
  if (!qword_27CDF7138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7138);
  }

  return result;
}

uint64_t sub_21CA9042C@<X0>(char *a2@<X8>)
{
  v3 = sub_21CB811E4();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFB0, &unk_21CBA0C80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v46 - v7;
  v9 = sub_21CB80814();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF48A0, &unk_21CBBBAF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v46 - v13;
  v15 = sub_21CB80894();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80844();
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_21CB80874();
    if (v19)
    {
      v47 = v9;
      v20 = v5;
      v21 = sub_21CB85634();
      v23 = v22;

      if (v21 == 0xD000000000000011 && 0x800000021CB97500 == v23)
      {
        v9 = v47;
LABEL_11:

        goto LABEL_12;
      }

      v24 = sub_21CB86344();

      v5 = v20;
      v9 = v47;
      if (v24)
      {
        goto LABEL_12;
      }
    }

    sub_21CB80874();
    if (v25)
    {
      v47 = v5;
      v26 = sub_21CB85634();
      v28 = v27;

      if (v26 == 0xD000000000000017 && 0x800000021CB97520 == v28)
      {
        goto LABEL_11;
      }

      v42 = sub_21CB86344();

      if (v42)
      {
LABEL_12:
        v29 = sub_21CB80824();
        if (v29)
        {
          if (*(v29 + 16))
          {
            v47 = a2;
            v30 = v48;
            (*(v48 + 16))(v11, v29 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v9);

            v31 = sub_21CB80804();
            v33 = v32;
            (*(v30 + 8))(v11, v9);
            if (!v33)
            {
              (*(v16 + 8))(v18, v15);
              a2 = v47;
              goto LABEL_20;
            }

            v34 = sub_21C98C72C(v31, v33);
            v36 = v35;
            sub_21CB80C14();
            v38 = v37;
            sub_21C7A34C0(v34, v36);
            a2 = v47;
            if (v38 >> 60 != 15)
            {
              v39 = v8;
              v40 = v47;
              v41 = type metadata accessor for PMOfflineMigrationPayload(0);
              v51 = 0;
              v49 = 0u;
              v50 = 0u;
              sub_21CB811D4();
              sub_21CA90A5C();
              sub_21CB812B4();
              (*(v16 + 8))(v18, v15);
              v44 = *(*(v41 - 8) + 56);
              v44(v39, 0, 1, v41);
              sub_21CA90AB4(v39, v40);
              return (v44)(v40, 0, 1, v41);
            }
          }

          else
          {
          }
        }
      }
    }

    (*(v16 + 8))(v18, v15);
    goto LABEL_20;
  }

  sub_21C6EA794(v14, &qword_27CDF48A0, &unk_21CBBBAF0);
LABEL_20:
  v43 = type metadata accessor for PMOfflineMigrationPayload(0);
  return (*(*(v43 - 8) + 56))(a2, 1, 1, v43);
}

unint64_t sub_21CA90A5C()
{
  result = qword_27CDF70C0;
  if (!qword_27CDF70C0)
  {
    type metadata accessor for PMOfflineMigrationPayload(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF70C0);
  }

  return result;
}

uint64_t sub_21CA90AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMOfflineMigrationPayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t EnvironmentValues.windowHorizontalSizeClass.getter()
{
  sub_21C70C8A4();

  return sub_21CB82F94();
}

uint64_t EnvironmentValues.windowHorizontalSizeClass.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_21C70CA1C(a1, &v5 - v3);
  sub_21C70C8A4();
  sub_21CB82FA4();
  return sub_21C70CB88(a1);
}

uint64_t sub_21CA90C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21C722D90();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.windowHorizontalSizeClass.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_21C70C8A4();
  sub_21CB82F94();
  return sub_21C70C7D4;
}

void sub_21CA90DC0(void *a1)
{
  v2 = sub_21CB85584();
  [a1 setPrompt_];
}

uint64_t sub_21CA90E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7140, &qword_21CBC4398);
  sub_21CA90EA0();
  sub_21CA90F04();
  return sub_21CB84584();
}

unint64_t sub_21CA90EA0()
{
  result = qword_27CDF7148;
  if (!qword_27CDF7148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7140, &qword_21CBC4398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7148);
  }

  return result;
}

unint64_t sub_21CA90F04()
{
  result = qword_27CDF7150;
  if (!qword_27CDF7150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7150);
  }

  return result;
}

uint64_t sub_21CA90F70()
{
  v1[2] = v0;
  sub_21CB858B4();
  v1[3] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_21CA91008, v3, v2);
}

uint64_t sub_21CA91008()
{
  if ([objc_opt_self() isPasswordsAppInstalled])
  {
    v1 = v0[2];
    sub_21CA929EC();
    v2 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI23PMOTPAuthHandlerManager_defaultHandlerWasSystemBeforeFiltering);
    v0[6] = *MEMORY[0x277D49CC0];
    v4 = sub_21CB855C4();
    if (v2 == 1)
    {
      v0[7] = v3;
      v5 = v3;
      v6 = swift_task_alloc();
      v0[8] = v6;
      *v6 = v0;
      v6[1] = sub_21CA911A0;

      return sub_21CAA28B0(v4, v5);
    }

    else
    {
      v0[9] = v3;
      v9 = v3;
      v10 = swift_task_alloc();
      v0[10] = v10;
      *v10 = v0;
      v10[1] = sub_21CA9138C;

      return sub_21CAA3488(v4, v9);
    }
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_21CA911A0()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21CA912E4, v3, v2);
}

uint64_t sub_21CA912E4()
{
  v1 = sub_21CB855C4();
  v3 = v2;
  *(v0 + 72) = v2;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_21CA9138C;

  return sub_21CAA3488(v1, v3);
}

uint64_t sub_21CA9138C()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_21CA914D0, v3, v2);
}

uint64_t sub_21CA914D0()
{

  sub_21CA929EC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21CA91534(uint64_t a1)
{
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21CB85FA4();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x277D84F90];
    sub_21CB86154();
    result = sub_21CB85F54();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x277D84F90];
  sub_21CB86154();
  result = sub_21CB85F24();
  v5 = *(a1 + 36);
  v23 = result;
  v24 = v5;
  v25 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v23;
    v9 = v24;
    v11 = v25;
    sub_21CA91830(v23, v24, v25, a1);
    sub_21CB86134();
    sub_21CB86164();
    sub_21CB86174();
    result = sub_21CB86144();
    if (v21)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_21CB85F74())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7220, &qword_21CBC46E0);
      v7 = sub_21CB85A04();
      sub_21CB86004();
      result = v7(v22, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_21C7AE858(v23, v24, v25);
        return v26;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_32;
      }

      v13 = v10 >> 6;
      v14 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v14 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v15 = v14 & (-2 << (v10 & 0x3F));
      if (v15)
      {
        v12 = __clz(__rbit64(v15)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a1 + 64 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_21C7AE858(v10, v9, 0);
            v12 = __clz(__rbit64(v19)) + v16;
            goto LABEL_27;
          }
        }

        result = sub_21C7AE858(v10, v9, 0);
      }

LABEL_27:
      v23 = v12;
      v24 = v9;
      v25 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}