void sub_215300744(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t sub_2153007A0()
{
  v0 = objc_opt_self();
  v1 = sub_2154A1D2C();
  v2 = [v0 localizedFrameworkStringForKey:v1 value:0 table:0 allowSiri:1];

  v3 = sub_2154A1D6C();
  return v3;
}

void sub_2153008C8(int a1, int a2)
{
  v3 = v2;
  v59 = a1;
  LODWORD(v60) = a2;
  v4 = sub_21549E56C();
  v61 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A378, &qword_2154BE168);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A380, &unk_2154BE170);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v57 - v22;
  v24 = *&v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView];
  if (!v24)
  {
    (*(v17 + 56))(v15, 1, 1, v16, v21);
    goto LABEL_14;
  }

  v58 = v4;
  v25 = v24;
  sub_2154A12EC();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_14:
    sub_2151ADCD8(v15, &qword_27CA5A378, &qword_2154BE168);
    return;
  }

  (*(v17 + 32))(v23, v15, v16);
  v26 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  if (!*&v3[v26] || (v65 = &unk_2828188F0, (v27 = swift_dynamicCastObjCProtocolConditional()) == 0))
  {
    (*(v17 + 8))(v23, v16);
    return;
  }

  v28 = [v27 _paperBundleURL];
  sub_21549E51C();

  (*(v61 + 32))(v9, v6, v58);
  if (*&v3[v26] && (objc_opt_self(), (v29 = swift_dynamicCastObjCClass()) != 0) && (v30 = [v29 attachment]) != 0 && (v31 = v30, v32 = objc_msgSend(v30, sel_note), v31, v32) && (v33 = objc_msgSend(v32, sel_isPasswordProtected), v32, v33) && (v34 = *&v3[v26]) != 0 && (objc_opt_self(), (v35 = swift_dynamicCastObjCClass()) != 0))
  {
    v36 = v35;
    *(&v63 + 1) = sub_2151A6C9C(0, &qword_27CA5A400, 0x277D36880);
    v64 = sub_21532210C(&qword_27CA5A408, &qword_27CA5A400, 0x277D36880, MEMORY[0x277D36438]);
    *&v62 = v36;
    v37 = v34;
  }

  else
  {
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
  }

  sub_2154A1C0C();
  v38 = MEMORY[0x216068780](0, &v62);
  sub_2151ADCD8(&v62, &qword_27CA5A3E8, &qword_2154C0630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A3F0, &qword_2154BE180);
  (*(v17 + 56))(v12, 1, 1, v16);
  v39 = sub_2154A1ABC();
  sub_2151ADCD8(v12, &qword_27CA5A378, &qword_2154BE168);
  (*(v17 + 16))(v19, v23, v16);
  v40 = objc_allocWithZone(type metadata accessor for QuickLookalikePaperViewController());
  v41 = v38;

  v42 = v3;
  sub_21531FE04(v19, v42, v41, v39, v60 & 1, v40);
  v44 = v43;

  v57 = v41;
  v60 = v39;

  v45 = OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController;
  v46 = *(v44 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_paperDocumentViewController);
  if (!v46)
  {
    __break(1u);
    goto LABEL_22;
  }

  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v47 = v46;
  sub_2154A14FC();

  v48 = *(v44 + v45);
  if (!v48)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  swift_beginAccess();
  swift_unknownObjectWeakLoadStrong();
  v49 = v48;
  sub_2154A150C();

  sub_2153CF644(v59 & 1);
  sub_215322150(&qword_27CA5A3F8, type metadata accessor for PaperDocumentTextAttachmentView, &protocol conformance descriptor for PaperDocumentTextAttachmentView);
  v50 = *(v44 + v45);
  if (v50)
  {
    v51 = v42;
    v52 = [v50 navigationItem];
    sub_2154A235C();

    (*(v61 + 8))(v9, v58);
    (*(v17 + 8))(v23, v16);
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = (v44 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dismissAction);
    v55 = *(v44 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dismissAction);
    v56 = *(v44 + OBJC_IVAR____TtC11NotesEditor33QuickLookalikePaperViewController_dismissAction + 8);
    *v54 = sub_2153242F8;
    v54[1] = v53;

    sub_2151AF750(v55, v56);

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_215301034(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    aBlock[4] = sub_215324300;
    aBlock[5] = v5;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2151BD7E4;
    aBlock[3] = &block_descriptor_274;
    v6 = _Block_copy(aBlock);
    v7 = v4;

    [a1 dismissViewControllerAnimated:1 completion:v6];
    _Block_release(v6);
  }
}

void sub_215301140(uint64_t a1)
{
  v2 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_shouldUpgradeAttachmentAfterQuickLookIsDismissed;
  if (*(a1 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_shouldUpgradeAttachmentAfterQuickLookIsDismissed) == 1)
  {
    sub_2152EF064();
    *(a1 + v2) = 0;
    return;
  }

  v3 = *(a1 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView);
  if (v3)
  {
    v4 = v3;
    v5 = sub_2154A12FC();
    if (v5)
    {
      v6 = v5;
      v7 = sub_2154A126C();

      if (v7)
      {

        v12 = [v7 documentScrollView];
        if (v12)
        {
          [v12 contentOffset];
          v9 = v8;
          v11 = v10;
          [v12 setContentOffset_];
          [v12 setContentOffset_];
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_21530127C(char a1)
{
  v3 = [v1 window];
  if (v3)
  {
    v4 = v3;
    v5 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
    swift_beginAccess();
    if (!*&v1[v5])
    {
      goto LABEL_25;
    }

    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      goto LABEL_25;
    }

    v7 = [v6 attachment];
    if (!v7)
    {
      goto LABEL_25;
    }

    v8 = v7;
    v9 = [v4 rootViewController];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9;
    v11 = [v8 note];
    if (!v11)
    {

      v12 = v8;
      goto LABEL_24;
    }

    v12 = v11;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v53 = v8;
      v14 = Strong;
      v8 = [Strong textLayoutManager];

      if (v8)
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = [v15 attachmentViewDelegate];
          if (v16)
          {
            v51 = v8;
            v52 = v16;
            if ([v53 attachmentType] != 6)
            {
              goto LABEL_30;
            }

            v17 = *&v1[v5];
            if (v17)
            {
              objc_opt_self();
              v18 = swift_dynamicCastObjCClass();
              if (v18)
              {
                v19 = v18;
                v50 = v17;
                v20 = [v19 encryptionStateChecker];
                if ([v20 encryptionState] == 1)
                {
                  [v52 attachmentView:v1 shouldPresentAttachment:v53];

                  swift_unknownObjectRelease();
                  v12 = v50;
                  v10 = v20;
LABEL_24:

                  v4 = v10;
LABEL_25:

                  return;
                }

LABEL_30:
                v21 = swift_allocObject();
                swift_unknownObjectWeakInit();
                v22 = [v1 ic_isInSecureWindow];
                v23 = swift_allocObject();
                *(v23 + 16) = v21;
                v47 = v22;
                *(v23 + 24) = v22;
                *(v23 + 32) = v52;
                *(v23 + 40) = v12;
                *(v23 + 48) = a1 & 1;
                v49 = v23;
                *(v23 + 56) = v10;

                v24 = v10;
                v25 = v12;
                swift_unknownObjectRetain();
                v26 = [v1 window];
                if (v26)
                {
                  v27 = v26;
                  v28 = v24;
                  v29 = [v26 rootViewController];
                  if (v29)
                  {
                    v30 = v29;
                    if (*&v1[v5])
                    {
                      objc_opt_self();
                      v31 = swift_dynamicCastObjCClass();
                      if (v31)
                      {
                        v32 = [v31 attachment];
                        if (v32)
                        {
                          v33 = v32;
                          v46 = objc_opt_self();
                          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
                          v34 = swift_allocObject();
                          *(v34 + 16) = xmmword_2154BDB20;
                          *(v34 + 32) = v33;
                          sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
                          v48 = v33;
                          v35 = sub_2154A1F3C();

                          v36 = swift_allocObject();
                          *(v36 + 16) = sub_2153253FC;
                          *(v36 + 24) = v49;
                          aBlock[4] = sub_215325944;
                          aBlock[5] = v36;
                          aBlock[0] = MEMORY[0x277D85DD0];
                          aBlock[1] = 1107296256;
                          aBlock[2] = sub_2153DF054;
                          aBlock[3] = &block_descriptor_530;
                          v37 = _Block_copy(aBlock);
                          v38 = v27;
                          v12 = v30;

                          [v46 generatePDFsIfNecessaryForGalleryAttachments:v35 displayWindow:v38 presentingViewController:v12 completionHandler:v37];

                          swift_unknownObjectRelease();

                          _Block_release(v37);

                          v10 = v12;
                          goto LABEL_24;
                        }
                      }
                    }
                  }

                  else
                  {
                    v30 = v27;
                  }

                  v24 = v28;
                }

                swift_beginAccess();
                v39 = swift_unknownObjectWeakLoadStrong();
                if (v39)
                {
                  v40 = v39;
                  if (v47)
                  {
                    v41 = v39;
                    [v52 attachmentView:v41 shouldPresentNote:v25];

LABEL_52:
                    swift_unknownObjectRelease();
                    v12 = v51;
                    goto LABEL_20;
                  }

                  v42 = *&v39[OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView];
                  if (v42 && *(v42 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView__showFormFillingBanner) == 1 && (a1 & 1) != 0)
                  {
                    v43 = v42;
                    sub_215301A64(1, 1);
                  }

                  sub_2153008C8(0, a1 & 1);
                  if (v44)
                  {
                    v45 = v44;
                    [v24 presentViewController:v44 animated:1 completion:0];
                  }

                  else
                  {
                  }
                }

                else
                {
                }

                goto LABEL_52;
              }
            }

            swift_unknownObjectRelease();
            v12 = v8;
LABEL_20:
            v10 = v4;
            goto LABEL_24;
          }

LABEL_23:
          v10 = v8;
          goto LABEL_24;
        }

LABEL_22:
        v12 = v4;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v12 = v10;
    goto LABEL_20;
  }
}

void sub_215301958(uint64_t a1, char a2, void *a3, uint64_t a4, char a5, void *a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (a2)
    {
      [a3 attachmentView:Strong shouldPresentNote:a4];
    }

    else
    {
      v13 = *(Strong + OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView);
      if (v13 && *(v13 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView__showFormFillingBanner) == 1 && (a5 & 1) != 0)
      {
        v14 = v13;
        sub_215301A64(1, 1);
      }

      sub_2153008C8(0, a5 & 1);
      if (v15)
      {
        v16 = v15;
        [a6 presentViewController:v15 animated:1 completion:0];
      }
    }
  }
}

void sub_215301A64(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView__showFormFillingBanner;
  if (v2[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView__showFormFillingBanner] == (a1 & 1))
  {
    return;
  }

  v4 = v2;
  v2[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView__showFormFillingBanner] = a1 & 1;
  v6 = sub_2154A12FC();
  if (!v6)
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = v6;
  v8 = sub_2154A126C();

  if (!v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v8 scaleFactor];
  v10 = v9;

  v11 = sub_2154A12FC();
  if (!v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v12 = v11;
  v13 = sub_2154A126C();

  if (!v13)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v13 minScaleFactor];
  v15 = v14;

  v16 = *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_collapseFormFillingBannerConstraint];
  if (!v16)
  {
LABEL_19:
    __break(1u);
    return;
  }

  [v16 setActive_];
  if (a2)
  {
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v4;
    *(v18 + 24) = v10 <= v15;
    v23[4] = sub_2153251F4;
    v23[5] = v18;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_2151BD7E4;
    v23[3] = &block_descriptor_503;
    v19 = _Block_copy(v23);
    v20 = v4;

    [v17 _animateUsingDefaultTimingWithOptions_animations_completion_];
    _Block_release(v19);
  }

  else
  {
    [v4 layoutIfNeeded];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      sub_2152FE67C(1, 1);
    }

    sub_2152FE2F0(v10 <= v15);
  }
}

void sub_215301CC0()
{
  v1 = [v0 ic_enclosingScrollView];
  if (v1)
  {
    v16 = v1;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
      swift_beginAccess();
      if (*&v0[v4])
      {
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (v5)
        {
          v6 = [v5 attachment];
          if (v6)
          {
            v7 = v6;
            v8 = [v6 note];
            if (!v8)
            {

              return;
            }

            v9 = v8;
            v10 = [v8 rangeForAttachment_];
            v12 = v11;
            v13 = [v3 textStorage];
            [v13 deleteCharactersInRange_];

            v14 = [v3 delegate];
            if (v14)
            {
              v15 = v14;
              if (([v14 respondsToSelector_] & 1) == 0)
              {

                swift_unknownObjectRelease();
                return;
              }

              [v15 textViewDidChange_];

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }
        }
      }
    }

    else
    {
    }
  }
}

void sub_215301EBC()
{
  v1 = [v0 window];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 rootViewController];

    if (v3)
    {
      v4 = [v3 ic_topViewController];

      if (v4)
      {
        v5 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
        swift_beginAccess();
        if (*&v0[v5])
        {
          objc_opt_self();
          v6 = swift_dynamicCastObjCClass();
          if (v6)
          {
            v7 = [v6 attachment];
            if (v7)
            {
              v8 = v7;
              v9 = [v7 title];
              if (!v9)
              {
                v9 = [objc_opt_self() defaultTitleForAttachmentType_];
              }

              v10 = v9;
              sub_2154A1D6C();

              v11 = objc_opt_self();
              v12 = sub_2154A1D2C();

              v13 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v14 = swift_allocObject();
              *(v14 + 16) = v13;
              *(v14 + 24) = v8;
              aBlock[4] = sub_2153242F0;
              aBlock[5] = v14;
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_2153021B0;
              aBlock[3] = &block_descriptor_267;
              v15 = _Block_copy(aBlock);
              v16 = v8;

              [v11 showWithTitle:v12 presentingViewController:v4 completion:v15];
              _Block_release(v15);

              v4 = v12;
            }
          }
        }
      }
    }
  }
}

void sub_215302130(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_215304BD8(a4, a1, a2);
    }
  }
}

double sub_2153021B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_2154A1D6C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v2(v3, v5);

  return result;
}

double sub_21530222C(void *a1)
{
  v2 = v1;
  v4 = [v1 window];
  if (v4)
  {
    v6 = v4;
    v7 = [v4 rootViewController];

    if (v7)
    {
      v8 = [v7 ic_topViewController];

      if (v8)
      {
        v9 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
        swift_beginAccess();
        if (*&v2[v9] && (objc_opt_self(), (v10 = swift_dynamicCastObjCClass()) != 0) && (v11 = [v10 attachment]) != 0)
        {
          v12 = v11;
          v13 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v14 = swift_allocObject();
          v14[2] = v13;
          v14[3] = v12;
          v14[4] = a1;
          v14[5] = v8;
          v15 = v12;
          v32 = v8;
          v16 = a1;

          v17 = [v2 window];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 rootViewController];
            if (v19)
            {
              v20 = v19;
              if (*&v2[v9])
              {
                objc_opt_self();
                v21 = swift_dynamicCastObjCClass();
                if (v21)
                {
                  v22 = [v21 attachment];
                  if (v22)
                  {
                    v23 = v22;
                    v24 = objc_opt_self();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
                    v25 = swift_allocObject();
                    *(v25 + 16) = xmmword_2154BDB20;
                    *(v25 + 32) = v23;
                    sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
                    v31 = v23;
                    v26 = sub_2154A1F3C();

                    v27 = swift_allocObject();
                    *(v27 + 16) = sub_2153242A4;
                    *(v27 + 24) = v14;
                    aBlock[4] = sub_215325944;
                    aBlock[5] = v27;
                    aBlock[0] = MEMORY[0x277D85DD0];
                    aBlock[1] = 1107296256;
                    aBlock[2] = sub_2153DF054;
                    aBlock[3] = &block_descriptor_260;
                    v28 = _Block_copy(aBlock);
                    v29 = v18;
                    v30 = v20;

                    [v24 generatePDFsIfNecessaryForGalleryAttachments:v26 displayWindow:v29 presentingViewController:v30 completionHandler:v28];

                    _Block_release(v28);

                    return result;
                  }
                }
              }
            }

            else
            {
              v20 = v18;
            }
          }

          sub_2153025E8(v13, v15, v16, v32);
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void *sub_2153025E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = sub_21549E56C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = result;
    v44 = a3;
    v45 = a4;
    sub_215302998(v10);

    (*(v8 + 32))(v13, v10, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A340, &unk_2154C27B0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2154BDB50;
    *(v16 + 56) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v16 + 32));
    v18 = *(v8 + 16);
    v43 = v13;
    v18(boxed_opaque_existential_0, v13, v7);
    v19 = objc_allocWithZone(MEMORY[0x277D546D8]);
    v20 = sub_2154A1F3C();

    v21 = [v19 initWithActivityItems:v20 applicationActivities:0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A370, &qword_2154BE160);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_2154BDB60;
    v23 = *MEMORY[0x277D54740];
    v24 = *MEMORY[0x277D360F8];
    *(v22 + 32) = *MEMORY[0x277D54740];
    *(v22 + 40) = v24;
    v25 = *MEMORY[0x277D54790];
    v26 = a2;
    v27 = *MEMORY[0x277D54730];
    *(v22 + 48) = *MEMORY[0x277D54790];
    *(v22 + 56) = v27;
    type metadata accessor for ActivityType(0);
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v31 = v27;
    v32 = sub_2154A1F3C();

    [v21 setExcludedActivityTypes_];

    v33 = [v26 account];
    if (v33)
    {
      v34 = v33;
      v35 = [v33 isManaged];
    }

    else
    {
      v35 = 0;
    }

    [v21 setIsContentManaged_];
    v36 = v21;
    v37 = [v36 popoverPresentationController];
    v39 = v44;
    v38 = v45;
    v40 = v43;
    if (v37)
    {
      v41 = v37;
      [v37 setSourceView_];
    }

    v42 = [v36 popoverPresentationController];

    if (v42)
    {
      [v39 bounds];
      [v42 setSourceRect_];
    }

    [v38 presentViewController:v36 animated:1 completion:0];

    return (*(v8 + 8))(v40, v7);
  }

  return result;
}

uint64_t sub_215302998@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090, &qword_2154BE0D0);
  MEMORY[0x28223BE20](v2 - 8);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  MEMORY[0x28223BE20](v10);
  v43 = &v42 - v11;
  v12 = sub_21549E56C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  if (!*(v1 + v19))
  {
    goto LABEL_13;
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20)
  {
    v21 = [v20 attachment];
    if (v21)
    {
      v22 = v21;
      if ([v21 isPasswordProtected])
      {
        v23 = [objc_opt_self() pdfURLForAttachment_];
        if (v23)
        {
          v24 = v23;
          sub_21549E51C();

          return (*(v13 + 32))(v44, v18, v12);
        }
      }
    }
  }

  if (*(v1 + v19) && (objc_opt_self(), (v26 = swift_dynamicCastObjCClass()) != 0) && (v27 = [v26 attachment]) != 0)
  {
    v28 = v27;
    v29 = [v27 previewItemURL];

    if (v29)
    {
      sub_21549E51C();

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = *(v13 + 56);
    v31(v9, v30, 1, v12);
    v41 = v9;
    v32 = v43;
    sub_215323B30(v41, v43);
    if ((*(v13 + 48))(v32, 1, v12) != 1)
    {
      return (*(v13 + 32))(v44, v32, v12);
    }
  }

  else
  {
LABEL_13:
    v31 = *(v13 + 56);
    v32 = v43;
    v31(v43, 1, 1, v12);
  }

  if (!*(v1 + v19) || (objc_opt_self(), (v33 = swift_dynamicCastObjCClass()) == 0) || (v34 = [v33 attachment]) == 0)
  {
    v31(v6, 1, 1, v12);
LABEL_20:
    v39 = NSTemporaryDirectory();
    sub_2154A1D6C();

    sub_21549E47C();

    sub_21549E4BC();
    (*(v13 + 8))(v15, v12);
    v40 = *(v13 + 48);
    if (v40(v6, 1, v12) != 1)
    {
      sub_2151ADCD8(v6, &unk_27CA5B090, &qword_2154BE0D0);
    }

    goto LABEL_25;
  }

  v35 = v34;
  v36 = [v34 fallbackPDFURL];

  if (v36)
  {
    v37 = v42;
    sub_21549E51C();

    v38 = 0;
  }

  else
  {
    v38 = 1;
    v37 = v42;
  }

  v31(v37, v38, 1, v12);
  sub_215323B30(v37, v6);
  v40 = *(v13 + 48);
  if (v40(v6, 1, v12) == 1)
  {
    goto LABEL_20;
  }

  (*(v13 + 32))(v44, v6, v12);
LABEL_25:
  result = (v40)(v32, 1, v12);
  if (result != 1)
  {
    return sub_2151ADCD8(v32, &unk_27CA5B090, &qword_2154BE0D0);
  }

  return result;
}

void sub_215302F18()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 rootViewController];

    if (v4)
    {
      v5 = [v4 ic_topViewController];

      if (v5)
      {
        v6 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
        swift_beginAccess();
        if (!*&v1[v6])
        {
          goto LABEL_17;
        }

        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (!v7)
        {
          goto LABEL_17;
        }

        v8 = [v7 attachment];
        if (!v8)
        {
          goto LABEL_17;
        }

        v9 = v8;
        v10 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v9;
        v12 = v9;

        v13 = [v1 window];
        if (v13)
        {
          v14 = v13;
          v15 = [v13 rootViewController];
          if (v15)
          {
            v16 = v15;
            if (*&v1[v6])
            {
              objc_opt_self();
              v17 = swift_dynamicCastObjCClass();
              if (v17)
              {
                v18 = [v17 attachment];
                if (v18)
                {
                  v19 = v18;
                  v27 = objc_opt_self();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
                  v20 = swift_allocObject();
                  *(v20 + 16) = xmmword_2154BDB20;
                  *(v20 + 32) = v19;
                  sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
                  v26 = v19;
                  v21 = sub_2154A1F3C();

                  v22 = swift_allocObject();
                  *(v22 + 16) = sub_21532429C;
                  *(v22 + 24) = v11;
                  aBlock[4] = sub_215325944;
                  aBlock[5] = v22;
                  aBlock[0] = MEMORY[0x277D85DD0];
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_2153DF054;
                  aBlock[3] = &block_descriptor_249;
                  v23 = _Block_copy(aBlock);
                  v24 = v14;
                  v25 = v16;

                  [v27 generatePDFsIfNecessaryForGalleryAttachments:v21 displayWindow:v24 presentingViewController:v25 completionHandler:v23];

                  _Block_release(v23);

                  v5 = v25;
LABEL_17:

                  return;
                }
              }
            }
          }

          else
          {
            v16 = v14;
          }
        }

        sub_2153032A0(v10, v12);

        goto LABEL_17;
      }
    }
  }
}

void *sub_2153032A0(uint64_t a1, void *a2)
{
  v3 = sub_21549E56C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_215302998(v6);

    (*(v4 + 32))(v9, v6, v3);
    v12 = [objc_opt_self() printInfo];
    v13 = [a2 title];
    if (v13)
    {
      v14 = v13;
      sub_2154A1D6C();
    }

    v15 = sub_2154A1D2C();

    [v12 setJobName_];

    v16 = [objc_opt_self() sharedPrintController];
    [v16 setPrintInfo_];
    v17 = sub_21549E49C();
    [v16 setPrintingItem_];

    [v16 presentAnimated:1 completionHandler:0];
    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

double sub_2153034EC()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {
    v4 = v2;
    v5 = [v2 rootViewController];

    if (v5)
    {
      v6 = [v5 ic_topViewController];

      if (v6)
      {
        v7 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v8 = swift_allocObject();
        *(v8 + 16) = v7;
        *(v8 + 24) = v6;
        v9 = v6;

        v10 = [v1 window];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 rootViewController];
          if (v12)
          {
            v13 = v12;
            v14 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
            swift_beginAccess();
            if (*&v1[v14])
            {
              objc_opt_self();
              v15 = swift_dynamicCastObjCClass();
              if (v15)
              {
                v16 = [v15 attachment];
                if (v16)
                {
                  v17 = v16;
                  v25 = objc_opt_self();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
                  v18 = swift_allocObject();
                  *(v18 + 16) = xmmword_2154BDB20;
                  *(v18 + 32) = v17;
                  sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
                  v19 = v17;
                  v20 = sub_2154A1F3C();

                  v21 = swift_allocObject();
                  *(v21 + 16) = sub_215324294;
                  *(v21 + 24) = v8;
                  aBlock[4] = sub_215325944;
                  aBlock[5] = v21;
                  aBlock[0] = MEMORY[0x277D85DD0];
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_2153DF054;
                  aBlock[3] = &block_descriptor_238;
                  v22 = _Block_copy(aBlock);
                  v23 = v11;
                  v24 = v13;

                  [v25 generatePDFsIfNecessaryForGalleryAttachments:v20 displayWindow:v23 presentingViewController:v24 completionHandler:v22];

                  _Block_release(v22);

                  return result;
                }
              }
            }
          }

          else
          {
          }
        }

        sub_215303830(v7, v9);
      }
    }
  }

  return result;
}

void *sub_215303830(uint64_t a1, void *a2)
{
  v3 = sub_21549E56C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    sub_215302998(v6);

    (*(v4 + 32))(v9, v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A368, &qword_2154C2F20);
    v12 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2154BDB50;
    (*(v4 + 16))(v13 + v12, v9, v3);
    v14 = objc_allocWithZone(MEMORY[0x277D75458]);
    v15 = sub_2154A1F3C();

    v16 = [v14 initForExportingURLs:v15 asCopy:1];

    [a2 presentViewController:v16 animated:1 completion:0];
    return (*(v4 + 8))(v9, v3);
  }

  return result;
}

double sub_215303A3C()
{
  v1 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  if (*&v0[v1])
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = [v3 attachment];
      if (v4)
      {
        v5 = v4;
        v6 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v7 = swift_allocObject();
        *(v7 + 16) = v6;
        *(v7 + 24) = v5;
        v8 = v5;

        v9 = [v0 window];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 rootViewController];
          if (v11)
          {
            v12 = v11;
            if (*&v0[v1])
            {
              objc_opt_self();
              v13 = swift_dynamicCastObjCClass();
              if (v13)
              {
                v14 = [v13 attachment];
                if (v14)
                {
                  v15 = v14;
                  v23 = objc_opt_self();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
                  v16 = swift_allocObject();
                  *(v16 + 16) = xmmword_2154BDB20;
                  *(v16 + 32) = v15;
                  sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
                  v17 = v15;
                  v18 = sub_2154A1F3C();

                  v19 = swift_allocObject();
                  *(v19 + 16) = sub_215323F34;
                  *(v19 + 24) = v7;
                  aBlock[4] = sub_215323F3C;
                  aBlock[5] = v19;
                  aBlock[0] = MEMORY[0x277D85DD0];
                  aBlock[1] = 1107296256;
                  aBlock[2] = sub_2153DF054;
                  aBlock[3] = &block_descriptor_196;
                  v20 = _Block_copy(aBlock);
                  v21 = v10;
                  v22 = v12;

                  [v23 generatePDFsIfNecessaryForGalleryAttachments:v18 displayWindow:v21 presentingViewController:v22 completionHandler:v20];

                  _Block_release(v20);

                  return result;
                }
              }
            }
          }

          else
          {
            v12 = v10;
          }
        }

        sub_215303D58(v6, v8);
      }
    }
  }

  return result;
}

void *sub_215303D58(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_21549E56C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    sub_215302998(v12);

    v18 = v5;
    v26 = v5;
    v19 = *(v7 + 32);
    v19(v15, v12, v6);
    v20 = sub_2154A202C();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
    (*(v7 + 16))(v9, v15, v6);
    sub_2154A1FFC();
    v21 = a2;
    v22 = sub_2154A1FEC();
    v23 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D85700];
    *(v24 + 2) = v22;
    *(v24 + 3) = v25;
    *(v24 + 4) = v21;
    v19(&v24[v23], v9, v6);
    sub_2152F4D50(0, 0, v26, &unk_2154BE150, v24);

    return (*(v7 + 8))(v15, v6);
  }

  return result;
}

uint64_t sub_21530400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = sub_21549E56C();
  v5[22] = v6;
  v7 = *(v6 - 8);
  v5[23] = v7;
  v5[24] = *(v7 + 64);
  v5[25] = swift_task_alloc();
  v8 = sub_21549F03C();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  sub_2154A1FFC();
  v5[29] = sub_2154A1FEC();
  v10 = sub_2154A1FCC();

  return MEMORY[0x2822009F8](sub_215304164, v10, v9);
}

void sub_215304164()
{
  v1 = v0[20];

  v2 = [v1 title];
  if (!v2)
  {
    v2 = [objc_opt_self() defaultTitleForAttachmentType_];
  }

  v3 = v2;
  sub_2154A1D6C();

  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[25];
  v7 = v0[23];
  v8 = v0[22];
  v36 = v0[26];
  v37 = v0[21];
  v38 = v0[20];
  v9 = [v38 pasteboardData];
  v10 = [v9 persistenceData];

  v11 = sub_21549E59C();
  v35 = v12;

  v13 = v11;
  v14 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  v15 = sub_2154A1D2C();

  [v14 setSuggestedName_];

  sub_21549EFDC();
  sub_21549EF7C();
  (*(v5 + 8))(v4, v36);
  v16 = sub_2154A1D2C();

  (*(v7 + 16))(v6, v37, v8);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v6, v8);
  v0[6] = sub_2153240F0;
  v0[7] = v18;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2153047F8;
  v0[5] = &block_descriptor_206;
  v19 = _Block_copy(v0 + 2);

  [v14 registerFileRepresentationForTypeIdentifier:v16 fileOptions:0 visibility:0 loadHandler:v19];

  _Block_release(v19);
  v20 = *MEMORY[0x277D35D08];
  v21 = swift_allocObject();
  *(v21 + 16) = v13;
  *(v21 + 24) = v35;
  v0[12] = sub_2153241C4;
  v0[13] = v21;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_215304988;
  v0[11] = &block_descriptor_212;
  v22 = _Block_copy(v0 + 8);
  v23 = v20;
  sub_215324200(v13, v35);

  [v14 registerDataRepresentationForTypeIdentifier:v23 visibility:3 loadHandler:v22];
  _Block_release(v22);

  v24 = [v38 account];
  if (v24 && (v25 = v24, v26 = [v24 isManaged], v25, (v26 & 1) != 0))
  {
    v27 = 2;
  }

  else
  {
    v27 = 1;
  }

  v28 = objc_opt_self();
  v29 = swift_allocObject();
  *(v29 + 16) = v14;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_215324254;
  *(v30 + 24) = v29;
  v0[18] = sub_21532425C;
  v0[19] = v30;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_2152F1C04;
  v0[17] = &block_descriptor_221;
  v31 = _Block_copy(v0 + 14);
  v32 = v14;

  [v28 _performAsDataOwner_block_];
  sub_215324170(v13, v35);

  _Block_release(v31);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {

    v34 = v0[1];

    v34();
  }
}

uint64_t sub_2153046C0(void (*a1)(char *, uint64_t, void), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090, &qword_2154BE0D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_21549E56C();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a3, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  a1(v7, 1, 0);
  sub_2151ADCD8(v7, &unk_27CA5B090, &qword_2154BE0D0);
  return 0;
}

void sub_21530481C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090, &qword_2154BE0D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  sub_215324EEC(a1, &v15 - v9, &unk_27CA5B090, &qword_2154BE0D0);
  v11 = sub_21549E56C();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v13 = sub_21549E49C();
    (*(v12 + 8))(v10, v11);
  }

  if (a3)
  {
    v14 = sub_21549E3CC();
  }

  else
  {
    v14 = 0;
  }

  (*(a4 + 16))(a4, v13, a2 & 1, v14);
}

id sub_2153049AC(uint64_t a1, void *aBlock, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  v8 = v5(a4, v7);

  return v8;
}

void sub_215304A4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_21549E3CC();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_21549E58C();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_215304AE4(void *a1)
{
  v2 = [objc_opt_self() generalPasteboard];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2154BDB20;
  *(v3 + 32) = a1;
  sub_2151A6C9C(0, &qword_27CA5A360, 0x277CCAA88);
  v4 = a1;
  v5 = sub_2154A1F3C();

  [v2 setItemProviders:v5 localOnly:0 expirationDate:0];
}

void sub_215304BD8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = [a1 title];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2154A1D6C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = [v4 undoManager];
  if (v11)
  {
    v12 = v11;
    v13 = swift_allocObject();
    v13[2] = a1;
    v13[3] = v8;
    v13[4] = v10;
    type metadata accessor for PaperDocumentTextAttachmentView(0);
    v14 = a1;

    sub_2154A223C();
  }

  v15 = [v4 undoManager];
  if (v15)
  {
    v16 = v15;
    v17 = objc_opt_self();
    v18 = sub_2154A1D2C();
    v19 = [v17 localizedFrameworkStringForKey:v18 value:0 table:0 allowSiri:1];

    if (!v19)
    {
      sub_2154A1D6C();
      v19 = sub_2154A1D2C();
    }

    [v16 setActionName_];
  }

  v20 = sub_2154A1D2C();
  [a1 setTitle_];

  v21 = sub_2154A1D2C();
  [a1 setUserTitle_];

  v22 = sub_2154A1D2C();
  [a1 updateChangeCountWithReason_];

  [a1 attachmentDidChange];
  v23 = [a1 note];
  if (v23)
  {
    v24 = v23;
    if ([v23 regenerateTitle:1 snippet:1])
    {
      v25 = sub_2154A1D2C();
      [v24 markShareDirtyIfNeededWithReason_];

      v26 = sub_2154A1D2C();
      [v24 updateChangeCountWithReason_];

      v24 = v26;
    }
  }

  v27 = [a1 managedObjectContext];
  [v27 ic_save];

  v28 = *&v4[OBJC_IVAR___ICPaperDocumentTextAttachmentView_headerView];
  if (v28)
  {
    v29 = v28;

    sub_2152F2B60();

    v30 = sub_2152F0504();
    [v30 updateTitle];
  }

  else
  {
    __break(1u);
  }
}

id PaperDocumentTextAttachmentView.__deallocating_deinit()
{
  v1 = [v0 undoManager];
  if (v1)
  {
    v2 = v1;
    [v1 removeAllActionsWithTarget_];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for PaperDocumentTextAttachmentView(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2153051DC()
{
  v1 = [v0 window];
  if (v1)
  {

    sub_21530127C(0);
  }

  else
  {
    *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_openAttachmentWhenVisible) = 1;
  }
}

uint64_t sub_2153052BC()
{
  v1 = *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v1)
  {
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v2 = v1;
    sub_2154A131C();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = swift_unknownObjectRelease();
    v4 = *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData);
    if (v4)
    {
      *(v4 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity) = 1;
      *(v4 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasCollabView) = 1;
    }
  }

  return result;
}

uint64_t sub_2153053B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v3 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_liveStreamMessenger;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v6 = *(v3 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v6)
  {
    swift_unknownObjectWeakLoadStrong();
    v7 = v6;
    sub_2154A131C();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  result = swift_unknownObjectRelease();
  if (Strong)
  {
    result = swift_unknownObjectRelease();
    v10 = *(v3 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData);
    if (v10)
    {
      *(v10 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity) = 1;
      *(v10 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasCollabView) = 1;
    }
  }

  return result;
}

void (*sub_2153054B8(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_liveStreamMessenger;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_215305558;
}

void sub_215305558(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *(v4 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
    if (v5)
    {
      swift_unknownObjectWeakLoadStrong();
      v6 = v5;
      sub_2154A131C();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = v3[5];
      swift_unknownObjectRelease();
      v8 = *(v7 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData);
      if (v8)
      {
        *(v8 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity) = 1;
        *(v8 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasCollabView) = 1;
      }
    }
  }

  free(v3);
}

uint64_t sub_2153056C4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_participantDetailsDataSource);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v6 = *(v2 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v6)
  {
    swift_unknownObjectRetain();
    v7 = v6;
    sub_2154A135C();
  }

  return swift_unknownObjectRelease();
}

uint64_t (*sub_215305778(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_participantDetailsDataSource;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_215305800;
}

void sub_215305800(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
    if (v4)
    {
      swift_unknownObjectRetain();
      v5 = v4;
      sub_2154A135C();
    }
  }

  free(v3);
}

void sub_215305890(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_showParticipantCursors;
  swift_beginAccess();
  *(v3 + v4) = v2;
  v5 = *(v3 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v5)
  {
    v6 = v5;
    sub_2154A132C();
  }
}

uint64_t sub_215305908()
{
  v1 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_showParticipantCursors;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21530594C(char a1)
{
  v3 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_showParticipantCursors;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v4)
  {
    v5 = v4;
    sub_2154A132C();
  }
}

uint64_t (*sub_2153059C0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_showParticipantCursors;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_215305A48;
}

void sub_215305A48(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[3] + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
    if (v4)
    {
      v5 = v4;
      sub_2154A132C();
    }
  }

  free(v3);
}

void sub_215305AC8()
{
  v1 = *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v1)
  {
    v2 = v1;
    sub_2154A134C();
  }
}

uint64_t sub_215305B88(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_textualContextProvider;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = *(v2 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v5)
  {
    swift_unknownObjectWeakLoadStrong();
    v6 = v5;
    sub_2154A133C();
  }

  return swift_unknownObjectRelease();
}

void (*sub_215305C30(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textualContextProvider;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_215305CD0;
}

void sub_215305CD0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = *(v4 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
    if (v5)
    {
      swift_unknownObjectWeakLoadStrong();
      v6 = v5;
      sub_2154A133C();
    }
  }

  free(v3);
}

uint64_t sub_215305DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_215305EC8;

  return sub_2153210F4(a1, a2, a3, a4, a5);
}

uint64_t sub_215305EC8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

char *sub_215305FC4(uint64_t a1, uint64_t a2, char a3, char a4, char a5)
{
  result = *(v5 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_moreButton);
  if (result)
  {
    v8 = [result titleLabel];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 text];

      if (v10)
      {
        sub_2154A1D6C();
      }
    }

    v11 = objc_opt_self();
    v12 = sub_2154A1D2C();
    v13 = [v11 escapedPatternForString_];

    v14 = sub_2154A1D6C();
    v16 = v15;

    v17 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v23 = sub_215348CBC(v14, v16, a3 & 1);
    v24 = sub_2154A1D2C();
    v25 = sub_2154A1D2C();
    v26 = [v25 ic_range];
    v28 = v27;

    v29 = [v23 matchesInString:v24 options:0 range:{v26, v28}];
    v55 = v23;

    sub_2151A6C9C(0, &qword_281199580, 0x277CCACC0);
    v30 = sub_2154A1F4C();

    if (v30 >> 62)
    {
      v31 = sub_2154A2C8C();
      if (v31)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_11:
        v32 = 0;
        v33 = MEMORY[0x277D84F90];
        while (2)
        {
          v56 = v33;
          v34 = v32;
          while (1)
          {
            if ((v30 & 0xC000000000000001) != 0)
            {
              v35 = MEMORY[0x216069960](v34, v30);
            }

            else
            {
              if (v34 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v35 = *(v30 + 8 * v34 + 32);
            }

            v36 = v35;
            v32 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              swift_once();
              v18 = sub_21549F11C();
              __swift_project_value_buffer(v18, qword_27CA5AC30);

              v19 = sub_21549F0FC();
              v20 = sub_2154A226C();

              if (os_log_type_enabled(v19, v20))
              {
                v21 = swift_slowAlloc();
                v22 = swift_slowAlloc();
                v59 = v22;
                *v21 = 136315138;
                *(v21 + 4) = sub_215348D98(v30 & 0xFFFFFFFFFFFFFF8, v31, &v59);
                _os_log_impl(&dword_2151A1000, v19, v20, "Unable to create regular expression for find input string %s.", v21, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v22);
                MEMORY[0x21606B520](v22, -1, -1);
                MEMORY[0x21606B520](v21, -1, -1);
              }

              return MEMORY[0x277D84F90];
            }

            if ((a4 & 1) == 0 || (v37 = sub_2154A1D2C(), v38 = [v36 range], v40 = objc_msgSend(v37, sel_ic_rangeEncapsulatesWord_, v38, v39), v37, v40))
            {
              if ((a5 & 1) == 0)
              {
                break;
              }

              v41 = sub_2154A1D2C();
              v42 = [v36 range];
              v44 = [v41 ic:v42 startsWithDelimeter:v43];

              if (v44)
              {
                break;
              }
            }

            ++v34;
            if (v32 == v31)
            {
              v33 = v56;
              goto LABEL_35;
            }
          }

          v45 = [v36 range];
          v47 = v46;

          v48 = v56;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_215317AE8(0, *(v56 + 2) + 1, 1, v56, &qword_27CA5A578, &qword_2154BE320);
          }

          v49 = v48;
          v50 = *(v48 + 2);
          v51 = v49;
          v52 = *(v49 + 3);
          if (v50 >= v52 >> 1)
          {
            v51 = sub_215317AE8((v52 > 1), v50 + 1, 1, v51, &qword_27CA5A578, &qword_2154BE320);
          }

          *(v51 + 2) = v50 + 1;
          v53 = &v51[16 * v50];
          v33 = v51;
          *(v53 + 4) = v45;
          *(v53 + 5) = v47;
          if (v32 != v31)
          {
            continue;
          }

          goto LABEL_35;
        }
      }
    }

    v33 = MEMORY[0x277D84F90];
LABEL_35:
    v54 = v33;

    return v54;
  }

  __break(1u);
  return result;
}

void sub_2153064F4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_headerView;
  v7 = *&v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_headerView];
  if (v7)
  {
    v10 = v7;
    sub_2153065D4(a1, a2, v20);
    v11 = *v20;
    v12 = *&v20[1];
    v13 = *&v20[2];
    v14 = *&v20[3];
    v15 = v21;

    if ((v21 & 1) == 0)
    {
      [v4 convertRect:*&v4[v6] fromView:{v11, v12, v13, v14}];
      v11 = v16;
      v12 = v17;
      v13 = v18;
      v14 = v19;
      v15 = 0;
    }

    *a3 = v11;
    *(a3 + 8) = v12;
    *(a3 + 16) = v13;
    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
  }

  else
  {
    __break(1u);
  }
}

void sub_2153065D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = *&v3[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62223PaperDocumentHeaderView_moreButton];
  if (!v6)
  {
    __break(1u);
  }

  v8 = [v6 titleLabel];
  v9 = 0uLL;
  if (v8)
  {
    v10 = v8;
    v11 = [v8 attributedText];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_allocWithZone(MEMORY[0x277D742D8]) initWithAttributedString_];
      v14 = [objc_allocWithZone(MEMORY[0x277D74238]) init];
      [v13 addLayoutManager_];
      [v10 bounds];
      v17 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
      [v17 setLineFragmentPadding_];
      [v14 addTextContainer_];
      v28 = 0;
      v29 = 0;
      [v14 characterRangeForGlyphRange:a1 actualGlyphRange:{a2, &v28}];
      [v14 boundingRectForGlyphRange:v28 inTextContainer:{v29, v17}];
      [v3 convertRect:v10 fromCoordinateSpace:?];
      v25 = v18;
      v26 = v19;
      v24 = v20;
      v27 = v21;

      *&v23 = v24;
      *&v9 = v25;
      v22 = 0;
      *(&v9 + 1) = v26;
      *(&v23 + 1) = v27;
    }

    else
    {

      v22 = 1;
      v23 = 0uLL;
      v9 = 0uLL;
    }
  }

  else
  {
    v22 = 1;
    v23 = 0uLL;
  }

  *a3 = v9;
  *(a3 + 16) = v23;
  *(a3 + 32) = v22;
}

uint64_t sub_215306800()
{
  v1 = *&v0[OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v0;
  v3 = v1;
  v4 = sub_2154A12FC();

  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = sub_2154A12CC();
    v7 = *(v6 + 16);
    if (v7)
    {
      sub_21531B54C(0, v7, 0);
      v8 = (v6 + 56);
      do
      {
        [v2 convertRect:v4 fromCoordinateSpace:{*(v8 - 3), *(v8 - 2), *(v8 - 1), *v8}];
        v14 = *(v5 + 16);
        v13 = *(v5 + 24);
        if (v14 >= v13 >> 1)
        {
          v16 = v9;
          v17 = v10;
          v18 = v11;
          v19 = v12;
          sub_21531B54C((v13 > 1), v14 + 1, 1);
          v12 = v19;
          v11 = v18;
          v10 = v17;
          v9 = v16;
        }

        *(v5 + 16) = v14 + 1;
        v15 = (v5 + 32 * v14);
        v15[4] = v9;
        v15[5] = v10;
        v15[6] = v11;
        v15[7] = v12;
        v8 += 4;
        --v7;
      }

      while (v7);
    }
  }

  return v5;
}

void sub_215306970()
{
  v1 = *(v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v1)
  {
    v2 = v1;
    v3 = sub_2154A12FC();

    if (v3)
    {
      sub_2154A12BC();
    }
  }
}

id PaperDocumentTextAttachmentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

uint64_t (*sub_215306AE8(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_215305C30(v2);
  return sub_2153259E0;
}

void *sub_215306B5C()
{
  v1 = *v0;
  v2 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_viewControllerForPresentingUI;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_215306BAC(uint64_t a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_viewControllerForPresentingUI;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = a1;
}

void (*sub_215306CEC(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  v6 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_liveStreamMessenger;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_215306D90;
}

void sub_215306D90(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_2153052BC();
  }

  free(v3);
}

uint64_t (*sub_215306E98(uint64_t **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_215305778(v2);
  return sub_215306F0C;
}

void sub_215306F10(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_215306F58()
{
  v1 = *(*v0 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v1)
  {
    v2 = v1;
    sub_2154A134C();
  }
}

uint64_t sub_215306FC4()
{
  v1 = *v0;
  v2 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_showParticipantCursors;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_21530700C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_showParticipantCursors;
  swift_beginAccess();
  *(v3 + v4) = a1;
  v5 = *(v3 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (v5)
  {
    v6 = v5;
    sub_2154A132C();
  }
}

void (*sub_215307084(uint64_t *a1))(void *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_showParticipantCursors;
  *(v3 + 24) = *v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_215305A48;
}

void PaperDocumentTextAttachmentView.imageForTextPreview(using:in:completion:)(void *a1, uint64_t a2, void (*a3)(void))
{
  if (!a1)
  {
    goto LABEL_9;
  }

  type metadata accessor for ICPDFTextFindingResult(0);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_9;
  }

  v6 = *(v3 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = a1;
  v9 = sub_2154A12FC();

  if (!v9)
  {

LABEL_9:
    (a3)(0, a2);
    return;
  }

  a3(0);
}

void __swiftcall PaperDocumentTextAttachmentView.viewForTextDragPreview()(UIView *__return_ptr retstr)
{
  v2 = v1;
  if (v1[OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode] && *&v1[OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView])
  {
    v2 = *&v1[OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView];
  }

  v3 = v2;
}

void PaperDocumentTextAttachmentView.additionalXOffsetForTextDragPreview(in:)(void *a1)
{
  v2 = *&v1[OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView];
  if (v2)
  {
    v4 = v2;
    [v1 safeAreaInsets];
    [a1 textContainerInset];
    v5 = [a1 textContainer];
    [v5 lineFragmentPadding];

    [v4 frame];
  }
}

void sub_215307408(uint64_t a1)
{
  v31 = sub_21549E56C();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v31);
  v4 = objc_opt_self();
  v5 = sub_2154A1D2C();
  v30 = v4;
  v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  sub_21549E45C();
  v7 = sub_2154A1D2C();

  v8 = sub_2154A1D2C();

  v9 = [objc_opt_self() alertControllerWithTitle:v7 message:v8 preferredStyle:1];

  v10 = sub_2154A1D2C();
  v11 = [v4 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  v12 = v31;
  (*(v2 + 16))(&v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v31);
  v13 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v13, &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v15 = v32;
  *(v14 + ((v3 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v16 = v15;
  v17 = sub_2154A1D2C();

  aBlock[4] = sub_215325360;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2151B5B78;
  aBlock[3] = &block_descriptor_518;
  v18 = _Block_copy(aBlock);

  v19 = objc_opt_self();
  v20 = [v19 actionWithTitle:v17 style:0 handler:v18];
  _Block_release(v18);

  [v9 addAction_];
  v21 = sub_2154A1D2C();
  v22 = [v30 localizedFrameworkStringForKey:v21 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  v23 = sub_2154A1D2C();

  v24 = [v19 actionWithTitle:v23 style:1 handler:0];

  [v9 addAction_];
  v25 = [v16 window];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 rootViewController];
    if (v27)
    {
      v28 = v27;
      [v27 presentViewController:v9 animated:1 completion:0];
    }

    v9 = v20;
    v20 = v24;
  }

  else
  {
    v26 = v24;
  }
}

void sub_21530788C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_21549E49C();
  [v4 openURL:v5 originatingView:a3 completionHandler:0];
}

Swift::Void __swiftcall PaperDocumentTextAttachmentView.layoutSubviews()()
{
  v1 = v0;
  v127.receiver = v0;
  v127.super_class = type metadata accessor for PaperDocumentTextAttachmentView(0);
  objc_msgSendSuper2(&v127, sel_layoutSubviews);
  v2 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode;
  if (!v0[OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode])
  {
    return;
  }

  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 24);
  v5 = [v0 ic_enclosingScrollView];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      [v7 textContainerInset];
      v10 = v9;
      v11 = [v8 textContainer];
      [v11 lineFragmentPadding];
      v13 = v12;

      v3 = v10 + v13;
      [v8 textContainerInset];
      v15 = v14;
      v16 = [v8 textContainer];
      [v16 lineFragmentPadding];
      v18 = v17;

      v4 = v15 + v18;
    }

    else
    {
    }
  }

  v19 = *&v1[OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView];
  v20 = &selRef_setExtractedDocumentController_;
  if (v19)
  {
    v21 = v19;
    [v1 bounds];
    CGRectGetHeight(v128);
    [v21 frame];
    [v21 setFrame_];
    [v21 layoutIfNeeded];
    v22 = sub_2154A12FC();
    if (v22)
    {
      v23 = v22;
      v24 = sub_2154A126C();

      if (v24)
      {
        v25 = [v24 documentView];

        if (v25)
        {
          v26 = sub_2154A12FC();
          if (v26)
          {
            v27 = v26;
            v28 = sub_2154A126C();

            if (v28)
            {
              v29 = [v28 documentScrollView];

              if (v29)
              {
                v30 = [v29 isZooming];

                [v25 bounds];
                [v1 convertRect:v25 fromCoordinateSpace:?];
                x = v129.origin.x;
                y = v129.origin.y;
                width = v129.size.width;
                height = v129.size.height;
                v126 = CGRectGetWidth(v129);
                v35 = sub_2154A12FC();
                if (v35)
                {
                  v36 = v35;
                  v37 = sub_2154A126C();

                  if (v37)
                  {
                    v124 = v4;
                    v125 = v3;
                    v38 = [v37 documentScrollView];

                    if (v38)
                    {
                      [v38 bounds];
                      v40 = v39;
                      v42 = v41;
                      v44 = v43;
                      v46 = v45;

                      v47 = sub_2154A12FC();
                      if (v47)
                      {
                        v48 = v47;
                        v49 = sub_2154A126C();

                        if (v49)
                        {
                          v122 = y;
                          v123 = x;
                          v50 = [v49 documentScrollView];

                          if (v50)
                          {
                            [v50 adjustedContentInset];
                            v52 = v51;
                            v54 = v53;

                            v55 = UIEdgeInsetsInsetRect(v40, v42, v44, v46, v52, v54);
                            v57 = v56;
                            v59 = v58;
                            v61 = v60;
                            v130.origin.x = v123;
                            v130.origin.y = v122;
                            v130.size.width = width;
                            v130.size.height = height;
                            v62 = CGRectGetHeight(v130);
                            v121 = v55;
                            v131.origin.x = v55;
                            v131.origin.y = v57;
                            v131.size.width = v59;
                            v131.size.height = v61;
                            v64 = v62 < CGRectGetHeight(v131);
                            v20 = &selRef_setExtractedDocumentController_;
                            v65 = v126;
                            if ((v64 & v30) == 1)
                            {
                              v132.origin.x = v123;
                              v132.origin.y = v122;
                              v132.size.width = width;
                              v132.size.height = height;
                              v66 = CGRectGetWidth(v132);
                              v133.origin.x = v123;
                              v133.origin.y = v122;
                              v133.size.width = width;
                              v133.size.height = height;
                              v67 = v66 / CGRectGetHeight(v133);
                              v134.origin.x = v55;
                              v134.origin.y = v57;
                              v134.size.width = v59;
                              v134.size.height = v61;
                              v65 = v67 * CGRectGetHeight(v134);
                            }

                            sub_2153083DC(v63);
                            v69 = v68;

                            if (v65 + 40.0 > 180.0)
                            {
                              v70 = v65 + 40.0;
                            }

                            else
                            {
                              v70 = 180.0;
                            }

                            v71 = v69 ^ 1;
                            v4 = v124;
                            v3 = v125;
                            goto LABEL_64;
                          }

LABEL_89:
                          __break(1u);
                          return;
                        }

LABEL_88:
                        __break(1u);
                        goto LABEL_89;
                      }

LABEL_87:
                      __break(1u);
                      goto LABEL_88;
                    }

LABEL_86:
                    __break(1u);
                    goto LABEL_87;
                  }

LABEL_85:
                  __break(1u);
                  goto LABEL_86;
                }

LABEL_84:
                __break(1u);
                goto LABEL_85;
              }

LABEL_83:
              __break(1u);
              goto LABEL_84;
            }

LABEL_82:
            __break(1u);
            goto LABEL_83;
          }

LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

LABEL_80:
        __break(1u);
        goto LABEL_81;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_80;
  }

  v72 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_placeholderContainerView;
  v73 = *&v1[OBJC_IVAR___ICPaperDocumentTextAttachmentView_placeholderContainerView];
  if (v73)
  {
    v74 = *&v1[OBJC_IVAR___ICPaperDocumentTextAttachmentView_placeholderContainerView];
  }

  else
  {
    v74 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  }

  v75 = objc_opt_self();
  v76 = v73;
  v77 = [v75 quaternarySystemFillColor];
  v78 = [v77 ic_resolvedColorForNoteEditor];

  [v74 setBackgroundColor_];
  v79 = *&v1[v72];
  *&v1[v72] = v74;
  v21 = v74;

  [v1 addSubview_];
  v80 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
  swift_beginAccess();
  if (!*&v1[v80])
  {
    goto LABEL_59;
  }

  objc_opt_self();
  v81 = swift_dynamicCastObjCClass();
  if (v81)
  {
    v82 = [v81 attachment];
    if (v82)
    {
      v83 = v82;
      v84 = [v82 attachmentModel];

      if (v84)
      {
        objc_opt_self();
        v85 = swift_dynamicCastObjCClass();
        if (v85)
        {
          v86 = [v85 paperPageCount];

          if (!*&v1[v80])
          {
            goto LABEL_56;
          }

          goto LABEL_44;
        }
      }
    }
  }

  if (!*&v1[v80])
  {
    goto LABEL_59;
  }

  objc_opt_self();
  v87 = swift_dynamicCastObjCClass();
  if (!v87 || (v88 = [v87 attachment]) == 0)
  {
    v86 = 0;
LABEL_43:
    if (!*&v1[v80])
    {
      goto LABEL_56;
    }

    goto LABEL_44;
  }

  v89 = v88;
  v86 = [v88 subAttachments];

  if (!v86)
  {
    goto LABEL_43;
  }

  sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
  sub_21532210C(&qword_281199680, &qword_281199690, 0x277D35E00, MEMORY[0x277D85378]);
  v90 = sub_2154A20CC();

  if ((v90 & 0xC000000000000001) != 0)
  {
    v86 = sub_2154A2C8C();
  }

  else
  {
    v86 = *(v90 + 16);
  }

  v20 = &selRef_setExtractedDocumentController_;
  if (!*&v1[v80])
  {
    goto LABEL_56;
  }

LABEL_44:
  objc_opt_self();
  v91 = swift_dynamicCastObjCClass();
  v92 = 0.0;
  if (v91)
  {
    v93 = [v91 attachment];
    if (v93)
    {
      v94 = v93;
      [v93 sizeWidth];
      v92 = v95;
    }
  }

  if (!*&v1[v80] || (objc_opt_self(), (v96 = swift_dynamicCastObjCClass()) == 0) || (v97 = [v96 attachment]) == 0 || (v98 = v97, objc_msgSend(v97, sel_sizeHeight), v100 = v99, v98, v92 <= 0.0) || v100 <= 0.0)
  {
LABEL_56:
    if (v86 > 0)
    {
      v100 = 792.0;
      v92 = 612.0;
      goto LABEL_58;
    }

LABEL_59:
    [v1 bounds];
    v101 = CGRectGetWidth(v136);
    goto LABEL_60;
  }

  if (v86 < 1)
  {
    goto LABEL_59;
  }

LABEL_58:
  [v1 bounds];
  v101 = (v86 - 1) * 10.0 + v92 * ((CGRectGetHeight(v135) + -40.0 + -20.0) / v100) * v86;
LABEL_60:
  v102 = v101 + 40.0;
  if (v102 > 180.0)
  {
    v70 = v102;
  }

  else
  {
    v70 = 180.0;
  }

  v71 = 1;
LABEL_64:
  [v1 bounds];
  v103 = v137.origin.x;
  v104 = v137.origin.y;
  v105 = v137.size.height;
  v106 = CGRectGetWidth(v137);
  if (v106 >= v70)
  {
    v107 = v70;
  }

  else
  {
    v107 = v106;
  }

  [v1 bounds];
  v108 = CGRectGetWidth(v138) - (v4 + v3);
  v139.origin.x = v103;
  v139.origin.y = v104;
  v139.size.width = v107;
  v139.size.height = v105;
  if (v108 >= CGRectGetWidth(v139))
  {
    v110 = v21;
    v111 = [v110 layer];
    [v111 setCornerRadius_];

    v112 = [v110 layer];
    [v112 setCornerCurve_];
  }

  else if ((v1[v2] != 2) | v71 & 1)
  {
    v109 = [v21 layer];
    v3 = 0.0;
    [v109 setCornerRadius_];

    [v1 bounds];
    v107 = CGRectGetWidth(v140);
  }

  else
  {
    [v1 bounds];
    v113 = CGRectGetWidth(v141);
    v142.origin.x = v103;
    v142.origin.y = v104;
    v142.size.width = v107;
    v142.size.height = v105;
    v114 = v113 - CGRectGetWidth(v142);
    v115 = [v21 layer];
    v116 = v115;
    v117 = 1.0;
    if (v114 / 10.0 <= 1.0)
    {
      v117 = v114 / 10.0;
    }

    v118 = v117 * 10.0;
    if (v114 / 10.0 < 0.0)
    {
      v118 = 0.0;
    }

    [v115 setCornerRadius_];

    v119 = [v21 layer];
    [v119 setCornerCurve_];

    v3 = floor(v114 * 0.5);
    v120 = v21;
  }

  [v21 v20[35]];

  sub_2152FE858();
}

void sub_2153083DC(uint64_t a1)
{
  v1 = sub_2154A12FC();
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_2154A126C();

  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = [v3 documentScrollView];

  if (v4)
  {
    [v4 contentSize];
    [v4 adjustedContentInset];
    [v4 adjustedContentInset];
    [v4 bounds];
    CGRectGetHeight(v5);
  }
}

void PaperDocumentTextAttachmentView.paperDocumentDidLoad(dataModel:view:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_2154A10EC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2154A110C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215322150(&unk_27CA59E68, type metadata accessor for PaperDocumentTextAttachmentView, &protocol conformance descriptor for PaperDocumentTextAttachmentView);
  swift_unknownObjectRetain();
  sub_2154A12AC();
  v13 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_internalErrorLabel;
  v14 = *&v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_internalErrorLabel];
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *&v3[v13];
  }

  else
  {
    v15 = 0;
  }

  *&v3[v13] = 0;

  v16 = *&v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView];
  if (v16)
  {
    v17 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
    swift_beginAccess();
    if (*&v3[v17])
    {
      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = v18;
        v20 = v16;
        v21 = [v19 attachment];
        if (!v21)
        {
          v39 = v20;
          goto LABEL_34;
        }

        v68 = v21;
        v66 = v10;
        v22 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView;
        if (!*&v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView])
        {
          v67 = v20;
          v23 = sub_2154A126C();
          if (!v23)
          {
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v24 = v23;
          v25 = [v23 documentScrollView];

          v26 = v67;
          if (v25)
          {
            if (!*&v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_pinchToResizeGestureRecognizer])
            {
LABEL_39:
              __break(1u);
              return;
            }

            [v25 addGestureRecognizer_];
          }

          [v26 removeFromSuperview];
          v27 = sub_2154A126C();
          if (!v27)
          {
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v28 = v27;
          v63 = v6;
          v29 = [v27 documentView];

          if (v29)
          {
            [v29 resignFirstResponder];
          }

          v30 = *&v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_snapshotInfo];
          v65 = &v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_snapshotInfo];
          LODWORD(v64) = v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_snapshotInfo + 8];
          v31 = v30 != 0;
          v32 = objc_allocWithZone(type metadata accessor for PaperDocumentContainerView());
          v33 = v67;
          v34 = v68;
          v35 = v31 & v64;
          v36 = v34;
          sub_21530DB5C(v33, v35, v34);
          v37 = *&v3[v22];
          *&v3[v22] = v38;
          v39 = v38;

          swift_unknownObjectWeakAssign();
          v40 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_placeholderContainerView;
          [*&v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_placeholderContainerView] removeFromSuperview];
          v41 = *&v3[v40];
          *&v3[v40] = 0;

          if (!v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode])
          {

            goto LABEL_34;
          }

          v42 = *&v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_headerView];
          v43 = *&v39[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContentView];
          *&v39[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContentView] = v42;
          v44 = v42;
          sub_21530D544(v43);

          [v3 insertSubview:v39 atIndex:0];
          sub_2152FE67C(1, 0);
          v45 = *v65;
          if (*v65)
          {
            v46 = v65;
            LODWORD(v64) = *(v65 + 8) & 1;
            sub_2151A6C9C(0, &unk_2811995C0, 0x277D85C78);
            v47 = v45;
            v48 = *(v46 + 16);
            v61 = *(v46 + 32);
            v62 = v48;
            v65 = sub_2154A245C();
            v49 = swift_allocObject();
            *(v49 + 16) = a2;
            *(v49 + 24) = v47;
            *(v49 + 32) = v64;
            *(v49 + 33) = v70[0];
            *(v49 + 36) = *(v70 + 3);
            v50 = v62;
            *(v49 + 56) = v61;
            *(v49 + 40) = v50;
            *(v49 + 72) = v3;
            aBlock[4] = sub_2153221BC;
            aBlock[5] = v49;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_2151BD7E4;
            aBlock[3] = &block_descriptor_11;
            *&v62 = _Block_copy(aBlock);
            v51 = v3;
            v64 = v47;
            v52 = a2;

            sub_2154A10FC();
            aBlock[0] = MEMORY[0x277D84F90];
            *&v61 = sub_215322150(&qword_281199700, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E00, &unk_2154BDB90);
            sub_2151ACC5C(&qword_2811996F0, &qword_27CA59E00, &unk_2154BDB90, MEMORY[0x277D83970]);
            sub_2154A2BEC();
            v53 = v62;
            v54 = v65;
            MEMORY[0x216069000](0, v12, v8, v62);
            _Block_release(v53);

            (*(v63 + 8))(v8, v5);
            (*(v66 + 8))(v12, v9);
          }

          else
          {
          }

          v20 = v67;
        }

        v55 = sub_2154A126C();
        if (v55)
        {
          v56 = v55;
          v57 = [v55 document];

          if (v57)
          {
            v58 = *&v3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData];
            if (v58)
            {
              v39 = v58;
              v59 = [v57 pageCount];

              v60 = *&v39[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_startPageCount];
              if (v60 == -1)
              {
                *&v39[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_startPageCount] = v59;
              }

              else if (v59 != v60)
              {
                v39[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity] = 1;
              }

              *&v39[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_endPageCount] = v59;
              goto LABEL_34;
            }
          }

          else
          {
          }

          v39 = v68;
LABEL_34:

          return;
        }

        __break(1u);
        goto LABEL_37;
      }
    }
  }
}

id sub_215308C98(uint64_t a1, uint64_t a2, char *a3)
{
  result = sub_2154A126C();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  [result setScaleFactor_];

  result = sub_2154A126C();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result documentScrollView];

  if (v8)
  {
    [v8 setContentOffset_];
  }

  [*a2 removeFromSuperview];
  v9 = &a3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_snapshotInfo];
  v10 = *&a3[OBJC_IVAR___ICPaperDocumentTextAttachmentView_snapshotInfo];
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *v9 = 0u;

  return [a3 setUserInteractionEnabled_];
}

void PaperDocumentTextAttachmentView.paperDocumentDidFailToLoad(_:)(void *a1)
{
  v2 = v1;
  if (qword_281199778 != -1)
  {
    swift_once();
  }

  v4 = sub_21549F11C();
  __swift_project_value_buffer(v4, qword_281199780);
  v5 = a1;
  v6 = sub_21549F0FC();
  v7 = sub_2154A226C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2151A1000, v6, v7, "paper document failed to load: %@", v8, 0xCu);
    sub_2151ADCD8(v9, &unk_27CA59E90, &qword_2154BEB40);
    MEMORY[0x21606B520](v9, -1, -1);
    MEMORY[0x21606B520](v8, -1, -1);
  }

  if ([objc_opt_self() showInternalInstallUI])
  {
    v12 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_internalErrorLabel;
    v13 = *&v2[OBJC_IVAR___ICPaperDocumentTextAttachmentView_internalErrorLabel];
    if (v13 || (v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init], objc_msgSend(v14, sel_setTranslatesAutoresizingMaskIntoConstraints_, 0), objc_msgSend(v14, sel_setLineBreakMode_, 0), objc_msgSend(v14, sel_setNumberOfLines_, 0), objc_msgSend(v14, sel_setTextAlignment_, 1), objc_msgSend(v2, sel_addSubview_, v14), v15 = objc_opt_self(), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60), v16 = swift_allocObject(), *(v16 + 16) = xmmword_2154BDB30, v17 = objc_msgSend(v14, sel_leadingAnchor), v18 = objc_msgSend(v2, sel_layoutMarginsGuide), v19 = objc_msgSend(v18, sel_leadingAnchor), v18, v20 = objc_msgSend(v17, sel_constraintGreaterThanOrEqualToAnchor_, v19), v17, v19, *(v16 + 32) = v20, v21 = objc_msgSend(v14, sel_trailingAnchor), v22 = objc_msgSend(v2, sel_layoutMarginsGuide), v23 = objc_msgSend(v22, sel_trailingAnchor), v22, v24 = objc_msgSend(v21, sel_constraintLessThanOrEqualToAnchor_, v23), v21, v23, *(v16 + 40) = v24, v25 = objc_msgSend(v14, sel_centerXAnchor), v26 = objc_msgSend(v2, sel_centerXAnchor), v27 = objc_msgSend(v25, sel_constraintEqualToAnchor_, v26), v25, v26, *(v16 + 48) = v27, v28 = objc_msgSend(v14, sel_centerYAnchor), v14, v29 = objc_msgSend(v2, sel_centerYAnchor), v30 = objc_msgSend(v28, sel_constraintEqualToAnchor_, v29), v28, v29, *(v16 + 56) = v30, sub_2151A6C9C(0, &qword_2811995A0, 0x277CCAAD0), v31 = sub_2154A1F3C(), , objc_msgSend(v15, sel_activateConstraints_, v31), v31, v32 = *&v2[v12], *&v2[v12] = v14, v32, (v13 = *&v2[v12]) != 0))
    {
      v33 = v13;
      sub_2154A2D9C();
      MEMORY[0x2160689F0](0xD00000000000002BLL, 0x80000002154D3E60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88, &unk_2154BDBE0);
      sub_2154A2E9C();
      v34 = sub_2154A1D2C();

      [v33 setText_];
    }
  }
}

void sub_2153092A0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A410, &qword_2154BE188);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A378, &qword_2154BE168);
  *&v9 = MEMORY[0x28223BE20](v8 - 8).n128_u64[0];
  v11 = &v21 - v10;
  v22 = [a1 attachmentModel];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClass();
  if (v12)
  {
    v13 = *(a2 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView);
    if (v13)
    {
      v14 = v12;
      v15 = v13;
      sub_2154A12EC();

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A380, &unk_2154BE170);
      v17 = *(v16 - 8);
      if ((*(v17 + 48))(v11, 1, v16) == 1)
      {
        sub_2151ADCD8(v11, &qword_27CA5A378, &qword_2154BE168);
        v18 = 0;
      }

      else
      {
        swift_getKeyPath(byte_2154BE190);
        sub_2154A1B2C();

        (*(v17 + 8))(v11, v16);
        v20 = sub_2154A1A1C();
        (*(v5 + 8))(v7, v4);
        v18 = v20;
      }

      v12 = v14;
    }

    else
    {
      v18 = 0;
    }

    [v12 setPaperPageCount_];
  }

  else
  {
    v19 = v22;
  }
}

void sub_215309560(void *a1)
{
  if (v1[OBJC_IVAR___ICPaperDocumentTextAttachmentView_isRevertingChanges])
  {
    return;
  }

  v2 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_isUpgradingLegacyAttachment;
  if (v1[OBJC_IVAR___ICPaperDocumentTextAttachmentView_isUpgradingLegacyAttachment])
  {
    return;
  }

  v4 = [a1 attachment];
  v33 = [v4 note];

  if (!v33)
  {
    return;
  }

  v5 = [v33 textStorage];
  if (v5)
  {
    v6 = v5;
    v7 = [v33 account];
    v8 = v7;
    if (v7)
    {
      goto LABEL_6;
    }

    v26 = [v33 folder];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 account];

      if (v28)
      {
        v8 = v28;
        v7 = 0;
LABEL_6:
        v9 = v7;

        v10 = [v1 window];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 rootViewController];

          if (v12)
          {
            v1[v2] = 1;
            v13 = objc_opt_self();
            v14 = swift_allocObject();
            v14[2] = v8;
            v14[3] = v1;
            v15 = a1;
            v14[4] = a1;
            v14[5] = v33;
            v14[6] = v6;
            aBlock[4] = sub_215324310;
            aBlock[5] = v14;
            aBlock[0] = MEMORY[0x277D85DD0];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_21530C49C;
            aBlock[3] = &block_descriptor_288;
            v16 = _Block_copy(aBlock);
            v17 = v8;
            v18 = v1;
            v19 = v15;
            v20 = v33;
            v21 = v6;

            [v13 showAttachmentCompatibilityAlertInAccountIfNeeded:v17 parentViewController:v12 completion:v16];

            _Block_release(v16);
            return;
          }
        }

        if (qword_281199778 != -1)
        {
          swift_once();
        }

        v22 = sub_21549F11C();
        __swift_project_value_buffer(v22, qword_281199780);
        v23 = sub_21549F0FC();
        v24 = sub_2154A226C();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_2151A1000, v23, v24, "Couldn't get presenting VC. Bailing out.", v25, 2u);
          MEMORY[0x21606B520](v25, -1, -1);
        }

        goto LABEL_23;
      }
    }

    if (qword_281199778 != -1)
    {
      swift_once();
    }

    v29 = sub_21549F11C();
    __swift_project_value_buffer(v29, qword_281199780);
    v30 = sub_21549F0FC();
    v31 = sub_2154A226C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2151A1000, v30, v31, "No account found for note in upgrade process. Bailing out.", v32, 2u);
      MEMORY[0x21606B520](v32, -1, -1);
    }
  }

LABEL_23:
}

void sub_215309980(char a1, char a2, uint64_t a3, char *a4, void (**a5)(char *, uint64_t), void *a6, void *a7)
{
  v132 = a7;
  v141 = a6;
  v144 = a4;
  v145 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  MEMORY[0x28223BE20](v10 - 8);
  v137 = &v120 - v11;
  v138 = sub_21549E56C();
  v143 = *(v138 - 8);
  v12 = v143[8];
  MEMORY[0x28223BE20](v138);
  v136 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v135 = &v120 - v14;
  MEMORY[0x28223BE20](v15);
  v134 = &v120 - v16;
  MEMORY[0x28223BE20](v17);
  v131 = &v120 - v18;
  MEMORY[0x28223BE20](v19);
  v139 = &v120 - v20;
  MEMORY[0x28223BE20](v21);
  v133 = &v120 - v22;
  MEMORY[0x28223BE20](v23);
  v140 = &v120 - v24;
  MEMORY[0x28223BE20](v25);
  v142 = &v120 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A410, &qword_2154BE188);
  v130 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v120 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A378, &qword_2154BE168);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v120 - v31;
  v33 = sub_21549E70C();
  v34 = *(v33 - 8);
  *&v35 = MEMORY[0x28223BE20](v33).n128_u64[0];
  v37 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 & 1) != 0 && (a2)
  {
    [objc_opt_self() suppressOneTimeAttachmentUpgradeAlertForAcccount_];
    v38 = v144;
    v39 = *&v144[OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView];
    if (v39)
    {
      v40 = v39;
      v41 = sub_2154A12FC();

      if (v41)
      {
        v38[OBJC_IVAR___ICPaperDocumentTextAttachmentView_isRevertingChanges] = 1;
        sub_2154A128C();
      }
    }

    v38[OBJC_IVAR___ICPaperDocumentTextAttachmentView_isUpgradingLegacyAttachment] = 0;
  }

  else
  {
    v146 = [v145 attachment];
    v42 = [v146 rangeInNote];
    v44 = v43;
    if (v42 == sub_21549E0EC())
    {
      v45 = v146;
    }

    else
    {
      v127 = v44;
      v128 = v42;
      sub_21549E6FC();
      v46 = sub_21549E6BC();
      v48 = v47;
      (*(v34 + 8))(v37, v33);
      [v146 attachmentType];
      sub_2154A1D6C();
      v126 = v46;
      v129 = v48;
      v49 = sub_2154A1D2C();
      v50 = sub_2154A1D2C();

      v51 = [v141 addPaperDocumentAttachmentWithIdentifier:v49 subtype:v50];

      v52 = [v146 userTitle];
      [v51 setUserTitle_];

      v53 = [v146 title];
      [v51 setTitle_];

      [v51 setPreferredViewSize_];
      v54 = [v51 attachmentModel];
      objc_opt_self();
      v55 = swift_dynamicCastObjCClass();
      v56 = v145;
      if (v55)
      {
        v57 = v55;
        v58 = *&v144[OBJC_IVAR___ICPaperDocumentTextAttachmentView_inlinePaperDocumentView];
        if (v58)
        {
          v125 = v51;
          v59 = v58;
          sub_2154A12EC();

          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A380, &unk_2154BE170);
          v61 = *(v60 - 8);
          if ((*(v61 + 48))(v32, 1, v60) == 1)
          {
            sub_2151ADCD8(v32, &qword_27CA5A378, &qword_2154BE168);
            v62 = 0;
          }

          else
          {
            swift_getKeyPath(byte_2154BE190);
            sub_2154A1B2C();

            (*(v61 + 8))(v32, v60);
            v63 = sub_2154A1A1C();
            v130[1](v29, v27);
            v62 = v63;
          }

          v56 = v145;
          v51 = v125;
        }

        else
        {
          v62 = 0;
        }

        [v57 setPaperPageCount_];
      }

      v64 = [objc_allocWithZone(MEMORY[0x277D36880]) initWithAttachment_];
      v65 = [v56 _paperBundleURL];
      v66 = v142;
      sub_21549E51C();

      v67 = [v51 paperBundleModel];
      if (v67)
      {
        v130 = v64;
        v68 = v67;
        v69 = v51;
        v70 = [v67 paperBundleURL];

        v71 = v133;
        sub_21549E51C();

        v72 = v143;
        v73 = v143 + 4;
        v74 = v143[4];
        v75 = v140;
        v76 = v138;
        v74(v140, v71, v138);
        v77 = [v69 paperBundleModel];
        if (v77)
        {
          v78 = v77;
          v79 = [v77 paperCoherenceContextURL];

          v80 = v131;
          sub_21549E51C();

          v74(v139, v80, v76);
          v81 = [v141 isPasswordProtected];
          v125 = v73;
          v124 = v74;
          if (v81)
          {
            v82 = sub_2151A6C9C(0, &qword_27CA5A400, 0x277D36880);
            v83 = sub_21532210C(&qword_27CA5A408, &qword_27CA5A400, 0x277D36880, MEMORY[0x277D36438]);
            v84 = v145;
            v85 = v145;
          }

          else
          {
            v82 = 0;
            v83 = 0;
            v84 = 0;
            v150 = 0;
            v151 = 0;
          }

          v87 = v130;
          v152 = v82;
          v153 = v83;
          v149 = v84;
          sub_2154A1C0C();
          v88 = MEMORY[0x216068780](0, &v149);
          sub_2151ADCD8(&v149, &qword_27CA5A3E8, &qword_2154C0630);
          v89 = v76;
          if ([v141 isPasswordProtected])
          {
            v90 = sub_2151A6C9C(0, &qword_27CA5A400, 0x277D36880);
            v91 = sub_21532210C(&qword_27CA5A408, &qword_27CA5A400, 0x277D36880, MEMORY[0x277D36438]);
            v92 = v87;
            v93 = v87;
          }

          else
          {
            v90 = 0;
            v91 = 0;
            v93 = 0;
            v150 = 0;
            v151 = 0;
          }

          v152 = v90;
          v153 = v91;
          v149 = v93;
          v94 = sub_2154A202C();
          (*(*(v94 - 8) + 56))(v137, 1, 1, v94);
          v95 = v143;
          v96 = v143[2];
          v96(v134, v139, v76);
          sub_215324EEC(&v149, v147, &qword_27CA5A3E8, &qword_2154C0630);
          v96(v135, v142, v76);
          v96(v136, v140, v76);
          sub_2154A1FFC();
          v145 = v87;
          v133 = v88;
          v141 = v69;
          v144 = v144;
          v132 = v132;
          v146 = v146;
          v97 = sub_2154A1FEC();
          v98 = *(v95 + 80);
          v99 = (v98 + 32) & ~v98;
          v100 = (v12 + 7 + v99) & 0xFFFFFFFFFFFFFFF8;
          v101 = (v98 + v100 + 40) & ~v98;
          v102 = (v12 + 7 + v101) & 0xFFFFFFFFFFFFFFF8;
          v103 = (v98 + v102 + 8) & ~v98;
          v131 = ((v12 + 7 + v103) & 0xFFFFFFFFFFFFFFF8);
          v130 = ((v131 + 15) & 0xFFFFFFFFFFFFFFF8);
          v123 = (v130 + 15) & 0xFFFFFFFFFFFFFFF8;
          v104 = (v123 + 15) & 0xFFFFFFFFFFFFFFF8;
          v122 = (v104 + 23) & 0xFFFFFFFFFFFFFFF8;
          v105 = (v122 + 15) & 0xFFFFFFFFFFFFFFF8;
          v121 = (v105 + 23) & 0xFFFFFFFFFFFFFFF8;
          v106 = swift_allocObject();
          v107 = MEMORY[0x277D85700];
          *(v106 + 16) = v97;
          *(v106 + 24) = v107;
          v108 = v124;
          v124(v106 + v99, v134, v89);
          v109 = v106 + v100;
          v110 = v147[1];
          *v109 = v147[0];
          *(v109 + 16) = v110;
          *(v109 + 32) = v148;
          v108(v106 + v101, v135, v89);
          v111 = v133;
          *(v106 + v102) = v133;
          v108(v106 + v103, v136, v89);
          v112 = v141;
          *&v131[v106] = v141;
          v113 = v145;
          *(v130 + v106) = v145;
          *(v106 + v123) = v144;
          v114 = (v106 + v104);
          v115 = v129;
          *v114 = v126;
          v114[1] = v115;
          *(v106 + v122) = v132;
          v116 = (v106 + v105);
          v117 = v127;
          *v116 = v128;
          v116[1] = v117;
          v118 = v146;
          *(v106 + v121) = v146;
          sub_2152F4D50(0, 0, v137, &unk_2154BE1C8, v106);

          v119 = v143[1];
          v119(v139, v89);
          v119(v140, v89);
          v119(v142, v89);
          sub_2151ADCD8(&v149, &qword_27CA5A3E8, &qword_2154C0630);
        }

        else
        {

          v86 = v72[1];
          v86(v75, v76);
          v86(v66, v76);
        }
      }

      else
      {
        (v143[1])(v66, v138);
      }
    }
  }
}

uint64_t sub_21530A78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 232) = v19;
  *(v8 + 216) = v18;
  *(v8 + 200) = v17;
  *(v8 + 184) = v16;
  *(v8 + 168) = v15;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  *(v8 + 240) = swift_task_alloc();
  v9 = sub_21549E56C();
  *(v8 + 248) = v9;
  v10 = *(v9 - 8);
  *(v8 + 256) = v10;
  *(v8 + 264) = *(v10 + 64);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = sub_2154A1FFC();
  *(v8 + 304) = sub_2154A1FEC();
  v12 = sub_2154A1FCC();
  *(v8 + 312) = v12;
  *(v8 + 320) = v11;

  return MEMORY[0x2822009F8](sub_21530A908, v12, v11);
}

uint64_t sub_21530A908()
{
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  v26 = v3;
  v27 = v1;
  v4 = *(v0 + 248);
  v5 = *(v0 + 256);
  v24 = *(v0 + 160);
  v25 = v2;
  v28 = *(v0 + 264);
  v29 = *(v0 + 152);
  v6 = *(v0 + 136);
  v23 = *(v0 + 144);
  v7 = *(v0 + 128);
  *(v0 + 328) = [objc_opt_self() ic_fileCoordinationOperationQueue];
  v8 = *(v5 + 16);
  *(v0 + 336) = v8;
  *(v0 + 344) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v7, v4);
  sub_215324EEC(v6, v0 + 64, &qword_27CA5A3E8, &qword_2154C0630);
  v8(v2, v23, v4);
  v8(v3, v24, v4);
  LODWORD(v9) = *(v5 + 80);
  *(v0 + 384) = v9;
  v9 = v9;
  v10 = (v9 + 16) & ~v9;
  v11 = (v10 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v9 + v11 + 40) & ~v9;
  v13 = (v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v9 + v13 + 8) & ~v9;
  v15 = swift_allocObject();
  *(v0 + 352) = v15;
  v16 = *(v5 + 32);
  *(v0 + 360) = v16;
  *(v0 + 368) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v16(v15 + v10, v27, v4);
  v17 = v15 + v11;
  v18 = *(v0 + 80);
  *v17 = *(v0 + 64);
  *(v17 + 16) = v18;
  *(v17 + 32) = *(v0 + 96);
  v16(v15 + v12, v25, v4);
  *(v15 + v13) = v29;
  v16(v15 + v14, v26, v4);
  v19 = v29;
  v20 = swift_task_alloc();
  *(v0 + 376) = v20;
  *v20 = v0;
  v20[1] = sub_21530AB88;
  v21 = MEMORY[0x277D839B0];

  return MEMORY[0x2821952B8](v0 + 388, sub_21532452C, v15, v21);
}

void sub_21530AB88()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = v2[41];

    v4 = v2[39];
    v5 = v2[40];

    MEMORY[0x2822009F8](sub_21530ACC8, v4, v5);
  }
}

void sub_21530ACC8()
{

  if (*(v0 + 388) == 1)
  {
    v1 = *(v0 + 184);
    v56 = [objc_opt_self() attributedStringWithAttachment_];
    if (!*(v1 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode))
    {
      goto LABEL_22;
    }

    v2 = [*(v0 + 184) ic_enclosingScrollView];
    if (!v2)
    {
      goto LABEL_22;
    }

    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4 || (v5 = v4, (v6 = [*(v0 + 184) snapshotViewAfterScreenUpdates_]) == 0))
    {
LABEL_21:

LABEL_22:
      v55 = *(v0 + 360);
      v41 = *(v0 + 384);
      v42 = *(v0 + 336);
      v43 = *(v0 + 288);
      v44 = *(v0 + 240);
      v45 = *(v0 + 248);
      v46 = *(v0 + 232);
      v47 = *(v0 + 176);
      v48 = *(v0 + 144);
      [*(v0 + 208) replaceCharactersInRange:*(v0 + 216) withAttributedString:{*(v0 + 224), v56}];
      sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
      [swift_getObjCClassFromMetadata() deleteAttachment_];
      [v47 paperDidChange];
      v49 = sub_2154A202C();
      v50 = v44;
      (*(*(v49 - 8) + 56))(v44, 1, 1, v49);
      v42(v43, v48, v45);
      v51 = sub_2154A1FEC();
      v52 = swift_allocObject();
      v53 = MEMORY[0x277D85700];
      *(v52 + 16) = v51;
      *(v52 + 24) = v53;
      v55(v52 + ((v41 + 32) & ~v41), v43, v45);
      sub_2152F4D50(0, 0, v50, &unk_2154BE1D8, v52);

      goto LABEL_23;
    }

    v7 = v6;
    v8 = *(v0 + 184);
    v9 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView;
    v10 = *(v8 + OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView);
    v11 = 1.0;
    if (v10)
    {
      v12 = v10[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_showThumbnails];
      v13 = v10;
      v14 = sub_2154A12FC();
      if (v14)
      {
        v15 = v14;
        v16 = sub_2154A126C();

        if (v16)
        {

          v17 = [v16 documentScrollView];
          if (v17)
          {
            [v17 contentOffset];
            v19 = v18;
            v21 = v20;

            v22 = *(v8 + v9);
            if (!v22)
            {
              goto LABEL_18;
            }

LABEL_15:
            v24 = v22;
            v25 = sub_2154A12FC();
            if (v25)
            {
              v26 = v25;
              v27 = sub_2154A126C();

              if (v27)
              {

                [v27 scaleFactor];
                v11 = v28;

                goto LABEL_18;
              }

LABEL_29:
              __break(1u);
              return;
            }

LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v19 = 0;
          v21 = 0;
          v22 = *(v8 + v9);
          if (v22)
          {
            goto LABEL_15;
          }

LABEL_18:
          v29 = *(v0 + 176);
          v30 = *(v0 + 184);
          v31 = *&v30[OBJC_IVAR___ICPaperDocumentTextAttachmentView__userScale];
          v32 = v7;
          v33 = [v5 textContainer];
          *(v0 + 16) = v7;
          *(v0 + 24) = v12;
          *(v0 + 32) = v19;
          *(v0 + 40) = v21;
          *(v0 + 48) = v11;
          *(v0 + 56) = v31;
          objc_allocWithZone(type metadata accessor for PaperDocumentTextAttachmentView(0));
          v34 = v32;
          sub_2152F1F98(v29, v33, (v0 + 16));
          v36 = v35;
          [v30 bounds];
          [v36 setFrame_];
          if (qword_2811997B0 != -1)
          {
            swift_once();
          }

          v38 = *(v0 + 192);
          v37 = *(v0 + 200);
          swift_beginAccess();

          v39 = v36;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57 = qword_2811997B8;
          qword_2811997B8 = 0x8000000000000000;
          sub_215472140(v39, v38, v37, isUniquelyReferenced_nonNull_native);

          qword_2811997B8 = v57;
          swift_endAccess();

          goto LABEL_21;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_28;
    }

    v12 = 0;
    v21 = 0;
    v19 = 0;
    goto LABEL_18;
  }

  v23 = *(v0 + 168);
  sub_2151A6C9C(0, &qword_281199690, 0x277D35E00);
  [swift_getObjCClassFromMetadata() deleteAttachment_];
LABEL_23:

  v54 = *(v0 + 8);

  v54();
}

void sub_21530B234(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v53 = a4;
  v57 = a6;
  v58 = a3;
  v8 = sub_21549E56C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v55 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5B090, &qword_2154BE0D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = objc_opt_self();
  v17 = [v16 sharedState];
  [v17 beginBlockingDeauthentication];

  sub_2154A1C0C();
  v54 = v9;
  (*(v9 + 56))(v15, 1, 1, v8);
  v18 = sub_2154A1BFC();
  if (v6)
  {
    v53 = a5;
    sub_2151ADCD8(v15, &unk_27CA5B090, &qword_2154BE0D0);
    v20 = [v16 sharedState];
    [v20 endBlockingDeauthentication];

    v21 = v55;
    if (qword_281199778 != -1)
    {
      swift_once();
    }

    v22 = sub_21549F11C();
    __swift_project_value_buffer(v22, qword_281199780);
    v23 = v54;
    v24 = *(v54 + 16);
    v24(v21, v58, v8);
    v25 = v56;
    v24(v56, v53, v8);
    v26 = v6;
    v27 = sub_21549F0FC();
    v28 = sub_2154A226C();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v58 = 0;
      v30 = v29;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v59 = v53;
      *v30 = 136315650;
      sub_215322150(&qword_281199D20, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v51 = v28;
      v31 = sub_2154A2F7C();
      v49 = v6;
      v50 = v27;
      v32 = v31;
      v34 = v33;
      v35 = *(v23 + 8);
      v35(v21, v8);
      v36 = sub_215348D98(v32, v34, &v59);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2080;
      v37 = sub_2154A2F7C();
      v39 = v38;
      v35(v25, v8);
      v40 = sub_215348D98(v37, v39, &v59);

      *(v30 + 14) = v40;
      *(v30 + 22) = 2112;
      v41 = v49;
      v42 = v49;
      v43 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 24) = v43;
      v44 = v52;
      *v52 = v43;
      v45 = v50;
      _os_log_impl(&dword_2151A1000, v50, v51, "Failed to copy temporary PaperDocument bundle from %s to %s error: %@", v30, 0x20u);
      sub_2151ADCD8(v44, &unk_27CA59E90, &qword_2154BEB40);
      MEMORY[0x21606B520](v44, -1, -1);
      v46 = v53;
      swift_arrayDestroy();
      MEMORY[0x21606B520](v46, -1, -1);
      MEMORY[0x21606B520](v30, -1, -1);
    }

    else
    {

      v47 = *(v23 + 8);
      v47(v25, v8);
      v47(v21, v8);
    }

    *v57 = 0;
  }

  else
  {
    v19 = v18;
    sub_2151ADCD8(v15, &unk_27CA5B090, &qword_2154BE0D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA5A3F0, &qword_2154BE180);
    sub_2154A1AAC();

    *v57 = 1;
    v48 = [v16 sharedState];
    [v48 endBlockingDeauthentication];
  }
}

uint64_t sub_21530B7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[93] = a4;
  sub_2154A1FFC();
  v4[94] = sub_2154A1FEC();
  v6 = sub_2154A1FCC();
  v4[95] = v6;
  v4[96] = v5;

  return MEMORY[0x2822009F8](sub_21530B88C, v6, v5);
}

uint64_t sub_21530B88C()
{
  v1 = *(v0 + 744);
  v2 = swift_task_alloc();
  *(v0 + 776) = v2;
  *(v2 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5A418, &qword_2154BE1F0);
  swift_asyncLet_begin();

  return MEMORY[0x282200928](v0 + 16, v0 + 696, sub_21530B948, v0 + 656);
}

uint64_t sub_21530B948()
{
  v1 = v0[87];
  v0[98] = v1;

  v2 = swift_task_alloc();
  v0[99] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA59E88, &unk_2154BDBE0);
  *v2 = v0;
  v2[1] = sub_21530BA20;
  v4 = MEMORY[0x277D84950];
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v3, v1, v5, v3, v4);
}

uint64_t sub_21530BA20()
{
  v2 = *v1;
  *(*v1 + 800) = v0;

  if (v0)
  {

    v3 = *(v2 + 768);
    v4 = *(v2 + 760);
    v5 = sub_21530BC38;
  }

  else
  {
    v3 = *(v2 + 768);
    v4 = *(v2 + 760);
    v5 = sub_21530BB44;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21530BB44()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 696, sub_21530BBB0, v0 + 704, v1);
}

uint64_t sub_21530BBCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21530BC38()
{
  if (qword_281199778 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 800);
  v2 = sub_21549F11C();
  __swift_project_value_buffer(v2, qword_281199780);
  v3 = v1;
  v4 = sub_21549F0FC();
  v5 = sub_2154A226C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 800);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2151A1000, v4, v5, "Failed to remove temporary paper bundle after attachment upgrade. Error: %@", v8, 0xCu);
    sub_2151ADCD8(v9, &unk_27CA59E90, &qword_2154BEB40);
    MEMORY[0x21606B520](v9, -1, -1);
    MEMORY[0x21606B520](v8, -1, -1);
  }

  else
  {
  }

  return MEMORY[0x282200920](v0 + 16, v0 + 696, sub_21530BBB0, v0 + 704, v12);
}

uint64_t sub_21530BDE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_21549E56C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5ACE0, &qword_2154BED90);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21530BEE8, 0, 0);
}

uint64_t sub_21530BEE8()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = sub_2154A202C();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v5, v4);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v3 + 32))(v9 + v8, v2, v4);
  *v6 = sub_215354B4C(0, 0, v1, &unk_2154BE200, v9);

  v10 = v0[1];

  return v10();
}

uint64_t sub_21530C04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_21530C06C, 0, 0);
}

uint64_t sub_21530C06C()
{
  v0[4] = [objc_allocWithZone(MEMORY[0x277CCA9E8]) init];
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_21530C150;
  v2 = v0[2];
  v3 = v0[3];
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821952F0](v2, v3, 1, 0, sub_21530C2F0, 0, v4);
}

uint64_t sub_21530C150()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21530C28C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_21530C28C()
{
  v1 = *(v0 + 8);

  return v1();
}

id sub_21530C2F0(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21549E56C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = [a1 URL];
  sub_21549E51C();

  v8 = sub_21549E49C();
  (*(v3 + 8))(v5, v2);
  v11[0] = 0;
  LOBYTE(v2) = [v6 removeItemAtURL:v8 error:v11];

  if (v2)
  {
    return v11[0];
  }

  v10 = v11[0];
  sub_21549E3DC();

  return swift_willThrow();
}

double sub_21530C49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

uint64_t sub_21530C518(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_2153259E8;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2152FF928;
  aBlock[3] = &block_descriptor_490;
  v4 = _Block_copy(aBlock);

  v5 = [v2 elementWithUncachedProvider_];
  _Block_release(v4);
  sub_2151A6C9C(0, &qword_2811994E0, 0x277D75710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2154BDB20;
  *(v6 + 32) = v5;
  return sub_2154A28AC();
}

UIPointerRegion_optional __swiftcall PaperDocumentTextAttachmentView.pointerInteraction(_:regionFor:defaultRegion:)(UIPointerInteraction _, UIPointerRegionRequest regionFor, UIPointerRegion defaultRegion)
{
  v3 = 0;
  result.is_nil = regionFor.super.isa;
  result.value.super.isa = v3;
  return result;
}

void sub_21530C800(char *a1, char a2)
{
  [a1 layoutIfNeeded];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_2152FE67C(1, 1);
  }

  sub_2152FE2F0(a2 & 1);
}

void sub_21530C86C(char a1)
{
  v2 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_showThumbnails;
  if (v1[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_showThumbnails] == (a1 & 1))
  {
    return;
  }

  v3 = v1;
  v4 = v1;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
LABEL_8:

    v10 = sub_2154A12FC();
    if (v10)
    {
      v11 = v10;
      v12 = sub_2154A126C();

      if (v12)
      {
        [v12 scaleFactor];
        v14 = v13;

        v15 = sub_2154A12FC();
        if (v15)
        {
          v16 = v15;
          v17 = sub_2154A126C();

          if (v17)
          {
            [v17 minScaleFactor];
            v19 = v18;

            v20 = sub_2154A12FC();
            if (v20)
            {
              v21 = v20;
              v22 = sub_2154A126C();

              if (v22)
              {
                v23 = [v22 documentScrollView];

                if (v23)
                {
                  v24 = sub_2154A12FC();
                  if (v24)
                  {
                    v25 = v24;
                    v26 = sub_2154A126C();

                    if (v26)
                    {
                      v27 = [v26 documentScrollView];

                      if (v27)
                      {
                        [v27 contentOffset];
                        v29 = v28;
                        v31 = v30;

                        [v23 convertPoint:0 toView:{v29, v31}];
                        v33 = v32;

                        v34 = *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_collapseThumbnailsConstraint];
                        if (v34)
                        {
                          [v34 setActive_];
                          Strong = swift_unknownObjectWeakLoadStrong();
                          if (Strong)
                          {
                            v36 = *(Strong + OBJC_IVAR___ICPaperDocumentTextAttachmentView_paperDocumentContainerView);
                            v37 = Strong;
                            v38 = v36;

                            if (v36)
                            {
                              v39 = *&v38[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_thumbnailView];

                              [v39 setAccessibilityElementsHidden_];
                            }
                          }

                          v40 = objc_opt_self();
                          v41 = swift_allocObject();
                          *(v41 + 16) = v6;
                          *(v41 + 24) = v4;
                          *(v41 + 32) = v14 <= v19;
                          *(v41 + 40) = v33;
                          v45[4] = sub_215324D24;
                          v45[5] = v41;
                          v45[0] = MEMORY[0x277D85DD0];
                          v45[1] = 1107296256;
                          v45[2] = sub_2151BD7E4;
                          v45[3] = &block_descriptor_403;
                          v42 = _Block_copy(v45);
                          v43 = v4;
                          v44 = v7;

                          [v40 _animateUsingDefaultTimingWithOptions_animations_completion_];
                          _Block_release(v42);

                          return;
                        }

LABEL_34:
                        __break(1u);
                        return;
                      }

LABEL_33:
                      __break(1u);
                      goto LABEL_34;
                    }

LABEL_32:
                    __break(1u);
                    goto LABEL_33;
                  }

LABEL_31:
                  __break(1u);
                  goto LABEL_32;
                }

LABEL_30:
                __break(1u);
                goto LABEL_31;
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

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  v7 = v4;
  while (1)
  {

    v8 = [v7 superview];
    if (!v8)
    {
      break;
    }

    v7 = v8;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v6 = v9;
      goto LABEL_8;
    }
  }
}

void sub_21530CC50(void *a1, char *a2, char a3)
{
  v5 = (MEMORY[0x277D84F90] >> 62);
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_47;
  }

LABEL_2:
  v6 = MEMORY[0x277D84FA0];
  while (1)
  {
    v86[0] = v6;
    sub_2152FE1E4(a1, v86);
    [a2 layoutIfNeeded];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      sub_2152FE67C(1, 1);
    }

    if (v5 && sub_2154A2C8C())
    {
      sub_21532A04C(MEMORY[0x277D84F90]);
    }

    else
    {
      v9 = MEMORY[0x277D84FA0];
    }

    v85 = v9;
    sub_2152FE1E4(a1, &v85);
    v10 = sub_2152FE1FC(v86[0], v85);

    v83 = a2;
    if ((v10 & 0xC000000000000001) != 0)
    {
      sub_2154A2C3C();
      sub_2151A6C9C(0, &qword_2811994D0, 0x277D75D18);
      sub_21532210C(&unk_27CA5A450, &qword_2811994D0, 0x277D75D18, MEMORY[0x277D85378]);
      sub_2154A20FC();
      v10 = v86[1];
      a2 = v86[2];
      v11 = v86[3];
      v12 = v86[4];
      a1 = v86[5];
    }

    else
    {
      v12 = 0;
      v13 = -1 << *(v10 + 32);
      a2 = (v10 + 56);
      v11 = ~v13;
      v14 = -v13;
      v15 = v14 < 64 ? ~(-1 << v14) : -1;
      a1 = (v15 & *(v10 + 56));
    }

    v16 = (v11 + 64) >> 6;
    if (v10 < 0)
    {
      break;
    }

    while (1)
    {
      v19 = v12;
      v20 = a1;
      v18 = v12;
      if (!a1)
      {
        break;
      }

LABEL_23:
      v5 = ((v20 - 1) & v20);
      v17 = *(*(v10 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v20)))));
      if (!v17)
      {
        goto LABEL_26;
      }

LABEL_24:
      [v17 setAlpha_];
      [v17 _removeAllAnimations_];
      v21 = objc_opt_self();
      v22 = swift_allocObject();
      v22[2] = v17;
      aBlock[4] = sub_215324D54;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2151BD7E4;
      aBlock[3] = &block_descriptor_409;
      v23 = _Block_copy(aBlock);
      v24 = v17;

      [v21 animateWithDuration:0 delay:v23 options:0 animations:0.1 completion:0.1];

      _Block_release(v23);
      v12 = v18;
      a1 = v5;
      if (v10 < 0)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {
      v18 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        goto LABEL_26;
      }

      v20 = *&a2[8 * v18];
      ++v19;
      if (v20)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_47:
    if (!sub_2154A2C8C())
    {
      goto LABEL_2;
    }

    sub_21532A04C(MEMORY[0x277D84F90]);
  }

LABEL_16:
  if (sub_2154A2CDC())
  {
    sub_2151A6C9C(0, &qword_2811994D0, 0x277D75D18);
    swift_dynamicCast();
    v17 = aBlock[0];
    v18 = v12;
    v5 = a1;
    if (aBlock[0])
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  sub_2151A66EC(v10);
  sub_2152FE2F0(a3 & 1);
  v25 = v83;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    v28 = v25;
LABEL_32:

    v31 = swift_unknownObjectWeakLoadStrong();
    if (!v31)
    {
      goto LABEL_44;
    }

    v32 = v31;
    [v27 bounds];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    [v27 safeAreaInsets];
    [v27 convertRect:0 toView:{UIEdgeInsetsInsetRect(v34, v36, v38, v40, v41, v42)}];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    [v32 bounds];
    [v32 convertRect:0 toView:?];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v87.origin.x = v44;
    v87.origin.y = v46;
    v87.size.width = v48;
    v87.size.height = v50;
    MinY = CGRectGetMinY(v87);
    v88.origin.x = v52;
    v88.origin.y = v54;
    v88.size.width = v56;
    v88.size.height = v58;
    v60 = CGRectGetMinY(v88);
    if (!TSUFloatsLessThanButNotAlmostEqual(MinY, v60))
    {
      v61 = sub_2154A12FC();
      if (v61)
      {
        v62 = v61;
        v63 = sub_2154A126C();

        if (v63)
        {
          v64 = [v63 documentScrollView];

          if (v64)
          {
            sub_2153083DC(v65);
            if (v66)
            {
              v67 = v64;
              [v67 contentOffset];
              [v67 convertPoint:0 toView:?];
              [v67 adjustedContentInset];
              [v67 contentSize];
              v69 = v68;
              [v67 adjustedContentInset];
              v71 = v69 + v70;
              [v67 bounds];
              v73 = v72;
              v75 = v74;
              v77 = v76;
              v79 = v78;

              v89.origin.x = v73;
              v89.origin.y = v75;
              v89.size.width = v77;
              v89.size.height = v79;
              v80 = v71 - CGRectGetHeight(v89);
              [v67 contentOffset];
              if (!TSUFloatsAlmostEqual(round(v81), round(v80)))
              {
                [v67 contentOffset];
                [v67 contentOffset];
                [v67 setContentOffset_];
              }

              v64 = v28;
              v28 = v32;
            }

            else
            {
              v67 = v32;
            }

            v32 = v67;
          }

          goto LABEL_43;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_43:

    v28 = v32;
LABEL_44:

    return;
  }

  v28 = v25;
  while (1)
  {

    v29 = [v28 superview];
    if (!v29)
    {
      break;
    }

    v28 = v29;
    objc_opt_self();
    v30 = swift_dynamicCastObjCClass();
    if (v30)
    {
      v27 = v30;
      goto LABEL_32;
    }
  }
}

void sub_21530D374(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = [a1 subviews];
  sub_2151A6C9C(0, &qword_2811994D0, 0x277D75D18);
  v5 = sub_2154A1F4C();

  if (v5 >> 62)
  {
    v6 = sub_2154A2C8C();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_19:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v6 >= 1)
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x216069960](v7, v5);
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 className];
      if (!v10)
      {
        goto LABEL_7;
      }

      v11 = v10;
      v12 = sub_2154A1D6C();
      v14 = v13;

      if (v12 == 0xD000000000000019 && 0x80000002154D4E90 == v14)
      {
      }

      else
      {
        v16 = sub_2154A2FAC();

        if ((v16 & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      sub_2153EE1A4(&v18, v9);

LABEL_7:
      ++v7;
      a3(v9, a2);

      if (v6 == v7)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
}

void sub_21530D544(void *a1)
{
  [a1 removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContentView);
  if (!v2)
  {
    return;
  }

  v3 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerView;
  v4 = *(v1 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerView);
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v2;
  [v4 addSubview_];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2154BDB30;
  v7 = [v5 leadingAnchor];
  v8 = *(v1 + v3);
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = [v8 leadingAnchor];
  v10 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v10;
  v11 = [v5 trailingAnchor];
  v12 = *(v1 + v3);
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintEqualToAnchor_];

  *(v6 + 40) = v14;
  v15 = [v5 topAnchor];
  v16 = *(v1 + v3);
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = [v16 topAnchor];
  v18 = [v15 constraintEqualToAnchor_];

  *(v6 + 48) = v18;
  v19 = [v5 bottomAnchor];
  v20 = *(v1 + v3);
  if (!v20)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v21 = v19;
  v22 = objc_opt_self();
  v23 = [v20 bottomAnchor];
  v24 = [v21 constraintEqualToAnchor_];

  *(v6 + 56) = v24;
  sub_2151A6C9C(0, &qword_2811995A0, 0x277CCAAD0);
  v25 = sub_2154A1F3C();

  [v22 activateConstraints_];
}

void sub_21530D83C()
{
  v1 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerShadowOpacity;
  v2 = *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerShadowOpacity);
  v3 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_shadowView;
  v4 = *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_shadowView);
  if (v2 <= 0.0)
  {
    if (v4)
    {
      [v4 removeFromSuperview];
      v4 = *(v0 + v3);
    }

    *(v0 + v3) = 0;
    goto LABEL_17;
  }

  if (!v4)
  {
    type metadata accessor for HeaderBottomEdgeDecoration();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    v6 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContainer;
    v7 = *(v0 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContainer);
    if (v7)
    {
      [v7 addSubview_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2154BDB70;
      v9 = [v5 leadingAnchor];
      v10 = *(v0 + v6);
      if (v10)
      {
        v11 = [v10 leadingAnchor];
        v12 = [v9 constraintEqualToAnchor_];

        *(v8 + 32) = v12;
        v13 = [v5 trailingAnchor];
        v14 = *(v0 + v6);
        if (v14)
        {
          v15 = [v14 trailingAnchor];
          v16 = [v13 constraintEqualToAnchor_];

          *(v8 + 40) = v16;
          v17 = [v5 bottomAnchor];

          v18 = *(v0 + v6);
          if (v18)
          {
            v19 = objc_opt_self();
            v20 = [v18 bottomAnchor];
            v21 = [v17 constraintEqualToAnchor_];

            *(v8 + 48) = v21;
            sub_2151A6C9C(0, &qword_2811995A0, 0x277CCAAD0);
            v22 = sub_2154A1F3C();

            [v19 activateConstraints_];

            v23 = *(v0 + v3);
            *(v0 + v3) = v5;

            v4 = *(v0 + v3);
            if (!v4)
            {
              return;
            }

            v2 = *(v0 + v1);
            goto LABEL_9;
          }

LABEL_24:
          __break(1u);
          return;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_9:
  if (v2 < 0.0)
  {
    v2 = 0.0;
  }

  if (v2 > 1.0)
  {
    v2 = 1.0;
  }

  *&v4[OBJC_IVAR____TtC11NotesEditor26HeaderBottomEdgeDecoration_shadowOpacity] = v2;
  v24 = v4;
  sub_215316848();
  v4 = v24;
LABEL_17:
}

void sub_21530DB5C(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v367 = a3;
  v5 = a2;
  ObjectType = swift_getObjectType();
  v366 = sub_2154A2AAC();
  v365 = *(v366 - 8);
  MEMORY[0x28223BE20](v366);
  v375 = &v357 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2154A147C();
  v379 = *(v9 - 8);
  v380 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v357 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_autoFillBannerView;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277CD95D8]) init];
  v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderEnabled] = 1;
  v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView__showFormFillingBanner] = 0;
  v13 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_showThumbnails;
  v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_showThumbnails] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContentView] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerView] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContainer] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_scrollViewDelegateMultiplexer] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_collapseThumbnailsConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_collapseFormFillingBannerConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_pushStickyHeaderAwayConstraint] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_shadowView] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerShadowOpacity] = 0;
  v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_didStartObservingTextView] = 0;
  v14 = &v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_lastLayoutBounds];
  v15 = *(MEMORY[0x277CBF398] + 16);
  *v14 = *MEMORY[0x277CBF398];
  v14[1] = v15;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_doubleTapEater] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_nestedScrollViewInteraction] = 0;
  v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_inLayoutSubviews] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_lastPDFScaleFactorForInterpageSpacingUpdate] = 0;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_inlineView] = a1;
  v4[v13] = v5;
  sub_2154A14AC();
  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v17 = a1;
  v18 = [v16 init];
  v19 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_thumbnailView;
  *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_thumbnailView] = v18;
  [v18 layoutIfNeeded];
  v20 = *&v4[v19];
  v378 = v17;
  if (!sub_2154A12FC())
  {
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  sub_2154A146C();

  v383.receiver = v4;
  v383.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v383, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v22 = sub_2154A1D2C();
  v23 = [objc_opt_self() systemImageNamed_];

  v24 = objc_opt_self();
  v25 = sub_2154A1D2C();
  v26 = [v24 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:1];

  sub_2154A1D6C();
  v28 = v27;

  sub_2151A6C9C(0, &qword_281199480, 0x277D750C8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = sub_2154A295C();
  v30 = sub_2154A1D2C();
  v31 = [v24 localizedFrameworkStringForKey:v30 value:0 table:0 allowSiri:1];

  if (!v31)
  {
    sub_2154A1D6C();
    v31 = sub_2154A1D2C();
  }

  [v29 setTitle_];

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v32 = sub_2154A295C();
  v33 = v29;
  v34 = v23;
  v35 = sub_2154A1D2C();
  v36 = sub_2154A1D2C();
  gotLoadHelper_x8__OBJC_CLASS___QuickLookContentEditorBannerConfiguration(v37);
  v38 = objc_opt_self();
  v364 = v32;
  v39 = [v38 configurationWithImage:v34 title:v35 subtitle:v36 primaryAction:v33 dismissAction:v32];

  v369 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_autoFillBannerView;
  v40 = *(v21 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_autoFillBannerView);
  v372 = v39;
  [v40 populateWithConfiguration_];
  v381 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_inlineView;
  v41 = sub_2154A12FC();
  if (!v41)
  {
    goto LABEL_96;
  }

  v42 = v41;
  v43 = v28;
  v44 = sub_2154A126C();

  if (!v44)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v45 = [objc_opt_self() rootSettings];
  v46 = [v45 pageShadowEnabled];

  [v44 enablePageShadows_];
  v47 = sub_2154A12FC();
  if (!v47)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v48 = v47;
  v49 = sub_2154A126C();

  if (!v49)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  [v49 setDisplayDirection_];

  v50 = sub_2154A12FC();
  if (!v50)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v51 = v50;
  v52 = sub_2154A126C();

  if (!v52)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  [v52 pageBreakMargins];
  [v52 setPageBreakMargins_];

  v53 = sub_2154A12FC();
  if (!v53)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v54 = v53;
  v55 = sub_2154A126C();

  if (!v55)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  [v55 pageBreakMargins];
  [v55 setPageBreakMargins_];

  v56 = sub_2154A12FC();
  if (!v56)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v57 = v56;
  v58 = sub_2154A126C();

  if (!v58)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  [v58 pageBreakMargins];
  v60 = v59;
  v62 = v61;

  v63 = sub_2154A12FC();
  if (!v63)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v64 = v63;
  v65 = sub_2154A126C();

  if (!v65)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  [v65 setDocumentMargins_];

  v66 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_thumbnailView;
  v67 = *(v21 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_thumbnailView);
  v379[13](v11, *MEMORY[0x277CD94B0], v380);
  v68 = v67;
  sub_2154A149C();

  v69 = *(v21 + v66);
  sub_2154A148C();

  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = type metadata accessor for PaperDocumentContainerView.TraitCollectionDidChangeObserver();
  v72 = objc_allocWithZone(v71);
  v73 = &v72[OBJC_IVAR____TtCFC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerViewcFT10inlineViewC8PaperKit23PaperDocumentInlineView21initialShowThumbnailsSb10attachmentCSo12ICAttachment_S0_L_32TraitCollectionDidChangeObserver_traitCollectionDidChangeHandler];
  *v73 = sub_2153251EC;
  v73[1] = v70;
  v382.receiver = v72;
  v382.super_class = v71;
  v74 = objc_msgSendSuper2(&v382, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v377 = v66;
  [*(v21 + v66) addSubview_];
  v75 = objc_opt_self();
  v76 = [v75 defaultCenter];
  v77 = sub_2154A1D2C();
  v78 = sub_2154A12FC();
  if (!v78)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v79 = v78;
  v363 = v75;
  v360 = v74;
  v361 = v43;
  v362 = v34;
  v80 = sub_2154A126C();

  if (!v80)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  [v76 postNotificationName:v77 object:v80];

  [v21 setClipsToBounds_];
  v81 = objc_opt_self();
  v82 = [v81 systemBackgroundColor];
  v83 = [v82 ic_resolvedColorForNoteEditor];

  [v21 setBackgroundColor_];
  v84 = v378;
  v85 = [v81 quaternarySystemFillColor];
  v86 = [v85 ic_resolvedColorForNoteEditor];

  [v84 setBackgroundColor_];
  v87 = sub_2154A12FC();
  if (!v87)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v88 = v87;
  v359 = v33;
  v89 = [v81 clearColor];
  [v88 setBackgroundColor_];

  v379 = v84;
  v90 = sub_2154A12FC();
  if (!v90)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v91 = v90;
  sub_2154A125C();

  v92 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v93 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerView;
  v94 = *(v21 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerView);
  *(v21 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerView) = v92;
  v95 = v92;

  if (!v95)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  [v95 setTranslatesAutoresizingMaskIntoConstraints_];

  v96 = *(v21 + v93);
  if (!v96)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  [v96 setPreservesSuperviewLayoutMargins_];
  v380 = v93;
  v97 = *(v21 + v93);
  if (!v97)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  [v97 setLayoutMargins_];
  v374 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v374 setTranslatesAutoresizingMaskIntoConstraints_];
  v98 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v99 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContainer;
  v100 = *(v21 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContainer);
  *(v21 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContainer) = v98;
  v101 = v98;

  if (!v101)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  [v101 setTranslatesAutoresizingMaskIntoConstraints_];

  v102 = *&v99[v21];
  if (!v102)
  {
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  [v102 setPreservesSuperviewLayoutMargins_];
  v103 = *&v99[v21];
  if (!v103)
  {
LABEL_117:
    __break(1u);
    goto LABEL_118;
  }

  v104 = v103;
  v105 = [v81 systemBackgroundColor];
  v106 = [v105 ic_resolvedColorForNoteEditor];

  [v104 setBackgroundColor_];
  v107 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v107 setTranslatesAutoresizingMaskIntoConstraints_];
  v108 = [v81 quaternarySystemFillColor];
  v109 = [v108 ic_resolvedColorForNoteEditor];

  [v107 setBackgroundColor_];
  v376 = v99;
  v110 = *&v99[v21];
  if (!v110)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  [v110 addSubview_];
  v111 = sub_2154A12FC();
  if (!v111)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v112 = v111;
  v113 = sub_2154A126C();

  if (!v113)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  v114 = [v81 clearColor];
  [v113 setBackgroundColor_];

  v115 = sub_2154A12FC();
  if (!v115)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v116 = v115;
  v117 = sub_2154A126C();

  if (!v117)
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v118 = [v117 documentScrollView];

  if (v118)
  {
    [v118 setContentInsetAdjustmentBehavior_];
  }

  v119 = sub_2154A12FC();
  if (!v119)
  {
    goto LABEL_123;
  }

  v120 = v119;
  v121 = sub_2154A126C();

  if (!v121)
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    goto LABEL_126;
  }

  v122 = [v121 documentScrollView];

  if (v122)
  {
    [v122 setDecelerationRate_];
  }

  v123 = sub_2154A12FC();
  if (!v123)
  {
    goto LABEL_125;
  }

  v124 = v123;
  v125 = sub_2154A126C();

  if (!v125)
  {
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v126 = [v125 documentScrollView];

  if (v126)
  {
    [v126 _addScrollViewScrollObserver_];
  }

  v127 = sub_2154A12FC();
  if (!v127)
  {
    goto LABEL_127;
  }

  v128 = v127;
  v129 = sub_2154A126C();

  if (!v129)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v130 = [v129 documentScrollView];

  v368 = v107;
  if (!v130 || (v131 = [v130 delegate], v130, !v131))
  {
LABEL_51:
    v145 = v377;
    v146 = *(v21 + v377);
    v147 = [v81 clearColor];
    [v146 setBackgroundColor_];

    v148 = v369;
    v149 = *&v369[v21];
    v150 = [v81 clearColor];
    [v149 setBackgroundColor_];

    v151 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v151 setClipsToBounds_];
    [v151 setTranslatesAutoresizingMaskIntoConstraints_];
    [v151 addSubview_];
    v378 = v151;
    v152 = [v151 bottomAnchor];
    v153 = [*(v21 + v145) bottomAnchor];
    v154 = [v152 constraintEqualToAnchor_];

    LODWORD(v155) = 1144750080;
    [v154 setPriority_];
    v357 = v154;
    [v154 setActive_];
    v156 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v156 setClipsToBounds_];
    [v156 setTranslatesAutoresizingMaskIntoConstraints_];
    [v156 addSubview_];
    [*&v148[v21] systemLayoutSizeFittingSize_];
    v158 = v157;
    v159 = [*&v148[v21] heightAnchor];
    v160 = [v159 constraintEqualToConstant_];

    LODWORD(v161) = 1144750080;
    [v160 setPriority_];
    v371 = v160;
    [v160 setActive_];
    v162 = [v156 bottomAnchor];
    v163 = [*&v148[v21] bottomAnchor];
    v164 = [v162 constraintEqualToAnchor_];

    v165 = v164;
    LODWORD(v166) = 1144750080;
    [v164 setPriority_];
    [v164 setActive_];
    [v379 setTranslatesAutoresizingMaskIntoConstraints_];
    [*(v21 + v145) setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v148[v21] setTranslatesAutoresizingMaskIntoConstraints_];
    v167 = v376;
    v168 = *&v376[v21];
    if (v168)
    {
      v169 = v374;
      if (*(v21 + v380))
      {
        [v168 addSubview_];
        v170 = *&v167[v21];
        if (v170)
        {
          [v170 addSubview_];
          v171 = *&v167[v21];
          if (v171)
          {
            v373 = v156;
            [v171 addSubview_];
            v172 = v21;
            [v172 addSubview_];
            [v172 addSubview_];
            if (*&v167[v21])
            {
              v370 = v165;
              [v172 addSubview_];
              sub_2154A298C();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
              v173 = swift_allocObject();
              *(v173 + 16) = xmmword_2154BDB80;
              v174 = *&v167[v21];
              if (v174)
              {
                v175 = [v174 leadingAnchor];
                v176 = [v172 leadingAnchor];
                v177 = [v175 constraintEqualToAnchor_];

                *(v173 + 32) = v177;
                v178 = *&v167[v21];
                if (v178)
                {
                  v179 = [v178 trailingAnchor];
                  v180 = [v172 trailingAnchor];
                  v358 = v172;

                  v181 = [v179 constraintEqualToAnchor_];
                  *(v173 + 40) = v181;
                  v182 = v368;
                  v183 = [v368 leadingAnchor];
                  v184 = *&v167[v21];
                  if (v184)
                  {
                    v185 = [v184 leadingAnchor];
                    v186 = [v183 constraintEqualToAnchor_];

                    *(v173 + 48) = v186;
                    v187 = [v182 trailingAnchor];
                    v188 = *&v167[v21];
                    if (v188)
                    {
                      v189 = [v188 trailingAnchor];
                      v190 = [v187 constraintEqualToAnchor_];

                      *(v173 + 56) = v190;
                      v191 = [v182 topAnchor];
                      v192 = *&v167[v21];
                      v193 = v380;
                      if (v192)
                      {
                        v194 = [v192 topAnchor];
                        v195 = [v191 &selRef_currentFilter + 5];

                        *(v173 + 64) = v195;
                        v196 = [v182 bottomAnchor];
                        v197 = *&v167[v21];
                        if (v197)
                        {
                          v198 = [v197 bottomAnchor];
                          v199 = [v196 &selRef_currentFilter + 5];

                          *(v173 + 72) = v199;
                          v200 = *(v21 + v193);
                          if (v200)
                          {
                            v201 = v21;
                            v202 = [v200 trailingAnchor];
                            v203 = *&v167[v21];
                            if (v203)
                            {
                              v204 = [v203 trailingAnchor];
                              v205 = [v202 &selRef_currentFilter + 5];

                              *(v173 + 80) = v205;
                              v206 = *(v21 + v193);
                              if (v206)
                              {
                                v207 = [v206 topAnchor];
                                v208 = *&v167[v21];
                                if (v208)
                                {
                                  v209 = [v208 topAnchor];
                                  v210 = [v207 &selRef_currentFilter + 5];

                                  *(v173 + 88) = v210;
                                  v211 = *(v21 + v193);
                                  if (v211)
                                  {
                                    v212 = [v211 leadingAnchor];
                                    v213 = *&v167[v21];
                                    if (v213)
                                    {
                                      v214 = [v213 leadingAnchor];
                                      v215 = [v212 constraintEqualToAnchor_];

                                      *(v173 + 96) = v215;
                                      v216 = v378;
                                      v217 = [v378 topAnchor];
                                      v218 = v377;
                                      v219 = [*(v21 + v377) topAnchor];
                                      v220 = [v217 constraintEqualToAnchor_];

                                      *(v173 + 104) = v220;
                                      v221 = [v216 leadingAnchor];
                                      v222 = [*(v21 + v218) leadingAnchor];
                                      v223 = [v221 constraintEqualToAnchor_];

                                      *(v173 + 112) = v223;
                                      v224 = [v216 trailingAnchor];
                                      v225 = [*(v21 + v218) trailingAnchor];
                                      v226 = [v224 constraintEqualToAnchor_];

                                      *(v173 + 120) = v226;
                                      v227 = [v216 topAnchor];
                                      v228 = *(v21 + v380);
                                      if (v228)
                                      {
                                        v229 = [v228 bottomAnchor];
                                        v230 = [v227 constraintEqualToAnchor_];

                                        *(v173 + 128) = v230;
                                        v231 = [v216 leadingAnchor];
                                        v232 = v376;
                                        v233 = *&v376[v21];
                                        if (v233)
                                        {
                                          v234 = [v233 leadingAnchor];
                                          v235 = [v231 constraintEqualToAnchor_];

                                          *(v173 + 136) = v235;
                                          v236 = [v216 trailingAnchor];
                                          v237 = *&v232[v21];
                                          if (v237)
                                          {
                                            v238 = [v237 trailingAnchor];
                                            v239 = [v236 constraintEqualToAnchor_];

                                            *(v173 + 144) = v239;
                                            v240 = [v216 bottomAnchor];
                                            v241 = v373;
                                            v242 = [v373 topAnchor];
                                            v243 = [v240 constraintEqualToAnchor_];

                                            *(v173 + 152) = v243;
                                            v244 = [v241 topAnchor];
                                            v245 = v369;
                                            v246 = [*&v369[v21] topAnchor];
                                            v247 = [v244 constraintEqualToAnchor_];

                                            *(v173 + 160) = v247;
                                            v248 = [v241 leadingAnchor];
                                            v249 = [*&v245[v21] leadingAnchor];
                                            v250 = [v248 constraintEqualToAnchor_];

                                            *(v173 + 168) = v250;
                                            v251 = [v241 trailingAnchor];
                                            v252 = [*&v245[v21] trailingAnchor];
                                            v253 = [v251 constraintEqualToAnchor_];

                                            *(v173 + 176) = v253;
                                            v254 = [v241 topAnchor];
                                            v255 = [v378 bottomAnchor];
                                            v256 = [v254 constraintEqualToAnchor_];

                                            *(v173 + 184) = v256;
                                            v257 = [v241 leadingAnchor];
                                            v258 = v358;
                                            v259 = [v358 layoutMarginsGuide];

                                            v260 = [v259 leadingAnchor];
                                            sub_2154A29EC();
                                            v262 = [v257 constraintEqualToAnchor:v260 constant:-(v261 + 4.0)];

                                            *(v173 + 192) = v262;
                                            v263 = [v241 trailingAnchor];
                                            v264 = v376;
                                            v265 = *&v376[v201];
                                            v380 = v201;
                                            if (v265)
                                            {
                                              v266 = [v265 trailingAnchor];
                                              sub_2154A29EC();
                                              v268 = [v263 constraintEqualToAnchor:v266 constant:v267 * -0.5];

                                              *(v173 + 200) = v268;
                                              v269 = [v241 bottomAnchor];
                                              v270 = *&v264[v380];
                                              if (v270)
                                              {
                                                v271 = [v270 bottomAnchor];
                                                v272 = [v269 constraintEqualToAnchor_];

                                                *(v173 + 208) = v272;
                                                v273 = v374;
                                                v274 = [v374 topAnchor];
                                                v275 = [v258 topAnchor];

                                                v276 = [v274 constraintEqualToAnchor_];
                                                *(v173 + 216) = v276;
                                                v277 = [v273 heightAnchor];
                                                v278 = *&v264[v380];
                                                if (v278)
                                                {
                                                  v279 = v277;
                                                  v369 = objc_opt_self();
                                                  v280 = [v278 heightAnchor];
                                                  v281 = [v279 constraintEqualToAnchor_];

                                                  *(v173 + 224) = v281;
                                                  v282 = [v273 leadingAnchor];
                                                  v283 = [v258 leadingAnchor];

                                                  v284 = [v282 constraintEqualToAnchor_];
                                                  *(v173 + 232) = v284;
                                                  v285 = [v273 trailingAnchor];
                                                  v286 = [v258 trailingAnchor];

                                                  v287 = [v285 constraintEqualToAnchor_];
                                                  *(v173 + 240) = v287;
                                                  v288 = v379;
                                                  v289 = [v379 topAnchor];
                                                  v290 = [v273 bottomAnchor];
                                                  v291 = [v289 constraintEqualToAnchor_];

                                                  *(v173 + 248) = v291;
                                                  v292 = [v288 bottomAnchor];
                                                  v293 = [v258 bottomAnchor];

                                                  v294 = [v292 constraintEqualToAnchor_];
                                                  *(v173 + 256) = v294;
                                                  v295 = [v288 leadingAnchor];
                                                  v296 = [v258 leadingAnchor];

                                                  v297 = [v295 constraintEqualToAnchor_];
                                                  *(v173 + 264) = v297;
                                                  v298 = [v288 trailingAnchor];

                                                  v299 = [v258 trailingAnchor];
                                                  v300 = [v298 constraintEqualToAnchor_];

                                                  *(v173 + 272) = v300;
                                                  sub_2151A6C9C(0, &qword_2811995A0, 0x277CCAAD0);
                                                  v301 = sub_2154A1F3C();

                                                  [v369 activateConstraints_];

                                                  v302 = *&v376[v380];
                                                  if (v302)
                                                  {
                                                    v303 = [v302 topAnchor];
                                                    v304 = [v258 topAnchor];

                                                    v305 = [v303 constraintEqualToAnchor_];
                                                    LODWORD(v306) = 1132068864;
                                                    [v305 setPriority_];
                                                    v376 = v305;
                                                    [v305 setActive_];
                                                    v307 = [*(v380 + v377) heightAnchor];
                                                    v308 = [v307 constraintEqualToConstant_];

                                                    v369 = v308;
                                                    [v308 setActive_];
                                                    v309 = [v378 heightAnchor];
                                                    v310 = [v309 constraintEqualToConstant_];

                                                    v311 = *&v258[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_collapseThumbnailsConstraint];
                                                    *&v258[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_collapseThumbnailsConstraint] = v310;
                                                    v312 = v310;

                                                    v313 = v363;
                                                    if (v312)
                                                    {
                                                      [v312 setActive_];

                                                      v314 = [v373 heightAnchor];
                                                      v315 = [v314 constraintEqualToConstant_];

                                                      v316 = *&v258[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_collapseFormFillingBannerConstraint];
                                                      *&v258[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_collapseFormFillingBannerConstraint] = v315;
                                                      v317 = v315;

                                                      if (v317)
                                                      {
                                                        [v317 setActive_];

                                                        v318 = [v313 defaultCenter];
                                                        v319 = v258;
                                                        v320 = sub_2154A12FC();
                                                        if (v320)
                                                        {
                                                          v321 = v320;
                                                          v322 = sub_2154A126C();

                                                          if (v322)
                                                          {
                                                            [v318 addObserver:v319 selector:sel_pdfViewMightHaveZoomed_ name:*MEMORY[0x277CD9450] object:v322];

                                                            v323 = [v313 defaultCenter];
                                                            v324 = v319;
                                                            v325 = sub_2154A169C();
                                                            [v323 addObserver:v324 selector:sel_pdfViewSelectedPageThumbnail_ name:v325 object:*(v380 + v377)];

                                                            v326 = v379;
                                                            v327 = sub_2154A12FC();
                                                            if (v327)
                                                            {
                                                              v328 = v327;
                                                              [v327 layoutIfNeeded];

                                                              v329 = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
                                                              v330 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_doubleTapEater;
                                                              v331 = *&v324[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_doubleTapEater];
                                                              *&v324[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_doubleTapEater] = v329;
                                                              v332 = v329;

                                                              v334 = v367;
                                                              v333 = v368;
                                                              if (v332)
                                                              {
                                                                [v332 setDelegate_];

                                                                v335 = v376;
                                                                if (*&v324[v330])
                                                                {
                                                                  [v326 addGestureRecognizer_];
                                                                  v336 = sub_2154A12FC();
                                                                  if (v336)
                                                                  {
                                                                    v337 = v336;
                                                                    v338 = sub_2154A126C();

                                                                    if (v338)
                                                                    {
                                                                      v339 = [v338 doubleTapGestureRecognizer];

                                                                      if (v339)
                                                                      {
                                                                        v340 = *&v324[v330];
                                                                        if (v340)
                                                                        {
                                                                          v341 = v340;

                                                                          [v339 requireGestureRecognizerToFail_];

                                                                          [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v324 selector:sel_updatePaletteVisibility object:0];
                                                                          [v324 performSelector:sel_updatePaletteVisibility withObject:0 afterDelay:0.0];
                                                                          v342 = [v334 shouldShowInlineFormFillingBanner];
                                                                          v343 = v371;
                                                                          if (v342)
                                                                          {
                                                                            v344 = [v334 didRunPaperFormDetection];
                                                                            v345 = v365;
                                                                            v346 = v372;
                                                                            if (v344)
                                                                            {
                                                                              if ([v334 hasPaperForm])
                                                                              {
                                                                                sub_215301A64(1, 0);
                                                                                v347 = v326;
                                                                                v379 = v364;
                                                                                v348 = v360;
                                                                                v346 = v334;
                                                                                v349 = v333;
                                                                                v343 = v373;
                                                                                v333 = v374;
                                                                                v350 = v378;
                                                                                v351 = v357;
                                                                                v352 = v359;
LABEL_94:

                                                                                (*(v345 + 8))(v375, v366);
                                                                                return;
                                                                              }

                                                                              v347 = v359;
                                                                              v355 = v335;
                                                                              v352 = v360;
                                                                              v348 = v334;
                                                                              v372 = v374;
                                                                            }

                                                                            else
                                                                            {
                                                                              v347 = v359;
                                                                              v355 = v335;
                                                                              v352 = v360;
                                                                              v348 = v334;
                                                                              v372 = v374;
                                                                            }

                                                                            v349 = v378;
                                                                            v350 = v357;
                                                                            v351 = v373;
                                                                            v356 = v370;
                                                                            v370 = v355;
                                                                            v371 = v356;
                                                                            v376 = v369;
                                                                            v369 = v364;
                                                                            goto LABEL_94;
                                                                          }

                                                                          v347 = v359;
                                                                          v353 = v335;
                                                                          v352 = v360;
                                                                          v348 = v334;
                                                                          v346 = v372;
                                                                          v351 = v373;
                                                                          v372 = v374;
                                                                          v349 = v378;
                                                                          v350 = v357;
                                                                          v354 = v370;
                                                                          v370 = v353;
                                                                          v371 = v354;
                                                                          v376 = v369;
                                                                          v369 = v364;
                                                                          v345 = v365;
                                                                          goto LABEL_94;
                                                                        }

                                                                        goto LABEL_163;
                                                                      }

LABEL_162:
                                                                      __break(1u);
LABEL_163:
                                                                      __break(1u);
                                                                      goto LABEL_164;
                                                                    }

LABEL_161:
                                                                    __break(1u);
                                                                    goto LABEL_162;
                                                                  }

LABEL_160:
                                                                  __break(1u);
                                                                  goto LABEL_161;
                                                                }

LABEL_159:
                                                                __break(1u);
                                                                goto LABEL_160;
                                                              }

LABEL_158:
                                                              __break(1u);
                                                              goto LABEL_159;
                                                            }

LABEL_157:
                                                            __break(1u);
                                                            goto LABEL_158;
                                                          }

LABEL_156:
                                                          __break(1u);
                                                          goto LABEL_157;
                                                        }

LABEL_155:
                                                        __break(1u);
                                                        goto LABEL_156;
                                                      }

LABEL_154:
                                                      __break(1u);
                                                      goto LABEL_155;
                                                    }

LABEL_153:
                                                    __break(1u);
                                                    goto LABEL_154;
                                                  }

LABEL_152:
                                                  __break(1u);
                                                  goto LABEL_153;
                                                }

LABEL_151:
                                                __break(1u);
                                                goto LABEL_152;
                                              }

LABEL_150:
                                              __break(1u);
                                              goto LABEL_151;
                                            }

LABEL_149:
                                            __break(1u);
                                            goto LABEL_150;
                                          }

LABEL_148:
                                          __break(1u);
                                          goto LABEL_149;
                                        }

LABEL_147:
                                        __break(1u);
                                        goto LABEL_148;
                                      }

LABEL_146:
                                      __break(1u);
                                      goto LABEL_147;
                                    }

LABEL_145:
                                    __break(1u);
                                    goto LABEL_146;
                                  }

LABEL_144:
                                  __break(1u);
                                  goto LABEL_145;
                                }

LABEL_143:
                                __break(1u);
                                goto LABEL_144;
                              }

LABEL_142:
                              __break(1u);
                              goto LABEL_143;
                            }

LABEL_141:
                            __break(1u);
                            goto LABEL_142;
                          }

LABEL_140:
                          __break(1u);
                          goto LABEL_141;
                        }

LABEL_139:
                        __break(1u);
                        goto LABEL_140;
                      }

LABEL_138:
                      __break(1u);
                      goto LABEL_139;
                    }

LABEL_137:
                    __break(1u);
                    goto LABEL_138;
                  }

LABEL_136:
                  __break(1u);
                  goto LABEL_137;
                }

LABEL_135:
                __break(1u);
                goto LABEL_136;
              }

LABEL_134:
              __break(1u);
              goto LABEL_135;
            }

LABEL_133:
            __break(1u);
            goto LABEL_134;
          }

LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  objc_opt_self();
  v132 = swift_dynamicCastObjCClass();
  if (!v132)
  {
LABEL_50:
    swift_unknownObjectRelease();
    goto LABEL_51;
  }

  v133 = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA5AA00, &unk_2154BEF60);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_2154BDB10;
  *(v134 + 32) = v21;
  *(v134 + 40) = v133;
  v135 = objc_allocWithZone(MEMORY[0x277D368B8]);
  sub_2151A6C9C(0, &qword_281199490, 0x277D82BB8);
  v136 = v21;
  swift_unknownObjectRetain();
  v137 = sub_2154A1F3C();

  v138 = [v135 initWithForwardingTargets_];

  v139 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_scrollViewDelegateMultiplexer;
  *&v136[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_scrollViewDelegateMultiplexer] = v138;
  swift_unknownObjectRelease();
  v140 = sub_2154A12FC();
  if (!v140)
  {
LABEL_164:
    __break(1u);
    goto LABEL_165;
  }

  v141 = v140;
  v142 = sub_2154A126C();

  if (v142)
  {
    v143 = [v142 documentScrollView];

    if (v143)
    {
      v144 = *&v136[v139];
      swift_unknownObjectRetain();
      [v143 setDelegate_];
      swift_unknownObjectRelease();
    }

    goto LABEL_50;
  }

LABEL_165:
  __break(1u);
}

void sub_2153102FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      sub_21530127C(1);
    }
  }
}

void sub_215310370(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_215301A64(0, 1);
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
      swift_beginAccess();
      v7 = *&v5[v6];
      if (v7 && (objc_opt_self(), (v8 = swift_dynamicCastObjCClass()) != 0))
      {
        v9 = v8;
        v10 = v7;
        v11 = [v9 attachment];

        [v11 inlineFormFillingBannerWasDismissedByUser];
      }

      else
      {
        v11 = v3;
        v3 = v5;
      }
    }
  }
}

void sub_215310484(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_2154A148C();
  }
}

BOOL sub_2153104E8()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    v4 = v1;
    while (1)
    {

      v5 = [v4 superview];
      if (!v5)
      {
        return 0;
      }

      v4 = v5;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }
  }

  v3 = v2;
  v4 = v1;
LABEL_7:

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return 0;
  }

  v8 = Strong;
  v9 = v4;
  [v3 safeAreaInsets];
  v11 = v10;
  v13 = v12;
  v14 = [v1 traitCollection];
  [v14 ic_hasCompactWidth];

  [v3 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  [v3 convertRect:0 toView:{UIEdgeInsetsInsetRect(v16, v18, v20, v22, v11, v13)}];
  v24 = v23;
  rect_8 = v25;
  v27 = v26;
  v29 = v28;
  [v8 bounds];
  [v8 convertRect:0 toView:?];
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  v34 = CGRectGetHeight(v39);
  v40.origin.x = v24;
  v40.origin.y = rect_8;
  v40.size.width = v27;
  v40.size.height = v29;
  if (CGRectGetHeight(v40) > v34)
  {

    return 0;
  }

  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MinY = CGRectGetMinY(v41);
  v42.origin.x = v24;
  v42.origin.y = rect_8;
  v42.size.width = v27;
  v42.size.height = v29;
  v37 = CGRectGetMinY(v42);

  return TSUEqualDoubles(MinY, v37);
}

void sub_215310850(uint64_t a1, void *a2)
{
  v3 = v2;
  type metadata accessor for PanEaterGestureRecognizer();
  if (!swift_dynamicCastClass())
  {
    return;
  }

  v5 = sub_2154A12FC();
  if (!v5)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = v5;
  v7 = sub_2154A126C();

  if (!v7)
  {
LABEL_22:
    __break(1u);
    return;
  }

  v8 = [v7 documentScrollView];

  if (v8)
  {
    v9 = [v8 panGestureRecognizer];

    sub_2151A6C9C(0, &qword_27CA59E48, 0x277D75548);
    v10 = a2;
    v11 = sub_2154A291C();

    if (v11)
    {
      v12 = v3;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = v12;
LABEL_12:

        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          [v14 bounds];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;
          [v14 safeAreaInsets];
          [v14 convertRect:0 toView:{UIEdgeInsetsInsetRect(v21, v23, v25, v27, v28, v29)}];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          [v19 bounds];
          [v19 convertRect:0 toView:?];
          y = v48.origin.y;
          width = v48.size.width;
          height = v48.size.height;
          x = v48.origin.x;
          v41 = CGRectGetHeight(v48);
          v47 = v31;
          v49.origin.x = v31;
          v49.origin.y = v33;
          v49.size.width = v35;
          v49.size.height = v37;
          v42 = CGRectGetHeight(v49);
          sub_2153083DC(v43);
          if ((v44 & 1) != 0 && v42 <= v41)
          {
            v50.origin.x = x;
            v50.origin.y = y;
            v50.size.width = width;
            v50.size.height = height;
            MinY = CGRectGetMinY(v50);
            v51.origin.x = v47;
            v51.size.height = v37;
            v51.origin.y = v33;
            v51.size.width = v35;
            if (CGRectGetMinY(v51) >= MinY)
            {
              v52.origin.x = x;
              v52.origin.y = y;
              v52.size.width = width;
              v52.size.height = height;
              CGRectGetMaxY(v52);
              v53.origin.x = v47;
              v53.origin.y = v33;
              v53.size.width = v35;
              v53.size.height = v37;
              CGRectGetMaxY(v53);
            }
          }
        }

        else
        {
        }
      }

      else
      {
        v15 = v12;
        while (1)
        {

          v16 = [v15 superview];
          if (!v16)
          {
            break;
          }

          v15 = v16;
          objc_opt_self();
          v17 = swift_dynamicCastObjCClass();
          if (v17)
          {
            v14 = v17;
            goto LABEL_12;
          }
        }
      }
    }
  }
}

void sub_215310C90(uint64_t a1, uint64_t a2)
{
  v19.receiver = v2;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_willMoveToWindow_, a1);
  v4 = [v2 window];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() sharedToolPickerForWindow_];
    if (v6)
    {
      v7 = v6;
      [v6 removeObserver_];

      v5 = v7;
    }
  }

  v8 = v2;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = v8;
LABEL_10:

    v11 = sub_21542E720();
    if (!v11)
    {
      goto LABEL_14;
    }

    v12 = v11;
    MEMORY[0x28223BE20](v11);
    v18[2] = v8;
    v13 = OBJC_IVAR___ICNestedScrollViewPanInteraction_nestedScrollableViews;
    swift_beginAccess();
    v14 = sub_21531E0E8(sub_215323F14, v18);
    v15 = *&v12[v13];
    if (v15 >> 62)
    {
      v17 = v14;
      v16 = sub_2154A2C8C();
      v14 = v17;
      if (v16 >= v17)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 >= v14)
      {
LABEL_13:
        sub_21532A45C(v14, v16);
        swift_endAccess();

LABEL_14:
        return;
      }
    }

    __break(1u);
    return;
  }

  v9 = v8;
  while (1)
  {

    v10 = [v9 superview];
    if (!v10)
    {
      break;
    }

    v9 = v10;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_10;
    }
  }
}

void sub_215310F28(uint64_t a1, uint64_t a2)
{
  v20.receiver = v2;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, sel_didMoveToWindow);
  v3 = [v2 window];
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
LABEL_8:

      v11 = v8;
      v12 = sub_21542E720();
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v14 = sub_21542E720();
        if (v14)
        {
          v13 = v14;
          [v7 removeInteraction_];
        }

        else
        {
          v15 = objc_allocWithZone(type metadata accessor for NestedScrollViewPanInteraction());
          v16 = v11;
          v13 = sub_21542E9E4(v7);
          [v7 addInteraction_];
        }
      }

      v17 = sub_21542E720();
      if (v17)
      {
        sub_21531E350(v5, v17);
      }

      v18 = [objc_opt_self() sharedToolPickerForWindow_];
      if (v18)
      {
        v19 = v18;
        [v18 addObserver_];
        sub_21531110C();

        v4 = v11;
        v11 = v19;
      }

      v4 = v11;
    }

    else
    {
      v8 = v5;
      while (1)
      {

        v9 = [v8 superview];
        if (!v9)
        {
          break;
        }

        v8 = v9;
        objc_opt_self();
        v10 = swift_dynamicCastObjCClass();
        if (v10)
        {
          v7 = v10;
          goto LABEL_8;
        }
      }
    }
  }
}

void sub_21531110C()
{
  v1 = sub_2154A172C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = OBJC_IVAR___ICPaperDocumentTextAttachmentView_textAttachment;
    v7 = Strong;
    swift_beginAccess();
    v8 = *&v7[v6];
    v9 = v8;

    if (v8)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        [v10 updatePaletteVisibility];
      }
    }
  }

  v11 = [v0 window];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_opt_self() sharedToolPickerForWindow_];
    if (v13)
    {
      v14 = v13;
      v15 = sub_2154A12FC();
      if (v15)
      {
        v16 = v15;
        v17 = [v14 isVisible];
        v18 = MEMORY[0x277CD9580];
        if (!v17)
        {
          v18 = MEMORY[0x277CD9570];
        }

        (*(v2 + 104))(v4, *v18, v1);
        sub_2154A127C();

        v14 = v16;
      }
    }
  }
}

id sub_2153113D8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = v2;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    v7 = v4;
LABEL_7:

    v10 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderConstraint;
    if (!*&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderConstraint])
    {
      result = *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContainer];
      if (!result)
      {
        goto LABEL_20;
      }

      v12 = [result topAnchor];
      v13 = [v6 safeAreaLayoutGuide];
      v14 = [v13 topAnchor];

      v15 = [v12 constraintGreaterThanOrEqualToAnchor_];
      LODWORD(v16) = 1144750080;
      [v15 setPriority_];

      v7 = *&v4[v10];
      *&v4[v10] = v15;
    }
  }

  else
  {
    v7 = v4;
    while (1)
    {

      v8 = [v7 superview];
      if (!v8)
      {
        break;
      }

      v7 = v8;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v6 = v9;
        goto LABEL_7;
      }
    }
  }

  v17 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_pushStickyHeaderAwayConstraint;
  if (!*&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_pushStickyHeaderAwayConstraint])
  {
    v18 = [v4 bottomAnchor];
    result = *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerContainer];
    if (result)
    {
      v19 = [result bottomAnchor];
      v20 = [v18 constraintGreaterThanOrEqualToAnchor:v19 constant:120.0];

      v21 = *&v4[v17];
      *&v4[v17] = v20;

      goto LABEL_14;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

LABEL_14:
  v22 = *&v4[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderConstraint];
  if (v22)
  {
    [v22 setActive_];
  }

  v23 = *&v4[v17];
  if (v23)
  {
    [v23 setActive_];
  }

  v24.receiver = v4;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_updateConstraints);
}

void sub_215311694(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_inLayoutSubviews;
  v2[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_inLayoutSubviews] = 1;
  v28.receiver = v2;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, sel_layoutSubviews);
  v6 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_didStartObservingTextView;
  if ((v2[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_didStartObservingTextView] & 1) == 0)
  {
    v7 = v2;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = v7;
LABEL_8:

      [v9 _addScrollViewScrollObserver_];
      v3[v6] = 1;
    }

    else
    {
      v10 = v7;
      while (1)
      {

        v11 = [v10 superview];
        if (!v11)
        {
          break;
        }

        v10 = v11;
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v9 = v12;
          goto LABEL_8;
        }
      }
    }
  }

  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v3 selector:sel_updatePaletteVisibility object:0];
  [v3 performSelector:sel_updatePaletteVisibility withObject:0 afterDelay:0.0];
  [v3 bounds];
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = 0.0;
  v31.size.height = 0.0;
  if (CGRectEqualToRect(v29, v31))
  {
    goto LABEL_16;
  }

  v13 = *&v3[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_inlineView];
  v14 = sub_2154A12FC();
  if (!v14)
  {
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = sub_2154A126C();

  if (!v16)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v16 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = 0.0;
  v32.size.height = 0.0;
  v30.origin.x = v18;
  v30.origin.y = v20;
  v30.size.width = v22;
  v30.size.height = v24;
  if (!CGRectEqualToRect(v30, v32))
  {
LABEL_16:
    sub_215311914();
    v3[v5] = 0;
    return;
  }

  [v13 layoutIfNeeded];
  v25 = sub_2154A12FC();
  if (!v25)
  {
    goto LABEL_19;
  }

  v26 = v25;
  v27 = sub_2154A126C();

  if (v27)
  {
    [v27 layoutDocumentView];

    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

void sub_215311914()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong[OBJC_IVAR___ICPaperDocumentTextAttachmentView_displayMode], Strong, v2))
  {
    v3 = v0;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
      v6 = v3;
      while (1)
      {

        v7 = [v6 superview];
        if (!v7)
        {
          goto LABEL_35;
        }

        v6 = v7;
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v5 = v8;
          goto LABEL_9;
        }
      }
    }

    v5 = v4;
    v6 = v3;
LABEL_9:

    [v5 textContainerInset];
    v10 = v9;
    v11 = [v5 textContainer];
    [v11 lineFragmentPadding];
    v13 = v12;

    v14 = v10 + v13;
    [v5 textContainerInset];
    v16 = v15;
    v17 = [v5 textContainer];
    [v17 lineFragmentPadding];
    v19 = v18;

    v20 = v16 + v19;
    v21 = v6;
    [v5 bounds];
    v22 = 0.0;
    [v3 convertRect:v5 fromCoordinateSpace:{UIEdgeInsetsInsetRect(v23, v24, v25, v26, 0.0, v14)}];
    MinX = CGRectGetMinX(v69);
    [v3 bounds];
    v28 = MinX - CGRectGetMinX(v70);
    if (v28 > 0.0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0.0;
    }

    [v3 bounds];
    Width = CGRectGetWidth(v71);
    [v5 bounds];
    v31 = CGRectGetWidth(v72);
    v32 = fmax(v29, 20.0);
    if (Width >= v31)
    {
      v33 = v14;
    }

    else
    {
      v20 = 20.0;
      v33 = v32;
    }

    [v3 safeAreaInsets];
    if (v33 - v34 < 0.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v33 - v34;
    }

    [v3 safeAreaInsets];
    if (v20 - v36 >= 0.0)
    {
      v22 = v20 - v36;
    }

    v37 = sub_2152EE7A0();
    if (v37)
    {
      v38 = v37;
      v39 = [v37 collectionViewLayout];
      objc_opt_self();
      v40 = swift_dynamicCastObjCClass();
      if (v40)
      {
        [v40 setSectionInset_];
      }

      v41 = v38;
      [v41 setContentInset_];
      [v41 setScrollIndicatorInsets_];
    }

    v42 = [v3 traitCollection];
    v43 = [v42 horizontalSizeClass];

    if (v43 == 2 && sub_2152FC9FC())
    {
      [v5 safeAreaInsets];
      v45 = v44;
    }

    else
    {

      if (Width >= v31)
      {
        v45 = 10.0;
      }

      else
      {
        v45 = 20.0;
      }
    }

    v46 = sub_2154A12FC();
    if (v46)
    {
      v47 = v46;
      v48 = sub_2154A126C();

      if (v48)
      {
        v49 = [v48 documentScrollView];

        if (v49)
        {
          [v49 setContentInset_];
        }

        [v3 setLayoutMargins_];

LABEL_35:
        v50 = &v3[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_lastLayoutBounds];
        Height = CGRectGetHeight(*&v3[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_lastLayoutBounds]);
        [v3 bounds];
        if (Height != CGRectGetHeight(v73))
        {
          sub_2152FE2F0(1);
          [v3 bounds];
          *v50 = v52;
          *(v50 + 1) = v53;
          *(v50 + 2) = v54;
          *(v50 + 3) = v55;
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

  [v0 setLayoutMargins_];
  v56 = sub_2154A12FC();
  if (!v56)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v57 = v56;
  v58 = sub_2154A126C();

  if (!v58)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v59 = [v58 documentScrollView];

  if (v59)
  {
    [v59 setContentInset_];
  }

  sub_2152FE2F0(1);
  v60 = sub_2154A12FC();
  if (!v60)
  {
    goto LABEL_53;
  }

  v61 = v60;
  v67 = sub_2154A126C();

  if (!v67)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v62 = sub_2154A12FC();
  if (!v62)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v63 = v62;
  v64 = sub_2154A126C();

  if (!v64)
  {
LABEL_56:
    __break(1u);
    return;
  }

  [v64 minScaleFactor];
  v66 = v65;

  [v67 setMaxScaleFactor_];
}

void sub_215311F6C()
{
  v1 = v0;
  v2 = sub_2152FC9FC();
  if (!v2)
  {
    goto LABEL_9;
  }

  v4 = sub_2154A12FC();
  if (!v4)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = v4;
  v6 = sub_2154A126C();

  if (!v6)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  [v6 scaleFactor];
  v8 = v7;

  v9 = sub_2154A12FC();
  if (!v9)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v10 = v9;
  v11 = sub_2154A126C();

  if (!v11)
  {
LABEL_33:
    __break(1u);
    return;
  }

  [v11 minScaleFactor];
  v13 = v12;

  v3 = v13 * 1.1;
  if (v13 * 1.1 >= v8)
  {
LABEL_9:
    v17 = v1[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderEnabled];
    v1[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderEnabled] = 0;
    if ((v17 & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v14 = [objc_opt_self() rootSettings];
  v15 = [v14 stickyHeaderWhenZoomed];

  v16 = v1[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderEnabled];
  v1[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_stickyHeaderEnabled] = v15;
  if (v15 != v16)
  {
LABEL_10:
    [v1 setNeedsUpdateConstraints];
  }

LABEL_11:
  v18 = sub_2154A12FC();
  if (!v18)
  {
    __break(1u);
    goto LABEL_25;
  }

  v19 = v18;
  v20 = sub_2154A126C();

  if (!v20)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v54 = [v20 documentView];

  if (!v54)
  {
    return;
  }

  [v54 bounds];
  [v1 convertRect:v54 fromCoordinateSpace:?];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_2154A12FC();
  if (!v29)
  {
    goto LABEL_26;
  }

  v30 = v29;
  v31 = sub_2154A126C();

  if (!v31)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v31 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = sub_2154A12FC();
  if (!v40)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v41 = v40;
  v42 = sub_2154A126C();

  if (!v42)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  [v1 convertRect:v42 fromCoordinateSpace:{v33, v35, v37, v39}];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v56.origin.x = v44;
  v56.origin.y = v46;
  v56.size.width = v48;
  v56.size.height = v50;
  MinY = CGRectGetMinY(v56);
  v57.origin.x = v22;
  v57.origin.y = v24;
  v57.size.width = v26;
  v57.size.height = v28;
  v52 = MinY - CGRectGetMinY(v57);
  v53 = 0.0;
  if (v2 && v52 > 0.0)
  {
    v53 = fmin(v52 / 10.0, 1.0);
  }

  *&v1[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_headerShadowOpacity] = v53;
  sub_21530D83C();
}

void sub_2153122DC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2154A12FC();
  if (!v3)
  {
    __break(1u);
    goto LABEL_37;
  }

  v4 = v3;
  v5 = sub_2154A126C();

  if (!v5)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v50 = [v5 documentView];

  if (!v50)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_lastPDFScaleFactorForInterpageSpacingUpdate;
  v7 = *(v2 + OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_lastPDFScaleFactorForInterpageSpacingUpdate);
  v8 = sub_2154A12FC();
  if (!v8)
  {
    goto LABEL_38;
  }

  v9 = v8;
  v10 = sub_2154A126C();

  if (!v10)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  [v10 scaleFactor];
  v12 = v11;

  if (TSUDoublesAlmostEqual(v7, v12))
  {
    goto LABEL_30;
  }

  v13 = sub_2154A12FC();
  if (!v13)
  {
    goto LABEL_40;
  }

  v14 = v13;
  v15 = sub_2154A126C();

  if (!v15)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  [v15 scaleFactor];
  v17 = v16;

  *(v2 + v6) = v17;
  v18 = sub_2154A12FC();
  if (!v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v19 = v18;
  v20 = sub_2154A126C();

  if (!v20)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v21 = [v20 currentPage];

  if (v21)
  {
    v22 = sub_2154A12FC();
    if (!v22)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v23 = v22;
    v24 = sub_2154A126C();

    if (!v24)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    [v21 boundsForBox_];
    [v24 convertPoint:v21 fromPage:?];
    v26 = v25;

    v27 = v21;
  }

  else
  {
    v27 = 0;
    v26 = 0.0;
  }

  v28 = sub_2154A12FC();
  if (!v28)
  {
    goto LABEL_44;
  }

  v29 = v28;
  v30 = sub_2154A126C();

  if (!v30)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v30 layoutDocumentView];

  [v50 convertRect:v2 fromCoordinateSpace:{0.0, 0.0, 10.0, 10.0}];
  Width = CGRectGetWidth(v52);
  v32 = sub_2154A12FC();
  if (!v32)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v33 = v32;
  v34 = sub_2154A126C();

  if (!v34)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  [v34 setPageBreakMargins_];

  v35 = sub_2154A12FC();
  if (!v35)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v36 = v35;
  v37 = sub_2154A126C();

  if (!v37)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  [v37 setDocumentMargins_];

  if (v27)
  {
    v38 = sub_2154A12FC();
    if (v38)
    {
      v39 = v38;
      v40 = sub_2154A126C();

      if (v40)
      {
        [v27 boundsForBox_];
        [v40 convertPoint:v27 fromPage:?];
        v42 = v41;

        v43 = sub_2154A12FC();
        if (v43)
        {
          v44 = v43;
          v45 = sub_2154A126C();

          if (v45)
          {
            v46 = [v45 documentScrollView];

            if (v46)
            {
              [v46 contentOffset];
              [v46 setContentOffset_];

              v48 = v21;
              v21 = v46;
            }

            else
            {
              v48 = v50;
            }

            v49 = v21;
            goto LABEL_33;
          }

LABEL_55:
          __break(1u);
          return;
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

LABEL_30:
  v49 = v50;
LABEL_33:
}

void sub_2153127FC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData);
    v2 = Strong;
    v3 = v1;

    if (v1)
    {
      v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity] = 1;
      v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasPagination] = 1;
      v3[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasGestures] = 1;
    }
  }

  v4 = sub_2154A12FC();
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v7 = sub_2154A126C();

  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v6 = objc_opt_self();
  [v6 cancelPreviousPerformRequestsWithTarget:v7 selector:sub_21549E85C() object:0];
}

void sub_215312A0C(void *a1)
{
  if (v1[OBJC_IVAR____TtC11NotesEditorP33_B1771FC5B77E2D60FA249C310C92C62226PaperDocumentContainerView_inLayoutSubviews])
  {
    return;
  }

  v3 = v1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
LABEL_9:

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      v58 = v6;
LABEL_41:

      return;
    }

    v70 = Strong;
    if (!sub_2152FC9FC())
    {

LABEL_40:
      v58 = v70;
      goto LABEL_41;
    }

    [v70 setNeedsLayout];
    v10 = sub_2154A12FC();
    if (v10)
    {
      v11 = v10;
      v12 = sub_2154A126C();

      if (v12)
      {
        v13 = [v12 documentView];

        if (v13)
        {
          [v13 bounds];
          [v13 convertRect:v5 toCoordinateSpace:?];
          v61 = v15;
          v63 = v14;
          v17 = v16;
          v60 = v18;
          [a1 bounds];
          [a1 convertRect:v5 toCoordinateSpace:?];
          v20 = v19;
          v22 = v21;
          v24 = v23;
          v26 = v25;
          rect = v25;
          [v70 bounds];
          [v70 convertRect:v5 toCoordinateSpace:?];
          v67 = v28;
          v68 = v27;
          v65 = v30;
          v66 = v29;
          v72.origin.x = v20;
          v72.origin.y = v22;
          v72.size.width = v24;
          v72.size.height = v26;
          MinY = CGRectGetMinY(v72);
          v73.origin.x = v63;
          v73.origin.y = v61;
          v73.size.width = v17;
          v73.size.height = v60;
          v32 = MinY - CGRectGetMinY(v73);
          if (v32 < 0.0)
          {
            v32 = 0.0;
          }

          v69 = v32;
          v74.origin.x = v63;
          v74.origin.y = v61;
          v74.size.width = v17;
          v74.size.height = v60;
          MaxY = CGRectGetMaxY(v74);
          [a1 adjustedContentInset];
          v62 = v33;
          v75.origin.x = v20;
          v75.origin.y = v22;
          v75.size.width = v24;
          v75.size.height = rect;
          v34 = CGRectGetMaxY(v75);
          [a1 adjustedContentInset];
          v36 = -v35;
          [a1 contentSize];
          v38 = v37;
          [a1 adjustedContentInset];
          v40 = v39;
          [a1 bounds];
          Height = CGRectGetHeight(v76);
          v42 = v6;
          [v5 contentOffset];
          v44 = v43;
          v77.origin.y = v67;
          v77.origin.x = v68;
          v77.size.height = v65;
          v77.size.width = v66;
          v45 = CGRectGetMinY(v77);
          [v5 safeAreaInsets];
          v47 = v45 - v46;
          v48 = TSUDoublesAlmostEqual(v44, v47);
          [a1 contentOffset];
          if (v69 > 0.0 && v49 > v36 && v44 < v47)
          {
            goto LABEL_33;
          }

          v52 = MaxY + v62 - v34;
          if (v52 < 0.0)
          {
            v52 = 0.0;
          }

          v53 = v52 > 0.0 && v49 < v38 + v40 - Height;
          if (v53 && v47 < v44)
          {
LABEL_33:
            if (!v48)
            {
              [a1 contentOffset];
              [a1 setContentOffset_];
              [v5 contentOffset];
              [v5 setContentOffset_];
            }
          }

          v55 = [a1 isZooming];
          if (v55)
          {
            v56 = *&v70[OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData];
            v57 = v56;

            if (!v56)
            {
              return;
            }

            v57[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity] = 1;
            v57[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasPinchZoom] = 1;
            v57[OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasGestures] = 1;
            v58 = v57;
            goto LABEL_41;
          }

          goto LABEL_40;
        }

LABEL_46:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  v6 = v3;
  while (1)
  {

    v7 = [v6 superview];
    if (!v7)
    {
      break;
    }

    v6 = v7;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v5 = v8;
      goto LABEL_9;
    }
  }
}

void sub_215312F24(void *a1, double *a2, double a3, double a4)
{
  v8 = sub_2154A12FC();
  if (!v8)
  {
    __break(1u);
    goto LABEL_26;
  }

  v9 = v8;
  v10 = sub_2154A126C();

  if (!v10)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = [v10 documentScrollView];

  if (!v11)
  {
    return;
  }

  sub_2151A6C9C(0, &qword_27CA59E50, 0x277D759D8);
  v12 = a1;
  v13 = sub_2154A291C();

  if ((v13 & 1) == 0)
  {
    return;
  }

  [v12 zoomScale];
  v15 = v14;
  [v12 minimumZoomScale];
  if (v15 - v16 >= 0.1)
  {
    return;
  }

  v17 = sub_2154A12FC();
  if (!v17)
  {
    goto LABEL_27;
  }

  v18 = v17;
  v19 = sub_2154A126C();

  if (!v19)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v60 = [v19 currentPage];

  if (!v60)
  {
    return;
  }

  v20 = sub_2154A12FC();
  if (!v20)
  {
    goto LABEL_29;
  }

  v21 = v20;
  v22 = sub_2154A126C();

  if (!v22)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  [v60 boundsForBox_];
  [v22 convertRect:v60 fromPage:?];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = sub_2154A12FC();
  if (!v31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = v31;
  v33 = sub_2154A126C();

  if (!v33)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  [v12 convertRect:v33 fromCoordinateSpace:{v24, v26, v28, v30}];
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;

  v62.origin.x = v35;
  v62.origin.y = v37;
  v62.size.width = v39;
  v62.size.height = v41;
  v42 = floor(CGRectGetWidth(v62));
  [v12 bounds];
  if (v42 >= floor(CGRectGetWidth(v63)))
  {
    goto LABEL_19;
  }

  v64.origin.x = v35;
  v64.origin.y = v37;
  v64.size.width = v39;
  v64.size.height = v41;
  Width = CGRectGetWidth(v64);
  v44 = sub_2154A12FC();
  if (!v44)
  {
    goto LABEL_33;
  }

  v45 = v44;
  v46 = sub_2154A126C();

  if (!v46)
  {
LABEL_34:
    __break(1u);
    return;
  }

  [v46 bounds];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  v65.origin.x = v48;
  v65.origin.y = v50;
  v65.size.width = v52;
  v65.size.height = v54;
  if (CGRectGetWidth(v65) * 0.6 <= Width)
  {
    sub_2153132B4(v55, a3);
    if (v59)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  sub_215313860(v55, a3, a4, *a2, a2[1]);
  if ((v58 & 1) == 0)
  {
LABEL_18:
    *a2 = v56;
    *(a2 + 1) = v57;
  }

LABEL_19:
}

void sub_2153132B4(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = sub_2154A12FC();
  if (!v5)
  {
    goto LABEL_49;
  }

  v6 = v5;
  v7 = sub_2154A126C();

  if (!v7)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v8 = [v7 document];

  if (!v8)
  {
    return;
  }

  v9 = sub_2154A12FC();
  if (!v9)
  {
    goto LABEL_51;
  }

  v10 = v9;
  v11 = sub_2154A126C();

  if (!v11)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v12 = [v11 documentScrollView];

  if (!v12)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v12 contentOffset];
  v14 = v13;
  v16 = v15;

  v17 = sub_2154A12FC();
  if (!v17)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v18 = v17;
  v19 = sub_2154A126C();

  if (!v19)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v20 = [v19 documentScrollView];

  if (!v20)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  [v20 contentInset];
  v22 = v21;

  v23 = sub_2154A12FC();
  if (!v23)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v24 = v23;
  v25 = sub_2154A126C();

  if (!v25)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v26 = sub_2154A12FC();
  if (!v26)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v27 = v26;
  v28 = sub_2154A126C();

  if (!v28)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v29 = [v28 documentScrollView];

  if (!v29)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  [v25 convertPoint:v29 fromCoordinateSpace:{v14 + v22, v16}];
  v31 = v30;
  v33 = v32;

  v34 = sub_2154A12FC();
  if (!v34)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v35 = v34;
  v36 = sub_2154A126C();

  if (!v36)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v37 = [v36 pageForPoint:1 nearest:{v31, v33}];

  if (!v37)
  {

    return;
  }

  [v37 boundsForBox_];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = sub_2154A12FC();
  if (!v46)
  {
    goto LABEL_64;
  }

  v47 = v46;
  v48 = sub_2154A126C();

  if (!v48)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  [v48 convertRect:v37 fromPage:{v39, v41, v43, v45}];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  v57 = [v8 indexForPage_];
  v94.origin.x = v50;
  v94.origin.y = v52;
  v94.size.width = v54;
  v94.size.height = v56;
  MidX = CGRectGetMidX(v94);
  [v3 bounds];
  if (MidX < CGRectGetMinX(v95) && __OFADD__(v57++, 1))
  {
    __break(1u);
    goto LABEL_47;
  }

  if (a2 != 0.0)
  {
    if (a2 >= 0.0)
    {
      v60 = [v8 pageCount];
      if (!__OFADD__(v57, 1))
      {
        if ((v57 + 1) >= v60)
        {
          v57 = v60;
        }

        else
        {
          ++v57;
        }

        goto LABEL_32;
      }

      goto LABEL_48;
    }

    if (!__OFSUB__(v57, 1))
    {
      v57 = ((v57 - 1) & ~((v57 - 1) >> 63));
      goto LABEL_32;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  v61 = [v8 pageAtIndex_];
  if (v61)
  {
    v62 = v61;
    [v61 boundsForBox_];
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v71 = sub_2154A12FC();
    if (v71)
    {
      v72 = v71;
      v73 = sub_2154A126C();

      if (v73)
      {
        [v73 convertRect:v62 fromPage:{v64, v66, v68, v70}];
        v75 = v74;
        v77 = v76;
        v79 = v78;
        v81 = v80;

        v96.origin.x = v75;
        v96.origin.y = v77;
        v96.size.width = v79;
        v96.size.height = v81;
        MinX = CGRectGetMinX(v96);
        v83 = sub_2154A12FC();
        if (v83)
        {
          v84 = v83;
          v85 = sub_2154A126C();

          if (v85)
          {
            v86 = [v85 documentScrollView];

            if (v86)
            {
              v87 = sub_2154A12FC();
              if (v87)
              {
                v88 = v87;
                v89 = sub_2154A126C();

                if (v89)
                {
                  [v86 convertPoint:v89 fromCoordinateSpace:{MinX, v33}];

                  v90 = sub_2154A12FC();
                  if (v90)
                  {
                    v91 = v90;
                    v92 = sub_2154A126C();

                    if (v92)
                    {
                      v93 = [v92 documentScrollView];

                      if (v93)
                      {
                        [v93 contentInset];

                        return;
                      }

                      goto LABEL_75;
                    }

LABEL_74:
                    __break(1u);
LABEL_75:
                    __break(1u);
                    return;
                  }

LABEL_73:
                  __break(1u);
                  goto LABEL_74;
                }

LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

LABEL_71:
              __break(1u);
              goto LABEL_72;
            }

LABEL_70:
            __break(1u);
            goto LABEL_71;
          }

LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

LABEL_66:
    __break(1u);
    goto LABEL_67;
  }
}

void sub_215313860(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = sub_2154A12FC();
  if (!v8)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v9 = v8;
  v10 = sub_2154A126C();

  if (!v10)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v11 = [v10 document];

  if (v11)
  {
    v12 = sub_2154A12FC();
    if (!v12)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v13 = v12;
    v14 = sub_2154A126C();

    if (!v14)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v15 = [v14 documentScrollView];

    if (!v15)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    [v15 contentInset];
    v17 = v16;

    v18 = sub_2154A12FC();
    if (!v18)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v19 = v18;
    v20 = sub_2154A126C();

    if (!v20)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v21 = sub_2154A12FC();
    if (!v21)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v22 = v21;
    v23 = sub_2154A126C();

    if (!v23)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v24 = [v23 documentScrollView];

    if (!v24)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    [v20 convertPoint:v24 fromCoordinateSpace:{v17 + a4, a5}];
    v26 = v25;
    v28 = v27;

    v29 = sub_2154A12FC();
    if (!v29)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v30 = v29;
    v31 = sub_2154A126C();

    if (!v31)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v32 = [v31 pageForPoint:1 nearest:{v26, v28}];

    if (v32)
    {
      [v32 boundsForBox_];
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v41 = sub_2154A12FC();
      if (!v41)
      {
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v42 = v41;
      v43 = sub_2154A126C();

      if (!v43)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      [v43 convertRect:v32 fromPage:{v34, v36, v38, v40}];
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v51 = v50;

      if (a2 == 0.0)
      {
        v80.origin.x = v45;
        v80.origin.y = v47;
        v80.size.width = v49;
        v80.size.height = v51;
        if (v26 < CGRectGetMidX(v80))
        {
LABEL_19:
          v81.origin.x = v45;
          v81.origin.y = v47;
          v81.size.width = v49;
          v81.size.height = v51;
          MinX = CGRectGetMinX(v81);
          goto LABEL_30;
        }
      }

      else if (a2 < 0.0)
      {
        goto LABEL_19;
      }

      v53 = [v11 indexForPage_];
      v54 = v53 + 1;
      if (!__OFADD__(v53, 1))
      {
        if (v54 < [v11 pageCount])
        {
          v55 = [v11 pageAtIndex_];
          if (v55)
          {
            v56 = v55;
            v57 = sub_2154A12FC();
            if (!v57)
            {
LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

            v58 = v57;
            v59 = sub_2154A126C();

            if (!v59)
            {
LABEL_64:
              __break(1u);
              return;
            }

            [v56 boundsForBox_];
            [v59 convertRect:v56 fromPage:?];
            v61 = v60;
            v63 = v62;
            v65 = v64;
            v67 = v66;

            v82.origin.x = v61;
            v82.origin.y = v63;
            v82.size.width = v65;
            v82.size.height = v67;
            v68 = CGRectGetMinX(v82);

LABEL_31:
            v69 = sub_2154A12FC();
            if (v69)
            {
              v70 = v69;
              v71 = sub_2154A126C();

              if (v71)
              {
                v72 = [v71 documentScrollView];

                if (v72)
                {
                  v73 = sub_2154A12FC();
                  if (v73)
                  {
                    v74 = v73;
                    v75 = sub_2154A126C();

                    if (v75)
                    {
                      [v72 convertPoint:v75 fromCoordinateSpace:{v68, v28}];

                      v76 = sub_2154A12FC();
                      if (v76)
                      {
                        v77 = v76;
                        v78 = sub_2154A126C();

                        if (v78)
                        {
                          v79 = [v78 documentScrollView];

                          if (v79)
                          {
                            [v79 contentInset];

                            return;
                          }

                          goto LABEL_62;
                        }

LABEL_61:
                        __break(1u);
LABEL_62:
                        __break(1u);
                        goto LABEL_63;
                      }

LABEL_60:
                      __break(1u);
                      goto LABEL_61;
                    }

LABEL_59:
                    __break(1u);
                    goto LABEL_60;
                  }

LABEL_58:
                  __break(1u);
                  goto LABEL_59;
                }

LABEL_57:
                __break(1u);
                goto LABEL_58;
              }

LABEL_56:
              __break(1u);
              goto LABEL_57;
            }

LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

        v83.origin.x = v45;
        v83.origin.y = v47;
        v83.size.width = v49;
        v83.size.height = v51;
        MinX = CGRectGetMaxX(v83);
LABEL_30:
        v68 = MinX;
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_41;
    }
  }
}

void sub_215313E04(void *a1)
{
  v2 = v1;
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v4 = [objc_opt_self() rootSettings];
      v5 = [v4 zoomOutOnScroll];

      if (!v5)
      {
        return;
      }

      v6 = sub_2154A12FC();
      if (v6)
      {
        v7 = v6;
        v8 = sub_2154A126C();

        if (v8)
        {
          v36 = [v8 documentScrollView];

          if (!v36)
          {
            return;
          }

          v9 = sub_2154A12FC();
          if (v9)
          {
            v10 = v9;
            v11 = sub_2154A126C();

            if (v11)
            {
              [v11 minScaleFactor];
              v13 = v12;

              [v36 setZoomScale:1 animated:v13];
              v14 = v36;
              goto LABEL_35;
            }

LABEL_45:
            __break(1u);
            return;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  v15 = sub_2154A12FC();
  if (!v15)
  {
    __break(1u);
    goto LABEL_40;
  }

  v16 = v15;
  v17 = sub_2154A126C();

  if (!v17)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v37 = [v17 documentScrollView];

  v14 = v37;
  if (v37)
  {
    if (!a1)
    {
      goto LABEL_35;
    }

    sub_2151A6C9C(0, &qword_27CA59E50, 0x277D759D8);
    v18 = a1;
    v19 = sub_2154A291C();

    if ((v19 & 1) == 0)
    {
      return;
    }
  }

  else if (a1)
  {
    return;
  }

  v20 = v2;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = v20;
LABEL_23:

    v26 = [v22 findInteraction];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 isFindNavigatorVisible];

      if (v28)
      {
        v29 = v20;
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
LABEL_28:
          v32 = v30;

          [v32 setNeedsLayout];
        }

        else
        {
          while (1)
          {

            v31 = [v29 superview];
            if (!v31)
            {
              break;
            }

            v29 = v31;
            objc_opt_self();
            v30 = swift_dynamicCastObjCClass();
            if (v30)
            {
              goto LABEL_28;
            }
          }
        }
      }
    }
  }

  else
  {
    v23 = v20;
    while (1)
    {

      v24 = [v23 superview];
      if (!v24)
      {
        break;
      }

      v23 = v24;
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v22 = v25;
        goto LABEL_23;
      }
    }
  }

  sub_215311F6C();
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v20 selector:sel_updatePaletteVisibility object:0];
  [v20 performSelector:sel_updatePaletteVisibility withObject:0 afterDelay:0.0];
  if (!a1)
  {
    goto LABEL_41;
  }

  if (![a1 isDragging])
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = *(Strong + OBJC_IVAR___ICPaperDocumentTextAttachmentView_engagementData);
  v35 = Strong;
  v38 = v34;

  v14 = v38;
  if (!v34)
  {
    return;
  }

  *(v38 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasActivity) = 1;
  *(v38 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasScroll) = 1;
  *(v38 + OBJC_IVAR____TtC11NotesEditor27PaperDocumentEngagementData_hasGestures) = 1;
LABEL_35:
}

void sub_215314598(void (*a1)(void))
{
  v1 = sub_2154A12FC();
  if (!v1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_2154A126C();

  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = [v3 documentScrollView];

  if (!v4)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v5 = [v4 window];

  if (v5)
  {

    a1();
  }
}

void sub_215314698()
{
  v1 = v0;
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
LABEL_7:

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = swift_unknownObjectWeakLoadStrong();
      if (v9)
      {
        v10 = v9;
        [v9 bounds];
        v12 = v11;
        v14 = v13;
        v16 = v15;
        v18 = v17;

        [v8 convertRect:v3 toCoordinateSpace:{v12, v14, v16, v18}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v4 = v1;
    while (1)
    {

      v5 = [v4 superview];
      if (!v5)
      {
        break;
      }

      v4 = v5;
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v3 = v6;
        goto LABEL_7;
      }
    }
  }
}

void sub_2153148B8(uint64_t a1, double a2, double a3)
{
  v5 = sub_2154A12FC();
  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  v7 = sub_2154A126C();

  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = [v7 documentScrollView];

  if (!v8)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v8 setContentOffset_];
}