void sub_21D81A93C(void *a1, void *a2, int a3, char a4, uint64_t a5, uint64_t a6)
{
  v34 = a6;
  v33 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  MEMORY[0x28223BE20](v16 - 8);
  v18 = v32 - v17;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = [Strong navigationController];

    if (v21)
    {
      v32[1] = a5;
      v22 = sub_21DBF66FC();
      v23 = 1;
      (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
      sub_21D53BFA4(0xD000000000000016, 0x800000021DC61CE0, v18);
      if (a1)
      {
        TTRRecurrenceRuleModel.init(sourceRule:)(a1, v15);
        v23 = 0;
      }

      v24 = type metadata accessor for TTRRecurrenceRuleModel(0);
      (*(*(v24 - 8) + 56))(v15, v23, 1, v24);
      type metadata accessor for TTRIRecurrenceEditorRouter();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_21D0D3954(v15, v12, &qword_27CE5A018, &unk_21DC0DCB0);

      v26 = a2;
      v27 = sub_21D5B8128(v25, v26, v12, v33 & 1);
      v28 = type metadata accessor for TTRIRecurrenceEditorViewController();
      v29 = objc_allocWithZone(v28);
      v30 = &v29[OBJC_IVAR____TtC15RemindersUICore34TTRIRecurrenceEditorViewController_presenter];
      *v30 = v27;
      v30[1] = &off_282EC40B0;
      v35.receiver = v29;
      v35.super_class = v28;

      v31 = objc_msgSendSuper2(&v35, sel_initWithStyle_, 2);
      *(v27 + 24) = &off_282EC3FD0;
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();

      *(v27 + 40) = v34;
      swift_unknownObjectWeakAssign();

      [v21 pushViewController:v31 animated:a4 & 1];

      sub_21D0CF7E0(v15, &qword_27CE5A018, &unk_21DC0DCB0);
    }
  }
}

void sub_21D81AC9C(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v37 = a4;
  v38 = a3;
  v35 = a1;
  v6 = type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController.Argument(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_21DBF66FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = [Strong navigationController];

    v34 = v18;
    if (v18)
    {
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680, &unk_21DC1D040) + 48);
      *v15 = [a2 objectID];
      v20 = *MEMORY[0x277D451A8];
      v21 = sub_21DBF66BC();
      (*(*(v21 - 8) + 104))(&v15[v19], v20, v21);
      v22 = *MEMORY[0x277D45168];
      v23 = sub_21DBF66DC();
      (*(*(v23 - 8) + 104))(&v15[v19], v22, v23);
      (*(v13 + 104))(v15, *MEMORY[0x277D45248], v12);
      (*(v13 + 16))(v11, v15, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
      sub_21D53BFA4(0xD000000000000011, 0x800000021DC61C60, v11);
      sub_21D0D3954(v35, v8, &unk_27CE62610, &unk_21DC0DF00);
      v24 = &v8[*(v6 + 20)];
      v25 = v36;
      *v24 = v37;
      v24[1] = v25;
      type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v27 = objc_opt_self();
      swift_unknownObjectRetain();
      v28 = [v27 bundleForClass_];
      v29 = sub_21DBFA12C();
      v30 = [objc_opt_self() storyboardWithName:v29 bundle:v28];

      v31 = sub_21D5A34BC(v30, 0xD000000000000032, 0x800000021DC61C80, v8);
      sub_21D5B8EB8(v8, type metadata accessor for TTRIReminderDetailRecurrenceEndTableViewController.Argument);
      v32 = v34;
      [v34 pushViewController:v31 animated:v38 & 1];

      (*(v13 + 8))(v15, v12);
    }
  }
}

void sub_21D81B0E8(void (*a1)(char *, uint64_t, uint64_t), void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a3;
  v8 = sub_21DBF563C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v21 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong navigationController];

    if (v17)
    {
      v18 = sub_21DBF66FC();
      (*(*(v18 - 8) + 56))(v14, 1, 1, v18);
      sub_21D53BFA4(0xD000000000000017, 0x800000021DC61C40, v14);
      v19 = [a2 date];
      sub_21DBF55FC();

      v23 = 0;
      v20 = sub_21D8017C4(a4, v21, a1, v11, &v23);
      (*(v9 + 8))(v11, v8);
      [v17 pushViewController:v20 animated:v22 & 1];
    }
  }
}

void sub_21D81B334(uint64_t a1, uint64_t a2, int a3, NSObject *a4, uint64_t a5)
{
  v44 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v39 - v11;
  v13 = sub_21DBF66FC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v18 = Strong, v19 = [Strong navigationController], v18, v19))
  {
    v20 = a2;
    v21 = a1;
    v41 = a5;
    v42 = a3;
    ObjectType = swift_getObjectType();
    v23 = v20;
    v24 = (*(v20 + 16))(ObjectType, v20);
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680, &unk_21DC1D040) + 48);
    v40 = v24;
    *v16 = [v24 objectID];
    v26 = *MEMORY[0x277D451A0];
    v27 = sub_21DBF66BC();
    (*(*(v27 - 8) + 104))(&v16[v25], v26, v27);
    v28 = *MEMORY[0x277D45168];
    v29 = sub_21DBF66DC();
    (*(*(v29 - 8) + 104))(&v16[v25], v28, v29);
    (*(v14 + 104))(v16, *MEMORY[0x277D45248], v13);
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v30 = sub_21DBF84BC();
    __swift_project_value_buffer(v30, qword_27CE62450);
    sub_21DBF66EC();
    v31 = sub_21DBF54CC();
    (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
    sub_21DAEAF90(0xD000000000000010, 0x800000021DC6CBD0, 0x206B736174627553, 0xEC0000007473694CLL, v12);
    sub_21D0CF7E0(v12, &qword_27CE5EA20, &qword_21DC0D4A0);
    v32 = sub_21D3112FC(v21, v23, v44, v41);
    v34 = v33;
    [v19 pushViewController:v32 animated:v42 & 1];

    (*(v14 + 8))(v16, v13);
    *(v43 + 32) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v35 = sub_21DBF84BC();
    __swift_project_value_buffer(v35, qword_27CE62450);
    v44 = sub_21DBF84AC();
    v36 = sub_21DBFAECC();
    if (os_log_type_enabled(v44, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_21D0C9000, v44, v36, "Failed to get navigation controller -- Failed to show subtask list", v37, 2u);
      MEMORY[0x223D46520](v37, -1, -1);
    }

    v38 = v44;
  }
}

void sub_21D81B800(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF8E0C();
  v4 = _s15RemindersUICore30TTRIQuickLookPreviewControllerC15previewItemURLsACSay10Foundation3URLVG_tcfC_0(v3);
  [v4 setCurrentPreviewItemIndex_];
  v5 = &v4[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickLookPreviewController_transitionDelegate];
  swift_beginAccess();
  *(v5 + 1) = 0;
  swift_unknownObjectWeakAssign();
  [v4 setDelegate_];
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong presentViewController:v4 animated:1 completion:0];
  }
}

uint64_t sub_21D81B8D4()
{
  MEMORY[0x223D46650](v0 + 16);
  sub_21D157444(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_21D81B9DC(void *a1, void *a2, int a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v83 = a6;
  LODWORD(v85) = a3;
  v77 = a2;
  v76 = a1;
  v84 = type metadata accessor for TTRRecurrenceRuleModel(0);
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v74 = &v70[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = sub_21DBF5C4C();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v10 = &v70[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_21DBF563C();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v12 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A018, &unk_21DC0DCB0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v70[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v70[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v70[-v20];
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v70[-v23];
  v25 = a4[1];
  v91 = *a4;
  v92 = v25;
  *v93 = a4[2];
  *&v93[9] = *(a4 + 41);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v72 = a5;
    v75 = v21;
    v27 = Strong;
    v28 = sub_21DBF66FC();
    v29 = 1;
    (*(*(v28 - 8) + 56))(v24, 1, 1, v28);
    sub_21D53BFA4(0xD000000000000018, 0x800000021DC61CC0, v24);
    aBlock = v91;
    v89 = v92;
    *v90 = *v93;
    *&v90[9] = *&v93[9];
    v73 = v27;
    v71 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(&aBlock);
    if (v76)
    {
      v30 = v76;
      v31 = v75;
      TTRRecurrenceRuleModel.init(sourceRule:)(v30, v75);
      v29 = 0;
    }

    else
    {
      v31 = v75;
    }

    v36 = v82;
    (*(v82 + 56))(v31, v29, 1, v84);
    type metadata accessor for TTRICustomRecurrenceEditorRouter();
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_21D0D3954(v31, v18, &qword_27CE5A018, &unk_21DC0DCB0);

    v38 = v77;
    v39 = sub_21D5B7C00(v37, v38, v18, v85 & 1);
    v40 = [v38 date];
    sub_21DBF55FC();

    v41 = [objc_opt_self() defaultTimeZone];
    sub_21DBF5C2C();

    v42 = objc_allocWithZone(TTRICustomRecurrenceEditorViewController);
    v43 = sub_21DBF55BC();
    v44 = sub_21DBF5C0C();
    v45 = [v42 initWithStartDate:v43 timeZone:v44];

    v46 = v31;
    (*(v80 + 8))(v10, v81);
    (*(v78 + 8))(v12, v79);
    sub_21D0D3954(v31, v15, &qword_27CE5A018, &unk_21DC0DCB0);
    if ((*(v36 + 48))(v15, 1, v84) == 1)
    {
      sub_21D0CF7E0(v15, &qword_27CE5A018, &unk_21DC0DCB0);
    }

    else
    {
      v47 = v74;
      sub_21D55B1D8(v15, v74);
      v48 = TTRRecurrenceRuleModel.standaloneREMRecurrenceRule()();
      [v45 setRecurrenceRule_];

      sub_21D5B8EB8(v47, type metadata accessor for TTRRecurrenceRuleModel);
    }

    *v90 = sub_21D5B8EB0;
    *&v90[8] = v39;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v89 = sub_21D1B6000;
    *(&v89 + 1) = &block_descriptor_93;
    v49 = _Block_copy(&aBlock);

    [v45 setCompletionBlock_];
    _Block_release(v49);
    [v45 setProhibitsHourlyRecurrence_];
    swift_unknownObjectWeakAssign();

    *(v39 + 40) = v83;
    swift_unknownObjectWeakAssign();

    if ((v71 & 1) != 0 && (~v93[8] & 0xFE) != 0)
    {
      v54 = v93[8];
      if (v93[24])
      {
        v87 = 0;
        if (v93[8] < 0x40u)
        {
          v54 = v93[8] & 1;
        }

        v55 = 1;
      }

      else
      {
        v55 = *&v93[16];
        v87 = v93[24];
      }

      aBlock = v91;
      v89 = v92;
      *v90 = *v93;
      v90[8] = v54;
      v90[15] = v93[15];
      *&v90[13] = *&v93[12] >> 8;
      *&v90[9] = *&v93[8] >> 8;
      *&v90[16] = v55;
      v90[24] = v87;
      sub_21D0D3954(&v91, v86, &qword_27CE5D558, &qword_21DC1CB50);
      sub_21D50B9A4(&aBlock, v86);
      [v45 setModalPresentationStyle_];
      v56 = [v45 popoverPresentationController];
      if (v56)
      {
        v57 = v56;
        if (v90[24])
        {
          v58 = 15;
        }

        else
        {
          v58 = *&v90[16];
        }

        v59 = aBlock;
        v60 = v89;
        v61 = *v90;
        v62 = v90[8];
        [v56 setPermittedArrowDirections_];
        if (v62 > 0x3F)
        {
          v68 = 0;
          v67 = 1;
          v63 = 0.0;
          v64 = 0.0;
          v65 = 0.0;
          v85 = v59;
          v66 = 0.0;
        }

        else
        {
          v85 = 0;
          v63 = *(&v59 + 1);
          v65 = *(&v60 + 1);
          v64 = *&v60;
          v66 = *&v61;
          v67 = v62;
          v68 = v59;
        }

        sub_21D50BA00(v59, *(&v59 + 1), v60, *(&v60 + 1), v61, v62);
        sub_21D50B9A4(&aBlock, v86);
        [v57 setSourceView_];
        if (v67)
        {
          v63 = *MEMORY[0x277CBF398];
          v64 = *(MEMORY[0x277CBF398] + 8);
          v65 = *(MEMORY[0x277CBF398] + 16);
          v66 = *(MEMORY[0x277CBF398] + 24);
        }

        [v57 setSourceRect_];
        [v57 setSourceItem_];

        swift_unknownObjectRelease();
        sub_21D1A9430(&aBlock);
        v46 = v75;
      }

      sub_21D1A9430(&aBlock);
      v69 = v73;
      [v73 presentViewController:v45 animated:1 completion:0];

      sub_21D1A9430(&aBlock);
    }

    else
    {
      v50 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      v51 = [v50 presentationController];
      if (v51)
      {
        v52 = v51;
        [v51 setDelegate_];
      }

      v53 = v73;
      [v73 presentViewController:v50 animated:1 completion:0];
    }

    sub_21D0CF7E0(v46, &qword_27CE5A018, &unk_21DC0DCB0);
  }

  else
  {
    if (qword_27CE569A0 != -1)
    {
      swift_once();
    }

    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE5DA50);
    v85 = sub_21DBF84AC();
    v33 = sub_21DBFAECC();
    if (os_log_type_enabled(v85, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_21D0C9000, v85, v33, "Failed to get viewController -- Failed to show custom recurrence editor", v34, 2u);
      MEMORY[0x223D46520](v34, -1, -1);
    }

    v35 = v85;
  }
}

void sub_21D81C504(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, __int128 *a7)
{
  v98 = a6;
  v99 = a3;
  v102 = a2;
  v101 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0, &unk_21DC1CB70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v100 = &v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v89 - v16;
  v18 = sub_21DBF66FC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a7[1];
  v109 = *a7;
  v110 = v22;
  *v111 = a7[2];
  *&v111[9] = *(a7 + 41);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v92 = v12;
    v93 = a5;
    v94 = a4;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680, &unk_21DC1D040) + 48);
    ObjectType = swift_getObjectType();
    v90 = v102[2];
    v25 = v90();
    v26 = [v25 objectID];

    *v21 = v26;
    v27 = *MEMORY[0x277D45190];
    v28 = sub_21DBF66BC();
    (*(*(v28 - 8) + 104))(&v21[v23], v27, v28);
    v29 = *MEMORY[0x277D45168];
    v30 = sub_21DBF66DC();
    (*(*(v30 - 8) + 104))(&v21[v23], v29, v30);
    v31 = *MEMORY[0x277D45248];
    v96 = v19;
    v32 = *(v19 + 104);
    v97 = v18;
    v32(v21, v31, v18);
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v33 = sub_21DBF84BC();
    __swift_project_value_buffer(v33, qword_27CE62450);
    v95 = v21;
    sub_21DBF66EC();
    v34 = sub_21DBF54CC();
    (*(*(v34 - 8) + 56))(v17, 0, 1, v34);
    sub_21DAEAF90(0xD000000000000010, 0x800000021DC6CBD0, 0x7367617468736148, 0xEF726F7469644520, v17);
    sub_21D0CF7E0(v17, &qword_27CE5EA20, &qword_21DC0D4A0);
    v106 = v109;
    v107 = v110;
    *v108 = *v111;
    *&v108[9] = *&v111[9];
    v91 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(&v106);
    v35 = v91 & 1;
    v36 = (v90)(ObjectType, v102);
    type metadata accessor for TTRHashtagEditorInteractor();
    swift_allocObject();
    v37 = v98;
    v102 = v36;
    v38 = sub_21D365EC8(v102, v37);
    v39 = type metadata accessor for TTRIHashtagEditorRouter();
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v41 = v100;
    sub_21D0D3954(v99, v100, &unk_27CE622B0, &unk_21DC1CB70);
    *(&v107 + 1) = v39;
    *v108 = &off_282EC6F90;
    *&v106 = v40;
    type metadata accessor for TTRIHashtagEditorPresenter(0);
    v42 = swift_allocObject();
    v43 = __swift_mutable_project_boxed_opaque_existential_1(&v106, v39);
    v101 = &v89;
    v44 = MEMORY[0x28223BE20](v43);
    v46 = (&v89 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46, v44);
    v48 = *v46;
    v104[4] = &off_282EC6F90;
    v104[3] = v39;
    v104[0] = v48;
    *(v42 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v42 + 40) = 0;
    swift_unknownObjectWeakInit();
    v49 = OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_viewModel;
    v50 = type metadata accessor for TTRIHashtagEditorViewModel(0);
    (*(*(v50 - 8) + 56))(v42 + v49, 1, 1, v50);
    v51 = v42 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_style;
    *v51 = v35;
    *(v51 + 8) = 0;
    v52 = (v42 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_interactor);
    *v52 = v38;
    v52[1] = &off_282EB2E90;
    sub_21D0D32E4(v104, v42 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_router);
    v53 = v92;
    sub_21D0D3954(v41, v92, &unk_27CE622B0, &unk_21DC1CB70);
    type metadata accessor for TTRHashtagEditorPresenterCapability(0);
    v54 = swift_allocObject();
    swift_retain_n();

    v55 = sub_21D59EB9C(v38, 0, v53, v54);
    sub_21D0CF7E0(v41, &unk_27CE622B0, &unk_21DC1CB70);
    __swift_destroy_boxed_opaque_existential_0(v104);
    *(v42 + OBJC_IVAR____TtC15RemindersUICore26TTRIHashtagEditorPresenter_presenterCapability) = v55;
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = (v55 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_viewModelUpdater);
    v58 = *(v55 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_viewModelUpdater);
    v59 = *(v55 + OBJC_IVAR____TtC15RemindersUICore35TTRHashtagEditorPresenterCapability_viewModelUpdater + 8);
    *v57 = sub_21D59EFC4;
    v57[1] = v56;

    sub_21D0D0E88(v58, v59);

    __swift_destroy_boxed_opaque_existential_0(&v106);
    v60 = objc_allocWithZone(type metadata accessor for TTRIHashtagEditorViewController());

    v61 = sub_21D59EABC(v35, 0, v42, v60);

    v38[3] = &off_282EC5CF8;
    swift_unknownObjectWeakAssign();

    *(v42 + 24) = &off_282EC5AB8;
    swift_unknownObjectWeakAssign();
    *(v42 + 40) = v93;
    swift_unknownObjectWeakAssign();

    swift_unknownObjectWeakAssign();

    if ((v91 & 1) != 0 && (~v111[8] & 0xFE) != 0)
    {
      v71 = v111[8];
      if (v111[24])
      {
        v105 = 0;
        if (v111[8] < 0x40u)
        {
          v71 = v111[8] & 1;
        }

        v72 = 1;
      }

      else
      {
        v72 = *&v111[16];
        v105 = v111[24];
      }

      v73 = v97;
      v106 = v109;
      v107 = v110;
      *v108 = *v111;
      v108[8] = v71;
      v108[15] = v111[15];
      *&v108[13] = *&v111[12] >> 8;
      *&v108[9] = *&v111[8] >> 8;
      *&v108[16] = v72;
      v108[24] = v105;
      v74 = v61;
      sub_21D0D3954(&v109, v104, &qword_27CE5D558, &qword_21DC1CB50);
      sub_21D50B9A4(&v106, v104);
      [v74 setModalPresentationStyle_];
      v75 = [v74 popoverPresentationController];
      if (v75)
      {
        v76 = v75;
        if (v108[24])
        {
          v77 = 15;
        }

        else
        {
          v77 = *&v108[16];
        }

        v78 = v106;
        v79 = v107;
        v80 = *v108;
        v81 = v108[8];
        [v75 setPermittedArrowDirections_];
        if (v81 >= 0x40)
        {
          v87 = 0;
          v86 = 1;
          v82 = 0.0;
          v83 = 0.0;
          v84 = 0.0;
          v102 = v78;
          v85 = 0.0;
        }

        else
        {
          v102 = 0;
          v82 = *(&v78 + 1);
          v84 = *(&v79 + 1);
          v83 = *&v79;
          v85 = *&v80;
          v86 = v81;
          v87 = v78;
        }

        sub_21D50BA00(v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81);
        sub_21D50B9A4(&v106, v104);
        [v76 setSourceView_];
        if (v86)
        {
          v82 = *MEMORY[0x277CBF398];
          v83 = *(MEMORY[0x277CBF398] + 8);
          v84 = *(MEMORY[0x277CBF398] + 16);
          v85 = *(MEMORY[0x277CBF398] + 24);
        }

        [v76 setSourceRect_];
        [v76 setSourceItem_];

        swift_unknownObjectRelease();
        sub_21D1A9430(&v106);
        v73 = v97;
      }

      else
      {
      }

      sub_21D1A9430(&v106);
      v88 = Strong;
      [Strong presentViewController:v74 animated:1 completion:0];

      sub_21D1A9430(&v106);
      v66 = v73;
    }

    else
    {
      v62 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
      v63 = [v62 presentationController];
      if (v63)
      {
        v64 = v63;
        [v63 setDelegate_];
      }

      v65 = Strong;
      [Strong presentViewController:v62 animated:1 completion:0];

      v66 = v97;
    }

    (*(v96 + 8))(v95, v66);
  }

  else
  {
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v67 = sub_21DBF84BC();
    __swift_project_value_buffer(v67, qword_27CE62450);
    Strong = sub_21DBF84AC();
    v68 = sub_21DBFAECC();
    if (os_log_type_enabled(Strong, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&dword_21D0C9000, Strong, v68, "Failed to get viewController -- Failed to show hashtag editor", v69, 2u);
      MEMORY[0x223D46520](v69, -1, -1);
    }

    v70 = Strong;
  }
}

void sub_21D81D198(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21D82E47C(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_21D82B400(v4);
  *a1 = v2;
}

uint64_t sub_21D81D204()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62470);
  v1 = __swift_project_value_buffer(v0, qword_27CE62470);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_21D81D2F4(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = [result isViewLoaded];
    result = swift_unknownObjectRelease();
    if (v7)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        sub_21D81D608(v5);
        sub_21D816CA8(v5);
        swift_unknownObjectRelease();
        result = sub_21D0CF7E0(v5, &qword_27CE62270, &unk_21DC2B5E0);
      }

      if ((a1 & 1) != 0 && *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState) <= 1u)
      {
        v8 = v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
        swift_beginAccess();
        result = swift_unknownObjectWeakLoadStrong();
        if (result)
        {
          v9 = *(v8 + 8);
          ObjectType = swift_getObjectType();
          (*(v9 + 16))(v1, &off_282ED5018, ObjectType, v9);
          return swift_unknownObjectRelease();
        }
      }
    }
  }

  return result;
}

char *sub_21D81D47C(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    __swift_project_boxed_opaque_existential_1(&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
    v5 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v5 + 40) |= a1 & 1;
    *(v5 + 48) = 0;
    v6._object = 0x800000021DC49D80;
    v6._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v6);
  }

  return result;
}

char *sub_21D81D54C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
    v4 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v4 + 48) = 0;
    v5._object = 0x800000021DC49D80;
    v5._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v5);
  }

  return result;
}

uint64_t sub_21D81D608@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v59 - v4;
  v6 = type metadata accessor for TTRReminderDetailViewModel(0);
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_frozenViewModelBeforeCancelingChanges;
  swift_beginAccess();
  sub_21D0D3954(&v1[v13], v5, &qword_27CE62270, &unk_21DC2B5E0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    v66 = v7;
    v68 = a1;
    sub_21D0CF7E0(v5, &qword_27CE62270, &unk_21DC2B5E0);
    v15 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor];
    v14 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
    ObjectType = swift_getObjectType();
    v17 = v14[2];
    v63 = v15;
    v18 = ObjectType;
    v62 = ObjectType;
    v64 = v17();
    v65 = v12;
    v19 = v14[7];
    v20 = v1;
    v19(&v82, v18, v14);
    v21 = v82;
    v22 = v83;
    v23 = v84;
    v81[5] = v82;
    v81[6] = v83;
    v81[7] = v84;
    TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForDisplaying.getter(v81);

    v24 = v20;
    v60 = *&v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state];
    v25 = v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state + 8];
    v26 = v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state + 9];
    v27 = v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state + 10];
    v79 = &_s15RemindersUICore14PresenterStateVN_0;
    v80 = &off_282ED4F20;
    v75 = v60;
    v76 = v25;
    v77 = v26;
    v78 = v27;
    v28 = *&v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_observerForShouldShowAsUnauthorizedForPreciseLocation];
    swift_beginAccess();
    v29 = &v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility];
    v31 = *&v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility];
    v30 = *&v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8];
    v33 = *&v20[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16];
    v32 = *(v29 + 3);
    v67 = v6;
    v34 = *(v29 + 4);
    LOBYTE(v23) = v29[40];
    v61 = *(v28 + 16);
    *&v70 = v31;
    *(&v70 + 1) = v30;
    v71 = v33;
    v72 = v32;
    v73 = v34;
    v74 = v23;
    v35 = v14[12];

    v36 = v34;
    v6 = v67;
    v37 = sub_21D7A9830(v31, v30, v33, v32, v36, v23);
    v35(&v69, v62, v14, v37);
    LODWORD(v30) = v24[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration + 4];
    v38 = v64;
    v39 = v65;
    sub_21D79C2D4(v38, v81, &v75, v61 & 1, &v70, &v69, v30, v24, v65);
    sub_21D81DC68(v39, v38);
    sub_21D81DF68(v39, v38);
    sub_21D81E378(v39, v38);
    sub_21D81E900(v39, v38);
    v40 = v39 + v6[23];
    v41 = *(v40 + 32);
    if (v41 < 0 && (v41 != -128 || *(v40 + 16) | *(v40 + 24) | *v40 | *(v40 + 8)))
    {
      v44 = 0;
      v48 = 0;
    }

    else
    {
      v42 = *&v24[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationQuickPicksInteractor + 8];
      v43 = swift_getObjectType();
      v44 = (*(v42 + 8))(v43, v42);
      v45 = sub_21D0D8CF0(0, &qword_280D17770, 0x277D44780);
      v73 = &protocol witness table for REMReminderChangeItem;
      v72 = v45;
      *&v70 = v38;
      v46 = *(v42 + 24);
      v47 = v38;
      v46(v81, &v70, v43, v42);
      __swift_destroy_boxed_opaque_existential_0(&v70);
      v48 = v81[0];
    }

    v49 = v39 + v6[24];

    *v49 = v44;
    *(v49 + 8) = v48;
    sub_21D4582E8(v39 + v6[20]);
    Strong = swift_unknownObjectWeakLoadStrong();
    a1 = v68;
    v7 = v66;
    if (Strong)
    {
      v51 = [Strong viewIfLoaded];
      if (v51)
      {
        v52 = v51;
        v53 = [v51 traitCollection];

        [v53 displayScale];
        v55 = v54;

        swift_unknownObjectRelease();
        v56 = 0;
        v57 = v55;
LABEL_12:
        sub_21D5D91B0(v39, v38, v57, v56);

        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    v57 = 0;
    v56 = 1;
    goto LABEL_12;
  }

  sub_21D82F96C(v5, v9, type metadata accessor for TTRReminderDetailViewModel);
  sub_21D82F96C(v9, v12, type metadata accessor for TTRReminderDetailViewModel);
  v39 = v12;
LABEL_13:
  sub_21D82F96C(v39, a1, type metadata accessor for TTRReminderDetailViewModel);
  return (*(v7 + 56))(a1, 0, 1, v6);
}

uint64_t sub_21D81DC68(uint64_t a1, void *a2)
{
  v5 = sub_21DBF4CAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration) != 1)
  {
    v18 = 1;
    goto LABEL_14;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = sub_21D80A708();
    swift_unknownObjectRelease();
    v10 = *(v9 + 32);

    v11 = qword_27CE8EBC8;
    swift_beginAccess();
    if (*&v10[v11])
    {
      sub_21D0D3954(&v10[v11], &v30, &qword_27CE5E8E0, &unk_21DC2B600);

      v12 = v31;
      swift_unknownObjectRetain();
      sub_21D0CF7E0(&v30, &qword_27CE5E8E0, &unk_21DC2B600);
      ObjectType = swift_getObjectType();
      (*(*(v12 + 8) + 32))(v32, ObjectType);
      swift_unknownObjectRelease();
      sub_21D0D0FD0(v32, v33);
      v14 = v34;
      v15 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      if ((*(v15 + 16))(v14, v15))
      {
        v16 = v34;
        v17 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v18 = (*(v17 + 40))(v16, v17);
        __swift_destroy_boxed_opaque_existential_0(v33);
        goto LABEL_14;
      }

      __swift_destroy_boxed_opaque_existential_0(v33);
    }

    else
    {
    }
  }

  v19 = [a2 titleAsString];
  if (v19)
  {
    v20 = v19;
    v21 = sub_21DBFA16C();
    v23 = v22;

    v30 = v21;
    v31 = v23;
    sub_21DBF4C5C();
    sub_21D176F0C();
    v24 = sub_21DBFBB3C();
    v26 = v25;
    (*(v6 + 8))(v8, v5);

    v27 = HIBYTE(v26) & 0xF;
    if ((v26 & 0x2000000000000000) == 0)
    {
      v27 = v24 & 0xFFFFFFFFFFFFLL;
    }

    v18 = v27 != 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_14:
  result = type metadata accessor for TTRReminderDetailViewModel(0);
  *(a1 + *(result + 20)) = v18 & 1;
  return result;
}

void sub_21D81DF68(uint64_t a1, void *a2)
{
  v29 = a1;
  v4 = sub_21DBF61CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21DBF7A2C();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 accountCapabilities];
  v14 = [v13 supportsPersonTrigger];

  if (v14)
  {
    v15 = [a2 contactHandles];
    if (v15)
    {
      v16 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21DC09CF0;
      *(v17 + 32) = [objc_opt_self() descriptorForRequiredKeysWithThreeDTouchEnabled_];
      sub_21DBF62EC();

      v18 = (*(v9 + 88))(v12, v8);
      if (v18 == *MEMORY[0x277D45730])
      {
        (*(v9 + 96))(v12, v8);
        v19 = v29 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 100);
        sub_21D7A9648(*v19, *(v19 + 8), *(v19 + 16));
        *v19 = xmmword_21DC0E710;
        *(v19 + 16) = 0;
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v20 = sub_21DBF816C();
        sub_21DBF820C();
      }

      else if (v18 == *MEMORY[0x277D45738])
      {
        (*(v9 + 96))(v12, v8);
        (*(v5 + 32))(v7, v12, v4);
        v23 = sub_21DBF61AC();
        v25 = v24;
        v26 = sub_21DBF61BC();

        (*(v5 + 8))(v7, v4);
        v27 = v29 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 100);
        sub_21D7A9648(*v27, *(v27 + 8), *(v27 + 16));
        *v27 = v23;
        *(v27 + 8) = v25;
        *(v27 + 16) = v26;
      }

      else
      {
        sub_21DBFC63C();
        __break(1u);
      }
    }

    else
    {
      v21 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state + 9);
      v22 = v29 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 100);
      sub_21D7A9648(*v22, *(v22 + 8), *(v22 + 16));
      if (v21 == 1)
      {
        *v22 = 0;
        *(v22 + 8) = 0;
      }

      else
      {
        *v22 = xmmword_21DC19C40;
      }

      *(v22 + 16) = 0;
    }
  }
}

uint64_t sub_21D81E378(uint64_t a1, void *a2)
{
  if (v2[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration + 2] == 1)
  {
    goto LABEL_11;
  }

  v5 = v2;
  v6 = *&v2[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
  ObjectType = swift_getObjectType();
  (*(v6 + 56))(v71, ObjectType, v6);
  v8 = *v71;
  v9 = *&v71[16];
  v63 = *v71;
  *&v64 = *&v71[16];
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(&v72);
  if (!*(&v73 + 1))
  {
    sub_21D0CF7E0(&v72, &qword_27CE59DC0, &qword_21DC0FBF0);

    goto LABEL_11;
  }

  sub_21D0D0FD0(&v72, v80);

  v10 = v81;
  v11 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v12 = (*(v11 + 72))(v10, v11);
  LODWORD(v10) = [v12 supportsAssignments];

  if (!v10 || (v13 = v81, v14 = v82, __swift_project_boxed_opaque_existential_1(v80, v81), (v15 = (*(v14 + 80))(v13, v14)) == 0) || (v16 = v15, v17 = [v15 objectID], v16, !v17))
  {
    __swift_destroy_boxed_opaque_existential_0(v80);
LABEL_11:
    v22 = a1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 104);
    v23 = *(v22 + 96);
    v77 = *(v22 + 80);
    v78 = v23;
    v79 = *(v22 + 112);
    v24 = *(v22 + 64);
    v25 = *(v22 + 16);
    v72 = *v22;
    v73 = v25;
    v26 = *(v22 + 48);
    v74 = *(v22 + 32);
    v75 = v26;
    v76 = v24;
    result = sub_21D7A96C8(&v72);
    *v22 = 0u;
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 48) = 0u;
    *(v22 + 64) = 0u;
    *(v22 + 80) = 0u;
    *(v22 + 96) = 0u;
    *(v22 + 112) = 0;
    return result;
  }

  v18 = [a2 assignmentContext];
  if (v18 && (v19 = v18, v20 = [v18 currentAssignment], v19, v20))
  {
    v21 = [v20 assigneeID];
  }

  else
  {
    v21 = 0;
  }

  memset(&v71[8], 0, 104);
  *v71 = 1;
  v28 = v81;
  v29 = v82;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  (*(v29 + 96))(&v63, v28, v29);
  v30 = *(&v64 + 1);
  if (*(&v64 + 1))
  {
    v31 = v65;
    __swift_project_boxed_opaque_existential_1(&v63, *(&v64 + 1));
    v32 = (*(v31 + 24))(v30, v31);
    v33 = v21;
    v34 = v17;
    v35 = v5;
    v36 = sub_21D82E7A8(v32, v34, v35, v21, v71);

    __swift_destroy_boxed_opaque_existential_0(&v63);
    v70 = v36;
    sub_21DBF8E0C();
    sub_21D81D198(&v70);

    *&v72 = &unk_282EA7AC8;
    sub_21D56333C(v70);

    v61 = v72;
    v67 = *&v71[64];
    v68 = *&v71[80];
    v69 = *&v71[96];
    v63 = *v71;
    v64 = *&v71[16];
    v65 = *&v71[32];
    v66 = *&v71[48];
    v37 = *v71;
    if (*v71 == 1)
    {
      v37 = 0;
      v59 = 0;
      v60 = 0;
      v57 = 0;
      v58 = 0;
      v56 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v45 = 0;
    }

    else
    {
      v59 = v64;
      v60 = *(&v63 + 1);
      v57 = v65;
      v58 = *(&v64 + 1);
      v38 = v66;
      v56 = *(&v65 + 1);
      v39 = *(&v66 + 1);
      v41 = *(&v67 + 1);
      v40 = v67;
      v43 = *(&v68 + 1);
      v42 = v68;
      v45 = *(&v69 + 1);
      v44 = v69;
    }

    v51 = a1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 104);
    v52 = *(v51 + 96);
    v77 = *(v51 + 80);
    v78 = v52;
    v79 = *(v51 + 112);
    v53 = *(v51 + 64);
    v54 = *(v51 + 16);
    v72 = *v51;
    v73 = v54;
    v55 = *(v51 + 48);
    v74 = *(v51 + 32);
    v75 = v55;
    v76 = v53;
    sub_21D0D3954(&v63, v62, &qword_27CE62638, &qword_21DC2B5F8);
    sub_21D7A96C8(&v72);
    *v51 = v61;
    *(v51 + 8) = v37;
    *(v51 + 16) = v60;
    *(v51 + 24) = v59;
    *(v51 + 32) = v58;
    *(v51 + 40) = v57;
    *(v51 + 48) = v56;
    *(v51 + 56) = v38;
    *(v51 + 64) = v39;
    *(v51 + 72) = v40;
    *(v51 + 80) = v41;
    *(v51 + 88) = v42;
    *(v51 + 96) = v43;
    *(v51 + 104) = v44;
    *(v51 + 112) = v45;
  }

  else
  {

    sub_21D0CF7E0(&v63, &qword_27CE62630, &qword_21DC187E0);
    v46 = a1 + *(type metadata accessor for TTRReminderDetailViewModel(0) + 104);
    v47 = *(v46 + 96);
    v77 = *(v46 + 80);
    v78 = v47;
    v79 = *(v46 + 112);
    v48 = *(v46 + 64);
    v49 = *(v46 + 16);
    v72 = *v46;
    v73 = v49;
    v50 = *(v46 + 48);
    v74 = *(v46 + 32);
    v75 = v50;
    v76 = v48;
    sub_21D7A96C8(&v72);
    *v46 = 0u;
    *(v46 + 16) = 0u;
    *(v46 + 32) = 0u;
    *(v46 + 48) = 0u;
    *(v46 + 64) = 0u;
    *(v46 + 80) = 0u;
    *(v46 + 96) = 0u;
    *(v46 + 112) = 0;
  }

  v76 = *&v71[64];
  v77 = *&v71[80];
  v78 = *&v71[96];
  v72 = *v71;
  v73 = *&v71[16];
  v74 = *&v71[32];
  v75 = *&v71[48];
  sub_21D0CF7E0(&v72, &qword_27CE62638, &qword_21DC2B5F8);
  return __swift_destroy_boxed_opaque_existential_0(v80);
}

void sub_21D81E900(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  *&v6 = MEMORY[0x28223BE20](v5 - 8).n128_u64[0];
  v8 = v49 - v7;
  v9 = [a2 attachmentContext];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 attachments];
    v53 = v2;
    v12 = v11;

    sub_21D0D8CF0(0, &qword_280D0C310, 0x277D445A0);
    v13 = sub_21DBFA5EC();

    v50 = v13;
    v62 = v13;
    sub_21D0D8CF0(0, &qword_280D0C290, 0x277D44658);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E900, &unk_21DC25E10);
    v49[2] = sub_21D0D0F1C(&qword_280D0C3A0, &unk_27CE5E900, &unk_21DC25E10, MEMORY[0x277D83970]);
    v49[3] = v14;
    v15 = sub_21DBFA47C();
    Strong = swift_unknownObjectWeakLoadStrong();
    v17 = 1.0;
    if (Strong)
    {
      v18 = [Strong viewIfLoaded];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 traitCollection];

        [v20 displayScale];
        v17 = v21;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    v51 = v8;
    v52 = a1;
    v22 = TTRAttachmentThumbnailsManager.thumbnails(for:scale:)(v15, v17);
    v23 = *(v22 + 2);
    if (v23)
    {
      v24 = 0;
      v25 = v15 & 0xFFFFFFFFFFFFFF8;
      if (v15 < 0)
      {
        v26 = v15;
      }

      else
      {
        v26 = v15 & 0xFFFFFFFFFFFFFF8;
      }

      v49[1] = v26;
      v56 = v15 & 0xC000000000000001;
      v27 = v22 + 48;
      v28 = MEMORY[0x277D84F90];
      v57 = v15 >> 62;
      v54 = v15 & 0xFFFFFFFFFFFFFF8;
      v55 = v22;
      while (v24 < v23)
      {
        v29 = *(v27 - 2);
        v30 = *(v27 - 1);
        v31 = *v27;
        if (v57)
        {
          if (v24 == sub_21DBFBD7C())
          {
            goto LABEL_29;
          }
        }

        else if (v24 == *(v25 + 16))
        {
          goto LABEL_29;
        }

        if (v56)
        {
          sub_21D72DABC(v29, v30, v31);
          v32 = v15;
          v34 = MEMORY[0x223D44740](v24, v15);
        }

        else
        {
          if (v24 >= *(v25 + 16))
          {
            goto LABEL_32;
          }

          v32 = v15;
          v33 = *(v15 + 8 * v24 + 32);
          sub_21D72DABC(v29, v30, v31);
          v34 = v33;
        }

        v62 = v29;
        v63 = v30;
        v64 = v31;
        v65 = v34;
        sub_21D826DB0(&v62, v34, &v58);
        v35 = v65;
        sub_21D72DB24(v62, v63, v64);

        v37 = v58;
        v36 = v59;
        v39 = v60;
        v38 = v61;
        if (v60)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_21D214920(0, *(v28 + 2) + 1, 1, v28);
          }

          v41 = *(v28 + 2);
          v40 = *(v28 + 3);
          if (v41 >= v40 >> 1)
          {
            v28 = sub_21D214920((v40 > 1), v41 + 1, 1, v28);
          }

          *(v28 + 2) = v41 + 1;
          v42 = &v28[32 * v41];
          *(v42 + 4) = v37;
          *(v42 + 5) = v36;
          *(v42 + 6) = v39;
          *(v42 + 7) = v38;
        }

        else
        {
          sub_21D81A184(v58, v59, 0, v61);
        }

        ++v24;
        v23 = *(v55 + 2);
        v27 += 24;
        v15 = v32;
        v25 = v54;
        if (v24 == v23)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
    }

    else
    {
      v28 = MEMORY[0x277D84F90];
LABEL_29:

      v62 = v50;
      sub_21DBF54CC();
      v43 = v51;
      sub_21DBFA48C();

      v44 = type metadata accessor for TTRReminderDetailViewModel(0);
      v45 = *(v44 + 128);
      v46 = v52;

      *(v46 + v45) = v28;
      v47 = *(v44 + 132);
      sub_21D82F904(v46 + v47, type metadata accessor for TTRReminderDetailViewModel.URLState);
      sub_21D57690C(v43, v46 + v47);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62230, &unk_21DC1CEB0);
      (*(*(v48 - 8) + 56))(v46 + v47, 0, 1, v48);
    }
  }
}

void sub_21D81EE04(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability);
  v3 = *(v2 + 56);
  if (v3 == 2)
  {
    v4 = 0;
    v5 = 0uLL;
  }

  else
  {
    v5 = *(v2 + 40);
    v4 = v3 & 1;
  }

  *a1 = v5;
  *(a1 + 16) = v4;
}

uint64_t sub_21D81EE3C(char a1, const char *a2, uint64_t (*a3)(uint64_t))
{
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v6 = sub_21DBF84BC();
  __swift_project_value_buffer(v6, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 32) = 28532;
  v8 = inited + 32;
  v9 = a1 & 1;
  v10 = 1702195828;
  if (!v9)
  {
    v10 = 0x65736C6166;
  }

  v11 = 0xE500000000000000;
  if (v9)
  {
    v11 = 0xE400000000000000;
  }

  v12 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 72) = v12;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v13 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v8, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC(a2, 41, 2, v13);

  return a3(v9);
}

unsigned __int8 *sub_21D81EFA4(const char *a1, uint64_t a2, unsigned __int8 a3)
{
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE62470);
  v8 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC(a1, a2, 2, v8);

  v9 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability);
  v13 = a3;
  result = sub_21D455530(&v13);
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = *(v9 + 24);

    v11(1);

    return sub_21D0D0E88(v11, v12);
  }

  return result;
}

uint64_t sub_21D81F0C4(uint64_t a1)
{
  v2 = v1;
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D20;
  *(inited + 32) = 1701606770;
  *(inited + 40) = 0xE400000000000000;
  v6 = [objc_opt_self() localizedDescriptionForRepeatType_];
  v7 = sub_21DBFA16C();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 0x7265646E696D6572;
  *(inited + 88) = 0xE800000000000000;
  v11 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v13 = (*(v11 + 16))(ObjectType, v11);
  v14 = [v13 objectID];

  *(inited + 120) = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  *(inited + 96) = v14;
  v15 = sub_21D17716C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A6B0, &qword_21DC0F190);
  swift_arrayDestroy();
  sub_21DAEACDC("Reminder Details Editor update recurrence rules {rule: %@, reminder: %@}", 72, 2, v15);

  return sub_21D455EBC(a1);
}

void sub_21D81F2D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62610, &unk_21DC0DF00);
  MEMORY[0x28223BE20](v2);
  v4 = &v10[-v3];
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  sub_21D0D3954(a1, v4, &unk_27CE62610, &unk_21DC0DF00);
  v7 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v8;
  v9 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminder Detail Changed Recurrence End {to: %@}", 47, 2, v9);

  sub_21D4562D4(a1);
}

uint64_t sub_21D81F490(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = aBlock - v5;
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 32) = 28532;
  v9 = inited + 32;
  v10 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v10 = 0x65736C6166;
  }

  v11 = 0xE500000000000000;
  if (a1)
  {
    v11 = 0xE400000000000000;
  }

  v12 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 72) = v12;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v13 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v9, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminder Detail Changed location trigger on {to: %@}", 52, 2, v13);

  v14 = &v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state];
  if (a1)
  {
    v14[8] = 1;
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
    v15 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v15 + 40) |= 1uLL;
    *(v15 + 48) = 0;
    v16._object = 0x800000021DC49D80;
    v16._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v16);

    v17 = sub_21DBFA89C();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_21DBFA84C();
    v18 = v1;
    v19 = sub_21DBFA83C();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    v20[2] = v19;
    v20[3] = v21;
    v20[4] = v18;
    sub_21D1B5178(0, 0, v6, &unk_21DC2B650, v20);
  }

  else
  {
    v14[8] = 0;
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v23 = objc_opt_self();
    v24 = sub_21DBFA12C();

    v25 = swift_allocObject();
    *(v25 + 16) = v2;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_21D82F798;
    *(v26 + 24) = v25;
    aBlock[4] = sub_21D0E6070;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_94;
    v27 = _Block_copy(aBlock);
    v28 = v2;

    [v23 withActionName:v24 block:v27];

    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D81F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = sub_21DBFA84C();
  v4[6] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](sub_21D81FA00, v6, v5);
}

uint64_t sub_21D81FA00(uint64_t a1)
{
  v1[9] = *(v1[4] + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_privacyChecker);
  v1[10] = sub_21DBFA83C();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_21D81FACC;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D81FACC()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D81FC08, v1, v0);
}

uint64_t sub_21D81FC08()
{

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_21D81FCB4;

  return sub_21D591090();
}

uint64_t sub_21D81FCB4(char a1)
{
  v2 = *v1;
  v5 = *v1;
  *(v2 + 112) = a1;

  v3 = swift_task_alloc();
  *(v2 + 104) = v3;
  *v3 = v5;
  v3[1] = sub_21D81FE18;

  return sub_21D5BA740(0);
}

uint64_t sub_21D81FE18(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  *(v3 + 16) = v1;

  v4 = *(v2 + 64);
  v5 = *(v2 + 56);

  return MEMORY[0x2822009F8](sub_21D81FF40, v5, v4);
}

uint64_t sub_21D81FF40()
{
  v8 = v0;
  v1 = *(v0 + 112);

  if (v1 == 1)
  {
    v7 = 0;
    v2 = &v7;
  }

  else if (*(v0 + 24) == 1)
  {
    v6 = 1;
    v2 = &v6;
  }

  else
  {
    v5 = 3;
    v2 = &v5;
  }

  sub_21D81FFEC(v2, 0);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21D81FFEC(unsigned __int8 *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = *a1;
  if ((a2 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_21D81D608(&v30 - v10);
  v13 = type metadata accessor for TTRReminderDetailViewModel(0);
  v14 = *(*(v13 - 8) + 48);
  if (v14(v11, 1, v13) == 1)
  {
    sub_21D0CF7E0(v11, &qword_27CE62270, &unk_21DC2B5E0);
    v15 = 0;
    v16 = 1;
  }

  else
  {
    v31 = v14;
    v32 = v12;
    v17 = &v11[*(v13 + 92)];
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = *(v17 + 2);
    v15 = *(v17 + 3);
    v21 = v17[32];
    sub_21D48BB60(*v17, v19, v20, v15, v17[32]);
    sub_21D82F904(v11, type metadata accessor for TTRReminderDetailViewModel);
    if (v21 >> 6)
    {
      if (v21 >> 6 == 1)
      {
        sub_21D48C240(v18, v19, v20, v15, v21);
      }

      v15 = 0;
      v16 = 1;
    }

    else
    {
      sub_21D48C240(v18, v19, v20, v15, v21);
      v16 = 0;
    }

    LOBYTE(v12) = v32;
    v14 = v31;
  }

  sub_21D81D608(v8);
  if (v14(v8, 1, v13) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE62270, &unk_21DC2B5E0);
LABEL_17:
    v15 = 0;
    v26 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationQuickPicksInteractor + 8);
    v24 = 6;
    goto LABEL_18;
  }

  v22 = &v8[*(v13 + 96)];
  v23 = *v22;
  v24 = v22[8];
  sub_21DBF8E0C();
  sub_21D82F904(v8, type metadata accessor for TTRReminderDetailViewModel);
  if (!v23)
  {
    goto LABEL_17;
  }

  v25 = v24 == 6 ? 1 : v16;
  if (v25)
  {
    goto LABEL_17;
  }

  v26 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationQuickPicksInteractor + 8);
LABEL_18:
  v34 = v12;
  ObjectType = swift_getObjectType();
  v33[0] = v24;
  v33[1] = v15;
  result = (*(v26 + 16))(&v34, v33, ObjectType, v26);
  if (result)
  {
    v33[0] = result;
    swift_allocObject();
    swift_unknownObjectWeakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5CE98, &qword_21DC18808);
    sub_21D0D0F1C(&qword_27CE62690, &qword_27CE5CE98, &qword_21DC18808, MEMORY[0x277CBCD90]);
    v29 = sub_21DBF92AC();

    *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationTriggerCancellable) = v29;
  }

  return result;
}

void sub_21D8203C4(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = *a1;
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 1835365481;
  *(inited + 40) = 0xE400000000000000;
  v24 = v7;
  v10 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  v12 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminder Detail select location quick pick {item: %@}", 53, 2, v12);

  if (v7 < 3)
  {
    v24 = v7;
    sub_21D81FFEC(&v24, 1);
    v13 = sub_21DBFA89C();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    sub_21DBFA84C();
    v14 = v2;
    v15 = sub_21DBFA83C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    v18 = &unk_21DC2B6A8;
LABEL_7:
    sub_21D1B5178(0, 0, v6, v18, v16);

    return;
  }

  if (v7 - 3 < 2)
  {
    v24 = v7;
    sub_21D81FFEC(&v24, 1);
    v19 = sub_21DBFA89C();
    (*(*(v19 - 8) + 56))(v6, 1, 1, v19);
    sub_21DBFA84C();
    v20 = v2;
    v21 = sub_21DBFA83C();
    v16 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    v16[2] = v21;
    v16[3] = v22;
    v16[4] = v20;
    v18 = &unk_21DC2B698;
    goto LABEL_7;
  }

  sub_21D8206E0(1);
}

void sub_21D8206E0(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 16);
  v10 = v9(ObjectType, v7);
  v11 = v9(ObjectType, v7);
  v12 = sub_21D7A5E9C();
  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    v14 = 0;
    goto LABEL_9;
  }

  v15 = v12;
  v16 = sub_21DBFBD7C();
  v12 = v15;
  if (!v16)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x223D44740](0);
    goto LABEL_6;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);
LABEL_6:
    v14 = v13;

LABEL_9:
    v17 = sub_21DBFA89C();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_21DBFA84C();
    v18 = v14;
    v19 = v2;
    v20 = v10;
    v21 = sub_21DBFA83C();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    *(v22 + 16) = v21;
    *(v22 + 24) = v23;
    *(v22 + 32) = v19;
    *(v22 + 40) = v20;
    *(v22 + 48) = v14;
    *(v22 + 56) = a1 & 1;
    sub_21D1B5178(0, 0, v6, &unk_21DC2B638, v22);

    return;
  }

  __break(1u);
}

uint64_t sub_21D820928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D8209C4, v6, v5);
}

uint64_t sub_21D8209C4(uint64_t a1)
{
  v1[7] = *(v1[2] + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_privacyChecker);
  v1[8] = sub_21DBFA83C();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_21D820A90;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D820A90()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D820BCC, v1, v0);
}

uint64_t sub_21D820BCC()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_21D820C78;

  return sub_21D591090();
}

uint64_t sub_21D820C78()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21D4592D0, v3, v2);
}

uint64_t sub_21D820D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D820E34, v6, v5);
}

uint64_t sub_21D820E34(uint64_t a1)
{
  *(v1 + 56) = sub_21DBFA83C();
  v2 = swift_task_alloc();
  *(v1 + 64) = v2;
  *v2 = v1;
  v2[1] = sub_21D453D84;

  return sub_21D591AA8(2, 1);
}

void sub_21D820EFC(unint64_t a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 16))(ObjectType, v4);
  v7 = [v6 alarms];

  if (!v7)
  {
    return;
  }

  sub_21D0D8CF0(0, &qword_280D17670, 0x277D44570);
  v8 = sub_21DBFA5EC();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_26:

    return;
  }

LABEL_25:
  v9 = sub_21DBFBD7C();
  if (!v9)
  {
    goto LABEL_26;
  }

LABEL_4:
  v30 = a1;
  v31 = v2;
  v10 = 0;
  a1 = v8 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x223D44740](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v11 = *(v8 + 8 * v10 + 32);
    }

    v12 = v11;
    v2 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v13 = [v11 trigger];
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v10;
    if (v2 == v9)
    {
      goto LABEL_26;
    }
  }

  v32 = [v12 trigger];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_27CE62470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = 28532;
    *(inited + 40) = 0xE200000000000000;
    aBlock[0] = v30;
    type metadata accessor for REMAlarmProximity(0);
    v18 = sub_21DBFA1AC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    v20 = sub_21D17716C(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
    sub_21DAEACDC("Reminder Detail Update Location Trigger Proximity {to: %@}", 58, 2, v20);

    v21 = [v15 structuredLocation];
    v22 = [objc_allocWithZone(MEMORY[0x277D44580]) initWithStructuredLocation:v21 proximity:v30];
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v23 = objc_opt_self();
    v24 = sub_21DBFA12C();

    v25 = swift_allocObject();
    *(v25 + 16) = v31;
    *(v25 + 24) = v22;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_21D830224;
    *(v26 + 24) = v25;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_178;
    v27 = _Block_copy(aBlock);
    v28 = v31;
    v29 = v22;

    [v23 withActionName:v24 block:{v27, 0x800000021DC4FC70}];

    _Block_release(v27);
    LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

    if (v29)
    {
      __break(1u);
    }
  }

  else
  {
  }
}

uint64_t sub_21D821498(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &aBlock[-1] - v5;
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 32) = 28532;
  v9 = inited + 32;
  v10 = a1 & 1;
  v11 = 1702195828;
  if ((a1 & 1) == 0)
  {
    v11 = 0x65736C6166;
  }

  v12 = 0xE500000000000000;
  if (a1)
  {
    v12 = 0xE400000000000000;
  }

  v13 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 72) = v13;
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = v11;
  *(inited + 56) = v12;
  v14 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(v9, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminder Detail Person Toggle {to: %@}", 38, 2, v14);

  v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state + 9] = v10;
  if (a1)
  {
    __swift_project_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
    v15 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v15 + 40) |= 1uLL;
    *(v15 + 48) = 0;
    v16._object = 0x800000021DC49D80;
    v16._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v16);

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v17 = objc_opt_self();
    v18 = sub_21DBFA12C();

    v19 = swift_allocObject();
    *(v19 + 16) = v2;
    *(v19 + 24) = v10;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_21D830284;
    *(v20 + 24) = v19;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_188_0;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    [v17 withActionName:v18 block:v21];

    _Block_release(v21);
    LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

    if (v18)
    {
      __break(1u);
    }

    else
    {
      v24 = sub_21DBFA89C();
      (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
      sub_21DBFA84C();
      v25 = v22;
      v26 = sub_21DBFA83C();
      v27 = swift_allocObject();
      v28 = MEMORY[0x277D85700];
      v27[2] = v26;
      v27[3] = v28;
      v27[4] = v25;
      sub_21D1B5178(0, 0, v6, &unk_21DC2B688, v27);
    }
  }

  else
  {
    v29 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
    ObjectType = swift_getObjectType();
    return (*(v29 + 232))(0, ObjectType, v29);
  }

  return result;
}

uint64_t sub_21D8219AC(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(ObjectType, v3);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a2;
  v8 = qword_27CE57608;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D830344;
  *(v9 + 24) = v7;
  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);

  sub_21DBFAE8C();
}

void sub_21D821B34(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_21D821498((a2 & 1) == 0);
  }
}

uint64_t sub_21D821B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_21DBFA84C();
  v4[4] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x2822009F8](sub_21D821C30, v6, v5);
}

uint64_t sub_21D821C30(uint64_t a1)
{
  v1[7] = *(v1[2] + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_privacyChecker);
  v1[8] = sub_21DBFA83C();
  v2 = swift_task_alloc();
  v1[9] = v2;
  *v2 = v1;
  v2[1] = sub_21D821CFC;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D821CFC()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D821E38, v1, v0);
}

uint64_t sub_21D821E38()
{

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_21D595B6C;

  return sub_21D5BA740(1);
}

uint64_t sub_21D821EE8(uint64_t a1)
{
  v2 = v1;
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62470);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = 28532;
  *(inited + 40) = 0xE200000000000000;
  aBlock[0] = a1;
  type metadata accessor for REMReminderPriorityLevel(0);
  v6 = sub_21DBFA1AC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_21D17716C(inited);
  swift_setDeallocating();
  sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
  sub_21DAEACDC("Reminder Detail Update Priority Level {to: %@}", 46, 2, v8);

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v9 = objc_opt_self();
  v10 = sub_21DBFA12C();

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_21D830084;
  *(v12 + 24) = v11;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_135;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  [v9 withActionName:v10 block:{v13, 0x800000021DC4F7F0}];

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21D82222C()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = [objc_allocWithZone(MEMORY[0x277CBDC18]) init];
    [v4 setDelegate_];
    sub_21D0D8CF0(0, &qword_27CE5A8E0, 0x277CCAC30);
    v3 = sub_21DBFADEC();
    [v4 setPredicateForEnablingContact_];

    [v2 presentViewController:v4 animated:1 completion:0];
  }
}

void sub_21D822344()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23[-v3 - 8];
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF84BC();
  __swift_project_value_buffer(v5, qword_27CE62470);
  v6 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Reminder Detail Show User Activity Phone Caller Contact", 55, 2, v6);

  sub_21D81D608(v4);
  v7 = type metadata accessor for TTRReminderDetailViewModel(0);
  if ((*(*(v7 - 8) + 48))(v4, 1, v7) == 1)
  {
    sub_21D0CF7E0(v4, &qword_27CE62270, &unk_21DC2B5E0);
  }

  else
  {
    v8 = &v4[*(v7 + 152)];
    v9 = *(v8 + 3);
    v25 = *(v8 + 2);
    v26 = v9;
    v27 = *(v8 + 8);
    v10 = *(v8 + 1);
    v24[0] = *v8;
    v24[1] = v10;
    sub_21D0D3954(v24, v23, &qword_27CE626B0, &unk_21DC1DC60);
    sub_21D82F904(v4, type metadata accessor for TTRReminderDetailViewModel);
    if (*&v24[0])
    {
      v11 = *(&v25 + 1);
      v13 = v26;
      v12 = v27;
      sub_21D3A1244(*(&v25 + 1), v26, *(&v26 + 1), v27);
      sub_21D0CF7E0(v24, &qword_27CE626B0, &unk_21DC1DC60);
      if (*(&v13 + 1) >= 2uLL)
      {
        v14 = v12;
        sub_21D3A22A8(v11, v13, *(&v13 + 1), v12);
        if (v12)
        {
          __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v16 = Strong;
            v17 = [objc_opt_self() viewControllerForContact_];
            sub_21D0D8CF0(0, &qword_280D0C300, 0x277D751E0);
            sub_21D0D8CF0(0, &qword_280D0C1D0, 0x277D750C8);
            swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_21DBFB77C();
            v18 = sub_21DBFAFCC();
            v19 = v17;
            v20 = [v19 navigationItem];
            [v20 setLeftBarButtonItem_];

            v21 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
            [v16 presentViewController:v21 animated:1 completion:0];
          }
        }
      }
    }
  }
}

void sub_21D822700(int a1, __int128 *a2)
{
  v3 = v2;
  v90 = a1;
  v5 = sub_21DBF647C();
  v94 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v89 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v92 = &v79 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v79 - v10;
  MEMORY[0x28223BE20](v12);
  v93 = &v79 - v13;
  v14 = a2[1];
  v111 = *a2;
  v112 = v14;
  v113[0] = a2[2];
  *(v113 + 9) = *(a2 + 41);
  v15 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v17 = *(v15 + 56);
  v91 = ObjectType;
  v17(&v95, ObjectType, v15);
  v18 = v95;
  v19 = v96;
  v101 = v95;
  v102 = v96;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(&v105);
  if (!*(&v106 + 1))
  {
    sub_21D0CF7E0(&v105, &qword_27CE59DC0, &qword_21DC0FBF0);

    return;
  }

  sub_21D0D0FD0(&v105, v108);

  v20 = v109;
  v21 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  v88 = (*(v21 + 16))(v20, v21);
  v22 = v109;
  v23 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  v24 = (*(v23 + 8))(v22, v23);
  if (!*(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration + 1))
  {
    v31 = (*(v15 + 32))(v91, v15);
    v32 = [v31 supportsSubtasks];

    if (v32)
    {
      v33 = MEMORY[0x277D45010];
    }

    else
    {
      v33 = MEMORY[0x277D45018];
    }

    (*(v94 + 104))(v93, *v33, v5);
LABEL_17:
    v36 = (v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router);
    __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
    Strong = swift_unknownObjectWeakLoadStrong();
    v85 = v24;
    v86 = v3;
    v84 = v36;
    if (Strong && (v38 = Strong, v105 = v111, v106 = v112, v107[0] = v113[0], *(v107 + 9) = *(v113 + 9), v39 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(&v105), v38, (v39 & 1) != 0))
    {
      v40 = v5;
      sub_21D0D3954(&v111, &v105, &qword_27CE5D558, &qword_21DC1CB50);
      v105 = v111;
      v106 = v112;
      v107[0] = v113[0];
      *(v107 + 9) = *(v113 + 9);
      v87 = 2;
    }

    else
    {
      v40 = v5;
      v87 = 0;
      *&v107[0] = 0;
      v105 = 0u;
      v106 = 0u;
      *(v107 + 8) = xmmword_21DC0A830;
      BYTE8(v107[1]) = 0;
    }

    v80 = *(v94 + 16);
    v80(v92, v93, v40);
    v41 = *(v15 + 16);
    v83 = v88;
    v42 = v41(v91, v15);
    v43 = [v42 saveRequest];

    v44 = [v43 store];
    v81 = v44;

    type metadata accessor for TTRReminderListPickerInteractor();
    v45 = swift_allocObject();
    *(v45 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v45 + 32) = v44;
    v46 = type metadata accessor for TTRIReminderListPickerRouter();
    v47 = swift_allocObject();
    v91 = v47;
    swift_unknownObjectWeakInit();
    v48 = v89;
    v49 = v80;
    v80(v89, v92, v40);
    *(&v96 + 1) = v46;
    *&v97[0] = &off_282EAAAD8;
    *&v95 = v47;
    type metadata accessor for TTRIReminderListPickerPresenter(0);
    v50 = swift_allocObject();
    v51 = __swift_mutable_project_boxed_opaque_existential_1(&v95, v46);
    v82 = &v79;
    v52 = MEMORY[0x28223BE20](v51);
    v54 = (&v79 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54, v52);
    v56 = *v54;
    v103 = v46;
    v104 = &off_282EAAAD8;
    *&v101 = v56;
    *(v50 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v50 + 48) = 0;
    *(v50 + 80) = 0;
    v88 = (v50 + 80);
    *(v50 + 56) = -1;
    *(v50 + 88) = 0;
    *(v50 + 96) = v45;
    *(v50 + 104) = &protocol witness table for TTRReminderListPickerInteractor;
    sub_21D0D32E4(&v101, v50 + 112);
    v57 = v40;
    v49(v50 + OBJC_IVAR____TtC15RemindersUICore31TTRIReminderListPickerPresenter_mode, v48, v40);
    v58 = v83;
    *(v50 + 64) = v83;
    *(v50 + 72) = 0;
    *(v50 + OBJC_IVAR____TtC15RemindersUICore31TTRIReminderListPickerPresenter_reminders) = 0;
    v59 = v58;
    v60 = v58;
    v61 = v85;
    v81 = v81;

    v62 = TTRReminderListPickerInteractor.fetchAccounts(for:includeSmartLists:)(v48, 1);
    if (v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = MEMORY[0x277D84F90];
    }

    v100 = v59;
    v64 = v60;
    TTRReminderListPickerViewModel.init(accounts:customSmartListPredicate:disabledListID:)(v63, &v100, 0, &v98);
    v65 = v99;
    *(v50 + 32) = v98;
    *(v50 + 40) = v65;
    v85 = v61;
    sub_21D1B33D4(v61, &v98);

    v66 = *(v94 + 8);
    v67 = v57;
    v66(v48, v57);
    __swift_destroy_boxed_opaque_existential_0(&v101);
    v68 = v99;
    v69 = *(v50 + 48);
    *(v50 + 48) = v98;
    v70 = *(v50 + 56);
    *(v50 + 56) = v68;
    sub_21D157864(v69, v70);
    __swift_destroy_boxed_opaque_existential_0(&v95);
    v71 = objc_allocWithZone(type metadata accessor for TTRIReminderListPickerViewController());

    v73 = sub_21D1B29E8(v72, v87, v71);

    v66(v92, v57);
    swift_beginAccess();
    *(v45 + 24) = &off_282EAACA8;
    swift_unknownObjectWeakAssign();

    *(v50 + 24) = &off_282EAAB78;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();

    v74 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v75 = v88;
    swift_beginAccess();
    v76 = *v75;
    v77 = v75;
    v78 = *(v50 + 88);
    *v77 = sub_21D83016C;
    *(v50 + 88) = v74;

    sub_21D0D0E88(v76, v78);

    __swift_project_boxed_opaque_existential_1(v84, v84[3]);
    v95 = v105;
    v96 = v106;
    v97[0] = v107[0];
    *(v97 + 9) = *(v107 + 9);
    sub_21D81A794(v73, v90 & 1, &v95);

    v66(v93, v67);
    sub_21D0CF7E0(&v105, &qword_27CE5D558, &qword_21DC1CB50);
    goto LABEL_25;
  }

  if (*(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration + 1) == 1)
  {
    v25 = (*(v15 + 16))(v91, v15);
    v26 = [v25 attachmentContext];

    if (v26)
    {
      v27 = [v26 imageAttachments];

      sub_21D0D8CF0(0, &qword_280D0C290, 0x277D44658);
      v28 = sub_21DBFA5EC();

      if (v28 >> 62)
      {
        v34 = sub_21DBFBD7C();

        if (v34)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v29)
        {
LABEL_7:
          v30 = MEMORY[0x277D45010];
LABEL_16:
          v35 = v94;
          (*(v94 + 104))(v11, *v30, v5);
          (*(v35 + 32))(v93, v11, v5);
          goto LABEL_17;
        }
      }
    }

    v30 = MEMORY[0x277D45018];
    goto LABEL_16;
  }

LABEL_25:
  __swift_destroy_boxed_opaque_existential_0(v108);
}

char *sub_21D8230F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    __swift_project_boxed_opaque_existential_1(&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router], *&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = [Strong navigationController];
      if (v9)
      {
        v10 = v9;
      }
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v11 = objc_opt_self();
    v12 = sub_21DBFA12C();

    v13 = swift_allocObject();
    *(v13 + 16) = v3;
    *(v13 + 24) = v4;
    *(v13 + 32) = v6;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_21D830174;
    *(v14 + 24) = v13;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_168_0;
    v15 = _Block_copy(aBlock);
    v16 = v3;
    v17 = v6;

    [v11 withActionName:v12 block:{v15, 0x800000021DC501F0}];

    _Block_release(v15);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_21D8233E0(uint64_t a1, char a2, uint64_t a3)
{
  v6 = &unk_27CE62000;
  if (a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = -1;
    v13 = 1;
  }

  else
  {
    v14 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v16 = *(v14 + 16);
    v17 = v16(ObjectType, v14);
    v18 = [v17 parentReminderID];

    if (!v18)
    {
      v19 = v16(ObjectType, v14);
      v18 = [v19 objectID];
    }

    REMList.fetchSectionLite(containingReminderWith:)(v18, &v38);

    v8 = *(&v38 + 1);
    v13 = v38;
    v20 = v39;
    v21 = v40;
    v22 = v41;
    if (v38 == 1)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = -1;
      v6 = &unk_27CE62000;
    }

    else
    {
      v6 = &unk_27CE62000;
      if (v38)
      {
        sub_21D8301D4(v38, *(&v38 + 1), v39, v40, v41);
        v12 = 0;
        v7 = v13;
        v9 = v20;
        v10 = v21;
        v11 = v22;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = 0;
        v12 = 2;
        v7 = 0;
      }
    }
  }

  v23 = a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility;
  v24 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  v25 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8);
  v26 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16);
  v27 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24);
  v28 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32);
  *v23 = v7;
  *(v23 + 8) = v8;
  *(v23 + 16) = v9;
  *(v23 + 24) = v10;
  *(v23 + 32) = v11;
  v29 = *(v23 + 40);
  *(v23 + 40) = v12;
  sub_21D7A98A0(v24, v25, v26, v27, v28, v29);
  v30 = *(a3 + v6[147] + 8);
  v31 = swift_getObjectType();
  *&v38 = a1;
  BYTE8(v38) = a2 & 1;
  (*(v30 + 104))(&v38, v31, v30);
  if (v13 != 1)
  {
    *&v38 = v13;
    v32 = (a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility);
    v33 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40);
    v34 = 1;
    if (v33 > 1)
    {
      v34 = v33 != 2;
    }

    else if (!v33)
    {
      v34 = *v32;
      v35 = *v32;
    }

    v42 = v34;
    v36 = *(v30 + 264);
    v37 = v13;
    v36(&v38, &v42, v31, v30);
    sub_21D830184(v13);
    sub_21D157878(v42);
  }
}

uint64_t sub_21D823694(int a1, __int128 *a2)
{
  v81 = a1;
  v79 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v79);
  v80 = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a2[1];
  v103 = *a2;
  v104 = v5;
  v105[0] = a2[2];
  *(v105 + 9) = *(a2 + 41);
  v6 = (v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 40) > 1u)
  {
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 40) == 2)
    {
      v82 = 0;
      v9 = 0;
      v76 = 0;
      v86 = 0;
      goto LABEL_9;
    }

    v82 = 0;
    v9 = 0;
    v76 = 0;
  }

  else
  {
    v7 = *v6;
    if (!*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 40))
    {
      v86 = *v6;
      v8 = v7;
      v82 = 0;
      v9 = 0;
      v76 = 0;
      goto LABEL_9;
    }

    v10 = v6[3];
    v11 = v6[4];
    v9 = v6[1];
    v12 = v6[2];
    v76 = v6[2] & 1;
    sub_21D7A9844(v7, v9, v12, v10, v11, 1);
    v82 = v7;
  }

  v86 = 1;
LABEL_9:
  v84 = v2;
  v85 = v9;
  v13 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  (*(v13 + 56))(&v96, ObjectType, v13);
  v15 = v96;
  v16 = v97;
  v92 = v96;
  *&v93 = v97;
  TTRReminderDetailPendingMoveInteractorCapability.EffectiveList.listForHostingReminder.getter(v102);

  sub_21D0D3954(v102, &v96, &qword_27CE59DC0, &qword_21DC0FBF0);
  v17 = *(&v97 + 1);
  if (*(&v97 + 1))
  {
    v18 = *&v98[0];
    __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
    (*(v18 + 112))(v100, v17, v18);
    __swift_destroy_boxed_opaque_existential_0(&v96);
  }

  else
  {
    sub_21D0CF7E0(&v96, &qword_27CE59DC0, &qword_21DC0FBF0);
    memset(v100, 0, sizeof(v100));
    v101 = 0;
  }

  sub_21D0D3954(v100, &v92, &qword_27CE5A6E8, &unk_21DC187C0);
  v19 = v86;
  v20 = v84;
  if (*(&v93 + 1))
  {
    sub_21D0D0FD0(&v92, &v96);
    v21 = *(&v97 + 1);
    v22 = *&v98[0];
    __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
    if ((*(v22 + 16))(v21, v22))
    {
      v23 = *(&v97 + 1);
      v24 = *&v98[0];
      __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
      v25 = (*(v24 + 8))(v23, v24);
      v27 = v26;
      if (v26)
      {
        v74 = v25;
        __swift_destroy_boxed_opaque_existential_0(&v96);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v96);
        v74 = 0;
      }

      goto LABEL_19;
    }

    __swift_destroy_boxed_opaque_existential_0(&v96);
  }

  else
  {
    sub_21D0CF7E0(&v92, &qword_27CE5A6E8, &unk_21DC187C0);
  }

  v74 = 0;
  v27 = 0;
LABEL_19:
  v28 = *(v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24);
  v78 = (v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router);
  __swift_project_boxed_opaque_existential_1((v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), v28);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v96 = v103;
    v97 = v104;
    v98[0] = v105[0];
    *(v98 + 9) = *(v105 + 9);
    v77 = UIViewController.canPresentDCIDrillinPopover(withAnchor:)(&v96);
  }

  else
  {
    v77 = 0;
  }

  v31 = (*(v13 + 16))(ObjectType, v13);
  v32 = [v31 saveRequest];

  v33 = [v32 store];
  v34 = v20 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v34 + 8);
    v36 = swift_getObjectType();
    v37 = *(v35 + 40);
    sub_21D15751C(v19);
    v37(&v96, v36, v35);
    swift_unknownObjectRelease();
    v38 = v96;
  }

  else
  {
    sub_21D15751C(v19);
    v38 = 0;
  }

  sub_21D0D3954(v102, &v96, &qword_27CE59DC0, &qword_21DC0FBF0);
  type metadata accessor for TTRIReminderSectionPickerInteractor();
  swift_allocObject();
  v75 = v33;
  v39 = TTRIReminderSectionPickerInteractor.init(store:ttrList:)(v75, &v96);
  type metadata accessor for TTRIReminderSectionPickerRouter();
  v40 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_21D15751C(v19);
  v41 = qword_280D1AA10;

  v83 = v40;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v41 != -1)
  {
    swift_once();
  }

  v42 = qword_280D1AA18;
  v99[3] = type metadata accessor for TTRUserDefaults();
  v99[4] = &protocol witness table for TTRUserDefaults;
  v99[0] = v42;
  type metadata accessor for TTRIReminderSectionPickerPresenter();
  v43 = swift_allocObject();
  *(v43 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v43 + 32) = 0u;
  *(v43 + 48) = 0u;
  v44 = qword_280D1BAA8;
  v45 = v42;
  v46 = v76;
  if (v44 != -1)
  {
    swift_once();
  }

  v47 = sub_21DBF516C();
  *(v43 + 120) = 0;
  *(v43 + 128) = v47;
  *(v43 + 136) = v48;
  *(v43 + 144) = 0;
  v49 = MEMORY[0x277D84F90];
  *(v43 + 152) = 0;
  *(v43 + 160) = v49;
  *(v43 + 168) = v49;
  *(v43 + 176) = v49;
  v50 = v83;
  *(v43 + 184) = v39;
  *(v43 + 192) = v50;

  sub_21D157878(1);
  v51 = v86;
  if (v86 != 1)
  {
    if (!v85)
    {
      v55 = v86;
      v54 = 0;
      v53 = 1;
      goto LABEL_38;
    }

LABEL_36:
    v51 = 0;
    v54 = 0;
    v53 = 3;
    goto LABEL_38;
  }

  if (!v85)
  {
    goto LABEL_36;
  }

  v52 = sub_21DBF8E0C();
  if (v46)
  {
    v53 = 2;
  }

  else
  {
    v53 = 0;
  }

  v51 = v82;
  v54 = v52;
LABEL_38:
  sub_21D5E903C(0, 0, 3);
  v56 = v82;
  *(v43 + 64) = v86;
  *(v43 + 72) = v56;
  *(v43 + 80) = v85;
  *(v43 + 88) = v46;
  *(v43 + 96) = v51;
  *(v43 + 104) = v54;
  *(v43 + 112) = v53;
  *(v43 + 208) = v74;
  *(v43 + 216) = v27;
  v73[1] = v27;
  *(v43 + 113) = v38 & 1;
  sub_21D0D32E4(v99, v43 + 224);
  type metadata accessor for TTRMainActorDeferredAction();
  v57 = swift_allocObject();
  v57[3] = 0;
  swift_unknownObjectWeakInit();
  *&v96 = v49;
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0D0F1C(&qword_280D0C3D0, &unk_27CE5CD90, &unk_21DC0F180, MEMORY[0x277D83970]);
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v57[4] = sub_21DBF5EEC();
  v57[5] = v49;
  *(v43 + 200) = v57;
  swift_beginAccess();
  v57[3] = &off_282EC7718;
  swift_unknownObjectWeakAssign();
  sub_21D5EA030(&v92);

  __swift_destroy_boxed_opaque_existential_0(v99);
  v58 = *(v43 + 136);
  v96 = *(v43 + 120);
  v97 = v58;
  v59 = *(v43 + 168);
  v98[0] = *(v43 + 152);
  v98[1] = v59;
  v60 = v93;
  *(v43 + 120) = v92;
  *(v43 + 136) = v60;
  v61 = v95;
  *(v43 + 152) = v94;
  *(v43 + 168) = v61;
  sub_21D5E8CE0(&v96);
  v62 = objc_allocWithZone(type metadata accessor for TTRIReminderSectionPickerViewController());

  v64 = v77;
  v65 = sub_21D82E4B8(v63, v77 & 1, v62);
  swift_beginAccess();
  *(v39 + 24) = &off_282EC7728;
  swift_unknownObjectWeakAssign();
  *(v43 + 24) = &off_282EC72F8;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  TTRIReminderSectionPickerInteractor.start()();

  sub_21D157878(v86);

  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = *(v43 + 32);
  v68 = *(v43 + 40);
  *(v43 + 32) = sub_21D8300E4;
  *(v43 + 40) = v66;

  sub_21D0D0E88(v67, v68);

  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v70 = *(v43 + 48);
  v71 = *(v43 + 56);
  *(v43 + 48) = sub_21D8300EC;
  *(v43 + 56) = v69;

  sub_21D0D0E88(v70, v71);

  if (v64)
  {
    sub_21D0D3954(&v103, &v89, &qword_27CE5D558, &qword_21DC1CB50);
    v89 = v103;
    v90 = v104;
    v91[0] = v105[0];
    *(v91 + 9) = *(v105 + 9);
  }

  else
  {
    *&v91[0] = 0;
    v89 = 0u;
    v90 = 0u;
    *(v91 + 8) = xmmword_21DC0A830;
    BYTE8(v91[1]) = 0;
  }

  __swift_project_boxed_opaque_existential_1(v78, v78[3]);
  v87[0] = v89;
  v87[1] = v90;
  v88[0] = v91[0];
  *(v88 + 9) = *(v91 + 9);
  sub_21D81A794(v65, v81 & 1, v87);

  sub_21D157878(v86);
  sub_21D0CF7E0(v100, &qword_27CE5A6E8, &unk_21DC187C0);
  sub_21D0CF7E0(v102, &qword_27CE59DC0, &qword_21DC0FBF0);
  return sub_21D0CF7E0(&v89, &qword_27CE5D558, &qword_21DC1CB50);
}

char *sub_21D82414C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21DBF6F4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &aBlock[-1] - v9;
  v11 = *a2;
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    if (v11)
    {
      sub_21DBF8E0C();
      v16 = 0;
      v17 = 0;
      v18 = v11;
    }

    else
    {
      v19 = *MEMORY[0x277D453D8];
      (*(v5 + 104))(v10, *MEMORY[0x277D453D8], v4);
      (*(v5 + 16))(v7, v10, v4);
      v20 = (*(v5 + 88))(v7, v4);
      if (v20 == *MEMORY[0x277D453E0])
      {
        (*(v5 + 8))(v10, v4);
        (*(v5 + 96))(v7, v4);
        v18 = *v7;
        v12 = *(v7 + 1);
        v13 = *(v7 + 2);
        v16 = *(v7 + 3);
        v17 = *(v7 + 4);
      }

      else
      {
        if (v20 != v19)
        {
          goto LABEL_18;
        }

        (*(v5 + 8))(v10, v4);
        v18 = 0;
        v12 = 0;
        v13 = 0;
        v16 = 0;
        v17 = 0;
      }
    }

    __swift_project_boxed_opaque_existential_1(&v15[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router], *&v15[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24]);
    Strong = swift_unknownObjectWeakLoadStrong();
    v22 = v11;
    if (Strong)
    {
      v23 = [Strong navigationController];
      if (v23)
      {
        v24 = v23;
      }
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v34 = objc_opt_self();
    v25 = sub_21DBFA12C();

    v26 = swift_allocObject();
    v26[2] = v15;
    v26[3] = v18;
    v26[4] = v12;
    v26[5] = v13;
    v26[6] = v16;
    v26[7] = v17;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_21D830104;
    *(v27 + 24) = v26;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v27;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_157;
    v28 = _Block_copy(aBlock);
    sub_21DBF8E0C();

    v29 = v15;
    v30 = v18;
    sub_21DBF8E0C();

    [v34 withActionName:v25 block:v28];

    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(&v29[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&v29[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
      v32 = sub_21D1DD1FC();
      swift_beginAccess();
      *(v32 + 40) |= 1uLL;
      *(v32 + 48) = 0;
      v33._object = 0x800000021DC49D80;
      v33._countAndFlagsBits = 0xD000000000000017;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v33);
    }

    __break(1u);
LABEL_18:
    result = sub_21DBFC63C();
    __break(1u);
  }

  return result;
}

void sub_21D8246A0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2)
  {
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    sub_21D830110(a2, v23);
    v4 = v21;
    v5 = v22;
    v6 = 0;
  }

  else
  {
    v4 = 0uLL;
    v6 = 2;
    v5 = 0uLL;
  }

  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility;
  v8 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  v9 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8);
  v10 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16);
  v11 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24);
  v12 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32);
  *v7 = v3;
  *(v7 + 8) = v4;
  *(v7 + 24) = v5;
  v13 = *(v7 + 40);
  *(v7 + 40) = v6;
  sub_21D7A98A0(v8, v9, v10, v11, v12, v13);
  v14 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  v23[0] = v3;
  v15 = (a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility);
  v16 = 1;
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40) > 1u)
  {
    v16 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40) != 2;
  }

  else if (!*(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40))
  {
    v16 = *v15;
    v17 = *v15;
  }

  ObjectType = swift_getObjectType();
  v24 = v16;
  v19 = *(v14 + 264);
  v20 = v3;
  v19(v23, &v24, ObjectType, v14);
  sub_21D157878(v24);
}

char *sub_21D8247D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router], *&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24]);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong navigationController];
      if (v12)
      {
        v13 = v12;
      }
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v14 = objc_opt_self();
    v15 = sub_21DBFA12C();

    v16 = swift_allocObject();
    *(v16 + 16) = v9;
    *(v16 + 24) = a2;
    *(v16 + 32) = a3;
    *(v16 + 40) = a4 & 1;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_21D8300F4;
    *(v17 + 24) = v16;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_147_0;
    v18 = _Block_copy(aBlock);
    v19 = v9;
    sub_21DBF8E0C();

    [v14 withActionName:v15 block:{v18, 0x800000021DC506C0}];

    _Block_release(v18);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v19[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&v19[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
      v21 = sub_21D1DD1FC();
      swift_beginAccess();
      *(v21 + 40) |= 1uLL;
      *(v21 + 48) = 0;
      v22._object = 0x800000021DC49D80;
      v22._countAndFlagsBits = 0xD000000000000017;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v22);
    }
  }

  return result;
}

void sub_21D824B38(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility;
  v8 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  v9 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8);
  v10 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16);
  v11 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24);
  v12 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32);
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4 & 1;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  v13 = *(v7 + 40);
  v14 = 1;
  *(v7 + 40) = 1;
  sub_21DBF8E0C();
  sub_21D7A98A0(v8, v9, v10, v11, v12, v13);
  v15 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  v16 = (a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility);
  if (*(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40) > 1u)
  {
    v14 = *(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40) != 2;
  }

  else if (!*(a1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40))
  {
    v14 = *v16;
    v17 = *v16;
  }

  ObjectType = swift_getObjectType();
  v21 = v14;
  (*(v15 + 272))(a2, a3, a4 & 1, &v21, ObjectType, v15);
  v19 = v21;

  sub_21D157878(v19);
}

uint64_t sub_21D824C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 96) = a7;
  *(v7 + 16) = a4;
  *(v7 + 24) = a5;
  *(v7 + 32) = sub_21DBFA84C();
  *(v7 + 40) = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  *(v7 + 48) = v9;
  *(v7 + 56) = v8;

  return MEMORY[0x2822009F8](sub_21D824D14, v9, v8);
}

uint64_t sub_21D824D14(uint64_t a1)
{
  v1[8] = *(v1[2] + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_privacyChecker);
  v1[9] = sub_21DBFA83C();
  v2 = swift_task_alloc();
  v1[10] = v2;
  *v2 = v1;
  v2[1] = sub_21D824DE4;

  return sub_21D591AA8(2, 1);
}

uint64_t sub_21D824DE4()
{

  v1 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D824F20, v1, v0);
}

uint64_t sub_21D824F20()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_21D824FCC;

  return sub_21D591090();
}

uint64_t sub_21D824FCC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_21D8250EC, v3, v2);
}

uint64_t sub_21D8250EC()
{
  v1 = *(v0 + 96);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v4 = __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
  v5 = *(v3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 8))(ObjectType, v5);
  sub_21D82F2A4(v2, v1, v3, v7, *v4);

  v8 = *(v0 + 8);

  return v8();
}

void sub_21D8251CC(char a1)
{
  v4 = *(&v1->isa + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor);
  v3 = *(&v1[1].isa + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor);
  ObjectType = swift_getObjectType();
  v8 = (*(v3 + 16))(ObjectType, v3);
  v6 = [v8 accountCapabilities];
  v7 = [v6 supportsSubtasks];

  if (v7)
  {
    __swift_project_boxed_opaque_existential_1((&v1->isa + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(&v1[3].isa + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router));
    sub_21D81B334(v4, v3, a1 & 1, v1, &off_282ED4F50);
  }
}

void sub_21D8252C0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v61 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for TTRReminderDetailViewModel(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_21DBF54CC();
  v58 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v57 = &v52 - v17;
  v18 = *(a1 + 24);
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (v19)
  {
    v20 = v19;
    v54 = v18;
    v21 = [v20 fileURL];
    if (v21)
    {
      v22 = v57;
      v23 = v21;
      sub_21DBF546C();

      sub_21D81D608(v10);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        (*(v58 + 8))(v22, v63);

        sub_21D0CF7E0(v10, &qword_27CE62270, &unk_21DC2B5E0);
        return;
      }

      sub_21D82F96C(v10, v14, type metadata accessor for TTRReminderDetailViewModel);
      v25 = *&v14[*(v11 + 128)];
      if (v25)
      {
        v52 = v1;
        v53 = v14;
        v62 = *(v25 + 16);
        if (v62)
        {
          v26 = 0;
          v27 = (v58 + 56);
          v55 = (v58 + 32);
          v56 = (v58 + 48);
          v28 = (v25 + 56);
          v59 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v26 >= *(v25 + 16))
            {
              __break(1u);
              return;
            }

            v29 = *(v28 - 3);
            v30 = *v28;
            objc_opt_self();
            v31 = swift_dynamicCastObjCClass();
            if (v31)
            {
              v32 = v31;
              v33 = v25;
              v34 = v29;
              sub_21DBF8E0C();
              v35 = v30;
              v36 = [v32 fileURL];
              if (v36)
              {
                v37 = v61;
                v38 = v36;
                sub_21DBF546C();

                v39 = 0;
              }

              else
              {
                v39 = 1;
                v37 = v61;
              }

              v40 = v39;
              v41 = v63;
              (*v27)(v37, v40, 1, v63);
              sub_21D57690C(v37, v7);
              v25 = v33;
              if ((*v56)(v7, 1, v41) != 1)
              {
                v42 = *v55;
                (*v55)(v60, v7, v63);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v59 = sub_21D212DAC(0, *(v59 + 2) + 1, 1, v59);
                }

                v44 = *(v59 + 2);
                v43 = *(v59 + 3);
                if (v44 >= v43 >> 1)
                {
                  v59 = sub_21D212DAC((v43 > 1), v44 + 1, 1, v59);
                }

                v45 = v58;
                v46 = v59;
                *(v59 + 2) = v44 + 1;
                v42(&v46[((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v44], v60, v63);
                v25 = v33;
                goto LABEL_13;
              }
            }

            else
            {
              (*v27)(v7, 1, 1, v63);
            }

            sub_21D0CF7E0(v7, &qword_27CE5EA20, &qword_21DC0D4A0);
LABEL_13:
            ++v26;
            v28 += 4;
            if (v62 == v26)
            {
              goto LABEL_27;
            }
          }
        }

        v59 = MEMORY[0x277D84F90];
LABEL_27:
        v47 = v57;
        v48 = v59;
        v49 = sub_21D6D8D9C(v57, v59);
        v14 = v53;
        if ((v50 & 1) == 0)
        {
          v51 = v49;
          __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v52 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
          sub_21D81B800(v48, v51);

          (*(v58 + 8))(v47, v63);
          goto LABEL_31;
        }

        (*(v58 + 8))(v47, v63);
      }

      else
      {
        (*(v58 + 8))(v57, v63);
      }

LABEL_31:
      sub_21D82F904(v14, type metadata accessor for TTRReminderDetailViewModel);
      return;
    }

    v24 = v54;
  }
}

uint64_t sub_21D825944()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  if ((*(v2 + 80))(ObjectType, v2))
  {
    return 1;
  }

  v4 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 8);
  v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 16);
  v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 24);
  v7 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 32);
  v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 40);
  v22 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility);
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v9 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  v10 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8);
  v11 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16);
  v12 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24);
  v13 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32);
  v14 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 40);
  v16 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  sub_21D7A9830(v22, v4, v5, v6, v7, v8);
  sub_21D7A9830(v9, v10, v11, v12, v13, v14);
  LOBYTE(v9) = _s15RemindersUICore26TTRReminderDetailViewModelV23SectionPickerVisibilityO2eeoiySbAE_AEtFZ_0(&v22, &v16);
  sub_21D7A98A0(v16, v17, v18, v19, v20, v21);
  sub_21D7A98A0(v22, v23, v24, v25, v26, v27);
  if (v9 & 1) == 0 || (sub_21D825A98(v1) & 1) != 0 || (sub_21D825C94(v1))
  {
    return 1;
  }

  else
  {
    return *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_subtasksDidUpdate);
  }
}

uint64_t sub_21D825A98(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = sub_21D80A708();
    swift_unknownObjectRelease();
    v2 = *(v1 + 32);

    v3 = qword_27CE8EBC8;
    swift_beginAccess();
    if (*&v2[v3])
    {
      sub_21D0D3954(&v2[v3], v12, &qword_27CE5E8E0, &unk_21DC2B600);

      v4 = *(&v12[0] + 1);
      swift_unknownObjectRetain();
      sub_21D0CF7E0(v12, &qword_27CE5E8E0, &unk_21DC2B600);
      ObjectType = swift_getObjectType();
      (*(*(v4 + 8) + 32))(v12, ObjectType);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
LABEL_6:
  sub_21D0D3954(v12, &v17, &qword_27CE62670, &qword_21DC1D4E8);
  if (v18)
  {
    sub_21D0D0FD0(&v17, v14);
    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    if ((*(v7 + 16))(v6, v7))
    {
      v8 = v15;
      v9 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v10 = (*(v9 + 32))(v8, v9);
    }

    else
    {
      v10 = 0;
    }

    sub_21D0CF7E0(v12, &qword_27CE62670, &qword_21DC1D4E8);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_21D0CF7E0(v12, &qword_27CE62670, &qword_21DC1D4E8);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_21D825C94(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = sub_21D80B484();
    swift_unknownObjectRelease();
    v2 = *(v1 + 32);

    v3 = qword_27CE8EBF0;
    swift_beginAccess();
    if (*&v2[v3])
    {
      sub_21D0D3954(&v2[v3], v12, &qword_27CE5E8F8, &qword_21DC1D4E0);

      v4 = *(&v12[0] + 1);
      swift_unknownObjectRetain();
      sub_21D0CF7E0(v12, &qword_27CE5E8F8, &qword_21DC1D4E0);
      ObjectType = swift_getObjectType();
      (*(v4 + 56))(v12, ObjectType, v4);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
LABEL_6:
  sub_21D0D3954(v12, &v17, &unk_27CE62660, &qword_21DC1D4D8);
  if (v18)
  {
    sub_21D0D0FD0(&v17, v14);
    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    if ((*(v7 + 8))(v6, v7))
    {
      v8 = v15;
      v9 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v10 = (*(v9 + 16))(v8, v9);
    }

    else
    {
      v10 = 0;
    }

    sub_21D0CF7E0(v12, &unk_27CE62660, &qword_21DC1D4D8);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    sub_21D0CF7E0(v12, &unk_27CE62660, &qword_21DC1D4D8);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_21D825E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = sub_21DBFA84C();
  *(v5 + 24) = sub_21DBFA83C();
  *(v5 + 41) = a5 & 1;
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  *v7 = v5;
  v7[1] = sub_21D1B4BCC;

  return sub_21D825F60(v5 + 40, (v5 + 41));
}

uint64_t sub_21D825F60(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 74) = *a2;
  sub_21DBFA84C();
  *(v3 + 32) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x2822009F8](sub_21D826000, v5, v4);
}

uint64_t sub_21D826000()
{
  v16 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState;
  *(v0 + 56) = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState;
  if (*(v1 + v2))
  {

    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v1 + v2) = 1;
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE62470);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 74);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      if (v8)
      {
        v11 = 0x6574736575716572;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (v8)
      {
        v12 = 0xE900000000000064;
      }

      else
      {
        v12 = 0x800000021DC62270;
      }

      v13 = sub_21D0CDFB4(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Reminder Detail cancel editing {dismissalState: %s}", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    *(v0 + 73) = *(v0 + 74);
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_21D5BF194;

    return sub_21D829C04(v0 + 72, (v0 + 73));
  }
}

void sub_21D826274(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20[-v4];
  if (!v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState])
  {
    v6 = *a1;
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v7 = sub_21DBF84BC();
    __swift_project_value_buffer(v7, qword_27CE62470);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5A6A0, &unk_21DC0FAF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v9 = *&v1[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8];
    ObjectType = swift_getObjectType();
    v11 = v1;
    v12 = (*(v9 + 16))(ObjectType, v9);
    v13 = [v12 objectID];

    *(inited + 72) = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    *(inited + 48) = v13;
    v14 = sub_21D17716C(inited);
    swift_setDeallocating();
    sub_21D0CF7E0(inited + 32, &qword_27CE5A6B0, &qword_21DC0F190);
    sub_21DAEACDC("Reminder Detail Commit {objectID: %@}", 37, 2, v14);

    v15 = sub_21DBFA89C();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    sub_21DBFA84C();
    v16 = v11;
    v17 = sub_21DBFA83C();
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v17;
    *(v18 + 24) = v19;
    *(v18 + 32) = v16;
    *(v18 + 40) = v6;
    sub_21D1B5178(0, 0, v5, &unk_21DC2B670, v18);
  }
}

uint64_t sub_21D826528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = sub_21DBFA84C();
  *(v5 + 24) = sub_21DBFA83C();
  *(v5 + 41) = a5 & 1;
  v7 = swift_task_alloc();
  *(v5 + 32) = v7;
  *v7 = v5;
  v7[1] = sub_21D0EF998;

  return sub_21D8265F8(v5 + 40, (v5 + 41));
}

uint64_t sub_21D8265F8(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 74) = *a2;
  sub_21DBFA84C();
  *(v3 + 32) = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  *(v3 + 40) = v5;
  *(v3 + 48) = v4;

  return MEMORY[0x2822009F8](sub_21D826698, v5, v4);
}

uint64_t sub_21D826698()
{
  v16 = v0;
  v1 = *(v0 + 24);
  v2 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState;
  *(v0 + 56) = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState;
  if (*(v1 + v2))
  {

    **(v0 + 16) = 1;
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    *(v1 + v2) = 1;
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE62470);
    v6 = sub_21DBF84AC();
    v7 = sub_21DBFAEDC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 74);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      if (v8)
      {
        v11 = 0x6574736575716572;
      }

      else
      {
        v11 = 0xD000000000000011;
      }

      if (v8)
      {
        v12 = 0xE900000000000064;
      }

      else
      {
        v12 = 0x800000021DC62270;
      }

      v13 = sub_21D0CDFB4(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_21D0C9000, v6, v7, "Reminder Detail commit editing {dismissalState: %s}", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);
    }

    *(v0 + 73) = *(v0 + 74);
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_21D5BFB00;

    return sub_21D8295A8(v0 + 72, (v0 + 73));
  }
}

char *sub_21D82690C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    *&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationTriggerCancellable] = 0;

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    sub_21DBF516C();
    v6 = objc_opt_self();
    v7 = sub_21DBFA12C();

    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    *(v8 + 24) = v3;
    *(v8 + 32) = v5;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_21D82F8AC;
    *(v9 + 24) = v8;
    aBlock[4] = sub_21D0E622C;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_87_1;
    v10 = _Block_copy(aBlock);
    v11 = v2;
    v12 = v5;

    [v6 withActionName:v7 block:{v10, 0x800000021DC4FB50}];

    _Block_release(v10);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21D826BA4(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *(a3 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  if (a2)
  {
    return (*(v5 + 192))(a1, ObjectType, v5);
  }

  else
  {
    return (*(v5 + 184))(a1, ObjectType, v5);
  }
}

char *sub_21D826C30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
    v4 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v4 + 48) = 0;
    v5._object = 0x800000021DC49D80;
    v5._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v5);
  }

  return result;
}

char *sub_21D826CF4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    __swift_project_boxed_opaque_existential_1(&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
    v3 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v3 + 48) = 0;
    v4._object = 0x800000021DC49D80;
    v4._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v4);
  }

  return result;
}

void sub_21D826DB0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 16);
  if (v5 >= 2)
  {
    v6 = *a1;
  }

  else
  {
    v6 = *(a1 + 8);
  }

  sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
  v7 = v6;
  v8 = [a2 objectID];
  v9 = sub_21DBFB63C();

  if (v9)
  {
    if (v5)
    {
      if (v5 == 1)
      {

        sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
        v10 = sub_21DBFB12C();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
        sub_21DBF820C();
      }

      v4 = 0;
    }

    else
    {
      v15 = v4;
    }

    if (qword_27CE56C98 != -1)
    {
      swift_once();
    }

    v17 = qword_27CE61920;
    v16 = *algn_27CE61928;
    *a3 = v4;
    a3[1] = v17;
    a3[2] = v16;
    a3[3] = a2;
    sub_21DBF8E0C();

    v18 = a2;
  }

  else
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v11 = sub_21DBF84BC();
    __swift_project_value_buffer(v11, qword_27CE62470);
    v12 = sub_21DBF84AC();
    v13 = sub_21DBFAECC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_21D0C9000, v12, v13, "Thumbnails from attachmentThumbnailsManager are of wrong order", v14, 2u);
      MEMORY[0x223D46520](v14, -1, -1);
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
  }
}

char *sub_21D827060@<X0>(BOOL *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v4 = result;
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
    v5 = sub_21D1DD1FC();
    swift_beginAccess();
    *(v5 + 48) = 0;
    v6._object = 0x800000021DC49D80;
    v6._countAndFlagsBits = 0xD000000000000017;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v6);
  }

  *a2 = v4 == 0;
  return result;
}

uint64_t sub_21D827138(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 72) = *a1;
  sub_21DBFA84C();
  *(v2 + 24) = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  *(v2 + 32) = v4;
  *(v2 + 40) = v3;

  return MEMORY[0x2822009F8](sub_21D8271D8, v4, v3);
}

uint64_t sub_21D8271D8()
{
  if (*(*(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability) + 34))
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 72);
    sub_21DBF516C();
    sub_21DBF516C();
    v2 = sub_21DBFA12C();

    v3 = sub_21DBFA12C();

    v4 = [objc_opt_self() alertControllerWithTitle:v2 message:v3 preferredStyle:{1, 0x800000021DC4D540}];
    *(v0 + 48) = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62620, &qword_21DC1CB40);
    v5 = swift_allocObject();
    if (v1)
    {
      *(v5 + 16) = xmmword_21DC08D20;
      v6 = sub_21DBF516C();
      *(v5 + 56) = 1;
      *(v5 + 32) = v6;
      *(v5 + 40) = v7;
      *(v5 + 48) = 0;
      v8 = sub_21DBF516C();
      *(v5 + 88) = 0;
      *(v5 + 64) = v8;
      *(v5 + 72) = v9;
      *(v5 + 80) = 1;
    }

    else
    {
      *(v5 + 16) = xmmword_21DC08D00;
      v12 = sub_21DBF516C();
      *(v5 + 56) = 1;
      *(v5 + 32) = v12;
      *(v5 + 40) = v13;
      *(v5 + 48) = 1;
    }

    *(v0 + 56) = v5;
    __swift_project_boxed_opaque_existential_1((*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
    v14 = swift_task_alloc();
    *(v0 + 64) = v14;
    *v14 = v0;
    v14[1] = sub_21D8275C0;

    return sub_21D57B138(v4, v5);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10(1);
  }
}

uint64_t sub_21D8275C0(char a1)
{
  v2 = *v1;
  *(*v1 + 73) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x2822009F8](sub_21D82770C, v4, v3);
}

uint64_t sub_21D82770C()
{
  v1 = *(v0 + 73);

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t type metadata accessor for TTRIReminderDetailPresenter(uint64_t a1)
{
  result = qword_27CE62590;
  if (!qword_27CE62590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D827A30(uint64_t a1)
{
  sub_21D827BEC(319, &unk_27CE625A0, type metadata accessor for TTRHashtagEditorModuleState);
  if (v1 <= 0x3F)
  {
    sub_21D827BEC(319, &qword_27CE621C8, type metadata accessor for TTRReminderDetailViewModel);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_21D827BEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21DBFBA8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21D827CFC(uint64_t a1)
{
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62470);
  v3 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Reminder Detail Change due date", 31, 2, v3);

  return sub_21D454B0C(a1);
}

void sub_21D827E28(char a1, __int128 *a2)
{
  v3 = a2[1];
  v6 = *a2;
  v7 = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62470);
  v5 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC("Reminder Detail Edit Custom Recurrence Rule", 43, 2, v5, v6, v7, v8[0], v8[1]);

  sub_21D456DF4(a1 & 1, &v6);
}

uint64_t sub_21D827F28(char a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t (*a6)(void, __n128))
{
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE62470);
  v11 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC(a4, a5, 2, v11);

  return (a6)(a1 & 1);
}

uint64_t sub_21D82806C(uint64_t *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t (*a6)(void *, __n128))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  if (qword_27CE56D10 != -1)
  {
    swift_once();
  }

  v12 = sub_21DBF84BC();
  __swift_project_value_buffer(v12, qword_27CE62470);
  v13 = sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21DAEACDC(a4, a5, 2, v13);

  v15[0] = v9;
  v15[1] = v10;
  v16 = v11;
  return (a6)(v15);
}

uint64_t sub_21D82815C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_21D8281E4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D81703C();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21D828240()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  if (sub_21D825944())
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE62470);
    v19 = sub_21DBF84AC();
    v6 = sub_21DBFAEDC();
    if (os_log_type_enabled(v19, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21D0C9000, v19, v6, "TTRIReminderDetailPresenter: user confirmation is needed for canceling; not auto canceling editing", v7, 2u);
      MEMORY[0x223D46520](v7, -1, -1);
    }

    v8 = v19;
  }

  else
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v9 = sub_21DBF84BC();
    __swift_project_value_buffer(v9, qword_27CE62470);
    v10 = sub_21DBF84AC();
    v11 = sub_21DBFAEDC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21D0C9000, v10, v11, "TTRIReminderDetailPresenter: cancel editing because reminder becomes not found", v12, 2u);
      MEMORY[0x223D46520](v12, -1, -1);
    }

    v13 = sub_21DBFA89C();
    (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
    sub_21DBFA84C();
    v14 = v1;
    v15 = sub_21DBFA83C();
    v16 = swift_allocObject();
    v17 = MEMORY[0x277D85700];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v14;
    sub_21D1B5178(0, 0, v4, &unk_21DC2B5C8, v16);
  }
}

uint64_t sub_21D8284FC()
{
  *(v0 + 16) = sub_21DBFA84C();
  *(v0 + 24) = sub_21DBFA83C();
  *(v0 + 41) = 1;
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B4BCC;

  return sub_21D825F60(v0 + 40, (v0 + 41));
}

void sub_21D8285C8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability);
  sub_21D458A80(a1);
  *(v3 + 33) = v4 & 1;
  type metadata accessor for TTREarlyAlertUtils();
  static TTREarlyAlertUtils.earlyAlert(from:includeLastUncommittedChange:)(a1, 1, &v6);
  v5 = v7;
  *(v3 + 40) = v6;
  *(v3 + 56) = v5;
  sub_21D453228();
}

uint64_t sub_21D828648()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
  v1 = sub_21D1DD1FC();
  swift_beginAccess();
  *(v1 + 48) = 0;
  v2._object = 0x800000021DC49D80;
  v2._countAndFlagsBits = 0xD000000000000017;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);
}

void sub_21D8286CC(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a1 setDelegate_];
    *(v5 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_prefersHalfPageSheetPresentation) = a2 & 1;
    if ((a2 & 1) != 0 && (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
    {
      v7 = v6;
      v8 = *(v5 + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_configuration + 72);
      sub_21D0D8CF0(0, &unk_27CE62260, 0x277D75A28);
      *(swift_allocObject() + 16) = v8;
      v9 = a1;
      v10 = sub_21DBFB56C();

      [v7 _setWantsBottomAttached_];
      [v7 _setShouldDismissWhenTappedOutside_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_21DC0AA00;
      *(v11 + 32) = v10;
      v12 = objc_opt_self();
      v13 = v10;
      *(v11 + 40) = [v12 largeDetent];
      v14 = sub_21DBFA5DC();

      [v7 setDetents_];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void *sub_21D828970(uint64_t a1, char *a2, uint64_t a3, int a4, uint64_t a5)
{
  v56 = a5;
  v54 = a4;
  v55 = a3;
  v61 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0, &unk_21DC1CB70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v53[-v7];
  v9 = sub_21DBF66CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v53[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v53[-v14];
  v16 = sub_21DBF66BC();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v53[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v17 + 16))(v20, a1, v16, v18);
  v21 = (*(v17 + 88))(v20, v16);
  if (v21 == *MEMORY[0x277D45188])
  {
    (*(v17 + 96))(v20, v16);
    (*(v10 + 32))(v15, v20, v9);
    (*(v10 + 16))(v12, v15, v9);
    v22 = (*(v10 + 88))(v12, v9);
    if (v22 == *MEMORY[0x277D451B8])
    {
      goto LABEL_6;
    }

    if (v22 == *MEMORY[0x277D451B0])
    {
      v23 = *&v61[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability];
      sub_21D45340C(1);
      *(v23 + 32) = 0;
      v24 = *(v23 + 16);
      if (v24)
      {
LABEL_5:
        v25 = *(v23 + 24);

        v24(1);
        sub_21D0D0E88(v24, v25);
      }

LABEL_6:
      v26 = objc_opt_self();
      v27 = sub_21DBFA12C();
      [v26 internalErrorWithDebugDescription_];

      swift_willThrow();
      (*(v10 + 8))(v15, v9);
      return v26;
    }

    if (v22 == *MEMORY[0x277D451C0])
    {
      v23 = *&v61[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability];
      sub_21D453F24(1);
      *(v23 + 32) = 1;
      v24 = *(v23 + 16);
      if (!v24)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

LABEL_28:
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v45 = sub_21DBF84BC();
    __swift_project_value_buffer(v45, qword_27CE62470);
    v46 = MEMORY[0x277D84F90];
    v47 = sub_21D17716C(MEMORY[0x277D84F90]);
    v48 = sub_21D17716C(v46);
    sub_21DAEAB00("missing case in switch visible", 30, 2, v47, v48);
    while (1)
    {
      __break(1u);
LABEL_32:
      if (qword_27CE56D10 != -1)
      {
        swift_once();
      }

      v49 = sub_21DBF84BC();
      __swift_project_value_buffer(v49, qword_27CE62470);
      v50 = MEMORY[0x277D84F90];
      v51 = sub_21D17716C(MEMORY[0x277D84F90]);
      v52 = sub_21D17716C(v50);
      sub_21DAEAB00("missing case in switch section", 30, 2, v51, v52);
    }
  }

  if (v21 == *MEMORY[0x277D45180])
  {
    v28 = v61;

    v29 = sub_21DBF5FBC();

    if (v29)
    {
      v30 = swift_allocObject();
      *(v30 + 16) = v28;
      v31 = swift_allocObject();
      *(v31 + 16) = sub_21D82F184;
      *(v31 + 24) = v30;
      v32 = v28;
      v33 = sub_21DBF816C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62678, &qword_21DC2B628);
      sub_21DBF820C();

      v26 = sub_21DBF81DC();

      return v26;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v21 == *MEMORY[0x277D45190])
  {
    v34 = v61;
    __swift_project_boxed_opaque_existential_1(&v61[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router], *&v61[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24]);
    v36 = *(v34 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor);
    v35 = *(v34 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    v37 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_lastHashtagEditorModuleState;
    swift_beginAccess();
    sub_21D0D3954(v34 + v37, v8, &unk_27CE622B0, &unk_21DC1CB70);
    ObjectType = swift_getObjectType();
    v39 = (*(v35 + 8))(ObjectType, v35);
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    v59 = xmmword_21DC0A830;
    v60 = 0;
    sub_21D81C504(v36, v35, v8, v34, &off_282ED4F60, v39, v57);

    sub_21D0CF7E0(v8, &unk_27CE622B0, &unk_21DC1CB70);
    v26 = objc_opt_self();
    v40 = sub_21DBFA12C();
    v41 = [v26 internalErrorWithDebugDescription_];
  }

  else if (v21 == *MEMORY[0x277D45198])
  {
    sub_21D81F490(1);
    sub_21D8206E0(v54 & 1);
    v26 = objc_opt_self();
    v40 = sub_21DBFA12C();
    v41 = [v26 internalErrorWithDebugDescription_];
  }

  else if (v21 == *MEMORY[0x277D451A8])
  {
    if (qword_27CE56D10 != -1)
    {
      swift_once();
    }

    v42 = sub_21DBF84BC();
    __swift_project_value_buffer(v42, qword_27CE62470);
    v43 = sub_21D17716C(MEMORY[0x277D84F90]);
    sub_21DAEACDC("Reminder Detail Edit Recurrence End", 35, 2, v43);

    sub_21D456FFC(v54 & 1);
    v26 = objc_opt_self();
    v40 = sub_21DBFA12C();
    v41 = [v26 internalErrorWithDebugDescription_];
  }

  else if (v21 == *MEMORY[0x277D451A0])
  {
    sub_21D8251CC(v54 & 1);
    v26 = objc_opt_self();
    v40 = sub_21DBFA12C();
    v41 = [v26 internalErrorWithDebugDescription_];
  }

  else
  {
    if (v21 != *MEMORY[0x277D45178])
    {
      goto LABEL_32;
    }

    v26 = objc_opt_self();
    v40 = sub_21DBFA12C();
    v41 = [v26 internalErrorWithDebugDescription_];
  }

  v41;

  swift_willThrow();
  return v26;
}

uint64_t sub_21D8292BC()
{
  v1 = v0;

  v2 = sub_21DBF5FBC();

  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_21D8304FC;
    *(v5 + 24) = v4;
    v6 = v1;
    v7 = sub_21DBF816C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62678, &qword_21DC2B628);
    v8 = sub_21DBF820C();

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_21D8293C0()
{
  v1 = v0;
  v2 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v14 = qword_280D19F88;
  v15 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0xD000000000000020, 0x800000021DC66080);
  v5 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v6 = sub_21DBFA12C();

  v7 = [v5 initWithActivityType_];

  v8 = *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 16))(ObjectType, v8);
  v11 = [v10 objectID];

  *v4 = v11;
  type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  swift_storeEnumTagMultiPayload();
  v12 = v11;
  sub_21D82E57C(v4, v7);

  sub_21D82F904(v4, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload);
  return v7;
}

uint64_t sub_21D8295A8(uint64_t a1, char *a2)
{
  *(v3 + 40) = a1;
  *(v3 + 48) = v2;
  v4 = *a2;
  *(v3 + 81) = *a2;
  *(v3 + 56) = sub_21DBFA84C();
  *(v3 + 64) = sub_21DBFA83C();
  *(v3 + 80) = v4;
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_21D829674;

  return sub_21D827138((v3 + 80));
}

uint64_t sub_21D829674(char a1)
{
  *(*v1 + 82) = a1;

  v3 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21D8297B8, v3, v2);
}

uint64_t sub_21D8297B8()
{
  v46 = v0;
  v1 = *(v0 + 82);

  if (v1 == 1)
  {
    v2 = *(v0 + 48);
    v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v32 = (*(v3 + 16))(ObjectType, v3);
    if (*(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_savesOnCommit) == 1)
    {
      if (qword_27CE56D10 != -1)
      {
        swift_once();
      }

      v5 = sub_21DBF84BC();
      __swift_project_value_buffer(v5, qword_27CE62470);
      v6 = v32;
      v7 = sub_21DBF84AC();
      v8 = sub_21DBFAEDC();

      if (os_log_type_enabled(v7, v8))
      {
        v30 = ObjectType;
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        v11 = [v6 objectID];
        *(v9 + 4) = v11;
        *v10 = v11;
        _os_log_impl(&dword_21D0C9000, v7, v8, "Reminder Detail Save {objectID: %@}", v9, 0xCu);
        sub_21D0CF7E0(v10, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v10, -1, -1);
        v12 = v9;
        ObjectType = v30;
        MEMORY[0x223D46520](v12, -1, -1);
      }

      (*(v3 + 368))(&v40, ObjectType, v3);
      v14 = v40;
      v13 = v41;
      v15 = sub_21DBF84AC();
      v16 = sub_21DBFAE9C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_21D0C9000, v15, v16, "Reminder Detail Save: about to donate reminder update", v17, 2u);
        MEMORY[0x223D46520](v17, -1, -1);
      }

      sub_21DBF60DC();
      v18 = sub_21DBF60CC();
      type metadata accessor for TTRRemindersInteraction();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      v20 = v6;
      sub_21D5C4C78(v20, v19);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v22 = *(v0 + 48) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v28 = *(v0 + 81);
      v31 = *(v0 + 48);
      v23 = *(v22 + 8);
      v29 = swift_getObjectType();
      v33 = v14;
      v34 = v13;
      v24 = v14;
      v25 = *(v3 + 64);
      sub_21D82EED8(v24, v13);
      v25(&v35, ObjectType, v3);
      v40 = v35;
      v41 = v36;
      v42 = v37;
      v43 = v38;
      v44 = v39;
      v45 = v28;
      (*(v23 + 32))(v31, &off_282ED5018, &v33, &v40, &v45, v29, v23);
      swift_unknownObjectRelease();

      sub_21D82EF18(v24, v13);
      sub_21D82EF5C(v40, v41, v42, *(&v42 + 1), v43, *(&v43 + 1));
      sub_21D82EF18(v33, v34);
    }

    else
    {
      sub_21D82EF18(v14, v13);
    }

    v21 = 0;
  }

  else
  {
    v21 = 2;
  }

  **(v0 + 40) = v21;
  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_21D829C04(uint64_t a1, _BYTE *a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62270, &unk_21DC2B5E0);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 73) = *a2;
  sub_21DBFA84C();
  *(v3 + 152) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  *(v3 + 160) = v6;
  *(v3 + 168) = v5;

  return MEMORY[0x2822009F8](sub_21D829CE0, v6, v5);
}

uint64_t sub_21D829CE0()
{
  v28 = v0;
  if (sub_21D825944())
  {
    if (*(v0 + 73) == 1)
    {
      v1 = sub_21DBFA12C();
      v2 = [objc_opt_self() alertControllerWithTitle:0 message:v1 preferredStyle:0];
      *(v0 + 176) = v2;

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v4 = *(Strong + OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_cancelButton);
        v5 = v4;
        swift_unknownObjectRelease();
        if (v4)
        {
          LOBYTE(v26[0]) = 1;
          *(v0 + 16) = v4;
          *(v0 + 24) = 0u;
          *(v0 + 40) = 0u;
          *(v0 + 56) = 64;
          *(v0 + 64) = 0;
          *(v0 + 72) = 1;
          v6 = *(v0 + 32);
          v26[0] = *(v0 + 16);
          v26[1] = v6;
          v27[0] = *(v0 + 48);
          *(v27 + 9) = *(v0 + 57);
          UIViewController.setupForAdaptivePopoverPresentation(anchoredAt:)(v26);
          sub_21D1A9430(v0 + 16);
        }
      }

      __swift_project_boxed_opaque_existential_1((*(v0 + 136) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(*(v0 + 136) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62620, &qword_21DC1CB40);
      v7 = swift_allocObject();
      *(v0 + 184) = v7;
      *(v7 + 16) = xmmword_21DC08D20;
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBF516C();
      *(v7 + 56) = 1;
      *(v7 + 32) = v8;
      *(v7 + 40) = v9;
      *(v7 + 48) = 2;
      v10 = sub_21DBF516C();
      *(v7 + 88) = 0;
      *(v7 + 64) = v10;
      *(v7 + 72) = v11;
      *(v7 + 80) = 1;
      v12 = swift_task_alloc();
      *(v0 + 192) = v12;
      *v12 = v0;
      v12[1] = sub_21D82A18C;

      return sub_21D57B138(v2, v7);
    }

    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    sub_21D81D608(v14);
    v16 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_frozenViewModelBeforeCancelingChanges;
    swift_beginAccess();
    sub_21D0F02F4(v14, v15 + v16, &qword_27CE62270, &unk_21DC2B5E0);
    swift_endAccess();
    v17 = *(v15 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v19 = (*(v17 + 8))(ObjectType, v17);
    if ([v19 canUndo])
    {
      do
      {
        [v19 undo];
      }

      while (([v19 canUndo] & 1) != 0);
    }
  }

  else
  {
  }

  v20 = *(v0 + 136) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = *(v0 + 73);
    v22 = *(v0 + 136);
    v23 = *(v20 + 8);
    v24 = swift_getObjectType();
    LOBYTE(v26[0]) = v21;
    (*(v23 + 24))(v22, &off_282ED5018, v26, v24, v23);
    swift_unknownObjectRelease();
  }

  **(v0 + 128) = 0;

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_21D82A18C(char a1)
{
  v2 = *v1;
  *(*v1 + 74) = a1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 160);

  return MEMORY[0x2822009F8](sub_21D82A2D8, v4, v3);
}

uint64_t sub_21D82A2D8()
{
  v18 = v0;
  v1 = *(v0 + 74);
  v2 = *(v0 + 176);

  if (v1 == 2 || (*(v0 + 74) & 1) == 0)
  {
    v14 = 2;
  }

  else
  {
    v4 = *(v0 + 136);
    v3 = *(v0 + 144);
    sub_21D81D608(v3);
    v5 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_frozenViewModelBeforeCancelingChanges;
    swift_beginAccess();
    sub_21D0F02F4(v3, v4 + v5, &qword_27CE62270, &unk_21DC2B5E0);
    swift_endAccess();
    v6 = *(v4 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 8))(ObjectType, v6);
    if ([v8 canUndo])
    {
      do
      {
        [v8 undo];
      }

      while (([v8 canUndo] & 1) != 0);
    }

    v9 = *(v0 + 136) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v0 + 73);
      v11 = *(v0 + 136);
      v12 = *(v9 + 8);
      v13 = swift_getObjectType();
      v17 = v10;
      (*(v12 + 24))(v11, &off_282ED5018, &v17, v13, v12);
      swift_unknownObjectRelease();
    }

    v14 = 0;
  }

  **(v0 + 128) = v14;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_21D82A500(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D82A56C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t sub_21D82A610()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 88))(ObjectType, v1);
}

uint64_t sub_21D82A65C()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

uint64_t sub_21D82A6BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_21D82A718(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v5 + 352))(a1, a2, ObjectType, v5);
}

uint64_t sub_21D82A780(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D8265F8(a1, a2);
}

uint64_t sub_21D82A828(uint64_t a1, _BYTE *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return sub_21D825F60(a1, a2);
}

uint64_t sub_21D82A8D0()
{
  v1 = (*(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_inCellEditingPresenterHelper) + OBJC_IVAR____TtC15RemindersUICore39TTRInCellEditingPresenterManagingHelper_textInputPrimaryLanguageObserver);
  if (!*v1)
  {
    return 0;
  }

  v2 = v1[1];
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 8);
  swift_unknownObjectRetain();
  v5 = v4(ObjectType, v2);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_21D82A9D0(uint64_t a1, uint64_t a2)
{
  sub_21DBCCF04(a1, a2, 0);

  return swift_unknownObjectRelease();
}

uint64_t sub_21D82AA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D82FC78(a1, v10, type metadata accessor for TTRRemindersListViewModel.Item);
  v11 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor;
  v12 = *(v4 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_editingSessionSharedProperties);
  v13 = swift_allocObject();
  type metadata accessor for TTRReminderDetailEditingSession(0);
  v18 = *(v4 + v11);
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  swift_unknownObjectRetain();

  sub_21DBF56AC();
  sub_21D82F96C(v10, v14 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_item, type metadata accessor for TTRRemindersListViewModel.Item);
  v15 = (v14 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_acquirerName);
  *v15 = a2;
  v15[1] = a3;
  *(v14 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_interactor) = v18;
  *(v14 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_sharedPropertiesWrapper) = v12;
  v16 = (v14 + OBJC_IVAR____TtC15RemindersUICore31TTRReminderDetailEditingSession_setNeedsDisplayHandler);
  *v16 = sub_21D82F964;
  v16[1] = v13;
  sub_21DBF8E0C();
  return v14;
}

_BYTE *sub_21D82AC2C(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v2 = result;
      __swift_project_boxed_opaque_existential_1(&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater], *&result[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24]);
      v3 = sub_21D1DD1FC();
      swift_beginAccess();
      *(v3 + 40) |= 1uLL;
      *(v3 + 48) = 0;
      v4._object = 0x800000021DC49D80;
      v4._countAndFlagsBits = 0xD000000000000017;
      TTRDeferredAction.scheduleNextRunLoop(reason:)(v4);
    }
  }

  return result;
}

uint64_t sub_21D82AD18()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(v0 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
  v1 = sub_21D1DD1FC();
  swift_beginAccess();
  *(v1 + 40) |= 1uLL;
  *(v1 + 48) = 0;
  v2._object = 0x800000021DC49D80;
  v2._countAndFlagsBits = 0xD000000000000017;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);
}

uint64_t sub_21D82AE20(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);

  return a1;
}

uint64_t assignWithCopy for PresenterState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t assignWithTake for PresenterState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 10) = *(a2 + 10);
  return a1;
}

uint64_t getEnumTagSinglePayload for PresenterState(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 11))
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

uint64_t storeEnumTagSinglePayload for PresenterState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 11) = 1;
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

    *(result + 11) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D82AFC8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0, &unk_21DC1CB70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  sub_21D82FC78(a1, &v9 - v4, type metadata accessor for TTRHashtagEditorModuleState);
  v6 = type metadata accessor for TTRHashtagEditorModuleState(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_lastHashtagEditorModuleState;
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v7, &unk_27CE622B0, &unk_21DC1CB70);
  return swift_endAccess();
}

uint64_t sub_21D82B0EC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50, &unk_21DC183E0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - v12;
  v24 = v5;
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC09CF0;
    *(v14 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  }

  v15 = a1[3];
  v23[2] = a1[2];
  v23[3] = v15;
  v23[4] = a1[4];
  v16 = a1[1];
  v23[0] = *a1;
  v23[1] = v16;
  sub_21DBF8E0C();
  v17 = TTRParticipantModel.contactHandles.getter();
  if (!v17)
  {

    return 0;
  }

  v18 = v17;
  sub_21DBF6A7C();
  v19 = (*(v11 + 88))(v13, v10);
  if (v19 == *MEMORY[0x277D450E0])
  {

    (*(v11 + 96))(v13, v10);
    v20 = swift_allocObject();
    *(v20 + 16) = a3;
    *(v20 + 24) = a4;

    v21 = sub_21DBF816C();
    sub_21DBF820C();

    return 0;
  }

  if (v19 == *MEMORY[0x277D450E8])
  {

    (*(v11 + 96))(v13, v10);
    return *v13;
  }

  if (v19 == *MEMORY[0x277D450D8])
  {

    (*(v11 + 8))(v13, v10);
    return 0;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

void sub_21D82B400(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21DBFC59C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_21DBFA69C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_21D82BC80(v7, v8, a1, v4);
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
    sub_21D82B4F8(0, v2, 1, a1);
  }
}

uint64_t sub_21D82B4F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 112 * a3);
    v6 = result - a3 + 1;
    v44 = *a4;
    while (2)
    {
      v47 = v5;
      v48 = a3;
      v46 = v6;
      while (1)
      {
        v7 = *v5;
        v8 = v5[2];
        v67 = v5[1];
        v68 = v8;
        v66 = v7;
        v9 = v5[3];
        v10 = v5[4];
        v11 = v5[6];
        v71 = v5[5];
        v72 = v11;
        v69 = v9;
        v70 = v10;
        v12 = *(v5 - 1);
        v14 = *(v5 - 4);
        v13 = *(v5 - 3);
        v78 = *(v5 - 2);
        v79 = v12;
        v76 = v14;
        v77 = v13;
        v15 = *(v5 - 7);
        v16 = *(v5 - 5);
        v74 = *(v5 - 6);
        v75 = v16;
        v73 = v15;
        if (!v66)
        {
          if (!v15)
          {
            result = sub_21D1D9A84(&v73, &v59);
          }

          goto LABEL_36;
        }

        if (!v15)
        {
          result = sub_21D1D9A84(&v73, &v59);
          goto LABEL_5;
        }

        if (v72)
        {
          goto LABEL_5;
        }

        if ((v79 & 1) == 0)
        {
          break;
        }

LABEL_36:
        if (!v4)
        {
          __break(1u);
          return result;
        }

        v33 = v5 - 7;
        v62 = v5[3];
        v63 = v5[4];
        v64 = v5[5];
        v65 = v5[6];
        v59 = *v5;
        v60 = v5[1];
        v61 = v5[2];
        v34 = *(v5 - 6);
        *v5 = *(v5 - 7);
        v5[1] = v34;
        v35 = *(v5 - 1);
        v5[5] = *(v5 - 2);
        v5[6] = v35;
        v36 = *(v5 - 3);
        v5[3] = *(v5 - 4);
        v5[4] = v36;
        v5[2] = *(v5 - 5);
        v37 = v59;
        v38 = v61;
        v33[1] = v60;
        v33[2] = v38;
        *v33 = v37;
        v39 = v62;
        v40 = v63;
        v41 = v65;
        v33[5] = v64;
        v33[6] = v41;
        v33[3] = v39;
        v33[4] = v40;
        if (!v6)
        {
          goto LABEL_5;
        }

        ++v6;
        v5 -= 7;
      }

      v17 = *(&v67 + 1);
      v19 = *(&v74 + 1);
      v18 = v74;
      v55 = v76;
      v56 = v75;
      v57 = *(&v76 + 1);
      v58 = *(&v75 + 1);
      v51 = v77;
      v20 = *(&v78 + 1);
      v50 = v78;
      if (*(&v67 + 1))
      {
        v21 = v67;
        sub_21D1D9A84(&v73, &v59);
        sub_21D1D9A84(&v66, &v59);
        sub_21D1D9A84(&v73, &v59);
        sub_21D1D9A84(&v66, &v59);
        v22 = v17;
        if (!v19)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v49 = v74;
        v23 = v68;
        v24 = v69;
        v45 = v70;
        v52 = *(&v71 + 1);
        v54 = v71;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
        v25 = swift_allocObject();
        v25[1] = xmmword_21DC08D20;
        v25[2] = v23;
        v25[3] = v24;
        v80 = v25;
        sub_21D1D9A84(&v73, &v59);
        sub_21D1D9A84(&v66, &v59);
        sub_21D1D9A84(&v73, &v59);
        sub_21D1D9A84(&v66, &v59);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
        sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
        v26 = sub_21DBFA41C();

        if (*(v26 + 16))
        {
          *&v59 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
          sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
          v21 = sub_21DBFA07C();
          v22 = v27;

          v4 = v44;
          v19 = *(&v49 + 1);
          v18 = v49;
          if (!*(&v49 + 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          v22 = v52;
          v21 = v54;

          v18 = v49;
          if (*(&v45 + 1))
          {
            v21 = v45;
            v22 = sub_21DBF8E0C();
            v4 = v44;
            v19 = *(&v49 + 1);
            if (!*(&v49 + 1))
            {
              goto LABEL_28;
            }
          }

          else
          {
            v4 = v44;
            v19 = *(&v49 + 1);
            if (v52)
            {
              sub_21DBF8E0C();
              if (!*(&v49 + 1))
              {
LABEL_28:
                v53 = v22;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
                v29 = swift_allocObject();
                *(v29 + 16) = xmmword_21DC08D20;
                *(v29 + 32) = v56;
                *(v29 + 40) = v58;
                *(v29 + 48) = v55;
                *(v29 + 56) = v57;
                *&v59 = v29;
                sub_21DBF8E0C();
                sub_21DBF8E0C();
                sub_21DBF8E0C();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
                sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
                v30 = sub_21DBFA41C();

                if (*(v30 + 16))
                {
                  *&v59 = v30;
                  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
                  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
                  v18 = sub_21DBFA07C();
                  v20 = v31;
                }

                else
                {

                  if (!*(&v51 + 1))
                  {
                    v22 = v53;
                    if (v20)
                    {
                      sub_21DBF8E0C();
                      v18 = v50;
                    }

                    else
                    {
                      if (qword_280D1BAA8 != -1)
                      {
                        swift_once();
                      }

                      v18 = sub_21DBF516C();
                      v20 = v42;
                    }

                    goto LABEL_33;
                  }

                  v18 = v51;
                  v20 = sub_21DBF8E0C();
                }

                v22 = v53;
LABEL_33:
                if (v21 == v18 && v22 == v20)
                {
                  sub_21DBF8E0C();

                  sub_21D1D9AE0(&v73);
                  sub_21D1D9AE0(&v66);

                  sub_21D1D9AE0(&v73);
                  result = sub_21D1D9AE0(&v66);
LABEL_5:
                  a3 = v48 + 1;
                  v5 = v47 + 7;
                  v6 = v46 - 1;
                  if (v48 + 1 == a2)
                  {
                    return result;
                  }

                  continue;
                }

                v32 = sub_21DBFC64C();
                sub_21DBF8E0C();

                sub_21D1D9AE0(&v73);
                sub_21D1D9AE0(&v66);

                sub_21D1D9AE0(&v73);
                result = sub_21D1D9AE0(&v66);
                if ((v32 & 1) == 0)
                {
                  goto LABEL_5;
                }

                goto LABEL_36;
              }
            }

            else
            {
              if (qword_280D1BAA8 != -1)
              {
                swift_once();
              }

              v21 = sub_21DBF516C();
              v22 = v28;
              if (!*(&v49 + 1))
              {
                goto LABEL_28;
              }
            }
          }
        }
      }

      break;
    }

    sub_21DBF8E0C();
    v20 = v19;
    goto LABEL_33;
  }

  return result;
}

void sub_21D82BC80(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_180:
    __src = *a1;
    if (!*a1)
    {
      goto LABEL_219;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_182;
    }

    goto LABEL_213;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (2)
  {
    v10 = v8 + 1;
    v182 = v9;
    if (v8 + 1 >= v7)
    {
      v25 = v8;
      goto LABEL_79;
    }

    v11 = *v6;
    v12 = (*v6 + 112 * v10);
    v13 = *v12;
    v14 = v12[2];
    v211 = v12[1];
    v212 = v14;
    v210 = v13;
    v15 = v12[3];
    v16 = v12[4];
    v17 = v12[6];
    v215 = v12[5];
    v216 = v17;
    v213 = v15;
    v214 = v16;
    v166 = v8;
    v18 = (v11 + 112 * v8);
    v19 = v18[6];
    v21 = v18[3];
    v20 = v18[4];
    v222 = v18[5];
    v223 = v19;
    v220 = v21;
    v221 = v20;
    v22 = *v18;
    v23 = v18[2];
    v218 = v18[1];
    v219 = v23;
    v217 = v22;
    if (!v210)
    {
      if (!v217)
      {
        sub_21D1D9A84(&v217, &v203);
      }

LABEL_14:
      v24 = 1;
      goto LABEL_15;
    }

    *&v201[32] = *(v18 + 40);
    *&v201[48] = *(v18 + 56);
    *&v201[64] = *(v18 + 72);
    *&v201[80] = *(v18 + 11);
    *v201 = *(v18 + 8);
    *&v201[16] = *(v18 + 24);
    if (!v217)
    {
      sub_21D1D9A84(&v217, &v203);
      v24 = 0;
      goto LABEL_15;
    }

    if ((v216 & 1) == 0)
    {
      if ((v223 & 1) == 0)
      {
        v199[2] = v213;
        v199[3] = v214;
        v199[4] = v215;
        v199[0] = v211;
        v199[1] = v212;
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        v63 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
        v205 = *&v201[40];
        v206 = *&v201[56];
        v207 = *&v201[72];
        v203 = *&v201[8];
        v204 = *&v201[24];
        v64 = TTRParticipantModel.displayDescription(prefersFirstNameOnly:)(0);
        if (v63._countAndFlagsBits == v64._countAndFlagsBits && v63._object == v64._object)
        {

          sub_21D1D9AE0(&v217);
          sub_21D1D9AE0(&v210);

          sub_21D1D9AE0(&v217);
          sub_21D1D9AE0(&v210);
          v24 = 0;
        }

        else
        {
          v65 = sub_21DBFC64C();

          sub_21D1D9AE0(&v217);
          sub_21D1D9AE0(&v210);
          v24 = v65;

          sub_21D1D9AE0(&v217);
          sub_21D1D9AE0(&v210);
        }

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v24 = 0;
LABEL_15:
    v10 = v8 + 2;
    if (v8 + 2 >= v7)
    {
LABEL_63:
      v25 = v166;
      if (v24)
      {
        if (v10 < v166)
        {
          goto LABEL_210;
        }

        goto LABEL_65;
      }

LABEL_78:
      v9 = v182;
      goto LABEL_79;
    }

    v26 = (v11 + 112 * v8 + 224);
    v196 = v24;
    while (1)
    {
      v27 = *v26;
      v28 = v26[2];
      *&v201[16] = v26[1];
      *&v201[32] = v28;
      *v201 = v27;
      v29 = v26[3];
      v30 = v26[4];
      v31 = v26[6];
      *&v201[80] = v26[5];
      v202 = v31;
      *&v201[48] = v29;
      *&v201[64] = v30;
      v32 = *(v26 - 1);
      v34 = *(v26 - 4);
      v33 = *(v26 - 3);
      v208 = *(v26 - 2);
      v209 = v32;
      v206 = v34;
      v207 = v33;
      v35 = *(v26 - 7);
      v36 = *(v26 - 5);
      v204 = *(v26 - 6);
      v205 = v36;
      v203 = v35;
      if (!*v201)
      {
        if (v35)
        {
          if ((v24 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        else
        {
          sub_21D1D9A84(&v203, v199);
          if ((v24 & 1) == 0)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_19;
      }

      if (!v35)
      {
        sub_21D1D9A84(&v203, v199);
        if (v24)
        {
          goto LABEL_63;
        }

        goto LABEL_19;
      }

      if (v202)
      {
        if (v24)
        {
          break;
        }

        goto LABEL_19;
      }

      if (v209)
      {
        if ((v24 & 1) == 0)
        {
          v25 = v166;
          goto LABEL_78;
        }

        goto LABEL_19;
      }

      v37 = *&v201[24];
      v38 = *(&v204 + 1);
      v9 = v204;
      v186 = v206;
      v188 = v205;
      v190 = *(&v206 + 1);
      v192 = *(&v205 + 1);
      v179 = v207;
      v39 = *(&v208 + 1);
      v178 = v208;
      if (*&v201[24])
      {
        __src = *&v201[16];
        sub_21D1D9A84(&v203, v199);
        sub_21D1D9A84(v201, v199);
        sub_21D1D9A84(&v203, v199);
        sub_21D1D9A84(v201, v199);
        v40 = v37;
        goto LABEL_39;
      }

      v174 = v204;
      v176 = v10;
      v183 = *(&v208 + 1);
      v194 = *(&v204 + 1);
      v162 = v5;
      v41 = *&v201[32];
      v42 = *&v201[48];
      v172 = *&v201[64];
      v43 = *&v201[88];
      __src = *&v201[80];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
      v44 = swift_allocObject();
      v44[1] = xmmword_21DC08D20;
      v44[2] = v41;
      v44[3] = v42;
      v200 = v44;
      sub_21D1D9A84(&v203, v199);
      sub_21D1D9A84(v201, v199);
      sub_21D1D9A84(&v203, v199);
      sub_21D1D9A84(v201, v199);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
      sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
      v45 = sub_21DBFA41C();

      if (*(v45 + 16))
      {
        *&v199[0] = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
        sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
        __src = sub_21DBFA07C();
        v47 = v46;

        v40 = v47;
        v5 = v162;
        v6 = a3;
LABEL_38:
        v9 = v174;
        v10 = v176;
        v38 = v194;
        v39 = v183;
        goto LABEL_39;
      }

      v5 = v162;
      v6 = a3;
      v40 = *(&v172 + 1);
      if (*(&v172 + 1))
      {
        sub_21DBF8E0C();
        __src = v172;
        goto LABEL_38;
      }

      v38 = v194;
      v39 = v183;
      if (v43)
      {
        v40 = v43;
        sub_21DBF8E0C();
        v9 = v174;
      }

      else
      {
        v9 = v174;
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        __src = sub_21DBF516C();
        v40 = v55;
      }

LABEL_39:
      if (v38)
      {
        sub_21DBF8E0C();
        v48 = v38;
LABEL_45:
        v52 = __src;
        goto LABEL_46;
      }

      v184 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_21DC08D20;
      *(v49 + 32) = v188;
      *(v49 + 40) = v192;
      *(v49 + 48) = v186;
      *(v49 + 56) = v190;
      *&v199[0] = v49;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
      sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
      v50 = sub_21DBFA41C();

      if (*(v50 + 16))
      {
        *&v199[0] = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
        sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
        v9 = sub_21DBFA07C();
        v48 = v51;

        goto LABEL_45;
      }

      v48 = *(&v179 + 1);
      if (*(&v179 + 1))
      {
        sub_21DBF8E0C();
        v9 = v179;
        goto LABEL_45;
      }

      v48 = v184;
      if (v184)
      {
        sub_21DBF8E0C();
        v52 = __src;
        v9 = v178;
      }

      else
      {
        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        v9 = sub_21DBF516C();
        v48 = v56;
        v52 = __src;
      }

LABEL_46:
      if (v52 != v9 || v40 != v48)
      {
        v9 = v40;
        v53 = sub_21DBFC64C();
        sub_21DBF8E0C();

        sub_21D1D9AE0(&v203);
        sub_21D1D9AE0(v201);

        sub_21D1D9AE0(&v203);
        sub_21D1D9AE0(v201);
        v54 = v196 ^ v53;
        v24 = v196;
        if (v54)
        {
          goto LABEL_63;
        }

        goto LABEL_19;
      }

      sub_21DBF8E0C();

      sub_21D1D9AE0(&v203);
      sub_21D1D9AE0(v201);

      sub_21D1D9AE0(&v203);
      sub_21D1D9AE0(v201);
      v24 = v196;
      if (v196)
      {
        break;
      }

LABEL_19:
      ++v10;
      v26 += 7;
      if (v7 == v10)
      {
        v10 = v7;
        goto LABEL_63;
      }
    }

    v25 = v166;
    if (v10 < v166)
    {
      goto LABEL_210;
    }

LABEL_65:
    if (v25 >= v10)
    {
      goto LABEL_78;
    }

    v57 = v10;
    v58 = 112 * v10 - 112;
    v59 = 112 * v25;
    v60 = v57;
    v9 = v182;
    do
    {
      if (v25 != --v57)
      {
        v61 = *v6;
        if (!*v6)
        {
          goto LABEL_216;
        }

        v62 = (v61 + v58);
        v206 = *(v61 + v59 + 48);
        v207 = *(v61 + v59 + 64);
        v208 = *(v61 + v59 + 80);
        v209 = *(v61 + v59 + 96);
        v203 = *(v61 + v59);
        v204 = *(v61 + v59 + 16);
        v205 = *(v61 + v59 + 32);
        memmove((v61 + v59), (v61 + v58), 0x70uLL);
        v62[3] = v206;
        v62[4] = v207;
        v62[5] = v208;
        v62[6] = v209;
        *v62 = v203;
        v62[1] = v204;
        v62[2] = v205;
      }

      ++v25;
      v58 -= 112;
      v59 += 112;
    }

    while (v25 < v57);
    v10 = v60;
    v25 = v166;
LABEL_79:
    v66 = *(v6 + 8);
    if (v10 >= v66)
    {
      goto LABEL_129;
    }

    if (__OFSUB__(v10, v25))
    {
      goto LABEL_209;
    }

    if (v10 - v25 >= a4)
    {
      goto LABEL_129;
    }

    if (__OFADD__(v25, a4))
    {
      goto LABEL_211;
    }

    if (v25 + a4 < v66)
    {
      v66 = v25 + a4;
    }

    if (v66 < v25)
    {
LABEL_212:
      __break(1u);
LABEL_213:
      v9 = sub_21D82E300(v9);
LABEL_182:
      v155 = v5;
      v156 = (v9 + 16);
      v157 = *(v9 + 16);
      if (v157 < 2)
      {
LABEL_189:

        return;
      }

      while (1)
      {
        v158 = *v6;
        if (!*v6)
        {
          break;
        }

        v159 = v9;
        v5 = (v9 + 16 * v157);
        v9 = *v5;
        v160 = &v156[2 * v157];
        v6 = v160[1];
        sub_21D82D280((v158 + 112 * *v5), (v158 + 112 * *v160), (v158 + 112 * v6), __src);
        if (v155)
        {
          goto LABEL_189;
        }

        if (v6 < v9)
        {
          goto LABEL_205;
        }

        if (v157 - 2 >= *v156)
        {
          goto LABEL_206;
        }

        *v5 = v9;
        v5[1] = v6;
        v161 = *v156 - v157;
        if (*v156 < v157)
        {
          goto LABEL_207;
        }

        v157 = *v156 - 1;
        memmove(v160, v160 + 2, 16 * v161);
        *v156 = v157;
        v6 = a3;
        v9 = v159;
        if (v157 <= 1)
        {
          goto LABEL_189;
        }
      }

LABEL_217:
      __break(1u);
      break;
    }

    if (v10 == v66)
    {
      goto LABEL_129;
    }

    v169 = v66;
    v163 = v5;
    v67 = *v6;
    v167 = v25;
    v68 = v25 - v10;
    v69 = (*v6 + 112 * v10);
    v70 = v68 + 1;
    v170 = v67;
    while (2)
    {
      v175 = v69;
      v177 = v10;
      v173 = v70;
      while (2)
      {
        v71 = *v69;
        v72 = v69[2];
        v211 = v69[1];
        v212 = v72;
        v210 = v71;
        v73 = v69[3];
        v74 = v69[4];
        v75 = v69[6];
        v215 = v69[5];
        v216 = v75;
        v213 = v73;
        v214 = v74;
        v76 = *(v69 - 1);
        v78 = *(v69 - 4);
        v77 = *(v69 - 3);
        v222 = *(v69 - 2);
        v223 = v76;
        v220 = v78;
        v221 = v77;
        v79 = *(v69 - 7);
        v80 = *(v69 - 5);
        v218 = *(v69 - 6);
        v219 = v80;
        v217 = v79;
        if (!v210)
        {
          if (!v79)
          {
            sub_21D1D9A84(&v217, &v203);
          }

          goto LABEL_112;
        }

        if (!v79)
        {
          sub_21D1D9A84(&v217, &v203);
          goto LABEL_89;
        }

        if (v216)
        {
          goto LABEL_89;
        }

        if (v223)
        {
LABEL_112:
          if (v67)
          {
            v97 = v69 - 7;
            v206 = v69[3];
            v207 = v69[4];
            v208 = v69[5];
            v209 = v69[6];
            v203 = *v69;
            v204 = v69[1];
            v205 = v69[2];
            v98 = *(v69 - 6);
            *v69 = *(v69 - 7);
            v69[1] = v98;
            v99 = *(v69 - 1);
            v69[5] = *(v69 - 2);
            v69[6] = v99;
            v100 = *(v69 - 3);
            v69[3] = *(v69 - 4);
            v69[4] = v100;
            v69[2] = *(v69 - 5);
            v101 = v203;
            v102 = v205;
            v97[1] = v204;
            v97[2] = v102;
            *v97 = v101;
            v103 = v206;
            v104 = v207;
            v105 = v209;
            v97[5] = v208;
            v97[6] = v105;
            v97[3] = v103;
            v97[4] = v104;
            if (!v70)
            {
              goto LABEL_89;
            }

            ++v70;
            v69 -= 7;
            continue;
          }

          __break(1u);
LABEL_215:
          __break(1u);
LABEL_216:
          __break(1u);
          goto LABEL_217;
        }

        break;
      }

      v81 = *(&v211 + 1);
      v82 = *(&v218 + 1);
      v83 = v218;
      v191 = v220;
      v193 = v219;
      v195 = *(&v220 + 1);
      v197 = *(&v219 + 1);
      v185 = *(&v221 + 1);
      v84 = *(&v222 + 1);
      v180 = v222;
      v181 = v221;
      if (*(&v211 + 1))
      {
        v85 = v211;
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        v86 = v81;
        if (v82)
        {
          goto LABEL_97;
        }

LABEL_102:
        __src = v82;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_21DC08D20;
        *(v92 + 32) = v193;
        *(v92 + 40) = v197;
        *(v92 + 48) = v191;
        *(v92 + 56) = v195;
        *&v203 = v92;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
        sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
        v93 = sub_21DBFA41C();

        if (*(v93 + 16))
        {
          *&v203 = v93;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
          sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
          v94 = sub_21DBFA07C();
          v84 = v95;
          v83 = v94;
        }

        else
        {

          if (v185)
          {
            v83 = v181;
            v84 = sub_21DBF8E0C();
          }

          else if (v84)
          {
            sub_21DBF8E0C();
            v83 = v180;
          }

          else
          {
            if (qword_280D1BAA8 != -1)
            {
              swift_once();
            }

            v83 = sub_21DBF516C();
            v84 = v107;
          }
        }
      }

      else
      {
        __src = *(&v218 + 1);
        v87 = v212;
        v88 = v213;
        v171 = v214;
        v187 = *(&v215 + 1);
        v189 = v215;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
        v89 = swift_allocObject();
        v89[1] = xmmword_21DC08D20;
        v89[2] = v87;
        v89[3] = v88;
        *v201 = v89;
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        sub_21D1D9A84(&v217, &v203);
        sub_21D1D9A84(&v210, &v203);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
        sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
        v90 = sub_21DBFA41C();

        if (*(v90 + 16))
        {
          *&v203 = v90;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
          sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
          v85 = sub_21DBFA07C();
          v86 = v91;

          v67 = v170;
          v82 = __src;
          if (!__src)
          {
            goto LABEL_102;
          }
        }

        else
        {
          v86 = v187;
          v85 = v189;

          if (*(&v171 + 1))
          {
            v85 = v171;
            v86 = sub_21DBF8E0C();
            v67 = v170;
            v82 = __src;
            if (!__src)
            {
              goto LABEL_102;
            }
          }

          else
          {
            v67 = v170;
            v82 = __src;
            if (v187)
            {
              sub_21DBF8E0C();
              if (!__src)
              {
                goto LABEL_102;
              }
            }

            else
            {
              if (qword_280D1BAA8 != -1)
              {
                swift_once();
              }

              v85 = sub_21DBF516C();
              v86 = v106;
              if (!__src)
              {
                goto LABEL_102;
              }
            }
          }
        }

LABEL_97:
        sub_21DBF8E0C();
        v84 = v82;
      }

      if (v85 != v83 || v86 != v84)
      {
        v96 = sub_21DBFC64C();
        sub_21DBF8E0C();

        sub_21D1D9AE0(&v217);
        sub_21D1D9AE0(&v210);

        sub_21D1D9AE0(&v217);
        sub_21D1D9AE0(&v210);
        v9 = v182;
        if ((v96 & 1) == 0)
        {
          goto LABEL_89;
        }

        goto LABEL_112;
      }

      sub_21DBF8E0C();

      sub_21D1D9AE0(&v217);
      sub_21D1D9AE0(&v210);

      sub_21D1D9AE0(&v217);
      sub_21D1D9AE0(&v210);
      v9 = v182;
LABEL_89:
      v10 = v177 + 1;
      v69 = v175 + 7;
      v70 = v173 - 1;
      if (v177 + 1 != v169)
      {
        continue;
      }

      break;
    }

    v6 = a3;
    v10 = v169;
    v5 = v163;
    v25 = v167;
LABEL_129:
    if (v10 < v25)
    {
      goto LABEL_208;
    }

    v8 = v10;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_21D210B90(0, *(v9 + 16) + 1, 1, v9);
    }

    v109 = *(v9 + 16);
    v108 = *(v9 + 24);
    v110 = v109 + 1;
    if (v109 >= v108 >> 1)
    {
      v9 = sub_21D210B90((v108 > 1), v109 + 1, 1, v9);
    }

    *(v9 + 16) = v110;
    v111 = v9 + 16 * v109;
    *(v111 + 32) = v25;
    *(v111 + 40) = v8;
    v112 = *a1;
    if (*a1)
    {
      if (v109)
      {
        while (1)
        {
          v113 = v110 - 1;
          if (v110 >= 4)
          {
            break;
          }

          if (v110 == 3)
          {
            v114 = *(v9 + 32);
            v115 = *(v9 + 40);
            v124 = __OFSUB__(v115, v114);
            v116 = v115 - v114;
            v117 = v124;
LABEL_149:
            if (v117)
            {
              goto LABEL_196;
            }

            v130 = (v9 + 16 * v110);
            v132 = *v130;
            v131 = v130[1];
            v133 = __OFSUB__(v131, v132);
            v134 = v131 - v132;
            v135 = v133;
            if (v133)
            {
              goto LABEL_199;
            }

            v136 = (v9 + 32 + 16 * v113);
            v138 = *v136;
            v137 = v136[1];
            v124 = __OFSUB__(v137, v138);
            v139 = v137 - v138;
            if (v124)
            {
              goto LABEL_202;
            }

            if (__OFADD__(v134, v139))
            {
              goto LABEL_203;
            }

            if (v134 + v139 >= v116)
            {
              if (v116 < v139)
              {
                v113 = v110 - 2;
              }

              goto LABEL_170;
            }

            goto LABEL_163;
          }

          v140 = (v9 + 16 * v110);
          v142 = *v140;
          v141 = v140[1];
          v124 = __OFSUB__(v141, v142);
          v134 = v141 - v142;
          v135 = v124;
LABEL_163:
          if (v135)
          {
            goto LABEL_198;
          }

          v143 = v9 + 16 * v113;
          v145 = *(v143 + 32);
          v144 = *(v143 + 40);
          v124 = __OFSUB__(v144, v145);
          v146 = v144 - v145;
          if (v124)
          {
            goto LABEL_201;
          }

          if (v146 < v134)
          {
            goto LABEL_3;
          }

LABEL_170:
          v151 = v113 - 1;
          if (v113 - 1 >= v110)
          {
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
LABEL_204:
            __break(1u);
LABEL_205:
            __break(1u);
LABEL_206:
            __break(1u);
LABEL_207:
            __break(1u);
LABEL_208:
            __break(1u);
LABEL_209:
            __break(1u);
LABEL_210:
            __break(1u);
LABEL_211:
            __break(1u);
            goto LABEL_212;
          }

          if (!*v6)
          {
            goto LABEL_215;
          }

          v152 = *(v9 + 32 + 16 * v151);
          v153 = *(v9 + 32 + 16 * v113 + 8);
          sub_21D82D280((*v6 + 112 * v152), (*v6 + 112 * *(v9 + 32 + 16 * v113)), (*v6 + 112 * v153), v112);
          if (v5)
          {
            goto LABEL_189;
          }

          if (v153 < v152)
          {
            goto LABEL_192;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_21D82E300(v9);
          }

          if (v151 >= *(v9 + 16))
          {
            goto LABEL_193;
          }

          v154 = v9 + 16 * v151;
          *(v154 + 32) = v152;
          *(v154 + 40) = v153;
          v224 = v9;
          sub_21D82E274(v113);
          v9 = v224;
          v110 = *(v224 + 16);
          if (v110 <= 1)
          {
            goto LABEL_3;
          }
        }

        v118 = v9 + 32 + 16 * v110;
        v119 = *(v118 - 64);
        v120 = *(v118 - 56);
        v124 = __OFSUB__(v120, v119);
        v121 = v120 - v119;
        if (v124)
        {
          goto LABEL_194;
        }

        v123 = *(v118 - 48);
        v122 = *(v118 - 40);
        v124 = __OFSUB__(v122, v123);
        v116 = v122 - v123;
        v117 = v124;
        if (v124)
        {
          goto LABEL_195;
        }

        v125 = (v9 + 16 * v110);
        v127 = *v125;
        v126 = v125[1];
        v124 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v124)
        {
          goto LABEL_197;
        }

        v124 = __OFADD__(v116, v128);
        v129 = v116 + v128;
        if (v124)
        {
          goto LABEL_200;
        }

        if (v129 >= v121)
        {
          v147 = (v9 + 32 + 16 * v113);
          v149 = *v147;
          v148 = v147[1];
          v124 = __OFSUB__(v148, v149);
          v150 = v148 - v149;
          if (v124)
          {
            goto LABEL_204;
          }

          if (v116 < v150)
          {
            v113 = v110 - 2;
          }

          goto LABEL_170;
        }

        goto LABEL_149;
      }

LABEL_3:
      v7 = *(v6 + 8);
      if (v8 >= v7)
      {
        goto LABEL_180;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_219:
  __break(1u);
}

uint64_t sub_21D82D280(char *__dst, char *a2, char *a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v6 = __dst;
  v7 = a2 - __dst;
  v8 = (a2 - __dst) / 112;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 112;
  if (v8 >= v10)
  {
    v45 = a2;
    if (__src != a2 || &a2[112 * v10] <= __src)
    {
      memmove(__src, a2, 112 * v10);
    }

    v12 = &v4[112 * v10];
    if (v9 < 112 || v45 <= v6)
    {
      goto LABEL_110;
    }

    v83 = v6;
LABEL_58:
    v88 = v45;
    v46 = v45 - 112;
    v5 -= 112;
    v47 = v12;
    while (1)
    {
      v12 = v47;
      v48 = *(v47 - 112);
      v49 = *(v47 - 80);
      v106 = *(v47 - 96);
      v107 = v49;
      v105 = v48;
      v50 = *(v47 - 64);
      v51 = *(v47 - 48);
      v52 = *(v47 - 16);
      v110 = *(v47 - 32);
      v111 = v52;
      v108 = v50;
      v109 = v51;
      v53 = *(v46 + 5);
      v116 = *(v46 + 4);
      v117 = v53;
      v118 = *(v46 + 6);
      v54 = *(v46 + 1);
      v112 = *v46;
      v113 = v54;
      v55 = *(v46 + 3);
      v114 = *(v46 + 2);
      v115 = v55;
      if (!v105)
      {
        if (!v112)
        {
          sub_21D1D9A84(&v112, v103);
        }

LABEL_101:
        if ((v5 + 112) < v88 || v5 >= v88 || v5 + 112 != v88)
        {
          memmove(v5, v46, 0x70uLL);
        }

        if (v12 <= v4 || (v45 = v46, v46 <= v6))
        {
          v45 = v46;
          goto LABEL_110;
        }

        goto LABEL_58;
      }

      if (v112)
      {
        if ((v111 & 1) == 0)
        {
          if (v118)
          {
            goto LABEL_101;
          }

          v56 = *(&v106 + 1);
          v96 = *(&v114 + 1);
          v90 = v115;
          v92 = v114;
          v94 = *(&v115 + 1);
          v57 = v116;
          v58 = *(&v117 + 1);
          v82 = v117;
          v100 = v113;
          if (*(&v106 + 1))
          {
            v119 = v106;
            v59 = *(&v113 + 1);
            sub_21D1D9A84(&v112, v103);
            sub_21D1D9A84(&v105, v103);
            sub_21D1D9A84(&v112, v103);
            sub_21D1D9A84(&v105, v103);
            v60 = v59;
            v61 = v56;
            if (!v59)
            {
              goto LABEL_81;
            }

LABEL_75:
            v69 = v60;
            sub_21DBF8E0C();
            v70 = v69;
            v71 = v100;
LABEL_86:
            if (v119 == v71 && v61 == v70)
            {
              sub_21DBF8E0C();

              sub_21D1D9AE0(&v112);
              sub_21D1D9AE0(&v105);

              sub_21D1D9AE0(&v112);
              sub_21D1D9AE0(&v105);
            }

            else
            {
              LODWORD(v119) = sub_21DBFC64C();
              sub_21DBF8E0C();

              sub_21D1D9AE0(&v112);
              sub_21D1D9AE0(&v105);

              sub_21D1D9AE0(&v112);
              sub_21D1D9AE0(&v105);
              if (v119)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_90;
          }

          v86 = *(&v117 + 1);
          v98 = *(&v113 + 1);
          v102 = v5;
          v62 = v107;
          v63 = v108;
          v64 = v109;
          v79 = *(&v110 + 1);
          v119 = v110;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
          v65 = swift_allocObject();
          v65[1] = xmmword_21DC08D20;
          v65[2] = v62;
          v65[3] = v63;
          v104 = v65;
          sub_21D1D9A84(&v112, v103);
          sub_21D1D9A84(&v105, v103);
          sub_21D1D9A84(&v112, v103);
          sub_21D1D9A84(&v105, v103);
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
          sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
          v66 = sub_21DBFA41C();

          if (*(v66 + 16))
          {
            v103[0] = v66;
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
            sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
            v119 = sub_21DBFA07C();
            v68 = v67;

            v61 = v68;
            goto LABEL_73;
          }

          v61 = *(&v64 + 1);
          if (*(&v64 + 1))
          {
            sub_21DBF8E0C();
            v119 = v64;
LABEL_73:
            v6 = v83;
            v5 = v102;
            v60 = v98;
            v58 = v86;
          }

          else
          {
            v5 = v102;
            v58 = v86;
            if (!v79)
            {
              if (qword_280D1BAA8 != -1)
              {
                swift_once();
              }

              v119 = sub_21DBF516C();
              v61 = v72;
              v6 = v83;
              v60 = v98;
              if (v98)
              {
                goto LABEL_75;
              }

LABEL_81:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
              v73 = swift_allocObject();
              *(v73 + 16) = xmmword_21DC08D20;
              *(v73 + 32) = v92;
              *(v73 + 40) = v96;
              *(v73 + 48) = v90;
              *(v73 + 56) = v94;
              v103[0] = v73;
              sub_21DBF8E0C();
              sub_21DBF8E0C();
              sub_21DBF8E0C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
              sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
              v74 = sub_21DBFA41C();

              if (*(v74 + 16))
              {
                v103[0] = v74;
                __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
                sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
                v71 = sub_21DBFA07C();
                v70 = v75;
              }

              else
              {

                v70 = *(&v57 + 1);
                if (*(&v57 + 1))
                {
                  sub_21DBF8E0C();
                  v71 = v57;
                }

                else
                {
                  v70 = v58;
                  if (v58)
                  {
                    sub_21DBF8E0C();
                    v71 = v82;
                  }

                  else
                  {
                    if (qword_280D1BAA8 != -1)
                    {
                      swift_once();
                    }

                    v71 = sub_21DBF516C();
                    v70 = v76;
                  }
                }
              }

              v6 = v83;
              goto LABEL_86;
            }

            v61 = v79;
            sub_21DBF8E0C();
            v60 = v98;
            v6 = v83;
          }

          if (!v60)
          {
            goto LABEL_81;
          }

          goto LABEL_75;
        }
      }

      else
      {
        sub_21D1D9A84(&v112, v103);
      }

LABEL_90:
      v47 = v12 - 112;
      if ((v5 + 112) < v12 || v5 >= v12 || v5 + 112 != v12)
      {
        memmove(v5, (v12 - 112), 0x70uLL);
      }

      v5 -= 112;
      if (v47 <= v4)
      {
        v12 -= 112;
        v45 = v88;
        goto LABEL_110;
      }
    }
  }

  if (__src != __dst || &__dst[112 * v8] <= __src)
  {
    memmove(__src, __dst, 112 * v8);
  }

  v12 = &v4[112 * v8];
  if (v7 >= 112 && a2 < v5)
  {
    v13 = a2;
    v101 = v5;
    while (1)
    {
      v14 = *v13;
      v15 = *(v13 + 2);
      v106 = *(v13 + 1);
      v107 = v15;
      v105 = v14;
      v16 = *(v13 + 3);
      v17 = *(v13 + 4);
      v18 = *(v13 + 6);
      v110 = *(v13 + 5);
      v111 = v18;
      v108 = v16;
      v109 = v17;
      v19 = *(v4 + 6);
      v21 = *(v4 + 3);
      v20 = *(v4 + 4);
      v117 = *(v4 + 5);
      v118 = v19;
      v115 = v21;
      v116 = v20;
      v22 = *v4;
      v23 = *(v4 + 2);
      v113 = *(v4 + 1);
      v114 = v23;
      v112 = v22;
      if (!v105)
      {
        if (!v22)
        {
          sub_21D1D9A84(&v112, v103);
        }

        goto LABEL_16;
      }

      if (!v22)
      {
        sub_21D1D9A84(&v112, v103);
        goto LABEL_20;
      }

      if (v111)
      {
        goto LABEL_20;
      }

      if ((v118 & 1) == 0)
      {
        break;
      }

LABEL_16:
      v28 = v13;
      v29 = v6 == v13;
      v13 += 112;
      if (!v29)
      {
        goto LABEL_21;
      }

LABEL_22:
      v6 += 112;
      if (v4 >= v12 || v13 >= v5)
      {
        goto LABEL_108;
      }
    }

    v87 = v13;
    v24 = *(&v106 + 1);
    v25 = *(&v113 + 1);
    v99 = v113;
    v89 = v115;
    v91 = v114;
    v93 = *(&v115 + 1);
    v95 = *(&v114 + 1);
    v81 = v116;
    v26 = *(&v117 + 1);
    v80 = v117;
    if (*(&v106 + 1))
    {
      v119 = v106;
      sub_21D1D9A84(&v112, v103);
      sub_21D1D9A84(&v105, v103);
      sub_21D1D9A84(&v112, v103);
      sub_21D1D9A84(&v105, v103);
      v27 = v24;
      goto LABEL_30;
    }

    v84 = *(&v117 + 1);
    v97 = *(&v113 + 1);
    v30 = v107;
    v31 = v108;
    v32 = v109;
    v85 = *(&v110 + 1);
    v119 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
    v33 = swift_allocObject();
    v33[1] = xmmword_21DC08D20;
    v33[2] = v30;
    v33[3] = v31;
    v104 = v33;
    sub_21D1D9A84(&v112, v103);
    sub_21D1D9A84(&v105, v103);
    sub_21D1D9A84(&v112, v103);
    sub_21D1D9A84(&v105, v103);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
    sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
    v34 = sub_21DBFA41C();

    if (*(v34 + 16))
    {
      v103[0] = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
      sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
      v119 = sub_21DBFA07C();
      v36 = v35;

      v27 = v36;
    }

    else
    {

      v27 = *(&v32 + 1);
      if (!*(&v32 + 1))
      {
        v5 = v101;
        v25 = v97;
        v26 = v84;
        v27 = v85;
        if (v85)
        {
          sub_21DBF8E0C();
        }

        else
        {
          if (qword_280D1BAA8 != -1)
          {
            swift_once();
          }

          v119 = sub_21DBF516C();
          v27 = v43;
        }

LABEL_30:
        if (v25)
        {
          sub_21DBF8E0C();
          v37 = v25;
          v38 = v99;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62640, &unk_21DC09110);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_21DC08D20;
          *(v39 + 32) = v91;
          *(v39 + 40) = v95;
          *(v39 + 48) = v89;
          *(v39 + 56) = v93;
          v103[0] = v39;
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          sub_21DBF8E0C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65A90, &unk_21DC09D00);
          sub_21D0D0F1C(&qword_27CE62650, &qword_27CE65A90, &unk_21DC09D00, MEMORY[0x277D83970]);
          v40 = sub_21DBFA41C();

          if (*(v40 + 16))
          {
            v103[0] = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
            sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
            v38 = sub_21DBFA07C();
            v37 = v41;
          }

          else
          {

            v37 = *(&v81 + 1);
            if (!*(&v81 + 1))
            {
              v5 = v101;
              v37 = v26;
              if (v26)
              {
                sub_21DBF8E0C();
                v38 = v80;
              }

              else
              {
                if (qword_280D1BAA8 != -1)
                {
                  swift_once();
                }

                v38 = sub_21DBF516C();
                v37 = v44;
              }

              goto LABEL_37;
            }

            sub_21DBF8E0C();
            v38 = v81;
          }

          v5 = v101;
        }

LABEL_37:
        if (v119 == v38 && v27 == v37)
        {
          sub_21DBF8E0C();

          sub_21D1D9AE0(&v112);
          sub_21D1D9AE0(&v105);

          sub_21D1D9AE0(&v112);
          sub_21D1D9AE0(&v105);
          v13 = v87;
LABEL_20:
          v28 = v4;
          v29 = v6 == v4;
          v4 += 112;
          if (v29)
          {
            goto LABEL_22;
          }

LABEL_21:
          memmove(v6, v28, 0x70uLL);
          goto LABEL_22;
        }

        v42 = sub_21DBFC64C();
        sub_21DBF8E0C();

        sub_21D1D9AE0(&v112);
        sub_21D1D9AE0(&v105);

        sub_21D1D9AE0(&v112);
        sub_21D1D9AE0(&v105);
        v13 = v87;
        if ((v42 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_16;
      }

      sub_21DBF8E0C();
      v119 = v32;
    }

    v5 = v101;
    v25 = v97;
    v26 = v84;
    goto LABEL_30;
  }

LABEL_108:
  v45 = v6;
LABEL_110:
  v77 = (v12 - v4) / 112;
  if (v45 != v4 || v45 >= &v4[112 * v77])
  {
    memmove(v45, v4, 112 * v77);
  }

  return 1;
}

uint64_t sub_21D82E274(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_21D82E300(v3);
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

char *sub_21D82E314(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59958, &qword_21DC0CAE8);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id sub_21D82E4B8(uint64_t a1, char a2, _BYTE *a3)
{
  ObjectType = swift_getObjectType();
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_contentSizeObserver] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_tableDataController] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___addSectionCell] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestionGroup] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___suggestedSection] = 0;
  *&a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController____lazy_storage___sectionlessSection] = 0;
  v7 = &a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_presenter];
  *v7 = a1;
  v7[1] = &off_282EC7738;
  a3[OBJC_IVAR____TtC15RemindersUICore39TTRIReminderSectionPickerViewController_isPresentedInPopover] = a2;
  v9.receiver = a3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_initWithStyle_, 2);
}

uint64_t sub_21D82E57C(uint64_t a1, void *a2)
{
  v16 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload(0);
  v17 = &protocol witness table for TTRUserActivityWindowSceneRestorationPayload;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v15 + 1));
  sub_21D82FC78(a1, boxed_opaque_existential_0, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload);
  v5 = [a2 activityType];
  v6 = sub_21DBFA16C();
  v8 = v7;

  __swift_project_boxed_opaque_existential_1((v15 + 1), v16);
  swift_getDynamicType();
  (v17[1])(v15);
  if (v6 == TTRUserActivityType.activityType.getter() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_21DBFC64C();

    if ((v11 & 1) == 0)
    {
      return __swift_destroy_boxed_opaque_existential_0((v15 + 1));
    }
  }

  v12 = v16;
  v13 = v17;
  __swift_project_boxed_opaque_existential_1((v15 + 1), v16);
  (v13[3])(a2, v12, v13);
  return __swift_destroy_boxed_opaque_existential_0((v15 + 1));
}

uint64_t sub_21D82E6F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D0F00D0;

  return sub_21D8284FC();
}

char *sub_21D82E7A8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v8 = a1;
  v65 = MEMORY[0x277D84F90];
  result = sub_21D18EFC4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v65;
    v49 = a4;
    v50 = v8 & 0xC000000000000001;
    a1 = sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v10 = v8;
    v11 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v6 - 1;
    v48 = v8;
    while (1)
    {
      v67 = v7;
      if (v50)
      {
        v12 = MEMORY[0x223D44740](v11, v10);
      }

      else
      {
        if (v11 >= *(v46 + 16))
        {
          goto LABEL_28;
        }

        v12 = *(v10 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 objectID];
      v15 = v13;
      TTRParticipantModel.init(sharee:)(v15, &v64.displayName.value._countAndFlagsBits);
      v16 = [v15 objectID];
      v17 = sub_21DBFB63C();

      v63 = v64;
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v66 = v64;

      v19 = sub_21D82B0EC(&v66, 0, sub_21D82EE98, v18);
      if (v19)
      {
        v20 = v19;
        v51 = v64;
        v56.firstName = v64.lastName;
        v56.lastName = v64.emailAddress;
        v56.emailAddress = v64.phoneNumber;
        displayName = v64.displayName;
        v56.displayName = v64.firstName;
        v21 = v19;
        sub_21D1D9B34(&v51, &v52);
        TTRParticipantModel.updatingNames(with:)(&v63, v21);

        v53.firstName = v56.firstName;
        v53.lastName = v56.lastName;
        v53.emailAddress = v56.emailAddress;
        v52 = displayName;
        v53.displayName = v56.displayName;
        sub_21D1D9B90(&v52);
        firstName = v64.firstName;
        v56.firstName = v64.lastName;
        v56.lastName = v64.emailAddress;
        v56.emailAddress = v64.phoneNumber;
        v23 = v64.displayName;
      }

      else
      {
        v53.firstName = v64.lastName;
        v53.lastName = v64.emailAddress;
        v53.emailAddress = v64.phoneNumber;
        v52 = v64.displayName;
        v53.displayName = v64.firstName;
        v51 = v64;
        sub_21D1D9B34(&v52, &displayName);
        v20 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v51);
        v56.firstName = v51.lastName;
        v56.lastName = v51.emailAddress;
        v56.emailAddress = v51.phoneNumber;
        v23 = v51.displayName;
        firstName = v51.firstName;
      }

      displayName = v23;
      v56.displayName = firstName;
      sub_21D1D9B90(&displayName);

      v24 = v17 & 1;
      displayName.value._countAndFlagsBits = v14;
      displayName.value._object = v20;
      v56 = v63;
      LOBYTE(v57) = v24;
      *(&v57 + 1) = *v62;
      HIDWORD(v57) = *&v62[3];
      v58 = 0;
      v59 = displayName;
      v60 = v63;
      v61 = v57;
      sub_21D1D9C94(&displayName, &v52);
      v25 = [v15 objectID];
      if (v25)
      {
        v26 = v25;
        if (!v49)
        {
          v52.value._countAndFlagsBits = v14;
          v52.value._object = v20;
          v53 = v63;
          LOBYTE(v54) = v24;
          *(&v54 + 1) = *v62;
          DWORD1(v54) = *&v62[3];
          *(&v54 + 1) = 0;
          sub_21D30DA04(&v52);

          goto LABEL_20;
        }

        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v27 = v49;
        v28 = sub_21DBFB63C();
        v52.value._countAndFlagsBits = v14;
        v52.value._object = v20;
        v53 = v63;
        LOBYTE(v54) = v24;
        *(&v54 + 1) = *v62;
        DWORD1(v54) = *&v62[3];
        *(&v54 + 1) = 0;
        sub_21D30DA04(&v52);

        if ((v28 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v52.value._countAndFlagsBits = v14;
        v52.value._object = v20;
        v53 = v63;
        LOBYTE(v54) = v24;
        *(&v54 + 1) = *v62;
        DWORD1(v54) = *&v62[3];
        *(&v54 + 1) = 0;
        sub_21D30DA04(&v52);
        if (v49)
        {
LABEL_18:

LABEL_20:
          v7 = v67;
          goto LABEL_21;
        }
      }

      v7 = v67;
      v29 = *(a5 + 80);
      v53.emailAddress = *(a5 + 64);
      v53.phoneNumber = v29;
      v54 = *(a5 + 96);
      v30 = *(a5 + 16);
      v52 = *a5;
      v53.displayName = v30;
      v31 = *(a5 + 48);
      v53.firstName = *(a5 + 32);
      v53.lastName = v31;
      v32 = v60.displayName;
      *a5 = v59;
      *(a5 + 16) = v32;
      v33 = v60.firstName;
      lastName = v60.lastName;
      v35 = v61;
      *(a5 + 80) = v60.phoneNumber;
      *(a5 + 96) = v35;
      emailAddress = v60.emailAddress;
      *(a5 + 48) = lastName;
      *(a5 + 64) = emailAddress;
      *(a5 + 32) = v33;
      sub_21D1D9C94(&displayName, &v51);
      sub_21D0CF7E0(&v52, &qword_27CE62638, &qword_21DC2B5F8);

LABEL_21:
      v65 = v7;
      a4 = *(v7 + 16);
      v37 = *(v7 + 24);
      v10 = v48;
      if (a4 >= v37 >> 1)
      {
        a1 = sub_21D18EFC4((v37 > 1), a4 + 1, 1);
        v10 = v48;
        v7 = v65;
      }

      *(v7 + 16) = a4 + 1;
      v38 = v7 + 112 * a4;
      v39 = v59;
      v40 = v60.firstName;
      *(v38 + 48) = v60.displayName;
      *(v38 + 64) = v40;
      *(v38 + 32) = v39;
      v41 = v60.lastName;
      v42 = v60.emailAddress;
      v43 = v61;
      *(v38 + 112) = v60.phoneNumber;
      *(v38 + 128) = v43;
      *(v38 + 80) = v41;
      *(v38 + 96) = v42;
      if (v47 == v11)
      {
        return v7;
      }

      if (__OFADD__(++v11, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        v44 = a1;
        v6 = sub_21DBFBD7C();
        a1 = v44;
        goto LABEL_3;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21D82EDA4(char a1)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
  v3 = sub_21D1DD1FC();
  swift_beginAccess();
  *(v3 + 40) |= a1 & 1;
  *(v3 + 48) = 0;
  v4._object = 0x800000021DC49D80;
  v4._countAndFlagsBits = 0xD000000000000017;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v4);

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router), *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router + 24));
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_21D305824();
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_21D82EED8(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

void sub_21D82EF18(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

double sub_21D82EF5C(void *a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 2)
  {
    sub_21D157864(a1, a2);

    return sub_21D575DF4(a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_21D82EFF4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622B0, &unk_21DC1CB70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  sub_21D82FC78(a1, &v11 - v4, type metadata accessor for TTRHashtagEditorModuleState);
  v6 = type metadata accessor for TTRHashtagEditorModuleState(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_lastHashtagEditorModuleState;
  swift_beginAccess();
  sub_21D0F02F4(v5, v1 + v7, &unk_27CE622B0, &unk_21DC1CB70);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater), *(v1 + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater + 24));
  v8 = sub_21D1DD1FC();
  swift_beginAccess();
  *(v8 + 40) |= 1uLL;
  *(v8 + 48) = 0;
  v9._object = 0x800000021DC49D80;
  v9._countAndFlagsBits = 0xD000000000000017;
  TTRDeferredAction.scheduleNextRunLoop(reason:)(v9);
}

uint64_t sub_21D82F1CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21D0F00D0;

  return sub_21D824C74(a1, v4, v5, v6, v7, v8, v9);
}

void sub_21D82F2A4(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_21DBF66FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v17 = Strong, v18 = [Strong navigationController], v17, v18))
  {
    v36 = a3;
    LODWORD(v37) = a2;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680, &unk_21DC1D040) + 48);
    *v15 = [a1 objectID];
    v20 = *MEMORY[0x277D45198];
    v21 = sub_21DBF66BC();
    (*(*(v21 - 8) + 104))(&v15[v19], v20, v21);
    v22 = *MEMORY[0x277D45168];
    v23 = sub_21DBF66DC();
    (*(*(v23 - 8) + 104))(&v15[v19], v22, v23);
    (*(v13 + 104))(v15, *MEMORY[0x277D45248], v12);
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v24 = sub_21DBF84BC();
    __swift_project_value_buffer(v24, qword_27CE62450);
    sub_21DBF66EC();
    v25 = sub_21DBF54CC();
    (*(*(v25 - 8) + 56))(v11, 0, 1, v25);
    sub_21DAEAF90(0xD000000000000010, 0x800000021DC6CBD0, 0x6E6F697461636F4CLL, 0xEF72656B63695020, v11);
    sub_21D0CF7E0(v11, &qword_27CE5EA20, &qword_21DC0D4A0);
    v26 = [a1 saveRequest];
    v27 = [v26 store];

    type metadata accessor for TTRReminderLocationPickerInteractor.ReminderEditor();
    v28 = swift_allocObject();
    v28[2] = a1;
    v28[3] = a4;
    v29 = a4;
    v28[4] = 0;
    v30 = a1;
    v31 = sub_21D581F70(v27, v28, 0, 0, v36, &off_282ED4F78, v29);

    swift_unknownObjectRelease();
    [v18 pushViewController:v31 animated:v37 & 1];

    (*(v13 + 8))(v15, v12);
  }

  else
  {
    if (qword_27CE56D08 != -1)
    {
      swift_once();
    }

    v32 = sub_21DBF84BC();
    __swift_project_value_buffer(v32, qword_27CE62450);
    v37 = sub_21DBF84AC();
    v33 = sub_21DBFAECC();
    if (os_log_type_enabled(v37, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_21D0C9000, v37, v33, "Failed to get navigation controller -- Failed to show location picker", v34, 2u);
      MEMORY[0x223D46520](v34, -1, -1);
    }

    v35 = v37;
  }
}

uint64_t sub_21D82F798()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 184))(0, ObjectType, v1);
}

uint64_t sub_21D82F7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D81F964(a1, v4, v5, v6);
}

uint64_t sub_21D82F8BC@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21D82F904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D82F96C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D82F9D4(uint64_t a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v3 = objc_opt_self();
  v4 = sub_21DBFA12C();

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D82FC18;
  *(v6 + 24) = v5;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_109_0;
  v7 = _Block_copy(aBlock);
  v8 = v1;
  sub_21DBF8E0C();

  [v3 withActionName:v4 block:{v7, 0x800000021DC4FCD0}];

  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D82FC18()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 320))(v1, ObjectType, v2);
}

uint64_t sub_21D82FC78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D82FCE0(void *a1)
{
  v2 = v1;
  sub_21D0D8CF0(0, &unk_27CE626A0, 0x277D445D8);
  v4 = a1;
  v5 = sub_21DBFB4AC();
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v6 = objc_opt_self();
  v7 = sub_21DBFA12C();

  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v5;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21D82FF60;
  *(v9 + 24) = v8;
  aBlock[4] = sub_21D0E622C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_119_1;
  v10 = _Block_copy(aBlock);
  v11 = v5;

  v12 = v2;

  [v6 withActionName:v7 block:{v10, 0x800000021DC47980}];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D82FF60()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 232))(v1, ObjectType, v2);
}

uint64_t sub_21D82FFC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D826528(a1, v4, v5, v6, v7);
}

uint64_t sub_21D830084()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 128))(v1, ObjectType, v2);
}

double sub_21D830184(void *a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double sub_21D8301D4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != 1)
  {
    sub_21DBF8E0C();
    v7 = a1;

    sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D830224()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor + 8);
  ObjectType = swift_getObjectType();
  return (*(v2 + 184))(v1, ObjectType, v2);
}

uint64_t sub_21D830290(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D821B94(a1, v4, v5, v6);
}

uint64_t sub_21D830358(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D820D98(a1, v4, v5, v6);
}

uint64_t sub_21D83040C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D820928(a1, v4, v5, v6);
}

id TTRIReminderDetailInCalendarEditingOptions.dueDateOverride.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t TTRIReminderDetailInCalendarEditingOptions.init(dueDateOverride:newUserInterfaceStyleEnabled:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

_OWORD *sub_21D8305F0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char **a6@<X8>)
{
  v84 = a5;
  v85 = a4;
  v88 = a3;
  v89 = a2;
  v93 = a1;
  v86 = a6;
  v6 = sub_21DBF9D8C();
  v91 = *(v6 - 8);
  v92 = v6;
  MEMORY[0x28223BE20](v6);
  v90 = (&v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRReminderTitleAttributesNoOpInteractor();
  v11 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B2F0, &qword_21DC130C0);
  swift_allocObject();
  *(v11 + 16) = sub_21DBF907C();
  v106[3] = v10;
  v106[4] = &protocol witness table for TTRReminderTitleAttributesNoOpInteractor;
  v106[0] = v11;
  type metadata accessor for TTRReminderCellTitleInteractor();
  memset(v104, 0, sizeof(v104));
  v105 = 0;
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  v83 = v12;
  swift_unknownObjectWeakInit();
  v82 = type metadata accessor for TTRIReminderCellTitleRouter();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v95 = v13;
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v14 = swift_allocObject();
  *(v14 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter(0);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84FA0];
  v15[5] = MEMORY[0x277D84FA0];
  v15[6] = v16;
  v15[7] = 0;
  sub_21DBF78BC();
  v15[2] = v14;
  v15[3] = &protocol witness table for TTRReminderCellHashtagInteractor;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v17 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v17 + 16) = swift_allocObject();
  *(v17 + 24) = 75;
  v15[4] = v17;
  v18 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
  v19 = swift_allocObject();
  v19[1] = vdupq_n_s64(0x4043000000000000uLL);
  v19[2].i64[0] = 0x405C800000000000;
  v19[2].i8[8] = 1;
  v87 = sub_21D0CE468();
  v20 = sub_21DBFB12C();
  sub_21DBF60DC();
  v21 = sub_21DBF60CC();
  v22 = type metadata accessor for TTRThumbnailGenerator();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  v24 = objc_allocWithZone(MEMORY[0x277CCABD8]);
  v25 = v20;
  v26 = [v24 init];
  *(v23 + 24) = v26;
  [v26 setUnderlyingQueue_];

  *(&v102 + 1) = v22;
  v103 = &protocol witness table for TTRThumbnailGenerator;
  *&v101 = v23;
  type metadata accessor for TTRAttachmentThumbnailsManager();
  v27 = swift_allocObject();
  v27[5] = v18;
  v27[6] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
  v27[2] = v19;
  v28 = v94;
  v29 = MEMORY[0x277D84F98];
  v27[12] = 0;
  v27[13] = v29;
  v27[14] = v16;
  sub_21D0D0FD0(&v101, (v27 + 7));
  sub_21D1D338C(v93, v28);
  sub_21D0D32E4(v106, &v101);
  type metadata accessor for TTRReminderCellTitleEditingPresenter(0);
  v30 = swift_allocObject();
  *(v30 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v30 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesCancellable) = 0;
  v31 = (v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleEditingSession);
  *v31 = 0;
  v31[1] = 0;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_shouldSkipSavingEditingSession) = 0;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleSuggestedAttributeAcceptance) = v29;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isCommittingForShowReminderDetail) = 0;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = 0;
  sub_21D1D338C(v28, v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_item);
  v32 = (v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_inlineHashtagEditingPresenter);
  *v32 = v15;
  v32[1] = &protocol witness table for TTRReminderCellInlineHashtagEditingPresenter;
  sub_21D0D0FD0(&v101, v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_titleAttributesInteractor);
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_isSingleReminderEditingMode) = 1;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_animatesReminderCreationForReturnKey) = 0;
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_parentType) = 2;
  swift_beginAccess();
  *(v30 + 40) = v88;
  swift_unknownObjectWeakAssign();
  *(v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_attachmentThumbnailsManager) = v27;
  v33 = v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state;
  sub_21D24BDFC(v28, v30 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellTitleEditingPresenter_state);
  v34 = _s15RemindersUICore12EditingStateVMa_1(0);
  *(v33 + v34[5]) = 0;
  *(v33 + v34[6]) = 0;
  v35 = (v33 + v34[7]);
  *v35 = 0u;
  v35[1] = 0u;
  v36 = (v33 + v34[8]);
  *v36 = 0u;
  v36[1] = 0u;
  *(v33 + v34[9]) = 0;
  *(v33 + v34[10]) = 0;
  *(v33 + v34[11]) = 0;
  v37 = qword_280D155F0;

  v89 = v15;

  if (v37 != -1)
  {
    swift_once();
  }

  if (qword_280D15600)
  {
    v38 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v39 = sub_21DBFA12C();
    v88 = [v38 initWithBundleIdentifier_];
  }

  else
  {
    v88 = [objc_opt_self() currentNotificationCenter];
  }

  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v40 = [objc_opt_self() daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  v41 = swift_allocObject();
  v41[3] = 0;
  swift_unknownObjectWeakInit();
  v41[18] = 0;
  swift_beginAccess();
  v41[3] = &off_282EC4F60;
  swift_unknownObjectWeakAssign();
  v42 = type metadata accessor for TTRGeoLocationService(0);
  v99 = v42;
  v100 = &protocol witness table for TTRGeoLocationService;
  v43 = sub_21DBFB12C();
  v45 = v90;
  v44 = v91;
  *v90 = v43;
  v46 = v92;
  (*(v44 + 104))(v45, *MEMORY[0x277D85200], v92);
  v47 = sub_21DBF9DAC();
  result = (*(v44 + 8))(v45, v46);
  if (v47)
  {
    v92 = v27;
    *&v98 = sub_21D0D7EE0(objc_allocWithZone(v42), 0, 0);
    sub_21D0D0FD0(&v98, (v41 + 4));
    type metadata accessor for TTRNotificationsAccessService();
    v49 = swift_allocObject();
    v49[2] = v40;
    v49[3] = &protocol witness table for REMDaemonUserDefaults;
    v50 = v88;
    v49[4] = v88;
    v41[9] = v49;
    v41[10] = &protocol witness table for TTRNotificationsAccessService;
    v41[11] = v40;
    v41[12] = &protocol witness table for REMDaemonUserDefaults;
    sub_21D0D3954(&v101, &v96, &qword_27CE5E0A0, &unk_21DC1BB80);
    if (v97)
    {
      v51 = v40;
      sub_21D0CF7E0(&v101, &qword_27CE5E0A0, &unk_21DC1BB80);
      sub_21D0D0FD0(&v96, &v98);
    }

    else
    {
      v52 = type metadata accessor for TTRUrgentAlarmAuthorizationService();
      v53 = swift_allocObject();
      v54 = sub_21DBF5EAC();
      swift_allocObject();
      v55 = v40;
      v56 = v50;
      v57 = sub_21DBF5E9C();
      v58 = MEMORY[0x277D44D00];
      v53[5] = v54;
      v53[6] = v58;
      v53[2] = v57;
      v99 = v52;
      v100 = &protocol witness table for TTRUrgentAlarmAuthorizationService;

      *&v98 = v53;
      sub_21D0CF7E0(&v101, &qword_27CE5E0A0, &unk_21DC1BB80);
      if (v97)
      {
        sub_21D0CF7E0(&v96, &qword_27CE5E0A0, &unk_21DC1BB80);
      }
    }

    sub_21D0D0FD0(&v98, (v41 + 13));
    v59 = v94;
    sub_21D1D338C(v93, v94);
    sub_21D0D3954(v104, &v101, &qword_27CE5E0A8, &unk_21DC1C6F0);
    v60 = v82;
    v99 = v82;
    v100 = &off_282EC4F50;
    *&v98 = v95;
    type metadata accessor for TTRIReminderCellTitlePresenter(0);
    v61 = swift_allocObject();
    v62 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v60);
    v63 = MEMORY[0x28223BE20](v62);
    v65 = (&v82 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v66 + 16))(v65, v63);
    v67 = *v65;
    v68 = &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_router];
    *(v68 + 3) = v60;
    *(v68 + 4) = &off_282EC4F50;
    *v68 = v67;
    *(v61 + 3) = 0;
    swift_unknownObjectWeakInit();
    *(v61 + 5) = 0;
    swift_unknownObjectWeakInit();
    *(v61 + 7) = 0;
    swift_unknownObjectWeakInit();
    v69 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_viewModel;
    v70 = type metadata accessor for TTRReminderCellTitleViewModel(0);
    (*(*(v70 - 8) + 56))(&v61[v69], 1, 1, v70);
    sub_21D24BDFC(v59, &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_item]);
    v71 = &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_interactor];
    v72 = v83;
    *v71 = v83;
    v71[1] = &protocol witness table for TTRReminderCellTitleInteractor;
    v73 = &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_editingPresenter];
    *v73 = v30;
    v73[1] = &protocol witness table for TTRReminderCellTitleEditingPresenter;
    v74 = &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_quickBar];
    *v74 = 0;
    *(v74 + 1) = 0;
    v75 = &v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_augmentationSplitter];
    v76 = v102;
    *v75 = v101;
    *(v75 + 1) = v76;
    *(v75 + 4) = v103;
    *&v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_privacyChecker] = v41;
    v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_ownerModule] = 2;
    *&v61[OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellTitlePresenter_returnKeyType] = 0;

    __swift_destroy_boxed_opaque_existential_0(&v98);
    v77 = type metadata accessor for TTRIReminderCellTitleViewController();
    v78 = objc_allocWithZone(v77);

    v80 = sub_21D57816C(v79, v78);
    swift_beginAccess();
    *(v72 + 24) = &off_282EC5918;
    swift_unknownObjectWeakAssign();
    *(v61 + 3) = &off_282EC5640;
    swift_unknownObjectWeakAssign();
    *(v61 + 7) = v84;
    swift_unknownObjectWeakAssign();
    swift_beginAccess();
    *(v30 + 24) = &off_282EC58C8;
    swift_unknownObjectWeakAssign();
    *(&v102 + 1) = v77;

    *&v101 = v80;

    sub_21D0CF7E0(v104, &qword_27CE5E0A8, &unk_21DC1C6F0);
    __swift_destroy_boxed_opaque_existential_0(v106);
    v81 = v86;
    *v86 = v61;
    v81[1] = &off_282EC5888;
    return sub_21D0CF2E8(&v101, v81 + 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21D8311E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v42[0] = a4;
  v42[1] = a3;
  v43 = a5;
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TTRReminderCellNotesInteractor();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = type metadata accessor for TTRIReminderCellNotesRouter();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  type metadata accessor for TTRReminderCellHashtagInteractor();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter(0);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D84FA0];
  v14[5] = MEMORY[0x277D84FA0];
  v14[6] = v15;
  v14[7] = 0;
  sub_21DBF78BC();
  v14[2] = v13;
  v14[3] = &protocol witness table for TTRReminderCellHashtagInteractor;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v16 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v16 + 16) = swift_allocObject();
  *(v16 + 24) = 75;
  v14[4] = v16;
  type metadata accessor for TTRParagraphStyleEditingPresenter();
  v17 = swift_allocObject();
  sub_21D1D338C(a1, v9);
  type metadata accessor for TTRReminderCellNotesEditingPresenter(0);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + 40) = 0;
  swift_unknownObjectWeakInit();
  v19 = (v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_notesEditingSession);
  *v19 = 0;
  v19[1] = 0;
  *(v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_shouldSkipSavingEditingSession) = 0;
  v20 = v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_state;
  *v20 = 0;
  *(v20 + 24) = 0u;
  *(v20 + 8) = 0u;
  sub_21D24BDFC(v9, v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_item);
  v21 = (v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_inlineHashtagEditingPresenter);
  *v21 = v14;
  v21[1] = &protocol witness table for TTRReminderCellInlineHashtagEditingPresenter;
  v22 = (v18 + OBJC_IVAR____TtC15RemindersUICore36TTRReminderCellNotesEditingPresenter_paragraphStyleEditingPresenter);
  *v22 = v17;
  v22[1] = &protocol witness table for TTRParagraphStyleEditingPresenter;
  swift_beginAccess();
  *(v18 + 40) = a2;
  swift_unknownObjectWeakAssign();
  sub_21D1D338C(a1, v9);
  v44[3] = v11;
  v44[4] = &off_282EC4E18;
  v44[0] = v12;
  type metadata accessor for TTRIReminderCellNotesPresenter(0);
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v44, v11);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = (v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = *v27;
  v30 = (v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_router);
  v30[3] = v11;
  v30[4] = &off_282EC4E18;
  *v30 = v29;
  *(v23 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v23 + 64) = 0;
  swift_unknownObjectWeakInit();
  v31 = OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_viewModel;
  v32 = type metadata accessor for TTRIReminderCellNotesViewModel(0);
  (*(*(v32 - 8) + 56))(v23 + v31, 1, 1, v32);
  sub_21D24BDFC(v9, v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_item);
  *(v23 + 16) = 1;
  v33 = (v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_interactor);
  *v33 = v10;
  v33[1] = &protocol witness table for TTRReminderCellNotesInteractor;
  v34 = (v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_editingPresenter);
  *v34 = v18;
  v34[1] = &protocol witness table for TTRReminderCellNotesEditingPresenter;
  v35 = (v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_quickBar);
  *v35 = 0;
  v35[1] = 0;
  *(v23 + OBJC_IVAR____TtC15RemindersUICore30TTRIReminderCellNotesPresenter_ownerModule) = 2;

  __swift_destroy_boxed_opaque_existential_0(v44);
  v36 = type metadata accessor for TTRIReminderCellNotesViewController();
  v37 = objc_allocWithZone(v36);

  v39 = sub_21D590F80(v38, v37);
  swift_beginAccess();
  *(v10 + 24) = &off_282EC5AB0;
  swift_unknownObjectWeakAssign();
  *(v23 + 32) = &off_282EC56F0;
  swift_unknownObjectWeakAssign();
  *(v23 + 48) = v42[0];
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(v18 + 24) = &off_282EC5A70;
  swift_unknownObjectWeakAssign();
  v40 = v43;
  v43[5] = v36;

  v40[2] = v39;
  *v40 = v23;
  v40[1] = &off_282EC5A28;
  return result;
}

id static TTRIReminderDetailAssembly.createPlaceholderViewController()()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  result = [v0 view];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() systemGroupedBackgroundColor];
    [v2 setBackgroundColor_];

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id TTRIReminderDetailAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIReminderDetailAssembly.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRIReminderDetailAssembly();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TTRIReminderDetailAssembly.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TTRIReminderDetailAssembly();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_21D8318E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = type metadata accessor for TTRIReminderDetailRouter();
  v18 = &off_282ED4DA8;
  *&v16 = a2;
  type metadata accessor for TTRIReminderDetailDueDatePresenterCapability();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 3;
  *(v8 + 34) = 0;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 56) = 2;
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v9 = qword_280D1AA18;
  type metadata accessor for TTRTimeZoneOverrideMenuPresenterCapability();
  v10 = swift_allocObject();
  v14 = type metadata accessor for TTRUserDefaults();
  v15 = &protocol witness table for TTRUserDefaults;
  *&v13 = v9;
  sub_21D0D0FD0(&v13, (v10 + 2));
  v10[7] = sub_21D4C4CA0;
  v10[8] = 0;
  v10[9] = sub_21D8B7CAC;
  v10[10] = 0;
  *(v8 + 136) = v10;
  *(v8 + 64) = a1;
  *(v8 + 72) = &protocol witness table for TTRReminderDetailInteractor;
  sub_21D0D0FD0(&v16, v8 + 80);
  *(v8 + 120) = a3;
  *(v8 + 128) = a4;
  v11 = v9;
  return v8;
}

uint64_t sub_21D831A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void *a6, __int128 *a7, uint64_t a8, __int128 *a9)
{
  v233 = a6;
  v234 = a3;
  LODWORD(v232) = a5;
  v235 = a2;
  v13 = sub_21DBF9D8C();
  v249 = *(v13 - 1);
  v250 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = (&v223 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a7[3];
  v277[2] = a7[2];
  v277[3] = v16;
  v17 = a7[4];
  v18 = a7[1];
  v277[0] = *a7;
  v277[1] = v18;
  v19 = *a9;
  v20 = a9[1];
  v277[4] = v17;
  v278[0] = v19;
  v21 = a9[2];
  v22 = a9[3];
  v278[1] = v20;
  v278[2] = v21;
  v23 = *a1;
  v24 = *(a1 + 8);
  v243 = *a4;
  LODWORD(a1) = *(a4 + 8);
  v25 = *a8;
  v26 = *(a8 + 8);
  v27 = *(a8 + 24);
  v240 = *(a8 + 16);
  v241 = v26;
  v238 = v25;
  v239 = v27;
  v237 = *(a8 + 32);
  v278[3] = v22;
  v28 = [v23 saveRequest];
  v247 = [v28 store];

  v29 = objc_allocWithZone(TTRUndoManager);
  v30 = v24;
  v31 = sub_21DBFA12C();
  v32 = [v29 initWithDebugIdentifier_];

  v33 = 0;
  v34 = a7[3];
  v271 = a7[2];
  v272 = v34;
  v273 = a7[4];
  v36 = *a7;
  v35 = a7[1];
  v261[0] = v23;
  v261[1] = v30;
  v269 = v36;
  v270 = v35;
  v37 = a9[1];
  v265 = *a9;
  v266 = v37;
  v38 = a9[2];
  v39 = a9[3];
  v242 = a1;
  v267 = v38;
  v268 = v39;
  if ((a1 & 0xC0) == 0x40)
  {
    v40 = v243;
    if (v243)
    {
      v41 = v243;
      v33 = v40;
    }

    else
    {
      v33 = 1;
    }
  }

  v264[0] = v33;
  type metadata accessor for TTRReminderDetailInteractor();
  swift_allocObject();

  v42 = v32;
  v43 = v23;
  sub_21D833B94(v277, &v252);
  sub_21D0D3954(v278, &v252, &qword_27CE59DD8, &qword_21DC0D110);
  v251 = TTRReminderDetailInteractor.init(subject:undoManager:pendingMoveContext:manualOrdering:dueDateSource:)(v261, v42, &v269, &v265, v264);
  sub_21D0CE468();
  *v15 = sub_21DBFB12C();
  v45 = v249;
  v44 = v250;
  (*(v249 + 104))(v15, *MEMORY[0x277D85200], v250);
  v46 = sub_21DBF9DAC();
  (*(v45 + 8))(v15, v44);
  if (v46)
  {
    v230 = v42;
    v226 = type metadata accessor for TTRGeoLocationService(0);
    v47 = sub_21D0D7EE0(objc_allocWithZone(v226), 0, 0);
    sub_21DBF60DC();
    v48 = sub_21DBF60BC();
    sub_21DBFB12C();
    v49 = sub_21DBF633C();
    swift_allocObject();
    v231 = v48;
    v50 = sub_21DBF62FC();

    v51 = sub_21DBFB12C();
    type metadata accessor for TTRParticipantAvatarProvider();
    v52 = swift_allocObject();
    v53 = MEMORY[0x277D44FA8];
    *(v52 + 40) = v49;
    *(v52 + 48) = v53;
    *(v52 + 16) = v50;
    *(v52 + 88) = 0u;
    *(v52 + 104) = 0u;
    *(v52 + 120) = 0;
    *(v52 + 56) = sub_21D833C04;
    *(v52 + 64) = 0;
    *(v52 + 72) = 0;
    *(v52 + 80) = v51;
    v248 = v52;
    type metadata accessor for TTRReminderLocationOptionsProvider();
    v54 = swift_allocObject();

    v55 = v247;
    v56 = v47;
    v57 = sub_21D5A4408(v55, v50, v56, v54);
    v229 = v55;

    type metadata accessor for TTRTimeZoneProvider();
    v58 = swift_allocObject();
    v58[2] = 0;
    sub_21DBFB12C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E708, &qword_21DC2D070);
    swift_allocObject();
    v59 = sub_21DBF6B5C();
    v247 = v58;
    v58[2] = v59;

    type metadata accessor for TTRLocationQuickPicksInteractor();
    v60 = swift_allocObject();
    v61 = v56;

    v250 = v61;
    v228 = v57;
    v236 = sub_21D5A3CE4(v61, v57, v60);
    v223 = type metadata accessor for TTRIReminderDetailRouter();
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v62 + 32) = 0;
    swift_unknownObjectWeakInit();
    type metadata accessor for TTRIReminderDetailDueDateRouterCapability();
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    *(v63 + 24) = 0x7265646E696D6552;
    *(v63 + 32) = 0xEF6C696174654420;
    v246 = v62;
    *(v62 + 40) = v63;
    v64 = type metadata accessor for TTRAttachmentThumbnailSizeProvider();
    v65 = swift_allocObject();
    __asm { FMOV            V0.2D, #29.0 }

    *(v65 + 16) = _Q0;
    *(v65 + 32) = 0x4059000000000000;
    *(v65 + 40) = 1;
    v71 = sub_21DBFB12C();
    v72 = sub_21DBF60CC();
    v73 = type metadata accessor for TTRThumbnailGenerator();
    v74 = swift_allocObject();
    *(v74 + 16) = v71;
    v75 = objc_allocWithZone(MEMORY[0x277CCABD8]);
    v76 = v71;
    v77 = [v75 init];
    *(v74 + 24) = v77;
    [v77 setUnderlyingQueue_];

    *&v271 = &protocol witness table for TTRThumbnailGenerator;
    *(&v270 + 1) = v73;
    *&v269 = v74;
    type metadata accessor for TTRAttachmentThumbnailsManager();
    v78 = swift_allocObject();
    v78[5] = v64;
    v78[6] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
    v79 = MEMORY[0x277D84F98];
    v78[2] = v65;
    v78[12] = 0;
    v78[13] = v79;
    v78[14] = MEMORY[0x277D84FA0];
    v245 = v78;
    sub_21D0D0FD0(&v269, (v78 + 7));
    *&v271 = MEMORY[0x277D44FA8];
    *(&v270 + 1) = v49;
    *&v269 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_21DC09CF0;
    v81 = objc_opt_self();
    v249 = v50;

    *(v80 + 32) = [v81 descriptorForRequiredKeys];
    type metadata accessor for TTRUserActivityMetadataInterator();
    swift_allocObject();
    v244 = TTRUserActivityMetadataInterator.init(contactsProvider:contactKeys:)(&v269, v80);
    if (qword_280D155F0 == -1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_7:
  if (qword_280D15600)
  {
    v82 = objc_allocWithZone(MEMORY[0x277CE2028]);
    v83 = sub_21DBFA12C();
    v84 = [v82 initWithBundleIdentifier_];
  }

  else
  {
    v84 = [objc_opt_self() currentNotificationCenter];
  }

  *&v271 = 0;
  v269 = 0u;
  v270 = 0u;
  v85 = objc_opt_self();
  v86 = v250;
  v87 = [v85 daemonUserDefaults];
  type metadata accessor for TTRIPrivacyChecker();
  v88 = swift_allocObject();
  v88[3] = 0;
  swift_unknownObjectWeakInit();
  v88[18] = 0;
  swift_beginAccess();
  v88[3] = &off_282ED4D98;
  swift_unknownObjectWeakAssign();
  v88[4] = v86;
  v225 = v88 + 4;
  v88[7] = v226;
  v88[8] = &protocol witness table for TTRGeoLocationService;
  type metadata accessor for TTRNotificationsAccessService();
  v89 = swift_allocObject();
  v89[2] = v87;
  v89[3] = &protocol witness table for REMDaemonUserDefaults;
  v89[4] = v84;
  v88[9] = v89;
  v88[10] = &protocol witness table for TTRNotificationsAccessService;
  v88[11] = v87;
  v88[12] = &protocol witness table for REMDaemonUserDefaults;
  v250 = v88;
  sub_21D0D3954(&v269, &v265, &qword_27CE5E0A0, &unk_21DC1BB80);
  v227 = v86;
  if (*(&v266 + 1))
  {
    v90 = v87;
    sub_21D0CF7E0(&v269, &qword_27CE5E0A0, &unk_21DC1BB80);
    sub_21D0D0FD0(&v265, &v252);
  }

  else
  {
    v91 = type metadata accessor for TTRUrgentAlarmAuthorizationService();
    v92 = swift_allocObject();
    v93 = sub_21DBF5EAC();
    swift_allocObject();
    v94 = v87;
    v95 = v86;
    v96 = v94;
    v97 = v84;
    v98 = sub_21DBF5E9C();
    v99 = MEMORY[0x277D44D00];
    v92[5] = v93;
    v92[6] = v99;
    v92[2] = v98;
    *(&v253 + 1) = v91;
    *&v254 = &protocol witness table for TTRUrgentAlarmAuthorizationService;

    *&v252 = v92;
    sub_21D0CF7E0(&v269, &qword_27CE5E0A0, &unk_21DC1BB80);
    if (*(&v266 + 1))
    {
      sub_21D0CF7E0(&v265, &qword_27CE5E0A0, &unk_21DC1BB80);
    }
  }

  sub_21D0D0FD0(&v252, (v250 + 13));
  *&v267 = &off_282ED4DD0;
  v100 = v223;
  *(&v266 + 1) = v223;
  *&v265 = v246;
  v224 = type metadata accessor for TTRIReminderDetailPresenter(0);
  v101 = objc_allocWithZone(v224);
  v102 = __swift_mutable_project_boxed_opaque_existential_1(&v265, *(&v266 + 1));
  v226 = &v223;
  v103 = MEMORY[0x28223BE20](v102);
  v105 = (&v223 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v106 + 16))(v105, v103);
  v107 = *v105;
  v263 = &off_282ED4DD0;
  v262 = v100;
  v261[0] = v107;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v108 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleState;
  type metadata accessor for TTRModuleState();
  swift_allocObject();
  v109 = v243;
  v110 = v242;
  sub_21D8335E8(v243, v242);

  v111 = v236;

  v112 = v248;

  v113 = v247;

  v114 = v245;

  sub_21D8301D4(v238, v241, v240, v239, v237);
  *&v101[v108] = sub_21D0D852C(0x7265646E696D6552, 0xEF736C6961746544);
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_deferredUpdatesCancellable] = 0;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationTriggerCancellable] = 0;
  v115 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_lastHashtagEditorModuleState;
  v116 = type metadata accessor for TTRHashtagEditorModuleState(0);
  (*(*(v116 - 8) + 56))(&v101[v115], 1, 1, v116);
  v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_subtasksDidUpdate] = 0;
  v117 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_editingSessionSharedProperties;
  type metadata accessor for TTRRemindersListEditingSessionPropertiesSharingWrapper();
  v118 = swift_allocObject();
  v119 = MEMORY[0x277D84F98];
  *(v118 + 16) = MEMORY[0x277D84F98];
  *&v101[v117] = v118;
  v120 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility];
  *v120 = 0u;
  *(v120 + 1) = 0u;
  *(v120 + 4) = 0;
  v120[40] = -1;
  v121 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility];
  *v121 = 0u;
  *(v121 + 1) = 0u;
  *(v121 + 4) = 0;
  v121[40] = -1;
  v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_completionState] = 0;
  v122 = OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_frozenViewModelBeforeCancelingChanges;
  v123 = type metadata accessor for TTRReminderDetailViewModel(0);
  (*(*(v123 - 8) + 56))(&v101[v122], 1, 1, v123);
  *&v269 = v109;
  BYTE8(v269) = v110;
  v124 = sub_21D257A70(&v269);
  v125 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_configuration];
  *v125 = v124 & 1;
  v125[1] = BYTE1(v124);
  v125[2] = BYTE2(v124) & 1;
  v125[3] = BYTE3(v124) & 1;
  v125[4] = BYTE4(v124) & 1;
  *(v125 + 1) = v126;
  *(v125 + 2) = v127;
  v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_savesOnCommit] = v232 & 1;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_itemCount] = v233;
  v128 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_interactor];
  *v128 = v251;
  v128[1] = &protocol witness table for TTRReminderDetailInteractor;
  v129 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_locationQuickPicksInteractor];
  *v129 = v111;
  v129[1] = &protocol witness table for TTRLocationQuickPicksInteractor;
  sub_21D0D32E4(v261, &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_router]);
  v130 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_makeCellTitleModule];
  *v130 = sub_21D8305F0;
  v130[1] = 0;
  v131 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_makeCellNotesModule];
  *v131 = sub_21D8311E0;
  v131[1] = 0;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_contactsProvider] = v249;
  type metadata accessor for TTRIAssigneeOptionMenuImageProvider();
  v132 = swift_allocObject();
  v133 = MEMORY[0x277D84F90];
  v132[3] = MEMORY[0x277D84F90];
  v132[4] = v119;
  v132[2] = v112;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_assigneeMenuItemAvatarProvider] = v132;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_timeZoneProvider] = v113;
  v134 = v250;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_privacyChecker] = v250;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_attachmentThumbnailsManager] = v114;
  v135 = objc_allocWithZone(type metadata accessor for TTRIAttachmentImportingController());

  v136 = [v135 init];
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_attachmentImportingController] = v136;
  type metadata accessor for TTRInCellEditingPresenterManagingHelper(0);
  swift_allocObject();
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_inCellEditingPresenterHelper] = sub_21DBCEC2C(v133);
  v137 = type metadata accessor for TTRReminderDetailDisplayUpdater();
  v138 = swift_allocObject();
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE626B8, &unk_21DC2B7D0);
  swift_allocObject();
  *(v138 + 16) = sub_21DBF907C();
  *(v138 + 24) = 0;
  v139 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_displayUpdater];
  v139[3] = v137;
  v139[4] = &off_282EAC500;
  *v139 = v138;
  v140 = __swift_project_boxed_opaque_existential_1(v261, v262);
  v141 = MEMORY[0x28223BE20](v140);
  v143 = (&v223 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v144 + 16))(v143, v141);
  v145 = *v143;

  v146 = sub_21D8318E0(v251, v145, v134, v113);
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_dueDateCapability] = v146;
  *&v271 = &off_282EAC4F0;
  *(&v270 + 1) = v137;
  *&v269 = v138;
  v223 = v138;
  type metadata accessor for TTRReminderDetailUserActivityPresenterCapability();
  v147 = swift_allocObject();
  v148 = __swift_mutable_project_boxed_opaque_existential_1(&v269, v137);
  v149 = MEMORY[0x28223BE20](v148);
  v151 = (&v223 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v152 + 16))(v151, v149);
  v153 = *v151;
  v147[7] = v137;
  v147[8] = &off_282EAC4F0;
  v147[4] = v153;
  v147[2] = v244;
  v147[3] = &protocol witness table for TTRUserActivityMetadataInterator;

  __swift_destroy_boxed_opaque_existential_0(&v269);
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_userActivityCapability] = v147;
  v154 = &v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_state];
  *v154 = v146;
  *(v154 + 4) = 0;
  v154[10] = 0;
  v155 = v225;
  swift_beginAccess();
  v156 = v134[7];
  v157 = v134[8];
  v158 = __swift_project_boxed_opaque_existential_1(v155, v156);
  v225 = &v223;
  v159 = *(v156 - 8);
  v160 = MEMORY[0x28223BE20](v158);
  v162 = &v223 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v159 + 16))(v162, v160);
  v163 = *(v157 + 96);

  v233 = v147;

  v164 = v157;
  v165 = v223;
  v166 = v163(v156, v164);
  (*(v159 + 8))(v162, v156);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E720, &qword_21DC1CC70);
  v167 = swift_allocObject();
  *(v167 + 16) = 2;
  *(v167 + 40) = 0u;
  *(v167 + 56) = 0u;
  *(v167 + 24) = 0;
  *(v167 + 32) = v166;
  swift_beginAccess();
  *(v167 + 16) = 0;
  v168 = v224;
  *&v101[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_observerForShouldShowAsUnauthorizedForPreciseLocation] = v167;
  v260.receiver = v101;
  v260.super_class = v168;
  v169 = objc_msgSendSuper2(&v260, sel_init);
  v170 = *&v169[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_attachmentImportingController] + OBJC_IVAR____TtC15RemindersUICore33TTRIAttachmentImportingController_delegate;
  swift_beginAccess();
  *(v170 + 8) = &off_282ED4F88;
  swift_unknownObjectWeakAssign();
  v171 = *&v169[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_inCellEditingPresenterHelper];
  swift_beginAccess();
  *(v171 + 24) = &off_282ED4FA0;
  swift_unknownObjectWeakAssign();
  *&v269 = *(v165 + 16);
  sub_21D0D0F1C(&qword_27CE626C0, &qword_27CE626B8, &unk_21DC2B7D0, MEMORY[0x277CBCE20]);
  v172 = v169;
  *&v269 = sub_21DBF920C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE626C8, &unk_21DC2B7E0);
  sub_21D0D0F1C(&qword_27CE626D0, &qword_27CE626C8, &unk_21DC2B7E0, MEMORY[0x277CBCD90]);
  v173 = sub_21DBF91AC();

  *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_deferredUpdatesCancellable] = v173;

  v174 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v175 = *(v146 + 16);
  v176 = *(v146 + 24);
  *(v146 + 16) = sub_21D833BF0;
  *(v146 + 24) = v174;

  sub_21D0EC9F4(v175, v176);

  v177 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_21D59F07C(sub_21D5BB894, 0, sub_21D833BF8, v177);
  v178 = v238;

  if (v178 == 1)
  {
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v185 = v240;
    v184 = v241;
    v186 = v239;
    v187 = v237;
    v188 = -1;
  }

  else if (v178)
  {
    v185 = v240;
    v184 = v241;
    v186 = v239;
    v187 = v237;
    sub_21D8301D4(v178, v241, v240, v239, v237);
    v188 = 0;
    v179 = v178;
    v180 = v184;
    v181 = v185;
    v182 = v186;
    v183 = v187;
  }

  else
  {
    v179 = 0;
    v180 = 0;
    v181 = 0;
    v182 = 0;
    v183 = 0;
    v188 = 2;
    v185 = v240;
    v184 = v241;
    v186 = v239;
    v187 = v237;
  }

  v189 = &v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility];
  v190 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility];
  v191 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 8];
  v192 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 16];
  v193 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 24];
  v194 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_sectionPickerVisibility + 32];
  *v189 = v179;
  *(v189 + 1) = v180;
  *(v189 + 2) = v181;
  *(v189 + 3) = v182;
  *(v189 + 4) = v183;
  v195 = v189[40];
  v189[40] = v188;
  sub_21D7A98A0(v190, v191, v192, v193, v194, v195);
  if (v178 == 1)
  {
    v178 = 0;
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v196 = -1;
  }

  else if (v178)
  {
    v196 = 0;
  }

  else
  {
    sub_21D830184(0);
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v187 = 0;
    v196 = 2;
  }

  v197 = &v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility];
  v198 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility];
  v199 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 8];
  v200 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 16];
  v201 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 24];
  v202 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_initialSectionPickerVisibility + 32];
  *v197 = v178;
  *(v197 + 1) = v184;
  *(v197 + 2) = v185;
  *(v197 + 3) = v186;
  *(v197 + 4) = v187;
  v203 = v197[40];
  v197[40] = v196;
  sub_21D7A98A0(v198, v199, v200, v201, v202, v203);
  v204 = *&v172[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleState];

  sub_21D11DB30(2, v204);

  __swift_destroy_boxed_opaque_existential_0(v261);
  __swift_destroy_boxed_opaque_existential_0(&v265);
  type metadata accessor for TTRIReminderDetailViewController(0);
  v205 = v243;
  *&v269 = v243;
  v206 = v242;
  BYTE8(v269) = v242;
  v207 = v172;
  sub_21D8335E8(v205, v206);
  v208 = v207;
  sub_21DA93F7C(&v269, &v253 + 8);
  *&v252 = v208;
  *(&v252 + 1) = &off_282ED5178;
  v209 = v230;
  *&v253 = v230;
  v273 = v256;
  v274 = v257;
  v275 = v258;
  v276 = v259;
  v271 = v254;
  v272 = v255;
  v269 = v252;
  v270 = v253;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v211 = objc_opt_self();
  v212 = v209;
  v213 = v208;
  v214 = [v211 bundleForClass_];
  v215 = sub_21DBFA12C();
  v216 = [objc_opt_self() storyboardWithName:v215 bundle:v214];

  v217 = sub_21D5A4624(v216, 0xD000000000000020, 0x800000021DC6D3F0, &v269);
  sub_21D81A2B0(&v252);

  v218 = v213;
  TTRReminderDetailInteractor.delegate.setter(v172, &off_282ED50B0);
  v219 = v236;
  swift_beginAccess();
  v219[3] = &off_282ED50A0;
  swift_unknownObjectWeakAssign();
  *&v218[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_delegate + 8] = &off_282ED4748;
  swift_unknownObjectWeakAssign();
  v220 = &v218[OBJC_IVAR____TtC15RemindersUICore27TTRIReminderDetailPresenter_moduleDelegate];
  swift_beginAccess();
  *(v220 + 1) = v234;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();

  swift_unknownObjectWeakAssign();

  return v217;
}