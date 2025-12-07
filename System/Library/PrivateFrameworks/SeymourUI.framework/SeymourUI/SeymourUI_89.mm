void sub_20BF27DF8(uint64_t a1, char *a2, void (*a3)(uint64_t, char *, uint64_t), unint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8)
{
  v99 = a4;
  v98 = a3;
  ObjectType = swift_getObjectType();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v14 - 8);
  v87 = &v87 - v15;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v89 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v90 = &v87 - v18;
  MEMORY[0x28223BE20](v19);
  v91 = &v87 - v20;
  v88 = v21;
  MEMORY[0x28223BE20](v22);
  v93 = &v87 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v24 - 8);
  v100 = (&v87 - v25);
  v26 = sub_20C138204();
  v102 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v96 = &v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105[3] = a7;
  v105[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v105);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a5, a7);
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_resignActiveObserver] = 0;
  v29 = &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior];
  *v29 = 0;
  *(v29 + 1) = 0;
  v29[16] = -4;
  a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isTransitioningContentInset] = 0;
  a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_visibility] = 1;
  v30 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_standardNavigationBarTintColor;
  v31 = objc_opt_self();
  *&a6[v30] = [v31 whiteColor];
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentNavigationBarTintColor] = 0;
  a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isBeyondScrollBoundary] = 0;
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  v32 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_mediaTagStringBuilder;
  sub_20B51C710(&v104, &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_mediaTagStringBuilder]);
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider] = a2;
  v33 = &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_contentInsetInitialBehavior];
  *v33 = 0;
  v33[8] = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_eventHub] = v104;
  sub_20B51CC64(v105, &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_platform] = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(&v104, &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_bookmarkClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v104, &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v104, &a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_subscriptionToken] = sub_20C13A914();
  v34 = *(a2 + 4);
  v35 = *(a2 + 5);
  type metadata accessor for QueueActionsViewPresenter(0);
  v36 = swift_allocObject();

  v37 = sub_20BF91BD8(a1, v34, v35, a2, v36);
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter] = v37;
  sub_20B51CC64(&a6[v32], &v104);
  v38 = objc_allocWithZone(type metadata accessor for QueueActionsView());

  v97 = a1;
  v39 = sub_20BF91514(a1, v37, &v104, 0, v38);
  [v39 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a6[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsView] = v39;
  v103.receiver = a6;
  v103.super_class = ObjectType;
  v40 = objc_msgSendSuper2(&v103, sel_initWithNibName_bundle_, 0, 0);
  v41 = [v40 view];
  if (v41)
  {
    v42 = v41;
    sub_20B58CFB0(v98, v99);
    v43 = [v31 systemBackgroundColor];
    [v42 setBackgroundColor_];

    v44 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter;
    v45 = *&v40[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter];
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = (v45 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
    v48 = *(v45 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
    v49 = *(v45 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue + 8);
    *v47 = sub_20BF28F70;
    v47[1] = v46;

    sub_20B583ECC(v48, v49);

    v50 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
    swift_beginAccess();
    v51 = &a2[v50];
    v52 = v100;
    sub_20BF28D00(v51, v100);
    v53 = v102;
    LODWORD(v45) = (*(v102 + 6))(v52, 1, v26);

    v95 = a2;
    if (v45 == 1)
    {
      sub_20B520158(v52, &qword_27C7643F0, &qword_20C1536C0);
      v102 = v40;
      v54 = v90;
      sub_20B7D7B40(0, v90);
      sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
      v100 = sub_20C13D374();
      v55 = v92;
      ObjectType = *(v92 + 16);
      v56 = v89;
      v57 = v94;
      (ObjectType)(v89, v54, v94);
      v58 = (*(v55 + 80) + 16) & ~*(v55 + 80);
      v99 = v58;
      v59 = (v88 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
      v60 = swift_allocObject();
      v98 = *(v55 + 32);
      v98(v60 + v58, v56, v57);
      *(v60 + v59) = v100;
      v61 = v91;
      sub_20C137C94();
      v100 = *(v55 + 8);
      (v100)(v54, v57);
      v62 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v63 = swift_allocObject();
      *(v63 + 16) = sub_20BF290D8;
      *(v63 + 24) = v62;
      (ObjectType)(v54, v61, v57);
      v64 = swift_allocObject();
      v65 = v54;
      v40 = v102;
      v98(v64 + v99, v65, v57);
      v66 = (v64 + v59);
      *v66 = sub_20B66A8B4;
      v66[1] = v63;
      v67 = v93;
      sub_20C137C94();
      v68 = v61;
      v69 = v100;
      (v100)(v68, v57);
      v70 = sub_20C137CB4();
      v71 = swift_allocObject();
      *(v71 + 16) = 0;
      *(v71 + 24) = 0;
      v70(sub_20B5DF6DC, v71);

      v69(v67, v57);
LABEL_9:
      swift_getObjectType();
      sub_20C13A7B4();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectRetain();

      sub_20C13A7A4();

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(&v104);
      __swift_destroy_boxed_opaque_existential_1(v105);

      return;
    }

    v72 = v26;
    (*(v53 + 4))(v96, v52, v26);
    sub_20C1381D4();
    v73 = sub_20C13C914();

    [v40 setTitle_];

    v74 = sub_20C1381E4();
    v75 = *(v74 + 16);
    if (!v75)
    {
      a2 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }

    v100 = v44;
    ObjectType = v72;
    a2 = sub_20BEDE85C(v75, 0);
    v76 = *(sub_20C133B74() - 8);
    sub_20BEE200C(&v104, &a2[(*(v76 + 80) + 32) & ~*(v76 + 80)], v75, v74);
    v78 = v77;
    v79 = v104;

    sub_20B583EDC(v79);
    if (v78 == v75)
    {
      v72 = ObjectType;
      v53 = v102;
      v44 = v100;
LABEL_8:
      *&v104 = a2;
      sub_20BF8F460(&v104);

      v80 = v104;
      v81 = *(v44 + v40);

      v82 = sub_20BEF6794(v80);

      *(v81 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_items) = v82;

      v83 = sub_20C13CDF4();
      v84 = v87;
      (*(*(v83 - 8) + 56))(v87, 1, 1, v83);
      v85 = swift_allocObject();
      v85[2] = 0;
      v85[3] = 0;
      v85[4] = v81;
      v85[5] = v82;

      sub_20B6383D0(0, 0, v84, &unk_20C184740, v85);

      (*(v53 + 1))(v96, v72);
      v86 = v40;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_20BF28BD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20C116710(a1);
}

uint64_t sub_20BF28D00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF28D70(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20C1167AC(a1, v4, v5, v7, v6);
}

void sub_20BF28E30()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_resignActiveObserver) = 0;
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_standardNavigationBarTintColor;
  *(v0 + v2) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF28F28(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PlaylistDetailViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_17Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

double sub_20BF29020(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20BF90A2C(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroy_35Tm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_20BF29144(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52A9D4;

  return sub_20C1167AC(a1, v4, v5, v7, v6);
}

void sub_20BF2922C(char a1)
{
  v3 = sub_20C13C554();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 144);
    v39[1] = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 128);
    v39[2] = v7;
    v40 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 160);
    v8 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 80);
    v36 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 64);
    v37 = v8;
    v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 112);
    v38 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 96);
    v39[0] = v9;
    v10 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 16);
    v32 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow);
    v33 = v10;
    v11 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 48);
    v34 = *(v1 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 32);
    v35 = v11;
    sub_20B52F9E8(&v32, &v41, &qword_27C762340, &unk_20C150290);
  }

  else
  {
    v32 = 0uLL;
    LOBYTE(v33) = 1;
    *(&v33 + 1) = 0;
    *&v34 = 0;
    WORD4(v34) = 128;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    LOBYTE(v38) = 0;
    *(&v38 + 1) = MEMORY[0x277D84F90];
    *&v39[0] = MEMORY[0x277D84F90];
    *(v39 + 8) = 0u;
    *(&v39[1] + 8) = 0u;
    *(&v39[2] + 1) = 0;
    v40 = 2;
    nullsub_1();
  }

  v49 = v39[1];
  v50 = v39[2];
  v51 = v40;
  v45 = v36;
  v46 = v37;
  v47 = v38;
  v48 = v39[0];
  v41 = v32;
  v42 = v33;
  v43 = v34;
  v44 = v35;
  v12 = *(v1 + 160);
  v39[1] = *(v1 + 144);
  v39[2] = v12;
  v40 = *(v1 + 176);
  v13 = *(v1 + 96);
  v36 = *(v1 + 80);
  v37 = v13;
  v14 = *(v1 + 128);
  v38 = *(v1 + 112);
  v39[0] = v14;
  v15 = *(v1 + 32);
  v32 = *(v1 + 16);
  v33 = v15;
  v16 = *(v1 + 64);
  v34 = *(v1 + 48);
  v35 = v16;
  v17 = v50;
  *(v1 + 144) = v49;
  *(v1 + 160) = v17;
  *(v1 + 176) = v51;
  v18 = v46;
  *(v1 + 80) = v45;
  *(v1 + 96) = v18;
  v19 = v48;
  *(v1 + 112) = v47;
  *(v1 + 128) = v19;
  v20 = v42;
  *(v1 + 16) = v41;
  *(v1 + 32) = v20;
  v21 = v44;
  *(v1 + 48) = v43;
  *(v1 + 64) = v21;
  sub_20B520158(&v32, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61D398(v1, Strong);
      if (v25)
      {
        v27 = v24;
        v28 = v25;
        v29 = v26;
        v30 = v1;
        sub_20B5E2E18();
        *v6 = sub_20C13D374();
        (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
        v31 = sub_20C13C584();
        (*(v4 + 8))(v6, v3);
        if ((v31 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B61EB94(v27, v28, v29, v30, 1, v23);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BF29530()
{
  v1 = *(v0 + 160);
  v14[8] = *(v0 + 144);
  v14[9] = v1;
  v15 = *(v0 + 176);
  v2 = *(v0 + 96);
  v14[4] = *(v0 + 80);
  v14[5] = v2;
  v3 = *(v0 + 128);
  v14[6] = *(v0 + 112);
  v14[7] = v3;
  v4 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v14[1] = v4;
  v5 = *(v0 + 64);
  v14[2] = *(v0 + 48);
  v14[3] = v5;
  sub_20B520158(v14, &qword_27C762340, &unk_20C150290);
  sub_20B583E6C(v0 + 184);
  v6 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_identifier;
  v7 = sub_20C132EE4();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_preview, &unk_27C7623C0, &unk_20C14FE50);

  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 144);
  v16[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 128);
  v16[9] = v8;
  v17 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 160);
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 80);
  v16[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 64);
  v16[5] = v9;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 112);
  v16[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 96);
  v16[7] = v10;
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 16);
  v16[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow);
  v16[1] = v11;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 48);
  v16[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 32);
  v16[3] = v12;
  sub_20B520158(v16, &qword_27C762340, &unk_20C150290);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_storefrontLocalizer));
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVFilterDetailHeaderShelf(uint64_t a1)
{
  result = qword_27C7707F8;
  if (!qword_27C7707F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF2971C(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20BF29810(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_20BF29810(uint64_t a1)
{
  if (!qword_27C76A130)
  {
    sub_20C134284();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_27C76A130);
    }
  }
}

uint64_t sub_20BF29868@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double sub_20BF29900(uint64_t a1, uint64_t a2)
{
  *(v2 + 192) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

__n128 sub_20BF29944@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 160);
  v22 = *(v1 + 144);
  v23 = v3;
  v24 = *(v1 + 176);
  v4 = *(v1 + 96);
  v18 = *(v1 + 80);
  v19 = v4;
  v5 = *(v1 + 128);
  v20 = *(v1 + 112);
  v21 = v5;
  v6 = *(v1 + 32);
  v14 = *(v1 + 16);
  v15 = v6;
  v7 = *(v1 + 64);
  v16 = *(v1 + 48);
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

uint64_t sub_20BF29A00()
{
  sub_20B5D8060(&v17);
  v1 = v26;
  *(v0 + 144) = v25;
  *(v0 + 160) = v1;
  *(v0 + 176) = v27;
  v2 = v22;
  *(v0 + 80) = v21;
  *(v0 + 96) = v2;
  v3 = v24;
  *(v0 + 112) = v23;
  *(v0 + 128) = v3;
  v4 = v18;
  *(v0 + 16) = v17;
  *(v0 + 32) = v4;
  v5 = v20;
  *(v0 + 48) = v19;
  *(v0 + 64) = v5;
  *(v0 + 192) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_preview;
  v7 = sub_20C134284();
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = (v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_contentIdentifier);
  *v8 = 0;
  v8[1] = 0;
  v9 = v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow;
  v10 = v26;
  *(v9 + 128) = v25;
  *(v9 + 144) = v10;
  *(v9 + 160) = v27;
  v11 = v22;
  *(v9 + 64) = v21;
  *(v9 + 80) = v11;
  v12 = v24;
  *(v9 + 96) = v23;
  *(v9 + 112) = v12;
  v13 = v18;
  *v9 = v17;
  *(v9 + 16) = v13;
  v14 = v20;
  *(v9 + 32) = v19;
  *(v9 + 48) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v16, v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v16, v0 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_storefrontLocalizer);
  return v0;
}

uint64_t sub_20BF29BC0()
{
  v1 = sub_20C13BB84();
  v51 = *(v1 - 8);
  v52 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v50);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v49 - v7;
  v9 = sub_20C134284();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_preview;
  swift_beginAccess();
  v53 = v0;
  sub_20B52F9E8(v0 + v13, v8, &unk_27C7623C0, &unk_20C14FE50);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B520158(v8, &unk_27C7623C0, &unk_20C14FE50);
LABEL_10:
    sub_20C13B534();
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1F4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20B517000, v45, v46, "FilterDetailHeader missing preview/contentIdentifier, not showing preview page", v47, 2u);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    return (*(v51 + 1))(v3, v52);
  }

  (*(v10 + 32))(v12, v8, v9);
  v14 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_contentIdentifier + 8);
  if (!v14)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_10;
  }

  v51 = v12;
  v52 = v10;
  v15 = *(v53 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_contentIdentifier);
  v16 = sub_20C136664();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = v50;
  v18 = *(v50 + 20);
  v19 = *MEMORY[0x277D513F8];
  v20 = sub_20C134F24();
  (*(*(v20 - 8) + 104))(&v5[v18], v19, v20);
  v21 = v17[6];
  v22 = sub_20C132C14();
  (*(*(v22 - 8) + 56))(&v5[v21], 1, 1, v22);
  v23 = v17[8];
  v24 = *MEMORY[0x277D52388];
  v25 = sub_20C135ED4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(&v5[v23], v24, v25);
  v27 = v53;
  (*(v26 + 56))(&v5[v23], 0, 1, v25);
  v28 = v17[10];
  v29 = *MEMORY[0x277D51768];
  v30 = sub_20C1352E4();
  (*(*(v30 - 8) + 104))(&v5[v28], v29, v30);
  v31 = v17[11];
  v32 = sub_20C136E94();
  (*(*(v32 - 8) + 56))(&v5[v31], 1, 1, v32);
  swift_bridgeObjectRetain_n();
  v33 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v34 = &v5[v17[7]];
  *v34 = v15;
  *(v34 + 1) = v14;
  v35 = &v5[v17[9]];
  *v35 = 0;
  *(v35 + 1) = 0;
  *&v5[v17[12]] = v33;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA0128(v27, v5, Strong);
    swift_unknownObjectRelease();
  }

  v37 = swift_unknownObjectWeakLoadStrong();
  v38 = v9;
  v40 = v51;
  v39 = v52;
  if (v37)
  {
    v41 = v37;
    v42 = v37 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v43 = *(v42 + 8);
      ObjectType = swift_getObjectType();
      (*(v43 + 80))(v41, v40, v15, v14, ObjectType, v43);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_20BF2A45C(v5, type metadata accessor for ShelfMetricAction);
  return (*(v39 + 8))(v40, v38);
}

double sub_20BF2A208(uint64_t a1)
{
  v2 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5EAE70(a1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 18)
  {
    sub_20BF29BC0();
  }

  else if (EnumCaseMultiPayload == 5)
  {
    v6 = *v4;
    v20 = *(v4 + 8);
    v7 = *(v4 + 3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
    v8 = (type metadata accessor for PageAlertAction(0) - 8);
    v9 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_20C14F980;
    v11 = v10 + v9;
    sub_20C132ED4();
    v12 = (v11 + v8[8]);
    *v12 = 0;
    v12[1] = 0;
    *(v11 + v8[7]) = 2;
    v13 = (v11 + v8[9]);
    *v13 = 0;
    v13[1] = 0;
    v21[0] = v10;
    v21[1] = MEMORY[0x277D84F90];
    v21[2] = v6;
    v22 = v20;
    v23 = v7;
    v24 = 1;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = Strong;
      v16 = Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = *(v16 + 8);
        ObjectType = swift_getObjectType();
        (*(v17 + 232))(v15, v21, ObjectType, v17);
        sub_20B76328C(v21);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B76328C(v21);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_20B76328C(v21);
    }
  }

  else
  {
    sub_20BF2A45C(v4, type metadata accessor for ShelfItemAction);
  }

  return result;
}

uint64_t sub_20BF2A45C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_20BF2A4BC(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_currentConstraints] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  __asm { FMOV            V0.2D, #10.0 }

  *&v4[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_layout] = _Q0;
  v16 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton;
  type metadata accessor for DownloadButton();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v18) = 1148846080;
  [v17 setContentHuggingPriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v17 &selRef:1 setTintColor:v19 + 4];
  LODWORD(v20) = 1148846080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v17 setContentCompressionResistancePriority:1 forAxis:v21];

  *&v4[v16] = v17;
  v22 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_summaryTextLabel;
  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  [v23 setAdjustsFontForContentSizeCategory_];
  v24 = *MEMORY[0x277D74418];
  v25 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v27 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v28 = swift_initStackObject();
  v29 = MEMORY[0x277D74430];
  *(v28 + 16) = xmmword_20C14F980;
  v30 = *v29;
  *(v28 + 32) = *v29;
  *(v28 + 40) = v24;
  v31 = v27;
  v32 = v30;
  v33 = sub_20B6B134C(v28);
  swift_setDeallocating();
  sub_20B520158(v28 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v33;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName, &unk_20C14D960);
  v34 = sub_20C13C744();

  v35 = [v25 fontDescriptorByAddingAttributes_];

  v36 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
  [v23 setFont_];

  [v23 setLineBreakMode_];
  [v23 setNumberOfLines_];
  v37 = [objc_opt_self() whiteColor];
  [v23 setTextColor_];

  LODWORD(v38) = 1112014848;
  [v23 setContentHuggingPriority:1 forAxis:v38];

  *&v4[v22] = v23;
  v49.receiver = v4;
  v49.super_class = type metadata accessor for GuidedWalkMediaTagsCell(0);
  v39 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v40 = [v39 contentView];
  [v40 addSubview_];

  v41 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton;
  v42 = *&v39[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton];
  [v42 addTarget:v39 action:sel_handleDownloadButtonTapped_ forControlEvents:64];

  v43 = [v39 contentView];
  [v43 addSubview_];

  v44 = [v39 traitCollection];
  v45 = objc_opt_self();
  sub_20B5E29D0();

  v46 = sub_20C13CC54();

  [v45 deactivateConstraints_];

  v47 = [v44 preferredContentSizeCategory];
  LOBYTE(v34) = sub_20C13D424();

  if (v34)
  {
    sub_20BF2B294();
  }

  else
  {
    sub_20BF2B79C();
  }

  [v39 setNeedsUpdateConstraints];

  return v39;
}

uint64_t sub_20BF2ACE0(void *a1)
{
  v25.receiver = v1;
  v25.super_class = type metadata accessor for GuidedWalkMediaTagsCell(0);
  objc_msgSendSuper2(&v25, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {

      Strong = v3;
    }

    else
    {
      v12 = sub_20C13DFF4();

      if (v12)
      {
        Strong = v3;
      }

      else
      {
        v19 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        v20 = objc_opt_self();
        sub_20B5E29D0();

        v21 = sub_20C13CC54();

        [v20 deactivateConstraints_];

        v22 = [v19 preferredContentSizeCategory];
        v23 = sub_20C13D424();

        if (v23)
        {
          sub_20BF2B294();
        }

        else
        {
          sub_20BF2B79C();
        }

        [Strong setNeedsUpdateConstraints];
      }
    }
  }

  else
  {
    v14 = [v1 traitCollection];
    Strong = swift_unknownObjectUnownedLoadStrong();
    v15 = objc_opt_self();
    sub_20B5E29D0();

    v16 = sub_20C13CC54();

    [v15 deactivateConstraints_];

    v17 = [v14 preferredContentSizeCategory];
    v18 = sub_20C13D424();

    if (v18)
    {
      sub_20BF2B294();
    }

    else
    {
      sub_20BF2B79C();
    }

    [Strong setNeedsUpdateConstraints];
  }

  return swift_unknownObjectUnownedDestroy();
}

id sub_20BF2B0AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GuidedWalkMediaTagsCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GuidedWalkMediaTagsCell(uint64_t a1)
{
  result = qword_27C770830;
  if (!qword_27C770830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF2B1C4(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BF2B294()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C150040;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_summaryTextLabel];
  v4 = [v3 leadingAnchor];
  v5 = [v1 contentView];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [v3 topAnchor];
  v9 = [v1 &selRef_setMaximumFractionDigits_];
  v10 = [v9 &selRef_setLineBreakMode_];

  v11 = [v8 &selRef:v10 alertControllerReleasedDictationButton:? + 5];
  *(v2 + 40) = v11;
  v12 = [v3 trailingAnchor];
  v13 = [v1 &selRef_setMaximumFractionDigits_];
  v14 = [v13 trailingAnchor];

  v15 = [v12 &selRef:v14 alertControllerReleasedDictationButton:? + 5];
  type metadata accessor for UILayoutPriority(0);
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_20C13BBA4();
  LODWORD(v16) = v36;
  [v15 setPriority_];
  *(v2 + 48) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_20C150040;
  v18 = *&v1[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton];
  v19 = [v18 leadingAnchor];
  v20 = [v1 contentView];
  v21 = [v20 leadingAnchor];

  v22 = [v19 constraintEqualToAnchor_];
  *(v17 + 32) = v22;
  v23 = [v18 topAnchor];
  v24 = [v3 bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24 constant:10.0];

  *(v17 + 40) = v25;
  v26 = [v18 bottomAnchor];
  v27 = [v1 contentView];
  v28 = [v27 bottomAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v30) = v36;
  [v29 setPriority_];
  *(v17 + 48) = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = v2;
  *(inited + 40) = v17;
  sub_20BE54D20(inited);
  v33 = v32;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_currentConstraints] = v33;

  v34 = objc_opt_self();
  sub_20B5E29D0();

  v35 = sub_20C13CC54();

  [v34 activateConstraints_];
}

void sub_20BF2B79C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C14FE90;
  v3 = *&v0[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_summaryTextLabel];
  v4 = [v3 leadingAnchor];
  v5 = [v1 contentView];
  v6 = [v5 leadingAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v2 + 32) = v7;
  v8 = [v3 trailingAnchor];
  v9 = *&v1[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton];
  v10 = [v9 leadingAnchor];
  v11 = [v8 constraintLessThanOrEqualToAnchor:v10 constant:-10.0];

  *(v2 + 40) = v11;
  v12 = [v3 topAnchor];
  v13 = [v1 contentView];
  v14 = [v13 &selRef_setLineBreakMode_];

  v15 = [v12 constraintEqualToAnchor_];
  *(v2 + 48) = v15;
  v16 = [v3 bottomAnchor];
  v17 = [v1 contentView];
  v18 = [v17 &selRef_secondaryLabel + 5];

  v19 = [v16 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_20C13BBA4();
  LODWORD(v20) = v41;
  [v19 setPriority_];
  *(v2 + 56) = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C150040;
  v22 = [v9 trailingAnchor];
  v23 = [v1 contentView];
  v24 = [v23 trailingAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v26) = v41;
  [v25 setPriority_];
  *(v21 + 32) = v25;
  v27 = [v9 topAnchor];
  v28 = [v1 contentView];
  v29 = [v28 topAnchor];

  v30 = [v27 constraintEqualToAnchor_];
  *(v21 + 40) = v30;
  v31 = [v9 bottomAnchor];
  v32 = [v1 contentView];
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintLessThanOrEqualToAnchor_];
  sub_20C13BBA4();
  LODWORD(v35) = v41;
  [v34 setPriority_];
  *(v21 + 48) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  *(inited + 32) = v2;
  *(inited + 40) = v21;
  sub_20BE54D20(inited);
  v38 = v37;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  *&v1[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_currentConstraints] = v38;

  v39 = objc_opt_self();
  sub_20B5E29D0();

  v40 = sub_20C13CC54();

  [v39 activateConstraints_];
}

double sub_20BF2BD50(unint64_t a1, int a2)
{
  v50 = a2;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v47 - v10;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x1B)
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    [*&v2[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_summaryTextLabel] setAttributedText_];
    sub_20C13B4A4();
    v14 = v2;
    v15 = sub_20C13BB74();
    v16 = sub_20C13D1F4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v49 = v4;
      v18 = v17;
      v19 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52 = v47;
      *v18 = 138543618;
      *(v18 + 4) = v14;
      *v19 = v14;
      *(v18 + 12) = 2082;
      v20 = v14;
      v21 = sub_20BCFF494(*&v12, v13);
      v48 = v5;
      v23 = sub_20B51E694(v21, v22, &v52);

      *(v18 + 14) = v23;
      _os_log_impl(&dword_20B517000, v15, v16, "[DownloadButton] Updating download button state in %{public}@ to %{public}s", v18, 0x16u);
      sub_20B520158(v19, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      v24 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x20F2F6A40](v24, -1, -1);
      MEMORY[0x20F2F6A40](v18, -1, -1);

      (*(v48 + 8))(v11, v49);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    v38 = *&v14[OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton];
    v39 = &v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v40 = *&v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
    v41 = v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8];
    if (v41 <= 1)
    {
      if (v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState + 8])
      {
        if (v13 != 1 || ((LODWORD(v40) ^ LODWORD(v12)) & 1) != 0)
        {
          goto LABEL_26;
        }
      }

      else if (v13 || LOBYTE(v40) != LOBYTE(v12))
      {
        goto LABEL_26;
      }
    }

    else if (v41 == 2)
    {
      if (v13 != 2)
      {
        goto LABEL_26;
      }

      result = *&v38[OBJC_IVAR____TtC9SeymourUI14DownloadButton_currentState];
      if (v40 != v12)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v41 == 255)
      {
LABEL_26:
        *v39 = v12;
        v39[8] = v13;
        sub_20C010054(*&v12, v13, 2.0);
        v43 = v42;
        v45 = v44;
        ObjectType = swift_getObjectType();
        sub_20C0DC2BC(v43, v50 & 1, v38, ObjectType, v45);
        swift_unknownObjectRelease();
        return result;
      }

      if (*&v40 <= 1)
      {
        if (v40 == 0.0)
        {
          if (v13 != 3 || v12 != 0.0)
          {
            goto LABEL_26;
          }
        }

        else if (v13 != 3 || *&v12 != 1)
        {
          goto LABEL_26;
        }
      }

      else if (*&v40 == 2)
      {
        if (v13 != 3 || *&v12 != 2)
        {
          goto LABEL_26;
        }
      }

      else if (*&v40 == 3)
      {
        if (v13 != 3 || *&v12 != 3)
        {
          goto LABEL_26;
        }
      }

      else if (v13 != 3 || *&v12 != 4)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    sub_20C13B534();

    v26 = v2;
    v27 = sub_20C13BB74();
    v28 = sub_20C13D1D4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = v4;
      v32 = v31;
      v51 = a1;
      v52 = v31;
      *v29 = 138543618;
      *(v29 + 4) = v26;
      *v30 = v26;
      *(v29 + 12) = 2082;
      v33 = sub_20B5F66D0();
      v34 = v26;
      v35 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v33);
      v37 = sub_20B51E694(v35, v36, &v52);

      *(v29 + 14) = v37;
      _os_log_impl(&dword_20B517000, v27, v28, "Attempted to configure %{public}@ with item: %{public}s", v29, 0x16u);
      sub_20B520158(v30, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v30, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x20F2F6A40](v32, -1, -1);
      MEMORY[0x20F2F6A40](v29, -1, -1);

      (*(v5 + 8))(v7, v49);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

double sub_20BF2C2A0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BF2C2EC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BF2C344(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BF2C3B8()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_currentConstraints) = MEMORY[0x277D84F90];
  v1 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  __asm { FMOV            V0.2D, #10.0 }

  *(v0 + OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_layout) = _Q0;
  v8 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_downloadButton;
  type metadata accessor for DownloadButton();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v10) = 1148846080;
  [v9 setContentHuggingPriority:0 forAxis:v10];
  LODWORD(v11) = 1148846080;
  [v9 setContentHuggingPriority:1 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [v9 setContentCompressionResistancePriority:0 forAxis:v12];
  LODWORD(v13) = 1148846080;
  [v9 setContentCompressionResistancePriority:1 forAxis:v13];

  *(v0 + v8) = v9;
  v14 = OBJC_IVAR____TtC9SeymourUI23GuidedWalkMediaTagsCell_summaryTextLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  v16 = *MEMORY[0x277D74418];
  v17 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v19 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_20C14F980;
  v21 = *MEMORY[0x277D74430];
  *(v20 + 32) = *MEMORY[0x277D74430];
  *(v20 + 40) = v16;
  v22 = v19;
  v23 = v21;
  v24 = sub_20B6B134C(v20);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v24;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName, &unk_20C14D960);
  v25 = sub_20C13C744();

  v26 = [v17 fontDescriptorByAddingAttributes_];

  v27 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];
  [v15 setFont_];

  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  v28 = [objc_opt_self() whiteColor];
  [v15 setTextColor_];

  LODWORD(v29) = 1112014848;
  [v15 setContentHuggingPriority:1 forAxis:v29];

  *(v0 + v14) = v15;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF2C808()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    v11 = MEMORY[0x28223BE20](v10);
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20BF2CAAC()
{
  v0 = aHighlight_2[0];

  return v0;
}

unint64_t sub_20BF2CAF0()
{
  result = qword_27C770850;
  if (!qword_27C770850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770850);
  }

  return result;
}

void sub_20BF2CB48()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C770858 = v2;
  unk_27C770860 = v4;
}

void sub_20BF2CC14()
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_20C132964();
  v4 = v3;

  qword_27C770868 = v2;
  unk_27C770870 = v4;
}

char *sub_20BF2CCE0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI23GymKitResumeMachineView_titleLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760C60 != -1)
  {
    swift_once();
  }

  v3 = sub_20C13C914();
  [v2 setText_];

  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76A20];
  v6 = [v4 preferredFontForTextStyle_];
  [v2 setFont_];

  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v2 setTextColor_];

  [v2 setTextAlignment_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v1] = v2;
  v8 = OBJC_IVAR____TtC9SeymourUI23GymKitResumeMachineView_subtitleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760C68 != -1)
  {
    swift_once();
  }

  v10 = sub_20C13C914();
  [v9 setText_];

  v11 = [v4 preferredFontForTextStyle_];
  [v9 setFont_];

  v12 = [objc_opt_self() labelColor];
  [v9 setTextColor_];

  [v9 setTextAlignment_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v8] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_20C151490;
  v14 = *&v0[v1];
  *(v13 + 32) = v14;
  *(v13 + 40) = v9;
  v15 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v16 = v14;
  v17 = v9;
  v18 = sub_20C13CC54();

  v19 = [v15 initWithArrangedSubviews_];

  [v19 setAlignment_];
  [v19 setAxis_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[OBJC_IVAR____TtC9SeymourUI23GymKitResumeMachineView_stackView] = v19;
  v34.receiver = v0;
  v34.super_class = type metadata accessor for GymKitResumeMachineView();
  v20 = objc_msgSendSuper2(&v34, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v21 = OBJC_IVAR____TtC9SeymourUI23GymKitResumeMachineView_stackView;
  v22 = *&v20[OBJC_IVAR____TtC9SeymourUI23GymKitResumeMachineView_stackView];
  v23 = v20;
  [v23 addSubview_];
  v24 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_20C151490;
  v26 = [*&v20[v21] centerXAnchor];
  v27 = [v23 centerXAnchor];
  v28 = [v26 constraintEqualToAnchor_];

  *(v25 + 32) = v28;
  v29 = [*&v20[v21] centerYAnchor];
  v30 = [v23 centerYAnchor];

  v31 = [v29 constraintEqualToAnchor_];
  *(v25 + 40) = v31;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v32 = sub_20C13CC54();

  [v24 activateConstraints_];

  return v23;
}

id sub_20BF2D290(uint64_t a1, double a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GymKitResumeMachineView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_20BF2D344()
{
  v1 = OBJC_IVAR____TtC9SeymourUI23GymKitResumeMachineView_titleLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760C60 != -1)
  {
    swift_once();
  }

  v3 = sub_20C13C914();
  [v2 setText_];

  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76A20];
  v6 = [v4 preferredFontForTextStyle_];
  [v2 setFont_];

  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v2 setTextColor_];

  [v2 setTextAlignment_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v8 = OBJC_IVAR____TtC9SeymourUI23GymKitResumeMachineView_subtitleLabel;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  if (qword_27C760C68 != -1)
  {
    swift_once();
  }

  v10 = sub_20C13C914();
  [v9 setText_];

  v11 = [v4 preferredFontForTextStyle_];
  [v9 setFont_];

  v12 = [objc_opt_self() labelColor];
  [v9 setTextColor_];

  [v9 setTextAlignment_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v8) = v9;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BF2D644(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v32 = a1;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390, &unk_20C15EC90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_20C135734();
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v31 = &v31 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_20C136C64();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v35 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C13BB84();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v20 + 8))(v22, v19);
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  sub_20C13B174();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_20B520158(v15, &qword_27C768690, &unk_20C14FD90);
    __swift_project_boxed_opaque_existential_1(v3 + 7, v3[10]);
    sub_20C139D84();
  }

  else
  {
    (*(v17 + 32))(v35, v15, v16);
    sub_20C136AF4();
    v23 = v33;
    if ((*(v34 + 48))(v6, 1, v33) == 1)
    {
      sub_20B520158(v6, &unk_27C762390, &unk_20C15EC90);
      sub_20B8CB638();
      v24 = swift_allocError();
      *v25 = 4;
      *(swift_allocObject() + 16) = v24;
      v26 = v24;
      sub_20C137CA4();
      (*(v17 + 8))(v35, v16);
    }

    else
    {
      v27 = v34;
      v32 = *(v34 + 32);
      v28 = v31;
      v32(v31, v6, v23);
      (*(v27 + 16))(v10, v28, v23);
      v29 = (*(v27 + 80) + 16) & ~*(v27 + 80);
      v30 = swift_allocObject();
      v32((v30 + v29), v10, v23);
      sub_20C137CA4();
      (*(v27 + 8))(v28, v23);
      (*(v17 + 8))(v35, v16);
    }
  }
}

void sub_20BF2DC84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150040;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_footerView);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_queueCompleteView);
  *(inited + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_upNextSummaryView);
  *(inited + 48) = v4;
  v12 = MEMORY[0x277D84F90];
  v5 = v2;
  v6 = v3;
  v7 = v4;
  v8 = 0;
LABEL_2:
  v9 = v8;
  while (1)
  {
    if ((inited & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x20F2F5430](v9, inited);
    }

    else
    {
      if (v9 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v10 = *(inited + 8 * v9 + 32);
    }

    v11 = v10;
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (![v10 isHidden])
    {
      MEMORY[0x20F2F43B0]();
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      if (v9 == 2)
      {
LABEL_14:
        swift_setDeallocating();
        swift_arrayDestroy();
        return;
      }

      goto LABEL_2;
    }

    ++v9;
    if (v8 == 3)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_20BF2DE3C(uint64_t a1)
{
  v2 = sub_20C134F24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D51410], v2);
  v10 = sub_20C134324();
  sub_20BB3F40C(v5, v10, v11);

  result = (*(v3 + 8))(v5, v2);
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = *(a1 + 56);

    v13(v15);
    return sub_20B583ECC(v13, v14);
  }

  return result;
}

uint64_t sub_20BF2E060(uint64_t a1)
{
  v2 = sub_20C134F24();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D51410], v2);
  v10 = sub_20C134324();
  sub_20BB3F40C(v5, v10, v11);

  result = (*(v3 + 8))(v5, v2);
  v13 = *(a1 + 48);
  if (v13)
  {
    v14 = *(a1 + 56);

    v13(v15);
    return sub_20B583ECC(v13, v14);
  }

  return result;
}

void sub_20BF2E3E4(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for TVSessionSummaryViewController(0);
  objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1 & 1);
  v3 = [v1 navigationController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 viewControllers];
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v6 = sub_20C13CC74();

    v9 = v1;
    MEMORY[0x28223BE20](v7);
    v8[2] = &v9;
    LOBYTE(v5) = sub_20B79AEEC(sub_20B5978BC, v8, v6);

    if ((v5 & 1) == 0)
    {
      v9 = v1;
      sub_20BF324A0();
      sub_20C138C64();
    }
  }
}

void sub_20BF2E5FC()
{
  v174 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_metricGridView);
  v1 = [v174 widthAnchor];
  v2 = [v1 constraintEqualToConstant_];

  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewWidthConstraint);
  v170 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewWidthConstraint;
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewWidthConstraint) = v2;

  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerView);
  v5 = [v4 trailingAnchor];
  v171 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsView);
  v6 = [v171 leadingAnchor];
  v7 = [v5 constraintLessThanOrEqualToAnchor:v6 constant:-50.0];

  v8 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerViewTrailingConstraint;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerViewTrailingConstraint);
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerViewTrailingConstraint) = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20C150040;
  v11 = [v4 leadingAnchor];
  v12 = [v0 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13 = v12;
  v14 = [v12 leadingAnchor];

  v15 = [v11 constraintEqualToAnchor:v14 constant:80.0];
  v16 = *(v0 + v8);
  *(v10 + 32) = v15;
  *(v10 + 40) = v16;
  v17 = v16;
  v173 = v4;
  v18 = [v4 topAnchor];
  v19 = [v0 view];
  if (!v19)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v20 = v19;
  v21 = [v19 topAnchor];

  v22 = [v18 constraintEqualToAnchor:v21 constant:55.0];
  *(v10 + 48) = v22;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  v24 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_footerView);
  v25 = [v24 leadingAnchor];
  v26 = [v0 view];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  v28 = [v26 leadingAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(inited + 32) = v29;
  v30 = [v24 trailingAnchor];
  v31 = [v0 view];
  if (!v31)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v30 constraintEqualToAnchor_];
  *(inited + 40) = v34;
  v35 = [v24 bottomAnchor];
  v36 = [v0 view];
  if (!v36)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v37 = v36;
  v38 = [v36 bottomAnchor];

  v39 = [v35 constraintEqualToAnchor_];
  *(inited + 48) = v39;
  v40 = [v24 heightAnchor];
  v41 = [v40 constraintEqualToConstant_];

  v167 = inited;
  *(inited + 56) = v41;
  v42 = [v171 trailingAnchor];
  v43 = [v0 view];
  if (!v43)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v44 = v43;
  v169 = v24;
  v45 = [v43 trailingAnchor];

  v46 = [v42 constraintEqualToAnchor:v45 constant:-80.0];
  v47 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTrailingConstraint;
  v48 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTrailingConstraint);
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTrailingConstraint) = v46;

  v49 = [v171 topAnchor];
  v50 = [v0 view];
  if (!v50)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51 = v50;
  v52 = [v50 topAnchor];

  v53 = [v49 constraintEqualToAnchor:v52 constant:55.0];
  v54 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTopConstraint;
  v55 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTopConstraint);
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTopConstraint) = v53;

  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_20C151490;
  v57 = *(v0 + v47);
  *(v56 + 32) = v57;
  v58 = *(v0 + v54);
  v166 = v56;
  *(v56 + 40) = v58;
  v59 = v57;
  v60 = v58;
  v61 = [v174 bottomAnchor];
  v168 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_bottomPaddingLayoutGuide);
  v62 = [v168 topAnchor];
  v63 = [v61 constraintEqualToAnchor_];

  v172 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewBottomConstraint;
  v64 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewBottomConstraint);
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewBottomConstraint) = v63;

  v65 = [v174 topAnchor];
  v66 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_topPaddingLayoutGuide);
  v67 = [v66 bottomAnchor];
  v68 = [v65 constraintEqualToAnchor_];

  v69 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewTopConstraint;
  v70 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewTopConstraint);
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewTopConstraint) = v68;

  v71 = swift_initStackObject();
  *(v71 + 16) = xmmword_20C150AE0;
  v72 = [v66 &selRef_setLineBreakMode_];
  v73 = [v173 bottomAnchor];
  v74 = [v72 constraintEqualToAnchor_];

  *(v71 + 32) = v74;
  v75 = [v168 &selRef_secondaryLabel + 5];
  v76 = [v169 &selRef_setLineBreakMode_];
  v77 = [v75 &selRef:v76 alertControllerReleasedDictationButton:? + 5];

  *(v71 + 40) = v77;
  v78 = [v66 heightAnchor];
  v79 = [v168 heightAnchor];
  v80 = [v78 &selRef:v79 alertControllerReleasedDictationButton:? + 5];

  *(v71 + 48) = v80;
  v81 = *(v0 + v170);
  *(v71 + 56) = v81;
  v82 = *&v172[v0];
  *(v71 + 64) = v82;
  v83 = *(v0 + v69);
  *(v71 + 72) = v83;
  v84 = v81;
  v85 = v82;
  v86 = v83;
  v87 = [v174 leadingAnchor];
  v88 = [v0 view];
  if (!v88)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v89 = v88;
  v90 = [v88 leadingAnchor];

  v91 = [v87 constraintEqualToAnchor:v90 constant:130.0];
  *(v71 + 80) = v91;
  v92 = swift_initStackObject();
  *(v92 + 16) = xmmword_20C14FE90;
  v93 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_separatorView);
  v94 = [v93 topAnchor];
  v95 = [v174 topAnchor];
  v96 = [v94 constraintEqualToAnchor_];

  *(v92 + 32) = v96;
  v97 = [v93 bottomAnchor];
  v98 = [v174 bottomAnchor];
  v99 = [v97 constraintEqualToAnchor_];

  *(v92 + 40) = v99;
  v100 = [v93 leadingAnchor];
  v101 = [v174 trailingAnchor];
  v102 = [v100 constraintEqualToAnchor:v101 constant:100.0];

  *(v92 + 48) = v102;
  v103 = [v93 widthAnchor];
  v104 = [v103 constraintEqualToConstant_];

  v175 = v92;
  *(v92 + 56) = v104;
  v105 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarView);
  v106 = [v105 trailingAnchor];
  v107 = [v0 view];
  if (!v107)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v108 = v107;
  v109 = [v107 trailingAnchor];

  v110 = [v106 constraintEqualToAnchor:v109 constant:-130.0];
  v111 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTrailingConstraint;
  v112 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTrailingConstraint);
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTrailingConstraint) = v110;

  v113 = [v105 leadingAnchor];
  v114 = [v93 trailingAnchor];
  v115 = [v113 constraintEqualToAnchor:v114 constant:100.0];

  v116 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarLeadingConstraint;
  v117 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarLeadingConstraint);
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarLeadingConstraint) = v115;

  v118 = [v105 topAnchor];
  v119 = [v93 topAnchor];
  v120 = [v118 constraintEqualToAnchor_];

  v121 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTopConstraint;
  v122 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTopConstraint);
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTopConstraint) = v120;

  v123 = swift_initStackObject();
  *(v123 + 16) = xmmword_20C150040;
  v124 = *(v0 + v111);
  *(v123 + 32) = v124;
  v125 = *(v0 + v116);
  *(v123 + 40) = v125;
  v126 = *(v0 + v121);
  *(v123 + 48) = v126;
  v127 = swift_initStackObject();
  *(v127 + 16) = xmmword_20C150040;
  v128 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_queueCompleteView);
  v129 = v124;
  v130 = v125;
  v131 = v126;
  v132 = [v128 trailingAnchor];
  v133 = [v0 view];
  if (!v133)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v134 = v133;
  v135 = [v133 safeAreaLayoutGuide];

  v136 = [v135 trailingAnchor];
  v137 = [v132 constraintEqualToAnchor_];

  *(v127 + 32) = v137;
  v138 = [v128 topAnchor];
  v139 = [v173 topAnchor];
  v140 = [v138 constraintEqualToAnchor_];

  *(v127 + 40) = v140;
  v141 = [v128 bottomAnchor];
  v142 = [v0 view];
  if (!v142)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v143 = v142;
  v144 = [v142 safeAreaLayoutGuide];

  v145 = [v144 bottomAnchor];
  v146 = [v141 constraintEqualToAnchor_];

  *(v127 + 48) = v146;
  v147 = swift_initStackObject();
  *(v147 + 16) = xmmword_20C150040;
  v148 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_upNextSummaryView);
  v149 = [v148 trailingAnchor];
  v150 = [v0 view];
  if (!v150)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v151 = v150;
  v152 = [v150 safeAreaLayoutGuide];

  v153 = [v152 trailingAnchor];
  v154 = [v149 constraintEqualToAnchor_];

  *(v147 + 32) = v154;
  v155 = [v148 topAnchor];
  v156 = [v173 topAnchor];
  v157 = [v155 constraintEqualToAnchor_];

  *(v147 + 40) = v157;
  v158 = [v148 bottomAnchor];
  v159 = [v0 view];
  if (v159)
  {
    v160 = v159;
    v161 = [v159 safeAreaLayoutGuide];

    v162 = [v161 bottomAnchor];
    v163 = [v158 constraintEqualToAnchor_];

    *(v147 + 48) = v163;
    sub_20B8D9310(v167);
    sub_20B8D9310(v166);
    sub_20B8D9310(v71);
    sub_20B8D9310(v175);
    sub_20B8D9310(v123);
    sub_20B8D9310(v147);
    sub_20B8D9310(v127);
    v164 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v165 = sub_20C13CC54();

    [v164 activateConstraints_];

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_20BF2F690()
{
  v1 = sub_20C13BB84();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360, &unk_20C17F2A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for SessionSummaryViewModel(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_summary;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v11, v6, &unk_27C765360, &unk_20C17F2A0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_20B520158(v6, &unk_27C765360, &unk_20C17F2A0);
    sub_20C13B534();
    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_20B517000, v12, v13, "Unable to update summary strings, no summary", v14, 2u);
      MEMORY[0x20F2F6A40](v14, -1, -1);
    }

    return (*(v26 + 8))(v3, v27);
  }

  else
  {
    sub_20BF32438(v6, v10, type metadata accessor for SessionSummaryViewModel);
    v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerView);
    [*(v16 + OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_titleLabel) setAttributedText_];
    v17 = *(v16 + OBJC_IVAR____TtC9SeymourUI19TVSummaryHeaderView_detailLabel);
    v18 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_stringBuilder + 16);
    v19 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_stringBuilder + 48);
    v36 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_stringBuilder + 32);
    v37 = v19;
    v20 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_stringBuilder + 16);
    v35[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_stringBuilder);
    v35[1] = v20;
    v31 = v18;
    v32 = v36;
    v33 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_stringBuilder + 48);
    v38 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_stringBuilder + 64);
    v34 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_stringBuilder + 64);
    v30 = v35[0];
    v21 = v10[1];
    v22 = v17;
    sub_20B7A3194(v35, v28);

    v24 = sub_20BAAAE6C(v23, v21);
    v28[2] = v32;
    v28[3] = v33;
    v29 = v34;
    v28[0] = v30;
    v28[1] = v31;
    sub_20B7A3B8C(v28);

    [v22 setAttributedText_];

    return sub_20BF323D8(v10, type metadata accessor for SessionSummaryViewModel);
  }
}

void sub_20BF2FB14()
{
  v1 = type metadata accessor for SessionSummaryViewModel(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360, &unk_20C17F2A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_summary;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v8, v7, &unk_27C765360, &unk_20C17F2A0);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_20B520158(v7, &unk_27C765360, &unk_20C17F2A0);
  }

  else
  {
    sub_20BE0D120(v7, v4);
    sub_20B520158(v7, &unk_27C765360, &unk_20C17F2A0);
    v9 = &v4[*(v1 + 72)];
    v10 = v9[1];
    v12 = v9[2];
    v11 = v9[3];
    v13 = v9[4];
    v14 = v9[5];
    sub_20B7A3B04(*v9, v10, v12, v11, v13, v14);
    sub_20BF323D8(v4, type metadata accessor for SessionSummaryViewModel);
    if (v10)
    {
      v15 = *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_queueCompleteView);
      v16 = *(v15 + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_subtitleLabel);
      v17 = sub_20C13C914();
      [v16 setText_];

      v18 = &qword_27C769000;
      if (v12)
      {
        v19 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeDetailLabel;
        v20 = *(v15 + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeDetailLabel);
        v21 = v12;
        v22 = v20;
        v18 = &qword_27C769000;
        [v22 setAttributedText_];
        [*(v15 + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeTitleLabel) setHidden_];
        [*(v15 + v19) setHidden_];
      }

      if (v11)
      {
        v23 = v13 == 0;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        v24 = v18;
        v25 = v11;
        v26 = v13;
        sub_20BACB92C(v25, v26);

        v18 = v24;
      }

      v27 = &selRef_setDescriptionTextHighlightColor_;
      if (v12)
      {
        v28 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeDetailLabel;
        v29 = v14;
        v30 = v11;
        v31 = v13;
        v32 = v18;
        v33 = *(v15 + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalTimeDetailLabel);
        v34 = v12;
        [v33 setAttributedText_];
        v35 = v32[498];
        v13 = v31;
        v11 = v30;
        v14 = v29;
        v27 = &selRef_setDescriptionTextHighlightColor_;
        [*(v15 + v35) setHidden_];
        [*(v15 + v28) setHidden_];
      }

      if (v14)
      {
        v36 = OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceDetailLabel;
        v37 = *(v15 + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceDetailLabel);
        v38 = v14;
        [v37 setAttributedText_];
        [*(v15 + OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_totalDistanceTitleLabel) v27[296]];
        [*(v15 + v36) v27[296]];
      }
    }
  }
}

void sub_20BF2FECC(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770980, &unk_20C1588A0);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = &v53 - v5;
  v6 = type metadata accessor for SummaryActivityRingsMetricViewModel(0);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765350, &unk_20C184B80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = type metadata accessor for SummaryBurnBarMetricViewModel(0);
  v56 = *(v11 - 8);
  v57 = v11;
  MEMORY[0x28223BE20](v11);
  v54 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SessionSummaryViewModel(0);
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360, &unk_20C17F2A0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v60 = a1;
  sub_20BE0D120(a1, &v53 - v21);
  (*(v14 + 56))(v22, 0, 1, v13);
  v23 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_summary;
  swift_beginAccess();
  sub_20B7A30E4(v22, &v2[v23]);
  swift_endAccess();
  sub_20BF2F690();
  sub_20B52F9E8(&v2[v23], v19, &unk_27C765360, &unk_20C17F2A0);
  if ((*(v14 + 48))(v19, 1, v13))
  {
    sub_20B520158(v19, &unk_27C765360, &unk_20C17F2A0);
  }

  else
  {
    sub_20BE0D120(v19, v16);
    sub_20B520158(v19, &unk_27C765360, &unk_20C17F2A0);
    v24 = &v16[v13[17]];
    v25 = *v24;
    v26 = *(v24 + 1);
    sub_20B7A3154(*v24, v26);
    sub_20BF323D8(v16, type metadata accessor for SessionSummaryViewModel);
    if (v25)
    {
      sub_20B98D260(v25, v26);
    }
  }

  sub_20BF2FB14();
  v27 = *&v2[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_metricGridView];
  v28 = v60;
  v30 = sub_20B839B88(v29);
  sub_20BA006A0(v30);

  v31 = OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout;
  [*(v27 + OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout) invalidateLayout];
  v32 = qword_27C7608B0;
  v33 = *&v2[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewWidthConstraint];
  if (v32 != -1)
  {
    swift_once();
  }

  v34 = *&qword_27C7690D8 + *&qword_27C7690D8;
  v35 = *(v27 + v31);
  [v35 itemSize];
  v37 = v36 * 3.0;
  [v35 sectionInset];
  v39 = v38;
  [v35 sectionInset];
  [v33 setConstant_];

  sub_20B52F9E8(v28 + v13[16], v10, &unk_27C765350, &unk_20C184B80);
  v41 = v57;
  if ((*(v56 + 48))(v10, 1, v57) == 1)
  {
    sub_20B520158(v10, &unk_27C765350, &unk_20C184B80);
  }

  else
  {
    v42 = v54;
    sub_20BF32438(v10, v54, type metadata accessor for SummaryBurnBarMetricViewModel);
    if (*(v42 + *(v41 + 20)) == 1)
    {
      v43 = *&v2[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarView];
      sub_20BA675CC(v42);
      [*&v2[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_separatorView] setHidden_];
      [v43 setHidden_];
      sub_20BF323D8(v42, type metadata accessor for SummaryBurnBarMetricViewModel);
      goto LABEL_13;
    }

    sub_20BF323D8(v42, type metadata accessor for SummaryBurnBarMetricViewModel);
  }

  [*&v2[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_separatorView] setHidden_];
  [*&v2[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarView] setHidden_];
LABEL_13:
  v44 = v61;
  sub_20B52F9E8(v28 + v13[15], v61, &unk_27C770980, &unk_20C1588A0);
  if ((*(v58 + 48))(v44, 1, v59) == 1)
  {
    sub_20B520158(v44, &unk_27C770980, &unk_20C1588A0);
    [*&v2[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsView] setHidden_];
  }

  else
  {
    v45 = v55;
    sub_20BF32438(v44, v55, type metadata accessor for SummaryActivityRingsMetricViewModel);
    v46 = *&v2[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsView];
    sub_20C08E454(v45, 0);
    [v46 setHidden_];
    sub_20BF323D8(v45, type metadata accessor for SummaryActivityRingsMetricViewModel);
  }

  v47 = [v2 view];
  if (!v47)
  {
    __break(1u);
    goto LABEL_21;
  }

  v48 = v47;
  [v47 setNeedsUpdateConstraints];

  v49 = [v2 view];
  if (!v49)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v50 = v49;
  [v49 setNeedsLayout];

  v51 = [v2 view];
  if (v51)
  {
    v52 = v51;
    [v51 layoutIfNeeded];

    return;
  }

LABEL_22:
  __break(1u);
}

void sub_20BF30690(void *a1)
{
  v1 = [a1 view];
  if (v1)
  {
    v2 = v1;
    [v1 setAlpha_];
  }

  else
  {
    __break(1u);
  }
}

void sub_20BF306F0(char a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  if (a1)
  {
    v55 = v3;
    if (a1 == 1)
    {
      v4 = &OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_queueCompleteView;
    }

    else
    {
      v4 = &OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_upNextSummaryView;
    }

    v53 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerView];
    v5 = [v53 trailingAnchor];
    v6 = *&v1[*v4];
    v7 = [v6 leadingAnchor];
    v8 = [v5 constraintLessThanOrEqualToAnchor:v7 constant:-50.0];

    v56 = v8;
    [v6 setHidden_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_footerView] setHidden_];
    [*&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_separatorView] setAlpha_];
    v54 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_20C151DF0;
    v10 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarLeadingConstraint];
    v11 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTrailingConstraint];
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    v12 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTopConstraint];
    v13 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTopConstraint];
    *(v9 + 48) = v12;
    *(v9 + 56) = v13;
    v14 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTrailingConstraint];
    v15 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewBottomConstraint];
    *(v9 + 64) = v14;
    *(v9 + 72) = v15;
    v16 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewTopConstraint];
    v17 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerViewTrailingConstraint];
    *(v9 + 80) = v16;
    *(v9 + 88) = v17;
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = v14;
    v23 = v15;
    v24 = v16;
    v25 = v17;
    v26 = sub_20C13CC54();

    [v54 deactivateConstraints_];

    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_20C151850;
    v28 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_metricGridView];
    v29 = [v28 topAnchor];
    v30 = [v53 bottomAnchor];
    v31 = [v29 constraintEqualToAnchor:v30 constant:132.0];

    *(v27 + 32) = v31;
    v32 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsView];
    v33 = [v32 leadingAnchor];
    v34 = [v28 leadingAnchor];
    v35 = [v33 constraintEqualToAnchor_];

    *(v27 + 40) = v35;
    v36 = [v32 topAnchor];
    v37 = [v28 bottomAnchor];
    v38 = [v36 constraintEqualToAnchor:v37 constant:66.0];

    *(v27 + 48) = v38;
    v39 = *&v1[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarView];
    v40 = [v39 leadingAnchor];
    v41 = [v32 trailingAnchor];
    v42 = [v40 constraintEqualToAnchor:v41 constant:80.0];

    *(v27 + 56) = v42;
    v43 = [v39 topAnchor];
    v44 = [v32 topAnchor];
    v45 = [v43 constraintEqualToAnchor_];

    *(v27 + 64) = v45;
    *(v27 + 72) = v56;
    v46 = sub_20C13CC54();

    [v54 activateConstraints_];

    v47 = [v1 view];
    if (v47)
    {
      v48 = v47;
      [v47 setNeedsUpdateConstraints];

      v49 = [v1 view];
      if (v49)
      {
        v50 = v49;
        [v49 setNeedsLayout];

        v51 = [v1 view];
        if (v51)
        {
          v52 = v51;
          [v51 layoutIfNeeded];

          v3 = v56;
          goto LABEL_9;
        }

LABEL_14:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
}

id sub_20BF30CBC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSessionSummaryViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVSessionSummaryViewController(uint64_t a1)
{
  result = qword_27C770970;
  if (!qword_27C770970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF30F64(uint64_t a1)
{
  sub_20B79F044(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BF31064(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_additionalMetadata) = a1;

  return sub_20BF2F690();
}

void sub_20BF31104()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_20BF323D0;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_20B7B548C;
  v5[3] = &block_descriptor_153;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 animateWithDuration:v3 animations:0.3];
  _Block_release(v3);
}

void sub_20BF31228(uint64_t a1, uint64_t a2)
{
  v3 = sub_20B84DBE8(a1, a2);
  [v3 setModalInPresentation_];
  [v2 presentViewController:v3 animated:1 completion:0];
  [v2 setNeedsFocusUpdate];
  [v2 updateFocusIfNeeded];
}

void sub_20BF312E0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_upNextSummaryView) + OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_startButtonTextView);
  if (v3)
  {
    v4 = *&v3[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
    v5 = v3;
    v6 = v4;
    v7 = sub_20C13C914();
    [v6 setText_];
  }
}

id sub_20BF31434(char a1, char a2)
{
  sub_20B98D358(a1, a2);
  [v2 setNeedsFocusUpdate];

  return [v2 updateFocusIfNeeded];
}

void sub_20BF314C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerView;
  type metadata accessor for TVSummaryHeaderView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_footerView;
  type metadata accessor for TVSummaryFooterView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v12] = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_metricGridView;
  v15 = [objc_allocWithZone(type metadata accessor for SummaryMetricGridView()) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v14] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_separatorView;
  v17 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.1];
  [v17 setBackgroundColor_];

  *&v6[v16] = v17;
  v19 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsView;
  v20 = [objc_allocWithZone(type metadata accessor for TVSummaryActivityRingsView()) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v19] = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_upNextSummaryView;
  type metadata accessor for TVSummaryUpNextView();
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v21] = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_queueCompleteView;
  type metadata accessor for TVSummaryQueueCompleteView();
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v23] = v24;
  v25 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_topPaddingLayoutGuide;
  *&v6[v25] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v26 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_bottomPaddingLayoutGuide;
  *&v6[v26] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v27 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewWidthConstraint;
  *&v6[v27] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v28 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewBottomConstraint;
  *&v6[v28] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v29 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewTopConstraint;
  *&v6[v29] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v30 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTopPinningConstraint;
  *&v6[v30] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v31 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsBottomPinningConstraint;
  *&v6[v31] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v32 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTrailingConstraint;
  *&v6[v32] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v33 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarLeadingConstraint;
  *&v6[v33] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v34 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTopConstraint;
  *&v6[v34] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v35 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTopConstraint;
  *&v6[v35] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v36 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTrailingConstraint;
  *&v6[v36] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v37 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerViewTrailingConstraint;
  *&v6[v37] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v38 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_summary;
  v39 = type metadata accessor for SessionSummaryViewModel(0);
  (*(*(v39 - 8) + 56))(&v6[v38], 1, 1, v39);
  *&v6[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_additionalMetadata] = 0;
  *&v6[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_presenter] = a1;
  v40 = &v6[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_eventHub];
  *v40 = a3;
  *(v40 + 1) = a4;
  v148 = a5;
  sub_20B51CC64(a5, &v6[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_storefrontLocalizer]);
  v41 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 48);
  v160[2] = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 32);
  v160[3] = v41;
  v161 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 64);
  v42 = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder + 16);
  v160[0] = *(a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder);
  v160[1] = v42;
  v43 = &v6[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_stringBuilder];
  memmove(&v6[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_stringBuilder], (a1 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_stringBuilder), 0x42uLL);

  swift_unknownObjectRetain();
  sub_20B7A3194(v160, v162);
  v44 = sub_20C1371C4();
  v45 = *(v43 + 1);
  v46 = *(v43 + 3);
  v163 = *(v43 + 2);
  v164 = v46;
  v47 = *(v43 + 1);
  v162[0] = *v43;
  v162[1] = v47;
  v158[1] = v45;
  v158[2] = v163;
  v158[3] = *(v43 + 3);
  v165 = *(v43 + 32);
  v159 = *(v43 + 32);
  v158[0] = v162[0];
  v48 = objc_allocWithZone(type metadata accessor for SummaryBurnBarView());
  sub_20B7A3194(v162, v157);
  v49 = SummaryBurnBarView.init(workoutActivityType:stringBuilder:)(v44, 0, v158);
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarView] = v49;
  v156.receiver = v6;
  v156.super_class = type metadata accessor for TVSessionSummaryViewController(0);
  v50 = objc_msgSendSuper2(&v156, sel_initWithNibName_bundle_, 0, 0);
  *(a1 + 24) = &off_2822F7960;
  swift_unknownObjectWeakAssign();
  v51 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_footerView;
  v52 = *&v50[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_footerView];
  v53 = &v52[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onDoneButtonTap];
  v54 = *&v52[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onDoneButtonTap];
  v55 = *&v52[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onDoneButtonTap + 8];
  *v53 = sub_20BF323B0;
  v53[1] = a1;
  v56 = v50;

  v57 = v56;
  v58 = v52;
  sub_20B583ECC(v54, v55);

  v152 = v51;
  v59 = *&v50[v51];
  v60 = &v59[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onCooldownButtonTap];
  v61 = *&v59[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onCooldownButtonTap];
  v62 = *&v59[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onCooldownButtonTap + 8];
  *v60 = sub_20BF323B4;
  v60[1] = a1;

  v63 = v59;
  sub_20B583ECC(v61, v62);

  v64 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_upNextSummaryView;
  v65 = *&v57[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_upNextSummaryView];
  v66 = &v65[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_onStartButtonTapped];
  v67 = *&v65[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_onStartButtonTapped];
  v68 = *&v65[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_onStartButtonTapped + 8];
  *v66 = sub_20BF323B8;
  v66[1] = a1;

  v69 = v65;
  sub_20B583ECC(v67, v68);

  v70 = *&v57[v64];
  v71 = &v70[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_onDoneButtonTapped];
  v72 = *&v70[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_onDoneButtonTapped];
  v73 = *&v70[OBJC_IVAR____TtC9SeymourUI19TVSummaryUpNextView_onDoneButtonTapped + 8];
  *v71 = sub_20BF323BC;
  v71[1] = a1;

  v74 = v70;
  sub_20B583ECC(v72, v73);

  v75 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_queueCompleteView;
  v76 = *&v57[OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_queueCompleteView];
  v77 = &v76[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_onDoneButtonTapped];
  v78 = *&v76[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_onDoneButtonTapped];
  v79 = *&v76[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_onDoneButtonTapped + 8];
  *v77 = sub_20BF323C4;
  v77[1] = a1;

  v80 = v76;
  sub_20B583ECC(v78, v79);

  v81 = *&v57[v75];
  v82 = &v81[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_onSaveButtonTapped];
  v83 = *&v81[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_onSaveButtonTapped];
  v84 = *&v81[OBJC_IVAR____TtC9SeymourUI26TVSummaryQueueCompleteView_onSaveButtonTapped + 8];
  *v82 = sub_20BF323CC;
  v82[1] = a1;

  v85 = v81;
  sub_20B583ECC(v83, v84);

  v86 = [objc_opt_self() effectWithStyle_];
  v87 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v88 = [v57 view];
  if (!v88)
  {
    __break(1u);
    goto LABEL_18;
  }

  v89 = v88;
  v154 = v50;
  v149 = v75;
  v150 = v64;
  v90 = v87;
  [v89 addSubview_];

  [v90 setTranslatesAutoresizingMaskIntoConstraints_];
  v91 = [v57 view];
  if (!v91)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v92 = v91;
  v151 = objc_opt_self();
  v94 = *MEMORY[0x277D768C8];
  v93 = *(MEMORY[0x277D768C8] + 8);
  v95 = *(MEMORY[0x277D768C8] + 16);
  v96 = *(MEMORY[0x277D768C8] + 24);
  v97 = [v90 leadingAnchor];
  v98 = [v92 leadingAnchor];
  v99 = [v97 constraintEqualToAnchor:v98 constant:v93];

  LODWORD(v100) = 1148846080;
  [v99 setPriority_];
  v101 = v99;
  v102 = [v90 trailingAnchor];
  v103 = [v92 trailingAnchor];
  v104 = [v102 constraintEqualToAnchor:v103 constant:-v96];

  LODWORD(v105) = 1148846080;
  [v104 setPriority_];
  v106 = v104;
  v107 = [v90 topAnchor];
  v108 = [v92 topAnchor];
  v109 = [v107 constraintEqualToAnchor:v108 constant:v94];

  LODWORD(v110) = 1148846080;
  [v109 setPriority_];
  v111 = [v90 bottomAnchor];
  v112 = [v92 bottomAnchor];
  v113 = [v111 constraintEqualToAnchor:v112 constant:-v95];

  LODWORD(v114) = 1148846080;
  [v113 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v115 = swift_allocObject();
  *(v115 + 16) = xmmword_20C14FE90;
  *(v115 + 32) = v101;
  *(v115 + 40) = v106;
  *(v115 + 48) = v109;
  *(v115 + 56) = v113;
  v116 = v109;

  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v117 = sub_20C13CC54();

  [v151 activateConstraints_];

  v118 = [v57 view];
  if (!v118)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v119 = v118;
  [v118 addSubview_];

  v120 = [v57 view];
  if (!v120)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v121 = v120;
  [v120 addSubview_];

  v122 = [v57 view];
  if (!v122)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v123 = v122;
  [v122 addSubview_];

  v124 = [v57 view];
  if (!v124)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v125 = v124;
  [v124 addSubview_];

  v126 = [v57 view];
  if (!v126)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v127 = v126;
  [v126 addSubview_];

  v128 = [v57 view];
  if (!v128)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v129 = v128;
  [v128 addSubview_];

  v130 = [v57 view];
  if (!v130)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v131 = v130;
  [v130 addSubview_];

  v132 = [v57 view];
  if (!v132)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v133 = v132;
  [v132 addSubview_];

  v134 = [v57 view];
  if (!v134)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v135 = v134;
  [v134 addLayoutGuide_];

  v136 = [v57 view];
  if (!v136)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v137 = v136;
  [v136 addLayoutGuide_];

  [*&v57[v149] setHidden_];
  [*&v57[v150] setHidden_];
  v138 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v57 action:sel_menuButtonTapped];
  *&v158[0] = MEMORY[0x277D84F90];
  v139 = v138;
  sub_20C13DD64();
  sub_20C13D014();
  sub_20C13DD34();
  sub_20C13DD74();
  sub_20C13DD84();
  sub_20C13DD44();
  sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
  v140 = sub_20C13CC54();

  [v139 setAllowedPressTypes_];

  v141 = [v57 view];
  if (!v141)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v142 = v141;
  [v141 addGestureRecognizer_];

  v143 = [v57 view];
  if (!v143)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v144 = v143;
  [v143 setAlpha_];

  sub_20BF2E5FC();
  v145 = [v57 view];

  if (v145)
  {
    v146 = sub_20C13C914();
    [v145 setAccessibilityIdentifier_];

    __swift_destroy_boxed_opaque_existential_1(v148);
    v147 = sub_20C137254();
    (*(*(v147 - 8) + 8))(a2, v147);
    return;
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_20BF323D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BF32438(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_20BF324A0()
{
  result = qword_27C770990;
  if (!qword_27C770990)
  {
    type metadata accessor for TVSessionSummaryViewController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770990);
  }

  return result;
}

void sub_20BF324F8()
{
  v1 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerView;
  type metadata accessor for TVSummaryHeaderView();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_footerView;
  type metadata accessor for TVSummaryFooterView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_metricGridView;
  v6 = [objc_allocWithZone(type metadata accessor for SummaryMetricGridView()) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_separatorView;
  v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.1];
  [v8 setBackgroundColor_];

  *(v0 + v7) = v8;
  v10 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsView;
  v11 = [objc_allocWithZone(type metadata accessor for TVSummaryActivityRingsView()) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_upNextSummaryView;
  type metadata accessor for TVSummaryUpNextView();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_queueCompleteView;
  type metadata accessor for TVSummaryQueueCompleteView();
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_topPaddingLayoutGuide;
  *(v0 + v16) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v17 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_bottomPaddingLayoutGuide;
  *(v0 + v17) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v18 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewWidthConstraint;
  *(v0 + v18) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v19 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewBottomConstraint;
  *(v0 + v19) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v20 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_gridViewTopConstraint;
  *(v0 + v20) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v21 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTopPinningConstraint;
  *(v0 + v21) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v22 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsBottomPinningConstraint;
  *(v0 + v22) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v23 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTrailingConstraint;
  *(v0 + v23) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v24 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarLeadingConstraint;
  *(v0 + v24) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v25 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_burnBarTopConstraint;
  *(v0 + v25) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v26 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTopConstraint;
  *(v0 + v26) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v27 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_activityRingsTrailingConstraint;
  *(v0 + v27) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v28 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_headerViewTrailingConstraint;
  *(v0 + v28) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v29 = OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_summary;
  v30 = type metadata accessor for SessionSummaryViewModel(0);
  (*(*(v30 - 8) + 56))(v0 + v29, 1, 1, v30);
  *(v0 + OBJC_IVAR____TtC9SeymourUI30TVSessionSummaryViewController_additionalMetadata) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t RootContentError.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BF32974()
{
  result = qword_27C770998;
  if (!qword_27C770998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770998);
  }

  return result;
}

uint64_t sub_20BF329D8()
{
  sub_20C13E164();
  sub_20C13BFF4();
  sub_20BF32D24(&qword_27C769B00, MEMORY[0x277D74D78], MEMORY[0x277D74D80]);
  sub_20C13C7C4();
  sub_20C132EE4();
  sub_20BF32D24(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20C13C7C4();
  return sub_20C13E1B4();
}

uint64_t sub_20BF32AC4(uint64_t a1)
{
  sub_20C13BFF4();
  sub_20BF32D24(&qword_27C769B00, MEMORY[0x277D74D78], MEMORY[0x277D74D80]);
  sub_20C13C7C4();
  sub_20C132EE4();
  sub_20BF32D24(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_20C13C7C4();
}

uint64_t sub_20BF32B98(uint64_t a1)
{
  sub_20C13E164();
  sub_20C13BFF4();
  sub_20BF32D24(&qword_27C769B00, MEMORY[0x277D74D78], MEMORY[0x277D74D80]);
  sub_20C13C7C4();
  sub_20C132EE4();
  sub_20BF32D24(&qword_27C7675A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_20C13C7C4();
  return sub_20C13E1B4();
}

uint64_t type metadata accessor for LayoutListConfiguration(uint64_t a1)
{
  result = qword_27C7709A8;
  if (!qword_27C7709A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BF32D24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_20BF32D94(uint64_t a1)
{
  sub_20C13BFF4();
  if (v1 <= 0x3F)
  {
    sub_20BD8E9E4(319);
    if (v2 <= 0x3F)
    {
      sub_20C132EE4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_20BF32E30(void **a1)
{
  v1 = *a1;
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);

  return sub_20C137CA4();
}

uint64_t sub_20BF32EC0(void *a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v6 = a1;
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x20F2F5850](v15[2], v15[3]);
    v13 = sub_20B51E694(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_20B517000, v7, v8, "Failed to fetchCurrentAccount: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  *(swift_allocObject() + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
  return sub_20C137CA4();
}

uint64_t sub_20BF330E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  v9 = sub_20C132C14();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v32 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B424();
  v15 = a1;
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31[1] = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31[0] = a2;
    v21 = v20;
    v37 = v20;
    *v19 = 136446210;
    swift_getErrorValue();
    v22 = MEMORY[0x20F2F5850](v35, v36);
    v24 = sub_20B51E694(v22, v23, &v37);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_20B517000, v16, v17, "Marketing link processing failed with error: %{public}s. Using fallback url.", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x20F2F6A40](v21, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  sub_20C136634();
  v26 = v33;
  v25 = v34;
  if ((*(v33 + 48))(v8, 1, v34) == 1)
  {
    sub_20B9E801C(v8);
    sub_20B5D9BA8();
    v27 = swift_allocError();
    *v28 = 14;
    *(swift_allocObject() + 16) = v27;
    sub_20C1387E4();
    return sub_20C137CA4();
  }

  else
  {
    v30 = v32;
    (*(v26 + 32))(v32, v8, v25);
    swift_getObjectType();
    sub_20C13D234();
    return (*(v26 + 8))(v30, v25);
  }
}

uint64_t sub_20BF33494@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v121 = a2;
  v122 = type metadata accessor for NavigationResource(0);
  v107 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v108 = v3;
  v109 = (&v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v110 = &v94 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76C450, &unk_20C14FD10);
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x28223BE20](v6);
  v103 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v104 = &v94 - v9;
  v102 = v10;
  MEMORY[0x28223BE20](v11);
  v117 = &v94 - v12;
  v118 = sub_20C132C14();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v115 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  v100 = *(v101 - 8);
  v97 = *(v100 + 64);
  MEMORY[0x28223BE20](v101);
  v99 = &v94 - v14;
  v15 = sub_20C1388B4();
  v112 = *(v15 - 8);
  v113 = v15;
  MEMORY[0x28223BE20](v15);
  v111 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768660, &unk_20C152F60);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v94 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622F0, &unk_20C14FD00);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v94 - v21;
  v23 = sub_20C1388F4();
  v120 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v94 - v27;
  v29 = sub_20C138B94();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v94 - v34;
  v119 = a1;
  v36 = sub_20C138824();
  if (*(v36 + 16))
  {
    v108 = v25;
    v110 = v23;
    v37 = *(v30 + 16);
    v37(v32, v36 + ((*(v30 + 80) + 32) & ~*(v30 + 80)), v29);

    (*(v30 + 32))(v35, v32, v29);
    v38 = v114;
    v109 = *(v114 + 16);
    v37(v22, v35, v29);
    (*(v30 + 56))(v22, 0, 1, v29);
    v39 = sub_20C138894();
    v40 = *(v39 - 8);
    (*(v40 + 16))(v19, v119, v39);
    (*(v40 + 56))(v19, 0, 1, v39);
    sub_20C1388C4();
    v41 = v111;
    sub_20C138B74();
    v43 = v112;
    v42 = v113;
    v44 = (*(v112 + 88))(v41, v113);
    v45 = v44 == *MEMORY[0x277D540C8];
    v46 = v30;
    v47 = v43;
    v96 = v29;
    v95 = v35;
    if (v45)
    {
      (*(v43 + 96))(v41, v42);
      v48 = *v41;
      v49 = OBJC_IVAR____TtC9SeymourUI38MarketingDynamicActionOfferInterceptor_accountResult;
      v50 = swift_allocObject();
      v51 = v109;
      *(v50 + 16) = v48;
      *(v50 + 24) = v51;
      v52 = v100;
      v53 = v38 + v49;
      v54 = v99;
      v55 = v101;
      (*(v100 + 16))(v99, v53, v101);
      v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v57 = (v97 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      (*(v52 + 32))(v58 + v56, v54, v55);
      v59 = (v58 + v57);
      *v59 = sub_20BF35D60;
      v59[1] = v50;
      swift_unknownObjectRetain();
      sub_20C137C94();
      (*(v120 + 8))(v28, v110);
      return (*(v46 + 8))(v95, v96);
    }

    else
    {
      v73 = v109;
      v114 = v30;
      v119 = v28;
      if (v44 == *MEMORY[0x277D540D0])
      {
        (*(v47 + 96))(v41, v42);
        (*(v116 + 32))(v115, v41, v118);
        swift_getObjectType();
        v74 = v104;
        sub_20C13D234();
        v75 = swift_allocObject();
        *(v75 + 16) = v73;
        v77 = v105;
        v76 = v106;
        v78 = *(v105 + 16);
        v112 = v105 + 16;
        v113 = v78;
        v79 = v103;
        v78(v103, v74, v106);
        v80 = (*(v77 + 80) + 16) & ~*(v77 + 80);
        v111 = *(v77 + 80);
        v101 = v80;
        v81 = (v102 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
        v82 = swift_allocObject();
        v107 = *(v77 + 32);
        (v107)(v82 + v80, v79, v76);
        v83 = (v82 + v81);
        *v83 = sub_20BF35C88;
        v83[1] = v75;
        sub_20C1387E4();
        swift_unknownObjectRetain();
        sub_20C137C94();
        v109 = *(v77 + 8);
        (v109)(v74, v76);
        v84 = v120;
        v85 = v108;
        v86 = v110;
        (*(v120 + 16))(v108, v119, v110);
        v87 = (*(v84 + 80) + 16) & ~*(v84 + 80);
        v88 = swift_allocObject();
        (*(v84 + 32))(v88 + v87, v85, v86);
        v89 = v74;
        v90 = v74;
        v91 = v117;
        v113(v90, v117, v76);
        v92 = swift_allocObject();
        (v107)(v92 + v101, v89, v76);
        v93 = (v92 + v81);
        *v93 = sub_20BF35CB8;
        v93[1] = v88;
        sub_20C137C94();
        (v109)(v91, v76);
        (*(v116 + 8))(v115, v118);
        (*(v84 + 8))(v119, v86);
        return (*(v114 + 8))(v95, v96);
      }

      else
      {
        result = sub_20C13DFE4();
        __break(1u);
      }
    }
  }

  else
  {

    (*(v30 + 56))(v22, 1, 1, v29);
    v61 = sub_20C138894();
    v62 = *(v61 - 8);
    v63 = *(v62 + 16);
    v64 = v119;
    v63(v19, v119, v61);
    (*(v62 + 56))(v19, 0, 1, v61);
    sub_20C1388C4();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763FD0, &unk_20C155B10);
    v66 = *(v65 + 48);
    v67 = *(v65 + 64);
    v68 = v110;
    v63(v110, v64, v61);
    v69 = v120;
    (*(v120 + 16))(v68 + v66, v25, v23);
    *(v68 + v67) = 0;
    swift_storeEnumTagMultiPayload();
    v70 = v109;
    sub_20BDC6590(v68, v109, type metadata accessor for NavigationResource);
    v71 = (*(v107 + 80) + 16) & ~*(v107 + 80);
    v72 = swift_allocObject();
    sub_20BF35E58(v70, v72 + v71, type metadata accessor for NavigationResource);
    sub_20C137CA4();
    sub_20B77FF74(v68, type metadata accessor for NavigationResource);
    return (*(v69 + 8))(v25, v23);
  }

  return result;
}

uint64_t sub_20BF34198(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationResource(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v18 - v11);
  v13 = *a1;
  v14 = [objc_allocWithZone(MEMORY[0x277CEE640]) initWithPurchaseType:0 buyParams:a2];
  [v14 setUserInitiated_];
  [v14 setRequiresAccount_];
  [v14 setAccount_];
  *v12 = [objc_allocWithZone(MEMORY[0x277CEE660]) initWithPurchase:v14 bag:a3];
  swift_storeEnumTagMultiPayload();
  sub_20BDC6590(v12, v9, type metadata accessor for NavigationResource);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  sub_20BF35E58(v9, v16 + v15, type metadata accessor for NavigationResource);
  sub_20C137CA4();

  return sub_20B77FF74(v12, type metadata accessor for NavigationResource);
}

uint64_t sub_20BF343B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationResource(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0, &unk_20C15F290);
  v12 = *(v11 + 48);
  v13 = *(v11 + 64);
  v14 = sub_20C1387E4();
  (*(*(v14 - 8) + 16))(v10, a1, v14);
  v15 = sub_20C1388F4();
  (*(*(v15 - 8) + 16))(&v10[v12], a2, v15);
  v10[v13] = 0;
  swift_storeEnumTagMultiPayload();
  sub_20BDC6590(v10, v7, type metadata accessor for NavigationResource);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_20BF35E58(v7, v17 + v16, type metadata accessor for NavigationResource);
  sub_20C137CA4();
  return sub_20B77FF74(v10, type metadata accessor for NavigationResource);
}

char *MarketingDynamicActionOfferInterceptor.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC9SeymourUI38MarketingDynamicActionOfferInterceptor_accountResult;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MarketingDynamicActionOfferInterceptor.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC9SeymourUI38MarketingDynamicActionOfferInterceptor_accountResult;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t MarketingDynamicActionOfferInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for NavigationRequest(0);
  v26 = *(v31 - 8);
  v3 = *(v26 + 64);
  MEMORY[0x28223BE20](v31);
  v27 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764798, &qword_20C156158);
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v28);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C138894();
  v12 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20BDC6590(a1, v11, type metadata accessor for NavigationResource);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v12 + 32))(v14, v11, v29);
    sub_20BF33494(v14, v8);
    v15 = v25;
    v16 = v28;
    (*(v4 + 16))(v25, v8, v28);
    v17 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v18 = swift_allocObject();
    (*(v4 + 32))(v18 + v17, v15, v16);
    v19 = (v18 + ((v5 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v19 = sub_20BF34B54;
    v19[1] = 0;
    sub_20C137C94();
    (*(v4 + 8))(v8, v16);
    return (*(v12 + 8))(v14, v29);
  }

  else
  {
    sub_20B77FF74(v11, type metadata accessor for NavigationResource);
    v21 = a1;
    v22 = v27;
    sub_20BDC6590(v21, v27, type metadata accessor for NavigationRequest);
    v23 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v24 = swift_allocObject();
    sub_20BF35E58(v22, v24 + v23, type metadata accessor for NavigationRequest);
    return sub_20C137CA4();
  }
}

uint64_t sub_20BF34B54(uint64_t a1)
{
  v2 = type metadata accessor for NavigationRequest(0);
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_20BDC6590(a1, &v12 - v7, type metadata accessor for NavigationResource);
  v8[v2[5]] = 1;
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  v8[v2[7]] = 0;
  v8[v2[8]] = 2;
  *&v8[v2[9]] = 0;
  sub_20BDC6590(v8, v5, type metadata accessor for NavigationRequest);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_20BF35E58(v5, v10 + v9, type metadata accessor for NavigationRequest);
  sub_20C137CA4();
  return sub_20B77FF74(v8, type metadata accessor for NavigationRequest);
}

unint64_t sub_20BF34DD0(uint64_t a1)
{
  result = sub_20BF34DF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20BF34DF8()
{
  result = qword_27C7709C0;
  if (!qword_27C7709C0)
  {
    type metadata accessor for MarketingDynamicActionOfferInterceptor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7709C0);
  }

  return result;
}

uint64_t type metadata accessor for MarketingDynamicActionOfferInterceptor(uint64_t a1)
{
  result = qword_27C7709D0;
  if (!qword_27C7709D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF34EA4(uint64_t a1)
{
  sub_20BF34F70(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_20BF34F70(uint64_t a1)
{
  if (!qword_27C7709E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76E4D8, &qword_20C17A7D8);
    v1 = sub_20C137CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27C7709E0);
    }
  }
}

void *sub_20BF34FD4(uint64_t a1)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350, &qword_20C16DB10);
  v3 = *(v33 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v33);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764240, &unk_20C184D30);
  v34 = *(v36 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v32 = &v31 - v11;
  MEMORY[0x28223BE20](v12);
  v37 = &v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  v1[2] = v38[0];
  v1[3] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v14 = v38[1];
  v1[4] = v38[0];
  v1[5] = v14;
  v31 = v1;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v1[6] = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v38, v38[3]);
  sub_20C13B954();
  v15 = v33;
  (*(v3 + 16))(v5, v8, v33);
  v16 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v17 = swift_allocObject();
  (*(v3 + 32))(v17 + v16, v5, v15);
  v18 = (v17 + ((v4 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20BF32E30;
  v18[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4D8, &qword_20C17A7D8);
  v19 = v32;
  sub_20C137C94();
  (*(v3 + 8))(v8, v15);
  v21 = v34;
  v20 = v35;
  v22 = v36;
  (*(v34 + 16))(v35, v19, v36);
  v23 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v24 = (v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = *(v21 + 32);
  v26(v25 + v23, v20, v22);
  v27 = (v25 + v24);
  *v27 = sub_20BF32EC0;
  v27[1] = 0;
  v28 = v37;
  sub_20C137C94();
  (*(v21 + 8))(v19, v22);
  v29 = v31;
  v26(v31 + OBJC_IVAR____TtC9SeymourUI38MarketingDynamicActionOfferInterceptor_accountResult, v28, v22);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v29;
}

uint64_t objectdestroyTm_16()
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

uint64_t sub_20BF35CB8(uint64_t a1)
{
  v3 = *(sub_20C1388F4() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20BF343B0(a1, v4);
}

uint64_t sub_20BF35D90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BF35E58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(type metadata accessor for NavigationResource(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = (v0 + v3);
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

        v20 = v12[9];
        v21 = sub_20C13BA24();
        v22 = *(v21 - 8);
        if (!(*(v22 + 48))(v5 + v20, 1, v21))
        {
          (*(v22 + 8))(v5 + v20, v21);
        }

        v23 = v12[10];
        v24 = sub_20C134A44();
        v25 = *(v24 - 8);
        if (!(*(v25 + 48))(v5 + v23, 1, v24))
        {
          (*(v25 + 8))(v5 + v23, v24);
        }

        if (*(v5 + v12[11] + 8) >= 0xC)
        {
        }

        v26 = v12[12];
        v27 = sub_20C135C54();
        v28 = *(v27 - 8);
        if (!(*(v28 + 48))(v5 + v26, 1, v27))
        {
          (*(v28 + 8))(v5 + v26, v27);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20BF36520()
{
  result = sub_20C13C954();
  qword_27C79CC68 = result;
  unk_27C79CC70 = v1;
  return result;
}

char *sub_20BF36550(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_indexPath;
  v10 = sub_20C133244();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_layout];
  *v11 = xmmword_20C184E20;
  *(v11 + 1) = xmmword_20C151DE0;
  *(v11 + 2) = xmmword_20C184E30;
  *(v11 + 3) = xmmword_20C184E40;
  v12 = OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_label;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v52.receiver = v4;
  v52.super_class = type metadata accessor for ShelfListFooterView(0);
  v14 = objc_msgSendSuper2(&v52, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_label;
  v16 = *&v14[OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_label];
  v17 = v14;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v18 = *&v14[v15];
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 systemGrayColor];
  [v20 setTextColor_];

  v22 = *&v14[v15];
  v23 = objc_opt_self();
  v24 = *MEMORY[0x277D76938];
  v25 = v22;
  v26 = [v23 preferredFontForTextStyle_];
  [v25 setFont_];

  [*&v14[v15] setNumberOfLines_];
  v27 = *&v14[v15];
  v28 = v17;
  [v28 addSubview_];
  v50 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C150050;
  v30 = [v28 heightAnchor];
  v31 = &v28[OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_layout];
  v32 = [v30 constraintGreaterThanOrEqualToConstant_];

  type metadata accessor for UILayoutPriority(0);
  sub_20BF379D4(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_20C13BBA4();
  LODWORD(v33) = v51;
  [v32 setPriority_];
  *(v29 + 32) = v32;
  v34 = [*&v14[v15] leadingAnchor];
  v35 = [v28 leadingAnchor];

  v36 = [v34 constraintEqualToAnchor:v35 constant:v31[2]];
  *(v29 + 40) = v36;
  v37 = [*&v14[v15] trailingAnchor];
  v38 = [v28 trailingAnchor];

  v39 = [v37 constraintEqualToAnchor:v38 constant:-v31[4]];
  sub_20C13BBA4();
  LODWORD(v40) = v51;
  [v39 setPriority_];
  *(v29 + 48) = v39;
  v41 = [*&v14[v15] topAnchor];
  v42 = [v28 topAnchor];

  v43 = [v41 constraintEqualToAnchor:v42 constant:v31[7]];
  *(v29 + 56) = v43;
  v44 = [*&v14[v15] bottomAnchor];
  v45 = [v28 bottomAnchor];

  v46 = [v44 constraintLessThanOrEqualToAnchor:v45 constant:-v31[7]];
  sub_20C13BBA4();
  LODWORD(v47) = v51;
  [v46 setPriority_];
  *(v29 + 64) = v46;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v48 = sub_20C13CC54();

  [v50 activateConstraints_];

  return v28;
}

void sub_20BF36D58(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_layout + 16);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_layout + 32);
  v5 = [*(v1 + OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_label) text];
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v8 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v9 = objc_opt_self();
    v10 = *MEMORY[0x277D76938];
    v11 = v8;
    v12 = [v9 preferredFontForTextStyle_];
    *(inited + 64) = sub_20B51C88C(0, &qword_27C767A60, 0x277D74300);
    *(inited + 40) = v12;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C763978, &unk_20C163AF0);
    type metadata accessor for Key(0);
    sub_20BF379D4(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
    v13 = sub_20C13C744();

    [v6 boundingRectWithSize:1 options:v13 attributes:0 context:{a1 - v3 - v4, 1.79769313e308}];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22.origin.x = v15;
    v22.origin.y = v17;
    v22.size.width = v19;
    v22.size.height = v21;
    CGRectGetHeight(v22);
  }
}

id sub_20BF36FA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfListFooterView(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ShelfListFooterView(uint64_t a1)
{
  result = qword_27C7709F8;
  if (!qword_27C7709F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF37098(uint64_t a1)
{
  sub_20B595A38(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BF37158@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_indexPath;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &unk_27C7629C0, qword_20C1510D0);
}

double sub_20BF371C0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BF37210()
{
  if (qword_27C760C70 != -1)
  {
    swift_once();
  }

  v0 = qword_27C79CC68;

  return v0;
}

id sub_20BF37294(uint64_t a1, void *a2)
{
  v4 = [objc_allocWithZone(type metadata accessor for ShelfListFooterView(0)) initWithFrame_];
  v5 = *&v4[OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_label];
  if (*(a1 + 56))
  {
    v6 = v5;
    v7 = sub_20C13C914();
  }

  else
  {
    v8 = v5;
    v7 = 0;
  }

  [v5 setText_];

  [v4 layoutIfNeeded];
  [objc_msgSend(a2 container)];
  v10 = v9;
  swift_unknownObjectRelease();
  sub_20BF36D58(v10);
  v12 = v11;
  v13 = objc_opt_self();
  v14 = [v13 fractionalWidthDimension_];
  v15 = [v13 estimatedDimension_];
  v16 = [objc_opt_self() sizeWithWidthDimension:v14 heightDimension:v15];

  if (qword_27C760C70 != -1)
  {
    swift_once();
  }

  v17 = sub_20C13C914();
  v18 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v16 elementKind:v17 alignment:4];

  return v18;
}

void sub_20BF374A4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_label);
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 40);
  v7 = v4;
  v6(v10, ObjectType, a2);
  v18 = v10[8];
  v19 = v10[9];
  v20 = v11;
  v14 = v10[4];
  v15 = v10[5];
  v16 = v10[6];
  v17 = v10[7];
  v12[0] = v10[0];
  v12[1] = v10[1];
  v12[2] = v10[2];
  v13 = v10[3];
  if (sub_20B5EAF8C(v12) == 1 || (v21 = v13, sub_20B52F9E8(&v21, v9, &qword_27C767830, &qword_20C15CA20), sub_20B520158(v10, &qword_27C762340, &unk_20C150290), !*(&v21 + 1)))
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_20C13C914();
    sub_20B520158(&v21, &qword_27C767830, &qword_20C15CA20);
  }

  [v7 setText_];
}

id sub_20BF37614(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = [objc_allocWithZone(type metadata accessor for ShelfListFooterView(0)) initWithFrame_];
  v15 = *&v14[OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_label];
  if (*(a1 + 56))
  {
    v16 = v15;
    v17 = sub_20C13C914();
  }

  else
  {
    v18 = v15;
    v17 = 0;
  }

  [v15 setText_];

  [v14 layoutIfNeeded];
  [objc_msgSend(a3 container)];
  v20 = v19;
  swift_unknownObjectRelease();
  sub_20BF36D58(v20);
  v22 = v21;
  v23 = objc_opt_self();
  v24 = [v23 fractionalWidthDimension_];
  v25 = [v23 estimatedDimension_];
  v26 = [objc_opt_self() sizeWithWidthDimension:v24 heightDimension:v25];

  if (a6)
  {
    v27 = [objc_opt_self() layoutAnchorWithEdges:6 fractionalOffset:{0.0, 1.0}];
  }

  else
  {
    v27 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{*&a4, v22 + *&a5}];
  }

  v28 = v27;
  sub_20BE51DD0(a2, v7, &off_2822F7E48);
  v29 = sub_20C13C914();

  v30 = [objc_opt_self() supplementaryItemWithLayoutSize:v26 elementKind:v29 containerAnchor:v28];

  return v30;
}

void sub_20BF378A4()
{
  v1 = OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_indexPath;
  v2 = sub_20C133244();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_layout);
  *v3 = xmmword_20C184E20;
  v3[1] = xmmword_20C151DE0;
  v3[2] = xmmword_20C184E30;
  v3[3] = xmmword_20C184E40;
  v4 = OBJC_IVAR____TtC9SeymourUI19ShelfListFooterView_label;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF379D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_20BF37A1C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v64 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_titleLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = *MEMORY[0x277D74420];
  v13 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  v63 = xmmword_20C14F980;
  *(inited + 16) = xmmword_20C14F980;
  v15 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v16 = swift_initStackObject();
  v17 = MEMORY[0x277D74430];
  *(v16 + 16) = v63;
  v18 = *v17;
  *(v16 + 32) = *v17;
  *(v16 + 40) = v12;
  v19 = v15;
  v20 = v18;
  v21 = sub_20B6B134C(v16);
  swift_setDeallocating();
  sub_20B520158(v16 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v21;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v22 = sub_20C13C744();

  v23 = [v13 fontDescriptorByAddingAttributes_];

  v24 = objc_opt_self();
  v25 = [v24 fontWithDescriptor:v23 size:0.0];

  [v11 setFont_];
  [v11 setLineBreakMode_];
  [v11 setNumberOfLines_];
  v26 = objc_opt_self();
  v27 = [v26 labelColor];
  [v11 setTextColor_];

  *&v4[v64] = v11;
  v28 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_subtitleLabel;
  v29 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  [v29 setAdjustsFontForContentSizeCategory_];
  v30 = [v24 preferredFontForTextStyle_];
  [v29 setFont_];

  v31 = [v26 systemGrayColor];
  [v29 setTextColor_];

  [v29 setLineBreakMode_];
  [v29 setNumberOfLines_];
  *&v63 = v26;
  v32 = [v26 secondaryLabelColor];
  [v29 setTextColor_];

  *&v4[v28] = v29;
  v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_layout] = 0;
  *&v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_activatedConstraints] = MEMORY[0x277D84F90];
  v33 = type metadata accessor for ActionButtonTemplateBuilder();
  v34 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v35 = swift_allocObject();
  v36 = qword_27C760AA0;

  v64 = v35;

  if (v36 != -1)
  {
    swift_once();
  }

  v37 = qword_27C76CF70;
  if (qword_27C760AA8 != -1)
  {
    swift_once();
  }

  v38 = qword_27C76CF78;
  v73[3] = v33;
  v73[4] = &off_2822EEB00;
  v73[0] = v34;
  v62 = v34;
  v71 = &type metadata for ActionButtonViewFactory;
  v72 = &off_2822B2B20;
  v39 = type metadata accessor for ActionButtonContainerView();
  v40 = objc_allocWithZone(v39);
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v73, v33);
  v61 = &v61;
  v42 = MEMORY[0x28223BE20](v41);
  v44 = (&v61 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44, v42);
  __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  v46 = *v44;
  v69[3] = v33;
  v69[4] = &off_2822EEB00;
  v68[4] = &off_2822B2B20;
  v69[0] = v46;
  v68[3] = &type metadata for ActionButtonViewFactory;
  *&v40[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v40[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v40[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v69, &v40[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v47 = &v40[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  *v47 = v64;
  v47[1] = &off_28229AE20;
  sub_20B51CC64(v68, &v40[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v40[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v37;
  *&v40[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v38;
  v67.receiver = v40;
  v67.super_class = v39;
  v48 = objc_msgSendSuper2(&v67, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, v61, v62);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v69);
  v49 = v48;
  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v73);
  [v49 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_actionButtonContainerView] = v49;
  v66.receiver = v4;
  v66.super_class = ObjectType;
  v50 = objc_msgSendSuper2(&v66, sel_initWithFrame_, a1, a2, a3, a4);
  v51 = [v50 traitCollection];
  v52 = [v63 systemBackgroundColor];
  v53 = sub_20C13D3B4();
  v54 = [v52 resolvedColorWithTraitCollection_];

  [v50 setBackgroundColor_];
  v55 = [v50 layer];
  [v55 setCornerRadius_];

  [v50 setClipsToBounds_];
  v56 = [v50 contentView];
  [v56 addSubview_];

  v57 = [v50 contentView];
  [v57 addSubview_];

  v58 = [v50 contentView];
  v59 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_actionButtonContainerView;
  [v58 addSubview_];

  *(*&v50[v59] + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822F7F80;
  swift_unknownObjectWeakAssign();

  sub_20BF38388();

  return v50;
}

void sub_20BF38388()
{
  v1 = objc_opt_self();
  v56 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_activatedConstraints;
  sub_20B5E29D0();

  v2 = sub_20C13CC54();

  [v1 deactivateConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14FF90;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_titleLabel];
  v5 = [v4 topAnchor];
  v6 = [v0 contentView];
  v7 = [v6 &selRef_setLineBreakMode_];

  v8 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_layout;
  if (v0[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_layout])
  {
    v9 = 32.0;
  }

  else
  {
    v9 = 20.0;
  }

  v10 = [v5 constraintEqualToAnchor:v7 constant:v9];

  *(v3 + 32) = v10;
  v11 = [v4 leadingAnchor];
  v12 = [v0 &selRef_setMaximumFractionDigits_];
  v13 = [v12 leadingAnchor];

  if (v0[v8])
  {
    v14 = 32.0;
  }

  else
  {
    v14 = 20.0;
  }

  v15 = [v11 constraintEqualToAnchor:v13 constant:v14];

  *(v3 + 40) = v15;
  v16 = [v4 trailingAnchor];
  v17 = [v0 &selRef_setMaximumFractionDigits_];
  v18 = [v17 trailingAnchor];

  if (v0[v8])
  {
    v19 = -32.0;
  }

  else
  {
    v19 = -20.0;
  }

  v20 = [v16 constraintEqualToAnchor:v18 constant:v19];

  *(v3 + 48) = v20;
  v21 = *&v0[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_subtitleLabel];
  v22 = [v21 topAnchor];
  v23 = [v4 bottomAnchor];
  v24 = 5.0;
  if (v0[v8])
  {
    v24 = 1.0;
  }

  v25 = [v22 constraintEqualToAnchor:v23 constant:v24];

  *(v3 + 56) = v25;
  v26 = [v21 leadingAnchor];
  v27 = [v0 contentView];
  v28 = [v27 leadingAnchor];

  if (v0[v8])
  {
    v29 = 32.0;
  }

  else
  {
    v29 = 20.0;
  }

  v30 = [v26 constraintEqualToAnchor:v28 constant:v29];

  *(v3 + 64) = v30;
  v31 = [v21 trailingAnchor];
  v32 = [v0 contentView];
  v33 = [v32 trailingAnchor];

  if (v0[v8])
  {
    v34 = -32.0;
  }

  else
  {
    v34 = -20.0;
  }

  v35 = [v31 constraintEqualToAnchor:v33 constant:v34];

  *(v3 + 72) = v35;
  v36 = *&v0[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_actionButtonContainerView];
  v37 = [v36 leadingAnchor];
  v38 = [v0 contentView];
  v39 = [v38 leadingAnchor];

  if (v0[v8])
  {
    v40 = 32.0;
  }

  else
  {
    v40 = 20.0;
  }

  v41 = [v37 &selRef_passwordEntryCancelledHandler + 6];

  *(v3 + 80) = v41;
  v42 = [v36 trailingAnchor];
  v43 = [v0 contentView];
  v44 = [v43 trailingAnchor];

  if (v0[v8])
  {
    v45 = -32.0;
  }

  else
  {
    v45 = -20.0;
  }

  v46 = [v42 &selRef_passwordEntryCancelledHandler + 6];

  *(v3 + 88) = v46;
  v47 = [v36 topAnchor];
  v48 = [v21 bottomAnchor];
  v49 = 40.0;
  if (v0[v8])
  {
    v49 = 60.0;
  }

  v50 = [v47 &selRef_passwordEntryCancelledHandler + 6];

  *(v3 + 96) = v50;
  v51 = [v36 bottomAnchor];
  v52 = [v0 contentView];
  v53 = [v52 bottomAnchor];

  if (v0[v8])
  {
    v54 = -32.0;
  }

  else
  {
    v54 = -20.0;
  }

  v55 = [v51 &selRef_passwordEntryCancelledHandler + 6];

  *(v3 + 104) = v55;
  *&v0[v56] = v3;

  v57 = sub_20C13CC54();

  [v1 activateConstraints_];
}

uint64_t type metadata accessor for WorkoutPlanGalleryBannerCell(uint64_t a1)
{
  result = qword_27C770A38;
  if (!qword_27C770A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF38C6C(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BF38D40(uint64_t a1)
{
  v3 = sub_20C133244();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_20B5F15A8(a1, v9);
    v12 = swift_storeEnumTagMultiPayload();
    v13 = MEMORY[0x28223BE20](v12);
    *(&v16 - 4) = 0;
    *(&v16 - 24) = 1;
    *(&v16 - 2) = v9;
    *(&v16 - 1) = v11;
    v14 = [*(v11 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v14)
    {
      v15 = v14;
      sub_20C1331E4();

      sub_20C0C1CDC(v6, sub_20B5E27BC);
      (*(v4 + 8))(v6, v3);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v9);
  }

  return result;
}

double sub_20BF38F40(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BF38F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BF38FE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20BF39048(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x47)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x38);
    if (v7 == v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_layout])
    {
    }

    else
    {
      v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_layout] = v7;

      sub_20BF38388();
    }

    v21 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_titleLabel];
    v22 = sub_20C13C914();

    [v21 setText_];

    v23 = *&v1[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_subtitleLabel];
    v24 = sub_20C13C914();

    [v23 setText_];

    sub_20BC96528(v8, 0, 1, 0, 0, 1, 0, 1);
  }

  else
  {
    sub_20C13B454();

    v9 = v1;
    v10 = sub_20C13BB74();
    v11 = sub_20C13D1D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = a1;
      v28 = v26;
      *v12 = 138543618;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2082;
      v14 = sub_20B5F66D0();
      v15 = v9;
      v16 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v14);
      v18 = sub_20B51E694(v16, v17, &v28);

      *(v12 + 14) = v18;
      _os_log_impl(&dword_20B517000, v10, v11, "Attempted to configure %{public}@ with item: %{public}s", v12, 0x16u);
      sub_20B520158(v13, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v13, -1, -1);
      v19 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x20F2F6A40](v19, -1, -1);
      MEMORY[0x20F2F6A40](v12, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_20BF393C0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_titleLabel;
  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setAdjustsFontForContentSizeCategory_];
  v5 = *MEMORY[0x277D74420];
  v6 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v8 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_20C14F980;
  v10 = *MEMORY[0x277D74430];
  *(v9 + 32) = *MEMORY[0x277D74430];
  *(v9 + 40) = v5;
  v11 = v8;
  v12 = v10;
  v13 = sub_20B6B134C(v9);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v13;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v14 = sub_20C13C744();

  v15 = [v6 fontDescriptorByAddingAttributes_];

  v16 = objc_opt_self();
  v17 = [v16 fontWithDescriptor:v15 size:0.0];

  [v4 setFont_];
  [v4 setLineBreakMode_];
  [v4 setNumberOfLines_];
  v18 = objc_opt_self();
  v19 = [v18 labelColor];
  [v4 setTextColor_];

  *(v0 + v3) = v4;
  v20 = OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_subtitleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setAdjustsFontForContentSizeCategory_];
  v22 = [v16 preferredFontForTextStyle_];
  [v21 setFont_];

  v23 = [v18 systemGrayColor];
  [v21 setTextColor_];

  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  v24 = [v18 secondaryLabelColor];
  [v21 setTextColor_];

  *(v0 + v20) = v21;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanGalleryBannerCell_activatedConstraints) = MEMORY[0x277D84F90];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF39838()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](0);
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

uint64_t sub_20BF3988C()
{
  v1 = *v0;
  MEMORY[0x20F2F58E0](0);
  return MEMORY[0x20F2F58E0](v1);
}

uint64_t sub_20BF398CC(uint64_t a1)
{
  v2 = *v1;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](0);
  MEMORY[0x20F2F58E0](v2);
  return sub_20C13E1B4();
}

unint64_t sub_20BF39920()
{
  result = qword_27C770A48;
  if (!qword_27C770A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770A48);
  }

  return result;
}

void sub_20BF399D0()
{
  v1 = v0;
  [v0 setAxis_];
  [v0 setSpacing_];
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = objc_opt_self();
  v4 = [v3 darkGrayColor];
  [v2 setBackgroundColor_];

  v5 = [objc_allocWithZone(MEMORY[0x277D75D18]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v6 = [v3 darkGrayColor];
  [v5 setBackgroundColor_];

  v7 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v7 setSpacing_];
  [v7 setAxis_];
  [v7 setDistribution_];
  v8 = [objc_allocWithZone(MEMORY[0x277D75A68]) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v8 setSpacing_];
  [v8 setAxis_];
  [v8 setDistribution_];
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  [v1 addArrangedSubview_];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_20C151490;
  v41 = v2;
  v11 = [v2 heightAnchor];
  sub_20C1387F4();
  v12 = [v11 constraintEqualToConstant_];

  *(v10 + 32) = v12;
  v40 = v5;
  v13 = [v5 heightAnchor];
  sub_20C1387F4();
  v14 = [v13 constraintEqualToConstant_];

  *(v10 + 40) = v14;
  sub_20B5E29D0();
  v15 = sub_20C13CC54();

  [v9 activateConstraints_];

  type metadata accessor for WorkoutPlanCompletionSingleMetricStack();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v17 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v18 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v19 = [objc_allocWithZone(ObjCClassFromMetadata) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  v20 = [objc_allocWithZone(ObjCClassFromMetadata) &selRef_traitCollectionWithPreferredContentSizeCategory_];
  [v7 addArrangedSubview_];
  [v7 addArrangedSubview_];
  [v8 addArrangedSubview_];
  v39 = v8;
  [v8 addArrangedSubview_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v17;
  v43 = inited + 32;
  *(inited + 40) = v18;
  *(inited + 48) = v19;
  v42 = inited;
  *(inited + 56) = v20;
  v22 = *&v1[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanCompletionMetricsStack_metricDisplays];
  v23 = *(v22 + 16);
  v38 = v17;
  v37 = v18;
  v36 = v19;
  v35 = v20;
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = (v22 + 48);
    while (v25 < *(v22 + 16))
    {
      if (v25 == 4)
      {
        goto LABEL_11;
      }

      v27 = *v26;
      if ((v42 & 0xC000000000000001) != 0)
      {

        v34 = v27;
        v30 = MEMORY[0x20F2F5430](v25, v42);
      }

      else
      {
        if (v25 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v28 = *(v43 + 8 * v25);

        v29 = v27;
        v30 = v28;
      }

      v31 = v30;
      ++v25;
      v32 = *&v30[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanCompletionSingleMetricStack_titleLabel];
      v33 = sub_20C13C914();
      [v32 setText_];

      [*&v31[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanCompletionSingleMetricStack_valueLabel] setAttributedText_];

      v26 += 3;
      if (v24 == v25)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
LABEL_11:

    swift_setDeallocating();
    swift_arrayDestroy();
  }
}

id sub_20BF39F68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutPlanCompletionMetricsStack();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BF39FD8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_layout];
  sub_20BF3BE2C(v132);
  v13 = v132[1];
  *v12 = v132[0];
  *(v12 + 1) = v13;
  v14 = v132[3];
  *(v12 + 2) = v132[2];
  *(v12 + 3) = v14;
  v15 = OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_textView;
  v16 = [objc_opt_self() smu_tvFocusableTextView];
  swift_getObjectType();
  v17 = sub_20BFBFE48();

  swift_getObjectType();
  v18 = sub_20BFBFE70(3);

  swift_getObjectType();
  v19 = objc_opt_self();
  v20 = [v19 labelColor];
  v21 = sub_20BFBFE9C(v20);

  swift_getObjectType();
  v22 = [v19 labelColor];
  v23 = sub_20BFBFEC8(v22);

  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v15] = v23;
  v131.receiver = v5;
  v131.super_class = type metadata accessor for TVDetailDescriptionHeaderCell(0);
  v24 = objc_msgSendSuper2(&v131, sel_initWithFrame_, a1, a2, a3, a4);
  v129 = OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  v25 = *(v24 + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView);
  v26 = v24;
  v27 = [v25 contentView];
  if (!v27)
  {
    __break(1u);
    goto LABEL_7;
  }

  v28 = v27;
  v128 = OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_textView;
  [v27 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_20C150050;
  v30 = *&v129[v24];
  v31 = v26;
  v32 = [v30 leadingAnchor];
  v33 = [v31 contentView];
  v34 = [v33 leadingAnchor];

  v35 = [v32 constraintEqualToAnchor:v34 constant:80.0];
  *(v29 + 32) = v35;
  v36 = [*&v129[v24] trailingAnchor];
  v37 = [v31 contentView];
  v38 = [v37 trailingAnchor];

  v39 = [v36 constraintLessThanOrEqualToAnchor:v38 constant:-80.0];
  *(v29 + 40) = v39;
  v40 = [*&v129[v24] bottomAnchor];
  v41 = [v31 contentView];

  v42 = [v41 bottomAnchor];
  v43 = [v40 constraintEqualToAnchor:v42 constant:-40.0];

  *(v29 + 48) = v43;
  v44 = [*&v129[v24] widthAnchor];
  v127 = v31;
  v45 = &v31[OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_layout];
  v46 = [v44 constraintLessThanOrEqualToConstant_];

  *(v29 + 56) = v46;
  v47 = [*&v129[v24] heightAnchor];
  v48 = [v47 constraintEqualToConstant_];

  *(v29 + 64) = v48;
  v49 = *&v129[v24];
  v50 = *&v26[v128];
  v51 = [v49 contentView];
  if (!v51)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v52 = v51;
  v53 = *MEMORY[0x277D768C8];
  v54 = *(MEMORY[0x277D768C8] + 8);
  v56 = *(MEMORY[0x277D768C8] + 16);
  v55 = *(MEMORY[0x277D768C8] + 24);
  v57 = [v50 leadingAnchor];
  v58 = [v52 leadingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58 constant:v54];

  LODWORD(v60) = 1148846080;
  [v59 setPriority_];
  v61 = v59;
  v62 = [v50 trailingAnchor];
  v63 = [v52 trailingAnchor];
  v64 = -v55;
  v65 = [v62 constraintEqualToAnchor:v63 constant:v64];

  LODWORD(v66) = 1148846080;
  [v65 setPriority_];
  v67 = v65;
  v68 = [v50 topAnchor];
  v69 = [v52 topAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:v53];

  LODWORD(v71) = 1148846080;
  [v70 setPriority_];
  v72 = [v50 bottomAnchor];
  v73 = [v52 bottomAnchor];
  v74 = -v56;
  v75 = [v72 constraintEqualToAnchor:v73 constant:v74];

  LODWORD(v76) = 1148846080;
  [v75 setPriority_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v61;
  *(inited + 40) = v67;
  *(inited + 48) = v70;
  *(inited + 56) = v75;
  v78 = v70;

  sub_20B8D9310(inited);
  v79 = [*&v129[v24] contentView];
  if (!v79)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v80 = v79;
  v81 = *&v129[v24];
  v82 = [v80 leadingAnchor];
  v83 = [v81 leadingAnchor];
  v84 = [v82 constraintEqualToAnchor:v83 constant:v54];

  LODWORD(v85) = 1148846080;
  [v84 setPriority_];
  v86 = v84;
  v87 = [v80 trailingAnchor];
  v88 = [v81 trailingAnchor];
  v89 = [v87 constraintEqualToAnchor:v88 constant:v64];

  LODWORD(v90) = 1148846080;
  [v89 setPriority_];
  v91 = v89;
  v92 = [v80 topAnchor];
  v93 = [v81 topAnchor];
  v94 = [v92 constraintEqualToAnchor:v93 constant:v53];

  LODWORD(v95) = 1148846080;
  [v94 setPriority_];
  v96 = [v80 bottomAnchor];
  v97 = [v81 bottomAnchor];
  v98 = [v96 constraintEqualToAnchor:v97 constant:v74];

  LODWORD(v99) = 1148846080;
  [v98 setPriority_];
  v100 = swift_initStackObject();
  *(v100 + 16) = xmmword_20C14FE90;
  *(v100 + 32) = v86;
  *(v100 + 40) = v91;
  *(v100 + 48) = v94;
  *(v100 + 56) = v98;
  v101 = v94;

  sub_20B8D9310(v100);
  v102 = *&v129[v24];
  v103 = *&v127[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView];
  v104 = v102;

  v105 = [v104 visualEffectContainerView];
  if (v105)
  {
    v130 = objc_opt_self();
    v106 = [v103 leadingAnchor];
    v107 = [v105 leadingAnchor];
    v108 = [v106 constraintEqualToAnchor:v107 constant:v54];

    LODWORD(v109) = 1148846080;
    [v108 setPriority_];
    v110 = v108;
    v111 = [v103 trailingAnchor];
    v112 = [v105 trailingAnchor];
    v113 = [v111 constraintEqualToAnchor:v112 constant:v64];

    LODWORD(v114) = 1148846080;
    [v113 setPriority_];
    v115 = v113;
    v116 = [v103 topAnchor];
    v117 = [v105 topAnchor];
    v118 = [v116 constraintEqualToAnchor:v117 constant:v53];

    LODWORD(v119) = 1148846080;
    [v118 setPriority_];
    v120 = [v103 bottomAnchor];
    v121 = [v105 bottomAnchor];
    v122 = [v120 constraintEqualToAnchor:v121 constant:v74];

    LODWORD(v123) = 1148846080;
    [v122 setPriority_];
    v124 = swift_initStackObject();
    *(v124 + 16) = xmmword_20C14FE90;
    *(v124 + 32) = v110;
    *(v124 + 40) = v115;
    *(v124 + 48) = v118;
    *(v124 + 56) = v122;
    v125 = v118;

    sub_20B8D9310(v124);
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v126 = sub_20C13CC54();

    [v130 activateConstraints_];

    return;
  }

LABEL_9:
  __break(1u);
}

void sub_20BF3AE04(unint64_t a1, char a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v3 contentView];
    v10 = [v9 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v11 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v6; v12; i = v6)
    {
      v6 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v6, v11);
        }

        else
        {
          if (v6 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v11 + 8 * v6 + 32);
        }

        v8 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        sub_20B6FFB30(&v32, v13);

        ++v6;
        if (v8 == v12)
        {
          v14 = aBlock[0];
          v8 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v12 = sub_20C13DB34();
    }

    v14 = MEMORY[0x277D84FA0];
LABEL_16:

    v33 = v14;
    sub_20B6FFB30(aBlock, *&v4[*v8]);

    sub_20B8E9218(v33);
    v16 = v15;

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = v16 + 32;
      do
      {
        sub_20B51CC64(v18, aBlock);
        v19 = *&v4[v7];
        v20 = v29;
        v21 = v30;
        __swift_project_boxed_opaque_existential_1(aBlock, v29);
        (*(v21 + 2))(v19, a2 & 1, v20, v21);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v18 += 40;
        --v17;
      }

      while (v17);
    }

    v6 = i;
  }

  v22 = *&v4[*v8];
  [v22 setControlState:v6 animated:{a2 & 1, i}];
  [v22 setControlState:v6 animated:a2 & 1];
  [*&v4[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView] setHidden_];
  v23 = objc_opt_self();
  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  *(v24 + 24) = (v6 & 8) >> 3;
  v30 = sub_20BF3C1A4;
  v31 = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  v29 = &block_descriptor_24_2;
  v25 = _Block_copy(aBlock);
  v26 = v4;

  [v23 animateWithDuration:v25 animations:0.5];
  _Block_release(v25);
}

void sub_20BF3B188(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v3 contentView];
    v10 = [v9 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v11 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v8 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v8, v11);
        }

        else
        {
          if (v8 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v11 + 8 * v8 + 32);
        }

        v14 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        sub_20B6FFB30(&v32, v13);

        ++v8;
        if (v14 == i)
        {
          v15 = aBlock[0];
          v8 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
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

    v33 = v15;
    sub_20B6FFB30(aBlock, *&v4[*v8]);

    sub_20B8E9218(v33);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, aBlock);
        v20 = *&v4[v7];
        v21 = v29;
        v22 = v30;
        __swift_project_boxed_opaque_existential_1(aBlock, v29);
        (*(v22 + 3))(v20, a2, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v19 += 40;
        --v18;
      }

      while (v18);

      v6 = a1;
      v8 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
    }

    else
    {

      v6 = a1;
    }
  }

  v23 = *&v4[*v8];
  [v23 setControlState:v6 withAnimationCoordinator:a2];
  [v23 setControlState:v6 withAnimationCoordinator:a2];
  [*&v4[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView] setHidden_];
  if (a2)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v4;
    *(v24 + 24) = (v6 & 8) >> 3;
    v30 = sub_20BF3BE0C;
    v31 = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v29 = &block_descriptor_154;
    v25 = _Block_copy(aBlock);
    v26 = v4;

    [a2 addCoordinatedAnimations:v25 completion:0];
    _Block_release(v25);
  }
}

void sub_20BF3B510(char *a1, char a2)
{
  v3 = 56;
  if (a2)
  {
    v3 = 24;
  }

  v4 = *&a1[OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_textView];
  v5 = *&a1[OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_layout + v3];
  [v4 setDescriptionTextColor_];
  [v4 setMoreLabelTextColor_];
  [a1 setNeedsLayout];
}

void sub_20BF3B648()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_itemInfo, &qword_27C762550, &unk_20C1505A0);
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_layout + 24);

  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_textView);
}

id sub_20BF3B6E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVDetailDescriptionHeaderCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVDetailDescriptionHeaderCell(uint64_t a1)
{
  result = qword_27C770A70;
  if (!qword_27C770A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF3B808(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BF3B8C8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BF3B914@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BF3B96C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BF3B9E4(double a1, double a2)
{
  if (a2 <= 0.0)
  {
    v8 = [v2 contentView];
    [v8 setAlpha_];
  }

  else
  {
    v4 = &v2[OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_layout];
    v5 = *&v2[OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_layout + 40];
    v6 = [v2 contentView];
    v7 = v4[6];
    v8 = v6;
    if (v5 > a2 && v7 <= 1.0 - a2 / v5)
    {
      v7 = 1.0 - a2 / v5;
    }

    [v6 setAlpha_];
  }
}

void sub_20BF3BAB4(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 7)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = *&v1[OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_textView];
    v9 = sub_20C13C914();
    [v8 setMoreLabelText_];

    v25 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v10 = [v25 length];
    sub_20B905400(*&v1[OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_layout]);
    type metadata accessor for Key(0);
    sub_20B76322C();
    v11 = sub_20C13C744();

    [v25 addAttributes:v11 range:{0, v10}];

    [v8 setDescriptionText_];
    v12 = v25;
  }

  else
  {
    sub_20C13B534();

    v13 = v1;
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = a1;
      v27 = v25;
      *v16 = 138543618;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 2082;
      v18 = sub_20B5F66D0();
      v19 = v13;
      v20 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v18);
      v22 = sub_20B51E694(v20, v21, &v27);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_20B517000, v14, v15, "Attempted to configure %{public}@ with item: %{public}s", v16, 0x16u);
      sub_20B520158(v17, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      v23 = v25;
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x20F2F6A40](v23, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

double sub_20BF3BE2C@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764C68, qword_20C16F5E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = objc_opt_self();
  v5 = *MEMORY[0x277D76918];
  v6 = v3;
  *(inited + 40) = [v4 preferredFontForTextStyle_];
  v7 = sub_20B6B3F64(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &unk_27C764C70, &unk_20C156F60);
  v8 = objc_opt_self();
  v9 = [v8 blackColor];
  v10 = [v8 labelColor];
  *a1 = v7;
  *(a1 + 8) = xmmword_20C156E00;
  *(a1 + 24) = v9;
  result = 982.0;
  *(a1 + 32) = xmmword_20C156E10;
  *(a1 + 48) = 0x3F1A36E2EB1C432DLL;
  *(a1 + 56) = v10;
  return result;
}

void sub_20BF3BF84()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_layout);
  sub_20BF3BE2C(v16);
  v5 = v16[1];
  *v4 = v16[0];
  v4[1] = v5;
  v6 = v16[3];
  v4[2] = v16[2];
  v4[3] = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVDetailDescriptionHeaderCell_textView;
  v8 = [objc_opt_self() smu_tvFocusableTextView];
  swift_getObjectType();
  v9 = sub_20BFBFE48();

  swift_getObjectType();
  v10 = sub_20BFBFE70(3);

  swift_getObjectType();
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  v13 = sub_20BFBFE9C(v12);

  swift_getObjectType();
  v14 = [v11 labelColor];
  v15 = sub_20BFBFEC8(v14);

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v7) = v15;
  sub_20C13DE24();
  __break(1u);
}

uint64_t getEnumTagSinglePayload for AppOcclusionOccured(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_20BF3C25C(uint64_t a1)
{
  v3 = type metadata accessor for ButtonAction.ActionType(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v83 - v7;
  MEMORY[0x28223BE20](v9);
  v84 = &v83 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  MEMORY[0x28223BE20](v14);
  v83 = &v83 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v83 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v83 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76EE10, &qword_20C17D028);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v83 + *(v27 + 56) - v26;
  v29 = v1;
  v30 = &v83 - v26;
  sub_20B64EF10(v29, &v83 - v26);
  sub_20B64EF10(a1, v28);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_20B64EF10(v30, v24);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E8, &unk_20C14FB90);
      v32 = *(v31 + 48);
      v33 = *(v31 + 64);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_20B520158(&v28[v33], &unk_27C768660, &unk_20C152F60);
        sub_20B520158(&v28[v32], &qword_27C7622F0, &unk_20C14FD00);
        sub_20B520158(&v24[v33], &unk_27C768660, &unk_20C152F60);
        sub_20B520158(&v24[v32], &qword_27C7622F0, &unk_20C14FD00);
        goto LABEL_40;
      }

      sub_20B520158(&v24[v33], &unk_27C768660, &unk_20C152F60);
      sub_20B520158(&v24[v32], &qword_27C7622F0, &unk_20C14FD00);
      goto LABEL_49;
    case 2u:
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_49;
      }

      goto LABEL_38;
    case 3u:
      v57 = v30;
      sub_20B64EF10(v30, v21);
      v58 = v28;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v60 = sub_20C134014();
      v61 = *(*(v60 - 8) + 8);
      if (EnumCaseMultiPayload == 3)
      {
        v62 = v60;
        v61(v58);
        (v61)(v21, v62);
        v30 = v57;
        goto LABEL_40;
      }

      (v61)(v21, v60);
      v30 = v57;
      goto LABEL_49;
    case 4u:
      v34 = v30;
      sub_20B64EF10(v30, v5);
      v35 = v28;
      v36 = swift_getEnumCaseMultiPayload();
      v37 = sub_20C133954();
      v38 = *(*(v37 - 8) + 8);
      if (v36 == 4)
      {
        v39 = v37;
        v38(v35);
        v40 = v5;
        goto LABEL_36;
      }

      (v38)(v5, v37);
      v30 = v34;
      goto LABEL_49;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_49;
      }

      goto LABEL_38;
    case 7u:
      sub_20B64EF10(v30, v18);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F0, &unk_20C169DE0);
      v64 = *(v63 + 64);
      v65 = *(v63 + 80);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v66 = sub_20C137254();
        v67 = *(*(v66 - 8) + 8);
        v67(&v28[v65], v66);
        sub_20B520158(&v28[v64], &qword_27C76A410, &unk_20C14FBC0);
        sub_20BF3CDE0(v28, type metadata accessor for StartWorkoutSessionRequest);
        v67(&v18[v65], v66);
        sub_20B520158(&v18[v64], &qword_27C76A410, &unk_20C14FBC0);
        sub_20BF3CDE0(v18, type metadata accessor for StartWorkoutSessionRequest);
        goto LABEL_40;
      }

      v80 = sub_20C137254();
      (*(*(v80 - 8) + 8))(&v18[v65], v80);
      sub_20B520158(&v18[v64], &qword_27C76A410, &unk_20C14FBC0);
      sub_20BF3CDE0(v18, type metadata accessor for StartWorkoutSessionRequest);
      goto LABEL_49;
    case 8u:
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_49;
      }

LABEL_38:
      sub_20BF3CDE0(v28, type metadata accessor for ButtonAction.ActionType);
      goto LABEL_40;
    case 9u:
      v48 = v83;
      sub_20B64EF10(v30, v83);
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621F8, &unk_20C14FBA0) + 48);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v50 = v28;
        v51 = sub_20C138894();
        v52 = *(*(v51 - 8) + 8);
        v52(&v50[v49], v51);
        v53 = v30;
        v54 = sub_20C138B94();
        v55 = *(*(v54 - 8) + 8);
        v55(v50, v54);
        v52((v48 + v49), v51);
        v56 = v54;
        v30 = v53;
        v55(v48, v56);
        goto LABEL_40;
      }

      v78 = sub_20C138894();
      (*(*(v78 - 8) + 8))(v48 + v49, v78);
      v79 = sub_20C138B94();
      (*(*(v79 - 8) + 8))(v48, v79);
      goto LABEL_49;
    case 0xAu:
      sub_20B64EF10(v30, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762200, &unk_20C1639C0);
      v75 = v28;

      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v82 = sub_20C134284();
        (*(*(v82 - 8) + 8))(v13, v82);
        goto LABEL_49;
      }

      v39 = sub_20C134284();
      v34 = v30;
      v38 = *(*(v39 - 8) + 8);
      (v38)(v75, v39);
      v40 = v13;
LABEL_36:
      (v38)(v40, v39);
      v30 = v34;
      goto LABEL_40;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    case 0xCu:
      v41 = v84;
      sub_20B64EF10(v30, v84);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76BAD0, &unk_20C14FBB0);
      v43 = *(v42 + 48);
      v44 = *(v42 + 64);
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v45 = v28;
        v46 = sub_20C137254();
        v47 = *(*(v46 - 8) + 8);
        v47(v45 + v44, v46);
        sub_20B520158(v45 + v43, &qword_27C76A410, &unk_20C14FBC0);
        sub_20BF3CDE0(v45, type metadata accessor for StartWorkoutSessionRequest);
        v47(v41 + v44, v46);
        sub_20B520158(v41 + v43, &qword_27C76A410, &unk_20C14FBC0);
        sub_20BF3CDE0(v41, type metadata accessor for StartWorkoutSessionRequest);
        goto LABEL_40;
      }

      v77 = sub_20C137254();
      (*(*(v77 - 8) + 8))(v41 + v44, v77);
      sub_20B520158(v41 + v43, &qword_27C76A410, &unk_20C14FBC0);
      sub_20BF3CDE0(v41, type metadata accessor for StartWorkoutSessionRequest);
      goto LABEL_49;
    case 0xDu:
      v68 = v30;
      sub_20B64EF10(v30, v8);

      v69 = v28;
      v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762210, &unk_20C169DF0);
      v71 = *(v70 + 48);
      if (swift_getEnumCaseMultiPayload() == 13)
      {

        v72 = *(v70 + 48);
        v73 = sub_20C132C14();
        v74 = *(*(v73 - 8) + 8);
        v74(&v69[v72], v73);
        v74(&v8[v71], v73);
        v30 = v68;
LABEL_40:
        sub_20BF3CDE0(v30, type metadata accessor for ButtonAction.ActionType);
        return 1;
      }

      else
      {
        v81 = sub_20C132C14();
        (*(*(v81 - 8) + 8))(&v8[v71], v81);
        v30 = v68;
LABEL_49:
        sub_20B520158(v30, &qword_27C76EE10, &qword_20C17D028);
        return 0;
      }

    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_49;
      }

      goto LABEL_40;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() == 19)
      {
        goto LABEL_40;
      }

      goto LABEL_49;
    default:
      goto LABEL_49;
  }
}

uint64_t sub_20BF3CDE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BF3CE68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_20BF3CEB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_20BF3CF10(uint64_t *a1, uint64_t *a2)
{
  if ((a1[1] & 1) == 0)
  {
    if ((a2[1] & 1) == 0)
    {
      sub_20B63C198();
      v2 = sub_20C13D5F4();
      return v2 & 1;
    }

    return 0;
  }

  if ((a2[1] & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CGImage(0);
  sub_20BF3CFA4();
  v2 = sub_20C13B654();
  return v2 & 1;
}

unint64_t sub_20BF3CFA4()
{
  result = qword_27C76C368;
  if (!qword_27C76C368)
  {
    type metadata accessor for CGImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76C368);
  }

  return result;
}

id sub_20BF3D038(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = [objc_opt_self() configurationWithPointSize:a3 weight:a1];
  *a4 = result;
  return result;
}

void sub_20BF3D094(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  if (a5 >> 6)
  {
    if (a5 >> 6 == 1)
    {
      MEMORY[0x20F2F58E0](3);
      if (a2)
      {
        sub_20C13E184();
        v9 = a2;
        sub_20C13D604();

        sub_20BB125A4(a2, v7, a4, v5);
      }

      else
      {
        sub_20C13E184();
      }
    }

    else
    {
      if (a4 | a3 | a2 || a5 != 128)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      MEMORY[0x20F2F58E0](v10);
    }
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    sub_20C13E184();
    sub_20C13CA64();
    sub_20C134744();
    sub_20C13CA64();
  }
}

uint64_t sub_20BF3D1DC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_20C13E164();
  sub_20BF3D094(v6, v1, v2, v3, v4);
  return sub_20C13E1B4();
}

uint64_t sub_20BF3D250(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_20C13E164();
  sub_20BF3D094(v7, v2, v3, v4, v5);
  return sub_20C13E1B4();
}

unint64_t sub_20BF3D2D8()
{
  result = qword_27C770A98;
  if (!qword_27C770A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770A98);
  }

  return result;
}

BOOL sub_20BF3D32C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  if (!(a4 >> 6))
  {
    if (a8 > 0x3Fu || ((a5 ^ a1) & 1) != 0 || (a2 != a6 || a3 != a7) && (sub_20C13DFF4() & 1) == 0)
    {
      return 0;
    }

    v17 = sub_20C134744();
    v19 = v18;
    if (v17 == sub_20C134744() && v19 == v20)
    {

      return 1;
    }

    v22 = sub_20C13DFF4();

    return (v22 & 1) != 0;
  }

  if (a4 >> 6 != 1)
  {
    if (a3 | a2 | a1 || a4 != 128)
    {
      if ((a8 & 0xC0) != 0x80 || a8 != 128 || a5 != 1 || a7 | a6)
      {
        return 0;
      }
    }

    else if ((a8 & 0xC0) != 0x80 || a7 | a6 | a5 || a8 != 128)
    {
      return 0;
    }

    return 1;
  }

  if ((a8 & 0xC0) == 0x40)
  {
    if (a1)
    {
      if (!a5)
      {
        return 0;
      }

      v9 = a8;
      v11 = a6;
      v13 = a4;
      v15 = a2;
      sub_20B5E5C28();
      sub_20BEDAA94(a5, v11, a7, v9);
      sub_20BEDAA94(a1, v15, a3, v13);
      v16 = sub_20C13D5F4();
      sub_20BB125A4(a1, v15, a3, v13);
      sub_20BB125A4(a5, v11, a7, v9);
      return (v16 & 1) != 0;
    }

    if (!a5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI10SortActionO(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_20BF3D584(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1E && *(a1 + 25))
  {
    return (*a1 + 30);
  }

  v3 = ((*(a1 + 24) >> 1) & 0x1C | (*(a1 + 24) >> 6)) ^ 0x1F;
  if (v3 >= 0x1D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20BF3D5D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 30;
    if (a3 >= 0x1E)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1E)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_20BF3D644(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 24) = *(result + 24) & 7 | (a2 << 6);
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    *(result + 24) = 0x80;
  }

  return result;
}

void sub_20BF3D684()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = swift_allocObject();
  *(v6 + 16) = sub_20BF3D988();
  *(v6 + 24) = v7;
  *(v6 + 32) = sub_20BF3DA34();
  *(v6 + 40) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_20C14F980;
  *(v9 + 32) = v6 | 0x3000000000000001;
  v30 = 0uLL;
  LOBYTE(v31) = 1;
  *(&v31 + 1) = 0;
  *&v32 = 0;
  WORD4(v32) = 128;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  LOBYTE(v36) = 0;
  *(&v36 + 1) = v9;
  *&v37[0] = MEMORY[0x277D84F90];
  *(v37 + 8) = 0u;
  *(&v37[1] + 8) = 0u;
  *(&v37[2] + 1) = 0;
  v38 = 2;
  nullsub_1();
  v10 = v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row;
  v11 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 144);
  v39[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 128);
  v39[9] = v11;
  v40 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 160);
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 80);
  v39[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 64);
  v39[5] = v12;
  v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 112);
  v39[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 96);
  v39[7] = v13;
  v14 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 16);
  v39[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row);
  v39[1] = v14;
  v15 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 48);
  v39[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 32);
  v39[3] = v15;
  v16 = v37[2];
  *(v10 + 128) = v37[1];
  *(v10 + 144) = v16;
  *(v10 + 160) = v38;
  v17 = v35;
  *(v10 + 64) = v34;
  *(v10 + 80) = v17;
  v18 = v37[0];
  *(v10 + 96) = v36;
  *(v10 + 112) = v18;
  v19 = v31;
  *v10 = v30;
  *(v10 + 16) = v19;
  v20 = v33;
  *(v10 + 32) = v32;
  *(v10 + 48) = v20;

  sub_20B634408(v39);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v22 = Strong;
  if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    sub_20B61D1E0(v0, Strong);
    if (v24)
    {
      v26 = v24;
      v27 = v25;
      v29 = v23;
      sub_20B5E2E18();
      *v5 = sub_20C13D374();
      (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
      v28 = sub_20C13C584();
      (*(v3 + 8))(v5, v2);
      if ((v28 & 1) == 0)
      {
        __break(1u);
        return;
      }

      sub_20B620980(v29, v26, v27, v1, 0, v22);
    }

    else
    {
      sub_20C0C2D50(0);
    }
  }

  swift_unknownObjectRelease();
}

uint64_t sub_20BF3D988()
{
  v1 = 0xD00000000000001ALL;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_swappableItem + 40);
  if (v2 != 255 && (v2 & 1) != 0 && *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_swappableItem + 24) == 2)
  {
    v3 = "SWAP_WORKOUT_OPTIONS_TITLE";
    v1 = 0xD00000000000001DLL;
  }

  else
  {
    v3 = "OPTIONS_SUBTITLE";
  }

  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_workoutPlanStringBuilder);
  v5 = v4[9];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v5);
  return sub_20B5E107C(v1, v3 | 0x8000000000000000, v5, v6);
}

uint64_t sub_20BF3DA34()
{
  v1 = 0xD00000000000001DLL;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_swappableItem + 40);
  if (v2 != 255 && (v2 & 1) != 0 && *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_swappableItem + 24) == 2)
  {
    v3 = "SWAP_WORKOUT_OPTIONS_SUBTITLE";
    v1 = 0xD000000000000020;
  }

  else
  {
    v3 = "ernativesHeaderShelf";
  }

  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_workoutPlanStringBuilder);
  v5 = v4[9];
  v6 = v4[10];
  __swift_project_boxed_opaque_existential_1(v4 + 6, v5);
  return sub_20B5E107C(v1, v3 | 0x8000000000000000, v5, v6);
}

uint64_t sub_20BF3DAE0()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B63319C(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_swappableItem);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVWorkoutPlanAlternativesHeaderShelf(uint64_t a1)
{
  result = qword_27C770AA0;
  if (!qword_27C770AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BF3DC38(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for WorkoutPlanSwappableItem(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_20BF3DD24@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BF3DD9C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVWorkoutPlanAlternativesHeaderShelf_row + 32);
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

char *sub_20BF3DE4C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_styleProvider;
  if (qword_27C760708 != -1)
  {
    swift_once();
  }

  v12 = &v4[v11];
  v13 = qword_27C79A1B0;
  *v12 = qword_27C79A1B0;
  *(v12 + 1) = 0x404E000000000000;
  v24.receiver = v4;
  v24.super_class = type metadata accessor for WeekdayPlannerEmptyCell(0);
  v14 = v13;
  v15 = objc_msgSendSuper2(&v24, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = &v15[OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_styleProvider];
  v17 = *&v15[OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_styleProvider];
  v18 = v15;
  [v18 setBackgroundColor_];
  v19 = [v18 layer];
  [v19 setCornerRadius_];

  v20 = [v18 contentView];
  v21 = [v20 heightAnchor];

  v22 = [v21 constraintEqualToConstant_];
  [v22 setActive_];

  return v18;
}

id sub_20BF3E32C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WeekdayPlannerEmptyCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WeekdayPlannerEmptyCell(uint64_t a1)
{
  result = qword_27C770AC0;
  if (!qword_27C770AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF3E424(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BF3E4D8(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BF3E524@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BF3E57C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23WeekdayPlannerEmptyCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BF3E5E0(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x42)
  {
    v46 = v3;
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    if (v14 == 3 && (v12 | v11 | v13) == 0)
    {
      v41 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x29);
      v47 = [v1 layer];
      [v47 setMaskedCorners_];
      v42 = v47;
    }

    else
    {
      v47 = v4;
      sub_20C13B534();
      v16 = v1;
      sub_20B7C3220(v11, v12, v13, v14);
      v17 = sub_20C13BB74();
      v18 = sub_20C13D1D4();

      sub_20B7C3288(v11, v12, v13, v14);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v44 = v20;
        v45 = swift_slowAlloc();
        v50 = v45;
        *v19 = 138543874;
        *(v19 + 4) = v16;
        *v20 = v16;
        *(v19 + 12) = 2160;
        *(v19 + 14) = 1752392040;
        *(v19 + 22) = 2080;
        v48[0] = v11;
        v48[1] = v12;
        v48[2] = v13;
        v49 = v14;
        v21 = sub_20B879DC0();
        v22 = v16;
        v23 = MEMORY[0x20F2EFA40](&type metadata for WeekdayPlannerItem, v21);
        v25 = sub_20B51E694(v23, v24, &v50);

        *(v19 + 24) = v25;
        _os_log_impl(&dword_20B517000, v17, v18, "Attempted to configure %{public}@ with weekday planner item: %{mask.hash}s", v19, 0x20u);
        v26 = v44;
        sub_20B520158(v44, &unk_27C762E30, &unk_20C150580);
        MEMORY[0x20F2F6A40](v26, -1, -1);
        v27 = v45;
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x20F2F6A40](v27, -1, -1);
        MEMORY[0x20F2F6A40](v19, -1, -1);
      }

      (*(v47 + 1))(v10, v46);
    }
  }

  else
  {
    v28 = [v1 layer];
    [v28 setMaskedCorners_];

    sub_20C13B534();

    v29 = v1;
    v30 = sub_20C13BB74();
    v31 = sub_20C13D1D4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v47 = v4;
      v33 = v32;
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v48[0] = v35;
      *v33 = 138543874;
      *(v33 + 4) = v29;
      *v34 = v29;
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2080;
      v50 = a1;
      v36 = sub_20B5F66D0();
      v37 = v29;
      v38 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v36);
      v40 = sub_20B51E694(v38, v39, v48);

      *(v33 + 24) = v40;
      _os_log_impl(&dword_20B517000, v30, v31, "Attempted to configure %{public}@ with item: %{mask.hash}s", v33, 0x20u);
      sub_20B520158(v34, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x20F2F6A40](v35, -1, -1);
      MEMORY[0x20F2F6A40](v33, -1, -1);

      (*(v47 + 1))(v6, v3);
    }

    else
    {

      (v4)[1](v6, v3);
    }
  }
}

id PictureInPictureSupportProxying.rootProxy.getter()
{
  v1 = v0;
  v2 = [v1 parentViewController];
  if (v2)
  {
    while (1)
    {

      v3 = [v1 parentViewController];
      if (!v3)
      {
        break;
      }

      v4 = v3;
      swift_getObjectType();
      if (!swift_conformsToProtocol2())
      {

        return v1;
      }

      v2 = [v4 parentViewController];
      v1 = v4;
      if (!v2)
      {
        return v4;
      }
    }
  }

  return v1;
}

uint64_t sub_20BF3ECF4(uint64_t a1, uint64_t a2)
{
  v3 = sub_20C132614();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_20C1325E4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t CatalogTipPlayerPresenter.__allocating_init(dependencies:metricTopicRoutingBehavior:options:pageContext:streamingArtwork:streamingArtworkCropCode:streamingSubtitle:streamingTitle:streamingURL:summaryNavigationHandlers:tipIdentifier:)(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15, uint64_t a16, uint64_t a17)
{
  v72 = a8;
  v71 = a7;
  v77 = a4;
  v78 = a5;
  v76 = a2;
  v69 = a1;
  v70 = a13;
  v68 = a12;
  v67 = a11;
  v66 = a10;
  v19 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CatalogTipPlaybackContent(0);
  v23 = (v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *a3;
  v26 = v23[10];
  v27 = sub_20C132C14();
  v79 = *(v27 - 8);
  v80 = v27;
  v28 = *(v79 + 16);
  v29 = *a15;
  v74 = a15[1];
  v75 = v29;
  v81 = a14;
  v28(&v25[v26], a14);
  v30 = &v25[v23[7]];
  v82 = a6;
  sub_20B52F9E8(a6, v30, &unk_27C766680, &unk_20C14F920);
  *v25 = a16;
  *(v25 + 1) = a17;
  v31 = &v25[v23[8]];
  v32 = v72;
  *v31 = v71;
  v31[1] = v32;
  v33 = &v25[v23[9]];
  v34 = v67;
  *v33 = v66;
  v33[1] = v34;
  v35 = &v25[v23[11]];
  v36 = v70;
  *v35 = v68;
  v35[1] = v36;
  sub_20BF40134(v25, v21, type metadata accessor for CatalogTipPlaybackContent);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for CatalogTipPlayerPresenter(0);
  v37 = swift_allocObject();
  *(v37 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v37 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_activationState) = 0;
  *(v37 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_currentAudibleMediaSelectionOption) = 0;
  v38 = OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_trainerTipLockup;
  v39 = sub_20C134014();
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  *(v37 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_hasPublishedMediaEvent) = 0;
  *(v37 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_isPresentingSummary) = 0;
  v40 = (v37 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_periodicTimeObserver);
  *v40 = 0u;
  v40[1] = 0u;
  sub_20C138F44();
  sub_20C133AA4();
  *(v37 + 136) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70, &unk_20C155A70);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, v37 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, v37 + 144);
  sub_20BF40134(v21, v37 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_configuration, type metadata accessor for CatalogTipPlayerConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v37 + 16) = aBlock;
  LOBYTE(v23) = v76;
  *(v37 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_metricTopicRoutingBehavior) = v76;
  *(v37 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_options) = v73;
  v41 = (v37 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_pageContext);
  v43 = v77;
  v42 = v78;
  *v41 = v77;
  v41[1] = v42;
  sub_20B58C2C8(v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870, &unk_20C162E40);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, v37 + 32);
  v44 = (v37 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers);
  v45 = v74;
  *v44 = v75;
  v44[1] = v45;
  type metadata accessor for CatalogTipSummaryPresenter(0);
  swift_allocObject();

  v47 = sub_20BE4B50C(v46, v23, v43, v42);

  *(v37 + 72) = v47;
  v48 = swift_allocObject();
  swift_weakInit();
  v49 = *(v47 + 32);
  v50 = *(v47 + 40);
  *(v47 + 32) = sub_20BAA50B0;
  *(v47 + 40) = v48;

  sub_20B583ECC(v49, v50);

  v51 = *(v37 + 72);
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = *(v51 + 48);
  v54 = *(v51 + 56);
  *(v51 + 48) = sub_20BAA50B8;
  *(v51 + 56) = v52;

  sub_20B583ECC(v53, v54);

  v55 = [objc_opt_self() defaultCenter];
  v56 = *MEMORY[0x277CE6100];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v58 = [Strong player], swift_unknownObjectRelease(), v58) && (v59 = objc_msgSend(v58, sel_currentItem), v58, v59))
  {
    *&aBlock = v59;
    sub_20B51C88C(0, &qword_27C7689D0, 0x277CE65B0);
    v60 = sub_20C13DFD4();
  }

  else
  {
    v60 = 0;
  }

  v61 = [objc_opt_self() mainQueue];
  v62 = swift_allocObject();
  swift_weakInit();

  v86 = sub_20BAA50C0;
  v87 = v62;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v84 = sub_20BF3ECF4;
  v85 = &block_descriptor_155;
  v63 = _Block_copy(&aBlock);

  v64 = [v55 addObserverForName:v56 object:v60 queue:v61 usingBlock:v63];
  _Block_release(v63);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v79 + 8))(v81, v80);
  sub_20B520158(v82, &unk_27C766680, &unk_20C14F920);
  sub_20BF46BC8(v21, type metadata accessor for CatalogTipPlayerConfiguration);
  sub_20BF46BC8(v25, type metadata accessor for CatalogTipPlaybackContent);
  return v37;
}

uint64_t CatalogTipPlayerPresenter.__allocating_init(configuration:dependencies:metricTopicRoutingBehavior:options:pageContext:summaryNavigationHandlers:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t a6, __int128 *a7)
{
  v13 = swift_allocObject();
  v14 = *a4;
  *(v13 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v13 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_activationState) = 0;
  *(v13 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_currentAudibleMediaSelectionOption) = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_trainerTipLockup;
  v16 = sub_20C134014();
  v39 = a7[1];
  v40 = *a7;
  (*(*(v16 - 8) + 56))(v13 + v15, 1, 1, v16);
  *(v13 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_hasPublishedMediaEvent) = 0;
  *(v13 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_isPresentingSummary) = 0;
  v17 = (v13 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_periodicTimeObserver);
  *v17 = 0u;
  v17[1] = 0u;
  sub_20C138F44();
  sub_20C133AA4();
  *(v13 + 136) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70, &unk_20C155A70);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, v13 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, v13 + 144);
  sub_20BF40134(a1, v13 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_configuration, type metadata accessor for CatalogTipPlayerConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v13 + 16) = aBlock;
  *(v13 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_metricTopicRoutingBehavior) = a3;
  *(v13 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_options) = v14;
  v18 = (v13 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_pageContext);
  *v18 = a5;
  v18[1] = a6;
  sub_20B58C2C8(a5, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870, &unk_20C162E40);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, v13 + 32);
  v19 = (v13 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers);
  *v19 = v40;
  v19[1] = v39;
  type metadata accessor for CatalogTipSummaryPresenter(0);
  swift_allocObject();

  v21 = sub_20BE4B50C(v20, a3, a5, a6);

  *(v13 + 72) = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v21 + 32);
  v24 = *(v21 + 40);
  *(v21 + 32) = sub_20BF47938;
  *(v21 + 40) = v22;

  sub_20B583ECC(v23, v24);

  v25 = *(v13 + 72);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *(v25 + 48);
  v28 = *(v25 + 56);
  *(v25 + 48) = sub_20BF4793C;
  *(v25 + 56) = v26;

  sub_20B583ECC(v27, v28);

  v29 = [objc_opt_self() defaultCenter];
  v30 = *MEMORY[0x277CE6100];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v32 = [Strong player];
  swift_unknownObjectRelease();
  if (v32)
  {
    v33 = [v32 currentItem];

    if (v33)
    {
      *&aBlock = v33;
      sub_20B51C88C(0, &qword_27C7689D0, 0x277CE65B0);
      v32 = sub_20C13DFD4();

      goto LABEL_6;
    }

LABEL_5:
    v32 = 0;
  }

LABEL_6:
  v34 = [objc_opt_self() mainQueue];
  v35 = swift_allocObject();
  swift_weakInit();

  v44 = sub_20BF4794C;
  v45 = v35;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v42 = sub_20BF3ECF4;
  v43 = &block_descriptor_11_1;
  v36 = _Block_copy(&aBlock);

  v37 = [v29 addObserverForName:v30 object:v32 queue:v34 usingBlock:v36];
  _Block_release(v36);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_20BF46BC8(a1, type metadata accessor for CatalogTipPlayerConfiguration);
  return v13;
}

uint64_t CatalogTipPlayerPresenter.init(configuration:dependencies:metricTopicRoutingBehavior:options:pageContext:summaryNavigationHandlers:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, unint64_t a6, __int128 *a7)
{
  v8 = v7;
  v14 = *a4;
  *(v8 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_activationState) = 0;
  *(v8 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_currentAudibleMediaSelectionOption) = 0;
  v15 = OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_trainerTipLockup;
  v16 = sub_20C134014();
  v39 = a7[1];
  v40 = *a7;
  (*(*(v16 - 8) + 56))(v8 + v15, 1, 1, v16);
  *(v8 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_hasPublishedMediaEvent) = 0;
  *(v8 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_isPresentingSummary) = 0;
  v17 = (v8 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_periodicTimeObserver);
  *v17 = 0u;
  v17[1] = 0u;
  sub_20C138F44();
  sub_20C133AA4();
  *(v8 + 136) = aBlock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70, &unk_20C155A70);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, v8 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, v8 + 144);
  sub_20BF40134(a1, v8 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_configuration, type metadata accessor for CatalogTipPlayerConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v8 + 16) = aBlock;
  *(v8 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_metricTopicRoutingBehavior) = a3;
  *(v8 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_options) = v14;
  v18 = (v8 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_pageContext);
  *v18 = a5;
  v18[1] = a6;
  sub_20B58C2C8(a5, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870, &unk_20C162E40);
  sub_20C133AA4();
  sub_20B51C710(&aBlock, v8 + 32);
  v19 = (v8 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers);
  *v19 = v40;
  v19[1] = v39;
  type metadata accessor for CatalogTipSummaryPresenter(0);
  swift_allocObject();

  v21 = sub_20BE4B50C(v20, a3, a5, a6);

  *(v8 + 72) = v21;
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = *(v21 + 32);
  v24 = *(v21 + 40);
  *(v21 + 32) = sub_20BF47938;
  *(v21 + 40) = v22;

  sub_20B583ECC(v23, v24);

  v25 = *(v8 + 72);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *(v25 + 48);
  v28 = *(v25 + 56);
  *(v25 + 48) = sub_20BF4793C;
  *(v25 + 56) = v26;

  sub_20B583ECC(v27, v28);

  v29 = [objc_opt_self() defaultCenter];
  v30 = *MEMORY[0x277CE6100];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v32 = [Strong player];
  swift_unknownObjectRelease();
  if (v32)
  {
    v33 = [v32 currentItem];

    if (v33)
    {
      *&aBlock = v33;
      sub_20B51C88C(0, &qword_27C7689D0, 0x277CE65B0);
      v32 = sub_20C13DFD4();

      goto LABEL_6;
    }

LABEL_5:
    v32 = 0;
  }

LABEL_6:
  v34 = [objc_opt_self() mainQueue];
  v35 = swift_allocObject();
  swift_weakInit();

  v44 = sub_20BF4794C;
  v45 = v35;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v42 = sub_20BF3ECF4;
  v43 = &block_descriptor_20_1;
  v36 = _Block_copy(&aBlock);

  v37 = [v29 addObserverForName:v30 object:v32 queue:v34 usingBlock:v36];
  _Block_release(v36);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_20BF46BC8(a1, type metadata accessor for CatalogTipPlayerConfiguration);
  return v8;
}

uint64_t type metadata accessor for CatalogTipPlayerPresenter(uint64_t a1)
{
  result = qword_27C770B28;
  if (!qword_27C770B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BF40134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_20BF4019C(uint64_t a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20C13B4D4();
    v8 = sub_20C13BB74();
    v9 = sub_20C13D1F4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20B517000, v8, v9, "[CatalogTipPlayerPresenter] learn more button tapped", v10, 2u);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = [v11 presentingViewController];
      if (v12)
      {
        v13 = v12;
        [v12 dismissViewControllerAnimated:1 completion:0];
      }

      swift_unknownObjectRelease();
    }

    v14 = *(v7 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers);
    if (v14)
    {

      v14(v15);
    }
  }

  return result;
}

double sub_20BF40390(uint64_t a1)
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_20C13B4D4();
    v8 = sub_20C13BB74();
    v9 = sub_20C13D1F4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_20B517000, v8, v9, "[CatalogTipPlayerPresenter] see more tips button tapped", v10, 2u);
      MEMORY[0x20F2F6A40](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = [v11 presentingViewController];
      if (v12)
      {
        v13 = v12;
        [v12 dismissViewControllerAnimated:1 completion:0];
      }

      swift_unknownObjectRelease();
    }

    if (*(v7 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers))
    {
      v14 = *(v7 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers + 16);

      v14(v15);
    }
  }

  return result;
}

double sub_20BF40584(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_20C13CDF4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_20B614F94(0, 0, v5, &unk_20C185710, v7);

  return result;
}

uint64_t sub_20BF406B0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v2 = [Strong player];
      swift_unknownObjectRelease();
      if (v2)
      {
        v3 = [v2 currentItem];
        v0[9] = v3;

        if (v3)
        {
          swift_beginAccess();
          v4 = swift_weakLoadStrong();
          v0[10] = v4;
          if (v4)
          {
            v5 = swift_task_alloc();
            v0[11] = v5;
            *v5 = v0;
            v5[1] = sub_20B672628;

            return sub_20BF45680(v3);
          }
        }
      }
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_20BF40838@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358, &qword_20C1713C0);
  v2 = *(v40 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  v37 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v39 = &v36 - v5;
  v38 = sub_20C136594();
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for CatalogTipPlaybackContent(0);
  v8 = *(v42 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v42);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20BF40134(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_configuration, v16, type metadata accessor for CatalogTipPlayerConfiguration);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v16[1];

    v36 = v3;
    v19 = v41;
    sub_20C136554();
    __swift_project_boxed_opaque_existential_1((v1 + 144), *(v1 + 168));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A20, &unk_20C15FD50);
    v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_20C14F980;
    v22 = v19;
    v23 = v38;
    (*(v6 + 16))(v21 + v20, v22, v38);
    v24 = v39;
    sub_20C139F14();

    v25 = swift_allocObject();
    *(v25 + 16) = v17;
    *(v25 + 24) = v18;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BF46ED0;
    *(v26 + 24) = v25;
    v27 = v37;
    v28 = v40;
    (*(v2 + 16))(v37, v24, v40);
    v29 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v30 = (v36 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = swift_allocObject();
    (*(v2 + 32))(v31 + v29, v27, v28);
    v32 = (v31 + v30);
    *v32 = sub_20BF46EEC;
    v32[1] = v26;
    sub_20C137C94();
    (*(v2 + 8))(v24, v28);
    return (*(v6 + 8))(v41, v23);
  }

  else
  {
    sub_20BF46F1C(v16, v13);
    sub_20BF40134(v13, v10, type metadata accessor for CatalogTipPlaybackContent);
    v34 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v35 = swift_allocObject();
    sub_20BF46F1C(v10, v35 + v34);
    sub_20C137CA4();
    return sub_20BF46BC8(v13, type metadata accessor for CatalogTipPlaybackContent);
  }
}

double sub_20BF40D64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v39 = a2;
  v40 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = sub_20C132C14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C134014();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(*a1 + 16))
  {
    goto LABEL_4;
  }

  (*(v14 + 16))(v17, *a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v13, v15);
  sub_20C133E64();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    (*(v14 + 8))(v17, v13);
    sub_20B520158(v8, &unk_27C7617F0, &unk_20C151A10);
LABEL_4:
    sub_20B8B3454();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    return result;
  }

  (*(v10 + 32))(v12, v8, v9);
  v20 = type metadata accessor for CatalogTipPlaybackContent(0);
  (*(v10 + 16))(&a4[v20[8]], v12, v9);
  sub_20C133EF4();
  v21 = sub_20C133FB4();
  v37 = v22;
  v38 = v21;
  v23 = sub_20C133F14();
  v35 = v24;
  v36 = v23;
  v34 = sub_20C133ED4();
  v26 = v25;
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v17, v13);
  v27 = v40;
  *a4 = v39;
  *(a4 + 1) = v27;
  v28 = &a4[v20[6]];
  v29 = v37;
  *v28 = v38;
  *(v28 + 1) = v29;
  v30 = &a4[v20[7]];
  v31 = v35;
  *v30 = v36;
  *(v30 + 1) = v31;
  v32 = &a4[v20[9]];
  *v32 = v34;
  *(v32 + 1) = v26;

  return result;
}

double sub_20BF410A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764500, &unk_20C155F90);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v14);
  result = MEMORY[0x28223BE20](v15);
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_activationState) & 1) == 0)
  {
    v60 = v18;
    v61 = v16;
    v58 = v19;
    v59 = v1;
    v62 = &v55 - v17;
    v63 = v0;
    *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_activationState) = 1;
    if ((*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_options) & 2) != 0)
    {
      v55 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
      v56 = v2;
      v21 = v7;
      __swift_project_boxed_opaque_existential_1((v63 + 144), *(v0 + 168));
      sub_20C135E34();
      v57 = v12;
      v22 = v62;
      sub_20C139FB4();
      v23 = v61;
      v24 = sub_20C137CB4();
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      v24(sub_20B5DF6DC, v25);
      v7 = v21;
      v2 = v56;
      v0 = v63;

      v4 = v55;

      v26 = v22;
      v12 = v57;
      (*(v57 + 8))(v26, v23);
    }

    sub_20C13CDC4();
    v27 = sub_20C13CDF4();
    (*(*(v27 - 8) + 56))(v10, 0, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v0;

    sub_20B6383D0(0, 0, v10, &unk_20C185730, v28);

    sub_20BF40838(v7);
    v29 = swift_allocObject();
    swift_weakInit();
    v30 = v59;
    (*(v2 + 16))(v4, v7, v59);
    v31 = v4;
    v32 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v33 = v7;
    v34 = swift_allocObject();
    (*(v2 + 32))(v34 + v32, v31, v30);
    v35 = (v34 + ((v3 + v32 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v35 = sub_20BF47160;
    v35[1] = v29;
    v36 = v60;
    sub_20C137C94();
    v37 = v33;
    v38 = v63;
    (*(v2 + 8))(v37, v30);
    v39 = swift_allocObject();
    swift_weakInit();
    v40 = swift_allocObject();
    *(v40 + 16) = sub_20BF47190;
    *(v40 + 24) = v39;
    v41 = v58;
    v42 = v61;
    (*(v12 + 16))(v58, v36, v61);
    v43 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v44 = swift_allocObject();
    (*(v12 + 32))(v44 + v43, v41, v42);
    v45 = (v44 + ((v13 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v45 = sub_20B5DF204;
    v45[1] = v40;
    v46 = v62;
    sub_20C137C94();
    v47 = *(v12 + 8);
    v47(v36, v42);
    v48 = sub_20C137CB4();
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    v48(sub_20B5DF6DC, v49);

    v47(v46, v42);
    v50 = [objc_opt_self() defaultCenter];
    v51 = *MEMORY[0x277CE60C0];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v53 = [Strong player];
      swift_unknownObjectRelease();
      if (!v53)
      {
LABEL_9:
        [v50 addObserver:v38 selector:sel_onPlayerFinished name:v51 object:v53];

        swift_unknownObjectRelease();
        return result;
      }

      v54 = [v53 currentItem];

      if (v54)
      {
        v64 = v54;
        sub_20B51C88C(0, &qword_27C7689D0, 0x277CE65B0);
        v53 = sub_20C13DFD4();

        goto LABEL_9;
      }
    }

    v53 = 0;
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_20BF41804()
{
  *(v0 + 24) = *(*(v0 + 16) + 136);
  sub_20C138F44();
  sub_20BF4738C(&qword_27C76C6B0, MEMORY[0x277D541D0], MEMORY[0x277D541D8]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BBD90DC, v2, v1);
}

void sub_20BF418C4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v5 - 8);
  v54 = &v45 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v48 = *(v50 - 8);
  v7 = *(v48 + 64);
  MEMORY[0x28223BE20](v50);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v53 = &v45 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v51 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - v12;
  v56 = sub_20C137C24();
  v14 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CatalogTipPlaybackContent(0);
  v18 = objc_allocWithZone(MEMORY[0x277CE65B0]);
  v19 = sub_20C132B64();
  v20 = [v18 initWithURL_];

  sub_20C13D104();
  sub_20C13D114();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v22 = [objc_allocWithZone(MEMORY[0x277CE6598]) initWithPlayerItem_];
      [Strong setSmu:1 includeTransportControls:?];
      [Strong setAllowsPictureInPicturePlayback_];
      [Strong setRequiresLinearPlayback_];
      [Strong setVideoGravity_];
      [Strong setPlayer_];
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v23 = swift_unknownObjectWeakLoadStrong();

    if (v23)
    {
      v24 = [v23 player];
      [v24 play];

      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_20BE49450();
  }

  sub_20B52F9E8(a1 + *(v17 + 20), v13, &unk_27C766680, &unk_20C14F920);
  v25 = v56;
  if ((*(v14 + 48))(v13, 1, v56) == 1)
  {
    sub_20B520158(v13, &unk_27C766680, &unk_20C14F920);
  }

  else
  {
    (*(v14 + 32))(v16, v13, v25);
    if (*(a1 + *(v17 + 24) + 8))
    {
      sub_20C13D514();
      swift_beginAccess();
      v26 = swift_weakLoadStrong();
      if (v26)
      {
        sub_20B51CC64(v26 + 96, v57);

        __swift_project_boxed_opaque_existential_1(v57, v57[3]);
        v27 = v53;
        sub_20C138B24();
        v28 = swift_allocObject();
        *(v28 + 16) = v20;
        v29 = swift_allocObject();
        *(v29 + 16) = sub_20BF4726C;
        *(v29 + 24) = v28;
        v46 = v16;
        v30 = v48;
        v31 = v47;
        v32 = v50;
        (*(v48 + 16))(v47, v27, v50);
        v33 = (*(v30 + 80) + 16) & ~*(v30 + 80);
        v34 = swift_allocObject();
        (*(v30 + 32))(v34 + v33, v31, v32);
        v35 = (v34 + ((v7 + v33 + 7) & 0xFFFFFFFFFFFFFFF8));
        *v35 = sub_20B5F67A4;
        v35[1] = v29;
        v36 = v20;
        v37 = v49;
        sub_20C137C94();
        (*(v30 + 8))(v53, v32);
        v16 = v46;
        __swift_destroy_boxed_opaque_existential_1(v57);
        v38 = v52;
        v39 = sub_20C137CB4();
        v40 = swift_allocObject();
        *(v40 + 16) = 0;
        *(v40 + 24) = 0;
        v39(sub_20B5DF6DC, v40);
        v25 = v56;

        (*(v51 + 8))(v37, v38);
      }
    }

    (*(v14 + 8))(v16, v25);
  }

  v41 = sub_20C13CDF4();
  v42 = v54;
  (*(*(v41 - 8) + 56))(v54, 1, 1, v41);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v20;
  v43[5] = a2;
  v44 = v20;

  sub_20B614F94(0, 0, v42, &unk_20C185748, v43);

  _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20BF4214C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v6 = sub_20C136194();
  v5[21] = v6;
  v5[22] = *(v6 - 8);
  v5[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD40, &unk_20C153BA0);
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370, &qword_20C153C70);
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF42320, 0, 0);
}

uint64_t sub_20BF42320()
{
  sub_20C13CDA4();
  *(v0 + 256) = sub_20C13CD94();
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BF423B4, v2, v1);
}

uint64_t sub_20BF423B4()
{
  v1 = *(v0 + 152);

  *(v0 + 264) = [v1 asset];

  return MEMORY[0x2822009F8](sub_20BF4243C, 0, 0);
}

uint64_t sub_20BF4243C()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 264);
    v4 = *(v0 + 248);
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v5 = sub_20C13D374();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = sub_20B51C88C(0, &qword_27C763230, 0x277CE6510);
    v8 = v3;
    sub_20C137C94();
    v9 = swift_task_alloc();
    *(v0 + 272) = v9;
    *(v9 + 16) = "SeymourUI/CatalogTipPlayerPresenter.swift";
    *(v9 + 24) = 41;
    *(v9 + 32) = 2;
    *(v9 + 40) = 206;
    *(v9 + 48) = v4;
    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    *v10 = v0;
    v10[1] = sub_20BF42678;

    return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF47950, v9, v7);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_20BF42678()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {

    v3 = sub_20BF42C0C;
  }

  else
  {
    v5 = v2[30];
    v4 = v2[31];
    v6 = v2[29];
    v2[37] = v2[18];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF427D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF427D8()
{
  v1 = sub_20C13AAC4();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_20BF4738C(&qword_281103AF0, MEMORY[0x277D4F200], MEMORY[0x277D4F1E8]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D4F1F8], v1);
  LOBYTE(v1) = sub_20C1383C4();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(v0 + 208);
      sub_20B51CC64(Strong + 32, v0 + 56);

      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      sub_20C139C94();
      v5 = swift_task_alloc();
      *(v0 + 304) = v5;
      *(v5 + 16) = "SeymourUI/CatalogTipPlayerPresenter.swift";
      *(v5 + 24) = 41;
      *(v5 + 32) = 2;
      *(v5 + 40) = 209;
      *(v5 + 48) = v4;
      v6 = swift_task_alloc();
      *(v0 + 312) = v6;
      *v6 = v0;
      v6[1] = sub_20BF42CCC;
      v7 = *(v0 + 224);
      v8 = *(v0 + 168);

      return MEMORY[0x2822008A0](v7, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF473D4, v5, v8);
    }

    (*(*(v0 + 176) + 56))(*(v0 + 224), 1, 1, *(v0 + 168));
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v11 = *(v0 + 216);
      v12 = *(v0 + 168);
      v13 = *(v0 + 176);
      sub_20B52F9E8(*(v0 + 224), v11, &unk_27C765110, &unk_20C152460);
      v14 = *(v13 + 48);
      v15 = v14(v11, 1, v12);
      v16 = *(v0 + 216);
      if (v15 == 1)
      {
        v17 = *(v0 + 168);
        MEMORY[0x20F2ED8D0]();
        if (v14(v16, 1, v17) != 1)
        {
          sub_20B520158(*(v0 + 216), &unk_27C765110, &unk_20C152460);
        }
      }

      else
      {
        (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 216), *(v0 + 168));
      }

      v20 = *(v0 + 296);
      v21 = *(v0 + 264);
      v22 = *(v0 + 224);
      v24 = *(v0 + 176);
      v23 = *(v0 + 184);
      v25 = *(v0 + 168);
      sub_20BF47404(*(v0 + 152), v20, v23);

      (*(v24 + 8))(v23, v25);
      sub_20B520158(v22, &unk_27C765110, &unk_20C152460);
    }

    else
    {
      v18 = *(v0 + 264);
      v19 = *(v0 + 224);

      sub_20B520158(v19, &unk_27C765110, &unk_20C152460);
    }
  }

  else
  {
    v9 = *(v0 + 296);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_20BF42C0C()
{
  v1 = v0[33];
  (*(v0[30] + 8))(v0[31], v0[29]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20BF42CCC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_20BF43044;
  }

  else
  {
    v5 = v2[25];
    v4 = v2[26];
    v6 = v2[24];

    (*(v5 + 8))(v4, v6);
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v3 = sub_20BF42E28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF42E28()
{
  (*(*(v0 + 176) + 56))(*(v0 + 224), 0, 1, *(v0 + 168));
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    sub_20B52F9E8(*(v0 + 224), v1, &unk_27C765110, &unk_20C152460);
    v4 = *(v3 + 48);
    v5 = v4(v1, 1, v2);
    v6 = *(v0 + 216);
    if (v5 == 1)
    {
      v7 = *(v0 + 168);
      MEMORY[0x20F2ED8D0]();
      if (v4(v6, 1, v7) != 1)
      {
        sub_20B520158(*(v0 + 216), &unk_27C765110, &unk_20C152460);
      }
    }

    else
    {
      (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 216), *(v0 + 168));
    }

    v10 = *(v0 + 296);
    v11 = *(v0 + 264);
    v9 = *(v0 + 224);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 168);
    sub_20BF47404(*(v0 + 152), v10, v12);

    (*(v13 + 8))(v12, v14);
  }

  else
  {
    v8 = *(v0 + 264);
    v9 = *(v0 + 224);
  }

  sub_20B520158(v9, &unk_27C765110, &unk_20C152460);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_20BF43044()
{
  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  (*(*(v0 + 176) + 56))(*(v0 + 224), 1, 1, *(v0 + 168));
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 216);
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    sub_20B52F9E8(*(v0 + 224), v1, &unk_27C765110, &unk_20C152460);
    v4 = *(v3 + 48);
    v5 = v4(v1, 1, v2);
    v6 = *(v0 + 216);
    if (v5 == 1)
    {
      v7 = *(v0 + 168);
      MEMORY[0x20F2ED8D0]();
      if (v4(v6, 1, v7) != 1)
      {
        sub_20B520158(*(v0 + 216), &unk_27C765110, &unk_20C152460);
      }
    }

    else
    {
      (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 216), *(v0 + 168));
    }

    v10 = *(v0 + 296);
    v11 = *(v0 + 264);
    v9 = *(v0 + 224);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 168);
    sub_20BF47404(*(v0 + 152), v10, v12);

    (*(v13 + 8))(v12, v14);
  }

  else
  {
    v8 = *(v0 + 264);
    v9 = *(v0 + 224);
  }

  sub_20B520158(v9, &unk_27C765110, &unk_20C152460);

  v15 = *(v0 + 8);

  return v15();
}

double sub_20BF43280(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v4 = [Strong presentingViewController];
      if (v4)
      {
        v5 = v4;
        [v4 dismissViewControllerAnimated:1 completion:0];
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_20BF43334()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  sub_20BF44610();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = [Strong player];
    [v5 pause];

    swift_unknownObjectRelease();
  }

  sub_20BF440D0();
  sub_20BF45338();
  sub_20C13CDC4();
  v6 = sub_20C13CDF4();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  sub_20B6383D0(0, 0, v3, &unk_20C151D18, v7);

  return result;
}

uint64_t sub_20BF434B0()
{
  *(v0 + 24) = *(*(v0 + 16) + 136);
  sub_20C138F44();
  sub_20BF4738C(&qword_27C76C6B0, MEMORY[0x277D541D0], MEMORY[0x277D541D8]);
  v2 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BBF8F74, v2, v1);
}

void sub_20BF43570()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v6 = [Strong player], swift_unknownObjectRelease(), v6) && (v7 = objc_msgSend(v6, sel_currentItem), v6, v7))
  {
    [v7 currentTime];
    sub_20C13D524();
    v9 = v8;
    [v7 duration];
    sub_20C13D524();
    v11 = v10;
    v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_options);
    v13 = *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_metricTopicRoutingBehavior);
    swift_getObjectType();
    v17[0] = v9;
    v17[1] = v11;
    v17[2] = v12;
    v18 = v13;
    sub_20B52466C();
    sub_20C13A764();
  }

  else
  {
    sub_20C13B4D4();
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1D4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_20B517000, v14, v15, "[CatalogTipPlayerPresenter] failed to publish tip player dismissed event - player item not found", v16, 2u);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_20BF437BC()
{
  v1 = v0;
  v2 = sub_20C13D534();
  v4 = v3;
  v6 = v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v8 = [Strong player], swift_unknownObjectRelease(), v8))
  {
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v9 = sub_20C13D374();
    v10 = swift_allocObject();
    swift_weakInit();
    v17 = sub_20BF46EC8;
    v18 = v10;
    *&v15 = MEMORY[0x277D85DD0];
    *(&v15 + 1) = 1107296256;
    *&v16 = sub_20BF43C8C;
    *(&v16 + 1) = &block_descriptor_55;
    v11 = _Block_copy(&v15);

    *&v15 = v2;
    *(&v15 + 1) = v4;
    *&v16 = v6;
    v12 = [v8 addPeriodicTimeObserverForInterval:&v15 queue:v9 usingBlock:v11];
    _Block_release(v11);

    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v13 = OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_periodicTimeObserver;
  swift_beginAccess();
  sub_20BF46E58(&v15, v1 + v13);
  return swift_endAccess();
}

void sub_20BF43994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v9 = [Strong player];
      swift_unknownObjectRelease();
      if (v9)
      {
        v10 = [v9 currentItem];

        if (v10)
        {
          [v10 duration];
          sub_20C13D524();
          v12 = v11;
          sub_20C13D524();
          v14 = v12 - v13;
          if (v14 > 1.0)
          {
            sub_20C13B4D4();
            v15 = sub_20C13BB74();
            v16 = sub_20C13D1F4();
            if (os_log_type_enabled(v15, v16))
            {
              v17 = swift_slowAlloc();
              *v17 = 134349056;
              *(v17 + 4) = v14;
              _os_log_impl(&dword_20B517000, v15, v16, "[CatalogTipPlayerPresenter] hiding summary with time remaining = %{public}f", v17, 0xCu);
              MEMORY[0x20F2F6A40](v17, -1, -1);
            }

            (*(v5 + 8))(v7, v4);
            swift_beginAccess();
            if (swift_weakLoadStrong())
            {
              v18 = swift_unknownObjectWeakLoadStrong();

              if (v18)
              {
                v19 = [v18 configuration];
                [v19 setExcludedControls_];
                [v18 setConfiguration_];
                swift_unknownObjectRelease();
              }
            }

            swift_beginAccess();
            if (swift_weakLoadStrong())
            {
              sub_20BF43CF8();
            }
          }
        }
      }
    }
  }
}

double sub_20BF43C8C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = *(a1 + 32);

  v5(v2, v3, v4);

  return result;
}

uint64_t sub_20BF43CF8()
{
  v1 = OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_periodicTimeObserver;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v1, &v5, &unk_27C768A00, &qword_20C152F90);
  if (!*(&v6 + 1))
  {
    return sub_20B520158(&v5, &unk_27C768A00, &qword_20C152F90);
  }

  sub_20B6B3B74(&v5, &v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = [Strong player];
    swift_unknownObjectRelease();
    if (v3)
    {
      __swift_project_boxed_opaque_existential_1(&v7, v8);
      [v3 removeTimeObserver_];

      swift_unknownObjectRelease();
    }
  }

  v5 = 0u;
  v6 = 0u;
  swift_beginAccess();
  sub_20BF46E58(&v5, v0 + v1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(&v7);
}

void sub_20BF43E34()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4D4();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v6, v7, "[CatalogTipPlayerPresenter] player finished", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_20BF44610();
  v9 = *(v1 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_options);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    if (Strong)
    {
      v13 = Strong;
      [Strong flashPlaybackControlsWithDuration_];
      v14 = objc_allocWithZone(type metadata accessor for CatalogTipSummaryView());

      v16 = sub_20BBC25FC(v15);
      sub_20B63911C(v16);
      v17 = [v13 configuration];
      [v17 setExcludedControls_];
      [v13 setConfiguration_];
      swift_unknownObjectRelease();
    }

    sub_20BE49BDC();
    sub_20BF437BC();
  }

  else if (Strong)
  {
    v11 = [Strong presentingViewController];
    if (v11)
    {
      v12 = v11;
      [v11 dismissViewControllerAnimated:1 completion:0];
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BF440D0()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v28 - v6;
  v7 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C132E94();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_20C134F04();
  v30 = *(v14 - 8);
  v31 = v14;
  MEMORY[0x28223BE20](v14);
  v29 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v17 = [Strong player], swift_unknownObjectRelease(), v17) && (v18 = objc_msgSend(v17, sel_currentItem), v17, v18))
  {
    sub_20C132E84();
    [v18 currentTime];
    sub_20C13D524();
    sub_20C13CA04();
    sub_20BF40134(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_configuration, v12, type metadata accessor for CatalogTipPlayerConfiguration);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_20BF46F1C(v12, v9);

      sub_20BF46BC8(v9, type metadata accessor for CatalogTipPlaybackContent);
    }

    [v18 duration];
    sub_20C13D524();
    v23 = v29;
    sub_20C134EF4();
    __swift_project_boxed_opaque_existential_1((v0 + 144), *(v0 + 168));
    v24 = v32;
    sub_20C139FA4();
    v25 = v34;
    v26 = sub_20C137CB4();
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    v26(sub_20B52347C, v27);

    (*(v33 + 8))(v24, v25);
    return (*(v30 + 8))(v23, v31);
  }

  else
  {
    sub_20C13B4D4();
    v19 = sub_20C13BB74();
    v20 = sub_20C13D1D4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20B517000, v19, v20, "[CatalogTipPlayerPresenter] failed to insert catalog tip journal - player item not found", v21, 2u);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

void sub_20BF44610()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C1391E4();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x28223BE20](v5);
  v93 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C134C44();
  MEMORY[0x28223BE20](v7 - 8);
  v92 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = &v78 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v13 - 8);
  v89 = &v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v19 - 8);
  v81 = &v78 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v21 - 8);
  v80 = &v78 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v23 - 8);
  v79 = &v78 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v25 - 8);
  v83 = &v78 - v26;
  v27 = sub_20C134F74();
  v86 = *(v27 - 8);
  v87 = v27;
  MEMORY[0x28223BE20](v27);
  v84 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v85 = &v78 - v30;
  v31 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = (&v78 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v34);
  v36 = (&v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_20C135D24();
  v97 = *(v37 - 8);
  v98 = v37;
  MEMORY[0x28223BE20](v37);
  v96 = &v78 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = (&v78 - v40);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v43 = [Strong player], swift_unknownObjectRelease(), v43) && (v99 = objc_msgSend(v43, sel_currentItem), v43, v99))
  {
    if (*(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_hasPublishedMediaEvent))
    {
      v44 = v99;
    }

    else
    {
      v48 = v0;
      *(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_hasPublishedMediaEvent) = 1;
      sub_20BF40134(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_configuration, v36, type metadata accessor for CatalogTipPlayerConfiguration);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v50 = *v36;
        v49 = v36[1];
      }

      else
      {
        sub_20BF46F1C(v36, v33);
        v50 = *v33;
        v49 = v33[1];

        sub_20BF46BC8(v33, type metadata accessor for CatalogTipPlaybackContent);
      }

      [v99 currentTime];
      sub_20C13D524();
      v52 = v51;
      [v99 duration];
      sub_20C13D524();
      *v41 = v50;
      v41[1] = v49;
      v41[2] = v52;
      v41[3] = v53;
      v54 = v97;
      v55 = v98;
      (*(v97 + 104))(v41, *MEMORY[0x277D52130], v98);
      (*(v54 + 16))(v96, v41, v55);
      v56 = *MEMORY[0x277D517B8];
      v57 = sub_20C1352F4();
      v58 = *(v57 - 8);
      v59 = v79;
      (*(v58 + 104))(v79, v56, v57);
      (*(v58 + 56))(v59, 0, 1, v57);
      v60 = *(v48 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_pageContext);
      v61 = *(v48 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_pageContext + 8);
      v62 = sub_20C132C14();
      (*(*(v62 - 8) + 56))(v80, 1, 1, v62);
      v63 = sub_20C135ED4();
      (*(*(v63 - 8) + 56))(v81, 1, 1, v63);
      v64 = sub_20C136914();
      (*(*(v64 - 8) + 56))(v82, 1, 1, v64);
      sub_20B58C2C8(v60, v61);
      v65 = v83;
      sub_20C133384();
      v66 = sub_20C1333A4();
      (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
      v67 = sub_20C135664();
      (*(*(v67 - 8) + 56))(v88, 1, 1, v67);
      v68 = sub_20C135674();
      (*(*(v68 - 8) + 56))(v89, 1, 1, v68);
      v69 = v90;
      sub_20C134F94();
      v70 = sub_20C134FB4();
      (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
      (*(*(v71 - 8) + 56))(v91, 1, 1, v71);
      v72 = sub_20C135F14();
      (*(*(v72 - 8) + 56))(v92, 1, 1, v72);
      v73 = v85;
      sub_20C134F54();
      swift_getObjectType();
      v75 = v86;
      v74 = v87;
      (*(v86 + 16))(v84, v73, v87);
      v76 = v93;
      sub_20C1391F4();
      sub_20BF4738C(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
      v77 = v95;
      sub_20C13A764();

      (*(v94 + 8))(v76, v77);
      (*(v75 + 8))(v73, v74);
      (*(v97 + 8))(v41, v98);
    }
  }

  else
  {
    sub_20C13B4D4();
    v45 = sub_20C13BB74();
    v46 = sub_20C13D1D4();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_20B517000, v45, v46, "[CatalogTipPlayerPresenter] failed to publish media event - player item not found", v47, 2u);
      MEMORY[0x20F2F6A40](v47, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_20BF45338()
{
  v1 = sub_20C13BB84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = [Strong player], swift_unknownObjectRelease(), v12) && (v13 = objc_msgSend(v12, sel_currentItem), v12, v13))
  {
    [v13 currentTime];
    sub_20C13D524();
    v15 = v14;
    [v13 duration];
    sub_20C13D524();
    v17 = v16;
    sub_20BF40134(v0 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_configuration, v10, type metadata accessor for CatalogTipPlayerConfiguration);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *v10;
      v18 = v10[1];
    }

    else
    {
      sub_20BF46F1C(v10, v7);
      v19 = *v7;
      v18 = v7[1];

      sub_20BF46BC8(v7, type metadata accessor for CatalogTipPlaybackContent);
    }

    swift_getObjectType();
    v23[0] = v15;
    v23[1] = v17;
    v23[2] = v19;
    v23[3] = v18;
    sub_20BA157F0();
    sub_20C13A764();
  }

  else
  {
    sub_20C13B4D4();
    v20 = sub_20C13BB74();
    v21 = sub_20C13D1D4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_20B517000, v20, v21, "[CatalogTipPlayerPresenter] failed to publish remote browsing tip completed event - player item not found", v22, 2u);
      MEMORY[0x20F2F6A40](v22, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_20BF45680(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_20C136194();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764370, &qword_20C153C70);
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BF45890, 0, 0);
}

uint64_t sub_20BF45890(__n128 a1)
{
  v2 = v1[20];
  v3 = v1[15];
  v4 = v1[16];
  sub_20C13B574();
  sub_20C13BB64();
  v5 = *(v4 + 8);
  v1[21] = v5;
  v1[22] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v1[23] = sub_20C13CDA4();
  v1[24] = sub_20C13CD94();
  v7 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BF4599C, v7, v6);
}

uint64_t sub_20BF4599C()
{
  v1 = *(v0 + 32);

  *(v0 + 200) = [v1 asset];

  return MEMORY[0x2822009F8](sub_20BF45A24, 0, 0);
}

uint64_t sub_20BF45A24()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 200);
    v4 = *(v0 + 112);
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v5 = sub_20C13D374();
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v5;
    v7 = sub_20B51C88C(0, &qword_27C763230, 0x277CE6510);
    v8 = v3;
    sub_20C137C94();
    v9 = swift_task_alloc();
    *(v0 + 208) = v9;
    *(v9 + 16) = "SeymourUI/CatalogTipPlayerPresenter.swift";
    *(v9 + 24) = 41;
    *(v9 + 32) = 2;
    *(v9 + 40) = 378;
    *(v9 + 48) = v4;
    v10 = swift_task_alloc();
    *(v0 + 216) = v10;
    *v10 = v0;
    v10[1] = sub_20BF45D64;

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BF46E40, v9, v7);
  }

  else
  {
    v11 = *(v0 + 32);

    sub_20C13B574();
    v12 = v11;
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v15;
      *v17 = v15;
      v18 = v15;
      _os_log_impl(&dword_20B517000, v13, v14, "%@ is not an AVURLAsset", v16, 0xCu);
      sub_20B520158(v17, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    v19 = *(v0 + 168);
    v20 = *(v0 + 136);
    v21 = *(v0 + 120);

    v19(v20, v21);

    v22 = *(v0 + 8);

    return v22();
  }
}

uint64_t sub_20BF45D64()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {

    v3 = sub_20BF465B8;
  }

  else
  {
    v5 = v2[13];
    v4 = v2[14];
    v6 = v2[12];
    v2[29] = v2[2];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BF45EC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF45EC4()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_currentAudibleMediaSelectionOption;
  v0[30] = OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_currentAudibleMediaSelectionOption;
  v3 = *(v1 + v2);
  v0[31] = v3;
  v4 = v3;
  v0[32] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20BF45F6C, v6, v5);
}

uint64_t sub_20BF45F6C()
{
  v1 = *(v0 + 32);

  *(v0 + 264) = [v1 currentMediaSelection];

  return MEMORY[0x2822009F8](sub_20BF45FF4, 0, 0);
}

uint64_t sub_20BF45FF4()
{
  v60 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 40);
  v4 = [v1 selectedMediaOptionInMediaSelectionGroup_];

  v5 = *(v3 + v2);
  *(v3 + v2) = v4;

  sub_20C13B574();

  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 240);
    v9 = *(v0 + 168);
    v10 = *(v0 + 152);
    v11 = *(v0 + 120);
    v12 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v59 = v14;
    *v13 = 136315138;
    *(v0 + 24) = *(v12 + v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763238, &qword_20C153C80);
    v15 = sub_20C13D8F4();
    v17 = sub_20B51E694(v15, v16, &v59);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_20B517000, v6, v7, "currentAudibleMediaSelectionOption: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x20F2F6A40](v14, -1, -1);
    MEMORY[0x20F2F6A40](v13, -1, -1);

    v9(v10, v11);
    v18 = *(v0 + 248);
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_10:
    v35 = *(v0 + 200);

LABEL_24:

    v52 = *(v0 + 8);

    return v52();
  }

  v32 = *(v0 + 168);
  v33 = *(v0 + 152);
  v34 = *(v0 + 120);

  v32(v33, v34);
  v18 = *(v0 + 248);
  if (!v18)
  {
    goto LABEL_10;
  }

LABEL_3:
  v19 = *(v0 + 240);
  v20 = *(v0 + 40);
  v21 = v18;
  v22 = AVMediaSelectionOption.languageCodeIdentifier.getter();
  v24 = v23;

  v25 = *(v20 + v19);
  if (!v25)
  {
    if (v24)
    {
      goto LABEL_12;
    }

LABEL_19:
    v35 = *(v0 + 248);
    v50 = *(v0 + 232);
    v49 = *(v0 + 200);
    goto LABEL_20;
  }

  v26 = v25;
  v27 = AVMediaSelectionOption.languageCodeIdentifier.getter();
  v29 = v28;

  if (!v24)
  {
    if (v29)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  if (!v29)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v22 == v27 && v24 == v29)
  {
    v30 = *(v0 + 232);
    v31 = *(v0 + 200);

LABEL_23:

    v35 = *(v0 + 248);
    goto LABEL_24;
  }

  v51 = sub_20C13DFF4();

  if (v51)
  {
    v30 = *(v0 + 232);
    v31 = *(v0 + 200);
    goto LABEL_23;
  }

LABEL_13:
  v36 = *(*(v0 + 40) + *(v0 + 240));
  if (!v36 || (v37 = v36, v38 = AVMediaSelectionOption.languageCodeIdentifier.getter(), v40 = v39, v37, !v40))
  {
    v35 = *(v0 + 248);
    v49 = *(v0 + 232);
    v50 = *(v0 + 200);
LABEL_20:

    goto LABEL_24;
  }

  sub_20C13B574();

  v41 = sub_20C13BB74();
  v42 = sub_20C13D1F4();

  v43 = os_log_type_enabled(v41, v42);
  v44 = *(v0 + 168);
  v45 = *(v0 + 144);
  v46 = *(v0 + 120);
  if (v43)
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59 = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_20B51E694(v38, v40, &v59);
    _os_log_impl(&dword_20B517000, v41, v42, "Updating audio language preference to: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x20F2F6A40](v48, -1, -1);
    MEMORY[0x20F2F6A40](v47, -1, -1);
  }

  v44(v45, v46);
  v54 = *(v0 + 64);
  v55 = *(v0 + 40);
  sub_20C13CE94();
  sub_20C136174();
  __swift_project_boxed_opaque_existential_1((v55 + 32), *(v55 + 56));
  sub_20C139CC4();
  v56 = swift_task_alloc();
  *(v0 + 272) = v56;
  *(v56 + 16) = "SeymourUI/CatalogTipPlayerPresenter.swift";
  *(v56 + 24) = 41;
  *(v56 + 32) = 2;
  *(v56 + 40) = 394;
  *(v56 + 48) = v54;
  v57 = swift_task_alloc();
  *(v0 + 280) = v57;
  *v57 = v0;
  v57[1] = sub_20BF46694;
  v58 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v57, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526AA8, v56, v58);
}

uint64_t sub_20BF465B8()
{
  v1 = v0[25];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_20BF46694()
{
  v2 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_20BF468D0;
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);
    v3 = sub_20BF467E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BF467E4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 200);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 72);

  (*(v4 + 8))(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}