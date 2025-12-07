void sub_22759224C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227664530();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227541DB8(a1, a2, a3, a4, v56, v57);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v57 = v15;
    v48 = v13;
    v49 = v17;
    v47 = v11;
    if (sub_227669C10())
    {
      v19 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
LABEL_6:
      swift_willThrow();
      return;
    }

    v21 = a2;
    v22 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v23 = v54;
LABEL_17:
      v54 = v23;
      sub_226EDC474(0);
    }

    else
    {
      v24 = v57;
      v50 = "ManagedAlternativeActivityType";
      v51 = v57 + 16;
      v52 = (v57 + 8);
      if (a3 <= v22)
      {
        v25 = a4 >> 1;
      }

      else
      {
        v25 = a3;
      }

      v56 = v25;
      v26 = v14;
      v23 = v54;
      v27 = v49;
      while (1)
      {
        if (v56 == a3)
        {
          __break(1u);
          return;
        }

        (*(v24 + 16))(v27, v21 + *(v24 + 72) * a3, v26);
        v28 = objc_opt_self();
        v29 = sub_22766BFD0();
        v30 = v28;
        v31 = v55;
        v32 = [v30 insertNewObjectForEntityForName:v29 inManagedObjectContext:v55];

        type metadata accessor for ManagedArchivedSession();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {

          v34 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v23 = swift_allocError();
          (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51000], v34);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_2272187F4(v33, v31);
        if (v23)
        {
          break;
        }

        ++a3;
        (*v52)(v27, v26);

        v24 = v57;
        if (v22 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v36 = v48;
      sub_22766A770();
      v37 = v23;
      v38 = sub_22766B380();
      v39 = sub_22766C8B0();

      v40 = os_log_type_enabled(v38, v39);
      v41 = v47;
      v42 = v53;
      if (v40)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        v45 = v23;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 4) = v46;
        *v44 = v46;
        _os_log_impl(&dword_226E8E000, v38, v39, "%@", v43, 0xCu);
        sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v44, -1, -1);
        MEMORY[0x22AA9A450](v43, -1, -1);
      }

      (*(v42 + 8))(v36, v41);
      swift_willThrow();
      sub_226EDC474(0);
      (*v52)(v49, v26);
    }
  }
}

void sub_2275927C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a7;
  v52 = a5;
  v7 = a6;
  v12 = sub_22766B390();
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D0, &qword_22768B670);
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  v18 = sub_22753BD98(a1, a2, a3, a4, v7, v51, &qword_27D7BF0E0, &qword_22768BAB0, &qword_27D7BF0E8, sub_227595FB4);
  if (v18)
  {
    if (v18 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v45 = v14;
    v46 = v12;
    if (sub_227669C10())
    {
      v19 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
      swift_willThrow();
    }

    else
    {
      v50 = v15;
      v51 = a2;
      if (a4 >> 1 == a3)
      {
LABEL_14:
        sub_226EDC474(0);
      }

      else
      {
        v21 = a4 >> 1;
        v22 = v17;
        v23 = &qword_27D7B86D0;
        if (a3 <= (a4 >> 1))
        {
          v24 = a4 >> 1;
        }

        else
        {
          v24 = a3;
        }

        v48 = "ManagedAchievementWeeklyStreak";
        v49 = v24;
        while (1)
        {
          if (v49 == a3)
          {
            __break(1u);
            return;
          }

          sub_226E93170(v51 + *(v53 + 72) * a3, v22, v23, &qword_22768B670);
          v25 = objc_opt_self();
          v26 = sub_22766BFD0();
          v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v52];

          type metadata accessor for ManagedAlternativeActivityType();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
            break;
          }

          v29 = v28;
          ++a3;
          sub_227663AD0();
          v30 = v23;
          v31 = sub_22766BFD0();
          [v29 setAlternativeActivityType_];

          v23 = v30;
          sub_226E97D1C(v22, v30, &qword_22768B670);
          if (v21 == a3)
          {
            goto LABEL_14;
          }
        }

        v32 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v33 = swift_allocError();
        (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D51000], v32);
        swift_willThrow();
        v35 = v45;
        sub_22766A770();
        v36 = v33;
        v37 = sub_22766B380();
        v38 = sub_22766C8B0();
        v39 = v33;

        if (os_log_type_enabled(v37, v38))
        {
          v40 = swift_slowAlloc();
          v41 = swift_slowAlloc();
          *v40 = 138412290;
          v42 = v39;
          v43 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 4) = v43;
          *v41 = v43;
          _os_log_impl(&dword_226E8E000, v37, v38, "%@", v40, 0xCu);
          sub_226E97D1C(v41, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v41, -1, -1);
          MEMORY[0x22AA9A450](v40, -1, -1);
        }

        (*(v47 + 8))(v35, v46);
        swift_willThrow();
        sub_226EDC474(0);
        sub_226E97D1C(v22, &qword_27D7B86D0, &qword_22768B670);
      }
    }
  }
}

void sub_227592D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v62 = a7;
  v7 = a6;
  v64 = a5;
  v63 = sub_227662750();
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B390();
  v56 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2276667B0();
  v65 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227541EF8(a1, a2, a3, a4, v7, v62);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v20 = v57;
    v62 = a4;
    v53 = v15;
    v54 = v13;
    v55 = v16;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
      swift_willThrow();
    }

    else
    {
      v61 = a2;
      v62 >>= 1;
      v23 = v55;
      v24 = v65;
      if (v62 == a3)
      {
LABEL_18:
        sub_226EDC474(0);
      }

      else
      {
        v25 = v18;
        v26 = v20;
        v58 = "ntNotificationRecord";
        v59 = v65 + 16;
        v27 = (v60 + 8);
        v28 = (v65 + 8);
        v29 = v62;
        if (a3 > v62)
        {
          v29 = a3;
        }

        v60 = v29;
        while (1)
        {
          if (v60 == a3)
          {
            __break(1u);
            return;
          }

          (*(v24 + 16))(v25, v61 + *(v24 + 72) * a3, v23);
          v30 = objc_opt_self();
          v31 = sub_22766BFD0();
          v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v64];

          type metadata accessor for ManagedAchievementWeeklyStreak();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            break;
          }

          v34 = v33;
          ++a3;
          v35 = sub_2276667A0();
          v36 = 0x7FFFFFFFLL;
          if (v35 < 0x7FFFFFFF)
          {
            v36 = v35;
          }

          if (v36 <= 0xFFFFFFFF80000000)
          {
            v37 = 0xFFFFFFFF80000000;
          }

          else
          {
            v37 = v36;
          }

          [v34 setLength_];
          sub_227666770();
          v38 = sub_2276626A0();
          (*v27)(v26, v63);
          [v34 setFirstWeekdayOfStreakEnd_];

          (*v28)(v25, v23);
          v24 = v65;
          if (v62 == a3)
          {
            goto LABEL_18;
          }
        }

        v39 = v28;

        v40 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v41 = swift_allocError();
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
        swift_willThrow();
        v43 = v53;
        sub_22766A770();
        v44 = v41;
        v45 = sub_22766B380();
        v46 = sub_22766C8B0();
        v47 = v41;

        if (os_log_type_enabled(v45, v46))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = v47;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_226E8E000, v45, v46, "%@", v48, 0xCu);
          sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v49, -1, -1);
          MEMORY[0x22AA9A450](v48, -1, -1);
        }

        (*(v56 + 8))(v43, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v39)(v25, v55);
      }
    }
  }
}

void sub_2275933B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v61 = a7;
  v62 = a5;
  v7 = a6;
  v64 = sub_22766B390();
  v55 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - v15;
  v17 = sub_2276682A0();
  v63 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227542038(a1, a2, a3, a4, v7, v61);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = v64;
    v61 = v19;
    v53 = v13;
    v54 = v17;
    if (sub_227669C10())
    {
      v22 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51010], v22);
      swift_willThrow();
    }

    else
    {
      v60 = a2;
      v24 = a4 >> 1;
      v25 = v54;
      v26 = v61;
      v27 = v63;
      if (a4 >> 1 == a3)
      {
LABEL_7:
        sub_226EDC474(0);
      }

      else
      {
        v28 = a4 >> 1;
        v29 = v21;
        v30 = v16;
        v56 = "ntEnvironmentCache";
        v57 = v63 + 16;
        if (a3 > v24)
        {
          v24 = a3;
        }

        v58 = (v63 + 8);
        v59 = v24;
        while (1)
        {
          if (v59 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v26, v60 + *(v27 + 72) * a3, v25);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v62];

          type metadata accessor for ManagedAchievementNotificationRecord();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          sub_227668290();
          v36 = sub_22766BFD0();

          [v35 setTemplateUniqueName_];

          sub_227668270();
          v37 = sub_227662750();
          v38 = *(v37 - 8);
          v39 = 0;
          if ((*(v38 + 48))(v30, 1, v37) != 1)
          {
            v39 = sub_2276626A0();
            (*(v38 + 8))(v30, v37);
          }

          ++a3;
          [v35 setDatePresented_];

          v26 = v61;
          (*v58)(v61, v25);
          v29 = v64;
          v27 = v63;
          if (v28 == a3)
          {
            goto LABEL_7;
          }
        }

        v40 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v41 = swift_allocError();
        (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
        swift_willThrow();
        v43 = v53;
        sub_22766A770();
        v44 = v41;
        v45 = sub_22766B380();
        v46 = sub_22766C8B0();
        v47 = v41;

        if (os_log_type_enabled(v45, v46))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *v48 = 138412290;
          v50 = v47;
          v29 = v64;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v48 + 4) = v51;
          *v49 = v51;
          _os_log_impl(&dword_226E8E000, v45, v46, "%@", v48, 0xCu);
          sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
          v52 = v49;
          v25 = v54;
          MEMORY[0x22AA9A450](v52, -1, -1);
          MEMORY[0x22AA9A450](v48, -1, -1);
        }

        (*(v55 + 8))(v43, v29);
        swift_willThrow();
        sub_226EDC474(0);
        (*v58)(v26, v25);
      }
    }
  }
}

void sub_227593A4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227667A70();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227542178(a1, a2, a3, a4, v56, v57);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v57 = v15;
    v48 = v13;
    v49 = v17;
    v47 = v11;
    if (sub_227669C10())
    {
      v19 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
LABEL_6:
      swift_willThrow();
      return;
    }

    v21 = a2;
    v22 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v23 = v54;
LABEL_17:
      v54 = v23;
      sub_226EDC474(0);
    }

    else
    {
      v24 = v57;
      v50 = "com.apple.hls.keys";
      v51 = v57 + 16;
      v52 = (v57 + 8);
      if (a3 <= v22)
      {
        v25 = a4 >> 1;
      }

      else
      {
        v25 = a3;
      }

      v56 = v25;
      v26 = v14;
      v23 = v54;
      v27 = v49;
      while (1)
      {
        if (v56 == a3)
        {
          __break(1u);
          return;
        }

        (*(v24 + 16))(v27, v21 + *(v24 + 72) * a3, v26);
        v28 = objc_opt_self();
        v29 = sub_22766BFD0();
        v30 = v28;
        v31 = v55;
        v32 = [v30 insertNewObjectForEntityForName:v29 inManagedObjectContext:v55];

        type metadata accessor for ManagedAchievementEnvironmentCache();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {

          v34 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v23 = swift_allocError();
          (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51000], v34);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_226F94E58(v33, v31);
        if (v23)
        {
          break;
        }

        ++a3;
        (*v52)(v27, v26);

        v24 = v57;
        if (v22 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v36 = v48;
      sub_22766A770();
      v37 = v23;
      v38 = sub_22766B380();
      v39 = sub_22766C8B0();

      v40 = os_log_type_enabled(v38, v39);
      v41 = v47;
      v42 = v53;
      if (v40)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *v43 = 138412290;
        v45 = v23;
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v43 + 4) = v46;
        *v44 = v46;
        _os_log_impl(&dword_226E8E000, v38, v39, "%@", v43, 0xCu);
        sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v44, -1, -1);
        MEMORY[0x22AA9A450](v43, -1, -1);
      }

      (*(v42 + 8))(v36, v41);
      swift_willThrow();
      sub_226EDC474(0);
      (*v52)(v49, v26);
    }
  }
}

unint64_t sub_227593FC0(uint64_t a1, int a2)
{
  v50 = a2;
  v3 = sub_2276639B0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v48 = *(v7 - 8);
  *&v49 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  v11 = [objc_opt_self() currentProcess];
  v12 = [v10 userAgentForProcessInfo_];

  v13 = sub_22766C000();
  v15 = v14;

  sub_22766A6C0();
  v16 = *(v4 + 16);
  v47 = v3;
  v16(v6, a1, v3);

  v17 = v15;
  v18 = sub_22766B380();
  v19 = sub_22766C8B0();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v51[0] = v45;
    *v20 = 141558786;
    v46 = v15;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_226E97AE8(v13, v46, v51);
    *(v20 + 22) = 2160;
    *(v20 + 24) = 1752392040;
    *(v20 + 32) = 2080;
    sub_226EB1040(&qword_28139BCA0, MEMORY[0x277D501C8], MEMORY[0x277D501E0]);
    v44 = v9;
    v21 = v13;
    v22 = v47;
    v23 = sub_22766D140();
    v25 = v24;
    v26 = v22;
    v13 = v21;
    (*(v4 + 8))(v6, v26);
    v27 = sub_226E97AE8(v23, v25, v51);

    *(v20 + 34) = v27;
    v17 = v46;
    _os_log_impl(&dword_226E8E000, v18, v19, "Stream Loader - assigning user agent %{mask.hash}s to %{mask.hash}s", v20, 0x2Au);
    v28 = v45;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v48 + 8))(v44, v49);
  }

  else
  {

    (*(v4 + 8))(v6, v47);
    (*(v48 + 8))(v9, v49);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9480, &unk_227678CF0);
  inited = swift_initStackObject();
  v49 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = 0x6567412D72657355;
  v30 = inited + 32;
  *(inited + 40) = 0xEA0000000000746ELL;
  *(inited + 48) = v13;
  *(inited + 56) = v17;
  v31 = sub_227148E68(inited);
  swift_setDeallocating();
  sub_226E97D1C(v30, &unk_27D7BE670, &unk_227674260);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_2276728D0;
  *(v32 + 32) = sub_22766C000();
  *(v32 + 40) = v33;
  *(v32 + 72) = MEMORY[0x277D839B0];
  *(v32 + 48) = 1;
  *(v32 + 80) = sub_22766C000();
  *(v32 + 88) = v34;
  *(v32 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC58, qword_227687570);
  *(v32 + 96) = v31;
  v35 = sub_227149264(v32);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  if ((v50 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE680, &qword_22768B5C0);
    v36 = swift_initStackObject();
    *(v36 + 16) = v49;
    *(v36 + 32) = sub_22766C000();
    *(v36 + 40) = v37;
    *(v36 + 48) = 0;
    v38 = sub_22714BDBC(v36);
    swift_setDeallocating();
    sub_226E97D1C(v36 + 32, &qword_27D7BE688, &qword_22768B5C8);
    sub_227332E28(v38);
    v40 = v39;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51[0] = v35;
    sub_226FDAC14(v40, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, v51);

    return v51[0];
  }

  return v35;
}

uint64_t sub_2275945F8(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_226E99364(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227594708@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_227594870(void *a1, id a2, char **a3)
{
  v5 = [a1 mediaSelectionGroupForMediaCharacteristic_];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    if (a3)
    {
      v17 = v5;
      v7 = [v5 options];
      sub_226E99364(0, &qword_27D7BDC20, 0x277CE6518);
      v8 = sub_22766C2C0();

      v20 = v6;
      if (v8 >> 62)
      {
LABEL_22:
        v9 = sub_22766CD20();
        if (v9)
        {
LABEL_5:
          v15 = a2;
          v16 = a3;
          v10 = 0;
          do
          {
            v11 = v10;
            while (1)
            {
              if ((v8 & 0xC000000000000001) != 0)
              {
                v12 = MEMORY[0x22AA991A0](v11, v8);
              }

              else
              {
                if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_21;
                }

                v12 = *(v8 + 8 * v11 + 32);
              }

              v13 = v12;
              v10 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                __break(1u);
LABEL_21:
                __break(1u);
                goto LABEL_22;
              }

              a3 = [a1 preferredMediaSelection];
              a2 = [a3 mutableCopy];

              sub_22766CC20();
              swift_unknownObjectRelease();
              sub_226E99364(0, &unk_27D7BE660, 0x277CE6550);
              if (swift_dynamicCast())
              {
                break;
              }

              ++v11;
              if (v10 == v9)
              {
                goto LABEL_23;
              }
            }

            a3 = &selRef_initWithContainerID_;
            [v19 selectMediaOption:v16 inMediaSelectionGroup:v15];
            [v19 selectMediaOption:v13 inMediaSelectionGroup:v17];

            MEMORY[0x22AA985C0]();
            if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              a3 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_22766C360();
            }

            sub_22766C3A0();
            v6 = v20;
          }

          while (v10 != v9);
        }
      }

      else
      {
        v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9)
        {
          goto LABEL_5;
        }
      }

LABEL_23:

      return v6;
    }
  }

  return v6;
}

uint64_t sub_227594BE8(_BYTE *a1)
{
  v3 = *(sub_2276639B0() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2275458D8(a1, v4, v5);
}

uint64_t sub_227594C6C(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v2 + 16);

  return sub_227545A44(a1, a2, v8, v6, v7);
}

uint64_t sub_227594D10@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276639B0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for AssetMediaStreamLoader.TaskResult(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v7);
  v12 = *(v2 + v10);
  v13 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22754B0E4(a1, v2 + v6, v11, v2 + v9, v12, v13, a2);
}

uint64_t sub_227594E3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_227594F1C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_2276639B0() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for AssetMediaStreamLoader.TaskResult(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = (v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return a2(a1, v9, v10, v2 + v5, v2 + v8, v12, v13);
}

void sub_227595480(void *a1, unint64_t a2, void *a3)
{
  v87[6] = *MEMORY[0x277D85DE8];
  v5 = sub_22766B390();
  v84 = *(v5 - 1);
  v85 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v79 = &v69 - v8;
  MEMORY[0x28223BE20](v9);
  v74 = &v69 - v10;
  v71 = type metadata accessor for AssetProgressUpdated(0);
  MEMORY[0x28223BE20](v71);
  v72 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9648, &unk_227674880);
  MEMORY[0x28223BE20](v12 - 8);
  v75 = &v69 - v13;
  v77 = sub_227663CD0();
  v14 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v70 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_2276624A0();
  v16 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v18 = (&v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v20.n128_f64[0] = MEMORY[0x28223BE20](v19 - 8);
  v81 = &v69 - v21;
  if (a2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v80 = v18;
    v82 = v16;
    v76 = v14;
    if (!i)
    {
      break;
    }

    v23 = 0;
    v24 = 0.0;
    v18 = &selRef_initWithContainerID_;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x22AA991A0](v23, a2, v20);
      }

      else
      {
        if (v23 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v25 = *(a2 + 8 * v23 + 32);
      }

      v16 = v25;
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      [v25 CMTimeRangeValue];
      sub_22766CA90();
      v27 = v26;
      sub_22766CA90();
      v29 = v28;

      v20.n128_f64[0] = v27 / v29;
      v20.n128_f32[0] = v27 / v29;
      v24 = v24 + v20.n128_f32[0];
      ++v23;
      if (v14 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v24 = 0.0;
LABEL_13:
  v30 = [a1 URLAsset];
  v31 = sub_22766BFD0();
  v87[0] = 0;
  v32 = [v30 statusOfValueForKey:v31 error:v87];

  if (v32 == 2)
  {
    v33 = v87[0];
    v34 = [a1 URLAsset];
    if (v34)
    {
      v35 = v34;
      v85 = v33;
      v36 = [v34 URL];
      v37 = v81;
      sub_227662430();

      v38 = v82;
      v39 = v83;
      v82[7](v37, 0, 1, v83);
      sub_226E97D1C(v37, &unk_27D7BB570, &unk_227670FC0);
      v40 = [v35 URL];
      v41 = v80;
      sub_227662430();

      v42 = v75;
      v43 = v78;
      sub_227141A24(v75, v24);
      v44 = v76;
      v45 = v77;
      if ((*(v76 + 48))(v42, 1, v77) == 1)
      {
        (v38[1])(v41, v39);

        sub_226E97D1C(v42, &qword_27D7B9648, &unk_227674880);
      }

      else
      {
        v67 = v70;
        (*(v44 + 32))(v70, v42, v45);
        v84 = *(v43 + OBJC_IVAR____TtC15SeymourServices22AssetMediaStreamLoader_eventHub + 8);
        swift_getObjectType();
        v68 = v72;
        (v38[2])(v72, v41, v39);
        (*(v44 + 16))(v68 + *(v71 + 20), v67, v45);
        sub_226EB1040(qword_2813A1330, type metadata accessor for AssetProgressUpdated, &unk_227677F38);
        sub_2276699D0();

        sub_2275966B8(v68, type metadata accessor for AssetProgressUpdated);
        (*(v44 + 8))(v67, v45);
        (v38[1])(v80, v39);
      }
    }

    else
    {
      v58 = v81;
      v82[7](v81, 1, 1, v83);
      sub_226E97D1C(v58, &unk_27D7BB570, &unk_227670FC0);
      v59 = v74;
      sub_22766A6C0();
      v60 = sub_22766B380();
      v61 = sub_22766C890();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_226E8E000, v60, v61, "Stream Loader - Encountered aggregate asset download task with no URL", v62, 2u);
        MEMORY[0x22AA9A450](v62, -1, -1);
      }

      (*(v84 + 8))(v59, v85);
    }
  }

  else if (v87[0])
  {
    v46 = v87[0];
    v47 = v79;
    sub_22766A6C0();
    v48 = v46;
    v49 = sub_22766B380();
    v50 = sub_22766C890();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v86 = v48;
      v87[0] = v52;
      *v51 = 136446210;
      v53 = sub_226E99364(0, &qword_27D7BE740, 0x277CCA9B8);
      v54 = sub_2275945F8(&unk_27D7BE748, &qword_27D7BE740, 0x277CCA9B8, MEMORY[0x277CC9DE0]);
      v55 = MEMORY[0x22AA995D0](v53, v54);
      v57 = sub_226E97AE8(v55, v56, v87);

      *(v51 + 4) = v57;
      _os_log_impl(&dword_226E8E000, v49, v50, "Stream Loader - Encountered error in aggregate asset download task URL %{public}s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x22AA9A450](v52, -1, -1);
      MEMORY[0x22AA9A450](v51, -1, -1);
    }

    else
    {
    }

    (*(v84 + 8))(v47, v85);
  }

  else
  {
    v63 = v73;
    sub_22766A6C0();
    v64 = sub_22766B380();
    v65 = sub_22766C890();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_226E8E000, v64, v65, "Stream Loader - Encountered aggregate asset download task with no URL", v66, 2u);
      MEMORY[0x22AA9A450](v66, -1, -1);
    }

    (*(v84 + 8))(v63, v85);
  }
}

unint64_t sub_227595ED4()
{
  result = qword_27D7BE7A0;
  if (!qword_27D7BE7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B88E8, &qword_2276715D0);
    sub_227595F60();
    sub_2271E40F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7A0);
  }

  return result;
}

unint64_t sub_227595F60()
{
  result = qword_27D7BE7A8;
  if (!qword_27D7BE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7A8);
  }

  return result;
}

unint64_t sub_227595FB4()
{
  result = qword_27D7BE7D0;
  if (!qword_27D7BE7D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86D0, &qword_22768B670);
    v1 = MEMORY[0x277D52360];
    sub_226EB1040(&qword_27D7BE7D8, MEMORY[0x277D52360], &unk_22768B070);
    sub_226EB1040(&unk_27D7BE7E0, v1, MEMORY[0x277D52380]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7D0);
  }

  return result;
}

unint64_t sub_22759609C()
{
  result = qword_27D7BE7F0;
  if (!qword_27D7BE7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86D8, &unk_227671530);
    sub_227596128();
    sub_226FA73A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7F0);
  }

  return result;
}

unint64_t sub_227596128()
{
  result = qword_27D7BE7F8;
  if (!qword_27D7BE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE7F8);
  }

  return result;
}

unint64_t sub_22759617C()
{
  result = qword_27D7BE810;
  if (!qword_27D7BE810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B86E0, &qword_227679650);
    sub_227596208();
    sub_22733622C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE810);
  }

  return result;
}

unint64_t sub_227596208()
{
  result = qword_27D7BE818;
  if (!qword_27D7BE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE818);
  }

  return result;
}

unint64_t sub_22759625C()
{
  result = qword_27D7BE828;
  if (!qword_27D7BE828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE828);
  }

  return result;
}

unint64_t sub_2275962B0()
{
  result = qword_27D7BE838;
  if (!qword_27D7BE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE838);
  }

  return result;
}

unint64_t sub_227596304()
{
  result = qword_27D7BE840;
  if (!qword_27D7BE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE840);
  }

  return result;
}

unint64_t sub_227596358()
{
  result = qword_27D7BE848;
  if (!qword_27D7BE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE848);
  }

  return result;
}

unint64_t sub_2275963AC()
{
  result = qword_27D7BE850;
  if (!qword_27D7BE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE850);
  }

  return result;
}

unint64_t sub_227596400()
{
  result = qword_27D7BE858;
  if (!qword_27D7BE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE858);
  }

  return result;
}

unint64_t sub_227596454()
{
  result = qword_27D7BE860;
  if (!qword_27D7BE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE860);
  }

  return result;
}

unint64_t sub_2275964A8()
{
  result = qword_27D7BE868;
  if (!qword_27D7BE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE868);
  }

  return result;
}

unint64_t sub_2275964FC()
{
  result = qword_27D7BE870;
  if (!qword_27D7BE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE870);
  }

  return result;
}

unint64_t sub_227596550()
{
  result = qword_27D7BE878;
  if (!qword_27D7BE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE878);
  }

  return result;
}

unint64_t sub_2275965A4()
{
  result = qword_27D7BE880;
  if (!qword_27D7BE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE880);
  }

  return result;
}

uint64_t sub_227596650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2275966B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227596718(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_227596830()
{
  result = qword_27D7BEA40;
  if (!qword_27D7BEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BEA40);
  }

  return result;
}

uint64_t objectdestroy_129Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, __n128))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);

  v9 = (a3)(0);
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v7, 1, v9))
  {
    (*(v10 + 8))(v3 + v7, v9);
  }

  return MEMORY[0x2821FE8E8](v3, v7 + v8, v6 | 7);
}

unint64_t sub_2275969EC()
{
  result = qword_27D7BEAB8;
  if (!qword_27D7BEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BEAB8);
  }

  return result;
}

uint64_t sub_227596BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  v10 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9, v10);
}

uint64_t objectdestroy_102Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

unint64_t sub_227596DB8()
{
  result = qword_27D7BEDF8;
  if (!qword_27D7BEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BEDF8);
  }

  return result;
}

unint64_t sub_227596E0C()
{
  result = qword_27D7BEF68;
  if (!qword_27D7BEF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BEF50, &qword_227671540);
    sub_227596E98();
    sub_2274332E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BEF68);
  }

  return result;
}

unint64_t sub_227596E98()
{
  result = qword_27D7BEF70;
  if (!qword_27D7BEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BEF70);
  }

  return result;
}

unint64_t sub_227596EEC()
{
  result = qword_27D7BF150;
  if (!qword_27D7BF150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF150);
  }

  return result;
}

unint64_t sub_227596F40()
{
  result = qword_27D7BF370;
  if (!qword_27D7BF370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF370);
  }

  return result;
}

unint64_t sub_227596F94()
{
  result = qword_27D7BF3B8;
  if (!qword_27D7BF3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF3B8);
  }

  return result;
}

unint64_t sub_227596FE8()
{
  result = qword_27D7BF418;
  if (!qword_27D7BF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF418);
  }

  return result;
}

unint64_t sub_22759703C()
{
  result = qword_27D7BF430;
  if (!qword_27D7BF430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF430);
  }

  return result;
}

uint64_t sub_2275970A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D18];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227597120@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227666BA0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_227597148(uint64_t a1)
{
  *(a1 + 24) = sub_2275971B0(&qword_2813A5668, &unk_22768CE88);
  result = sub_2275971B0(&qword_2813A5660, MEMORY[0x277D528C0]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2275971B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227666BF0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2275971F4(uint64_t a1, uint64_t a2)
{
  v44 = a2;
  v3 = sub_227662750();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCF28, &qword_2276823E8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v41 = &v37 - v7;
  v8 = sub_227662190();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v12 - 8);
  v40 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v39 = a1;
  sub_227665890();
  sub_2276628D0();
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_227665890();
  sub_2276628D0();
  v20(v11, v8);
  v21 = v19;
  v23 = v41;
  v22 = v42;
  v24 = *(v6 + 56);
  v25 = v43;
  sub_226EDDC60(v21, v41);
  sub_226EDDC60(v16, v23 + v24);
  v26 = *(v22 + 48);
  if (v26(v23, 1, v25) != 1)
  {
    v27 = v40;
    sub_226EDDC60(v23, v40);
    if (v26(v23 + v24, 1, v25) != 1)
    {
      v29 = v38;
      (*(v22 + 32))(v38, v23 + v24, v25);
      sub_227597980(&qword_28139BDB8, MEMORY[0x277CC9598]);
      v30 = sub_22766BFB0();
      v31 = *(v22 + 8);
      v31(v29, v25);
      v31(v27, v25);
      sub_226E97D1C(v23, &qword_27D7B9690, qword_227670B50);
      if (v30)
      {
        goto LABEL_9;
      }

LABEL_7:
      v28 = sub_2275976D4(v16, v21);
      goto LABEL_13;
    }

    (*(v22 + 8))(v27, v25);
LABEL_6:
    sub_226E97D1C(v23, &qword_27D7BCF28, &qword_2276823E8);
    goto LABEL_7;
  }

  if (v26(v23 + v24, 1, v25) != 1)
  {
    goto LABEL_6;
  }

  sub_226E97D1C(v23, &qword_27D7B9690, qword_227670B50);
LABEL_9:
  v32 = sub_227665880();
  v34 = v33;
  if (v32 == sub_227665880() && v34 == v35)
  {

    v28 = 0;
  }

  else
  {
    v28 = sub_22766D190();
  }

LABEL_13:
  sub_226E97D1C(v16, &qword_27D7B9690, qword_227670B50);
  sub_226E97D1C(v21, &qword_27D7B9690, qword_227670B50);
  return v28 & 1;
}

uint64_t sub_2275976D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = sub_227662750();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  sub_226EDDC60(a2, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7B9690, qword_227670B50);
    v18 = 1;
  }

  else
  {
    v19 = v9;
    v20 = *(v11 + 32);
    v20(v16, v19, v10);
    sub_226EDDC60(a1, v6);
    if (v17(v6, 1, v10) == 1)
    {
      (*(v11 + 8))(v16, v10);
      sub_226E97D1C(v6, &qword_27D7B9690, qword_227670B50);
      v18 = 0;
    }

    else
    {
      v20(v13, v6, v10);
      sub_227597980(&qword_28139BDC0, MEMORY[0x277CC9590]);
      v18 = sub_22766BF80();
      v21 = *(v11 + 8);
      v21(v13, v10);
      v21(v16, v10);
    }
  }

  return v18 & 1;
}

uint64_t sub_227597980(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227662750();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ServerEndpointProtocol.executeScoresTasks()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E93028;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ServerEndpointProtocol.fetchScores(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E92F34;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.fetchSyncChangeset(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E93028;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.fetchSyncableCounts(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E93028;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.ping(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E93028;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.submitScores(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E93028;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.submitSyncChangeset(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 56) + **(a4 + 56));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E93028;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ServerEndpointProtocol.validateEncryptionKeys(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 64) + **(a4 + 64));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_226E93028;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_22759835C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_226E97D1C(v0 + 104, &unk_27D7BBCF0, &qword_22767BE10);
  v1 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  v2 = sub_227662750();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ServerEndpoint(uint64_t a1)
{
  result = qword_2813A3C00;
  if (!qword_2813A3C00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227598474(uint64_t a1)
{
  result = sub_227662750();
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

uint64_t sub_227598524(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_22766AFF0();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275985E4, 0, 0);
}

uint64_t sub_2275985E4(uint64_t a1)
{
  v2 = *(v1 + 168);
  sub_22766AFE0();
  swift_beginAccess();
  sub_226E93170(v2 + 104, v1 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v1 + 40))
  {
    sub_226E91B50(v1 + 16, v1 + 56);
    sub_226E97D1C(v1 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v1 + 56), v1 + 96);
    v3 = swift_allocObject();
    sub_226E92AB8((v1 + 96), v3 + 16);
    v4 = swift_allocObject();
    *(v4 + 16) = sub_2275A3C84;
    *(v4 + 24) = v3;
    v5 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v1 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v5 = 0;
    v4 = 0;
  }

  *(v1 + 200) = v5;
  *(v1 + 208) = v4;
  v6 = swift_task_alloc();
  *(v1 + 216) = v6;
  *v6 = v1;
  v6[1] = sub_2275987A4;
  v7 = *(v1 + 192);
  v8 = *(v1 + 160);

  return sub_22759D350(v8, v7, v5, v4, sub_2275A3D50, 0);
}

uint64_t sub_2275987A4()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 192);
  v5 = *(*v1 + 184);
  v6 = *(*v1 + 176);
  v7 = *v1;
  *(*v1 + 224) = v0;

  (*(v5 + 8))(v4, v6);
  sub_226EA9E3C(v3, v2);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227598994, 0, 0);
  }

  else
  {

    v8 = *(v7 + 8);

    return v8();
  }
}

uint64_t sub_227598994()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2275989F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v9 = sub_227662750();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227598B50, 0, 0);
}

uint64_t sub_227598B50()
{
  v69 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766B160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4F8, &qword_22768BE98);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v63 = *(v4 + 16);
  v64 = v5;
  v63(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    sub_22766A700();

    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v59 = v12;
      v13 = *(v0 + 216);
      v14 = *(v0 + 192);
      v60 = *(v0 + 152);
      v61 = *(v0 + 144);
      v62 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v15 = 136446466;
      v16 = sub_226E97AE8(log, v7, v68);
      loga = v11;
      v17 = v16;

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      v63(v13, v64 + v8, v14);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v18 = sub_22766D140();
      v20 = v19;
      v10(v13, v14);
      v21 = sub_226E97AE8(v18, v20, v68);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_226E8E000, loga, v59, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      (*(v60 + 8))(v62, v61);
    }

    else
    {
      v35 = *(v0 + 184);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);

      (*(v36 + 8))(v35, v37);
    }

    v38 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v55 = v38;
    swift_willThrow();

    v56 = *(v0 + 8);

    return v56();
  }

  v22 = v7;
  v23 = *(v0 + 104);
  if (!v23)
  {
    sub_22766A700();

    v39 = sub_22766B380();
    v40 = sub_22766C890();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 168);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68[0] = v46;
      *v45 = 136446210;
      v47 = sub_226E97AE8(log, v22, v68);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_226E8E000, v39, v40, "Rejecting request of type %{public}s due to a lack of activation.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v42, v44);
    v38 = 0;
    goto LABEL_17;
  }

  v24 = *(v0 + 112);

  sub_22766A700();

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);
  v29 = *(v0 + 152);
  if (v27)
  {
    v65 = v24;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v68[0] = v32;
    *v31 = 136446210;
    v33 = sub_226E97AE8(log, v22, v68);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v25, v26, "Sending request of type %{public}s.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v34 = v31;
    v24 = v65;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {
  }

  v48 = *(v29 + 8);
  v48(v28, v30);
  *(v0 + 224) = v48;
  v49 = *(v0 + 96);
  v50 = swift_task_alloc();
  *(v0 + 232) = v50;
  v51 = *(v0 + 120);
  *(v50 + 16) = v23;
  *(v50 + 24) = v24;
  *(v50 + 32) = v49;
  *(v50 + 40) = v51;
  v52 = swift_task_alloc();
  *(v0 + 240) = v52;
  v53 = sub_22766B1F0();
  *(v0 + 248) = v53;
  *v52 = v0;
  v52[1] = sub_227599240;
  v54 = *(v0 + 88);

  return MEMORY[0x2822008A0](v54, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A3B38, v50, v53);
}

uint64_t sub_227599240()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_22759935C;
  }

  else
  {

    v2 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22759935C()
{
  v25 = v0;
  v1 = *(v0 + 256);

  sub_22766A700();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v22 = *(v0 + 160);
    v23 = *(v0 + 224);
    v21 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v0 + 72) = v5;
    v24[0] = v7;
    *v6 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF500, &qword_22768BEA0);
    v8 = sub_22766C060();
    v10 = sub_226E97AE8(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v13 = sub_226E97AE8(v11, v12, v24);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "Request of type %{public}s failed due to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);

    v14(v15, v16);
  }

  sub_2275A1FD0(*(v0 + 256));
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v18, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_227599614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v9 = sub_227662750();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759976C, 0, 0);
}

uint64_t sub_22759976C()
{
  v69 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766B300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF440, &qword_22768BD98);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v63 = *(v4 + 16);
  v64 = v5;
  v63(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    sub_22766A700();

    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v59 = v12;
      v13 = *(v0 + 216);
      v14 = *(v0 + 192);
      v60 = *(v0 + 152);
      v61 = *(v0 + 144);
      v62 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v15 = 136446466;
      v16 = sub_226E97AE8(log, v7, v68);
      loga = v11;
      v17 = v16;

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      v63(v13, v64 + v8, v14);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v18 = sub_22766D140();
      v20 = v19;
      v10(v13, v14);
      v21 = sub_226E97AE8(v18, v20, v68);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_226E8E000, loga, v59, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      (*(v60 + 8))(v62, v61);
    }

    else
    {
      v35 = *(v0 + 184);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);

      (*(v36 + 8))(v35, v37);
    }

    v38 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v55 = v38;
    swift_willThrow();

    v56 = *(v0 + 8);

    return v56();
  }

  v22 = v7;
  v23 = *(v0 + 104);
  if (!v23)
  {
    sub_22766A700();

    v39 = sub_22766B380();
    v40 = sub_22766C890();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 168);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68[0] = v46;
      *v45 = 136446210;
      v47 = sub_226E97AE8(log, v22, v68);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_226E8E000, v39, v40, "Rejecting request of type %{public}s due to a lack of activation.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v42, v44);
    v38 = 0;
    goto LABEL_17;
  }

  v24 = *(v0 + 112);

  sub_22766A700();

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);
  v29 = *(v0 + 152);
  if (v27)
  {
    v65 = v24;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v68[0] = v32;
    *v31 = 136446210;
    v33 = sub_226E97AE8(log, v22, v68);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v25, v26, "Sending request of type %{public}s.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v34 = v31;
    v24 = v65;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {
  }

  v48 = *(v29 + 8);
  v48(v28, v30);
  *(v0 + 224) = v48;
  v49 = *(v0 + 96);
  v50 = swift_task_alloc();
  *(v0 + 232) = v50;
  v51 = *(v0 + 120);
  *(v50 + 16) = v23;
  *(v50 + 24) = v24;
  *(v50 + 32) = v49;
  *(v50 + 40) = v51;
  v52 = swift_task_alloc();
  *(v0 + 240) = v52;
  v53 = sub_22766B320();
  *(v0 + 248) = v53;
  *v52 = v0;
  v52[1] = sub_227599E5C;
  v54 = *(v0 + 88);

  return MEMORY[0x2822008A0](v54, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A362C, v50, v53);
}

uint64_t sub_227599E5C()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_227599F78;
  }

  else
  {

    v2 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227599F78()
{
  v25 = v0;
  v1 = *(v0 + 256);

  sub_22766A700();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v22 = *(v0 + 160);
    v23 = *(v0 + 224);
    v21 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v0 + 72) = v5;
    v24[0] = v7;
    *v6 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF450, &qword_22768BDA0);
    v8 = sub_22766C060();
    v10 = sub_226E97AE8(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v13 = sub_226E97AE8(v11, v12, v24);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "Request of type %{public}s failed due to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);

    v14(v15, v16);
  }

  sub_2275A1FD0(*(v0 + 256));
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v18, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22759A230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v9 = sub_227662750();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759A388, 0, 0);
}

uint64_t sub_22759A388()
{
  v69 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766B210();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4D8, &qword_22768BE68);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v63 = *(v4 + 16);
  v64 = v5;
  v63(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    sub_22766A700();

    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v59 = v12;
      v13 = *(v0 + 216);
      v14 = *(v0 + 192);
      v60 = *(v0 + 152);
      v61 = *(v0 + 144);
      v62 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v15 = 136446466;
      v16 = sub_226E97AE8(log, v7, v68);
      loga = v11;
      v17 = v16;

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      v63(v13, v64 + v8, v14);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v18 = sub_22766D140();
      v20 = v19;
      v10(v13, v14);
      v21 = sub_226E97AE8(v18, v20, v68);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_226E8E000, loga, v59, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      (*(v60 + 8))(v62, v61);
    }

    else
    {
      v35 = *(v0 + 184);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);

      (*(v36 + 8))(v35, v37);
    }

    v38 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v55 = v38;
    swift_willThrow();

    v56 = *(v0 + 8);

    return v56();
  }

  v22 = v7;
  v23 = *(v0 + 104);
  if (!v23)
  {
    sub_22766A700();

    v39 = sub_22766B380();
    v40 = sub_22766C890();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 168);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68[0] = v46;
      *v45 = 136446210;
      v47 = sub_226E97AE8(log, v22, v68);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_226E8E000, v39, v40, "Rejecting request of type %{public}s due to a lack of activation.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v42, v44);
    v38 = 0;
    goto LABEL_17;
  }

  v24 = *(v0 + 112);

  sub_22766A700();

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);
  v29 = *(v0 + 152);
  if (v27)
  {
    v65 = v24;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v68[0] = v32;
    *v31 = 136446210;
    v33 = sub_226E97AE8(log, v22, v68);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v25, v26, "Sending request of type %{public}s.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v34 = v31;
    v24 = v65;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {
  }

  v48 = *(v29 + 8);
  v48(v28, v30);
  *(v0 + 224) = v48;
  v49 = *(v0 + 96);
  v50 = swift_task_alloc();
  *(v0 + 232) = v50;
  v51 = *(v0 + 120);
  *(v50 + 16) = v23;
  *(v50 + 24) = v24;
  *(v50 + 32) = v49;
  *(v50 + 40) = v51;
  v52 = swift_task_alloc();
  *(v0 + 240) = v52;
  v53 = sub_22766B290();
  *(v0 + 248) = v53;
  *v52 = v0;
  v52[1] = sub_22759AA78;
  v54 = *(v0 + 88);

  return MEMORY[0x2822008A0](v54, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A3A6C, v50, v53);
}

uint64_t sub_22759AA78()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_22759AB94;
  }

  else
  {

    v2 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22759AB94()
{
  v25 = v0;
  v1 = *(v0 + 256);

  sub_22766A700();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v22 = *(v0 + 160);
    v23 = *(v0 + 224);
    v21 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v0 + 72) = v5;
    v24[0] = v7;
    *v6 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4E0, &qword_22768BE70);
    v8 = sub_22766C060();
    v10 = sub_226E97AE8(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v13 = sub_226E97AE8(v11, v12, v24);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "Request of type %{public}s failed due to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);

    v14(v15, v16);
  }

  sub_2275A1FD0(*(v0 + 256));
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v18, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22759AE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v9 = sub_227662750();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759AFA4, 0, 0);
}

uint64_t sub_22759AFA4()
{
  v69 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766B270();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF478, &qword_22768BDD8);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v63 = *(v4 + 16);
  v64 = v5;
  v63(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    sub_22766A700();

    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v59 = v12;
      v13 = *(v0 + 216);
      v14 = *(v0 + 192);
      v60 = *(v0 + 152);
      v61 = *(v0 + 144);
      v62 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v15 = 136446466;
      v16 = sub_226E97AE8(log, v7, v68);
      loga = v11;
      v17 = v16;

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      v63(v13, v64 + v8, v14);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v18 = sub_22766D140();
      v20 = v19;
      v10(v13, v14);
      v21 = sub_226E97AE8(v18, v20, v68);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_226E8E000, loga, v59, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      (*(v60 + 8))(v62, v61);
    }

    else
    {
      v35 = *(v0 + 184);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);

      (*(v36 + 8))(v35, v37);
    }

    v38 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v55 = v38;
    swift_willThrow();

    v56 = *(v0 + 8);

    return v56();
  }

  v22 = v7;
  v23 = *(v0 + 104);
  if (!v23)
  {
    sub_22766A700();

    v39 = sub_22766B380();
    v40 = sub_22766C890();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 168);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68[0] = v46;
      *v45 = 136446210;
      v47 = sub_226E97AE8(log, v22, v68);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_226E8E000, v39, v40, "Rejecting request of type %{public}s due to a lack of activation.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v42, v44);
    v38 = 0;
    goto LABEL_17;
  }

  v24 = *(v0 + 112);

  sub_22766A700();

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);
  v29 = *(v0 + 152);
  if (v27)
  {
    v65 = v24;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v68[0] = v32;
    *v31 = 136446210;
    v33 = sub_226E97AE8(log, v22, v68);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v25, v26, "Sending request of type %{public}s.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v34 = v31;
    v24 = v65;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {
  }

  v48 = *(v29 + 8);
  v48(v28, v30);
  *(v0 + 224) = v48;
  v49 = *(v0 + 96);
  v50 = swift_task_alloc();
  *(v0 + 232) = v50;
  v51 = *(v0 + 120);
  *(v50 + 16) = v23;
  *(v50 + 24) = v24;
  *(v50 + 32) = v49;
  *(v50 + 40) = v51;
  v52 = swift_task_alloc();
  *(v0 + 240) = v52;
  v53 = sub_22766B2E0();
  *(v0 + 248) = v53;
  *v52 = v0;
  v52[1] = sub_22759B694;
  v54 = *(v0 + 88);

  return MEMORY[0x2822008A0](v54, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A3740, v50, v53);
}

uint64_t sub_22759B694()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_22759B7B0;
  }

  else
  {

    v2 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22759B7B0()
{
  v25 = v0;
  v1 = *(v0 + 256);

  sub_22766A700();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v22 = *(v0 + 160);
    v23 = *(v0 + 224);
    v21 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v0 + 72) = v5;
    v24[0] = v7;
    *v6 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF480, &qword_22768BDE0);
    v8 = sub_22766C060();
    v10 = sub_226E97AE8(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v13 = sub_226E97AE8(v11, v12, v24);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "Request of type %{public}s failed due to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);

    v14(v15, v16);
  }

  sub_2275A1FD0(*(v0 + 256));
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v18, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22759BA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v9 = sub_227662750();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759BBC0, 0, 0);
}

uint64_t sub_22759BBC0()
{
  v69 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766B030();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF498, &qword_22768BE08);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v63 = *(v4 + 16);
  v64 = v5;
  v63(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    sub_22766A700();

    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v59 = v12;
      v13 = *(v0 + 216);
      v14 = *(v0 + 192);
      v60 = *(v0 + 152);
      v61 = *(v0 + 144);
      v62 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v15 = 136446466;
      v16 = sub_226E97AE8(log, v7, v68);
      loga = v11;
      v17 = v16;

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      v63(v13, v64 + v8, v14);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v18 = sub_22766D140();
      v20 = v19;
      v10(v13, v14);
      v21 = sub_226E97AE8(v18, v20, v68);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_226E8E000, loga, v59, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      (*(v60 + 8))(v62, v61);
    }

    else
    {
      v35 = *(v0 + 184);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);

      (*(v36 + 8))(v35, v37);
    }

    v38 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v55 = v38;
    swift_willThrow();

    v56 = *(v0 + 8);

    return v56();
  }

  v22 = v7;
  v23 = *(v0 + 104);
  if (!v23)
  {
    sub_22766A700();

    v39 = sub_22766B380();
    v40 = sub_22766C890();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 168);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68[0] = v46;
      *v45 = 136446210;
      v47 = sub_226E97AE8(log, v22, v68);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_226E8E000, v39, v40, "Rejecting request of type %{public}s due to a lack of activation.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v42, v44);
    v38 = 0;
    goto LABEL_17;
  }

  v24 = *(v0 + 112);

  sub_22766A700();

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);
  v29 = *(v0 + 152);
  if (v27)
  {
    v65 = v24;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v68[0] = v32;
    *v31 = 136446210;
    v33 = sub_226E97AE8(log, v22, v68);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v25, v26, "Sending request of type %{public}s.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v34 = v31;
    v24 = v65;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {
  }

  v48 = *(v29 + 8);
  v48(v28, v30);
  *(v0 + 224) = v48;
  v49 = *(v0 + 96);
  v50 = swift_task_alloc();
  *(v0 + 232) = v50;
  v51 = *(v0 + 120);
  *(v50 + 16) = v23;
  *(v50 + 24) = v24;
  *(v50 + 32) = v49;
  *(v50 + 40) = v51;
  v52 = swift_task_alloc();
  *(v0 + 240) = v52;
  v53 = sub_22766B100();
  *(v0 + 248) = v53;
  *v52 = v0;
  v52[1] = sub_22759C2B0;
  v54 = *(v0 + 88);

  return MEMORY[0x2822008A0](v54, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A38D4, v50, v53);
}

uint64_t sub_22759C2B0()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_22759C3CC;
  }

  else
  {

    v2 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22759C3CC()
{
  v25 = v0;
  v1 = *(v0 + 256);

  sub_22766A700();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v22 = *(v0 + 160);
    v23 = *(v0 + 224);
    v21 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v0 + 72) = v5;
    v24[0] = v7;
    *v6 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4A0, &qword_22768BE10);
    v8 = sub_22766C060();
    v10 = sub_226E97AE8(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v13 = sub_226E97AE8(v11, v12, v24);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "Request of type %{public}s failed due to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);

    v14(v15, v16);
  }

  sub_2275A1FD0(*(v0 + 256));
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v18, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22759C684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v9 = sub_227662750();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759C7DC, 0, 0);
}

uint64_t sub_22759C7DC()
{
  v69 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_2276677E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF518, &qword_22768BEC8);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v63 = *(v4 + 16);
  v64 = v5;
  v63(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    sub_22766A700();

    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v59 = v12;
      v13 = *(v0 + 216);
      v14 = *(v0 + 192);
      v60 = *(v0 + 152);
      v61 = *(v0 + 144);
      v62 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v15 = 136446466;
      v16 = sub_226E97AE8(log, v7, v68);
      loga = v11;
      v17 = v16;

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      v63(v13, v64 + v8, v14);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v18 = sub_22766D140();
      v20 = v19;
      v10(v13, v14);
      v21 = sub_226E97AE8(v18, v20, v68);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_226E8E000, loga, v59, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      (*(v60 + 8))(v62, v61);
    }

    else
    {
      v35 = *(v0 + 184);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);

      (*(v36 + 8))(v35, v37);
    }

    v38 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v55 = v38;
    swift_willThrow();

    v56 = *(v0 + 8);

    return v56();
  }

  v22 = v7;
  v23 = *(v0 + 104);
  if (!v23)
  {
    sub_22766A700();

    v39 = sub_22766B380();
    v40 = sub_22766C890();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 168);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68[0] = v46;
      *v45 = 136446210;
      v47 = sub_226E97AE8(log, v22, v68);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_226E8E000, v39, v40, "Rejecting request of type %{public}s due to a lack of activation.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v42, v44);
    v38 = 0;
    goto LABEL_17;
  }

  v24 = *(v0 + 112);

  sub_22766A700();

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);
  v29 = *(v0 + 152);
  if (v27)
  {
    v65 = v24;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v68[0] = v32;
    *v31 = 136446210;
    v33 = sub_226E97AE8(log, v22, v68);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v25, v26, "Sending request of type %{public}s.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v34 = v31;
    v24 = v65;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {
  }

  v48 = *(v29 + 8);
  v48(v28, v30);
  *(v0 + 224) = v48;
  v49 = *(v0 + 96);
  v50 = swift_task_alloc();
  *(v0 + 232) = v50;
  v51 = *(v0 + 120);
  *(v50 + 16) = v23;
  *(v50 + 24) = v24;
  *(v50 + 32) = v49;
  *(v50 + 40) = v51;
  v52 = swift_task_alloc();
  *(v0 + 240) = v52;
  v53 = sub_22766B010();
  *(v0 + 248) = v53;
  *v52 = v0;
  v52[1] = sub_22759CECC;
  v54 = *(v0 + 88);

  return MEMORY[0x2822008A0](v54, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A3C2C, v50, v53);
}

uint64_t sub_22759CECC()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_22759D098;
  }

  else
  {

    v2 = sub_22759CFE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22759CFE8()
{
  sub_226EA9E3C(v0[13], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22759D098()
{
  v25 = v0;
  v1 = *(v0 + 256);

  sub_22766A700();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v22 = *(v0 + 160);
    v23 = *(v0 + 224);
    v21 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v0 + 72) = v5;
    v24[0] = v7;
    *v6 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF520, &qword_22768BED0);
    v8 = sub_22766C060();
    v10 = sub_226E97AE8(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v13 = sub_226E97AE8(v11, v12, v24);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "Request of type %{public}s failed due to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);

    v14(v15, v16);
  }

  sub_2275A1FD0(*(v0 + 256));
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v18, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22759D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v9 = sub_227662750();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759D4A8, 0, 0);
}

uint64_t sub_22759D4A8()
{
  v69 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766AFF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF538, &qword_22768BEF8);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v63 = *(v4 + 16);
  v64 = v5;
  v63(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    sub_22766A700();

    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v59 = v12;
      v13 = *(v0 + 216);
      v14 = *(v0 + 192);
      v60 = *(v0 + 152);
      v61 = *(v0 + 144);
      v62 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v15 = 136446466;
      v16 = sub_226E97AE8(log, v7, v68);
      loga = v11;
      v17 = v16;

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      v63(v13, v64 + v8, v14);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v18 = sub_22766D140();
      v20 = v19;
      v10(v13, v14);
      v21 = sub_226E97AE8(v18, v20, v68);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_226E8E000, loga, v59, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      (*(v60 + 8))(v62, v61);
    }

    else
    {
      v35 = *(v0 + 184);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);

      (*(v36 + 8))(v35, v37);
    }

    v38 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v55 = v38;
    swift_willThrow();

    v56 = *(v0 + 8);

    return v56();
  }

  v22 = v7;
  v23 = *(v0 + 104);
  if (!v23)
  {
    sub_22766A700();

    v39 = sub_22766B380();
    v40 = sub_22766C890();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 168);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68[0] = v46;
      *v45 = 136446210;
      v47 = sub_226E97AE8(log, v22, v68);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_226E8E000, v39, v40, "Rejecting request of type %{public}s due to a lack of activation.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v42, v44);
    v38 = 0;
    goto LABEL_17;
  }

  v24 = *(v0 + 112);

  sub_22766A700();

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);
  v29 = *(v0 + 152);
  if (v27)
  {
    v65 = v24;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v68[0] = v32;
    *v31 = 136446210;
    v33 = sub_226E97AE8(log, v22, v68);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v25, v26, "Sending request of type %{public}s.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v34 = v31;
    v24 = v65;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {
  }

  v48 = *(v29 + 8);
  v48(v28, v30);
  *(v0 + 224) = v48;
  v49 = *(v0 + 96);
  v50 = swift_task_alloc();
  *(v0 + 232) = v50;
  v51 = *(v0 + 120);
  *(v50 + 16) = v23;
  *(v50 + 24) = v24;
  *(v50 + 32) = v49;
  *(v50 + 40) = v51;
  v52 = swift_task_alloc();
  *(v0 + 240) = v52;
  v53 = sub_22766B0C0();
  *(v0 + 248) = v53;
  *v52 = v0;
  v52[1] = sub_22759DB98;
  v54 = *(v0 + 88);

  return MEMORY[0x2822008A0](v54, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A3CF8, v50, v53);
}

uint64_t sub_22759DB98()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_22759DCB4;
  }

  else
  {

    v2 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22759DCB4()
{
  v25 = v0;
  v1 = *(v0 + 256);

  sub_22766A700();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v22 = *(v0 + 160);
    v23 = *(v0 + 224);
    v21 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v0 + 72) = v5;
    v24[0] = v7;
    *v6 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF540, &qword_22768BF00);
    v8 = sub_22766C060();
    v10 = sub_226E97AE8(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v13 = sub_226E97AE8(v11, v12, v24);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "Request of type %{public}s failed due to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);

    v14(v15, v16);
  }

  sub_2275A1FD0(*(v0 + 256));
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v18, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22759DF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[16] = a6;
  v7[17] = v6;
  v7[14] = a4;
  v7[15] = a5;
  v7[12] = a2;
  v7[13] = a3;
  v7[11] = a1;
  v8 = sub_22766B390();
  v7[18] = v8;
  v7[19] = *(v8 - 8);
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v9 = sub_227662750();
  v7[24] = v9;
  v7[25] = *(v9 - 8);
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22759E0C4, 0, 0);
}

uint64_t sub_22759E0C4()
{
  v69 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 136);
  *(v0 + 64) = sub_22766AF60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4B8, &qword_22768BE38);
  log = sub_22766C060();
  v7 = v6;
  v8 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
  swift_beginAccess();
  v63 = *(v4 + 16);
  v64 = v5;
  v63(v1, v5 + v8, v3);
  sub_227662740();
  v9 = sub_2276626B0();
  v10 = *(v4 + 8);
  v10(v2, v3);
  v10(v1, v3);
  if (v9)
  {
    sub_22766A700();

    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v59 = v12;
      v13 = *(v0 + 216);
      v14 = *(v0 + 192);
      v60 = *(v0 + 152);
      v61 = *(v0 + 144);
      v62 = *(v0 + 184);
      v15 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v68[0] = v58;
      *v15 = 136446466;
      v16 = sub_226E97AE8(log, v7, v68);
      loga = v11;
      v17 = v16;

      *(v15 + 4) = v17;
      *(v15 + 12) = 2082;
      v63(v13, v64 + v8, v14);
      sub_2275A365C(&qword_28139BDB0, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v18 = sub_22766D140();
      v20 = v19;
      v10(v13, v14);
      v21 = sub_226E97AE8(v18, v20, v68);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_226E8E000, loga, v59, "Rejecting request of type %{public}s due to lockout timer ending at %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v15, -1, -1);

      (*(v60 + 8))(v62, v61);
    }

    else
    {
      v35 = *(v0 + 184);
      v37 = *(v0 + 144);
      v36 = *(v0 + 152);

      (*(v36 + 8))(v35, v37);
    }

    v38 = 1;
LABEL_17:
    sub_2275A35D8();
    swift_allocError();
    *v55 = v38;
    swift_willThrow();

    v56 = *(v0 + 8);

    return v56();
  }

  v22 = v7;
  v23 = *(v0 + 104);
  if (!v23)
  {
    sub_22766A700();

    v39 = sub_22766B380();
    v40 = sub_22766C890();

    v41 = os_log_type_enabled(v39, v40);
    v42 = *(v0 + 168);
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);
    if (v41)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v68[0] = v46;
      *v45 = 136446210;
      v47 = sub_226E97AE8(log, v22, v68);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_226E8E000, v39, v40, "Rejecting request of type %{public}s due to a lack of activation.", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x22AA9A450](v46, -1, -1);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v42, v44);
    v38 = 0;
    goto LABEL_17;
  }

  v24 = *(v0 + 112);

  sub_22766A700();

  v25 = sub_22766B380();
  v26 = sub_22766C8B0();

  v27 = os_log_type_enabled(v25, v26);
  v28 = *(v0 + 176);
  v30 = *(v0 + 144);
  v29 = *(v0 + 152);
  if (v27)
  {
    v65 = v24;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v68[0] = v32;
    *v31 = 136446210;
    v33 = sub_226E97AE8(log, v22, v68);

    *(v31 + 4) = v33;
    _os_log_impl(&dword_226E8E000, v25, v26, "Sending request of type %{public}s.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x22AA9A450](v32, -1, -1);
    v34 = v31;
    v24 = v65;
    MEMORY[0x22AA9A450](v34, -1, -1);
  }

  else
  {
  }

  v48 = *(v29 + 8);
  v48(v28, v30);
  *(v0 + 224) = v48;
  v49 = *(v0 + 96);
  v50 = swift_task_alloc();
  *(v0 + 232) = v50;
  v51 = *(v0 + 120);
  *(v50 + 16) = v23;
  *(v50 + 24) = v24;
  *(v50 + 32) = v49;
  *(v50 + 40) = v51;
  v52 = swift_task_alloc();
  *(v0 + 240) = v52;
  v53 = sub_22766AF80();
  *(v0 + 248) = v53;
  *v52 = v0;
  v52[1] = sub_22759E7B4;
  v54 = *(v0 + 88);

  return MEMORY[0x2822008A0](v54, 0, 0, 0xD000000000000024, 0x80000002276A3B90, sub_2275A39A0, v50, v53);
}

uint64_t sub_22759E7B4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_22759E8D0;
  }

  else
  {

    v2 = sub_2275A3D64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22759E8D0()
{
  v25 = v0;
  v1 = *(v0 + 256);

  sub_22766A700();
  v2 = v1;
  v3 = sub_22766B380();
  v4 = sub_22766C890();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 248);
    v22 = *(v0 + 160);
    v23 = *(v0 + 224);
    v21 = *(v0 + 144);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *(v0 + 72) = v5;
    v24[0] = v7;
    *v6 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4C0, &qword_22768BE40);
    v8 = sub_22766C060();
    v10 = sub_226E97AE8(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](*(v0 + 48), *(v0 + 56));
    v13 = sub_226E97AE8(v11, v12, v24);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_226E8E000, v3, v4, "Request of type %{public}s failed due to: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v7, -1, -1);
    MEMORY[0x22AA9A450](v6, -1, -1);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 160);
    v16 = *(v0 + 144);

    v14(v15, v16);
  }

  sub_2275A1FD0(*(v0 + 256));
  v18 = *(v0 + 104);
  v17 = *(v0 + 112);
  swift_willThrow();
  sub_226EA9E3C(v18, v17);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22759EB88(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759EBAC, 0, 0);
}

uint64_t sub_22759EBAC()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A3B90;
    *(v3 + 24) = v2;
    v4 = sub_2275A3C04;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759ED64;
  v6 = *(v0 + 168);
  v7 = *(v0 + 160);

  return sub_22759C684(v7, v6, v4, v3, sub_2275A3D58, 0);
}

uint64_t sub_22759ED64()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_22759EEA0, 0, 0);
  }

  else
  {
    sub_226EA9E3C(v2[23], v2[24]);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_22759EEA0()
{
  sub_226EA9E3C(v0[23], v0[24]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22759EF04(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759EF28, 0, 0);
}

uint64_t sub_22759EF28()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A3AC4;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 160);

  return sub_2275989F8(v7, v6, v4, v3, sub_2275A3D54, 0);
}

uint64_t sub_22759F0E0()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2275A3D60, 0, 0);
  }

  else
  {
    sub_226EA9E3C(v2[23], v2[24]);
    v3 = v2[1];

    return v3();
  }
}

uint64_t sub_22759F21C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759F240, 0, 0);
}

uint64_t sub_22759F240()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A39F8;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 160);

  return sub_22759A230(v7, v6, v4, v3, sub_2275A3D50, 0);
}

uint64_t sub_22759F3F8(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759F41C, 0, 0);
}

uint64_t sub_22759F41C()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A392C;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 160);

  return sub_22759DF6C(v7, v6, v4, v3, sub_22759F5D4, 0);
}

uint64_t sub_22759F5E4(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759F608, 0, 0);
}

uint64_t sub_22759F608()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A3860;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 160);

  return sub_22759BA68(v7, v6, v4, v3, sub_2275A3D58, 0);
}

uint64_t sub_22759F7C0(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759F7E4, 0, 0);
}

uint64_t sub_22759F7E4()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A36CC;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 160);

  return sub_22759AE4C(v7, v6, v4, v3, sub_2275A3D54, 0);
}

uint64_t sub_22759F99C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return MEMORY[0x2822009F8](sub_22759F9C0, 0, 0);
}

uint64_t sub_22759F9C0()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  sub_226E93170(v1 + 104, v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
  if (*(v0 + 40))
  {
    sub_226E91B50(v0 + 16, v0 + 56);
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    sub_226E92AB8((v0 + 56), v0 + 96);
    v2 = swift_allocObject();
    sub_226E92AB8((v0 + 96), v2 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_2275A3564;
    *(v3 + 24) = v2;
    v4 = sub_2275A3D5C;
  }

  else
  {
    sub_226E97D1C(v0 + 16, &unk_27D7BBCF0, &qword_22767BE10);
    v4 = 0;
    v3 = 0;
  }

  *(v0 + 184) = v4;
  *(v0 + 192) = v3;
  v5 = swift_task_alloc();
  *(v0 + 200) = v5;
  *v5 = v0;
  v5[1] = sub_22759F0E0;
  v6 = *(v0 + 168);
  v7 = *(v0 + 160);

  return sub_227599614(v7, v6, v4, v3, sub_2275A3D54, 0);
}

void sub_22759FB78(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v26[1] = a6;
  v27 = a5;
  v28 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v26 - v16;
  (*(v14 + 16))(v26 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + v18, v17, v13);
  v20 = a2(a4, a10, v19);

  v21 = [v20 configuration];
  if (v21)
  {
    v22 = v21;
    v27();

    v23 = v20;
    v24 = sub_2276695B0();
    if (v24)
    {
      v25 = v24;
      sub_22766C850();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22759FD30(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_22766B1F0();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22766AF20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF510, &qword_22768BEB0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  sub_226E93170(a1, &v22 - v15, &qword_27D7BF510, &qword_22768BEB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v17;
    sub_22766AF10();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
    v19 = swift_allocError();
    (*(v8 + 16))(v20, v10, v7);
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF508, &qword_22768BEA8);
    sub_22766C440();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_226E97D1C(v16, &qword_27D7BF510, &qword_22768BEB0);
    sub_226E93170(a1, v13, &qword_27D7BF510, &qword_22768BEB0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF508, &qword_22768BEA8);
      return sub_22766C440();
    }

    else
    {
      (*(v22 + 32))(v23, v13, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF508, &qword_22768BEA8);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A0184(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_22766B320();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22766AF20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF470, &qword_22768BDC0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  sub_226E93170(a1, &v22 - v15, &qword_27D7BF470, &qword_22768BDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v17;
    sub_22766AF10();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
    v19 = swift_allocError();
    (*(v8 + 16))(v20, v10, v7);
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF468, &qword_22768BDB8);
    sub_22766C440();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_226E97D1C(v16, &qword_27D7BF470, &qword_22768BDC0);
    sub_226E93170(a1, v13, &qword_27D7BF470, &qword_22768BDC0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF468, &qword_22768BDB8);
      return sub_22766C440();
    }

    else
    {
      (*(v22 + 32))(v23, v13, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF468, &qword_22768BDB8);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A05D8(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_22766B290();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22766AF20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4F0, &qword_22768BE80);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  sub_226E93170(a1, &v22 - v15, &qword_27D7BF4F0, &qword_22768BE80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v17;
    sub_22766AF10();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
    v19 = swift_allocError();
    (*(v8 + 16))(v20, v10, v7);
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4E8, &qword_22768BE78);
    sub_22766C440();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_226E97D1C(v16, &qword_27D7BF4F0, &qword_22768BE80);
    sub_226E93170(a1, v13, &qword_27D7BF4F0, &qword_22768BE80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4E8, &qword_22768BE78);
      return sub_22766C440();
    }

    else
    {
      (*(v22 + 32))(v23, v13, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4E8, &qword_22768BE78);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A0A2C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_22766B2E0();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22766AF20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF490, &qword_22768BDF0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  sub_226E93170(a1, &v22 - v15, &qword_27D7BF490, &qword_22768BDF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v17;
    sub_22766AF10();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
    v19 = swift_allocError();
    (*(v8 + 16))(v20, v10, v7);
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF488, &qword_22768BDE8);
    sub_22766C440();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_226E97D1C(v16, &qword_27D7BF490, &qword_22768BDF0);
    sub_226E93170(a1, v13, &qword_27D7BF490, &qword_22768BDF0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF488, &qword_22768BDE8);
      return sub_22766C440();
    }

    else
    {
      (*(v22 + 32))(v23, v13, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF488, &qword_22768BDE8);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A0E80(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_22766B100();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22766AF20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4B0, &qword_22768BE20);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  sub_226E93170(a1, &v22 - v15, &qword_27D7BF4B0, &qword_22768BE20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v17;
    sub_22766AF10();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
    v19 = swift_allocError();
    (*(v8 + 16))(v20, v10, v7);
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4A8, &qword_22768BE18);
    sub_22766C440();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_226E97D1C(v16, &qword_27D7BF4B0, &qword_22768BE20);
    sub_226E93170(a1, v13, &qword_27D7BF4B0, &qword_22768BE20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4A8, &qword_22768BE18);
      return sub_22766C440();
    }

    else
    {
      (*(v22 + 32))(v23, v13, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4A8, &qword_22768BE18);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A12D4(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_22766B010();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22766AF20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF530, &qword_22768BEE0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  sub_226E93170(a1, &v22 - v15, &qword_27D7BF530, &qword_22768BEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v17;
    sub_22766AF10();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
    v19 = swift_allocError();
    (*(v8 + 16))(v20, v10, v7);
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF528, &qword_22768BED8);
    sub_22766C440();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_226E97D1C(v16, &qword_27D7BF530, &qword_22768BEE0);
    sub_226E93170(a1, v13, &qword_27D7BF530, &qword_22768BEE0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF528, &qword_22768BED8);
      return sub_22766C440();
    }

    else
    {
      (*(v22 + 32))(v23, v13, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF528, &qword_22768BED8);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A1728(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_22766B0C0();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22766AF20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF550, &qword_22768BF10);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  sub_226E93170(a1, &v22 - v15, &qword_27D7BF550, &qword_22768BF10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v17;
    sub_22766AF10();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
    v19 = swift_allocError();
    (*(v8 + 16))(v20, v10, v7);
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF548, &qword_22768BF08);
    sub_22766C440();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_226E97D1C(v16, &qword_27D7BF550, &qword_22768BF10);
    sub_226E93170(a1, v13, &qword_27D7BF550, &qword_22768BF10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF548, &qword_22768BF08);
      return sub_22766C440();
    }

    else
    {
      (*(v22 + 32))(v23, v13, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF548, &qword_22768BF08);
      return sub_22766C450();
    }
  }
}

uint64_t sub_2275A1B7C(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = sub_22766AF80();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_22766AF20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4D0, &qword_22768BE50);
  MEMORY[0x28223BE20](v11);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v22 - v15);
  sub_226E93170(a1, &v22 - v15, &qword_27D7BF4D0, &qword_22768BE50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v17;
    sub_22766AF10();
    (*(v8 + 56))(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
    v19 = swift_allocError();
    (*(v8 + 16))(v20, v10, v7);
    v26 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4C8, &qword_22768BE48);
    sub_22766C440();

    return (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_226E97D1C(v16, &qword_27D7BF4D0, &qword_22768BE50);
    sub_226E93170(a1, v13, &qword_27D7BF4D0, &qword_22768BE50);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4C8, &qword_22768BE48);
      return sub_22766C440();
    }

    else
    {
      (*(v22 + 32))(v23, v13, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF4C8, &qword_22768BE48);
      return sub_22766C450();
    }
  }
}

void sub_2275A1FD0(void *a1)
{
  v109 = sub_227661F60();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v3 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_227662750();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22766B390();
  v117 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v107 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v106 = &v105 - v7;
  MEMORY[0x28223BE20](v8);
  v113 = (&v105 - v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v105 - v11;
  MEMORY[0x28223BE20](v13);
  v115 = &v105 - v14;
  MEMORY[0x28223BE20](v15);
  v105 = &v105 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v105 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF458, &unk_22768BDA8);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v105 - v21;
  v23 = sub_22766AF20();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v105 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121[0] = a1;
  v27 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  v28 = swift_dynamicCast();
  v29 = *(v24 + 56);
  if (v28)
  {
    v29(v22, 0, 1, v23);
    (*(v24 + 32))(v26, v22, v23);
    sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
    swift_allocError();
    (*(v24 + 16))(v30, v26, v23);
    swift_willThrow();
    (*(v24 + 8))(v26, v23);
    return;
  }

  v29(v22, 1, 1, v23);
  sub_226E97D1C(v22, &qword_27D7BF458, &unk_22768BDA8);
  v121[0] = a1;
  v31 = a1;
  type metadata accessor for CKError(0);
  v33 = v32;
  if (swift_dynamicCast())
  {
    v34 = v128;
    v121[0] = v128;
    sub_2275A365C(&qword_27D7B8328, type metadata accessor for CKError, &unk_22767064C);
    sub_227662280();
    if (v128 <= 5)
    {
      if ((v128 - 3) >= 2)
      {
        if (v128 == 1)
        {
          goto LABEL_7;
        }

        goto LABEL_46;
      }

      v76 = v110;
      sub_2276626E0();
      v77 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
      v78 = v114;
      swift_beginAccess();
      (*(v111 + 40))(v78 + v77, v76, v112);
      swift_endAccess();
    }

    else
    {
      if (v128 > 0x20)
      {
        goto LABEL_31;
      }

      if (((1 << v128) & 0xD080C0) != 0)
      {
LABEL_7:
        sub_22766A700();
        v35 = v34;
        v36 = sub_22766B380();
        v37 = sub_22766C890();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = v33;
          v40 = swift_slowAlloc();
          v121[0] = v40;
          *v38 = 136446210;
          v128 = v35;
          v41 = sub_2275A365C(&unk_281399178, type metadata accessor for CKError, &unk_227670608);
          v42 = MEMORY[0x22AA995D0](v39, v41);
          v44 = sub_226E97AE8(v42, v43, v121);

          *(v38 + 4) = v44;
          _os_log_impl(&dword_226E8E000, v36, v37, "Unhandled CloudKit Error: %{public}s", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x22AA9A450](v40, -1, -1);
          MEMORY[0x22AA9A450](v38, -1, -1);
        }

        (*(v117 + 8))(v19, v116);
        goto LABEL_33;
      }

      if (((1 << v128) & 0x100000200) != 0)
      {
        goto LABEL_32;
      }

      if (v128 != 26)
      {
LABEL_31:
        if ((v128 - 110) < 2)
        {
LABEL_32:
          __swift_project_boxed_opaque_existential_0((v114 + 16), *(v114 + 40));
          sub_227398C00(v34);
          goto LABEL_33;
        }

        if (v128 == 112)
        {
          sub_2275A365C(&unk_281399230, MEMORY[0x277D544D0], MEMORY[0x277D544D8]);
          swift_allocError();
          v94 = v93;
          *v93 = sub_2276694D0();
          (*(v24 + 104))(v94, *MEMORY[0x277D544C8], v23);
          swift_willThrow();

          return;
        }

LABEL_46:
        v95 = v105;
        sub_22766A700();
        v96 = v34;
        v97 = sub_22766B380();
        v98 = sub_22766C8A0();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v120 = v113;
          *v99 = 136446466;
          v119 = v96;
          v100 = sub_2275A365C(&unk_281399178, type metadata accessor for CKError, &unk_227670608);
          v101 = MEMORY[0x22AA995D0](v33, v100);
          v103 = sub_226E97AE8(v101, v102, &v120);

          *(v99 + 4) = v103;
          *(v99 + 12) = 2050;
          v119 = v96;
          sub_227662280();

          *(v99 + 14) = v118;
          _os_log_impl(&dword_226E8E000, v97, v98, "Unhandled CloudKit Error: %{public}s with code %{public}ld", v99, 0x16u);
          v104 = v113;
          __swift_destroy_boxed_opaque_existential_0(v113);
          MEMORY[0x22AA9A450](v104, -1, -1);
          MEMORY[0x22AA9A450](v99, -1, -1);

          (*(v117 + 8))(v105, v116);
        }

        else
        {

          (*(v117 + 8))(v95, v116);
        }
      }
    }

LABEL_33:
    v79 = v115;
    v80 = sub_22766BE80();
    if ((v81 & 1) == 0)
    {
      v82 = v80;
      sub_22766A700();
      v83 = sub_22766B380();
      v84 = sub_22766C8B0();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 134349056;
        *(v85 + 4) = v82;
        _os_log_impl(&dword_226E8E000, v83, v84, "Received retry timeout from server: %{public}f", v85, 0xCu);
        MEMORY[0x22AA9A450](v85, -1, -1);
      }

      (*(v117 + 8))(v79, v116);
      v86 = v110;
      sub_2276626E0();
      v87 = OBJC_IVAR____TtC15SeymourServices14ServerEndpoint_lockoutTime;
      v88 = v114;
      swift_beginAccess();
      (*(v111 + 40))(v88 + v87, v86, v112);
      swift_endAccess();
    }

    swift_willThrow();
    return;
  }

  swift_getErrorValue();
  v45 = sub_22766D280();
  v47 = v46;
  if (v45 == sub_22766C000() && v47 == v48)
  {

    goto LABEL_14;
  }

  v49 = sub_22766D190();

  if ((v49 & 1) == 0)
  {
    sub_227661F50();
    sub_2275A365C(&qword_27D7BF460, MEMORY[0x277CC8608], MEMORY[0x277CC8600]);
    v64 = v109;
    v65 = sub_227662200();
    (*(v108 + 8))(v3, v64);
    if (v65)
    {
      v66 = v106;
      sub_22766A730();
      v67 = a1;
      v68 = sub_22766B380();
      v69 = sub_22766C890();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v121[0] = v71;
        *v70 = 136446210;
        swift_getErrorValue();
        v72 = MEMORY[0x22AA995D0](v124, v125);
        v74 = sub_226E97AE8(v72, v73, v121);

        *(v70 + 4) = v74;
        v75 = "XPC Connection Interrupted with error: %{public}s";
LABEL_40:
        _os_log_impl(&dword_226E8E000, v68, v69, v75, v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v71);
        MEMORY[0x22AA9A450](v71, -1, -1);
        MEMORY[0x22AA9A450](v70, -1, -1);
      }
    }

    else
    {
      v66 = v107;
      sub_22766A700();
      v89 = a1;
      v68 = sub_22766B380();
      v69 = sub_22766C8A0();

      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v121[0] = v71;
        *v70 = 136446210;
        swift_getErrorValue();
        v90 = MEMORY[0x22AA995D0](v126, v127);
        v92 = sub_226E97AE8(v90, v91, v121);

        *(v70 + 4) = v92;
        v75 = "Unhandled generic error received from server: %{public}s";
        goto LABEL_40;
      }
    }

    (*(v117 + 8))(v66, v116);
    return;
  }

LABEL_14:
  swift_getErrorValue();
  v50 = sub_22766D270();
  if (v50 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_50;
  }

  v51 = v113;
  if (v50 > 0x7FFFFFFF)
  {
LABEL_50:
    __break(1u);
    return;
  }

  if (v50 == 310)
  {
    sub_22766A700();
    v52 = sub_22766B380();
    v53 = sub_22766C890();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_226E8E000, v52, v53, "Proxy connection failed.", v54, 2u);
      MEMORY[0x22AA9A450](v54, -1, -1);
    }

    (*(v117 + 8))(v12, v116);
  }

  else
  {
    sub_22766A700();
    v55 = a1;
    v56 = sub_22766B380();
    v57 = sub_22766C8A0();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v121[0] = v59;
      *v58 = 136446210;
      swift_getErrorValue();
      v60 = MEMORY[0x22AA995D0](v122, v123);
      v62 = sub_226E97AE8(v60, v61, v121);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_226E8E000, v56, v57, "Unhandled CFNetwork Error: %{public}s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v59);
      MEMORY[0x22AA9A450](v59, -1, -1);
      MEMORY[0x22AA9A450](v58, -1, -1);
    }

    (*(v117 + 8))(v51, v116);
  }

  swift_willThrow();
  v63 = a1;
}

uint64_t sub_2275A3014(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_227598524(a1);
}

uint64_t sub_2275A30B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return sub_22759EB88(a1, a2);
}

uint64_t sub_2275A315C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22759EF04(a1, a2);
}

uint64_t sub_2275A3208(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22759F21C(a1, a2);
}

uint64_t sub_2275A32B4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22759F3F8(a1, a2);
}

uint64_t sub_2275A3360(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22759F5E4(a1, a2);
}

uint64_t sub_2275A340C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22759F7C0(a1, a2);
}

uint64_t sub_2275A34B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return sub_22759F99C(a1, a2);
}

uint64_t sub_2275A3564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 48))(a1, a2, a3, v7, v8);
}

unint64_t sub_2275A35D8()
{
  result = qword_27D7BF448;
  if (!qword_27D7BF448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BF448);
  }

  return result;
}

uint64_t sub_2275A365C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2275A36CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 40))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A37D8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_2275A3860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A392C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 64))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A39F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 56))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A3AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 32))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A3B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 16))(a1, a2, a3, v7, v8);
}

uint64_t sub_2275A3C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[5];
  v8 = v3[6];
  __swift_project_boxed_opaque_existential_0(v3 + 2, v7);
  return (*(v8 + 24))(a1, a2, a3, v7, v8);
}

void *static CatalogMetadataJournal.representativeSamples()()
{
  v12 = sub_227666330();
  v0 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22766C090();
  sub_226F5D274();
  v18 = sub_22766BE70();
  v19[0] = v3;
  v19[1] = v19;
  v19[2] = &v18;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v14 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v15 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v4 = sub_2276638E0();

  v5 = *(v4 + 16);
  if (v5)
  {
    v13 = MEMORY[0x277D84F90];
    result = sub_226F1F888(0, v5, 0);
    v7 = 0;
    v8 = v13;
    v9 = v4 + 48;
    while (v7 < *(v4 + 16))
    {

      sub_227666300();
      v13 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_226F1F888((v10 > 1), v11 + 1, 1);
        v8 = v13;
      }

      ++v7;
      *(v8 + 16) = v11 + 1;
      result = (*(v0 + 32))(v8 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v11, v2, v12);
      v9 += 24;
      if (v5 == v7)
      {

        return v8;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_2275A4010(void *a1)
{
  v2 = [a1 identifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    [a1 timestamp];
    sub_227666300();
  }

  else
  {
    v4 = sub_227664DD0();
    sub_2275A4210(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51028], v4);
    swift_willThrow();
  }
}

id sub_2275A4140(void *a1)
{
  sub_227666310();
  v2 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666320();
  return [a1 setTimestamp_];
}

uint64_t sub_2275A41B8(uint64_t a1)
{
  result = sub_2275A4210(&qword_28139B690, MEMORY[0x277D522A0], &protocol conformance descriptor for CatalogMetadataJournal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275A4210(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2275A4268(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227665F20();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2276627D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v30 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v30 - v15;
  v17 = [a1 sessionIdentifier];
  if (!v17)
  {
    goto LABEL_9;
  }

  v31 = v2;
  v30[2] = a2;
  v18 = v17;
  v30[1] = sub_22766C000();
  v20 = v19;

  v21 = [a1 planIdentifier];
  if (!v21)
  {
LABEL_8:

LABEL_9:
    v28 = sub_227664DD0();
    sub_2275A4FF0(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51028], v28);
    swift_willThrow();

    return;
  }

  v22 = v21;
  v30[3] = v20;
  sub_2276627B0();

  (*(v7 + 32))(v16, v12, v6);
  v23 = [a1 reference];
  if (!v23)
  {
    (*(v7 + 8))(v16, v6);
    goto LABEL_8;
  }

  v24 = v23;
  (*(v7 + 16))(v9, v16, v6);
  v25 = v24;
  v26 = v31;
  sub_226F5B7DC(v25);
  if (v26)
  {

    v27 = *(v7 + 8);
    v27(v9, v6);
    v27(v16, v6);
  }

  else
  {
    sub_227667750();

    (*(v7 + 8))(v16, v6);
  }
}

void sub_2275A45E0(void *a1, uint64_t a2)
{
  v25 = sub_227665F20();
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276627D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227667740();
  v11 = sub_227662790();
  v12 = v10;
  v13 = a1;
  (*(v8 + 8))(v12, v7);
  [a1 setPlanIdentifier_];

  sub_227667770();
  v14 = objc_opt_self();
  v15 = sub_22766BFD0();
  v16 = [v14 insertNewObjectForEntityForName:v15 inManagedObjectContext:a2];

  type metadata accessor for ManagedWorkoutPlanReference();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v19 = v25;
    v20 = v24[1];
    sub_226F5C16C(v17);
    (*(v4 + 8))(v6, v19);
    if (v20)
    {
    }

    else
    {
      [v13 setReference_];

      sub_227667760();
      v23 = sub_22766BFD0();

      [v13 setSessionIdentifier_];
    }
  }

  else
  {

    v21 = sub_227664DD0();
    sub_2275A4FF0(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51000], v21);
    swift_willThrow();
    (*(v4 + 8))(v6, v25);
  }
}

void *static ArchivedWorkoutPlanSession.representativeSamples()()
{
  v35 = sub_227665F20();
  v24 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v23 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2276627D0();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF558, &qword_22768BFD8);
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = v23 - v4;
  v30 = sub_227667780();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227662780();
  v9 = static WorkoutPlanReference.representativeSamples()();
  v10 = sub_22766C090();
  v44 = v9;
  v45[0] = v8;
  v45[1] = v45;
  v45[2] = &v44;
  v43 = v10;
  v45[3] = &v43;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84D0, &unk_227675750);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF560, &qword_22768BFE0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v37 = sub_226F5BF60(&qword_27D7B84F0, &qword_27D7B84D0, &unk_227675750);
  v38 = sub_226F5BF60(&qword_27D7BF568, &qword_27D7BF560, &qword_22768BFE0);
  v39 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v11 = sub_2276638E0();

  v12 = *(v11 + 16);
  if (v12)
  {
    v36 = MEMORY[0x277D84F90];
    result = sub_226F1F5C8(0, v12, 0);
    v14 = 0;
    v15 = v36;
    v26 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v25 = (v1 + 16);
    v24 += 2;
    v23[1] = v5 + 32;
    v28 = v11;
    v27 = v3;
    while (v14 < *(v11 + 16))
    {
      v16 = v12;
      v17 = v5;
      v18 = v29;
      sub_2275A4EC0(v26 + *(v3 + 72) * v14, v29);
      v19 = *(v31 + 48);
      v20 = v7;
      (*v25)(v32, v18, v33);
      (*v24)(v34, v18 + v19, v35);

      sub_227667750();
      sub_2275A4F30(v18);
      v36 = v15;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F5C8((v21 > 1), v22 + 1, 1);
        v15 = v36;
      }

      ++v14;
      *(v15 + 16) = v22 + 1;
      v5 = v17;
      result = (*(v17 + 32))(v15 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v22, v20, v30);
      v12 = v16;
      v3 = v27;
      v7 = v20;
      v11 = v28;
      if (v16 == v14)
      {

        return v15;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_2275A4EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF558, &qword_22768BFD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2275A4F30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF558, &qword_22768BFD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2275A4F98(uint64_t a1)
{
  result = sub_2275A4FF0(&qword_2813A55C8, MEMORY[0x277D52F78], &protocol conformance descriptor for ArchivedWorkoutPlanSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2275A4FF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2275A5038(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9730, &qword_227674B90);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5)) | (v10 << 6);
        sub_226EA1E2C(*(a1 + 48) + 40 * v11, v33);
        sub_226E97CC0(*(a1 + 56) + 32 * v11, v34 + 8);
        v31[0] = v34[0];
        v31[1] = v34[1];
        v32 = v35;
        v30[0] = v33[0];
        v30[1] = v33[1];
        sub_226EA1E2C(v30, &v24);
        if (!swift_dynamicCast())
        {
          sub_226E97D1C(v30, &qword_27D7BF570, &unk_22768C110);

          goto LABEL_23;
        }

        v13 = v23[0];
        v12 = v23[1];
        sub_226E97CC0(v31 + 8, v23);
        sub_226E97D1C(v30, &qword_27D7BF570, &unk_22768C110);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v14 = sub_226E92000(v13, v12);
        if (v15)
        {
          v8 = (v2[6] + 16 * v14);
          *v8 = v13;
          v8[1] = v12;
          v9 = v14;

          sub_227333460(&v24, v2[7] + 40 * v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_25;
          }

          *(v2 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
          v16 = (v2[6] + 16 * v14);
          *v16 = v13;
          v16[1] = v12;
          v17 = v2[7] + 40 * v14;
          v18 = v24;
          v19 = v25;
          *(v17 + 32) = v26;
          *v17 = v18;
          *(v17 + 16) = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_26;
          }

          v2[2] = v22;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }

      v26 = 0;
      v24 = 0u;
      v25 = 0u;
      sub_226E97D1C(&v24, &qword_27D7BF578, &qword_22768C120);
LABEL_23:

      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_2275A5364(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9750, &qword_227674BB0);
    v2 = sub_22766D010();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v11 = __clz(__rbit64(v5)) | (v10 << 6);
    sub_226EA1E2C(*(a1 + 48) + 40 * v11, v27);
    sub_226E97CC0(*(a1 + 56) + 32 * v11, v28 + 8);
    v25[0] = v28[0];
    v25[1] = v28[1];
    v26 = v29;
    v24[0] = v27[0];
    v24[1] = v27[1];
    sub_226EA1E2C(v24, v19);
    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    sub_226E97CC0(v25 + 8, v20);
    sub_226E97D1C(v24, &qword_27D7BF570, &unk_22768C110);
    v21 = v18;
    sub_226F04970(v20, v22);
    v12 = v21;
    sub_226F04970(v22, v23);
    sub_226F04970(v23, &v21);
    v13 = sub_226E92000(v12, *(&v12 + 1));
    if (v14)
    {
      *(v2[6] + 16 * v13) = v12;
      v8 = v13;

      v9 = (v2[7] + 32 * v8);
      __swift_destroy_boxed_opaque_existential_0(v9);
      sub_226F04970(&v21, v9);
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
      *(v2[6] + 16 * v13) = v12;
      sub_226F04970(&v21, (v2[7] + 32 * v13));
      v15 = v2[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_23;
      }

      v2[2] = v17;
      v7 = v10;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v10 = v7;
  }

  sub_226E97D1C(v24, &qword_27D7BF570, &unk_22768C110);
}

void sub_2275A5640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v52 - v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF580, &qword_22768C128);
  MEMORY[0x28223BE20](v64);
  v63 = &v52 - v5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  MEMORY[0x28223BE20](v62);
  v61 = (&v52 - v6);
  v7 = sub_227662750();
  v66 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v52 - v11;
  MEMORY[0x28223BE20](v12);
  v59 = &v52 - v13;
  v68 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B98F8, &qword_227674D48);
    v14 = sub_22766D010();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  v15 = v68 + 64;
  v16 = 1 << *(v68 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v68 + 64);
  v19 = (v16 + 63) >> 6;
  v65 = (v66 + 56);
  v67 = (v66 + 32);
  v53 = v14 + 8;
  v54 = v66 + 40;

  v20 = 0;
  v57 = v4;
  v56 = v15;
  v55 = v19;
  v58 = v9;
  while (v18)
  {
    v22 = v20;
LABEL_14:
    v23 = __clz(__rbit64(v18)) | (v22 << 6);
    v24 = (*(v68 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    sub_226E97CC0(*(v68 + 56) + 32 * v23, v73);
    *&v72 = v25;
    *(&v72 + 1) = v26;
    v70[2] = v72;
    v71[0] = v73[0];
    v71[1] = v73[1];
    v27 = v26;
    v69 = v72;
    sub_226F04970(v71, v70);

    if (!swift_dynamicCast())
    {

      (*v65)(v4, 1, 1, v7);
      sub_226E97D1C(v4, &qword_27D7B9690, qword_227670B50);

      return;
    }

    v18 &= v18 - 1;
    (*v65)(v4, 0, 1, v7);
    v28 = v4;
    v29 = *v67;
    v30 = v60;
    (*v67)(v60, v28, v7);
    v31 = *(v64 + 48);
    v32 = v7;
    v33 = v63;
    v29(&v63[v31], v30, v32);
    v34 = v62;
    v35 = *(v62 + 48);
    v36 = v27;
    v37 = v61;
    *v61 = v69;
    v37[1] = v36;
    v38 = &v33[v31];
    v7 = v32;
    v39 = v58;
    v29(v37 + v35, v38, v7);
    v40 = *(v34 + 48);
    v41 = *v37;
    v42 = v37[1];
    v43 = v37 + v40;
    v44 = v59;
    v29(v59, v43, v7);
    v29(v39, v44, v7);
    v45 = sub_226E92000(v41, v42);
    v46 = v45;
    if (v47)
    {
      v21 = (v14[6] + 16 * v45);
      *v21 = v41;
      v21[1] = v42;

      (*(v66 + 40))(v14[7] + *(v66 + 72) * v46, v39, v7);
    }

    else
    {
      if (v14[2] >= v14[3])
      {
        goto LABEL_22;
      }

      *(v53 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      v48 = (v14[6] + 16 * v45);
      *v48 = v41;
      v48[1] = v42;
      v29((v14[7] + *(v66 + 72) * v45), v39, v7);
      v49 = v14[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_23;
      }

      v14[2] = v51;
    }

    v20 = v22;
    v4 = v57;
    v15 = v56;
    v19 = v55;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v22);
    ++v20;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t RecentAPIAccessRestrictionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  RecentAPIAccessRestrictionProvider.init()();
  return v0;
}

uint64_t RecentAPIAccessRestrictionProvider.init()()
{
  swift_defaultActor_initialize();
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_22766BFD0();
  v3 = [v1 dictionaryForKey_];

  if (!v3 || (v4 = sub_22766BEB0(), v3, sub_2275A5640(v4), v6 = v5, , !v6))
  {
    v6 = sub_22714A6B4(MEMORY[0x277D84F90]);
  }

  *(v0 + 112) = v6;
  return v0;
}

uint64_t RecentAPIAccessRestrictionProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RecentAPIAccessRestrictionProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t RecentAPIAccessRestrictionProvider.restriction(for:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_227662750();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = sub_22766B390();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275A5F28, v2, 0);
}

uint64_t sub_2275A5F28(uint64_t a1)
{
  sub_22730F118(a1);
  if (v3)
  {
    v4 = MEMORY[0x277D4E2D0];
LABEL_21:
    v45 = sub_227669A60();
    sub_226FF7114();
    swift_allocError();
    (*(*(v45 - 8) + 104))(v46, *v4, v45);
    swift_willThrow();

    v47 = v1[1];
    goto LABEL_27;
  }

  v5 = v2;
  v7 = v1[14];
  v6 = v1[15];
  v8 = v1[13];
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v6, v8);
  v9 = sub_227665640();
  if (v10)
  {
    v11 = v10;
    v12 = v9;
    v13 = v1[7];
    swift_beginAccess();
    v14 = *(v13 + 112);
    if (!*(v14 + 16) || (, v15 = sub_226E92000(v12, v11), v17 = v16, , (v17 & 1) == 0))
    {

      v4 = MEMORY[0x277D4E2C0];
      goto LABEL_21;
    }

    v18 = v5;
    v20 = v1[11];
    v19 = v1[12];
    v22 = v1[9];
    v21 = v1[10];
    v23 = v1[8];
    (*(v22 + 16))(v20, *(v14 + 56) + *(v22 + 72) * v15, v23);

    (*(v22 + 32))(v19, v20, v23);
    sub_227662720();
    sub_227662680();
    v25 = v24;
    v26 = *(v22 + 8);
    v26(v21, v23);
    v27 = v1[12];
    v28 = v1[8];
    if (v25 >= v18)
    {
      v48 = v1[6];
      v59 = v1[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A08, &unk_22768C040);
      v49 = sub_227665680();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_227670CD0;
      (*(v50 + 16))(v52 + v51, v48, v49);
      v53 = sub_226F4B130(v52);
      swift_setDeallocating();
      (*(v50 + 8))(v52 + v51, v49);
      swift_deallocClassInstance();
      v26(v27, v28);
      v54 = v59;
      *v59 = v53;
      v55 = MEMORY[0x277D515F0];
      goto LABEL_25;
    }

    v29 = v1[5];
    v26(v1[12], v1[8]);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    v31 = *(*(v30 - 8) + 56);
    v32 = v29;
LABEL_19:
    v44 = 1;
    goto LABEL_26;
  }

  v33 = sub_227665650();
  v34 = sub_226F4920C(v33);

  v35 = *(v34 + 16);
  if (!v35)
  {
LABEL_18:
    v43 = v1[5];

    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
    v31 = *(*(v30 - 8) + 56);
    v32 = v43;
    goto LABEL_19;
  }

  v36 = 32;
  while (1)
  {
    if (*(v34 + v36) == 2)
    {
      goto LABEL_10;
    }

    v37 = sub_227665A80();
    v39 = v38;
    if (v37 == sub_227665A80() && v39 == v40)
    {
      break;
    }

    v42 = sub_22766D190();

    if (v42)
    {
      goto LABEL_24;
    }

LABEL_10:
    ++v36;
    if (!--v35)
    {
      goto LABEL_18;
    }
  }

LABEL_24:

  v54 = v1[5];
  v55 = MEMORY[0x277D515F8];
LABEL_25:
  v56 = *v55;
  v57 = sub_227665360();
  (*(*(v57 - 8) + 104))(v54, v56, v57);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A10, &qword_227671620);
  v31 = *(*(v30 - 8) + 56);
  v32 = v54;
  v44 = 0;
LABEL_26:
  v31(v32, v44, 1, v30);

  v47 = v1[1];
LABEL_27:

  return v47();
}

uint64_t RecentAPIAccessRestrictionProvider.effectiveRestriction(for:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E92F34;

  return RecentAPIAccessRestrictionProvider.restriction(for:)(a1, a2);
}

uint64_t sub_2275A65C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E93028;

  return RecentAPIAccessRestrictionProvider.restriction(for:)(a1, a2);
}

uint64_t sub_2275A66C0(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = sub_227664010();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_226E93170(v1, &v11 - v8, &qword_27D7BC9B8, &unk_227682440);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 0;
  }

  (*(v4 + 32))(v6, v9, v3);
  v12(&v11, v6);
  if (v2)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    return v11;
  }

  return result;
}

void sub_2275A68B0()
{
  v1 = sub_227284754(0);
  if (!v0)
  {
    v2 = v1;
    [v1 setResultType_];
    [v2 setFetchLimit_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_227670CD0;
    sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

    v4 = sub_22766C820();
    v5 = [v4 keyPath];

    v6 = sub_22766C000();
    v8 = v7;

    *(v3 + 56) = MEMORY[0x277D837D0];
    *(v3 + 32) = v6;
    *(v3 + 40) = v8;
    v9 = sub_22766C2B0();

    [v2 setPropertiesToFetch_];

    sub_226E99364(0, &qword_28139D2B0, 0x277CBEAC0);
    v10 = sub_22766C9E0();
    v11 = sub_2273C23D0(v10);

    if (v11)
    {
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        while (v13 < *(v11 + 16))
        {
          v14 = v13 + 1;

          sub_227462844(v15);
          v13 = v14;
          if (v12 == v14)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_9:
      }
    }

    else
    {
      v16 = sub_227664DD0();
      sub_226EAC144(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51018], v16);
      swift_willThrow();
    }
  }
}

uint64_t sub_2275A6BA0()
{
  v1 = v0[5];
  v2 = v1[17];
  if (v2 && (v3 = v1[18]) != 0 && (v4 = v1[19]) != 0)
  {
    v13 = v0[1];

    return v13(v2, v3, v4);
  }

  else
  {
    v6 = v1[15];
    v7 = v1[16];
    __swift_project_boxed_opaque_existential_0(v1 + 12, v6);
    v8 = *(v7 + 24);

    v12 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[6] = v9;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF590, qword_22768C1D0);
    *v9 = v0;
    v9[1] = sub_2275A6D94;
    v11 = v0[5];

    return (v12)(v0 + 2, sub_2275B4798, v11, v10, v6, v7);
  }
}

uint64_t sub_2275A6D94()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_2275A6ED0;
  }

  else
  {

    v2 = sub_2275A6EB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2275A6ED0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2275A6F34(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v143 = a2;
  v138 = a3;
  v153[1] = *MEMORY[0x277D85DE8];
  v142 = sub_227664010();
  v152 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v141 = &v126 - v6;
  MEMORY[0x28223BE20](v7);
  v139 = &v126 - v8;
  MEMORY[0x28223BE20](v9);
  v144 = &v126 - v10;
  MEMORY[0x28223BE20](v11);
  v145 = &v126 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v126 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v126 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v126 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = (&v126 - v23);
  MEMORY[0x28223BE20](v25);
  v27 = &v126 - v26;
  v28 = sub_227663FA0();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v151;
  v33 = sub_226EB16F8(a1);
  if (v32)
  {
    return;
  }

  v150 = v28;
  v151 = v29;
  v147 = v24;
  v136 = v21;
  v133 = v27;
  v135 = v18;
  v132 = v15;
  v137 = v33;
  __swift_project_boxed_opaque_existential_0(v143 + 7, v143[10]);
  sub_226EAF48C(a1, v31);
  v34 = sub_227663E90();
  v151[1](v31, v150);
  v35 = sub_226F90F20(a1);
  v131 = 0;
  v129 = v35;
  v130 = a1;
  v36 = (v34 + 56);
  v37 = 1 << *(v34 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v34 + 56);
  v40 = (v37 + 63) >> 6;
  v41 = v152;
  v149 = v152 + 32;
  v150 = v152 + 16;
  v151 = (v152 + 8);
  v146 = v34;

  v43 = 0;
  v44 = v142;
  v45 = v136;
  v148 = v36;
  v46 = v147;
  if (!v39)
  {
    while (1)
    {
LABEL_6:
      v47 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v47 >= v40)
      {
        break;
      }

      v39 = v36[v47];
      ++v43;
      if (v39)
      {
        goto LABEL_9;
      }
    }

LABEL_75:

    v125 = 0;
    v124 = 106;
    sub_22766CFB0();
    __break(1u);
    goto LABEL_76;
  }

  while (1)
  {
    v47 = v43;
LABEL_9:
    v48 = *(v41 + 9);
    v18 = *(v41 + 2);
    (v18)(v46, *(v146 + 48) + v48 * (__clz(__rbit64(v39)) | (v47 << 6)), v44);
    v41 = *(v41 + 4);
    (v41)(v45, v46, v44);
    if (sub_227664000() == 300.0)
    {
      break;
    }

    v39 &= v39 - 1;
    v42 = (*v151)(v45, v44);
    v43 = v47;
    v41 = v152;
    v36 = v148;
    v46 = v147;
    if (!v39)
    {
      goto LABEL_6;
    }
  }

  v152 = v18;
  v134 = v48;
  v49 = v146;

  v18 = v133;
  (v41)(v133, v45, v44);
  v50 = sub_227664000();
  sub_227663FF0();
  v52 = v50 + v51;
  sub_227664000();
  v53 = sub_227663FE0();
  v54 = MEMORY[0x28223BE20](v53);
  v55 = v129;
  *(&v126 - 8) = v130;
  *(&v126 - 7) = v55;
  *(&v126 - 48) = 1;
  *(&v126 - 5) = v54;
  *(&v126 - 4) = v52;
  *(&v126 - 24) = 1;
  v124 = v49;
  v36 = v131;
  sub_226FE01F8(sub_2275B47B4, (&v126 - 10), v137);
  if (v36)
  {

    (*v151)(v18, v44);
LABEL_14:

    return;
  }

  if (*(v42 + 16))
  {
    v56 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9948, &qword_227680900);
    v57 = sub_22766D010();
    v42 = v56;
  }

  else
  {
LABEL_19:
    v57 = MEMORY[0x277D84F98];
  }

  v58 = v142;
  v136 = v41;
  v153[0] = v57;
  sub_2275B2FAC(v42, 1, v153);
  if (v36)
  {
    goto LABEL_76;
  }

  v127 = 0;
  v147 = *v151;
  v59 = (v147)(v18, v58);
  v131 = &v126;
  v126 = v153[0];
  MEMORY[0x28223BE20](v59);
  v60 = &v126 - 4;
  v124 = 0x4072C00000000000;
  v61 = v146;
  v62 = *(v146 + 32);
  v63 = v62 & 0x3F;
  v64 = ((1 << v62) + 63) >> 6;
  v65 = 8 * v64;

  if (v63 > 0xD)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v128 = &v126;
    MEMORY[0x28223BE20](v66);
    v67 = &v126 - ((v65 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v67, v65);
    v133 = 0;
    v68 = 0;
    v69 = 1 << *(v61 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v61 + 56);
    v65 = (v69 + 63) >> 6;
    v72 = v142;
    v60 = v145;
    v73 = v148;
    while (v71)
    {
      v74 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
LABEL_32:
      v77 = v74 | (v68 << 6);
      (v152)(v135, *(v61 + 48) + v77 * v134, v72);
      v78 = sub_227664000();
      v72 = v142;
      v79 = v78;
      v147(v135, v142);
      v60 = v145;
      v73 = v148;
      if (v79 != 300.0)
      {
        *&v67[(v77 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v77;
        if (__OFADD__(v133++, 1))
        {
          __break(1u);
LABEL_36:
          v135 = sub_22726C91C(v67, v64, v133, v61);
          goto LABEL_37;
        }
      }
    }

    v75 = v68;
    while (1)
    {
      v68 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        break;
      }

      if (v68 >= v65)
      {
        goto LABEL_36;
      }

      v76 = v73[v68];
      ++v75;
      if (v76)
      {
        v74 = __clz(__rbit64(v76));
        v71 = (v76 - 1) & v76;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_71:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v61 = v146;
  }

  v18 = swift_slowAlloc();
  v123 = v127;
  v135 = sub_2275B2F1C(v18, v64, v146, sub_2275B47CC, v60);
  v127 = v123;
  if (v123)
  {
    goto LABEL_77;
  }

  v61 = v146;

  MEMORY[0x22AA9A450](v18, -1, -1);
  v72 = v142;
  v60 = v145;
LABEL_37:
  v81 = 1 << *(v61 + 32);
  v82 = -1;
  if (v81 < 64)
  {
    v82 = ~(-1 << v81);
  }

  v83 = v82 & *(v61 + 56);
  v84 = (v81 + 63) >> 6;

  v85 = 0;
  v18 = 0x4072C00000000000;
  v86 = v148;
  if (v83)
  {
    while (1)
    {
      v87 = v85;
      v88 = v144;
LABEL_45:
      (v152)(v60, *(v61 + 48) + (__clz(__rbit64(v83)) | (v87 << 6)) * v134, v72);
      v136(v88, v60, v72);
      if (sub_227664000() == 300.0)
      {
        break;
      }

      v83 &= v83 - 1;
      v147(v88, v72);
      v85 = v87;
      v60 = v145;
      v86 = v148;
      if (!v83)
      {
        goto LABEL_41;
      }
    }

    v83 = v132;
    v136(v132, v88, v72);
    v89 = sub_227664000();
    sub_227663FF0();
    v91 = v89 + v90;
    sub_227664000();
    v92 = sub_227663FE0();
    v93 = MEMORY[0x28223BE20](v92);
    v94 = v129;
    *(&v126 - 8) = v130;
    *(&v126 - 7) = v94;
    *(&v126 - 48) = 0;
    *(&v126 - 5) = v93;
    *(&v126 - 4) = v91;
    *(&v126 - 24) = 1;
    v124 = v135;
    v95 = v127;
    sub_226FE01F8(sub_2275B4898, (&v126 - 10), v137);
    v131 = v95;
    if (v95)
    {

      v147(v83, v72);
      goto LABEL_14;
    }

    v18 = v96;

    if (*(v18 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9948, &qword_227680900);
      v97 = sub_22766D010();
      goto LABEL_54;
    }
  }

  else
  {
LABEL_41:
    v88 = v144;
    while (1)
    {
      v87 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        break;
      }

      if (v87 >= v84)
      {
        goto LABEL_75;
      }

      v83 = v86[v87];
      ++v85;
      if (v83)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
  }

  v97 = MEMORY[0x277D84F98];
LABEL_54:
  v98 = v142;
  v99 = v140;
  v100 = v134;
  v153[0] = v97;
  v101 = v131;
  sub_2275B2FAC(v18, 1, v153);
  if (v101)
  {
LABEL_76:
    swift_unexpectedError();
    __break(1u);
LABEL_77:

    MEMORY[0x22AA9A450](v18, -1, -1);
    __break(1u);
    return;
  }

  v147(v83, v98);
  v145 = v153[0];
  v102 = 1 << *(v61 + 32);
  v103 = -1;
  if (v102 < 64)
  {
    v103 = ~(-1 << v102);
  }

  v18 = v103 & *(v61 + 56);
  v104 = (v102 + 63) >> 6;

  for (i = 0; ; i = v108)
  {
    v107 = v141;
    if (!v18)
    {
      while (1)
      {
        v108 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (v108 >= v104)
        {
          goto LABEL_75;
        }

        v18 = v148[v108];
        ++i;
        if (v18)
        {
          goto LABEL_63;
        }
      }

      __break(1u);
      goto LABEL_68;
    }

    v108 = i;
LABEL_63:
    (v152)(v141, *(v61 + 48) + (__clz(__rbit64(v18)) | (v108 << 6)) * v100, v98);
    v136(v99, v107, v98);
    if (sub_227664000() == 300.0)
    {
      break;
    }

    v18 &= v18 - 1;
    v105 = (v147)(v99, v98);
  }

  v104 = v139;
  v136(v139, v99, v98);
  v109 = sub_227664000();
  sub_227663FF0();
  v111 = v109 + v110;
  sub_227664000();
  v112 = sub_227663FE0();
  v113 = MEMORY[0x28223BE20](v112);
  v114 = v129;
  *(&v126 - 8) = v130;
  *(&v126 - 7) = v114;
  *(&v126 - 48) = 1;
  *(&v126 - 5) = v113;
  *(&v126 - 4) = v111;
  *(&v126 - 24) = 0;
  v124 = v61;
  sub_226FE01F8(sub_2275B4898, (&v126 - 10), v137);
  if (*(v105 + 16))
  {
    v115 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9948, &qword_227680900);
    v116 = sub_22766D010();
    v105 = v115;
    goto LABEL_69;
  }

LABEL_68:
  v116 = MEMORY[0x277D84F98];
LABEL_69:
  v117 = v142;
  v118 = v143;
  v119 = v138;
  v153[0] = v116;
  sub_2275B2FAC(v105, 1, v153);

  v147(v104, v117);

  v120 = v153[0];
  v121 = v126;
  v118[17] = v126;

  v122 = v145;
  v118[18] = v145;

  v118[19] = v120;

  *v119 = v121;
  v119[1] = v122;
  v119[2] = v120;
}

void sub_2275A7F48(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v145 = a6;
  LODWORD(v143) = a5;
  LODWORD(v142) = a4;
  v137 = a7;
  v136 = sub_227664010();
  v146 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v141 = v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v140 = v132 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9B8, &unk_227682440);
  MEMORY[0x28223BE20](v17 - 8);
  v134 = v132 - v18;
  v19 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v20 = *v19;
  v21 = v19[1];
  v22 = *(v19 + 16);
  v23 = v19[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FC0, qword_22767B370);
  v24 = swift_allocObject();
  v25 = v20;
  v26 = v21;

  sub_22766A070();
  *(v24 + 16) = v25;
  *(v24 + 24) = v26;
  *(v24 + 32) = v22;
  *(v24 + 40) = v23;
  swift_getKeyPath();
  v135 = a1;
  v27 = sub_227666F70();
  v29 = v28;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v152[0] = v27;
  v152[1] = v29;
  v30 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v149 = v30;
  v31 = sub_22766C820();
  sub_226E93170(v152, v150, &unk_27D7BC990, &qword_227670A30);
  v32 = v151;
  if (v151)
  {
    v33 = __swift_project_boxed_opaque_existential_0(v150, v151);
    v34 = *(v32 - 8);
    v35 = MEMORY[0x28223BE20](v33);
    v37 = v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v37, v35);
    v38 = sub_22766D170();
    (*(v34 + 8))(v37, v32);
    __swift_destroy_boxed_opaque_existential_0(v150);
  }

  else
  {
    v38 = 0;
  }

  v148 = objc_opt_self();
  v39 = [v148 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB900, &unk_22767CDD0);
  v40 = [objc_allocWithZone(v147) initWithLeftExpression:v31 rightExpression:v39 modifier:0 type:4 options:0];

  sub_226E97D1C(v152, &unk_27D7BC990, &qword_227670A30);
  v41 = qword_2813B2078;
  swift_beginAccess();
  v42 = v40;
  v43 = sub_22766A080();
  v45 = v44;
  MEMORY[0x22AA985C0]();
  if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    sub_22766C3A0();
    (v43)(v152, 0);
    swift_endAccess();

    swift_getKeyPath();
    v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    v152[0] = a3;

    v46 = sub_22766C820();
    sub_226E93170(v152, v150, &unk_27D7BC990, &qword_227670A30);
    v47 = v151;
    if (v151)
    {
      v48 = __swift_project_boxed_opaque_existential_0(v150, v151);
      v49 = *(v47 - 8);
      v50 = MEMORY[0x28223BE20](v48);
      v52 = v132 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v52, v50);
      v53 = sub_22766D170();
      (*(v49 + 8))(v52, v47);
      __swift_destroy_boxed_opaque_existential_0(v150);
    }

    else
    {
      v53 = 0;
    }

    v54 = [v148 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v55 = [objc_allocWithZone(v147) initWithLeftExpression:v46 rightExpression:v54 modifier:0 type:10 options:0];

    sub_226E97D1C(v152, &unk_27D7BC990, &qword_227670A30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9A0, qword_2276758A0);
    v56 = swift_allocObject();
    v139 = xmmword_227670B30;
    *(v56 + 16) = xmmword_227670B30;
    *(v56 + 32) = v55;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9C38, qword_22768C260);
    v58 = objc_allocWithZone(v57);
    v59 = sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
    v60 = v55;
    v138 = v59;
    v61 = sub_22766C2B0();

    v62 = [v58 initWithType:0 subpredicates:v61];

    swift_beginAccess();
    v63 = v62;
    v64 = sub_22766A080();
    v66 = v65;
    MEMORY[0x22AA985C0]();
    if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22766C360();
    }

    sub_22766C3A0();
    v64(v152, 0);
    swift_endAccess();

    if ((v142 & 1) == 0)
    {
      v133 = v57;
      v142 = v41;
      swift_getKeyPath();
      v67 = MEMORY[0x277D839F8];
      v153 = MEMORY[0x277D839F8];
      *v152 = a8;

      v68 = sub_22766C820();
      sub_226E93170(v152, v150, &unk_27D7BC990, &qword_227670A30);
      v69 = v151;
      if (v151)
      {
        v70 = __swift_project_boxed_opaque_existential_0(v150, v151);
        v71 = *(v69 - 8);
        v72 = MEMORY[0x28223BE20](v70);
        v74 = v132 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v71 + 16))(v74, v72);
        v75 = sub_22766D170();
        (*(v71 + 8))(v74, v69);
        v67 = MEMORY[0x277D839F8];
        __swift_destroy_boxed_opaque_existential_0(v150);
      }

      else
      {
        v75 = 0;
      }

      v76 = [v148 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v77 = [objc_allocWithZone(v147) initWithLeftExpression:v68 rightExpression:v76 modifier:0 type:3 options:0];

      sub_226E97D1C(v152, &unk_27D7BC990, &qword_227670A30);
      swift_getKeyPath();
      v153 = v67;
      *v152 = a9;

      v78 = sub_22766C820();
      sub_226E93170(v152, v150, &unk_27D7BC990, &qword_227670A30);
      v79 = v151;
      v132[1] = v24;
      if (v151)
      {
        v80 = __swift_project_boxed_opaque_existential_0(v150, v151);
        v81 = *(v79 - 8);
        v82 = MEMORY[0x28223BE20](v80);
        v84 = v132 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v81 + 16))(v84, v82);
        v85 = sub_22766D170();
        (*(v81 + 8))(v84, v79);
        __swift_destroy_boxed_opaque_existential_0(v150);
      }

      else
      {
        v85 = 0;
      }

      v86 = [v148 expressionForConstantValue_];
      swift_unknownObjectRelease();
      v87 = [objc_allocWithZone(v147) initWithLeftExpression:v78 rightExpression:v86 modifier:0 type:1 options:0];

      sub_226E97D1C(v152, &unk_27D7BC990, &qword_227670A30);
      v88 = swift_allocObject();
      *(v88 + 16) = xmmword_2276756A0;
      *(v88 + 32) = v77;
      *(v88 + 40) = v87;
      v89 = v133;
      v90 = objc_allocWithZone(v133);
      v91 = v77;
      v92 = v87;
      v93 = sub_22766C2B0();

      v94 = [v90 initWithType:1 subpredicates:v93];

      v95 = swift_allocObject();
      *(v95 + 16) = v139;
      *(v95 + 32) = v94;
      v96 = objc_allocWithZone(v89);
      v97 = v94;
      v98 = sub_22766C2B0();

      v99 = [v96 initWithType:0 subpredicates:v98];

      swift_beginAccess();
      v100 = v99;
      v101 = sub_22766A080();
      v103 = v102;
      MEMORY[0x22AA985C0]();
      if (*((*v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22766C360();
      }

      sub_22766C3A0();
      v101(v152, 0);
      swift_endAccess();
    }

    swift_getKeyPath();
    v42 = sub_227397EAC();

    swift_getKeyPath();

    v104 = v144;
    sub_2275A68B0();
    v106 = v105;
    v108 = v107;
    v43 = v104;

    if (v104)
    {

      return;
    }

    if (v108)
    {

      v109 = 0;
      v110 = 0;
      v111 = 0;
      v112 = 255;
      goto LABEL_40;
    }

    v143 = v42;
    v144 = 0;
    a8 = v106;
    a3 = v145 + 56;
    v113 = 1 << *(v145 + 32);
    v114 = -1;
    if (v113 < 64)
    {
      v114 = ~(-1 << v113);
    }

    v24 = v114 & *(v145 + 56);
    v115 = (v113 + 63) >> 6;
    v148 = (v146 + 16);
    v149 = v146 + 32;
    v147 = (v146 + 8);

    v116 = 0;
    v41 = v136;
    if (v24)
    {
      break;
    }

LABEL_28:
    while (1)
    {
      v117 = v116 + 1;
      if (__OFADD__(v116, 1))
      {
        break;
      }

      if (v117 >= v115)
      {

        v131 = 1;
        v130 = v134;
        goto LABEL_39;
      }

      v24 = *(a3 + 8 * v117);
      ++v116;
      if (v24)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_42:
    sub_22766C360();
  }

  while (1)
  {
    v117 = v116;
LABEL_31:
    v43 = v146;
    v42 = v140;
    (*(v146 + 16))(v140, *(v145 + 48) + *(v146 + 72) * (__clz(__rbit64(v24)) | (v117 << 6)), v41);
    v118 = *(v43 + 32);
    v119 = v141;
    v118(v141, v42, v41);
    v120 = sub_227664000();
    sub_227663FF0();
    v122 = v120 + v121;
    a9 = sub_227664000();
    sub_227663FE0();
    if (a9 - v123 <= a8 && v122 >= a8)
    {
      break;
    }

    v24 &= v24 - 1;
    (*v147)(v119, v41);
    v116 = v117;
    if (!v24)
    {
      goto LABEL_28;
    }
  }

  v130 = v134;
  v118(v134, v119, v41);
  v131 = 0;
LABEL_39:
  v125 = (*(v146 + 56))(v130, v131, 1, v41);
  MEMORY[0x28223BE20](v125);
  v132[-2] = v135;
  v109 = sub_2275A66C0(sub_2275B4838);
  v110 = v126;
  v112 = v127;
  v111 = v128;

  sub_226E97D1C(v130, &qword_27D7BC9B8, &unk_227682440);
LABEL_40:
  v129 = v137;
  *v137 = v109;
  v129[1] = v110;
  v129[2] = v112;
  v129[3] = v111;
}

uint64_t sub_2275A8F38(uint64_t a1, char a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_2275A8FD0;

  return sub_2275A6B80();
}

uint64_t sub_2275A8FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = v3;

  if (v3)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2275A9114, 0, 0);
  }
}

void sub_2275A9114()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16);
  if (*(v0 + 56) == 1)
  {
  }

  else
  {

    v1 = v2;
  }

  v4 = sub_2275B3674(v1, v3);
  v5 = *(v0 + 57);

  if (v5)
  {
    if (v5 != 1)
    {
      goto LABEL_24;
    }

    v6 = COERCE_DOUBLE(sub_2274CFEB4(v4));
    v8 = v7;

    if (v8)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = v6;
    }

    if ((v8 & 1) == 0 && (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    if (v9 <= -9.22337204e18)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v9 < 9.22337204e18)
    {
LABEL_38:
      v21 = *(v0 + 8);

      v21(v9);
      return;
    }

    __break(1u);
  }

  v10 = COERCE_DOUBLE(sub_2274CFDA4(v4));
  v12 = v11;

  if (v12)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v10;
  }

  if ((v12 & 1) == 0 && (*&v10 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    goto LABEL_43;
  }

  if (v9 <= -9.22337204e18)
  {
    goto LABEL_45;
  }

  if (v9 < 9.22337204e18)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_24:
  v14 = 0;
  v15 = -1 << *(v4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v4[8];
  v18 = (63 - v15) >> 6;
  v9 = 0.0;
  if (v17)
  {
    while (1)
    {
      v19 = v14;
LABEL_33:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v9 = v9 + *(v4[7] + ((v19 << 9) | (8 * v20)));
      if (!v17)
      {
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
LABEL_29:
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v19 >= v18)
    {
      break;
    }

    v17 = v4[v19 + 8];
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_33;
    }
  }

  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_46;
  }

  if (v9 > -9.22337204e18)
  {
    if (v9 >= 9.22337204e18)
    {
      goto LABEL_48;
    }

    goto LABEL_38;
  }

LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_2275A93D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_2275A9464;

  return sub_2275A6B80();
}

uint64_t sub_2275A9464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;
  *(*v4 + 56) = v3;

  if (v3)
  {
    v9 = *(v8 + 8);

    return v9(0);
  }

  else
  {

    *(v7 + 64) = a2;
    *(v7 + 72) = a1;

    return MEMORY[0x2822009F8](sub_2275A95D4, 0, 0);
  }
}

void sub_2275A95D4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);

  v3 = sub_2275B3674(v1, v2);

  v4 = sub_2274CFEB4(v3);
  LOBYTE(v2) = v5;

  *(v0 + 80) = v4;
  *(v0 + 200) = v2;
  v6 = *&v4;
  if (v2)
  {
    v6 = 0.0;
    v7 = 0;
  }

  else
  {
    v7 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_2275A9720;

  sub_2275A6B80();
}

uint64_t sub_2275A9720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;
  *(*v4 + 96) = v3;

  if (v3)
  {
    v9 = *(v8 + 8);

    return v9(0);
  }

  else
  {

    *(v7 + 104) = a2;
    *(v7 + 112) = a1;

    return MEMORY[0x2822009F8](sub_2275A9890, 0, 0);
  }
}

void sub_2275A9890()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);

  v3 = sub_2275B3674(v1, v2);

  v4 = sub_2274CFDA4(v3);
  LOBYTE(v2) = v5;

  *(v0 + 120) = v4;
  *(v0 + 201) = v2;
  v6 = *&v4;
  if (v2)
  {
    v6 = 0.0;
    v7 = 0;
  }

  else
  {
    v7 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  *v8 = v0;
  v8[1] = sub_2275A99DC;

  sub_2275A6B80();
}

uint64_t sub_2275A99DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[17] = a1;
  v5[18] = a2;
  v5[19] = v3;

  if (v3)
  {
    v6 = v5[1];

    return v6(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2275A9B24, 0, 0);
  }
}

void sub_2275A9B24()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 136);
  v3 = *(v0 + 24);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 200) & 1) != 0 || *(v0 + 80) < 6)
  {
  }

  else
  {

    v2 = v1;
  }

  v4 = sub_2275B3674(v2, v3);

  v5 = sub_2274CFEB4(v4);
  v7 = v6;

  *(v0 + 160) = v5;
  *(v0 + 202) = v7;
  v8 = *&v5;
  if (v7)
  {
    v8 = 0.0;
    v9 = 0;
  }

  else
  {
    v9 = (v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_2275A9CE0;

  sub_2275A6B80();
}

uint64_t sub_2275A9CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = v3;

  if (v3)
  {
    v6 = v5[1];

    return v6(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2275A9E28, 0, 0);
  }
}

void sub_2275A9E28()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  v3 = *(v0 + 24);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 200) & 1) != 0 || *(v0 + 80) < 6)
  {
  }

  else
  {

    v2 = v1;
  }

  v4 = sub_2275B3674(v2, v3);

  v5 = sub_2274CFDA4(v4);
  v7 = v6;

  v8 = *&v5;
  if (v7)
  {
    v8 = 0.0;
    v9 = 0;
  }

  else
  {
    v9 = (v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v9)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  if (*(v0 + 202))
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v0 + 160);
  }

  if (*(v0 + 201))
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v0 + 120);
  }

  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    goto LABEL_34;
  }

  v14 = *(v0 + 80);
  if (*(v0 + 200))
  {
    v14 = 0;
  }

  v12 = __OFADD__(v8, v14);
  v15 = v8 + v14;
  if (v12)
  {
    goto LABEL_35;
  }

  v16 = *(v0 + 32);
  v18 = v13 > v16 || v15 > v16;
  v19 = *(v0 + 8);

  v19(v18);
}

uint64_t sub_2275AA00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF588, &unk_22768C1B8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2275AA120, 0, 0);
}

uint64_t sub_2275AA120()
{
  v1 = *(v0 + 24);
  *(v0 + 1208) = 8;
  sub_226F480FC();
  sub_226EC1E18();
  v2 = sub_22766C600();
  *(v0 + 1209) = 0;
  v3 = sub_22766C600();
  *(v0 + 1210) = 13;
  v4 = sub_22766C600();
  v5 = *(v1 + 16);
  if (v2)
  {
    if (v3)
    {
      if (v4)
      {
        if (v5 == 3)
        {
          v6 = swift_task_alloc();
          *(v0 + 152) = v6;
          *v6 = v0;
          v7 = sub_2275AAA5C;
LABEL_19:
          v6[1] = v7;
          v12 = *(v0 + 24);

          return sub_2275A8F38(v12, 0, 2);
        }

        if (v5 >= 4)
        {
          v18 = *(v0 + 48);
          v19 = *(v0 + 24);
          if (*(v18 + 16) <= v5 >> 3)
          {
            v47 = *(v0 + 24);

            sub_2270062A8(v18);
            v20 = v47;
          }

          else
          {

            v20 = sub_227009F28(v18, v19);
          }

          *(v0 + 168) = v20;
          v34 = swift_task_alloc();
          *(v0 + 176) = v34;
          *v34 = v0;
          v34[1] = sub_2275AAE2C;
          v35 = *(v0 + 48);
          v36 = *(v0 + 32);
          v37 = v20;
          goto LABEL_55;
        }

        goto LABEL_13;
      }

      if (v5 == 2)
      {
        v6 = swift_task_alloc();
        *(v0 + 320) = v6;
        *v6 = v0;
        v7 = sub_2275ABFD8;
        goto LABEL_19;
      }

      if (v5 >= 3)
      {
        if (*(v0 + 40) <= 1)
        {
          v40 = *(v0 + 16);
          v41 = *MEMORY[0x277D511F0];
          v42 = sub_227664EC0();
          v43 = *(v42 - 8);
          (*(v43 + 104))(v40, v41, v42);
          (*(v43 + 56))(v40, 0, 1, v42);
          v44 = 0;
          goto LABEL_14;
        }

        v29 = *(v0 + 48);
        v30 = *(v0 + 24);
        if (*(v29 + 16) <= v5 >> 3)
        {
          v50 = *(v0 + 24);

          sub_2270062A8(v29);
          v15 = v50;
        }

        else
        {

          v15 = sub_227009F28(v29, v30);
        }

        *(v0 + 336) = v15;
        v31 = sub_226F4D188(&unk_283A93CC0);
        *(v0 + 344) = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        swift_arrayDestroy();
        v32 = swift_task_alloc();
        *(v0 + 352) = v32;
        *v32 = v0;
        v33 = sub_2275AC3A8;
LABEL_54:
        v32[1] = v33;
        v36 = *(v0 + 32);
        v37 = v15;
        v35 = v31;
LABEL_55:

        return sub_2275A93D0(v37, v35, v36);
      }
    }

    else if (v4)
    {
      if (v5 == 2)
      {
        v6 = swift_task_alloc();
        *(v0 + 504) = v6;
        *v6 = v0;
        v7 = sub_2275AD62C;
        goto LABEL_19;
      }

      if (v5 >= 3)
      {
        v23 = *(v0 + 48);
        v24 = sub_226F4D188(&unk_283A93D10);
        *(v0 + 520) = v24;
        sub_226E97D1C(&unk_283A93D30, &qword_27D7B8560, &unk_227671560);
        v25 = *(v1 + 16);
        v26 = *(v0 + 48);
        v27 = *(v0 + 24);
        if (*(v23 + 16) <= v25 >> 3)
        {
          v49 = *(v0 + 24);

          sub_2270062A8(v26);
          v28 = v49;
        }

        else
        {

          v28 = sub_227009F28(v26, v27);
        }

        v38 = sub_22742F60C(&unk_283A93D48, v28);
        *(v0 + 528) = v38;
        sub_226E97D1C(&unk_283A93D68, &qword_27D7B8560, &unk_227671560);
        v39 = swift_task_alloc();
        *(v0 + 536) = v39;
        *v39 = v0;
        v39[1] = sub_2275AD9FC;
        v36 = *(v0 + 32);
        v37 = v38;
        v35 = v24;
        goto LABEL_55;
      }
    }

    else if (v5 >= 2)
    {
      v16 = *(v0 + 48);
      v17 = *(v0 + 24);
      if (*(v16 + 16) <= v5 >> 3)
      {
        v46 = *(v0 + 24);

        sub_2270062A8(v16);
        v15 = v46;
      }

      else
      {

        v15 = sub_227009F28(v16, v17);
      }

      *(v0 + 688) = v15;
      v31 = sub_226F4D188(&unk_283A93D80);
      *(v0 + 696) = v31;
      sub_226E97D1C(&unk_283A93DA0, &qword_27D7B8560, &unk_227671560);
      v32 = swift_task_alloc();
      *(v0 + 704) = v32;
      *v32 = v0;
      v33 = sub_2275AEC94;
      goto LABEL_54;
    }
  }

  else if (v3)
  {
    if (v4)
    {
      if (v5 == 2)
      {
        v6 = swift_task_alloc();
        *(v0 + 856) = v6;
        *v6 = v0;
        v7 = sub_2275AFF2C;
        goto LABEL_19;
      }

      if (v5 >= 3)
      {
        v21 = *(v0 + 48);
        v22 = *(v0 + 24);
        if (*(v21 + 16) <= v5 >> 3)
        {
          v48 = *(v0 + 24);

          sub_2270062A8(v21);
          v15 = v48;
        }

        else
        {

          v15 = sub_227009F28(v21, v22);
        }

        *(v0 + 872) = v15;
        v31 = sub_226F4D188(&unk_283A93DB8);
        *(v0 + 880) = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8560, &unk_227671560);
        swift_arrayDestroy();
        v32 = swift_task_alloc();
        *(v0 + 888) = v32;
        *v32 = v0;
        v33 = sub_2275B02FC;
        goto LABEL_54;
      }
    }

    else if (v5 >= 2)
    {
      v13 = *(v0 + 48);
      v14 = *(v0 + 24);
      if (*(v13 + 16) <= v5 >> 3)
      {
        v45 = *(v0 + 24);

        sub_2270062A8(v13);
        v15 = v45;
      }

      else
      {

        v15 = sub_227009F28(v13, v14);
      }

      *(v0 + 1040) = v15;
      v31 = sub_226F4D188(&unk_283A93E08);
      *(v0 + 1048) = v31;
      sub_226E97D1C(&unk_283A93E28, &qword_27D7B8560, &unk_227671560);
      v32 = swift_task_alloc();
      *(v0 + 1056) = v32;
      *v32 = v0;
      v33 = sub_2275B1594;
      goto LABEL_54;
    }
  }

LABEL_13:
  v8 = *(v0 + 16);
  v9 = sub_227664EC0();
  v44 = 1;
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
LABEL_14:

  v10 = *(v0 + 8);

  return v10(v44);
}

uint64_t sub_2275AAA5C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 160) = a1;

    return MEMORY[0x2822009F8](sub_2275AAC30, 0, 0);
  }
}

uint64_t sub_2275AAC30()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[8];
  v4 = v0[4];
  v5 = *(v3 + 48);
  if (v1 > v4)
  {
    v10 = *MEMORY[0x277D511F8];
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    (*(v7 + 104))(v2 + v5, v10, v6);
    v8 = 0;
    v9 = v0[18];
    v3 = v0[8];
  }

  else
  {
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    v8 = 1;
    v9 = v2;
  }

  v14 = v1 <= v4;
  v11 = v0[2];
  (*(v7 + 56))(v2 + v5, v8, 1, v6);
  sub_2275B4728(v9 + *(v3 + 48), v11);

  v12 = v0[1];

  return v12(v14);
}

uint64_t sub_2275AAE2C(char a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_2275B2824;
  }

  else
  {

    *(v4 + 1211) = a1 & 1;
    v5 = sub_2275AAF60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2275AAF60()
{
  if (*(v0 + 1211) == 1)
  {
    v1 = *(v0 + 16);
    v2 = *MEMORY[0x277D511F8];
    v3 = sub_227664EC0();
    v4 = *(v3 - 8);
    (*(v4 + 104))(v1, v2, v3);
    (*(v4 + 56))(v1, 0, 1, v3);

    v5 = *(v0 + 8);

    v5(0);
  }

  else
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    *(v0 + 192) = v7 * v6;
    if ((v7 * v6) >> 64 == (v7 * v6) >> 63)
    {
      v8 = *(v0 + 48);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v0 + 24);
        if (v9 <= *(v10 + 16) >> 3)
        {
          v15 = *(v0 + 24);

          sub_2270062A8(v8);
          v11 = v15;
        }

        else
        {

          v11 = sub_227009F28(v8, v10);
        }

        *(v0 + 216) = v11;
        v14 = swift_task_alloc();
        *(v0 + 224) = v14;
        *v14 = v0;
        v14[1] = sub_2275AB630;

        sub_2275A6B80();
      }

      else
      {
        v12 = swift_task_alloc();
        *(v0 + 200) = v12;
        *v12 = v0;
        v12[1] = sub_2275AB258;
        v13 = *(v0 + 24);

        sub_2275A8F38(v13, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275AB258(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 208) = a1;

    return MEMORY[0x2822009F8](sub_2275AB42C, 0, 0);
  }
}

uint64_t sub_2275AB42C()
{
  v1 = v0[17];
  v2 = v0[8];
  v3 = *(v2 + 48);
  if (v0[24] >= v0[26])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v8 = v0[17];
    v2 = v0[8];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v12 = v0[24] >= v0[26];

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_2275AB630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(*v4 + 232) = v3;

  if (v3)
  {
    v8 = sub_2275AB770;
  }

  else
  {

    *(v7 + 240) = a2;
    *(v7 + 248) = a1;
    v8 = sub_2275AB860;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2275AB770()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_2275AB860()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 216);

  v3 = sub_2275B3674(v1, v2);

  v4 = sub_2274CFEB4(v3);
  v6 = v5;

  *(v0 + 256) = v4;
  *(v0 + 1212) = v6;
  v7 = *&v4;
  if (v6)
  {
    v7 = 0.0;
    v8 = 0;
  }

  else
  {
    v8 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = swift_task_alloc();
  *(v0 + 264) = v9;
  *v9 = v0;
  v9[1] = sub_2275AB9BC;

  sub_2275A6B80();
}

uint64_t sub_2275AB9BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[34] = a1;
  v5[35] = a2;
  v5[36] = v3;

  if (v3)
  {

    v6 = v5[1];

    return v6(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2275ABB98, 0, 0);
  }
}

void sub_2275ABB98()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 272);
  v3 = *(v0 + 48);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1212) & 1) != 0 || *(v0 + 256) < 6)
  {
  }

  else
  {

    v2 = v1;
  }

  v4 = sub_2275B3674(v2, v3);

  v5 = sub_2274CFEB4(v4);
  v7 = v6;

  *(v0 + 296) = v5;
  *(v0 + 1213) = v7;
  v8 = *&v5;
  if (v7)
  {
    v8 = 0.0;
  }

  else if ((v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v9 = *(v0 + 1212);
  v10 = *(v0 + 256);
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  *v12 = v0;
  v12[1] = sub_2275ABD9C;
  v13 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v11 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v9;
  if (v10 > 5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 24);

  sub_2275A8F38(v15, v14, 2);
}

uint64_t sub_2275ABD9C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 312) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2275ABF6C, 0, 0);
  }
}

uint64_t sub_2275ABF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 40);
  v5 = *(*(v3 + 48) + 16);
  v6 = v4 <= v5;
  v7 = v4 - v5;
  if (v6)
  {
    goto LABEL_7;
  }

  if (*(v3 + 1213))
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v3 + 296);
  }

  v9 = v7 * v8;
  if ((v7 * v8) >> 64 != (v7 * v8) >> 63)
  {
    __break(1u);
LABEL_7:
    v9 = 0;
  }

  v10 = *(v3 + 312);
  v11 = __OFADD__(v10, v9);
  v12 = v10 + v9;
  if (v11)
  {
    __break(1u);
    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  else
  {
    *(v3 + 208) = v12;
    return MEMORY[0x2822009F8](sub_2275AB42C, 0, 0);
  }
}

uint64_t sub_2275ABFD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 328) = a1;

    return MEMORY[0x2822009F8](sub_2275AC1AC, 0, 0);
  }
}

uint64_t sub_2275AC1AC()
{
  v1 = v0[41];
  v2 = v0[16];
  v3 = v0[8];
  v4 = v0[4];
  v5 = *(v3 + 48);
  if (v1 > v4)
  {
    v10 = *MEMORY[0x277D511F8];
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    (*(v7 + 104))(v2 + v5, v10, v6);
    v8 = 0;
    v9 = v0[16];
    v3 = v0[8];
  }

  else
  {
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    v8 = 1;
    v9 = v2;
  }

  v14 = v1 <= v4;
  v11 = v0[2];
  (*(v7 + 56))(v2 + v5, v8, 1, v6);
  sub_2275B4728(v9 + *(v3 + 48), v11);

  v12 = v0[1];

  return v12(v14);
}

uint64_t sub_2275AC3A8(char a1)
{
  v4 = *v2;
  *(*v2 + 360) = v1;

  if (v1)
  {
    v5 = sub_2275B2914;
  }

  else
  {

    *(v4 + 1214) = a1 & 1;
    v5 = sub_2275AC4DC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2275AC4DC()
{
  if (*(v0 + 1214) == 1)
  {
    v1 = *(v0 + 16);

    v2 = *MEMORY[0x277D511F8];
    v3 = sub_227664EC0();
    v4 = *(v3 - 8);
    (*(v4 + 104))(v1, v2, v3);
    (*(v4 + 56))(v1, 0, 1, v3);

    v5 = *(v0 + 8);

    v5(0);
  }

  else
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    *(v0 + 368) = v7 * v6;
    if ((v7 * v6) >> 64 == (v7 * v6) >> 63)
    {
      v8 = *(v0 + 344);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v0 + 24);
        if (v9 <= *(v10 + 16) >> 3)
        {
          v15 = *(v0 + 24);

          sub_2270062A8(v8);
          v11 = v15;
        }

        else
        {

          v11 = sub_227009F28(v8, v10);
        }

        *(v0 + 392) = v11;
        v14 = swift_task_alloc();
        *(v0 + 400) = v14;
        *v14 = v0;
        v14[1] = sub_2275ACBB8;

        sub_2275A6B80();
      }

      else
      {
        v12 = swift_task_alloc();
        *(v0 + 376) = v12;
        *v12 = v0;
        v12[1] = sub_2275AC7C4;
        v13 = *(v0 + 24);

        sub_2275A8F38(v13, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275AC7C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 384) = a1;

    return MEMORY[0x2822009F8](sub_2275AC9B4, 0, 0);
  }
}

uint64_t sub_2275AC9B4()
{
  v1 = v0[15];
  v2 = v0[8];
  v3 = *(v2 + 48);
  if (v0[46] >= v0[48])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v8 = v0[15];
    v2 = v0[8];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v12 = v0[46] >= v0[48];

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_2275ACBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(*v4 + 408) = v3;

  if (v3)
  {
    v8 = sub_2275ACCF8;
  }

  else
  {

    *(v7 + 416) = a2;
    *(v7 + 424) = a1;
    v8 = sub_2275ACDF4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2275ACCF8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_2275ACDF4()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 392);

  v3 = sub_2275B3674(v1, v2);

  v4 = sub_2274CFEB4(v3);
  v6 = v5;

  *(v0 + 432) = v4;
  *(v0 + 1215) = v6;
  v7 = *&v4;
  if (v6)
  {
    v7 = 0.0;
    v8 = 0;
  }

  else
  {
    v8 = (v4 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000;
  }

  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v9 = swift_task_alloc();
  *(v0 + 440) = v9;
  *v9 = v0;
  v9[1] = sub_2275ACF50;

  sub_2275A6B80();
}

uint64_t sub_2275ACF50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[56] = a1;
  v5[57] = a2;
  v5[58] = v3;

  if (v3)
  {
    v6 = sub_2275AD278;
  }

  else
  {

    v6 = sub_2275AD074;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_2275AD074()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 448);
  v3 = *(v0 + 344);
  if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *(v0 + 32) + 0x1999999999999998, 1) > 0x1999999999999998uLL || (*(v0 + 1215) & 1) != 0 || *(v0 + 432) < 6)
  {
  }

  else
  {

    v2 = v1;
  }

  v4 = sub_2275B3674(v2, v3);

  v5 = sub_2274CFEB4(v4);
  v7 = v6;

  *(v0 + 472) = v5;
  *(v0 + 1216) = v7;
  v8 = *&v5;
  if (v7)
  {
    v8 = 0.0;
  }

  else if ((v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v9 = *(v0 + 1215);
  v10 = *(v0 + 432);
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 480) = v12;
  *v12 = v0;
  v12[1] = sub_2275AD368;
  v13 = (__ROR8__(0xCCCCCCCCCCCCCCCDLL * v11 + 0x1999999999999998, 1) < 0x1999999999999999uLL) & ~v9;
  if (v10 > 5)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v0 + 24);

  sub_2275A8F38(v15, v14, 2);
}

uint64_t sub_2275AD278()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275AD368(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 488) = a1;
  *(v3 + 496) = v1;

  if (v1)
  {
    v4 = sub_2275AD53C;
  }

  else
  {
    v4 = sub_2275AD47C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2275AD47C()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 344) + 16);

  if (v2 >= v1)
  {
    goto LABEL_6;
  }

  v6 = *(v0 + 472);
  if (*(v0 + 1216))
  {
    v6 = 0;
  }

  v7 = *(v0 + 40) - v2;
  v8 = v7 * v6;
  if ((v7 * v6) >> 64 != (v7 * v6) >> 63)
  {
    __break(1u);
LABEL_6:
    v8 = 0;
  }

  v9 = *(v0 + 488);
  v10 = __OFADD__(v9, v8);
  v11 = v9 + v8;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 384) = v11;
    v3 = sub_2275AC9B4;
    v4 = 0;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2275AD53C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_2275AD62C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 512) = a1;

    return MEMORY[0x2822009F8](sub_2275AD800, 0, 0);
  }
}

uint64_t sub_2275AD800()
{
  v1 = v0[64];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[4];
  v5 = *(v3 + 48);
  if (v1 > v4)
  {
    v10 = *MEMORY[0x277D511F8];
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    (*(v7 + 104))(v2 + v5, v10, v6);
    v8 = 0;
    v9 = v0[14];
    v3 = v0[8];
  }

  else
  {
    v6 = sub_227664EC0();
    v7 = *(v6 - 8);
    v8 = 1;
    v9 = v2;
  }

  v14 = v1 <= v4;
  v11 = v0[2];
  (*(v7 + 56))(v2 + v5, v8, 1, v6);
  sub_2275B4728(v9 + *(v3 + 48), v11);

  v12 = v0[1];

  return v12(v14);
}

uint64_t sub_2275AD9FC(char a1)
{
  v4 = *v2;
  *(*v2 + 544) = v1;

  if (v1)
  {
    v5 = sub_2275B2A0C;
  }

  else
  {

    *(v4 + 1217) = a1 & 1;
    v5 = sub_2275ADB30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2275ADB30()
{
  if (*(v0 + 1217) == 1)
  {
    v1 = *(v0 + 16);

    v2 = *MEMORY[0x277D511F8];
    v3 = sub_227664EC0();
    v4 = *(v3 - 8);
    (*(v4 + 104))(v1, v2, v3);
    (*(v4 + 56))(v1, 0, 1, v3);

    v5 = *(v0 + 8);

    v5(0);
  }

  else
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    *(v0 + 552) = v7 * v6;
    if ((v7 * v6) >> 64 == (v7 * v6) >> 63)
    {
      v8 = *(v0 + 520);
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = *(v0 + 24);
        if (v9 <= *(v10 + 16) >> 3)
        {
          v15 = *(v0 + 24);

          sub_2270062A8(v8);
          v11 = v15;
        }

        else
        {

          v11 = sub_227009F28(v8, v10);
        }

        *(v0 + 576) = v11;
        v14 = swift_task_alloc();
        *(v0 + 584) = v14;
        *v14 = v0;
        v14[1] = sub_2275AE20C;

        sub_2275A6B80();
      }

      else
      {
        v12 = swift_task_alloc();
        *(v0 + 560) = v12;
        *v12 = v0;
        v12[1] = sub_2275ADE18;
        v13 = *(v0 + 24);

        sub_2275A8F38(v13, 0, 2);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2275ADE18(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = *(v5 + 8);

    return v6(0);
  }

  else
  {
    *(v4 + 568) = a1;

    return MEMORY[0x2822009F8](sub_2275AE008, 0, 0);
  }
}

uint64_t sub_2275AE008()
{
  v1 = v0[13];
  v2 = v0[8];
  v3 = *(v2 + 48);
  if (v0[69] >= v0[71])
  {
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    v7 = 1;
    v8 = v1;
  }

  else
  {
    v4 = *MEMORY[0x277D51200];
    v5 = sub_227664EC0();
    v6 = *(v5 - 8);
    (*(v6 + 104))(v1 + v3, v4, v5);
    v7 = 0;
    v8 = v0[13];
    v2 = v0[8];
  }

  v9 = v0[2];
  (*(v6 + 56))(v1 + v3, v7, 1, v5);
  sub_2275B4728(v8 + *(v2 + 48), v9);
  v12 = v0[69] >= v0[71];

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_2275AE20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v4;
  *(*v4 + 592) = v3;

  if (v3)
  {
    v8 = sub_2275AE350;
  }

  else
  {

    *(v7 + 600) = a2;
    *(v7 + 608) = a1;
    v8 = sub_2275AE44C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}