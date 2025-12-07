void sub_2275616B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v47 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2276668A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227539EE8(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v42 = v10;
    v43 = v11;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v40 = v8;
    v41 = v7;
    v18 = *(a1 + 16);
    v19 = v43;
    if (v18)
    {
      v21 = *(v12 + 16);
      v20 = v12 + 16;
      v44 = "ManagedAssetLoadFailure";
      v45 = v21;
      v46 = (v20 - 8);
      v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v23 = *(v20 + 56);
      while (1)
      {
        v45(v14, v22, v19);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v47];

        type metadata accessor for ManagedAssetRequestKeyMetadata();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          break;
        }

        sub_22739B3A4(v27);

        (*v46)(v14, v19);
        v22 += v23;
        if (!--v18)
        {
          goto LABEL_11;
        }
      }

      v28 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v29 = swift_allocError();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D51000], v28);
      swift_willThrow();
      v31 = v42;
      sub_22766A770();
      v32 = v29;
      v33 = sub_22766B380();
      v34 = sub_22766C8B0();
      v35 = v29;

      if (os_log_type_enabled(v33, v34))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v35;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_226E8E000, v33, v34, "%@", v36, 0xCu);
        sub_226E97D1C(v37, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v37, -1, -1);
        MEMORY[0x22AA9A450](v36, -1, -1);
      }

      (*(v40 + 8))(v31, v41);
      swift_willThrow();
      sub_226EDC474(0);
      (*v46)(v14, v43);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_227561BE0(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227668E30();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22753A160(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "StandaloneWorkoutJob";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_22764CD64(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227562148(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v66 = a4;
  v4 = a3;
  v65 = a2;
  v6 = sub_22766B390();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_227662750();
  v57 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276624A0();
  v61 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227664B30();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753A650(a1, v4, v66);
  if (v17)
  {
    if (v17 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v18 = v61;
    v56 = a1;
    v66 = v16;
    v62 = v10;
    v63 = v9;
    v52 = v13;
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
      v21 = *(v56 + 16);
      v22 = v52;
      v23 = v14;
      v24 = v66;
      if (v21)
      {
        v26 = *(v23 + 16);
        v25 = v23 + 16;
        v59 = "ManagedAssetEntry";
        v60 = v26;
        ++v57;
        v58 = (v18 + 1);
        v61 = (v25 - 8);
        v27 = v56 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
        v56 = *(v25 + 56);
        while (1)
        {
          v60(v24, v27, v22);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v65];

          type metadata accessor for ManagedAssetLoadFailure();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          sub_227664B10();
          sub_227662390();
          v33 = v25;
          (*v58)(v12, v62);
          v34 = sub_22766BFD0();

          [v32 setRemoteURL_];

          sub_227664AF0();
          v35 = sub_22766BFD0();

          [v32 setBundleIdentifier_];

          v36 = v63;
          sub_227664B00();
          v37 = sub_2276626A0();
          v38 = v36;
          v25 = v33;
          v24 = v66;
          (*v57)(v38, v64);
          [v32 setDate_];

          (*v61)(v24, v22);
          v27 += v56;
          if (!--v21)
          {
            goto LABEL_10;
          }
        }

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v53;
        sub_22766A770();
        v43 = v40;
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        v46 = v40;

        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v46;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v44, v45, "%@", v47, 0xCu);
          sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v48, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v54 + 8))(v42, v55);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v24, v52);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227562898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v56 = a2;
  v7 = sub_22766B390();
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v47 - v11;
  v13 = sub_2276682A0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753A78C(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v54 = v16;
    v55 = v13;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
      swift_willThrow();
    }

    else
    {
      v47 = v9;
      v48 = v7;
      v20 = *(a1 + 16);
      if (v20)
      {
        v22 = *(v14 + 16);
        v21 = v14 + 16;
        v51 = "ntEnvironmentCache";
        v52 = v22;
        v53 = (v21 - 8);
        v23 = a1 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
        v50 = *(v21 + 56);
        v22(v54, v23, v55);
        while (1)
        {
          v26 = objc_opt_self();
          v27 = sub_22766BFD0();
          v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v56];

          type metadata accessor for ManagedAchievementNotificationRecord();
          v29 = swift_dynamicCastClass();
          if (!v29)
          {
            break;
          }

          v30 = v29;
          sub_227668290();
          v31 = sub_22766BFD0();

          [v30 setTemplateUniqueName_];

          sub_227668270();
          v32 = sub_227662750();
          v33 = *(v32 - 8);
          v34 = 0;
          if ((*(v33 + 48))(v12, 1, v32) != 1)
          {
            v34 = sub_2276626A0();
            (*(v33 + 8))(v12, v32);
          }

          [v30 setDatePresented_];

          v24 = v54;
          v25 = v55;
          (*v53)(v54, v55);
          v23 += v50;
          if (!--v20)
          {
            goto LABEL_13;
          }

          v52(v24, v23, v25);
        }

        v35 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v36 = swift_allocError();
        (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
        swift_willThrow();
        v38 = v47;
        sub_22766A770();
        v39 = v36;
        v40 = sub_22766B380();
        v41 = sub_22766C8B0();
        v42 = v36;

        if (os_log_type_enabled(v40, v41))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v43 = 138412290;
          v45 = v42;
          v46 = _swift_stdlib_bridgeErrorToNSError();
          *(v43 + 4) = v46;
          *v44 = v46;
          _os_log_impl(&dword_226E8E000, v40, v41, "%@", v43, 0xCu);
          sub_226E97D1C(v44, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v44, -1, -1);
          MEMORY[0x22AA9A450](v43, -1, -1);
        }

        (*(v49 + 8))(v38, v48);
        swift_willThrow();
        sub_226EDC474(0);
        (*v53)(v54, v55);
      }

      else
      {
LABEL_13:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227562F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v64 = a4;
  v4 = a3;
  v68 = a2;
  v6 = sub_22766B390();
  v55 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227669360();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  v16 = sub_22753A8C8(a1, v4, v64);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v61 = v11;
    v62 = v9;
    v63 = v15;
    v64 = v12;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
      swift_willThrow();
    }

    else
    {
      v53 = v8;
      v54 = v6;
      v19 = *(v56 + 16);
      v21 = v63;
      v20 = v64;
      if (v19)
      {
        v22 = v60 + 1;
        v59 = *(v13 + 16);
        v60 = (v13 + 8);
        v23 = v56 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v56 = *(v13 + 72);
        v57 = v22;
        v58 = v13 + 16;
        while (1)
        {
          v59(v21, v23, v20);
          v24 = objc_opt_self();
          v25 = sub_22766BFD0();
          v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v68];

          type metadata accessor for ManagedBookmark();
          v27 = swift_dynamicCastClass();
          if (!v27)
          {
            break;
          }

          v28 = v27;
          sub_227669350();
          v29 = sub_22766BFD0();

          [v28 setReferenceIdentifier_];

          v30 = sub_227669320();
          v32 = v31;
          v65 = v30;
          v66 = v31;
          v34 = v33 & 1;
          v67 = v33 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE0, &unk_22768AE50);
          sub_227663AD0();
          v35 = sub_22766BFD0();
          v36 = v30;
          v37 = v32;
          v38 = v61;
          v39 = v34;
          v21 = v63;
          v20 = v64;
          sub_226EB2DFC(v36, v37, v39);

          [v28 setReferenceType_];

          sub_227669330();
          v40 = sub_2276626A0();
          (*v57)(v38, v62);
          [v28 setDateBookmarked_];

          (*v60)(v21, v20);
          v23 += v56;
          if (!--v19)
          {
            goto LABEL_10;
          }
        }

        v41 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v42 = swift_allocError();
        (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
        swift_willThrow();
        v44 = v53;
        sub_22766A770();
        v45 = v42;
        v46 = sub_22766B380();
        v47 = sub_22766C8B0();
        v48 = v42;

        if (os_log_type_enabled(v46, v47))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v49 = 138412290;
          v51 = v48;
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 4) = v52;
          *v50 = v52;
          _os_log_impl(&dword_226E8E000, v46, v47, "%@", v49, 0xCu);
          sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v50, -1, -1);
          MEMORY[0x22AA9A450](v49, -1, -1);
        }

        (*(v55 + 8))(v44, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v60)(v21, v20);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_2275635D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a2;
  v68 = a4;
  v4 = a3;
  v6 = sub_22766B390();
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227666650();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  v16 = sub_22753AA04(a1, v4, v68);
  if (v16)
  {
    if (v16 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v64 = v11;
    v65 = v12;
    v55 = v8;
    v56 = v15;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
      swift_willThrow();
      return;
    }

    v54 = v6;
    v19 = *(v63 + 16);
    if (v19)
    {
      v20 = *(v13 + 16);
      v61 = "gModalityIdentifier";
      v62 = v20;
      v58 = v60 + 1;
      v59 = v9;
      v60 = (v13 + 8);
      v21 = v63 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v63 = *(v13 + 72);
      v23 = v65;
      v22 = v66;
      v24 = v56;
      while (1)
      {
        v62(v24, v21, v23);
        v25 = objc_opt_self();
        v26 = sub_22766BFD0();
        v27 = v67;
        v28 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v67];

        type metadata accessor for ManagedOnboardingSurveyResult();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {

          v41 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v22 = swift_allocError();
          (*(*(v41 - 8) + 104))(v42, *MEMORY[0x277D51000], v41);
          swift_willThrow();
          goto LABEL_18;
        }

        v30 = v29;
        v68 = v19;
        sub_227666620();
        v31 = sub_22766BFD0();

        [v30 setIdentifier_];

        v32 = v64;
        sub_227666630();
        v33 = sub_2276626A0();
        (*v58)(v32, v59);
        [v30 setCompletedDate_];

        v34 = sub_227666640();
        v35 = v22;
        sub_2272D6818(v34);
        v37 = v36;

        v38 = sub_226F3D770(v37);

        sub_227648160(v27, v38);
        v22 = v35;
        if (v35)
        {
          break;
        }

        v40 = v39;

        [v30 setSelectedModalityIdentifiers_];

        v23 = v65;
        (*v60)(v24, v65);
        v21 += v63;
        v19 = v68 - 1;
        if (v68 == 1)
        {
          goto LABEL_14;
        }
      }

LABEL_18:
      v43 = v55;
      sub_22766A770();
      v44 = v22;
      v45 = sub_22766B380();
      v46 = sub_22766C8B0();

      v47 = os_log_type_enabled(v45, v46);
      v48 = v54;
      v49 = v57;
      if (v47)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v22;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_226E8E000, v45, v46, "%@", v50, 0xCu);
        sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v51, -1, -1);
        MEMORY[0x22AA9A450](v50, -1, -1);
      }

      (*(v49 + 8))(v43, v48);
      swift_willThrow();
      sub_226EDC474(0);
      (*v60)(v56, v65);
    }

    else
    {
      v22 = v66;
LABEL_14:
      v66 = v22;
      sub_226EDC474(0);
    }
  }
}

void sub_227563CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a2;
  v68 = a4;
  v4 = a3;
  v6 = sub_22766B390();
  v59 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227669480();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  v16 = sub_22753AB40(a1, v4, v68);
  if (v16)
  {
    if (v16 != 1)
    {
      v17 = v16;
      swift_willThrow();
      v69 = v17;
    }
  }

  else
  {
    v68 = v13;
    v65 = v11;
    v66 = v12;
    v57 = v8;
    v58 = v15;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v19 = swift_allocError();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x277D51010], v18);
      v69 = v19;
      swift_willThrow();
    }

    else
    {
      v56 = v6;
      v21 = *(v64 + 16);
      if (v21)
      {
        v22 = *(v68 + 16);
        v60 = v62 + 1;
        v61 = v9;
        v62 = (v68 + 8);
        v63 = v22;
        v23 = v64 + ((*(v68 + 80) + 32) & ~*(v68 + 80));
        v64 = *(v68 + 72);
        v24 = v66;
        v25 = v58;
        while (1)
        {
          v26 = v69;
          v63(v25, v23, v24);
          v27 = objc_opt_self();
          v28 = sub_22766BFD0();
          v29 = v67;
          v30 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v67];

          type metadata accessor for ManagedPlaylist();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {

            v40 = sub_227664DD0();
            sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
            v41 = swift_allocError();
            (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51000], v40);
            v69 = v41;
            swift_willThrow();
            goto LABEL_14;
          }

          v32 = v31;
          v68 = v21;
          sub_227669430();
          v33 = sub_22766BFD0();

          [v32 setIdentifier_];

          sub_227669450();
          v34 = sub_22766BFD0();

          [v32 setName_];

          v35 = sub_227669460();
          sub_22764A174(v29, v35);
          v69 = v26;
          if (v26)
          {
            break;
          }

          v37 = v36;

          [v32 setItems_];

          v38 = v65;
          sub_227669440();
          v39 = sub_2276626A0();
          (*v60)(v38, v61);
          [v32 setDateCreated_];

          v24 = v66;
          (*v62)(v25, v66);
          v23 += v64;
          v21 = v68 - 1;
          if (v68 == 1)
          {
            goto LABEL_11;
          }
        }

LABEL_14:
        v43 = v57;
        sub_22766A770();
        v44 = v69;
        v45 = v69;
        v46 = sub_22766B380();
        v47 = sub_22766C8B0();

        v48 = os_log_type_enabled(v46, v47);
        v49 = v56;
        v50 = v59;
        if (v48)
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          v53 = v69;
          v54 = _swift_stdlib_bridgeErrorToNSError();
          *(v51 + 4) = v54;
          *v52 = v54;
          _os_log_impl(&dword_226E8E000, v46, v47, "%@", v51, 0xCu);
          sub_226E97D1C(v52, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v52, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v50 + 8))(v43, v49);
        swift_willThrow();
        sub_226EDC474(0);
        (*v62)(v58, v66);
      }

      else
      {
LABEL_11:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_2275643C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v50 = a2;
  v9 = sub_22766B390();
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227663AB0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22753AC7C(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v43 = v11;
  v44 = v15;
  v17 = v12;
  if (sub_227669C10())
  {
    v18 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
    swift_willThrow();
    return;
  }

  v42 = v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v22 = v13 + 16;
    v21 = *(v13 + 16);
    v48 = "oucher";
    v49 = v21;
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v46 = *(v13 + 72);
    v47 = (v13 + 8);
    v24 = v17;
    v25 = v44;
    while (1)
    {
      v26 = v24;
      v27 = v22;
      v49(v25, v23, v24);
      v28 = objc_opt_self();
      v29 = sub_22766BFD0();
      v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v50];

      type metadata accessor for ManagedPlaylistItem();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {

        v32 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51000], v32);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_227000224(v31);
      if (v4)
      {
        break;
      }

      v24 = v26;
      (*v47)(v25, v26);

      v23 += v46;
      --v20;
      v22 = v27;
      if (!v20)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v34 = v43;
    sub_22766A770();
    v35 = v5;
    v36 = sub_22766B380();
    v37 = sub_22766C8B0();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v38 = 138412290;
      v40 = v5;
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 4) = v41;
      *v39 = v41;
      _os_log_impl(&dword_226E8E000, v36, v37, "%@", v38, 0xCu);
      sub_226E97D1C(v39, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);
    }

    (*(v45 + 8))(v34, v42);
    swift_willThrow();
    sub_226EDC474(0);
    (*v47)(v25, v26);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227564918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v4 = a3;
  v64 = a2;
  v6 = sub_22766B390();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v51 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2276627D0();
  v55 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227662750();
  v59 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227667440();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753ADB8(a1, v4, v62);
  if (v17)
  {
    if (v17 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v18 = v59;
    v54 = a1;
    v60 = v12;
    v61 = v9;
    v49 = v16;
    v50 = v13;
    v62 = v10;
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
      v21 = *(v54 + 16);
      v23 = v49;
      v22 = v50;
      if (v21)
      {
        v25 = v14 + 16;
        v24 = *(v14 + 16);
        v57 = "anScheduleFilterProperty";
        v58 = v24;
        ++v55;
        v56 = v18 + 1;
        v59 = (v14 + 8);
        v26 = v54 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
        v54 = *(v14 + 72);
        while (1)
        {
          v27 = v25;
          v58(v23, v26, v22);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v64];

          type metadata accessor for ManagedWorkoutPlanSummaryViewed();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          v33 = v60;
          sub_227667410();
          v34 = sub_2276626A0();
          (*v56)(v33, v62);
          [v32 setDateViewed_];

          v35 = v61;
          sub_227667430();
          v36 = sub_227662790();
          (*v55)(v35, v63);
          [v32 setPlanIdentifier_];

          (*v59)(v23, v22);
          v26 += v54;
          --v21;
          v25 = v27;
          if (!v21)
          {
            goto LABEL_10;
          }
        }

        v37 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v38 = swift_allocError();
        (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D51000], v37);
        swift_willThrow();
        v40 = v51;
        sub_22766A770();
        v41 = v38;
        v42 = sub_22766B380();
        v43 = sub_22766C8B0();
        v44 = v38;

        if (os_log_type_enabled(v42, v43))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          v47 = v44;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v45 + 4) = v48;
          *v46 = v48;
          _os_log_impl(&dword_226E8E000, v42, v43, "%@", v45, 0xCu);
          sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v46, -1, -1);
          MEMORY[0x22AA9A450](v45, -1, -1);
        }

        (*(v52 + 8))(v40, v53);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v49, v50);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227565010(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227665CA0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22753AEF4(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "ManagedWorkoutPlanSummaryViewed";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedWorkoutPlanTemplate();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_226F1DD6C(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227565578(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227667780();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22753B030(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "ManagedArchivedSession";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedArchivedWorkoutPlanSession();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2275A45E0(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227565AE0(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a3;
  v53 = a2;
  v9 = sub_22766B390();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276638D0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22753B16C(a1, v7, a4);
  if (v16)
  {
    if (v16 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v46 = v11;
  v47 = v15;
  v52 = v12;
  if (sub_227669C10())
  {
    v17 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
    swift_willThrow();
    return;
  }

  v45 = v9;
  v19 = *(a1 + 16);
  if (v19)
  {
    v21 = v13 + 16;
    v20 = *(v13 + 16);
    v50 = "ManagedWorkoutIdentifier";
    v51 = v20;
    v22 = (v13 + 8);
    v23 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v49 = *(v13 + 72);
    v24 = v52;
    v25 = v47;
    while (1)
    {
      v26 = v21;
      v51(v25, v23, v24);
      v27 = objc_opt_self();
      v28 = sub_22766BFD0();
      v29 = v27;
      v30 = v53;
      v31 = [v29 insertNewObjectForEntityForName:v28 inManagedObjectContext:v53];

      type metadata accessor for ManagedWorkoutPlan();
      v32 = swift_dynamicCastClass();
      if (!v32)
      {
        v53 = v22;

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v5 = swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        goto LABEL_16;
      }

      sub_2275EEB10(v32, v30);
      if (v4)
      {
        break;
      }

      v24 = v52;
      (*v22)(v25, v52);

      v23 += v49;
      --v19;
      v21 = v26;
      if (!v19)
      {
        goto LABEL_13;
      }
    }

    v53 = v22;

LABEL_16:
    v35 = v46;
    sub_22766A770();
    v36 = v5;
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v45;
    if (v39)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      v43 = v5;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "%@", v41, 0xCu);
      sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v42, -1, -1);
      v25 = v47;
      MEMORY[0x22AA9A450](v41, -1, -1);
    }

    (*(v48 + 8))(v35, v40);
    swift_willThrow();
    sub_226EDC474(0);
    (*v53)(v25, v52);
  }

  else
  {
LABEL_13:
    sub_226EDC474(0);
  }
}

void sub_227566048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v5 = a3;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SyncZoneChangeWindow(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22753B2A8(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = v43;
    v41 = v10;
    v42 = v8;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
      swift_willThrow();
      return;
    }

    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = v16;
      v46 = "ManagedSyncChangeTag";
      v21 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v44 = *(v12 + 72);
      v45 = v7;
      while (1)
      {
        sub_227596718(v21, v14, type metadata accessor for SyncZoneChangeWindow);
        v22 = objc_opt_self();
        v23 = sub_22766BFD0();
        v24 = [v22 insertNewObjectForEntityForName:v23 inManagedObjectContext:v20];

        type metadata accessor for ManagedSyncZoneChangeWindow();
        v25 = swift_dynamicCastClass();
        if (!v25)
        {
          break;
        }

        v26 = v25;
        sub_2276694C0();
        v27 = sub_22766BFD0();

        [v26 setZoneName_];

        v7 = v45;
        v28 = sub_227662560();
        [v26 setChangeWindow_];

        sub_2275966B8(v14, type metadata accessor for SyncZoneChangeWindow);
        v21 += v44;
        if (!--v19)
        {
          goto LABEL_11;
        }
      }

      v29 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v30 = swift_allocError();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D51000], v29);
      swift_willThrow();
      v32 = v41;
      sub_22766A770();
      v33 = v30;
      v34 = sub_22766B380();
      v35 = sub_22766C8B0();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v30;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_226E8E000, v34, v35, "%@", v36, 0xCu);
        sub_226E97D1C(v37, &unk_27D7B9660, &qword_2276740C0);
        v40 = v37;
        v7 = v45;
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v36, -1, -1);
      }

      (*(v42 + 8))(v32, v7);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v14, type metadata accessor for SyncZoneChangeWindow);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_2275665D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v44 = a2;
  v5 = a3;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SyncChangeTag(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22753B3E4(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = v44;
    v42 = v10;
    v43 = v8;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
      swift_willThrow();
      return;
    }

    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = v16;
      v47 = "ManagedStreamingKeyNonce";
      v21 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v45 = *(v12 + 72);
      v46 = v7;
      while (1)
      {
        sub_227596718(v21, v14, type metadata accessor for SyncChangeTag);
        v22 = objc_opt_self();
        v23 = sub_22766BFD0();
        v24 = [v22 insertNewObjectForEntityForName:v23 inManagedObjectContext:v20];

        type metadata accessor for ManagedSyncChangeTag();
        v25 = swift_dynamicCastClass();
        if (!v25)
        {
          break;
        }

        v26 = v25;
        v27 = sub_22766BFD0();
        [v26 setSyncIdentifier_];

        sub_2276694C0();
        v28 = sub_22766BFD0();

        [v26 setZoneName_];

        v7 = v46;
        v29 = sub_22766BFD0();
        [v26 setEtag_];

        sub_2275966B8(v14, type metadata accessor for SyncChangeTag);
        v21 += v45;
        if (!--v19)
        {
          goto LABEL_11;
        }
      }

      v30 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v31 = swift_allocError();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D51000], v30);
      swift_willThrow();
      v33 = v42;
      sub_22766A770();
      v34 = v31;
      v35 = sub_22766B380();
      v36 = sub_22766C8B0();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        v39 = v31;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 4) = v40;
        *v38 = v40;
        _os_log_impl(&dword_226E8E000, v35, v36, "%@", v37, 0xCu);
        sub_226E97D1C(v38, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v38, -1, -1);
        v41 = v37;
        v7 = v46;
        MEMORY[0x22AA9A450](v41, -1, -1);
      }

      (*(v43 + 8))(v33, v7);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v14, type metadata accessor for SyncChangeTag);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_227566B80(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v61 = a4;
  v4 = a3;
  v59 = a2;
  v6 = sub_22766B390();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2276624A0();
  v60 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227665490();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a1;
  v16 = sub_22753B798(a1, v4, v61);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v17 = v60;
    v57 = v9;
    v58 = v12;
    v61 = v15;
    v48 = v8;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
      swift_willThrow();
    }

    else
    {
      v20 = *(v50 + 16);
      v21 = v58;
      v22 = v61;
      if (v20)
      {
        v23 = *(v13 + 16);
        v54 = "ManagedAssetRequestReference";
        v55 = v23;
        v52 = (v17 + 8);
        v53 = v6;
        v56 = (v13 + 8);
        v24 = v50 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v50 = *(v13 + 72);
        v51 = v13 + 16;
        while (1)
        {
          v60 = v20;
          v55(v22, v24, v21);
          v25 = objc_opt_self();
          v26 = sub_22766BFD0();
          v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v59];

          type metadata accessor for ManagedAssetResumableLoad();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
            break;
          }

          v29 = v28;
          sub_227665480();
          sub_227662390();
          v30 = *v52;
          v31 = v57;
          (*v52)(v11, v57);
          v32 = sub_22766BFD0();

          [v29 setRemoteURL_];

          sub_227665460();
          sub_227662390();
          v30(v11, v31);
          v22 = v61;
          v33 = sub_22766BFD0();
          v6 = v53;

          [v29 setLocalURL_];

          v34 = sub_227665450();
          if (v34 >= 0x7FFFFFFFFFFFFFFFLL)
          {
            v35 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v34;
          }

          [v29 setDownloadToken_];

          v21 = v58;
          (*v56)(v22, v58);
          v24 += v50;
          v20 = v60 - 1;
          if (v60 == 1)
          {
            goto LABEL_13;
          }
        }

        v36 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v37 = swift_allocError();
        (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D51000], v36);
        swift_willThrow();
        v39 = v48;
        sub_22766A770();
        v40 = v37;
        v41 = sub_22766B380();
        v42 = sub_22766C8B0();
        v43 = v37;

        if (os_log_type_enabled(v41, v42))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412290;
          v46 = v43;
          v47 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 4) = v47;
          *v45 = v47;
          _os_log_impl(&dword_226E8E000, v41, v42, "%@", v44, 0xCu);
          sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v45, -1, -1);
          MEMORY[0x22AA9A450](v44, -1, -1);
        }

        (*(v49 + 8))(v39, v6);
        swift_willThrow();
        sub_226EDC474(0);
        (*v56)(v61, v58);
      }

      else
      {
LABEL_13:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227567260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v5 = a3;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for KeyCertificate(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22753B8D4(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v16 = v43;
    v41 = v10;
    v42 = v8;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
LABEL_6:
      swift_willThrow();
      return;
    }

    v19 = *(a1 + 16);
    if (v19)
    {
      v20 = v16;
      v46 = "ManagedHealthKitWorkout";
      v21 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v44 = *(v12 + 72);
      v45 = v7;
      while (1)
      {
        sub_227596718(v21, v14, type metadata accessor for KeyCertificate);
        v22 = objc_opt_self();
        v23 = sub_22766BFD0();
        v24 = [v22 insertNewObjectForEntityForName:v23 inManagedObjectContext:v20];

        type metadata accessor for ManagedKeyCertificate();
        v25 = swift_dynamicCastClass();
        if (!v25)
        {
          break;
        }

        v26 = v25;
        sub_227662390();
        v27 = sub_22766BFD0();

        [v26 setRemoteURL_];

        v7 = v45;
        v28 = sub_227662560();
        [v26 setData_];

        sub_2275966B8(v14, type metadata accessor for KeyCertificate);
        v21 += v44;
        if (!--v19)
        {
          goto LABEL_11;
        }
      }

      v29 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v30 = swift_allocError();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D51000], v29);
      swift_willThrow();
      v32 = v41;
      sub_22766A770();
      v33 = v30;
      v34 = sub_22766B380();
      v35 = sub_22766C8B0();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v30;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_226E8E000, v34, v35, "%@", v36, 0xCu);
        sub_226E97D1C(v37, &unk_27D7B9660, &qword_2276740C0);
        v40 = v37;
        v7 = v45;
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v36, -1, -1);
      }

      (*(v42 + 8))(v32, v7);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v14, type metadata accessor for KeyCertificate);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_2275677E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22753BA10(a1, v6, a4, &qword_27D7BEAA8, &qword_22768B780, &qword_27D7BEAB0, sub_2275969EC);
  if (v13)
  {
    if (v13 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  if (sub_227669C10())
  {
    v14 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51010], v14);
LABEL_6:
    swift_willThrow();
    return;
  }

  v40 = v12;
  v41 = v10;
  v42 = v9;
  v43 = v4;
  v16 = *(a1 + 16);
  if (v16)
  {
    v44 = "ManagedSocialMediaHandle";
    v17 = a1 + 56;
    while (1)
    {
      v45 = v16;
      v18 = *(v17 - 24);
      v19 = *(v17 - 16);
      v20 = objc_opt_self();
      sub_226F5E0B4(v18, v19);

      v21 = sub_22766BFD0();
      v22 = a2;
      v23 = [v20 insertNewObjectForEntityForName:v21 inManagedObjectContext:a2];

      type metadata accessor for ManagedStreamingKeyNonce();
      v24 = swift_dynamicCastClass();
      if (!v24)
      {
        break;
      }

      v25 = v24;
      v26 = sub_227662560();
      [v25 setSeed_];

      v27 = sub_22766BFD0();
      [v25 setWorkoutIdentifier_];

      sub_226EDC420(v18, v19);

      v17 += 32;
      v16 = v45 - 1;
      a2 = v22;
      if (v45 == 1)
      {
        goto LABEL_12;
      }
    }

    v28 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D51000], v28);
    swift_willThrow();
    v31 = v40;
    sub_22766A770();
    v32 = v29;
    v33 = sub_22766B380();
    v34 = sub_22766C8B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = v29;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_226E8E000, v33, v34, "%@", v35, 0xCu);
      sub_226E97D1C(v36, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v36, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    (*(v41 + 8))(v31, v42);
    swift_willThrow();
    sub_226EDC474(0);
    sub_226EDC420(v18, v19);
  }

  else
  {
LABEL_12:
    sub_226EDC474(0);
  }
}

void sub_227567CEC(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v64 = a4;
  v4 = a3;
  v63 = a2;
  v6 = sub_22766B390();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_227662750();
  v59 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - v11;
  v13 = sub_2276662D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BB20(a1, v4, v64);
  if (v17)
  {
    if (v17 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v55 = a1;
    v64 = v16;
    v60 = v10;
    v61 = v9;
    v51 = v13;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
      swift_willThrow();
    }

    else
    {
      v20 = *(v55 + 16);
      v21 = v51;
      v22 = v14;
      v23 = v64;
      if (v20)
      {
        v25 = *(v22 + 16);
        v24 = v22 + 16;
        v57 = "ManagedAssetBundle";
        v58 = v25;
        v26 = (v59 + 1);
        v59 = (v24 - 8);
        v27 = v55 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
        v55 = *(v24 + 56);
        v56 = v26;
        while (1)
        {
          v58(v23, v27, v21);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v63];

          type metadata accessor for ManagedAssetBundleLoadFailure();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          sub_227666280();
          v33 = v24;
          v34 = sub_22766BFD0();

          [v32 setBundleIdentifier_];

          sub_2276662C0();
          sub_227663AD0();
          sub_226E97D1C(v12, &qword_27D7BB2C0, &unk_227687210);
          v35 = sub_22766BFD0();

          [v32 setReason_];

          v36 = v61;
          sub_227666290();
          v37 = sub_2276626A0();
          v38 = v36;
          v24 = v33;
          v23 = v64;
          (*v56)(v38, v62);
          [v32 setDate_];

          (*v59)(v23, v21);
          v27 += v55;
          if (!--v20)
          {
            goto LABEL_10;
          }
        }

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v52;
        sub_22766A770();
        v43 = v40;
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        v46 = v40;

        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v46;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v44, v45, "%@", v47, 0xCu);
          sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v48, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v53 + 8))(v42, v54);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v23, v51);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227568408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v60 = a4;
  v4 = a3;
  v62 = a2;
  v6 = sub_22766B390();
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v59 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227668700();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = a1;
  v16 = sub_22753BC5C(a1, v4, v60);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v60 = v9;
    v61 = v12;
    v53 = v8;
    if (sub_227669C10())
    {
      v17 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51010], v17);
      swift_willThrow();
    }

    else
    {
      v52 = v6;
      v19 = *(v55 + 16);
      v20 = v61;
      if (v19)
      {
        v22 = v13 + 16;
        v21 = *(v13 + 16);
        v57 = "ManagedRecommendation";
        v58 = v21;
        v23 = v59 + 1;
        v59 = (v13 + 8);
        v24 = v55 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v55 = *(v13 + 72);
        v56 = v23;
        while (1)
        {
          v58(v15, v24, v20);
          v25 = objc_opt_self();
          v26 = sub_22766BFD0();
          v27 = [v25 insertNewObjectForEntityForName:v26 inManagedObjectContext:v62];

          type metadata accessor for ManagedRemoteBrowsingConnectionRecord();
          v28 = swift_dynamicCastClass();
          if (!v28)
          {
            break;
          }

          v29 = v28;
          sub_2276686E0();
          v30 = v24;
          v31 = v19;
          v32 = v11;
          v33 = v15;
          v34 = v22;
          v35 = sub_22766BFD0();

          [v29 setParticipantIdentifier_];

          v22 = v34;
          v15 = v33;
          v11 = v32;
          v36 = v31;
          v37 = v30;
          sub_2276686F0();
          v38 = sub_2276626A0();
          (*v56)(v11, v60);
          [v29 setTimestamp_];

          v20 = v61;
          (*v59)(v15, v61);
          v24 = v37 + v55;
          v19 = v36 - 1;
          if (!v19)
          {
            goto LABEL_10;
          }
        }

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v53;
        sub_22766A770();
        v43 = v40;
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        v46 = v40;

        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v46;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v44, v45, "%@", v47, 0xCu);
          sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v48, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v54 + 8))(v42, v52);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v15, v61);
      }

      else
      {
LABEL_10:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_227568A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227666FF0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v17 = sub_227538774(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = v16;
    v56 = v9;
    v64 = v10;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v55 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v58 = v11 + 32;
    v59 = v11 + 16;
    v57 = "ManagedCatalogModalityMetadata";
    v60 = (v11 + 8);
    v61 = a1;

    v25 = 0;
    v26 = v64;
    v27 = v13;
    v28 = v66;
    v29 = v62;
    if (v23)
    {
      while (1)
      {
        v66 = v28;
        v30 = v25;
        v31 = v11;
LABEL_16:
        v32 = v29;
        (*(v31 + 16))(v29, *(v61 + 48) + *(v31 + 72) * (__clz(__rbit64(v23)) | (v30 << 6)), v26);
        (*(v31 + 32))(v27, v32, v26);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = v33;
        v36 = v65;
        v37 = [v35 insertNewObjectForEntityForName:v34 inManagedObjectContext:v65];

        type metadata accessor for ManagedCatalogModalityReference();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {

          v40 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v28 = swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51000], v40);
          swift_willThrow();
          goto LABEL_24;
        }

        v39 = v66;
        sub_227335928(v38, v36);
        v28 = v39;
        if (v39)
        {
          break;
        }

        v23 &= v23 - 1;
        v26 = v64;
        (*v60)(v27, v64);

        v25 = v30;
        v29 = v62;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v42 = v56;
      sub_22766A770();
      v43 = v28;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v55;
      v48 = v63;
      if (v46)
      {
        v49 = v28;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v49;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v50, 0xCu);
        sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v51, -1, -1);
        MEMORY[0x22AA9A450](v50, -1, -1);
      }

      (*(v48 + 8))(v42, v47);
      swift_willThrow();

      sub_226EDC474(0);
      (*v60)(v27, v64);
    }

    else
    {
LABEL_11:
      v31 = v11;
      while (1)
      {
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v30 >= v24)
        {
          v66 = v28;
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v30);
        ++v25;
        if (v23)
        {
          v66 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_2275690A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v63 = a2;
  v7 = sub_22766B390();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227667B30();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = sub_2275388B0(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v16;
    v62 = v11;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v59 = v13;
    v51 = v9;
    v52 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v62;
    v55 = v62 + 32;
    v56 = v62 + 16;
    v54 = "pCategoryIdentifier";
    v57 = (v62 + 8);

    v26 = 0;
    v53 = a1 + 56;
    v58 = a1;
    if (v23)
    {
      while (1)
      {
        v27 = v26;
LABEL_14:
        v28 = *(a1 + 48) + *(v25 + 72) * (__clz(__rbit64(v23)) | (v27 << 6));
        v29 = v60;
        (*(v25 + 16))(v60, v28, v10);
        v30 = v59;
        (*(v25 + 32))(v59, v29, v10);
        v31 = objc_opt_self();
        v32 = v10;
        v33 = sub_22766BFD0();
        v34 = [v31 insertNewObjectForEntityForName:v33 inManagedObjectContext:v63];

        type metadata accessor for ManagedCatalogTipCategoryReference();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {
          break;
        }

        v36 = v35;
        v23 &= v23 - 1;
        sub_227667B10();
        v37 = sub_22766BFD0();

        [v36 setIdentifier_];

        sub_227667B20();
        v38 = sub_22766BFD0();

        [v36 setName_];

        (*v57)(v30, v32);
        v26 = v27;
        a1 = v58;
        v10 = v32;
        v25 = v62;
        v20 = v53;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v39 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v40 = swift_allocError();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
      swift_willThrow();
      v42 = v51;
      sub_22766A770();
      v43 = v40;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v40;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v46, 0xCu);
        sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v47, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v61 + 8))(v42, v52);
      swift_willThrow();

      sub_226EDC474(0);
      (*v57)(v59, v32);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v27);
        ++v26;
        if (v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_2275696FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v68 = a2;
  v70 = a4;
  v4 = a3;
  v6 = sub_22766B390();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v67 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2276650A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v69 = a1;
  v19 = sub_2275389EC(a1, v4, v70);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v65 = v18;
    v66 = v13;
    v61 = v11;
    v62 = v9;
    v56 = v15;
    v70 = v12;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      swift_willThrow();
    }

    else
    {
      v55 = v8;
      v22 = v69 + 56;
      v23 = 1 << *(v69 + 32);
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v25 = v24 & *(v69 + 56);
      v26 = (v23 + 63) >> 6;
      v27 = v66;
      v59 = v66 + 32;
      v60 = v66 + 16;
      v57 = v67 + 1;
      v58 = "pCategoryReference";
      v67 = (v66 + 8);

      v28 = 0;
      v29 = v70;
      v30 = v56;
      v31 = v65;
      if (v25)
      {
        while (1)
        {
          v32 = v28;
          v33 = v68;
LABEL_14:
          (*(v27 + 16))(v31, *(v69 + 48) + *(v27 + 72) * (__clz(__rbit64(v25)) | (v32 << 6)), v29);
          (*(v27 + 32))(v30, v31, v29);
          v34 = objc_opt_self();
          v35 = sub_22766BFD0();
          v36 = [v34 insertNewObjectForEntityForName:v35 inManagedObjectContext:v33];

          type metadata accessor for ManagedCatalogTipJournal();
          v37 = swift_dynamicCastClass();
          if (!v37)
          {
            break;
          }

          v38 = v37;
          v25 &= v25 - 1;
          sub_227665050();
          v39 = sub_22766BFD0();

          [v38 setTipIdentifier_];

          v40 = v61;
          sub_227665070();
          v41 = sub_2276626A0();
          (*v57)(v40, v62);
          [v38 setDate_];

          sub_227665060();
          v42 = sub_22766BFD0();

          [v38 setJournalIdentifier_];

          v29 = v70;
          sub_227665040();
          [v38 setElapsedTime_];
          sub_227665090();
          [v38 setTotalTime_];

          (*v67)(v30, v29);
          v28 = v32;
          v27 = v66;
          v31 = v65;
          if (!v25)
          {
            goto LABEL_10;
          }
        }

        v43 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v44 = swift_allocError();
        (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D51000], v43);
        swift_willThrow();
        v46 = v55;
        sub_22766A770();
        v47 = v44;
        v48 = sub_22766B380();
        v49 = sub_22766C8B0();
        v50 = v44;

        if (os_log_type_enabled(v48, v49))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          *v51 = 138412290;
          v53 = v50;
          v54 = _swift_stdlib_bridgeErrorToNSError();
          *(v51 + 4) = v54;
          *v52 = v54;
          _os_log_impl(&dword_226E8E000, v48, v49, "%@", v51, 0xCu);
          sub_226E97D1C(v52, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v52, -1, -1);
          MEMORY[0x22AA9A450](v51, -1, -1);
        }

        (*(v63 + 8))(v46, v64);
        swift_willThrow();

        sub_226EDC474(0);
        (*v67)(v56, v29);
      }

      else
      {
LABEL_10:
        v33 = v68;
        while (1)
        {
          v32 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            break;
          }

          if (v32 >= v26)
          {
            sub_226EDC474(0);

            return;
          }

          v25 = *(v22 + 8 * v32);
          ++v28;
          if (v25)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_227569E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v63 = a2;
  v7 = sub_22766B390();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227669530();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = sub_227538B28(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v16;
    v62 = v11;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v59 = v13;
    v51 = v9;
    v52 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v62;
    v55 = v62 + 32;
    v56 = v62 + 16;
    v54 = "AudioLanguageIdentifier";
    v57 = (v62 + 8);

    v26 = 0;
    v53 = a1 + 56;
    v58 = a1;
    if (v23)
    {
      while (1)
      {
        v27 = v26;
LABEL_14:
        v28 = *(a1 + 48) + *(v25 + 72) * (__clz(__rbit64(v23)) | (v27 << 6));
        v29 = v60;
        (*(v25 + 16))(v60, v28, v10);
        v30 = v59;
        (*(v25 + 32))(v59, v29, v10);
        v31 = objc_opt_self();
        v32 = v10;
        v33 = sub_22766BFD0();
        v34 = [v31 insertNewObjectForEntityForName:v33 inManagedObjectContext:v63];

        type metadata accessor for ManagedBodyFocus();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {
          break;
        }

        v36 = v35;
        v23 &= v23 - 1;
        sub_227669510();
        v37 = sub_22766BFD0();

        [v36 setIdentifier_];

        sub_227669520();
        v38 = sub_22766BFD0();

        [v36 setName_];

        (*v57)(v30, v32);
        v26 = v27;
        a1 = v58;
        v10 = v32;
        v25 = v62;
        v20 = v53;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v39 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v40 = swift_allocError();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
      swift_willThrow();
      v42 = v51;
      sub_22766A770();
      v43 = v40;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v40;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v46, 0xCu);
        sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v47, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v61 + 8))(v42, v52);
      swift_willThrow();

      sub_226EDC474(0);
      (*v57)(v59, v32);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v27);
        ++v26;
        if (v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756A4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v63 = a2;
  v7 = sub_22766B390();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227663A30();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = sub_227538C64(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v16;
    v62 = v11;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v59 = v13;
    v51 = v9;
    v52 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v62;
    v55 = v62 + 32;
    v56 = v62 + 16;
    v54 = "ManagedCatalogSyncAnchor";
    v57 = (v62 + 8);

    v26 = 0;
    v53 = a1 + 56;
    v58 = a1;
    if (v23)
    {
      while (1)
      {
        v27 = v26;
LABEL_14:
        v28 = *(a1 + 48) + *(v25 + 72) * (__clz(__rbit64(v23)) | (v27 << 6));
        v29 = v60;
        (*(v25 + 16))(v60, v28, v10);
        v30 = v59;
        (*(v25 + 32))(v59, v29, v10);
        v31 = objc_opt_self();
        v32 = v10;
        v33 = sub_22766BFD0();
        v34 = [v31 insertNewObjectForEntityForName:v33 inManagedObjectContext:v63];

        type metadata accessor for ManagedCatalogTheme();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {
          break;
        }

        v36 = v35;
        v23 &= v23 - 1;
        sub_227663A00();
        v37 = sub_22766BFD0();

        [v36 setIdentifier_];

        sub_227663A10();
        v38 = sub_22766BFD0();

        [v36 setName_];

        [v36 setSortOrder_];
        (*v57)(v30, v32);
        v26 = v27;
        a1 = v58;
        v10 = v32;
        v25 = v62;
        v20 = v53;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v39 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v40 = swift_allocError();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
      swift_willThrow();
      v42 = v51;
      sub_22766A770();
      v43 = v40;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v40;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v46, 0xCu);
        sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v47, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v61 + 8))(v42, v52);
      swift_willThrow();

      sub_226EDC474(0);
      (*v57)(v59, v32);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v27);
        ++v26;
        if (v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756AB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v71 = a2;
  v7 = sub_22766B390();
  v70 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227665D70();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - v15;
  v17 = sub_227538DA0(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v68 = v16;
    v69 = v11;
    v60 = v13;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v58 = v9;
    v59 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v69;
    v63 = v69 + 32;
    v64 = v69 + 16;
    v62 = "ManagedCatalogTheme";
    v65 = (v69 + 8);

    v26 = 0;
    v27 = v60;
    v61 = v24;
    v66 = v10;
    v67 = a1;
    v28 = v68;
    if (v23)
    {
      while (1)
      {
        v29 = v26;
LABEL_14:
        (*(v25 + 16))(v28, *(a1 + 48) + *(v25 + 72) * (__clz(__rbit64(v23)) | (v29 << 6)), v10);
        (*(v25 + 32))(v27, v28, v10);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = v71;
        v33 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v71];

        type metadata accessor for ManagedCatalogThemeCategory();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {

          v45 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v46 = swift_allocError();
          (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D51000], v45);
          swift_willThrow();
          goto LABEL_27;
        }

        v35 = v34;
        sub_227665D30();
        v36 = sub_22766BFD0();

        [v35 setIdentifier_];

        sub_227665D40();
        v37 = sub_22766BFD0();

        [v35 setName_];

        v38 = sub_227665D60();
        v39 = 0x7FFFFFFFLL;
        if (v38 < 0x7FFFFFFF)
        {
          v39 = v38;
        }

        v40 = v39 <= 0xFFFFFFFF80000000 ? 0xFFFFFFFF80000000 : v39;
        [v35 setSortOrder_];
        v41 = sub_227665D50();
        v42 = v72;
        sub_227647D08(v32, v41);
        v72 = v42;
        if (v42)
        {
          break;
        }

        v44 = v43;
        v23 &= v23 - 1;

        [v35 setThemes_];

        v10 = v66;
        (*v65)(v27, v66);
        v26 = v29;
        a1 = v67;
        v25 = v69;
        v24 = v61;
        v28 = v68;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v46 = v72;
LABEL_27:
      v48 = v58;
      sub_22766A770();
      v49 = v46;
      v50 = sub_22766B380();
      v51 = sub_22766C8B0();

      v52 = os_log_type_enabled(v50, v51);
      v53 = v66;
      if (v52)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        v56 = v46;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&dword_226E8E000, v50, v51, "%@", v54, 0xCu);
        sub_226E97D1C(v55, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v55, -1, -1);
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      (*(v70 + 8))(v48, v59);
      swift_willThrow();

      sub_226EDC474(0);
      (*v65)(v60, v53);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v29 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v29 >= v24)
        {
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v29);
        ++v26;
        if (v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v63 = a2;
  v7 = sub_22766B390();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227669580();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = sub_227538EDC(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v16;
    v62 = v11;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v59 = v13;
    v51 = v9;
    v52 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v62;
    v55 = v62 + 32;
    v56 = v62 + 16;
    v54 = "ManagedEngagementBadge";
    v57 = (v62 + 8);

    v26 = 0;
    v53 = a1 + 56;
    v58 = a1;
    if (v23)
    {
      while (1)
      {
        v27 = v26;
LABEL_14:
        v28 = *(a1 + 48) + *(v25 + 72) * (__clz(__rbit64(v23)) | (v27 << 6));
        v29 = v60;
        (*(v25 + 16))(v60, v28, v10);
        v30 = v59;
        (*(v25 + 32))(v59, v29, v10);
        v31 = objc_opt_self();
        v32 = v10;
        v33 = sub_22766BFD0();
        v34 = [v31 insertNewObjectForEntityForName:v33 inManagedObjectContext:v63];

        type metadata accessor for ManagedEquipment();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {
          break;
        }

        v36 = v35;
        v23 &= v23 - 1;
        sub_227669560();
        v37 = sub_22766BFD0();

        [v36 setIdentifier_];

        sub_227669570();
        v38 = sub_22766BFD0();

        [v36 setName_];

        (*v57)(v30, v32);
        v26 = v27;
        a1 = v58;
        v10 = v32;
        v25 = v62;
        v20 = v53;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v39 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v40 = swift_allocError();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
      swift_willThrow();
      v42 = v51;
      sub_22766A770();
      v43 = v40;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v40;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v46, 0xCu);
        sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v47, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v61 + 8))(v42, v52);
      swift_willThrow();

      sub_226EDC474(0);
      (*v57)(v59, v32);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v27);
        ++v26;
        if (v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756B854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v63 = a2;
  v7 = sub_22766B390();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276632A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = sub_227539018(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v16;
    v62 = v11;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v59 = v13;
    v51 = v9;
    v52 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v25 = v62;
    v55 = v62 + 32;
    v56 = v62 + 16;
    v54 = "ManagedModalityIdentifier";
    v57 = (v62 + 8);

    v26 = 0;
    v53 = a1 + 56;
    v58 = a1;
    if (v23)
    {
      while (1)
      {
        v27 = v26;
LABEL_14:
        v28 = *(a1 + 48) + *(v25 + 72) * (__clz(__rbit64(v23)) | (v27 << 6));
        v29 = v60;
        (*(v25 + 16))(v60, v28, v10);
        v30 = v59;
        (*(v25 + 32))(v59, v29, v10);
        v31 = objc_opt_self();
        v32 = v10;
        v33 = sub_22766BFD0();
        v34 = [v31 insertNewObjectForEntityForName:v33 inManagedObjectContext:v63];

        type metadata accessor for ManagedMusicGenre();
        v35 = swift_dynamicCastClass();
        if (!v35)
        {
          break;
        }

        v36 = v35;
        v23 &= v23 - 1;
        sub_227663280();
        v37 = sub_22766BFD0();

        [v36 setIdentifier_];

        sub_227663290();
        v38 = sub_22766BFD0();

        [v36 setName_];

        (*v57)(v30, v32);
        v26 = v27;
        a1 = v58;
        v10 = v32;
        v25 = v62;
        v20 = v53;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

      v39 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v40 = swift_allocError();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
      swift_willThrow();
      v42 = v51;
      sub_22766A770();
      v43 = v40;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v40;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v46, 0xCu);
        sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v47, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v61 + 8))(v42, v52);
      swift_willThrow();

      sub_226EDC474(0);
      (*v57)(v59, v32);
    }

    else
    {
LABEL_11:
      while (1)
      {
        v27 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v27 >= v24)
        {
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v27);
        ++v26;
        if (v23)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756BEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v63 = a2;
  v7 = sub_22766B390();
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276633A0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  v17 = sub_227539154(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v60 = v16;
    v61 = v11;
    v62 = v13;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
      swift_willThrow();
    }

    else
    {
      v51 = v9;
      v52 = v7;
      v20 = a1 + 56;
      v21 = 1 << *(a1 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(a1 + 56);
      v24 = (v21 + 63) >> 6;
      v25 = v61;
      v54 = v61 + 32;
      v55 = v61 + 16;
      v53 = "ManagedSessionScores";
      v56 = (v61 + 8);

      v26 = 0;
      v27 = v62;
      v57 = v10;
      v58 = a1;
      while (1)
      {
        v29 = v60;
        if (!v23)
        {
          break;
        }

LABEL_16:
        (*(v25 + 16))(v60, *(a1 + 48) + *(v25 + 72) * (__clz(__rbit64(v23)) | (v26 << 6)), v10);
        (*(v25 + 32))(v27, v29, v10);
        v31 = objc_opt_self();
        v32 = sub_22766BFD0();
        v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v63];

        type metadata accessor for ManagedSkillLevel();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {

          v39 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v40 = swift_allocError();
          (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
          swift_willThrow();
          v42 = v51;
          sub_22766A770();
          v43 = v40;
          v44 = sub_22766B380();
          v45 = sub_22766C8B0();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            *v46 = 138412290;
            v48 = v40;
            v49 = _swift_stdlib_bridgeErrorToNSError();
            *(v46 + 4) = v49;
            *v47 = v49;
            _os_log_impl(&dword_226E8E000, v44, v45, "%@", v46, 0xCu);
            sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
            MEMORY[0x22AA9A450](v47, -1, -1);
            MEMORY[0x22AA9A450](v46, -1, -1);
          }

          (*(v59 + 8))(v42, v52);
          swift_willThrow();

          sub_226EDC474(0);
          (*v56)(v62, v57);
          return;
        }

        v35 = v34;
        sub_227663370();
        v36 = sub_22766BFD0();

        [v35 setIdentifier_];

        sub_227663390();
        v37 = sub_22766BFD0();

        [v35 setName_];

        sub_227663380();
        if (v38)
        {
          v28 = sub_22766BFD0();
        }

        else
        {
          v28 = 0;
        }

        a1 = v58;
        v23 &= v23 - 1;
        [v35 setKind_];

        v10 = v57;
        v27 = v62;
        (*v56)(v62, v57);
        v25 = v61;
      }

      while (1)
      {
        v30 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v30 >= v24)
        {
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v30);
        ++v26;
        if (v23)
        {
          v26 = v30;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756C52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v65 = a2;
  v7 = sub_22766B390();
  v63 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227664CA0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v54 - v15;
  v17 = sub_22753A024(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v62 = v16;
    v56 = v9;
    v64 = v10;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v55 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v58 = v11 + 32;
    v59 = v11 + 16;
    v57 = "StandaloneMindfulSessionJob";
    v60 = (v11 + 8);
    v61 = a1;

    v25 = 0;
    v26 = v64;
    v27 = v13;
    v28 = v66;
    v29 = v62;
    if (v23)
    {
      while (1)
      {
        v66 = v28;
        v30 = v25;
        v31 = v11;
LABEL_16:
        v32 = v29;
        (*(v31 + 16))(v29, *(v61 + 48) + *(v31 + 72) * (__clz(__rbit64(v23)) | (v30 << 6)), v26);
        (*(v31 + 32))(v27, v32, v26);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = v33;
        v36 = v65;
        v37 = [v35 insertNewObjectForEntityForName:v34 inManagedObjectContext:v65];

        type metadata accessor for ManagedHealthKitWorkout();
        v38 = swift_dynamicCastClass();
        if (!v38)
        {

          v40 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v28 = swift_allocError();
          (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51000], v40);
          swift_willThrow();
          goto LABEL_24;
        }

        v39 = v66;
        sub_226F79544(v38, v36);
        v28 = v39;
        if (v39)
        {
          break;
        }

        v23 &= v23 - 1;
        v26 = v64;
        (*v60)(v27, v64);

        v25 = v30;
        v29 = v62;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v42 = v56;
      sub_22766A770();
      v43 = v28;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      v46 = os_log_type_enabled(v44, v45);
      v47 = v55;
      v48 = v63;
      if (v46)
      {
        v49 = v28;
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v50 = 138412290;
        v52 = v49;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v50, 0xCu);
        sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v51, -1, -1);
        MEMORY[0x22AA9A450](v50, -1, -1);
      }

      (*(v48 + 8))(v42, v47);
      swift_willThrow();

      sub_226EDC474(0);
      (*v60)(v27, v64);
    }

    else
    {
LABEL_11:
      v31 = v11;
      while (1)
      {
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v30 >= v24)
        {
          v66 = v28;
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v30);
        ++v25;
        if (v23)
        {
          v66 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756CB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v63 = a2;
  v7 = sub_22766B390();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227666BF0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = sub_22753A29C(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v16;
    v54 = v9;
    v62 = v10;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v53 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v56 = v11 + 32;
    v57 = v11 + 16;
    v55 = "ManagedHealthKitActivityType";
    v58 = (v11 + 8);
    v59 = a1;

    v25 = 0;
    v26 = v62;
    v27 = v13;
    v28 = v64;
    v29 = v60;
    if (v23)
    {
      while (1)
      {
        v64 = v28;
        v30 = v25;
        v31 = v11;
LABEL_16:
        v32 = v29;
        (*(v31 + 16))(v29, *(v59 + 48) + *(v31 + 72) * (__clz(__rbit64(v23)) | (v30 << 6)), v26);
        (*(v31 + 32))(v27, v32, v26);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v63];

        type metadata accessor for ManagedHealthKitMindfulSession();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {

          v38 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v28 = swift_allocError();
          (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51000], v38);
          swift_willThrow();
          goto LABEL_24;
        }

        v37 = v64;
        sub_2275D7AC0(v36);
        v28 = v37;
        if (v37)
        {
          break;
        }

        v23 &= v23 - 1;
        v26 = v62;
        (*v58)(v27, v62);

        v25 = v30;
        v29 = v60;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v40 = v54;
      sub_22766A770();
      v41 = v28;
      v42 = sub_22766B380();
      v43 = sub_22766C8B0();

      v44 = os_log_type_enabled(v42, v43);
      v45 = v53;
      v46 = v61;
      if (v44)
      {
        v47 = swift_slowAlloc();
        v48 = v28;
        v49 = swift_slowAlloc();
        *v47 = 138412290;
        v50 = v48;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_226E8E000, v42, v43, "%@", v47, 0xCu);
        sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v49, -1, -1);
        MEMORY[0x22AA9A450](v47, -1, -1);
      }

      (*(v46 + 8))(v40, v45);
      swift_willThrow();

      sub_226EDC474(0);
      (*v58)(v27, v62);
    }

    else
    {
LABEL_11:
      v31 = v11;
      while (1)
      {
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v30 >= v24)
        {
          v64 = v28;
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v30);
        ++v25;
        if (v23)
        {
          v64 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756D164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v61 = a2;
  v7 = sub_22766B390();
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v50 - v11;
  v13 = sub_2276687D0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753A3D8(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v59 = v12;
    v60 = v16;
    v53 = v13;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
      swift_willThrow();
    }

    else
    {
      v50 = v9;
      v51 = v7;
      v20 = *(a1 + 16);
      v21 = v53;
      if (v20)
      {
        v22 = v14 + 16;
        v23 = *(v14 + 16);
        v57 = "ManagedAssetRequestKeyMetadata";
        v58 = (v22 - 8);
        v24 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
        v55 = *(v22 + 56);
        v56 = v22;
        v23(v60, v24, v53);
        while (1)
        {
          v27 = objc_opt_self();
          v28 = sub_22766BFD0();
          v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v61];

          type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
          v30 = swift_dynamicCastClass();
          if (!v30)
          {
            break;
          }

          v31 = v30;
          sub_2276687A0();
          v32 = sub_22766BFD0();

          [v31 setIdentifier_];

          sub_2276687C0();
          v33 = sub_22766BFD0();

          [v31 setTitle_];

          v34 = v59;
          sub_2276687B0();
          v35 = v34;
          v36 = sub_2276624A0();
          v37 = *(v36 - 8);
          if ((*(v37 + 48))(v35, 1, v36) == 1)
          {
            sub_226E97D1C(v35, &unk_27D7BB570, &unk_227670FC0);
            v25 = 0;
          }

          else
          {
            sub_227662390();
            v54 = v20;
            (*(v37 + 8))(v35, v36);
            v20 = v54;
            v25 = sub_22766BFD0();
            v21 = v53;
          }

          [v31 setThumbnailURL_];

          v26 = v60;
          (*v58)(v60, v21);
          v24 += v55;
          if (!--v20)
          {
            goto LABEL_14;
          }

          v23(v26, v24, v21);
        }

        v38 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v39 = swift_allocError();
        (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D51000], v38);
        swift_willThrow();
        v41 = v50;
        sub_22766A770();
        v42 = v39;
        v43 = sub_22766B380();
        v44 = sub_22766C8B0();
        v45 = v39;

        if (os_log_type_enabled(v43, v44))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          v48 = v45;
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v49;
          *v47 = v49;
          _os_log_impl(&dword_226E8E000, v43, v44, "%@", v46, 0xCu);
          sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v47, -1, -1);
          MEMORY[0x22AA9A450](v46, -1, -1);
        }

        (*(v52 + 8))(v41, v51);
        swift_willThrow();
        sub_226EDC474(0);
        (*v58)(v60, v21);
      }

      else
      {
LABEL_14:
        sub_226EDC474(0);
      }
    }
  }
}

void sub_22756D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v47 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227666070();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22753A514(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v42 = v10;
    v43 = v11;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v40 = v8;
    v41 = v7;
    v18 = *(a1 + 16);
    v19 = v43;
    if (v18)
    {
      v21 = *(v12 + 16);
      v20 = v12 + 16;
      v44 = "estMediaStreamMetadata";
      v45 = v21;
      v46 = (v20 - 8);
      v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
      v23 = *(v20 + 56);
      while (1)
      {
        v45(v14, v22, v19);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v47];

        type metadata accessor for ManagedAssetRequestReference();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          break;
        }

        sub_2273F9784(v27);

        (*v46)(v14, v19);
        v22 += v23;
        if (!--v18)
        {
          goto LABEL_11;
        }
      }

      v28 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v29 = swift_allocError();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D51000], v28);
      swift_willThrow();
      v31 = v42;
      sub_22766A770();
      v32 = v29;
      v33 = sub_22766B380();
      v34 = sub_22766C8B0();
      v35 = v29;

      if (os_log_type_enabled(v33, v34))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412290;
        v38 = v35;
        v39 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 4) = v39;
        *v37 = v39;
        _os_log_impl(&dword_226E8E000, v33, v34, "%@", v36, 0xCu);
        sub_226E97D1C(v37, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v37, -1, -1);
        MEMORY[0x22AA9A450](v36, -1, -1);
      }

      (*(v40 + 8))(v31, v41);
      swift_willThrow();
      sub_226EDC474(0);
      (*v46)(v14, v43);
    }

    else
    {
LABEL_11:
      sub_226EDC474(0);
    }
  }
}

void sub_22756DD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v63 = a2;
  v7 = sub_22766B390();
  v61 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227664410();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = sub_22753B520(a1, v5, a4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v60 = v16;
    v54 = v9;
    v62 = v10;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v53 = v7;
    v20 = a1 + 56;
    v21 = 1 << *(a1 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(a1 + 56);
    v24 = (v21 + 63) >> 6;
    v56 = v11 + 32;
    v57 = v11 + 16;
    v55 = "ManagedRecentSearchTerm";
    v58 = (v11 + 8);
    v59 = a1;

    v25 = 0;
    v26 = v62;
    v27 = v13;
    v28 = v64;
    v29 = v60;
    if (v23)
    {
      while (1)
      {
        v64 = v28;
        v30 = v25;
        v31 = v11;
LABEL_16:
        v32 = v29;
        (*(v31 + 16))(v29, *(v59 + 48) + *(v31 + 72) * (__clz(__rbit64(v23)) | (v30 << 6)), v26);
        (*(v31 + 32))(v27, v32, v26);
        v33 = objc_opt_self();
        v34 = sub_22766BFD0();
        v35 = [v33 insertNewObjectForEntityForName:v34 inManagedObjectContext:v63];

        type metadata accessor for ManagedRecommendation();
        v36 = swift_dynamicCastClass();
        if (!v36)
        {

          v38 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v28 = swift_allocError();
          (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51000], v38);
          swift_willThrow();
          goto LABEL_24;
        }

        v37 = v64;
        sub_2274F8D04(v36);
        v28 = v37;
        if (v37)
        {
          break;
        }

        v23 &= v23 - 1;
        v26 = v62;
        (*v58)(v27, v62);

        v25 = v30;
        v29 = v60;
        if (!v23)
        {
          goto LABEL_11;
        }
      }

LABEL_24:
      v40 = v54;
      sub_22766A770();
      v41 = v28;
      v42 = sub_22766B380();
      v43 = sub_22766C8B0();

      v44 = os_log_type_enabled(v42, v43);
      v45 = v53;
      v46 = v61;
      if (v44)
      {
        v47 = swift_slowAlloc();
        v48 = v28;
        v49 = swift_slowAlloc();
        *v47 = 138412290;
        v50 = v48;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v47 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_226E8E000, v42, v43, "%@", v47, 0xCu);
        sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v49, -1, -1);
        MEMORY[0x22AA9A450](v47, -1, -1);
      }

      (*(v46 + 8))(v40, v45);
      swift_willThrow();

      sub_226EDC474(0);
      (*v58)(v27, v62);
    }

    else
    {
LABEL_11:
      v31 = v11;
      while (1)
      {
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v30 >= v24)
        {
          v64 = v28;
          sub_226EDC474(0);

          return;
        }

        v23 = *(v20 + 8 * v30);
        ++v25;
        if (v23)
        {
          v64 = v28;
          goto LABEL_16;
        }
      }

      __break(1u);
    }
  }
}

void sub_22756E334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v52 = a2;
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227665100();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22753B65C(a1, v5, a4);
  if (v15)
  {
    if (v15 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v46 = v10;
    v47 = v11;
    if (sub_227669C10())
    {
      v16 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51010], v16);
LABEL_6:
      swift_willThrow();
      return;
    }

    v44 = v8;
    v45 = v7;
    v18 = *(a1 + 16);
    v19 = v47;
    if (v18)
    {
      v21 = v12 + 16;
      v20 = *(v12 + 16);
      v49 = "ManagedEquipmentIdentifier";
      v50 = v20;
      v51 = (v12 + 8);
      v22 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v48 = *(v12 + 72);
      while (1)
      {
        v23 = v21;
        v50(v14, v22, v19);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v52];

        type metadata accessor for ManagedEstimatedCalories();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          break;
        }

        v28 = v27;
        v29 = sub_2276650C0();
        if (v29 >= 0x7FFFFFFF)
        {
          v30 = 0x7FFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        [v28 setActivityType_];
        sub_2276650E0();
        [v28 setActiveCalorieRate_];
        sub_2276650D0();
        [v28 setBasalCalorieRate_];

        (*v51)(v14, v19);
        v22 += v48;
        --v18;
        v21 = v23;
        if (!v18)
        {
          goto LABEL_14;
        }
      }

      v31 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D51000], v31);
      swift_willThrow();
      v34 = v46;
      sub_22766A770();
      v35 = v32;
      v36 = sub_22766B380();
      v37 = sub_22766C8B0();
      v38 = v32;

      if (os_log_type_enabled(v36, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v38;
        v19 = v47;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v36, v37, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v44 + 8))(v34, v45);
      swift_willThrow();
      sub_226EDC474(0);
      (*v51)(v14, v19);
    }

    else
    {
LABEL_14:
      sub_226EDC474(0);
    }
  }
}

void sub_22756E894(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF420, qword_22768BC30, &qword_27D7BF428, sub_22759703C);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v47;
    v45 = v16;
    v46 = v14;
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

    v44 = v13;
    v21 = a4 >> 1;
    v22 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = v18;
      v48 = "ManagedWorkoutPlanTemplate";
      if (a3 > v21)
      {
        v21 = a3;
      }

      v24 = v21 - a3;
      v25 = a2 + 16 * a3 + 8;
      while (1)
      {
        if (!v24)
        {
          __break(1u);
          return;
        }

        v26 = objc_opt_self();

        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v23];

        type metadata accessor for ManagedWorkoutPlanTrainerIdentifier();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_22766BFD0();
        [v30 setIdentifier_];

        --v24;
        v25 += 16;
        if (!--v22)
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

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v37, v38, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v46 + 8))(v35, v44);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_22756ED50(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF408, &qword_22768BC28, &qword_27D7BF410, sub_227596FE8);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v47;
    v45 = v16;
    v46 = v14;
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

    v44 = v13;
    v21 = a4 >> 1;
    v22 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = v18;
      v48 = "anModalityPreference";
      if (a3 > v21)
      {
        v21 = a3;
      }

      v24 = v21 - a3;
      v25 = a2 + 16 * a3 + 8;
      while (1)
      {
        if (!v24)
        {
          __break(1u);
          return;
        }

        v26 = objc_opt_self();

        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v23];

        type metadata accessor for ManagedWorkoutPlanMusicIdentifier();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_22766BFD0();
        [v30 setIdentifier_];

        --v24;
        v25 += 16;
        if (!--v22)
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

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v37, v38, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v46 + 8))(v35, v44);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_22756F20C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v63 = a7;
  LODWORD(v62) = a6;
  v65 = a5;
  v11 = sub_22766B390();
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x28223BE20](v11);
  v53 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2276627D0();
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227662750();
  v57 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227667440();
  v66 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22753BEB8(a1, a2, a3, a4, v62, v63);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v51 = v14;
    v52 = v18;
    v22 = v20;
    v59 = a4;
    v61 = v15;
    v63 = a2;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
      swift_willThrow();
    }

    else
    {
      v25 = v51;
      v26 = v52;
      v27 = v66;
      if (v59 >> 1 == a3)
      {
LABEL_14:
        sub_226EDC474(0);
      }

      else
      {
        v28 = v59 >> 1;
        v29 = v22;
        v30 = v17;
        v58 = "anScheduleFilterProperty";
        v59 = v66 + 16;
        v56 = v60 + 1;
        ++v57;
        v60 = (v66 + 8);
        if (a3 <= v28)
        {
          v31 = v28;
        }

        else
        {
          v31 = a3;
        }

        v62 = v31;
        while (1)
        {
          if (v62 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v29, v63 + *(v27 + 72) * a3, v26);
          v32 = objc_opt_self();
          v33 = sub_22766BFD0();
          v34 = [v32 insertNewObjectForEntityForName:v33 inManagedObjectContext:v65];

          type metadata accessor for ManagedWorkoutPlanSummaryViewed();
          v35 = swift_dynamicCastClass();
          if (!v35)
          {
            break;
          }

          v36 = v35;
          ++a3;
          sub_227667410();
          v37 = sub_2276626A0();
          (*v57)(v30, v61);
          [v36 setDateViewed_];

          sub_227667430();
          v38 = sub_227662790();
          (*v56)(v25, v64);
          [v36 setPlanIdentifier_];

          (*v60)(v29, v26);
          v27 = v66;
          if (v28 == a3)
          {
            goto LABEL_14;
          }
        }

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v53;
        sub_22766A770();
        v43 = v40;
        v44 = sub_22766B380();
        v45 = sub_22766C8B0();
        v46 = v40;

        if (os_log_type_enabled(v44, v45))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 138412290;
          v49 = v46;
          v50 = _swift_stdlib_bridgeErrorToNSError();
          *(v47 + 4) = v50;
          *v48 = v50;
          _os_log_impl(&dword_226E8E000, v44, v45, "%@", v47, 0xCu);
          sub_226E97D1C(v48, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v48, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v54 + 8))(v42, v55);
        swift_willThrow();
        sub_226EDC474(0);
        (*v60)(v29, v52);
      }
    }
  }
}

void sub_22756F90C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v87 = a7;
  LODWORD(v86) = a6;
  v84 = a5;
  v11 = sub_22766B390();
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x28223BE20](v11);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BF3D0, &unk_227675740);
  MEMORY[0x28223BE20](v13 - 8);
  v83 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BD8, qword_22767DD50);
  MEMORY[0x28223BE20](v15 - 8);
  v81 = &v65 - v16;
  v82 = sub_227662190();
  v77 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227665440();
  v76 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_227665F20();
  v85 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v26 = a2;
  v27 = sub_22753BFF8(v25, a2, a3, a4, v86, v87);
  if (v27)
  {
    if (v27 != 1)
    {
      v28 = v27;
      swift_willThrow();
      v88 = v28;
    }
  }

  else
  {
    v87 = a3;
    v78 = v19;
    v79 = v18;
    v66 = v24;
    v80 = v22;
    if (sub_227669C10())
    {
      v29 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v30 = swift_allocError();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D51010], v29);
      v88 = v30;
      swift_willThrow();
    }

    else
    {
      v32 = a4 >> 1;
      v33 = v87;
      if (a4 >> 1 == v87)
      {
LABEL_20:
        sub_226EDC474(0);
      }

      else
      {
        v34 = v85;
        v71 = "anMusicIdentifier";
        v72 = v85 + 16;
        v69 = (v77 + 8);
        v70 = v76 + 1;
        if (v87 <= v32)
        {
          v35 = a4 >> 1;
        }

        else
        {
          v35 = v87;
        }

        v76 = (v85 + 8);
        v77 = v35;
        v36 = v80;
        v37 = v66;
        v67 = v32;
        v68 = a2;
        while (1)
        {
          if (v77 == v33)
          {
            __break(1u);
            return;
          }

          (*(v34 + 16))(v37, v26 + *(v34 + 72) * v33, v36);
          v38 = objc_opt_self();
          v39 = sub_22766BFD0();
          v40 = [v38 insertNewObjectForEntityForName:v39 inManagedObjectContext:v84];

          type metadata accessor for ManagedWorkoutPlanReference();
          v41 = swift_dynamicCastClass();
          if (!v41)
          {

            v51 = sub_227664DD0();
            sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
            v52 = swift_allocError();
            (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D51000], v51);
            v88 = v52;
            swift_willThrow();
            goto LABEL_23;
          }

          v42 = v41;
          v86 = v40;
          v87 = v33;
          sub_227665F00();
          v43 = sub_227662940();
          (*(*(v43 - 8) + 56))(v81, 1, 1, v43);
          v44 = sub_2276629D0();
          (*(*(v44 - 8) + 56))(v83, 1, 1, v44);
          sub_227665400();
          sub_227665410();
          sub_227665420();
          sub_227665430();
          v45 = v79;
          sub_227662180();
          v46 = v88;
          sub_2276620D0();
          v88 = v46;
          if (v46)
          {
            break;
          }

          v33 = v87 + 1;
          (*v69)(v45, v82);
          (*v70)(v21, v78);
          v47 = sub_22766BFD0();

          [v42 setDateOffset_];

          v48 = sub_227665F10();
          v49 = 0x7FFFFFFFLL;
          if (v48 < 0x7FFFFFFF)
          {
            v49 = v48;
          }

          if (v49 <= 0xFFFFFFFF80000000)
          {
            v50 = 0xFFFFFFFF80000000;
          }

          else
          {
            v50 = v49;
          }

          [v42 setIndex_];

          v36 = v80;
          (*v76)(v37, v80);
          v26 = v68;
          v34 = v85;
          if (v67 == v33)
          {
            goto LABEL_20;
          }
        }

        (*v69)(v45, v82);
        (*v70)(v21, v78);
        v36 = v80;
LABEL_23:
        v54 = v73;
        sub_22766A770();
        v55 = v88;
        v56 = v88;
        v57 = sub_22766B380();
        v58 = sub_22766C8B0();

        v59 = os_log_type_enabled(v57, v58);
        v60 = v74;
        if (v59)
        {
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          *v61 = 138412290;
          v63 = v88;
          v64 = _swift_stdlib_bridgeErrorToNSError();
          *(v61 + 4) = v64;
          *v62 = v64;
          _os_log_impl(&dword_226E8E000, v57, v58, "%@", v61, 0xCu);
          sub_226E97D1C(v62, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v62, -1, -1);
          MEMORY[0x22AA9A450](v61, -1, -1);
        }

        (*(v60 + 8))(v54, v75);
        swift_willThrow();
        sub_226EDC474(0);
        (*v76)(v66, v36);
      }
    }
  }
}

void sub_227570270(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227665CA0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753C138(a1, a2, a3, a4, v56, v57);
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
      v50 = "ManagedWorkoutPlanSummaryViewed";
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

        type metadata accessor for ManagedWorkoutPlanTemplate();
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

        sub_226F1DD6C(v33, v31);
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

void sub_2275707E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v48 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF3A8, &qword_22768BC08, &qword_27D7BF3B0, sub_227596F94);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v46 = v16;
    if (sub_227669C10())
    {
      v18 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51010], v18);
LABEL_6:
      swift_willThrow();
      return;
    }

    v44 = v14;
    v45 = v13;
    v20 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
LABEL_12:
      sub_226EDC474(0);
    }

    else
    {
      v47 = "ManagedWorkoutPlanScheduledItem";
      v21 = (a2 + 24 * a3 + 16);
      while (1)
      {
        if (a3 >= v20)
        {
          __break(1u);
          return;
        }

        v22 = *(v21 - 2);
        v23 = *(v21 - 1);
        v24 = *v21;
        v25 = *v21;
        v26 = objc_opt_self();
        sub_226F491FC(v22, v23, v24);
        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v48];

        type metadata accessor for ManagedWorkoutPlanScheduleFilterProperty();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        ++a3;
        v31 = sub_22766BFD0();
        [v30 *off_2785D4108[v25]];

        sub_226F49200(v22, v23, v25);
        v21 += 24;
        if (v20 == a3)
        {
          goto LABEL_12;
        }
      }

      v32 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v33 = swift_allocError();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D51000], v32);
      swift_willThrow();
      v35 = v46;
      sub_22766A770();
      v36 = v33;
      v37 = sub_22766B380();
      v38 = sub_22766C8B0();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v37, v38, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v44 + 8))(v35, v45);
      swift_willThrow();
      sub_226EDC474(0);
      sub_226F49200(v22, v23, v25);
    }
  }
}

void sub_227570CBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v68 = a7;
  LODWORD(v67) = a6;
  v66 = a5;
  v11 = sub_22766B390();
  v64 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227667400();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753C278(v18, a2, a3, a4, v67, v68);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v68 = v15;
    v59 = v11;
    v60 = v13;
    v65 = v14;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v24 = v69;
LABEL_22:
      v69 = v24;
      sub_226EDC474(0);
    }

    else
    {
      v25 = v68;
      v61 = "ManagedWorkoutPlanReference";
      v62 = v68 + 16;
      v63 = (v68 + 8);
      if (a3 <= v23)
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v67 = v26;
      v27 = v65;
      v24 = v69;
      v28 = v17;
      while (1)
      {
        if (v67 == a3)
        {
          __break(1u);
          return;
        }

        (*(v25 + 16))(v28, v19 + *(v25 + 72) * a3, v27);
        v29 = objc_opt_self();
        v30 = sub_22766BFD0();
        v31 = v29;
        v32 = v66;
        v33 = [v31 insertNewObjectForEntityForName:v30 inManagedObjectContext:v66];

        type metadata accessor for ManagedWorkoutPlanScheduledItem();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {

          v45 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v24 = swift_allocError();
          (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D51000], v45);
          swift_willThrow();
          goto LABEL_26;
        }

        v35 = v34;
        v36 = v19;
        v69 = v24;
        v37 = sub_2276673F0();
        v38 = 0x7FFFFFFFLL;
        if (v37 < 0x7FFFFFFF)
        {
          v38 = v37;
        }

        v39 = v38 <= 0xFFFFFFFF80000000 ? 0xFFFFFFFF80000000 : v38;
        [v35 setDuration_];
        sub_2276673E0();
        v40 = sub_22766BFD0();

        [v35 setModalityIdentifier_];

        v41 = sub_2276673C0();
        v42 = v69;
        sub_22764936C(v32, v41);
        v24 = v42;
        if (v42)
        {
          break;
        }

        v44 = v43;
        ++a3;

        [v35 setFilterProperties_];

        v27 = v65;
        (*v63)(v28, v65);
        v19 = v36;
        v25 = v68;
        if (v23 == a3)
        {
          goto LABEL_22;
        }
      }

LABEL_26:
      v47 = v60;
      sub_22766A770();
      v48 = v24;
      v49 = sub_22766B380();
      v50 = sub_22766C8B0();

      v51 = os_log_type_enabled(v49, v50);
      v52 = v59;
      v53 = v64;
      if (v51)
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v54 = 138412290;
        v56 = v24;
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 4) = v57;
        *v55 = v57;
        _os_log_impl(&dword_226E8E000, v49, v50, "%@", v54, 0xCu);
        sub_226E97D1C(v55, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v55, -1, -1);
        v58 = v54;
        v47 = v60;
        MEMORY[0x22AA9A450](v58, -1, -1);
      }

      (*(v53 + 8))(v47, v52);
      swift_willThrow();
      sub_226EDC474(0);
      (*v63)(v28, v65);
    }
  }
}

void sub_2275712E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v75 = a5;
  v77 = a7;
  LODWORD(v76) = a6;
  v11 = sub_22766B390();
  v72 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227668480();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753C3B8(v18, a2, a3, a4, v76, v77);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v77 = v15;
    v66 = v11;
    v67 = v17;
    v65 = v13;
    v73 = v14;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    if (a4 >> 1 == a3)
    {
      v23 = v74;
LABEL_9:
      v74 = v23;
      sub_226EDC474(0);
    }

    else
    {
      v24 = a3;
      v25 = v77;
      v69 = "ManagedWorkoutPlanItem";
      v70 = v77 + 16;
      v71 = (v77 + 8);
      if (a3 <= (a4 >> 1))
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v76 = v26;
      v27 = v73;
      v23 = v74;
      v28 = v67;
      v29 = v75;
      v68 = a4 >> 1;
      while (1)
      {
        if (v76 == v24)
        {
          __break(1u);
          return;
        }

        v30 = v24;
        (*(v25 + 16))(v28, v19 + *(v25 + 72) * v24, v27);
        v31 = objc_opt_self();
        v32 = sub_22766BFD0();
        v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v29];

        type metadata accessor for ManagedWorkoutPlanModalityPreference();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {

          v52 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v44 = swift_allocError();
          (*(*(v52 - 8) + 104))(v53, *MEMORY[0x277D51000], v52);
          swift_willThrow();
          goto LABEL_22;
        }

        v35 = v34;
        v36 = v19;
        sub_227668460();
        v37 = sub_22766BFD0();

        [v35 setModalityIdentifier_];

        v38 = sub_227668470();
        v39 = v23;
        sub_22747F294(v38);
        v41 = v40;

        v42 = sub_226F3D9D0(v41);

        sub_2276496D4(v29, v42);
        v44 = v39;
        if (v39)
        {
          break;
        }

        v45 = v43;

        [v35 setPreferredMusicGenres_];

        v46 = sub_227668440();
        sub_22747F268(v46);
        v48 = v47;
        v29 = v75;

        v49 = sub_226F3D954(v48);

        sub_227649A14(v29, v49);
        v23 = 0;
        v51 = v50;

        [v35 setPreferredTrainers_];

        v24 = v30 + 1;
        v27 = v73;
        (*v71)(v28, v73);
        v19 = v36;
        v25 = v77;
        if (v68 == v30 + 1)
        {
          goto LABEL_9;
        }
      }

LABEL_22:
      v54 = v65;
      sub_22766A770();
      v55 = v44;
      v56 = sub_22766B380();
      v57 = sub_22766C8B0();

      v58 = os_log_type_enabled(v56, v57);
      v59 = v66;
      v60 = v72;
      if (v58)
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412290;
        v63 = v44;
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 4) = v64;
        *v62 = v64;
        _os_log_impl(&dword_226E8E000, v56, v57, "%@", v61, 0xCu);
        sub_226E97D1C(v62, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v62, -1, -1);
        MEMORY[0x22AA9A450](v61, -1, -1);
      }

      (*(v60 + 8))(v54, v59);
      swift_willThrow();
      sub_226EDC474(0);
      (*v71)(v67, v73);
    }
  }
}

void sub_227571984(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF360, &qword_22768BBF0, &qword_27D7BF368, sub_227596F40);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v47;
    v45 = v16;
    v46 = v14;
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

    v44 = v13;
    v21 = a4 >> 1;
    v22 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = v18;
      v48 = "ManagedWorkoutPlan";
      if (a3 > v21)
      {
        v21 = a3;
      }

      v24 = v21 - a3;
      v25 = a2 + 16 * a3 + 8;
      while (1)
      {
        if (!v24)
        {
          __break(1u);
          return;
        }

        v26 = objc_opt_self();

        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v23];

        type metadata accessor for ManagedWorkoutPlanItem();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_22766BFD0();
        [v30 setWorkout_];

        --v24;
        v25 += 16;
        if (!--v22)
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

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v37, v38, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v46 + 8))(v35, v44);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227571E40(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276638D0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753C4F8(a1, a2, a3, a4, v56, v57);
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
      v50 = "ManagedWorkoutIdentifier";
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

        type metadata accessor for ManagedWorkoutPlan();
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

        sub_2275EEB10(v33, v31);
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

void sub_2275723B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF340, &qword_22768BBE0, &qword_27D7BF348, sub_2275962B0);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v47;
    v45 = v16;
    v46 = v14;
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

    v44 = v13;
    v21 = a4 >> 1;
    v22 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = v18;
      v48 = "ManagedUserAccountNotification";
      if (a3 > v21)
      {
        v21 = a3;
      }

      v24 = v21 - a3;
      v25 = a2 + 16 * a3 + 8;
      while (1)
      {
        if (!v24)
        {
          __break(1u);
          return;
        }

        v26 = objc_opt_self();

        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v23];

        type metadata accessor for ManagedWorkoutIdentifier();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_22766BFD0();
        [v30 setIdentifier_];

        --v24;
        v25 += 16;
        if (!--v22)
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

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v37, v38, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v46 + 8))(v35, v44);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227572870(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v48 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF330, &qword_22768BBD8, &qword_27D7BF338, sub_227596830);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v48;
    v46 = v16;
    v47 = v14;
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

    v45 = v13;
    v21 = a4 >> 1;
    v22 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = v18;
      if (a3 > v21)
      {
        v21 = a3;
      }

      v24 = v21 - a3;
      v25 = (a2 + a3);
      while (1)
      {
        if (!v24)
        {
          __break(1u);
          return;
        }

        v26 = *v25;
        v27 = objc_opt_self();
        v28 = sub_22766BFD0();
        v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v23];

        type metadata accessor for ManagedUserAccountNotification();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          break;
        }

        [v30 setShownState_];

        --v24;
        ++v25;
        if (!--v22)
        {
          goto LABEL_14;
        }
      }

      v31 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D51000], v31);
      swift_willThrow();
      v34 = v46;
      sub_22766A770();
      v35 = v32;
      v36 = sub_22766B380();
      v37 = sub_22766C8B0();
      v38 = v32;

      v39 = os_log_type_enabled(v36, v37);
      v40 = v47;
      if (v39)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        v43 = v38;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 4) = v44;
        *v42 = v44;
        _os_log_impl(&dword_226E8E000, v36, v37, "%@", v41, 0xCu);
        sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v42, -1, -1);
        MEMORY[0x22AA9A450](v41, -1, -1);
      }

      (*(v40 + 8))(v34, v45);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227572CF8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227664AA0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753C638(v18, a2, a3, a4, v56, v57);
  if (v20)
  {
    if (v20 != 1)
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
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v24 = v54;
LABEL_17:
      v54 = v24;
      sub_226EDC474(0);
    }

    else
    {
      v25 = v57;
      v50 = "ManagedTrainerReference";
      v51 = v57 + 16;
      v52 = (v57 + 8);
      if (a3 <= v23)
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v56 = v26;
      v27 = v14;
      v24 = v54;
      v28 = v49;
      while (1)
      {
        if (v56 == a3)
        {
          __break(1u);
          return;
        }

        v29 = v19;
        (*(v25 + 16))(v28, v19 + *(v25 + 72) * a3, v27);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v55];

        type metadata accessor for ManagedUpNextQueueItem();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {

          v34 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v24 = swift_allocError();
          (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51000], v34);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_227445B48(v33);
        if (v24)
        {
          break;
        }

        ++a3;
        (*v52)(v28, v27);

        v19 = v29;
        v25 = v57;
        if (v23 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v36 = v48;
      sub_22766A770();
      v37 = v24;
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
        v45 = v24;
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
      (*v52)(v49, v27);
    }
  }
}

void sub_227573268(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227664EB0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753C778(v18, a2, a3, a4, v56, v57);
  if (v20)
  {
    if (v20 != 1)
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
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v24 = v54;
LABEL_17:
      v54 = v24;
      sub_226EDC474(0);
    }

    else
    {
      v25 = v57;
      v50 = "ManagedTrainerMetadata";
      v51 = v57 + 16;
      v52 = (v57 + 8);
      if (a3 <= v23)
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v56 = v26;
      v27 = v14;
      v24 = v54;
      v28 = v49;
      while (1)
      {
        if (v56 == a3)
        {
          __break(1u);
          return;
        }

        v29 = v19;
        (*(v25 + 16))(v28, v19 + *(v25 + 72) * a3, v27);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v55];

        type metadata accessor for ManagedTrainerReference();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {

          v34 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v24 = swift_allocError();
          (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51000], v34);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_22750B934(v33);
        if (v24)
        {
          break;
        }

        ++a3;
        (*v52)(v28, v27);

        v19 = v29;
        v25 = v57;
        if (v23 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v36 = v48;
      sub_22766A770();
      v37 = v24;
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
        v45 = v24;
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
      (*v52)(v49, v27);
    }
  }
}

void sub_2275737D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227664A10();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753C8B8(a1, a2, a3, a4, v56, v57);
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
      v50 = "ManagedTrainerIdentifier";
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

        type metadata accessor for ManagedTrainerMetadata();
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

        sub_22750A3AC(v33, v31);
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

void sub_227573D4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF2F0, &qword_22768BBB8, &qword_27D7BF2F8, sub_227596304);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v47;
    v45 = v16;
    v46 = v14;
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

    v44 = v13;
    v21 = a4 >> 1;
    v22 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = v18;
      v48 = "ManagedTrainerEvent";
      if (a3 > v21)
      {
        v21 = a3;
      }

      v24 = v21 - a3;
      v25 = a2 + 16 * a3 + 8;
      while (1)
      {
        if (!v24)
        {
          __break(1u);
          return;
        }

        v26 = objc_opt_self();

        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v23];

        type metadata accessor for ManagedTrainerIdentifier();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_22766BFD0();
        [v30 setIdentifier_];

        --v24;
        v25 += 16;
        if (!--v22)
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

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v37, v38, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v46 + 8))(v35, v44);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227574208(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v64 = a7;
  v65 = a5;
  v7 = a6;
  v12 = sub_22766B390();
  v56 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_227663C90();
  v15 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753C9F8(v18, a2, a3, a4, v7, v64);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v63 = v15;
    v64 = v17;
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
      v54 = v14;
      v55 = v12;
      v62 = a4 >> 1;
      v23 = v63;
      v24 = v64;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v58 = "ManagedThemeIdentifier";
        v59 = v63 + 16;
        v25 = v62;
        if (a3 > v62)
        {
          v25 = a3;
        }

        v60 = (v63 + 8);
        v61 = v25;
        v57 = a2;
        while (1)
        {
          if (v61 == a3)
          {
            __break(1u);
            return;
          }

          (*(v23 + 16))(v24, v19 + *(v23 + 72) * a3, v69);
          v26 = objc_opt_self();
          v27 = sub_22766BFD0();
          v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v65];

          type metadata accessor for ManagedTrainerEvent();
          v29 = swift_dynamicCastClass();
          if (!v29)
          {
            break;
          }

          v30 = v29;
          ++a3;
          sub_227663C30();
          v31 = sub_22766BFD0();

          [v30 setIdentifier_];

          v32 = sub_227663C50();
          v34 = v33;
          v66 = v32;
          v67 = v33;
          v36 = v35 & 1;
          v68 = v35 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BC9F8, &qword_22767FA38);
          sub_227663AD0();
          v37 = sub_22766BFD0();
          v38 = v32;
          v19 = v57;
          v39 = v34;
          v24 = v64;
          v40 = v69;
          sub_226EB2DFC(v38, v39, v36);

          [v30 setType_];

          v23 = v63;
          sub_227663C80();
          [v30 setStartTime_];
          sub_227663C60();
          [v30 setDuration_];
          sub_227663C40();
          [v30 setLeadDuration_];

          (*v60)(v24, v40);
          if (v62 == a3)
          {
            goto LABEL_13;
          }
        }

        v41 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v42 = swift_allocError();
        (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
        swift_willThrow();
        v44 = v54;
        sub_22766A770();
        v45 = v42;
        v46 = sub_22766B380();
        v47 = sub_22766C8B0();
        v48 = v42;

        if (os_log_type_enabled(v46, v47))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          *v49 = 138412290;
          v51 = v48;
          v52 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 4) = v52;
          *v50 = v52;
          _os_log_impl(&dword_226E8E000, v46, v47, "%@", v49, 0xCu);
          sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
          v53 = v50;
          v24 = v64;
          MEMORY[0x22AA9A450](v53, -1, -1);
          MEMORY[0x22AA9A450](v49, -1, -1);
        }

        (*(v56 + 8))(v44, v55);
        swift_willThrow();
        sub_226EDC474(0);
        (*v60)(v24, v69);
      }
    }
  }
}

void sub_227574848(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF2C8, &unk_22768BBA0, &unk_27D7BF2D0, sub_227596358);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v47;
    v45 = v16;
    v46 = v14;
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

    v44 = v13;
    v21 = a4 >> 1;
    v22 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = v18;
      v48 = "ManagedSyncOperation";
      if (a3 > v21)
      {
        v21 = a3;
      }

      v24 = v21 - a3;
      v25 = a2 + 16 * a3 + 8;
      while (1)
      {
        if (!v24)
        {
          __break(1u);
          return;
        }

        v26 = objc_opt_self();

        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v23];

        type metadata accessor for ManagedThemeIdentifier();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_22766BFD0();
        [v30 setIdentifier_];

        --v24;
        v25 += 16;
        if (!--v22)
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

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v37, v38, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v46 + 8))(v35, v44);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227574D04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v61 = a7;
  v62 = a5;
  LODWORD(v60) = a6;
  v11 = sub_22766B390();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276694E0();
  v57 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227664140();
  v63 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753CB38(a1, a2, a3, a4, v60, v61);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v58 = v16;
    v59 = v14;
    v61 = a2;
    v50 = v13;
    v51 = v17;
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
      v60 = a4 >> 1;
      v23 = v51;
      v24 = v63;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v25 = v19;
        v54 = "ManagedSyncEncryptionKey";
        v55 = v63 + 16;
        v26 = (v57 + 8);
        v27 = v60;
        if (a3 > v60)
        {
          v27 = a3;
        }

        v56 = (v63 + 8);
        v57 = v27;
        while (1)
        {
          if (v57 == a3)
          {
            __break(1u);
            return;
          }

          (*(v24 + 16))(v25, v61 + *(v24 + 72) * a3, v23);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v62];

          type metadata accessor for ManagedSyncOperation();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          ++a3;
          sub_227664110();
          sub_2276640F0();
          v33 = sub_22766BFD0();

          [v32 setAction_];

          v34 = v58;
          sub_2276640D0();
          sub_2276694C0();
          v35 = v34;
          v24 = v63;
          (*v26)(v35, v59);
          v36 = sub_22766BFD0();

          [v32 setZoneName_];

          sub_2276640C0();
          v37 = sub_22766BFD0();

          [v32 setSyncIdentifier_];

          sub_227664130();
          [v32 setTimestamp_];
          sub_227664120();
          [v32 setDomain_];

          (*v56)(v25, v23);
          if (v60 == a3)
          {
            goto LABEL_13;
          }
        }

        v38 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v39 = swift_allocError();
        (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D51000], v38);
        swift_willThrow();
        v41 = v50;
        sub_22766A770();
        v42 = v39;
        v43 = sub_22766B380();
        v44 = sub_22766C8B0();
        v45 = v39;

        if (os_log_type_enabled(v43, v44))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          v48 = v45;
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v49;
          *v47 = v49;
          _os_log_impl(&dword_226E8E000, v43, v44, "%@", v46, 0xCu);
          sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v47, -1, -1);
          MEMORY[0x22AA9A450](v46, -1, -1);
        }

        (*(v52 + 8))(v41, v53);
        swift_willThrow();
        sub_226EDC474(0);
        (*v56)(v25, v51);
      }
    }
  }
}

void sub_2275753E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v58 = a7;
  v59 = a5;
  LODWORD(v57) = a6;
  v11 = sub_22766B390();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SyncEncryptionKey(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753CC78(v18, a2, a3, a4, v57, v58);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v52 = v13;
    v53 = v17;
    v56 = v15;
    v58 = v14;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
LABEL_15:
      sub_226EDC474(0);
    }

    else
    {
      v51 = v11;
      v55 = "ManagedSyncZoneChangeWindow";
      if (a3 <= v23)
      {
        v24 = a4 >> 1;
      }

      else
      {
        v24 = a3;
      }

      v57 = v24;
      v25 = v53;
      while (1)
      {
        if (v57 == a3)
        {
          __break(1u);
          return;
        }

        v26 = v19;
        sub_227596718(v19 + *(v56 + 72) * a3, v25, type metadata accessor for SyncEncryptionKey);
        v27 = objc_opt_self();
        v28 = sub_22766BFD0();
        v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v59];

        type metadata accessor for ManagedSyncEncryptionKey();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          break;
        }

        v31 = v30;
        ++a3;
        sub_2276694C0();
        v32 = sub_22766BFD0();

        [v31 setZoneName_];

        v33 = v62;
        sub_22766B470();
        v62 = v33;
        v34 = v60;
        v35 = v61;
        v36 = sub_227662560();
        sub_226EDC420(v34, v35);
        [v31 setKey_];

        v37 = sub_22766BFD0();
        [v31 setEtag_];

        v38 = sub_227662790();
        [v31 setIdentifier_];

        sub_2275966B8(v25, type metadata accessor for SyncEncryptionKey);
        v19 = v26;
        if (v23 == a3)
        {
          goto LABEL_15;
        }
      }

      v39 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v40 = swift_allocError();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
      swift_willThrow();
      v42 = v52;
      sub_22766A770();
      v43 = v40;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v40;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v46, 0xCu);
        sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v47, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v54 + 8))(v42, v51);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v53, type metadata accessor for SyncEncryptionKey);
    }
  }
}

void sub_227575A18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v49 = a7;
  LODWORD(v48) = a6;
  v50 = a5;
  v11 = sub_22766B390();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SyncZoneChangeWindow(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753CDB8(a1, a2, a3, a4, v48, v49);
  if (v18)
  {
    if (v18 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v49 = v15;
    v44 = v13;
    v45 = v11;
    if (sub_227669C10())
    {
      v19 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
      swift_willThrow();
    }

    else if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v21 = a4 >> 1;
      v22 = v17;
      v47 = "ManagedSyncChangeTag";
      if (a3 <= (a4 >> 1))
      {
        v23 = a4 >> 1;
      }

      else
      {
        v23 = a3;
      }

      v48 = v23;
      while (1)
      {
        if (v48 == a3)
        {
          __break(1u);
          return;
        }

        sub_227596718(a2 + *(v49 + 72) * a3, v22, type metadata accessor for SyncZoneChangeWindow);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v50];

        type metadata accessor for ManagedSyncZoneChangeWindow();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          break;
        }

        v28 = v27;
        ++a3;
        sub_2276694C0();
        v29 = sub_22766BFD0();

        [v28 setZoneName_];

        v30 = sub_227662560();
        [v28 setChangeWindow_];

        sub_2275966B8(v22, type metadata accessor for SyncZoneChangeWindow);
        if (v21 == a3)
        {
          goto LABEL_14;
        }
      }

      v31 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D51000], v31);
      swift_willThrow();
      v34 = v44;
      sub_22766A770();
      v35 = v32;
      v36 = sub_22766B380();
      v37 = sub_22766C8B0();
      v38 = v32;

      if (os_log_type_enabled(v36, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v38;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v36, v37, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v46 + 8))(v34, v45);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v22, type metadata accessor for SyncZoneChangeWindow);
    }
  }
}

void sub_227575FAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v49 = a7;
  LODWORD(v48) = a6;
  v50 = a5;
  v11 = sub_22766B390();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SyncChangeTag(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753CEF8(a1, a2, a3, a4, v48, v49);
  if (v18)
  {
    if (v18 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v49 = v15;
    v44 = v13;
    v45 = v11;
    if (sub_227669C10())
    {
      v19 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51010], v19);
      swift_willThrow();
    }

    else if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v21 = a4 >> 1;
      v47 = "ManagedStreamingKeyNonce";
      if (a3 <= (a4 >> 1))
      {
        v22 = a4 >> 1;
      }

      else
      {
        v22 = a3;
      }

      v48 = v22;
      while (1)
      {
        if (v48 == a3)
        {
          __break(1u);
          return;
        }

        sub_227596718(a2 + *(v49 + 72) * a3, v17, type metadata accessor for SyncChangeTag);
        v23 = objc_opt_self();
        v24 = sub_22766BFD0();
        v25 = [v23 insertNewObjectForEntityForName:v24 inManagedObjectContext:v50];

        type metadata accessor for ManagedSyncChangeTag();
        v26 = swift_dynamicCastClass();
        if (!v26)
        {
          break;
        }

        v27 = v26;
        ++a3;
        v28 = sub_22766BFD0();
        [v27 setSyncIdentifier_];

        sub_2276694C0();
        v29 = sub_22766BFD0();

        [v27 setZoneName_];

        v30 = sub_22766BFD0();
        [v27 setEtag_];

        sub_2275966B8(v17, type metadata accessor for SyncChangeTag);
        if (v21 == a3)
        {
          goto LABEL_14;
        }
      }

      v31 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v32 = swift_allocError();
      (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D51000], v31);
      swift_willThrow();
      v34 = v44;
      sub_22766A770();
      v35 = v32;
      v36 = sub_22766B380();
      v37 = sub_22766C8B0();
      v38 = v32;

      if (os_log_type_enabled(v36, v37))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v38;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v36, v37, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v46 + 8))(v34, v45);
      swift_willThrow();
      sub_226EDC474(0);
      sub_2275966B8(v17, type metadata accessor for SyncChangeTag);
    }
  }
}

void sub_22757656C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a6;
  v50 = a5;
  v14 = sub_22766B390();
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = a2;
  v19 = sub_22753BD98(v17, a2, a3, a4, v9, a7, &qword_27D7BF278, &qword_22768BB78, &qword_27D7BF280, sub_2275969EC);
  if (v19)
  {
    if (v19 == 1)
    {
      return;
    }

    goto LABEL_6;
  }

  v47 = v16;
  if (sub_227669C10())
  {
    v20 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
LABEL_6:
    swift_willThrow();
    return;
  }

  v46[0] = v14;
  v46[1] = v7;
  v22 = a4 >> 1;
  v23 = (a4 >> 1) - a3;
  if (a4 >> 1 == a3)
  {
LABEL_15:
    sub_226EDC474(0);
  }

  else
  {
    v49 = "ManagedSocialMediaHandle";
    if (a3 > v22)
    {
      v22 = a3;
    }

    v24 = v22 - a3;
    v25 = v18 + 32 * a3 + 16;
    while (1)
    {
      if (!v24)
      {
        __break(1u);
        return;
      }

      v51 = v23;
      v26 = *(v25 - 16);
      v27 = *(v25 - 8);
      v28 = objc_opt_self();
      sub_226F5E0B4(v26, v27);

      v29 = sub_22766BFD0();
      v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v50];

      type metadata accessor for ManagedStreamingKeyNonce();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        break;
      }

      v32 = v31;
      v33 = sub_227662560();
      [v32 setSeed_];

      v34 = sub_22766BFD0();
      [v32 setWorkoutIdentifier_];

      sub_226EDC420(v26, v27);

      --v24;
      v25 += 32;
      v23 = v51 - 1;
      if (v51 == 1)
      {
        goto LABEL_15;
      }
    }

    v35 = sub_227664DD0();
    sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
    v36 = swift_allocError();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D51000], v35);
    swift_willThrow();
    v38 = v47;
    sub_22766A770();
    v39 = v36;
    v40 = sub_22766B380();
    v41 = sub_22766C8B0();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = v36;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v42 + 4) = v45;
      *v43 = v45;
      _os_log_impl(&dword_226E8E000, v40, v41, "%@", v42, 0xCu);
      sub_226E97D1C(v43, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v43, -1, -1);
      MEMORY[0x22AA9A450](v42, -1, -1);
    }

    (*(v48 + 8))(v38, v46[0]);
    swift_willThrow();
    sub_226EDC474(0);
    sub_226EDC420(v26, v27);
  }
}

void sub_227576A84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, char *a7)
{
  v62 = a7;
  v63 = a4;
  LODWORD(v61) = a6;
  v64 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276624A0();
  v57 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2276653A0();
  v68 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22753D038(a1, a2, a3, v63, v61, v62);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v58 = v15;
    v59 = v13;
    v60 = a2;
    v62 = v18;
    v52 = v16;
    if (sub_227669C10())
    {
      v20 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51010], v20);
      swift_willThrow();
    }

    else
    {
      v22 = v62;
      v63 >>= 1;
      v23 = v52;
      v24 = v68;
      if (v63 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v55 = "ManagedSkillLevelIdentifier";
        v56 = v68 + 16;
        v54 = (v57 + 1);
        v57 = (v68 + 8);
        v25 = v63;
        if (a3 > v63)
        {
          v25 = a3;
        }

        v61 = v25;
        v50 = v11;
        v51 = v10;
        while (1)
        {
          if (v61 == a3)
          {
            __break(1u);
            return;
          }

          (*(v24 + 16))(v22, v60 + *(v24 + 72) * a3, v23);
          v26 = objc_opt_self();
          v27 = sub_22766BFD0();
          v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v64];

          type metadata accessor for ManagedSocialMediaHandle();
          v29 = swift_dynamicCastClass();
          if (!v29)
          {
            break;
          }

          v30 = v29;
          ++a3;
          v31 = sub_227665390();
          v33 = v32;
          v65 = v31;
          v66 = v32;
          v35 = v34 & 1;
          v67 = v34 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BF260, &qword_227673F78);
          sub_227663AD0();
          v36 = sub_22766BFD0();
          sub_226EB2DFC(v31, v33, v35);

          [v30 setPlatform_];

          v22 = v62;
          v37 = v58;
          sub_227665370();
          sub_227662390();
          (*v54)(v37, v59);
          v38 = sub_22766BFD0();

          [v30 setUrl_];

          (*v57)(v22, v23);
          v24 = v68;
          if (v63 == a3)
          {
            goto LABEL_13;
          }
        }

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        sub_22766A770();
        v42 = v40;
        v43 = sub_22766B380();
        v44 = sub_22766C8B0();
        v45 = v40;

        if (os_log_type_enabled(v43, v44))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          v48 = v45;
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v49;
          *v47 = v49;
          _os_log_impl(&dword_226E8E000, v43, v44, "%@", v46, 0xCu);
          sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v47, -1, -1);
          MEMORY[0x22AA9A450](v46, -1, -1);
        }

        (*(v50 + 8))(v53, v51);
        swift_willThrow();
        sub_226EDC474(0);
        (*v57)(v62, v52);
      }
    }
  }
}

void sub_22757714C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF250, &unk_22768BB60, &qword_27D7BF258, sub_2275963AC);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v18 = v47;
    v45 = v16;
    v46 = v14;
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

    v44 = v13;
    v21 = a4 >> 1;
    v22 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v23 = v18;
      v48 = "ManagedSkillLevel";
      if (a3 > v21)
      {
        v21 = a3;
      }

      v24 = v21 - a3;
      v25 = a2 + 16 * a3 + 8;
      while (1)
      {
        if (!v24)
        {
          __break(1u);
          return;
        }

        v26 = objc_opt_self();

        v27 = sub_22766BFD0();
        v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v23];

        type metadata accessor for ManagedSkillLevelIdentifier();
        v29 = swift_dynamicCastClass();
        if (!v29)
        {
          break;
        }

        v30 = v29;
        v31 = sub_22766BFD0();
        [v30 setIdentifier_];

        --v24;
        v25 += 16;
        if (!--v22)
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

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        v41 = v33;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_226E8E000, v37, v38, "%@", v39, 0xCu);
        sub_226E97D1C(v40, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v40, -1, -1);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v46 + 8))(v35, v44);
      swift_willThrow();
      sub_226EDC474(0);
    }
  }
}

void sub_227577608(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(char *, uint64_t), uint64_t a6, char *a7)
{
  v61 = a7;
  v7 = a6;
  v62 = a5;
  v12 = sub_22766B390();
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276633A0();
  v54 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753D178(v18, a2, a3, a4, v7, v61);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = v54;
    v60 = v12;
    v61 = v17;
    v52 = v14;
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
      v58 = v19;
      v59 = a4 >> 1;
      v25 = v60;
      v24 = v61;
      if (a4 >> 1 == a3)
      {
LABEL_7:
        sub_226EDC474(0);
      }

      else
      {
        v26 = v15;
        v27 = v21;
        v55 = "ManagedSessionScores";
        v56 = v21 + 16;
        v28 = v59;
        if (a3 > v59)
        {
          v28 = a3;
        }

        v57 = v28;
        while (1)
        {
          if (v57 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v24, v58 + *(v27 + 72) * a3, v15);
          v30 = objc_opt_self();
          v31 = sub_22766BFD0();
          v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v62];

          type metadata accessor for ManagedSkillLevel();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            break;
          }

          v34 = v33;
          sub_227663370();
          v35 = sub_22766BFD0();

          [v34 setIdentifier_];

          sub_227663390();
          v36 = sub_22766BFD0();

          [v34 setName_];

          sub_227663380();
          if (v37)
          {
            v29 = sub_22766BFD0();
          }

          else
          {
            v29 = 0;
          }

          ++a3;
          [v34 setKind_];

          v24 = v61;
          (*(v21 + 8))(v61, v15);
          v25 = v60;
          v27 = v21;
          if (v59 == a3)
          {
            goto LABEL_7;
          }
        }

        v62 = (v21 + 8);

        v38 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v39 = swift_allocError();
        (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D51000], v38);
        swift_willThrow();
        v41 = v52;
        sub_22766A770();
        v42 = v39;
        v43 = sub_22766B380();
        v44 = sub_22766C8B0();
        v45 = v39;

        if (os_log_type_enabled(v43, v44))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *v46 = 138412290;
          v48 = v45;
          v25 = v60;
          v49 = _swift_stdlib_bridgeErrorToNSError();
          *(v46 + 4) = v49;
          *v47 = v49;
          _os_log_impl(&dword_226E8E000, v43, v44, "%@", v46, 0xCu);
          sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
          v50 = v47;
          v41 = v52;
          MEMORY[0x22AA9A450](v50, -1, -1);
          MEMORY[0x22AA9A450](v46, -1, -1);
        }

        (*(v53 + 8))(v41, v25);
        swift_willThrow();
        sub_226EDC474(0);
        (*v62)(v61, v26);
      }
    }
  }
}

void sub_227577C20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276640A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753D2B8(v18, a2, a3, a4, v56, v57);
  if (v20)
  {
    if (v20 != 1)
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
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v24 = v54;
LABEL_17:
      v54 = v24;
      sub_226EDC474(0);
    }

    else
    {
      v25 = v57;
      v50 = "ManagedScoreSummary";
      v51 = v57 + 16;
      v52 = (v57 + 8);
      if (a3 <= v23)
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v56 = v26;
      v27 = v14;
      v24 = v54;
      v28 = v49;
      while (1)
      {
        if (v56 == a3)
        {
          __break(1u);
          return;
        }

        v29 = v19;
        (*(v25 + 16))(v28, v19 + *(v25 + 72) * a3, v27);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v55];

        type metadata accessor for ManagedSessionScores();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {

          v34 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v24 = swift_allocError();
          (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51000], v34);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_227105770(v33);
        if (v24)
        {
          break;
        }

        ++a3;
        (*v52)(v28, v27);

        v19 = v29;
        v25 = v57;
        if (v23 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v36 = v48;
      sub_22766A770();
      v37 = v24;
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
        v45 = v24;
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
      (*v52)(v49, v27);
    }
  }
}

void sub_227578190(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(char *, uint64_t), uint64_t a6, uint64_t a7)
{
  v57 = a7;
  v7 = a6;
  v58 = a5;
  v12 = sub_22766B390();
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227663C10();
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753D3F8(v18, a2, a3, a4, v7, v57);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v21 = v53;
    v50 = v12;
    v51 = v14;
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
      v57 = v19;
      v24 = a4 >> 1;
      if (a4 >> 1 == a3)
      {
LABEL_19:
        sub_226EDC474(0);
      }

      else
      {
        v25 = v15;
        v26 = v21;
        v54 = "tentArchivedSession";
        v55 = v21 + 16;
        if (a3 <= v24)
        {
          v27 = a4 >> 1;
        }

        else
        {
          v27 = a3;
        }

        v56 = v27;
        while (1)
        {
          if (v56 == a3)
          {
            __break(1u);
            return;
          }

          (*(v26 + 16))(v17, v57 + *(v26 + 72) * a3, v15);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v58];

          type metadata accessor for ManagedScoreSummary();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          ++a3;
          v33 = sub_227663C00();
          v34 = 0x7FFFFFFFLL;
          if (v33 < 0x7FFFFFFF)
          {
            v34 = v33;
          }

          if (v34 <= 0xFFFFFFFF80000000)
          {
            v35 = 0xFFFFFFFF80000000;
          }

          else
          {
            v35 = v34;
          }

          [v32 setElapsedSeconds_];
          sub_227663BE0();
          [v32 setPersonalScore_];
          sub_227663BA0();
          [v32 setCommunityLowerScore_];
          sub_227663BC0();
          [v32 setCommunityLowerMiddleScore_];
          sub_227663BD0();
          [v32 setCommunityUpperMiddleScore_];
          sub_227663BB0();
          [v32 setCommunityUpperScore_];

          (*(v21 + 8))(v17, v15);
          v26 = v21;
          if (v24 == a3)
          {
            goto LABEL_19;
          }
        }

        v58 = (v21 + 8);

        v36 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v37 = swift_allocError();
        (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D51000], v36);
        swift_willThrow();
        v39 = v51;
        sub_22766A770();
        v40 = v37;
        v41 = sub_22766B380();
        v42 = sub_22766C8B0();
        v43 = v37;

        if (os_log_type_enabled(v41, v42))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *v44 = 138412290;
          v46 = v43;
          v47 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 4) = v47;
          *v45 = v47;
          _os_log_impl(&dword_226E8E000, v41, v42, "%@", v44, 0xCu);
          sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
          v48 = v45;
          v39 = v51;
          MEMORY[0x22AA9A450](v48, -1, -1);
          MEMORY[0x22AA9A450](v44, -1, -1);
        }

        (*(v52 + 8))(v39, v50);
        swift_willThrow();
        sub_226EDC474(0);
        (*v58)(v17, v25);
      }
    }
  }
}

void sub_227578774(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v59 = a7;
  LODWORD(v57) = a6;
  v58 = a5;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227667E50();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753D538(v18, a2, a3, a4, v57, v59);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v56 = v15;
    v59 = v17;
    v51 = v11;
    v52 = v13;
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
      v23 = a4 >> 1;
      v24 = v59;
      v25 = v56;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v26 = a4 >> 1;
        v27 = v14;
        v54 = "wsingConnectionRecord";
        v55 = v56 + 16;
        v28 = (v56 + 8);
        if (a3 > v23)
        {
          v23 = a3;
        }

        v57 = v23;
        while (1)
        {
          if (v57 == a3)
          {
            __break(1u);
            return;
          }

          (*(v25 + 16))(v24, v19 + *(v25 + 72) * a3, v27);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v58];

          type metadata accessor for ManagedSampleContentArchivedSession();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          sub_227667E40();
          v34 = v19;
          v35 = sub_22766BFD0();

          [v33 setWorkoutIdentifier_];

          sub_227667E20();
          v36 = sub_22766BFD0();

          [v33 setSessionIdentifier_];

          v19 = v34;
          v24 = v59;
          (*v28)(v59, v27);
          v25 = v56;
          if (v26 == a3)
          {
            goto LABEL_13;
          }
        }

        v59 = v28;

        v37 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v38 = swift_allocError();
        (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D51000], v37);
        swift_willThrow();
        v40 = v52;
        sub_22766A770();
        v41 = v38;
        v42 = sub_22766B380();
        v43 = sub_22766C8B0();
        v44 = v38;

        if (os_log_type_enabled(v42, v43))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = 138412290;
          v47 = v44;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v45 + 4) = v48;
          *v46 = v48;
          _os_log_impl(&dword_226E8E000, v42, v43, "%@", v45, 0xCu);
          sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
          v49 = v46;
          v40 = v52;
          MEMORY[0x22AA9A450](v49, -1, -1);
          MEMORY[0x22AA9A450](v45, -1, -1);
        }

        (*(v53 + 8))(v40, v51);
        swift_willThrow();
        sub_226EDC474(0);
        (*v59)(v24, v27);
      }
    }
  }
}

void sub_227578D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v63 = a7;
  v7 = a6;
  v61 = a5;
  v12 = sub_22766B390();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v52 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662750();
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227668700();
  v62 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753D678(v20, a2, a3, a4, v7, v63);
  if (v22)
  {
    if (v22 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v59 = a4;
    v60 = v14;
    v63 = v19;
    v51 = v17;
    if (sub_227669C10())
    {
      v23 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51010], v23);
LABEL_6:
      swift_willThrow();
      return;
    }

    v59 = v59 >> 1;
    v25 = v51;
    v26 = v63;
    v27 = v62;
    if (v59 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v28 = v16;
      v55 = "ManagedRecommendation";
      v56 = v62 + 16;
      v29 = (v58 + 8);
      v30 = v59;
      if (a3 > v59)
      {
        v30 = a3;
      }

      v57 = (v62 + 8);
      v58 = v30;
      while (1)
      {
        if (v58 == a3)
        {
          __break(1u);
          return;
        }

        (*(v27 + 16))(v26, v21 + *(v27 + 72) * a3, v25);
        v31 = objc_opt_self();
        v32 = sub_22766BFD0();
        v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v61];

        type metadata accessor for ManagedRemoteBrowsingConnectionRecord();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {
          break;
        }

        v35 = v34;
        ++a3;
        sub_2276686E0();
        v36 = v21;
        v37 = sub_22766BFD0();

        [v35 setParticipantIdentifier_];

        v21 = v36;
        sub_2276686F0();
        v38 = sub_2276626A0();
        v26 = v63;
        (*v29)(v28, v60);
        [v35 setTimestamp_];

        (*v57)(v26, v25);
        v27 = v62;
        if (v59 == a3)
        {
          goto LABEL_14;
        }
      }

      v39 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v40 = swift_allocError();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
      swift_willThrow();
      v42 = v52;
      sub_22766A770();
      v43 = v40;
      v44 = sub_22766B380();
      v45 = sub_22766C8B0();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v46 = 138412290;
        v48 = v40;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v46 + 4) = v49;
        *v47 = v49;
        _os_log_impl(&dword_226E8E000, v44, v45, "%@", v46, 0xCu);
        sub_226E97D1C(v47, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v47, -1, -1);
        MEMORY[0x22AA9A450](v46, -1, -1);
      }

      (*(v53 + 8))(v42, v54);
      swift_willThrow();
      sub_226EDC474(0);
      (*v57)(v63, v51);
    }
  }
}

void sub_227579390(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227664410();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753D7B8(v18, a2, a3, a4, v56, v57);
  if (v20)
  {
    if (v20 != 1)
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
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v23 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v24 = v54;
LABEL_17:
      v54 = v24;
      sub_226EDC474(0);
    }

    else
    {
      v25 = v57;
      v50 = "ManagedRecentSearchTerm";
      v51 = v57 + 16;
      v52 = (v57 + 8);
      if (a3 <= v23)
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v56 = v26;
      v27 = v14;
      v24 = v54;
      v28 = v49;
      while (1)
      {
        if (v56 == a3)
        {
          __break(1u);
          return;
        }

        v29 = v19;
        (*(v25 + 16))(v28, v19 + *(v25 + 72) * a3, v27);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v55];

        type metadata accessor for ManagedRecommendation();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {

          v34 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v24 = swift_allocError();
          (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277D51000], v34);
          swift_willThrow();
          goto LABEL_21;
        }

        sub_2274F8D04(v33);
        if (v24)
        {
          break;
        }

        ++a3;
        (*v52)(v28, v27);

        v19 = v29;
        v25 = v57;
        if (v23 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v36 = v48;
      sub_22766A770();
      v37 = v24;
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
        v45 = v24;
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
      (*v52)(v49, v27);
    }
  }
}

void sub_227579900(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, char *a7)
{
  v61 = a7;
  v62 = a5;
  LODWORD(v60) = a6;
  v11 = sub_22766B390();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662750();
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227664E20();
  v63 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753D8F8(a1, a2, a3, a4, v60, v61);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v57 = v16;
    v58 = v14;
    v61 = v19;
    v59 = a2;
    v49 = v13;
    v50 = v17;
    if (sub_227669C10())
    {
      v21 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51010], v21);
LABEL_6:
      swift_willThrow();
      return;
    }

    v60 = a4 >> 1;
    v23 = v50;
    v24 = v61;
    v25 = v63;
    if (a4 >> 1 == a3)
    {
LABEL_16:
      sub_226EDC474(0);
    }

    else
    {
      v54 = "isplayPreference";
      v55 = v63 + 16;
      v26 = (v56 + 8);
      v53 = (v63 + 8);
      v27 = v60;
      if (a3 > v60)
      {
        v27 = a3;
      }

      v56 = v27;
      while (1)
      {
        if (v56 == a3)
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          return;
        }

        (*(v25 + 16))(v24, v59 + *(v25 + 72) * a3, v23);
        v28 = objc_opt_self();
        v29 = sub_22766BFD0();
        v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v62];

        type metadata accessor for ManagedRecentSearchTerm();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          break;
        }

        v32 = v31;
        sub_227664E00();
        v33 = sub_22766BFD0();

        [v32 setTerm_];

        v34 = v57;
        sub_227664DE0();
        v35 = sub_2276626A0();
        (*v26)(v34, v58);
        [v32 setDateCreated_];

        sub_227664E10();
        v36 = sub_227669410();
        if (v36 < 0xFFFFFFFF80000000)
        {
          goto LABEL_22;
        }

        if (v36 > 0x7FFFFFFF)
        {
          goto LABEL_23;
        }

        ++a3;
        [v32 setPlatform_];

        v24 = v61;
        (*v53)(v61, v23);
        v25 = v63;
        if (v60 == a3)
        {
          goto LABEL_16;
        }
      }

      v37 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v38 = swift_allocError();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D51000], v37);
      swift_willThrow();
      v40 = v49;
      sub_22766A770();
      v41 = v38;
      v42 = sub_22766B380();
      v43 = sub_22766C8B0();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v38;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_226E8E000, v42, v43, "%@", v44, 0xCu);
        sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v45, -1, -1);
        MEMORY[0x22AA9A450](v44, -1, -1);
      }

      (*(v51 + 8))(v40, v52);
      swift_willThrow();
      sub_226EDC474(0);
      (*v53)(v61, v50);
    }
  }
}