void sub_2191DB9C0(uint64_t a1, char *a2, uint64_t a3)
{
  v75 = a1;
  v80 = sub_219BE5C64();
  v5 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  v8 = objc_opt_self();
  v9 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v10 = sub_219BF6BB4();
  v11 = [objc_opt_self() configurationWithFont_];

  v12 = [v8 ts:v9 internalSystemImageNamed:v11 withConfiguration:?];
  if (!v12)
  {
    __break(1u);
    return;
  }

  [a2 setAccessibilityIdentifier_];
  v76 = *(*(a3 + 472) + 16);
  v13 = *(v76 + 16);
  v81 = a2;
  if (v13)
  {
    v82 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v83 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v14 = (v76 + 32);
    v79 = *MEMORY[0x277D6D340];
    v77 = (v5 + 8);
    v78 = (v5 + 104);
    do
    {
      v20 = *v14++;
      v19 = v20;
      if (v20 == 2)
      {
        v15 = *&a2[v83];
        if (!v15)
        {
          type metadata accessor for AccessoryButton(0);
          v28 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v29 = qword_280EDB508;
          v30 = v28[qword_280EDB508];
          v28[qword_280EDB508] = 1;
          v24 = v28;
          sub_219BE61D4();
          if (v30 != v28[v29] || !*&v24[qword_280F620E8] || !*&v24[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v31 = v80;
          (*v78)(v7, v79, v80);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v77)(v7, v31);
          v32 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v81;
          v27 = v83;
          goto LABEL_21;
        }
      }

      else
      {
        if (v19)
        {
          goto LABEL_7;
        }

        v15 = *&a2[v82];
        if (!v15)
        {
          type metadata accessor for AccessoryButton(0);
          v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v22 = qword_280EDB508;
          v23 = v21[qword_280EDB508];
          v21[qword_280EDB508] = 0;
          v24 = v21;
          sub_219BE61D4();
          if (v23 != v21[v22] || !*&v24[qword_280F620E8] || !*&v24[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v25 = v80;
          (*v78)(v7, v79, v80);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v77)(v7, v25);
          v26 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v81;
          v27 = v82;
LABEL_21:
          v33 = *&a2[v27];
          *&a2[v27] = v24;
          v16 = v24;

          v15 = 0;
          goto LABEL_6;
        }
      }

      v16 = v15;
LABEL_6:
      v17 = *(a3 + 488);
      v18 = v15;
      sub_218EC2D64(v17);

LABEL_7:
      --v13;
    }

    while (v13);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v34 = 0;
    v35 = 0;
    v36 = v75;
  }

  else
  {
    v36 = v75;
    v34 = *(v75 + 8);
    v35 = *(v75 + 16);
  }

  v37 = v76;
  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v83 = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C09EC0;
  sub_219BF2394();
  v40 = sub_219BF2364();
  v41 = MEMORY[0x21CEC9110]();
  v43 = v42;

  *(v39 + 32) = v41;
  *(v39 + 40) = v43;
  *(v39 + 48) = v34;
  *(v39 + 56) = v35;
  sub_219BE5F34();
  v45 = v44;

  if (v45)
  {
    v46 = sub_219BF53D4();
  }

  else
  {
    v46 = 0;
  }

  v47 = v81;
  [v81 setAccessibilityLabel_];

  v48 = sub_219BF2364();
  v49 = MEMORY[0x21CEC9110]();
  v51 = v50;

  v52 = &v47[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v52 = v49;
  v52[1] = v51;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = objc_opt_self();
  v55 = [v54 bundleForClass_];
  v56 = sub_219BDB5E4();
  v58 = v57;

  if (!sub_219093144(0, v37) || !sub_219093144(1u, v37))
  {
    if (*v36)
    {
      v63 = sub_219BF53D4();

      v64 = type metadata accessor for TagView();
      v85.receiver = v81;
      v85.super_class = v64;
      objc_msgSendSuper2(&v85, sel_setAccessibilityValue_, v63);
    }

    else
    {
    }

    return;
  }

  v59 = *(v36 + 34);
  if ((v59 & 0x60) != 0)
  {
    if (!*v36)
    {

      v82 = 0;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v56 = 0;
      v58 = 0;
      goto LABEL_42;
    }

    goto LABEL_32;
  }

  if ((v59 & 0x80000000) == 0)
  {
    if (!*v36)
    {

      v56 = 0;
      v58 = 0;
    }

    v65 = [v54 bundleForClass_];
    v61 = sub_219BDB5E4();
    v62 = v66;

    v82 = 0;
    v60 = 0;
    goto LABEL_42;
  }

  if (!*v36)
  {

    v58 = 0;
    v56 = 0;
    v82 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    if ((v59 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_51;
  }

  if (v59)
  {
LABEL_51:
    v73 = [v54 bundleForClass_];
    v82 = sub_219BDB5E4();
    v60 = v74;

    goto LABEL_33;
  }

LABEL_32:
  v82 = 0;
  v60 = 0;
LABEL_33:
  v61 = 0;
  v62 = 0;
LABEL_42:
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_219C0B8C0;
  *(v67 + 32) = v56;
  *(v67 + 40) = v58;
  *(v67 + 48) = v61;
  *(v67 + 56) = v62;
  *(v67 + 64) = v82;
  *(v67 + 72) = v60;
  sub_219BE5F34();
  v69 = v68;

  if (v69)
  {
    v70 = sub_219BF53D4();
  }

  else
  {
    v70 = 0;
  }

  v71 = v81;
  v72 = type metadata accessor for TagView();
  v84.receiver = v71;
  v84.super_class = v72;
  objc_msgSendSuper2(&v84, sel_setAccessibilityValue_, v70);
}

uint64_t sub_2191DC400(uint64_t *a1, uint64_t a2)
{
  v16[3] = &type metadata for FollowingSharedWithYouModel;
  v16[4] = &off_282A8F9F0;
  v4 = swift_allocObject();
  v16[0] = v4;
  v5 = *a1;
  v6 = *(a1 + 1);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v6;
  *(v4 + 48) = *(a1 + 8);
  v7 = __swift_project_boxed_opaque_existential_1(v16, &type metadata for FollowingSharedWithYouModel);
  if (v5)
  {
    v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    v9 = *v7;
    v10 = *v7 == 0;
    v11 = *v7 != 0;
    sub_2189CEED0(a1, v15);
    sub_2190D8F20(v9, 0, v11 | (v10 << 8));
    v12 = sub_219BF53D4();

    [v8 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v8 setHidden_];
  }

  else
  {
    v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView);
    sub_2189CEED0(a1, v15);
    [v13 setHidden_];
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_2191DC578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v26);
  v5 = v27;
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_218D9828C(v26);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v7 = *(a1 + 35);
  sub_219534DC0(v6, *(a1 + 35), v5 & 1);
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v9 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v10 = qword_280F617F8;
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_12:
    v14 = 0.7;
    if (v7)
    {
      v14 = 1.0;
    }

    [v8 setAlpha_];
    if (v5)
    {
      v15 = [objc_opt_self() whiteColor];
      [v8 setTintColor_];
    }

    else
    {
      [v8 setTintColor_];
    }

    goto LABEL_19;
  }

  v10 = [objc_opt_self() labelColor];
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = [v8 image];
  if (v11)
  {
    v12 = v11;
    if ([v11 renderingMode] == 2)
    {
      v13 = [objc_opt_self() placeholderTextColor];
      [v8 setTintColor_];

      [v8 setAlpha_];
      goto LABEL_19;
    }
  }

  [v8 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  v16 = objc_opt_self();
  v17 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v18 = sub_219BF6BB4();
  v19 = [objc_opt_self() configurationWithFont_];

  v20 = [v16 ts:v17 internalSystemImageNamed:v19 withConfiguration:?];
  if (v20)
  {

    sub_2191DC400(a1, a2);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v21 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v22 = objc_opt_self();
    if (v7)
    {
      v23 = [v22 secondaryLabelColor];
      if (v5)
      {
        v24 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v25 = [v23 resolvedColorWithTraitCollection_];

        v23 = [v25 colorWithAlphaComponent_];
      }
    }

    else
    {
      v23 = [v22 placeholderTextColor];
    }

    [v21 setTextColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2191DCA4C(uint64_t a1, char *a2, uint64_t a3)
{
  v67 = sub_219BE5C64();
  v6 = *(v67 - 8);
  *&v8 = MEMORY[0x28223BE20](v67).n128_u64[0];
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(v11 + 104);
  v68 = a2;
  v62 = v11;
  if (v12 == 255 || (v12 & 1) == 0)
  {
    [a2 setAccessibilityIdentifier_];
  }

  else
  {
    v14 = *(v11 + 80);
    v13 = *(v11 + 88);
    v15 = *(v11 + 96);
    MEMORY[0x28223BE20](v7);
    sub_218FA396C(v14, v13, v15, 1);
    sub_218D98F7C(0);
    sub_2191D9030(&qword_280E907E0, sub_218D98F7C, MEMORY[0x277D334B8]);
    sub_219BF6C74();
    sub_218DD1338(v14, v13, v15, v12);
    a2 = v68;
  }

  v63 = *(*(a3 + 472) + 16);
  v16 = *(v63 + 16);
  if (v16)
  {
    v69 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v70 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v17 = (v63 + 32);
    v66 = *MEMORY[0x277D6D340];
    v64 = (v6 + 8);
    v65 = (v6 + 104);
    do
    {
      v23 = *v17++;
      v22 = v23;
      if (v23 == 2)
      {
        v18 = *&a2[v70];
        if (!v18)
        {
          type metadata accessor for AccessoryButton(0);
          v31 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v32 = qword_280EDB508;
          v33 = v31[qword_280EDB508];
          v31[qword_280EDB508] = 1;
          v27 = v31;
          sub_219BE61D4();
          if (v33 != v31[v32] || !*&v27[qword_280F620E8] || !*&v27[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v34 = v67;
          (*v65)(v10, v66, v67);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v64)(v10, v34);
          v35 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v68;
          v30 = v70;
          goto LABEL_24;
        }
      }

      else
      {
        if (v22)
        {
          goto LABEL_10;
        }

        v18 = *&a2[v69];
        if (!v18)
        {
          type metadata accessor for AccessoryButton(0);
          v24 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v25 = qword_280EDB508;
          v26 = v24[qword_280EDB508];
          v24[qword_280EDB508] = 0;
          v27 = v24;
          sub_219BE61D4();
          if (v26 != v24[v25] || !*&v27[qword_280F620E8] || !*&v27[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v28 = v67;
          (*v65)(v10, v66, v67);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v64)(v10, v28);
          v29 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v68;
          v30 = v69;
LABEL_24:
          v36 = *&a2[v30];
          *&a2[v30] = v27;
          v19 = v27;

          v18 = 0;
          goto LABEL_9;
        }
      }

      v19 = v18;
LABEL_9:
      v20 = *(a3 + 488);
      v21 = v18;
      sub_218EC2D64(v20);

LABEL_10:
      --v16;
    }

    while (v16);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v37 = 0;
    v38 = 0;
    v39 = v62;
  }

  else
  {
    v39 = v62;
    v37 = v62[6];
    v38 = v62[7];
  }

  v40 = v63;
  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_219C09EC0;
  v42 = v39[5];
  *(v41 + 32) = v39[4];
  *(v41 + 40) = v42;
  *(v41 + 48) = v37;
  *(v41 + 56) = v38;

  sub_219BE5F34();
  v44 = v43;

  if (v44)
  {
    v45 = sub_219BF53D4();
  }

  else
  {
    v45 = 0;
  }

  v46 = v68;
  [v68 setAccessibilityLabel_];

  v48 = v39[4];
  v47 = v39[5];
  v49 = &v46[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v49 = v48;
  *(v49 + 1) = v47;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v51 = [objc_opt_self() bundleForClass_];
  v52 = sub_219BDB5E4();
  v54 = v53;

  if (sub_219093144(0, v40) && sub_219093144(1u, v40))
  {
    if (!*(v39[9] + 16))
    {

      v52 = 0;
      v54 = 0;
    }

    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_219C0B8C0;
    *(v55 + 32) = v52;
    *(v55 + 40) = v54;
    *(v55 + 48) = 0u;
    *(v55 + 64) = 0u;
    sub_219BE5F34();
    v57 = v56;

    if (v57)
    {
      v58 = sub_219BF53D4();
    }

    else
    {
      v58 = 0;
    }

    v60 = v68;
    v61 = type metadata accessor for TagView();
    v71.receiver = v60;
    v71.super_class = v61;
    objc_msgSendSuper2(&v71, sel_setAccessibilityValue_, v58);
  }

  else
  {
    if (!*(v39[9] + 16))
    {

      return;
    }

    v58 = sub_219BF53D4();

    v59 = type metadata accessor for TagView();
    v72.receiver = v68;
    v72.super_class = v59;
    objc_msgSendSuper2(&v72, sel_setAccessibilityValue_, v58);
  }
}

void sub_2191DD2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v21);
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(v21, v22);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v21);
    v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
    if (v5)
    {
      v7 = 1;
      v8 = &selRef_whiteColor;
      goto LABEL_6;
    }
  }

  else
  {
    sub_218D9828C(v21);
    v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  }

  v7 = 0;
  v8 = &selRef_labelColor;
LABEL_6:
  v9 = [objc_opt_self() *v8];
  [v6 setTextColor_];

  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v11 = [v6 isEnabled];
  if (sub_219BED0C4())
  {
    v12 = [objc_opt_self() labelColor];
    if (!v11)
    {
LABEL_8:
      v13 = [v10 image];
      if (v13)
      {
        v14 = v13;
        if ([v13 renderingMode] == 2)
        {
          v15 = [objc_opt_self() placeholderTextColor];
          [v10 setTintColor_];

          [v10 setAlpha_];
LABEL_16:

          goto LABEL_20;
        }
      }

      [v10 setAlpha_];
      goto LABEL_20;
    }
  }

  else
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v12 = qword_280F617F8;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  [v10 setAlpha_];
  if (v7)
  {
    v14 = [objc_opt_self() whiteColor];
    [v10 setTintColor_];
    goto LABEL_16;
  }

  [v10 setTintColor_];
LABEL_20:

  if (*(*(*(a1 + 16) + 72) + 16))
  {
    v16 = v7;
  }

  else
  {
    v16 = 1;
  }

  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
  v17 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
  v18 = [objc_opt_self() secondaryLabelColor];
  if (((v7 ^ 1) & 1) == 0)
  {
    v19 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
    v20 = [v18 resolvedColorWithTraitCollection_];

    v18 = [v20 colorWithAlphaComponent_];
  }

  [v17 setTextColor_];
}

void sub_2191DD6F4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v66 = a2;
  v67 = a1;
  v73 = sub_219BE5C64();
  v8 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  v11 = objc_opt_self();
  v12 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v13 = sub_219BF6BB4();
  v14 = [objc_opt_self() configurationWithFont_];

  v15 = [v11 ts:v12 internalSystemImageNamed:v14 withConfiguration:?];
  if (v15)
  {

    [a4 setAccessibilityIdentifier_];
    v68 = *(*(a5 + 472) + 16);
    v16 = *(v68 + 16);
    v74 = a4;
    if (v16)
    {
      v75 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v76 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v17 = (v68 + 32);
      v71 = *MEMORY[0x277D6D340];
      v69 = (v8 + 8);
      v70 = (v8 + 104);
      v72 = a3;
      do
      {
        v23 = *v17++;
        v22 = v23;
        if (v23 == 2)
        {
          v18 = *&a4[v76];
          if (!v18)
          {
            type metadata accessor for AccessoryButton(0);
            v31 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v32 = qword_280EDB508;
            v33 = v31[qword_280EDB508];
            v31[qword_280EDB508] = 1;
            v27 = v31;
            sub_219BE61D4();
            if (v33 != v31[v32] || !*&v27[qword_280F620E8] || !*&v27[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v34 = v73;
            (*v70)(v10, v71, v73);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
            sub_219BEB694();
            (*v69)(v10, v34);
            v35 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            a4 = v74;
            v30 = v76;
            goto LABEL_21;
          }
        }

        else
        {
          if (v22)
          {
            goto LABEL_7;
          }

          v18 = *&a4[v75];
          if (!v18)
          {
            type metadata accessor for AccessoryButton(0);
            v24 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v25 = qword_280EDB508;
            v26 = v24[qword_280EDB508];
            v24[qword_280EDB508] = 0;
            v27 = v24;
            sub_219BE61D4();
            if (v26 != v24[v25] || !*&v27[qword_280F620E8] || !*&v27[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v28 = v73;
            (*v70)(v10, v71, v73);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
            sub_219BEB694();
            (*v69)(v10, v28);
            v29 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            a4 = v74;
            v30 = v75;
LABEL_21:
            v36 = *&a4[v30];
            *&a4[v30] = v27;
            v19 = v27;

            v18 = 0;
            a3 = v72;
            goto LABEL_6;
          }
        }

        v19 = v18;
LABEL_6:
        v20 = *(a5 + 488);
        v21 = v18;
        sub_218EC2D64(v20);

LABEL_7:
        --v16;
      }

      while (v16);
    }

    if (CGRectIsEmpty(*(a5 + 120)))
    {
      v37 = 0;
      a3 = 0;
    }

    else
    {

      v37 = v66;
    }

    sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
    v76 = v38;
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C09EC0;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v41 = objc_opt_self();
    v42 = [v41 bundleForClass_];
    v43 = sub_219BDB5E4();
    v45 = v44;

    *(v39 + 32) = v43;
    *(v39 + 40) = v45;
    *(v39 + 48) = v37;
    *(v39 + 56) = a3;
    sub_219BE5F34();
    v47 = v46;

    if (v47)
    {
      v48 = sub_219BF53D4();
    }

    else
    {
      v48 = 0;
    }

    v49 = v74;
    [v74 setAccessibilityLabel_];

    v50 = [v41 bundleForClass_];
    v51 = sub_219BDB5E4();
    v53 = v52;

    v54 = &v49[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
    swift_beginAccess();
    *v54 = v51;
    v54[1] = v53;

    v55 = [v41 bundleForClass_];
    v56 = sub_219BDB5E4();
    v58 = v57;

    v59 = v68;
    if (sub_219093144(0, v68) && sub_219093144(1u, v59))
    {
      if (!v67)
      {

        v56 = 0;
        v58 = 0;
      }

      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_219C0B8C0;
      *(v60 + 32) = v56;
      *(v60 + 40) = v58;
      *(v60 + 48) = 0u;
      *(v60 + 64) = 0u;
      sub_219BE5F34();
      v62 = v61;

      if (v62)
      {
        v63 = sub_219BF53D4();
      }

      else
      {
        v63 = 0;
      }

      v65 = type metadata accessor for TagView();
      v77.receiver = v49;
      v77.super_class = v65;
      objc_msgSendSuper2(&v77, sel_setAccessibilityValue_, v63);
    }

    else
    {
      if (!v67)
      {

        return;
      }

      v63 = sub_219BF53D4();

      v64 = type metadata accessor for TagView();
      v78.receiver = v49;
      v78.super_class = v64;
      objc_msgSendSuper2(&v78, sel_setAccessibilityValue_, v63);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191DE034(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[3] = a3;
  v20[4] = a4;
  v8 = swift_allocObject();
  v20[0] = v8;
  v22 = *(a1 + 1);
  v21 = a1[3];
  v9 = *a1;
  v10 = *(a1 + 1);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  *(v8 + 48) = *(a1 + 32);
  v11 = __swift_project_boxed_opaque_existential_1(v20, a3);
  if (v9)
  {
    v12 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    v13 = *v11;
    v14 = *v11 == 0;
    v15 = *v11 != 0;
    sub_2191E0948(&v22, v19, sub_2186E3374);
    sub_2191E0948(&v21, v19, sub_2186E352C);
    sub_2190D8F20(v13, 0, v15 | (v14 << 8));
    v16 = sub_219BF53D4();

    [v12 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v12 setHidden_];
  }

  else
  {
    v17 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView);
    sub_2191E0948(&v22, v19, sub_2186E3374);
    sub_2191E0948(&v21, v19, sub_2186E352C);
    [v17 setHidden_];
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

void sub_2191DE214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v26);
  v5 = v27;
  if (v27)
  {
    __swift_project_boxed_opaque_existential_1(v26, v27);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    sub_218D9828C(v26);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v7 = *(a1 + 32);
  sub_219534DC0(v6, *(a1 + 32), v5 & 1);
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v9 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v10 = qword_280F617F8;
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_12:
    v14 = 0.7;
    if (v7)
    {
      v14 = 1.0;
    }

    [v8 setAlpha_];
    if (v5)
    {
      v15 = [objc_opt_self() whiteColor];
      [v8 setTintColor_];
    }

    else
    {
      [v8 setTintColor_];
    }

    goto LABEL_19;
  }

  v10 = [objc_opt_self() labelColor];
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = [v8 image];
  if (v11)
  {
    v12 = v11;
    if ([v11 renderingMode] == 2)
    {
      v13 = [objc_opt_self() placeholderTextColor];
      [v8 setTintColor_];

      [v8 setAlpha_];
      goto LABEL_19;
    }
  }

  [v8 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  v16 = objc_opt_self();
  v17 = sub_219BF53D4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v18 = sub_219BF6BB4();
  v19 = [objc_opt_self() configurationWithFont_];

  v20 = [v16 ts:v17 internalSystemImageNamed:v19 withConfiguration:?];
  if (v20)
  {

    sub_2191DE034(a1, a2, &type metadata for FollowingMagazineModel, &off_282A81B18, &unk_282A633A8);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v21 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v22 = objc_opt_self();
    if (v7)
    {
      v23 = [v22 secondaryLabelColor];
      if (v5)
      {
        v24 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v25 = [v23 resolvedColorWithTraitCollection_];

        v23 = [v25 colorWithAlphaComponent_];
      }
    }

    else
    {
      v23 = [v22 placeholderTextColor];
    }

    [v21 setTextColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2191DE700(uint64_t a1, char *a2, uint64_t a3)
{
  v86 = sub_219BE5C64();
  v6 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for FollowingAudioModel(0);
  MEMORY[0x28223BE20](v80);
  v82 = (&v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191E0948(a1, v82, type metadata accessor for FollowingAudioModel);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v10 = sub_219BF6BB4();
  v11 = [objc_opt_self() configurationWithFont_];

  v12 = sub_219BF53D4();
  v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

  if (!v13)
  {
    __break(1u);
    return;
  }

  [a2 setAccessibilityIdentifier_];
  v81 = *(*(a3 + 472) + 16);
  v14 = *(v81 + 16);
  v87 = a2;
  if (v14)
  {
    v88 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v89 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v15 = (v81 + 32);
    v85 = *MEMORY[0x277D6D340];
    v83 = (v6 + 8);
    v84 = (v6 + 104);
    do
    {
      v21 = *v15++;
      v20 = v21;
      if (v21 == 2)
      {
        v16 = *&a2[v89];
        if (!v16)
        {
          type metadata accessor for AccessoryButton(0);
          v29 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v30 = qword_280EDB508;
          v31 = v29[qword_280EDB508];
          v29[qword_280EDB508] = 1;
          v25 = v29;
          sub_219BE61D4();
          if (v31 != v29[v30] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v32 = v86;
          (*v84)(v8, v85, v86);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v83)(v8, v32);
          v33 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v87;
          v28 = v89;
          goto LABEL_21;
        }
      }

      else
      {
        if (v20)
        {
          goto LABEL_7;
        }

        v16 = *&a2[v88];
        if (!v16)
        {
          type metadata accessor for AccessoryButton(0);
          v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v23 = qword_280EDB508;
          v24 = v22[qword_280EDB508];
          v22[qword_280EDB508] = 0;
          v25 = v22;
          sub_219BE61D4();
          if (v24 != v22[v23] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v26 = v86;
          (*v84)(v8, v85, v86);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v83)(v8, v26);
          v27 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v87;
          v28 = v88;
LABEL_21:
          v34 = *&a2[v28];
          *&a2[v28] = v25;
          v17 = v25;

          v16 = 0;
          goto LABEL_6;
        }
      }

      v17 = v16;
LABEL_6:
      v18 = *(a3 + 488);
      v19 = v16;
      sub_218EC2D64(v18);

LABEL_7:
      --v14;
    }

    while (v14);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v35 = 0;
    v36 = 0;
    v37 = v82;
  }

  else
  {
    v37 = v82;
    v35 = v82[2];
    v36 = v82[3];
  }

  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C09EC0;
  v39 = *v37;
  v40 = v37[1];
  *(v38 + 32) = v39;
  *(v38 + 40) = v40;
  *(v38 + 48) = v35;
  *(v38 + 56) = v36;
  swift_bridgeObjectRetain_n();
  sub_219BE5F34();
  v42 = v41;

  if (v42)
  {
    v43 = sub_219BF53D4();
  }

  else
  {
    v43 = 0;
  }

  v44 = v81;
  [a2 setAccessibilityLabel_];

  v45 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v45 = v39;
  *(v45 + 1) = v40;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = objc_opt_self();
  v48 = [v47 bundleForClass_];
  v49 = sub_219BDB5E4();
  v51 = v50;

  if (!sub_219093144(0, v44) || !sub_219093144(1u, v44))
  {
    v54 = v82 + *(v80 + 40);
    v55 = *v54;
    v56 = *(v54 + 1);
    v57 = v54[16];
    v58 = v54[17];
    sub_2191E1978(v82, type metadata accessor for FollowingAudioModel);
    if (v58 == 1 && !(v56 | v55) && !v57)
    {

      return;
    }

    v59 = sub_219BF53D4();

    v60 = type metadata accessor for TagView();
    v91.receiver = a2;
    v91.super_class = v60;
    objc_msgSendSuper2(&v91, sel_setAccessibilityValue_, v59);
    goto LABEL_53;
  }

  v52 = *(v82 + *(v80 + 36)) | (*(v82 + *(v80 + 36) + 2) << 16);
  if ((v52 & 0x600000) != 0)
  {
    LODWORD(v89) = 0;
    v53 = 0;
  }

  else if ((v52 & 0x800000) != 0)
  {
    v53 = 0;
    LODWORD(v89) = HIWORD(v52) & 1;
  }

  else
  {
    LODWORD(v89) = 0;
    v53 = 1;
  }

  v61 = v82 + *(v80 + 40);
  v62 = *v61;
  v63 = *(v61 + 1);
  v64 = v61[16];
  v65 = v61[17];
  sub_2191E1978(v82, type metadata accessor for FollowingAudioModel);
  if (v65 == 1 && !(v63 | v62) && !v64)
  {

    v49 = 0;
    v51 = 0;
  }

  if (!v53)
  {
    v67 = 0;
    v69 = 0;
    if (!v89)
    {
      goto LABEL_46;
    }

LABEL_48:
    v72 = [v47 bundleForClass_];
    v70 = sub_219BDB5E4();
    v71 = v73;

    goto LABEL_49;
  }

  v66 = [v47 bundleForClass_];
  v67 = sub_219BDB5E4();
  v69 = v68;

  if (v89)
  {
    goto LABEL_48;
  }

LABEL_46:
  v70 = 0;
  v71 = 0;
LABEL_49:
  v74 = v87;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_219C0B8C0;
  *(v75 + 32) = v49;
  *(v75 + 40) = v51;
  *(v75 + 48) = v67;
  *(v75 + 56) = v69;
  *(v75 + 64) = v70;
  *(v75 + 72) = v71;
  sub_219BE5F34();
  v77 = v76;

  if (v77)
  {
    v59 = sub_219BF53D4();
  }

  else
  {
    v59 = 0;
  }

  v78 = type metadata accessor for TagView();
  v90.receiver = v74;
  v90.super_class = v78;
  objc_msgSendSuper2(&v90, sel_setAccessibilityValue_, v59);
LABEL_53:
}

void sub_2191DF1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FollowingAudioModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  sub_2191E0948(a1, v8, type metadata accessor for FollowingAudioModel);
  sub_218D98194(a3, v31);
  v9 = v32;
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    swift_beginAccess();
    swift_beginAccess();
    v9 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_218D9828C(v31);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v11 = *(v6 + 32);
  v12 = v8[v11];
  sub_219534DC0(v10, v8[v11], v9 & 1);
  v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v14 = [v10 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v15 = qword_280F617F8;
    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_12:
    v19 = 0.7;
    if (v12)
    {
      v19 = 1.0;
    }

    [v13 setAlpha_];
    if (v9)
    {
      v20 = [objc_opt_self() whiteColor];
      [v13 setTintColor_];
    }

    else
    {
      [v13 setTintColor_];
    }

    goto LABEL_19;
  }

  v15 = [objc_opt_self() labelColor];
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_6:
  v16 = [v13 image];
  if (v16)
  {
    v17 = v16;
    if ([v16 renderingMode] == 2)
    {
      v18 = [objc_opt_self() placeholderTextColor];
      [v13 setTintColor_];

      [v13 setAlpha_];
      goto LABEL_19;
    }
  }

  [v13 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v21 = sub_219BF6BB4();
  v22 = [objc_opt_self() configurationWithFont_];

  v23 = sub_219BF53D4();
  v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

  if (v24)
  {

    sub_2191E0210(v8, a2, v9 & 1, type metadata accessor for FollowingAudioModel, &off_282A41AE0, type metadata accessor for FollowingAudioModel);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v25 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v26 = objc_opt_self();
    if (v12)
    {
      v27 = [v26 secondaryLabelColor];
      if (v9)
      {
        v28 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v29 = [v27 resolvedColorWithTraitCollection_];

        v27 = [v29 colorWithAlphaComponent_];
      }
    }

    else
    {
      v27 = [v26 placeholderTextColor];
    }

    [v25 setTextColor_];

    sub_2191E1978(v8, type metadata accessor for FollowingAudioModel);
  }

  else
  {
    __break(1u);
  }
}

void sub_2191DF748(uint64_t a1, char *a2, uint64_t a3)
{
  v88 = sub_219BE5C64();
  v6 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for FollowingMySportsModel(0);
  MEMORY[0x28223BE20](v81);
  v83 = (&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191E0948(a1, v83, type metadata accessor for FollowingMySportsModel);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v9 = sub_219BF6BB4();
  v10 = [objc_opt_self() configurationWithFont_];

  v11 = sub_219BF53D4();
  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  if (!v12)
  {
    __break(1u);
    return;
  }

  [a2 setAccessibilityIdentifier_];
  v82 = *(*(a3 + 472) + 16);
  v13 = *(v82 + 16);
  v89 = a2;
  if (v13)
  {
    v90 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v14 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v15 = (v82 + 32);
    v86 = *MEMORY[0x277D6D340];
    v84 = (v6 + 8);
    v85 = (v6 + 104);
    do
    {
      v21 = *v15++;
      v20 = v21;
      if (v21 == 2)
      {
        v16 = *&a2[v90];
        if (!v16)
        {
          type metadata accessor for AccessoryButton(0);
          v30 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v31 = qword_280EDB508;
          v32 = v30[qword_280EDB508];
          v30[qword_280EDB508] = 1;
          v25 = v30;
          sub_219BE61D4();
          if (v32 != v30[v31] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v34 = v87;
          v33 = v88;
          (*v85)(v87, v86, v88);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v84)(v34, v33);
          v35 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v89;
          v29 = *&v89[v90];
          *&v89[v90] = v25;
          goto LABEL_21;
        }
      }

      else
      {
        if (v20)
        {
          goto LABEL_7;
        }

        v16 = *&a2[v14];
        if (!v16)
        {
          type metadata accessor for AccessoryButton(0);
          v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v23 = qword_280EDB508;
          v24 = v22[qword_280EDB508];
          v22[qword_280EDB508] = 0;
          v25 = v22;
          sub_219BE61D4();
          if (v24 != v22[v23] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v27 = v87;
          v26 = v88;
          (*v85)(v87, v86, v88);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v84)(v27, v26);
          v28 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v89;
          v29 = *&v89[v14];
          *&v89[v14] = v25;
LABEL_21:
          v17 = v25;

          v16 = 0;
          goto LABEL_6;
        }
      }

      v17 = v16;
LABEL_6:
      v18 = *(a3 + 488);
      v19 = v16;
      sub_218EC2D64(v18);

LABEL_7:
      --v13;
    }

    while (v13);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v36 = 0;
    v37 = 0;
    v38 = v83;
  }

  else
  {
    v38 = v83;
    v36 = v83[2];
    v37 = v83[3];
  }

  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_219C09EC0;
  v40 = *v38;
  v41 = v38[1];
  *(v39 + 32) = v40;
  *(v39 + 40) = v41;
  *(v39 + 48) = v36;
  *(v39 + 56) = v37;
  swift_bridgeObjectRetain_n();
  sub_219BE5F34();
  v43 = v42;

  if (v43)
  {
    v44 = sub_219BF53D4();
  }

  else
  {
    v44 = 0;
  }

  [a2 setAccessibilityLabel_];

  v45 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v45 = v40;
  *(v45 + 1) = v41;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v47 = objc_opt_self();
  v48 = [v47 bundleForClass_];
  v49 = sub_219BDB5E4();
  v51 = v50;

  v52 = v82;
  if (!sub_219093144(0, v82) || !sub_219093144(1u, v52))
  {
    v55 = v83 + *(v81 + 40);
    v56 = *v55;
    v57 = *(v55 + 1);
    v58 = v55[16];
    v59 = v55[17];
    sub_2191E1978(v83, type metadata accessor for FollowingMySportsModel);
    if (v59 == 1 && !(v57 | v56) && !v58)
    {

      return;
    }

    v60 = sub_219BF53D4();

    v61 = type metadata accessor for TagView();
    v92.receiver = a2;
    v92.super_class = v61;
    objc_msgSendSuper2(&v92, sel_setAccessibilityValue_, v60);
    goto LABEL_53;
  }

  v53 = *(v83 + *(v81 + 36)) | (*(v83 + *(v81 + 36) + 2) << 16);
  if ((v53 & 0x600000) != 0)
  {
    LODWORD(v90) = 0;
    v54 = 0;
  }

  else if ((v53 & 0x800000) != 0)
  {
    v54 = 0;
    LODWORD(v90) = HIWORD(v53) & 1;
  }

  else
  {
    LODWORD(v90) = 0;
    v54 = 1;
  }

  v62 = v83 + *(v81 + 40);
  v63 = *v62;
  v64 = *(v62 + 1);
  v65 = v62[16];
  v66 = v62[17];
  sub_2191E1978(v83, type metadata accessor for FollowingMySportsModel);
  if (v66 == 1 && !(v64 | v63) && !v65)
  {

    v49 = 0;
    v51 = 0;
  }

  if (!v54)
  {
    v68 = 0;
    v70 = 0;
    if (!v90)
    {
      goto LABEL_46;
    }

LABEL_48:
    v73 = [v47 bundleForClass_];
    v71 = sub_219BDB5E4();
    v72 = v74;

    goto LABEL_49;
  }

  v67 = [v47 bundleForClass_];
  v68 = sub_219BDB5E4();
  v70 = v69;

  if (v90)
  {
    goto LABEL_48;
  }

LABEL_46:
  v71 = 0;
  v72 = 0;
LABEL_49:
  v75 = v89;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_219C0B8C0;
  *(v76 + 32) = v49;
  *(v76 + 40) = v51;
  *(v76 + 48) = v68;
  *(v76 + 56) = v70;
  *(v76 + 64) = v71;
  *(v76 + 72) = v72;
  sub_219BE5F34();
  v78 = v77;

  if (v78)
  {
    v60 = sub_219BF53D4();
  }

  else
  {
    v60 = 0;
  }

  v79 = type metadata accessor for TagView();
  v91.receiver = v75;
  v91.super_class = v79;
  objc_msgSendSuper2(&v91, sel_setAccessibilityValue_, v60);
LABEL_53:
}

uint64_t sub_2191E0210(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(void))
{
  v11 = a4(0);
  v23 = v11;
  v24 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  sub_2191E0948(a1, boxed_opaque_existential_1, a6);
  v13 = __swift_project_boxed_opaque_existential_1(v22, v23);
  v14 = *(v11 + 40);
  v15 = boxed_opaque_existential_1 + v14;
  if (*(boxed_opaque_existential_1 + v14 + 17) == 1)
  {
    v16 = v15[16];
    v17 = *(v15 + 1) | *v15;
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17 == 0;
    }

    if (v18)
    {
      [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    }

    else
    {
      [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    }

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  else
  {
    v19 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    sub_2190D8F20(*(v13 + v14), *(v13 + v14 + 8), *(v13 + v14 + 16) | (*(v13 + v14 + 17) << 8));
    v20 = sub_219BF53D4();

    [v19 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v19 setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

void sub_2191E03C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FollowingMySportsModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  sub_2191E0948(a1, v8, type metadata accessor for FollowingMySportsModel);
  sub_218D98194(a3, v31);
  v9 = v32;
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    swift_beginAccess();
    swift_beginAccess();
    v9 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_218D9828C(v31);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v11 = *(v6 + 32);
  v12 = v8[v11];
  sub_219534DC0(v10, v8[v11], v9 & 1);
  v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v14 = [v10 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v15 = qword_280F617F8;
    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_12:
    v19 = 0.7;
    if (v12)
    {
      v19 = 1.0;
    }

    [v13 setAlpha_];
    if (v9)
    {
      v20 = [objc_opt_self() whiteColor];
      [v13 setTintColor_];
    }

    else
    {
      [v13 setTintColor_];
    }

    goto LABEL_19;
  }

  v15 = [objc_opt_self() labelColor];
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_6:
  v16 = [v13 image];
  if (v16)
  {
    v17 = v16;
    if ([v16 renderingMode] == 2)
    {
      v18 = [objc_opt_self() placeholderTextColor];
      [v13 setTintColor_];

      [v13 setAlpha_];
      goto LABEL_19;
    }
  }

  [v13 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v21 = sub_219BF6BB4();
  v22 = [objc_opt_self() configurationWithFont_];

  v23 = sub_219BF53D4();
  v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

  if (v24)
  {

    sub_2191E0210(v8, a2, v9 & 1, type metadata accessor for FollowingMySportsModel, &off_282A53EA8, type metadata accessor for FollowingMySportsModel);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v25 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v26 = objc_opt_self();
    if (v12)
    {
      v27 = [v26 secondaryLabelColor];
      if (v9)
      {
        v28 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v29 = [v27 resolvedColorWithTraitCollection_];

        v27 = [v29 colorWithAlphaComponent_];
      }
    }

    else
    {
      v27 = [v26 placeholderTextColor];
    }

    [v25 setTextColor_];

    sub_2191E1978(v8, type metadata accessor for FollowingMySportsModel);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191E0948(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2191E09B0(uint64_t a1, char *a2, uint64_t a3)
{
  v68 = sub_219BE5C64();
  v6 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for FollowingPuzzleHubModel(0);
  MEMORY[0x28223BE20](v62);
  v61 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2191E0948(a1, v61, type metadata accessor for FollowingPuzzleHubModel);
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v9 = sub_219BF6BB4();
  v10 = [objc_opt_self() configurationWithFont_];

  v11 = sub_219BF53D4();
  v12 = [objc_opt_self() systemImageNamed:v11 withConfiguration:v10];

  if (v12)
  {

    [a2 setAccessibilityIdentifier_];
    v63 = *(*(a3 + 472) + 16);
    v13 = *(v63 + 16);
    if (v13)
    {
      v69 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
      v70 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
      v14 = (v63 + 32);
      v66 = *MEMORY[0x277D6D340];
      v64 = (v6 + 8);
      v65 = (v6 + 104);
      do
      {
        v20 = *v14++;
        v19 = v20;
        if (v20 == 2)
        {
          v15 = *&a2[v70];
          if (!v15)
          {
            type metadata accessor for AccessoryButton(0);
            v29 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v30 = qword_280EDB508;
            v31 = v29[qword_280EDB508];
            v29[qword_280EDB508] = 1;
            v24 = v29;
            sub_219BE61D4();
            if (v31 != v29[v30] || !*&v24[qword_280F620E8] || !*&v24[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v33 = v67;
            v32 = v68;
            (*v65)(v67, v66, v68);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
            sub_219BEB694();
            (*v64)(v33, v32);
            v34 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            v28 = v70;
            goto LABEL_21;
          }
        }

        else
        {
          if (v19)
          {
            goto LABEL_7;
          }

          v15 = *&a2[v69];
          if (!v15)
          {
            type metadata accessor for AccessoryButton(0);
            v21 = [swift_getObjCClassFromMetadata() buttonWithType_];
            v22 = qword_280EDB508;
            v23 = v21[qword_280EDB508];
            v21[qword_280EDB508] = 0;
            v24 = v21;
            sub_219BE61D4();
            if (v23 != v21[v22] || !*&v24[qword_280F620E8] || !*&v24[qword_280F620E0])
            {
              sub_218EC2D64(0);
            }

            v26 = v67;
            v25 = v68;
            (*v65)(v67, v66, v68);
            sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
            sub_219BEB694();
            (*v64)(v26, v25);
            v27 = sub_219BE61F4();

            swift_allocObject();
            swift_unknownObjectUnownedInit();

            v28 = v69;
LABEL_21:
            v35 = *&a2[v28];
            *&a2[v28] = v24;
            v16 = v24;

            v15 = 0;
            goto LABEL_6;
          }
        }

        v16 = v15;
LABEL_6:
        v17 = *(a3 + 488);
        v18 = v15;
        sub_218EC2D64(v17);

LABEL_7:
        --v13;
      }

      while (v13);
    }

    if (CGRectIsEmpty(*(a3 + 120)))
    {
      v36 = 0;
      v37 = 0;
      v38 = v61;
    }

    else
    {
      v38 = v61;
      v36 = v61[2];
      v37 = v61[3];
    }

    sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_219C09EC0;
    v41 = *v38;
    v40 = v38[1];
    *(v39 + 32) = *v38;
    *(v39 + 40) = v40;
    *(v39 + 48) = v36;
    *(v39 + 56) = v37;
    swift_bridgeObjectRetain_n();
    sub_219BE5F34();
    v43 = v42;

    if (v43)
    {
      v44 = sub_219BF53D4();
    }

    else
    {
      v44 = 0;
    }

    [a2 setAccessibilityLabel_];

    v45 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
    swift_beginAccess();
    *v45 = v41;
    *(v45 + 1) = v40;

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    v48 = sub_219BDB5E4();
    v50 = v49;

    v51 = v63;
    if (sub_219093144(0, v63) && sub_219093144(1u, v51))
    {
      v52 = *(v38 + *(v62 + 40));
      sub_2191E1978(v38, type metadata accessor for FollowingPuzzleHubModel);
      if (!v52)
      {

        v48 = 0;
        v50 = 0;
      }

      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_219C0B8C0;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      *(v53 + 48) = 0u;
      *(v53 + 64) = 0u;
      sub_219BE5F34();
      v55 = v54;

      if (v55)
      {
        v56 = sub_219BF53D4();
      }

      else
      {
        v56 = 0;
      }

      v59 = type metadata accessor for TagView();
      v71.receiver = a2;
      v71.super_class = v59;
      objc_msgSendSuper2(&v71, sel_setAccessibilityValue_, v56);
    }

    else
    {
      v57 = *(v38 + *(v62 + 40));
      sub_2191E1978(v38, type metadata accessor for FollowingPuzzleHubModel);
      if (!v57)
      {

        return;
      }

      v56 = sub_219BF53D4();

      v58 = type metadata accessor for TagView();
      v72.receiver = a2;
      v72.super_class = v58;
      objc_msgSendSuper2(&v72, sel_setAccessibilityValue_, v56);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191E12C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingPuzzleHubModel(0);
  v14 = v4;
  v15 = &off_282A6F6C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_2191E0948(a1, boxed_opaque_existential_1, type metadata accessor for FollowingPuzzleHubModel);
  v6 = __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = *(v4 + 40);
  if (*(boxed_opaque_existential_1 + v7))
  {
    v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    v9 = *(v6 + v7);
    if (v9)
    {
      v10 = *(v6 + *(v4 + 36));
    }

    else
    {
      v10 = 0;
    }

    sub_2190D8F20(v9, v10, (v9 == 0) << 8);
    v11 = sub_219BF53D4();

    [v8 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v8 setHidden_];
  }

  else
  {
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

void sub_2191E1424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FollowingPuzzleHubModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  sub_2191E0948(a1, v8, type metadata accessor for FollowingPuzzleHubModel);
  sub_218D98194(a3, v31);
  v9 = v32;
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1(v31, v32);
    swift_beginAccess();
    swift_beginAccess();
    v9 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_218D9828C(v31);
  }

  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v11 = *(v6 + 32);
  v12 = v8[v11];
  sub_219534DC0(v10, v8[v11], v9 & 1);
  v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v14 = [v10 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v15 = qword_280F617F8;
    if (!v14)
    {
      goto LABEL_6;
    }

LABEL_12:
    v19 = 0.7;
    if (v12)
    {
      v19 = 1.0;
    }

    [v13 setAlpha_];
    if (v9)
    {
      v20 = [objc_opt_self() whiteColor];
      [v13 setTintColor_];
    }

    else
    {
      [v13 setTintColor_];
    }

    goto LABEL_19;
  }

  v15 = [objc_opt_self() labelColor];
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_6:
  v16 = [v13 image];
  if (v16)
  {
    v17 = v16;
    if ([v16 renderingMode] == 2)
    {
      v18 = [objc_opt_self() placeholderTextColor];
      [v13 setTintColor_];

      [v13 setAlpha_];
      goto LABEL_19;
    }
  }

  [v13 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v21 = sub_219BF6BB4();
  v22 = [objc_opt_self() configurationWithFont_];

  v23 = sub_219BF53D4();
  v24 = [objc_opt_self() systemImageNamed:v23 withConfiguration:v22];

  if (v24)
  {

    sub_2191E12C0(v8, a2);
    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
    v25 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
    v26 = objc_opt_self();
    if (v12)
    {
      v27 = [v26 secondaryLabelColor];
      if (v9)
      {
        v28 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
        v29 = [v27 resolvedColorWithTraitCollection_];

        v27 = [v29 colorWithAlphaComponent_];
      }
    }

    else
    {
      v27 = [v26 placeholderTextColor];
    }

    [v25 setTextColor_];

    sub_2191E1978(v8, type metadata accessor for FollowingPuzzleHubModel);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2191E1978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2191E19D8(uint64_t *a1, char *a2, uint64_t a3)
{
  v68 = a1;
  v73 = sub_219BE5C64();
  v5 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  sub_219BF5114();
  v8 = sub_219BF5104();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v9 = sub_219BF6BB4();
  v10 = [objc_opt_self() configurationWithFont_];

  v11 = [v8 imageWithConfiguration_];
  [a2 setAccessibilityIdentifier_];
  v69 = *(*(a3 + 472) + 16);
  v12 = *(v69 + 16);
  v74 = a2;
  if (v12)
  {
    v75 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v76 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v13 = (v69 + 32);
    v72 = *MEMORY[0x277D6D340];
    v70 = (v5 + 8);
    v71 = (v5 + 104);
    do
    {
      v19 = *v13++;
      v18 = v19;
      if (v19 == 2)
      {
        v14 = *&a2[v76];
        if (!v14)
        {
          type metadata accessor for AccessoryButton(0);
          v27 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v28 = qword_280EDB508;
          v29 = v27[qword_280EDB508];
          v27[qword_280EDB508] = 1;
          v23 = v27;
          sub_219BE61D4();
          if (v29 != v27[v28] || !*&v23[qword_280F620E8] || !*&v23[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v30 = v73;
          (*v71)(v7, v72, v73);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v70)(v7, v30);
          v31 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v74;
          v26 = v76;
          goto LABEL_20;
        }
      }

      else
      {
        if (v18)
        {
          goto LABEL_6;
        }

        v14 = *&a2[v75];
        if (!v14)
        {
          type metadata accessor for AccessoryButton(0);
          v20 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v21 = qword_280EDB508;
          v22 = v20[qword_280EDB508];
          v20[qword_280EDB508] = 0;
          v23 = v20;
          sub_219BE61D4();
          if (v22 != v20[v21] || !*&v23[qword_280F620E8] || !*&v23[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v24 = v73;
          (*v71)(v7, v72, v73);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v70)(v7, v24);
          v25 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a2 = v74;
          v26 = v75;
LABEL_20:
          v32 = *&a2[v26];
          *&a2[v26] = v23;
          v15 = v23;

          v14 = 0;
          goto LABEL_5;
        }
      }

      v15 = v14;
LABEL_5:
      v16 = *(a3 + 488);
      v17 = v14;
      sub_218EC2D64(v16);

LABEL_6:
      --v12;
    }

    while (v12);
  }

  if (CGRectIsEmpty(*(a3 + 120)))
  {
    v33 = 0;
    v34 = 0;
    v35 = v68;
  }

  else
  {
    v35 = v68;
    v33 = v68[2];
    v34 = v68[3];
  }

  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09EC0;
  v37 = *v35;
  v38 = v35[1];
  *(v36 + 32) = *v35;
  *(v36 + 40) = v38;
  *(v36 + 48) = v33;
  *(v36 + 56) = v34;
  swift_bridgeObjectRetain_n();
  sub_219BE5F34();
  v40 = v39;

  if (v40)
  {
    v41 = sub_219BF53D4();
  }

  else
  {
    v41 = 0;
  }

  [a2 setAccessibilityLabel_];

  v42 = &a2[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v42 = v37;
  *(v42 + 1) = v38;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v44 = objc_opt_self();
  v45 = [v44 bundleForClass_];
  v46 = sub_219BDB5E4();
  v48 = v47;

  v49 = v69;
  if (sub_219093144(0, v69) && sub_219093144(1u, v49))
  {
    v50 = *(v35 + 61);
    if ((v50 & 0x60) != 0)
    {
      v51 = 0;
      v52 = 0;
      if ((*(v35 + 57) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v52 = v50 >= 0;
      v51 = (v50 < 0) & v50;
      if ((*(v35 + 57) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    if (*(v35 + 5) == 0 && !*(v35 + 56))
    {

      v46 = 0;
      v48 = 0;
    }

LABEL_41:
    if (v52)
    {
      v55 = [v44 bundleForClass_];
      v56 = sub_219BDB5E4();
      v76 = v57;

      if (!v51)
      {
LABEL_43:
        v58 = 0;
        v59 = 0;
LABEL_46:
        v62 = v74;
        v63 = swift_allocObject();
        *(v63 + 16) = xmmword_219C0B8C0;
        *(v63 + 32) = v46;
        *(v63 + 40) = v48;
        v64 = v76;
        *(v63 + 48) = v56;
        *(v63 + 56) = v64;
        *(v63 + 64) = v58;
        *(v63 + 72) = v59;
        sub_219BE5F34();
        v66 = v65;

        if (v66)
        {
          v53 = sub_219BF53D4();
        }

        else
        {
          v53 = 0;
        }

        v67 = type metadata accessor for TagView();
        v77.receiver = v62;
        v77.super_class = v67;
        objc_msgSendSuper2(&v77, sel_setAccessibilityValue_, v53);
        goto LABEL_50;
      }
    }

    else
    {
      v56 = 0;
      v76 = 0;
      if (!v51)
      {
        goto LABEL_43;
      }
    }

    v75 = v56;
    v60 = [v44 bundleForClass_];
    v56 = v75;
    v58 = sub_219BDB5E4();
    v59 = v61;

    goto LABEL_46;
  }

  if ((*(v35 + 57) & 1) != 0 && *(v35 + 5) == 0 && !*(v35 + 56))
  {

    return;
  }

  v53 = sub_219BF53D4();

  v54 = type metadata accessor for TagView();
  v78.receiver = v74;
  v78.super_class = v54;
  objc_msgSendSuper2(&v78, sel_setAccessibilityValue_, v53);
LABEL_50:
}

uint64_t sub_2191E2394(uint64_t a1, uint64_t a2, char a3)
{
  v23[3] = &type metadata for FollowingFoodModel;
  v23[4] = &off_282A42E50;
  v6 = swift_allocObject();
  v23[0] = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 57);
  v11 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v11;
  v6[3] = *(a1 + 32);
  *(v6 + 62) = *(a1 + 46);
  v12 = __swift_project_boxed_opaque_existential_1(v23, &type metadata for FollowingFoodModel);
  if (v10)
  {
    if (v8 | v7 || v9)
    {
      v20 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView);
      sub_2189CEE20(a1, v22);
      [v20 setHidden_];
    }

    else
    {
      v13 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView);
      sub_2189CEE20(a1, v22);
      [v13 setHidden_];
    }

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  }

  else
  {
    v14 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel);
    v15 = v12[5];
    v16 = v12[6];
    v17 = *(v12 + 56);
    v18 = *(v12 + 57);
    sub_2189CEE20(a1, v22);
    sub_2190D8F20(v15, v16, v17 | (v18 << 8));
    v19 = sub_219BF53D4();

    [v14 setText_];

    [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
    [v14 setHidden_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

void sub_2191E2560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v25);
  v5 = v26;
  if (v26)
  {
    __swift_project_boxed_opaque_existential_1(v25, v26);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v25);
  }

  else
  {
    sub_218D9828C(v25);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  v7 = *(a1 + 58);
  sub_219534DC0(v6, *(a1 + 58), v5 & 1);
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v9 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v10 = qword_280F617F8;
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_12:
    v14 = 0.7;
    if (v7)
    {
      v14 = 1.0;
    }

    [v8 setAlpha_];
    if (v5)
    {
      v15 = [objc_opt_self() whiteColor];
      [v8 setTintColor_];
    }

    else
    {
      [v8 setTintColor_];
    }

    goto LABEL_19;
  }

  v10 = [objc_opt_self() labelColor];
  if (v9)
  {
    goto LABEL_12;
  }

LABEL_6:
  v11 = [v8 image];
  if (v11)
  {
    v12 = v11;
    if ([v11 renderingMode] == 2)
    {
      v13 = [objc_opt_self() placeholderTextColor];
      [v8 setTintColor_];

      [v8 setAlpha_];
      goto LABEL_19;
    }
  }

  [v8 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_219BF5114();
  v16 = sub_219BF5104();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v17 = sub_219BF6BB4();
  v18 = [objc_opt_self() configurationWithFont_];

  v19 = [v16 imageWithConfiguration_];
  sub_2191E2394(a1, a2, v5 & 1);
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
  v20 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
  v21 = objc_opt_self();
  if (v7)
  {
    v22 = [v21 secondaryLabelColor];
    if (v5)
    {
      v23 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v24 = [v22 resolvedColorWithTraitCollection_];

      v22 = [v24 colorWithAlphaComponent_];
    }
  }

  else
  {
    v22 = [v21 placeholderTextColor];
  }

  [v20 setTextColor_];
}

void sub_2191E2A08(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v59 = a1;
  v65 = sub_219BE5C64();
  v7 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED0C4();
  sub_219BF5114();
  v10 = sub_219BF5094();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v11 = sub_219BF6BB4();
  v12 = [objc_opt_self() configurationWithFont_];

  v13 = [v10 imageWithConfiguration_];
  [a3 setAccessibilityIdentifier_];
  v60 = *(*(a4 + 472) + 16);
  v14 = *(v60 + 16);
  v66 = a3;
  if (v14)
  {
    v67 = OBJC_IVAR____TtC7NewsUI27TagView__likeButton;
    v68 = OBJC_IVAR____TtC7NewsUI27TagView__shortcutButton;
    v15 = (v60 + 32);
    v63 = *MEMORY[0x277D6D340];
    v61 = (v7 + 8);
    v62 = (v7 + 104);
    v64 = a2;
    do
    {
      v21 = *v15++;
      v20 = v21;
      if (v21 == 2)
      {
        v16 = *&a3[v68];
        if (!v16)
        {
          type metadata accessor for AccessoryButton(0);
          v29 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v30 = qword_280EDB508;
          v31 = v29[qword_280EDB508];
          v29[qword_280EDB508] = 1;
          v25 = v29;
          sub_219BE61D4();
          if (v31 != v29[v30] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v32 = v65;
          (*v62)(v9, v63, v65);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v61)(v9, v32);
          v33 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a3 = v66;
          v28 = v68;
          goto LABEL_20;
        }
      }

      else
      {
        if (v20)
        {
          goto LABEL_6;
        }

        v16 = *&a3[v67];
        if (!v16)
        {
          type metadata accessor for AccessoryButton(0);
          v22 = [swift_getObjCClassFromMetadata() buttonWithType_];
          v23 = qword_280EDB508;
          v24 = v22[qword_280EDB508];
          v22[qword_280EDB508] = 0;
          v25 = v22;
          sub_219BE61D4();
          if (v24 != v22[v23] || !*&v25[qword_280F620E8] || !*&v25[qword_280F620E0])
          {
            sub_218EC2D64(0);
          }

          v26 = v65;
          (*v62)(v9, v63, v65);
          sub_2191D9030(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
          sub_219BEB694();
          (*v61)(v9, v26);
          v27 = sub_219BE61F4();

          swift_allocObject();
          swift_unknownObjectUnownedInit();

          a3 = v66;
          v28 = v67;
LABEL_20:
          v34 = *&a3[v28];
          *&a3[v28] = v25;
          v17 = v25;

          v16 = 0;
          a2 = v64;
          goto LABEL_5;
        }
      }

      v17 = v16;
LABEL_5:
      v18 = *(a4 + 488);
      v19 = v16;
      sub_218EC2D64(v18);

LABEL_6:
      --v14;
    }

    while (v14);
  }

  if (CGRectIsEmpty(*(a4 + 120)))
  {
    v35 = 0;
    a2 = 0;
  }

  else
  {

    v35 = v59;
  }

  sub_2191CF228(0, &qword_280E8B740, sub_2186E3374, MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09EC0;
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v38 = objc_opt_self();
  v39 = [v38 bundleForClass_];
  v40 = sub_219BDB5E4();
  v42 = v41;

  *(v36 + 32) = v40;
  *(v36 + 40) = v42;
  *(v36 + 48) = v35;
  *(v36 + 56) = a2;
  sub_219BE5F34();
  v44 = v43;

  if (v44)
  {
    v45 = sub_219BF53D4();
  }

  else
  {
    v45 = 0;
  }

  v46 = v66;
  [v66 setAccessibilityLabel_];

  v47 = [v38 bundleForClass_];
  v48 = sub_219BDB5E4();
  v50 = v49;

  v51 = &v46[OBJC_IVAR____TtC7NewsUI27TagView_tsaxAccessibilityLabelForReordering];
  swift_beginAccess();
  *v51 = v48;
  v51[1] = v50;

  v52 = [v38 bundleForClass_];
  sub_219BDB5E4();

  v53 = v60;
  if (sub_219093144(0, v60) && sub_219093144(1u, v53))
  {
    sub_219BE5F34();
    if (v54)
    {
      v55 = sub_219BF53D4();
    }

    else
    {
      v55 = 0;
    }

    v56 = v66;
    v57 = type metadata accessor for TagView();
    v69.receiver = v56;
    v69.super_class = v57;
    objc_msgSendSuper2(&v69, sel_setAccessibilityValue_, v55);
  }
}

void sub_2191E32A4(char a1, uint64_t a2, uint64_t a3)
{
  sub_218D98194(a3, v24);
  v5 = v25;
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(v24, v25);
    swift_beginAccess();
    swift_beginAccess();
    v5 = sub_219BE74D4();
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {
    sub_218D9828C(v24);
  }

  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_titleLabel);
  sub_219534DC0(v6, a1 & 1, v5 & 1);
  v7 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageView);
  v8 = [v6 isEnabled];
  if ((sub_219BED0C4() & 1) == 0)
  {
    if (qword_280E8DA88 != -1)
    {
      swift_once();
    }

    v9 = qword_280F617F8;
    if (!v8)
    {
      goto LABEL_6;
    }

LABEL_12:
    v13 = 0.7;
    if (a1)
    {
      v13 = 1.0;
    }

    [v7 setAlpha_];
    if (v5)
    {
      v14 = [objc_opt_self() whiteColor];
      [v7 setTintColor_];
    }

    else
    {
      [v7 setTintColor_];
    }

    goto LABEL_19;
  }

  v9 = [objc_opt_self() labelColor];
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_6:
  v10 = [v7 image];
  if (v10)
  {
    v11 = v10;
    if ([v10 renderingMode] == 2)
    {
      v12 = [objc_opt_self() placeholderTextColor];
      [v7 setTintColor_];

      [v7 setAlpha_];
      goto LABEL_19;
    }
  }

  [v7 setAlpha_];
LABEL_19:

  sub_219BED0C4();
  sub_219BF5114();
  v15 = sub_219BF5094();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v16 = sub_219BF6BB4();
  v17 = [objc_opt_self() configurationWithFont_];

  v18 = [v15 imageWithConfiguration_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_badgeView) setHidden_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_countLabel) setHidden_];
  [*(a2 + OBJC_IVAR____TtC7NewsUI27TagView_imageBorder) setHidden_];
  v19 = *(a2 + OBJC_IVAR____TtC7NewsUI27TagView_subtitleLabel);
  v20 = objc_opt_self();
  if (a1)
  {
    v21 = [v20 secondaryLabelColor];
    if (v5)
    {
      v22 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
      v23 = [v21 resolvedColorWithTraitCollection_];

      v21 = [v23 colorWithAlphaComponent_];
    }
  }

  else
  {
    v21 = [v20 placeholderTextColor];
  }

  [v19 setTextColor_];
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2191E379C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 89))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 88);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2191E37E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

unint64_t sub_2191E3858()
{
  v1 = *(v0 + 88);
  if (v1 <= 2)
  {
    v5 = 0x6C656E6E616863;
    if (v1 != 1)
    {
      v5 = 0x6E656D6D6F636572;
    }

    if (*(v0 + 88))
    {
      return v5;
    }

    else
    {
      return 0x486567617373656DLL;
    }
  }

  else
  {
    v2 = 0xD000000000000010;
    if (v1 != 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0x7365727574616566;
    if (v1 != 3)
    {
      v3 = 0x6C69616D65;
    }

    if (*(v0 + 88) <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2191E3954(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 9) = *(a1 + 73);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 9) = *(a2 + 73);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return sub_2191E3A50(v7, v9) & 1;
}

uint64_t sub_2191E3A50(uint64_t a1, uint64_t a2)
{
  v2 = 0xED00007265646165;
  v3 = 0x486567617373656DLL;
  v4 = *(a1 + 88);
  if (v4 <= 2)
  {
    v11 = 0xE700000000000000;
    v12 = 0x6C656E6E616863;
    if (v4 != 1)
    {
      v12 = 0x6E656D6D6F636572;
      v11 = 0xEB00000000646564;
    }

    if (*(a1 + 88))
    {
      v9 = v12;
    }

    else
    {
      v9 = 0x486567617373656DLL;
    }

    if (v4)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xED00007265646165;
    }
  }

  else
  {
    v5 = 0xD000000000000010;
    v6 = 0x8000000219D10830;
    if (v4 != 5)
    {
      v5 = 0xD000000000000015;
      v6 = 0x8000000219D10810;
    }

    v7 = 0xE800000000000000;
    v8 = 0x7365727574616566;
    if (v4 != 3)
    {
      v8 = 0x6C69616D65;
      v7 = 0xE500000000000000;
    }

    if (*(a1 + 88) <= 4u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v4 <= 4)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }
  }

  v13 = *(a2 + 88);
  if (v13 <= 2)
  {
    if (*(a2 + 88))
    {
      if (v13 == 1)
      {
        v2 = 0xE700000000000000;
        if (v9 != 0x6C656E6E616863)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }

      v3 = 0x6E656D6D6F636572;
      v2 = 0xEB00000000646564;
    }

    if (v9 != v3)
    {
LABEL_42:
      v15 = sub_219BF78F4();
      goto LABEL_43;
    }
  }

  else if (*(a2 + 88) > 4u)
  {
    if (v13 == 5)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v14 = 0xD000000000000015;
    }

    if (v13 == 5)
    {
      v2 = 0x8000000219D10830;
    }

    else
    {
      v2 = 0x8000000219D10810;
    }

    if (v9 != v14)
    {
      goto LABEL_42;
    }
  }

  else if (v13 == 3)
  {
    v2 = 0xE800000000000000;
    if (v9 != 0x7365727574616566)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v2 = 0xE500000000000000;
    if (v9 != 0x6C69616D65)
    {
      goto LABEL_42;
    }
  }

LABEL_39:
  if (v10 != v2)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_2191E3C88()
{
  sub_2191E3EB0(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void *sub_2191E3CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE6234();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OfflineDownloadMonitor();
  v8 = swift_allocObject();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D560], v4);
  sub_2191E3E58(0);
  swift_allocObject();
  v8[4] = sub_219BE2174();
  v10[1] = 0;
  sub_2191E3EB0(0, &qword_280EE7AB0, MEMORY[0x277D839F8], MEMORY[0x277D6CB78]);
  swift_allocObject();
  v8[5] = sub_219BE2174();
  v8[2] = a1;
  v8[3] = a2;

  return v8;
}

void sub_2191E3E58(uint64_t a1)
{
  if (!qword_280EE7AF8)
  {
    sub_219BE6234();
    v1 = sub_219BE21C4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7AF8);
    }
  }
}

void sub_2191E3EB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_2191E3F58(void **a1, void (*a2)(__int128 *__return_ptr, void *), uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v70 = a4;
  sub_21896FA3C(0);
  v71 = *(v10 - 8);
  v11 = *(v71 + 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v69 - v14;
  MEMORY[0x28223BE20](v16);
  v69 = &v69 - v17;
  *&v19 = MEMORY[0x28223BE20](v18).n128_u64[0];
  v21 = &v69 - v20;
  v22 = *a1;
  if ([v22 areMagazinesEnabled] && (a2(&v82, v22), v23 = v82, (~v82 & 0xF000000000000007) != 0))
  {
    v43 = sub_218DB24B0();
    v44 = *(a5 + 56);
    if (v43)
    {
      v45 = sub_219BDFA44();
      (*(*(v45 - 8) + 56))(v21, 1, 1, v45);
      v84 = 0;
      v82 = 0u;
      v83 = 0u;
      v81 = 0;
      v79 = 0u;
      v80 = 0u;
      v78 = v44;
      sub_2187B171C(&v79, &v73, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (*(&v74 + 1))
      {
        sub_21875F93C(&v73, &v75);
        *&v73 = v23;
        v46 = sub_2194DA78C(&v75);
        v48 = v47;
        v50 = v49;
        __swift_destroy_boxed_opaque_existential_1(&v75);
      }

      else
      {
        sub_2187B1CC0(&v73, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
        if (qword_280ED32D0 != -1)
        {
          swift_once();
        }

        v46 = qword_280ED32D8;
        v48 = qword_280ED32E0;
        v50 = qword_280ED32E8;

        sub_2188202A8(v48);
      }

      v72 = v23;
      v74 = 0u;
      v73 = 0u;
      v58 = v69;
      sub_2189B4E2C(v21, v69);
      sub_2187B171C(&v82, &v75, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      v59 = v71[80];
      v71 = v21;
      v60 = (v59 + 24) & ~v59;
      v61 = (v11 + v60 + 7) & 0xFFFFFFFFFFFFFFF8;
      v62 = (v61 + 47) & 0xFFFFFFFFFFFFFFF8;
      v70 = v23;
      v63 = swift_allocObject();
      *(v63 + 16) = 0;
      sub_2189B4EAC(v58, v63 + v60);
      v64 = v63 + v61;
      v65 = v76;
      *v64 = v75;
      *(v64 + 16) = v65;
      *(v64 + 32) = v77;
      v66 = (v63 + v62);
      v67 = (v63 + ((v62 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v66 = 0;
      v66[1] = 0;
      *v67 = v46;
      v67[1] = v48;
      v67[2] = v50;

      sub_2188202A8(v48);
      sub_2186CF94C(0);
      sub_2189B4DD4();
      v68 = v85;
      sub_219BEB464();
      if (v68)
      {

        sub_218806FD0(&v73);
        sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE2FF4();

        sub_218970170(v70);

        v40 = v48;
        v41 = v50;
        goto LABEL_12;
      }

      sub_2187FABEC(v48, v50);
      sub_2187B1CC0(&v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v82, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218A42D80(v71);
      sub_218806FD0(&v73);
      return sub_218970170(v70);
    }

    else
    {
      *&v82 = *(a5 + 56);
      *&v79 = v23;
      sub_2186CF94C(0);
      sub_2189B4DD4();
      v51 = v85;
      sub_219BEB484();
      if (v51)
      {
        LODWORD(v85) = sub_219BF61F4();
        sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_219C09EC0;
        *&v82 = 0;
        *(&v82 + 1) = 0xE000000000000000;
        *&v79 = v23;
        sub_219BF7484();
        v53 = v82;
        v54 = MEMORY[0x277D837D0];
        *(v52 + 56) = MEMORY[0x277D837D0];
        v55 = sub_2186FC3BC();
        *(v52 + 64) = v55;
        *(v52 + 32) = v53;
        *&v82 = 0;
        *(&v82 + 1) = 0xE000000000000000;
        *&v79 = v51;
        sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
        sub_219BF7484();
        v56 = v82;
        *(v52 + 96) = v54;
        *(v52 + 104) = v55;
        *(v52 + 72) = v56;
        sub_2186C66AC();
        v57 = sub_219BF6F44();
        sub_219BE5314("Error while trying to navigate to activity %{public}@: %{public}@", 65, 2, &dword_2186C1000, v57, v85, v52);
        sub_218970170(v23);
      }

      else
      {
        return sub_218970170(v23);
      }
    }
  }

  else
  {
    v24 = *(a5 + 56);
    v25 = swift_allocObject();
    sub_218718690(a6, v25 + 16);
    *(v25 + 56) = 1;
    v26 = sub_219BDFA44();
    v27 = v15;
    (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v81 = 0;
    v79 = 0u;
    v80 = 0u;
    v78 = v24;
    sub_2187B171C(&v79, &v73, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v74 + 1))
    {
      sub_21875F93C(&v73, &v75);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v28 = qword_280ED32D8;
      v29 = qword_280ED32E0;
      v30 = qword_280ED32E8;

      sub_2188202A8(v29);
      __swift_destroy_boxed_opaque_existential_1(&v75);
    }

    else
    {
      sub_2187B1CC0(&v73, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v28 = qword_280ED32D8;
      v29 = qword_280ED32E0;
      v30 = qword_280ED32E8;

      sub_2188202A8(v29);
    }

    v72 = v25;
    v74 = 0u;
    v73 = 0u;
    sub_2189B4E2C(v27, v12);
    sub_2187B171C(&v82, &v75, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v31 = (v71[80] + 24) & ~v71[80];
    v71 = v27;
    v32 = (v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = (v32 + 47) & 0xFFFFFFFFFFFFFFF8;
    v70 = v25;
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    sub_2189B4EAC(v12, v34 + v31);
    v35 = v34 + v32;
    v36 = v76;
    *v35 = v75;
    *(v35 + 16) = v36;
    *(v35 + 32) = v77;
    v37 = (v34 + v33);
    v38 = (v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v37 = 0;
    v37[1] = 0;
    *v38 = v28;
    v38[1] = v29;
    v38[2] = v30;

    sub_2188202A8(v29);
    sub_2186CF94C(0);
    sub_2189B4DD4();
    v39 = v85;
    sub_219BEB464();
    if (v39)
    {

      sub_218806FD0(&v73);
      sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();

      v40 = v29;
      v41 = v30;
LABEL_12:
      sub_2187FABEC(v40, v41);
      sub_2187B1CC0(&v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      sub_2187B1CC0(&v82, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218A42D80(v71);
      return result;
    }

    sub_2187FABEC(v29, v30);
    sub_2187B1CC0(&v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(&v82, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_218A42D80(v71);
    sub_218806FD0(&v73);
  }

  return result;
}

void sub_2191E4A34(uint64_t a1)
{
  v1 = sub_219BF61F4();
  sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_2186C66AC();
  v3 = sub_219BF6F44();
  sub_219BE5314("Failed to fetch paid bundle config to navigate to magazine content, error=%{public}@", 84, 2, &dword_2186C1000, v3, v1, v2);
}

uint64_t sub_2191E4B88()
{
  sub_2188134F8(0, &qword_280EE4770, MEMORY[0x277D6E2A0]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_219BE8CD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8CE4();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_218819B4C(v2, &qword_280EE4770, MEMORY[0x277D6E2A0]);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_219BE8CB4();
    result = (*(v4 + 8))(v6, v3);
    if (v7)
    {
      return result;
    }
  }

  result = sub_219BE8D14();
  if (result)
  {
    return sub_219BE8D64();
  }

  return result;
}

double sub_2191E4D50@<D0>(void **a1@<X0>, double *a2@<X1>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MastheadViewBackground(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v202 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v202 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = (&v202 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = &v202 - v18;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v226 = v4;
    if (sub_219BED0C4())
    {
      if (sub_219BE8D14())
      {
        v227 = 72.0;
        goto LABEL_11;
      }

      sub_219BE8D34();
      v22 = v23 + 72.0;
    }

    else
    {
      sub_2191E4B88();
      v22 = 180.0 - v21;
    }

    v227 = v22;
LABEL_11:
    v212 = v13;
    v24 = sub_219BE8D54();
    sub_218F95F74(a1, v24);
    v229 = v25;
    v27 = v26;

    v230 = a1[1];
    v28 = [v230 sportsTheme];
    if (v28)
    {
      v29 = [v28 sportsLogoMastheadLeadingOffset];
      swift_unknownObjectRelease();
      v30 = v29;
    }

    else
    {
      v30 = 0.0;
    }

    v31 = v27;
    v32 = sub_219BE8D14();
    v33 = 16.0;
    if ((v32 & 1) == 0)
    {
      sub_219BE8D24();
    }

    v34 = v30 + v33;
    v35 = sub_219BE8D54();
    sub_218F9605C(a1, v35);
    v37 = v36;

    sub_2191E71F4(a1);
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = sub_2191E65D0(a1);
    sub_219BE8DA4();
    Width = CGRectGetWidth(v237);
    v228 = v37;
    y = v34;
    v48 = Width - v229 - v37 - v34;
    sub_219BE8D24();
    v50 = v48 - v49;
    v214 = v39;
    v238.origin.x = v39;
    v218 = v41;
    v238.origin.y = v41;
    v219 = v43;
    v238.size.width = v43;
    v220 = v45;
    v238.size.height = v45;
    v51 = CGRectGetWidth(v238);
    v52 = sub_2191E7568(a1, v50 - v51 - v46);
    v54 = v53;
    v56 = v55;
    v225 = v52;
    v57 = sub_219BE8D54();
    v58 = sub_218F95C74(a1, v57);

    if (v58)
    {
      v59 = v58;
      v60 = sub_219BF6794();
      [v60 lineHeight];

      sub_219BF6784();
      v62 = v61;
      v64 = v63;
    }

    else
    {
      v62 = 0.0;
      v64 = 0.0;
    }

    v215 = v54;
    if (v54 > v62)
    {
      v65 = v54;
    }

    else
    {
      v65 = v62;
    }

    v66 = v229 + v228 + v65;
    sub_2191E7898(v66);
    v68 = v227 + v67;
    v69 = v31;
    v70 = v68 - v31;
    v71 = v56;
    v227 = v64;
    v72 = (v68 - (v56 + v64)) * 0.5;
    if ([v230 sportsType] == 3 && (objc_msgSend(v230, sel_sportsLeagueType) & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v73 = v227 + v72;
    }

    else
    {
      v73 = v72;
      v72 = v71 + v72;
    }

    v74 = v70 * 0.5;
    v75 = *a2;
    v217 = *(a2 + 1);
    v221 = sub_2191E7700(a1);
    v222 = v76;
    v223 = v77;
    v224 = v78;
    v79 = sub_219BE8D54();
    v80 = [v79 horizontalSizeClass];

    v213 = v75;
    if (v80 == 2)
    {
      v239.origin.x = sub_2191E7BBC(a1, y, v75, v66);
      v239.origin.y = v74;
      v239.size.width = v229;
      v239.size.height = v69;
      v240 = CGRectIntegral(v239);
      x = v240.origin.x;
      y = v240.origin.y;
      v229 = v240.size.width;
      height = v240.size.height;
      v241.origin.x = v228 + CGRectGetMaxX(v240);
      v241.origin.y = v73;
      v241.size.width = v215;
      v241.size.height = v71;
      v242 = CGRectIntegral(v241);
      v228 = v242.origin.x;
      v215 = v242.origin.y;
      v212 = *&v242.size.width;
      v211 = v242.size.height;
      v243.origin.x = CGRectGetMinX(v242);
      v243.origin.y = v72;
      v243.size.width = v62;
      v243.size.height = v227;
      v244 = CGRectIntegral(v243);
      v227 = v244.origin.x;
      v210 = v244.origin.y;
      v209 = v244.size.width;
      v208 = v244.size.height;
      sub_219BE8DA4();
      v83 = CGRectGetWidth(v245);
      sub_219BE8D24();
      v85 = v83 - v84;
      v86 = v214;
      v246.origin.x = v214;
      v87 = v218;
      v246.origin.y = v218;
      v88 = v219;
      v246.size.width = v219;
      v89 = v220;
      v246.size.height = v220;
      v90 = v85 - CGRectGetWidth(v246);
      v206 = x;
      v247.origin.x = x;
      v247.origin.y = y;
      v247.size.width = v229;
      v207 = height;
      v247.size.height = height;
      MidY = CGRectGetMidY(v247);
      v248.origin.x = v86;
      v248.origin.y = v87;
      v248.size.width = v88;
      v248.size.height = v89;
      v92 = MidY + CGRectGetHeight(v248) * -0.5;
      v249.origin.x = v86;
      v249.origin.y = v87;
      v249.size.width = v88;
      v249.size.height = v89;
      v93 = CGRectGetWidth(v249);
      v250.origin.x = v86;
      v250.origin.y = v87;
      v250.size.width = v88;
      v250.size.height = v89;
      v251.size.height = CGRectGetHeight(v250);
      v251.origin.x = v90;
      v251.origin.y = v92;
      v251.size.width = v93;
      v94 = v213;
      v252 = CGRectIntegral(v251);
      v95 = v252.origin.x;
      v96 = v252.origin.y;
      v220 = v252.size.width;
      v219 = v252.size.height;
      v97 = *a1;
      swift_unknownObjectRetain();
      v98 = COERCE_DOUBLE(sub_219BE8D54());
      v99 = __swift_project_boxed_opaque_existential_1(v226 + 3, v226[6]);
      sub_218718690(*v99 + 16, &v234);
      *v16 = 0.0;
      v16[1] = 0.0;
      v100 = v217;
      v16[2] = v94;
      *(v16 + 3) = v100;
      sub_218718690(&v234, v16 + v8[12]);
      sub_219BF6394();
      swift_getObjectType();
      v101 = FCTagProviding.forceBasicTagMasthead.getter();
      swift_unknownObjectRelease();
      if ((v101 & 1) == 0 && [v97 theme])
      {
        v226 = v97;
        *&v102 = COERCE_DOUBLE(swift_getObjectType());
        [*&v98 horizontalSizeClass];
        [*&v98 userInterfaceIdiom];
        v103 = sub_219BF6144();
        if (v103)
        {
          v104 = v103;
          [*&v98 horizontalSizeClass];
          v218 = v98;
          [*&v98 userInterfaceIdiom];
          v205 = *&v102;
          v105 = sub_219BF6174();
          v214 = v96;
          if (!v105)
          {
            v105 = v104;
          }

          v106 = v105;
          MaxY = COERCE_DOUBLE(sub_21897A4D4());
          v232 = MaxY;
          v107 = sub_2191E7E84(&qword_280E8E780, sub_21897A4D4, MEMORY[0x277D34738]);
          v233 = v107;
          v231 = v104;
          v204 = COERCE_DOUBLE(v104);
          v98 = v218;
          [*&v218 displayScale];
          sub_219BE8814();
          swift_allocObject();
          *(v16 + v8[8]) = sub_219BE8804();
          v232 = MaxY;
          v233 = v107;
          v231 = v106;
          v108 = v106;
          [*&v98 displayScale];
          swift_allocObject();
          *(v16 + v8[9]) = sub_219BE8804();
          [*&v98 horizontalSizeClass];
          [*&v98 userInterfaceIdiom];
          v109 = sub_219BF6184();
          swift_unknownObjectRelease();

          v96 = v214;
          v97 = v226;
          goto LABEL_41;
        }

        swift_unknownObjectRelease();
        v97 = v226;
      }

      *(v16 + v8[8]) = 0.0;
      *(v16 + v8[9]) = 0.0;
      v109 = 4;
LABEL_41:
      *(v16 + v8[10]) = v109;
      v145 = [v230 theme];
      if (v145 && (v146 = [v145 navigationChromeBackgroundGradient], swift_unknownObjectRelease(), v146))
      {
        v226 = v97;
        v218 = v98;
        v147 = v8[6];
        v148 = v146;
        sub_219BE73D4();
        v149 = sub_219BE7434();
        v150 = *(*(v149 - 8) + 56);
        v150(v16 + v147, 0, 1, v149);
        v151 = [v230 theme];
        if (!v151 || (v152 = [v151 darkStyleNavigationChromeBackgroundGradient], swift_unknownObjectRelease(), !v152))
        {
          v153 = v148;
        }

        v154 = v8[7];
        sub_219BE73D4();

        v150(v16 + v154, 0, 1, v149);
        v98 = v218;
        v97 = v226;
      }

      else
      {
        v155 = v8[6];
        v156 = sub_219BE7434();
        v157 = *(*(v156 - 8) + 56);
        v157(v16 + v155, 1, 1, v156);
        v157(v16 + v8[7], 1, 1, v156);
      }

      v158 = __swift_project_boxed_opaque_existential_1(&v234, v235);
      v159 = sub_2191E6D9C(v97, *v158);
      v161 = v160;
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(&v234);
      *(v16 + 4) = v159;
      *(v16 + v8[11]) = v161 & 1;
      sub_2191E7B58(v16, v19);
      *a4 = v94;
      *(a4 + 8) = v100;
      v162 = y;
      *(a4 + 16) = v206;
      *(a4 + 24) = v162;
      v163 = v207;
      *(a4 + 32) = v229;
      *(a4 + 40) = v163;
      v164 = v215;
      *(a4 + 48) = v228;
      *(a4 + 56) = v164;
      v165 = v211;
      *(a4 + 64) = v212;
      *(a4 + 72) = v165;
      *(a4 + 80) = v225 & 1;
      v166 = v210;
      *(a4 + 88) = v227;
      *(a4 + 96) = v166;
      v167 = v208;
      *(a4 + 104) = v209;
      *(a4 + 112) = v167;
      v168 = v222;
      *(a4 + 120) = v221;
      *(a4 + 128) = v168;
      v169 = v224;
      *(a4 + 136) = v223;
      *(a4 + 144) = v169;
      *(a4 + 152) = v95;
      *(a4 + 160) = v96;
      v170 = v219;
      *(a4 + 168) = v220;
      *(a4 + 176) = v170;
      v171 = type metadata accessor for NameLogoMastheadViewLayoutAttributes(0);
      v172 = a4 + v171[11];
      v173 = v19;
LABEL_59:
      sub_2191E7B58(v173, v172);
      v200 = (a4 + v171[12]);
      result = 0.0;
      *v200 = 0u;
      v200[1] = 0u;
      v201 = (a4 + v171[13]);
      *v201 = 0u;
      v201[1] = 0u;
      return result;
    }

    v253.origin.x = y;
    v253.origin.y = v74;
    v253.size.width = v229;
    v253.size.height = v69;
    v254 = CGRectIntegral(v253);
    v110 = v254.origin.x;
    y = v254.origin.y;
    v229 = v254.size.width;
    v111 = v254.size.height;
    v255.origin.x = v228 + CGRectGetMaxX(v254);
    v255.origin.y = v73;
    v255.size.width = v215;
    v255.size.height = v71;
    v256 = CGRectIntegral(v255);
    v215 = v256.origin.x;
    v211 = v256.origin.y;
    v210 = v256.size.width;
    v209 = v256.size.height;
    v257.origin.x = CGRectGetMinX(v256);
    v257.origin.y = v72;
    v257.size.width = v62;
    v257.size.height = v227;
    v258 = CGRectIntegral(v257);
    v208 = v258.origin.x;
    v207 = v258.origin.y;
    v206 = v258.size.width;
    v205 = v258.size.height;
    sub_219BE8DA4();
    v112 = CGRectGetWidth(v259);
    sub_219BE8D24();
    v114 = v112 - v113;
    v115 = v214;
    v260.origin.x = v214;
    v116 = v218;
    v260.origin.y = v218;
    v117 = v219;
    v260.size.width = v219;
    v118 = v220;
    v260.size.height = v220;
    v204 = v114 - CGRectGetWidth(v260);
    v261.origin.x = v110;
    v119 = y;
    v261.origin.y = y;
    v120 = v229;
    v261.size.width = v229;
    v261.size.height = v111;
    MaxY = CGRectGetMaxY(v261);
    v227 = v110;
    v262.origin.x = v110;
    v262.origin.y = v119;
    v262.size.width = v120;
    v228 = v111;
    v262.size.height = v111;
    v121 = CGRectGetHeight(v262) * 0.5;
    v263.origin.x = v115;
    v263.origin.y = v116;
    v263.size.width = v117;
    v263.size.height = v118;
    v122 = MaxY - (v121 + CGRectGetHeight(v263) * 0.5);
    v264.origin.x = v115;
    v123 = v115;
    v264.origin.y = v116;
    v264.size.width = v117;
    v264.size.height = v118;
    v124 = CGRectGetWidth(v264);
    v265.origin.x = v123;
    v265.origin.y = v116;
    v265.size.width = v117;
    v265.size.height = v118;
    v266.size.height = CGRectGetHeight(v265);
    v266.origin.x = v204;
    v266.origin.y = v122;
    v266.size.width = v124;
    v125 = v213;
    v267 = CGRectIntegral(v266);
    v126 = v267.origin.x;
    v127 = v267.origin.y;
    v128 = v267.size.width;
    v129 = v267.size.height;
    v130 = *a1;
    swift_unknownObjectRetain();
    v131 = sub_219BE8D54();
    v132 = __swift_project_boxed_opaque_existential_1(v226 + 3, v226[6]);
    sub_218718690(*v132 + 16, &v234);
    *v10 = 0.0;
    v10[1] = 0.0;
    v133 = v217;
    v10[2] = v125;
    *(v10 + 3) = v133;
    sub_218718690(&v234, v10 + v8[12]);
    sub_219BF6394();
    swift_getObjectType();
    v134 = FCTagProviding.forceBasicTagMasthead.getter();
    swift_unknownObjectRelease();
    v135 = &selRef_moveShortcutWithIdentifier_toIndex_;
    if ((v134 & 1) == 0 && [v130 theme])
    {
      v226 = v130;
      *&v136 = COERCE_DOUBLE(swift_getObjectType());
      [v131 horizontalSizeClass];
      [v131 userInterfaceIdiom];
      v137 = sub_219BF6144();
      if (v137)
      {
        v138 = v137;
        [v131 horizontalSizeClass];
        [v131 userInterfaceIdiom];
        v219 = *&v136;
        v139 = sub_219BF6174();
        v220 = v129;
        if (!v139)
        {
          v139 = v138;
        }

        v140 = v139;
        *&v141 = COERCE_DOUBLE(sub_21897A4D4());
        v232 = *&v141;
        v142 = sub_2191E7E84(&qword_280E8E780, sub_21897A4D4, MEMORY[0x277D34738]);
        v233 = v142;
        v231 = v138;
        v218 = COERCE_DOUBLE(v138);
        [v131 displayScale];
        sub_219BE8814();
        swift_allocObject();
        *(v10 + v8[8]) = sub_219BE8804();
        v232 = *&v141;
        v233 = v142;
        v231 = v140;
        v143 = v140;
        [v131 displayScale];
        swift_allocObject();
        *(v10 + v8[9]) = sub_219BE8804();
        [v131 horizontalSizeClass];
        [v131 userInterfaceIdiom];
        v144 = sub_219BF6184();
        swift_unknownObjectRelease();

        v129 = v220;
        v130 = v226;
        v135 = &selRef_moveShortcutWithIdentifier_toIndex_;
        goto LABEL_51;
      }

      swift_unknownObjectRelease();
      v130 = v226;
    }

    *(v10 + v8[8]) = 0.0;
    *(v10 + v8[9]) = 0.0;
    v144 = 4;
LABEL_51:
    *(v10 + v8[10]) = v144;
    v174 = [v230 v135[179]];
    if (v174 && (v175 = [v174 navigationChromeBackgroundGradient], swift_unknownObjectRelease(), v175))
    {
      v226 = v130;
      v176 = v8[6];
      v177 = v175;
      sub_219BE73D4();
      v178 = sub_219BE7434();
      v179 = *(*(v178 - 8) + 56);
      v179(v10 + v176, 0, 1, v178);
      v180 = [v230 v135[179]];
      if (!v180 || (v181 = [v180 darkStyleNavigationChromeBackgroundGradient], swift_unknownObjectRelease(), !v181))
      {
        v182 = v177;
      }

      v183 = v8[7];
      sub_219BE73D4();

      v179(v10 + v183, 0, 1, v178);
      v130 = v226;
    }

    else
    {
      v184 = v8[6];
      v185 = sub_219BE7434();
      v186 = *(*(v185 - 8) + 56);
      v186(v10 + v184, 1, 1, v185);
      v186(v10 + v8[7], 1, 1, v185);
    }

    v187 = __swift_project_boxed_opaque_existential_1(&v234, v235);
    v188 = sub_2191E6D9C(v130, *v187);
    v190 = v189;
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v234);
    *(v10 + 4) = v188;
    *(v10 + v8[11]) = v190 & 1;
    v191 = v212;
    sub_2191E7B58(v10, v212);
    *a4 = v125;
    *(a4 + 8) = v133;
    v192 = y;
    *(a4 + 16) = v227;
    *(a4 + 24) = v192;
    v193 = v228;
    *(a4 + 32) = v229;
    *(a4 + 40) = v193;
    v194 = v211;
    *(a4 + 48) = v215;
    *(a4 + 56) = v194;
    v195 = v209;
    *(a4 + 64) = v210;
    *(a4 + 72) = v195;
    *(a4 + 80) = v225 & 1;
    v196 = v207;
    *(a4 + 88) = v208;
    *(a4 + 96) = v196;
    v197 = v205;
    *(a4 + 104) = v206;
    *(a4 + 112) = v197;
    v198 = v222;
    *(a4 + 120) = v221;
    *(a4 + 128) = v198;
    v199 = v224;
    *(a4 + 136) = v223;
    *(a4 + 144) = v199;
    *(a4 + 152) = v126;
    *(a4 + 160) = v127;
    *(a4 + 168) = v128;
    *(a4 + 176) = v129;
    v171 = type metadata accessor for NameLogoMastheadViewLayoutAttributes(0);
    v172 = a4 + v171[11];
    v173 = v191;
    goto LABEL_59;
  }

  return sub_2191E60C4(a1, a2, a4);
}

double sub_2191E60C4@<D0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a4@<X8>)
{
  v100 = *(a2 + 1);
  v105 = *a2;
  v107.origin.x = sub_2191E7134(a1);
  x = v107.origin.x;
  y = v107.origin.y;
  width = v107.size.width;
  height = v107.size.height;
  v11 = CGRectGetWidth(v107);
  sub_219BE8CF4();
  sub_219BF6034();
  v13 = fmin(v11 - v12, 600.0);
  v97 = y;
  v98 = x;
  v108.origin.x = x;
  v108.origin.y = y;
  v95 = height;
  v96 = width;
  v108.size.width = width;
  v108.size.height = height;
  v14 = CGRectGetHeight(v108);
  sub_219BE8CF4();
  v109.origin.x = v15;
  v109.origin.y = 0.0;
  v109.size.width = v13;
  v109.size.height = v14;
  v110 = CGRectIntegral(v109);
  v16 = v110.origin.x;
  v17 = v110.origin.y;
  v18 = v110.size.width;
  v19 = v110.size.height;
  v20 = sub_219BE8D54();
  sub_218F95F74(a1, v20);
  v106 = v21;
  v23 = v22;

  v103 = v17;
  v104 = v16;
  v111.origin.x = v16;
  v111.origin.y = v17;
  v101 = v19;
  v102 = v18;
  v111.size.width = v18;
  v111.size.height = v19;
  v24 = CGRectGetHeight(v111) * 0.5 - v23 * 0.5;
  v25 = sub_219BE8D54();
  sub_218F9605C(a1, v25);
  v27 = v26;

  sub_2191E71F4(a1);
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v90 = sub_2191E65D0(a1);
  sub_219BE8DA4();
  v36 = CGRectGetWidth(v112);
  v113.origin.x = 0.0;
  v99 = v24;
  v113.origin.y = v24;
  v113.size.width = v106;
  v94 = v23;
  v113.size.height = v23;
  v37 = v36 - CGRectGetWidth(v113) - v27;
  sub_219BE8D24();
  v39 = v37 - v38;
  v40 = v29;
  v114.origin.x = v29;
  v41 = v31;
  v114.origin.y = v31;
  v92 = v35;
  v93 = v33;
  v114.size.width = v33;
  v114.size.height = v35;
  v42 = CGRectGetWidth(v114);
  v43 = sub_2191E7568(a1, v39 - v42 - v90);
  v45 = v44;
  v47 = v46;
  v48 = v43;
  v49 = sub_219BE8D54();
  v50 = sub_218F95C74(a1, v49);

  if (v50)
  {
    v51 = v50;
    v52 = sub_219BF6794();
    [v52 lineHeight];

    sub_219BF6784();
    v54 = v53;
    v56 = v55;
  }

  else
  {
    v56 = 0.0;
    v54 = 0.0;
  }

  v115.origin.y = v103;
  v115.origin.x = v104;
  v115.size.height = v101;
  v115.size.width = v102;
  v57 = CGRectGetHeight(v115) * 0.5 - (v47 + v56) * 0.5;
  v58 = *(a1 + 8);
  if ([v58 sportsType] == 3 && (objc_msgSend(v58, sel_sportsLeagueType) & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v118.origin.y = v56 + v57;
    v118.origin.x = v106 + 4.0;
    v118.size.width = v45;
    v118.size.height = v47;
    v119 = CGRectIntegral(v118);
    v89 = v119.origin.y;
    v91 = v119.origin.x;
    v87 = v119.size.height;
    v88 = v119.size.width;
  }

  else
  {
    v116.origin.x = v106 + 4.0;
    v116.origin.y = v57;
    v116.size.width = v45;
    v116.size.height = v47;
    v117 = CGRectIntegral(v116);
    v89 = v117.origin.y;
    v91 = v117.origin.x;
    v87 = v117.size.height;
    v88 = v117.size.width;
    v57 = v47 + v57;
  }

  v120.origin.x = v106 + 4.0;
  v120.origin.y = v57;
  v120.size.width = v54;
  v120.size.height = v56;
  v121 = CGRectIntegral(v120);
  v85 = v121.origin.y;
  v86 = v121.origin.x;
  v83 = v121.size.height;
  v84 = v121.size.width;
  v59 = sub_2191E7700(a1);
  rect_24 = v60;
  v82 = v59;
  rect_8 = v62;
  rect_16 = v61;
  sub_219BE8DA4();
  v63 = CGRectGetWidth(v122);
  sub_219BE8D24();
  sub_219BF6034();
  v65 = v63 - v64;
  v123.origin.x = v40;
  v123.origin.y = v41;
  v123.size.width = v33;
  v123.size.height = v92;
  recta = v65 - CGRectGetWidth(v123);
  v124.origin.x = 0.0;
  v124.origin.y = v99;
  v124.size.width = v106;
  v124.size.height = v94;
  MaxY = CGRectGetMaxY(v124);
  v125.origin.x = 0.0;
  v125.origin.y = v99;
  v125.size.width = v106;
  v125.size.height = v94;
  v67 = CGRectGetHeight(v125) * 0.5;
  v126.origin.x = v40;
  v126.origin.y = v41;
  v126.size.width = v93;
  v126.size.height = v92;
  v68 = MaxY - (v67 + CGRectGetHeight(v126) * 0.5);
  v127.origin.x = v40;
  v127.origin.y = v41;
  v127.size.width = v93;
  v127.size.height = v92;
  v69 = CGRectGetWidth(v127);
  v128.origin.x = v40;
  v128.origin.y = v41;
  v128.size.width = v93;
  v128.size.height = v92;
  v129.size.height = CGRectGetHeight(v128);
  v129.origin.x = recta;
  v129.origin.y = v68;
  v129.size.width = v69;
  v130 = CGRectIntegral(v129);
  v70 = v130.origin.x;
  v71 = v130.origin.y;
  v72 = v130.size.width;
  v73 = v130.size.height;
  v74 = type metadata accessor for NameLogoMastheadViewLayoutAttributes(0);
  sub_2191E686C(a1, a2, (a4 + v74[11]));
  *a4 = v105;
  *(a4 + 8) = v100;
  *(a4 + 16) = 0;
  *(a4 + 24) = v99;
  *(a4 + 32) = v106;
  *(a4 + 40) = v94;
  *(a4 + 48) = v91;
  *(a4 + 56) = v89;
  *(a4 + 64) = v88;
  *(a4 + 72) = v87;
  *(a4 + 80) = v48 & 1;
  *(a4 + 88) = v86;
  *(a4 + 96) = v85;
  *(a4 + 104) = v84;
  *(a4 + 112) = v83;
  *(a4 + 120) = v82;
  *(a4 + 128) = rect_24;
  *(a4 + 136) = rect_16;
  *(a4 + 144) = rect_8;
  *(a4 + 152) = v70;
  *(a4 + 160) = v71;
  *(a4 + 168) = v72;
  *(a4 + 176) = v73;
  v75 = (a4 + v74[12]);
  *v75 = v104;
  v75[1] = v103;
  v75[2] = v102;
  v75[3] = v101;
  v76 = (a4 + v74[13]);
  *v76 = v98;
  v76[1] = v97;
  result = v95;
  v76[2] = v96;
  v76[3] = v95;
  return result;
}

double sub_2191E65D0(uint64_t a1)
{
  sub_2188134F8(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_219BEC004();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for NameLogoMastheadModel(0) + 24);
  sub_21881AC1C(a1 + v15, v7);
  v16 = v9[6];
  if (v16(v7, 1, v8) == 1)
  {
    goto LABEL_5;
  }

  v23 = a1;
  v22 = v9[4];
  v22(v14, v7, v8);
  v17 = sub_219BEBFF4();
  v18 = v14;
  v19 = v9[1];
  v19(v18, v8);
  if (!v17)
  {
    return 0.0;
  }

  sub_21881AC1C(v23 + v15, v4);
  if (v16(v4, 1, v8) == 1)
  {
    v7 = v4;
LABEL_5:
    sub_218819B4C(v7, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    return 0.0;
  }

  v22(v11, v4, v8);
  v21 = sub_219BEBFE4();
  v19(v11, v8);
  result = 10.0;
  if ((v21 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2191E686C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v8 = *a1;
  v7 = *(a1 + 8);
  swift_unknownObjectRetain();
  v9 = sub_219BE8D54();
  v10 = __swift_project_boxed_opaque_existential_1((v3 + 24), *(v3 + 48));
  sub_218718690(*v10 + 16, v44);
  *a3 = 0;
  *(a3 + 1) = 0;
  *(a3 + 2) = v5;
  *(a3 + 3) = v6;
  v11 = type metadata accessor for MastheadViewBackground(0);
  sub_218718690(v44, &a3[v11[12]]);
  sub_219BF6394();
  swift_getObjectType();
  v12 = FCTagProviding.forceBasicTagMasthead.getter();
  swift_unknownObjectRelease();
  v13 = &selRef_moveShortcutWithIdentifier_toIndex_;
  if ((v12 & 1) != 0 || ![v8 theme])
  {
    goto LABEL_8;
  }

  v42 = v8;
  swift_getObjectType();
  [v9 horizontalSizeClass];
  [v9 userInterfaceIdiom];
  v14 = sub_219BF6144();
  if (!v14)
  {
    swift_unknownObjectRelease();
LABEL_8:
    *&a3[v11[8]] = 0;
    *&a3[v11[9]] = 0;
    v19 = 4;
    goto LABEL_9;
  }

  v15 = v14;
  [v9 horizontalSizeClass];
  [v9 userInterfaceIdiom];
  v16 = sub_219BF6174();
  if (!v16)
  {
    v16 = v15;
  }

  v17 = v16;
  sub_21897A4D4();
  sub_2191E7E84(&qword_280E8E780, sub_21897A4D4, MEMORY[0x277D34738]);
  v41 = v15;
  [v9 displayScale];
  sub_219BE8814();
  swift_allocObject();
  *&a3[v11[8]] = sub_219BE8804();
  v18 = v17;
  [v9 displayScale];
  swift_allocObject();
  *&a3[v11[9]] = sub_219BE8804();
  [v9 horizontalSizeClass];
  [v9 userInterfaceIdiom];
  v19 = sub_219BF6184();
  swift_unknownObjectRelease();

  v8 = v42;
  v13 = &selRef_moveShortcutWithIdentifier_toIndex_;
LABEL_9:
  *&a3[v11[10]] = v19;
  v20 = [v7 v13[179]];
  if (v20 && (v21 = [v20 navigationChromeBackgroundGradient], swift_unknownObjectRelease(), v21))
  {
    v22 = v11[6];
    v23 = v21;
    sub_219BE73D4();
    v24 = sub_219BE7434();
    v25 = (*(v24 - 8) + 56);
    v43 = *v25;
    (*v25)(&a3[v22], 0, 1, v24);
    v26 = [v7 v13[179]];
    if (!v26 || (v27 = v9, v28 = v8, v29 = [v26 darkStyleNavigationChromeBackgroundGradient], swift_unknownObjectRelease(), v30 = v29, v8 = v28, v9 = v27, !v30))
    {
      v31 = v23;
    }

    v32 = v11[7];
    sub_219BE73D4();

    v43(&a3[v32], 0, 1, v24);
  }

  else
  {
    v33 = v11[6];
    v34 = sub_219BE7434();
    v35 = *(*(v34 - 8) + 56);
    v35(&a3[v33], 1, 1, v34);
    v35(&a3[v11[7]], 1, 1, v34);
  }

  v36 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v37 = sub_2191E6D9C(v8, *v36);
  v39 = v38;
  swift_unknownObjectRelease();

  result = __swift_destroy_boxed_opaque_existential_1(v44);
  *(a3 + 4) = v37;
  a3[v11[11]] = v39 & 1;
  return result;
}

uint64_t sub_2191E6D40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

id sub_2191E6D9C(void *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = *a2;
  v19 = *a2;
  v20 = sub_2191E7E84(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
  v18[0] = v2;

  sub_219BF6394();
  swift_getObjectType();
  LOBYTE(v2) = FCTagProviding.forceBasicTagMasthead.getter();
  swift_unknownObjectRelease();
  if ((v2 & 1) == 0)
  {
    v8 = [a1 backingChannel];
    if (v8 && (v9 = [v8 theme], swift_unknownObjectRelease(), v9) || (v9 = objc_msgSend(objc_msgSend(a1, sel_backingTag), sel_theme), swift_unknownObjectRelease(), v9))
    {
      swift_unknownObjectRetain();
      swift_getObjectType();
      v10 = *(*__swift_project_boxed_opaque_existential_1(v18, v4) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
      v7 = sub_219BF6164();

      swift_unknownObjectRelease();
      if (v7)
      {
LABEL_12:
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v11 = sub_219BF6154();
      swift_unknownObjectRelease();
      if (v11)
      {
        swift_unknownObjectRelease();
        v5 = *__swift_project_boxed_opaque_existential_1(v18, v19);
        v6 = OBJC_IVAR____TtC7NewsUI210BaseStyler_theme;
        goto LABEL_3;
      }
    }

    v12 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    if (v12)
    {
      swift_getObjectType();
      v7 = sub_219BF6614();
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    if (v9)
    {
      v14 = [v9 darkStyleBackgroundColor];
      if (v14)
      {
        v15 = v14;
        v16 = [v14 ne_color];
      }

      else
      {
        v16 = 0;
      }

      swift_getObjectType();
      v17 = *(*__swift_project_boxed_opaque_existential_1(v18, v19) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
      swift_unknownObjectRetain();
      v7 = sub_219BF60F4();

      swift_unknownObjectRelease_n();
      if (v7)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = 0;
    }

    v7 = *(*__swift_project_boxed_opaque_existential_1(v18, v19) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
LABEL_21:

    goto LABEL_13;
  }

  v5 = *__swift_project_boxed_opaque_existential_1(v18, v4);
  v6 = OBJC_IVAR____TtC7NewsUI210BaseStyler_theme;
LABEL_3:
  v7 = *(v5 + v6 + 24);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1(v18);
  return v7;
}

double sub_2191E7134(uint64_t a1)
{
  if (sub_219BED0C4())
  {
    if ((sub_219BE8D14() & 1) == 0)
    {
      sub_219BE8D34();
    }
  }

  else
  {
    sub_2191E4B88();
  }

  if ((sub_219BE8D14() & 1) == 0)
  {
    sub_219BE8D34();
  }

  sub_219BE8D34();
  v2 = v1;
  sub_219BE8D34();
  sub_219BE8D34();
  return v2;
}

void sub_2191E71F4(uint64_t a1)
{
  sub_2188134F8(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = sub_219BEC004();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = *(type metadata accessor for NameLogoMastheadModel(0) + 24);
  sub_21881AC1C(a1 + v15, v7);
  v16 = v9[6];
  if (v16(v7, 1, v8) == 1)
  {
    sub_218819B4C(v7, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  }

  else
  {
    v23 = a1;
    v22 = v9[4];
    v22(v14, v7, v8);
    v17 = sub_219BEBFF4();
    v18 = v14;
    v19 = v9[1];
    v19(v18, v8);
    if (v17)
    {

      sub_21881AC1C(v23 + v15, v4);
      if (v16(v4, 1, v8) == 1)
      {
        sub_218819B4C(v4, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      }

      else
      {
        v22(v11, v4, v8);
        v20 = sub_219BEBFF4();
        if (v20)
        {
          v21 = v20;
          if (sub_219BEBFE4())
          {
            [v21 frame];

            v19(v11, v8);
          }

          else
          {
            v19(v11, v8);
          }
        }

        else
        {
          v19(v11, v8);
        }
      }
    }
  }
}

uint64_t sub_2191E7568(uint64_t a1, CGFloat a2)
{
  v4 = sub_219BE8D54();
  v5 = sub_218F959F4(a1, v4, 0);

  v6 = v5;
  v7 = sub_219BF6794();
  [v7 lineHeight];

  sub_219BF6784();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v26.origin.x = v9;
  v26.origin.y = v11;
  v26.size.width = v13;
  v26.size.height = v15;
  if (CGRectGetWidth(v26) < a2 && (v27.origin.x = v9, v27.origin.y = v11, v27.size.width = v13, v27.size.height = v15, Height = CGRectGetHeight(v27), v17 = sub_219BF6794(), [v17 lineHeight], v19 = v18, v17, v19 >= Height))
  {

    return 0;
  }

  else
  {
    v20 = sub_219BE8D54();
    v21 = 1;
    v22 = sub_218F959F4(a1, v20, 1);

    v23 = v22;
    v24 = sub_219BF6794();
    [v24 lineHeight];

    sub_219BF6784();
  }

  return v21;
}

double sub_2191E7700(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = [v1 theme];
  if (v2)
  {
    v3 = [v2 navigationChromeSeparatorColor];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = [v1 theme];
      if (v4 && (v5 = [v4 darkStyleNavigationChromeSeparatorColor], swift_unknownObjectRelease(), v5))
      {
        v6 = objc_opt_self();
        v7 = [v3 ne_color];
        v8 = [v5 ne_color];
        v9 = [v6 ts:v7 dynamicColor:v8 withDarkStyleVariant:?];

        if (v9)
        {

          v10 = sub_219BE8D54();
          [v10 displayScale];
        }
      }

      else
      {
      }
    }
  }

  return 0.0;
}

void sub_2191E7898(double a1)
{
  sub_2188134F8(0, &qword_280EE4770, MEMORY[0x277D6E2A0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_219BE8CD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_219BED0C4())
  {
    if (sub_219BE8D14())
    {
      return;
    }

    goto LABEL_9;
  }

  sub_219BE8D84();
  MinX = CGRectGetMinX(v17);
  sub_219BE8DA4();
  Width = CGRectGetWidth(v18);
  sub_219BE8D84();
  v11 = Width - CGRectGetMaxX(v19);
  if (MinX > v11)
  {
    v12 = MinX;
  }

  else
  {
    v12 = v11;
  }

  sub_219BE8DA4();
  v13 = CGRectGetWidth(v20);
  if ((sub_219BE8D14() & 1) == 0)
  {
    v14 = sub_219BE8D54();
    v15 = [v14 horizontalSizeClass];

    if (v15 == 1)
    {
LABEL_9:
      sub_219BE8D64();
      return;
    }

    sub_219BE8CE4();
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_218819B4C(v4, &qword_280EE4770, MEMORY[0x277D6E2A0]);
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
      if (sub_219BE8CB4())
      {
        sub_219BE8CC4();
        sub_219BE8D44();
        CGRectGetHeight(v21);
        (*(v6 + 8))(v8, v5);
        return;
      }

      (*(v6 + 8))(v8, v5);
    }

    if (v13 - (v12 + v12) + 20.0 >= a1)
    {
      sub_219BE8D44();
      CGRectGetHeight(v22);
    }

    else
    {
      sub_219BE8D94();
    }
  }
}

uint64_t sub_2191E7B58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MastheadViewBackground(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_2191E7BBC(uint64_t a1, double a2, double a3, double a4)
{
  sub_2188134F8(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = sub_219BEC004();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - v19;
  if ((sub_219BED0C4() & 1) == 0)
  {
    v21 = *(type metadata accessor for NameLogoMastheadModel(0) + 24);
    sub_21881AC1C(a1 + v21, v13);
    v22 = v15[6];
    if (v22(v13, 1, v14) != 1)
    {
      v29 = a1;
      v28 = v15[4];
      v28(v20, v13, v14);
      v23 = sub_219BEBFF4();
      v24 = v20;
      v25 = v15[1];
      v25(v24, v14);
      if (!v23)
      {
        return (a3 - a4) * 0.5;
      }

      sub_21881AC1C(v29 + v21, v10);
      if (v22(v10, 1, v14) != 1)
      {
        v28(v17, v10, v14);
        v27 = sub_219BEBFE4();
        v25(v17, v14);
        if (v27)
        {
          return a2;
        }

        return (a3 - a4) * 0.5;
      }

      v13 = v10;
    }

    sub_218819B4C(v13, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    return (a3 - a4) * 0.5;
  }

  return a2;
}

uint64_t sub_2191E7E84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2191E7ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v4 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer(0);
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v42 - v7;
  v8 = sub_219BF00D4();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Header(0);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = sub_219BE9834();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3EC5C(0);
  sub_219BE8184();
  v20 = v60;
  if (!v60)
  {
    goto LABEL_17;
  }

  v21 = v61;
  v47 = v62;
  sub_219BE95F4();
  v22 = (*(v17 + 88))(v19, v16);
  if (v22 == *MEMORY[0x277D6E758])
  {
    v23 = sub_219BE9604();
    if ((v23 & 0x8000000000000000) == 0)
    {
      if (v23 < *(v20 + 16))
      {
        sub_2191E86CC(v20 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v23, v15, type metadata accessor for SearchMoreLayoutSectionDescriptor.Header);
        sub_2191E86CC(v15, v12, type metadata accessor for SearchMoreLayoutSectionDescriptor.Header);
        v45 = v21;
        v25 = v50;
        v24 = v51;
        v26 = v46;
        (*(v50 + 32))(v46, v12, v51);
        __swift_project_boxed_opaque_existential_1((v48 + 16), *(v48 + 40));
        v27 = sub_219BF0234();

        (*(v25 + 8))(v26, v24);
        v28 = v15;
        v29 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Header;
LABEL_11:
        sub_2191E8734(v28, v29);
        return v27;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v22 == *MEMORY[0x277D6E750])
  {
    v30 = sub_219BE9604();
    v31 = *(v20 + 16);
    v32 = __OFSUB__(v30, v31);
    v33 = v30 - v31;
    if (!v32)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        if (v33 < *(v21 + 16))
        {
          v34 = v44;
          sub_2191E86CC(v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v33, v44, type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer);
          v35 = v43;
          sub_2191E86CC(v34, v43, type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer);
          v37 = v50;
          v36 = v51;
          v38 = v46;
          (*(v50 + 32))(v46, v35, v51);
          __swift_project_boxed_opaque_existential_1((v48 + 16), *(v48 + 40));
          v27 = sub_219BF0234();

          (*(v37 + 8))(v38, v36);
          v28 = v34;
          v29 = type metadata accessor for SearchMoreLayoutSectionDescriptor.Footer;
          goto LABEL_11;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_219BF7314();
      v58 = v55;
      v59 = v56;
      sub_219BE8184();
      v40 = v55;
      v52 = v55;
      v53 = v56;
      v54 = v57;
      sub_219BF7484();
      v41 = sub_2191E8680(v40);
      MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE1A00, v41);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_18:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_2191E8610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_2191E8680(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_2191E86CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191E8734(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191E8794(void *a1)
{
  v3 = v1;
  sub_2191E90FC(0, &qword_27CC171B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191E8F54();
  sub_219BF7B44();
  v12[0] = 0;
  sub_219BF77F4();
  if (!v2)
  {
    memcpy(v13, (v3 + 16), 0x201uLL);
    memcpy(v12, (v3 + 16), sizeof(v12));
    v13[543] = 1;
    sub_2191E9160(v13, v11);
    sub_219088A20();
    sub_219BF77E4();
    memcpy(v11, v12, 0x201uLL);
    sub_2191E8FFC(v11);
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_2191E8968(char *a2@<X8>)
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

void sub_2191E89C8(char *a3@<X8>)
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

uint64_t sub_2191E8A2C(uint64_t a1)
{
  v2 = sub_2191E8F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2191E8A68(uint64_t a1)
{
  v2 = sub_2191E8F54();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2191E8AA4@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_2191E8B08(a2, __src);
  if (!v2)
  {
    return memcpy(a1, __src, 0x211uLL);
  }

  return result;
}

void *sub_2191E8B08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a1;
  v29 = a2;
  v3 = sub_219BF5474();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E90FC(0, &qword_27CC17198, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2191E8F54();
  v11 = v30;
  sub_219BF7B34();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v12 = v5;
  v26 = v3;
  v13 = v29;
  sub_2191E8FA8(v34);
  v32[0] = 1;
  v30 = v7;
  v27 = v10;
  sub_219BF76F4();
  sub_219BF5464();
  v14 = sub_219BF5424();
  v16 = v15;

  (*(v28 + 8))(v12, v26);
  v17 = v13;
  v18 = v8;
  if (v16 >> 60 == 15)
  {
    memcpy(v33, v34, sizeof(v33));
    v19 = v30;
    v20 = v27;
  }

  else
  {
    sub_219BE1994();
    swift_allocObject();
    sub_219BE1984();
    sub_2191E90A8();
    v25 = v14;
    sub_219BE1974();
    v19 = v30;
    v20 = v27;

    sub_218822A58(v25, v16);
    memcpy(v31, v32, sizeof(v31));
    nullsub_1();
    memcpy(v33, v31, sizeof(v33));
  }

  v31[0] = 0;
  v21 = sub_219BF76F4();
  v23 = v22;
  (*(v18 + 8))(v20, v19);
  memcpy(v32, v33, sizeof(v32));
  __swift_destroy_boxed_opaque_existential_1(v35);
  *v17 = v21;
  v17[1] = v23;
  return memcpy(v17 + 2, v32, 0x201uLL);
}

unint64_t sub_2191E8F54()
{
  result = qword_27CC171A0;
  if (!qword_27CC171A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC171A0);
  }

  return result;
}

double sub_2191E8FA8(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_219C14A10;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  return result;
}

uint64_t sub_2191E8FFC(uint64_t a1)
{
  sub_2191E9058();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2191E9058()
{
  if (!qword_27CC171A8)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC171A8);
    }
  }
}

unint64_t sub_2191E90A8()
{
  result = qword_27CC171B0;
  if (!qword_27CC171B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC171B0);
  }

  return result;
}

void sub_2191E90FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2191E8F54();
    v7 = a3(a1, &type metadata for ArticleSearchResultItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2191E9160(uint64_t a1, uint64_t a2)
{
  sub_2191E9058();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI221SearchArticleMetadataVSg(uint64_t a1)
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

uint64_t sub_2191E9200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 529))
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

uint64_t sub_2191E9248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 520) = 0;
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
    *(result + 528) = 0;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
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
      *(result + 529) = 1;
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

    *(result + 529) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2191E9328()
{
  result = qword_27CC171C0;
  if (!qword_27CC171C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC171C0);
  }

  return result;
}

unint64_t sub_2191E9380()
{
  result = qword_27CC171C8;
  if (!qword_27CC171C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC171C8);
  }

  return result;
}

unint64_t sub_2191E93D8()
{
  result = qword_27CC171D0;
  if (!qword_27CC171D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC171D0);
  }

  return result;
}

uint64_t sub_2191E942C()
{
  sub_2191E95B4(v0 + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);

  return swift_deallocClassInstance();
}

uint64_t sub_2191E94CC()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [v0 labelColor];

  return MEMORY[0x282191F10](v1, v2);
}

uint64_t sub_2191E95B4(uint64_t a1)
{
  v2 = type metadata accessor for BaseTheme(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2191E9624(uint64_t a1)
{
  if (!qword_280E921C0)
  {
    type metadata accessor for SportsMastheadTagFeedGroupConfigData(255);
    sub_2191E96F0(&qword_280E9A5C8, type metadata accessor for SportsMastheadTagFeedGroupConfigData, &unk_219C6D700);
    sub_2191E96F0(&qword_280E9A5D0, type metadata accessor for SportsMastheadTagFeedGroupConfigData, &unk_219C6D6D8);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E921C0);
    }
  }
}

uint64_t sub_2191E96F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SportsMastheadTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA1BD0;
  if (!qword_280EA1BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2191E9798(uint64_t a1)
{
  sub_2191E9624(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SportsMastheadTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510, MEMORY[0x277D33778], 1);
      if (v3 <= 0x3F)
      {
        sub_2186C709C(319, qword_280EA48C0, &protocol descriptor for SportsConfiguringDataServiceType, 0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2191E987C()
{
  sub_2191EBD38(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2191E98FC(uint64_t a1)
{
  v3 = type metadata accessor for SportsMastheadTagFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[4] = a1;
  v19 = v1;
  v18[0] = v1;
  sub_219BF4264();
  sub_219BE3204();
  sub_2191EBE6C(v1, v6, type metadata accessor for SportsMastheadTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v18[1] = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_2191EA9C4(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_219BF2754();
  sub_219BE2F64();

  v11 = v18[0];
  sub_2191EBE6C(v18[0], v6, type metadata accessor for SportsMastheadTagFeedGroupEmitter);
  v12 = swift_allocObject();
  sub_2191EA9C4(v6, v12 + v7);
  *(v12 + v8) = a1;

  v13 = sub_219BE2E54();
  sub_218A59C84(0);
  sub_219BE2F64();

  sub_2191EBE6C(v11, v6, type metadata accessor for SportsMastheadTagFeedGroupEmitter);
  v14 = swift_allocObject();
  sub_2191EA9C4(v6, v14 + v7);
  v15 = sub_219BE2E54();
  v16 = sub_219BE3064();

  return v16;
}

uint64_t sub_2191E9BB0@<X0>(unint64_t *a1@<X8>)
{
  sub_2191E9624(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x8000000000000000;
  return result;
}

uint64_t sub_2191E9C28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsMastheadTagFeedGroupKnobs(0);
  a2[4] = sub_2191E96F0(&qword_280EA80C0, type metadata accessor for SportsMastheadTagFeedGroupKnobs, &unk_219CCE7A0);
  a2[5] = sub_2191E96F0(&qword_27CC171F8, type metadata accessor for SportsMastheadTagFeedGroupKnobs, &unk_219CCE778);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2191EBE6C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
}

uint64_t sub_2191E9CEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsMastheadTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2191EBE6C(v2 + *(a2 + 20), v6, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  v11[15] = 33;
  sub_2189AD5C8(0);
  v8 = v7;
  v9 = sub_219BEE964();
  (*(*(v8 - 8) + 8))(v6, v8);
  return v9;
}

uint64_t sub_2191E9DE8()
{
  sub_2191E9624(0);

  return sub_219BEDCA4();
}

uint64_t sub_2191E9E14@<X0>(uint64_t *a2@<X8>)
{
  sub_2191EBD38(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2191E9624(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2191EBED4(inited + 32, sub_2188317B0);
  sub_2191EBF34(0);
  a2[3] = v6;
  a2[4] = sub_2191E96F0(&qword_27CC17208, sub_2191EBF34, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2191E9F98(uint64_t a1)
{
  sub_2191E96F0(&qword_27CC171E8, type metadata accessor for SportsMastheadTagFeedGroupEmitter, &unk_219C6543C);

  return sub_219BE2324();
}

uint64_t sub_2191EA16C(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = sub_219BF4264();
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191EBE38(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF0B4();
  v15 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult);

  if (v15)
  {
    v37 = v3;
    v38 = v2;
    v36 = sub_219BF4404();

    sub_219BEF0B4();
    v16 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v17 = sub_219BF43B4();
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    v18 = sub_219BF4F64();
    (*(*(v18 - 8) + 56))(v8, 6, 6, v18);
    v19 = sub_219BF6394();
    v20 = [v16 alternativeFeedDescriptor];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 feedConfiguration];
    }

    else
    {
      v22 = [v16 feedConfiguration];
    }

    sub_2191EBE6C(v11, v14, sub_2191EBE38);
    sub_2191EBE6C(v8, &v14[v12[5]], type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
    v25 = &v14[v12[6]];
    *v25 = v19;
    v25[1] = v22;
    sub_2191EBED4(v8, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
    sub_2191EBED4(v11, sub_2191EBE38);
    v26 = &v14[v12[7]];
    strcpy(v26, "sportsMasthead");
    v26[15] = -18;
    sub_2191EBD38(0, &qword_280E8B7C8, MEMORY[0x277D33E20], MEMORY[0x277D84560]);
    v27 = sub_219BF3484();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C09BA0;
    v31 = swift_allocObject();
    *(v30 + v29) = v31;
    *(v31 + 16) = v36;
    (*(v28 + 104))(v30 + v29, *MEMORY[0x277D33DF0], v27);

    sub_219BF4204();
    v32 = *(v39 + *(type metadata accessor for SportsMastheadTagFeedGroupEmitter(0) + 28) + 8);
    ObjectType = swift_getObjectType();
    v23 = (*(v32 + 16))(v14, v5, ObjectType, v32);

    (*(v40 + 8))(v5, v37);
    sub_2191EBED4(v14, type metadata accessor for SportsConfiguringDataVisualizationRequest);
  }

  else
  {
    v23 = sub_219BEEDD4();
    sub_2191E96F0(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D32428], v23);
    swift_willThrow();
  }

  return v23;
}

uint64_t sub_2191EA768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BF3484();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF4214();
  if (!*(v8 + 16))
  {

LABEL_6:
    v10 = sub_219BEEDD4();
    sub_2191E96F0(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D32428], v10);
    swift_willThrow();
    return v10;
  }

  (*(v5 + 16))(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);

  if ((*(v5 + 88))(v7, v4) != *MEMORY[0x277D33DF0])
  {
    (*(v5 + 8))(v7, v4);
    goto LABEL_6;
  }

  (*(v5 + 96))(v7, v4);
  v9 = *(*v7 + 16);
  swift_retain_n();

  v10 = sub_2191EAAC0(a3, v9);

  return v10;
}

uint64_t sub_2191EA9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsMastheadTagFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2191EAA28(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsMastheadTagFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2191EA768(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2191EAAC0(uint64_t a1, uint64_t a2)
{
  v68 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2191EBD38(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v56 - v5;
  sub_2191EBD38(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v56 - v7;
  v8 = type metadata accessor for SportsMastheadTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191EBD38(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v63 = &v56 - v11;
  v12 = sub_219BF2AB4();
  v70 = *(v12 - 8);
  v71 = v12;
  MEMORY[0x28223BE20](v12);
  v69 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SportsMastheadTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v60);
  v72 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191EBD38(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v56 - v16;
  v18 = sub_219BF3484();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_219BF2034();
  v66 = *(v22 - 8);
  v67 = v22;
  MEMORY[0x28223BE20](v22);
  v65 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191EBD38(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  sub_219BF3E84();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  v25 = MEMORY[0x277D84F90];
  if (a2)
  {
    v56 = xmmword_219C09BA0;
    sub_2191EBD38(0, &unk_280E8B7A0, MEMORY[0x277D34138], MEMORY[0x277D84560]);
    v26 = sub_219BF3C84();
    v57 = v18;
    v27 = v26;
    v28 = *(v26 - 8);
    v59 = v17;
    v29 = v28;
    v30 = *(v28 + 80);
    v58 = v24;
    v31 = (v30 + 32) & ~v30;
    v32 = swift_allocObject();
    *(v32 + 16) = v56;
    v33 = swift_allocObject();
    *(v33 + 16) = a2;
    *v21 = v33;
    (*(v19 + 104))(v21, *MEMORY[0x277D33DF0], v57);

    sub_219BF1AC4();
    (*(v29 + 104))(v32 + v31, *MEMORY[0x277D34130], v27);
    v17 = v59;
  }

  sub_218F0B984(v25);
  sub_218F0BA7C(v25);
  sub_218F0BB90(v25);
  sub_219BF3E74();
  v34 = sub_219BEC004();
  (*(*(v34 - 8) + 56))(v17, 1, 1, v34);
  sub_219A95188(v25);
  sub_219A95188(v25);
  sub_219A951A0(v25);
  sub_219A951B8(v25);
  sub_219A952CC(v25);
  sub_219A952E4(v25);
  sub_219A953F8(v25);
  v35 = v65;
  sub_219BF2024();
  v36 = type metadata accessor for SportsMastheadTagFeedGroupEmitter(0);
  v37 = v62;
  v38 = (v62 + *(v36 + 24));
  v39 = v38[3];
  v59 = v38[4];
  v58 = __swift_project_boxed_opaque_existential_1(v38, v39);
  sub_2191E9624(0);
  v40 = v72;
  sub_219BEDD14();
  v41 = v61;
  v42 = *(v60 + 20);
  sub_2191EBE6C(v37 + *(v36 + 20), v61, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_2189AD5C8(0);
  v44 = v43;
  v45 = *(v43 - 8);
  v46 = v63;
  (*(v45 + 32))(v63, v41, v43);
  (*(v45 + 56))(v46, 0, 1, v44);
  sub_219BEF0B4();
  v47 = *(v75 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v48 = sub_219BF35D4();
  (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
  LOBYTE(v74) = 33;
  sub_2191EBD9C(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v49 = *(v74 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v50 = sub_219BF2774();
  (*(*(v50 - 8) + 56))(v73, 1, 1, v50);
  v51 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v51 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v52 = v69;
  sub_219BF2A84();
  v53 = sub_219BF2184();
  (*(v70 + 8))(v52, v71);
  (*(v66 + 8))(v35, v67);
  v54 = sub_219BF1934();
  (*(*(v54 - 8) + 8))(&v40[v42], v54);
  return v53;
}

uint64_t sub_2191EB590(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_218A59C84(0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TagFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191EB7BC(*a1, v9);
  sub_2191EBE6C(v9, v6, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2191EBD38(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v10 = sub_219BE3014();
  sub_2191EBED4(v9, type metadata accessor for TagFeedGroup);
  return v10;
}

uint64_t sub_2191EB724(uint64_t *a1)
{
  v3 = *(type metadata accessor for SportsMastheadTagFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2191EB590(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2191EB7BC@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v24[4] = a1;
  v29 = a3;
  sub_2191EBD38(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = v24 - v5;
  v6 = type metadata accessor for SportsMastheadTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEF554();
  MEMORY[0x28223BE20](v9 - 8);
  v24[0] = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v24[1] = v24 - v12;
  v13 = sub_219BED8D4();
  v26 = *(v13 - 8);
  v27 = v13;
  MEMORY[0x28223BE20](v13);
  v25 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191E9624(0);

  v15 = sub_219BEDCB4();
  v24[2] = v16;
  v24[3] = v15;
  sub_219BEDCC4();
  sub_219BEDCC4();
  v17 = *(type metadata accessor for SportsMastheadTagFeedGroupEmitter(0) + 20);
  sub_2191EBE6C(v3 + v17, v8, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_2189AD5C8(0);
  v19 = v18;
  sub_219BEE9B4();
  v20 = *(*(v19 - 8) + 8);
  v20(v8, v19);
  sub_2191EBE6C(v3 + v17, v8, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_219BEE984();
  v20(v8, v19);
  sub_2191EBE6C(v3 + v17, v8, type metadata accessor for SportsMastheadTagFeedGroupKnobs);
  sub_219BEE9D4();
  v20(v8, v19);
  v21 = sub_219BEE5D4();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = v25;
  sub_219BED834();
  (*(v26 + 32))(v29, v22, v27);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2191EBBC8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SportsMastheadTagFeedGroupEmitter(0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_2191E96F0(&qword_280EDE9C0, type metadata accessor for TagFeedGroup, &unk_219C8E808);
  return sub_219BEF194();
}

void sub_2191EBD38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2191EBD9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig(255);
    v7 = sub_2191E96F0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2191EBE6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2191EBED4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2191EBF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v29 = a2;
  v5 = sub_219BE41A4();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BE0B44();
  v8 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE0B34();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1444();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE1424();
  sub_2191EC440(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v29 = a1;
  sub_219BDCCC4();
  v18 = v17;
  v19 = v24;
  (*(v15 + 8))(v18, v14);
  (*(v19 + 16))(v7, v26, v5);
  v20 = (*(v19 + 88))(v7, v5);
  if (v20 == *MEMORY[0x277D34FD0])
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D2EB38], v25);
  }

  else if (v20 == *MEMORY[0x277D34FC8])
  {
    (*(v8 + 104))(v10, *MEMORY[0x277D2EB48], v25);
  }

  else
  {
    v21 = *(v8 + 104);
    if (v20 == *MEMORY[0x277D34FD8])
    {
      v21(v10, *MEMORY[0x277D2EB40], v25);
    }

    else
    {
      v21(v10, *MEMORY[0x277D2EB50], v25);
      (*(v19 + 8))(v7, v5);
    }
  }

  sub_219BE0B24();
  sub_2191EC440(&qword_27CC19010, MEMORY[0x277D2EB30], MEMORY[0x277D2EB28]);
  v22 = v28;
  sub_219BDCCC4();
  sub_219BE0534();
  sub_2191EC440(&unk_27CC17210, MEMORY[0x277D2E5D0], MEMORY[0x277D2E5C8]);
  memset(v30, 0, sizeof(v30));
  sub_219BDCCE4();
  sub_218806FD0(v30);
  return (*(v27 + 8))(v13, v22);
}

uint64_t sub_2191EC440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OfflineFeedManifest.rootArticleIDs.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest.Group(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for OfflineFeedManifest(0) + 24));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    v21[1] = v10;
    v20 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v20);
    sub_219BF56E4();

    return;
  }

  v7 = *(v1 + 32);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218753520(v8, v4, type metadata accessor for OfflineFeedManifest.Group);
    v11 = *&v4[v7];

    sub_218753588(v4, type metadata accessor for OfflineFeedManifest.Group);
    v12 = *(v11 + 16);
    v13 = *(v10 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= *(v10 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_218840D24(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (*(v11 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v12)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void OfflineFeedManifest.rootIssueIDs.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest.Group(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for OfflineFeedManifest(0) + 24));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    v21[1] = v10;
    v20 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v20);
    sub_219BF56E4();

    return;
  }

  v7 = *(v1 + 36);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218753520(v8, v4, type metadata accessor for OfflineFeedManifest.Group);
    v11 = *&v4[v7];

    sub_218753588(v4, type metadata accessor for OfflineFeedManifest.Group);
    v12 = *(v11 + 16);
    v13 = *(v10 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= *(v10 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_218840D24(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (*(v11 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v12)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void OfflineFeedManifest.rootPuzzleIDs.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest.Group(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for OfflineFeedManifest(0) + 24));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    v21[1] = v10;
    v20 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v20);
    sub_219BF56E4();

    return;
  }

  v7 = *(v1 + 40);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218753520(v8, v4, type metadata accessor for OfflineFeedManifest.Group);
    v11 = *&v4[v7];

    sub_218753588(v4, type metadata accessor for OfflineFeedManifest.Group);
    v12 = *(v11 + 16);
    v13 = *(v10 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= *(v10 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_218840D24(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (*(v11 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v12)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void OfflineFeedManifest.rootAudioArticleIDs.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest.Group(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for OfflineFeedManifest(0) + 24));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    v21[1] = v10;
    v20 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v20);
    sub_219BF56E4();

    return;
  }

  v7 = *(v1 + 44);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218753520(v8, v4, type metadata accessor for OfflineFeedManifest.Group);
    v11 = *&v4[v7];

    sub_218753588(v4, type metadata accessor for OfflineFeedManifest.Group);
    v12 = *(v11 + 16);
    v13 = *(v10 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= *(v10 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_218840D24(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (*(v11 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v12)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void OfflineFeedManifest.rootRecipeIDs.getter()
{
  v1 = type metadata accessor for OfflineFeedManifest.Group(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + *(type metadata accessor for OfflineFeedManifest(0) + 24));
  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    v21[1] = v10;
    v20 = MEMORY[0x277D837D0];
    sub_2186D0CEC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2191FC7DC(&qword_280E8EDE0, &qword_280E8EE20, v20);
    sub_219BF56E4();

    return;
  }

  v7 = *(v1 + 48);
  v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v9 = *(v2 + 72);
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218753520(v8, v4, type metadata accessor for OfflineFeedManifest.Group);
    v11 = *&v4[v7];

    sub_218753588(v4, type metadata accessor for OfflineFeedManifest.Group);
    v12 = *(v11 + 16);
    v13 = *(v10 + 2);
    v14 = v13 + v12;
    if (__OFADD__(v13, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v14 <= *(v10 + 3) >> 1)
    {
      if (*(v11 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v13 <= v14)
      {
        v16 = v13 + v12;
      }

      else
      {
        v16 = v13;
      }

      v10 = sub_218840D24(isUniquelyReferenced_nonNull_native, v16, 1, v10);
      if (*(v11 + 16))
      {
LABEL_14:
        if ((*(v10 + 3) >> 1) - *(v10 + 2) < v12)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v17 = *(v10 + 2);
          v18 = __OFADD__(v17, v12);
          v19 = v17 + v12;
          if (v18)
          {
            goto LABEL_23;
          }

          *(v10 + 2) = v19;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_21;
    }

LABEL_4:
    v8 += v9;
    if (!--v6)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t OfflineFeedManifest.Group.init(createdAt:publishDate:groupIdentifier:kindIdentifier:articleIDs:issueIDs:puzzleIDs:audioArticleIDs:recipeIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = sub_219BDBD34();
  v19 = *(*(v18 - 8) + 32);
  v19(a9, a1, v18);
  v20 = type metadata accessor for OfflineFeedManifest.Group(0);
  result = (v19)(a9 + v20[5], a2, v18);
  v22 = (a9 + v20[6]);
  *v22 = a3;
  v22[1] = a4;
  v23 = (a9 + v20[7]);
  *v23 = a5;
  v23[1] = a6;
  *(a9 + v20[8]) = a7;
  *(a9 + v20[9]) = a8;
  *(a9 + v20[10]) = a10;
  *(a9 + v20[11]) = a11;
  *(a9 + v20[12]) = a12;
  return result;
}

uint64_t OfflineFeedManifest.init(createdAt:updatedAt:groups:assetURLs:assetWrappingKeyIDs:recordIDs:avAssetIDs:avAssetKeyIDs:avAssetKeyURIs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = sub_219BDBD34();
  v17 = *(*(v16 - 8) + 32);
  v17(a9, a1, v16);
  v18 = type metadata accessor for OfflineFeedManifest(0);
  result = (v17)(a9 + v18[5], a2, v16);
  *(a9 + v18[6]) = a3;
  *(a9 + v18[7]) = a4;
  *(a9 + v18[8]) = a5;
  *(a9 + v18[9]) = a6;
  *(a9 + v18[10]) = a7;
  *(a9 + v18[11]) = a8;
  *(a9 + v18[12]) = a10;
  return result;
}

void sub_2191ED3E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_218840D24(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2191ED74C(uint64_t a1)
{
  v6 = *(a1 + 16);
  if (!(*v1 >> 62))
  {
    v7 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = __OFADD__(v7, v6);
    v9 = v7 + v6;
    if (!v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = sub_219BF7214();
  v8 = __OFADD__(v17, v6);
  v9 = v17 + v6;
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  sub_218861260(v9, 1);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v10 = *(v3 + 0x10);
  v11 = (*(v3 + 0x18) >> 1) - v10;
  v9 = sub_2194ABED4(&v32, (v3 + 8 * v10 + 32), v11, a1);
  if (v9 < v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  if (v9 >= 1)
  {
    v15 = *(v3 + 16);
    v8 = __OFADD__(v15, v9);
    v16 = v15 + v9;
    if (v8)
    {
      __break(1u);
LABEL_16:
      v20 = (v13 + 64) >> 6;
      while (1)
      {
        v21 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_38;
        }

        if (v21 >= v20)
        {
          goto LABEL_8;
        }

        v22 = *(v12 + 8 * v21);
        ++v4;
        if (v22)
        {
          v18 = (v22 - 1) & v22;
          v19 = __clz(__rbit64(v22)) | (v21 << 6);
          v4 = v21;
          goto LABEL_21;
        }
      }
    }

    *(v3 + 16) = v16;
  }

  v9 = v32;
  if (v14 != v11)
  {
LABEL_8:
    sub_21892DE98(v9);
    *v1 = v2;
    return;
  }

LABEL_13:
  v11 = *(v3 + 16);
  v12 = v33;
  v13 = v34;
  v4 = v35;
  v31 = v33;
  if (!v36)
  {
    goto LABEL_16;
  }

  v18 = (v36 - 1) & v36;
  v19 = __clz(__rbit64(v36)) | (v35 << 6);
  v20 = (v34 + 64) >> 6;
LABEL_21:
  v30 = v9;
  v23 = *(*(v9 + 56) + 8 * v19);

  v24 = v31;
  while (1)
  {
LABEL_23:
    if (v11 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_219BF5A14();
      v24 = v31;
    }

    v2 = *v1;
    v25 = *v1 & 0xFFFFFFFFFFFFFF8;
    v26 = *(v25 + 0x18) >> 1;
    if (v11 < v26)
    {
      break;
    }

    *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
  }

  while (1)
  {
    *(v25 + 32 + 8 * v11++) = v23;
    if (!v18)
    {
      break;
    }

    v9 = v30;
LABEL_33:
    v29 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = *(*(v9 + 56) + ((v4 << 9) | (8 * v29)));

    v24 = v31;
    if (v11 == v26)
    {
      v11 = v26;
      *(v25 + 16) = v26;
      goto LABEL_23;
    }
  }

  v27 = v4;
  v9 = v30;
  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v20)
    {
      *(v25 + 16) = v11;
      goto LABEL_8;
    }

    v18 = *(v24 + 8 * v28);
    ++v27;
    if (v18)
    {
      v4 = v28;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_2191EDADC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v3 = sub_219BF7364();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_2191FD158(0, &unk_280E8E5C0, &qword_280E8E5D0, 0x277D751E0, MEMORY[0x277D83D88]);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

void sub_2191EDD88(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2191F7BD4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_218B6A62C();
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2191EDECC(void *a1)
{
  v2 = a1[2];
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v2 + v4;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v2 + v4;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_2191F72E0(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = (v8 - v10);
  a1 = sub_2194AC028(v38, &v3[8 * v10 + 32], v8 - v10, v6);
  if (a1 < v2)
  {
    goto LABEL_15;
  }

  v13 = a1;
  if (a1)
  {
    v14 = *(v3 + 2);
    v15 = __OFADD__(v14, a1);
    v16 = a1 + v14;
    if (v15)
    {
      __break(1u);
LABEL_19:
      v19 = (v11 + 8) >> 6;
      if (v19 <= v16 + 1)
      {
        v20 = v16 + 1;
      }

      else
      {
        v20 = (v11 + 8) >> 6;
      }

      v21 = v20 - 1;
      do
      {
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_48:
          __break(1u);
          return;
        }

        if (v22 >= v19)
        {
          v40 = v21;
          v41 = 0;
          goto LABEL_13;
        }

        v23 = *(v12 + 8 * v22);
        ++v16;
      }

      while (!v23);
      v17 = (v23 - 1) & v23;
      v18 = __clz(__rbit64(v23)) | (v22 << 6);
      v16 = v22;
      goto LABEL_27;
    }

    *(v3 + 2) = v16;
  }

  a1 = v38[0];
  if (v13 != v11)
  {
    goto LABEL_13;
  }

LABEL_16:
  v6 = *(v3 + 2);
  v12 = v38[1];
  v11 = v39;
  v16 = v40;
  if (!v41)
  {
    goto LABEL_19;
  }

  v17 = (v41 - 1) & v41;
  v18 = __clz(__rbit64(v41)) | (v40 << 6);
  v19 = (v39 + 8) >> 6;
LABEL_27:
  v24 = *(a1[6] + 8 * v18);
  while (1)
  {
    v25 = *(v3 + 3);
    v26 = v25 >> 1;
    if ((v25 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v26)
    {
      goto LABEL_35;
    }

LABEL_30:
    *(v3 + 2) = v6;
  }

  v35 = v16;
  v36 = v19;
  v37 = a1;
  v30 = v12;
  v31 = v3;
  v32 = v17;
  v33 = sub_2191F72E0((v25 > 1), v6 + 1, 1, v31);
  v17 = v32;
  v16 = v35;
  v19 = v36;
  v12 = v30;
  v3 = v33;
  a1 = v37;
  v26 = *(v3 + 3) >> 1;
  if (v6 >= v26)
  {
    goto LABEL_30;
  }

LABEL_35:
  while (1)
  {
    *&v3[8 * v6++ + 32] = v24;
    if (!v17)
    {
      break;
    }

LABEL_34:
    v27 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v24 = *(a1[6] + ((v16 << 9) | (8 * v27)));
    if (v6 == v26)
    {
      v6 = v26;
      goto LABEL_30;
    }
  }

  v28 = v16;
  while (1)
  {
    v29 = (v28 + 1);
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v29 >= v19)
    {
      break;
    }

    v17 = *(v12 + 8 * v29);
    ++v28;
    if (v17)
    {
      v16 = v29;
      goto LABEL_34;
    }
  }

  if (v19 <= v16 + 1)
  {
    v34 = v16 + 1;
  }

  else
  {
    v34 = v19;
  }

  v39 = v11;
  v40 = v34 - 1;
  v41 = 0;
  *(v3 + 2) = v6;
LABEL_13:
  sub_21892DE98(a1);
  *v1 = v3;
}

void sub_2191EE330(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    if (!__OFADD__(*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10), v7))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(sub_219BF7214(), v7))
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v8 = *v3;
  v9 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v3 = v8;
    return;
  }

  v12 = *(v9 + 16);
  v13 = __OFADD__(v12, v11);
  v14 = v12 + v11;
  if (!v13)
  {
    *(v9 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void sub_2191EE4C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2191F7FC8(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2191EE614(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 2);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v7 <= *(v5 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  v5 = sub_2191F8B4C(isUniquelyReferenced_nonNull_native, v15, 1, v5, a2, a3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v5 + 3) >> 1) - *(v5 + 2) < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return;
  }

  v12 = *(v5 + 2);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v5 + 2) = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2191EE720(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2191F8C94(isUniquelyReferenced_nonNull_native, v11, 1, v3, &qword_27CC17608, &type metadata for NewspaperTodayFeedGroupConfigData.Channel);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2191EE824(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2191F8DEC(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_2191EE9D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    if (!(*v5 >> 62))
    {
      v12 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = __OFADD__(v12, v11);
      result = v12 + v11;
      if (!v13)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  v19 = sub_219BF7214();
  v13 = __OFADD__(v19, v11);
  result = v19 + v11;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_4:
  sub_218861260(result, 1);
  v9 = *v5;
  v10 = *v5 & 0xFFFFFFFFFFFFFF8;
  v15 = *(v10 + 0x10);
  v16 = (*(v10 + 0x18) >> 1) - v15;
  result = sub_218B682AC(&v32, v10 + 8 * v15 + 32, v16, v8, v7, v6, v4);
  if (result < v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (result >= 1)
  {
    v17 = *(v10 + 16);
    v13 = __OFADD__(v17, result);
    v18 = v17 + result;
    if (v13)
    {
      __break(1u);
LABEL_32:
      *(v31 + 16) = v11;
      goto LABEL_9;
    }

    *(v10 + 16) = v18;
  }

  if (result != v16)
  {
LABEL_9:
    result = swift_unknownObjectRelease();
    *v5 = v9;
    return result;
  }

LABEL_15:
  v20 = v34;
  if (v36 == v34)
  {
    goto LABEL_9;
  }

  v21 = v36 - 1;
  if (__OFSUB__(v36, 1))
  {
LABEL_35:
    __break(1u);
  }

  else if (v21 >= v34)
  {
    v22 = v35 >> 1;
    if (v21 < (v35 >> 1))
    {
      v23 = *(v10 + 16);
      v24 = v33;
      v25 = *(v33 + 8 * v21);
      v26 = v25;
      result = v25;
      while (1)
      {
LABEL_21:
        if (v23 + 1 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v30 = result;
          sub_219BF5A14();
          result = v30;
        }

        v9 = *v5;
        v27 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        v28 = v27 - v23;
        if (v27 > v23)
        {
          break;
        }

        *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v23;
      }

      v31 = *v5 & 0xFFFFFFFFFFFFFF8;
      v29 = (v31 + 8 * v23 + 32);
      v11 = v23 + 1;
      while (1)
      {
        *v29 = result;
        if (v20 == v21)
        {
          goto LABEL_32;
        }

        v13 = __OFSUB__(v21--, 1);
        if (v13)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v21 < v20 || v21 >= v22)
        {
          goto LABEL_34;
        }

        result = *(v24 + 8 * v21);
        ++v29;
        ++v11;
        if (!--v28)
        {
          v23 = v27;
          *(v31 + 16) = v27;
          goto LABEL_21;
        }
      }
    }
  }

  __break(1u);
  return result;
}

void sub_2191EEC2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2191F8C94(isUniquelyReferenced_nonNull_native, v11, 1, v3, &unk_280E8BD00, &type metadata for TagFeedCurationRequestTag);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2191EEDC0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2191F9394(isUniquelyReferenced_nonNull_native, v11, 1, v3, &unk_280E8BAC0, &type metadata for SportsSectionHeadline);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2191EEF10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2191F95C4(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_2191EF004(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v53 = a2;
  v9 = type metadata accessor for OfflineContentRequest(0);
  v54 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD9FC(0, qword_280ECA530, type metadata accessor for OfflineContentRequest, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v15);
  v18 = v45;
  v20 = v45 - v19;
  v21 = a4 >> 1;
  v22 = __OFSUB__(a4 >> 1, a3);
  v23 = (a4 >> 1) - a3;
  if (v22)
  {
    __break(1u);
    goto LABEL_21;
  }

  v55 = a1;
  v5 = *v4;
  v24 = *(*v4 + 16);
  v25 = v24 + v23;
  if (__OFADD__(v24, v23))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v51 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = (v5[3] >> 1), v18 < v25))
  {
    if (v24 <= v25)
    {
      v27 = v24 + v23;
    }

    else
    {
      v27 = v24;
    }

    v5 = sub_218737B64(isUniquelyReferenced_nonNull_native, v27, 1, v5, &unk_27CC0F298, type metadata accessor for OfflineContentRequest, type metadata accessor for OfflineContentRequest);
    v18 = (v5[3] >> 1);
  }

  v28 = v18 - v5[2];
  if (v21 == a3)
  {
    if (v23 <= 0)
    {
      v23 = 0;
      v18 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v28 < v23)
  {
    __break(1u);
    goto LABEL_27;
  }

  result = swift_arrayInitWithCopy();
  if (v23 <= 0)
  {
LABEL_16:
    v18 = v21;
LABEL_17:
    if (v23 != v28)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v50 = v18;
    v23 = v5[2];
    v32 = v54;
    v45[0] = *(v54 + 56);
    v45[1] = v54 + 56;
    (v45[0])(v20, 1, 1, v9, v17);
    v33 = v51;
    sub_2191F6618(v20, v51, qword_280ECA530, type metadata accessor for OfflineContentRequest);
    v48 = *(v32 + 48);
    v49 = v32 + 48;
    if (v48(v33, 1, v9) == 1)
    {
      v34 = v51;
LABEL_25:
      sub_2191F6698(v20, qword_280ECA530, type metadata accessor for OfflineContentRequest);
      swift_unknownObjectRelease();
      result = sub_2191F6698(v34, qword_280ECA530, type metadata accessor for OfflineContentRequest);
      goto LABEL_19;
    }

LABEL_27:
    v34 = v51;
    do
    {
      sub_2191F6698(v34, qword_280ECA530, type metadata accessor for OfflineContentRequest);
      v36 = v5[3];
      v37 = v36 >> 1;
      if ((v36 >> 1) < v23 + 1)
      {
        v5 = sub_218737B64((v36 > 1), v23 + 1, 1, v5, &unk_27CC0F298, type metadata accessor for OfflineContentRequest, type metadata accessor for OfflineContentRequest);
        v37 = v5[3] >> 1;
      }

      v38 = *(v54 + 80);
      sub_2191F6618(v20, v13, qword_280ECA530, type metadata accessor for OfflineContentRequest);
      if (v48(v13, 1, v9) == 1)
      {
LABEL_33:
        sub_2191F6698(v13, qword_280ECA530, type metadata accessor for OfflineContentRequest);
        v35 = v23;
      }

      else
      {
        v46 = v5 + ((v38 + 32) & ~v38);
        if (v23 <= v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v23;
        }

        v47 = v39;
        while (1)
        {
          v41 = v52;
          sub_2187544D0(v13, v52, type metadata accessor for OfflineContentRequest);
          if (v47 == v23)
          {
            break;
          }

          sub_2191F6698(v20, qword_280ECA530, type metadata accessor for OfflineContentRequest);
          v42 = *(v54 + 72);
          result = sub_2187544D0(v41, &v46[v42 * v23], type metadata accessor for OfflineContentRequest);
          if (v50 == v21)
          {
            v40 = 1;
            v50 = v21;
          }

          else
          {
            if (v50 < a3 || v50 >= v21)
            {
              goto LABEL_46;
            }

            v43 = v53 + v42 * v50;
            v44 = v50;
            sub_218753520(v43, v20, type metadata accessor for OfflineContentRequest);
            v40 = 0;
            v50 = v44 + 1;
          }

          (v45[0])(v20, v40, 1, v9);
          sub_2191F6618(v20, v13, qword_280ECA530, type metadata accessor for OfflineContentRequest);
          ++v23;
          if (v48(v13, 1, v9) == 1)
          {
            goto LABEL_33;
          }
        }

        sub_218753588(v41, type metadata accessor for OfflineContentRequest);
        v35 = v47;
        v23 = v47;
      }

      v5[2] = v35;
      v34 = v51;
      sub_2191F6618(v20, v51, qword_280ECA530, type metadata accessor for OfflineContentRequest);
    }

    while (v48(v34, 1, v9) != 1);
    goto LABEL_25;
  }

  v30 = v5[2];
  v22 = __OFADD__(v30, v23);
  v31 = v30 + v23;
  if (!v22)
  {
    v5[2] = v31;
    goto LABEL_16;
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

void sub_2191EF708(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v3 = sub_219BF7364();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_21880962C(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_2191EFA98(uint64_t a1)
{
  sub_218953F20(0);
  v75 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v72 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD9FC(0, &qword_27CC173C8, sub_218953F20, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v74 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v71 = &v61 - v9;
  MEMORY[0x28223BE20](v10);
  v76 = &v61 - v11;
  sub_218B7E0BC(0);
  v13 = v12;
  v14 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2191FD9B8(0, &qword_27CC173D0, sub_218B7E0BC, sub_2191FD310, MEMORY[0x277D84310]);
  v69 = v17;
  MEMORY[0x28223BE20](v17);
  v79 = &v61 - v18;
  sub_2186EC7E8(&unk_27CC173E0, sub_218B7E0BC, MEMORY[0x277D6D728]);
  v19 = sub_219BF5724();
  v77 = v1;
  v20 = *v1;
  v21 = *(*v1 + 16);
  v22 = v21 + v19;
  if (__OFADD__(v21, v19))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v23 = v19;
  v78 = v13;
  v13 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = v4;
  if (!isUniquelyReferenced_nonNull_native || (v25 = v20[3] >> 1, v25 < v22))
  {
    if (v21 <= v22)
    {
      v26 = v22;
    }

    else
    {
      v26 = v21;
    }

    v20 = sub_218737B64(isUniquelyReferenced_nonNull_native, v26, 1, v20, &qword_27CC0FB08, sub_218953F20, sub_218953F20);
    v25 = v20[3] >> 1;
  }

  v27 = *(v4 + 9);
  v28 = v25 - v20[2];
  v70 = (v4[80] + 32) & ~v4[80];
  v73 = v27;
  v29 = v78;
  (*(v14 + 16))(v16, a1, v78);
  v30 = sub_219BF5714();
  (*(v14 + 8))(a1, v29);
  if (v30 < v23)
  {
    goto LABEL_16;
  }

  if (v30 >= 1)
  {
    v31 = v20[2];
    v32 = __OFADD__(v31, v30);
    v33 = v31 + v30;
    if (v32)
    {
      __break(1u);
      goto LABEL_20;
    }

    v20[2] = v33;
  }

  if (v30 != v28)
  {
    result = sub_2191FD344(v79);
    goto LABEL_14;
  }

LABEL_17:
  v16 = v20[2];
  v35 = v69[9];
  sub_2191FD310();
  v36 = v79;
  sub_219BF5E84();
  v37 = *(v36 + v35);
  v65 = v35;
  if (v37 != v80[0])
  {
LABEL_20:
    v41 = sub_219BF5EC4();
    v40 = v75;
    v39 = v76;
    v13[2](v76);
    v41(v80, 0);
    sub_219BF5E94();
    v38 = 0;
    goto LABEL_21;
  }

  v38 = 1;
  v40 = v75;
  v39 = v76;
LABEL_21:
  v42 = v72;
  v64 = v13[7];
  (v64)(v39, v38, 1, v40);
  v43 = v71;
  sub_2191F6618(v39, v71, &qword_27CC173C8, sub_218953F20);
  v45 = v13[6];
  v44 = (v13 + 6);
  v69 = v45;
  if ((v45)(v43, 1, v40) != 1)
  {
    v63 = (v68 + 32);
    v62 = (v68 + 16);
    v61 = (v68 + 8);
    v46 = v74;
    v67 = v44;
    do
    {
      sub_2191F6698(v43, &qword_27CC173C8, sub_218953F20);
      v48 = v20[3];
      v49 = v48 >> 1;
      if ((v48 >> 1) < v16 + 1)
      {
        v20 = sub_218737B64((v48 > 1), v16 + 1, 1, v20, &qword_27CC0FB08, sub_218953F20, sub_218953F20);
        v49 = v20[3] >> 1;
      }

      v50 = v63;
      sub_2191F6618(v76, v46, &qword_27CC173C8, sub_218953F20);
      if ((v69)(v46, 1, v75) == 1)
      {
        v46 = v74;
        v51 = v75;
LABEL_30:
        sub_2191F6698(v46, &qword_27CC173C8, sub_218953F20);
        v47 = v16;
      }

      else
      {
        v52 = *v50;
        if (v16 <= v49)
        {
          v53 = v49;
        }

        else
        {
          v53 = v16;
        }

        v68 = v53;
        v46 = v74;
        v54 = v20 + v70 + v73 * v16;
        v51 = v75;
        v66 = v52;
        while (1)
        {
          v52(v42, v46, v51);
          if (v68 == v16)
          {
            break;
          }

          v59 = v76;
          sub_2191F6698(v76, &qword_27CC173C8, sub_218953F20);
          v52(v54, v42, v51);
          v60 = v79;
          sub_219BF5E84();
          if (*(v60 + v65) == v80[0])
          {
            v56 = 1;
          }

          else
          {
            v55 = sub_219BF5EC4();
            (*v62)(v59);
            v55(v80, 0);
            v51 = v75;
            sub_219BF5E94();
            v56 = 0;
          }

          (v64)(v59, v56, 1, v51);
          v57 = v59;
          v46 = v74;
          sub_2191F6618(v57, v74, &qword_27CC173C8, sub_218953F20);
          v58 = (v69)(v46, 1, v51);
          v42 = v72;
          v54 += v73;
          ++v16;
          v52 = v66;
          if (v58 == 1)
          {
            goto LABEL_30;
          }
        }

        (*v61)(v42, v51);
        v47 = v68;
        v16 = v68;
        v46 = v74;
      }

      v20[2] = v47;
      v43 = v71;
      sub_2191F6618(v76, v71, &qword_27CC173C8, sub_218953F20);
    }

    while ((v69)(v43, 1, v51) != 1);
  }

  sub_2191F6698(v76, &qword_27CC173C8, sub_218953F20);
  sub_2191FD344(v79);
  result = sub_2191F6698(v43, &qword_27CC173C8, sub_218953F20);
LABEL_14:
  *v77 = v20;
  return result;
}

void sub_2191F03C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_2191FB36C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[80 * v8 + 32], (a1 + 32), 80 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2191F0504(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_2187C57F4(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_280E8BCB8, &type metadata for NewsActivity2.Article.Trait);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_2191F06A0(void *a1)
{
  v3 = a1[2];
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v3 + v5;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v3 + v5;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_218840D24(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  a1 = sub_2194ABD64(&v42, &v4[16 * v11 + 32], v9 - v11, v7);
  if (a1 < v3)
  {
    goto LABEL_15;
  }

  v15 = a1;
  if (a1)
  {
    v16 = *(v4 + 2);
    v17 = __OFADD__(v16, a1);
    v18 = a1 + v16;
    if (v17)
    {
      __break(1u);
LABEL_19:
      v21 = (v14 + 64) >> 6;
      if (v21 <= v2 + 1)
      {
        v22 = v2 + 1;
      }

      else
      {
        v22 = (v14 + 64) >> 6;
      }

      v23 = v22 - 1;
      do
      {
        v24 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return;
        }

        if (v24 >= v21)
        {
          v45 = v23;
          v46 = 0;
          goto LABEL_13;
        }

        v25 = *(v13 + 8 * v24);
        ++v2;
      }

      while (!v25);
      v39 = v14;
      v19 = (v25 - 1) & v25;
      v20 = __clz(__rbit64(v25)) | (v24 << 6);
      v2 = v24;
      goto LABEL_27;
    }

    *(v4 + 2) = v18;
  }

  a1 = v42;
  if (v15 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v12 = *(v4 + 2);
  v13 = v43;
  v14 = v44;
  v2 = v45;
  v41 = v43;
  if (!v46)
  {
    goto LABEL_19;
  }

  v19 = (v46 - 1) & v46;
  v20 = __clz(__rbit64(v46)) | (v45 << 6);
  v39 = v44;
  v21 = (v44 + 64) >> 6;
LABEL_27:
  v40 = a1;
  v26 = (a1[6] + 16 * v20);
  v28 = *v26;
  v27 = v26[1];

  v29 = v41;
LABEL_29:
  while (1)
  {
    v30 = *(v4 + 3);
    v31 = v30 >> 1;
    if ((v30 >> 1) < v12 + 1)
    {
      break;
    }

    if (v12 < v31)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v12;
  }

  v37 = sub_218840D24((v30 > 1), v12 + 1, 1, v4);
  v29 = v41;
  v4 = v37;
  v31 = *(v37 + 3) >> 1;
  if (v12 >= v31)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v32 = &v4[16 * v12 + 32];
    *v32 = v28;
    *(v32 + 1) = v27;
    ++v12;
    if (!v19)
    {
      break;
    }

    a1 = v40;
LABEL_38:
    v35 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v36 = (a1[6] + ((v2 << 10) | (16 * v35)));
    v28 = *v36;
    v27 = v36[1];

    v29 = v41;
    if (v12 == v31)
    {
      v12 = v31;
      *(v4 + 2) = v31;
      goto LABEL_29;
    }
  }

  v33 = v2;
  a1 = v40;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v34 >= v21)
    {
      break;
    }

    v19 = *(v29 + 8 * v34);
    ++v33;
    if (v19)
    {
      v2 = v34;
      goto LABEL_38;
    }
  }

  if (v21 <= v2 + 1)
  {
    v38 = v2 + 1;
  }

  else
  {
    v38 = v21;
  }

  v44 = v39;
  v45 = v38 - 1;
  v46 = 0;
  *(v4 + 2) = v12;
LABEL_13:
  sub_21892DE98(a1);
  *v1 = v4;
}

void sub_2191F09D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  v3 = sub_2191FC570(isUniquelyReferenced_nonNull_native, v11, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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
    return;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

double OfflineFeedManifest.with(createdAt:updatedAt:groups:assetURLs:assetWrappingKeyIDs:recordIDs:avAssetIDs:avAssetKeyIDs:avAssetKeyURIs:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v46 = a8;
  v47 = a3;
  v50 = a6;
  v51 = a7;
  v48 = a4;
  v49 = a5;
  v44 = a2;
  v13 = MEMORY[0x277CC9578];
  sub_2186DD9FC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  v20 = sub_219BDBD34();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v45 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  sub_2191F6618(a1, v19, &qword_280EE9C40, v13);
  v26 = *(v21 + 48);
  if (v26(v19, 1, v20) == 1)
  {
    (*(v21 + 16))(v25, v10, v20);
    v27 = v10;
    if (v26(v19, 1, v20) != 1)
    {
      sub_2191F6698(v19, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v21 + 32))(v25, v19, v20);
    v27 = v10;
  }

  sub_2191F6618(v44, v16, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v26(v16, 1, v20) == 1)
  {
    v28 = type metadata accessor for OfflineFeedManifest(0);
    (*(v21 + 16))(v45, v27 + *(v28 + 20), v20);
    v29 = v26(v16, 1, v20);
    v31 = v50;
    v30 = v51;
    v33 = v48;
    v32 = v49;
    if (v29 != 1)
    {
      sub_2191F6698(v16, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }

    v34 = v47;
    if (v47)
    {
LABEL_9:
      v44 = v34;
      v35 = v46;
      if (v33)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else
  {
    (*(v21 + 32))(v45, v16, v20);
    v31 = v50;
    v30 = v51;
    v33 = v48;
    v32 = v49;
    v34 = v47;
    if (v47)
    {
      goto LABEL_9;
    }
  }

  v44 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 24));

  v35 = v46;
  if (v33)
  {
LABEL_10:
    v43 = v33;
    if (v32)
    {
      goto LABEL_11;
    }

    goto LABEL_20;
  }

LABEL_19:
  v43 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 28));

  if (v32)
  {
LABEL_11:
    v42 = v32;
    if (v31)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  v42 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 32));

  if (!v31)
  {
LABEL_12:
    v31 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 36));
  }

LABEL_13:
  if (v30)
  {
    v36 = a10;
    if (v35)
    {
      goto LABEL_15;
    }

LABEL_23:
    v35 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 44));

    if (v36)
    {
      goto LABEL_16;
    }

LABEL_24:
    v37 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 48));

    goto LABEL_25;
  }

  v30 = *(v27 + *(type metadata accessor for OfflineFeedManifest(0) + 40));

  v36 = a10;
  if (!v35)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (!v36)
  {
    goto LABEL_24;
  }

LABEL_16:
  v37 = v36;
LABEL_25:
  v38 = *(v21 + 32);
  v38(a9, v25, v20);
  v39 = type metadata accessor for OfflineFeedManifest(0);
  v38(a9 + v39[5], v45, v20);
  v40 = v43;
  *(a9 + v39[6]) = v44;
  *(a9 + v39[7]) = v40;
  *(a9 + v39[8]) = v42;
  *(a9 + v39[9]) = v31;
  *(a9 + v39[10]) = v30;
  *(a9 + v39[11]) = v35;
  *(a9 + v39[12]) = v37;

  return result;
}