BOOL sub_2480F6798(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_2481242C8();
    ++v2;
    sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  }

  while ((sub_248124468() & 1) == 0);
  return v3 != v4;
}

unint64_t sub_2480F68A4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9)
{
  v102 = a2;
  v103 = a7;
  v99 = a6;
  v101 = a5;
  v106 = a8;
  v107 = a4;
  v12 = sub_2481242C8();
  v105 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v93 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v93 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = (&v93 - v22);
  v24 = sub_2480F9374(a1, a3, sub_2480FA6CC);
  if (v9)
  {
    if (qword_27EE879F8 != -1)
    {
      swift_once();
    }

    v25 = sub_2481242F8();
    __swift_project_value_buffer(v25, qword_27EE87CC8);
    MEMORY[0x24C1C7A20](v9);
    v26 = sub_2481242D8();
    v27 = sub_248124628();

    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_22;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v108[0] = v29;
    *v28 = 136446210;
    v109 = v9;
    MEMORY[0x24C1C7A20](v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
    v30 = sub_2481244A8();
    v32 = sub_24810C31C(v30, v31, v108);

    *(v28 + 4) = v32;
    v33 = "Failed to build record store: failed to merge system and local users: %{public}s";
    goto LABEL_21;
  }

  v34 = v24;
  v35 = v106;
  v96 = v21;
  v97 = v23;
  v95 = v15;
  v104 = a3;
  v98 = v18;
  v36 = 0;
  v37 = sub_2480F9374(v102, v107, sub_2480FA33C);
  if (v34 >> 62)
  {
    v38 = sub_2481247E8();
  }

  else
  {
    v38 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v35;
  v102 = v12;
  if (v38)
  {
    v100 = v37;
    v94 = 0;
    v109 = MEMORY[0x277D84F90];
    sub_248124788();
    if (v38 < 0)
    {
      __break(1u);
      goto LABEL_35;
    }

    v40 = 0;
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v41 = MEMORY[0x24C1C6EA0](v40, v34);
      }

      else
      {
        v41 = *(v34 + 8 * v40 + 32);
      }

      ++v40;
      sub_2480F5DD4(v41);
      swift_beginAccess();

      sub_2480F8F5C(v42);
      swift_endAccess();

      sub_248124768();
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
    }

    while (v38 != v40);

    v43 = v109;
    v36 = v94;
    v39 = v106;
    v12 = v102;
    v37 = v100;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  sub_2480F956C(v43, v37);
  v44 = v101;
  v45 = v97;
  if (v36)
  {

    if (qword_27EE879F8 == -1)
    {
LABEL_19:
      v46 = sub_2481242F8();
      __swift_project_value_buffer(v46, qword_27EE87CC8);
      MEMORY[0x24C1C7A20](v36);
      v26 = sub_2481242D8();
      v27 = sub_248124628();

      if (!os_log_type_enabled(v26, v27))
      {
LABEL_22:

        return swift_willThrow();
      }

      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v108[0] = v29;
      *v28 = 136446210;
      v109 = v36;
      MEMORY[0x24C1C7A20](v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87A18, &unk_248126C10);
      v47 = sub_2481244A8();
      v49 = sub_24810C31C(v47, v48, v108);

      *(v28 + 4) = v49;
      v33 = "Failed to build record store: failed to validate group memberships: %{public}s";
LABEL_21:
      _os_log_impl(&dword_2480DF000, v26, v27, v33, v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1C7B90](v29, -1, -1);
      MEMORY[0x24C1C7B90](v28, -1, -1);
      goto LABEL_22;
    }

LABEL_35:
    swift_once();
    goto LABEL_19;
  }

  v100 = *(v105 + 16);
  v101 = v105 + 16;
  v100(v97, v44, v12);

  sub_2480F7EE4(v51, v37, v45, v39);
  sub_2480F9E64(v43, v37);

  v52 = *v39;
  if (v52 >> 62)
  {
    result = sub_2481247E8();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_39;
    }

    __break(1u);
    goto LABEL_38;
  }

  v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v53)
  {
    while (1)
    {
      v45 = (v52 & 0xC000000000000001);
      if ((v52 & 0xC000000000000001) != 0 || v53 <= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

LABEL_38:
      __break(1u);
LABEL_39:
      v53 = result;
      if (!result)
      {
        goto LABEL_40;
      }
    }

    v54 = 0;
    do
    {
      if (v45)
      {
        v55 = MEMORY[0x24C1C6EA0](v54, v52);
        v56 = v55;
      }

      else
      {
        v56 = *(v52 + 8 * v54 + 32);
      }

      MEMORY[0x28223BE20](v55);
      *(&v93 - 2) = v106;
      *(&v93 - 1) = v54;
      *(v56 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_isMutable) = sub_2480FABB4(sub_2480FF900, (&v93 - 4), v104) & 1;

      ++v54;
    }

    while (v53 != v54);
  }

LABEL_40:
  v57 = v106;
  v58 = v106[1];
  v97 = (v106 + 1);
  if (v58 >> 62)
  {
    v45 = v58;
    result = sub_2481247E8();
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_55;
    }

    __break(1u);
    goto LABEL_54;
  }

  v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v59)
  {
    while ((v58 & 0xC000000000000001) == 0 && v59 > *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      v59 = result;
      v58 = v45;
      v57 = v106;
      if (!result)
      {
        goto LABEL_56;
      }
    }

    v60 = 0;
    do
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x24C1C6EA0](v60, v58);
        v63 = v62;
      }

      else
      {
        v63 = *(v58 + 8 * v60 + 32);
      }

      MEMORY[0x28223BE20](v62);
      *(&v93 - 2) = v57;
      *(&v93 - 1) = v60;
      v64 = sub_2480FABB4(sub_2480FF920, (&v93 - 4), v107);
      if (v64)
      {
        v61 = 1;
      }

      else
      {
        MEMORY[0x28223BE20](v64);
        *(&v93 - 2) = v57;
        *(&v93 - 1) = v60;
        v61 = sub_2480FACF0(sub_2480FF940, (&v93 - 4), v103);
      }

      ++v60;
      *(v63 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_isMutable) = v61 & 1;
    }

    while (v59 != v60);
  }

LABEL_56:
  if (v99)
  {
    v94 = 0;
    v65 = v104;
    if (v104 >> 62)
    {
      v91 = v104;
      v92 = sub_2481247E8();
      v65 = v91;
      v66 = v92;
    }

    else
    {
      v66 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v67 = v107;
    v68 = v98;
    v69 = v96;
    v70 = MEMORY[0x277D84F90];
    if (v66)
    {
      v71 = v65;
      v108[0] = MEMORY[0x277D84F90];
      result = sub_2480FC404(0, v66 & ~(v66 >> 63), 0);
      if (v66 < 0)
      {
        __break(1u);
        goto LABEL_88;
      }

      v70 = v108[0];
      v72 = v71;
      v73 = v102;
      v74 = v95;
      if ((v71 & 0xC000000000000001) != 0)
      {
        v75 = 0;
        do
        {
          v76 = MEMORY[0x24C1C6EA0](v75, v72);
          v100(v69, v76 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v73);
          swift_unknownObjectRelease();
          v108[0] = v70;
          v78 = *(v70 + 16);
          v77 = *(v70 + 24);
          if (v78 >= v77 >> 1)
          {
            sub_2480FC404((v77 > 1), v78 + 1, 1);
            v70 = v108[0];
          }

          ++v75;
          *(v70 + 16) = v78 + 1;
          (*(v105 + 32))(v70 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v78, v69, v73);
          v72 = v104;
        }

        while (v66 != v75);
      }

      else
      {
        v79 = (v71 + 32);
        do
        {
          v100(v74, *v79 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v73);
          v108[0] = v70;
          v81 = *(v70 + 16);
          v80 = *(v70 + 24);
          if (v81 >= v80 >> 1)
          {
            sub_2480FC404((v80 > 1), v81 + 1, 1);
            v74 = v95;
            v70 = v108[0];
          }

          *(v70 + 16) = v81 + 1;
          (*(v105 + 32))(v70 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v81, v74, v73);
          ++v79;
          --v66;
        }

        while (v66);
      }

      v57 = v106;
      v67 = v107;
      v68 = v98;
    }

    if (v67 >> 62)
    {
      v82 = sub_2481247E8();
    }

    else
    {
      v82 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v83 = MEMORY[0x277D84F90];
    if (!v82)
    {
LABEL_84:
      sub_2480F6060(v57, v70);

      sub_2480F63FC(v97, v83);

      return sub_2480E975C();
    }

    v108[0] = MEMORY[0x277D84F90];
    result = sub_2480FC404(0, v82 & ~(v82 >> 63), 0);
    if ((v82 & 0x8000000000000000) == 0)
    {
      v84 = 0;
      v83 = v108[0];
      v85 = v107 & 0xC000000000000001;
      do
      {
        if (v85)
        {
          v86 = MEMORY[0x24C1C6EA0](v84, v107);
          v100(v68, v86 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v102);
          swift_unknownObjectRelease();
        }

        else
        {
          v100(v68, *(v107 + 8 * v84 + 32) + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v102);
        }

        v108[0] = v83;
        v88 = *(v83 + 16);
        v87 = *(v83 + 24);
        v89 = v105;
        if (v88 >= v87 >> 1)
        {
          sub_2480FC404((v87 > 1), v88 + 1, 1);
          v89 = v105;
          v83 = v108[0];
        }

        ++v84;
        *(v83 + 16) = v88 + 1;
        v90 = v83 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v88;
        v68 = v98;
        (*(v89 + 32))(v90, v98, v102);
      }

      while (v82 != v84);
      v57 = v106;
      goto LABEL_84;
    }

LABEL_88:
    __break(1u);
  }

  return result;
}

uint64_t sub_2480F75A0()
{
  v0 = sub_2481242F8();
  __swift_allocate_value_buffer(v0, qword_27EE87CC8);
  __swift_project_value_buffer(v0, qword_27EE87CC8);
  return sub_2481242E8();
}

unint64_t sub_2480F7620()
{
  v1 = v0;
  v61 = sub_2481242C8();
  v2 = *(v61 - 8);
  v3 = MEMORY[0x28223BE20](v61);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v55 - v7;
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - v9;
  v10 = type metadata accessor for RecordStoreBuilderError(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2480FFF24(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        v18 = v60;
        v17 = v61;
        (*(v2 + 32))(v60, v12, v61);
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_2481246E8();

        v63 = 0xD00000000000001CLL;
        v64 = 0x8000000248129000;
        sub_2480FFF88(&qword_27EE87D58, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v32 = sub_248124938();
        MEMORY[0x24C1C6C90](v32);

LABEL_15:
        v28 = v63;
        (*(v2 + 8))(v18, v17);
        return v28;
      }

      v20 = *v12;
      v21 = *(v12 + 1);
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_2481246E8();

      v63 = 0xD00000000000001CLL;
      v64 = 0x8000000248129020;
      MEMORY[0x24C1C6C90](v20, v21);
    }

    else
    {
      v30 = *v12;
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_2481246E8();

      v63 = 0xD00000000000001ALL;
      v64 = 0x8000000248129040;
      LODWORD(v62) = v30;
      v31 = sub_248124938();
      MEMORY[0x24C1C6C90](v31);
    }

    return v63;
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      v14 = *v12;
      v15 = *(v12 + 1);
      if (EnumCaseMultiPayload == 3)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320);
        v18 = v60;
        v17 = v61;
        (*(v2 + 32))(v60, &v12[*(v16 + 48)], v61);
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_2481246E8();
        v19 = "Invalid primary group id in user ";
      }

      else
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320);
        v18 = v60;
        v17 = v61;
        (*(v2 + 32))(v60, &v12[*(v33 + 48)], v61);
        v63 = 0;
        v64 = 0xE000000000000000;
        sub_2481246E8();
        v19 = "Invalid group membership in user ";
      }

      MEMORY[0x24C1C6C90](0xD000000000000021, (v19 - 32) | 0x8000000000000000);
      MEMORY[0x24C1C6C90](v14, v15);

      MEMORY[0x24C1C6C90](0x2070756F7267203ALL, 0xE800000000000000);
      sub_2480FFF88(&qword_27EE87D58, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = sub_248124938();
      MEMORY[0x24C1C6C90](v34);

      MEMORY[0x24C1C6C90](0x6F6E2073656F6420, 0xEF74736978652074);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF8, &qword_248126328) + 48);
      v23 = *(v2 + 32);
      v25 = v60;
      v24 = v61;
      v23(v60, v12, v61);
      v23(v8, &v12[v22], v24);
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_2481246E8();
      MEMORY[0x24C1C6C90](0xD00000000000001ELL, 0x8000000248128F80);
      sub_2480FFF88(&qword_27EE87D58, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v26 = sub_248124938();
      MEMORY[0x24C1C6C90](v26);

      MEMORY[0x24C1C6C90](0x2070756F7267203ALL, 0xE800000000000000);
      v27 = sub_248124938();
      MEMORY[0x24C1C6C90](v27);

      MEMORY[0x24C1C6C90](0x6F6E2073656F6420, 0xEF74736978652074);
      v28 = v63;
      v29 = *(v2 + 8);
      v29(v8, v24);
      v29(v25, v24);
    }

    else
    {
      v35 = *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D00, &qword_248126330) + 48)];
      (*(v2 + 32))(v5, v12, v61);
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_2481246E8();

      v63 = 0xD000000000000017;
      v64 = 0x8000000248128F40;
      sub_2480FFF88(&qword_27EE87D58, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v36 = sub_248124938();
      MEMORY[0x24C1C6C90](v36);

      MEMORY[0x24C1C6C90](0xD000000000000013, 0x8000000248128F60);
      v37 = *(v35 + 16);
      if (v37)
      {
        v56 = v5;
        v62 = MEMORY[0x277D84F90];
        sub_2480FC3E4(0, v37, 0);
        v38 = v62;
        v57 = v2;
        v40 = v2 + 16;
        v39 = *(v2 + 16);
        v41 = *(v2 + 80);
        v55 = v35;
        v42 = v35 + ((v41 + 32) & ~v41);
        v58 = *(v40 + 56);
        v59 = v39;
        do
        {
          v43 = v60;
          v44 = v61;
          v59(v60, v42, v61);
          v45 = sub_248124278();
          v47 = v46;
          (*(v40 - 8))(v43, v44);
          v62 = v38;
          v49 = *(v38 + 16);
          v48 = *(v38 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_2480FC3E4((v48 > 1), v49 + 1, 1);
            v38 = v62;
          }

          *(v38 + 16) = v49 + 1;
          v50 = v38 + 16 * v49;
          *(v50 + 32) = v45;
          *(v50 + 40) = v47;
          v42 += v58;
          --v37;
        }

        while (v37);

        v5 = v56;
        v2 = v57;
      }

      else
      {

        v38 = MEMORY[0x277D84F90];
      }

      v62 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87B30, &qword_248126410);
      sub_2480FFFD0();
      v51 = sub_248124458();
      v53 = v52;

      MEMORY[0x24C1C6C90](v51, v53);

      v28 = v63;
      (*(v2 + 8))(v5, v61);
    }
  }

  return v28;
}

uint64_t sub_2480F7EE4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v86 = a3;
  v85 = a4;
  v103 = sub_2481242C8();
  v88 = *(v103 - 8);
  v6 = MEMORY[0x28223BE20](v103);
  v99 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v93 = &v84 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v101 = &v84 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v84 - v12;
  v14 = sub_2480F33D8(MEMORY[0x277D84F90]);
  v87 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_68;
  }

  v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v100 = a1;
  v94 = a2;
  if (v15)
  {
    v16 = 0;
    v17 = a2 & 0xC000000000000001;
    v98 = a2 & 0xFFFFFFFFFFFFFF8;
    v102 = (v88 + 16);
    v97 = (v88 + 8);
    while (1)
    {
      if (v17)
      {
        v19 = MEMORY[0x24C1C6EA0](v16, a2);
        a1 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v16 >= *(v98 + 16))
        {
          goto LABEL_63;
        }

        v19 = *(a2 + 8 * v16 + 32);

        a1 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          v15 = sub_2481247E8();
          goto LABEL_3;
        }
      }

      a2 = *v102;
      (*v102)(v13, v19 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v103);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v14;
      v21 = sub_2480F1D2C(v13);
      v23 = v14[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_64;
      }

      v27 = v22;
      if (v14[3] < v26)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_15;
      }

      v34 = v21;
      sub_2480F2BFC();
      v21 = v34;
      v14 = v104;
      if (v27)
      {
LABEL_5:
        *(v14[7] + 8 * v21) = v19;

        (*v97)(v13, v103);
        goto LABEL_6;
      }

LABEL_16:
      v14[(v21 >> 6) + 8] |= 1 << v21;
      v29 = v88;
      v30 = v14[6] + *(v88 + 72) * v21;
      v96 = v21;
      v31 = v103;
      (a2)(v30, v13, v103);
      *(v14[7] + 8 * v96) = v19;

      (*(v29 + 8))(v13, v31);
      v32 = v14[2];
      v25 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v25)
      {
        goto LABEL_67;
      }

      v14[2] = v33;
LABEL_6:
      ++v16;
      v18 = a1 == v15;
      a2 = v94;
      a1 = v100;
      if (v18)
      {
        goto LABEL_23;
      }
    }

    sub_2480F1F4C(v26, isUniquelyReferenced_nonNull_native);
    v21 = sub_2480F1D2C(v13);
    if ((v27 & 1) != (v28 & 1))
    {
      goto LABEL_73;
    }

LABEL_15:
    v14 = v104;
    if (v27)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_23:
  if (a1 >> 62)
  {
    v95 = sub_2481247E8();
  }

  else
  {
    v95 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v35 = MEMORY[0x277D84F90];
  v102 = v14;
  if (v95)
  {
    v104 = MEMORY[0x277D84F90];
    v36 = v95;
    sub_248124788();
    if ((v36 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_71;
    }

    v37 = 0;
    v92 = a1 & 0xC000000000000001;
    v90 = (v88 + 8);
    v91 = (v88 + 16);
    v89 = (v88 + 32);
    do
    {
      if (v92)
      {
        v38 = MEMORY[0x24C1C6EA0](v37, a1);
      }

      else
      {
        v38 = *(a1 + 8 * v37 + 32);
      }

      v39 = v103;
      v13 = *(v38 + 16);
      v40 = *(v38 + 32);
      v98 = *(v38 + 24);
      v41 = *v91;
      (*v91)(v101, v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v103);
      v42 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
      v97 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
      v43 = v39;
      a1 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
      v44 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
      a2 = v93;
      v41(v93, v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v43);
      v14 = v102;
      if (!v102[2])
      {
        goto LABEL_65;
      }

      v45 = sub_2480F1D2C(a2);
      if ((v46 & 1) == 0)
      {
        goto LABEL_66;
      }

      ++v37;
      v47 = *(v14[7] + 8 * v45);
      v48 = a2;
      LODWORD(v96) = v13;
      v49 = *v90;

      v50 = v48;
      v51 = v103;
      v49(v50, v103);
      v52 = *(v47 + 32);

      v54 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
      v53 = *(v38 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);

      type metadata accessor for RecordStore.UserStoreRecord(0);
      v55 = swift_allocObject();
      *(v55 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_isMutable) = 0;
      *(v55 + 16) = v96;
      *(v55 + 24) = v98;
      *(v55 + 32) = v40;
      (*v89)(v55 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid, v101, v51);
      v56 = (v55 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_fullName);
      *v56 = v97;
      v56[1] = v42;
      v57 = (v55 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_homeDirectory);
      *v57 = a1;
      v57[1] = v44;
      *(v55 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_primaryGroupID) = v52;
      v58 = (v55 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_shell);
      *v58 = v54;
      v58[1] = v53;
      sub_248124768();
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
      a1 = v100;
    }

    while (v95 != v37);
    v59 = v104;
    a2 = v94;
    v60 = v87;
    v35 = MEMORY[0x277D84F90];
  }

  else
  {
    v59 = MEMORY[0x277D84F90];
    v60 = v87;
  }

  v61 = &OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames;
  v95 = v59;
  if (!v60)
  {
    v62 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
      goto LABEL_38;
    }

LABEL_59:

    v74 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_51;
    }

LABEL_60:
    v75 = sub_2481247E8();
    if (!v75)
    {
      goto LABEL_61;
    }

LABEL_52:
    if (v75 >= 1)
    {
      v76 = 0;
      do
      {
        if ((v74 & 0xC000000000000001) != 0)
        {
          v77 = MEMORY[0x24C1C6EA0](v76, v74);
        }

        else
        {
          v77 = *(v74 + 8 * v76 + 32);
        }

        ++v76;
        v78 = *v61;
        swift_beginAccess();
        sub_2480FC8E0((v77 + v78));
        swift_endAccess();
      }

      while (v75 != v76);
      goto LABEL_61;
    }

    goto LABEL_72;
  }

  v62 = sub_2481247E8();
  if (!v62)
  {
    goto LABEL_59;
  }

LABEL_38:
  v105 = v35;
  sub_248124788();
  if (v62 < 0)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    result = sub_248124D08();
    __break(1u);
    return result;
  }

  v63 = 0;
  v100 = a2 & 0xC000000000000001;
  v97 = v62;
  v98 = v88 + 16;
  v96 = v88 + 32;
  while (1)
  {
    if (v100)
    {
      v66 = MEMORY[0x24C1C6EA0](v63, a2);
    }

    else
    {
      v66 = *(a2 + 8 * v63 + 32);
    }

    v67 = *(v66 + 32);
    v69 = *(v66 + 40);
    v68 = *(v66 + 48);
    (*v98)(v99, v66 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v103);

    v70 = sub_2480F893C(v66, v102, a1);
    v61 = *(v70 + 16);
    if (v61)
    {
      break;
    }

    v64 = MEMORY[0x277D84F90];
LABEL_41:
    v63 = (v63 + 1);
    type metadata accessor for RecordStore.GroupStoreRecord(0);
    v65 = swift_allocObject();
    *(v65 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_isMutable) = 0;
    *(v65 + 16) = v67;
    *(v65 + 24) = v69;
    *(v65 + 32) = v68;
    (*v96)(v65 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid, v99, v103);
    v61 = &OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames;
    *(v65 + OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_memberNames) = v64;
    sub_248124768();
    sub_248124798();
    sub_2481247A8();
    sub_248124778();
    if (v97 == v63)
    {
      goto LABEL_50;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C90, &qword_248126248);
  v64 = swift_allocObject();
  v71 = _swift_stdlib_malloc_size(v64);
  v72 = v71 - 32;
  if (v71 < 32)
  {
    v72 = v71 - 17;
  }

  v64[2] = v61;
  v64[3] = 2 * (v72 >> 4);
  v73 = sub_2480FEBE0(&v104, v64 + 4, v61, v70);

  sub_2480FF960(v104);
  if (v73 == v61)
  {
    goto LABEL_41;
  }

  __break(1u);
LABEL_50:

  v74 = v105;
  if (v105 >> 62)
  {
    goto LABEL_60;
  }

LABEL_51:
  v75 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v75)
  {
    goto LABEL_52;
  }

LABEL_61:
  v79 = v88;
  v80 = v101;
  v81 = v86;
  v82 = v103;
  (*(v88 + 16))(v101, v86, v103);
  sub_2480E89BC(v95, v74, v80, v85);
  return (*(v79 + 8))(v81, v82);
}

uint64_t sub_2480F893C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v48 = a2;
  v60 = a1;
  v4 = sub_2481242C8();
  v51 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v61 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
LABEL_36:
    v9 = sub_2481247E8();
  }

  else
  {
    v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  v52 = a3;
  if (v9)
  {
    v11 = 0;
    v54 = a3 & 0xFFFFFFFFFFFFFF8;
    v55 = a3 & 0xC000000000000001;
    v53 = a3 + 32;
    v58 = v51 + 16;
    v59 = OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid;
    v12 = (v51 + 8);
    v50 = v9;
    while (1)
    {
      if (v55)
      {
        v13 = MEMORY[0x24C1C6EA0](v11, a3);
        v14 = __OFADD__(v11++, 1);
        if (v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v11 >= *(v54 + 16))
        {
          __break(1u);
          goto LABEL_36;
        }

        v13 = *(v53 + 8 * v11);

        v14 = __OFADD__(v11++, 1);
        if (v14)
        {
LABEL_20:
          __break(1u);
LABEL_21:
          v24 = v61;
          v10 = MEMORY[0x277D84F90];
          if ((v61 & 0x8000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_37;
        }
      }

      v15 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
      swift_beginAccess();
      v16 = *(v13 + v15);
      if (*(v16 + 16))
      {
        v56 = v13;
        v57 = v11;
        sub_2480FFF88(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

        v17 = sub_248124438();
        v18 = -1 << *(v16 + 32);
        v19 = v17 & ~v18;
        if ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
        {
          v20 = ~v18;
          v21 = *(v51 + 72);
          v22 = *(v51 + 16);
          while (1)
          {
            v22(v8, *(v16 + 48) + v21 * v19, v4);
            sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v23 = sub_248124468();
            (*v12)(v8, v4);
            if (v23)
            {
              break;
            }

            v19 = (v19 + 1) & v20;
            if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          sub_248124768();
          sub_248124798();
          sub_2481247A8();
          sub_248124778();
        }

        else
        {
LABEL_14:
        }

        a3 = v52;
        v9 = v50;
        v11 = v57;
        if (v57 == v50)
        {
          goto LABEL_21;
        }
      }

      else
      {

        if (v11 == v9)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v24 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_24:
  if ((v24 & 0x4000000000000000) != 0)
  {
LABEL_37:
    v25 = sub_2481247E8();
    if (!v25)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v25 = *(v24 + 16);
    if (!v25)
    {
      goto LABEL_38;
    }
  }

  v61 = v10;
  result = sub_2480FC3E4(0, v25 & ~(v25 >> 63), 0);
  if (v25 < 0)
  {
    goto LABEL_54;
  }

  v27 = 0;
  v10 = v61;
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v28 = MEMORY[0x24C1C6EA0](v27, v24);
    }

    else
    {
      v28 = *(v24 + 8 * v27 + 32);
    }

    v29 = *(v28 + 24);
    v30 = *(v28 + 32);

    v61 = v10;
    v32 = *(v10 + 16);
    v31 = *(v10 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_2480FC3E4((v31 > 1), v32 + 1, 1);
      v10 = v61;
    }

    ++v27;
    *(v10 + 16) = v32 + 1;
    v33 = v10 + 16 * v32;
    *(v33 + 32) = v29;
    *(v33 + 40) = v30;
  }

  while (v25 != v27);
LABEL_38:

  v59 = sub_2480FF968(v10);

  v34 = *(v60 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
  v61 = MEMORY[0x277D84FA0];
  v35 = 1 << *(v34 + 32);
  v36 = -1;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  v37 = v36 & *(v34 + 56);
  v38 = (v35 + 63) >> 6;
  v60 = v51 + 16;
  v39 = (v51 + 8);
  result = swift_bridgeObjectRetain_n();
  v40 = 0;
  if (v37)
  {
    while (1)
    {
      v41 = v40;
      v42 = v49;
LABEL_46:
      result = (*(v51 + 16))(v42, *(v34 + 48) + *(v51 + 72) * (__clz(__rbit64(v37)) | (v41 << 6)), v4);
      v43 = v48;
      if (!*(v48 + 16))
      {
        break;
      }

      result = sub_2480F1D2C(v42);
      if ((v44 & 1) == 0)
      {
        goto LABEL_53;
      }

      v37 &= v37 - 1;

      v46 = sub_2480F893C(v45, v43, v52);

      sub_2480F916C(v46);
      result = (*v39)(v42, v4);
      v40 = v41;
      if (!v37)
      {
        goto LABEL_42;
      }
    }
  }

  else
  {
LABEL_42:
    v42 = v49;
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v41 >= v38)
      {

        return sub_2480F9270(v61, v59);
      }

      v37 = *(v34 + 56 + 8 * v41);
      ++v40;
      if (v37)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_2480F8F5C(uint64_t a1)
{
  v2 = sub_2481242C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v23 - v8;
  result = MEMORY[0x28223BE20](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_2480FD3BC(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480F916C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_2480FD69C(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_2480F9270(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_2480FD69C(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2480F9374(unint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *))
{
  v18 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v17 = a2;
  if (!v6)
  {
LABEL_15:
    if (v17 >> 62)
    {
      goto LABEL_29;
    }

    v12 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      return v18;
    }

LABEL_17:
    for (i = 0; ; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x24C1C6EA0](i, v17);
        v15 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      else
      {
        if (i >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_29:
          v12 = sub_2481247E8();
          if (!v12)
          {
            return v18;
          }

          goto LABEL_17;
        }

        v14 = *(v17 + 8 * i + 32);

        v15 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_26;
        }
      }

      a3(v14, &v18);
      if (v3)
      {
        goto LABEL_27;
      }

      if (v15 == v12)
      {
        return v18;
      }
    }
  }

LABEL_3:
  v7 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1C6EA0](v7, a1);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_12;
      }
    }

    else
    {
      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a1 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        v10 = a2;
        v11 = sub_2481247E8();
        a2 = v10;
        v6 = v11;
        v17 = v10;
        if (!v11)
        {
          goto LABEL_15;
        }

        goto LABEL_3;
      }
    }

    a3(v8, &v18);
    if (v3)
    {
      break;
    }

    ++v7;
    if (v9 == v6)
    {
      goto LABEL_15;
    }
  }

LABEL_27:
}

uint64_t sub_2480F956C(uint64_t a1, unint64_t a2)
{
  v90 = sub_2481242C8();
  v82 = *(v90 - 8);
  v4 = MEMORY[0x28223BE20](v90);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v80 = &v69 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v74 = &v69 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v69 - v11;
  v13 = sub_2480F33D8(MEMORY[0x277D84F90]);
  v86 = a2;
  if (a2 >> 62)
  {
    goto LABEL_74;
  }

  v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v77 = a1;
  v81 = v6;
  v87 = v14;
  if (v14)
  {
    v15 = 0;
    v84 = v86 & 0xFFFFFFFFFFFFFF8;
    v85 = (v86 & 0xC000000000000001);
    v88 = v82 + 16;
    v83 = (v82 + 8);
    do
    {
      if (v85)
      {
        v17 = MEMORY[0x24C1C6EA0](v15, v86);
        v6 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v15 >= *(v84 + 16))
        {
          goto LABEL_69;
        }

        v17 = *(v86 + 8 * v15 + 32);

        v6 = (v15 + 1);
        if (__OFADD__(v15, 1))
        {
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          v14 = sub_2481247E8();
          goto LABEL_3;
        }
      }

      v18 = *v88;
      (*v88)(v12, v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v90);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v13;
      v21 = sub_2480F1D2C(v12);
      v22 = v13[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_70;
      }

      v25 = v20;
      if (v13[3] >= v24)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v13 = v89;
          if (v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_2480F2BFC();
          v13 = v89;
          if (v25)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_2480F1F4C(v24, isUniquelyReferenced_nonNull_native);
        v26 = sub_2480F1D2C(v12);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_77;
        }

        v21 = v26;
        v13 = v89;
        if (v25)
        {
LABEL_5:
          v16 = v13[7];
          a1 = *(v16 + 8 * v21);
          *(v16 + 8 * v21) = v17;

          (*v83)(v12, v90);
          goto LABEL_6;
        }
      }

      v13[(v21 >> 6) + 8] |= 1 << v21;
      v28 = v82;
      a1 = v90;
      v18(v13[6] + *(v82 + 72) * v21, v12, v90);
      *(v13[7] + 8 * v21) = v17;

      (*(v28 + 8))(v12, a1);
      v29 = v13[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_71;
      }

      v13[2] = v31;
LABEL_6:
      ++v15;
    }

    while (v6 != v87);
  }

  if (v77 >> 62)
  {
    v32 = sub_2481247E8();
  }

  else
  {
    v32 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v75;
  v12 = v86;
  if (!v32)
  {
LABEL_50:
    if (v87)
    {
      v49 = 0;
      v54 = v12 & 0xC000000000000001;
      v6 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v54)
        {
          a1 = MEMORY[0x24C1C6EA0](v49, v12);
          v56 = (v49 + 1);
          if (__OFADD__(v49, 1))
          {
            goto LABEL_60;
          }
        }

        else
        {
          if (v49 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          a1 = *(v12 + 8 * v49 + 32);

          v56 = (v49 + 1);
          if (__OFADD__(v49, 1))
          {
LABEL_60:
            __break(1u);
            goto LABEL_61;
          }
        }

        sub_2480FB3A0(a1, v13, v6);
        if (v33)
        {
          break;
        }

        ++v49;
        if (v56 == v87)
        {
        }
      }
    }
  }

  v34 = 0;
  v73 = v77 & 0xC000000000000001;
  v71 = v77 & 0xFFFFFFFFFFFFFF8;
  v70 = v77 + 32;
  v85 = (v82 + 16);
  v35 = (v82 + 8);
  v79 = v82 + 32;
  v83 = (v82 + 8);
  v72 = v32;
  while (1)
  {
    if (v73)
    {
      v36 = MEMORY[0x24C1C6EA0](v34, v77);
      a1 = v74;
      v30 = __OFADD__(v34, 1);
      v37 = v34 + 1;
      if (v30)
      {
        goto LABEL_73;
      }
    }

    else
    {
      a1 = v74;
      if (v34 >= *(v71 + 16))
      {
        __break(1u);
LABEL_77:
        result = sub_248124D08();
        __break(1u);
        return result;
      }

      v36 = *(v70 + 8 * v34);

      v30 = __OFADD__(v34, 1);
      v37 = v34 + 1;
      if (v30)
      {
        goto LABEL_73;
      }
    }

    v38 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID;
    v84 = *v85;
    (v84)(a1, v36 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v90);
    if (!v13[2])
    {
      v63 = *v35;
LABEL_66:
      v64 = v90;
      v63(a1, v90);

      type metadata accessor for RecordStoreBuilderError(0);
      sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError, &unk_2481263D0);
      swift_allocError();
      v66 = v65;
      v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320) + 48);
      v68 = *(v36 + 32);
      *v66 = *(v36 + 24);
      v66[1] = v68;
      (v84)(v66 + v67, v36 + v38, v64);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    v76 = v37;
    sub_2480F1D2C(a1);
    v39 = *v35;
    if ((v40 & 1) == 0)
    {
      v63 = *v35;
      goto LABEL_66;
    }

    v39(a1, v90);

    v41 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
    swift_beginAccess();
    v78 = v36;
    v42 = *(v36 + v41);
    v44 = *(v42 + 56);
    v6 = (v42 + 56);
    v43 = v44;
    v45 = 1 << *(*(v36 + v41) + 32);
    v46 = v45 < 64 ? ~(-1 << v45) : -1;
    a1 = v46 & v43;
    v47 = (v45 + 63) >> 6;
    v88 = *(v36 + v41);

    v48 = 0;
    if (a1)
    {
      break;
    }

    while (1)
    {
LABEL_42:
      v12 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v12 >= v47)
      {
        break;
      }

      a1 = *&v6[8 * v12];
      ++v48;
      if (a1)
      {
        v49 = v39;
        goto LABEL_46;
      }
    }

    v33 = v75;
    v34 = v76;
    v12 = v86;
    if (v76 == v72)
    {
      goto LABEL_50;
    }
  }

  while (1)
  {
    v49 = v39;
    v12 = v48;
LABEL_46:
    v50 = v82;
    v51 = v80;
    v52 = v90;
    (v84)(v80, *(v88 + 48) + *(v82 + 72) * (__clz(__rbit64(a1)) | (v12 << 6)), v90);
    v53 = *(v50 + 32);
    v54 = v81;
    v53(v81, v51, v52);
    if (!v13[2])
    {
      break;
    }

    sub_2480F1D2C(v54);
    if ((v55 & 1) == 0)
    {
      break;
    }

    a1 &= a1 - 1;
    v35 = v83;
    v39 = v49;
    (v49)(v54, v90);
    v48 = v12;
    if (!a1)
    {
      goto LABEL_42;
    }
  }

LABEL_61:

  type metadata accessor for RecordStoreBuilderError(0);
  sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError, &unk_2481263D0);
  swift_allocError();
  v58 = v57;
  v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320) + 48);
  v60 = *(v78 + 32);
  *v58 = *(v78 + 24);
  v58[1] = v60;
  v61 = v90;
  (v84)(v58 + v59, v54, v90);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return (v49)(v54, v61);
}

uint64_t sub_2480F9E64(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  v45 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_35:
    v3 = sub_2481247E8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  v4 = 0;
  while ((v2 & 0xC000000000000001) == 0)
  {
    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v5 = *(v2 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_14;
    }

LABEL_10:
    if (*(*(v5 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases) + 16))
    {
      sub_248124768();
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
    }

    else
    {
    }

    ++v4;
    if (v6 == v3)
    {
      goto LABEL_15;
    }
  }

  v5 = MEMORY[0x24C1C6EA0](v4, v2);
  v6 = v4 + 1;
  if (!__OFADD__(v4, 1))
  {
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  v7 = v45;
  if (v45 < 0)
  {
LABEL_36:
    v8 = sub_2481247E8();
    if (!v8)
    {
      goto LABEL_37;
    }

LABEL_20:
    v9 = 0;
    v2 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x24C1C6EA0](v9, v7);
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v9 >= *(v7 + 16))
        {
          goto LABEL_34;
        }

        v13 = *(v7 + 8 * v9 + 32);

        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      v15 = *(v44 + 24);
      if (*(v15 + 16))
      {
        v16 = *(v13 + 24);
        v17 = *(v13 + 32);

        v18 = sub_2480F1E00(v16, v17);
        v20 = v19;

        if (v20)
        {
          v11 = 0;
          v10 = *(*(v15 + 56) + 8 * v18);
        }

        else
        {
          v10 = 0;
          v11 = 1;
        }
      }

      else
      {
        v10 = 0;
        v11 = 1;
      }

      sub_2480FBE50(v12, (v44 + 24), v10, v11);

      ++v9;
      if (v14 == v8)
      {
        goto LABEL_37;
      }
    }
  }

LABEL_18:
  if ((v7 & 0x4000000000000000) != 0)
  {
    goto LABEL_36;
  }

  v8 = *(v7 + 16);
  if (v8)
  {
    goto LABEL_20;
  }

LABEL_37:

  v46 = MEMORY[0x277D84F90];
  v21 = a2;
  if (!(a2 >> 62))
  {
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_39;
    }

LABEL_54:
    v28 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_70;
    }

    goto LABEL_55;
  }

  while (2)
  {
    v22 = sub_2481247E8();
    v21 = a2;
    if (!v22)
    {
      goto LABEL_54;
    }

LABEL_39:
    v23 = 0;
    v24 = v21 & 0xC000000000000001;
    v25 = v21 & 0xFFFFFFFFFFFFFF8;
LABEL_42:
    if (v24)
    {
      v26 = MEMORY[0x24C1C6EA0](v23);
      v27 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if (v23 >= *(v25 + 16))
    {
      __break(1u);
      continue;
    }

    break;
  }

  v26 = *(v21 + 8 * v23 + 32);

  v27 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
LABEL_45:
    if (*(*(v26 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases) + 16))
    {
      sub_248124768();
      sub_248124798();
      sub_2481247A8();
      sub_248124778();
    }

    else
    {
    }

    ++v23;
    v21 = a2;
    if (v27 == v22)
    {
      goto LABEL_50;
    }

    goto LABEL_42;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  v28 = v46;
  if (v46 < 0)
  {
    goto LABEL_70;
  }

LABEL_55:
  if ((v28 & 0x4000000000000000) != 0)
  {
    goto LABEL_70;
  }

  v29 = *(v28 + 16);
  if (!v29)
  {
    goto LABEL_71;
  }

  while (2)
  {
    v30 = 0;
    while (2)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x24C1C6EA0](v30, v28);
        v35 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        goto LABEL_63;
      }

      if (v30 >= *(v28 + 16))
      {
        goto LABEL_69;
      }

      v34 = *(v28 + 8 * v30 + 32);

      v35 = v30 + 1;
      if (!__OFADD__(v30, 1))
      {
LABEL_63:
        v36 = *(v44 + 48);
        if (*(v36 + 16) && (v37 = *(v34 + 40), v38 = *(v34 + 48), , v39 = sub_2480F1E00(v37, v38), v41 = v40, , (v41 & 1) != 0))
        {
          v32 = 0;
          v31 = *(*(v36 + 56) + 8 * v39);
        }

        else
        {
          v31 = 0;
          v32 = 1;
        }

        sub_2480FBE50(v33, (v44 + 48), v31, v32);

        ++v30;
        if (v35 == v29)
        {
          goto LABEL_71;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    v29 = sub_2481247E8();
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_71:
}

uint64_t sub_2480FA33C(uint64_t a1, unint64_t *a2)
{
  v24 = a1;
  v4 = *a2;
  v23 = &v24;
  v5 = sub_2480FABB4(sub_2480FFA4C, v22, v4);
  if (v5)
  {
    type metadata accessor for RecordStoreBuilderError(0);
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError, &unk_2481263D0);
    swift_allocError();
    *v6 = *(a1 + 32);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v7 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);
  MEMORY[0x28223BE20](v5);
  v21 = &v24;

  v8 = sub_2480FAA5C(sub_2480FFA6C, v20, v7);

  if (v8 & 1) != 0 || (MEMORY[0x28223BE20](v9), v21 = &v24, v10 = sub_2480FABB4(sub_2480FFA8C, v20, v4), (v10))
  {
    type metadata accessor for RecordStoreBuilderError(0);
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError, &unk_2481263D0);
    swift_allocError();
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    *v13 = v11;
    v13[1] = v12;
    swift_storeEnumTagMultiPayload();

    return swift_willThrow();
  }

  MEMORY[0x28223BE20](v10);
  v21 = &v24;
  if (sub_2480FABB4(sub_2480FFAB4, v20, v4))
  {
    type metadata accessor for RecordStoreBuilderError(0);
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError, &unk_2481263D0);
    swift_allocError();
    v16 = v15;
    v17 = OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid;
    v18 = sub_2481242C8();
    (*(*(v18 - 8) + 16))(v16, a1 + v17, v18);
    goto LABEL_3;
  }

  MEMORY[0x24C1C6CC0](v19);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_248124558();
  }

  return sub_248124588();
}

uint64_t sub_2480FA6CC(uint64_t a1, unint64_t *a2)
{
  v24 = a1;
  v4 = *a2;
  v23 = &v24;
  v5 = sub_2480FABB4(sub_2480FFC00, v22, v4);
  if (v5)
  {
    type metadata accessor for RecordStoreBuilderError(0);
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError, &unk_2481263D0);
    swift_allocError();
    *v6 = *(a1 + 16);
LABEL_3:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v7 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
  MEMORY[0x28223BE20](v5);
  v21 = &v24;

  v8 = sub_2480FAA5C(sub_2480FFC20, v20, v7);

  if (v8 & 1) != 0 || (MEMORY[0x28223BE20](v9), v21 = &v24, v10 = sub_2480FABB4(sub_2480FFC40, v20, v4), (v10))
  {
    type metadata accessor for RecordStoreBuilderError(0);
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError, &unk_2481263D0);
    swift_allocError();
    v11 = *(a1 + 24);
    v12 = *(a1 + 32);
    *v13 = v11;
    v13[1] = v12;
    swift_storeEnumTagMultiPayload();

    return swift_willThrow();
  }

  MEMORY[0x28223BE20](v10);
  v21 = &v24;
  if (sub_2480FABB4(sub_2480FFC68, v20, v4))
  {
    type metadata accessor for RecordStoreBuilderError(0);
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError, &unk_2481263D0);
    swift_allocError();
    v16 = v15;
    v17 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid;
    v18 = sub_2481242C8();
    (*(*(v18 - 8) + 16))(v16, a1 + v17, v18);
    goto LABEL_3;
  }

  MEMORY[0x24C1C6CC0](v19);
  if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_248124558();
  }

  return sub_248124588();
}

uint64_t sub_2480FAA5C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = (*(a3 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v8)))));
      v14 = v13[1];
      v18[0] = *v13;
      v18[1] = v14;

      v15 = v19(v18);
      if (v3)
      {

        return v17 & 1;
      }

      v16 = v15;

      if (v16)
      {
        break;
      }

      v8 &= v8 - 1;
      v11 = v12;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    v17 = 1;
    return v17 & 1;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        v17 = 0;
        return v17 & 1;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2480FABB4(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x24C1C6EA0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_2481247E8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_2480FACF0(uint64_t (*a1)(char *), char a2, uint64_t a3)
{
  v24 = a1;
  v25 = sub_2481242C8();
  MEMORY[0x28223BE20](v25);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v22 = v6 + 16;
  v23 = v6;
  v21 = (v6 + 8);
  v26 = a3;

  v15 = 0;
  while (v12)
  {
    v16 = v25;
LABEL_11:
    (*(v23 + 16))(v8, *(v26 + 48) + *(v23 + 72) * (__clz(__rbit64(v12)) | (v15 << 6)), v16);
    v18 = v24(v8);
    if (v3)
    {
      (*v21)(v8, v16);

      return a2 & 1;
    }

    v19 = v18;
    v12 &= v12 - 1;
    result = (*v21)(v8, v16);
    if (v19)
    {
      a2 = 1;
LABEL_15:

      return a2 & 1;
    }
  }

  v16 = v25;
  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      a2 = 0;
      goto LABEL_15;
    }

    v12 = *(v9 + 8 * v17);
    ++v15;
    if (v12)
    {
      v15 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2480FAF08(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C90, &qword_248126248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2481262D0;
  v6 = *(a1 + 48);
  *(inited + 32) = *(a1 + 40);
  *(inited + 40) = v6;

  v7 = sub_2480FFAD8(inited, v4);
  swift_setDeallocating();
  sub_2480FFB58(inited + 32);
  v8 = *(a2 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2481262D0;
  v10 = *(a2 + 48);
  *(v9 + 32) = *(a2 + 40);
  *(v9 + 40) = v10;

  v11 = sub_2480FFAD8(v9, v8);
  swift_setDeallocating();
  sub_2480FFB58(v9 + 32);
  LOBYTE(a2) = sub_2480FB1B8(v11, v7);

  return (a2 & 1) == 0;
}

BOOL sub_2480FB060(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C90, &qword_248126248);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2481262D0;
  v6 = *(a1 + 32);
  *(inited + 32) = *(a1 + 24);
  *(inited + 40) = v6;

  v7 = sub_2480FFAD8(inited, v4);
  swift_setDeallocating();
  sub_2480FFB58(inited + 32);
  v8 = *(a2 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2481262D0;
  v10 = *(a2 + 32);
  *(v9 + 32) = *(a2 + 24);
  *(v9 + 40) = v10;

  v11 = sub_2480FFAD8(v9, v8);
  swift_setDeallocating();
  sub_2480FFB58(v9 + 32);
  LOBYTE(a2) = sub_2480FB1B8(v11, v7);

  return (a2 & 1) == 0;
}

uint64_t sub_2480FB1B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_248124D58();

      sub_2481244D8();
      v19 = sub_248124D88();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_248124B38() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

void *sub_2480FB3A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62 = a2;
  v7 = sub_2481242C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v47 - v11;
  v58 = OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid;
  if (sub_2480F6798(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, a3))
  {
    v12 = type metadata accessor for RecordStoreBuilderError(0);
    sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError, &unk_2481263D0);
    result = swift_allocError();
    if (*(a3 + 16))
    {
      v15 = v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D00, &qword_248126330) + 48);
      v61 = v12;
      v62 = v16;
      v17 = v7;
      v18 = *(v8 + 16);
      v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v18(v15, a3 + v19, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C98, &qword_248126250);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_2481262D0;
      v18(v20 + v19, a1 + v58, v17);
      v63 = a3;

      sub_2480FEAB4(v20);
      *(v15 + v62) = v63;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    goto LABEL_27;
  }

  v50 = a3;
  v21 = *(a1 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
  v22 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v21 + 56);
  v26 = (v23 + 63) >> 6;
  v60 = v8 + 16;
  v52 = v8 + 32;
  v53 = a1;
  v51 = (v8 + 8);
  v54 = v21;

  v27 = 0;
  v49 = xmmword_2481262D0;
  v47 = v26;
  v48 = v8;
  v59 = v7;
  if (!v25)
  {
LABEL_8:
    v29 = v61;
    while (1)
    {
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v28 >= v26)
      {
      }

      v25 = *(v22 + 8 * v28);
      ++v27;
      if (v25)
      {
        v57 = v4;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  while (1)
  {
    v57 = v4;
    v28 = v27;
    v29 = v61;
LABEL_13:
    v30 = v55;
    v31 = *(v8 + 16);
    v31(v55, *(v54 + 48) + *(v8 + 72) * (__clz(__rbit64(v25)) | (v28 << 6)), v7);
    (*(v8 + 32))(v29, v30, v7);
    if (!*(v62 + 16) || (v32 = sub_2480F1D2C(v29), (v33 & 1) == 0))
    {
      type metadata accessor for RecordStoreBuilderError(0);
      sub_2480FFF88(&qword_27EE87CE8, type metadata accessor for RecordStoreBuilderError, &unk_2481263D0);
      swift_allocError();
      v43 = v42;
      v44 = v29;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF8, &qword_248126328) + 48);
      v46 = v59;
      v31(v43, v53 + v58, v59);
      v31(&v43[v45], v44, v46);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      return (*v51)(v44, v46);
    }

    v34 = *(*(v62 + 56) + 8 * v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C98, &qword_248126250);
    v35 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = v49;
    v31((v36 + v35), v53 + v58, v59);
    v37 = v50;
    v38 = *(v50 + 16);
    v56 = v34;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v39 = v37[3] >> 1, v40 = v37, v39 <= v38))
    {
      result = sub_2480F4FC4(result, v38 + 1, 1, v37);
      v40 = result;
      v39 = result[3] >> 1;
    }

    if (v39 <= *(v40 + 16))
    {
      goto LABEL_26;
    }

    v7 = v59;
    swift_arrayInitWithCopy();

    ++*(v40 + 16);
    v41 = v57;
    sub_2480FB3A0(v56, v62, v40);
    v4 = v41;
    if (v41)
    {
      break;
    }

    v25 &= v25 - 1;
    (*v51)(v61, v7);

    v27 = v28;
    v26 = v47;
    v8 = v48;
    if (!v25)
    {
      goto LABEL_8;
    }
  }

  (*v51)(v61, v7);
}

uint64_t sub_2480FB9A4(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v5 = sub_2481242C8();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x24C1C6EA0](a3);
    goto LABEL_5;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
  {
    v11 = *(v10 + 8 * a3 + 32);

LABEL_5:
    v12 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore15UserStoreRecord_uuid;
    swift_beginAccess();
    (*(v6 + 16))(v9, v11 + v12, v5);

    v13 = sub_248124298();
    (*(v6 + 8))(v9, v5);
    return v13 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2480FBB38(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_2481242C8();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 8);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x24C1C6EA0](a3);
    goto LABEL_5;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
  {
    v11 = *(v10 + 8 * a3 + 32);

LABEL_5:
    v12 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
    swift_beginAccess();
    (*(v6 + 16))(v9, v11 + v12, v5);

    v13 = sub_248124298();
    (*(v6 + 8))(v9, v5);
    return v13 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2480FBCCC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_2481242C8();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 8);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x24C1C6EA0](a3);
    goto LABEL_5;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) > a3)
  {
    v11 = *(v10 + 8 * a3 + 32);

LABEL_5:
    v12 = OBJC_IVAR____TtCV23DarwinDirectoryInternal11RecordStore16GroupStoreRecord_uuid;
    swift_beginAccess();
    (*(v6 + 16))(v9, v11 + v12, v5);

    v13 = sub_248124298();
    (*(v6 + 8))(v9, v5);
    return v13 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2480FBE50(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  v4 = a2;
  v5 = a1;
  v6 = a1 + 56;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = 0;

  while (v9)
  {
LABEL_11:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = (*(v5 + 48) + ((v11 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    if (a4)
    {

      v4 = a2;
      v17 = sub_2480F1E00(v16, v15);
      v19 = v18;

      if (v19)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *a2;
        v42 = *a2;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_2480F2C24();
          v4 = a2;
          v21 = v42;
        }

        sub_2480FC730(v17, v21);
        *v4 = v21;
      }
    }

    else
    {

      v22 = swift_isUniquelyReferenced_nonNull_native();
      v23 = *v4;
      v43 = v23;
      v24 = sub_2480F1E00(v16, v15);
      v26 = v23[2];
      v27 = (v25 & 1) == 0;
      v28 = __OFADD__(v26, v27);
      v29 = v26 + v27;
      if (v28)
      {
        goto LABEL_29;
      }

      v30 = v25;
      if (v23[3] >= v29)
      {
        v4 = a2;
        if (v22)
        {
          v32 = v43;
          if (v25)
          {
            goto LABEL_4;
          }
        }

        else
        {
          v36 = v24;
          sub_2480F2C24();
          v4 = a2;
          v24 = v36;
          v32 = v43;
          if (v30)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_2480F2328(v29, v22);
        v24 = sub_2480F1E00(v16, v15);
        if ((v30 & 1) != (v31 & 1))
        {
          goto LABEL_31;
        }

        v4 = a2;
        v32 = v43;
        if (v30)
        {
LABEL_4:
          *(v32[7] + 8 * v24) = a3;

          goto LABEL_5;
        }
      }

      v32[(v24 >> 6) + 8] |= 1 << v24;
      v33 = (v32[6] + 16 * v24);
      *v33 = v16;
      v33[1] = v15;
      *(v32[7] + 8 * v24) = a3;
      v34 = v32[2];
      v28 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v28)
      {
        goto LABEL_30;
      }

      v32[2] = v35;
LABEL_5:
      *v4 = v32;
      v5 = v38;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_248124D08();
  __break(1u);
  return result;
}

uint64_t sub_2480FC104(uint64_t a1, uint64_t a2)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
    v21 = sub_248124468();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

void *sub_2480FC318(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2480FC554(a1, a2, a3, *v3, &qword_27EE87D20, &unk_248126350, MEMORY[0x277D854C0]);
  *v3 = result;
  return result;
}

void *sub_2480FC35C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2480FC554(a1, a2, a3, *v3, &qword_27EE87D18, &unk_248126340, type metadata accessor for Group);
  *v3 = result;
  return result;
}

void *sub_2480FC3A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2480FC554(a1, a2, a3, *v3, &qword_27EE87CA0, &qword_248126258, type metadata accessor for User);
  *v3 = result;
  return result;
}

char *sub_2480FC3E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2480FC448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2480FC404(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2480FC554(a1, a2, a3, *v3, &qword_27EE87C98, &qword_248126250, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

char *sub_2480FC448(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87C90, &qword_248126248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2480FC554(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2480FC730(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_248124678() + 1) & ~v5;
    do
    {
      sub_248124D58();

      sub_2481244D8();
      v9 = sub_248124D88();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2480FC8E0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2480F3008(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2480FC950(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2480FC950(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_248124928();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_248124578();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2480FCB18(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2480FCA48(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2480FCA48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_248124B38(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2480FCB18(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2480FD3A8(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2480FD0F4((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_248124B38();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_248124B38();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2480F51C8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2480F51C8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2480FD0F4((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2480FD3A8(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2480FD31C(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_248124B38(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_2480FD0F4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_248124B38() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_248124B38() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2480FD31C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2480FD3A8(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_2480FD3BC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2481242C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_2480FFF88(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_248124438();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_248124468();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_2480FDDA8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2480FD69C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_248124D58();
  sub_2481244D8();
  v8 = sub_248124D88();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_248124B38() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2480FE04C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2480FD7EC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2481242C8();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D08, &qword_248126338);
  result = sub_2481246A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_2480FFF88(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_248124438();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2480FDB48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CE0, &qword_248126318);
  result = sub_2481246A8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_248124D58();
      sub_2481244D8();
      result = sub_248124D88();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2480FDDA8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_2481242C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2480FD7EC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2480FE1CC();
      goto LABEL_12;
    }

    sub_2480FE560(v10 + 1);
  }

  v12 = *v3;
  sub_2480FFF88(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_248124438();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_2480FFF88(&qword_27EE87C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_248124468();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_248124CF8();
  __break(1u);
  return result;
}

uint64_t sub_2480FE04C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2480FDB48(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2480FE404();
      goto LABEL_16;
    }

    sub_2480FE87C(v8 + 1);
  }

  v10 = *v4;
  sub_248124D58();
  sub_2481244D8();
  result = sub_248124D88();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_248124B38();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_248124CF8();
  __break(1u);
  return result;
}

void *sub_2480FE1CC()
{
  v1 = v0;
  v2 = sub_2481242C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D08, &qword_248126338);
  v6 = *v0;
  v7 = sub_248124698();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_2480FE404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CE0, &qword_248126318);
  v2 = *v0;
  v3 = sub_248124698();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2480FE560(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2481242C8();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D08, &qword_248126338);
  v7 = sub_2481246A8();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_2480FFF88(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_248124438();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2480FE87C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CE0, &qword_248126318);
  result = sub_2481246A8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_248124D58();

      sub_2481244D8();
      result = sub_248124D88();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2480FEAB4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_2480F4FC4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_2481242C8();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2480FEBE0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2480FEE10(uint64_t a1, uint64_t a2)
{
  v136 = a1;
  v3 = sub_2481242C8();
  v4 = *(v3 - 8);
  v134 = v3;
  v135 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v127 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v125 = &v123 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v126 = &v123 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v129 = &v123 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v128 = &v123 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v133 = &v123 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v124 = &v123 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v132 = &v123 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v123 - v21;
  v23 = type metadata accessor for RecordStoreBuilderError(0);
  v24 = MEMORY[0x28223BE20](v23);
  v130 = &v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v131 = &v123 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = (&v123 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v123 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v123 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v123 - v38);
  MEMORY[0x28223BE20](v37);
  v41 = (&v123 - v40);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D68, &qword_248126418);
  v43 = MEMORY[0x28223BE20](v42 - 8);
  v45 = &v123 - v44;
  v46 = &v123 + *(v43 + 56) - v44;
  sub_2480FFF24(v136, &v123 - v44);
  v47 = a2;
  v48 = v46;
  sub_2480FFF24(v47, v46);
  v49 = v45;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v53 = v45;
      if (EnumCaseMultiPayload == 1)
      {
        sub_2480FFF24(v45, v39);
        v65 = *v39;
        v66 = v39[1];
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          goto LABEL_37;
        }

        if (v65 == *v48 && v66 == v48[1])
        {
        }

        else
        {
          v108 = sub_248124B38();

          if ((v108 & 1) == 0)
          {
            goto LABEL_51;
          }
        }

        sub_24810009C(v45);
        v81 = 1;
        return v81 & 1;
      }

      sub_2480FFF24(v45, v36);
      v82 = swift_getEnumCaseMultiPayload();
      if (v82 != 2)
      {
        (*(v135 + 8))(v36, v134);
        goto LABEL_37;
      }

      v83 = v135;
      v84 = v48;
      v85 = v134;
      (*(v135 + 32))(v22, v84, v134);
      v81 = sub_248124298();
      v86 = *(v83 + 8);
      v86(v22, v85);
      v86(v36, v85);
    }

    else
    {
      v53 = v45;
      sub_2480FFF24(v45, v41);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_37;
      }

      v81 = *v41 == *v48;
    }

LABEL_43:
    v114 = v53;
LABEL_44:
    sub_24810009C(v114);
    return v81 & 1;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v67 = v134;
    v68 = v48;
    v53 = v49;
    if (EnumCaseMultiPayload != 5)
    {
      v98 = v130;
      sub_2480FFF24(v49, v130);
      v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D00, &qword_248126330) + 48);
      v100 = *(v98 + v99);
      v101 = swift_getEnumCaseMultiPayload();
      if (v101 != 6)
      {

        (*(v135 + 8))(v98, v67);
        goto LABEL_37;
      }

      v102 = *&v68[v99];
      v103 = v135;
      v104 = v127;
      (*(v135 + 32))(v127, v68, v67);
      v105 = sub_248124298();
      v106 = *(v103 + 8);
      v106(v98, v67);
      if (v105)
      {
        v81 = sub_2480FC104(v100, v102);

        v106(v104, v67);
        goto LABEL_43;
      }

      v106(v104, v67);

LABEL_51:
      sub_24810009C(v53);
      goto LABEL_38;
    }

    v69 = v131;
    sub_2480FFF24(v49, v131);
    v70 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF8, &qword_248126328) + 48);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      v107 = *(v135 + 8);
      v107(v69 + v70, v67);
      v107(v69, v67);
      goto LABEL_37;
    }

    v71 = v135;
    v72 = *(v135 + 32);
    v73 = v129;
    v72(v129, v68, v67);
    v74 = (v69 + v70);
    v75 = v69;
    v76 = v126;
    v72(v126, v74, v67);
    v77 = &v68[v70];
    v78 = v125;
    v72(v125, v77, v67);
    v79 = sub_248124298();
    v80 = *(v71 + 8);
    v80(v75, v67);
    if ((v79 & 1) == 0)
    {
      v80(v78, v67);
      v80(v76, v67);
      v80(v73, v67);
      goto LABEL_51;
    }

    v81 = sub_248124298();
    v80(v78, v67);
    v80(v76, v67);
    v80(v73, v67);
    goto LABEL_43;
  }

  v51 = v135;
  v52 = v48;
  if (EnumCaseMultiPayload == 3)
  {
    v53 = v45;
    sub_2480FFF24(v45, v33);
    v55 = *v33;
    v54 = *(v33 + 1);
    v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320) + 48);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v58 = *v52;
      v57 = v52[1];
      v59 = *(v51 + 32);
      v60 = &v33[v56];
      v61 = v134;
      v59(v132, v60, v134);
      v62 = v52 + v56;
      v63 = v61;
      v64 = v124;
      v59(v124, v62, v61);
      if (v55 == v58 && v54 == v57)
      {

LABEL_42:
        v110 = v132;
        v111 = sub_248124298();
        v112 = v64;
        v81 = v111;
        v113 = *(v135 + 8);
        v113(v112, v63);
        v113(v110, v63);
        goto LABEL_43;
      }

      v109 = sub_248124B38();

      if (v109)
      {
        goto LABEL_42;
      }

      v120 = *(v135 + 8);
      v120(v64, v63);
      v120(v132, v63);
      goto LABEL_51;
    }

    (*(v51 + 8))(&v33[v56], v134);
  }

  else
  {
    sub_2480FFF24(v45, v30);
    v88 = *v30;
    v87 = v30[1];
    v89 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87CF0, &qword_248126320) + 48);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v136 = v88;
      v90 = *v52;
      v91 = v52[1];
      v92 = v52;
      v93 = *(v51 + 32);
      v94 = v30 + v89;
      v95 = v134;
      v93(v133, v94, v134);
      v96 = v92 + v89;
      v97 = v128;
      v93(v128, v96, v95);
      if (v136 == v90 && v87 == v91)
      {
      }

      else
      {
        v116 = sub_248124B38();

        if ((v116 & 1) == 0)
        {
          v121 = *(v51 + 8);
          v122 = v134;
          v121(v97, v134);
          v121(v133, v122);
          sub_24810009C(v45);
          goto LABEL_38;
        }
      }

      v117 = v133;
      v81 = sub_248124298();
      v118 = *(v51 + 8);
      v119 = v134;
      v118(v97, v134);
      v118(v117, v119);
      v114 = v45;
      goto LABEL_44;
    }

    (*(v51 + 8))(v30 + v89, v134);

    v53 = v45;
  }

LABEL_37:
  sub_248100034(v53);
LABEL_38:
  v81 = 0;
  return v81 & 1;
}

uint64_t sub_2480FF968(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C1C6D90](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2480FD69C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t type metadata accessor for RecordStoreBuilderError(uint64_t a1)
{
  result = qword_27EE87D28;
  if (!qword_27EE87D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2480FFAD8(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_2480FD69C(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

unint64_t sub_2480FFBAC()
{
  result = qword_27EE87D10;
  if (!qword_27EE87D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87D10);
  }

  return result;
}

void sub_2480FFD20(uint64_t a1)
{
  sub_2481242C8();
  if (v1 <= 0x3F)
  {
    sub_2480FFDD0(319);
    if (v2 <= 0x3F)
    {
      sub_2480FFE3C(319);
      if (v3 <= 0x3F)
      {
        sub_2480FFEA4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2480FFDD0(uint64_t a1)
{
  if (!qword_27EE87D38)
  {
    sub_2481242C8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE87D38);
    }
  }
}

void sub_2480FFE3C(uint64_t a1)
{
  if (!qword_27EE87D40)
  {
    sub_2481242C8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE87D40);
    }
  }
}

void sub_2480FFEA4(uint64_t a1)
{
  if (!qword_27EE87D48)
  {
    sub_2481242C8();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87D50, qword_248126378);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE87D48);
    }
  }
}

uint64_t sub_2480FFF24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordStoreBuilderError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2480FFF88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2480FFFD0()
{
  result = qword_27EE87D60;
  if (!qword_27EE87D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87B30, &qword_248126410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87D60);
  }

  return result;
}

uint64_t sub_248100034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87D68, &qword_248126418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24810009C(uint64_t a1)
{
  v2 = type metadata accessor for RecordStoreBuilderError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t initializeLocalUsersAndGroups(andPerform:)(void (*a1)(uint64_t *, void **), uint64_t a2)
{
  if (qword_27EE87A00 != -1)
  {
    v4 = a1;
    v5 = a2;
    swift_once();
    a1 = v4;
    a2 = v5;
  }

  return sub_2480E5C40(a1, a2, qword_27EE87D70);
}

uint64_t updateLocalUsersAndGroups(perform:)(void (*a1)(uint64_t *, void **), uint64_t a2)
{
  if (qword_27EE87A00 != -1)
  {
    swift_once();
  }

  v5[3] = &type metadata for ProviderSideEffects;
  v5[4] = &off_285A49328;
  v5[0] = swift_allocObject();
  sub_2480E628C(qword_27EE87D70, v5[0] + 16);
  sub_248100290(a1, a2, v5);
  return __swift_destroy_boxed_opaque_existential_0(v5);
}

uint64_t sub_248100248()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_248100290(void (*a1)(uint64_t *, void **), uint64_t a2, void *a3)
{
  v6 = type metadata accessor for RecordManager(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3[3];
  v11 = a3[4];
  v12 = __swift_project_boxed_opaque_existential_1(a3, v10);
  v13 = &v9[*(v7 + 28)];
  v13[3] = v10;
  v13[4] = *(v11 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
  sub_2481242E8();
  if (qword_27EE87A08 != -1)
  {
    swift_once();
  }

  v15 = sub_2481242F8();
  v37 = __swift_project_value_buffer(v15, qword_27EE87DE8);
  v16 = sub_2481242D8();
  v17 = sub_248124638();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2480DF000, v16, v17, "Updating local domain...", v18, 2u);
    MEMORY[0x24C1C7B90](v18, -1, -1);
  }

  HIDWORD(v36) = sub_2480F4840();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_2480E0A38(1);
  v26 = v38;
  v28 = sub_2481044F8(v25, v27, a1, a2, v22);
  if (v26)
  {

    v32 = sub_2481242D8();
    v33 = sub_248124628();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2480DF000, v32, v33, "Failed to update local domain.", v34, 2u);
      MEMORY[0x24C1C7B90](v34, -1, -1);
    }

    swift_willThrow();
    return sub_2481057B8(v9, type metadata accessor for RecordManager);
  }

  else
  {
    v30 = v28;
    v31 = v29;

    sub_2480EC5CC(v30, v31, BYTE4(v36) & 1, v20, v22, v24);
    sub_2481057B8(v9, type metadata accessor for RecordManager);
  }
}

uint64_t sub_24810062C()
{
  v0 = sub_2481242F8();
  __swift_allocate_value_buffer(v0, qword_27EE87DE8);
  __swift_project_value_buffer(v0, qword_27EE87DE8);
  return sub_2481242E8();
}

uint64_t User.uid.setter(int a1)
{
  result = type metadata accessor for User(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t User.primaryGroupUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for User(0) + 28);
  v4 = sub_2481242C8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t User.primaryGroupUUID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for User(0) + 28);
  v4 = sub_2481242C8();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t User.fullName.getter()
{
  v1 = *(v0 + *(type metadata accessor for User(0) + 32));

  return v1;
}

uint64_t User.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.homeDirectory.getter()
{
  v1 = *(v0 + *(type metadata accessor for User(0) + 36));

  return v1;
}

uint64_t User.homeDirectory.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.shell.getter()
{
  v1 = *(v0 + *(type metadata accessor for User(0) + 40));

  return v1;
}

uint64_t User.shell.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for User(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t User.memberships.getter()
{
  type metadata accessor for User(0);
}

uint64_t User.memberships.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for User(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t User.aliases.getter()
{
  type metadata accessor for User(0);
}

uint64_t User.aliases.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for User(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_248100D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v26 = sub_248124438();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_2481039A8(&qword_27EE87C68, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v31 = sub_248124468();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2481010C0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_248124D58();

    sub_2481244D8();
    v16 = sub_248124D88();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_248124B38() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t User.hash(into:)(__int128 *a1)
{
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_248124448();
  v3 = type metadata accessor for User(0);
  sub_248124D78();
  sub_2481244D8();
  sub_248124448();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481030B0(a1, *(v1 + *(v3 + 44)));
  v4 = *(v1 + *(v3 + 48));

  return sub_248102F54(a1, v4);
}

uint64_t User.hashValue.getter()
{
  sub_248124D58();
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_248124448();
  v1 = type metadata accessor for User(0);
  sub_248124D78();
  sub_2481244D8();
  sub_248124448();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481030B0(v3, *(v0 + *(v1 + 44)));
  sub_248102F54(v3, *(v0 + *(v1 + 48)));
  return sub_248124D88();
}

uint64_t sub_2481014F8(__int128 *a1, int *a2)
{
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_248124448();
  sub_248124D78();
  sub_2481244D8();
  sub_248124448();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481030B0(a1, *(v2 + a2[11]));
  v5 = *(v2 + a2[12]);

  return sub_248102F54(a1, v5);
}

uint64_t sub_248101628(uint64_t a1, int *a2)
{
  sub_248124D58();
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_248124448();
  sub_248124D78();
  sub_2481244D8();
  sub_248124448();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481030B0(v5, *(v2 + a2[11]));
  sub_248102F54(v5, *(v2 + a2[12]));
  return sub_248124D88();
}

uint64_t _s23DarwinDirectoryInternal4UserV4uuid10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2481242C8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Group.gid.setter(int a1)
{
  result = type metadata accessor for Group(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_248101880(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

uint64_t sub_2481018E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Group.fullName.getter()
{
  v1 = *(v0 + *(type metadata accessor for Group(0) + 28));

  return v1;
}

uint64_t Group.fullName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Group(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Group.nestedGroups.getter()
{
  type metadata accessor for Group(0);
}

uint64_t Group.nestedGroups.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Group(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Group.aliases.getter()
{
  type metadata accessor for Group(0);
}

uint64_t Group.aliases.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Group(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Group.hash(into:)(__int128 *a1)
{
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_248124448();
  v3 = type metadata accessor for Group(0);
  sub_248124D78();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481030B0(a1, *(v1 + *(v3 + 32)));
  v4 = *(v1 + *(v3 + 36));

  return sub_248102F54(a1, v4);
}

uint64_t Group.hashValue.getter()
{
  sub_248124D58();
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_248124448();
  v1 = type metadata accessor for Group(0);
  sub_248124D78();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481030B0(v3, *(v0 + *(v1 + 32)));
  sub_248102F54(v3, *(v0 + *(v1 + 36)));
  return sub_248124D88();
}

uint64_t sub_248101DA4(int *a1)
{
  sub_248124D58();
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_248124448();
  sub_248124D78();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481030B0(v4, *(v1 + a1[8]));
  sub_248102F54(v4, *(v1 + a1[9]));
  return sub_248124D88();
}

uint64_t sub_248101E94(__int128 *a1, int *a2)
{
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_248124448();
  sub_248124D78();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481030B0(a1, *(v2 + a2[8]));
  v5 = *(v2 + a2[9]);

  return sub_248102F54(a1, v5);
}

uint64_t sub_248101F80(uint64_t a1, int *a2)
{
  sub_248124D58();
  sub_2481242C8();
  sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_248124448();
  sub_248124D78();
  sub_2481244D8();
  sub_2481244D8();
  sub_2481030B0(v5, *(v2 + a2[8]));
  sub_248102F54(v5, *(v2 + a2[9]));
  return sub_248124D88();
}

uint64_t sub_248102070(unint64_t a1, unint64_t a2)
{
  v49 = sub_2481242C8();
  v5 = *(v49 - 8);
  v6 = MEMORY[0x28223BE20](v49);
  v46 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - v8;
  if (a1 >> 62)
  {
    v9 = sub_2481247E8();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v56 = MEMORY[0x277D84F90];
    result = sub_248124788();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v50 = v5;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = v12 + 1;
        MEMORY[0x24C1C6EA0]();
        sub_248106264();
        swift_unknownObjectRelease();
        sub_248124768();
        sub_248124798();
        sub_2481247A8();
        sub_248124778();
        v12 = v13;
      }

      while (v9 != v13);
    }

    else
    {
      v14 = a1 + 32;
      do
      {
        v14 += 8;
        sub_248106264();
        sub_248124768();
        sub_248124798();
        sub_2481247A8();
        sub_248124778();
        --v9;
      }

      while (v9);
    }

    v10 = v56;
    v5 = v50;
  }

  if (a2 >> 62)
  {
    v15 = sub_2481247E8();
  }

  else
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v15)
  {
    return v10;
  }

  v56 = MEMORY[0x277D84F90];
  result = sub_248124788();
  if ((v15 & 0x8000000000000000) == 0)
  {
    v43 = v10;
    v44 = v2;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      v45 = (v5 + 32);
      v46 = (v5 + 16);
      v47 = a2;
      v55 = v15;
      do
      {
        v17 = MEMORY[0x24C1C6EA0](v16, a2);
        v54 = *(v17 + 24);
        v18 = *(v17 + 40);
        v53 = *(v17 + 32);
        v19 = v48;
        v20 = v49;
        (*v46)(v48, v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v49);
        v21 = *(v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName + 8);
        v52 = *(v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
        if (*(v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups))
        {
          v22 = *(v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups);
        }

        else
        {
          v22 = MEMORY[0x277D84FA0];
        }

        v51 = v22;
        if (*(v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases))
        {
          v23 = *(v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases);
        }

        else
        {
          v23 = MEMORY[0x277D84FA0];
        }

        v50 = v23;
        ++v16;
        type metadata accessor for GroupRecord(0);
        v24 = swift_allocObject();
        *(v24 + 32) = v54;
        *(v24 + 40) = v53;
        *(v24 + 48) = v18;
        (*v45)(v24 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v19, v20);
        v25 = v51;
        *(v24 + 16) = v52;
        *(v24 + 24) = v21;
        *(v24 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups) = v25;
        *(v24 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases) = v50;

        v26 = v55;

        swift_unknownObjectRelease();
        sub_248124768();
        sub_248124798();
        a2 = v47;
        sub_2481247A8();
        sub_248124778();
      }

      while (v26 != v16);
    }

    else
    {
      v28 = *(v5 + 16);
      v27 = v5 + 16;
      v29 = (a2 + 32);
      v47 = (v27 + 16);
      v48 = v28;
      v50 = v27;
      do
      {
        v55 = v15;
        v31 = *v29++;
        v30 = v31;
        v54 = *(v31 + 24);
        v32 = *(v31 + 40);
        v53 = *(v31 + 32);
        v33 = v46;
        v34 = v49;
        (v48)(v46, v31 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v49);
        v35 = *(v31 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName + 8);
        v52 = *(v31 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
        if (*(v31 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups))
        {
          v36 = *(v30 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups);
        }

        else
        {
          v36 = MEMORY[0x277D84FA0];
        }

        v51 = v36;
        v37 = *(v30 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases);
        if (v37)
        {
          v38 = v37;
        }

        else
        {
          v38 = MEMORY[0x277D84FA0];
        }

        type metadata accessor for GroupRecord(0);
        v39 = swift_allocObject();
        *(v39 + 32) = v54;
        *(v39 + 40) = v53;
        *(v39 + 48) = v32;
        (*v47)(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v33, v34);
        v40 = v51;
        *(v39 + 16) = v52;
        *(v39 + 24) = v35;
        *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups) = v40;
        *(v39 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases) = v38;

        v41 = v55;

        sub_248124768();
        sub_248124798();
        sub_2481247A8();
        sub_248124778();
        v15 = v41 - 1;
      }

      while (v15);
    }

    return v43;
  }

LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_2481025F8(uint64_t a1)
{
  v2 = type metadata accessor for User(0);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    while (1)
    {
      sub_248105750(v8, v6, type metadata accessor for User);
      v10 = &v6[v2[6]];
      v12 = *v10;
      v11 = *(v10 + 1);
      v13 = v12 & 0xFFFFFFFFFFFFLL;
      if (!((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : v13))
      {
        break;
      }

      v15 = &v6[v2[8]];
      v17 = *v15;
      v16 = *(v15 + 1);
      v18 = v17 & 0xFFFFFFFFFFFFLL;
      if (!((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v18))
      {
        break;
      }

      v20 = &v6[v2[9]];
      v22 = *v20;
      v21 = *(v20 + 1);
      v23 = v22 & 0xFFFFFFFFFFFFLL;
      if (!((v21 & 0x2000000000000000) != 0 ? HIBYTE(v21) & 0xF : v23))
      {
        break;
      }

      v25 = &v6[v2[10]];
      v27 = *v25;
      v26 = *(v25 + 1);
      v28 = v27 & 0xFFFFFFFFFFFFLL;
      v29 = (v26 & 0x2000000000000000) != 0 ? HIBYTE(v26) & 0xF : v28;
      if (!v29 || *&v6[v2[5]] < 0x1F4u)
      {
        break;
      }

      result = sub_2481057B8(v6, type metadata accessor for User);
      v8 += v9;
      if (!--v7)
      {
        return result;
      }
    }

    type metadata accessor for UserValidationError(0);
    sub_2481039A8(&qword_27EE87E50, type metadata accessor for UserValidationError, &unk_248126688);
    swift_allocError();
    sub_248105750(v6, v30, type metadata accessor for User);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_2481057B8(v6, type metadata accessor for User);
  }

  return result;
}

uint64_t sub_248102874(uint64_t a1)
{
  v2 = type metadata accessor for Group(0);
  result = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    while (1)
    {
      sub_248105750(v8, v6, type metadata accessor for Group);
      v10 = &v6[v2[6]];
      v12 = *v10;
      v11 = *(v10 + 1);
      v13 = v12 & 0xFFFFFFFFFFFFLL;
      if (!((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : v13))
      {
        break;
      }

      v15 = &v6[v2[7]];
      v17 = *v15;
      v16 = *(v15 + 1);
      v18 = v17 & 0xFFFFFFFFFFFFLL;
      v19 = (v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : v18;
      if (!v19 || *&v6[v2[5]] < 0x1F4u)
      {
        break;
      }

      result = sub_2481057B8(v6, type metadata accessor for Group);
      v8 += v9;
      if (!--v7)
      {
        return result;
      }
    }

    type metadata accessor for GroupValidationError(0);
    sub_2481039A8(&qword_27EE87E48, type metadata accessor for GroupValidationError, &unk_2481266C8);
    swift_allocError();
    sub_248105750(v6, v20, type metadata accessor for Group);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_2481057B8(v6, type metadata accessor for Group);
  }

  return result;
}

uint64_t sub_248102AA0()
{
  v1 = type metadata accessor for User(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for UserValidationError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248105750(v0, v6, type metadata accessor for UserValidationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2480E63BC(v6, v3, type metadata accessor for User);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_2481246E8();
      v8 = "User has empty shell, ";
      v9 = 0xD00000000000001FLL;
    }

    else
    {
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_2481246E8();
      if (EnumCaseMultiPayload == 3)
      {
        v8 = "User has an invalid UID, ";
        v9 = 0xD000000000000016;
      }

      else
      {
        v8 = "Duplicate records with id ";
        v9 = 0xD000000000000019;
      }
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_2481246E8();
    v8 = "User has empty home directory, ";
    v9 = 0xD00000000000001ALL;
LABEL_10:
    v10 = v8 | 0x8000000000000000;
    goto LABEL_11;
  }

  v13 = 0;
  v14 = 0xE000000000000000;
  sub_2481246E8();
  v10 = 0x80000002481290E0;
  v9 = 0xD000000000000015;
LABEL_11:
  MEMORY[0x24C1C6C90](v9, v10);
  sub_2481247B8();
  v11 = v13;
  sub_2481057B8(v3, type metadata accessor for User);
  return v11;
}

uint64_t sub_248102D38()
{
  v1 = type metadata accessor for Group(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GroupValidationError(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_248105750(v0, v6, type metadata accessor for GroupValidationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_2480E63BC(v6, v3, type metadata accessor for Group);
  if (EnumCaseMultiPayload)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_2481246E8();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = "Group has an invalid GID, ";
      v9 = 0xD00000000000001BLL;
    }

    else
    {
      v8 = "User has empty name, ";
      v9 = 0xD00000000000001ALL;
    }

    v10 = v8 | 0x8000000000000000;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_2481246E8();
    v10 = 0x8000000248129140;
    v9 = 0xD000000000000016;
  }

  MEMORY[0x24C1C6C90](v9, v10);
  sub_2481247B8();
  v11 = v13;
  sub_2481057B8(v3, type metadata accessor for Group);
  return v11;
}

uint64_t sub_248102F54(__int128 *a1, uint64_t a2)
{
  sub_248124D88();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x24C1C7510](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_248124D58();

        sub_2481244D8();
        v11 = sub_248124D88();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2481030B0(__int128 *a1, uint64_t a2)
{
  v4 = sub_2481242C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_248124D88();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v21 = sub_248124438();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x24C1C7510](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s23DarwinDirectoryInternal5GroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_248124298() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Group(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_248124B38() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[7];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_248124B38() & 1) == 0 || (sub_248100D10(*(a1 + v5[8]), *(a2 + v5[8])) & 1) == 0)
  {
    return 0;
  }

  v16 = v5[9];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);

  return sub_2481010C0(v17, v18);
}

uint64_t sub_2481033CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Group(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v33 = &v33 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = type metadata accessor for GroupValidationError(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87E80, &unk_248126710);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v33 - v22;
  v24 = *(v21 + 56);
  sub_248105750(a1, &v33 - v22, type metadata accessor for GroupValidationError);
  sub_248105750(a2, &v23[v24], type metadata accessor for GroupValidationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_248105750(v23, v17, type metadata accessor for GroupValidationError);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = &v23[v24];
        v27 = v33;
        sub_2480E63BC(v26, v33, type metadata accessor for Group);
        v28 = _s23DarwinDirectoryInternal5GroupV2eeoiySbAC_ACtFZ_0(v17, v27);
        sub_2481057B8(v27, type metadata accessor for Group);
        v29 = v17;
LABEL_12:
        sub_2481057B8(v29, type metadata accessor for Group);
        sub_2481057B8(v23, type metadata accessor for GroupValidationError);
        return v28 & 1;
      }

      v14 = v17;
    }

    else
    {
      sub_248105750(v23, v14, type metadata accessor for GroupValidationError);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v30 = &v23[v24];
        v31 = v34;
        sub_2480E63BC(v30, v34, type metadata accessor for Group);
        v28 = _s23DarwinDirectoryInternal5GroupV2eeoiySbAC_ACtFZ_0(v14, v31);
        sub_2481057B8(v31, type metadata accessor for Group);
        v29 = v14;
        goto LABEL_12;
      }
    }
  }

  else
  {
    sub_248105750(v23, v19, type metadata accessor for GroupValidationError);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_2480E63BC(&v23[v24], v10, type metadata accessor for Group);
      v28 = _s23DarwinDirectoryInternal5GroupV2eeoiySbAC_ACtFZ_0(v19, v10);
      sub_2481057B8(v10, type metadata accessor for Group);
      v29 = v19;
      goto LABEL_12;
    }

    v14 = v19;
  }

  sub_2481057B8(v14, type metadata accessor for Group);
  sub_248105CF4(v23, &qword_27EE87E80, &unk_248126710);
  v28 = 0;
  return v28 & 1;
}

uint64_t _s23DarwinDirectoryInternal4UserV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_248124298() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for User(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_248124B38() & 1) == 0)
  {
    return 0;
  }

  if ((sub_248124298() & 1) == 0)
  {
    return 0;
  }

  v11 = v5[8];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_248124B38() & 1) == 0)
  {
    return 0;
  }

  v16 = v5[9];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_248124B38() & 1) == 0)
  {
    return 0;
  }

  v21 = v5[10];
  v22 = *(a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  if ((v22 != *v24 || v23 != v24[1]) && (sub_248124B38() & 1) == 0)
  {
    return 0;
  }

  if ((sub_248100D10(*(a1 + v5[11]), *(a2 + v5[11])) & 1) == 0)
  {
    return 0;
  }

  v25 = v5[12];
  v26 = *(a1 + v25);
  v27 = *(a2 + v25);

  return sub_2481010C0(v26, v27);
}

uint64_t sub_2481039A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_248103A68(uint64_t a1)
{
  sub_2481242C8();
  if (v1 <= 0x3F)
  {
    sub_248103B28(319);
    if (v2 <= 0x3F)
    {
      sub_248103BBC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_248103B28(uint64_t a1)
{
  if (!qword_27EE87E20)
  {
    sub_2481242C8();
    sub_2481039A8(&qword_27EE87A58, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_2481245F8();
    if (!v2)
    {
      atomic_store(v1, &qword_27EE87E20);
    }
  }
}

void sub_248103BBC()
{
  if (!qword_27EE87E28)
  {
    v0 = sub_2481245F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE87E28);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2481242C8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2481242C8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_248103DB8(uint64_t a1)
{
  sub_2481242C8();
  if (v1 <= 0x3F)
  {
    sub_248103B28(319);
    if (v2 <= 0x3F)
    {
      sub_248103BBC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_248103E68(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = type metadata accessor for User(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v41 = &v40 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v40 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = type metadata accessor for UserValidationError(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v43 = &v40 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v40 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v40 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87E78, &qword_248126708);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = &v40 - v30;
  v32 = *(v29 + 56);
  sub_248105750(v44, &v40 - v30, type metadata accessor for UserValidationError);
  sub_248105750(v45, &v31[v32], type metadata accessor for UserValidationError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_248105750(v31, v25, type metadata accessor for UserValidationError);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2480E63BC(&v31[v32], v11, type metadata accessor for User);
        v37 = _s23DarwinDirectoryInternal4UserV2eeoiySbAC_ACtFZ_0(v25, v11);
        sub_2481057B8(v11, type metadata accessor for User);
        v38 = v25;
        goto LABEL_20;
      }

      v17 = v25;
    }

    else
    {
      sub_248105750(v31, v27, type metadata accessor for UserValidationError);
      if (!swift_getEnumCaseMultiPayload())
      {
        sub_2480E63BC(&v31[v32], v13, type metadata accessor for User);
        v37 = _s23DarwinDirectoryInternal4UserV2eeoiySbAC_ACtFZ_0(v27, v13);
        sub_2481057B8(v13, type metadata accessor for User);
        v38 = v27;
        goto LABEL_20;
      }

      v17 = v27;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_248105750(v31, v22, type metadata accessor for UserValidationError);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v36 = v40;
      sub_2480E63BC(&v31[v32], v40, type metadata accessor for User);
      v37 = _s23DarwinDirectoryInternal4UserV2eeoiySbAC_ACtFZ_0(v22, v36);
      sub_2481057B8(v36, type metadata accessor for User);
      v38 = v22;
LABEL_20:
      sub_2481057B8(v38, type metadata accessor for User);
      sub_2481057B8(v31, type metadata accessor for UserValidationError);
      return v37 & 1;
    }

    v17 = v22;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v17 = v43;
    sub_248105750(v31, v43, type metadata accessor for UserValidationError);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v34 = &v31[v32];
      v35 = v41;
LABEL_13:
      sub_2480E63BC(v34, v35, type metadata accessor for User);
      v37 = _s23DarwinDirectoryInternal4UserV2eeoiySbAC_ACtFZ_0(v17, v35);
      sub_2481057B8(v35, type metadata accessor for User);
      v38 = v17;
      goto LABEL_20;
    }
  }

  else
  {
    sub_248105750(v31, v17, type metadata accessor for UserValidationError);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v34 = &v31[v32];
      v35 = v42;
      goto LABEL_13;
    }
  }

  sub_2481057B8(v17, type metadata accessor for User);
  sub_248105CF4(v31, &qword_27EE87E78, &qword_248126708);
  v37 = 0;
  return v37 & 1;
}

uint64_t *sub_248104400(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3)
  {
    v5 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_9:
      v2 = sub_2480F301C(v2);
    }

    for (i = 0; i != v3; ++i)
    {
      v7 = v2[2];

      if (i >= v7)
      {
        __break(1u);
        goto LABEL_9;
      }

      type metadata accessor for User(0);
      result = sub_2480F8F5C(a2);
    }

    *v5 = v2;
  }

  return result;
}

void (*sub_2481044F8(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *, void **), uint64_t a4, uint64_t a5))(void, void, void)
{
  v172 = a5;
  v174 = a4;
  v175 = a3;
  v199 = sub_2481242C8();
  v181 = *(v199 - 8);
  v6 = MEMORY[0x28223BE20](v199);
  v179 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v170 - v8;
  v10 = type metadata accessor for Group(0);
  v186 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v177 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v170 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v170 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v170 - v19;
  v21 = type metadata accessor for User(0);
  v187 = *(v21 - 8);
  v188 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v170 = &v170 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v178 = &v170 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v170 - v30;
  v185 = v29;
  if (v29 >> 62)
  {
    v32 = sub_2481247E8();
  }

  else
  {
    v32 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = MEMORY[0x277D84F90];
  v197 = v10;
  v182 = v9;
  v171 = v15;
  v180 = v18;
  v184 = a2;
  if (v32)
  {
    v201 = MEMORY[0x277D84F90];
    v198 = v32;
    sub_2480FC3A0(0, v32 & ~(v32 >> 63), 0);
    v34 = v198;
    if (v198 < 0)
    {
      __break(1u);
      goto LABEL_51;
    }

    v173 = v20;
    v33 = v201;
    if ((v185 & 0xC000000000000001) != 0)
    {
      v35 = 0;
      v183 = (v181 + 16);
      do
      {
        v191 = v35;
        v36 = MEMORY[0x24C1C6EA0]();
        v37 = *v183;
        v38 = v199;
        (*v183)(v31, v36 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v199);
        LODWORD(v195) = *(v36 + 16);
        v39 = *(v36 + 32);
        v196 = *(v36 + 24);
        v190 = v39;
        v40 = v188;
        v37(&v31[v188[7]], v36 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v38);
        v41 = *(v36 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
        v194 = *(v36 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
        v189 = v41;
        v42 = *(v36 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
        v193 = *(v36 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
        v43 = *(v36 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);
        v192 = *(v36 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
        v44 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
        swift_beginAccess();
        v45 = *(v36 + v44);
        v46 = *(v36 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
        v47 = v190;

        swift_unknownObjectRelease();
        *&v31[v40[5]] = v195;
        v48 = &v31[v40[6]];
        *v48 = v196;
        *(v48 + 1) = v47;
        v49 = &v31[v40[8]];
        v50 = v189;
        *v49 = v194;
        *(v49 + 1) = v50;
        v51 = &v31[v40[9]];
        v52 = v192;
        *v51 = v193;
        *(v51 + 1) = v42;
        v53 = &v31[v40[10]];
        *v53 = v52;
        *(v53 + 1) = v43;
        *&v31[v40[11]] = v45;
        *&v31[v40[12]] = v46;
        v201 = v33;
        v55 = *(v33 + 16);
        v54 = *(v33 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_2480FC3A0((v54 > 1), v55 + 1, 1);
          v33 = v201;
        }

        v56 = v191 + 1;
        *(v33 + 16) = v55 + 1;
        sub_2480E63BC(v31, v33 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v55, type metadata accessor for User);
        v35 = v56;
      }

      while (v198 != v56);
    }

    else
    {
      v58 = (v185 + 32);
      v189 = *(v181 + 16);
      v190 = (v181 + 16);
      do
      {
        v196 = v58;
        v198 = v34;
        v59 = *v58;
        v60 = v199;
        v61 = v189;
        v189(v24, *v58 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v199);
        LODWORD(v193) = *(v59 + 16);
        v62 = *(v59 + 24);
        v194 = *(v59 + 32);
        v195 = v62;
        v63 = v188;
        v61(&v24[v188[7]], v59 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v60);
        v65 = *(v59 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
        v64 = *(v59 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName + 8);
        v66 = *(v59 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory + 8);
        v192 = *(v59 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
        v67 = *(v59 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell + 8);
        v191 = *(v59 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
        v68 = OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships;
        swift_beginAccess();
        v69 = *(v59 + v68);
        v70 = *(v59 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases);
        *&v24[v63[5]] = v193;
        v71 = &v24[v63[6]];
        v72 = v194;
        *v71 = v195;
        *(v71 + 1) = v72;
        v73 = &v24[v63[8]];
        *v73 = v65;
        *(v73 + 1) = v64;
        v74 = &v24[v63[9]];
        v75 = v191;
        *v74 = v192;
        *(v74 + 1) = v66;
        v76 = &v24[v63[10]];
        *v76 = v75;
        *(v76 + 1) = v67;
        *&v24[v63[11]] = v69;
        *&v24[v63[12]] = v70;
        v201 = v33;
        v78 = *(v33 + 16);
        v77 = *(v33 + 24);

        if (v78 >= v77 >> 1)
        {
          sub_2480FC3A0((v77 > 1), v78 + 1, 1);
          v33 = v201;
        }

        *(v33 + 16) = v78 + 1;
        sub_2480E63BC(v24, v33 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + *(v187 + 72) * v78, type metadata accessor for User);
        v58 = v196 + 1;
        v34 = v198 - 1;
      }

      while (v198 != 1);
    }

    v10 = v197;
    v57 = v184;
    v20 = v173;
  }

  else
  {
    v57 = a2;
  }

  v202 = v33;
  v79 = v199;
  v80 = v177;
  if (v57 >> 62)
  {
    v168 = v57;
    v169 = sub_2481247E8();
    v57 = v168;
    v81 = v169;
  }

  else
  {
    v81 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (!v81)
  {
    goto LABEL_32;
  }

  v82 = v57;
  v200 = MEMORY[0x277D84F90];
  sub_2480FC35C(0, v81 & ~(v81 >> 63), 0);
  if (v81 < 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v15 = v200;
  v83 = v82;
  if ((v82 & 0xC000000000000001) != 0)
  {
    v84 = 0;
    v194 = (v181 + 16);
    v198 = v81;
    do
    {
      v85 = MEMORY[0x24C1C6EA0](v84, v83);
      (*v194)(v20, v85 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v79);
      v86 = *(v85 + 32);
      v87 = *(v85 + 48);
      v88 = *(v85 + 16);
      v89 = *(v85 + 24);
      v195 = *(v85 + 40);
      v196 = v88;
      v90 = *(v85 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
      v91 = *(v85 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);

      swift_unknownObjectRelease();
      v92 = v197;
      *&v20[v197[5]] = v86;
      v93 = &v20[v92[6]];
      v94 = v196;
      *v93 = v195;
      *(v93 + 1) = v87;
      v95 = &v20[v92[7]];
      *v95 = v94;
      *(v95 + 1) = v89;
      *&v20[v92[8]] = v90;
      *&v20[v92[9]] = v91;
      v200 = v15;
      v97 = v15[2];
      v96 = v15[3];
      if (v97 >= v96 >> 1)
      {
        sub_2480FC35C((v96 > 1), v97 + 1, 1);
        v15 = v200;
      }

      ++v84;
      v15[2] = v97 + 1;
      sub_2480E63BC(v20, v15 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v97, type metadata accessor for Group);
      v79 = v199;
      v83 = v184;
    }

    while (v198 != v84);
  }

  else
  {
    v98 = (v82 + 32);
    v195 = *(v181 + 16);
    v196 = (v181 + 16);
    do
    {
      v198 = v81;
      v99 = *v98;
      v195(v80, *v98 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid, v79);
      v101 = *(v99 + 40);
      v100 = *(v99 + 48);
      v102 = *(v99 + 16);
      v103 = *(v99 + 24);
      v104 = *(v99 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups);
      v105 = *(v99 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases);
      v106 = v197;
      *(v80 + v197[5]) = *(v99 + 32);
      v107 = (v80 + v106[6]);
      *v107 = v101;
      v107[1] = v100;
      v108 = (v80 + v106[7]);
      *v108 = v102;
      v108[1] = v103;
      *(v80 + v106[8]) = v104;
      *(v80 + v106[9]) = v105;
      v200 = v15;
      v110 = v15[2];
      v109 = v15[3];

      if (v110 >= v109 >> 1)
      {
        sub_2480FC35C((v109 > 1), v110 + 1, 1);
        v15 = v200;
      }

      v15[2] = v110 + 1;
      sub_2480E63BC(v80, v15 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v110, type metadata accessor for Group);
      ++v98;
      v81 = v198 - 1;
    }

    while (v198 != 1);
  }

  v10 = v197;
LABEL_32:
  v201 = v15;
  v111 = v176;
  v175(&v202, &v201);
  v15 = v111;
  if (!v111)
  {
    sub_2481025F8(v202);
    v118 = v201;
    sub_248102874(v201);
    v174 = 0;
    sub_248104400(&v202, v172);
    v120 = v202;
    v121 = *(v202 + 16);
    v122 = MEMORY[0x277D84F90];
    v176 = v118;
    v175 = v202;
    if (v121)
    {
      v200 = MEMORY[0x277D84F90];
      sub_248124788();
      v123 = v120 + ((*(v187 + 80) + 32) & ~*(v187 + 80));
      v183 = *(v187 + 72);
      v177 = (v181 + 32);
      v124 = v188;
      v125 = v170;
      do
      {
        v198 = v121;
        v126 = v178;
        sub_248105750(v123, v178, type metadata accessor for User);
        sub_2480E63BC(v126, v125, type metadata accessor for User);
        v127 = v124[6];
        LODWORD(v196) = *(v125 + v124[5]);
        v128 = v125 + v127;
        v129 = *(v125 + v127);
        v194 = *(v128 + 8);
        v195 = v129;
        v130 = *v177;
        v131 = v182;
        v132 = v199;
        (*v177)(v182, v125, v199);
        v133 = v124[7];
        v134 = (v125 + v124[8]);
        v135 = *v134;
        v192 = v134[1];
        v193 = v135;
        v136 = (v125 + v124[9]);
        v137 = *v136;
        v190 = v136[1];
        v191 = v137;
        v138 = v179;
        v130(v179, v125 + v133, v132);
        v139 = v124[11];
        v140 = (v125 + v124[10]);
        v141 = *v140;
        v184 = v140[1];
        v185 = v141;
        v189 = *(v125 + v139);
        v187 = *(v125 + v124[12]);
        type metadata accessor for UserRecord(0);
        v142 = swift_allocObject();
        *(v142 + 16) = v196;
        v143 = v194;
        *(v142 + 24) = v195;
        *(v142 + 32) = v143;
        v130((v142 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid), v131, v132);
        v144 = (v142 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
        v145 = v192;
        *v144 = v193;
        v144[1] = v145;
        v146 = (v142 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
        v147 = v190;
        *v146 = v191;
        v146[1] = v147;
        v130((v142 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID), v138, v132);
        v148 = v198;
        v149 = (v142 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
        v150 = v184;
        *v149 = v185;
        v149[1] = v150;
        *(v142 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships) = v189;
        *(v142 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases) = v187;
        sub_248124768();
        sub_248124798();
        sub_2481247A8();
        sub_248124778();
        v123 += v183;
        v121 = v148 - 1;
      }

      while (v121);
      v113 = v200;
      v10 = v197;
      v118 = v176;
      v122 = MEMORY[0x277D84F90];
      v151 = *(v176 + 16);
      if (v151)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v113 = MEMORY[0x277D84F90];
      v151 = *(v118 + 16);
      if (v151)
      {
LABEL_43:
        v189 = v113;
        v200 = v122;
        sub_248124788();
        v152 = v118 + ((*(v186 + 80) + 32) & ~*(v186 + 80));
        v191 = *(v186 + 72);
        v190 = (v181 + 32);
        v153 = v171;
        do
        {
          v154 = v180;
          sub_248105750(v152, v180, type metadata accessor for Group);
          sub_2480E63BC(v154, v153, type metadata accessor for Group);
          v155 = *(v10 + 24);
          LODWORD(v198) = *(v153 + *(v10 + 20));
          v156 = v153 + v155;
          v157 = *(v153 + v155);
          v195 = *(v156 + 8);
          v196 = v157;
          v158 = *v190;
          v159 = v182;
          v160 = v199;
          (*v190)(v182, v153, v199);
          v161 = (v153 + v197[7]);
          v162 = *v161;
          v163 = v161[1];
          v194 = *(v153 + v197[8]);
          v164 = *(v153 + v197[9]);
          v192 = v162;
          v193 = v164;
          type metadata accessor for GroupRecord(0);
          v165 = swift_allocObject();
          *(v165 + 32) = v198;
          v166 = v195;
          *(v165 + 40) = v196;
          *(v165 + 48) = v166;
          v158((v165 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_uuid), v159, v160);
          *(v165 + 16) = v192;
          *(v165 + 24) = v163;
          v167 = v193;
          *(v165 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_nestedGroups) = v194;
          *(v165 + OBJC_IVAR____TtC23DarwinDirectoryInternal11GroupRecord_aliases) = v167;
          sub_248124768();
          sub_248124798();
          v10 = v197;
          sub_2481247A8();
          sub_248124778();
          v152 += v191;
          --v151;
        }

        while (v151);

        return v189;
      }
    }

    return v113;
  }

  if (qword_27EE87A08 != -1)
  {
LABEL_52:
    swift_once();
  }

  v112 = sub_2481242F8();
  v113 = __swift_project_value_buffer(v112, qword_27EE87DE8);
  MEMORY[0x24C1C7A20](v15);
  v114 = sub_2481242D8();
  v115 = sub_248124628();

  if (os_log_type_enabled(v114, v115))
  {
    v113 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    *v113 = 138543362;
    MEMORY[0x24C1C7A20](v15);
    v117 = _swift_stdlib_bridgeErrorToNSError();
    *(v113 + 4) = v117;
    *v116 = v117;
    _os_log_impl(&dword_2480DF000, v114, v115, "Failed to update local users and groups: Performer failed: %{public}@", v113, 0xCu);
    sub_248105CF4(v116, &qword_27EE87E40, "C");
    MEMORY[0x24C1C7B90](v116, -1, -1);
    MEMORY[0x24C1C7B90](v113, -1, -1);
  }

  swift_willThrow();
  return v113;
}

uint64_t sub_248105750(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2481057B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_248105858(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for RecordManager(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2;
  v9 = a1[3];
  v10 = a1[4];
  v11 = __swift_project_boxed_opaque_existential_1(a1, v9);
  v12 = &v8[*(v6 + 28)];
  v12[3] = v9;
  v12[4] = *(v10 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
  sub_2481242E8();
  if (qword_27EE87A08 != -1)
  {
    swift_once();
  }

  v14 = sub_2481242F8();
  v38 = __swift_project_value_buffer(v14, qword_27EE87DE8);
  v15 = sub_2481242D8();
  v16 = sub_248124638();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2480DF000, v15, v16, "Updating local domain...", v17, 2u);
    MEMORY[0x24C1C7B90](v17, -1, -1);
  }

  v35 = sub_2480F4840();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = sub_2480E0A38(1);
  v26 = sub_2481044F8(v24, v25, sub_248105C04, v36, v21);
  if (v2)
  {

    v30 = sub_2481242D8();
    v31 = sub_248124628();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2480DF000, v30, v31, "Failed to update local domain.", v32, 2u);
      MEMORY[0x24C1C7B90](v32, -1, -1);
    }

    swift_willThrow();
    return sub_2481057B8(v8, type metadata accessor for RecordManager);
  }

  else
  {
    v28 = v26;
    v29 = v27;

    sub_2480EC5CC(v28, v29, v35 & 1, v19, v21, v23);
    sub_2481057B8(v8, type metadata accessor for RecordManager);
  }
}

uint64_t sub_248105C28(uint64_t a1)
{
  result = type metadata accessor for User(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_248105C90(uint64_t a1)
{
  result = type metadata accessor for Group(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_248105CF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_248105D78(uint64_t a1, unsigned __int8 a2)
{
  sub_2481244D8();
}

uint64_t sub_248105EE8(uint64_t a1, unsigned __int8 a2)
{
  sub_2481244D8();
}

uint64_t sub_248106014(uint64_t a1, unsigned __int8 a2)
{
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_248106154(uint64_t a1, unsigned __int8 a2)
{
  sub_248124D58();
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_248106264()
{
  v1 = sub_2481242C8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = *(v0 + 24);
  v9 = *(v0 + 40);
  v34 = *(v0 + 32);
  v10 = *(v2 + 16);
  v10(&v27 - v6, v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid, v1);
  v11 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
  v12 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName + 8);
  v13 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory + 8);
  v32 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
  v33 = v11;
  v30 = v13;
  v31 = v12;
  v10(v5, v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v1);
  v14 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
  v15 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell + 8);
  v28 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships);
  v29 = v14;
  v16 = MEMORY[0x277D84FA0];
  if (*(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases))
  {
    v16 = *(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases);
  }

  v27 = v16;
  type metadata accessor for UserRecord(0);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = v34;
  *(v17 + 32) = v9;
  v18 = *(v2 + 32);
  v18(v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_uuid, v7, v1);
  v19 = (v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_fullName);
  v20 = v32;
  v21 = v30;
  v22 = v31;
  *v19 = v33;
  v19[1] = v22;
  v23 = (v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_homeDirectory);
  *v23 = v20;
  v23[1] = v21;
  v18(v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_primaryGroupUUID, v5, v1);
  v24 = (v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_shell);
  v25 = v28;
  *v24 = v29;
  v24[1] = v15;
  *(v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_memberships) = v25;
  *(v17 + OBJC_IVAR____TtC23DarwinDirectoryInternal10UserRecord_aliases) = v27;

  return v17;
}

unint64_t sub_24810650C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6C6C656873;
    v6 = 0x68737265626D656DLL;
    if (a1 != 8)
    {
      v6 = 0x73657361696C61;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x65726944656D6F68;
    if (a1 != 5)
    {
      v7 = 0xD000000000000010;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6E6F6973726576;
    v2 = 1701667182;
    v3 = 1145656661;
    if (a1 != 3)
    {
      v3 = 0x656D614E6C6C7566;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 17481;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_248106640(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_24810650C(*a1);
  v5 = v4;
  if (v3 == sub_24810650C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_248124B38();
  }

  return v8 & 1;
}

uint64_t sub_2481066C8()
{
  v1 = *v0;
  sub_248124D58();
  sub_24810650C(v1);
  sub_2481244D8();

  return sub_248124D88();
}

uint64_t sub_24810672C(uint64_t a1)
{
  sub_24810650C(*v1);
  sub_2481244D8();
}

uint64_t sub_248106780(uint64_t a1)
{
  v2 = *v1;
  sub_248124D58();
  sub_24810650C(v2);
  sub_2481244D8();

  return sub_248124D88();
}

unint64_t sub_2481067E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_248109618(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_248106810@<X0>(unint64_t *a1@<X8>)
{
  result = sub_24810650C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_248106858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248109618(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24810688C(uint64_t a1)
{
  v2 = sub_248108FB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2481068C8(uint64_t a1)
{
  v2 = sub_248108FB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248106904()
{

  v1 = OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid;
  v2 = sub_2481242C8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v2);

  return v0;
}

uint64_t sub_2481069F8()
{
  sub_248106904();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_248106A78(uint64_t a1)
{
  result = sub_2481242C8();
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

uint64_t sub_248106B50(void *a1)
{
  v2 = v1;
  v4 = sub_2481242C8();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EF8, &qword_248126910);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248108FB8();
  sub_248124DA8();
  LOBYTE(v25) = 0;
  v11 = v23;
  sub_2481248E8();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v23 = v6;
  v13 = v22;
  LOBYTE(v25) = 1;
  sub_248124908();
  v21 = v2;
  LOBYTE(v25) = 2;

  sub_2481248C8();

  LOBYTE(v25) = 3;
  sub_248107F7C(&qword_27EE87AE8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2481248F8();
  LOBYTE(v25) = 4;

  sub_2481248C8();
  v20 = 0;

  LOBYTE(v25) = 5;

  v14 = v20;
  sub_2481248C8();
  if (v14)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {

    v15 = v13;
    v16 = *(v13 + 16);
    v17 = v23;
    v16(v23, v21 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v4);
    LOBYTE(v25) = 6;
    sub_2481248F8();
    (*(v15 + 8))(v17, v4);
    v18 = v21;
    LOBYTE(v25) = 7;

    sub_2481248C8();

    v25 = *(v18 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships);
    v24 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
    sub_24810900C(&qword_27EE87F00, &qword_27EE87AE8, MEMORY[0x277CC95F8], MEMORY[0x277D83B50]);
    sub_2481248F8();
    v25 = *(v18 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases);
    v24 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EE8, &qword_248126908);
    sub_2481090A8(&qword_27EE87F08, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_2481248B8();
    return (*(v8 + 8))(v10, 0);
  }
}

void *sub_2481071C8(void *a1)
{
  v3 = v1;
  v44 = *v3;
  v45 = v2;
  v5 = sub_2481242C8();
  v41 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v40 - v9;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EC8, &qword_2481268F8);
  v11 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v13 = v40 - v12;
  v14 = OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases;
  v46 = a1;
  v47 = v3;
  *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_aliases) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248108FB8();
  v43 = v13;
  v15 = v45;
  sub_248124D98();
  if (v15)
  {
    v16 = v47;

    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v8;
    v18 = v14;
    v45 = v5;
    LOBYTE(v49) = 0;
    v19 = sub_248124868();
    v20 = v47;
    v47[2] = v19;
    LOBYTE(v49) = 1;
    v21 = v11;
    *(v20 + 6) = sub_248124888();
    LOBYTE(v49) = 2;
    v20[4] = sub_248124848();
    v20[5] = v23;
    LOBYTE(v49) = 3;
    sub_248107F7C(&qword_27EE87B10, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v24 = v45;
    sub_248124878();
    v25 = v24;
    v26 = *(v41 + 32);
    v27 = v41 + 32;
    v26(v20 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_uuid, v10, v25);
    LOBYTE(v49) = 4;
    v28 = sub_248124848();
    v29 = (v20 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_fullName);
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v49) = 5;
    v40[1] = 0;
    v31 = sub_248124848();
    v40[0] = v27;
    v32 = (v20 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_homeDirectory);
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v49) = 6;
    v34 = v45;
    sub_248124878();
    v26(v20 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_primaryGroupUUID, v17, v34);
    LOBYTE(v49) = 7;
    v35 = v42;
    v36 = sub_248124848();
    v37 = (v20 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_shell);
    *v37 = v36;
    v37[1] = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
    v48 = 8;
    sub_24810900C(&qword_27EE87EE0, &qword_27EE87B10, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
    sub_248124878();
    *(v20 + OBJC_IVAR____TtC23DarwinDirectoryInternal14UserRecordFile_memberships) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EE8, &qword_248126908);
    v48 = 9;
    sub_2481090A8(&qword_27EE87EF0, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    v39 = v43;
    sub_248124838();
    (*(v21 + 8))(v39, v35);
    v16 = v47;
    *(v47 + v18) = v49;
  }

  __swift_destroy_boxed_opaque_existential_0(v46);
  return v16;
}

uint64_t sub_248107994(uint64_t a1)
{
  sub_2481244D8();
}

unint64_t sub_248107A98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_248109664(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_248107AC8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6973726576;
  v5 = 0xEC0000007370756FLL;
  v6 = 0x724764657473656ELL;
  if (v2 != 5)
  {
    v6 = 0x73657361696C61;
    v5 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1145656661;
  if (v2 != 3)
  {
    v8 = 0x656D614E6C6C7566;
    v7 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE200000000000000;
  v10 = 17481;
  if (v2 != 1)
  {
    v10 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_248107B94()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0x724764657473656ELL;
  if (v1 != 5)
  {
    v3 = 0x73657361696C61;
  }

  v4 = 1145656661;
  if (v1 != 3)
  {
    v4 = 0x656D614E6C6C7566;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 17481;
  if (v1 != 1)
  {
    v5 = 1701667182;
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

unint64_t sub_248107C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_248109664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_248107C90(uint64_t a1)
{
  v2 = sub_248109114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_248107CCC(uint64_t a1)
{
  v2 = sub_248109114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_248107D08()
{

  v1 = OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid;
  v2 = sub_2481242C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_248107E08(uint64_t a1)
{
  result = sub_2481242C8();
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

uint64_t sub_248107ECC(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87A28, type metadata accessor for GroupRecordFile, &unk_248126880);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248107F24(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87A30, type metadata accessor for UserRecordFile, &unk_2481268D0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248107F7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_248107FC4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F20, &unk_248126920);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248109114();
  sub_248124DA8();
  LOBYTE(v11) = 0;
  sub_2481248E8();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_248124908();
    LOBYTE(v11) = 2;

    sub_2481248C8();

    LOBYTE(v11) = 3;
    sub_2481242C8();
    sub_248107F7C(&qword_27EE87AE8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_2481248F8();
    LOBYTE(v11) = 4;

    sub_2481248C8();

    v11 = *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups);
    HIBYTE(v10) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
    sub_24810900C(&qword_27EE87F00, &qword_27EE87AE8, MEMORY[0x277CC95F8], MEMORY[0x277D83B50]);
    sub_2481248B8();
    v11 = *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases);
    HIBYTE(v10) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EE8, &qword_248126908);
    sub_2481090A8(&qword_27EE87F08, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
    sub_2481248B8();
  }

  return (*(v6 + 8))(v8, v5);
}

void *sub_248108394(void *a1)
{
  v3 = v1;
  v28 = *v3;
  v29 = v2;
  v5 = sub_2481242C8();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F10, &qword_248126918);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups;
  *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_nestedGroups) = 0;
  v9 = OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases;
  v30 = v3;
  v31 = a1;
  *(v3 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_aliases) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_248109114();
  v10 = v29;
  sub_248124D98();
  if (v10)
  {
    v11 = v30;

    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v7;
    v29 = v8;
    v13 = v5;
    v24 = v9;
    v14 = v25;
    v15 = v26;
    LOBYTE(v33) = 0;
    v16 = sub_248124868();
    v11 = v30;
    v30[2] = v16;
    LOBYTE(v33) = 1;
    *(v11 + 6) = sub_248124888();
    LOBYTE(v33) = 2;
    v11[4] = sub_248124848();
    v11[5] = v18;
    LOBYTE(v33) = 3;
    sub_248107F7C(&qword_27EE87B10, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_248124878();
    (*(v15 + 32))(v11 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_uuid, v12, v13);
    LOBYTE(v33) = 4;
    v19 = sub_248124848();
    v20 = (v11 + OBJC_IVAR____TtC23DarwinDirectoryInternal15GroupRecordFile_fullName);
    *v20 = v19;
    v20[1] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87ED8, &qword_248126900);
    v32 = 5;
    sub_24810900C(&qword_27EE87EE0, &qword_27EE87B10, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
    v22 = v27;
    sub_248124838();
    *(v11 + v29) = v33;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87EE8, &qword_248126908);
    v32 = 6;
    sub_2481090A8(&qword_27EE87EF0, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_248124838();
    (*(v14 + 8))(0, v22);
    *(v11 + v24) = v33;
  }

  __swift_destroy_boxed_opaque_existential_0(v31);
  return v11;
}

uint64_t sub_248108944@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = a2(a1);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

void *sub_2481089D0()
{
  v2 = *(v0 + 16);
  if (v2 != 3)
  {
    v5 = sub_248124748();
    swift_allocError();
    v4 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F28, &unk_248126F70);
    v4[3] = MEMORY[0x277D83E88];
    *v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2481262D0;
    *(v7 + 56) = &type metadata for UserRecordFile.CodingKeys;
    *(v7 + 64) = sub_248108FB8();
    *(v7 + 32) = 0;
    sub_248124718();
    (*(*(v5 - 8) + 104))(v4, *MEMORY[0x277D841A8], v5);
    swift_willThrow();
    return v4;
  }

  sub_248124198();
  swift_allocObject();
  sub_248124188();
  sub_248107F7C(&qword_27EE87EB8, type metadata accessor for UserRecordFile, &unk_2481268A8);
  v3 = sub_248124178();
  if (!v1)
  {
    v4 = v3;

    return v4;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_248108C14()
{
  v2 = *(v0 + 16);
  if (v2 != 3)
  {
    v5 = sub_248124748();
    swift_allocError();
    v4 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F28, &unk_248126F70);
    v4[3] = MEMORY[0x277D83E88];
    *v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE87F30, &qword_248126930);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2481262D0;
    *(v7 + 56) = &type metadata for GroupRecordFile.CodingKeys;
    *(v7 + 64) = sub_248109114();
    *(v7 + 32) = 0;
    sub_248124718();
    (*(*(v5 - 8) + 104))(v4, *MEMORY[0x277D841A8], v5);
    swift_willThrow();
    return v4;
  }

  sub_248124198();
  swift_allocObject();
  sub_248124188();
  sub_248107F7C(&qword_27EE87EA8, type metadata accessor for GroupRecordFile, &unk_248126858);
  v3 = sub_248124178();
  if (!v1)
  {
    v4 = v3;

    return v4;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_248108E58(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87EA8, type metadata accessor for GroupRecordFile, &unk_248126858);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248108EB0(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87EB0, type metadata accessor for GroupRecordFile, &unk_2481267E8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248108F08(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87EB8, type metadata accessor for UserRecordFile, &unk_2481268A8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_248108F60(uint64_t a1)
{
  result = sub_248107F7C(&qword_27EE87EC0, type metadata accessor for UserRecordFile, &unk_248126820);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_248108FB8()
{
  result = qword_27EE87ED0;
  if (!qword_27EE87ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87ED0);
  }

  return result;
}

uint64_t sub_24810900C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87ED8, &qword_248126900);
    sub_248107F7C(a2, MEMORY[0x277CC95F0], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2481090A8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE87EE8, &qword_248126908);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_248109114()
{
  result = qword_27EE87F18;
  if (!qword_27EE87F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE87F18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GroupRecordFile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GroupRecordFile.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserRecordFile.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}