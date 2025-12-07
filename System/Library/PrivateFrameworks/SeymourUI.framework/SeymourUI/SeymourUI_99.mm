id sub_20C04F454(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterResultHeaderShelf;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v3 contentView];
    v10 = [v9 subviews];

    sub_20B5E5C28();
    v11 = sub_20C13CC74();

    v25[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2F5430](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v8 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_20B6FFB30(&v28, v14);

        ++v13;
        if (v8 == i)
        {
          v15 = v25[0];
          v8 = &OBJC_IVAR____TtC9SeymourUI23TrainerPageDataProvider_filterResultHeaderShelf;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    v29 = v15;
    sub_20B6FFB30(v25, *&v4[v8[502]]);

    sub_20B8E9218(v29);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, v25);
        v20 = *&v4[v7];
        v21 = v26;
        v22 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*(v22 + 24))(v20, a2, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v6 = a1;
  }

  return [*&v4[v8[502]] setControlState:v6 withAnimationCoordinator:a2];
}

id sub_20C04F6C4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TVTitleDisplayingFloatingContentCell();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_20C04F954(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_20B51F1D8(v3, v9);
      if (swift_dynamicCast())
      {
        if (v8 == 1)
        {
          v5 = (v1 + OBJC_IVAR____TtC9SeymourUI32RemoveDownloadShareSheetActivity_workoutIdentifier);
          *v5 = v6;
          v5[1] = v7;

          return result;
        }

        result = sub_20B624748(v6, v7, v8);
      }

      v3 += 32;
      --v2;
    }

    while (v2);
  }

  return result;
}

id sub_20C04FA78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - v4;
  if (*&v0[OBJC_IVAR____TtC9SeymourUI32RemoveDownloadShareSheetActivity_workoutIdentifier + 8])
  {
    __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC9SeymourUI32RemoveDownloadShareSheetActivity_assetClient], *&v0[OBJC_IVAR____TtC9SeymourUI32RemoveDownloadShareSheetActivity_assetClient + 24]);

    sub_20C139E04();

    v6 = sub_20C137CB4();
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v6(sub_20B52347C, v7);

    (*(v2 + 8))(v5, v1);
    return [v0 activityDidFinish_];
  }

  else
  {

    return [v0 activityDidFinish_];
  }
}

id sub_20C04FCE0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RemoveDownloadShareSheetActivity();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for ThemeFilterUpdated(uint64_t a1)
{
  result = qword_27C771FC8;
  if (!qword_27C771FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C04FDFC()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v53 = *(v2 - 8);
  v54 = v2;
  MEMORY[0x28223BE20](v2);
  v52 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20C137374();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000, &unk_20C16D940);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v49 - v9;
  v11 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanTemplateMetadata;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v11, v10, &unk_27C772000, &unk_20C16D940);
  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_20B520158(v10, &unk_27C772000, &unk_20C16D940);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_20B520158(v10, &unk_27C772000, &unk_20C16D940);
    sub_20C137314();
    (*(v5 + 8))(v7, v4);
  }

  v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v13 = sub_20C13C914();

  v14 = [v12 initWithString_];

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768180, &unk_20C177B40);
  v16 = swift_allocBox();
  v18 = v17;
  v19 = v15[12];
  v20 = v15[16];
  v21 = v15[20];
  v22 = sub_20C135814();
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  *(v18 + v19) = v14;
  v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle);
  *(v18 + v20) = v23;
  v24 = v23;
  v25 = v14;
  *(v18 + v21) = sub_20C051060();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  *(v26 + 32) = v16 | 0x9000000000000001;
  v58 = 0uLL;
  LOBYTE(v59) = 1;
  *(&v59 + 1) = *v57;
  DWORD1(v59) = *&v57[3];
  *(&v59 + 1) = 0;
  *&v60 = 0;
  WORD4(v60) = 128;
  *(&v60 + 10) = *&v55[7];
  HIWORD(v60) = v56;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  LOBYTE(v64) = 0;
  *(&v64 + 1) = *v55;
  DWORD1(v64) = *&v55[3];
  *(&v64 + 1) = v26;
  *&v65[0] = MEMORY[0x277D84F90];
  *(v65 + 8) = 0u;
  *(&v65[1] + 8) = 0u;
  *(&v65[2] + 1) = 0;
  v66 = 2;
  nullsub_1();
  v27 = v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row;
  v28 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 144);
  v67[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 128);
  v67[9] = v28;
  v68 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 160);
  v29 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 80);
  v67[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 64);
  v67[5] = v29;
  v30 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 112);
  v67[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 96);
  v67[7] = v30;
  v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 16);
  v67[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row);
  v67[1] = v31;
  v32 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 48);
  v67[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 32);
  v67[3] = v32;
  v33 = v65[0];
  v34 = v65[2];
  *(v27 + 128) = v65[1];
  *(v27 + 144) = v34;
  *(v27 + 160) = v66;
  v35 = v63;
  *(v27 + 64) = v62;
  *(v27 + 80) = v35;
  *(v27 + 96) = v64;
  *(v27 + 112) = v33;
  v36 = v59;
  *v27 = v58;
  *(v27 + 16) = v36;
  v37 = v61;
  *(v27 + 32) = v60;
  *(v27 + 48) = v37;

  sub_20B520158(v67, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v39 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    sub_20B61D050(v1, Strong);
    if (v41)
    {
      v43 = v41;
      v50 = v40;
      v51 = v42;
      sub_20B5E2E18();
      v44 = sub_20C13D374();
      v46 = v52;
      v45 = v53;
      *v52 = v44;
      v47 = v54;
      (*(v45 + 104))(v46, *MEMORY[0x277D85200], v54);
      v48 = sub_20C13C584();
      (*(v45 + 8))(v46, v47);
      if ((v48 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_20B6206D8(v50, v43, v51, v1, 0, v39);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

void sub_20C0503AC()
{
  v1 = v0;
  v2 = sub_20C1327F4();
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x28223BE20](v2);
  v92 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_20C133594();
  v103 = *(v100 - 1);
  MEMORY[0x28223BE20](v100);
  v97 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0, &qword_20C14FC90);
  MEMORY[0x28223BE20](v5 - 8);
  v96 = &v83 - v6;
  v101 = sub_20C132E94();
  v95 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v98 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v99 = &v83 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762230, &qword_20C14FC08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v83 - v11;
  v13 = sub_20C135214();
  v106 = *(v13 - 8);
  v107 = v13;
  MEMORY[0x28223BE20](v13);
  v102 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C133154();
  v104 = *(v15 - 8);
  v105 = v15;
  MEMORY[0x28223BE20](v15);
  v91 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v83 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v83 - v21;
  v23 = sub_20C133954();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  v28 = v1 + v27;
  v29 = v23;
  v30 = v24;
  sub_20B52F9E8(v28, v22, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v24 + 48))(v22, 1, v29) == 1)
  {
    sub_20B520158(v22, &unk_27C76A970, &qword_20C14FC10);
    v31 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle);
    *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle) = 0;
LABEL_3:

    return;
  }

  v90 = v1;
  (*(v24 + 32))(v26, v22, v29);
  sub_20C133014();
  sub_20C133914();
  v32 = v19;
  v34 = v106;
  v33 = v107;
  (*(v106 + 56))(v12, 0, 1, v107);
  v35 = v102;
  (*(v34 + 32))(v102, v12, v33);
  v36 = v97;
  sub_20C133944();
  v37 = v98;
  sub_20C133564();
  v89 = v26;
  v38 = *(v103 + 8);
  v103 += 8;
  v85 = v38;
  v38(v36, v100);
  v39 = v32;
  v40 = v96;
  v88 = v39;
  sub_20C132D74();
  v41 = v95;
  v42 = *(v95 + 8);
  v43 = v101;
  v86 = v95 + 8;
  v87 = v42;
  v42(v37, v101);
  if ((*(v41 + 48))(v40, 1, v43) == 1)
  {
    (*(v34 + 8))(v35, v33);
    (*(v104 + 8))(v88, v105);
    (*(v30 + 8))(v89, v29);
    sub_20B520158(v40, &qword_27C762AC0, &qword_20C14FC90);
    return;
  }

  v84 = v29;
  (*(v41 + 32))(v99, v40, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A88, &unk_20C15E4B0);
  v44 = sub_20C133134();
  v45 = *(v44 - 8);
  v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_20C14F980;
  (*(v45 + 104))(v47 + v46, *MEMORY[0x277CC9968], v44);
  sub_20BE8D12C(v47);
  swift_setDeallocating();
  (*(v45 + 8))(v47 + v46, v44);
  v48 = v101;
  swift_deallocClassInstance();
  sub_20C133944();
  v49 = v88;
  sub_20C133564();
  v85(v36, v100);
  v50 = v99;
  v51 = v92;
  sub_20C133054();

  v52 = v87;
  v87(v37, v48);
  v53 = v49;
  v54 = sub_20C132774();
  LOBYTE(v49) = v55;
  (*(v93 + 8))(v51, v94);
  v56 = (v104 + 8);
  if ((v49 & 1) == 0)
  {
    v104 = v54;
    sub_20C132E84();
    v57 = v91;
    sub_20C133124();
    v103 = sub_20C132D94();
    v59 = v58;
    v60 = *v56;
    v61 = v105;
    (*v56)(v57, v105);
    v52(v37, v48);
    v62 = v48;
    if (v59)
    {
      v52(v50, v48);
      (*(v106 + 8))(v102, v107);
      v60(v88, v61);
      goto LABEL_10;
    }

    v100 = v60;
    v63 = sub_20C135204();
    v64 = v63 + v104;
    if (__OFADD__(v63, v104))
    {
      __break(1u);
    }

    else
    {
      v65 = v64 + 1;
      v66 = v90;
      if (!__OFADD__(v64, 1))
      {
        v67 = v64 + 4;
        if (!__OFADD__(v65, 3))
        {
          v68 = __OFSUB__(v67, v67 % 7);
          v69 = v67 - v67 % 7;
          if (!v68)
          {
            if (v69 >= v65)
            {
              goto LABEL_22;
            }

            v70 = ceil(v65 / 7.0);
            if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v70 > -9.22337204e18)
              {
                if (v70 < 9.22337204e18)
                {
                  v71 = v62;
                  v69 = 7 * v70;
                  if ((v70 * 7) >> 64 == v69 >> 63)
                  {
LABEL_23:
                    v72 = v103 / 7;
                    v73 = v69 / 7;
                    v74 = *(v66 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60, &qword_20C14FC50);
                    v75 = swift_allocObject();
                    *(v75 + 16) = xmmword_20C14F320;
                    v76 = MEMORY[0x277D83B88];
                    v77 = MEMORY[0x277D83C10];
                    *(v75 + 56) = MEMORY[0x277D83B88];
                    *(v75 + 64) = v77;
                    *(v75 + 32) = (v72 & ~(v72 >> 63)) + 1;
                    *(v75 + 96) = v76;
                    *(v75 + 104) = v77;
                    *(v75 + 72) = v73;
                    v78 = v74[9];
                    v79 = v74[10];
                    __swift_project_boxed_opaque_existential_1(v74 + 6, v78);
                    sub_20B5E10B0(0x5F544E4552525543, 0xEC0000004B454557, v75, v78, v79);

                    v80 = objc_allocWithZone(MEMORY[0x277CCA898]);
                    v81 = sub_20C13C914();

                    v82 = [v80 initWithString_];

                    v87(v99, v71);
                    (*(v106 + 8))(v102, v107);
                    v100(v88, v61);
                    (*(v30 + 8))(v89, v84);
                    v31 = *(v66 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle);
                    *(v66 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle) = v82;
                    goto LABEL_3;
                  }

                  __break(1u);
LABEL_22:
                  v71 = v62;
                  goto LABEL_23;
                }

LABEL_30:
                __break(1u);
                return;
              }

LABEL_29:
              __break(1u);
              goto LABEL_30;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_26;
  }

  v52(v50, v48);
  (*(v106 + 8))(v102, v107);
  (*v56)(v53, v105);
LABEL_10:
  (*(v30 + 8))(v89, v84);
}

uint64_t sub_20C051060()
{
  v1 = type metadata accessor for ButtonAction(0);
  v2 = *(v1 - 8);
  v3 = v2;
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder);
  v10 = v9[9];
  v11 = v9[10];
  __swift_project_boxed_opaque_existential_1(v9 + 6, v10);
  v12 = sub_20B5E107C(0xD000000000000024, 0x800000020C1A6BB0, v10, v11);
  v14 = v13;
  type metadata accessor for ButtonAction.ActionType(0);
  swift_storeEnumTagMultiPayload();
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v8 + 1) = xmmword_20C18B170;
  *(v8 + 4) = v12;
  *(v8 + 5) = v14;
  v15 = v9[9];
  v16 = v9[10];
  __swift_project_boxed_opaque_existential_1(v9 + 6, v15);
  v17 = sub_20B5E107C(0xD00000000000001DLL, 0x800000020C1A6BE0, v15, v16);
  v19 = v18;
  swift_storeEnumTagMultiPayload();
  *v5 = 0;
  *(v5 + 1) = 0;
  *(v5 + 1) = xmmword_20C18B180;
  *(v5 + 4) = v17;
  *(v5 + 5) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B0, &unk_20C14FE40);
  v20 = *(v2 + 72);
  v21 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_20C14F320;
  v23 = v22 + v21;
  sub_20B7F11D4(v8, v23, type metadata accessor for ButtonAction);
  sub_20B5F6860(v5, v23 + v20);
  sub_20C056F3C(v8, type metadata accessor for ButtonAction);
  return v22;
}

uint64_t sub_20C0512C8(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v80 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = v66 - v4;
  v90 = sub_20C132EE4();
  v75 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v73 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v5;
  MEMORY[0x28223BE20](v6);
  v89 = v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = v66 - v9;
  v77 = sub_20C1333A4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v88 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v11 - 8);
  v72 = v66 - v12;
  v13 = sub_20C1352E4();
  v86 = *(v13 - 8);
  v87 = v13;
  MEMORY[0x28223BE20](v13);
  v85 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v15 - 8);
  v71 = v66 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v17 - 8);
  v84 = v66 - v18;
  v83 = sub_20C134F24();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v66 - v22;
  v24 = sub_20C133954();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v28, v23, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    return sub_20B520158(v23, &unk_27C76A970, &qword_20C14FC10);
  }

  v69 = v25;
  v30 = *(v25 + 32);
  v70 = v27;
  v68 = v24;
  v30(v27, v23, v24);
  v93 = v2;
  v31 = v20;
  (*(v82 + 104))(v20, *MEMORY[0x277D513B8], v83);
  v32 = *MEMORY[0x277D52B40];
  v33 = sub_20C136664();
  v34 = *(v33 - 8);
  v35 = v84;
  (*(v34 + 104))(v84, v32, v33);
  (*(v34 + 56))(v35, 0, 1, v33);
  v36 = sub_20C132C14();
  v37 = v71;
  (*(*(v36 - 8) + 56))();
  (*(v86 + 104))(v85, *MEMORY[0x277D51768], v87);
  v38 = sub_20C135ED4();
  v39 = v72;
  (*(*(v38 - 8) + 56))();
  v66[2] = v2;
  sub_20C051E18(v88);
  v40 = sub_20C136E94();
  v41 = v74;
  (*(*(v40 - 8) + 56))(v74, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258, &qword_20C15AFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v43 = v89;
  sub_20C133804();
  v44 = sub_20C132EA4();
  v46 = v45;
  v47 = v75;
  v67 = *(v75 + 8);
  v66[1] = v75 + 8;
  v67(v43, v90);
  v91 = v44;
  v92 = v46;
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260, &unk_20C14FC80);
  type metadata accessor for TVWorkoutPlanDetailHeaderShelf(0);
  sub_20C056FA4();
  v48 = v31;
  v49 = v84;
  v50 = v37;
  v51 = v85;
  v52 = v39;
  v53 = v88;
  sub_20C138DB4();

  sub_20B520158(v41, &unk_27C76BC90, &unk_20C1586D0);
  (*(v76 + 8))(v53, v77);
  sub_20B520158(v52, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v86 + 8))(v51, v87);
  sub_20B520158(v50, &unk_27C7617F0, &unk_20C151A10);
  sub_20B520158(v49, &unk_27C7622E0, &unk_20C14FCF0);
  (*(v82 + 8))(v48, v83);
  v54 = v89;
  v55 = v70;
  sub_20C133854();
  v56 = sub_20C13CDF4();
  v57 = v79;
  (*(*(v56 - 8) + 56))(v79, 1, 1, v56);
  v58 = swift_allocObject();
  swift_weakInit();
  v59 = v73;
  v60 = v90;
  (*(v47 + 16))(v73, v54, v90);
  v61 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v62 = (v78 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  *(v63 + 2) = 0;
  *(v63 + 3) = 0;
  *(v63 + 4) = v58;
  (*(v47 + 32))(&v63[v61], v59, v60);
  v64 = &v63[v62];
  v65 = v81;
  *v64 = v80;
  v64[1] = v65;

  sub_20B615240(0, 0, v57, &unk_20C18B2F0, v63);

  v67(v54, v60);
  return (*(v69 + 8))(v55, v68);
}

uint64_t sub_20C051E18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v40 - v10;
  v11 = sub_20C132E94();
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C135214();
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v40 - v18;
  v20 = sub_20C133954();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v2 + v24, v19, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_20B520158(v19, &unk_27C76A970, &qword_20C14FC10);
    v25 = sub_20C1352F4();
    (*(*(v25 - 8) + 56))(v44, 1, 1, v25);
    v26 = sub_20C132C14();
    (*(*(v26 - 8) + 56))(v45, 1, 1, v26);
    v27 = sub_20C135ED4();
    (*(*(v27 - 8) + 56))(v46, 1, 1, v27);
    v28 = sub_20C136914();
    (*(*(v28 - 8) + 56))(v47, 1, 1, v28);
    return sub_20C133384();
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
    sub_20C132E64();
    sub_20C1338C4();
    (*(v40 + 8))(v13, v41);
    v30 = sub_20C133874();
    v40 = v31;
    v41 = v30;
    v32 = v44;
    sub_20C133864();
    v33 = sub_20C1352F4();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    v34 = v2 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_pageContext;
    v35 = *(v2 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_pageContext);
    v36 = *(v34 + 8);
    v37 = sub_20C132C14();
    (*(*(v37 - 8) + 56))(v45, 1, 1, v37);
    v38 = sub_20C135ED4();
    (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
    v39 = sub_20C136914();
    (*(*(v39 - 8) + 56))(v47, 1, 1, v39);
    sub_20B58C2C8(v35, v36);
    sub_20C133384();
    (*(v42 + 8))(v16, v43);
    return (*(v21 + 8))(v23, v20);
  }
}

uint64_t sub_20C052508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v7[10] = a1;
  return MEMORY[0x2822009F8](sub_20C052530, 0, 0);
}

uint64_t sub_20C052530()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanClient, v0 + 16);

    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_20C052678;
    v5 = *(v0 + 104);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);

    return MEMORY[0x2821ADF18](v7, v5, v6, v2, v3);
  }

  else
  {
    **(v0 + 80) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_20C052678()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_20C05278C;
  }

  else
  {
    v2 = sub_20C057290;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C05278C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C0527F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v2 - 8);
  v71 = v55 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v4 - 8);
  v69 = v55 - v5;
  v70 = sub_20C1333A4();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v65 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = v55 - v8;
  v76 = sub_20C1352E4();
  v60 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v62 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v10 - 8);
  v75 = v55 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v12 - 8);
  v59 = v55 - v13;
  v14 = sub_20C134F24();
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x28223BE20](v14);
  v72 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_20C132EE4();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v55 - v21;
  v23 = sub_20C133954();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v27, v22, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    return sub_20B520158(v22, &unk_27C76A970, &qword_20C14FC10);
  }

  v58 = v24;
  v29 = *(v24 + 32);
  v56 = v26;
  v57 = v23;
  v29(v26, v22, v23);
  v55[0] = v19;
  sub_20C133804();
  v79 = v1;
  v55[1] = v1;
  (*(v73 + 104))(v72, *MEMORY[0x277D51430], v74);
  v30 = *MEMORY[0x277D52B40];
  v31 = sub_20C136664();
  v32 = *(v31 - 8);
  v33 = v59;
  (*(v32 + 104))(v59, v30, v31);
  (*(v32 + 56))(v33, 0, 1, v31);
  v34 = sub_20C132C14();
  (*(*(v34 - 8) + 56))(v75, 1, 1, v34);
  v35 = v60;
  v36 = v62;
  (*(v60 + 104))(v62, *MEMORY[0x277D51768], v76);
  v37 = sub_20C135ED4();
  v38 = v64;
  (*(*(v37 - 8) + 56))(v64, 1, 1, v37);
  v39 = v65;
  sub_20C051E18(v65);
  v40 = sub_20C136E94();
  v41 = v69;
  (*(*(v40 - 8) + 56))(v69, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258, &qword_20C15AFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v77 = sub_20C132EA4();
  v78 = v43;
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260, &unk_20C14FC80);
  type metadata accessor for TVWorkoutPlanDetailHeaderShelf(0);
  sub_20C056FA4();
  v44 = v72;
  v45 = v75;
  sub_20C138DB4();

  sub_20B520158(v41, &unk_27C76BC90, &unk_20C1586D0);
  (*(v68 + 8))(v39, v70);
  sub_20B520158(v38, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v35 + 8))(v36, v76);
  sub_20B520158(v45, &unk_27C7617F0, &unk_20C151A10);
  sub_20B520158(v33, &unk_27C7622E0, &unk_20C14FCF0);
  (*(v73 + 8))(v44, v74);
  v46 = sub_20C13CDF4();
  v47 = v71;
  (*(*(v46 - 8) + 56))(v71, 1, 1, v46);
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = v66;
  v50 = v63;
  v51 = v55[0];
  v52 = v67;
  (*(v66 + 16))(v63, v55[0], v67);
  v53 = (*(v49 + 80) + 40) & ~*(v49 + 80);
  v54 = swift_allocObject();
  *(v54 + 2) = 0;
  *(v54 + 3) = 0;
  *(v54 + 4) = v48;
  (*(v49 + 32))(&v54[v53], v50, v52);
  sub_20B615240(0, 0, v47, &unk_20C18B2E0, v54);

  (*(v49 + 8))(v51, v52);
  return (*(v58 + 8))(v56, v57);
}

uint64_t sub_20C0532BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  return MEMORY[0x2822009F8](sub_20C0532E0, 0, 0);
}

uint64_t sub_20C0532E0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanClient, v0 + 16);

    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_20C053424;
    v5 = *(v0 + 96);

    return MEMORY[0x2821ADEC8](v5, v2, v3);
  }

  else
  {
    **(v0 + 80) = 1;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_20C053424()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_20C0535A4;
  }

  else
  {
    v2 = sub_20C053538;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20C053538()
{
  **(v0 + 80) = 0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C0535A4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20C053608()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanClient));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_remoteBrowsingSource));
  swift_unknownObjectRelease();

  sub_20B58CFB0(*(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_pageContext), *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_pageContext + 8));
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan, &unk_27C76A970, &qword_20C14FC10);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanTemplateMetadata, &unk_27C772000, &unk_20C16D940);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanSummary, &unk_27C772020, &qword_20C182C00);

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  return v0;
}

uint64_t sub_20C0537E0()
{
  sub_20C053608();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWorkoutPlanDetailHeaderShelf(uint64_t a1)
{
  result = qword_27C771FD8;
  if (!qword_27C771FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C05388C(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20C053A80(319, &qword_27C7629F8, MEMORY[0x277D50180]);
    if (v2 <= 0x3F)
    {
      sub_20C053A80(319, &qword_27C771FF0, MEMORY[0x277D53288]);
      if (v3 <= 0x3F)
      {
        sub_20C053A80(319, &qword_27C76F598, MEMORY[0x277D518F8]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20C053A80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20C053AD4()
{
  v62 = sub_20C132EE4();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20C133954();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v58 - v7;
  v76 = sub_20C1333A4();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v58 - v12;
  v14 = sub_20C1352E4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v58 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v58 - v22;
  v24 = sub_20C134F24();
  v25 = MEMORY[0x28223BE20](v24);
  v79 = v0;
  v66 = v27;
  v28 = *(v27 + 104);
  v65 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v29;
  v28(v25);
  v30 = sub_20C136664();
  v31 = *(*(v30 - 8) + 56);
  v67 = v23;
  v31(v23, 1, 1, v30);
  v32 = sub_20C132C14();
  v33 = *(*(v32 - 8) + 56);
  v69 = v20;
  v34 = v20;
  v35 = v63;
  v33(v34, 1, 1, v32);
  v36 = *MEMORY[0x277D51768];
  v70 = v15;
  v37 = v15;
  v38 = v64;
  v39 = *(v37 + 104);
  v72 = v14;
  v39(v17, v36, v14);
  v40 = sub_20C135ED4();
  v41 = *(*(v40 - 8) + 56);
  v71 = v13;
  v41(v13, 1, 1, v40);
  v73 = v10;
  sub_20C051E18(v10);
  v42 = sub_20C136E94();
  v43 = *(*(v42 - 8) + 56);
  v75 = v8;
  v43(v8, 1, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258, &qword_20C15AFE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 9;
  v45 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v45, v5, &unk_27C76A970, &qword_20C14FC10);
  if ((*(v38 + 48))(v5, 1, v35))
  {
    sub_20B520158(v5, &unk_27C76A970, &qword_20C14FC10);
    v46 = 0;
    v47 = 0;
  }

  else
  {
    v48 = v59;
    (*(v38 + 16))(v59, v5, v35);
    sub_20B520158(v5, &unk_27C76A970, &qword_20C14FC10);
    v49 = v60;
    sub_20C133804();
    (*(v38 + 8))(v48, v35);
    v46 = sub_20C132EA4();
    v47 = v50;
    (*(v61 + 8))(v49, v62);
  }

  v77 = v46;
  v78 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830, &qword_20C15CA20);
  sub_20B82898C();
  sub_20C13DC04();
  sub_20B6B29D4(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C762260, &unk_20C14FC80);
  type metadata accessor for TVWorkoutPlanDetailHeaderShelf(0);
  sub_20C056FA4();
  v51 = v75;
  v52 = v65;
  v53 = v67;
  v54 = v69;
  v55 = v71;
  v56 = v73;
  sub_20C138DB4();

  sub_20B520158(v51, &unk_27C76BC90, &unk_20C1586D0);
  (*(v74 + 8))(v56, v76);
  sub_20B520158(v55, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v70 + 8))(v17, v72);
  sub_20B520158(v54, &unk_27C7617F0, &unk_20C151A10);
  sub_20B520158(v53, &unk_27C7622E0, &unk_20C14FCF0);
  return (*(v66 + 8))(v52, v68);
}

double sub_20C0543D8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3();
  }

  return result;
}

uint64_t sub_20C054438()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v1 - 8);
  v36 = &v31 - v2;
  v3 = sub_20C1333A4();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = &v31 - v6;
  v39 = sub_20C1352E4();
  v32 = *(v39 - 8);
  v7 = v32;
  MEMORY[0x28223BE20](v39);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v35 = sub_20C134F24();
  v16 = *(v35 - 8);
  v17 = MEMORY[0x28223BE20](v35);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v0;
  (*(v16 + 104))(v19, *MEMORY[0x277D51468], v17);
  v20 = *MEMORY[0x277D52B40];
  v21 = sub_20C136664();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v15, v20, v21);
  (*(v22 + 56))(v15, 0, 1, v21);
  v23 = sub_20C132C14();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  (*(v7 + 104))(v9, *MEMORY[0x277D51768], v39);
  v24 = sub_20C135ED4();
  v25 = v33;
  (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  v26 = v34;
  sub_20C051E18(v34);
  v27 = sub_20C136E94();
  v28 = v36;
  (*(*(v27 - 8) + 56))(v36, 1, 1, v27);
  sub_20C0551E8(MEMORY[0x277D84F90]);
  type metadata accessor for TVWorkoutPlanDetailHeaderShelf(0);
  sub_20C056FA4();
  v29 = v31;
  sub_20C138DB4();

  sub_20B520158(v28, &unk_27C76BC90, &unk_20C1586D0);
  (*(v37 + 8))(v26, v38);
  sub_20B520158(v25, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v32 + 8))(v29, v39);
  sub_20B520158(v12, &unk_27C7617F0, &unk_20C151A10);
  sub_20B520158(v15, &unk_27C7622E0, &unk_20C14FCF0);
  return (*(v16 + 8))(v19, v35);
}

double sub_20C054A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20C0512C8(a1, a2);
  }

  return result;
}

uint64_t sub_20C054A78@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C054AF0@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_20C054BF0(uint64_t a1)
{
  sub_20C13E164();
  sub_20C135684();
  sub_20C13CA64();

  v2 = sub_20C13E1B4();

  return sub_20C054C78(a1, v2);
}

unint64_t sub_20C054C78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_20C135684();
      v8 = v7;
      if (v6 == sub_20C135684() && v8 == v9)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_20C054D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v7 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
  v8 = sub_20C133954();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanTemplateMetadata;
  v10 = sub_20C137374();
  (*(*(v10 - 8) + 56))(v3 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanSummary;
  v12 = sub_20C1353F4();
  (*(*(v12 - 8) + 56))(v3 + v11, 1, 1, v12);
  *(v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_attributedSubtitle) = 0;
  v13 = v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_row;
  sub_20B5D8060(v24);
  v14 = v24[9];
  *(v13 + 128) = v24[8];
  *(v13 + 144) = v14;
  *(v13 + 160) = v25;
  v15 = v24[5];
  *(v13 + 64) = v24[4];
  *(v13 + 80) = v15;
  v16 = v24[7];
  *(v13 + 96) = v24[6];
  *(v13 + 112) = v16;
  v17 = v24[1];
  *v13 = v24[0];
  *(v13 + 16) = v17;
  v18 = v24[3];
  *(v13 + 32) = v24[2];
  *(v13 + 48) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_bag) = *&v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v23, v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v23, v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0, &unk_20C151240);
  sub_20C133AA4();
  sub_20B51C710(v23, v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder) = *&v23[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(v23, v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v19 = *(&v23[0] + 1);
  v20 = (v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_eventHub);
  *v20 = *&v23[0];
  v20[1] = v19;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_subscriptionToken) = sub_20C13A914();
  v21 = (v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_pageContext);
  *v21 = a2;
  v21[1] = a3;
  *(v3 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_dependencies) = a1;
  swift_getObjectType();
  sub_20C13B244();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v3;
}

unint64_t sub_20C0551E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A10, &qword_20C18B2D0);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, v14, &unk_27C762260, &unk_20C14FC80);
      v5 = v14[0];
      result = sub_20C054BF0(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_20C055320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50, &unk_20C14FB70);
  MEMORY[0x28223BE20](v2 - 8);
  v215 = (&v209 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v218 = *(v4 - 8);
  v219 = v4;
  MEMORY[0x28223BE20](v4);
  v217 = &v209 - v5;
  v216 = sub_20C137374();
  v214 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v211 = &v209 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772000, &unk_20C16D940);
  MEMORY[0x28223BE20](v7 - 8);
  v213 = &v209 - v8;
  v9 = sub_20C133954();
  v239 = *(v9 - 8);
  v240 = v9;
  MEMORY[0x28223BE20](v9);
  v212 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v11 - 8);
  v220 = &v209 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v221 = &v209 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v15 - 8);
  v224 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v225 = &v209 - v18;
  v19 = sub_20C1333A4();
  v241 = *(v19 - 8);
  v242 = v19;
  MEMORY[0x28223BE20](v19);
  v238 = &v209 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v223 = &v209 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = (&v209 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v237 = &v209 - v27;
  MEMORY[0x28223BE20](v28);
  v222 = &v209 - v29;
  v30 = sub_20C1352E4();
  v245 = *(v30 - 8);
  v246 = v30;
  MEMORY[0x28223BE20](v30);
  v235 = &v209 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v236 = &v209 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v34 - 8);
  v233 = &v209 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v234 = &v209 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v38 - 8);
  v231 = &v209 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v232 = &v209 - v41;
  v42 = sub_20C134F24();
  v243 = *(v42 - 8);
  v244 = v42;
  MEMORY[0x28223BE20](v42);
  v229 = &v209 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v230 = &v209 - v45;
  v46 = sub_20C132EE4();
  v227 = *(v46 - 8);
  v228 = v46;
  MEMORY[0x28223BE20](v46);
  v226 = &v209 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v48);
  v50 = &v209 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v51);
  v53 = (&v209 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v54);
  v56 = &v209 - v55;
  v57 = type metadata accessor for ButtonAction(0);
  MEMORY[0x28223BE20](v57);
  v59 = &v209 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B7F11D4(a1, v56, type metadata accessor for ShelfItemAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B5F6860(v56, v59);
    sub_20B7F11D4(&v59[*(v57 + 28)], v50, type metadata accessor for ButtonAction.ActionType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      v109 = v247;
      v110 = *(v247 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder);
      v111 = v110[9];
      v112 = v110[10];
      __swift_project_boxed_opaque_existential_1(v110 + 6, v111);
      v236 = sub_20B5E107C(0xD00000000000001DLL, 0x800000020C1BB510, v111, v112);
      v114 = v113;
      v115 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanTemplateMetadata;
      swift_beginAccess();
      v116 = v109 + v115;
      v117 = v213;
      sub_20B52F9E8(v116, v213, &unk_27C772000, &unk_20C16D940);
      v118 = v214;
      v119 = v216;
      v120 = (*(v214 + 48))(v117, 1, v216);
      v210 = v59;
      if (v120)
      {
        sub_20B520158(v117, &unk_27C772000, &unk_20C16D940);
        v121 = 0;
        v122 = 0;
      }

      else
      {
        v132 = v211;
        (*(v118 + 16))(v211, v117, v119);
        sub_20B520158(v117, &unk_27C772000, &unk_20C16D940);
        v121 = sub_20C137314();
        v122 = v133;
        (*(v118 + 8))(v132, v119);
      }

      v134 = swift_allocObject();
      swift_weakInit();
      type metadata accessor for SeymourLocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v136 = objc_opt_self();

      v137 = [v136 bundleForClass_];
      v138 = sub_20C132964();
      v140 = v139;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772010, &unk_20C166910);
      v141 = swift_allocObject();
      *(v141 + 16) = xmmword_20C1517D0;
      *(v141 + 56) = &type metadata for TrimLeadingWhitespaceFilter;
      *(v141 + 64) = &off_2822B8960;
      *(v141 + 96) = &type metadata for MaxLengthFilter;
      *(v141 + 104) = &off_2822B8BF0;
      *(v141 + 72) = 40;
      *(v141 + 136) = &type metadata for MaxBytesFilter;
      *(v141 + 144) = &off_2822E2930;
      *(v141 + 112) = 99;
      type metadata accessor for SanitizingTextInputPresenter();
      v142 = swift_allocObject();
      *(v142 + 24) = 0;
      swift_unknownObjectWeakInit();
      *&v252 = v236;
      *(&v252 + 1) = v114;
      v253 = 0uLL;
      *&v254 = v121;
      *(&v254 + 1) = v122;
      *&v255 = v138;
      *(&v255 + 1) = v140;
      *&v256 = sub_20C056F9C;
      *(&v256 + 1) = v134;
      v257[0] = v236;
      v257[1] = v114;
      v257[2] = 0;
      v257[3] = 0;
      v257[4] = v121;
      v257[5] = v122;
      v257[6] = v138;
      v257[7] = v140;
      v257[8] = sub_20C056F9C;
      v257[9] = v134;
      sub_20B9A9A2C(&v252, v251);
      sub_20B9A9A88(v257);
      v143 = v255;
      *(v142 + 64) = v254;
      *(v142 + 80) = v143;
      *(v142 + 96) = v256;
      v144 = v253;
      *(v142 + 32) = v252;
      *(v142 + 48) = v144;
      *(v142 + 120) = 0;
      *(v142 + 128) = 0;
      *(v142 + 112) = v141;
      v236 = v142;

      Strong = swift_unknownObjectWeakLoadStrong();
      v146 = v245;
      v147 = v246;
      v148 = v244;
      if (Strong)
      {
        v149 = Strong;
        v150 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v151 = *(v150 + 8);
          ObjectType = swift_getObjectType();
          v153 = *(v151 + 240);
          v154 = v236;

          v153(v149, v154, &off_2822EEEA0, ObjectType, v151);
          v148 = v244;
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      v155 = v247;
      v250 = v247;
      (*(v243 + 104))(v229, *MEMORY[0x277D513D8], v148);
      v156 = *MEMORY[0x277D52B38];
      v157 = sub_20C136664();
      v158 = *(v157 - 8);
      v159 = v231;
      (*(v158 + 104))(v231, v156, v157);
      (*(v158 + 56))(v159, 0, 1, v157);
      v160 = sub_20C132C14();
      (*(*(v160 - 8) + 56))(v233, 1, 1, v160);
      (*(v146 + 104))(v235, *MEMORY[0x277D51768], v147);
      v161 = sub_20C135ED4();
      (*(*(v161 - 8) + 56))(v237, 1, 1, v161);
      sub_20C051E18(v238);
      v162 = sub_20C136E94();
      v163 = v224;
      (*(*(v162 - 8) + 56))(v224, 1, 1, v162);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258, &qword_20C15AFE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C14F980;
      *(inited + 32) = 9;
      v165 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
      swift_beginAccess();
      v166 = v155 + v165;
      v167 = v220;
      sub_20B52F9E8(v166, v220, &unk_27C76A970, &qword_20C14FC10);
      v169 = v239;
      v168 = v240;
      if ((*(v239 + 48))(v167, 1, v240))
      {
        sub_20B520158(v167, &unk_27C76A970, &qword_20C14FC10);
        v170 = 0;
        v171 = 0;
      }

      else
      {
        v172 = v212;
        (*(v169 + 16))(v212, v167, v168);
        sub_20B520158(v167, &unk_27C76A970, &qword_20C14FC10);
        v173 = v226;
        sub_20C133804();
        v174 = v172;
        v163 = v224;
        (*(v169 + 8))(v174, v168);
        v170 = sub_20C132EA4();
        v171 = v175;
        (*(v227 + 8))(v173, v228);
      }

      v248 = v170;
      v249 = v171;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830, &qword_20C15CA20);
      sub_20B82898C();
      sub_20C13DC04();
      sub_20B6B29D4(inited);
      swift_setDeallocating();
      sub_20B520158(inited + 32, &unk_27C762260, &unk_20C14FC80);
      type metadata accessor for TVWorkoutPlanDetailHeaderShelf(0);
      sub_20C056FA4();
      v176 = v229;
      v177 = v231;
      v178 = v233;
      v179 = v235;
      v181 = v237;
      v180 = v238;
      sub_20C138DB4();

      sub_20B520158(v163, &unk_27C76BC90, &unk_20C1586D0);
      (*(v241 + 8))(v180, v242);
      sub_20B520158(v181, &unk_27C7621D0, &unk_20C14D9B0);
      (*(v245 + 8))(v179, v246);
      sub_20B520158(v178, &unk_27C7617F0, &unk_20C151A10);
      sub_20B520158(v177, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v243 + 8))(v176, v244);
    }

    else
    {
      if (EnumCaseMultiPayload != 15)
      {
        v123 = sub_20C135ED4();
        (*(*(v123 - 8) + 56))(v25, 1, 1, v123);
        v124 = v215;
        (*(v245 + 56))(v215, 1, 1, v246);
        v125 = v217;
        sub_20B5A8220(v59, 0, 0, v25, 0, 0, v124, v217);
        sub_20B520158(v124, &unk_27C765D50, &unk_20C14FB70);
        sub_20B520158(v25, &unk_27C7621D0, &unk_20C14D9B0);
        v126 = v219;
        v127 = sub_20C137CB4();
        v128 = swift_allocObject();
        *(v128 + 16) = 0;
        *(v128 + 24) = 0;
        v127(sub_20B52347C, v128);

        (*(v218 + 8))(v125, v126);
        sub_20C056F3C(v59, type metadata accessor for ButtonAction);
        v129 = type metadata accessor for ButtonAction.ActionType;
        v130 = v50;
        return sub_20C056F3C(v130, v129);
      }

      v210 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
      v61 = (type metadata accessor for PageAlertAction(0) - 8);
      v62 = *(*v61 + 72);
      v63 = (*(*v61 + 80) + 32) & ~*(*v61 + 80);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_20C14F320;
      v65 = *(v247 + OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlanStringBuilder);
      v238 = v64;
      v66 = v64 + v63;
      v67 = v65[9];
      v68 = v65[10];
      __swift_project_boxed_opaque_existential_1(v65 + 6, v67);
      v69 = sub_20B5E107C(0xD00000000000001DLL, 0x800000020C1A6BE0, v67, v68);
      v71 = v70;
      v72 = swift_allocObject();
      swift_weakInit();

      v73 = v226;
      sub_20C132ED4();
      v74 = (v66 + v61[8]);
      *v74 = v69;
      v74[1] = v71;
      *(v66 + v61[7]) = 1;
      (*(v227 + 32))(v66, v73, v228);
      v75 = (v66 + v61[9]);
      *v75 = sub_20C056FFC;
      v75[1] = v72;

      v76 = v66 + v62;
      type metadata accessor for SeymourLocalizationBundle();
      v77 = swift_getObjCClassFromMetadata();
      v78 = [objc_opt_self() bundleForClass_];
      v79 = sub_20C132964();
      v81 = v80;

      v82 = swift_allocObject();
      swift_weakInit();

      sub_20C132ED4();
      v83 = (v76 + v61[8]);
      *v83 = v79;
      v83[1] = v81;
      *(v76 + v61[7]) = 2;
      v84 = (v76 + v61[9]);
      *v84 = sub_20C05702C;
      v84[1] = v82;

      v85 = v65[9];
      v86 = v65[10];
      __swift_project_boxed_opaque_existential_1(v65 + 6, v85);
      v87 = sub_20B5E107C(0xD000000000000016, 0x800000020C1AFB90, v85, v86);
      v89 = v88;
      v90 = v65[9];
      v91 = v65[10];
      __swift_project_boxed_opaque_existential_1(v65 + 6, v90);
      v92 = sub_20B5E107C(0xD000000000000018, 0x800000020C1AFBB0, v90, v91);
      v94 = v93;
      v95 = swift_unknownObjectWeakLoadStrong();
      v96 = MEMORY[0x277D84F90];
      if (v95)
      {
        v97 = v95;
        type metadata accessor for DefaultPageAlertPresenter();
        v98 = swift_allocObject();
        *(v98 + 24) = 0;
        swift_unknownObjectWeakInit();
        *(v98 + 32) = v238;
        *(v98 + 40) = v96;
        *(v98 + 48) = v87;
        *(v98 + 56) = v89;
        *(v98 + 64) = v92;
        *(v98 + 72) = v94;
        *(v98 + 80) = 0;
        *(v98 + 88) = 0;
        v99 = v97 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        v100 = swift_unknownObjectWeakLoadStrong();
        v101 = v243;
        v102 = v222;
        if (v100)
        {
          v103 = *(v99 + 8);
          v104 = swift_getObjectType();
          v105 = v102;
          v106 = *(v103 + 224);

          v106(v97, v98, &off_2822DD358, v104, v103);
          v102 = v105;
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v131 = v245;
      }

      else
      {

        v131 = v245;
        v101 = v243;
        v102 = v222;
      }

      v182 = v221;
      v183 = v247;
      v251[0] = v247;
      (*(v101 + 104))(v230, *MEMORY[0x277D51430], v244);
      v184 = *MEMORY[0x277D52B38];
      v185 = sub_20C136664();
      v186 = *(v185 - 8);
      v187 = v232;
      (*(v186 + 104))(v232, v184, v185);
      (*(v186 + 56))(v187, 0, 1, v185);
      v188 = sub_20C132C14();
      (*(*(v188 - 8) + 56))(v234, 1, 1, v188);
      (*(v131 + 104))(v236, *MEMORY[0x277D51768], v246);
      v189 = sub_20C135ED4();
      v190 = v102;
      (*(*(v189 - 8) + 56))(v102, 1, 1, v189);
      v191 = v223;
      sub_20C051E18(v223);
      v192 = sub_20C136E94();
      v193 = v225;
      (*(*(v192 - 8) + 56))(v225, 1, 1, v192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762258, &qword_20C15AFE0);
      v194 = swift_initStackObject();
      *(v194 + 16) = xmmword_20C14F980;
      *(v194 + 32) = 9;
      v195 = OBJC_IVAR____TtC9SeymourUI30TVWorkoutPlanDetailHeaderShelf_workoutPlan;
      swift_beginAccess();
      sub_20B52F9E8(v183 + v195, v182, &unk_27C76A970, &qword_20C14FC10);
      v196 = v239;
      v197 = v240;
      if ((*(v239 + 48))(v182, 1, v240))
      {
        sub_20B520158(v182, &unk_27C76A970, &qword_20C14FC10);
        v198 = 0;
        v199 = 0;
      }

      else
      {
        v200 = v212;
        (*(v196 + 16))(v212, v182, v197);
        sub_20B520158(v182, &unk_27C76A970, &qword_20C14FC10);
        v201 = v226;
        sub_20C133804();
        v202 = v200;
        v190 = v222;
        v191 = v223;
        (*(v196 + 8))(v202, v197);
        v198 = sub_20C132EA4();
        v199 = v203;
        v204 = v201;
        v193 = v225;
        (*(v227 + 8))(v204, v228);
      }

      *&v252 = v198;
      *(&v252 + 1) = v199;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830, &qword_20C15CA20);
      sub_20B82898C();
      sub_20C13DC04();
      sub_20B6B29D4(v194);
      swift_setDeallocating();
      sub_20B520158(v194 + 32, &unk_27C762260, &unk_20C14FC80);
      type metadata accessor for TVWorkoutPlanDetailHeaderShelf(0);
      sub_20C056FA4();
      v205 = v230;
      v206 = v232;
      v207 = v234;
      v208 = v236;
      sub_20C138DB4();

      sub_20B520158(v193, &unk_27C76BC90, &unk_20C1586D0);
      (*(v241 + 8))(v191, v242);
      sub_20B520158(v190, &unk_27C7621D0, &unk_20C14D9B0);
      (*(v245 + 8))(v208, v246);
      sub_20B520158(v207, &unk_27C7617F0, &unk_20C151A10);
      sub_20B520158(v206, &unk_27C7622E0, &unk_20C14FCF0);
      (*(v243 + 8))(v205, v244);
    }

    v129 = type metadata accessor for ButtonAction;
    v130 = v210;
    return sub_20C056F3C(v130, v129);
  }

  sub_20C056F3C(v56, type metadata accessor for ShelfItemAction);
  swift_storeEnumTagMultiPayload();
  v107 = sub_20BB12674(a1, v53);
  result = sub_20C056F3C(v53, type metadata accessor for ShelfItemAction);
  if (v107)
  {
    return sub_20C053AD4();
  }

  return result;
}

uint64_t sub_20C056F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20C056FA4()
{
  result = qword_27C772018;
  if (!qword_27C772018)
  {
    type metadata accessor for TVWorkoutPlanDetailHeaderShelf(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C772018);
  }

  return result;
}

uint64_t sub_20C05705C(uint64_t a1)
{
  v4 = *(sub_20C132EE4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52A9D4;

  return sub_20C0532BC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_20C057154(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_20C132EE4() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_20B52AC14;

  return sub_20C052508(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_20C057294()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8, &unk_20C187A60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18[-v3];
  v5 = sub_20C135524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810, &unk_20C16B440);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18[-v10];
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_isFilteringEnabled) != 1)
  {
    return 2;
  }

  v12 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v12, v11, &qword_27C766810, &unk_20C16B440);
  v13 = sub_20B84A8F0(v11);
  sub_20B520158(v11, &qword_27C766810, &unk_20C16B440);
  if (v13)
  {
    return 1;
  }

  v15 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterResult;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v15, v4, &qword_27C769EC8, &unk_20C187A60);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &qword_27C769EC8, &unk_20C187A60);
    return 1;
  }

  else
  {
    v16 = (*(v6 + 32))(v8, v4, v5);
    v17 = sub_20BB110D4(v16);
    (*(v6 + 8))(v8, v5);
    return !v17;
  }
}

uint64_t sub_20C057548()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810, &unk_20C16B440);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_20C138094();
  v28 = *(v5 - 8);
  v29 = v28;
  MEMORY[0x28223BE20](v5);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = (&v27 - v12);
  v14 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v14, v4, &qword_27C766810, &unk_20C16B440);
  v15 = sub_20B84A8F0(v4);
  sub_20B520158(v4, &qword_27C766810, &unk_20C16B440);
  v16 = 0xD000000000000021;
  if (v15)
  {
    v16 = 0xD000000000000026;
    v17 = "3.decrease.circle";
  }

  else
  {
    v17 = "isFilteringEnabled";
  }

  *v13 = v16;
  v13[1] = v17 | 0x8000000000000000;
  swift_storeEnumTagMultiPayload();
  *v10 = 3;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_storefrontLocalizer + 24));
  *v7 = sub_20C138D34();
  v7[1] = v18;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
  v19 = *(v28 + 72);
  v20 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C1517D0;
  v22 = v21 + v20;
  v23 = MEMORY[0x277D53BC8];
  sub_20B9B7B94(v13, v22, MEMORY[0x277D53BC8]);
  sub_20B9B7B94(v10, v22 + v19, v23);
  sub_20B9B7B94(v7, v22 + 2 * v19, v23);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_mediaTagStringBuilder + 24));
  v24 = sub_20C138544();

  v25 = MEMORY[0x277D53BC8];
  sub_20C059284(v7, MEMORY[0x277D53BC8]);
  sub_20C059284(v10, v25);
  sub_20C059284(v13, v25);
  return v24;
}

void sub_20C0578C4(int a1)
{
  v3 = sub_20C13BB84();
  v81 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v78 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v77 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  MEMORY[0x28223BE20](v12);
  v80 = &v65 - v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_title + 8);
  if (!v16)
  {
    v56 = v81;
    sub_20C13B534();
    v57 = sub_20C13BB74();
    v58 = sub_20C13D1F4();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_20B517000, v57, v58, "[FilterDetailHeaderShelf] not updating row, no title available", v59, 2u);
      MEMORY[0x20F2F6A40](v59, -1, -1);
    }

    (*(v56 + 8))(v5, v3);
    return;
  }

  v76 = v14;
  v68 = v6;
  v67 = a1;
  v79 = v13;
  v81 = v1;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_title);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F980;
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v16;

  *(v19 + 32) = sub_20C057548();
  *(v19 + 40) = sub_20C057294();
  *(v18 + 32) = v19 | 0x2000000000000004;
  v87 = 0uLL;
  LOBYTE(v88) = 1;
  *(&v88 + 1) = 0;
  *&v89 = 0;
  WORD4(v89) = 128;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  LOBYTE(v93) = 0;
  *(&v93 + 1) = v18;
  *&v94[0] = MEMORY[0x277D84F90];
  *(v94 + 8) = 0u;
  *(&v94[1] + 8) = 0u;
  *(&v94[2] + 1) = 0;
  v95 = 2;
  nullsub_1();
  v20 = v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row;
  v21 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 144);
  v96[8] = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 128);
  v96[9] = v21;
  v97 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 160);
  v22 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 80);
  v96[4] = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 64);
  v96[5] = v22;
  v23 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 112);
  v96[6] = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 96);
  v96[7] = v23;
  v24 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 16);
  v96[0] = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row);
  v96[1] = v24;
  v25 = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 48);
  v96[2] = *(v81 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 32);
  v96[3] = v25;
  v26 = v81;
  v27 = v94[2];
  *(v20 + 128) = v94[1];
  *(v20 + 144) = v27;
  *(v20 + 160) = v95;
  v28 = v92;
  *(v20 + 64) = v91;
  *(v20 + 80) = v28;
  v29 = v94[0];
  *(v20 + 96) = v93;
  *(v20 + 112) = v29;
  v30 = v88;
  *v20 = v87;
  *(v20 + 16) = v30;
  v31 = v90;
  *(v20 + 32) = v89;
  *(v20 + 48) = v31;
  sub_20B520158(v96, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v33 = Strong;
  if (*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    goto LABEL_25;
  }

  if (![*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) dataSource])
  {
LABEL_24:
    sub_20C0C2D50(0);
LABEL_25:
    swift_unknownObjectRelease();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_24;
  }

  v66 = v33;
  v34 = v80;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v35 = v79;
  v36 = sub_20C13BE74();
  (*(v76 + 8))(v34, v35);
  v75 = *(v36 + 16);
  v76 = v36;
  if (!v75)
  {
LABEL_22:

    goto LABEL_24;
  }

  v37 = 0;
  v73 = v76 + 32;
  v74 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_identifier;
  v71 = (v9 + 8);
  v72 = (v9 + 16);
  while (2)
  {
    if (v37 < *(v76 + 16))
    {
      v38 = (v73 + 24 * v37);
      v39 = v38[1];
      v70 = *v38;
      v40 = v38[2];
      v79 = v37 + 1;
      (*v72)(v11, v26 + v74, v8);
      v41 = *(v39 + 16);

      v80 = v40;

      v42 = 0;
      do
      {
        if (v41 == v42)
        {
          (*v71)(v11, v8);
          goto LABEL_9;
        }

        v43 = v42 + 1;
        sub_20C05923C(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v44 = sub_20C13C894();
        v42 = v43;
      }

      while ((v44 & 1) == 0);
      (*v71)(v11, v8);
      v45 = *(v20 + 128);
      v46 = *(v20 + 144);
      v47 = *(v20 + 96);
      v83[7] = *(v20 + 112);
      v84 = v45;
      v85 = v46;
      v86 = *(v20 + 160);
      v48 = *(v20 + 80);
      v83[4] = *(v20 + 64);
      v83[5] = v48;
      v83[6] = v47;
      v49 = *(v20 + 16);
      v83[0] = *v20;
      v83[1] = v49;
      v50 = *(v20 + 48);
      v83[2] = *(v20 + 32);
      v83[3] = v50;
      v51 = sub_20B5EAF8C(v83);
      if (v51 == 1)
      {
        v52 = 0;
        v53 = 0;
      }

      else
      {
        v52 = *(&v84 + 1);
        v53 = v85;
      }

      v54 = v80;
      v69 = &v65;
      v82[0] = v52;
      v82[1] = v53;
      MEMORY[0x28223BE20](v51);
      *(&v65 - 2) = v82;
      v55 = sub_20B796758(sub_20B5EAFA4, (&v65 - 4), v54);

      if ((v55 & 1) == 0)
      {
LABEL_9:

        v37 = v79;
        v26 = v81;
        if (v79 == v75)
        {
          goto LABEL_22;
        }

        continue;
      }

      sub_20B5E2E18();
      v60 = sub_20C13D374();
      v62 = v77;
      v61 = v78;
      *v77 = v60;
      v63 = v68;
      (*(v61 + 104))(v62, *MEMORY[0x277D85200], v68);
      v64 = sub_20C13C584();
      (*(v61 + 8))(v62, v63);
      if ((v64 & 1) == 0)
      {
        goto LABEL_33;
      }

      if ((v67 & 0x80) != 0)
      {
        sub_20C10A2F8(v81, v70, v67 & 1, v66);
      }

      else
      {
        sub_20B61E0EC(v70, v39, v80, v81, v67 & 1, v66);
      }

      goto LABEL_25;
    }

    break;
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_20C058174()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_storefrontLocalizer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_mediaTagStringBuilder));

  v3 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter, &qword_27C766810, &unk_20C16B440);

  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterResult, &qword_27C769EC8, &unk_20C187A60);
  return v0;
}

uint64_t sub_20C05830C()
{
  sub_20C058174();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FilterDetailHeaderShelf(uint64_t a1)
{
  result = qword_27C772040;
  if (!qword_27C772040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C0583B8(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20C134EC4();
    if (v2 <= 0x3F)
    {
      sub_20BAC49F0(319, &qword_27C769EB8, MEMORY[0x277D504B0]);
      if (v3 <= 0x3F)
      {
        sub_20BAC49F0(319, &qword_27C769EC0, MEMORY[0x277D51980]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_20C05857C()
{
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20C05923C(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v0);
  sub_20C0578C4(1);
}

double sub_20C05869C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8, &unk_20C187A60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810, &unk_20C16B440);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21[-v7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    if (MEMORY[0x20F2EC610](a1, Strong + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterRoot))
    {
      v12 = type metadata accessor for FilterResultUpdated(0);
      v13 = *(v12 + 20);
      v14 = sub_20C133E24();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v8, a1 + v13, v14);
      (*(v15 + 56))(v8, 0, 1, v14);
      v16 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter;
      swift_beginAccess();
      sub_20B5DF2D4(v8, v11 + v16, &qword_27C766810, &unk_20C16B440);
      swift_endAccess();
      v17 = *(v12 + 24);
      v18 = sub_20C135524();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v5, a1 + v17, v18);
      (*(v19 + 56))(v5, 0, 1, v18);
      v20 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterResult;
      swift_beginAccess();
      sub_20B5DF2D4(v5, v11 + v20, &qword_27C769EC8, &unk_20C187A60);
      swift_endAccess();
      sub_20C0578C4(129);
    }
  }

  return result;
}

uint64_t sub_20C058944@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C0589BC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_20C058A84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7687A8, &unk_20C166D30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = sub_20C1393B4();
  *(inited + 40) = v1;
  *(inited + 48) = 0;
  v2 = sub_20B6B2B0C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C7687B0, &qword_20C17A960);
  return v2;
}

uint64_t sub_20C058B20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v7 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter;
  v8 = sub_20C133E24();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  v9 = (v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_title);
  *v9 = 0;
  v9[1] = 0;
  v10 = v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_row;
  sub_20B5D8060(v22);
  v11 = v22[9];
  *(v10 + 128) = v22[8];
  *(v10 + 144) = v11;
  *(v10 + 160) = v23;
  v12 = v22[5];
  *(v10 + 64) = v22[4];
  *(v10 + 80) = v12;
  v13 = v22[7];
  *(v10 + 96) = v22[6];
  *(v10 + 112) = v13;
  v14 = v22[1];
  *v10 = v22[0];
  *(v10 + 16) = v14;
  v15 = v22[3];
  *(v10 + 32) = v22[2];
  *(v10 + 48) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterResult;
  v17 = sub_20C135524();
  (*(*(v17 - 8) + 56))(v3 + v16, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_eventHub) = v21[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v21, v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v21, v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_mediaTagStringBuilder);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v3 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_subscriptionToken) = sub_20C13A914();
  v18 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterRoot;
  v19 = sub_20C134EC4();
  (*(*(v19 - 8) + 32))(v4 + v18, a2, v19);
  *(v4 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_isFilteringEnabled) = a3;
  return v4;
}

void sub_20C058DC4(uint64_t a1)
{
  v34 = type metadata accessor for FilterActionSelected(0);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769EC8, &unk_20C187A60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_20C135524();
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v32 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766810, &unk_20C16B440);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_isFilteringEnabled) == 1)
  {
    v15 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterRoot;
    v16 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filter;
    swift_beginAccess();
    v17 = v1;
    v18 = v1 + v16;
    v19 = v15;
    v20 = v9;
    sub_20B52F9E8(v18, v14, &qword_27C766810, &unk_20C16B440);
    v31 = v19;
    LOBYTE(v19) = sub_20B84A8F0(v14);
    sub_20B520158(v14, &qword_27C766810, &unk_20C16B440);
    if ((v19 & 1) == 0)
    {
      v21 = OBJC_IVAR____TtC9SeymourUI23FilterDetailHeaderShelf_filterResult;
      swift_beginAccess();
      sub_20B52F9E8(v17 + v21, v20, &qword_27C769EC8, &unk_20C187A60);
      v22 = v35;
      if ((*(v35 + 48))(v20, 1, v10) == 1)
      {
        sub_20B520158(v20, &qword_27C769EC8, &unk_20C187A60);
      }

      else
      {
        v23 = v32;
        v24 = (*(v22 + 32))(v32, v20, v10);
        v25 = sub_20BB110D4(v24);
        (*(v22 + 8))(v23, v10);
        if (v25)
        {
          return;
        }
      }
    }

    sub_20B9B7B94(a1, v6, type metadata accessor for ShelfItemAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_20C059284(v6, type metadata accessor for ShelfItemAction);
    if (EnumCaseMultiPayload == 14)
    {
      swift_getObjectType();
      v27 = sub_20C134EC4();
      v28 = v17 + v31;
      v29 = v33;
      (*(*(v27 - 8) + 16))(v33, v28, v27);
      sub_20C05923C(&qword_27C766798, type metadata accessor for FilterActionSelected, &unk_20C164760);
      sub_20C13A764();
      sub_20C059284(v29, type metadata accessor for FilterActionSelected);
    }
  }
}

uint64_t sub_20C05923C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C059284(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C0592E4(char a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_20C14F580;
  v2 = objc_opt_self();
  v3 = sub_20C13C914();
  v4 = [v2 backgroundDecorationItemWithElementKind_];

  result = v1;
  *(v1 + 32) = v4;
  return result;
}

void sub_20C0593CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanRepetitionDetailView_stackView;
  v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v4 setAxis_];
  [v4 setSpacing_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v1[v3] = v4;
  v50.receiver = v1;
  v50.super_class = type metadata accessor for TVWorkoutPlanRepetitionDetailView();
  v5 = objc_msgSendSuper2(&v50, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = *(a1 + 16);
  v7 = OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanRepetitionDetailView_stackView;
  v48 = v5;

  if (v6)
  {
    v8 = 0;
    v9 = (a1 + 56);
    v49 = a1;
    while (v8 < *(a1 + 16))
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v13 = *(v9 - 3);
      v12 = *(v9 - 2);
      v14 = *&v5[v7];
      objc_allocWithZone(type metadata accessor for TVWorkoutPlanRepetitionDetailRow());
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v15 = v13;
      a1 = v49;
      v16 = sub_20BB1124C(v15, v12, v10, v11);
      [v14 addArrangedSubview_];

      if (v8 >= *(v49 + 16) - 1)
      {
      }

      else
      {
        v17 = *&v5[v7];
        v18 = sub_20C059A40();
        [v17 addArrangedSubview_];

        a1 = v49;
      }

      ++v8;
      v9 += 4;
      if (v6 == v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    swift_bridgeObjectRelease_n();
    v19 = *&v5[v7];
    v20 = v48;
    [v20 addSubview_];
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];

    v21 = objc_opt_self();
    v23 = *MEMORY[0x277D768C8];
    v22 = *(MEMORY[0x277D768C8] + 8);
    v24 = *(MEMORY[0x277D768C8] + 16);
    v25 = *(MEMORY[0x277D768C8] + 24);
    v26 = *&v5[v7];
    v27 = [v26 leadingAnchor];
    v28 = [v20 leadingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28 constant:v22];

    LODWORD(v30) = 1148846080;
    [v29 setPriority_];
    v31 = v29;
    v32 = [v26 trailingAnchor];
    v33 = [v20 trailingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:-v25];

    LODWORD(v35) = 1148846080;
    [v34 setPriority_];
    v36 = v34;
    v37 = [v26 topAnchor];
    v38 = [v20 topAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:v23];

    LODWORD(v40) = 1148846080;
    [v39 setPriority_];
    v41 = [v26 bottomAnchor];
    v42 = [v20 bottomAnchor];
    v43 = [v41 constraintEqualToAnchor:v42 constant:-v24];

    LODWORD(v44) = 1148846080;
    [v43 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_20C14FE90;
    *(v45 + 32) = v31;
    *(v45 + 40) = v36;
    *(v45 + 48) = v39;
    *(v45 + 56) = v43;
    v46 = v39;

    sub_20B5E29D0();
    v47 = sub_20C13CC54();

    [v21 activateConstraints_];
  }
}

id sub_20C0599D8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TVWorkoutPlanRepetitionDetailView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20C059A40()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v1 = [objc_opt_self() systemGrayColor];
  [v0 setBackgroundColor_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14F580;
  v4 = [v0 heightAnchor];
  sub_20C1387F4();
  v5 = [v4 constraintEqualToConstant_];

  *(v3 + 32) = v5;
  sub_20B5E29D0();
  v6 = sub_20C13CC54();

  [v2 activateConstraints_];

  return v0;
}

char *sub_20C059BC0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter;
  v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v12 layer];
  [v13 setCornerRadius_];

  [v12 setClipsToBounds_];
  *&v4[v11] = v12;
  v14 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  [v15 setAllowsDefaultTighteningForTruncation_];
  [v15 setAdjustsFontSizeToFitWidth_];
  [v15 setTextAlignment_];
  *&v4[v14] = v15;
  v16 = &v4[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_styleProvider];
  sub_20C05B10C(v93);
  v17 = v93[3];
  v18 = v93[4];
  *(v16 + 2) = v93[2];
  *(v16 + 3) = v17;
  v19 = v93[5];
  *(v16 + 4) = v18;
  *(v16 + 5) = v19;
  v20 = v93[1];
  *v16 = v93[0];
  *(v16 + 1) = v20;
  *(v16 + 6) = xmmword_20C163B60;
  *(v16 + 14) = 0x4028000000000000;
  v88.receiver = v4;
  v88.super_class = type metadata accessor for PreferredMusicGenreCell(0);
  v21 = objc_msgSendSuper2(&v88, sel_initWithFrame_, a1, a2, a3, a4);
  v22 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter;
  v23 = *&v21[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter];
  v24 = &v21[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_styleProvider];
  v25 = *&v21[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_styleProvider + 8];
  v26 = v21;
  [v23 setBackgroundColor_];
  v27 = [v26 contentView];
  [v27 addSubview_];

  v28 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel;
  [*&v26[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel] setTextColor_];
  v29 = v26;
  v30 = [v29 &selRef_setMaximumFractionDigits_];
  v84 = v28;
  [v30 addSubview_];

  v31 = [v29 traitCollection];
  v32 = *&v26[v28];
  v86 = v24;
  v33 = *(v24 + 56);
  v89 = *(v24 + 40);
  v90 = v33;
  v91 = *(v24 + 72);
  v92 = *(v24 + 11);
  v34 = sub_20B7C6A74(v31);
  [v32 setFont_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766578, &qword_20C15C968);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C14F980;
  v36 = sub_20C13C054();
  v37 = MEMORY[0x277D74DB8];
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  MEMORY[0x20F2F4CE0](v35, sel_contentSizeCategoryChanged);
  swift_unknownObjectRelease();

  v85 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C14FF90;
  v39 = [*&v21[v22] leadingAnchor];
  v40 = [v29 &selRef_setMaximumFractionDigits_];
  v41 = [v40 leadingAnchor];

  v42 = [v39 constraintEqualToAnchor_];
  *(v38 + 32) = v42;
  v43 = [*&v21[v22] trailingAnchor];
  v44 = [v29 &selRef_setMaximumFractionDigits_];
  v45 = [v44 trailingAnchor];

  v46 = [v43 &selRef:v45 alertControllerReleasedDictationButton:? + 5];
  *(v38 + 40) = v46;
  v47 = [*&v21[v22] topAnchor];
  v48 = [v29 &selRef_setMaximumFractionDigits_];
  v49 = [v48 &selRef_setLineBreakMode_];

  v50 = [v47 &selRef:v49 alertControllerReleasedDictationButton:? + 5];
  *(v38 + 48) = v50;
  v51 = [*&v21[v22] bottomAnchor];
  v52 = [v29 &selRef_setMaximumFractionDigits_];
  v53 = [v52 &selRef_secondaryLabel + 5];

  v54 = [v51 &selRef:v53 alertControllerReleasedDictationButton:? + 5];
  *(v38 + 56) = v54;
  v55 = [*&v26[v84] leadingAnchor];
  v56 = [v29 &selRef_setMaximumFractionDigits_];
  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57 constant:v86[12]];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v59) = v87;
  [v58 setPriority_];
  *(v38 + 64) = v58;
  v60 = [*&v26[v84] trailingAnchor];
  v61 = [v29 contentView];
  v62 = [v61 trailingAnchor];

  v63 = [v60 constraintEqualToAnchor:v62 constant:-v86[12]];
  sub_20C13BBA4();
  LODWORD(v64) = v87;
  [v63 setPriority_];
  *(v38 + 72) = v63;
  v65 = [*&v26[v84] centerYAnchor];
  v66 = [v29 contentView];
  v67 = [v66 centerYAnchor];

  v68 = [v65 constraintEqualToAnchor_];
  *(v38 + 80) = v68;
  v69 = [*&v26[v84] topAnchor];
  v70 = [v29 contentView];
  v71 = [v70 topAnchor];

  v72 = [v69 constraintGreaterThanOrEqualToAnchor:v71 constant:v86[14]];
  sub_20C13BBA4();
  LODWORD(v73) = v87;
  [v72 setPriority_];
  *(v38 + 88) = v72;
  v74 = [*&v26[v84] bottomAnchor];
  v75 = [v29 contentView];
  v76 = [v75 bottomAnchor];

  v77 = [v74 constraintLessThanOrEqualToAnchor:v76 constant:-v86[14]];
  sub_20C13BBA4();
  LODWORD(v78) = v87;
  [v77 setPriority_];
  *(v38 + 96) = v77;
  v79 = [v29 contentView];

  v80 = [v79 heightAnchor];
  v81 = [v80 constraintGreaterThanOrEqualToConstant_];

  *(v38 + 104) = v81;
  sub_20B5E29D0();
  v82 = sub_20C13CC54();

  [v85 activateConstraints_];

  return v29;
}

id sub_20C05A934(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel];
  v4 = &v1[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_styleProvider];
  if (a1)
  {
    v5 = *(v4 + 3);
    [v3 setTextColor_];
    v6 = *&v1[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter];
    v7 = [v6 layer];
    v8 = [v5 CGColor];
    [v7 setBorderColor_];

    v9 = [v6 layer];
    v4 += 16;
  }

  else
  {
    [v3 setTextColor_];
    v10 = *&v1[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter];
    v11 = [v10 layer];
    [v11 setBorderColor_];

    v9 = [v10 layer];
  }

  [v9 setBorderWidth_];

  return [v1 accessibilityApplyState_];
}

id sub_20C05AAB0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreferredMusicGenreCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PreferredMusicGenreCell(uint64_t a1)
{
  result = qword_281102458;
  if (!qword_281102458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C05ABF0(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20C05ACA4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20C05ACF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20C05AD48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20C05ADB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C05ADF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_20C05AE64(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x28)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel];
    v9 = sub_20C13C914();
    [v8 setText_];

    return sub_20C05A934(v7);
  }

  else
  {
    sub_20C13B534();

    v11 = v1;
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = a1;
      v25 = v23;
      *v14 = 138543618;
      *(v14 + 4) = v11;
      *v15 = v11;
      *(v14 + 12) = 2082;
      v16 = sub_20B5F66D0();
      v17 = v11;
      v18 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v16);
      v20 = sub_20B51E694(v18, v19, &v25);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_20B517000, v12, v13, "Attempted to configure %{public}@ with item: %{public}s", v14, 0x16u);
      sub_20B520158(v15, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v15, -1, -1);
      v21 = v23;
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x20F2F6A40](v21, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_20C05B10C(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v20 = [v2 systemGray5Color];
  v19 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v17 = [v2 whiteColor];
  v3 = *MEMORY[0x277D76940];
  v18 = *MEMORY[0x277D743F8];
  v4 = *MEMORY[0x277D76800];
  v22 = MEMORY[0x277D84FA0];
  v16 = v4;
  sub_20B6FF83C(v21, 1);
  v24 = 1;
  v23 = 0;
  v5 = v22;
  sub_20C13E164();
  v15 = v3;
  sub_20C13CA64();
  v6 = sub_20C13E1B4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v5 + 48) + v8);
      if (v10 >= 4)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if (v11)
      {
        goto LABEL_7;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v21 = v5;
    sub_20B706478(4u, v8, isUniquelyReferenced_nonNull_native);
    v5 = *v21;
  }

LABEL_7:
  v13 = v24;
  v14 = v23;
  *a1 = 0;
  *(a1 + 8) = v20;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = v19;
  *(a1 + 32) = v17;
  *(a1 + 40) = 0;
  *(a1 + 48) = v16;
  *(a1 + 56) = v15;
  *(a1 + 64) = 0;
  *(a1 + 68) = v13;
  *(a1 + 69) = 9;
  *(a1 + 72) = v18;
  *(a1 + 80) = v14;
  *(a1 + 88) = v5;
}

void sub_20C05B3D8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_platter;
  v4 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v4 layer];
  [v5 setCornerRadius_];

  [v4 setClipsToBounds_];
  *(v0 + v3) = v4;
  v6 = OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_titleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  [v7 setAllowsDefaultTighteningForTruncation_];
  [v7 setAdjustsFontSizeToFitWidth_];
  [v7 setTextAlignment_];
  *(v0 + v6) = v7;
  v8 = v0 + OBJC_IVAR____TtC9SeymourUI23PreferredMusicGenreCell_styleProvider;
  sub_20C05B10C(v12);
  v9 = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = v9;
  v10 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v10;
  v11 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v11;
  *(v8 + 112) = 0x4028000000000000;
  *(v8 + 96) = xmmword_20C163B60;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C05B61C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C05B664(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C05B6CC@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  v5 = *(v3 + 72);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_20C05C59C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20B584050(v4, v5);
}

uint64_t sub_20C05B760(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_20C05C574;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  *(v7 + 64) = v6;
  *(v7 + 72) = v5;
  sub_20B584050(v3, v4);
  return sub_20B583ECC(v8, v9);
}

uint64_t sub_20C05B81C()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  sub_20B584050(v1, *(v0 + 72));
  return v1;
}

uint64_t sub_20C05B86C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return sub_20B583ECC(v5, v6);
}

uint64_t SummaryBannerActionPresenter.__allocating_init(dependencies:placement:)(uint64_t a1, char a2)
{
  v3 = swift_allocObject();
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FE00, &unk_20C161230);
  sub_20C133AA4();

  *(v3 + 16) = a2;
  return v3;
}

uint64_t SummaryBannerActionPresenter.init(dependencies:placement:)(uint64_t a1, char a2)
{
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76FE00, &unk_20C161230);
  sub_20C133AA4();

  sub_20B52E424(&v5, v2 + 24);
  *(v2 + 16) = a2;
  return v2;
}

void sub_20C05BA10(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v59 - v6;
  v67 = sub_20C132C14();
  v8 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v59 - v20;
  if ([a1 style])
  {
    v22 = sub_20C13CDF4();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    v23 = swift_allocObject();
    v23[2] = 0;
    v23[3] = 0;
    v23[4] = v3;

    sub_20B6383D0(0, 0, v7, &unk_20C18B5F8, v23);
  }

  else
  {
    v62 = v13;
    v63 = a1;
    v59 = v10;
    v60 = v3;
    v61 = v17;
    v64 = v8;
    if (v66)
    {
      v24 = v66;
      v25 = v15;
      v26 = v65;
    }

    else
    {
      v26 = sub_20C1393B4();
      v24 = v27;
      v25 = v15;
    }

    sub_20C13B424();

    v28 = sub_20C13BB74();
    v29 = sub_20C13D1F4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v68[0] = v31;
      *v30 = 136315138;
      v32 = sub_20B51E694(v26, v24, v68);

      *(v30 + 4) = v32;
      _os_log_impl(&dword_20B517000, v28, v29, "[UM] Action received for engagement message deactivating content: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x20F2F6A40](v31, -1, -1);
      MEMORY[0x20F2F6A40](v30, -1, -1);
    }

    else
    {
    }

    v33 = *(v25 + 8);
    v34 = v21;
    v35 = v14;
    v33(v34, v14);
    v36 = [v63 deepLink];
    v37 = v64;
    if (v36)
    {
      v38 = v62;
      v39 = v36;
      sub_20C132B94();

      if (sub_20BDC98E0() == 2)
      {
        v40 = v61;
        sub_20C13B424();
        v41 = v59;
        (*(v37 + 16))(v59, v38, v67);
        v42 = sub_20C13BB74();
        v43 = sub_20C13D1F4();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = v41;
          v46 = swift_slowAlloc();
          v68[0] = v46;
          *v44 = 141558274;
          *(v44 + 4) = 1752392040;
          *(v44 + 12) = 2080;
          v47 = sub_20C132B24();
          v66 = v35;
          v49 = v48;
          v50 = *(v64 + 8);
          v50(v45, v67);
          v51 = sub_20B51E694(v47, v49, v68);

          *(v44 + 14) = v51;
          v52 = v43;
          v53 = v50;
          _os_log_impl(&dword_20B517000, v42, v52, "[UM] Navigating to: %{mask.hash}s", v44, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v46);
          v38 = v62;
          MEMORY[0x20F2F6A40](v46, -1, -1);
          MEMORY[0x20F2F6A40](v44, -1, -1);

          v54 = v61;
          v55 = v66;
        }

        else
        {

          v53 = *(v37 + 8);
          v53(v41, v67);
          v54 = v40;
          v55 = v35;
        }

        v33(v54, v55);
        v56 = v60;
        swift_beginAccess();
        v57 = *(v56 + 64);
        if (v57)
        {
          v58 = *(v56 + 72);

          v57(v38);
          sub_20B583ECC(v57, v58);
        }

        v53(v38, v67);
      }

      else
      {
        (*(v37 + 8))(v38, v67);
      }
    }
  }
}

uint64_t sub_20C05C020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_20C13BB84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20C05C0E0, 0, 0);
}

uint64_t sub_20C05C0E0(__n128 a1)
{
  sub_20C13B424();
  v2 = sub_20C13BB74();
  v3 = sub_20C13D1F4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_20B517000, v2, v3, "[UM] Summary banner requested dismissal", v4, 2u);
    MEMORY[0x20F2F6A40](v4, -1, -1);
  }

  v6 = v1[4];
  v5 = v1[5];
  v8 = v1[2];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  __swift_project_boxed_opaque_existential_1((v8 + 24), *(v8 + 48));
  v9 = sub_20C1393B4();
  v11 = v10;
  v1[6] = v10;
  v12 = swift_task_alloc();
  v1[7] = v12;
  *v12 = v1;
  v12[1] = sub_20C05C24C;

  return sub_20C0A1328(v9, v11, 0, 3);
}

uint64_t sub_20C05C24C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *SummaryBannerActionPresenter.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  sub_20B583ECC(v0[8], v0[9]);
  return v0;
}

uint64_t SummaryBannerActionPresenter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  sub_20B583ECC(v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t sub_20C05C3E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20C05C020(a1, v4, v5, v6);
}

char *sub_20C05C5C4(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D20, &unk_20C15DB90);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v60 - v10;
  v67 = sub_20C13BC44();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C13BBC4();
  v62 = *(v12 - 8);
  v63 = v12;
  MEMORY[0x28223BE20](v12);
  v61 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_currentConstraints] = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_itemInfo;
  v15 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v15 - 8) + 56))(&v4[v14], 1, 1, v15);
  v16 = &v4[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView];
  v17 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v18) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v19];
  v20 = [v17 layer];
  [v20 setCornerRadius_];

  [v17 setClipsToBounds_];
  *v16 = v17;
  *(v16 + 1) = &off_2822B63E8;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  LODWORD(v22) = 1148846080;
  [v21 setContentCompressionResistancePriority:1 forAxis:v22];

  v23 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v24 = [v23 fontDescriptorWithSymbolicTraits_];
  if (v24)
  {
    v25 = v24;

    v23 = v25;
  }

  v26 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_titleLabel;
  v27 = objc_opt_self();
  v28 = [v27 fontWithDescriptor:v23 size:0.0];

  [v21 setFont_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  v29 = objc_opt_self();
  v30 = [v29 whiteColor];
  [v21 setTextColor_];

  [v21 setLineBreakMode_];
  *&v4[v26] = v21;
  v31 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_subtitleLabel;
  v32 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  [v32 setAdjustsFontForContentSizeCategory_];
  LODWORD(v33) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v33];

  v34 = [v27 preferredFontForTextStyle_];
  [v32 setFont_];

  [v32 setAllowsDefaultTighteningForTruncation_];
  v35 = [v29 systemGrayColor];
  [v32 setTextColor_];

  [v32 setLineBreakMode_];
  *&v4[v31] = v32;
  v36 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_bottomLine;
  v37 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];
  v38 = [v29 separatorColor];
  [v37 setBackgroundColor_];

  *&v4[v36] = v37;
  v39 = &v4[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_layout];
  *v39 = xmmword_20C18B6C0;
  *(v39 + 1) = xmmword_20C18B6D0;
  *(v39 + 4) = 0x4020000000000000;
  v40 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_textGuide;
  *&v4[v40] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v41 = type metadata accessor for CircleRowCell(0);
  v68.receiver = v4;
  v68.super_class = v41;
  v42 = objc_msgSendSuper2(&v68, sel_initWithFrame_, a1, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D28, &unk_20C15AA40);
  sub_20C13BC74();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  v44 = v61;
  v43 = v62;
  v45 = v63;
  (*(v62 + 104))(v61, *MEMORY[0x277D74A98], v63);
  v46 = sub_20C13BBF4();
  (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
  v47 = v42;
  v48 = v64;
  sub_20C13BC34();
  sub_20C13BC04();
  (*(v65 + 8))(v48, v67);
  (*(v43 + 8))(v44, v45);
  sub_20C13D464();
  v49 = [v47 contentView];
  [v49 addLayoutGuide_];

  v50 = [v47 contentView];
  [v50 addSubview_];

  v51 = *&v47[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_bottomLine];
  v52 = v47;
  [v52 addSubview_];
  v53 = [v52 contentView];
  [v53 addSubview_];

  v54 = [v52 contentView];
  [v54 addSubview_];

  v55 = [v52 traitCollection];
  v56 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v57 = sub_20C13CC54();

  [v56 deactivateConstraints_];

  v58 = [v55 preferredContentSizeCategory];
  LOBYTE(v56) = sub_20C13D424();

  if (v56)
  {
    sub_20C05D728();
  }

  else
  {
    sub_20C05E010();
  }

  [v52 setNeedsUpdateConstraints];

  return v52;
}

id sub_20C05D168(void *a1)
{
  v2 = v1;
  v24.receiver = v2;
  v24.super_class = type metadata accessor for CircleRowCell(0);
  objc_msgSendSuper2(&v24, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v4 = a1;
    v5 = [v4 preferredContentSizeCategory];
    v6 = [v2 traitCollection];
    v7 = [v6 preferredContentSizeCategory];

    v8 = sub_20C13C954();
    v10 = v9;
    if (v8 == sub_20C13C954() && v10 == v11)
    {

      Strong = v4;
    }

    else
    {
      v13 = sub_20C13DFF4();

      if (v13)
      {
        Strong = v4;
      }

      else
      {
        v19 = [v2 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v20 = objc_opt_self();
        sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

        v21 = sub_20C13CC54();

        [v20 deactivateConstraints_];

        v22 = [v19 preferredContentSizeCategory];
        LOBYTE(v20) = sub_20C13D424();

        if (v20)
        {
          sub_20C05D728();
        }

        else
        {
          sub_20C05E010();
        }

        [Strong setNeedsUpdateConstraints];
      }
    }
  }

  else
  {
    v15 = [v2 traitCollection];
    Strong = swift_unknownObjectUnownedLoadStrong();
    v16 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

    v17 = sub_20C13CC54();

    [v16 deactivateConstraints_];

    v18 = [v15 preferredContentSizeCategory];
    LOBYTE(v16) = sub_20C13D424();

    if (v16)
    {
      sub_20C05D728();
    }

    else
    {
      sub_20C05E010();
    }

    [Strong setNeedsUpdateConstraints];
  }

  swift_unknownObjectUnownedDestroy();
  return [v2 setNeedsUpdateConstraints];
}

id sub_20C05D500()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CircleRowCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for CircleRowCell(uint64_t a1)
{
  result = qword_2811039B8;
  if (!qword_2811039B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C05D648(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20C05D728()
{
  v1 = v0;
  [*&v0[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView] setHidden_];
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_titleLabel];
  [v2 setNumberOfLines_];
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_subtitleLabel];
  [v3 setNumberOfLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C150050;
  v5 = v4;
  v6 = *&v0[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_textGuide];
  v7 = [v6 leadingAnchor];
  v8 = [v1 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:20.0];
  v5[4] = v10;
  v11 = [v6 topAnchor];
  v12 = [v1 contentView];
  v13 = [v12 &selRef_setLineBreakMode_];

  v14 = [v11 constraintGreaterThanOrEqualToAnchor:v13 constant:8.0];
  v5[5] = v14;
  v15 = [v6 bottomAnchor];
  v16 = [v1 contentView];
  v17 = [v16 &selRef_secondaryLabel + 5];

  v18 = [v15 constraintLessThanOrEqualToAnchor:v17 constant:-8.0];
  v5[6] = v18;
  v19 = [v6 trailingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 trailingAnchor];

  v22 = [v19 constraintEqualToAnchor:v21 constant:-12.0];
  v5[7] = v22;
  v69 = v5;
  v23 = [v6 centerYAnchor];
  v24 = [v1 contentView];
  v25 = [v24 centerYAnchor];

  v26 = [v23 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v27) = v70;
  [v26 setPriority_];
  v5[8] = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C150040;
  v29 = [v2 leadingAnchor];
  v30 = [v6 leadingAnchor];
  v31 = [v29 constraintEqualToAnchor_];

  *(v28 + 32) = v31;
  v32 = [v2 trailingAnchor];
  v33 = [v6 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  *(v28 + 40) = v34;
  v35 = [v2 topAnchor];
  v36 = [v6 topAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  *(v28 + 48) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20C14FE90;
  v39 = [v3 leadingAnchor];
  v40 = [v6 leadingAnchor];
  v41 = [v39 constraintEqualToAnchor_];

  *(v38 + 32) = v41;
  v42 = [v3 trailingAnchor];
  v43 = [v6 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v38 + 40) = v44;
  v45 = [v3 topAnchor];
  v46 = [v2 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor_];

  *(v38 + 48) = v47;
  v48 = [v3 bottomAnchor];
  v49 = [v6 bottomAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v38 + 56) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_20C14FE90;
  v52 = *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_bottomLine];
  v53 = [v52 leadingAnchor];
  v54 = [v1 leadingAnchor];
  v55 = [v53 constraintEqualToAnchor:v54 constant:20.0];

  *(v51 + 32) = v55;
  v56 = [v52 trailingAnchor];
  v57 = [v1 trailingAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  *(v51 + 40) = v58;
  v59 = [v52 bottomAnchor];
  v60 = [v1 bottomAnchor];
  v61 = [v59 constraintEqualToAnchor_];

  *(v51 + 48) = v61;
  v62 = [v52 heightAnchor];
  sub_20C1387F4();
  v63 = [v62 constraintEqualToConstant_];

  *(v51 + 56) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C152DF0;
  *(inited + 32) = v69;
  *(inited + 40) = v28;
  *(inited + 48) = v38;
  *(inited + 56) = v51;
  sub_20B853E04(inited);
  v66 = v65;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_currentConstraints] = v66;

  v67 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v68 = sub_20C13CC54();

  [v67 activateConstraints_];
}

void sub_20C05E010()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView];
  [v2 setHidden_];
  v95 = *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_titleLabel];
  [v95 setNumberOfLines_];
  v93 = *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_subtitleLabel];
  [v93 setNumberOfLines_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14FE90;
  v4 = v3;
  v5 = [v2 leadingAnchor];
  v6 = [v1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor:v7 constant:20.0];
  v4[4] = v8;
  v9 = [v2 widthAnchor];
  v10 = [v9 constraintEqualToConstant_];

  v4[5] = v10;
  v11 = [v2 heightAnchor];
  v12 = [v11 &selRef_visibleCells + 1];

  v4[6] = v12;
  v94 = v4;
  v13 = [v2 centerYAnchor];
  v14 = [v1 contentView];
  v15 = [v14 &selRef_setNumberOfTapsRequired_];

  v16 = [v13 constraintEqualToAnchor_];
  v4[7] = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C150050;
  v18 = v17;
  v19 = *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_textGuide];
  v20 = [v19 leadingAnchor];
  v21 = [v2 trailingAnchor];
  v22 = [v20 &selRef_passwordEntryCancelledHandler + 6];

  v18[4] = v22;
  v23 = [v19 topAnchor];
  v24 = [v1 contentView];
  v25 = [v24 &selRef_setLineBreakMode_];

  v26 = [v23 constraintGreaterThanOrEqualToAnchor:v25 constant:8.0];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v27) = v96;
  [v26 setPriority_];
  v18[5] = v26;
  v28 = v18;
  v29 = [v19 bottomAnchor];
  v30 = [v1 contentView];
  v31 = [v30 &selRef_secondaryLabel + 5];

  v32 = [v29 constraintLessThanOrEqualToAnchor:v31 constant:-8.0];
  sub_20C13BBA4();
  LODWORD(v33) = v96;
  [v32 setPriority_];
  v28[6] = v32;
  v34 = [v19 trailingAnchor];
  v35 = [v1 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:-12.0];
  v28[7] = v37;
  v92 = v28;
  v38 = [v19 centerYAnchor];
  v39 = [v1 contentView];
  v40 = [v39 centerYAnchor];

  v41 = [v38 constraintEqualToAnchor_];
  v28[8] = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C14F580;
  v43 = v42;
  v91 = v42;
  v44 = [v1 contentView];
  v45 = [v44 heightAnchor];

  v46 = [v45 constraintEqualToConstant_];
  sub_20C13BBA4();
  LODWORD(v47) = v96;
  [v46 setPriority_];
  *(v43 + 32) = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_20C150040;
  v49 = v48;
  v50 = [v95 leadingAnchor];
  v51 = [v19 leadingAnchor];
  v52 = [v50 constraintEqualToAnchor_];

  v49[4] = v52;
  v53 = [v95 trailingAnchor];
  v54 = [v19 trailingAnchor];
  v55 = [v53 constraintEqualToAnchor_];

  v90 = v49;
  v49[5] = v55;
  v56 = [v95 topAnchor];
  v57 = [v19 topAnchor];
  v58 = [v56 constraintEqualToAnchor_];

  v49[6] = v58;
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_20C14FE90;
  v60 = [v93 leadingAnchor];
  v61 = [v19 leadingAnchor];
  v62 = [v60 constraintEqualToAnchor_];

  *(v59 + 32) = v62;
  v63 = [v93 trailingAnchor];
  v64 = [v19 trailingAnchor];
  v65 = [v63 constraintEqualToAnchor_];

  *(v59 + 40) = v65;
  v66 = [v93 topAnchor];
  v67 = [v95 bottomAnchor];
  v68 = [v66 constraintEqualToAnchor_];

  *(v59 + 48) = v68;
  v69 = [v93 bottomAnchor];
  v70 = [v19 bottomAnchor];
  v71 = [v69 constraintEqualToAnchor_];

  *(v59 + 56) = v71;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_20C14FE90;
  v73 = *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_bottomLine];
  v74 = [v73 leadingAnchor];
  v75 = [v1 leadingAnchor];
  v76 = [v74 constraintEqualToAnchor:v75 constant:77.0];

  *(v72 + 32) = v76;
  v77 = [v73 trailingAnchor];
  v78 = [v1 trailingAnchor];
  v79 = [v77 constraintEqualToAnchor_];

  *(v72 + 40) = v79;
  v80 = [v73 bottomAnchor];
  v81 = [v1 bottomAnchor];
  v82 = [v80 constraintEqualToAnchor_];

  *(v72 + 48) = v82;
  v83 = [v73 heightAnchor];
  sub_20C1387F4();
  v84 = [v83 constraintEqualToConstant_];

  *(v72 + 56) = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 32) = v94;
  *(inited + 16) = xmmword_20C150DB0;
  *(inited + 40) = v92;
  *(inited + 48) = v91;
  *(inited + 56) = v90;
  *(inited + 64) = v59;
  *(inited + 72) = v72;
  sub_20B853E04(inited);
  v87 = v86;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_currentConstraints] = v87;

  v88 = objc_opt_self();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);

  v89 = sub_20C13CC54();

  [v88 activateConstraints_];
}

double sub_20C05EBBC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20C05EC08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20C05EC60(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20C05ECE0(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v209 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v163 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v193 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v190 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v191 = &v163 - v7;
  v189 = v8;
  MEMORY[0x28223BE20](v9);
  v192 = &v163 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v163 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v200 = *(v14 - 8);
  v15 = *(v200 + 64);
  MEMORY[0x28223BE20](v14);
  v188 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v202 = &v163 - v17;
  v197 = sub_20C1391C4();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v19 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = sub_20C138A64();
  v198 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v201 = &v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v21 - 8);
  v195 = &v163 - v22;
  v23 = sub_20C13C554();
  v207 = *(v23 - 8);
  v208 = v23;
  MEMORY[0x28223BE20](v23);
  v206 = (&v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_20C137C24();
  v210 = *(v25 - 8);
  v211 = v25;
  MEMORY[0x28223BE20](v25);
  v203 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v26;
  MEMORY[0x28223BE20](v27);
  v212 = &v163 - v28;
  v205 = sub_20C136CD4();
  v29 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v213 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134E44();
  MEMORY[0x28223BE20](v31 - 8);
  v214 = &v163 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C134014();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v37 = &v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x20)
  {
    v176 = v19;
    v177 = v13;
    v174 = v15;
    v187 = v29;
    v178 = v14;
    v38 = v35;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
    v40 = swift_projectBox();
    v41 = v40 + *(v39 + 64);
    v42 = *v41;
    v43 = *(v41 + 8);
    v45 = *(v41 + 16);
    v44 = *(v41 + 24);
    v46 = *(v41 + 32);
    v47 = *(v41 + 40);
    v186 = v34;
    v48 = *(v34 + 16);
    v209 = v38;
    v48(v37, v40, v38);
    v49 = v215;
    v50 = *&v215[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_titleLabel];
    v51 = v42;
    v180 = v43;
    v52 = v45;
    v184 = v44;

    v183 = v46;

    v181 = v47;

    v182 = v51;
    [v50 setAttributedText_];
    sub_20C133F34();
    if (v53)
    {
      v54 = sub_20C13C914();

      [v50 setAccessibilityLabel_];
    }

    v185 = v37;
    sub_20C133F04();
    v179 = sub_20C138054();
    v56 = v55;
    sub_20C134E34();
    v57 = v212;
    sub_20C136CB4();
    v58 = sub_20C136CC4();
    v60 = v59;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v61 = sub_20C13D374();
    v62 = v206;
    v63 = v207;
    *v206 = v61;
    v64 = v208;
    v63[13](v62, *MEMORY[0x277D85200], v208);
    v65 = sub_20C13C584();
    result = (v63[1])(v62, v64);
    if (v65)
    {
      v68 = *&v49[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView];
      v67 = *&v49[OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v68 setContentMode_];
      if (sub_20BA66C54())
      {
        v206 = v52;
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v71 = v210;
        v72 = *(v210 + 16);
        v207 = v58;
        v173 = ObjectType;
        v73 = v203;
        v175 = v60;
        v74 = v211;
        v167 = v210 + 16;
        v168 = v72;
        v72(v203, v57, v211);
        v75 = *(v71 + 80);
        v208 = v56;
        v76 = (v75 + 24) & ~v75;
        v164 = v204 + 7;
        v77 = (v204 + 7 + v76) & 0xFFFFFFFFFFFFFFF8;
        v171 = v67;
        v172 = v68;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v79 = (v78 + 23) & 0xFFFFFFFFFFFFFFF8;
        v170 = (v79 + 15) & 0xFFFFFFFFFFFFFFF8;
        v169 = v75;
        v80 = swift_allocObject();
        *(v80 + 16) = v70;
        v81 = v71;
        v82 = v73;
        v83 = *(v81 + 32);
        v84 = v80 + v76;
        v85 = v208;
        v86 = v74;
        v87 = v175;
        v166 = v81 + 32;
        v165 = v83;
        v83(v84, v73, v86);
        v88 = (v80 + v77);
        *v88 = v207;
        v88[1] = v87;
        v89 = (v80 + v78);
        *v89 = v179;
        v89[1] = v85;
        *(v80 + v79) = 2;
        v90 = v80 + v170;
        *v90 = MEMORY[0x277D84F90];
        *(v90 + 8) = 0;
        v91 = (v80 + ((v79 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v91 = 0;
        v91[1] = 0;
        v92 = v171;
        v93 = *(v171 + 152);

        v94 = v80;
        v95 = v172;
        v96 = v173;
        v93(sub_20C06013C, v94);

        [v95 bounds];
        if (v97 <= 0.0 || (v99 = v98, v98 <= 0.0))
        {

          v133 = v211;
          v57 = v212;
        }

        else
        {
          v100 = v97;
          v170 = ~v169;
          v101 = v92;
          v102 = v95;
          v103 = v96;
          (*(v92 + 120))(0, v96, v92);
          v104 = v195;
          v106 = v211;
          v105 = v212;
          v107 = v168;
          v168(v195, v212, v211);
          v108 = v107;
          (*(v210 + 56))(v104, 0, 1, v106);
          (*(v101 + 16))(v104, v103, v101);
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v109 = sub_20C13D5A4();
          [v102 setBackgroundColor_];

          (*(v101 + 176))(COERCE_DOUBLE(*&v100), COERCE_DOUBLE(*&v99), 0, v103, v101);
          v110 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v108(v82, v105, v106);
          v111 = (v169 + 16) & v170;
          v112 = (v164 + v111) & 0xFFFFFFFFFFFFFFF8;
          v113 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
          v114 = swift_allocObject();
          v165(v114 + v111, v82, v106);
          *(v114 + v112) = v110;
          v57 = v212;
          v115 = (v114 + v113);
          *v115 = v100;
          v115[1] = v99;
          v195 = v114;
          v116 = (v114 + ((v113 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v116 = 0;
          v116[1] = 0;
          v117 = v82;
          v168(v82, v57, v106);
          (*(v196 + 104))(v176, *MEMORY[0x277D542A8], v197);

          v118 = v201;
          sub_20C138A54();
          v119 = v177;
          sub_20B5F160C(v118, v177);
          v120 = v200;
          v121 = v178;
          if ((*(v200 + 48))(v119, 1, v178) == 1)
          {
            sub_20B520158(v119, &unk_27C766670, &unk_20C151580);
            sub_20BA1D944();

            (*(v198 + 8))(v118, v199);
          }

          else
          {
            v207 = *(v120 + 32);
            (v207)(v202, v119, v121);
            v135 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v136 = v211;
            v168(v117, v57, v211);
            v137 = (v169 + 40) & v170;
            v138 = v137 + v204;
            v139 = (v137 + v204) & 0xFFFFFFFFFFFFFFF8;
            v140 = swift_allocObject();
            *(v140 + 2) = v135;
            v140[3] = v100;
            v140[4] = v99;
            v165(v140 + v137, v117, v136);
            *(v140 + v138) = 0;
            v141 = v140 + v139;
            *(v141 + 1) = 0;
            *(v141 + 2) = 0;
            v142 = swift_allocObject();
            *(v142 + 16) = sub_20C0602D0;
            *(v142 + 24) = v140;
            v143 = v188;
            (*(v120 + 16))(v188, v202, v121);
            v144 = (*(v120 + 80) + 16) & ~*(v120 + 80);
            v145 = (v174 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
            v146 = swift_allocObject();
            (v207)(v146 + v144, v143, v121);
            v147 = (v146 + v145);
            *v147 = sub_20B5F67A4;
            v147[1] = v142;
            v148 = v191;
            sub_20C137C94();
            v149 = swift_allocObject();
            v150 = v195;
            *(v149 + 16) = sub_20C060214;
            *(v149 + 24) = v150;
            v151 = swift_allocObject();
            *(v151 + 16) = sub_20B5F67D4;
            *(v151 + 24) = v149;
            v152 = v193;
            v153 = v190;
            v154 = v194;
            (*(v193 + 16))(v190, v148, v194);
            v155 = (*(v152 + 80) + 16) & ~*(v152 + 80);
            v156 = (v189 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
            v157 = swift_allocObject();
            (*(v152 + 32))(v157 + v155, v153, v154);
            v158 = (v157 + v156);
            *v158 = sub_20B5DF204;
            v158[1] = v151;

            v159 = v192;
            sub_20C137C94();
            v160 = *(v152 + 8);
            v160(v148, v154);
            v161 = sub_20C137CB4();
            v162 = swift_allocObject();
            *(v162 + 16) = 0;
            *(v162 + 24) = 0;
            v161(sub_20B52347C, v162);

            v57 = v212;

            v160(v159, v154);
            (*(v120 + 8))(v202, v178);
            (*(v198 + 8))(v201, v199);
          }

          v133 = v211;
        }

        v134 = v187;
        v52 = v206;
      }

      else
      {

        v133 = v211;
        v134 = v187;
      }

      (*(v210 + 8))(v57, v133);
      (*(v134 + 8))(v213, v205);

      sub_20B62A2AC(v214);
      return (*(v186 + 8))(v185, v209);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v122 = v215;
    v123 = sub_20C13BB74();
    v124 = sub_20C13D1D4();

    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v216 = a1;
      v217 = v127;
      *v125 = 138543618;
      *(v125 + 4) = v122;
      *v126 = v122;
      *(v125 + 12) = 2082;
      v128 = sub_20B5F66D0();
      v129 = v122;
      v130 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v128);
      v132 = sub_20B51E694(v130, v131, &v217);

      *(v125 + 14) = v132;
      _os_log_impl(&dword_20B517000, v123, v124, "Attempted to configure %{public}@ with item: %{public}s", v125, 0x16u);
      sub_20B520158(v126, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v126, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v127);
      MEMORY[0x20F2F6A40](v127, -1, -1);
      MEMORY[0x20F2F6A40](v125, -1, -1);
    }

    return (*(v209 + 8))(v4, v2);
  }

  return result;
}

void sub_20C06013C()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA2F498(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20C060214(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA629A0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20C0602D0(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F1F28(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20C060384()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_currentConstraints) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_artworkView);
  v4 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v6];
  v7 = [v4 layer];
  [v7 setCornerRadius_];

  [v4 setClipsToBounds_];
  *v3 = v4;
  v3[1] = &off_2822B63E8;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  LODWORD(v9) = 1148846080;
  [v8 setContentCompressionResistancePriority:1 forAxis:v9];

  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v11 = [v10 fontDescriptorWithSymbolicTraits_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_titleLabel;
  v14 = objc_opt_self();
  v15 = [v14 fontWithDescriptor:v10 size:0.0];

  [v8 setFont_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  v16 = objc_opt_self();
  v17 = [v16 whiteColor];
  [v8 setTextColor_];

  [v8 setLineBreakMode_];
  *(v0 + v13) = v8;
  v18 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_subtitleLabel;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  LODWORD(v20) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v20];

  v21 = [v14 preferredFontForTextStyle_];
  [v19 setFont_];

  [v19 setAllowsDefaultTighteningForTruncation_];
  v22 = [v16 systemGrayColor];
  [v19 setTextColor_];

  [v19 setLineBreakMode_];
  *(v0 + v18) = v19;
  v23 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_bottomLine;
  v24 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = [v16 separatorColor];
  [v24 setBackgroundColor_];

  *(v0 + v23) = v24;
  v26 = v0 + OBJC_IVAR____TtC9SeymourUI13CircleRowCell_layout;
  *v26 = xmmword_20C18B6C0;
  *(v26 + 16) = xmmword_20C18B6D0;
  *(v26 + 32) = 0x4020000000000000;
  v27 = OBJC_IVAR____TtC9SeymourUI13CircleRowCell_textGuide;
  *(v0 + v27) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI18LoadingButtonStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20C0608A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 48))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C060904(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_20C060968(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  return result;
}

BOOL sub_20C0609B4(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_20C0609FC(v7, v8);
}

BOOL sub_20C0609FC(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  if (v3 == 1)
  {
    return a2[1] == 1;
  }

  v5 = a2[1];
  if (v5 == 1)
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v11 = a2[2];
  v10 = a2[3];
  v13 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v5 || (*a1 != *a2 || v3 != v5) && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (v7)
  {
    if (!v10 || (v6 != v11 || v7 != v10) && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v9)
  {
    if (v12 && (v8 == v13 && v9 == v12 || (sub_20C13DFF4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

id sub_20C060B2C()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    v3 = sub_20C060B88(v0);
    v4 = v0[6];
    v0[6] = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_20C060B88(void *a1)
{
  v2 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = a1[3];
  v58 = a1[4];
  v59 = v3;

  v5 = sub_20BEF6434(v4);

  v57 = sub_20C1380F4();
  v6 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v56 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v6 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v7 = sub_20C13C724();
  v8 = type metadata accessor for CatalogPageImpressionTracker();
  v9 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v10 = MEMORY[0x277D221C0];
  v9[2] = sub_20C13C6D4();
  v9[3] = v7;
  v9[4] = v10;
  v71[3] = v8;
  v11 = sub_20B63EE48();
  v71[4] = v11;
  v71[0] = v9;
  v12 = type metadata accessor for MetricLocationStore();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F98];
  *(v13 + 16) = MEMORY[0x277D84F90];
  *(v13 + 24) = v15;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v71, v8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v70[3] = v8;
  v70[4] = v11;
  v70[0] = v21;
  v69[3] = v12;
  v69[4] = &off_2822B6968;
  v69[0] = v13;
  v22 = *(v5 + 16);
  if (v22)
  {
    v54 = v12;
    v55 = v11;
    v68[0] = v14;
    sub_20BB5D394(0, v22, 0);
    v23 = 32;
    v24 = v68[0];
    do
    {
      v25 = *(v5 + v23);
      v68[0] = v24;
      v26 = *(v24 + 16);
      v27 = *(v24 + 24);
      v60 = v25;
      swift_unknownObjectRetain();
      if (v26 >= v27 >> 1)
      {
        sub_20BB5D394((v27 > 1), v26 + 1, 1);
        v24 = v68[0];
      }

      *(v24 + 16) = v26 + 1;
      v28 = v24 + 24 * v26;
      *(v28 + 32) = v60;
      *(v28 + 48) = 0;
      v23 += 16;
      --v22;
    }

    while (v22);

    v12 = v54;
    v11 = v55;
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v70, v68);
  sub_20B51CC64(v69, v67);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v68, v68[3]);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v67, v67[3]);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = (&v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37, v35);
  v39 = *v32;
  v40 = *v37;
  v65 = v8;
  v66 = v11;
  v64[0] = v39;
  v62 = v12;
  v63 = &off_2822B6968;
  v61[0] = v40;
  v41 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v42 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = (&v54 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45, v43);
  v47 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
  v48 = MEMORY[0x28223BE20](v47);
  v50 = (&v54 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v51 + 16))(v50, v48);
  v52 = sub_20BE3AA74(v59, v58, v24, v57, v56, *v45, *v50, 2, v41);
  __swift_destroy_boxed_opaque_existential_1(v69);
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v61);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v67);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v52;
}

void sub_20C0611E4(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X3>, unint64_t a5@<X4>, char *a6@<X5>, char *a7@<X6>, _OWORD *a8@<X7>, void *a9@<X8>)
{
  v129 = a8;
  v136 = a7;
  v130 = a6;
  v127 = a5;
  v126 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v14 - 8);
  v122 = &v100 - v15;
  v125 = sub_20C134EC4();
  v128 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v124 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v16;
  MEMORY[0x28223BE20](v17);
  v123 = &v100 - v18;
  v19 = sub_20C135524();
  v119 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v121 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v120 = &v100 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v100 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v100 - v27;
  v29 = sub_20C133E24();
  MEMORY[0x28223BE20](v29);
  v35 = MEMORY[0x28223BE20](v30);
  v36 = *a1;
  if (v36 == 6)
  {
    v107 = 6;
    v109 = a9;
    v110 = v9;
    v108 = a2;
    v37 = *(a2 + 16);
    v101 = *(v33 + 16);
    v117 = v34;
    v116 = &v100 - v31;
    v106 = a3;
    v115 = v32;
    v104 = v33;
    (v101)(&v100 - v31, a3, v32, v35);
    v38 = *(v119 + 16);
    v111 = v38;
    v112 = v119 + 16;
    v114 = v28;
    v38(v28, v126, v19);
    v113 = v25;
    v38(v25, v136, v19);
    v39 = v128 + 16;
    v40 = *(v128 + 16);
    v41 = v123;
    v40(v123, v130, v125);
    v102 = v40;
    v103 = v39;
    sub_20B6AE918(v127, v122);
    type metadata accessor for TVCatalogThemeFilterOptionsShelf(0);
    v42 = swift_allocObject();
    *(v42 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_20C132ED4();
    v43 = v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row;
    sub_20B5D8060(v134);
    v44 = v134[7];
    v45 = v134[9];
    *(v43 + 128) = v134[8];
    *(v43 + 144) = v45;
    v46 = v134[5];
    v47 = v134[6];
    *(v43 + 64) = v134[4];
    *(v43 + 80) = v46;
    *(v43 + 160) = v135;
    *(v43 + 96) = v47;
    *(v43 + 112) = v44;
    v48 = v134[1];
    *v43 = v134[0];
    *(v43 + 16) = v48;
    v49 = v134[3];
    *(v43 + 32) = v134[2];
    *(v43 + 48) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
    sub_20C133AA4();
    v101(v117, v116, v115);
    v50 = v111;
    v111(v120, v114, v19);
    v40(v124, v41, v125);
    v50(v121, v113, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E48, &unk_20C165AF0);
    v51 = swift_allocObject();
    *(v51 + 48) = 0u;
    *(v51 + 64) = 0u;
    *(v51 + 80) = 0u;
    *(v51 + 96) = 0u;
    *(v51 + 112) = 0u;
    v52 = *(*v51 + 176);
    v53 = sub_20C133A74();
    v54 = *(*(v53 - 8) + 56);
    v54(v51 + v52, 1, 1, v53);
    v54(v51 + *(*v51 + 184), 1, 1, v53);
    v54(v51 + *(*v51 + 192), 1, 1, v53);
    *(v51 + 40) = v37;
    v105 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
    sub_20C133AA4();
    v55 = v132;
    *(v51 + 16) = v131;
    *(v51 + 24) = v55;
    sub_20C13A924();
    swift_allocObject();
    swift_unknownObjectRetain();
    v56 = sub_20C13A914();
    v57 = v119;
    v58 = *(v119 + 8);
    v58(v113, v19);
    v58(v114, v19);
    v59 = v104;
    v60 = v115;
    (*(v104 + 8))(v116, v115);
    *(v51 + 32) = v56;
    v61 = MEMORY[0x277D84F90];
    *(v51 + *(*v51 + 216)) = MEMORY[0x277D84F90];
    *(v51 + *(*v51 + 224)) = v61;
    *(v51 + *(*v51 + 208)) = 6;
    *(v51 + *(*v51 + 200)) = 456;
    (*(v59 + 32))(v51 + qword_27C79BF30, v117, v60);
    v62 = v120;
    v111((v51 + qword_27C79BF38), v120, v19);
    v63 = *(v57 + 32);
    v63(v51 + *(*v51 + 232), v62, v19);
    v63(v51 + *(*v51 + 240), v121, v19);
    v64 = *(*v51 + 248);
    v65 = *(v128 + 32);
    v128 += 32;
    v66 = v125;
    v65(v51 + v64, v124, v125);
    *(v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator) = v51;
    sub_20B6AE988(v122, v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_rootModality);
    v67 = v123;
    v102(v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_filterRoot, v123, v66);
    sub_20B52E424(&v133, v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_storefrontLocalizer);
    *(v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_content) = 0;
    v68 = swift_allocObject();
    swift_weakInit();
    v69 = *(v51 + 48);
    v70 = *(v51 + 56);
    *(v51 + 48) = sub_20B88FAC0;
    *(v51 + 56) = v68;

    sub_20B583ECC(v69, v70);

    v71 = *(v42 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator);
    v72 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
    v122 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
    v73 = swift_allocObject();
    swift_weakInit();
    v74 = *(v71 + 64);
    v75 = *(v71 + 72);
    *(v71 + 64) = sub_20B88FAC8;
    *(v71 + 72) = v73;

    sub_20B583ECC(v74, v75);

    v76 = *(v42 + v72);
    v77 = swift_allocObject();
    swift_weakInit();
    v78 = v124;
    v79 = v67;
    v80 = v128;
    v65(v124, v79, v66);
    v81 = (*(v80 + 48) + 24) & ~*(v80 + 48);
    v82 = swift_allocObject();
    *(v82 + 16) = v77;
    v65(v82 + v81, v78, v66);
    v83 = *(v76 + 80);
    v84 = *(v76 + 88);
    *(v76 + 80) = sub_20C063648;
    *(v76 + 88) = v82;

    sub_20B583ECC(v83, v84);

    v85 = v122;
    v86 = *(v42 + v122);
    v87 = swift_allocObject();
    swift_weakInit();
    v88 = *(v86 + 96);
    v89 = *(v86 + 104);
    *(v86 + 96) = sub_20B7E05FC;
    *(v86 + 104) = v87;

    sub_20B583ECC(v88, v89);

    v90 = *(v42 + v85);
    v91 = swift_allocObject();
    swift_weakInit();

    v92 = *(v90 + 112);
    v93 = *(v90 + 120);
    *(v90 + 112) = sub_20B88FAE8;
    *(v90 + 120) = v91;
    swift_retain_n();
    sub_20B583ECC(v92, v93);

    a3 = v106;
    v94 = v126;
    v95 = v127;
    v96 = sub_20B889EDC(v105, v106, v126, v127, v130, v136, v129, 162, 6u);
    if (*(v96 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
      v97 = swift_allocObject();
      *(v97 + 16) = xmmword_20C14F980;
      *(v97 + 32) = v42;
      *(v97 + 40) = &off_2822D9808;
      *&v133 = v97;
      sub_20B8D93EC(v96);
      v98 = v133;
    }

    else
    {

      v98 = MEMORY[0x277D84F90];
    }

    a9 = v109;
    LOBYTE(v36) = v107;
  }

  else
  {
    v94 = v126;
    v95 = v127;
    v98 = sub_20B889EDC(*(a2 + 16), a3, v126, v127, v130, v136, v129, 234, v36);
  }

  v99 = sub_20C061FA8(v36, a3, v94, v95, v130, v136, v129);
  *&v134[0] = v98;
  sub_20B8D93EC(v99);
  *a9 = *&v134[0];
}

uint64_t sub_20C061FA8(unsigned __int8 a1, char *a2, char *a3, uint64_t a4, unint64_t a5, unint64_t a6, _OWORD *a7)
{
  v8 = v7;
  LOBYTE(v15) = a1;
  v16 = a1;
  v195 = *MEMORY[0x277D85DE8];
  v17 = sub_20C133A74();
  v18 = *(v17 - 8);
  v187 = v17;
  v188 = v18;
  MEMORY[0x28223BE20](v17);
  v185 = (v152 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v20 - 8);
  v177 = v152 - v21;
  v183 = sub_20C134EC4();
  v178 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = v152 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = v22;
  MEMORY[0x28223BE20](v23);
  v184 = v152 - v24;
  v25 = sub_20C135524();
  v175 = *(v25 - 8);
  v176 = v25;
  MEMORY[0x28223BE20](v25);
  v173 = v152 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v172 = v152 - v28;
  MEMORY[0x28223BE20](v29);
  v174 = v152 - v30;
  MEMORY[0x28223BE20](v31);
  v182 = v152 - v32;
  v33 = sub_20C133E24();
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  if (v16 != 6)
  {
    return sub_20B889EDC(*(v8 + 16), a2, a3, a4, a5, a6, a7, 60, v15);
  }

  v39 = v38;
  v171 = v152 - v36;
  v168 = v37;
  v169 = v35;
  sub_20C135864();
  v40 = sub_20C13CFB4();

  if (!*(v40 + 16))
  {
    goto LABEL_38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E20, &qword_20C18B880);
  v159 = swift_allocObject();
  *(v159 + 16) = xmmword_20C14F980;
  v41 = *(v8 + 16);
  v42 = v39;
  v154 = *(v39 + 16);
  v155 = v39 + 16;
  v154(v171, a2, v169);
  v43 = a4;
  v44 = v175 + 16;
  v45 = *(v175 + 16);
  v46 = a3;
  v47 = v176;
  v45(v182, v46, v176);
  v165 = v44;
  v157 = v45;
  v45(v174, a6, v47);
  v166 = *(v178 + 16);
  v167 = v178 + 16;
  v166(v184, a5, v183);
  sub_20B6AE918(v43, v177);
  v152[0] = type metadata accessor for TVCatalogThemeFilterOptionsShelf(0);
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v160 = v48;
  v49 = v48 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row;
  sub_20B5D8060(v193);
  v50 = v193[9];
  *(v49 + 128) = v193[8];
  *(v49 + 144) = v50;
  *(v49 + 160) = v194;
  v51 = v193[5];
  *(v49 + 64) = v193[4];
  *(v49 + 80) = v51;
  v52 = v193[7];
  *(v49 + 96) = v193[6];
  *(v49 + 112) = v52;
  v53 = v193[1];
  *v49 = v193[0];
  *(v49 + 16) = v53;
  v54 = v193[3];
  *(v49 + 32) = v193[2];
  *(v49 + 48) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  v156 = v41;
  sub_20C133AA4();
  v55 = *(v40 + 32);
  LODWORD(v49) = v55 & 0x3F;
  a6 = ((1 << v55) + 63) >> 6;
  a7 = (8 * a6);
  v56 = swift_bridgeObjectRetain_n();
  v186 = v40;
  v158 = v42;
  if (v49 > 0xD)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v161 = v152;
    v162 = a6;
    MEMORY[0x28223BE20](v56);
    v163 = v152 - ((a7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v163, a7);
    v164 = 0;
    v8 = 0;
    v58 = *(v40 + 56);
    v40 += 56;
    v57 = v58;
    v59 = 1 << *(v40 - 24);
    v60 = -1;
    if (v59 < 64)
    {
      v60 = ~(-1 << v59);
    }

    a5 = v60 & v57;
    a2 = ((v59 + 63) >> 6);
    v179 = v188 + 8;
    v180 = v188 + 16;
    while (a5)
    {
      v61 = __clz(__rbit64(a5));
      a5 &= a5 - 1;
LABEL_14:
      a6 = v61 | (v8 << 6);
      a7 = v185;
      a4 = v187;
      v15 = v188;
      (*(v188 + 16))(v185, *(v186 + 48) + *(v188 + 72) * a6, v187);
      a3 = sub_20C133A64();
      (*(v15 + 8))(a7, a4);
      if (a3)
      {
        *&v163[(a6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << a6;
        v64 = __OFADD__(v164++, 1);
        if (v64)
        {
          __break(1u);
          return sub_20B889EDC(*(v8 + 16), a2, a3, a4, a5, a6, a7, 60, v15);
        }
      }
    }

    v62 = v8;
    while (1)
    {
      v8 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        break;
      }

      if (v8 >= a2)
      {
        v40 = v186;
        v66 = sub_20BC0E730(v163, v162, v164, v186);
        v162 = 0;
        goto LABEL_20;
      }

      v63 = *(v40 + 8 * v8);
      ++v62;
      if (v63)
      {
        v61 = __clz(__rbit64(v63));
        a5 = (v63 - 1) & v63;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v93 = swift_slowAlloc();
  v94 = sub_20B9840FC(v93, a6, v40, sub_20BC68DB0, 0);
  v162 = 0;
  v66 = v94;

  MEMORY[0x20F2F6A40](v93, -1, -1);
LABEL_20:
  *&v190[0] = v66;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E38, &unk_20C165AE0);
  sub_20B88FA5C();
  a7 = v190;
  v67 = sub_20C13CBF4();

  v69 = *(v40 + 32);
  v70 = v69 & 0x3F;
  v71 = (1 << v69) + 63;
  a6 = v71 >> 6;
  v161 = v67;
  if (v70 <= 0xD)
  {
    goto LABEL_21;
  }

  v92 = (8 * (v71 >> 6));

  a7 = v92;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_21:
    v152[1] = v152;
    v153 = a6;
    MEMORY[0x28223BE20](v68);
    v163 = v152 - ((v72 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v163, v72);
    v164 = 0;
    v73 = 0;
    v75 = *(v40 + 56);
    v40 += 56;
    v74 = v75;
    v76 = 1 << *(v40 - 24);
    v77 = -1;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    v78 = v77 & v74;
    v79 = (v76 + 63) >> 6;
    v179 = v188 + 8;
    v180 = v188 + 16;
    while (1)
    {
      if (!v78)
      {
        v81 = v73;
        while (1)
        {
          v73 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            goto LABEL_40;
          }

          if (v73 >= v79)
          {
            goto LABEL_35;
          }

          v82 = *(v40 + 8 * v73);
          ++v81;
          if (v82)
          {
            v80 = __clz(__rbit64(v82));
            v78 = (v82 - 1) & v82;
            goto LABEL_31;
          }
        }
      }

      v80 = __clz(__rbit64(v78));
      v78 &= v78 - 1;
LABEL_31:
      v83 = v80 | (v73 << 6);
      a7 = v185;
      v84 = v187;
      a6 = v188;
      (*(v188 + 16))(v185, *(v186 + 48) + *(v188 + 72) * v83, v187);
      v85 = sub_20C133A64();
      (*(a6 + 8))(a7, v84);
      if (!v85)
      {
        *&v163[(v83 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v83;
        v64 = __OFADD__(v164++, 1);
        if (v64)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_35:
    v86 = sub_20BC0E730(v163, v153, v164, v186);
    v87 = *(v86 + 16);
    if (!v87)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  v95 = swift_slowAlloc();
  v96 = v162;
  v97 = sub_20B9840FC(v95, a6, v40, sub_20BC68DE4, 0);
  v162 = v96;
  if (v96)
  {

    v151 = v95;
    goto LABEL_55;
  }

  v86 = v97;

  MEMORY[0x20F2F6A40](v95, -1, -1);
  v87 = *(v86 + 16);
  if (!v87)
  {
LABEL_48:
    v88 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

LABEL_36:
  v88 = sub_20BEDE94C(v87, 0);
  sub_20BEE2084(v190, &v88[(*(v188 + 80) + 32) & ~*(v188 + 80)], v87, v86);
  v90 = v89;
  v91 = *&v190[0];

  sub_20B6D87E8(v91);
  if (v90 != v87)
  {
    __break(1u);
LABEL_38:

    return MEMORY[0x277D84F90];
  }

LABEL_49:
  v98 = v162;
  v189 = v88;
  sub_20C06364C(&v189);
  if (v98)
  {

    while (1)
    {
      v143 = v160;
      sub_20B583E6C(v160 + 16);
      v144 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_identifier;
      v145 = sub_20C132EE4();
      (*(*(v145 - 8) + 8))(v143 + v144, v145);
      v146 = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 144);
      v190[8] = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 128);
      v190[9] = v146;
      v191 = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 160);
      v147 = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 80);
      v190[4] = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 64);
      v190[5] = v147;
      v148 = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 112);
      v190[6] = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 96);
      v190[7] = v148;
      v149 = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 16);
      v190[0] = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row);
      v190[1] = v149;
      v150 = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 48);
      v190[2] = *(v143 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_row + 32);
      v190[3] = v150;
      sub_20B634408(v190);
      swift_deallocPartialClassInstance();
      __break(1u);

      v151 = v144;
LABEL_55:
      MEMORY[0x20F2F6A40](v151, -1, -1);
    }
  }

  *&v190[0] = v161;
  sub_20B8D91F0(v189);
  v185 = *&v190[0];
  v99 = v169;
  v154(v168, v171, v169);
  v100 = v176;
  v101 = v157;
  v157(v172, v182, v176);
  v166(v181, v184, v183);
  v102 = v174;
  v101(v173, v174, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766E48, &unk_20C165AF0);
  v103 = swift_allocObject();
  *(v103 + 48) = 0u;
  *(v103 + 64) = 0u;
  *(v103 + 80) = 0u;
  *(v103 + 96) = 0u;
  *(v103 + 112) = 0u;
  v104 = v187;
  v105 = *(v188 + 56);
  v105(v103 + *(*v103 + 176), 1, 1, v187);
  v105(v103 + *(*v103 + 184), 1, 1, v104);
  v105(v103 + *(*v103 + 192), 1, 1, v104);
  *(v103 + 40) = v156;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v106 = *(&v190[0] + 1);
  *(v103 + 16) = *&v190[0];
  *(v103 + 24) = v106;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v107 = sub_20C13A914();
  v108 = v175;
  v109 = *(v175 + 8);
  v109(v102, v100);
  v109(v182, v100);
  v110 = v158;
  (*(v158 + 8))(v171, v99);
  *(v103 + 32) = v107;
  v111 = v185;
  *(v103 + *(*v103 + 216)) = v185;
  *(v103 + *(*v103 + 224)) = v111;
  *(v103 + *(*v103 + 208)) = 6;
  *(v103 + *(*v103 + 200)) = 60;
  (*(v110 + 32))(v103 + qword_27C79BF30, v168, v99);
  v112 = v172;
  v101((v103 + qword_27C79BF38), v172, v100);
  v113 = *(v108 + 32);
  v113(v103 + *(*v103 + 232), v112, v100);
  v113(v103 + *(*v103 + 240), v173, v100);
  v114 = *(*v103 + 248);
  v115 = v178 + 32;
  v188 = *(v178 + 32);
  v116 = v183;
  (v188)(v103 + v114, v181, v183);
  v117 = v160;
  *(v160 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator) = v103;
  sub_20B6AE988(v177, v117 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_rootModality);
  v166((v117 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_filterRoot), v184, v116);
  sub_20B52E424(&v192, v117 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_storefrontLocalizer);
  *(v117 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_content) = v186;
  v118 = swift_allocObject();
  swift_weakInit();
  v119 = *(v103 + 48);
  v120 = *(v103 + 56);
  *(v103 + 48) = sub_20C064DF8;
  *(v103 + 56) = v118;

  sub_20B583ECC(v119, v120);

  v121 = *(v117 + OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator);
  v122 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
  v187 = OBJC_IVAR____TtC9SeymourUI32TVCatalogThemeFilterOptionsShelf_coordinator;
  v123 = swift_allocObject();
  swift_weakInit();
  v124 = *(v121 + 64);
  v125 = *(v121 + 72);
  *(v121 + 64) = sub_20C064DFC;
  *(v121 + 72) = v123;

  sub_20B583ECC(v124, v125);

  v126 = *(v117 + v122);
  v127 = swift_allocObject();
  swift_weakInit();
  v128 = v181;
  v129 = v188;
  (v188)(v181, v184, v116);
  v130 = (*(v115 + 48) + 24) & ~*(v115 + 48);
  v131 = swift_allocObject();
  *(v131 + 16) = v127;
  v129(v131 + v130, v128, v116);
  v132 = *(v126 + 80);
  v133 = *(v126 + 88);
  *(v126 + 80) = sub_20C064E04;
  *(v126 + 88) = v131;

  sub_20B583ECC(v132, v133);

  v134 = v187;
  v135 = *(v117 + v187);
  v136 = swift_allocObject();
  swift_weakInit();
  v137 = *(v135 + 96);
  v138 = *(v135 + 104);
  *(v135 + 96) = sub_20C064E00;
  *(v135 + 104) = v136;

  sub_20B583ECC(v137, v138);

  v139 = *(v117 + v134);
  v140 = swift_allocObject();
  swift_weakInit();

  v141 = *(v139 + 112);
  v142 = *(v139 + 120);
  *(v139 + 112) = sub_20C064E08;
  *(v139 + 120) = v140;
  swift_retain_n();
  sub_20B583ECC(v141, v142);

  result = v159;
  *(v159 + 32) = v117;
  *(result + 40) = &off_2822D9808;
  return result;
}

uint64_t sub_20C063280()
{

  return swift_deallocClassInstance();
}

uint64_t sub_20C0632F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v20 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = sub_20C060B2C();

  v13 = *MEMORY[0x277D51800];
  v14 = sub_20C1352F4();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v11, v13, v14);
  (*(v15 + 56))(v11, 0, 1, v14);
  v16 = sub_20C132C14();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = sub_20C135ED4();
  (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
  v18 = sub_20C136914();
  (*(*(v18 - 8) + 56))(v2, 1, 1, v18);
  return sub_20C133384();
}

void sub_20C06364C(uint64_t *a1)
{
  v2 = *(sub_20C133A74() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0E34(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20C0636F4(v5);
  *a1 = v3;
}

void sub_20C0636F4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
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
        sub_20C133A74();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133A74() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20C063B2C(v8, v9, a1, v4);
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
    sub_20C063820(0, v2, 1, a1);
  }
}

void sub_20C063820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C133A74();
  MEMORY[0x28223BE20](v8);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v34 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v34 - v15;
  v36 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v45 = *(v13 + 16);
    v46 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v42 = (v13 + 32);
    v43 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v41 = -v17;
    v20 = a1 - a3;
    v35 = v17;
    v21 = v16 + v17 * a3;
LABEL_6:
    v39 = v19;
    v40 = a3;
    v37 = v21;
    v38 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v45;
      (v45)(v47, v21, v8, v14);
      v24(v48, v23, v8);
      v25 = sub_20C133A54();
      v27 = v26;
      if (v25 == sub_20C133A54() && v27 == v28)
      {

        v22 = *v18;
        (*v18)(v48, v8);
        v22(v47, v8);
LABEL_5:
        a3 = v40 + 1;
        v19 = &v39[v35];
        v20 = v38 - 1;
        v21 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_6;
      }

      v29 = sub_20C13DFF4();

      v30 = *v18;
      (*v18)(v48, v8);
      v30(v47, v8);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v23, v32, v8);
      v23 += v41;
      v21 += v41;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_20C063B2C(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_20C133A74();
  MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v150 = &v129 - v12;
  MEMORY[0x28223BE20](v13);
  v155 = &v129 - v14;
  MEMORY[0x28223BE20](v15);
  v154 = &v129 - v16;
  MEMORY[0x28223BE20](v17);
  v147 = &v129 - v18;
  MEMORY[0x28223BE20](v19);
  v146 = &v129 - v20;
  MEMORY[0x28223BE20](v21);
  v134 = &v129 - v22;
  v25.n128_f64[0] = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v26;
  v27 = a3[1];
  v144 = v24;
  if (v27 < 1)
  {
    v29 = MEMORY[0x277D84F90];
LABEL_103:
    v31 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v156 = v29;
      v123 = *(v29 + 16);
      if (v123 >= 2)
      {
        do
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v29 + 16 * v123);
          a3 = v29;
          v127 = *(v29 + 16 * (v123 - 1) + 32);
          v29 = *(v29 + 16 * (v123 - 1) + 40);
          sub_20C0646E8(v124 + *(v5 + 72) * v126, (v124 + *(v5 + 72) * v127), (v124 + *(v5 + 72) * v29), v31);
          if (v6)
          {
            break;
          }

          if (v29 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_20B6A07A0(a3);
          }

          if (v123 - 2 >= a3[2])
          {
            goto LABEL_129;
          }

          v128 = &a3[2 * v123];
          *v128 = v126;
          v128[1] = v29;
          v156 = a3;
          sub_20B6A0714(v123 - 1);
          v29 = v156;
          v123 = v156[2];
          a3 = v125;
        }

        while (v123 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_20B6A07A0(v29);
    goto LABEL_105;
  }

  v130 = a4;
  v28 = 0;
  v152 = v24 + 16;
  v153 = (v24 + 8);
  v151 = (v24 + 32);
  v29 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    v138 = v28;
    if (v28 + 1 < v27)
    {
      v142 = v27;
      v131 = v29;
      v32 = *a3;
      v33 = *(v144 + 72);
      v5 = v28 + 1;
      v34 = v32 + v33 * v31;
      v35 = *(v144 + 16);
      v35(v133, v34, v9, v25);
      v145 = v33;
      v141 = v35;
      (v35)(v134, v32 + v33 * v30, v9);
      v31 = sub_20C133A54();
      v37 = v36;
      v38 = sub_20C133A54();
      v132 = v6;
      if (v31 == v38 && v37 == v39)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_20C13DFF4();
      }

      v40 = *v153;
      (*v153)(v134, v9);
      v140 = v40;
      v40(v133, v9);
      v41 = (v138 + 2);
      v42 = v145 * (v138 + 2);
      v43 = v32 + v42;
      v44 = v145 * v5;
      v45 = v32 + v145 * v5;
      do
      {
        a3 = v41;
        v48 = v5;
        v6 = v44;
        v29 = v42;
        if (v41 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v41;
        v49 = v141;
        (v141)(v146, v43, v9);
        v49(v147, v45, v9);
        v50 = sub_20C133A54();
        v52 = v51;
        if (v50 == sub_20C133A54() && v52 == v53)
        {
          v46 = 0;
        }

        else
        {
          v46 = sub_20C13DFF4();
        }

        a3 = v149;

        v31 = v140;
        v140(v147, v9);
        (v31)(v146, v9);
        v47 = v143 ^ v46;
        v41 = (a3 + 1);
        v43 += v145;
        v45 += v145;
        v48 = v148;
        v5 = v148 + 1;
        v44 = v6 + v145;
        v42 = v29 + v145;
      }

      while ((v47 & 1) == 0);
      if (v143)
      {
        v30 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v54 = v138 * v145;
          v55 = v138;
          do
          {
            if (v55 != v48)
            {
              v57 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v48;
              v149 = *v151;
              v149(v139, (v57 + v54), v9);
              if (v54 < v6 || v57 + v54 >= (v57 + v29))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v54 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v149((v57 + v6), v139, v9);
              v30 = v138;
              v48 = v5;
            }

            ++v55;
            v6 -= v145;
            v29 -= v145;
            v54 += v145;
          }

          while (v55 < v48--);
        }

        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
      }

      else
      {
        v31 = a3;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
      }
    }

    v58 = a3[1];
    if (v31 < v58)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = sub_20BC05740(0, *(v29 + 16) + 1, 1, v29);
    }

    v76 = *(v29 + 16);
    v75 = *(v29 + 24);
    v77 = v76 + 1;
    if (v76 >= v75 >> 1)
    {
      v29 = sub_20BC05740((v75 > 1), v76 + 1, 1, v29);
    }

    *(v29 + 16) = v77;
    v78 = v29 + 16 * v76;
    *(v78 + 32) = v30;
    *(v78 + 40) = v31;
    v79 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v31;
    if (v76)
    {
      while (1)
      {
        v31 = v77 - 1;
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v80 = *(v29 + 32);
          v81 = *(v29 + 40);
          v90 = __OFSUB__(v81, v80);
          v82 = v81 - v80;
          v83 = v90;
LABEL_72:
          if (v83)
          {
            goto LABEL_119;
          }

          v96 = (v29 + 16 * v77);
          v98 = *v96;
          v97 = v96[1];
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_122;
          }

          v102 = (v29 + 32 + 16 * v31);
          v104 = *v102;
          v103 = v102[1];
          v90 = __OFSUB__(v103, v104);
          v105 = v103 - v104;
          if (v90)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v100, v105))
          {
            goto LABEL_126;
          }

          if (v100 + v105 >= v82)
          {
            if (v82 < v105)
            {
              v31 = v77 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v106 = (v29 + 16 * v77);
        v108 = *v106;
        v107 = v106[1];
        v90 = __OFSUB__(v107, v108);
        v100 = v107 - v108;
        v101 = v90;
LABEL_86:
        if (v101)
        {
          goto LABEL_121;
        }

        v109 = v29 + 16 * v31;
        v111 = *(v109 + 32);
        v110 = *(v109 + 40);
        v90 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v90)
        {
          goto LABEL_124;
        }

        if (v112 < v100)
        {
          goto LABEL_3;
        }

LABEL_93:
        v117 = v31 - 1;
        if (v31 - 1 >= v77)
        {
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
          goto LABEL_134;
        }

        v118 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v29;
        v119 = *(v29 + 32 + 16 * v117);
        v120 = *(v29 + 32 + 16 * v31);
        v29 = *(v29 + 32 + 16 * v31 + 8);
        sub_20C0646E8(v118 + *(v144 + 72) * v119, (v118 + *(v144 + 72) * v120), (v118 + *(v144 + 72) * v29), v79);
        if (v6)
        {
          goto LABEL_113;
        }

        if (v29 < v119)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_20B6A07A0(a3);
        }

        if (v117 >= a3[2])
        {
          goto LABEL_116;
        }

        v121 = &a3[2 * v117];
        v121[4] = v119;
        v121[5] = v29;
        v156 = a3;
        sub_20B6A0714(v31);
        v29 = v156;
        v77 = v156[2];
        a3 = v5;
        if (v77 <= 1)
        {
          goto LABEL_3;
        }
      }

      v84 = v29 + 32 + 16 * v77;
      v85 = *(v84 - 64);
      v86 = *(v84 - 56);
      v90 = __OFSUB__(v86, v85);
      v87 = v86 - v85;
      if (v90)
      {
        goto LABEL_117;
      }

      v89 = *(v84 - 48);
      v88 = *(v84 - 40);
      v90 = __OFSUB__(v88, v89);
      v82 = v88 - v89;
      v83 = v90;
      if (v90)
      {
        goto LABEL_118;
      }

      v91 = (v29 + 16 * v77);
      v93 = *v91;
      v92 = v91[1];
      v90 = __OFSUB__(v92, v93);
      v94 = v92 - v93;
      if (v90)
      {
        goto LABEL_120;
      }

      v90 = __OFADD__(v82, v94);
      v95 = v82 + v94;
      if (v90)
      {
        goto LABEL_123;
      }

      if (v95 >= v87)
      {
        v113 = (v29 + 32 + 16 * v31);
        v115 = *v113;
        v114 = v113[1];
        v90 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v90)
        {
          goto LABEL_127;
        }

        if (v82 < v116)
        {
          v31 = v77 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v145;
    if (v145 >= v27)
    {
      goto LABEL_103;
    }
  }

  v59 = (v30 + v130);
  if (__OFADD__(v30, v130))
  {
    goto LABEL_133;
  }

  if (v59 >= v58)
  {
    v59 = a3[1];
  }

  if (v59 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v59)
  {
    goto LABEL_52;
  }

  v131 = v29;
  v132 = v6;
  v60 = *a3;
  v61 = *(v144 + 72);
  v62 = *(v144 + 16);
  v63 = *a3 + v61 * (v31 - 1);
  v148 = -v61;
  v149 = v60;
  v64 = v30 - v31;
  v137 = v61;
  v65 = v60 + v31 * v61;
  v140 = v59;
LABEL_43:
  v145 = v31;
  v141 = v65;
  v142 = v64;
  v143 = v63;
  v67 = v63;
  while (1)
  {
    v62(v154, v65, v9);
    (v62)(v155, v67);
    v5 = sub_20C133A54();
    v69 = v68;
    if (v5 == sub_20C133A54() && v69 == v70)
    {

      v66 = *v153;
      (*v153)(v155, v9);
      v66(v154, v9);
LABEL_42:
      v31 = v145 + 1;
      v63 = v143 + v137;
      v64 = v142 - 1;
      v65 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v31 = v140;
        v6 = v132;
        a3 = v136;
        v29 = v131;
        v30 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_20C13DFF4();

    v71 = *v153;
    (*v153)(v155, v9);
    v71(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v72 = v150;
    v5 = v151;
    v73 = *v151;
    (*v151)(v150, v65, v9);
    swift_arrayInitWithTakeFrontToBack();
    v73(v67, v72, v9);
    v67 += v148;
    v65 += v148;
    if (__CFADD__(v64++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}

void sub_20C0646E8(unint64_t a1, char *a2, char *a3, char *a4)
{
  v70 = sub_20C133A74();
  v8 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v67 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  MEMORY[0x28223BE20](v12);
  v69 = &v58 - v13;
  MEMORY[0x28223BE20](v14);
  v68 = &v58 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_70;
  }

  v18 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_71;
  }

  v19 = &a2[-a1] / v17;
  v73 = a1;
  v72 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || &a2[v21] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = &a4[v21];
    if (v21 < 1)
    {
      v43 = &a4[v21];
    }

    else
    {
      v62 = a4;
      v63 = (v8 + 16);
      v61 = (v8 + 8);
      v41 = -v17;
      v42 = &a4[v21];
      v43 = v40;
      v64 = v41;
      while (2)
      {
        while (1)
        {
          v59 = v43;
          v44 = &a2[v41];
          v68 = &a2[v41];
          v65 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v73 = a2;
              v71 = v59;
              goto LABEL_68;
            }

            v46 = a3;
            v60 = v43;
            v47 = *v63;
            v69 = (v42 + v41);
            v48 = v70;
            (v47)(v66);
            (v47)(v67, v44, v48);
            v49 = sub_20C133A54();
            v51 = v50;
            if (v49 == sub_20C133A54() && v51 == v52)
            {
              v53 = 0;
            }

            else
            {
              v53 = sub_20C13DFF4();
            }

            v41 = v64;
            a3 = v64 + v46;
            v54 = *v61;
            v55 = v70;
            (*v61)(v67, v70);
            v54(v66, v55);
            if (v53)
            {
              break;
            }

            v56 = v69;
            v43 = v69;
            if (v46 < v42 || a3 >= v42)
            {
              swift_arrayInitWithTakeFrontToBack();
              v44 = v68;
            }

            else
            {
              v44 = v68;
              if (v46 != v42)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v42 = v43;
            v45 = v56 > v62;
            a2 = v65;
            if (!v45)
            {
              goto LABEL_66;
            }
          }

          if (v46 < v65 || a3 >= v65)
          {
            break;
          }

          a2 = v68;
          v57 = v62;
          v43 = v60;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v42 <= v57)
          {
            goto LABEL_66;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v43 = v60;
        if (v42 > v62)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v73 = a2;
    v71 = v43;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = &a4[v20];
    v71 = &a4[v20];
    if (v20 >= 1 && a2 < a3)
    {
      v23 = *(v8 + 16);
      v65 = v17;
      v66 = (v8 + 16);
      v63 = (v8 + 8);
      v64 = v23;
      do
      {
        v24 = a3;
        v25 = a2;
        v26 = a2;
        v27 = v70;
        v28 = v64;
        v64(v68, v26, v70);
        v28(v69, a4, v27);
        v29 = sub_20C133A54();
        v31 = v30;
        if (v29 == sub_20C133A54() && v31 == v32)
        {

          v33 = *v63;
          v34 = v70;
          (*v63)(v69, v70);
          v33(v68, v34);
        }

        else
        {
          v35 = sub_20C13DFF4();

          v36 = *v63;
          v37 = v70;
          (*v63)(v69, v70);
          v36(v68, v37);
          if (v35)
          {
            a2 = &v65[v25];
            a3 = v24;
            if (a1 < v25 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v39 = v65;
            goto LABEL_37;
          }
        }

        v38 = a4;
        v39 = v65;
        a4 = &v65[a4];
        a2 = v25;
        a3 = v24;
        if (a1 < v38 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v38)
        {
          swift_arrayInitWithTakeBackToFront();
          v72 = a4;
          goto LABEL_37;
        }

        v72 = a4;
LABEL_37:
        a1 += v39;
        v73 = a1;
      }

      while (a4 < v67 && a2 < a3);
    }
  }

LABEL_68:
  sub_20B6A0844(&v73, &v72, &v71);
}

uint64_t sub_20C064D84(uint64_t a1)
{
  v3 = *(sub_20C134EC4() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_20BC68E88(a1, v4, v5);
}

uint64_t EngagementPresentationCoordinator.allowsModalMessageDisplay.getter()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_modalContextProvider))
  {
    v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_modalContextProvider + 8);
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    swift_unknownObjectRetain();
    v8 = v7(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  sub_20C13B424();
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1B4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 67109120;
    *(v11 + 4) = v8 & 1;
    _os_log_impl(&dword_20B517000, v9, v10, "[IAM] Requesting modal message display: allowed=%{BOOL}d", v11, 8u);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return v8 & 1;
}

uint64_t EngagementPresentationCoordinator.contextProperty(withName:)@<X0>(_OWORD *a3@<X8>)
{
  v5 = sub_20C136624();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772070, &qword_20C18B8B8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  v12 = OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_engagementBannerRuleInfo;
  swift_beginAccess();
  sub_20C06550C(v3 + v12, v11);
  if ((*(v6 + 48))(v11, 1, v5))
  {
    result = sub_20C06557C(v11);
    *a3 = 0u;
    a3[1] = 0u;
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_20C06557C(v11);
    sub_20C136614();
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void __swiftcall EngagementPresentationCoordinator.viewControllerForModalPresentation()(UIViewController_optional *__return_ptr retstr)
{
  v2 = v1;
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1B4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20B517000, v7, v8, "[IAM] Preparing controller for IAM modal presentation", v9, 2u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_modalContextProvider))
  {
    v10 = *(v2 + OBJC_IVAR____TtC9SeymourUI33EngagementPresentationCoordinator_modalContextProvider + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 16);
    swift_unknownObjectRetain();
    v12(ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_20C06550C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772070, &qword_20C18B8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C06557C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772070, &qword_20C18B8B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id MarketingPurchaseHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_20C065618(void *a1, void *a2, uint64_t a3)
{
  v71 = a3;
  v5 = sub_20C13C4B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13C4F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BB84();
  v72 = *(v13 - 8);
  v73 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v20 = &v66 - v19;
  if (a2)
  {
    v21 = a2;
    sub_20C13B534();
    v22 = a2;
    v23 = sub_20C13BB74();
    v24 = sub_20C13D1D4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      swift_getErrorValue();
      v27 = MEMORY[0x20F2F5850](v75, v76);
      v29 = sub_20B51E694(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_20B517000, v23, v24, "Purchase failed with error: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v26, -1, -1);
      MEMORY[0x20F2F6A40](v25, -1, -1);
    }

    (*(v72 + 8))(v20, v73);
    sub_20C066764(a2);
    v30 = a2;
LABEL_5:

    return;
  }

  v67 = v12;
  v68 = v10;
  v69 = v8;
  v70 = v6;
  if (!a1)
  {
    sub_20C13B534();
    v47 = sub_20C13BB74();
    v48 = sub_20C13D1D4();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_20B517000, v47, v48, "No purchase result found", v49, 2u);
      MEMORY[0x20F2F6A40](v49, -1, -1);
    }

    (*(v72 + 8))(v15, v73);
    v50 = sub_20C138A74();
    sub_20C066CDC(&qword_27C767070, MEMORY[0x277D54128], MEMORY[0x277D54130]);
    v51 = swift_allocError();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D54110], v50);
    sub_20C066764(v51);
    v30 = v51;
    goto LABEL_5;
  }

  v31 = v18;
  v32 = a1;
  v33 = [v32 correlationID];
  if (v33)
  {
    v34 = v33;
    v35 = sub_20C13C954();
    v37 = v36;

    sub_20C13B534();

    v38 = sub_20C13BB74();
    v39 = sub_20C13D1F4();

    v40 = os_log_type_enabled(v38, v39);
    v66 = v9;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v35;
      v44 = v39;
      v45 = v42;
      aBlock[0] = v42;
      *v41 = 136446210;
      v46 = sub_20B51E694(v43, v37, aBlock);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_20B517000, v38, v44, "Successful purchase with correlation ID: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x20F2F6A40](v45, -1, -1);
      MEMORY[0x20F2F6A40](v41, -1, -1);
    }

    else
    {
    }

    (*(v72 + 8))(v31, v73);
    v56 = v68;
    v57 = v71;
    sub_20B5E2E18();
    v58 = sub_20C13D374();
    v59 = swift_allocObject();
    v60 = v74;
    v59[2] = v74;
    v59[3] = v32;
    v59[4] = v57;
    aBlock[4] = sub_20C066D6C;
    aBlock[5] = v59;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_16_2;
    v61 = _Block_copy(aBlock);

    v62 = v32;
    v63 = v60;

    v64 = v67;
    sub_20C13C4D4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_20C066CDC(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
    sub_20B682EA8();
    v65 = v69;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v64, v65, v61);
    _Block_release(v61);

    (*(v70 + 8))(v65, v5);
    (*(v56 + 8))(v64, v66);
  }

  else
  {
    v53 = sub_20C138A74();
    sub_20C066CDC(&qword_27C767070, MEMORY[0x277D54128], MEMORY[0x277D54130]);
    v54 = swift_allocError();
    (*(*(v53 - 8) + 104))(v55, *MEMORY[0x277D54108], v53);
    sub_20C066764(v54);
  }
}

void sub_20C065E48(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v61 = a3;
  v63 = a1;
  v6 = sub_20C13C4B4();
  v62 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13C4F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BB84();
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v55 - v20;
  if (a2)
  {
    v22 = a2;
    sub_20C13B534();
    v23 = a2;
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      swift_getErrorValue();
      v28 = MEMORY[0x20F2F5850](v66, v67);
      v30 = sub_20B51E694(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_20B517000, v24, v25, "Carrier link failed with error: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x20F2F6A40](v27, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    (*(v64 + 8))(v21, v65);
    sub_20C066764(a2);
    v31 = a2;
LABEL_5:

    return;
  }

  v56 = v12;
  v57 = v10;
  v58 = v8;
  v59 = v9;
  v60 = v6;
  v32 = v63;
  if (!v63)
  {
    sub_20C13B534();
    v49 = sub_20C13BB74();
    v50 = sub_20C13D1D4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_20B517000, v49, v50, "No carrier link result found", v51, 2u);
      MEMORY[0x20F2F6A40](v51, -1, -1);
    }

    (*(v64 + 8))(v15, v65);
    v52 = sub_20C138A74();
    sub_20C066CDC(&qword_27C767070, MEMORY[0x277D54128], MEMORY[0x277D54130]);
    v53 = swift_allocError();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D54120], v52);
    sub_20C066764(v53);
    v31 = v53;
    goto LABEL_5;
  }

  v33 = v63;
  sub_20C13B534();
  v34 = v33;
  v35 = sub_20C13BB74();
  v36 = sub_20C13D1F4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v55 = v4;
    v38 = v37;
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v34;
    *v39 = v32;
    v40 = v34;
    _os_log_impl(&dword_20B517000, v35, v36, "Successful carrier link with result: %@", v38, 0xCu);
    sub_20B64F5CC(v39);
    MEMORY[0x20F2F6A40](v39, -1, -1);
    v4 = v55;
    MEMORY[0x20F2F6A40](v38, -1, -1);
  }

  (*(v64 + 8))(v18, v65);
  sub_20B5E2E18();
  v41 = sub_20C13D374();
  v42 = swift_allocObject();
  v42[2] = v4;
  v42[3] = v34;
  v42[4] = v61;
  aBlock[4] = sub_20C066CB4;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_10_3;
  v43 = _Block_copy(aBlock);

  v44 = v34;
  v45 = v4;

  v46 = v56;
  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20C066CDC(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  v47 = v58;
  v48 = v60;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v46, v47, v43);
  _Block_release(v43);

  (*(v62 + 8))(v47, v48);
  (*(v57 + 8))(v46, v59);
}

uint64_t sub_20C06654C(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_20C138FB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_20C139454();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18[1] = *(v15 + 8);
    v18[0] = swift_getObjectType();
    *v10 = a2;
    (*(v8 + 104))(v10, *a4, v7);

    v17 = a2;
    sub_20C139434();
    sub_20C066CDC(&unk_281103B10, MEMORY[0x277D543B0], MEMORY[0x277D543A8]);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_20C066764(void *a1)
{
  v3 = sub_20C13C4B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13C4F4();
  v7 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5E2E18();
  v10 = sub_20C13D374();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_20C066CAC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_177;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20C066CDC(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_20C066A24(uint64_t a1, void *a2)
{
  v3 = sub_20C138FA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v8 = a2;
    sub_20C138F94();
    sub_20C066CDC(&qword_27C769A40, MEMORY[0x277D54200], MEMORY[0x277D541F8]);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id MarketingPurchaseHandler.init()()
{
  *&v0[OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingPurchaseHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MarketingPurchaseHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingPurchaseHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20C066CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

char *sub_20C066DA4(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_imageView;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 systemGrayColor];
  [v12 setBackgroundColor_];

  v14 = [v12 layer];
  [v14 setCornerRadius_];

  [v12 setClipsToBounds_];
  [v12 setClipsToBounds_];

  *&v4[v9] = v12;
  v15 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v17 = objc_opt_self();
  v18 = [v17 preferredFontForTextStyle_];
  [v16 setFont_];

  v19 = [v11 whiteColor];
  [v16 setTextColor_];

  [v16 setLineBreakMode_];
  *&v4[v15] = v16;
  v20 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_detailLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v22 = [v17 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v11 systemGrayColor];
  [v21 setTextColor_];

  *&v4[v20] = v21;
  v67.receiver = v4;
  v67.super_class = type metadata accessor for TVSummaryHeaderView();
  v24 = objc_msgSendSuper2(&v67, sel_initWithFrame_, a1, a2, a3, a4);
  v25 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_imageView;
  v26 = *&v24[OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_imageView];
  v27 = v24;
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = *&v24[v25];
  v29 = v27;
  [v29 addSubview_];
  v66 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20C150050;
  v31 = [*&v24[v25] widthAnchor];
  v32 = [v31 constraintEqualToConstant_];

  *(v30 + 32) = v32;
  v33 = [*&v24[v25] heightAnchor];
  v34 = [v33 constraintEqualToConstant_];

  *(v30 + 40) = v34;
  v35 = [*&v24[v25] leadingAnchor];
  v36 = [v29 leadingAnchor];

  v37 = [v35 constraintEqualToAnchor_];
  *(v30 + 48) = v37;
  v38 = [*&v24[v25] topAnchor];
  v39 = [v29 topAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  *(v30 + 56) = v40;
  v41 = [*&v24[v25] bottomAnchor];
  v42 = [v29 bottomAnchor];

  v43 = [v41 constraintEqualToAnchor_];
  *(v30 + 64) = v43;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v44 = sub_20C13CC54();

  [v66 activateConstraints_];

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20C151490;
  v46 = *&v29[OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_titleLabel];
  *(v45 + 32) = v46;
  v47 = *&v29[OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_detailLabel];
  *(v45 + 40) = v47;
  v48 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v49 = v46;
  v50 = v47;
  v51 = sub_20C13CC54();

  v52 = [v48 initWithArrangedSubviews_];

  [v52 setAxis_];
  [v52 setSpacing_];
  v53 = v52;
  [v53 setTranslatesAutoresizingMaskIntoConstraints_];
  [v29 addSubview_];
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_20C150040;
  v55 = [v53 leadingAnchor];
  v56 = [*&v24[v25] trailingAnchor];
  v57 = [v55 constraintEqualToAnchor:v56 constant:30.0];

  *(v54 + 32) = v57;
  v58 = [v53 centerYAnchor];
  v59 = [*&v24[v25] centerYAnchor];
  v60 = [v58 constraintEqualToAnchor_];

  *(v54 + 40) = v60;
  v61 = [v53 trailingAnchor];

  v62 = [v29 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  *(v54 + 48) = v63;
  v64 = sub_20C13CC54();

  [v66 activateConstraints_];

  return v29;
}

id sub_20C0675B4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TVSummaryHeaderView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20C067668()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_imageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 systemGrayColor];
  [v4 setBackgroundColor_];

  v6 = [v4 layer];
  [v6 setCornerRadius_];

  [v4 setClipsToBounds_];
  [v4 setClipsToBounds_];

  *(v0 + v1) = v4;
  v7 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle_];
  [v8 setFont_];

  v11 = [v3 whiteColor];
  [v8 setTextColor_];

  [v8 setLineBreakMode_];
  *(v0 + v7) = v8;
  v12 = OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_detailLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v14 = [v9 preferredFontForTextStyle_];
  [v13 setFont_];

  v15 = [v3 systemGrayColor];
  [v13 setTextColor_];

  *(v0 + v12) = v13;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20C0678EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764480, &unk_20C15D490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v13 = *(v12 - 8);
  v32 = v12;
  v33 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
  swift_beginAccess();
  *(v3 + v16) = a2;

  v17 = sub_20C1365A4();
  sub_20C068C38(v17, v18, v11);

  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  v21 = v31;
  *(v20 + 16) = v19;
  *(v20 + 24) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20C069FA0;
  *(v22 + 24) = v20;
  (*(v6 + 16))(v8, v11, v5);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = (v7 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v23, v8, v5);
  v26 = (v25 + v24);
  *v26 = sub_20B7F7ED0;
  v26[1] = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  sub_20C137C94();
  (*(v6 + 8))(v11, v5);
  v27 = v32;
  v28 = sub_20C137CB4();
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v28(sub_20B52347C, v29);

  return (*(v33 + 8))(v15, v27);
}

void sub_20C067C88(uint64_t a1@<X0>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20C067D1C(a1, a3);
  }

  *a4 = Strong == 0;
}

void sub_20C067D1C(uint64_t a1, uint64_t a2)
{
  v47 = sub_20C134E04();
  v4 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_20C1333E4();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for WorkoutPlanPreference(0);
  v8 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  v38 = v2;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferenceType))
  {
    v16 = sub_20C135494();
  }

  else
  {
    v16 = sub_20C1354F4();
  }

  v17 = v16;
  v50 = *(a2 + 16);
  if (v50)
  {
    v18 = 0;
    v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v49 = a2 + v39;
    v52 = *(v8 + 72);
    v42 = (v6 + 8);
    v43 = (v6 + 32);
    v41 = (v4 + 32);
    v40 = (v4 + 8);
    v19 = v16 + 56;
    v20 = MEMORY[0x277D84F90];
    do
    {
      sub_20B8DCE6C(v49 + v52 * v18, v15);
      sub_20B8DCE6C(v15, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v46;
        v22 = v47;
        (*v41)(v46, v12, v47);
        v23 = sub_20C134DD4();
        v25 = v24;
        v26 = v40;
      }

      else
      {
        v21 = v44;
        v22 = v45;
        (*v43)(v44, v12, v45);
        v23 = sub_20C1333B4();
        v25 = v27;
        v26 = v42;
      }

      (*v26)(v21, v22);
      if (*(v17 + 16) && (sub_20C13E164(), sub_20C13CA64(), v28 = sub_20C13E1B4(), v29 = -1 << *(v17 + 32), v30 = v28 & ~v29, ((*(v19 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (1)
        {
          v32 = (*(v17 + 48) + 16 * v30);
          v33 = *v32 == v23 && v32[1] == v25;
          if (v33 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v19 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        sub_20BEFB0C0(v15, v48);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5EA28(0, *(v20 + 16) + 1, 1);
          v20 = v54;
        }

        v36 = *(v20 + 16);
        v35 = *(v20 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_20BB5EA28((v35 > 1), v36 + 1, 1);
          v20 = v54;
        }

        *(v20 + 16) = v36 + 1;
        sub_20BEFB0C0(v48, v20 + v39 + v36 * v52);
      }

      else
      {
LABEL_6:

        sub_20C069BA0(v15, type metadata accessor for WorkoutPlanPreference);
      }

      ++v18;
    }

    while (v18 != v50);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

  v53 = v20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770370, &qword_20C183290);
  sub_20C069F3C();
  v37 = sub_20C13CBF4();

  *(v38 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferences) = v37;

  sub_20C0684A4();
}

uint64_t sub_20C06826C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_20C134E04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C1333E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WorkoutPlanPreference(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8DCE6C(a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v14, v4);
    v15 = sub_20C134DF4();
    v17 = v16;
    result = (*(v5 + 8))(v7, v4);
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    v15 = sub_20C1333D4();
    v17 = v19;
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v15;
  a2[1] = v17;
  return result;
}

void sub_20C0684A4()
{
  v1 = sub_20C13C554();
  v76 = *(v1 - 8);
  v77 = v1;
  MEMORY[0x28223BE20](v1);
  v75 = (&v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = sub_20C134E04();
  v3 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_20C1333E4();
  v5 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for WorkoutPlanPreference(0);
  v7 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v75 - v10;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferences);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
    v15 = v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v92 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferences);

    v90 = v14;
    swift_beginAccess();
    v89 = *(v7 + 72);
    v80 = (v5 + 8);
    v81 = (v5 + 32);
    v78 = (v3 + 8);
    v79 = (v3 + 32);
    v16 = MEMORY[0x277D84F90];
    v17 = v0;
    v18 = v87;
    v19 = v11;
    v82 = v17;
    while (1)
    {
      v93 = v13;
      sub_20B8DCE6C(v15, v19);
      v21 = *(v17 + v90);

      v22 = sub_20B8D7478(v19, v21);

      sub_20B8DCE6C(v19, v18);
      v23 = v19;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v25 = v85;
      v24 = v86;
      (*v79)(v85, v18, v86);
      v26 = sub_20C069C00(v25, v22 & 1, *(v92 + 16));
      (*v78)(v25, v24);
      sub_20C069BA0(v23, type metadata accessor for WorkoutPlanPreference);
      v19 = v23;
      if ((~v26 & 0xF000000000000007) != 0)
      {
        goto LABEL_9;
      }

      v20 = v93;
LABEL_4:
      v15 += v89;
      v13 = v20 - 1;
      if (!v13)
      {
        v39 = v16;

        goto LABEL_16;
      }
    }

    v27 = v83;
    v28 = v18;
    v29 = v84;
    (*v81)(v83, v28, v84);
    v88 = v16;
    v30 = *(v92 + 16);
    v31 = swift_allocObject();
    v32 = sub_20C1333D4();
    v34 = v33;
    v35 = v29;
    v18 = v87;
    (*v80)(v27, v35);
    sub_20C069BA0(v23, type metadata accessor for WorkoutPlanPreference);
    *(v31 + 16) = v32;
    *(v31 + 24) = v34;
    *(v31 + 32) = v22 & 1;
    *(v31 + 40) = v30;
    v17 = v82;
    v16 = v88;
    v26 = v31 | 0x5000000000000000;
    v19 = v23;
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v93;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_20BC05D3C(0, *(v16 + 2) + 1, 1, v16);
    }

    v38 = *(v16 + 2);
    v37 = *(v16 + 3);
    if (v38 >= v37 >> 1)
    {
      v16 = sub_20BC05D3C((v37 > 1), v38 + 1, 1, v16);
    }

    *(v16 + 2) = v38 + 1;
    *&v16[8 * v38 + 32] = v26;
    goto LABEL_4;
  }

  v39 = MEMORY[0x277D84F90];
  v17 = v0;
LABEL_16:
  v40 = sub_20C1365D4();
  v42 = v41;
  *&v105 = v40;
  *(&v105 + 1) = v41;
  v44 = v43 & 1;
  LOBYTE(v106) = v43 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F68, &unk_20C182C50);
  sub_20C133BD4();
  sub_20B583F4C(v40, v42, v44);
  if (v94 == 14)
  {
    v45 = 0;
    v46 = 2;
  }

  else
  {
    v47 = sub_20B6DBC10(0, v94);
    if (v48)
    {
      v45 = v47;
    }

    else
    {
      v45 = 0;
    }

    if (v48)
    {
      v46 = v48;
    }

    else
    {
      v46 = 2;
    }
  }

  v49 = sub_20C1365E4();
  v94 = 0uLL;
  LOBYTE(v95) = 1;
  *(&v95 + 1) = 0;
  *&v96 = 0;
  WORD4(v96) = 128;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  LOBYTE(v100) = 0;
  *(&v100 + 1) = v39;
  v101 = MEMORY[0x277D84F90];
  *&v102 = 0;
  *(&v102 + 1) = v49;
  *&v103 = v50;
  *(&v103 + 1) = v45;
  v104 = v46;
  nullsub_1();
  v51 = v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row;
  v52 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 144);
  v113 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 128);
  v114 = v52;
  v115 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 160);
  v53 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 80);
  v109 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 64);
  v110 = v53;
  v54 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 112);
  v111 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 96);
  v112 = v54;
  v55 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 16);
  v105 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row);
  v106 = v55;
  v56 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 48);
  v107 = *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 32);
  v108 = v56;
  v57 = v103;
  *(v51 + 128) = v102;
  *(v51 + 144) = v57;
  *(v51 + 160) = v104;
  v58 = v99;
  *(v51 + 64) = v98;
  *(v51 + 80) = v58;
  v59 = v101;
  *(v51 + 96) = v100;
  *(v51 + 112) = v59;
  v60 = v95;
  *v51 = v94;
  *(v51 + 16) = v60;
  v61 = v97;
  *(v51 + 32) = v96;
  *(v51 + 48) = v61;
  sub_20B520158(&v105, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v63 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61D2A8(v17, Strong);
      if (v65)
      {
        v67 = v64;
        v68 = v65;
        v69 = v66;
        sub_20B5E2E18();
        v70 = sub_20C13D374();
        v72 = v75;
        v71 = v76;
        *v75 = v70;
        v73 = v77;
        (*(v71 + 104))(v72, *MEMORY[0x277D85200], v77);
        v74 = sub_20C13C584();
        (*(v71 + 8))(v72, v73);
        if ((v74 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B620AD4(v67, v68, v69, v17, 0, v63);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20C068C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v15 = a1;
  v19 = a3;
  v20 = sub_20C133E24();
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769C30, &unk_20C16A140);
  v5 = *(sub_20C135C84() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v14 = xmmword_20C14F980;
  *(v7 + 16) = xmmword_20C14F980;
  v8 = v7 + v6;
  *v8 = xmmword_20C15AF00;
  *(v8 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  sub_20BE8C0B0(v7);
  swift_setDeallocating();
  v9 = MEMORY[0x277D52060];
  sub_20C069BA0(v7 + v6, MEMORY[0x277D52060]);
  swift_deallocClassInstance();
  v10 = swift_allocObject();
  *(v10 + 16) = v14;
  v11 = (v10 + v6);
  v12 = v16;
  *v11 = v15;
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();

  sub_20BE8C0B0(v10);
  swift_setDeallocating();
  sub_20C069BA0(v10 + v6, v9);
  swift_deallocClassInstance();
  sub_20C133DE4();
  __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_catalogClient), *(v17 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_catalogClient + 24));
  sub_20C139F84();
  return (*(v18 + 8))(v4, v20);
}

uint64_t sub_20C068EDC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v41 - v4;
  v5 = sub_20C134E04();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1333E4();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C1352E4();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for WorkoutPlanPreference(0);
  MEMORY[0x28223BE20](v48);
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v41 = &v41 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C772198, &qword_20C18BA08);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v41 - v18;
  v20 = sub_20C134F24();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
  swift_beginAccess();
  v25 = v1;
  v26 = *(v1 + v24);

  v27 = a1;
  LOBYTE(a1) = sub_20B8D7478(a1, v26);

  v50 = v21;
  v51 = v20;
  v28 = *(v21 + 104);
  if (a1)
  {
    v28(v23, *MEMORY[0x277D51440], v20);
    swift_beginAccess();
    v29 = v27;
    sub_20B6CA3A0(v27, v19);
    sub_20B520158(v19, &qword_27C772198, &qword_20C18BA08);
  }

  else
  {
    v28(v23, *MEMORY[0x277D51450], v20);
    v29 = v27;
    v30 = v41;
    sub_20B8DCE6C(v27, v41);
    swift_beginAccess();
    sub_20B701054(v16, v30);
    sub_20C069BA0(v16, type metadata accessor for WorkoutPlanPreference);
  }

  swift_endAccess();
  v56 = v25;
  v32 = v52;
  v31 = v53;
  (*(v52 + 104))(v55, *MEMORY[0x277D51768], v53);
  v33 = v49;
  sub_20B8DCE6C(v29, v49);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = v45;
    v35 = v46;
    v36 = v47;
    (*(v46 + 32))(v45, v33, v47);
    sub_20C134DD4();
  }

  else
  {
    v34 = v42;
    v35 = v43;
    v36 = v44;
    (*(v43 + 32))(v42, v33, v44);
    sub_20C1333B4();
  }

  (*(v35 + 8))(v34, v36);
  v37 = sub_20C135ED4();
  v38 = v54;
  (*(*(v37 - 8) + 56))(v54, 1, 1, v37);
  type metadata accessor for WorkoutPlanPreferencePickerShelf(0);
  sub_20C069B48();
  v39 = v55;
  sub_20C138D94();

  sub_20B520158(v38, &unk_27C7621D0, &unk_20C14D9B0);
  (*(v32 + 8))(v39, v31);
  swift_getObjectType();
  sub_20BAC91C4();
  sub_20C13A764();
  sub_20C0684A4();
  return (*(v50 + 8))(v23, v51);
}

uint64_t sub_20C06956C()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 144);
  v13[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 128);
  v13[9] = v3;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 80);
  v13[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 64);
  v13[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 112);
  v13[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 96);
  v13[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 16);
  v13[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row);
  v13[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 48);
  v13[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 32);
  v13[3] = v7;
  sub_20B520158(v13, &qword_27C762340, &unk_20C150290);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_catalogClient));
  v8 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_metricPage;
  v9 = sub_20C1333A4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_modalityReference;
  v11 = sub_20C1365F4();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  return v0;
}

uint64_t sub_20C0696F0()
{
  sub_20C06956C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanPreferencePickerShelf(uint64_t a1)
{
  result = qword_27C772188;
  if (!qword_27C772188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20C06979C(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = sub_20C1333A4();
    if (v3 <= 0x3F)
    {
      result = sub_20C1365F4();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_20C0698E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20C069960@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

void sub_20C069A0C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanPreference(0) - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferences);
    if (*(v8 + 16) > a2)
    {
      sub_20B8DCE6C(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * a2, &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_20C068EDC(v7);
      sub_20C069BA0(v7, type metadata accessor for WorkoutPlanPreference);
      return;
    }
  }

  __break(1u);
}

unint64_t sub_20C069B48()
{
  result = qword_27C7721A0;
  if (!qword_27C7721A0)
  {
    type metadata accessor for WorkoutPlanPreferencePickerShelf(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7721A0);
  }

  return result;
}

uint64_t sub_20C069BA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C069C00(uint64_t a1, char a2, uint64_t a3)
{
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_20C137C24();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C134E04();
  sub_20C138D44();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_20B520158(v11, &unk_27C766680, &unk_20C14F920);
    sub_20C13B4A4();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1D4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[WorkoutPlanPreferencePickerShelf] failed to find artwork for trainer", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    return 0xF000000000000007;
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681A0, &qword_20C165290);
    v21 = swift_allocBox();
    v31 = a3;
    v32 = v21;
    v23 = v22;
    v24 = (v22 + v20[12]);
    v25 = v20[16];
    v26 = v20[20];
    (*(v13 + 16))(v22, v15, v12);
    v27 = sub_20C134DF4();
    v29 = v28;
    (*(v13 + 8))(v15, v12);
    *v24 = v27;
    v24[1] = v29;
    *(v23 + v25) = a2 & 1;
    v30 = v32;
    *(v23 + v26) = v31;
    return v30 | 0x7000000000000005;
  }
}

unint64_t sub_20C069F3C()
{
  result = qword_27C7721A8;
  if (!qword_27C7721A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C770370, &qword_20C183290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7721A8);
  }

  return result;
}

uint64_t WorkoutPlanCreationInterceptor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t WorkoutPlanCreationInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for NavigationRequest(0);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = v4;
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764880, &unk_20C157820);
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  MEMORY[0x28223BE20](v6);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v54 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  v55 = &v46 - v14;
  v15 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C13BB84();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v19 + 8))(v21, v18);
  sub_20B77FEA0(a1, v17, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 21)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = "SeymourUI/WorkoutPlanCreationInterceptor.swift";
    *(v22 + 24) = 46;
    *(v22 + 32) = 2;
    *(v22 + 40) = 30;
    *(v22 + 48) = &unk_20C18BA48;
    *(v22 + 56) = v49;
    sub_20C133954();

    v48 = v10;
    sub_20C137C94();
    v49 = type metadata accessor for NavigationRequest;
    v47 = v5;
    sub_20B77FEA0(a1, v5, type metadata accessor for NavigationRequest);
    v23 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v24 = swift_allocObject();
    v58 = type metadata accessor for NavigationRequest;
    sub_20B77FF08(v5, v24 + v23, type metadata accessor for NavigationRequest);
    v26 = v52;
    v25 = v53;
    v27 = v50;
    (*(v52 + 16))(v50, v10, v53);
    v28 = *(v26 + 80);
    v46 = a1;
    v29 = (v28 + 16) & ~v28;
    v30 = (v7 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v26 + 32))(v31 + v29, v27, v25);
    v32 = (v31 + v30);
    *v32 = sub_20C06B554;
    v32[1] = v24;
    v33 = v55;
    sub_20C137C94();
    (*(v26 + 8))(v48, v25);
    v34 = v47;
    sub_20B77FEA0(v46, v47, v49);
    v35 = swift_allocObject();
    sub_20B77FF08(v34, v35 + v23, v58);
    v37 = v56;
    v36 = v57;
    v38 = v54;
    (*(v56 + 16))(v54, v33, v57);
    v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v40 = (v51 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    (*(v37 + 32))(v41 + v39, v38, v36);
    v42 = (v41 + v40);
    *v42 = sub_20C06B5FC;
    v42[1] = v35;
    sub_20C137C94();
    return (*(v37 + 8))(v33, v36);
  }

  else
  {
    sub_20B77FEA0(a1, v5, type metadata accessor for NavigationRequest);
    v44 = (*(v58 + 80) + 16) & ~*(v58 + 80);
    v45 = swift_allocObject();
    sub_20B77FF08(v5, v45 + v44, type metadata accessor for NavigationRequest);
    sub_20C137CA4();
    return sub_20B77FF74(v17, type metadata accessor for NavigationResource);
  }
}

uint64_t sub_20C06A714@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v90 = a1;
  v83 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = v2;
  v80 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v81 = &v66 - v4;
  v5 = type metadata accessor for NavigationSource(0);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for NavigationIntent(0);
  v89 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v85 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NavigationResource(0);
  v69 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v75 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800, &unk_20C15EC70);
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E40, &unk_20C157A60);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v66 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767810, &unk_20C169F00);
  MEMORY[0x28223BE20](v19 - 8);
  v68 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v66 - v22;
  v24 = type metadata accessor for NavigationRequest(0);
  v71 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v72 = v25;
  v73 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v76 = &v66 - v27;
  v28 = sub_20C13BB84();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v66 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  v32 = sub_20C13BB74();
  v33 = sub_20C13D1F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v67 = v24;
    v35 = v8;
    v36 = v34;
    *v34 = 0;
    _os_log_impl(&dword_20B517000, v32, v33, "Active plan, navigating to detail instead of creation", v34, 2u);
    v37 = v36;
    v8 = v35;
    v24 = v67;
    MEMORY[0x20F2F6A40](v37, -1, -1);
  }

  (*(v29 + 8))(v31, v28);
  swift_storeEnumTagMultiPayload();
  v38 = v69;
  (*(v69 + 56))(v23, 0, 1, v8);
  v39 = v86;
  *v86 = 1;
  v40 = v70;
  swift_storeEnumTagMultiPayload();
  (*(v89 + 56))(v39, 0, 1, v40);
  v42 = v77;
  v41 = v78;
  (*(v77 + 56))(v87, 1, 1, v78);
  v43 = v23;
  v44 = v68;
  sub_20B5DF134(v43, v68, &unk_27C767810, &unk_20C169F00);
  v45 = *(v38 + 48);
  if (v45(v44, 1, v8) == 1)
  {
    v46 = v75;
    sub_20B77FEA0(v90, v75, type metadata accessor for NavigationResource);
    v47 = v45(v44, 1, v8);
    v48 = v74;
    if (v47 != 1)
    {
      sub_20B520158(v44, &unk_27C767810, &unk_20C169F00);
    }
  }

  else
  {
    v46 = v75;
    sub_20B77FF08(v44, v75, type metadata accessor for NavigationResource);
    v48 = v74;
  }

  sub_20B5DF134(v86, v16, &qword_27C764E40, &unk_20C157A60);
  v49 = *(v89 + 48);
  if (v49(v16, 1, v40) == 1)
  {
    sub_20B77FEA0(v90 + v24[5], v85, type metadata accessor for NavigationIntent);
    if (v49(v16, 1, v40) != 1)
    {
      sub_20B520158(v16, &qword_27C764E40, &unk_20C157A60);
    }
  }

  else
  {
    sub_20B77FF08(v16, v85, type metadata accessor for NavigationIntent);
  }

  sub_20B5DF134(v87, v48, &unk_27C767800, &unk_20C15EC70);
  v50 = *(v42 + 48);
  if (v50(v48, 1, v41) == 1)
  {
    sub_20B77FEA0(v90 + v24[6], v88, type metadata accessor for NavigationSource);
    if (v50(v48, 1, v41) != 1)
    {
      sub_20B520158(v48, &unk_27C767800, &unk_20C15EC70);
    }
  }

  else
  {
    sub_20B77FF08(v48, v88, type metadata accessor for NavigationSource);
  }

  v51 = *(v90 + v24[8]);
  v52 = *(v90 + v24[9]);
  v53 = v76;
  sub_20B77FF08(v46, v76, type metadata accessor for NavigationResource);
  sub_20B77FF08(v85, v53 + v24[5], type metadata accessor for NavigationIntent);
  sub_20B77FF08(v88, v53 + v24[6], type metadata accessor for NavigationSource);
  *(v53 + v24[7]) = 0;
  *(v53 + v24[8]) = v51;
  *(v53 + v24[9]) = v52;
  v54 = v73;
  sub_20B77FEA0(v53, v73, type metadata accessor for NavigationRequest);
  v55 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v56 = swift_allocObject();
  sub_20B77FF08(v54, v56 + v55, type metadata accessor for NavigationRequest);
  v57 = v81;
  sub_20C137CA4();
  sub_20B5E2E18();
  v58 = sub_20C13D374();
  v59 = v82;
  v60 = v80;
  v61 = v84;
  (*(v82 + 16))(v80, v57, v84);
  v62 = (*(v59 + 80) + 16) & ~*(v59 + 80);
  v63 = (v79 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = swift_allocObject();
  (*(v59 + 32))(v64 + v62, v60, v61);
  *(v64 + v63) = v58;
  sub_20C137C94();
  (*(v59 + 8))(v57, v61);
  return sub_20B77FF74(v53, type metadata accessor for NavigationRequest);
}

uint64_t sub_20C06B1C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = type metadata accessor for NavigationRequest(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  sub_20B77FEA0(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_20B77FF08(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for NavigationRequest);
  sub_20C137CA4();
  sub_20B5E2E18();
  v15 = sub_20C13D374();
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  *(v18 + v17) = v15;
  sub_20C137C94();
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_20C06B4A4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20B772A2C(a1, v1);
}

uint64_t sub_20C06B554@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NavigationRequest(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20C06A714(v4, a1);
}

uint64_t sub_20C06B5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NavigationRequest(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20C06B1C8(v4, a1);
}

uint64_t sub_20C06B6A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

unint64_t sub_20C06B76C(uint64_t a1, uint64_t a2)
{
  result = sub_20C06B794(a1, a2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20C06B794(uint64_t a1, uint64_t a2)
{
  result = qword_27C7721B0;
  if (!qword_27C7721B0)
  {
    type metadata accessor for WorkoutPlanCreationInterceptor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7721B0);
  }

  return result;
}

uint64_t objectdestroyTm_18()
{
  v1 = type metadata accessor for NavigationRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v9 = sub_20C132C14();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v7 = &unk_27C763FC0;
      v8 = &unk_20C155B00;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v0 + v3, v17);
      v7 = &qword_27C7710E0;
      v8 = &unk_20C15F290;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
      v8 = &unk_20C155B10;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v5 + v18, v19);
      break;
    case 9u:
      v10 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v0 + v3, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v0 + v3, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration(0);
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v5 + v15, v16);
        }

        else
        {
        }

        v36 = v12[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v12[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v12[11] + 8) >= 0xC)
        {
        }

        v42 = v12[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v20 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
      v24 = sub_20C1344C4();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      break;
    case 4:

      break;
    case 3:
      v22 = sub_20C139144();
      (*(*(v22 - 8) + 8))(v20, v22);
      break;
  }

  v26 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 1)
  {
    v35 = sub_20C135024();
    (*(*(v35 - 8) + 8))(v26, v35);
  }

  else if (!v27)
  {
    v46 = v2;
    v28 = (v2 + 16) & ~v2;
    v29 = v0;
    v30 = v4;
    v31 = sub_20C132C14();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v26, v31);
    v34 = *(type metadata accessor for NavigationSharingURLInfo(0) + 20);
    if (!(*(v32 + 48))(&v26[v34], 1, v31))
    {
      v33(&v26[v34], v31);
    }

    v4 = v30;
    v0 = v29;
    v3 = v28;
    v2 = v46;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_20C06BFF4()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79D308 = v2;
  unk_27C79D310 = v4;
}

void sub_20C06C0C0()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C79D318 = v2;
  unk_27C79D320 = v4;
}

double sub_20C06C18C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_20C134104();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_configuration;
  swift_beginAccess();
  sub_20BBAED30(v8, v1 + v11);
  swift_endAccess();
  sub_20C13CDC4();
  v12 = sub_20C13CDF4();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_20C13CDA4();

  v14 = sub_20C13CD94();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  v15[2] = v14;
  v15[3] = v16;
  v15[4] = v13;

  sub_20B6380FC(0, 0, v5, &unk_20C18BC98, v15);

  return result;
}

uint64_t sub_20C06C3E4(uint64_t a1)
{
  v43 = sub_20C137294();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C135C54();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_20BB5EB50(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_20C13DAA4();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_20C137284();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_20BB5EB50((v21 > 1), v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_20B526EA4(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_20B526EA4(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_20C06C7A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639B0, &unk_20C16F050);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v27 - v4);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v27 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_20BB5EB10(0, v6, 0);
  v7 = v35;
  v8 = a1 + 56;
  result = sub_20C13DAA4();
  v10 = result;
  v11 = 0;
  v28 = a1 + 64;
  v29 = v6;
  v30 = a1 + 56;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_21;
    }

    v14 = *(a1 + 36);
    v33 = v11;
    v34 = v14;
    v15 = *(a1 + 48);
    v16 = sub_20C134D54();
    (*(*(v16 - 8) + 16))(v5 + *(v32 + 48), v15 + *(*(v16 - 8) + 72) * v10, v16);
    *v5 = sub_20C134D24();
    v5[1] = v17;
    v35 = v7;
    v19 = *(v7 + 16);
    v18 = *(v7 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_20BB5EB10((v18 > 1), v19 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v19 + 1;
    result = sub_20C073D3C(v5, v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v19);
    v12 = 1 << *(a1 + 32);
    if (v10 >= v12)
    {
      goto LABEL_22;
    }

    v8 = v30;
    v20 = *(v30 + 8 * v13);
    if ((v20 & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v21 = v20 & (-2 << (v10 & 0x3F));
    if (v21)
    {
      v12 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v13 << 6;
      v23 = v13 + 1;
      v24 = (v28 + 8 * v13);
      while (v23 < (v12 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_20B526EA4(v10, v34, 0);
          v12 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v10, v34, 0);
    }

LABEL_4:
    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v29)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20C06CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a4;
  v8 = sub_20C133134();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v12 = v4 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_row;
  sub_20B5D8060(v39);
  v13 = v39[9];
  *(v12 + 128) = v39[8];
  *(v12 + 144) = v13;
  *(v12 + 160) = v40;
  v14 = v39[5];
  *(v12 + 64) = v39[4];
  *(v12 + 80) = v14;
  v15 = v39[7];
  *(v12 + 96) = v39[6];
  *(v12 + 112) = v15;
  v16 = v39[1];
  *v12 = v39[0];
  *(v12 + 16) = v16;
  v17 = v39[3];
  *(v12 + 32) = v39[2];
  *(v12 + 48) = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_configuration;
  v19 = sub_20C134104();
  (*(*(v19 - 8) + 56))(v5 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_descriptions;
  v21 = MEMORY[0x277D84F90];
  *(v5 + v20) = sub_20B6B0904(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_isSubscribed) = 0;
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics) = MEMORY[0x277D84FA0];
  v22 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlan;
  v36 = sub_20C133954();
  v34 = *(v36 - 8);
  v23 = v5 + v22;
  v24 = a2;
  (*(v34 + 16))(v23, a2, v36);
  v25 = OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_offset;
  v35 = sub_20C135214();
  v26 = *(v35 - 8);
  (*(v26 + 16))(v5 + v25, a3, v35);
  (*(v9 + 104))(v11, *MEMORY[0x277CC9968], v8);
  v27 = a3;
  v28 = v24;
  v29 = sub_20C133824();
  (*(v9 + 8))(v11, v8);
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_itemReferences) = v29;
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_resumableWorkoutSessions) = sub_20B6B0A18(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133AA4();
  sub_20B51C710(v38, v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_archivedSessionClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_bag) = *&v38[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(v38, v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v38, v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_eventHub) = v38[0];
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_platform) = v38[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v38, v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v38, v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_subscriptionCache);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_subscriptionToken) = sub_20C13A914();
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_workoutPlanStringBuilder) = *&v38[0];
  type metadata accessor for ShelfLazyLockupFetcher();
  v30 = swift_allocObject();
  *(v30 + 152) = v21;

  *(v30 + 160) = sub_20B6B0C04(v21);
  *(v30 + 168) = MEMORY[0x277D84FA0];
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();

  *(v30 + 136) = 10;
  *(v30 + 144) = 42;
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_lazyLockupFetcher) = v30;

  v31 = sub_20BD950F8(v37, v5);

  (*(v26 + 8))(v27, v35);
  (*(v34 + 8))(v28, v36);
  *(v5 + OBJC_IVAR____TtC9SeymourUI29WorkoutPlanWeekdayDetailShelf_weekdayCompletedReferencesMetrics) = v31;

  return v5;
}

uint64_t sub_20C06D144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_20C06D1DC, v6, v5);
}

uint64_t sub_20C06D1DC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_20C06D2E4;

    return sub_20C06D428(1);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    v4 = *(v0 + 8);

    return v4();
  }
}