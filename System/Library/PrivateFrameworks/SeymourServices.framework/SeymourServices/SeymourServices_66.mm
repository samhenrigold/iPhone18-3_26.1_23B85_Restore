void sub_227579F8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, char *a7)
{
  v62 = a7;
  v63 = a4;
  LODWORD(v61) = a6;
  v64 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227668D10();
  v57 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2276675F0();
  v68 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22753DA38(a1, a2, a3, v63, v61, v62);
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
        v55 = "ManagedProgramCompletion";
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

          type metadata accessor for ManagedProgressDisplayPreference();
          v29 = swift_dynamicCastClass();
          if (!v29)
          {
            break;
          }

          v30 = v29;
          ++a3;
          v31 = sub_2276675E0();
          v33 = v32;
          v65 = v31;
          v66 = v32;
          v35 = v34 & 1;
          v67 = v34 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBF0, &qword_22768B7B0);
          sub_227663AD0();
          v36 = sub_22766BFD0();
          sub_226EB2DFC(v31, v33, v35);

          [v30 setBehavior_];

          v22 = v62;
          v37 = v58;
          sub_2276675C0();
          sub_227668D00();
          (*v54)(v37, v59);
          v38 = sub_22766BFD0();

          [v30 setModalityConstraint_];

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

void sub_22757A654(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v60 = a7;
  v61 = a5;
  LODWORD(v59) = a6;
  v11 = sub_22766B390();
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662750();
  v57 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2276652D0();
  v62 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753DB78(a1, a2, a3, a4, v59, v60);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v58 = v16;
    v60 = a2;
    v50 = v13;
    v51 = v17;
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

    v59 = a4 >> 1;
    v23 = v51;
    v24 = v62;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v25 = v19;
      v54 = "ManagedPrivacyAcknowledgement";
      v55 = v62 + 16;
      v26 = (v57 + 8);
      v27 = v59;
      if (a3 > v59)
      {
        v27 = a3;
      }

      v56 = (v62 + 8);
      v57 = v27;
      while (1)
      {
        if (v57 == a3)
        {
          __break(1u);
          return;
        }

        (*(v24 + 16))(v25, v60 + *(v24 + 72) * a3, v23);
        v28 = objc_opt_self();
        v29 = sub_22766BFD0();
        v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v61];

        type metadata accessor for ManagedProgramCompletion();
        v31 = swift_dynamicCastClass();
        if (!v31)
        {
          break;
        }

        v32 = v31;
        ++a3;
        sub_227665290();
        v33 = sub_22766BFD0();

        [v32 setIdentifier_];

        sub_2276652B0();
        v34 = sub_22766BFD0();

        [v32 setProgramIdentifier_];

        sub_2276652C0();
        v35 = sub_22766BFD0();

        [v32 setCompletingSessionIdentifier_];

        v36 = v58;
        sub_2276652A0();
        v37 = sub_2276626A0();
        (*v26)(v36, v14);
        [v32 setCompletionDate_];

        (*v56)(v25, v23);
        v24 = v62;
        if (v59 == a3)
        {
          goto LABEL_14;
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

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        v47 = v39;
        v48 = _swift_stdlib_bridgeErrorToNSError();
        *(v45 + 4) = v48;
        *v46 = v48;
        _os_log_impl(&dword_226E8E000, v43, v44, "%@", v45, 0xCu);
        sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v46, -1, -1);
        MEMORY[0x22AA9A450](v45, -1, -1);
      }

      (*(v52 + 8))(v41, v53);
      swift_willThrow();
      sub_226EDC474(0);
      (*v56)(v25, v51);
    }
  }
}

void sub_22757ACFC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v58 = a5;
  v61 = a7;
  LODWORD(v60) = a6;
  v11 = sub_22766B390();
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666710();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753DCB8(a1, a2, a3, a4, v60, v61);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v61 = v15;
    v57 = a2;
    v19 = v58;
    v51 = v13;
    v52 = v17;
    v50 = v11;
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

    v22 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v23 = v59;
LABEL_17:
      v59 = v23;
      sub_226EDC474(0);
    }

    else
    {
      v24 = v61;
      v53 = "ManagedPlaylistItem";
      v54 = v61 + 16;
      v55 = (v61 + 8);
      if (a3 <= v22)
      {
        v25 = a4 >> 1;
      }

      else
      {
        v25 = a3;
      }

      v60 = v25;
      v26 = v14;
      v23 = v59;
      v27 = v52;
      v28 = v19;
      while (1)
      {
        if (v60 == a3)
        {
          __break(1u);
          return;
        }

        (*(v24 + 16))(v27, v57 + *(v24 + 72) * a3, v26);
        v29 = objc_opt_self();
        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v28];

        type metadata accessor for ManagedPrivacyAcknowledgement();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {

          v35 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v23 = swift_allocError();
          (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
          swift_willThrow();
          goto LABEL_21;
        }

        v33 = v32;
        v34 = sub_226EB1040(&qword_2813A5698, MEMORY[0x277D52578], &unk_2276774F0);
        (*(v34 + 64))(v33, v28, v26, v34);
        if (v23)
        {
          break;
        }

        ++a3;
        (*v55)(v27, v26);

        v24 = v61;
        if (v22 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v37 = v51;
      sub_22766A770();
      v38 = v23;
      v39 = sub_22766B380();
      v40 = sub_22766C8B0();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v50;
      v43 = v56;
      if (v41)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v23;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_226E8E000, v39, v40, "%@", v44, 0xCu);
        sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
        v48 = v45;
        v37 = v51;
        MEMORY[0x22AA9A450](v48, -1, -1);
        MEMORY[0x22AA9A450](v44, -1, -1);
      }

      (*(v43 + 8))(v37, v42);
      swift_willThrow();
      sub_226EDC474(0);
      (*v55)(v52, v26);
    }
  }
}

void sub_22757B2D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227663AB0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753DDF8(v18, a2, a3, a4, v56, v57);
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
      v50 = "oucher";
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

        type metadata accessor for ManagedPlaylistItem();
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

        sub_227000224(v33);
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

void sub_22757B840(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v67 = a5;
  v70 = a7;
  LODWORD(v69) = a6;
  v11 = sub_22766B390();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662750();
  v62 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227669480();
  v68 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753DF38(a1, a2, a3, a4, v69, v70);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v63 = v16;
    v64 = v14;
    v65 = v19;
    v70 = v17;
    v56 = v13;
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
      v24 = v66;
LABEL_17:
      v66 = v24;
      sub_226EDC474(0);
    }

    else
    {
      v25 = v68;
      v58 = a2;
      v59 = v68 + 16;
      v57 = v62 + 1;
      v62 = (v68 + 8);
      if (a3 <= v23)
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v69 = v26;
      v24 = v66;
      v27 = v70;
      while (1)
      {
        if (v69 == a3)
        {
          __break(1u);
          return;
        }

        v28 = a2 + *(v25 + 72) * a3;
        v29 = v65;
        (*(v25 + 16))(v65, v28, v27);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = v67;
        v33 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v67];

        type metadata accessor for ManagedPlaylist();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {

          v43 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v24 = swift_allocError();
          (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51000], v43);
          swift_willThrow();
          goto LABEL_21;
        }

        v35 = v34;
        sub_227669430();
        v36 = sub_22766BFD0();

        [v35 setIdentifier_];

        sub_227669450();
        v37 = sub_22766BFD0();

        [v35 setName_];

        v38 = sub_227669460();
        sub_22764A174(v32, v38);
        if (v24)
        {
          break;
        }

        v40 = v39;
        ++a3;

        [v35 setItems_];

        v41 = v63;
        sub_227669440();
        v42 = sub_2276626A0();
        (*v57)(v41, v64);
        [v35 setDateCreated_];

        v27 = v70;
        (*v62)(v29, v70);
        a2 = v58;
        v25 = v68;
        if (v23 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v45 = v56;
      sub_22766A770();
      v46 = v24;
      v47 = sub_22766B380();
      v48 = sub_22766C8B0();

      v49 = os_log_type_enabled(v47, v48);
      v51 = v60;
      v50 = v61;
      if (v49)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = v24;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_226E8E000, v47, v48, "%@", v52, 0xCu);
        sub_226E97D1C(v53, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v52, -1, -1);
      }

      (*(v51 + 8))(v45, v50);
      swift_willThrow();
      sub_226EDC474(0);
      (*v62)(v29, v70);
    }
  }
}

void sub_22757BF2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v70 = a7;
  v7 = a6;
  v69 = a5;
  v12 = sub_22766B390();
  v62 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227664900();
  v63 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = a4;
  v21 = sub_22753E078(v18, v19, a3, a4, v7, v70);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v70 = v17;
    v22 = v63;
    v61 = v14;
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
      v60 = v12;
      v68 = a4 >> 1;
      v25 = v70;
      if (v20 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v26 = v15;
        v27 = v22;
        v64 = "zationPrivacyPreference";
        v65 = v22 + 16;
        v28 = v68;
        if (a3 > v68)
        {
          v28 = a3;
        }

        v66 = (v22 + 8);
        v67 = v28;
        while (1)
        {
          if (v67 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v25, v19 + *(v27 + 72) * a3, v26);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v69];

          type metadata accessor for ManagedPlaybackVoucher();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          v34 = sub_2276648D0();
          v35 = v26;
          v36 = v19;
          v38 = v37;
          v39 = sub_227662560();
          sub_226EDC420(v34, v38);
          [v33 setFinalizedToken_];

          v40 = sub_2276648C0();
          v42 = v41;
          v43 = sub_227662560();
          sub_226EDC420(v40, v42);
          [v33 setPrivateSeed_];

          v19 = v36;
          v26 = v35;
          v27 = v22;
          sub_2276648F0();
          v44 = sub_22766BFD0();

          [v33 setPublicKeyVersion_];

          sub_2276648B0();
          v45 = sub_22766BFD0();

          [v33 setPublicInfo_];

          v25 = v70;
          (*v66)(v70, v26);
          if (v68 == a3)
          {
            goto LABEL_13;
          }
        }

        v46 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v47 = swift_allocError();
        (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D51000], v46);
        swift_willThrow();
        v49 = v61;
        sub_22766A770();
        v50 = v47;
        v51 = sub_22766B380();
        v52 = sub_22766C8B0();
        v53 = v47;

        if (os_log_type_enabled(v51, v52))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412290;
          v56 = v53;
          v57 = _swift_stdlib_bridgeErrorToNSError();
          *(v54 + 4) = v57;
          *v55 = v57;
          _os_log_impl(&dword_226E8E000, v51, v52, "%@", v54, 0xCu);
          sub_226E97D1C(v55, &unk_27D7B9660, &qword_2276740C0);
          v58 = v55;
          v25 = v70;
          MEMORY[0x22AA9A450](v58, -1, -1);
          MEMORY[0x22AA9A450](v54, -1, -1);
        }

        (*(v62 + 8))(v49, v60);
        swift_willThrow();
        sub_226EDC474(0);
        (*v66)(v25, v26);
      }
    }
  }
}

void sub_22757C580(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v69 = a7;
  v7 = a6;
  v75 = a5;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  v60 = v12;
  v61 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227668A00();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a3;
  v22 = a4;
  v70 = a2;
  v23 = sub_22753E1B8(v20, a2, v21, a4, v7, v69);
  if (v23)
  {
    if (v23 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v24 = v15;
    v69 = v17;
    if (sub_227669C10())
    {
      v25 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51010], v25);
      swift_willThrow();
    }

    else
    {
      v68 = v22 >> 1;
      v27 = v69;
      if (v22 >> 1 == v21)
      {
LABEL_15:
        sub_226EDC474(0);
      }

      else
      {
        v28 = v24;
        v65 = "ManagedOnboardingSurveyResult";
        v66 = v69 + 16;
        v63 = v24;
        v64 = (v69 + 8);
        v29 = v68;
        if (v21 > v68)
        {
          v29 = v21;
        }

        v67 = v29;
        v62 = v16;
        while (1)
        {
          if (v67 == v21)
          {
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
            return;
          }

          (*(v27 + 16))(v19, v70 + *(v27 + 72) * v21, v16);
          v30 = objc_opt_self();
          v31 = sub_22766BFD0();
          v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v75];

          type metadata accessor for ManagedPersonalizationPrivacyPreference();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            break;
          }

          v34 = v33;
          v72 = sub_2276689C0();
          LOBYTE(v73) = v35 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE158, &unk_227688CA0);
          sub_227663AD0();
          if (v71 < 0xFFFFFFFF80000000)
          {
            goto LABEL_21;
          }

          if (v71 > 0x7FFFFFFF)
          {
            goto LABEL_22;
          }

          v36 = v21 + 1;
          [v34 setState_];
          v37 = sub_2276689F0();
          v39 = v38;
          v72 = v37;
          v73 = v38;
          v41 = v40 & 1;
          v74 = v40 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BE990, &qword_22768B6F0);
          sub_227663AD0();
          v42 = v19;
          v43 = sub_22766BFD0();
          v44 = v37;
          v21 = v36;
          v45 = v39;
          v46 = v41;
          v16 = v62;
          v28 = v63;
          sub_226EB2DFC(v44, v45, v46);

          [v34 setVersion_];

          v19 = v42;
          v27 = v69;
          (*v64)(v42, v16);
          if (v68 == v36)
          {
            goto LABEL_15;
          }
        }

        v75 = v19;

        v47 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v48 = swift_allocError();
        (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D51000], v47);
        swift_willThrow();
        sub_22766A770();
        v50 = v48;
        v51 = sub_22766B380();
        v52 = sub_22766C8B0();
        v53 = v48;

        if (os_log_type_enabled(v51, v52))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = 138412290;
          v56 = v53;
          v57 = _swift_stdlib_bridgeErrorToNSError();
          *(v54 + 4) = v57;
          *v55 = v57;
          _os_log_impl(&dword_226E8E000, v51, v52, "%@", v54, 0xCu);
          sub_226E97D1C(v55, &unk_27D7B9660, &qword_2276740C0);
          v58 = v55;
          v28 = v63;
          MEMORY[0x22AA9A450](v58, -1, -1);
          MEMORY[0x22AA9A450](v54, -1, -1);
        }

        (*(v61 + 8))(v28, v60);
        swift_willThrow();
        sub_226EDC474(0);
        (*v64)(v75, v16);
      }
    }
  }
}

void sub_22757CBCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v69 = a5;
  v72 = a7;
  LODWORD(v71) = a6;
  v11 = sub_22766B390();
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662750();
  v65 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227666650();
  v70 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753E2F8(a1, a2, a3, a4, v71, v72);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v66 = v16;
    v67 = v14;
    v72 = v17;
    v58 = v13;
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
      v24 = v68;
LABEL_17:
      v68 = v24;
      sub_226EDC474(0);
    }

    else
    {
      v25 = v70;
      v61 = v70 + 16;
      v62 = a2;
      v59 = v65 + 1;
      v60 = "gModalityIdentifier";
      v65 = (v70 + 8);
      if (a3 <= v23)
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v71 = v26;
      v24 = v68;
      v27 = v72;
      v28 = v19;
      while (1)
      {
        if (v71 == a3)
        {
          __break(1u);
          return;
        }

        (*(v25 + 16))(v28, v62 + *(v25 + 72) * a3, v27);
        v29 = objc_opt_self();
        v30 = sub_22766BFD0();
        v31 = v69;
        v32 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v69];

        type metadata accessor for ManagedOnboardingSurveyResult();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {

          v45 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v24 = swift_allocError();
          (*(*(v45 - 8) + 104))(v46, *MEMORY[0x277D51000], v45);
          swift_willThrow();
          goto LABEL_21;
        }

        v34 = v33;
        sub_227666620();
        v35 = sub_22766BFD0();

        [v34 setIdentifier_];

        v36 = v66;
        sub_227666630();
        v37 = sub_2276626A0();
        (*v59)(v36, v67);
        [v34 setCompletedDate_];

        v38 = sub_227666640();
        v39 = v24;
        sub_2272D6818(v38);
        v41 = v40;

        v42 = sub_226F3D770(v41);

        sub_227648160(v31, v42);
        v24 = v39;
        if (v39)
        {
          break;
        }

        v44 = v43;
        ++a3;

        [v34 setSelectedModalityIdentifiers_];

        v27 = v72;
        (*v65)(v28, v72);
        v25 = v70;
        if (v23 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v47 = v58;
      sub_22766A770();
      v48 = v24;
      v49 = sub_22766B380();
      v50 = sub_22766C8B0();

      v51 = os_log_type_enabled(v49, v50);
      v53 = v63;
      v52 = v64;
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
        MEMORY[0x22AA9A450](v54, -1, -1);
      }

      (*(v53 + 8))(v47, v52);
      swift_willThrow();
      sub_226EDC474(0);
      (*v65)(v28, v72);
    }
  }
}

void sub_22757D2A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF140, &qword_22768BAE0, &qword_27D7BF148, sub_227596EEC);
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
      v48 = "ManagedMusicTrack";
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

        type metadata accessor for ManagedOnboardingModalityIdentifier();
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

void sub_22757D760(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227663350();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753E438(v18, a2, a3, a4, v56, v57);
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
      v50 = "ManagedMusicGenreIdentifier";
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

        type metadata accessor for ManagedMusicTrack();
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

        sub_2275D53A4(v33);
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

void sub_22757DCD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF120, &qword_22768BAD0, &qword_27D7BF128, sub_227596400);
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
      v48 = "ManagedMusicGenre";
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

        type metadata accessor for ManagedMusicGenreIdentifier();
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

void sub_22757E18C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v59 = a7;
  LODWORD(v57) = a6;
  v58 = a5;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276632A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753E578(v18, a2, a3, a4, v57, v59);
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
        v54 = "ManagedModalityIdentifier";
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

          type metadata accessor for ManagedMusicGenre();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          sub_227663280();
          v34 = v19;
          v35 = sub_22766BFD0();

          [v33 setIdentifier_];

          sub_227663290();
          v36 = sub_22766BFD0();

          [v33 setName_];

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

void sub_22757E754(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF100, &qword_22768BAC0, &qword_27D7BF108, sub_227596454);
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
      v48 = "ManagedMetricsDisplayPreference";
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

        type metadata accessor for ManagedModalityIdentifier();
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

void sub_22757EC10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, char *a7)
{
  v62 = a7;
  v63 = a4;
  LODWORD(v61) = a6;
  v64 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227668D10();
  v57 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227667170();
  v68 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22753E6B8(a1, a2, a3, v63, v61, v62);
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
        v55 = "ManagedMeditationActivityType";
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

          type metadata accessor for ManagedMetricsDisplayPreference();
          v29 = swift_dynamicCastClass();
          if (!v29)
          {
            break;
          }

          v30 = v29;
          ++a3;
          v31 = sub_227667160();
          v33 = v32;
          v65 = v31;
          v66 = v32;
          v35 = v34 & 1;
          v67 = v34 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEB10, &qword_22768B7C0);
          sub_227663AD0();
          v36 = sub_22766BFD0();
          sub_226EB2DFC(v31, v33, v35);

          [v30 setBehavior_];

          v22 = v62;
          v37 = v58;
          sub_227667140();
          sub_227668D00();
          (*v54)(v37, v59);
          v38 = sub_22766BFD0();

          [v30 setModalityConstraint_];

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

void sub_22757F2D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v68 = a5;
  v71 = a7;
  LODWORD(v70) = a6;
  v11 = sub_22766B390();
  v60 = *(v11 - 8);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227669180();
  v62 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227663680();
  v69 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22753E7F8(a1, a2, a3, a4, v70, v71);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v63 = v16;
    v64 = v14;
    v65 = a2;
    v66 = v19;
    v71 = v17;
    v56 = v13;
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
      v24 = v67;
LABEL_17:
      v67 = v24;
      sub_226EDC474(0);
    }

    else
    {
      v25 = v69;
      v58 = "ManagedLanguageDisclaimer";
      v59 = v69 + 16;
      v57 = v62 + 1;
      v62 = (v69 + 8);
      if (a3 <= v23)
      {
        v26 = a4 >> 1;
      }

      else
      {
        v26 = a3;
      }

      v70 = v26;
      v27 = v66;
      v24 = v67;
      v28 = v71;
      while (1)
      {
        if (v70 == a3)
        {
          __break(1u);
          return;
        }

        (*(v25 + 16))(v27, v65 + *(v25 + 72) * a3, v28);
        v29 = objc_opt_self();
        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v68];

        type metadata accessor for ManagedMediaMoment();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {

          v42 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v24 = swift_allocError();
          (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51000], v42);
          swift_willThrow();
          goto LABEL_21;
        }

        v33 = v32;
        sub_227663630();
        v34 = sub_22766BFD0();

        [v33 setIdentifier_];

        sub_227663670();
        [v33 setStartTime_];
        sub_227663650();
        [v33 setDuration_];
        v35 = v63;
        sub_227663640();
        sub_226EB1040(&qword_27D7BB870, MEMORY[0x277D53A78], MEMORY[0x277D53A68]);
        v36 = v64;
        v37 = sub_2276683C0();
        if (v24)
        {
          break;
        }

        v39 = v37;
        v40 = v38;
        ++a3;
        (*v57)(v35, v36);
        v41 = sub_227662560();
        sub_226EDC420(v39, v40);
        [v33 setArtwork_];

        v27 = v66;
        v28 = v71;
        (*v62)(v66, v71);
        v25 = v69;
        if (v23 == a3)
        {
          goto LABEL_17;
        }
      }

      (*v57)(v35, v36);
LABEL_21:
      v44 = v56;
      sub_22766A770();
      v45 = v24;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();

      v48 = os_log_type_enabled(v46, v47);
      v50 = v60;
      v49 = v61;
      if (v48)
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        *v51 = 138412290;
        v53 = v24;
        v54 = _swift_stdlib_bridgeErrorToNSError();
        *(v51 + 4) = v54;
        *v52 = v54;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v51, 0xCu);
        sub_226E97D1C(v52, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v52, -1, -1);
        MEMORY[0x22AA9A450](v51, -1, -1);
      }

      (*(v50 + 8))(v44, v49);
      swift_willThrow();
      sub_226EDC474(0);
      (*v62)(v66, v71);
    }
  }
}

void sub_22757F9E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v68 = a7;
  LODWORD(v67) = a6;
  v66 = a5;
  v11 = sub_22766B390();
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276655A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753E938(v18, a2, a3, a4, v67, v68);
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
    v59 = v13;
    v60 = v14;
    v58 = v11;
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
      v23 = v69;
LABEL_17:
      v69 = v23;
      sub_226EDC474(0);
    }

    else
    {
      v24 = v68;
      v62 = "ManagedKeyCertificate";
      v63 = v68 + 16;
      v64 = (v68 + 8);
      if (a3 <= (a4 >> 1))
      {
        v25 = a4 >> 1;
      }

      else
      {
        v25 = a3;
      }

      v67 = v25;
      v26 = v60;
      v23 = v69;
      v27 = v17;
      v61 = a4 >> 1;
      while (1)
      {
        if (v67 == a3)
        {
          __break(1u);
          return;
        }

        v69 = v23;
        v28 = v26;
        (*(v24 + 16))(v27, v19 + *(v24 + 72) * a3, v26);
        v29 = objc_opt_self();
        v30 = sub_22766BFD0();
        v31 = v66;
        v32 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v66];

        type metadata accessor for ManagedLanguageDisclaimer();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {
          v42 = v27;

          v43 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v23 = swift_allocError();
          (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D51000], v43);
          swift_willThrow();
          goto LABEL_21;
        }

        v34 = v33;
        v35 = v19;
        sub_227665570();
        v36 = sub_22766BFD0();

        [v34 setName_];

        sub_227665560();
        v37 = sub_22766BFD0();

        [v34 setLanguageCode_];

        [v34 setIsPrimary_];
        v38 = sub_227665550();
        v39 = v69;
        sub_227647448(v31, v38);
        v23 = v39;
        if (v39)
        {
          break;
        }

        v41 = v40;
        ++a3;

        [v34 setCapabilities_];

        v26 = v28;
        (*v64)(v27, v28);
        v19 = v35;
        v24 = v68;
        if (v61 == a3)
        {
          goto LABEL_17;
        }
      }

      v42 = v27;

LABEL_21:
      v45 = v59;
      sub_22766A770();
      v46 = v23;
      v47 = sub_22766B380();
      v48 = sub_22766C8B0();

      v49 = os_log_type_enabled(v47, v48);
      v50 = v58;
      v51 = v65;
      if (v49)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412290;
        v54 = v23;
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 4) = v55;
        *v53 = v55;
        _os_log_impl(&dword_226E8E000, v47, v48, "%@", v52, 0xCu);
        sub_226E97D1C(v53, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v53, -1, -1);
        v56 = v52;
        v45 = v59;
        MEMORY[0x22AA9A450](v56, -1, -1);
      }

      (*(v51 + 8))(v45, v50);
      swift_willThrow();
      sub_226EDC474(0);
      (*v64)(v42, v60);
    }
  }
}

void sub_227580040(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v49 = a7;
  LODWORD(v48) = a6;
  v50 = a5;
  v11 = sub_22766B390();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for KeyCertificate(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753EA78(a1, a2, a3, a4, v48, v49);
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
      v47 = "ManagedHealthKitWorkout";
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

        sub_227596718(a2 + *(v49 + 72) * a3, v22, type metadata accessor for KeyCertificate);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v50];

        type metadata accessor for ManagedKeyCertificate();
        v27 = swift_dynamicCastClass();
        if (!v27)
        {
          break;
        }

        v28 = v27;
        ++a3;
        sub_227662390();
        v29 = sub_22766BFD0();

        [v28 setRemoteURL_];

        v30 = sub_227662560();
        [v28 setData_];

        sub_2275966B8(v22, type metadata accessor for KeyCertificate);
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
      sub_2275966B8(v22, type metadata accessor for KeyCertificate);
    }
  }
}

void sub_2275805D4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227664CA0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753EBB8(a1, a2, a3, a4, v56, v57);
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
      v50 = "StandaloneMindfulSessionJob";
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

        type metadata accessor for ManagedHealthKitWorkout();
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

        sub_226F79544(v33, v31);
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

void sub_227580B48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227668390();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753ECF8(v18, a2, a3, a4, v56, v57);
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
      v50 = "SessionReference";
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

        type metadata accessor for ManagedHealthKitStandaloneWorkoutJob();
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

        sub_226F5D3A8(v33);
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

void sub_2275810B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v59 = a7;
  LODWORD(v57) = a6;
  v58 = a5;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276674C0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753EE38(v18, a2, a3, a4, v57, v59);
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
        v54 = "ManagedHealthKitMindfulSession";
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

          type metadata accessor for ManagedHealthKitSessionReference();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          sub_227667490();
          v34 = v19;
          v35 = sub_22766BFD0();

          [v33 setSessionIdentifier_];

          sub_2276674B0();
          v36 = sub_22766BFD0();

          [v33 setWorkoutIdentifier_];

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

void sub_227581680(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227668E30();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753EF78(a1, a2, a3, a4, v56, v57);
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
      v50 = "StandaloneWorkoutJob";
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

        type metadata accessor for ManagedHealthKitStandaloneMindfulSessionJob();
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

        sub_22764CD64(v33, v31);
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

void sub_227581BF4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666BF0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753F0B8(v18, a2, a3, a4, v56, v57);
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
      v50 = "ManagedHealthKitActivityType";
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

        type metadata accessor for ManagedHealthKitMindfulSession();
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

        sub_2275D7AC0(v33);
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

void sub_227582164(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF040, &qword_22768BA68, &qword_27D7BF048, sub_22759625C);
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
    if (v22)
    {
      v23 = v18;
      v48 = "ManagedEstimatedCalories";
      if (a3 > v21)
      {
        v21 = a3;
      }

      v24 = v21 - a3;
      v25 = (a2 + 8 * a3);
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

        type metadata accessor for ManagedHealthKitActivityType();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          break;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v26;
        }

        [v30 setValue_];

        --v24;
        ++v25;
        if (!--v22)
        {
          goto LABEL_17;
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

    else
    {
LABEL_17:
      sub_226EDC474(0);
    }
  }
}

void sub_2275825F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(char *, uint64_t), int a6, uint64_t a7)
{
  v56 = a7;
  LODWORD(v55) = a6;
  v57 = a5;
  v11 = sub_22766B390();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227665100();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = a4;
  v21 = sub_22753F1F8(v18, v19, a3, a4, v55, v56);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v56 = v15;
    v50 = v13;
    v51 = v11;
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
      v24 = v19;
      v25 = a4 >> 1;
      v26 = v56;
      if (a4 >> 1 == a3)
      {
LABEL_17:
        sub_226EDC474(0);
      }

      else
      {
        v27 = v14;
        v28 = v17;
        v53 = "ManagedEquipmentIdentifier";
        v54 = v56 + 16;
        v29 = (v56 + 8);
        if (a3 <= v25)
        {
          v30 = v20 >> 1;
        }

        else
        {
          v30 = a3;
        }

        v55 = v30;
        while (1)
        {
          if (v55 == a3)
          {
            __break(1u);
            return;
          }

          (*(v26 + 16))(v28, v24 + *(v26 + 72) * a3, v27);
          v31 = objc_opt_self();
          v32 = sub_22766BFD0();
          v33 = [v31 insertNewObjectForEntityForName:v32 inManagedObjectContext:v57];

          type metadata accessor for ManagedEstimatedCalories();
          v34 = swift_dynamicCastClass();
          if (!v34)
          {
            break;
          }

          v35 = v34;
          ++a3;
          v36 = sub_2276650C0();
          if (v36 >= 0x7FFFFFFF)
          {
            v37 = 0x7FFFFFFFLL;
          }

          else
          {
            v37 = v36;
          }

          [v35 setActivityType_];
          sub_2276650E0();
          [v35 setActiveCalorieRate_];
          sub_2276650D0();
          [v35 setBasalCalorieRate_];

          (*v29)(v28, v27);
          v26 = v56;
          if (v25 == a3)
          {
            goto LABEL_17;
          }
        }

        v57 = v29;

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
        (*v57)(v28, v27);
      }
    }
  }
}

void sub_227582B84(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BF020, &qword_22768BA58, &qword_27D7BF028, sub_2275964A8);
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
      v48 = "ManagedEquipment";
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

        type metadata accessor for ManagedEquipmentIdentifier();
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

void sub_227583040(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v59 = a7;
  LODWORD(v57) = a6;
  v58 = a5;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227669580();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753F338(v18, a2, a3, a4, v57, v59);
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
        v54 = "ManagedEngagementBadge";
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

          type metadata accessor for ManagedEquipment();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          sub_227669560();
          v34 = v19;
          v35 = sub_22766BFD0();

          [v33 setIdentifier_];

          sub_227669570();
          v36 = sub_22766BFD0();

          [v33 setName_];

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

void sub_227583608(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276646D0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753F478(v18, a2, a3, a4, v56, v57);
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
      v50 = "ManagedDirtySyncZone";
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

        type metadata accessor for ManagedEngagementBadge();
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

        sub_22736D340(v33);
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

void sub_227583B78(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v49 = a7;
  LODWORD(v48) = a6;
  v50 = a5;
  v11 = sub_22766B390();
  v46 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DirtySyncZone(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753F5B8(a1, a2, a3, a4, v48, v49);
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
      v47 = "ManagedContributorIdentifier";
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

        sub_227596718(a2 + *(v49 + 72) * a3, v22, type metadata accessor for DirtySyncZone);
        v24 = objc_opt_self();
        v25 = sub_22766BFD0();
        v26 = [v24 insertNewObjectForEntityForName:v25 inManagedObjectContext:v50];

        type metadata accessor for ManagedDirtySyncZone();
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

        v30 = sub_2276626A0();
        [v28 setTimestamp_];

        sub_2275966B8(v22, type metadata accessor for DirtySyncZone);
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
      sub_2275966B8(v22, type metadata accessor for DirtySyncZone);
    }
  }
}

void sub_227584108(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BEFE0, &qword_22768BA38, &qword_27D7BEFE8, sub_2275964FC);
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
      v48 = "ManagedContributor";
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

        type metadata accessor for ManagedContributorIdentifier();
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

void sub_2275845C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227663610();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753F6F8(a1, a2, a3, a4, v56, v57);
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
      v50 = "ManagedConfiguration";
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

        type metadata accessor for ManagedContributor();
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

        sub_2270A7BF0(v33, v31);
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

void sub_227584B38(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v58 = a5;
  v61 = a7;
  LODWORD(v60) = a6;
  v11 = sub_22766B390();
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227663FA0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753F838(a1, a2, a3, a4, v60, v61);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v61 = v15;
    v57 = a2;
    v19 = v58;
    v51 = v13;
    v52 = v17;
    v50 = v11;
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

    v22 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v23 = v59;
LABEL_17:
      v59 = v23;
      sub_226EDC474(0);
    }

    else
    {
      v24 = v61;
      v53 = "ManagedCompletedMarketingVideo";
      v54 = v61 + 16;
      v55 = (v61 + 8);
      if (a3 <= v22)
      {
        v25 = a4 >> 1;
      }

      else
      {
        v25 = a3;
      }

      v60 = v25;
      v26 = v14;
      v23 = v59;
      v27 = v52;
      v28 = v19;
      while (1)
      {
        if (v60 == a3)
        {
          __break(1u);
          return;
        }

        (*(v24 + 16))(v27, v57 + *(v24 + 72) * a3, v26);
        v29 = objc_opt_self();
        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v28];

        type metadata accessor for ManagedConfiguration();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {

          v35 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v23 = swift_allocError();
          (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
          swift_willThrow();
          goto LABEL_21;
        }

        v33 = v32;
        v34 = sub_226EB1040(&unk_28139BA38, MEMORY[0x277D50560], &unk_22767AD88);
        (*(v34 + 64))(v33, v28, v26, v34);
        if (v23)
        {
          break;
        }

        ++a3;
        (*v55)(v27, v26);

        v24 = v61;
        if (v22 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v37 = v51;
      sub_22766A770();
      v38 = v23;
      v39 = sub_22766B380();
      v40 = sub_22766C8B0();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v50;
      v43 = v56;
      if (v41)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v23;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_226E8E000, v39, v40, "%@", v44, 0xCu);
        sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
        v48 = v45;
        v37 = v51;
        MEMORY[0x22AA9A450](v48, -1, -1);
        MEMORY[0x22AA9A450](v44, -1, -1);
      }

      (*(v43 + 8))(v37, v42);
      swift_willThrow();
      sub_226EDC474(0);
      (*v55)(v52, v26);
    }
  }
}

void sub_22758510C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
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
  v17 = sub_227666170();
  v62 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  v22 = sub_22753F978(v20, a2, a3, a4, v7, v63);
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
      v55 = "ManagedCommentaryEvent";
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

        type metadata accessor for ManagedCompletedMarketingVideo();
        v34 = swift_dynamicCastClass();
        if (!v34)
        {
          break;
        }

        v35 = v34;
        ++a3;
        sub_227666150();
        v36 = v21;
        v37 = sub_22766BFD0();

        [v35 setIdentifier_];

        v21 = v36;
        sub_227666160();
        v38 = sub_2276626A0();
        v26 = v63;
        (*v29)(v28, v60);
        [v35 setDateWatched_];

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

void sub_227585760(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v65 = a7;
  v66 = a5;
  v7 = a6;
  v12 = sub_22766B390();
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_227664650();
  v15 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_22753FAB8(v18, a2, a3, a4, v7, v65);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v64 = v15;
    v65 = v17;
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
      v56 = v14;
      v57 = v12;
      v63 = a4 >> 1;
      v23 = v64;
      v24 = v65;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v59 = "ManagedCoachingEvent";
        v60 = v64 + 16;
        v25 = v63;
        if (a3 > v63)
        {
          v25 = a3;
        }

        v61 = (v64 + 8);
        v62 = v25;
        while (1)
        {
          if (v62 == a3)
          {
            __break(1u);
            return;
          }

          (*(v23 + 16))(v24, v19 + *(v23 + 72) * a3, v70);
          v26 = objc_opt_self();
          v27 = sub_22766BFD0();
          v28 = [v26 insertNewObjectForEntityForName:v27 inManagedObjectContext:v66];

          type metadata accessor for ManagedCommentaryEvent();
          v29 = swift_dynamicCastClass();
          if (!v29)
          {
            break;
          }

          v30 = v29;
          ++a3;
          v31 = v19;
          v32 = sub_227664600();
          v34 = v33;
          v67 = v32;
          v68 = v33;
          v36 = v35 & 1;
          v69 = v35 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9F78, &qword_22768BA10);
          sub_227663AD0();
          v37 = sub_22766BFD0();
          v38 = v32;
          v19 = v31;
          v39 = v34;
          v24 = v65;
          v40 = v70;
          sub_226EB2DFC(v38, v39, v36);

          [v30 setTopic_];

          sub_227664640();
          [v30 setStartTime_];
          sub_227664620();
          [v30 setDuration_];
          sub_2276645F0();
          v41 = sub_22766BFD0();

          [v30 setTopicIdentifier_];

          v23 = v64;
          (*v61)(v24, v40);
          if (v63 == a3)
          {
            goto LABEL_13;
          }
        }

        v42 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v43 = swift_allocError();
        (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D51000], v42);
        swift_willThrow();
        v45 = v56;
        sub_22766A770();
        v46 = v43;
        v47 = sub_22766B380();
        v48 = sub_22766C8B0();
        v49 = v43;

        if (os_log_type_enabled(v47, v48))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138412290;
          v52 = v49;
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 4) = v53;
          *v51 = v53;
          _os_log_impl(&dword_226E8E000, v47, v48, "%@", v50, 0xCu);
          sub_226E97D1C(v51, &unk_27D7B9660, &qword_2276740C0);
          v54 = v51;
          v24 = v65;
          MEMORY[0x22AA9A450](v54, -1, -1);
          MEMORY[0x22AA9A450](v50, -1, -1);
        }

        (*(v58 + 8))(v45, v57);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v24, v70);
      }
    }
  }
}

void sub_227585D88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(char *, uint64_t))
{
  v51 = a7;
  v7 = a6;
  v52 = a5;
  v12 = sub_22766B390();
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227663E50();
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = a4;
  v21 = sub_22753FBF8(v18, v19, a3, a4, v7, v51);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v46 = v12;
    v47 = v14;
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
      v24 = a4 >> 1;
      v25 = v53;
      if (v20 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v26 = v19;
        v27 = v17;
        v49 = "ManagedCatalogWorkoutTrait";
        v50 = v53 + 16;
        v51 = (v53 + 8);
        if (a3 <= v24)
        {
          v28 = v20 >> 1;
        }

        else
        {
          v28 = a3;
        }

        while (1)
        {
          if (v28 == a3)
          {
            __break(1u);
            return;
          }

          (*(v25 + 16))(v27, v26 + *(v25 + 72) * a3, v15);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v52];

          type metadata accessor for ManagedCoachingEvent();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          ++a3;
          sub_226F5EA8C(v32);

          (*v51)(v27, v15);
          v25 = v53;
          if (v24 == a3)
          {
            goto LABEL_13;
          }
        }

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v34 = swift_allocError();
        (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        v36 = v47;
        sub_22766A770();
        v37 = v34;
        v38 = sub_22766B380();
        v39 = sub_22766C8B0();
        v40 = v34;

        if (os_log_type_enabled(v38, v39))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          v43 = v40;
          v44 = _swift_stdlib_bridgeErrorToNSError();
          *(v41 + 4) = v44;
          *v42 = v44;
          _os_log_impl(&dword_226E8E000, v38, v39, "%@", v41, 0xCu);
          sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
          v45 = v42;
          v36 = v47;
          MEMORY[0x22AA9A450](v45, -1, -1);
          MEMORY[0x22AA9A450](v41, -1, -1);
        }

        (*(v48 + 8))(v36, v46);
        swift_willThrow();
        sub_226EDC474(0);
        (*v51)(v27, v15);
      }
    }
  }
}

void sub_2275862CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a5;
  v8 = a6;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BEF58, &qword_22768BA00, &qword_27D7BEF60, sub_227596E0C);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v57 = v16;
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

    v55 = v14;
    v56 = v13;
    v20 = a4 >> 1;
    v21 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v58 = "ManagedCatalogWorkoutReference";
      if (a3 > v20)
      {
        v20 = a3;
      }

      v22 = v20 - a3;
      v23 = (a2 + 24 * a3 + 16);
      while (1)
      {
        if (!v22)
        {
          __break(1u);
          return;
        }

        v24 = *(v23 - 2);
        v25 = *(v23 - 1);
        v26 = *v23;
        v27 = objc_opt_self();
        sub_226EB396C(v24, v25, v26);
        v28 = sub_22766BFD0();
        v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v60];

        type metadata accessor for ManagedCatalogWorkoutTrait();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          break;
        }

        v31 = v30;
        v61 = v24;
        v62 = v25;
        v63 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
        sub_227663AD0();
        v32 = sub_22766BFD0();
        v64 = v22;
        v33 = v21;
        v34 = v26;
        v35 = v25;
        v36 = v24;
        v37 = v32;
        [v31 setTrait_];

        v38 = v34;
        v39 = v33;
        v40 = v64;
        sub_226EB2DFC(v36, v35, v38);

        v22 = v40 - 1;
        v23 += 24;
        v21 = v39 - 1;
        if (!v21)
        {
          goto LABEL_14;
        }
      }

      v41 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v42 = swift_allocError();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
      swift_willThrow();
      v44 = v57;
      sub_22766A770();
      v45 = v42;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();
      v59 = v42;

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v24;
        v50 = swift_slowAlloc();
        *v48 = 138412290;
        v51 = v59;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v48, 0xCu);
        sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
        v53 = v50;
        v24 = v49;
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      (*(v55 + 8))(v44, v56);
      swift_willThrow();
      sub_226EDC474(0);
      sub_226EB2DFC(v24, v25, v26);
    }
  }
}

void sub_2275867FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666B60();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753FD38(a1, a2, a3, a4, v56, v57);
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
      v50 = "ManagedCatalogWorkoutMetadata";
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

        type metadata accessor for ManagedCatalogWorkoutReference();
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

        sub_2273F99AC(v33, v31);
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

void sub_227586D70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276664D0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22753FE78(a1, a2, a3, a4, v56, v57);
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
      v50 = "ManagedCatalogTipReference";
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

        type metadata accessor for ManagedCatalogWorkoutMetadata();
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

        sub_2271515C4(v33, v31);
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

void sub_2275872E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, char *a7)
{
  v74 = a7;
  v75 = a5;
  LODWORD(v73) = a6;
  v68 = sub_22766B390();
  v70 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_227662190();
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276658B0();
  v72 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a3;
  v20 = sub_22753FFB8(v18, a2, a3, a4, v73, v74);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v21 = v71;
    v65 = v14;
    v66 = v12;
    v67 = a2;
    v74 = v17;
    v61 = v15;
    if (sub_227669C10())
    {
      v22 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      swift_allocError();
      (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51010], v22);
LABEL_6:
      swift_willThrow();
      return;
    }

    v24 = a4 >> 1;
    if (a4 >> 1 == v19)
    {
LABEL_8:
      sub_226EDC474(0);
    }

    else
    {
      v25 = v19;
      v26 = v72;
      v63 = "ManagedCatalogTipJournal";
      v64 = v72 + 16;
      v62 = (v21 + 1);
      v71 = (v72 + 8);
      if (v19 <= v24)
      {
        v27 = a4 >> 1;
      }

      else
      {
        v27 = v19;
      }

      v73 = v27;
      v28 = v61;
      v29 = v74;
      while (1)
      {
        if (v73 == v25)
        {
          __break(1u);
          return;
        }

        (*(v26 + 16))(v29, v67 + *(v26 + 72) * v25, v28);
        v30 = objc_opt_self();
        v31 = sub_22766BFD0();
        v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v75];

        type metadata accessor for ManagedCatalogTipReference();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {

          v44 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v45 = swift_allocError();
          (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D51000], v44);
          v47 = v45;
          swift_willThrow();
          goto LABEL_21;
        }

        v34 = v33;
        sub_227665880();
        v35 = sub_22766BFD0();

        [v34 setIdentifier_];

        v36 = sub_2276658A0();
        v37 = v76;
        v38 = sub_2275335E8(v36);
        if (v37)
        {
          break;
        }

        sub_227533858(v75, v38);
        v40 = v39;
        v41 = v28;

        [v34 setCategoryIdentifiers_];

        v42 = v65;
        v29 = v74;
        sub_227665890();
        sub_2276620E0();
        v76 = 0;
        ++v25;
        (*v62)(v42, v66);
        v43 = sub_22766BFD0();

        [v34 setDateReleased_];

        v28 = v41;
        (*v71)(v29, v41);
        v26 = v72;
        if (v24 == v25)
        {
          goto LABEL_8;
        }
      }

      v47 = v37;

LABEL_21:
      v48 = v69;
      sub_22766A770();
      v49 = v47;
      v50 = sub_22766B380();
      v51 = sub_22766C8B0();

      v52 = os_log_type_enabled(v50, v51);
      v53 = v68;
      v54 = v70;
      if (v52)
      {
        v55 = v47;
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        *v56 = 138412290;
        v58 = v55;
        v59 = _swift_stdlib_bridgeErrorToNSError();
        *(v56 + 4) = v59;
        *v57 = v59;
        _os_log_impl(&dword_226E8E000, v50, v51, "%@", v56, 0xCu);
        sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v57, -1, -1);
        v28 = v61;
        MEMORY[0x22AA9A450](v56, -1, -1);
      }

      (*(v54 + 8))(v48, v53);
      swift_willThrow();
      sub_226EDC474(0);
      (*v71)(v74, v28);
    }
  }
}

void sub_227587A24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v59 = a7;
  v60 = a5;
  LODWORD(v58) = a6;
  v11 = sub_22766B390();
  v51 = *(v11 - 8);
  v52 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662750();
  v56 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2276650A0();
  v61 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2275400F8(a1, a2, a3, a4, v58, v59);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v57 = v14;
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

    v58 = a4 >> 1;
    v23 = v50;
    v24 = v61;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v25 = v16;
      v26 = v19;
      v53 = "pCategoryReference";
      v54 = v61 + 16;
      v27 = (v56 + 8);
      v28 = v58;
      if (a3 > v58)
      {
        v28 = a3;
      }

      v55 = (v61 + 8);
      v56 = v28;
      while (1)
      {
        if (v56 == a3)
        {
          __break(1u);
          return;
        }

        (*(v24 + 16))(v26, v59 + *(v24 + 72) * a3, v23);
        v29 = objc_opt_self();
        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v60];

        type metadata accessor for ManagedCatalogTipJournal();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {
          break;
        }

        v33 = v32;
        ++a3;
        sub_227665050();
        v34 = sub_22766BFD0();

        [v33 setTipIdentifier_];

        sub_227665070();
        v35 = sub_2276626A0();
        (*v27)(v25, v57);
        [v33 setDate_];

        sub_227665060();
        v36 = sub_22766BFD0();

        [v33 setJournalIdentifier_];

        sub_227665040();
        [v33 setElapsedTime_];
        sub_227665090();
        [v33 setTotalTime_];

        (*v55)(v26, v23);
        v24 = v61;
        if (v58 == a3)
        {
          goto LABEL_14;
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
      (*v55)(v26, v50);
    }
  }
}

void sub_2275880C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v59 = a7;
  LODWORD(v57) = a6;
  v58 = a5;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227667B30();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_227540238(v18, a2, a3, a4, v57, v59);
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
        v54 = "pCategoryIdentifier";
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

          type metadata accessor for ManagedCatalogTipCategoryReference();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          sub_227667B10();
          v34 = v19;
          v35 = sub_22766BFD0();

          [v33 setIdentifier_];

          sub_227667B20();
          v36 = sub_22766BFD0();

          [v33 setName_];

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

void sub_22758868C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BEEF0, &qword_22768B9C8, &qword_27D7BEEF8, sub_227596550);
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
      v48 = "ManagedCatalogThemeCategory";
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

        type metadata accessor for ManagedCatalogTipCategoryIdentifier();
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

void sub_227588B48(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v71 = a7;
  LODWORD(v70) = a6;
  v69 = a5;
  v11 = sub_22766B390();
  v68 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227665D70();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_227540378(v18, a2, a3, a4, v70, v71);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v71 = v15;
    v62 = v13;
    v63 = v14;
    v61 = v11;
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
      v23 = v72;
LABEL_22:
      v72 = v23;
      sub_226EDC474(0);
    }

    else
    {
      v24 = v71;
      v65 = "ManagedCatalogTheme";
      v66 = v71 + 16;
      v67 = (v71 + 8);
      if (a3 <= (a4 >> 1))
      {
        v25 = a4 >> 1;
      }

      else
      {
        v25 = a3;
      }

      v70 = v25;
      v26 = v63;
      v23 = v72;
      v27 = v17;
      v64 = a4 >> 1;
      while (1)
      {
        if (v70 == a3)
        {
          __break(1u);
          return;
        }

        v72 = v23;
        v28 = v26;
        (*(v24 + 16))(v27, v19 + *(v24 + 72) * a3, v26);
        v29 = objc_opt_self();
        v30 = sub_22766BFD0();
        v31 = v69;
        v32 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v69];

        type metadata accessor for ManagedCatalogThemeCategory();
        v33 = swift_dynamicCastClass();
        if (!v33)
        {
          v45 = v27;

          v46 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v23 = swift_allocError();
          (*(*(v46 - 8) + 104))(v47, *MEMORY[0x277D51000], v46);
          swift_willThrow();
          goto LABEL_26;
        }

        v34 = v33;
        v35 = v19;
        sub_227665D30();
        v36 = sub_22766BFD0();

        [v34 setIdentifier_];

        sub_227665D40();
        v37 = sub_22766BFD0();

        [v34 setName_];

        v38 = sub_227665D60();
        v39 = 0x7FFFFFFFLL;
        if (v38 < 0x7FFFFFFF)
        {
          v39 = v38;
        }

        v40 = v39 <= 0xFFFFFFFF80000000 ? 0xFFFFFFFF80000000 : v39;
        [v34 setSortOrder_];
        v41 = sub_227665D50();
        v42 = v72;
        sub_227647D08(v31, v41);
        v23 = v42;
        if (v42)
        {
          break;
        }

        v44 = v43;
        ++a3;

        [v34 setThemes_];

        v26 = v28;
        (*v67)(v27, v28);
        v19 = v35;
        v24 = v71;
        if (v64 == a3)
        {
          goto LABEL_22;
        }
      }

      v45 = v27;

LABEL_26:
      v48 = v62;
      sub_22766A770();
      v49 = v23;
      v50 = sub_22766B380();
      v51 = sub_22766C8B0();

      v52 = os_log_type_enabled(v50, v51);
      v53 = v61;
      v54 = v68;
      if (v52)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        v57 = v23;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v58;
        *v56 = v58;
        _os_log_impl(&dword_226E8E000, v50, v51, "%@", v55, 0xCu);
        sub_226E97D1C(v56, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v56, -1, -1);
        v59 = v55;
        v48 = v62;
        MEMORY[0x22AA9A450](v59, -1, -1);
      }

      (*(v54 + 8))(v48, v53);
      swift_willThrow();
      sub_226EDC474(0);
      (*v67)(v45, v63);
    }
  }
}

void sub_2275891B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(char *, uint64_t), int a6, uint64_t a7)
{
  v60 = a7;
  LODWORD(v59) = a6;
  v61 = a5;
  v11 = sub_22766B390();
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227663A30();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_2275404B8(v18, a2, a3, a4, v59, v60);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v58 = v17;
    v60 = v15;
    v52 = v11;
    v53 = v13;
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
      v59 = a4 >> 1;
      v23 = v60;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v24 = v14;
        v55 = "ManagedCatalogSyncAnchor";
        v56 = v60 + 16;
        v25 = (v60 + 8);
        v26 = v59;
        if (a3 > v59)
        {
          v26 = a3;
        }

        v57 = v26;
        while (1)
        {
          if (v57 == a3)
          {
            __break(1u);
            return;
          }

          v27 = v19 + *(v23 + 72) * a3;
          v28 = *(v23 + 16);
          v29 = v58;
          v28(v58, v27, v24);
          v30 = objc_opt_self();
          v31 = sub_22766BFD0();
          v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v61];

          type metadata accessor for ManagedCatalogTheme();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            break;
          }

          v34 = v33;
          ++a3;
          sub_227663A00();
          v35 = v29;
          v36 = v19;
          v37 = sub_22766BFD0();

          [v34 setIdentifier_];

          sub_227663A10();
          v38 = sub_22766BFD0();

          [v34 setName_];

          v19 = v36;
          v23 = v60;
          [v34 setSortOrder_];

          (*v25)(v35, v24);
          if (v59 == a3)
          {
            goto LABEL_13;
          }
        }

        v61 = v25;

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
          v51 = v48;
          v42 = v53;
          MEMORY[0x22AA9A450](v51, -1, -1);
          MEMORY[0x22AA9A450](v47, -1, -1);
        }

        (*(v54 + 8))(v42, v52);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v29, v24);
      }
    }
  }
}

void sub_2275897A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v65 = a7;
  LODWORD(v64) = a6;
  v67 = a5;
  v56 = sub_22766B390();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_227665010();
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662750();
  v61 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227665030();
  v68 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2275405F8(a1, a2, a3, a4, v64, v65);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v51 = v13;
    v52 = v19;
    v63 = v14;
    v65 = a2;
    v53 = v17;
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
      v64 = a4 >> 1;
      v23 = a4 >> 1 == a3;
      v24 = v52;
      v25 = v53;
      v26 = v51;
      v27 = v68;
      if (v23)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v28 = v16;
        v59 = "ManagedCatalogProgramReference";
        v60 = v68 + 16;
        v57 = (v62 + 8);
        v58 = v61 + 1;
        v29 = v64;
        if (a3 > v64)
        {
          v29 = a3;
        }

        v61 = (v68 + 8);
        v62 = v29;
        while (1)
        {
          if (v62 == a3)
          {
            __break(1u);
            return;
          }

          (*(v27 + 16))(v24, v65 + *(v27 + 72) * a3, v25);
          v30 = objc_opt_self();
          v31 = sub_22766BFD0();
          v32 = [v30 insertNewObjectForEntityForName:v31 inManagedObjectContext:v67];

          type metadata accessor for ManagedCatalogSyncAnchor();
          v33 = swift_dynamicCastClass();
          if (!v33)
          {
            break;
          }

          v34 = v33;
          ++a3;
          sub_227664FC0();
          v35 = sub_22766BFD0();

          [v34 setBuild_];

          sub_227664FA0();
          v36 = sub_2276626A0();
          (*v58)(v28, v63);
          [v34 setDate_];

          sub_227665020();
          sub_227665000();
          (*v57)(v26, v66);
          v37 = sub_22766BFD0();

          [v34 setStatus_];

          sub_227664FD0();
          v38 = sub_22766BFD0();

          [v34 setToken_];

          (*v61)(v24, v25);
          v27 = v68;
          if (v64 == a3)
          {
            goto LABEL_13;
          }
        }

        v39 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v40 = swift_allocError();
        (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D51000], v39);
        swift_willThrow();
        v42 = v55;
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

        (*(v54 + 8))(v42, v56);
        swift_willThrow();
        sub_226EDC474(0);
        (*v61)(v52, v53);
      }
    }
  }
}

void sub_227589F24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666A40();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227540738(a1, a2, a3, a4, v56, v57);
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
      v50 = "ManagedCatalogPreview";
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

        type metadata accessor for ManagedCatalogProgramReference();
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

        sub_227535488(v33, v31);
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

void sub_22758A498(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227664210();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_227540878(v18, a2, a3, a4, v56, v57);
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
      v50 = "ManagedCatalogModalityReference";
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

        type metadata accessor for ManagedCatalogPreview();
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

        sub_226F9789C(v33);
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

void sub_22758AA08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666FF0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2275409B8(a1, a2, a3, a4, v56, v57);
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
      v50 = "ManagedCatalogModalityMetadata";
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

        type metadata accessor for ManagedCatalogModalityReference();
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

        sub_227335928(v33, v31);
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

void sub_22758AF7C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666980();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227540AF8(a1, a2, a3, a4, v56, v57);
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
      v50 = "ManagedCatalogModalityFeature";
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

        type metadata accessor for ManagedCatalogModalityMetadata();
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

        sub_2272C4068(v33, v31);
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

void sub_22758B4F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(uint64_t, uint64_t), int a6, char *a7)
{
  v56 = a7;
  LODWORD(v55) = a6;
  v57 = a5;
  v11 = sub_22766B390();
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227666330();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_227540C38(v18, a2, a3, a4, v55, v56);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v54 = v15;
    v56 = v17;
    v49 = v13;
    v50 = v11;
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
      v24 = v56;
      v25 = v54;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v26 = a4 >> 1;
        v27 = v14;
        v52 = "lterPropertyType";
        v53 = v54 + 16;
        v28 = (v54 + 8);
        if (a3 > v23)
        {
          v23 = a3;
        }

        v55 = v23;
        while (1)
        {
          if (v55 == a3)
          {
            __break(1u);
            return;
          }

          (*(v25 + 16))(v24, v19 + *(v25 + 72) * a3, v27);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v57];

          type metadata accessor for ManagedCatalogMetadataJournal();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          sub_227666310();
          v34 = v19;
          v35 = sub_22766BFD0();

          [v33 setIdentifier_];

          v19 = v34;
          v24 = v56;
          sub_227666320();
          [v33 setTimestamp_];

          (*v28)(v24, v27);
          v25 = v54;
          if (v26 == a3)
          {
            goto LABEL_13;
          }
        }

        v57 = v28;

        v36 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v37 = swift_allocError();
        (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D51000], v36);
        swift_willThrow();
        v39 = v49;
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

        (*(v51 + 8))(v39, v50);
        swift_willThrow();
        sub_226EDC474(0);
        (*v57)(v24, v27);
      }
    }
  }
}

void sub_22758BA94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a5;
  v8 = a6;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BEE60, &qword_22768B980, &qword_27D7BEE68, sub_22759617C);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v57 = v16;
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

    v55 = v14;
    v56 = v13;
    v20 = a4 >> 1;
    v21 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v58 = "ManagedCatalogMetadataJournal";
      if (a3 > v20)
      {
        v20 = a3;
      }

      v22 = v20 - a3;
      v23 = (a2 + 24 * a3 + 16);
      while (1)
      {
        if (!v22)
        {
          __break(1u);
          return;
        }

        v24 = *(v23 - 2);
        v25 = *(v23 - 1);
        v26 = *v23;
        v27 = objc_opt_self();
        sub_226EB396C(v24, v25, v26);
        v28 = sub_22766BFD0();
        v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v60];

        type metadata accessor for ManagedCatalogModalityFeature();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          break;
        }

        v31 = v30;
        v61 = v24;
        v62 = v25;
        v63 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86E0, &qword_227679650);
        sub_227663AD0();
        v32 = sub_22766BFD0();
        v64 = v22;
        v33 = v21;
        v34 = v26;
        v35 = v25;
        v36 = v24;
        v37 = v32;
        [v31 setFeature_];

        v38 = v34;
        v39 = v33;
        v40 = v64;
        sub_226EB2DFC(v36, v35, v38);

        v22 = v40 - 1;
        v23 += 24;
        v21 = v39 - 1;
        if (!v21)
        {
          goto LABEL_14;
        }
      }

      v41 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v42 = swift_allocError();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
      swift_willThrow();
      v44 = v57;
      sub_22766A770();
      v45 = v42;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();
      v59 = v42;

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v24;
        v50 = swift_slowAlloc();
        *v48 = 138412290;
        v51 = v59;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v48, 0xCu);
        sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
        v53 = v50;
        v24 = v49;
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      (*(v55 + 8))(v44, v56);
      swift_willThrow();
      sub_226EDC474(0);
      sub_226EB2DFC(v24, v25, v26);
    }
  }
}

void sub_22758BFC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a5;
  v8 = a6;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BEE50, &qword_22768B978, &qword_27D7BEE58, sub_22759609C);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v57 = v16;
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

    v55 = v14;
    v56 = v13;
    v20 = a4 >> 1;
    v21 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v58 = "cessibilityFeature";
      if (a3 > v20)
      {
        v20 = a3;
      }

      v22 = v20 - a3;
      v23 = (a2 + 24 * a3 + 16);
      while (1)
      {
        if (!v22)
        {
          __break(1u);
          return;
        }

        v24 = *(v23 - 2);
        v25 = *(v23 - 1);
        v26 = *v23;
        v27 = objc_opt_self();
        sub_226EB396C(v24, v25, v26);
        v28 = sub_22766BFD0();
        v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v60];

        type metadata accessor for ManagedCatalogFilterPropertyType();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          break;
        }

        v31 = v30;
        v61 = v24;
        v62 = v25;
        v63 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B86D8, &unk_227671530);
        sub_227663AD0();
        v32 = sub_22766BFD0();
        v64 = v22;
        v33 = v21;
        v34 = v26;
        v35 = v25;
        v36 = v24;
        v37 = v32;
        [v31 setPropertyType_];

        v38 = v34;
        v39 = v33;
        v40 = v64;
        sub_226EB2DFC(v36, v35, v38);

        v22 = v40 - 1;
        v23 += 24;
        v21 = v39 - 1;
        if (!v21)
        {
          goto LABEL_14;
        }
      }

      v41 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v42 = swift_allocError();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
      swift_willThrow();
      v44 = v57;
      sub_22766A770();
      v45 = v42;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();
      v59 = v42;

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v24;
        v50 = swift_slowAlloc();
        *v48 = 138412290;
        v51 = v59;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v48, 0xCu);
        sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
        v53 = v50;
        v24 = v49;
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      (*(v55 + 8))(v44, v56);
      swift_willThrow();
      sub_226EDC474(0);
      sub_226EB2DFC(v24, v25, v26);
    }
  }
}

void sub_22758C4F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a5;
  v8 = a6;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BEE40, &qword_22768B970, &qword_27D7BEE48, sub_227595ED4);
  if (v17)
  {
    if (v17 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v57 = v16;
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

    v55 = v14;
    v56 = v13;
    v20 = a4 >> 1;
    v21 = (a4 >> 1) - a3;
    if (a4 >> 1 == a3)
    {
LABEL_14:
      sub_226EDC474(0);
    }

    else
    {
      v58 = "ManagedBurnBarDisplayPreference";
      if (a3 > v20)
      {
        v20 = a3;
      }

      v22 = v20 - a3;
      v23 = (a2 + 24 * a3 + 16);
      while (1)
      {
        if (!v22)
        {
          __break(1u);
          return;
        }

        v24 = *(v23 - 2);
        v25 = *(v23 - 1);
        v26 = *v23;
        v27 = objc_opt_self();
        sub_226EB396C(v24, v25, v26);
        v28 = sub_22766BFD0();
        v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v60];

        type metadata accessor for ManagedCatalogAccessibilityFeature();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          break;
        }

        v31 = v30;
        v61 = v24;
        v62 = v25;
        v63 = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B88E8, &qword_2276715D0);
        sub_227663AD0();
        v32 = sub_22766BFD0();
        v64 = v22;
        v33 = v21;
        v34 = v26;
        v35 = v25;
        v36 = v24;
        v37 = v32;
        [v31 setFeature_];

        v38 = v34;
        v39 = v33;
        v40 = v64;
        sub_226EB2DFC(v36, v35, v38);

        v22 = v40 - 1;
        v23 += 24;
        v21 = v39 - 1;
        if (!v21)
        {
          goto LABEL_14;
        }
      }

      v41 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v42 = swift_allocError();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D51000], v41);
      swift_willThrow();
      v44 = v57;
      sub_22766A770();
      v45 = v42;
      v46 = sub_22766B380();
      v47 = sub_22766C8B0();
      v59 = v42;

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v24;
        v50 = swift_slowAlloc();
        *v48 = 138412290;
        v51 = v59;
        v52 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v52;
        *v50 = v52;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v48, 0xCu);
        sub_226E97D1C(v50, &unk_27D7B9660, &qword_2276740C0);
        v53 = v50;
        v24 = v49;
        MEMORY[0x22AA9A450](v53, -1, -1);
        MEMORY[0x22AA9A450](v48, -1, -1);
      }

      (*(v55 + 8))(v44, v56);
      swift_willThrow();
      sub_226EDC474(0);
      sub_226EB2DFC(v24, v25, v26);
    }
  }
}

void sub_22758CA24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, char *a7)
{
  v62 = a7;
  v63 = a4;
  LODWORD(v61) = a6;
  v64 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v53 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227668D10();
  v57 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227666F20();
  v68 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227540D78(a1, a2, a3, v63, v61, v62);
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
        v55 = "Identifier";
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

          type metadata accessor for ManagedBurnBarDisplayPreference();
          v29 = swift_dynamicCastClass();
          if (!v29)
          {
            break;
          }

          v30 = v29;
          ++a3;
          v31 = sub_227666F10();
          v33 = v32;
          v65 = v31;
          v66 = v32;
          v35 = v34 & 1;
          v67 = v34 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BDBC8, &qword_22768B7D0);
          sub_227663AD0();
          v36 = sub_22766BFD0();
          sub_226EB2DFC(v31, v33, v35);

          [v30 setBehavior_];

          v22 = v62;
          v37 = v58;
          sub_227666EF0();
          sub_227668D00();
          (*v54)(v37, v59);
          v38 = sub_22766BFD0();

          [v30 setModalityConstraint_];

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

void sub_22758D0EC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v68 = a7;
  v69 = a4;
  LODWORD(v67) = a6;
  v70 = a5;
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_227662750();
  v62 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_227669360();
  v74 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_227540EB8(a1, a2, a3, v69, v67, v68);
  if (v19)
  {
    if (v19 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v63 = v15;
    v64 = v13;
    v65 = a2;
    v66 = v18;
    v68 = v16;
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
      v22 = v68;
      v69 >>= 1;
      v23 = v74;
      if (v69 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v60 = v62 + 1;
        v61 = v74 + 16;
        v62 = (v74 + 8);
        v24 = v69;
        if (a3 > v69)
        {
          v24 = a3;
        }

        v67 = v24;
        v57 = v11;
        v58 = v10;
        while (1)
        {
          if (v67 == a3)
          {
            __break(1u);
            return;
          }

          v25 = v65 + *(v23 + 72) * a3;
          v26 = *(v23 + 16);
          v27 = v66;
          v26(v66, v25, v22);
          v28 = objc_opt_self();
          v29 = sub_22766BFD0();
          v30 = [v28 insertNewObjectForEntityForName:v29 inManagedObjectContext:v70];

          type metadata accessor for ManagedBookmark();
          v31 = swift_dynamicCastClass();
          if (!v31)
          {
            break;
          }

          v32 = v31;
          ++a3;
          sub_227669350();
          v33 = sub_22766BFD0();

          [v32 setReferenceIdentifier_];

          v34 = sub_227669320();
          v36 = v35;
          v71 = v34;
          v72 = v35;
          v37 = v27;
          v39 = v38 & 1;
          v73 = v38 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCBE0, &unk_22768AE50);
          sub_227663AD0();
          v40 = sub_22766BFD0();
          v41 = v36;
          v22 = v68;
          sub_226EB2DFC(v34, v41, v39);

          [v32 setReferenceType_];

          v42 = v63;
          sub_227669330();
          v43 = sub_2276626A0();
          (*v60)(v42, v64);
          [v32 setDateBookmarked_];

          v23 = v74;
          (*v62)(v37, v22);
          if (v69 == a3)
          {
            goto LABEL_13;
          }
        }

        v44 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v45 = swift_allocError();
        (*(*(v44 - 8) + 104))(v46, *MEMORY[0x277D51000], v44);
        swift_willThrow();
        v47 = v59;
        sub_22766A770();
        v48 = v45;
        v49 = sub_22766B380();
        v50 = sub_22766C8B0();
        v51 = v45;

        if (os_log_type_enabled(v49, v50))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 138412290;
          v54 = v51;
          v22 = v68;
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v52 + 4) = v55;
          *v53 = v55;
          _os_log_impl(&dword_226E8E000, v49, v50, "%@", v52, 0xCu);
          sub_226E97D1C(v53, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v53, -1, -1);
          MEMORY[0x22AA9A450](v52, -1, -1);
        }

        (*(v57 + 8))(v47, v58);
        swift_willThrow();
        sub_226EDC474(0);
        (*v62)(v66, v22);
      }
    }
  }
}

void sub_22758D7CC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BEE10, &qword_22768B958, &qword_27D7BEE18, sub_2275965A4);
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
      v48 = "ManagedBodyFocus";
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

        type metadata accessor for ManagedBodyFocusIdentifier();
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

void sub_22758DC88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, void (**a7)(void, uint64_t))
{
  v59 = a7;
  LODWORD(v57) = a6;
  v58 = a5;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227669530();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_227540FF8(v18, a2, a3, a4, v57, v59);
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
        v54 = "AudioLanguageIdentifier";
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

          type metadata accessor for ManagedBodyFocus();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          sub_227669510();
          v34 = v19;
          v35 = sub_22766BFD0();

          [v33 setIdentifier_];

          sub_227669520();
          v36 = sub_22766BFD0();

          [v33 setName_];

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

void sub_22758E250(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v47 = a5;
  v13 = sub_22766B390();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22753BD98(a1, a2, a3, a4, v8, a7, &qword_27D7BEDE8, &qword_22768B948, &qword_27D7BEDF0, sub_227596DB8);
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
      v48 = "ManagedAudioLanguagePreference";
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

        type metadata accessor for ManagedAvailableAudioLanguageIdentifier();
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

void sub_22758E70C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (**a5)(uint64_t, uint64_t), int a6, char *a7)
{
  v56 = a7;
  LODWORD(v55) = a6;
  v57 = a5;
  v11 = sub_22766B390();
  v51 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276668F0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_227541138(v18, a2, a3, a4, v55, v56);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v54 = v15;
    v56 = v17;
    v49 = v13;
    v50 = v11;
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
      v24 = v56;
      v25 = v54;
      if (a4 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v26 = a4 >> 1;
        v27 = v14;
        v52 = "eetAcknowledgment";
        v53 = v54 + 16;
        v28 = (v54 + 8);
        if (a3 > v23)
        {
          v23 = a3;
        }

        v55 = v23;
        while (1)
        {
          if (v55 == a3)
          {
            __break(1u);
            return;
          }

          (*(v25 + 16))(v24, v19 + *(v25 + 72) * a3, v27);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v57];

          type metadata accessor for ManagedAudioLanguagePreference();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          sub_2276668E0();
          v34 = v19;
          v35 = sub_22766BFD0();

          [v33 setLanguageIdentifier_];

          v19 = v34;
          v24 = v56;
          sub_2276668C0();
          [v33 setMachTimestamp_];

          (*v28)(v24, v27);
          v25 = v54;
          if (v26 == a3)
          {
            goto LABEL_13;
          }
        }

        v57 = v28;

        v36 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v37 = swift_allocError();
        (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D51000], v36);
        swift_willThrow();
        v39 = v49;
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

        (*(v51 + 8))(v39, v50);
        swift_willThrow();
        sub_226EDC474(0);
        (*v57)(v24, v27);
      }
    }
  }
}

void sub_22758ECB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v58 = a5;
  v61 = a7;
  LODWORD(v60) = a6;
  v11 = sub_22766B390();
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227669040();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227541278(a1, a2, a3, a4, v60, v61);
  if (v18)
  {
    if (v18 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v61 = v15;
    v57 = a2;
    v19 = v58;
    v51 = v13;
    v52 = v17;
    v50 = v11;
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

    v22 = a4 >> 1;
    if (a4 >> 1 == a3)
    {
      v23 = v59;
LABEL_17:
      v59 = v23;
      sub_226EDC474(0);
    }

    else
    {
      v24 = v61;
      v53 = "ManagedAssetResumableLoad";
      v54 = v61 + 16;
      v55 = (v61 + 8);
      if (a3 <= v22)
      {
        v25 = a4 >> 1;
      }

      else
      {
        v25 = a3;
      }

      v60 = v25;
      v26 = v14;
      v23 = v59;
      v27 = v52;
      v28 = v19;
      while (1)
      {
        if (v60 == a3)
        {
          __break(1u);
          return;
        }

        (*(v24 + 16))(v27, v57 + *(v24 + 72) * a3, v26);
        v29 = objc_opt_self();
        v30 = sub_22766BFD0();
        v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v28];

        type metadata accessor for ManagedAudioLanguageEngagementSheetAcknowledgment();
        v32 = swift_dynamicCastClass();
        if (!v32)
        {

          v35 = sub_227664DD0();
          sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
          v23 = swift_allocError();
          (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51000], v35);
          swift_willThrow();
          goto LABEL_21;
        }

        v33 = v32;
        v34 = sub_226EB1040(&qword_2813A5520, MEMORY[0x277D539C0], &unk_2276788A0);
        (*(v34 + 64))(v33, v28, v26, v34);
        if (v23)
        {
          break;
        }

        ++a3;
        (*v55)(v27, v26);

        v24 = v61;
        if (v22 == a3)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      v37 = v51;
      sub_22766A770();
      v38 = v23;
      v39 = sub_22766B380();
      v40 = sub_22766C8B0();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v50;
      v43 = v56;
      if (v41)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        v46 = v23;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&dword_226E8E000, v39, v40, "%@", v44, 0xCu);
        sub_226E97D1C(v45, &unk_27D7B9660, &qword_2276740C0);
        v48 = v45;
        v37 = v51;
        MEMORY[0x22AA9A450](v48, -1, -1);
        MEMORY[0x22AA9A450](v44, -1, -1);
      }

      (*(v43 + 8))(v37, v42);
      swift_willThrow();
      sub_226EDC474(0);
      (*v55)(v52, v26);
    }
  }
}

void sub_22758F284(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v70 = a7;
  LODWORD(v67) = a6;
  v68 = a5;
  v11 = sub_22766B390();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2276624A0();
  v61 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227665490();
  v69 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2275413B8(a1, a2, a3, a4, v67, v70);
  if (v20)
  {
    if (v20 != 1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v64 = a2;
    v65 = v19;
    v63 = v14;
    v66 = v17;
    v54 = v13;
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

    v62 = v16;
    v67 = a4 >> 1;
    v23 = v66;
    v24 = v69;
    if (a4 >> 1 == a3)
    {
LABEL_17:
      sub_226EDC474(0);
    }

    else
    {
      v58 = "ManagedAssetRequestReference";
      v59 = v69 + 16;
      v57 = (v61 + 8);
      v25 = v67;
      if (a3 > v67)
      {
        v25 = a3;
      }

      v60 = (v69 + 8);
      v61 = v25;
      while (1)
      {
        if (v61 == a3)
        {
          __break(1u);
          return;
        }

        v26 = v65;
        (*(v24 + 16))(v65, v64 + *(v24 + 72) * a3, v23);
        v27 = objc_opt_self();
        v28 = sub_22766BFD0();
        v29 = [v27 insertNewObjectForEntityForName:v28 inManagedObjectContext:v68];

        type metadata accessor for ManagedAssetResumableLoad();
        v30 = swift_dynamicCastClass();
        if (!v30)
        {
          break;
        }

        v31 = v30;
        v70 = a3 + 1;
        v32 = v62;
        sub_227665480();
        sub_227662390();
        v33 = *v57;
        v34 = v63;
        (*v57)(v32, v63);
        v35 = sub_22766BFD0();

        [v31 setRemoteURL_];

        sub_227665460();
        sub_227662390();
        v36 = v32;
        a3 = v70;
        v37 = v34;
        v24 = v69;
        v33(v36, v37);
        v23 = v66;
        v38 = sub_22766BFD0();

        [v31 setLocalURL_];

        v39 = sub_227665450();
        if (v39 >= 0x7FFFFFFFFFFFFFFFLL)
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        [v31 setDownloadToken_];

        (*v60)(v26, v23);
        if (v67 == a3)
        {
          goto LABEL_17;
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

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 138412290;
        v50 = v42;
        v51 = _swift_stdlib_bridgeErrorToNSError();
        *(v48 + 4) = v51;
        *v49 = v51;
        _os_log_impl(&dword_226E8E000, v46, v47, "%@", v48, 0xCu);
        sub_226E97D1C(v49, &unk_27D7B9660, &qword_2276740C0);
        MEMORY[0x22AA9A450](v49, -1, -1);
        v52 = v48;
        v23 = v66;
        MEMORY[0x22AA9A450](v52, -1, -1);
      }

      (*(v55 + 8))(v44, v56);
      swift_willThrow();
      sub_226EDC474(0);
      (*v60)(v65, v23);
    }
  }
}

void sub_22758F95C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(char *, uint64_t))
{
  v51 = a7;
  v7 = a6;
  v52 = a5;
  v12 = sub_22766B390();
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227666070();
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = a4;
  v21 = sub_2275414F8(v18, v19, a3, a4, v7, v51);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v46 = v12;
    v47 = v14;
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
      v24 = a4 >> 1;
      v25 = v53;
      if (v20 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v26 = v19;
        v27 = v17;
        v49 = "estMediaStreamMetadata";
        v50 = v53 + 16;
        v51 = (v53 + 8);
        if (a3 <= v24)
        {
          v28 = v20 >> 1;
        }

        else
        {
          v28 = a3;
        }

        while (1)
        {
          if (v28 == a3)
          {
            __break(1u);
            return;
          }

          (*(v25 + 16))(v27, v26 + *(v25 + 72) * a3, v15);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v52];

          type metadata accessor for ManagedAssetRequestReference();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          ++a3;
          sub_2273F9784(v32);

          (*v51)(v27, v15);
          v25 = v53;
          if (v24 == a3)
          {
            goto LABEL_13;
          }
        }

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v34 = swift_allocError();
        (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        v36 = v47;
        sub_22766A770();
        v37 = v34;
        v38 = sub_22766B380();
        v39 = sub_22766C8B0();
        v40 = v34;

        if (os_log_type_enabled(v38, v39))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          v43 = v40;
          v44 = _swift_stdlib_bridgeErrorToNSError();
          *(v41 + 4) = v44;
          *v42 = v44;
          _os_log_impl(&dword_226E8E000, v38, v39, "%@", v41, 0xCu);
          sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
          v45 = v42;
          v36 = v47;
          MEMORY[0x22AA9A450](v45, -1, -1);
          MEMORY[0x22AA9A450](v41, -1, -1);
        }

        (*(v48 + 8))(v36, v46);
        swift_willThrow();
        sub_226EDC474(0);
        (*v51)(v27, v15);
      }
    }
  }
}

void sub_22758FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v73 = a7;
  v74 = a5;
  v7 = a6;
  v72 = a4;
  v11 = sub_22766B390();
  v12 = *(v11 - 8);
  v63 = v11;
  v64 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v61 - v16;
  v18 = sub_2276687D0();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = v72;
  v24 = sub_227541638(v22, a2, a3, v72, v7, v73);
  if (v24)
  {
    if (v24 != 1)
    {
      v25 = v24;
      swift_willThrow();
      v75 = v25;
    }
  }

  else
  {
    v70 = v17;
    v71 = v19;
    v65 = a2;
    v66 = v21;
    v73 = v18;
    v62 = v14;
    if (sub_227669C10())
    {
      v26 = sub_227664DD0();
      sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
      v27 = swift_allocError();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D51010], v26);
      v75 = v27;
      swift_willThrow();
    }

    else
    {
      v72 = v23 >> 1;
      v29 = v23 >> 1 == a3;
      v31 = v73;
      v30 = v74;
      v33 = v65;
      v32 = v66;
      v34 = v71;
      if (v29)
      {
LABEL_8:
        sub_226EDC474(0);
      }

      else
      {
        v67 = "ManagedAssetRequestKeyMetadata";
        v68 = v71 + 16;
        v35 = (v71 + 8);
        v36 = v72;
        if (a3 > v72)
        {
          v36 = a3;
        }

        v69 = v36;
        while (1)
        {
          if (v69 == a3)
          {
            __break(1u);
            return;
          }

          (*(v34 + 16))(v32, v33 + *(v34 + 72) * a3, v31);
          v38 = objc_opt_self();
          v39 = sub_22766BFD0();
          v40 = [v38 insertNewObjectForEntityForName:v39 inManagedObjectContext:v30];

          type metadata accessor for ManagedAssetRequestMediaStreamMetadata();
          v41 = swift_dynamicCastClass();
          if (!v41)
          {
            break;
          }

          v42 = v41;
          sub_2276687A0();
          v43 = sub_22766BFD0();

          [v42 setIdentifier_];

          sub_2276687C0();
          v44 = sub_22766BFD0();

          [v42 setTitle_];

          v45 = v70;
          sub_2276687B0();
          v46 = v45;
          v47 = sub_2276624A0();
          v48 = *(v47 - 8);
          if ((*(v48 + 48))(v46, 1, v47) == 1)
          {
            sub_226E97D1C(v46, &unk_27D7BB570, &unk_227670FC0);
            v37 = 0;
          }

          else
          {
            sub_227662390();
            (*(v48 + 8))(v46, v47);
            v37 = sub_22766BFD0();
            v33 = v65;
            v32 = v66;
          }

          ++a3;
          [v42 setThumbnailURL_];

          v31 = v73;
          (*v35)(v32, v73);
          v34 = v71;
          v30 = v74;
          if (v72 == a3)
          {
            goto LABEL_8;
          }
        }

        v49 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v50 = swift_allocError();
        (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D51000], v49);
        swift_willThrow();
        v52 = v62;
        sub_22766A770();
        v53 = v50;
        v54 = sub_22766B380();
        v55 = sub_22766C8B0();
        v75 = v50;

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          *v56 = 138412290;
          v58 = v75;
          v59 = _swift_stdlib_bridgeErrorToNSError();
          *(v56 + 4) = v59;
          *v57 = v59;
          _os_log_impl(&dword_226E8E000, v54, v55, "%@", v56, 0xCu);
          sub_226E97D1C(v57, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v57, -1, -1);
          v60 = v56;
          v32 = v66;
          MEMORY[0x22AA9A450](v60, -1, -1);
        }

        (*(v64 + 8))(v52, v63);
        swift_willThrow();
        sub_226EDC474(0);
        (*v35)(v32, v31);
      }
    }
  }
}

void sub_22759058C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(char *, uint64_t))
{
  v51 = a7;
  v7 = a6;
  v52 = a5;
  v12 = sub_22766B390();
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2276668A0();
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = a4;
  v21 = sub_227541778(v18, v19, a3, a4, v7, v51);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v46 = v12;
    v47 = v14;
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
      v24 = a4 >> 1;
      v25 = v53;
      if (v20 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v26 = v19;
        v27 = v17;
        v49 = "ManagedAssetLoadFailure";
        v50 = v53 + 16;
        v51 = (v53 + 8);
        if (a3 <= v24)
        {
          v28 = v20 >> 1;
        }

        else
        {
          v28 = a3;
        }

        while (1)
        {
          if (v28 == a3)
          {
            __break(1u);
            return;
          }

          (*(v25 + 16))(v27, v26 + *(v25 + 72) * a3, v15);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v52];

          type metadata accessor for ManagedAssetRequestKeyMetadata();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          ++a3;
          sub_22739B3A4(v32);

          (*v51)(v27, v15);
          v25 = v53;
          if (v24 == a3)
          {
            goto LABEL_13;
          }
        }

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v34 = swift_allocError();
        (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        v36 = v47;
        sub_22766A770();
        v37 = v34;
        v38 = sub_22766B380();
        v39 = sub_22766C8B0();
        v40 = v34;

        if (os_log_type_enabled(v38, v39))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          v43 = v40;
          v44 = _swift_stdlib_bridgeErrorToNSError();
          *(v41 + 4) = v44;
          *v42 = v44;
          _os_log_impl(&dword_226E8E000, v38, v39, "%@", v41, 0xCu);
          sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
          v45 = v42;
          v36 = v47;
          MEMORY[0x22AA9A450](v45, -1, -1);
          MEMORY[0x22AA9A450](v41, -1, -1);
        }

        (*(v48 + 8))(v36, v46);
        swift_willThrow();
        sub_226EDC474(0);
        (*v51)(v27, v15);
      }
    }
  }
}

void sub_227590AD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v62 = a7;
  LODWORD(v61) = a6;
  v64 = a5;
  v66 = a2;
  v52 = sub_22766B390();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_227662750();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2276624A0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_227664B30();
  v65 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2275418B8(a1, v66, a3, a4, v61, v62);
  if (v20)
  {
    if (v20 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v57 = a4;
    v59 = v12;
    v60 = v13;
    v62 = v17;
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
      v61 = v57 >> 1;
      v23 = v62;
      v24 = v65;
      if (v57 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v25 = v19;
        v26 = v16;
        v55 = "ManagedAssetEntry";
        v56 = v65 + 16;
        v53 = (v58 + 8);
        v54 = (v14 + 8);
        v27 = v61;
        if (a3 > v61)
        {
          v27 = a3;
        }

        v57 = v65 + 8;
        v58 = v27;
        v28 = v59;
        while (1)
        {
          if (v58 == a3)
          {
            __break(1u);
            return;
          }

          (*(v24 + 16))(v25, v66 + *(v24 + 72) * a3, v23);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v64];

          type metadata accessor for ManagedAssetLoadFailure();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          v33 = v32;
          ++a3;
          sub_227664B10();
          sub_227662390();
          (*v54)(v26, v60);
          v34 = sub_22766BFD0();

          [v33 setRemoteURL_];

          sub_227664AF0();
          v35 = sub_22766BFD0();

          [v33 setBundleIdentifier_];

          v23 = v62;
          sub_227664B00();
          v36 = sub_2276626A0();
          (*v53)(v28, v63);
          [v33 setDate_];

          (*v57)(v25, v23);
          v24 = v65;
          if (v61 == a3)
          {
            goto LABEL_13;
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
          v23 = v62;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v45 + 4) = v48;
          *v46 = v48;
          _os_log_impl(&dword_226E8E000, v42, v43, "%@", v45, 0xCu);
          sub_226E97D1C(v46, &unk_27D7B9660, &qword_2276740C0);
          MEMORY[0x22AA9A450](v46, -1, -1);
          MEMORY[0x22AA9A450](v45, -1, -1);
        }

        (*(v50 + 8))(v40, v52);
        swift_willThrow();
        sub_226EDC474(0);
        (*v57)(v25, v23);
      }
    }
  }
}

void sub_227591224(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(char *, uint64_t))
{
  v51 = a7;
  v7 = a6;
  v52 = a5;
  v12 = sub_22766B390();
  v48 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_227663180();
  v53 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = a4;
  v21 = sub_2275419F8(v18, v19, a3, a4, v7, v51);
  if (v21)
  {
    if (v21 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v46 = v12;
    v47 = v14;
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
      v24 = a4 >> 1;
      v25 = v53;
      if (v20 >> 1 == a3)
      {
LABEL_13:
        sub_226EDC474(0);
      }

      else
      {
        v26 = v19;
        v27 = v17;
        v49 = "ManagedAssetBundleLoadFailure";
        v50 = v53 + 16;
        v51 = (v53 + 8);
        if (a3 <= v24)
        {
          v28 = v20 >> 1;
        }

        else
        {
          v28 = a3;
        }

        while (1)
        {
          if (v28 == a3)
          {
            __break(1u);
            return;
          }

          (*(v25 + 16))(v27, v26 + *(v25 + 72) * a3, v15);
          v29 = objc_opt_self();
          v30 = sub_22766BFD0();
          v31 = [v29 insertNewObjectForEntityForName:v30 inManagedObjectContext:v52];

          type metadata accessor for ManagedAssetEntry();
          v32 = swift_dynamicCastClass();
          if (!v32)
          {
            break;
          }

          ++a3;
          sub_227339B04(v32);

          (*v51)(v27, v15);
          v25 = v53;
          if (v24 == a3)
          {
            goto LABEL_13;
          }
        }

        v33 = sub_227664DD0();
        sub_226EB1040(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        v34 = swift_allocError();
        (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D51000], v33);
        swift_willThrow();
        v36 = v47;
        sub_22766A770();
        v37 = v34;
        v38 = sub_22766B380();
        v39 = sub_22766C8B0();
        v40 = v34;

        if (os_log_type_enabled(v38, v39))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          v43 = v40;
          v44 = _swift_stdlib_bridgeErrorToNSError();
          *(v41 + 4) = v44;
          *v42 = v44;
          _os_log_impl(&dword_226E8E000, v38, v39, "%@", v41, 0xCu);
          sub_226E97D1C(v42, &unk_27D7B9660, &qword_2276740C0);
          v45 = v42;
          v36 = v47;
          MEMORY[0x22AA9A450](v45, -1, -1);
          MEMORY[0x22AA9A450](v41, -1, -1);
        }

        (*(v48 + 8))(v36, v46);
        swift_willThrow();
        sub_226EDC474(0);
        (*v51)(v27, v15);
      }
    }
  }
}

void sub_227591768(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227663480();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1;
  v19 = a2;
  v20 = sub_227541B38(v18, a2, a3, a4, v56, v57);
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
      v50 = "orkoutPlanSession";
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

        type metadata accessor for ManagedAssetBundle();
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

        sub_226FC3278(v33);
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

void sub_227591CD8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v55 = a5;
  v57 = a7;
  LODWORD(v56) = a6;
  v11 = sub_22766B390();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227667780();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_227541C78(a1, a2, a3, a4, v56, v57);
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
      v50 = "ManagedArchivedSession";
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

        type metadata accessor for ManagedArchivedWorkoutPlanSession();
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

        sub_2275A45E0(v33, v31);
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