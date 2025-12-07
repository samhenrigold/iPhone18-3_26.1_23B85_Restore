void sub_190959724()
{
  v1 = [v0 containerView];
  v2 = [v0 titleLabel];
  [v1 addSubview_];

  v3 = [v0 containerView];
  v4 = [v0 toggleButton];
  [v3 addSubview_];

  v5 = [v0 &selRef_timeIntervalSince1970 + 2];
  LODWORD(v6) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v6];

  v7 = [v0 &selRef_timeIntervalSince1970 + 2];
  LODWORD(v8) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];

  v50 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_190DDA050;
  v10 = [v0 containerView];
  v11 = [v10 leadingAnchor];

  v12 = [v0 titleLabel];
  v13 = [v12 &selRef_keyTransparencyDetailsStatusCellDidRequestVerification_ + 1];

  v14 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  v15 = [v0 containerView];
  v16 = [v15 trailingAnchor];

  v17 = [v0 titleLabel];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v9 + 40) = v19;
  v20 = [v0 containerView];
  v21 = [v20 topAnchor];

  v22 = [v0 titleLabel];
  v23 = [v22 &selRef_tipKitLayoutSectionForEnvironment_];

  v24 = [v21 constraintEqualToAnchor_];
  *(v9 + 48) = v24;
  v25 = [v0 containerView];
  v26 = [v25 centerXAnchor];

  v27 = [v0 toggleButton];
  v28 = [v27 centerXAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v9 + 56) = v29;
  v30 = [v0 containerView];
  v31 = [v30 leadingAnchor];

  v32 = [v0 toggleButton];
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintLessThanOrEqualToAnchor_];
  *(v9 + 64) = v34;
  v35 = [v0 containerView];
  v36 = [v35 trailingAnchor];

  v37 = [v0 toggleButton];
  v38 = [v37 trailingAnchor];

  v39 = [v36 constraintGreaterThanOrEqualToAnchor_];
  *(v9 + 72) = v39;
  v40 = [v0 containerView];
  v41 = [v40 bottomAnchor];

  v42 = [v0 toggleButton];
  v43 = [v42 bottomAnchor];

  v44 = [v41 &selRef_conversationListPinnedConversationPreviewFontSizeOverrideStandard + 5];
  *(v9 + 80) = v44;
  sub_1902188FC(0, &qword_1EAD45040, 0x1E696ACD8);
  v45 = sub_190D57160();

  [v50 activateConstraints_];

  v46 = [v0 toggleButton];
  v47 = [v46 topAnchor];

  v48 = [v0 titleLabel];
  v49 = [v48 bottomAnchor];

  v51 = [v47 &selRef_conversationListPinnedConversationPreviewFontSizeOverrideStandard + 5];
  [v51 setActive_];
  [v0 setTitleToButtonVerticalConstraint_];
  [v0 updateTitleToButtonVerticalConstraint];
}

id CKAutomaticTranslationIndicatorCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

char *CKAutomaticTranslationIndicatorCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_getObjectType();
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR___CKAutomaticTranslationIndicatorCell_containerView;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *&v4[OBJC_IVAR___CKAutomaticTranslationIndicatorCell_progressIndicator] = 0;
  *&v4[OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleToButtonVerticalConstraint] = 0;
  v4[OBJC_IVAR___CKAutomaticTranslationIndicatorCell_displayState] = 4;
  *&v4[OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleAttributedString] = 0;
  *&v4[OBJC_IVAR___CKAutomaticTranslationIndicatorCell_buttonAttributedString] = 0;
  *&v4[OBJC_IVAR___CKAutomaticTranslationIndicatorCell_languageDownloadProgress] = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [ObjCClassFromMetadata translationTitleLabel];
  *&v4[OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleLabel] = v11;
  v12 = [ObjCClassFromMetadata showHideButton];
  *&v4[OBJC_IVAR___CKAutomaticTranslationIndicatorCell_toggleButton] = v12;
  v4[OBJC_IVAR___CKAutomaticTranslationIndicatorCell_buttonPresentsMenu] = 0;
  v19.receiver = v4;
  v19.super_class = CKAutomaticTranslationIndicatorCell;
  v13 = v12;
  v14 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = [v14 contentView];
  [v15 addSubview_];

  sub_19095C080();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1D90;
  *(inited + 32) = sub_190D53450();
  sub_1908A223C(inited);
  v17 = swift_setDeallocating();
  type metadata accessor for CKAutomaticTranslationIndicatorCell(v17);
  sub_190D57CE0();

  swift_unknownObjectRelease();

  return v14;
}

id sub_19095A0AC(void *a1)
{
  [a1 updateContentConstraints];

  return [a1 updateTitleToButtonVerticalConstraint];
}

id CKAutomaticTranslationIndicatorCell.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

uint64_t sub_19095A18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a4;
  sub_190D572A0();
  v4[19] = sub_190D57290();
  v6 = sub_190D57240();
  v4[20] = v6;
  v4[21] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19095A224, v6, v5);
}

uint64_t sub_19095A224()
{
  v1 = [*(v0 + 144) buttonPresentsMenu];
  v2 = *(v0 + 144);
  if (v1)
  {
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_19095A3D8;
    v3 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930, &qword_190DD97C8);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_19088DB28;
    *(v0 + 104) = &block_descriptor_43;
    *(v0 + 112) = v3;
    [v2 addButtonMenuWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    [v2 removeButtonMenu];
    v4 = *(v0 + 144);
    v5 = [v4 toggleButton];
    [v5 setShowsMenuAsPrimaryAction_];

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_19095A3D8()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_19095A4E0, v2, v1);
}

uint64_t sub_19095A4E0()
{

  v1 = *(v0 + 144);
  v2 = [v1 toggleButton];
  [v2 setShowsMenuAsPrimaryAction_];

  v3 = *(v0 + 8);

  return v3();
}

void sub_19095A6B8()
{
  v1 = v0;
  [v0 languageDownloadProgress];
  if (v2 <= 0.0)
  {
    if ([v0 shouldShowToggleButton] && (objc_msgSend(v0, sel_shouldShowTitleLabel) & 1) != 0)
    {
      v10 = 0;
    }

    else if ([v0 shouldShowToggleButton])
    {
      v10 = 2;
    }

    else if ([v0 shouldShowTitleLabel])
    {
      v10 = 1;
    }

    else
    {
      v10 = 4;
    }
  }

  else
  {
    v3 = [v0 progressIndicator];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for CKDownloadProgressView();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        [v1 languageDownloadProgress];
        *(*(v6 + OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_circularProgressView) + OBJC_IVAR____TtC7ChatKit20CircularProgressView_progressValue) = v7;
        if (v7 > 1.0)
        {
          v7 = 1.0;
        }

        if (v7 > 0.0)
        {
          v8 = v7;
        }

        else
        {
          v8 = 0.0;
        }

        v9 = sub_19093BD68();
        [v9 setStrokeEnd_];
      }

      else
      {
      }
    }

    v10 = 3;
  }

  v11 = OBJC_IVAR___CKAutomaticTranslationIndicatorCell_displayState;
  v12 = v1[OBJC_IVAR___CKAutomaticTranslationIndicatorCell_displayState];
  if (v10 != v12)
  {
    if (v12 == 3)
    {
      v13 = &selRef_removeProgressView;
    }

    else
    {
      v13 = &selRef_removeLabelView;
    }

    [v1 *v13];
    v1[v11] = v10;
    if (v10 <= 1)
    {
      if (v10)
      {
        v19 = sel_activateConstraintsForLabelOnly;
      }

      else
      {
        v19 = sel_activateConstraintsForLabelAndButton;
      }
    }

    else
    {
      if (v10 != 2)
      {
        if (v10 == 3)
        {
          [v1 createAndAddProgressView];
          v24 = [v1 progressIndicator];
          if (!v24)
          {
            return;
          }

          type metadata accessor for CKDownloadProgressView();
          v14 = swift_dynamicCastClass();
          if (v14)
          {
            v15 = v14;
            [v1 languageDownloadProgress];
            *(*(v15 + OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_circularProgressView) + OBJC_IVAR____TtC7ChatKit20CircularProgressView_progressValue) = v16;
            if (v16 > 1.0)
            {
              v16 = 1.0;
            }

            if (v16 > 0.0)
            {
              v17 = v16;
            }

            else
            {
              v17 = 0.0;
            }

            v23 = sub_19093BD68();
            [v23 setStrokeEnd:v17];

            v18 = v23;
            goto LABEL_44;
          }
        }

        else
        {
          if (qword_1EAD46280 != -1)
          {
            swift_once();
          }

          v20 = sub_190D53040();
          __swift_project_value_buffer(v20, qword_1EAD9D7C0);
          v24 = sub_190D53020();
          v21 = sub_190D576A0();
          if (os_log_type_enabled(v24, v21))
          {
            v22 = swift_slowAlloc();
            *v22 = 0;
            _os_log_impl(&dword_19020E000, v24, v21, "Both the label and the button in the indicator are hidden, this shouldn't happen", v22, 2u);
            MEMORY[0x193AF7A40](v22, -1, -1);
          }
        }

        v18 = v24;
LABEL_44:

        return;
      }

      v19 = sel_activateConstraintsForButtonOnly;
    }

    [v1 v19];
  }
}

uint64_t sub_19095AA94()
{
  v1[5] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57900, &qword_190DE09B8);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57908, &qword_190DE09C0);
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57910, &qword_190DE09C8);
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = sub_190D51920();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  v6 = sub_190D519C0();
  v1[18] = v6;
  v1[19] = *(v6 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  sub_190D572A0();
  v1[22] = sub_190D57290();
  v8 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_19095AD28, v8, v7);
}

id sub_19095AD28()
{
  v1 = v0[5];

  v2 = [v1 delegate];
  if (v2)
  {
    v74 = v0[19];
    v70 = v0[20];
    v72 = v0[18];
    v3 = v0[16];
    v4 = v0[17];
    v5 = v0[15];
    v6 = [v2 menuConfigurationForTranslationIndicatorCell_];
    swift_unknownObjectRelease();
    v7 = [v6 recipientLanguageCode];
    sub_190D56F10();

    sub_190D518B0();
    v8 = *(v3 + 104);
    v68 = *MEMORY[0x1E69A6648];
    v8(v4);
    v9 = sub_190D51900();
    v64 = v10;
    v65 = v9;
    v11 = *(v3 + 8);
    v11(v4, v5);
    v69 = v6;
    v12 = [v6 localLanguageCode];
    sub_190D56F10();

    sub_190D518B0();
    v67 = v8;
    (v8)(v4, *MEMORY[0x1E69A6650], v5);
    v13 = sub_190D51900();
    v15 = v14;
    v66 = v11;
    v11(v4, v5);
    v16 = *(v74 + 8);
    v17 = v16(v70, v72);
    result = CKFrameworkBundle(v17);
    if (result)
    {
      v19 = result;
      v61 = v15;
      v62 = v13;
      v71 = v16;
      v20 = v0[5];
      sub_1902188FC(0, &qword_1EAD464F0, 0x1E69DC628);
      v21 = sub_190D56ED0();
      v22 = sub_190D56ED0();
      v23 = [v19 localizedStringForKey:v21 value:0 table:v22];

      sub_190D56F10();
      v24 = swift_allocObject();
      *(v24 + 16) = v20;
      v25 = v20;
      v51 = v24;
      v26 = sub_190D57DC0();
      v27 = sub_190D56ED0();
      v28 = [objc_opt_self() systemImageNamed_];

      v63 = v26;
      [v26 setImage_];

      result = CKFrameworkBundle(v29);
      if (result)
      {
        v30 = result;
        v73 = v0[21];
        v60 = v0[18];
        v58 = v0[17];
        v59 = v0[15];
        v55 = v0[12];
        v56 = v0[13];
        v31 = v0[10];
        v32 = v0[11];
        v33 = v0[9];
        v52 = v0[8];
        v53 = v0[14];
        v34 = v0[6];
        v35 = v0[7];
        v57 = v0[5];
        v36 = sub_190D56ED0();
        v37 = sub_190D56ED0();
        v38 = [v30 localizedStringForKey:v36 value:0 table:v37];

        sub_190D56F10();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_190DDA780;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C80, &unk_190DD64E0);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_190DD1DA0;
        *(v39 + 32) = v62;
        *(v39 + 40) = v61;
        *(v39 + 48) = v65;
        *(v39 + 56) = v64;
        v0[4] = v39;
        (*(v31 + 104))(v32, *MEMORY[0x1E6968638], v33);
        (*(v35 + 104))(v52, *MEMORY[0x1E6968648], v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920, &unk_190DE8FC0);
        sub_190233640(&qword_1EAD45130, &unk_1EAD57920, &unk_190DE8FC0, MEMORY[0x1E69E6328]);
        sub_190D50E60();
        (*(v35 + 8))(v52, v34);
        (*(v31 + 8))(v32, v33);
        sub_190233640(&qword_1EAD46320, &unk_1EAD57910, &qword_190DE09C8, MEMORY[0x1E6968670]);
        sub_190D57110();
        (*(v56 + 8))(v53, v55);

        v40 = [v69 localLanguageSelected];
        v41 = swift_allocObject();
        *(v41 + 16) = v57;
        v42 = v57;
        *(v54 + 32) = sub_190D57DC0();
        (v67)(v58, v68, v59);
        sub_1908EA100(0xD000000000000024, 0x8000000190E68750, v73, v58);
        v66(v58, v59);
        v43 = [v69 localLanguageSelected] ^ 1;
        sub_1902188FC(0, &unk_1EAD44ED0, 0x1E69DCC60);
        v44 = swift_allocObject();
        *(v44 + 16) = v42;
        v45 = v42;
        *(v54 + 40) = sub_190D57DC0();
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_190DD55F0;
        *(v46 + 32) = v63;
        v47 = v63;
        *(v54 + 48) = sub_190D57C90();
        v48 = sub_190D57C90();
        v49 = [v45 toggleButton];
        [v49 setMenu_];

        v71(v73, v60);
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_5:

  v50 = v0[1];

  return v50();
}

double sub_19095B64C(int a1, id a2)
{
  v3 = [a2 delegate];
  if (v3)
  {
    [v3 translationIndicatorCellDidSelectStopTranslation_];

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_19095B6BC(int a1, id a2, char a3)
{
  v5 = [a2 delegate];
  if (v5)
  {
    [v5 translationIndicatorCell:a2 didChangeTranslationVisibility:a3 & 1];

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19095B8A8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_190D572A0();
  v2[4] = sub_190D57290();
  v4 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_19095B940, v4, v3);
}

uint64_t sub_19095B940()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_19095B9F0;

  return sub_19095AA94();
}

uint64_t sub_19095B9F0()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

Swift::Void __swiftcall CKAutomaticTranslationIndicatorCell.layoutSubviewsForAlignmentContents()()
{
  v2.super_class = CKAutomaticTranslationIndicatorCell;
  objc_msgSendSuper2(&v2, sel_layoutSubviewsForAlignmentContents);
  v1 = [v0 containerView];
  [v0 contentAlignmentRect];
  [v1 setFrame_];
}

void sub_19095BD90(double a1, double a2)
{
  v5 = [objc_opt_self() sharedBehaviors];
  if (v5)
  {
    v6 = v5;
    [v5 smallTranscriptSpace];
    if ([v2 shouldShowTitleLabel])
    {
      v7 = [v2 titleLabel];
      [v7 sizeThatFits_];
    }

    if ([v2 shouldShowToggleButton])
    {
      v8 = [v2 toggleButton];
      [v8 sizeThatFits_];
    }

    if ([v2 shouldShowToggleButton])
    {
      [v2 shouldShowTitleLabel];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_19095C080()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD555C8, &qword_190DDA060);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1EAD57950;
    v3 = &unk_190DE09E0;
  }

  else
  {
    v2 = &unk_1EAD53820;
    v3 = &unk_190DD76C0;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

id sub_19095C10C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940, &unk_190DDF3F0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v4 = result;
    v5 = [objc_opt_self() buttonWithType_];
    v6 = [v4 transcriptLabelAccessoryButtonConfiguration];
    if (v6)
    {
      v7 = v6;
      sub_190D57F30();

      v8 = sub_190D57FB0();
      (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
    }

    else
    {
      v9 = sub_190D57FB0();
      (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
    }

    sub_190D57FE0();
    [v5 setTranslatesAutoresizingMaskIntoConstraints_];

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _sSo35CKAutomaticTranslationIndicatorCellC7ChatKitE5coderABSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___CKAutomaticTranslationIndicatorCell_containerView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v0 + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_progressIndicator) = 0;
  *(v0 + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleToButtonVerticalConstraint) = 0;
  *(v0 + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_displayState) = 4;
  *(v0 + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_titleAttributedString) = 0;
  *(v0 + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_buttonAttributedString) = 0;
  *(v0 + OBJC_IVAR___CKAutomaticTranslationIndicatorCell_languageDownloadProgress) = 0;
  sub_190D58510();
  __break(1u);
}

uint64_t sub_19095C380()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_190221DA0;

  return sub_19095B8A8(v2, v3);
}

uint64_t sub_19095C474(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_190221DA0;

  return sub_19095A18C(a1, v4, v5, v6);
}

id sub_19095C528(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E695D198]) init];
  v4 = [objc_opt_self() sharedInstance];
  v5 = [*(a2 + 16) recipientStrings];
  if (!v5)
  {
    sub_190D57180();
    v5 = sub_190D57160();
  }

  v6 = [v4 createSharedProfileStateOracleForHandles_];

  if (v6)
  {
    [v3 setUpWithSharedProfileStateOracle:v6 tappedAction:0 hasPerformedAnimation:0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD579D0, &qword_190DE0B18);
    sub_190D55030();
    [v3 setDelegate_];

    v7 = [objc_opt_self() defaultStyle];
    [v3 setStyle_];
  }

  return v3;
}

id sub_19095C7D8()
{
  v2.receiver = v0;
  v2.super_class = _s14descr1F03EB3E1C16OracleBannerViewV11CoordinatorCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_19095C858@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = _s14descr1F03EB3E1C16OracleBannerViewV11CoordinatorCMa();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCVV7ChatKit18DetailsInfoTabView16OracleBannerView11Coordinator_parent] = v3;
  v7.receiver = v5;
  v7.super_class = v4;
  sub_190D50920();
  result = objc_msgSendSuper2(&v7, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_19095C8C8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id a5)
{
  if (a2)
  {
    [a5 frame];
    v7 = v6;
  }

  else
  {
    v7 = *&a1;
  }

  [a5 estimatedHeightForWidth_];
  return *&v7;
}

uint64_t sub_19095C930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19095CA78();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_19095C994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19095CA78();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_19095C9F8(uint64_t a1)
{
  sub_19095CA78();
  sub_190D54C10();
  __break(1u);
}

unint64_t sub_19095CA24()
{
  result = qword_1EAD579C8;
  if (!qword_1EAD579C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD579C8);
  }

  return result;
}

unint64_t sub_19095CA78()
{
  result = qword_1EAD579D8;
  if (!qword_1EAD579D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD579D8);
  }

  return result;
}

uint64_t sub_19095CACC(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = [*(a1 + 16) recipientStrings];
  if (!v3)
  {
    sub_190D57180();
    v3 = sub_190D57160();
  }

  v4 = [v2 createSharedProfileStateOracleForHandles_];

  if (v4)
  {
  }

  else
  {
    if (qword_1EAD51C58 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9DF88);
    v6 = sub_190D53020();
    v7 = sub_190D576A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    return 0;
  }

  return a1;
}

void sub_19095CC58(void *a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtCVV7ChatKit18DetailsInfoTabView16OracleBannerView11Coordinator_parent);
  v6 = objc_opt_self();
  sub_190D50920();
  v7 = [v6 sharedInstance];
  v8 = [*(v5 + 16) recipientStrings];
  if (!v8)
  {
    sub_190D57180();
    v8 = sub_190D57160();
  }

  v17 = [v7 createSharedProfileStateOracleForHandles_];

  if (v17)
  {
    if (qword_1EAD51C58 != -1)
    {
      swift_once();
    }

    v9 = sub_190D53040();
    __swift_project_value_buffer(v9, qword_1EAD9DF88);
    v10 = sub_190D53020();
    v11 = sub_190D576C0();
    if (!os_log_type_enabled(v10, v11))
    {
      goto LABEL_19;
    }

    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 136315138;
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v15 = 0xD000000000000010;
        v14 = 0x8000000190E68850;
        goto LABEL_18;
      }

      if (a2 == 3)
      {
        v14 = 0xE600000000000000;
        v15 = 0x657461647055;
        goto LABEL_18;
      }
    }

    else
    {
      if (!a2)
      {
        v14 = 0xE400000000000000;
        v15 = 1701736270;
        goto LABEL_18;
      }

      if (a2 == 1)
      {
        v14 = 0x8000000190E68870;
        v15 = 0xD000000000000012;
LABEL_18:
        v16 = sub_19021D9F8(v15, v14, &v18);

        *(v12 + 4) = v16;
        _os_log_impl(&dword_19020E000, v10, v11, "Contact photo updated for action: %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x193AF7A40](v13, -1, -1);
        MEMORY[0x193AF7A40](v12, -1, -1);
LABEL_19:

        [a1 setUpWithSharedProfileStateOracle:v17 tappedAction:a2 hasPerformedAnimation:0];

        return;
      }
    }

    v14 = 0xE700000000000000;
    v15 = 0x6E776F6E6B6E55;
    goto LABEL_18;
  }
}

double sub_19095CF44()
{
  if (qword_1EAD51C58 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9DF88);
  v1 = sub_190D53020();
  v2 = sub_190D576C0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19020E000, v1, v2, "User tapped to dismiss photo update banner.", v3, 2u);
    MEMORY[0x193AF7A40](v3, -1, -1);
  }

  sub_190D50920();
  sub_190B6E778();

  return result;
}

id sub_19095D05C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E695D120]) init];
  [v0 setAllowsCancel_];
  [v0 setAutocloses_];
  [v0 setMode_];
  v1 = [objc_opt_self() predicateWithValue_];
  [v0 setPredicateForSelectionOfContact_];
  [v0 setAllowsNamePicking_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57A20, &qword_190DE0C60);
  sub_190D55210();
  [v0 setDelegate_];

  v2 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];
  sub_190D55210();

  v3 = *&v6[OBJC_IVAR____TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator_viewController];
  *&v6[OBJC_IVAR____TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator_viewController] = v2;
  v4 = v2;

  return v4;
}

id sub_19095D2D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ChooseExistingContactViewControllerRepresentable.ContactViewCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_19095D380(uint64_t a1)
{
  sub_1908CB130(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19095D460(uint64_t a1)
{
  sub_1908CB130(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_19095D4EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19095D73C(v2, v5);
  v6 = type metadata accessor for ChooseExistingContactViewControllerRepresentable.ContactViewCoordinator(0);
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator_viewController] = 0;
  sub_19095D73C(v5, &v7[OBJC_IVAR____TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator_parent]);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_19095D7A0(v5);
  *a2 = v8;
  return result;
}

uint64_t sub_19095D5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19095D7FC(&qword_1EAD57A28, &unk_190DE0BE4);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_19095D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_19095D7FC(&qword_1EAD57A28, &unk_190DE0BE4);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_19095D6C4(uint64_t a1)
{
  sub_19095D7FC(&qword_1EAD57A28, &unk_190DE0BE4);
  sub_190D55130();
  __break(1u);
}

uint64_t sub_19095D73C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChooseExistingContactViewControllerRepresentable(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19095D7A0(uint64_t a1)
{
  v2 = type metadata accessor for ChooseExistingContactViewControllerRepresentable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19095D7FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChooseExistingContactViewControllerRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_19095D840(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820, &unk_190DD76C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_190DD55F0;
  v5 = objc_opt_self();
  *(v4 + 32) = [v5 descriptorForRequiredKeys];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F60, &unk_190DD2330);
  sub_190D56320();
  v6 = *&v18[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

  v7 = [v6 recipient];
  if (v7)
  {
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20, &unk_190DDBB80);
    v9 = sub_190D57160();

    v10 = [v8 cnContactWithKeys:v9 shouldFetchSuggestedContact:1];

    if (v10)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = [objc_allocWithZone(MEMORY[0x1E695CD58]) init];
LABEL_6:
  v11 = [v5 viewControllerForUpdatingContact:a1 withPropertiesFromContact:v10];
  if (v11)
  {
    v12 = v11;
    [v11 setDelegate_];
    v13 = *(v2 + OBJC_IVAR____TtCV7ChatKit48ChooseExistingContactViewControllerRepresentable22ContactViewCoordinator_viewController);
    if (v13)
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (v14)
      {
        v15 = v14;
        v16 = v13;
LABEL_11:
        v17 = v16;
        [v15 pushViewController:v12 animated:1];

        v12 = v15;
        goto LABEL_12;
      }

      v16 = [v13 navigationController];
      v15 = v16;
      if (v16)
      {
        goto LABEL_11;
      }
    }

LABEL_12:
  }
}

uint64_t _s11ContentViewVMa_1(uint64_t a1)
{
  result = qword_1EAD57A30;
  if (!qword_1EAD57A30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19095DB0C(uint64_t a1)
{
  result = _s9ViewModelCMa_1(319);
  if (v2 <= 0x3F)
  {
    result = sub_190D579B0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_19095DBAC@<X0>(uint64_t a1@<X8>)
{
  v3 = _s11ContentViewVMa_1(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = *v1;
  v19 = v1;
  swift_getKeyPath();
  v20 = v7;
  sub_19095FDCC(&qword_1EAD548A8, _s9ViewModelCMa_1, &unk_190DD7D20);
  sub_190D51C20();

  v20 = *(v7 + 32);
  sub_19095F78C(v1, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_19095F7F0(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  sub_190D52690();
  v18[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57A40, &qword_190DE0CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57A48, &qword_190DE0CF8);
  sub_190233640(&qword_1EAD57A50, &qword_1EAD57A40, &qword_190DE0CF0, MEMORY[0x1E69E6338]);
  sub_19095F8D4();
  sub_19096001C();
  sub_190D56290();
  v10 = *(v4 + 28);
  v11 = v19;
  sub_19095F78C(v19, v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  sub_19095F7F0(v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57AF8, &qword_190DE0D40);
  v14 = *(v13 + 52);
  v15 = sub_190D579B0();
  result = (*(*(v15 - 8) + 16))(a1 + v14, v11 + v10, v15);
  v17 = (a1 + *(v13 + 56));
  *v17 = sub_190960070;
  v17[1] = v12;
  return result;
}

uint64_t sub_19095DE8C(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57A68, &qword_190DE0D00);
  sub_19095F964();
  return sub_190D562E0();
}

uint64_t sub_19095DF00(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentViewVMa_1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_19086D6D8(a1);
  v20 = v7;
  KeyPath = swift_getKeyPath();
  sub_19095F78C(a2, v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_19095F7F0(v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_190960104;
  *(v11 + 24) = v10;
  sub_190D52690();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B00, &qword_190DE0D68);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B08, &qword_190DE0D70);
  v14 = sub_190233640(&qword_1EAD57B10, &qword_1EAD57B00, &qword_190DE0D68, MEMORY[0x1E69E6338]);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57A70, &qword_190DE0D08);
  v16 = sub_19095FB10(&qword_1EAD57A78, &qword_1EAD57A70, &qword_190DE0D08, sub_19095FA58);
  v19[1] = v15;
  v19[2] = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return sub_190D56280(&v20, KeyPath, sub_1909601B8, v11, v12, v13, v14, MEMORY[0x1E69E6540], OpaqueTypeConformance2);
}

uint64_t sub_19095E170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57A70, &qword_190DE0D08);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_19095E284(v4, &v9 - v6);
  sub_19095FB10(&qword_1EAD57A78, &qword_1EAD57A70, &qword_190DE0D08, sub_19095FA58);
  sub_190D55640();
  return sub_19022EEA4(v7, &qword_1EAD57A70, &qword_190DE0D08);
}

id sub_19095E284@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v116 = a1;
  v115 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57AE0, &qword_190DE0D38);
  MEMORY[0x1EEE9AC00](v98);
  v92 = &v91 - v2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B18, &qword_190DE0D78);
  v94 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v93 = &v91 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B20, &qword_190DE0D80);
  MEMORY[0x1EEE9AC00](v96);
  v97 = (&v91 - v4);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57AD0, &qword_190DE0D30);
  MEMORY[0x1EEE9AC00](v109);
  v99 = &v91 - v5;
  v6 = _s11ContentViewVMa_1(0);
  v102 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v101 = v7;
  v103 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v104 = *(v117 - 1);
  MEMORY[0x1EEE9AC00](v117);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v91 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v91 - v14;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B28, &qword_190DE9330);
  v95 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v91 - v19;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B30, &qword_190DE0D88);
  MEMORY[0x1EEE9AC00](v111);
  v113 = &v91 - v21;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B38, &qword_190DE0D90);
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v91 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B40, &qword_190DE0D98);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v91 - v24;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57A98, &qword_190DE0D18);
  MEMORY[0x1EEE9AC00](v106);
  v27 = &v91 - v26;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57A88, &qword_190DE0D10);
  MEMORY[0x1EEE9AC00](v112);
  v108 = &v91 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57AA8, &qword_190DE0D20);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v91 - v31;
  if (v116 > 1u)
  {
    if (v116 == 2)
    {
      *v97 = *v110;
      swift_storeEnumTagMultiPayload();
      sub_19095FEE4();
      v57 = sub_19095FF38();
      swift_retain_n();
      v118 = v98;
      *&v119 = v57;
      swift_getOpaqueTypeConformance2();
      v58 = v99;
      sub_190D54C50();
      sub_19022FD14(v58, v107, &qword_1EAD57AD0, &qword_190DE0D30);
      swift_storeEnumTagMultiPayload();
      sub_19095FB10(&qword_1EAD57A90, &qword_1EAD57A98, &qword_190DE0D18, sub_19095FC04);
      sub_19095FE14();
      v59 = v108;
      sub_190D54C50();
      sub_19022EEA4(v58, &qword_1EAD57AD0, &qword_190DE0D30);
      sub_19022FD14(v59, v113, &qword_1EAD57A88, &qword_190DE0D10);
      swift_storeEnumTagMultiPayload();
      sub_19095FA58();
      v60 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
      v118 = v117;
      *&v119 = v60;
      swift_getOpaqueTypeConformance2();
      sub_190D54C50();

      return sub_19022EEA4(v59, &qword_1EAD57A88, &qword_190DE0D10);
    }

    if (v116 == 3)
    {
      result = CKFrameworkBundle(v30);
      if (result)
      {
        v34 = result;
        v35 = sub_190D56ED0();
        v36 = sub_190D56ED0();
        v37 = [v34 localizedStringForKey:v35 value:0 table:v36];

        v38 = sub_190D56F10();
        v40 = v39;

        v118 = v38;
        *&v119 = v40;
        v41 = v103;
        sub_19095F78C(v110, v103);
        v42 = (*(v102 + 80) + 16) & ~*(v102 + 80);
        v43 = swift_allocObject();
        sub_19095F7F0(v41, v43 + v42);
        sub_19081E484();
        sub_190D56080();
        v44 = sub_190D55D40();
        v45 = v92;
        (*(v104 + 32))(v92, v12, v117);
        v46 = v98;
        *(v45 + v98[9]) = v44;
        v47 = sub_19095FF38();
        v48 = v93;
        sub_190D55670();
        sub_19022EEA4(v45, &qword_1EAD57AE0, &qword_190DE0D38);
        v49 = v94;
        v50 = v100;
        (*(v94 + 16))(v97, v48, v100);
        swift_storeEnumTagMultiPayload();
        sub_19095FEE4();
        v118 = v46;
        *&v119 = v47;
        swift_getOpaqueTypeConformance2();
        v51 = v99;
        sub_190D54C50();
        sub_19022FD14(v51, v107, &qword_1EAD57AD0, &qword_190DE0D30);
        swift_storeEnumTagMultiPayload();
        sub_19095FB10(&qword_1EAD57A90, &qword_1EAD57A98, &qword_190DE0D18, sub_19095FC04);
        sub_19095FE14();
        v52 = v108;
        sub_190D54C50();
        sub_19022EEA4(v51, &qword_1EAD57AD0, &qword_190DE0D30);
        sub_19022FD14(v52, v113, &qword_1EAD57A88, &qword_190DE0D10);
        swift_storeEnumTagMultiPayload();
        sub_19095FA58();
        v53 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
        v118 = v117;
        *&v119 = v53;
        swift_getOpaqueTypeConformance2();
        sub_190D54C50();
        sub_19022EEA4(v52, &qword_1EAD57A88, &qword_190DE0D10);
        return (*(v49 + 8))(v48, v50);
      }

      __break(1u);
    }

    else
    {
      result = CKFrameworkBundle(v30);
      if (result)
      {
        v61 = result;
        v62 = sub_190D56ED0();
        v63 = sub_190D56ED0();
        v64 = [v61 localizedStringForKey:v62 value:0 table:v63];

        v65 = sub_190D56F10();
        v67 = v66;

        v118 = v65;
        *&v119 = v67;
        v68 = v103;
        sub_19095F78C(v110, v103);
        v69 = (*(v102 + 80) + 16) & ~*(v102 + 80);
        v70 = swift_allocObject();
        sub_19095F7F0(v68, v70 + v69);
        sub_19081E484();
        sub_190D56080();
        v71 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
        v72 = v117;
        sub_190D55670();
        (*(v104 + 8))(v9, v72);
        v73 = v95;
        v74 = v114;
        (*(v95 + 16))(v113, v17, v114);
        swift_storeEnumTagMultiPayload();
        sub_19095FA58();
        v118 = v72;
        *&v119 = v71;
        swift_getOpaqueTypeConformance2();
        sub_190D54C50();
        return (*(v73 + 8))(v17, v74);
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  v91 = v20;
  if (!v116)
  {
    v118 = *(*v110 + 16);
    v119 = 0u;
    v120 = 0u;
    v121 = 0;
    v54 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57AB8, &qword_190DE0D28);
    sub_19095FCC0();
    sub_190D55AA0();

    sub_190960384(v32, v25);
    swift_storeEnumTagMultiPayload();
    sub_19095FC04();
    v55 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    v118 = v117;
    *&v119 = v55;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    sub_19022FD14(v27, v107, &qword_1EAD57A98, &qword_190DE0D18);
    swift_storeEnumTagMultiPayload();
    sub_19095FB10(&qword_1EAD57A90, &qword_1EAD57A98, &qword_190DE0D18, sub_19095FC04);
    sub_19095FE14();
    v56 = v108;
    sub_190D54C50();
    sub_19022EEA4(v27, &qword_1EAD57A98, &qword_190DE0D18);
    sub_19022FD14(v56, v113, &qword_1EAD57A88, &qword_190DE0D10);
    swift_storeEnumTagMultiPayload();
    sub_19095FA58();
    sub_190D54C50();
    sub_19022EEA4(v56, &qword_1EAD57A88, &qword_190DE0D10);
    return sub_19022EEA4(v32, &qword_1EAD57AA8, &qword_190DE0D20);
  }

  result = CKFrameworkBundle(v30);
  if (!result)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v75 = result;
  v76 = sub_190D56ED0();
  v77 = sub_190D56ED0();
  v78 = [v75 localizedStringForKey:v76 value:0 table:v77];

  v79 = sub_190D56F10();
  v81 = v80;

  v118 = v79;
  *&v119 = v81;
  v82 = v103;
  sub_19095F78C(v110, v103);
  v83 = (*(v102 + 80) + 16) & ~*(v102 + 80);
  v84 = swift_allocObject();
  sub_19095F7F0(v82, v84 + v83);
  sub_19081E484();
  sub_190D56080();
  v85 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
  v86 = v91;
  v87 = v117;
  sub_190D55670();
  (*(v104 + 8))(v15, v87);
  v88 = v95;
  v89 = v114;
  (*(v95 + 16))(v25, v86, v114);
  swift_storeEnumTagMultiPayload();
  sub_19095FC04();
  v118 = v87;
  *&v119 = v85;
  swift_getOpaqueTypeConformance2();
  sub_190D54C50();
  sub_19022FD14(v27, v107, &qword_1EAD57A98, &qword_190DE0D18);
  swift_storeEnumTagMultiPayload();
  sub_19095FB10(&qword_1EAD57A90, &qword_1EAD57A98, &qword_190DE0D18, sub_19095FC04);
  sub_19095FE14();
  v90 = v108;
  sub_190D54C50();
  sub_19022EEA4(v27, &qword_1EAD57A98, &qword_190DE0D18);
  sub_19022FD14(v90, v113, &qword_1EAD57A88, &qword_190DE0D10);
  swift_storeEnumTagMultiPayload();
  sub_19095FA58();
  sub_190D54C50();
  sub_19022EEA4(v90, &qword_1EAD57A88, &qword_190DE0D10);
  return (*(v88 + 8))(v91, v89);
}

double sub_19095F5D0(uint64_t a1, uint64_t *a2)
{
  if (qword_1EAD51C50 != -1)
  {
    swift_once();
  }

  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9DF70);
  v3 = sub_190D53020();
  v4 = sub_190D57680();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19020E000, v3, v4, "Location sharing relationship changed. Updating view.", v5, 2u);
    MEMORY[0x193AF7A40](v5, -1, -1);
  }

  sub_19085CA08();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_19095FDCC(&qword_1EAD548A8, _s9ViewModelCMa_1, &unk_190DD7D20);
  sub_190D51C10();

  return result;
}

uint64_t sub_19095F78C(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentViewVMa_1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_19095F7F0(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentViewVMa_1(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_19095F854(void *a1)
{
  v3 = *(_s11ContentViewVMa_1(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_19095DE8C(a1, v4);
}

unint64_t sub_19095F8D4()
{
  result = qword_1EAD57A58;
  if (!qword_1EAD57A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57A48, &qword_190DE0CF8);
    sub_19095F964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57A58);
  }

  return result;
}

unint64_t sub_19095F964()
{
  result = qword_1EAD57A60;
  if (!qword_1EAD57A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57A68, &qword_190DE0D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57A70, &qword_190DE0D08);
    sub_19095FB10(&qword_1EAD57A78, &qword_1EAD57A70, &qword_190DE0D08, sub_19095FA58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57A60);
  }

  return result;
}

unint64_t sub_19095FA58()
{
  result = qword_1EAD57A80;
  if (!qword_1EAD57A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57A88, &qword_190DE0D10);
    sub_19095FB10(&qword_1EAD57A90, &qword_1EAD57A98, &qword_190DE0D18, sub_19095FC04);
    sub_19095FE14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57A80);
  }

  return result;
}

uint64_t sub_19095FB10(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0, &qword_190DD7300);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19095FC04()
{
  result = qword_1EAD57AA0;
  if (!qword_1EAD57AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57AA8, &qword_190DE0D20);
    sub_19095FCC0();
    sub_19095FDCC(&qword_1EAD56800, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57AA0);
  }

  return result;
}

unint64_t sub_19095FCC0()
{
  result = qword_1EAD57AB0;
  if (!qword_1EAD57AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57AB8, &qword_190DE0D28);
    sub_19095FD78();
    sub_190233640(&unk_1EAD52E20, &qword_1EAD594B0, &qword_190DD3C20, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57AB0);
  }

  return result;
}

unint64_t sub_19095FD78()
{
  result = qword_1EAD57AC0;
  if (!qword_1EAD57AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57AC0);
  }

  return result;
}

uint64_t sub_19095FDCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_19095FE14()
{
  result = qword_1EAD57AC8;
  if (!qword_1EAD57AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57AD0, &qword_190DE0D30);
    sub_19095FEE4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57AE0, &qword_190DE0D38);
    sub_19095FF38();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57AC8);
  }

  return result;
}

unint64_t sub_19095FEE4()
{
  result = qword_1EAD57AD8;
  if (!qword_1EAD57AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57AD8);
  }

  return result;
}

unint64_t sub_19095FF38()
{
  result = qword_1EAD57AE8;
  if (!qword_1EAD57AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57AE0, &qword_190DE0D38);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    sub_190233640(&qword_1EAD53008, &qword_1EAD53010, &qword_190DD3E70, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57AE8);
  }

  return result;
}

unint64_t sub_19096001C()
{
  result = qword_1EAD57AF0;
  if (!qword_1EAD57AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57AF0);
  }

  return result;
}

double sub_190960070(uint64_t a1)
{
  v3 = *(_s11ContentViewVMa_1(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_19095F5D0(a1, v4);
}

uint64_t sub_190960104(uint64_t a1, uint64_t a2)
{
  v5 = *(_s11ContentViewVMa_1(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_19095E170(a1, a2, v2 + v6, v7);
}

uint64_t objectdestroyTm_11()
{
  v1 = (_s11ContentViewVMa_1(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_190D579B0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_1909602F4(void *a1)
{
  v3 = *(_s11ContentViewVMa_1(0) - 8);
  v4 = *(*(*(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80))) + 24) + *a1);
  v5 = sub_190D50920();
  v4(v5);

  return result;
}

uint64_t sub_190960384(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57AA8, &qword_190DE0D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for TTRFilteringIssueCategory(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TTRFilteringIssueCategory(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for TTRFilteringIssueView(uint64_t a1)
{
  result = qword_1EAD57B50;
  if (!qword_1EAD57B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1909605C8(uint64_t a1)
{
  sub_1909606CC(319);
  if (v1 <= 0x3F)
  {
    sub_190960724(319, &qword_1EAD57B60, &type metadata for TTRFilteringIssueCategory);
    if (v2 <= 0x3F)
    {
      sub_190960724(319, &qword_1EAD57B68, &type metadata for TTRFilteringIssueTimeSensitivity);
      if (v3 <= 0x3F)
      {
        sub_1902188FC(319, &qword_1EAD57B70, 0x1E69A5BD8);
        if (v4 <= 0x3F)
        {
          sub_190960770(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1909606CC(uint64_t a1)
{
  if (!qword_1EAD562D0)
  {
    sub_190D53D10();
    v1 = sub_190D53A80();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD562D0);
    }
  }
}

void sub_190960724(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_190D56000();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_190960770(uint64_t a1)
{
  if (!qword_1EAD57B78)
  {
    sub_1902188FC(255, &qword_1EAD44EE0, 0x1E69A5AE0);
    v1 = sub_190D58050();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD57B78);
    }
  }
}

unint64_t sub_1909607DC()
{
  result = qword_1EAD57B80;
  if (!qword_1EAD57B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57B80);
  }

  return result;
}

uint64_t sub_190960830@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0, &qword_190DD87B0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1909645C0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53D10();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_190960A18()
{
  v1 = [*(v0 + *(type metadata accessor for TTRFilteringIssueView(0) + 32)) messageSummaryInfo];
  if (!v1)
  {
    return 2;
  }

  v2 = v1;
  v3 = sub_190D56D90();

  v7 = sub_190D56F10();
  sub_190D58230();
  if (*(v3 + 16) && (v4 = sub_190875C84(v8), (v5 & 1) != 0))
  {
    sub_19021834C(*(v3 + 56) + 32 * v4, v9);
    sub_19084CFD0(v8);

    result = swift_dynamicCast();
    if (result)
    {
      return v7;
    }
  }

  else
  {

    sub_19084CFD0(v8);
    return 0;
  }

  return result;
}

uint64_t sub_190960B40()
{
  type metadata accessor for TTRFilteringIssueView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57CB0, &unk_190DE1168);
  sub_190D55FD0();
  if (v3 > 2u || v3)
  {
    v0 = sub_190D58760();

    v1 = v0 ^ 1;
  }

  else
  {

    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_190960CC4()
{
  if (sub_190960B40())
  {
    v0 = 1;
  }

  else
  {
    type metadata accessor for TTRFilteringIssueView(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C80, &qword_190DE1118);
    sub_190D55FD0();
    if (v3)
    {
      v1 = sub_190D58760();

      v0 = v1 ^ 1;
    }

    else
    {

      v0 = 0;
    }
  }

  return v0 & 1;
}

uint64_t sub_190960DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BD0, &qword_190DE1090);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v75 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v68 = &v51 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BD8, &qword_190DE1098);
  v56 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v51 - v8;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BE0, &qword_190DE10A0);
  v60 = *(v61 - 1);
  MEMORY[0x1EEE9AC00](v61);
  v54 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BE8, &qword_190DE10A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v69 = &v51 - v13;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BF0, &qword_190DE10B0);
  v76 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BF8, &qword_190DE10B8);
  v65 = *(v18 - 8);
  v66 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C00, &qword_190DE10C0);
  sub_190963FB8();
  v62 = v22;
  sub_190D562E0();
  v55 = sub_190D549E0();
  v77 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C20, &qword_190DE10D8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57C28, &qword_190DE10E0);
  v24 = sub_190D541B0();
  v25 = sub_190233640(&qword_1EAD57C30, &qword_1EAD57C28, &qword_190DE10E0, MEMORY[0x1E697D690]);
  v78 = v23;
  v79 = v24;
  v53 = v24;
  v26 = MEMORY[0x1E697C178];
  v80 = v25;
  v81 = MEMORY[0x1E697C178];
  v27 = 1;
  swift_getOpaqueTypeConformance2();
  v63 = v17;
  sub_190D562A0();
  if (*(a1 + *(type metadata accessor for TTRFilteringIssueView(0) + 28)) == 1)
  {
    v52 = sub_190D549E0();
    v55 = &v51;
    MEMORY[0x1EEE9AC00](v52);
    *(&v51 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C68, &qword_190DE1108);
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57C70, &qword_190DE1110);
    v29 = sub_190233640(&qword_1EAD57C78, &qword_1EAD57C70, &qword_190DE1110, MEMORY[0x1E697D690]);
    v78 = v28;
    v79 = v53;
    v80 = v29;
    v81 = v26;
    swift_getOpaqueTypeConformance2();
    v30 = v54;
    sub_190D562A0();
    (*(v60 + 32))(v69, v30, v61);
    v27 = 0;
  }

  v31 = v69;
  (*(v60 + 56))(v69, v27, 1, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C38, &qword_190DE10E8);
  sub_1909640A4();
  v32 = v67;
  v33 = sub_190D562E0();
  MEMORY[0x1EEE9AC00](v33);
  *(&v51 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C48, &unk_190DE10F0);
  sub_190964164();
  v34 = v68;
  sub_190D562E0();
  v54 = *(v65 + 16);
  v35 = v64;
  v36 = v66;
  (v54)(v64, v62, v66);
  v60 = *(v76 + 16);
  (v60)(v70, v63, v71);
  sub_19026BCD0(v31, v72);
  v37 = v56;
  v61 = *(v56 + 16);
  v61(v73, v32, v74);
  v38 = v57;
  v55 = *(v57 + 16);
  v39 = v34;
  v40 = v59;
  v55(v75, v39, v59);
  v41 = v58;
  (v54)(v58, v35, v36);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C60, &qword_190DE1100);
  (v60)(v41 + v42[12], v70, v71);
  sub_19026BCD0(v72, v41 + v42[16]);
  v43 = v74;
  v61((v41 + v42[20]), v73, v74);
  v55((v41 + v42[24]), v75, v40);
  v44 = *(v38 + 8);
  v44(v68, v40);
  v45 = *(v37 + 8);
  v45(v67, v43);
  sub_19026BD40(v69);
  v46 = *(v76 + 8);
  v76 += 8;
  v47 = v71;
  v46(v63, v71);
  v48 = v66;
  v49 = *(v65 + 8);
  v49(v62, v66);
  v44(v75, v40);
  v45(v73, v74);
  sub_19026BD40(v72);
  v46(v70, v47);
  return (v49)(v64, v48);
}

uint64_t sub_1909617DC@<X0>(uint64_t a2@<X8>)
{
  v21 = sub_190D54AD0();
  sub_190D549E0();
  v3 = sub_190D555D0();
  v5 = v4;
  v7 = v6;
  sub_190D55360();
  v8 = sub_190D555B0();
  v10 = v9;
  v12 = v11;

  sub_19081E474(v3, v5, v7 & 1);

  sub_190D54EB0();
  v13 = sub_190D55580();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_19081E474(v8, v10, v12 & 1);

  v22 = sub_190D55DA0();
  result = sub_190D561E0();
  *a2 = v21;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  *(a2 + 17) = v22;
  *(a2 + 20) = *(&v22 + 3);
  *(a2 + 24) = v13;
  *(a2 + 32) = v15;
  *(a2 + 40) = v17 & 1;
  *(a2 + 41) = *v23;
  *(a2 + 44) = *&v23[3];
  *(a2 + 48) = v19;
  *(a2 + 56) = result;
  return result;
}

uint64_t sub_190961988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[2] = a2;
  v3 = sub_190D541B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C28, &qword_190DE10E0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = sub_190D549E0();
  v17[0] = v12;
  v17[1] = v11;
  v13 = (a1 + *(type metadata accessor for TTRFilteringIssueView(0) + 20));
  v14 = *v13;
  v15 = *(v13 + 1);
  v18 = v14;
  v19 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57CB0, &unk_190DE1168);
  sub_190D55FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57CC0, &qword_190DE1188);
  sub_1909607DC();
  sub_190964688();
  sub_190D56130();
  sub_190D541A0();
  sub_190233640(&qword_1EAD57C30, &qword_1EAD57C28, &qword_190DE10E0, MEMORY[0x1E697D690]);
  sub_190D55790();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_190961C38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57B90, qword_190DE0E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57CD0, &qword_190DE1190);
  sub_190233640(&qword_1EAD57CD8, &qword_1EAD57B90, qword_190DE0E40, MEMORY[0x1E69E6338]);
  sub_1909607DC();
  swift_getOpaqueTypeConformance2();
  sub_19096474C();
  return sub_190D56290();
}

uint64_t sub_190961D68@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_19081E484();
  result = sub_190D555F0();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_190961EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[2] = a2;
  v3 = sub_190D541B0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C70, &qword_190DE1110);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = sub_190D549E0();
  v17[0] = v12;
  v17[1] = v11;
  v13 = (a1 + *(type metadata accessor for TTRFilteringIssueView(0) + 24));
  v14 = *v13;
  v15 = *(v13 + 1);
  v18 = v14;
  v19 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C80, &qword_190DE1118);
  sub_190D55FF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C88, &qword_190DE1120);
  sub_190963BA4();
  sub_190964308();
  sub_190D56130();
  sub_190D541A0();
  sub_190233640(&qword_1EAD57C78, &qword_1EAD57C70, &qword_190DE1110, MEMORY[0x1E697D690]);
  sub_190D55790();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_190962170()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BB0, qword_190DE0F58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C98, &unk_190DE1128);
  sub_190233640(&qword_1EAD57CA0, &qword_1EAD57BB0, qword_190DE0F58, MEMORY[0x1E69E6338]);
  sub_190963BA4();
  swift_getOpaqueTypeConformance2();
  sub_1909643CC();
  return sub_190D56290();
}

uint64_t sub_1909622A0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_19081E484();
  result = sub_190D555F0();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

uint64_t sub_190962344@<X0>(uint64_t a1@<X8>)
{
  sub_190D549E0();
  v2 = sub_190D555D0();
  v4 = v3;
  v6 = v5;
  sub_190D55450();
  v7 = sub_190D555B0();
  v9 = v8;
  v11 = v10;

  sub_19081E474(v2, v4, v6 & 1);

  sub_190D54EB0();
  v12 = sub_190D55580();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_19081E474(v7, v9, v11 & 1);

  sub_190D55DA0();
  result = sub_190D561E0();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1909624B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRFilteringIssueView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C58, &unk_190DE8470);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21[-v9];
  sub_190964420(a1, &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_190964484(&v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v22 = a1;
  sub_190D56030();
  v13 = sub_190960CC4();
  KeyPath = swift_getKeyPath();
  v15 = swift_allocObject();
  *(v15 + 16) = (v13 & 1) == 0;
  v16 = &v10[*(v8 + 44)];
  *v16 = KeyPath;
  v16[1] = sub_1908D9D28;
  v16[2] = v15;
  LOBYTE(a1) = sub_190960CC4();
  v17 = sub_190D55DD0();
  if ((a1 & 1) == 0)
  {
    v18 = sub_190D55DF0();

    v17 = v18;
  }

  v23 = v17;
  v19 = sub_190D561E0();
  sub_190964550(v10, a2);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C48, &unk_190DE10F0);
  *(a2 + *(result + 36)) = v19;
  return result;
}

uint64_t sub_190962710()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1909627E0();
  sub_190960830(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

id sub_1909627E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v91 = &v89 - v2;
  v3 = sub_190D515F0();
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57CB8, &qword_190DE1178);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = &v89 - v6;
  v7 = sub_190D51040();
  v96 = *(v7 - 8);
  v97 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v95 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D51840();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = 0;
  v104 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD0000000000000C6, 0x8000000190E689B0);
  v13 = type metadata accessor for TTRFilteringIssueView(0);
  v14 = v0;
  v15 = *(v0 + v13[8]);
  result = [v15 text];
  if (!result)
  {
    __break(1u);
    goto LABEL_62;
  }

  v17 = result;
  v18 = [result string];

  v19 = sub_190D56F10();
  v21 = v20;

  MEMORY[0x193AF28B0](v19, v21);

  MEMORY[0x193AF28B0](0xD000000000000012, 0x8000000190E68A80);
  result = [v15 sender];
  if (!result)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v22 = result;
  v23 = [result ID];

  v24 = sub_190D56F10();
  v26 = v25;

  MEMORY[0x193AF28B0](v24, v26);

  MEMORY[0x193AF28B0](0x6567617373654D0ALL, 0xEF203A656D695420);
  result = [v15 time];
  if (!result)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  v27 = result;
  v28 = 0x6575737369206F4ELL;
  sub_190D517E0();

  v29 = sub_190D51820();
  v31 = v30;
  (*(v10 + 8))(v12, v9);
  MEMORY[0x193AF28B0](v29, v31);

  MEMORY[0x193AF28B0](0xD000000000000010, 0x8000000190E68AA0);
  v32 = sub_190960A18();
  v33 = v32;
  v34 = 28494;
  if (v32)
  {
    v34 = 7562585;
  }

  v35 = 0xE200000000000000;
  if (v32)
  {
    v35 = 0xE300000000000000;
  }

  if (v32 == 2)
  {
    v36 = 0x6E776F6E6B6E55;
  }

  else
  {
    v36 = v34;
  }

  if (v33 == 2)
  {
    v37 = 0xE700000000000000;
  }

  else
  {
    v37 = v35;
  }

  MEMORY[0x193AF28B0](v36, v37);

  MEMORY[0x193AF28B0](0xD000000000000015, 0x8000000190E68AC0);
  v38 = (v14 + v13[5]);
  v39 = *v38;
  v40 = *(v38 + 1);
  LOBYTE(v101) = v39;
  v102 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57CB0, &unk_190DE1168);
  sub_190D55FD0();
  if (v99 <= 2u)
  {
    if (v99)
    {
      if (v99 == 1)
      {
        v43 = 0xEF737265646E6553;
        v41 = 0x206E776F6E6B6E55;
      }

      else
      {
        v43 = 0x8000000190E68C20;
        v41 = 0x1000000000000018;
      }
    }

    else
    {
      v43 = 0xE800000000000000;
      v41 = 0x6575737369206F4ELL;
    }
  }

  else if (v99 > 4u)
  {
    if (v99 == 5)
    {
      v41 = 0x1000000000000017;
      v42 = "Transactions • Others";
      goto LABEL_23;
    }

    v43 = 0xEA0000000000736ELL;
    v41 = 0x6F69746F6D6F7250;
  }

  else
  {
    if (v99 == 3)
    {
      v41 = 0x1000000000000017;
      v42 = "Transactions • Orders";
LABEL_23:
      v43 = (v42 - 32) | 0x8000000000000000;
      goto LABEL_28;
    }

    v43 = 0x8000000190E68BE0;
    v41 = 0x100000000000001ALL;
  }

LABEL_28:
  MEMORY[0x193AF28B0](v41, v43);

  MEMORY[0x193AF28B0](10, 0xE100000000000000);
  if (*(v14 + v13[7]) == 1)
  {
    v101 = 0;
    v102 = 0xE000000000000000;
    sub_190D582B0();

    v101 = 0xD00000000000001BLL;
    v102 = 0x8000000190E68BA0;
    v44 = (v14 + v13[6]);
    v45 = *v44;
    v46 = *(v44 + 1);
    v99 = v45;
    v100 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C80, &qword_190DE1118);
    sub_190D55FD0();
    if (v98)
    {
      if (v98 == 1)
      {
        v47 = 0xE200000000000000;
        v28 = 28494;
      }

      else
      {
        v47 = 0xE300000000000000;
        v28 = 7562585;
      }
    }

    else
    {
      v47 = 0xE800000000000000;
    }

    MEMORY[0x193AF28B0](v28, v47);

    MEMORY[0x193AF28B0](v101, v102);
  }

  v101 = 0;
  v102 = 0xE000000000000000;
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000010, 0x8000000190E68AE0);
  result = [v15 subject];
  if (!result)
  {
    goto LABEL_64;
  }

  v48 = result;
  v49 = [result countryCode];

  if (v49)
  {
    v50 = sub_190D56F10();
    v52 = v51;
  }

  else
  {
    v52 = 0xE200000000000000;
    v50 = 16718;
  }

  MEMORY[0x193AF28B0](v50, v52);

  MEMORY[0x193AF28B0](0x203A444955470A0ALL, 0xE800000000000000);
  result = [v15 guid];
  if (!result)
  {
    goto LABEL_65;
  }

  v53 = result;
  v54 = sub_190D56F10();
  v56 = v55;

  MEMORY[0x193AF28B0](v54, v56);

  MEMORY[0x193AF28B0](0x4720746168430A0ALL, 0xED0000203A444955);
  v57 = *(v14 + v13[9]);
  if (v57)
  {
    v58 = [v57 guid];
    v59 = sub_190D56F10();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0xE000000000000000;
  }

  MEMORY[0x193AF28B0](v59, v61);

  MEMORY[0x193AF28B0](0x6972637365440A0ALL, 0xEF203A6E6F697470);
  v62 = [v15 description];
  v63 = sub_190D56F10();
  v65 = v64;

  MEMORY[0x193AF28B0](v63, v65);

  MEMORY[0x193AF28B0](v101, v102);

  v101 = 0xD00000000000001FLL;
  v102 = 0x8000000190E68B00;
  if (sub_190960B40())
  {
    MEMORY[0x193AF28B0](0x79726F6765746163, 0xE800000000000000);
    v66 = (v14 + v13[6]);
    v67 = *v66;
    v68 = *(v66 + 1);
    v99 = v67;
    v100 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C80, &qword_190DE1118);
    sub_190D55FD0();
    v69 = v94;
    v70 = v95;
    if (v98)
    {
      v72 = v96;
      v71 = v97;
      v76 = sub_190D58760();

      if (v76)
      {
        goto LABEL_54;
      }

      v77 = 0xD000000000000015;
      v78 = 0x8000000190E68B80;
      goto LABEL_53;
    }
  }

  else
  {
    v73 = (v14 + v13[6]);
    v74 = *v73;
    v75 = *(v73 + 1);
    v99 = v74;
    v100 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C80, &qword_190DE1118);
    sub_190D55FD0();
    v69 = v94;
    v70 = v95;
    if (v98)
    {
      v72 = v96;
      v71 = v97;
      v79 = sub_190D58760();

      if (v79)
      {
        goto LABEL_54;
      }

      v78 = 0x8000000190E68B20;
      v77 = 0xD000000000000010;
LABEL_53:
      MEMORY[0x193AF28B0](v77, v78);
      goto LABEL_54;
    }
  }

  v72 = v96;
  v71 = v97;
LABEL_54:
  sub_190D51020();
  if ((*(v72 + 48))(v69, 1, v71) == 1)
  {

    v80 = &qword_1EAD57CB8;
    v81 = &qword_190DE1178;
    return sub_19022EEA4(v69, v80, v81);
  }

  (*(v72 + 32))(v70, v69, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53F60, &qword_190DE1180);
  sub_190D50FD0();
  *(swift_allocObject() + 16) = xmmword_190DD5600;
  sub_190D50FC0();

  sub_190D50FC0();
  sub_190D50FC0();

  sub_190D50FC0();
  sub_190D50FC0();
  sub_190D50FC0();
  sub_190D50FE0();
  v69 = v91;
  sub_190D50FF0();
  v82 = v92;
  v83 = v93;
  if ((*(v92 + 48))(v69, 1, v93) == 1)
  {
    (*(v72 + 8))(v70, v71);
    v80 = &unk_1EAD55F20;
    v81 = &unk_190DD75D0;
    return sub_19022EEA4(v69, v80, v81);
  }

  v84 = v90;
  (*(v82 + 32))(v90, v69, v83);
  v85 = v82;
  v86 = [objc_opt_self() sharedApplication];
  v87 = sub_190D51570();
  sub_19082233C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_190964630();
  v88 = sub_190D56D60();

  [v86 openURL:v87 options:v88 completionHandler:0];

  (*(v85 + 8))(v84, v83);
  return (*(v72 + 8))(v70, v71);
}

void sub_190963678(uint64_t a1@<X8>)
{
  sub_190D549E0();
  v2 = sub_190D555D0();
  v4 = v3;
  v6 = v5;
  sub_190D55DC0();
  v7 = sub_190D55570();
  v9 = v8;
  v11 = v10;

  sub_19081E474(v2, v4, v6 & 1);

  if (sub_190960CC4())
  {
    sub_190D553A0();
  }

  else
  {
    sub_190D553C0();
  }

  v12 = sub_190D55540();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_19081E474(v7, v9, v11 & 1);

  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
}

uint64_t sub_1909637CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57BC0, &qword_190DE1088);
  sub_190233640(&qword_1EAD57BC8, &qword_1EAD57BC0, &qword_190DE1088, MEMORY[0x1E6981F48]);
  return sub_190D554D0();
}

double sub_190963888(uint64_t a1)
{
  sub_190D56FC0();

  return result;
}

unint64_t sub_1909639C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1909647A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1909639F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE700000000000000;
    v9 = 0xEE00737265646E65;
    v10 = 0x536E776F6E6B6E75;
    if (v2 != 1)
    {
      v10 = 0xD000000000000014;
      v9 = 0x8000000190E5ACB0;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x65757373496F6ELL;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000013;
    v4 = 0x8000000190E5AD10;
    if (v2 != 5)
    {
      v3 = 0x6F69746F6D6F7270;
      v4 = 0xEB000000006C616ELL;
    }

    v5 = 0xD000000000000013;
    v6 = 0x8000000190E5ACD0;
    if (v2 != 3)
    {
      v5 = 0xD000000000000016;
      v6 = 0x8000000190E5ACF0;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (*v1 <= 4u)
    {
      v4 = v6;
    }

    *a1 = v7;
    a1[1] = v4;
  }
}

unint64_t sub_190963B4C()
{
  result = qword_1EAD57B98;
  if (!qword_1EAD57B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57B98);
  }

  return result;
}

unint64_t sub_190963BA4()
{
  result = qword_1EAD57BA0;
  if (!qword_1EAD57BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57BA0);
  }

  return result;
}

uint64_t sub_190963BF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE200000000000000;
  v4 = 28526;
  if (v2 != 1)
  {
    v4 = 7562617;
    v3 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65757373496F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE200000000000000;
  v8 = 28526;
  if (*a2 != 1)
  {
    v8 = 7562617;
    v7 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65757373496F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_190D58760();
  }

  return v11 & 1;
}

uint64_t sub_190963CD4()
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

double sub_190963D64(uint64_t a1)
{
  sub_190D56FC0();

  return result;
}

uint64_t sub_190963DE0(uint64_t a1)
{
  sub_190D58870();
  sub_190D56FC0();

  return sub_190D588C0();
}

unint64_t sub_190963E6C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1909647EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_190963E9C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE200000000000000;
  v5 = 28526;
  if (v2 != 1)
  {
    v5 = 7562617;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65757373496F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_190963F40()
{
  result = qword_1EAD57BB8;
  if (!qword_1EAD57BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57BB8);
  }

  return result;
}

unint64_t sub_190963FB8()
{
  result = qword_1EAD57C08;
  if (!qword_1EAD57C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57C00, &qword_190DE10C0);
    sub_190233640(&qword_1EAD57C10, &qword_1EAD57C18, &unk_190DE10C8, MEMORY[0x1E6981870]);
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57C08);
  }

  return result;
}

unint64_t sub_1909640A4()
{
  result = qword_1EAD57C40;
  if (!qword_1EAD57C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57C38, &qword_190DE10E8);
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57C40);
  }

  return result;
}

unint64_t sub_190964164()
{
  result = qword_1EAD57C50;
  if (!qword_1EAD57C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57C48, &unk_190DE10F0);
    sub_19096421C();
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40, &qword_190DDB6B0, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57C50);
  }

  return result;
}

unint64_t sub_19096421C()
{
  result = qword_1EAD612E0;
  if (!qword_1EAD612E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57C58, &unk_190DE8470);
    sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
    sub_190233640(&unk_1EAD52240, &qword_1EAD612F0, &unk_190DD1DF0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD612E0);
  }

  return result;
}

unint64_t sub_190964308()
{
  result = qword_1EAD57C90;
  if (!qword_1EAD57C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57C88, &qword_190DE1120);
    sub_190963BA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57C90);
  }

  return result;
}

unint64_t sub_1909643CC()
{
  result = qword_1EAD57CA8;
  if (!qword_1EAD57CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57CA8);
  }

  return result;
}

uint64_t sub_190964420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRFilteringIssueView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190964484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRFilteringIssueView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909644E8()
{
  type metadata accessor for TTRFilteringIssueView(0);

  return sub_190962710();
}

uint64_t sub_190964550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57C58, &unk_190DE8470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909645C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0, &qword_190DD87B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_190964630()
{
  result = qword_1EAD53638;
  if (!qword_1EAD53638)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD53638);
  }

  return result;
}

unint64_t sub_190964688()
{
  result = qword_1EAD57CC8;
  if (!qword_1EAD57CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57CC0, &qword_190DE1188);
    sub_1909607DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57CC8);
  }

  return result;
}

unint64_t sub_19096474C()
{
  result = qword_1EAD57CE0;
  if (!qword_1EAD57CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57CE0);
  }

  return result;
}

unint64_t sub_1909647A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_190D585F0();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1909647EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_190D585F0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_190964848(uint64_t a1)
{
  result = sub_190D58050();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1909648B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = ((v7 + *(v4 + 80)) & ~*(v4 + 80)) + v7;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
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

        return v6 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v15 = (*(v4 + 48))(a1, v5);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_190964A40(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + *(v6 + 80)) & ~*(v6 + 80)) + v8;
  v11 = a3 >= v9;
  v12 = a3 - v9;
  if (v12 == 0 || !v11)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v10 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v13 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
  if (!HIWORD(v13))
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v15 = ~v9 + a2;
    if (v10 < 4)
    {
      v17 = (v15 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v15 & ~(-1 << (8 * v10));
        v19 = result;
        bzero(result, v10);
        result = v19;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v19 = v18;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v10] = v17;
              }

              else
              {
                *&result[v10] = v17;
              }

              return result;
            }
          }

          else
          {
            *v19 = v15;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v10] = v17;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v10] = 0;
  }

  else if (v5)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v20 = *(v6 + 56);

    return v20();
  }

  return result;
}

id CKAnimatedImageMediaObject.canUseAsBackground.getter()
{
  if ([v0 needsAnimation])
  {
    return 0;
  }

  v2.receiver = v0;
  v2.super_class = CKAnimatedImageMediaObject;
  return objc_msgSendSuper2(&v2, sel_canUseAsBackground);
}

BOOL CKImageMediaObject.canUseAsBackground.getter()
{
  v1 = v0;
  v2 = sub_190D515F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  *&v7 = MEMORY[0x1EEE9AC00](v6 - 8).n128_u64[0];
  v9 = &v12 - v8;
  v10 = [v1 fileURL];
  if (v10)
  {
    sub_190D515B0();

    (*(v3 + 32))(v9, v5, v2);
    (*(v3 + 56))(v9, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v9, 1, 1, v2);
  }

  sub_19084CF50(v9);
  return v10 != 0;
}

uint64_t CKMediaObject.backgroundFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  *&v5 = MEMORY[0x1EEE9AC00](v4 - 8).n128_u64[0];
  v7 = &v15 - v6;
  if ([v2 canUseAsBackground])
  {
    v8 = [v2 fileURL];
    if (v8)
    {
      v9 = v8;
      sub_190D515B0();

      v10 = sub_190D515F0();
      (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    }

    else
    {
      v14 = sub_190D515F0();
      (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    }

    return sub_190844E18(v7, a1);
  }

  else
  {
    v11 = sub_190D515F0();
    v12 = *(*(v11 - 8) + 56);

    return v12(a1, 1, 1, v11);
  }
}

uint64_t sub_1909653FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19096B484(&qword_1EAD57FC0, type metadata accessor for DetailsViewPresentationState, &protocol conformance descriptor for DetailsViewPresentationState);
  sub_190D51C20();

  v4 = OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationPath;
  swift_beginAccess();
  v5 = sub_190D53FB0();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1909654F4(uint64_t a1)
{
  v2 = sub_190D53FB0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_190864F98(v5);
}

void *sub_1909655C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a6;
  v42 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F88, &qword_190DE1470);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v41 = &v41 - v17;
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F90, &qword_190DE1478));
  v19 = MEMORY[0x1E69E7D40];
  *(v18 + *((*MEMORY[0x1E69E7D40] & *v18) + qword_1EAD9DBB8 + 32)) = 0;
  v20 = objc_allocWithZone(type metadata accessor for DetailsViewConfiguration(0));
  v21 = a1;
  v22 = sub_190CEBC38(v21, 0);
  *(v18 + *((*v19 & *v18) + qword_1EAD9DBB8 + 16)) = v21;
  *(v18 + *((*v19 & *v18) + qword_1EAD9DBB8 + 24)) = v22;
  *(v18 + *((*v19 & *v18) + qword_1EAD9DBB8 + 48)) = a2;
  *(v18 + *((*v19 & *v18) + qword_1EAD9DBB8 + 56)) = a3;
  v23 = v42;
  *(v18 + *((*v19 & *v18) + qword_1EAD9DBB8 + 64)) = v42;
  v24 = v22;
  v25 = v21;
  v26 = v24;
  v44 = a2;
  swift_unknownObjectRetain();
  v27 = v45;
  sub_19029063C(a5, v45);
  v43 = a5;
  v28 = a5;
  v29 = v41;
  sub_1909661A8(v26, v28, v27, v12);
  sub_190966758(a3, v15);
  sub_19022EEA4(v12, &qword_1EAD57F88, &qword_190DE1470);
  sub_190966A3C(v23, v29);
  sub_19022EEA4(v15, &qword_1EAD57F88, &qword_190DE1470);
  v30 = MEMORY[0x1E69E7D40];
  sub_19022FD14(v29, v18 + *((*MEMORY[0x1E69E7D40] & *v18) + qword_1EAD9DBB8 + 40), &qword_1EAD57F88, &qword_190DE1470);
  sub_19022FD14(v29, v15, &qword_1EAD57F88, &qword_190DE1470);
  v31 = sub_190D54B60();
  v32 = objc_allocWithZone(CKDetailsControllerAdapter);
  v33 = v31;
  v34 = [v32 initWithConversation:v25 delegate:v33 customDetailsController:v33];
  v35 = *((*v30 & *v33) + qword_1EAD9DBB8 + 32);
  v36 = *(v33 + v35);
  *(v33 + v35) = v34;

  if (v34)
  {
    v46 = &unk_1F06113A0;
    v37 = swift_dynamicCastObjCProtocolConditional();
    if (v37)
    {
      v38 = v34;
    }
  }

  else
  {
    v37 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *(&v41 - 2) = v26;
  *(&v41 - 1) = v37;
  v47 = v26;
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C10();

  sub_19022123C(v43, v45);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_19022EEA4(v29, &qword_1EAD57F88, &qword_190DE1470);

  return v33;
}

void *sub_190965BB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v58 = a5;
  v59 = a6;
  v52 = a4;
  v11 = MEMORY[0x1E69E7D40];
  v12 = ((*MEMORY[0x1E69E7D40] & *v6) + qword_1EAD9DBB8);
  v13 = v12[1];
  v56 = *v12;
  v54 = v13;
  v53 = type metadata accessor for ConversationDetailsView(0, v56, v13, a4);
  v14 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  *&v7[v12[4]] = 0;
  v23 = objc_allocWithZone(type metadata accessor for DetailsViewConfiguration(0));
  v24 = a1;
  v25 = sub_190CEBC38(v24, 0);
  v26 = v11;
  *&v7[*((*v11 & *v7) + qword_1EAD9DBB8 + 16)] = v24;
  *&v7[*((*v11 & *v7) + qword_1EAD9DBB8 + 24)] = v25;
  *&v7[*((*v11 & *v7) + qword_1EAD9DBB8 + 48)] = a2;
  *&v7[*((*v11 & *v7) + qword_1EAD9DBB8 + 56)] = a3;
  v27 = a3;
  v28 = v52;
  *&v7[*((*v26 & *v7) + qword_1EAD9DBB8 + 64)] = v52;
  v29 = v25;
  v51 = v24;
  v30 = v29;
  v57 = a2;
  swift_unknownObjectRetain();
  v32 = v58;
  v31 = v59;
  sub_19029063C(v58, v59);
  v55 = v30;
  sub_1909664A8(v30, v32, v31, v16, v56, v54);
  v33 = v53;
  ConversationDetailsView.visibleSections(_:)(v27, v53, v19);
  v34 = *(v14 + 8);
  v34(v16, v33);
  v35 = v28;
  v36 = v33;
  ConversationDetailsView.participantListBehaviors(_:)(v35, v33, v22);
  v54 = v34;
  v52 = v14 + 8;
  v34(v19, v33);
  v37 = MEMORY[0x1E69E7D40];
  v38 = *(v14 + 16);
  v38(&v7[*((*MEMORY[0x1E69E7D40] & *v7) + qword_1EAD9DBB8 + 40)], v22, v33);
  v56 = v22;
  v38(v19, v22, v33);
  v39 = sub_190D54B60();
  sub_1902188FC(0, qword_1EAD57FC8, off_1E72E4CC0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = v51;
  v42 = v39;
  v43 = [objc_allocWithZone(ObjCClassFromMetadata) initWithConversation:v41 delegate:v42 customDetailsController:v42];

  v44 = *((*v37 & *v42) + qword_1EAD9DBB8 + 32);
  v45 = *(v42 + v44);
  *(v42 + v44) = v43;
  v46 = v43;

  if (v46)
  {
    v60 = &unk_1F06113A0;
    v47 = swift_dynamicCastObjCProtocolConditional();
    if (!v47)
    {
    }
  }

  else
  {
    v47 = 0;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v49 = v55;
  *(&v51 - 2) = v55;
  *(&v51 - 1) = v47;
  v61 = v49;
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C10();

  swift_unknownObjectRelease();
  sub_19022123C(v58, v59);

  swift_unknownObjectRelease();
  v54(v56, v36);

  return v42;
}

double sub_1909661A8@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F58, qword_190DE1448);
  sub_190D55FC0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F88, &qword_190DE1470);
  v8 = (a4 + v7[12]);
  type metadata accessor for DetailsViewConfiguration(0);
  v9 = a1;
  sub_190D55FC0();
  a4[2] = v18;
  v10 = *&v9[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];
  sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  v11 = v10;
  sub_190D55FC0();
  *a4 = v18;
  type metadata accessor for DetailsViewModel(0);
  v12 = swift_allocObject();
  v13 = v9;
  sub_190D51C50();
  sub_190D51C50();
  *(v12 + 16) = v13;
  sub_19096B484(&qword_1EAD56300, type metadata accessor for DetailsViewModel, &unk_190DE6E60);
  sub_190D56340();
  swift_getKeyPath();
  *&v18 = v13;
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  swift_unknownObjectWeakLoadStrong();
  sub_190D55FC0();
  swift_unknownObjectRelease();

  a4[1] = v18;
  *v8 = a2;
  v8[1] = a3;
  v14 = (a4 + v7[13]);
  sub_19029063C(a2, a3);
  sub_190D55FC0();
  *v14 = __PAIR128__(*(&v18 + 1), v13);
  v15 = a4 + v7[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F80, &unk_190DDD1A0);
  sub_190D55FC0();
  sub_19022123C(a2, a3);

  result = *&v13;
  *v15 = v18;
  *(v15 + 2) = v19;
  return result;
}

void sub_1909664A8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  sub_190968244(0);
  v13 = type metadata accessor for ConversationDetailsView(0, a5, a6, v12);
  v14 = (a4 + v13[12]);
  v15 = a1;
  type metadata accessor for DetailsViewConfiguration(0);
  sub_190D55FC0();
  a4[4] = v30;
  a4[5] = v31;
  v16 = *&v15[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];
  sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  sub_190D55FC0();
  *a4 = v30;
  a4[1] = v31;
  type metadata accessor for DetailsViewModel(0);
  v17 = swift_allocObject();
  v18 = v15;
  sub_190D51C50();
  sub_190D51C50();
  *(v17 + 16) = v18;
  sub_19096B484(&qword_1EAD56300, type metadata accessor for DetailsViewModel, &unk_190DE6E60);
  sub_190D56340();
  swift_getKeyPath();
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  v20 = sub_190968244(Strong);
  v22 = v21;
  swift_unknownObjectRelease();

  a4[2] = v20;
  a4[3] = v22;
  *v14 = a2;
  v14[1] = a3;
  v23 = (a4 + v13[13]);
  sub_19029063C(a2, a3);
  sub_190D55FC0();
  *v23 = v18;
  v23[1] = v31;
  v24 = (a4 + v13[14]);
  v25 = sub_190968394(nullsub_10, 0);
  v27 = v26;
  v29 = v28;
  sub_19022123C(a2, a3);

  *v24 = v25;
  v24[1] = v27;
  v24[2] = v29;
}

uint64_t sub_190966758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F98, &qword_190DE1480);
  sub_190D55FD0();
  if (*&v7[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections] == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C10();
  }

  return sub_19022FD14(v2, a2, &qword_1EAD57F88, &qword_190DE1470);
}

uint64_t ConversationDetailsView.visibleSections(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_19096828C();
  v8 = v7;
  if (*&v7[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections] == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C10();
  }

  return (*(*(a2 - 8) + 16))(a3, v3, a2);
}

uint64_t sub_190966A3C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v18 = v4;
  v19 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F98, &qword_190DE1480);
  sub_190D55FD0();
  v6 = v17;
  if (*&v17[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participantListBehaviors] == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v14 = &v13;
    MEMORY[0x1EEE9AC00](KeyPath);
    v18 = v6;
    sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C10();
  }

  v18 = v4;
  v19 = v5;
  sub_190D55FD0();
  v8 = v17;
  if ((((a1 & 4) == 0) ^ v17[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded]))
  {
    v9 = swift_getKeyPath();
    v14 = &v13;
    MEMORY[0x1EEE9AC00](v9);
    v18 = v8;
    sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C10();
  }

  else
  {
    v17[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded] = (a1 & 4) == 0;
  }

  v18 = v4;
  v19 = v5;
  sub_190D55FD0();
  v10 = v17;
  if (((a1 >> 3) & 1 ^ v17[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListCollapsible]))
  {
    v11 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v11);
    v18 = v10;
    sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C10();
  }

  else
  {
    v17[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListCollapsible] = (a1 & 8) >> 3;
  }

  return sub_19022FD14(v16, v15, &qword_1EAD57F88, &qword_190DE1470);
}

uint64_t ConversationDetailsView.participantListBehaviors(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_19096828C();
  v8 = v7;
  if (*&v7[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__participantListBehaviors] == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v17[1] = v17;
    MEMORY[0x1EEE9AC00](KeyPath);
    v18 = v8;
    sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C10();
  }

  v10 = sub_19096828C();
  v11 = v10;
  if ((((a1 & 4) == 0) ^ v10[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded]))
  {
    v12 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v12);
    v18 = v11;
    sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C10();
  }

  else
  {
    v10[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListExpanded] = (a1 & 4) == 0;
  }

  v13 = sub_19096828C();
  v14 = v13;
  if (((a1 >> 3) & 1 ^ v13[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListCollapsible]))
  {
    v15 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v15);
    v18 = v14;
    sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
    sub_190D51C10();
  }

  else
  {
    v13[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__isParticipantListCollapsible] = (a1 & 8) >> 3;
  }

  return (*(*(a2 - 8) + 16))(a3, v3, a2);
}

void *sub_190967168(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_190CAC678(a1);

  sub_1902188FC(0, &qword_1EAD44E40, 0x1E695CD58);
  sub_19096B404();
  v13 = sub_190D57400();

  v14 = [objc_opt_self() conversationForContacts:v13 candidateConversation:0];

  v15 = objc_allocWithZone(v7);
  return sub_190965BB0(v14, a2, a3, a4, a5, a6);
}

void sub_190967294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ConversationDetailsController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EAD9DBB8), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EAD9DBB8 + 8), a4);
  v13.receiver = v4;
  v13.super_class = v5;
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5)
  {
    v8 = [v4 view];
    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = v8;
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor_];
  }

  v11 = [v4 navigationController];
  if (v11)
  {
    v12 = v11;
    [v11 setNavigationBarHidden_];
  }
}

void sub_1909673F8(void *a1)
{
  v4 = a1;
  sub_190967294(v4, v1, v2, v3);
}

void sub_190967440(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_19096BA78(&selRef_conversationDetailsWillDismiss_);
}

void sub_1909674AC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_19096BA78(&selRef_conversationDetailsDidDismiss_);
}

id sub_190967518()
{
  v1 = *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EAD9DBB8 + 48));
  result = [v1 respondsToSelector_];
  if (result)
  {

    return [v1 dismissConversationDetailsWithCompletion_];
  }

  return result;
}

void sub_1909675C0(void *a1)
{
  v1 = a1;
  sub_190967518();
}

double sub_190967608(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + qword_1EAD9DBB8 + 48));
  if ([v6 respondsToSelector_])
  {
    if (a1)
    {
      v9[4] = a1;
      v9[5] = a2;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_190840E6C;
      v9[3] = &block_descriptor_44;
      v8 = _Block_copy(v9);
      swift_unknownObjectRetain();
      sub_19029063C(a1, a2);
    }

    else
    {
      swift_unknownObjectRetain();
      v8 = 0;
    }

    [v6 dismissConversationDetailsWithCompletion_];
    _Block_release(v8);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_190967754(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_190841A8C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = a1;
  sub_190967608(v7, v6);
  sub_19022123C(v7, v6);
}

id sub_190967818()
{
  v0 = sub_19096BB2C();

  return v0;
}

double sub_1909678CC()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *MEMORY[0x1E69E7D40] & *v0;

  v3 = *((*v1 & *v0) + qword_1EAD9DBB8 + 40);
  v5 = type metadata accessor for ConversationDetailsView(0, *(v2 + qword_1EAD9DBB8), *(v2 + qword_1EAD9DBB8 + 8), v4);
  (*(*(v5 - 8) + 8))(&v0[v3], v5);

  swift_unknownObjectRelease();
  return result;
}

id sub_190967A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ConversationDetailsController(0, *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EAD9DBB8), *((*MEMORY[0x1E69E7D40] & *v4) + qword_1EAD9DBB8 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

double sub_190967B08(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40] & *a1;

  v4 = *((*v2 & *a1) + qword_1EAD9DBB8 + 40);
  v6 = type metadata accessor for ConversationDetailsView(0, *(v3 + qword_1EAD9DBB8), *(v3 + qword_1EAD9DBB8 + 8), v5);
  (*(*(v6 - 8) + 8))(&a1[v4], v6);

  swift_unknownObjectRelease();
  return result;
}

void *static ConversationDetailsControllerFactory.conversationDetailsController(conversation:delegate:visibleSections:participantListBehaviors:sectionTrailingView:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_190D58050();
  WitnessTable = swift_getWitnessTable();
  v15 = type metadata accessor for ConversationDetailsController(0, v12, WitnessTable, v14);
  v16 = a1;
  swift_unknownObjectRetain();
  sub_190D50920();
  v17 = objc_allocWithZone(v15);
  return sub_190965BB0(v16, a2, a3, a4, a5, a6);
}

void *sub_190967DAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  swift_unknownObjectRetain();

  return sub_1909655C0(v7, a2, a3, a4, nullsub_10, 0);
}

void *sub_190967E24(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a3;
  swift_unknownObjectRetain();
  v10 = sub_190967DAC(v9, a4, a5, a6);

  swift_unknownObjectRelease();

  return v10;
}

void *static ConversationDetailsControllerFactory.conversationDetailsController(for:delegate:visibleSections:participantListBehaviors:sectionTrailingView:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_190D58050();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ConversationDetailsController(0, v12, WitnessTable, v14);
  sub_190D52690();
  swift_unknownObjectRetain();
  sub_190D50920();
  return sub_190967168(a1, a2, a3, a4, a5, a6);
}

void *sub_190967F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_190D52690();
  sub_190CAC678(v7);

  sub_1902188FC(0, &qword_1EAD44E40, 0x1E695CD58);
  sub_19096B404();
  v8 = sub_190D57400();

  v9 = [objc_opt_self() conversationForContacts:v8 candidateConversation:0];

  swift_unknownObjectRetain();

  return sub_1909655C0(v9, a2, a3, a4, nullsub_10, 0);
}

void *sub_19096806C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1902188FC(0, &qword_1EAD44E40, 0x1E695CD58);
  v9 = sub_190D57180();
  swift_unknownObjectRetain();
  v10 = sub_190967F70(v9, a4, a5, a6);
  swift_unknownObjectRelease();

  return v10;
}

id ConversationDetailsControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConversationDetailsControllerFactory.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ConversationDetailsControllerFactory(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ConversationDetailsControllerFactory.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ConversationDetailsControllerFactory(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_190968244(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F58, qword_190DE1448);
  sub_190D55FC0();
  return v2;
}

uint64_t sub_19096828C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F98, &qword_190DE1480);
  sub_190D55FD0();
  return v1;
}

uint64_t sub_1909682DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F98, &qword_190DE1480);
  sub_190D55FF0();
  return v1;
}

double sub_190968330(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57FA0, &qword_190DE14B0);
  sub_190D55FF0();
  return v2;
}

uint64_t sub_190968394(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57F80, &unk_190DDD1A0);
  sub_190D55FC0();
  return v6;
}

uint64_t sub_190968418(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5A2A0, &qword_190DE14E0);
  sub_190D55FF0();
  return v2;
}

void ConversationDetailsView.init(for:sectionTrailingView:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  v11 = [objc_opt_self() sharedConversationList];
  sub_1902188FC(0, &qword_1EAD44E40, 0x1E695CD58);
  sub_19096B404();
  v12 = sub_190D57400();

  v13 = [v11 conversationForContacts_];

  ConversationDetailsView.init(conversation:sectionTrailingView:)(v13, a2, a3, x8_0, a4, a5);
}

void ConversationDetailsView.init(conversation:sectionTrailingView:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  sub_190968244(0);
  v13 = type metadata accessor for ConversationDetailsView(0, a5, a6, v12);
  v31 = (a4 + v13[12]);
  v14 = objc_allocWithZone(type metadata accessor for DetailsViewConfiguration(0));
  v15 = a1;
  v16 = sub_190CEBC38(v15, 0);
  sub_190D55FC0();
  a4[4] = v32;
  a4[5] = v33;
  v17 = v15;
  sub_1902188FC(0, &qword_1EAD466B0, off_1E72E4B40);
  sub_190D55FC0();
  *a4 = v32;
  a4[1] = v33;
  type metadata accessor for DetailsViewModel(0);
  v18 = swift_allocObject();
  v19 = v16;
  sub_190D51C50();
  sub_190D51C50();
  *(v18 + 16) = v19;
  sub_19096B484(&qword_1EAD56300, type metadata accessor for DetailsViewModel, &unk_190DE6E60);
  sub_190D56340();
  swift_getKeyPath();
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  Strong = swift_unknownObjectWeakLoadStrong();
  v21 = sub_190968244(Strong);
  v23 = v22;
  swift_unknownObjectRelease();

  a4[2] = v21;
  a4[3] = v23;
  *v31 = a2;
  v31[1] = a3;
  v24 = (a4 + v13[13]);
  sub_19029063C(a2, a3);
  sub_190D55FC0();
  *v24 = v19;
  v24[1] = v33;
  v25 = (a4 + v13[14]);
  v26 = sub_190968394(nullsub_10, 0);
  v28 = v27;
  v30 = v29;
  sub_19022123C(a2, a3);

  *v25 = v26;
  v25[1] = v28;
  v25[2] = v30;
}

uint64_t ConversationDetailsView.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57D88, &unk_190DE12A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v40 - v4;
  sub_190D53FB0();
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v61 = type metadata accessor for DetailsViewConversationIdentity(255, v5, v6, v7);
  v44 = v6;
  v62 = _s11ContentViewVMa(255, v5, v6, v8);
  v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57D90, &qword_190DE3B70);
  v45 = v5;
  _s11ContentViewVMa_4(255, v5, v6, v9);
  v64 = sub_190D58050();
  v65 = type metadata accessor for DetailsViewConversationSettings(255, v5, v6, v10);
  v66 = type metadata accessor for DetailsViewMediaSection(255, v5, v6, v11);
  v67 = _s11ContentViewVMa_0(255, v5, v6, v12);
  v68 = _s11ContentViewVMa_7(255, v5, v6, v13);
  _s11ContentViewVMa_5(255, v5, v6, v14);
  v69 = sub_190D58050();
  swift_getTupleTypeMetadata();
  v15 = sub_190D56620();
  WitnessTable = swift_getWitnessTable();
  v61 = MEMORY[0x1E69E73E0];
  v62 = v15;
  v63 = MEMORY[0x1E69E73F0];
  v64 = WitnessTable;
  sub_190D554E0();
  type metadata accessor for DetailsViewList(255);
  sub_190D54200();
  type metadata accessor for DetailsViewSheet(255);
  v17 = sub_190D54200();
  v18 = swift_getWitnessTable();
  v19 = sub_19096B484(&qword_1EAD57D98, type metadata accessor for DetailsViewList, &unk_190DE6E7C);
  v59 = v18;
  v60 = v19;
  v20 = swift_getWitnessTable();
  v21 = sub_19096B484(&qword_1EAD57DA0, type metadata accessor for DetailsViewSheet, &unk_190DFF604);
  v57 = v20;
  v58 = v21;
  v43 = v17;
  v42 = swift_getWitnessTable();
  v22 = sub_190D54230();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v41 = &v40 - v27;
  v28 = sub_1909682DC();
  v30 = v29;
  v32 = v31;
  swift_getKeyPath();
  v61 = v28;
  v62 = v30;
  v63 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57DA8, &qword_190DE12D8);
  sub_190D56210();

  v34 = v54;
  v33 = v55;
  v35 = v56;

  swift_getKeyPath();
  v51 = v34;
  v52 = v33;
  v53 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD57DB0, &qword_190DE70B0);
  sub_190D56210();

  v48 = v45;
  v49 = v44;
  v50 = v40;
  sub_190D54210();
  swift_getWitnessTable();
  v36 = *(v23 + 16);
  v37 = v41;
  v36(v41, v25, v22);
  v38 = *(v23 + 8);
  v38(v25, v22);
  v36(v47, v37, v22);
  return (v38)(v37, v22);
}

id sub_190968DD0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  v4 = *(v3 + OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__presentationState);
  *a2 = v4;

  return v4;
}

uint64_t sub_190968EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v54 = a5;
  type metadata accessor for DetailsViewConversationIdentity(255, a2, a3, a4);
  _s11ContentViewVMa(255, a2, a3, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57D90, &qword_190DE3B70);
  _s11ContentViewVMa_4(255, a2, a3, v9);
  sub_190D58050();
  v67 = type metadata accessor for DetailsViewConversationSettings(255, a2, a3, v10);
  v68 = type metadata accessor for DetailsViewMediaSection(255, a2, a3, v11);
  v69 = _s11ContentViewVMa_0(255, a2, a3, v12);
  v70 = _s11ContentViewVMa_7(255, a2, a3, v13);
  _s11ContentViewVMa_5(255, a2, a3, v14);
  v71 = sub_190D58050();
  swift_getTupleTypeMetadata();
  v15 = sub_190D56620();
  WitnessTable = swift_getWitnessTable();
  v63 = MEMORY[0x1E69E73E0];
  v64 = v15;
  v65 = MEMORY[0x1E69E73F0];
  v66 = WitnessTable;
  v17 = sub_190D554E0();
  v48 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v48 - v18;
  type metadata accessor for DetailsViewList(255);
  v50 = sub_190D54200();
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v55 = &v48 - v20;
  type metadata accessor for DetailsViewSheet(255);
  v21 = sub_190D54200();
  v53 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v49 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v51 = &v48 - v24;
  v56 = a2;
  v57 = a3;
  v58 = a1;
  sub_190D554D0();
  v26 = type metadata accessor for ConversationDetailsView(0, a2, a3, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290, &unk_190DDC390);
  sub_190D56320();
  v27 = v63;
  v28 = sub_190968330(v26);
  v30 = v29;
  v32 = v31;
  v33 = v28;
  v34 = swift_getWitnessTable();
  sub_190A03DEC(v27, v30, v32, v17, v34, v33);

  (*(v48 + 8))(v19, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD56290, &unk_190DDC390);
  sub_190D56320();
  v35 = v63;
  swift_getKeyPath();
  v63 = v35;
  sub_19096B484(&qword_1EAD60490, type metadata accessor for DetailsConfiguredViewModel, &unk_190DE6E60);
  sub_190D51C20();

  v36 = *(v35 + 16);

  v37 = sub_19096B484(&qword_1EAD57D98, type metadata accessor for DetailsViewList, &unk_190DE6E7C);
  v61 = v34;
  v62 = v37;
  v38 = v50;
  v39 = swift_getWitnessTable();
  v40 = v49;
  v41 = v55;
  sub_190C500B8(v36, v38, v39);

  (*(v52 + 8))(v41, v38);
  v42 = sub_19096B484(&qword_1EAD57DA0, type metadata accessor for DetailsViewSheet, &unk_190DFF604);
  v59 = v39;
  v60 = v42;
  swift_getWitnessTable();
  v43 = v53;
  v44 = *(v53 + 16);
  v45 = v51;
  v44(v51, v40, v21);
  v46 = *(v43 + 8);
  v46(v40, v21);
  v44(v54, v45, v21);
  return (v46)(v45, v21);
}

uint64_t sub_190969530@<X0>(void (*a1)(char *, uint64_t)@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v209 = a4;
  v8 = _s11ContentViewVMa_5(0, a2, a3, a5);
  v208 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v177 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v176 = &v175 - v11;
  v215 = v12;
  v217 = sub_190D58050();
  v248 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217);
  v216 = &v175 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v236 = &v175 - v15;
  v239 = _s11ContentViewVMa_7(0, a2, a3, v16);
  v247 = *(v239 - 8);
  MEMORY[0x1EEE9AC00](v239);
  v238 = &v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v233 = &v175 - v19;
  v237 = _s11ContentViewVMa_0(0, a2, a3, v20);
  v246 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v235 = &v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v230 = &v175 - v23;
  v234 = type metadata accessor for DetailsViewMediaSection(0, a2, a3, v24);
  v245 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v232 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v228 = &v175 - v27;
  v244 = type metadata accessor for DetailsViewConversationSettings(0, a2, a3, v28);
  v231 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244);
  v229 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v225 = &v175 - v31;
  v33 = _s11ContentViewVMa_4(0, a2, a3, v32);
  v197 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v194 = (&v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35);
  v193 = &v175 - v36;
  v213 = v37;
  v227 = sub_190D58050();
  v226 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v242 = &v175 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v224 = &v175 - v40;
  v196 = _s11ContentViewVMa_1(0);
  v195 = *(v196 - 1);
  MEMORY[0x1EEE9AC00](v196);
  v192 = (&v175 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57D90, &qword_190DE3B70);
  MEMORY[0x1EEE9AC00](v205);
  v214 = &v175 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v241 = &v175 - v44;
  v223 = _s11ContentViewVMa(0, a2, a3, v45);
  v243 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223);
  v221 = &v175 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v219 = &v175 - v48;
  v222 = a2;
  v50 = type metadata accessor for DetailsViewConversationIdentity(0, a2, a3, v49);
  v51 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v53 = &v175 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v175 - v55;
  v178 = a3;
  v58 = type metadata accessor for ConversationDetailsView(0, a2, a3, v57);
  v240 = a1;
  v218 = sub_19096828C();
  v59 = sub_190968330(v58);
  v211 = v60;
  v210 = v61;
  v62 = v59;
  v63 = sub_190968418(v58);
  v65 = v64;
  v207 = v66;
  v206 = v67;
  v68 = (a1 + v58[12]);
  v70 = *v68;
  v69 = v68[1];
  sub_19029063C(*v68, v69);
  sub_19029063C(v70, v69);
  v174 = a3;
  v71 = v222;
  sub_1908C7548(v218, v211, v210, v63, v65, v207, v206, v70, v53, v62, v69, v222, v174);
  WitnessTable = swift_getWitnessTable();
  v72 = *(v51 + 16);
  v211 = v56;
  v201 = v51 + 16;
  v200 = v72;
  v72(v56, v53, v50);
  v73 = *(v51 + 8);
  v212 = v53;
  v220 = v50;
  v207 = v51 + 8;
  v206 = v73;
  v73(v53, v50);
  v74 = sub_19096828C();
  v75 = v221;
  v210 = v70;
  v76 = v69;
  v77 = v178;
  sub_1908147A8(v74, v70, v69, v71, v178, v221);
  v78 = v223;
  v202 = swift_getWitnessTable();
  v79 = v243;
  v80 = *(v243 + 16);
  v199 = v243 + 16;
  v198 = v80;
  v80(v219, v75, v78);
  v81 = *(v79 + 8);
  v243 = v79 + 8;
  v204 = v81;
  v81(v75, v78);
  v218 = v58;
  v82 = sub_19096828C();
  swift_getKeyPath();
  v261[0] = v82;
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  if (sub_1908553EC())
  {
    swift_getKeyPath();
    v261[0] = v82;
    sub_190D51C20();

    v83 = *&v82[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration__visibleConversationDetailsSections];

    if ((v83 & 2) != 0)
    {
      v84 = sub_19096828C();
      v85 = *&v84[OBJC_IVAR____TtC7ChatKit24DetailsViewConfiguration_conversation];

      v86 = [objc_allocWithZone(_s14ActionHandlersCMa()) init];
      _s9ViewModelCMa_1(0);
      swift_allocObject();
      v87 = sub_19085C90C(v85, v86);
      v88 = v192;
      *v192 = v87;
      v89 = v196;
      v90 = [objc_opt_self() defaultCenter];
      sub_190D579C0();

      sub_19095F7F0(v88, v241);
      v91 = v89;
      v92 = 0;
      v93 = v242;
      v94 = v222;
      v95 = v210;
      v96 = v76;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v92 = 1;
  v93 = v242;
  v94 = v222;
  v95 = v210;
  v96 = v76;
  v91 = v196;
LABEL_6:
  (*(v195 + 56))(v241, v92, 1, v91);
  v191 = objc_opt_self();
  v97 = [v191 sharedFeatureFlags];
  v98 = [v97 isIntroductionsEnabled];

  if (v98)
  {
    v99 = sub_19096828C();
    sub_19029063C(v95, v96);
    v100 = v194;
    sub_190B0595C(v99, v95, v96, v222, v77, v194);
    v101 = v213;
    swift_getWitnessTable();
    v102 = v197;
    v103 = v197[2];
    v104 = v77;
    v105 = v193;
    v103(v193, v100, v101);
    v106 = v102[1];
    v106(v100, v101);
    v103(v100, v105, v101);
    v107 = v105;
    v77 = v104;
    v106(v107, v101);
    v93 = v242;
    v108 = v100;
    v94 = v222;
    (v102[4])(v242, v108, v101);
    v109 = v101;
    v95 = v210;
    (v102[7])(v93, 0, 1, v109);
  }

  else
  {
    (v197[7])(v93, 1, 1, v213);
    swift_getWitnessTable();
  }

  v110 = v226;
  v111 = *(v226 + 16);
  v112 = v227;
  v193 = (v226 + 16);
  v192 = v111;
  (v111)(v224, v93, v227);
  v113 = *(v110 + 8);
  v226 = v110 + 8;
  v210 = v113;
  v113(v93, v112);
  v114 = sub_19096828C();
  sub_19029063C(v95, v96);
  sub_19029063C(v95, v96);
  sub_19029063C(v95, v96);
  v115 = v229;
  sub_190C57778(v114, v95, v96, v94, v77, v229);
  v116 = v244;
  v195 = swift_getWitnessTable();
  v117 = v231;
  v118 = *(v231 + 16);
  v188 = v231 + 16;
  v187 = v118;
  v118(v225, v115, v116);
  v119 = *(v117 + 8);
  v231 = v117 + 8;
  v197 = v119;
  (v119)(v115, v116);
  v120 = sub_19096828C();
  sub_19029063C(v95, v96);
  v121 = v232;
  sub_19099D2D4(v120, v95, v96, v94, v77, v232);
  v122 = v234;
  v190 = swift_getWitnessTable();
  v123 = v245;
  v124 = *(v245 + 16);
  v185 = v245 + 16;
  v184 = v124;
  v124(v228, v121, v122);
  v125 = *(v123 + 8);
  v245 = v123 + 8;
  v196 = v125;
  (v125)(v121, v122);
  v126 = sub_19096828C();
  v127 = v235;
  sub_19092366C(v126, v95, v96, v94, v77, v235);
  v128 = v237;
  v186 = swift_getWitnessTable();
  v129 = v246;
  v182 = *(v246 + 16);
  v180 = v246 + 16;
  v182(v230, v127, v128);
  v130 = *(v129 + 8);
  v246 = v129 + 8;
  v194 = v130;
  (v130)(v127, v128);
  v131 = sub_19096828C();
  v132 = v96;
  v133 = v238;
  sub_190C6E58C(v131, v95, v132, v94, v77, v238);
  v134 = v239;
  v183 = swift_getWitnessTable();
  v135 = v247;
  v181 = *(v247 + 16);
  v179 = v247 + 16;
  v181(v233, v133, v134);
  v136 = *(v135 + 8);
  v247 = v135 + 8;
  v189 = v136;
  v136(v133, v134);
  v137 = [v191 sharedFeatureFlags];
  LODWORD(v135) = [v137 isIntroductionsEnabled];

  if (v135)
  {
    v138 = sub_19096828C();
    sub_19029063C(v95, v132);
    v139 = v177;
    sub_190B74C0C(v138, v95, v132, v94, v77, v177);
    v140 = v215;
    swift_getWitnessTable();
    v141 = v208;
    v142 = *(v208 + 16);
    v143 = v176;
    v142(v176, v139, v140);
    v144 = *(v141 + 8);
    v144(v139, v140);
    v142(v139, v143, v140);
    v144(v143, v140);
    v145 = v216;
    (*(v141 + 32))(v216, v139, v140);
    (*(v141 + 56))(v145, 0, 1, v140);
  }

  else
  {
    v145 = v216;
    (*(v208 + 56))(v216, 1, 1, v215);
    swift_getWitnessTable();
  }

  v146 = v248;
  v222 = *(v248 + 16);
  v147 = v217;
  v222(v236, v145, v217);
  v240 = *(v146 + 8);
  v248 = v146 + 8;
  v240(v145, v147);
  v148 = v212;
  v149 = v220;
  v200(v212, v211, v220);
  v261[0] = v148;
  v150 = v221;
  v151 = v223;
  v198(v221, v219, v223);
  v261[1] = v150;
  v152 = v214;
  sub_19022FD14(v241, v214, &qword_1EAD57D90, &qword_190DE3B70);
  v261[2] = v152;
  v153 = v242;
  v154 = v227;
  v192();
  v261[3] = v153;
  v155 = v229;
  v187(v229, v225, v244);
  v261[4] = v155;
  v156 = v232;
  v157 = v234;
  v184(v232, v228, v234);
  v261[5] = v156;
  v158 = v235;
  v159 = v237;
  v182(v235, v230, v237);
  v261[6] = v158;
  v160 = v238;
  v161 = v239;
  v181(v238, v233, v239);
  v261[7] = v160;
  v222(v145, v236, v147);
  v261[8] = v145;
  v260[0] = v149;
  v260[1] = v151;
  v260[2] = v205;
  v260[3] = v154;
  v162 = v244;
  v260[4] = v244;
  v260[5] = v157;
  v163 = v159;
  v260[6] = v159;
  v260[7] = v161;
  v260[8] = v147;
  v251 = WitnessTable;
  v252 = v202;
  v253 = sub_19096BB40();
  v250 = swift_getWitnessTable();
  v254 = swift_getWitnessTable();
  v255 = v195;
  v256 = v190;
  v257 = v186;
  v258 = v183;
  v249 = swift_getWitnessTable();
  v259 = swift_getWitnessTable();
  sub_190B74A3C(v261, 9uLL, v260);
  v240(v236, v147);
  v164 = v189;
  v189(v233, v161);
  v165 = v163;
  v166 = v194;
  (v194)(v230, v165);
  v167 = v157;
  v168 = v196;
  (v196)(v228, v167);
  v169 = v197;
  (v197)(v225, v162);
  v170 = v210;
  v210(v224, v154);
  sub_19022EEA4(v241, &qword_1EAD57D90, &qword_190DE3B70);
  v171 = v204;
  v204(v219, v151);
  v172 = v206;
  v206(v211, v220);
  v240(v216, v217);
  v164(v238, v239);
  v166(v235, v237);
  v168(v232, v234);
  v169(v229, v244);
  v170(v242, v227);
  sub_19022EEA4(v214, &qword_1EAD57D90, &qword_190DE3B70);
  v171(v221, v223);
  return v172(v212, v220);
}

uint64_t sub_19096AFC0@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

double sub_19096B074(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C10();

  return result;
}

void sub_19096B154(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  *a4 = *(v6 + *a3);
}

void sub_19096B280(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_19096B484(&qword_1EAD52E50, type metadata accessor for DetailsViewConfiguration, &unk_190E04E88);
  sub_190D51C20();

  *a4 = *(v6 + *a3);
}

unint64_t sub_19096B404()
{
  result = qword_1EAD57D80;
  if (!qword_1EAD57D80)
  {
    sub_1902188FC(255, &qword_1EAD44E40, 0x1E695CD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57D80);
  }

  return result;
}

uint64_t sub_19096B484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19096B51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ConversationDetailsView(319, *(a1 + qword_1EAD9DBB8), *(a1 + qword_1EAD9DBB8 + 8), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_19096B630(uint64_t a1)
{
  sub_19096B838(319);
  if (v1 <= 0x3F)
  {
    sub_19096B954(319, &qword_1EAD57F50, &qword_1EAD57F58, qword_190DE1448, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_19096B8A0(319, &unk_1EAD57F60, type metadata accessor for DetailsViewConfiguration, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_19096B8A0(319, &unk_1EAD562C0, type metadata accessor for DetailsViewModel, MEMORY[0x1E6981AA0]);
        if (v4 <= 0x3F)
        {
          sub_19096B954(319, &qword_1EAD44E10, &qword_1EAD55E20, qword_190DDB640, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_19096B904();
            if (v6 <= 0x3F)
            {
              sub_19096B954(319, &qword_1EAD5A0F0, &qword_1EAD57F80, &unk_190DDD1A0, MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_19096B838(uint64_t a1)
{
  if (!qword_1EAD57F40)
  {
    sub_1902188FC(255, &qword_1EAD466B0, off_1E72E4B40);
    v1 = sub_190D56000();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD57F40);
    }
  }
}

void sub_19096B8A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_19096B904()
{
  if (!qword_1EAD57F70)
  {
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD57F70);
    }
  }
}

void sub_19096B954(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_19096B9D4()
{
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EAD9DBB8 + 32)) = 0;
  sub_190D58510();
  __break(1u);
}

id sub_19096BA78(const char **a1)
{
  v3 = *(v1 + *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EAD9DBB8 + 48));
  result = [v3 respondsToSelector_];
  if (result)
  {
    v5 = *a1;

    return [v3 v5];
  }

  return result;
}

unint64_t sub_19096BB40()
{
  result = qword_1EAD57FA8;
  if (!qword_1EAD57FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57D90, &qword_190DE3B70);
    sub_19096B484(&unk_1EAD57FB0, _s11ContentViewVMa_1, &unk_190DE0C74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57FA8);
  }

  return result;
}

uint64_t sub_19096BC94(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19096BD0C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_19096BE10(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

double sub_19096BFF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v22[1] = a3;
  swift_getWitnessTable();
  v7 = sub_190D54E30();
  v22[0] = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - v9;
  v11 = *(a2 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v15 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v15, v4, a2, v14);
  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = (v12 + v16 + *(v8 + 80)) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = *(a2 + 24);
  *(v18 + 16) = *(a2 + 16);
  *(v18 + 24) = v19;
  (*(v11 + 32))(v18 + v16, v15, a2);
  (*(v8 + 32))(v18 + v17, v10, v22[0]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52FE8, &unk_190DDF770);
  sub_190D54200();
  sub_190D54200();
  sub_190D54420();
  sub_190D54200();
  sub_190D54200();
  sub_190D54DA0();
  sub_190D54200();
  swift_getTupleTypeMetadata2();
  sub_190D56620();
  swift_getWitnessTable();
  sub_190D561D0();
  swift_getWitnessTable();
  v23 = sub_190D53E80();
  v24 = v20;
  sub_190D53E90();
  swift_getWitnessTable();
  sub_19096BC74();

  v23 = v25;
  v24 = v26;
  sub_19096BC74();

  return result;
}

uint64_t sub_19096C3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20[0] = a3;
  v20[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52FE8, &unk_190DDF770);
  sub_190D54200();
  sub_190D54200();
  sub_190D54420();
  sub_190D54200();
  type metadata accessor for Punchout(255, a4, a5, v10);
  swift_getWitnessTable();
  sub_190D54E30();
  sub_190D54200();
  sub_190D54DA0();
  sub_190D54200();
  swift_getTupleTypeMetadata2();
  sub_190D56620();
  swift_getWitnessTable();
  v11 = sub_190D561D0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v20 - v16;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a2;
  v20[7] = a1;
  v20[8] = v20[0];
  sub_190D56500();
  sub_190D561C0();
  swift_getWitnessTable();
  sub_19096BC74();
  v18 = *(v12 + 8);
  v18(v14, v11);
  sub_19096BC74();
  return (v18)(v17, v11);
}

uint64_t sub_19096C670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v68 = a3;
  v51 = a1;
  v71 = a6;
  v62 = a5;
  v60 = type metadata accessor for Punchout(255, a4, a5, a4);
  swift_getWitnessTable();
  v63 = sub_190D54E30();
  v64 = sub_190D54200();
  v69 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v59 = &v49 - v9;
  v10 = *(a5 + 16);
  v66 = sub_190D54DA0();
  v67 = sub_190D54200();
  v70 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v61 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v49 - v13;
  v58 = sub_190D565E0();
  v56 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD52FE8, &unk_190DDF770);
  v55 = a4;
  v15 = sub_190D54200();
  v50 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = sub_190D54200();
  v53 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  sub_190D54420();
  v52 = sub_190D54200();
  v74 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v72 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v49 - v23;
  sub_190D55D90();
  v57 = v10;
  sub_190D55880();

  v49 = a2;
  sub_190D53D30();
  sub_190D53D30();
  sub_190D56500();
  v24 = sub_19092967C();
  v81[10] = v10;
  v81[11] = v24;
  WitnessTable = swift_getWitnessTable();
  sub_190D55B70();
  (*(v50 + 8))(v17, v15);
  v26 = v56;
  v27 = v54;
  v28 = v58;
  (*(v56 + 104))(v54, *MEMORY[0x1E6981DC0], v58);
  v81[8] = WitnessTable;
  v81[9] = MEMORY[0x1E697E040];
  v29 = swift_getWitnessTable();
  v30 = v72;
  sub_190D55C60();
  (*(v26 + 8))(v27, v28);
  (*(v53 + 8))(v20, v18);
  v81[6] = v29;
  v81[7] = MEMORY[0x1E697EBB8];
  v31 = v52;
  v54 = swift_getWitnessTable();
  sub_19096BC74();
  v56 = *(v74 + 8);
  v58 = v74 + 8;
  (v56)(v30, v31);
  sub_190D53D30();
  v32 = v51;
  sub_190D53D30();
  sub_190D56500();
  v33 = swift_getWitnessTable();
  v34 = v59;
  sub_190D55B70();
  v75 = v55;
  v76 = v62;
  v77 = v32;
  sub_190D56500();
  v81[4] = v33;
  v81[5] = MEMORY[0x1E697E040];
  v35 = v64;
  v36 = swift_getWitnessTable();
  v37 = v61;
  sub_190D55B10();
  (*(v69 + 8))(v34, v35);
  v38 = swift_getWitnessTable();
  v81[2] = v36;
  v81[3] = v38;
  v39 = v67;
  v40 = swift_getWitnessTable();
  v41 = v65;
  sub_19096BC74();
  v42 = v70;
  v43 = *(v70 + 8);
  v43(v37, v39);
  v44 = v72;
  v45 = v73;
  (*(v74 + 16))(v72, v73, v31);
  v81[0] = v44;
  (*(v42 + 16))(v37, v41, v39);
  v81[1] = v37;
  v80[0] = v31;
  v80[1] = v39;
  v78 = v54;
  v79 = v40;
  sub_190B74A3C(v81, 2uLL, v80);
  v43(v41, v39);
  v46 = v45;
  v47 = v56;
  (v56)(v46, v31);
  v43(v37, v39);
  return v47(v44, v31);
}

uint64_t sub_19096CFD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19096BC74();
  sub_19096BC74();
  return (*(v3 + 8))(v5, a2);
}

uint64_t sub_19096D0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for Punchout(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  swift_getWitnessTable();
  v11 = *(sub_190D54E30() - 8);
  v12 = v3 + ((v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_19096C3B0(a1, v3 + v9, v12, v6, v7, a3);
}

uint64_t sub_19096D200()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582E8, &qword_190DF33A0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - v2;
  type metadata accessor for PinnedUserDefault(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC7ChatKit17PinnedUserDefault__items;
  v7[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582F0, &qword_190DF8B20);
  sub_190D538D0();
  (*(v1 + 32))(v4 + v5, v3, v0);
  sub_190B22EB4();
  return v4;
}

uint64_t DebugMenuView.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0, &qword_190DD87B0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for DebugMenuView(0);
  v3 = a1 + *(result + 20);
  *v3 = sub_19096D200;
  *(v3 + 1) = 0;
  v3[16] = 0;
  return result;
}

uint64_t DebugMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58050, &qword_190DE1598);
  sub_190233640(&qword_1EAD58058, &qword_1EAD58050, &qword_190DE1598, MEMORY[0x1E6981F48]);
  sub_190D56300();
  type metadata accessor for DebugMenuView(0);
  type metadata accessor for PinnedUserDefault(0);
  sub_19097345C();
  v2 = sub_190D53AA0();
  v3 = sub_190D538B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58068, &qword_190DE15A0);
  v5 = (a1 + *(result + 36));
  *v5 = v3;
  v5[1] = v2;
  return result;
}

uint64_t sub_19096D4D0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v69 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580B8, &qword_190DE15E0);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v63 = v52 - v3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582D0, &qword_190DE17B8);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v71 = v52 - v6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58070, &qword_190DE15A8);
  v7 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v9 = v52 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582D8, &qword_190DE17C0);
  v72 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = v52 - v12;
  v59 = a1;
  v82 = a1;
  v78 = sub_190973E18;
  v79 = &v81;
  v80 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58078, &qword_190DE15B0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58080, &qword_190DE15B8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58088, &qword_190DE15C0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59950, &unk_190DE56F0);
  v55 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58090, &qword_190DE15C8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58098, &qword_190DE15D0);
  v58 = MEMORY[0x1E697CD20];
  v18 = sub_190233640(&qword_1EAD580A0, &qword_1EAD58098, &qword_190DE15D0, MEMORY[0x1E697CD20]);
  v83 = v17;
  v84 = v18;
  v57 = MEMORY[0x1E697CFB8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v16;
  v84 = OpaqueTypeConformance2;
  v56 = MEMORY[0x1E697D448];
  v20 = swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD59960, &qword_190DE15D8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580A8, &qword_190DE5700);
  v23 = sub_190233640(&unk_1EAD59970, &qword_1EAD580A8, &qword_190DE5700, MEMORY[0x1E697BEF0]);
  v83 = v22;
  v84 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v83 = v21;
  v84 = v24;
  v54 = swift_getOpaqueTypeConformance2();
  v83 = v14;
  v84 = v15;
  v85 = v20;
  v86 = v54;
  v52[1] = MEMORY[0x1E697D5A0];
  v25 = swift_getOpaqueTypeConformance2();
  v83 = v13;
  v84 = v25;
  v52[0] = MEMORY[0x1E697D068];
  swift_getOpaqueTypeConformance2();
  sub_190D54220();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98, &unk_190DDAED0);
  v26 = MEMORY[0x1E697C1A8];
  sub_190233640(&qword_1EAD580B0, &qword_1EAD58070, &qword_190DE15A8, MEMORY[0x1E697C1A8]);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98, &unk_190DDAED0, MEMORY[0x1E697D658]);
  v27 = v70;
  v28 = v60;
  sub_190D55BE0();
  (*(v7 + 8))(v9, v28);
  v77 = v59;
  v73 = sub_190973E1C;
  v74 = &v76;
  v75 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580C0, &qword_190DE15E8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580C8, &qword_190DE15F0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580D0, &qword_190DE15F8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580D8, &qword_190DE1600);
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580E0, &qword_190DE1608);
  v33 = sub_190233640(&qword_1EAD580E8, &qword_1EAD580E0, &qword_190DE1608, v58);
  v83 = v32;
  v84 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v83 = v31;
  v84 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v83 = v30;
  v84 = v55;
  v85 = v35;
  v86 = v54;
  v36 = swift_getOpaqueTypeConformance2();
  v83 = v29;
  v84 = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v63;
  sub_190D54220();
  sub_190233640(&qword_1EAD580F0, &qword_1EAD580B8, &qword_190DE15E0, v26);
  v38 = v71;
  v39 = v66;
  sub_190D55BE0();
  (*(v68 + 8))(v37, v39);
  v40 = *(v72 + 16);
  v41 = v61;
  v42 = v62;
  v40(v61, v27, v62);
  v43 = v65;
  v44 = *(v65 + 16);
  v45 = v64;
  v46 = v67;
  v44(v64, v38, v67);
  v47 = v69;
  v40(v69, v41, v42);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582E0, &qword_190DE17C8);
  v44(&v47[*(v48 + 48)], v45, v46);
  v49 = *(v43 + 8);
  v49(v71, v46);
  v50 = *(v72 + 8);
  v50(v70, v42);
  v49(v45, v46);
  return (v50)(v41, v42);
}

uint64_t DebugMenuView.internalSettingsTab.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58070, &qword_190DE15A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v28 = v1;
  v24 = sub_1909734B4;
  v25 = &v27;
  v26 = v1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58078, &qword_190DE15B0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58080, &qword_190DE15B8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58088, &qword_190DE15C0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59950, &unk_190DE56F0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58090, &qword_190DE15C8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58098, &qword_190DE15D0);
  v10 = sub_190233640(&qword_1EAD580A0, &qword_1EAD58098, &qword_190DE15D0, MEMORY[0x1E697CD20]);
  v29 = v9;
  v30 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v8;
  v30 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeConformance2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD59960, &qword_190DE15D8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580A8, &qword_190DE5700);
  v15 = sub_190233640(&unk_1EAD59970, &qword_1EAD580A8, &qword_190DE5700, MEMORY[0x1E697BEF0]);
  v29 = v14;
  v30 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v29 = v13;
  v30 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v29 = v6;
  v30 = v7;
  v31 = v12;
  v32 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v29 = v21;
  v30 = v18;
  swift_getOpaqueTypeConformance2();
  sub_190D54220();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98, &unk_190DDAED0);
  sub_190233640(&qword_1EAD580B0, &qword_1EAD58070, &qword_190DE15A8, MEMORY[0x1E697C1A8]);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98, &unk_190DDAED0, MEMORY[0x1E697D658]);
  sub_190D55BE0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DebugMenuView.UITestingTab.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580B8, &qword_190DE15E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v28 = v1;
  v24 = sub_1909734C8;
  v25 = &v27;
  v26 = v1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580C0, &qword_190DE15E8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580C8, &qword_190DE15F0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580D0, &qword_190DE15F8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD59950, &unk_190DE56F0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580D8, &qword_190DE1600);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580E0, &qword_190DE1608);
  v10 = sub_190233640(&qword_1EAD580E8, &qword_1EAD580E0, &qword_190DE1608, MEMORY[0x1E697CD20]);
  v29 = v9;
  v30 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v8;
  v30 = OpaqueTypeConformance2;
  v12 = swift_getOpaqueTypeConformance2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD59960, &qword_190DE15D8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580A8, &qword_190DE5700);
  v15 = sub_190233640(&unk_1EAD59970, &qword_1EAD580A8, &qword_190DE5700, MEMORY[0x1E697BEF0]);
  v29 = v14;
  v30 = v15;
  v16 = swift_getOpaqueTypeConformance2();
  v29 = v13;
  v30 = v16;
  v17 = swift_getOpaqueTypeConformance2();
  v29 = v6;
  v30 = v7;
  v31 = v12;
  v32 = v17;
  v18 = swift_getOpaqueTypeConformance2();
  v29 = v21;
  v30 = v18;
  swift_getOpaqueTypeConformance2();
  sub_190D54220();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98, &unk_190DDAED0);
  sub_190233640(&qword_1EAD580F0, &qword_1EAD580B8, &qword_190DE15E0, MEMORY[0x1E697C1A8]);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98, &unk_190DDAED0, MEMORY[0x1E697D658]);
  sub_190D55BE0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_19096E5D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58190, &qword_190DE16B8);
  sub_190233640(&qword_1EAD58198, &qword_1EAD58190, &qword_190DE16B8, MEMORY[0x1E6981F48]);
  return sub_190D554D0();
}

uint64_t sub_19096E674@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD581A0, &qword_190DE16C0);
  v65 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v40 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD581A8, &qword_190DE16C8);
  v60 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v56 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v40 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD581B0, &qword_190DE16D0);
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v40 - v11;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD581B8, &qword_190DE16D8);
  v58 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v55 = &v40 - v14;
  sub_190D549E0();
  v66 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD581C0, &qword_190DE16E0);
  v15 = MEMORY[0x1E6981F48];
  sub_190233640(&qword_1EAD581C8, &qword_1EAD581C0, &qword_190DE16E0, MEMORY[0x1E6981F48]);
  sub_190D562A0();
  type metadata accessor for PinnedUserDefault(0);
  sub_19097345C();
  v51 = sub_190D54520();
  v46 = v16;
  sub_190D549E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD581D0, &qword_190DE16E8);
  sub_190233640(&qword_1EAD581D8, &qword_1EAD581D0, &qword_190DE16E8, v15);
  sub_190D562A0();
  sub_190D549E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD581E0, &qword_190DE16F0);
  sub_190233640(&qword_1EAD581E8, &qword_1EAD581E0, &qword_190DE16F0, MEMORY[0x1E697C090]);
  sub_190D562A0();
  sub_190D549E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD581F0, &qword_190DE16F8);
  sub_190233640(&qword_1EAD581F8, &qword_1EAD581F0, &qword_190DE16F8, v15);
  sub_190D562A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58200, &qword_190DE1700);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_190DD1DA0;
  v44 = @"showDebugMenu";
  v45 = @"CKInternalInstallShouldHideDebugMenu";
  v49 = v17;
  *(v17 + 32) = @"showDebugMenu";
  *(v17 + 40) = @"CKInternalInstallShouldHideDebugMenu";
  v40 = *(v58 + 16);
  v19 = v52;
  v18 = v53;
  v40(v52, v55, v53);
  v43 = *(v59 + 16);
  v20 = v54;
  v43(v54, v50, v57);
  v42 = *(v60 + 16);
  v21 = v56;
  v22 = v47;
  v42(v56, v61, v47);
  v41 = *(v65 + 16);
  v41(v64, v62, v63);
  v23 = v48;
  v40(v48, v19, v18);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58208, &qword_190DE1708);
  v25 = &v23[v24[12]];
  v26 = v46;
  *v25 = v51;
  v25[1] = v26;
  v27 = v20;
  v28 = v57;
  v43(&v23[v24[16]], v27, v57);
  v29 = v22;
  v42(&v23[v24[20]], v21, v22);
  v30 = v63;
  v41(&v23[v24[24]], v64, v63);
  *&v23[v24[28]] = v49;
  v31 = *(v65 + 8);
  v65 += 8;
  v32 = v44;
  v33 = v45;
  sub_190D50920();
  sub_190D52690();
  v31(v62, v30);
  v34 = *(v60 + 8);
  v34(v61, v29);
  v35 = *(v59 + 8);
  v36 = v28;
  v35(v50, v28);
  v37 = *(v58 + 8);
  v38 = v53;
  v37(v55, v53);

  v31(v64, v63);
  v34(v56, v29);
  v35(v54, v36);

  return (v37)(v52, v38);
}

uint64_t sub_19096EF20()
{
  sub_190D549E0();

  return sub_190D55F30();
}

uint64_t sub_19096EF90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58138, &qword_190DE1688);
  sub_19097391C();
  return sub_190D554D0();
}

uint64_t sub_19096F000()
{
  sub_190D549E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58150, &qword_190DE1690);
  sub_190233640(&qword_1EAD58148, &qword_1EAD58150, &qword_190DE1690, MEMORY[0x1E6981F48]);

  return sub_190D562A0();
}

uint64_t sub_19096F0EC()
{
  sub_190D549E0();

  return sub_190D55F30();
}

uint64_t sub_19096F154@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v49 = a2;
  v52 = a3;
  v4 = sub_190D54870();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58098, &qword_190DE15D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58090, &qword_190DE15C8);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58088, &qword_190DE15C0);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58080, &qword_190DE15B8);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v46 = &v41 - v19;
  a1(v18);
  sub_190D549E0();
  v20 = sub_190233640(&qword_1EAD580A0, &qword_1EAD58098, &qword_190DE15D0, MEMORY[0x1E697CD20]);
  sub_190D558B0();

  (*(v7 + 8))(v9, v6);
  v21 = v43;
  v22 = v44;
  v23 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x1E697C438], v45);
  v54 = v6;
  v55 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v41;
  sub_190D55AE0();
  (*(v22 + 8))(v21, v23);
  (*(v42 + 8))(v12, v10);
  v53 = v49;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59950, &unk_190DE56F0);
  v54 = v10;
  v55 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD59960, &qword_190DE15D8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580A8, &qword_190DE5700);
  v30 = sub_190233640(&unk_1EAD59970, &qword_1EAD580A8, &qword_190DE5700, MEMORY[0x1E697BEF0]);
  v54 = v29;
  v55 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v54 = v28;
  v55 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v34 = v46;
  v33 = v47;
  sub_190D55BF0();
  v35 = v25;
  v36 = v33;
  (*(v48 + 8))(v35, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56010, &unk_190DDC490);
  sub_190D54410();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_190DD1D90;
  sub_190D54400();
  v54 = v36;
  v55 = v26;
  v56 = v27;
  v57 = v32;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v50;
  MEMORY[0x193AF11E0](1, v37, v50, v38);

  return (*(v51 + 8))(v34, v39);
}

uint64_t sub_19096F7C8@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v49 = a2;
  v52 = a3;
  v4 = sub_190D54870();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580E0, &qword_190DE1608);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580D8, &qword_190DE1600);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580D0, &qword_190DE15F8);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v41 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580C8, &qword_190DE15F0);
  v17 = *(v16 - 8);
  v50 = v16;
  v51 = v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v46 = &v41 - v19;
  a1(v18);
  sub_190D549E0();
  v20 = sub_190233640(&qword_1EAD580E8, &qword_1EAD580E0, &qword_190DE1608, MEMORY[0x1E697CD20]);
  sub_190D558B0();

  (*(v7 + 8))(v9, v6);
  v21 = v43;
  v22 = v44;
  v23 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x1E697C438], v45);
  v54 = v6;
  v55 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v41;
  sub_190D55AE0();
  (*(v22 + 8))(v21, v23);
  (*(v42 + 8))(v12, v10);
  v53 = v49;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59950, &unk_190DE56F0);
  v54 = v10;
  v55 = OpaqueTypeConformance2;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD59960, &qword_190DE15D8);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD580A8, &qword_190DE5700);
  v30 = sub_190233640(&unk_1EAD59970, &qword_1EAD580A8, &qword_190DE5700, MEMORY[0x1E697BEF0]);
  v54 = v29;
  v55 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v54 = v28;
  v55 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v34 = v46;
  v33 = v47;
  sub_190D55BF0();
  v35 = v25;
  v36 = v33;
  (*(v48 + 8))(v35, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56010, &unk_190DDC490);
  sub_190D54410();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_190DD1D90;
  sub_190D54400();
  v54 = v36;
  v55 = v26;
  v56 = v27;
  v57 = v32;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v50;
  MEMORY[0x193AF11E0](1, v37, v50, v38);

  return (*(v51 + 8))(v34, v39);
}

uint64_t sub_19096FE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a2;
  v3 = sub_190D54D70();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580A8, &qword_190DE5700);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - v6;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD59960, &qword_190DE15D8);
  v8 = *(v17[0] - 8);
  MEMORY[0x1EEE9AC00](v17[0]);
  v10 = v17 - v9;
  sub_190D54D40();
  v17[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59990, &unk_190DE5720);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0, &qword_190DD7300);
  v12 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
  v18 = v11;
  v19 = v12;
  swift_getOpaqueTypeConformance2();
  sub_190D53AE0();
  v13 = sub_190233640(&unk_1EAD59970, &qword_1EAD580A8, &qword_190DE5700, MEMORY[0x1E697BEF0]);
  MEMORY[0x193AF0690](v7, v4, v13);
  (*(v5 + 8))(v7, v4);
  v18 = v4;
  v19 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v17[0];
  MEMORY[0x193AF0690](v10, v17[0], OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v15);
}

uint64_t sub_190970138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = sub_190D53D90();
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DebugMenuView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0, &qword_190DD7300);
  v9 = *(v8 - 8);
  v17 = v8;
  v18 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  sub_190D549E0();
  sub_1909737EC(a1, &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_190973850(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_190D56070();
  sub_190D53D80();
  sub_190D53E70();
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0, &qword_190DD7300, MEMORY[0x1E697D680]);
  v14 = v17;
  sub_190D558E0();
  (*(v19 + 8))(v4, v21);
  return (*(v18 + 8))(v11, v14);
}

uint64_t sub_190970410(uint64_t a1)
{
  v15 = sub_190D54800();
  v2 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0, &qword_190DD87B0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = sub_190D53D10();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19022FD14(a1, v7, &qword_1EAD598A0, &qword_190DD87B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    sub_190D576B0();
    v12 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  sub_190D53D00();
  return (*(v9 + 8))(v11, v8);
}

void sub_19097068C(_OWORD *a1@<X8>)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58298, &qword_190DE1758);
  MEMORY[0x1EEE9AC00](v95);
  v99 = v86 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v94 = v86 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v98 = v86 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53110, &qword_190DDC6C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v86 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582A0, &qword_190DE1760);
  v96 = *(v13 - 8);
  v97 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v104 = v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v103 = v86 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v93 = v86 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v86 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v86 - v23;
  v25 = objc_opt_self();
  v26 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
  v27 = [v25 mainBundle];
  v28 = [v27 infoDictionary];

  v106 = v24;
  if (v28)
  {
    v29 = sub_190D56D90();

    if (!*MEMORY[0x1E695E4F8])
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v30 = sub_190D56F10();
    if (*(v29 + 16))
    {
      v32 = v25;
      v33 = v9;
      v34 = v12;
      v35 = sub_19022DCEC(v30, v31);
      v37 = v36;

      if (v37)
      {
        sub_19021834C(*(v29 + 56) + 32 * v35, &v110);

        if (swift_dynamicCast())
        {
          v38 = v108;
          v101 = v107;
          v12 = v34;
          v9 = v33;
          v25 = v32;
          v26 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
          goto LABEL_11;
        }
      }

      else
      {
      }

      v12 = v34;
      v9 = v33;
      v25 = v32;
      v26 = &selRef_loadFrequentRepliesLimit_loadImmediately_;
    }

    else
    {
    }
  }

  v38 = 0xE300000000000000;
  v101 = 7368769;
LABEL_11:
  v39 = [v25 v26[205]];
  v40 = [v39 infoDictionary];

  v105 = v21;
  v90 = a1;
  v100 = v25;
  if (!v40)
  {
    goto LABEL_20;
  }

  v41 = sub_190D56D90();

  if (*MEMORY[0x1E695E500])
  {
    v42 = sub_190D56F10();
    if (*(v41 + 16))
    {
      v44 = v12;
      v45 = sub_19022DCEC(v42, v43);
      v47 = v46;

      if (v47)
      {
        sub_19021834C(*(v41 + 56) + 32 * v45, &v110);

        if (swift_dynamicCast())
        {
          v48 = v108;
          v12 = v44;
LABEL_21:
          v86[2] = v38;
          v102 = sub_190D548D0();
          LOBYTE(v113) = 1;
          v89 = v48;
          sub_1909712A8(&v110);
          v118 = *&v111[16];
          v119 = *&v111[32];
          v116 = v110;
          v117 = *v111;
          v121[1] = *v111;
          v121[2] = *&v111[16];
          v121[3] = *&v111[32];
          v121[4] = *&v111[48];
          v120 = *&v111[48];
          v121[0] = v110;
          sub_19022FD14(&v116, &v107, &qword_1EAD582A8, &qword_190DE1768);
          sub_19022EEA4(v121, &qword_1EAD582A8, &qword_190DE1768);
          *&v115[23] = v117;
          *&v115[39] = v118;
          *&v115[55] = v119;
          *&v115[71] = v120;
          *&v115[7] = v116;
          LODWORD(v101) = v113;
          v49 = sub_190D539A0();
          v50 = *(v49 - 8);
          v51 = *(v50 + 56);
          v52 = v50 + 56;
          v51(v12, 1, 1, v49);
          v53 = sub_19022FD14(v12, v9, &qword_1EAD53110, &qword_190DDC6C0);
          v91 = v86;
          MEMORY[0x1EEE9AC00](v53);
          v86[-2] = 0xD00000000000001CLL;
          v86[-1] = 0x8000000190E68F10;
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582B0, &qword_190DE1770);
          v92 = sub_190233640(&qword_1EAD582B8, &qword_1EAD582B0, &qword_190DE1770, MEMORY[0x1E69817F8]);
          sub_190D56020();
          sub_19022EEA4(v12, &qword_1EAD53110, &qword_190DDC6C0);
          v87 = v49;
          v88 = v52;
          v55 = v49;
          v56 = v9;
          v91 = v51;
          v51(v12, 1, 1, v55);
          v57 = sub_19022FD14(v12, v9, &qword_1EAD53110, &qword_190DDC6C0);
          MEMORY[0x1EEE9AC00](v57);
          v86[-2] = 0xD000000000000024;
          v86[-1] = 0x8000000190E68F30;
          v86[1] = v54;
          sub_190D56020();
          sub_19022EEA4(v12, &qword_1EAD53110, &qword_190DDC6C0);
          v113 = 543452741;
          v114 = 0xE400000000000000;
          v58 = [v100 mainBundle];
          v59 = [v58 bundleIdentifier];

          if (v59)
          {

            v60 = sub_190D56F10();
            v62 = v61;

            MEMORY[0x193AF28B0](v60, v62);

            v64 = v113;
            v63 = v114;
            sub_190D53970();
            v91(v12, 0, 1, v87);
            v65 = sub_19022FD14(v12, v56, &qword_1EAD53110, &qword_190DDC6C0);
            MEMORY[0x1EEE9AC00](v65);
            v86[-2] = v64;
            v86[-1] = v63;
            v66 = v93;
            sub_190D56020();

            sub_19022EEA4(v12, &qword_1EAD53110, &qword_190DDC6C0);
            v67 = sub_190D55D40();
            KeyPath = swift_getKeyPath();
            v70 = v96;
            v69 = v97;
            v71 = v94;
            (*(v96 + 32))(v94, v66, v97);
            v72 = (v71 + *(v95 + 36));
            *v72 = KeyPath;
            v72[1] = v67;
            v73 = v98;
            sub_190973D94(v71, v98);
            v74 = *(v70 + 16);
            v75 = v103;
            v74(v103, v106, v69);
            v74(v104, v105, v69);
            v76 = v99;
            sub_19022FD14(v73, v99, &qword_1EAD58298, &qword_190DE1758);
            v107 = v102;
            v108 = 0;
            v109[0] = v101;
            *&v109[1] = *v115;
            *&v109[17] = *&v115[16];
            *&v109[65] = *&v115[64];
            *&v109[49] = *&v115[48];
            *&v109[33] = *&v115[32];
            *&v109[80] = *&v115[79];
            v77 = *v109;
            v78 = v90;
            *v90 = v102;
            v78[1] = v77;
            v79 = *&v109[16];
            v80 = *&v109[32];
            v81 = *&v109[48];
            v82 = *&v109[64];
            *(v78 + 12) = *&v109[80];
            v78[4] = v81;
            v78[5] = v82;
            v78[2] = v79;
            v78[3] = v80;
            v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD582C0, &qword_190DE17A8);
            v74(v78 + v83[12], v75, v69);
            v84 = v104;
            v74(v78 + v83[16], v104, v69);
            sub_19022FD14(v76, v78 + v83[20], &qword_1EAD58298, &qword_190DE1758);
            sub_19022FD14(&v107, &v110, &qword_1EAD582C8, &qword_190DE17B0);
            sub_19022EEA4(v73, &qword_1EAD58298, &qword_190DE1758);
            v85 = *(v70 + 8);
            v85(v105, v69);
            v85(v106, v69);
            sub_19022EEA4(v76, &qword_1EAD58298, &qword_190DE1758);
            v85(v84, v69);
            v85(v103, v69);
            *&v111[33] = *&v115[32];
            *&v111[49] = *&v115[48];
            *v112 = *&v115[64];
            *&v111[1] = *v115;
            v110 = v102;
            v111[0] = v101;
            *&v112[15] = *&v115[79];
            *&v111[17] = *&v115[16];
            sub_19022EEA4(&v110, &qword_1EAD582C8, &qword_190DE17B0);
            return;
          }

          __break(1u);
          goto LABEL_24;
        }
      }

      else
      {
      }

      v12 = v44;
    }

    else
    {
    }

LABEL_20:
    v48 = 0xE300000000000000;
    goto LABEL_21;
  }

LABEL_25:
  __break(1u);
}

double sub_1909712A8@<D0>(uint64_t a5@<X8>)
{
  v6 = sub_190D549D0();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_190D549C0();
  sub_190D549B0();
  sub_190D549A0();
  sub_190D549B0();
  sub_190D549F0();
  v7 = sub_190D555D0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  sub_190D549C0();
  sub_190D549B0();
  sub_190D549A0();
  sub_190D549B0();
  sub_190D549F0();
  v14 = sub_190D555D0();
  v16 = v15;
  v17 = v11 & 1;
  v22 = v11 & 1;
  v19 = v18 & 1;
  *a5 = v7;
  *(a5 + 8) = v9;
  *(a5 + 16) = v17;
  *(a5 + 24) = v13;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v14;
  *(a5 + 56) = v15;
  *(a5 + 64) = v18 & 1;
  *(a5 + 72) = v20;
  sub_19081BE48(v7, v9, v17);
  sub_190D52690();
  sub_19081BE48(v14, v16, v19);
  sub_190D52690();
  sub_19081E474(v14, v16, v19);

  sub_19081E474(v7, v9, v22);

  return result;
}

id sub_1909714D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_190D515F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D515E0();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v8 = result;
      v9 = sub_190D51570();
      sub_190820FDC(MEMORY[0x1E69E7CC0]);
      v10 = sub_190D56D60();

      [v8 openSensitiveURL:v9 withOptions:v10];

      return (*(v4 + 8))(v6, v3);
    }
  }

  __break(1u);
  return result;
}

id sub_1909716EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20, &unk_190DD75D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_190D515F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D515E0();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v8 = result;
      v9 = sub_190D51570();
      sub_190820FDC(MEMORY[0x1E69E7CC0]);
      v10 = sub_190D56D60();

      [v8 openSensitiveURL:v9 withOptions:v10];

      return (*(v4 + 8))(v6, v3);
    }
  }

  __break(1u);
  return result;
}

__n128 sub_19097191C@<Q0>(uint64_t a3@<X8>)
{
  v4 = sub_190D548D0();
  sub_1909719BC(v7);
  *&v6[48] = *&v8[9];
  *&v6[39] = *v8;
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a3 + 17) = *v6;
  *(a3 + 33) = *&v6[16];
  result = *&v6[32];
  *(a3 + 49) = *&v6[32];
  *a3 = v4;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 65) = *&v6[48];
  return result;
}

double sub_1909719BC@<D0>(uint64_t a3@<X8>)
{
  sub_19081E484();
  sub_190D52690();
  v4 = sub_190D555F0();
  v6 = v5;
  v8 = v7 & 1;
  *a3 = 0;
  *(a3 + 8) = 1;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v7 & 1;
  *(a3 + 40) = v9;
  *(a3 + 48) = 0;
  *(a3 + 56) = 1;
  sub_19081BE48(v4, v5, v7 & 1);
  sub_190D52690();
  sub_19081E474(v4, v6, v8);

  return result;
}

uint64_t sub_190971A80()
{
  sub_190D549E0();
  sub_190973B40();
  return sub_190D53F40();
}

uint64_t sub_190971B34@<X0>(char *a1@<X8>)
{
  v55 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58230, &qword_190DE1720);
  v76 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v71 = &v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v60 = &v45 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58238, &qword_190DE1728);
  v75 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v61 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v59 = &v45 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58240, &qword_190DE1730);
  v74 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v45 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58248, &qword_190DE1738);
  v73 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58250, &qword_190DE1740);
  v72 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58258, &qword_190DE1748);
  v19 = *(v18 - 8);
  v57 = v18;
  v58 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v45 - v22;
  sub_190D549E0();
  sub_190973B94();
  v54 = v23;
  sub_190D53F40();
  sub_190D549E0();
  sub_190B2D138(&v77);
  sub_190973BE8();
  v53 = v17;
  sub_190D53F40();
  sub_190D549E0();
  sub_190B2E070(&v77);
  sub_190973C3C();
  v52 = v13;
  sub_190D53F40();
  sub_190D549E0();
  v77 = sub_190B3558C();
  sub_190973C90();
  v24 = v56;
  sub_190D53F40();
  sub_190D549E0();
  sub_190B2FC48(&v77);
  sub_190973CE4();
  v25 = v59;
  sub_190D53F40();
  sub_190D549E0();
  sub_190B30B18(&v77);
  sub_190973D38();
  v26 = v60;
  sub_190D53F40();
  v46 = *(v58 + 16);
  v27 = v57;
  v46(v63, v23, v57);
  v51 = *(v72 + 16);
  v51(v64, v17, v65);
  v50 = *(v73 + 16);
  v50(v66, v13, v67);
  v49 = *(v74 + 16);
  v49(v68, v24, v69);
  v48 = *(v75 + 16);
  v28 = v61;
  v48(v61, v25, v70);
  v47 = *(v76 + 16);
  v29 = v26;
  v30 = v62;
  v47(v71, v29, v62);
  v31 = v55;
  v46(v55, v63, v27);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58290, &qword_190DE1750);
  v51(&v31[v32[12]], v64, v65);
  v50(&v31[v32[16]], v66, v67);
  v33 = v69;
  v49(&v31[v32[20]], v68, v69);
  v34 = v70;
  v48(&v31[v32[24]], v28, v70);
  v47(&v31[v32[28]], v71, v30);
  v35 = *(v76 + 8);
  v76 += 8;
  v35(v60, v30);
  v36 = *(v75 + 8);
  v75 += 8;
  v36(v59, v34);
  v37 = *(v74 + 8);
  v74 += 8;
  v37(v56, v33);
  v38 = *(v73 + 8);
  v73 += 8;
  v39 = v67;
  v38(v52, v67);
  v40 = *(v72 + 8);
  v72 += 8;
  v41 = v65;
  v40(v53, v65);
  v42 = v57;
  v43 = *(v58 + 8);
  v43(v54, v57);
  v35(v71, v62);
  v36(v61, v70);
  v37(v68, v69);
  v38(v66, v39);
  v40(v64, v41);
  return (v43)(v63, v42);
}

void sub_190972520(char *a1@<X8>)
{
  v56 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58210, &qword_190DE1710);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v57 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v55 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v55 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v61 = &v55 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v55 = &v55 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v58 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v68 = &v55 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v67 = &v55 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v66 = &v55 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v65 = &v55 - v29;
  v30 = objc_opt_self();
  v31 = [v30 mainBundle];
  v32 = [v31 bundleIdentifier];

  if (!v32)
  {
    __break(1u);
    goto LABEL_6;
  }

  v33 = sub_190D56F10();
  v35 = v34;

  v71 = 0xD000000000000013;
  v72 = 0x8000000190E68E70;
  MEMORY[0x193AF28B0](v33, v35);

  v36 = [v30 mainBundle];
  v37 = [v36 bundleIdentifier];

  if (!v37)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v38 = sub_190D56F10();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  UserDefaultDomain.init(rawValue:)(v41);
  if (v70 != 6)
  {
    sub_190973AEC();
    sub_19081E484();
    sub_190D53F50();
    v71 = 0xD000000000000012;
    v72 = 0x8000000190E5AD40;
    v70 = 0;
    sub_190D53F50();
    v71 = 0xD000000000000013;
    v72 = 0x8000000190E5ADA0;
    v70 = 3;
    sub_190D53F50();
    v71 = 0xD000000000000010;
    v72 = 0x8000000190E5ADC0;
    v70 = 4;
    sub_190D53F50();
    v71 = 0xD000000000000019;
    v72 = 0x8000000190E5ADE0;
    v70 = 5;
    v42 = v58;
    sub_190D53F50();
    v71 = 0x1000000000000019;
    v72 = 0x8000000190E68E90;
    v70 = 2;
    v43 = v59;
    sub_190D53F50();
    v71 = 0x100000000000001ALL;
    v72 = 0x8000000190E68EB0;
    v70 = 1;
    v44 = v55;
    sub_190D53F50();
    v45 = *(v2 + 16);
    v46 = v60;
    v45(v60, v65, v1);
    v47 = v61;
    v45(v61, v66, v1);
    v45(v69, v67, v1);
    v48 = v62;
    v45(v62, v68, v1);
    v45(v63, v42, v1);
    v45(v64, v43, v1);
    v49 = v57;
    v45(v57, v44, v1);
    v50 = v56;
    v45(v56, v46, v1);
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58220, &qword_190DE1718);
    v45(&v50[v51[12]], v47, v1);
    v45(&v50[v51[16]], v69, v1);
    v45(&v50[v51[20]], v48, v1);
    v52 = v63;
    v45(&v50[v51[24]], v63, v1);
    v53 = v64;
    v45(&v50[v51[28]], v64, v1);
    v45(&v50[v51[32]], v49, v1);
    v54 = *(v2 + 8);
    v54(v44, v1);
    v54(v59, v1);
    v54(v58, v1);
    v54(v68, v1);
    v54(v67, v1);
    v54(v66, v1);
    v54(v65, v1);
    v54(v49, v1);
    v54(v53, v1);
    v54(v52, v1);
    v54(v62, v1);
    v54(v69, v1);
    v54(v61, v1);
    v54(v60, v1);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_190972D60@<X0>(char *a1@<X8>)
{
  v42 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58158, &qword_190DE1698);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v30 - v3;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58160, &qword_190DE16A0);
  v35 = *(v39 - 8);
  v4 = v35;
  MEMORY[0x1EEE9AC00](v39);
  v44 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58168, &qword_190DE16A8);
  v38 = *(v43 - 8);
  v9 = v38;
  MEMORY[0x1EEE9AC00](v43);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  sub_190D549E0();
  sub_190BBF534(v47);
  sub_1909739E0();
  v37 = v14;
  sub_190D53F40();
  sub_190D549E0();
  sub_190C0C77C(v47);
  sub_190973A34();
  v34 = v8;
  sub_190D53F40();
  sub_190D549E0();
  sub_19084A120(v47);
  sub_190973A88();
  v15 = v45;
  sub_190D53F40();
  v31 = *(v9 + 16);
  v36 = v11;
  v16 = v43;
  v31(v11, v14, v43);
  v33 = *(v4 + 16);
  v17 = v44;
  v18 = v39;
  v33(v44, v8, v39);
  v32 = *(v46 + 16);
  v19 = v40;
  v20 = v15;
  v21 = v41;
  v32(v40, v20, v41);
  v22 = v42;
  v31(v42, v11, v16);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58188, &qword_190DE16B0);
  v24 = v18;
  v33(&v22[*(v23 + 48)], v17, v18);
  v32(&v22[*(v23 + 64)], v19, v21);
  v25 = *(v46 + 8);
  v25(v45, v21);
  v26 = *(v35 + 8);
  v26(v34, v24);
  v27 = *(v38 + 8);
  v28 = v43;
  v27(v37, v43);
  v25(v19, v21);
  v26(v44, v24);
  return (v27)(v36, v28);
}

uint64_t sub_1909732C0@<X0>(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58050, &qword_190DE1598);
  sub_190233640(&qword_1EAD58058, &qword_1EAD58050, &qword_190DE1598, MEMORY[0x1E6981F48]);
  sub_190D56300();
  type metadata accessor for PinnedUserDefault(0);
  sub_19097345C();
  v3 = sub_190D53AA0();
  v4 = sub_190D538B0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58068, &qword_190DE15A0);
  v6 = (a2 + *(result + 36));
  *v6 = v4;
  v6[1] = v3;
  return result;
}

uint64_t type metadata accessor for DebugMenuView(uint64_t a1)
{
  result = qword_1EAD580F8;
  if (!qword_1EAD580F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_19097345C()
{
  result = qword_1EAD58060;
  if (!qword_1EAD58060)
  {
    type metadata accessor for PinnedUserDefault(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58060);
  }

  return result;
}

void sub_190973520(uint64_t a1)
{
  sub_1909606CC(319);
  if (v1 <= 0x3F)
  {
    sub_1909735A4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1909735A4(uint64_t a1)
{
  if (!qword_1EAD58108)
  {
    type metadata accessor for PinnedUserDefault(255);
    sub_19097345C();
    v1 = sub_190D53AC0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAD58108);
    }
  }
}

unint64_t sub_190973608()
{
  result = qword_1EAD58110;
  if (!qword_1EAD58110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58068, &qword_190DE15A0);
    sub_190233640(&qword_1EAD58118, &qword_1EAD58120, &qword_190DE1678, MEMORY[0x1E697D700]);
    sub_190233640(&qword_1EAD58128, &qword_1EAD58130, &qword_190DE1680, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58110);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE7tabItemyQrqd__yXEAaBRd__lFQOyAA15NavigationStackVyAA0F4PathVAcAE17toolbarBackground_3forQrAA10VisibilityO_AA16ToolbarPlacementVdtFQOyAcAE0I07contentQrqd__yXE_tAA0M7ContentRd__lFQOyAcAE29navigationBarTitleDisplayModeyQrAA0frE0V0stU0OFQOyAcAE0qS0yQrAA18LocalizedStringKeyVFQOyAA4ListVys5NeverOAA05TupleC0VyAA7SectionVyAA4TextVA3_yAA6HStackVyA3_yA7__AA6SpacerVA7_tGG_AA6ButtonVyA9_yA3_yA11__A7_A11_tGGGA18_AA08ModifiedP0VyA18_AA012_EnvironmentX15WritingModifierVyAA5ColorVSgGGtGAA05EmptyC0VG_7ChatKit014PinnedDefaultsC0VA5_yA7_A3_yAA0F4LinkVyA7_A32_012Conversationy8DefaultsC0VG_A36_yA7_A32_05Entryc8DefaultsC0VGA36_yA7_A32_018OnboardingDefaultsC0VGA36_yA7_A32_018TranscriptDefaultsC0VGA36_yA7_A32_021SendAnimationDefaultsC0VGA36_yA7_A32_13TickerHUDViewVGtGA30_GA5_yA7_A36_yA7_A32_015FeatureDefaultsC0VGA30_GA5_yA7_A3_yA36_yA7_A32_013FoundDefaultsC0VG_A63_A63_A63_A63_A63_A63_tGA30_GA32_08SettingsC0VtGG_Qo__Qo__AA0mP7BuilderV10buildBlockyQrxAaQRzlFZQOy_A73_A74_yQrxAaQRzlFZQOy_AA0mE0VyytAcAE16keyboardShortcut_9modifiersQrAA0X10EquivalentV_AA14EventModifiersVtFQOyA15_yA7_G_Qo_GQo_Qo_Qo__Qo_G_AA5LabelVyA7_AA5ImageVGQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD55B98, &unk_190DDAED0);
  sub_190233640(a4, a2, a3, MEMORY[0x1E697C1A8]);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98, &unk_190DDAED0, MEMORY[0x1E697D658]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1909737EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190973850(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMenuView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909738B4()
{
  v1 = *(type metadata accessor for DebugMenuView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_190970410(v2);
}

unint64_t sub_19097391C()
{
  result = qword_1EAD58140;
  if (!qword_1EAD58140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD58138, &qword_190DE1688);
    sub_190233640(&qword_1EAD58148, &qword_1EAD58150, &qword_190DE1690, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58140);
  }

  return result;
}

unint64_t sub_1909739E0()
{
  result = qword_1EAD58170;
  if (!qword_1EAD58170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58170);
  }

  return result;
}

unint64_t sub_190973A34()
{
  result = qword_1EAD58178;
  if (!qword_1EAD58178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58178);
  }

  return result;
}

unint64_t sub_190973A88()
{
  result = qword_1EAD58180;
  if (!qword_1EAD58180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58180);
  }

  return result;
}

unint64_t sub_190973AEC()
{
  result = qword_1EAD58218;
  if (!qword_1EAD58218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58218);
  }

  return result;
}

unint64_t sub_190973B40()
{
  result = qword_1EAD58228;
  if (!qword_1EAD58228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58228);
  }

  return result;
}

unint64_t sub_190973B94()
{
  result = qword_1EAD58260;
  if (!qword_1EAD58260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58260);
  }

  return result;
}

unint64_t sub_190973BE8()
{
  result = qword_1EAD58268;
  if (!qword_1EAD58268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58268);
  }

  return result;
}

unint64_t sub_190973C3C()
{
  result = qword_1EAD58270;
  if (!qword_1EAD58270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58270);
  }

  return result;
}

unint64_t sub_190973C90()
{
  result = qword_1EAD58278;
  if (!qword_1EAD58278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58278);
  }

  return result;
}

unint64_t sub_190973CE4()
{
  result = qword_1EAD58280;
  if (!qword_1EAD58280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58280);
  }

  return result;
}

unint64_t sub_190973D38()
{
  result = qword_1EAD58288;
  if (!qword_1EAD58288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD58288);
  }

  return result;
}

uint64_t sub_190973D94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD58298, &qword_190DE1758);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s30EnableEnhancedProtectionButtonVMa(uint64_t a1)
{
  result = qword_1EAD582F8;
  if (!qword_1EAD582F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190973E94(uint64_t a1)
{
  result = _s9ViewModelCMa_5(319);
  if (v2 <= 0x3F)
  {
    result = _s10StyleGuideVMa_0(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

_BYTE *sub_190973F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = CKFrameworkBundle(a1);
  if (result)
  {
    v4 = result;
    sub_190D51210();

    sub_19081E484();
    v5 = sub_190D555F0();
    v7 = v6;
    v9 = v8;
    sub_190D55360();
    v10 = sub_190D555B0();
    v12 = v11;
    v14 = v13;

    sub_19081E474(v5, v7, v9 & 1);

    _s30EnableEnhancedProtectionButtonVMa(0);
    _s10StyleGuideVMa_0(0);
    v15 = sub_190D55570();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    sub_19081E474(v10, v12, v14 & 1);

    KeyPath = swift_getKeyPath();
    result = swift_allocObject();
    result[16] = 0;
    *a2 = v15;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19 & 1;
    *(a2 + 24) = v21;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = sub_1908D9D28;
    *(a2 + 48) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190974118(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_190974254(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1909742B8(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD56108, &unk_190DE1840);
  sub_1908D9C18();
  return sub_190D56030();
}

uint64_t sub_190974254(uint64_t a1, uint64_t a2)
{
  v4 = _s30EnableEnhancedProtectionButtonVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909742B8(uint64_t a1, uint64_t a2)
{
  v4 = _s30EnableEnhancedProtectionButtonVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_19097431C()
{
  _s30EnableEnhancedProtectionButtonVMa(0);
  v0 = objc_opt_self();

  return [v0 openCKVSettings];
}

void sub_190974364(char a1, uint64_t a2)
{
  if (a2 < 0)
  {
    goto LABEL_32;
  }

  v3 = v2;
  if (a2)
  {
    v5 = sub_190A92A50(a2, 0);
    if (sub_190A92C9C(v28, (v5 + 4), a2, 0, a2) != a2)
    {
      goto LABEL_33;
    }

    v6 = v5[2];
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_26:

LABEL_28:

    return;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_5:
  v7 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
  swift_beginAccess();
  v8 = 0;
  while (v8 < v5[2])
  {
    v9 = v5[v8 + 4];
    v10 = *(v3 + v7);
    if (v10[2])
    {
      sub_190875CC8(v5[v8 + 4]);
      if (v11)
      {
        goto LABEL_21;
      }
    }

    _s17SuggestionContextCMa();
    v12 = swift_allocObject();
    *(v12 + 16) = 768;
    *(v12 + 24) = MEMORY[0x1E69E7CC8];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    v14 = sub_190875CC8(v9);
    v16 = v10[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_30;
    }

    v20 = v15;
    if (v10[3] < v19)
    {
      sub_190B639E4(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_190875CC8(v9);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_34;
      }

LABEL_15:
      if ((v20 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v22 = v14;
    sub_190B68694();
    v14 = v22;
    if ((v20 & 1) == 0)
    {
LABEL_18:
      v10[(v14 >> 6) + 8] |= 1 << v14;
      *(v10[6] + 8 * v14) = v9;
      *(v10[7] + 8 * v14) = v12;
      v23 = v10[2];
      v18 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v18)
      {
        goto LABEL_31;
      }

      v10[2] = v24;
      goto LABEL_20;
    }

LABEL_16:
    *(v10[7] + 8 * v14) = v12;

LABEL_20:
    *(v3 + v7) = v10;
    swift_endAccess();
LABEL_21:
    if (v10[2])
    {
      v25 = sub_190875CC8(v9);
      if (v26)
      {
        *(*(v10[7] + 8 * v25) + 16) = a1;
      }
    }

    ++v8;
    sub_19097472C(v9);
    if (v6 == v8)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_190D587C0();
  __break(1u);
}

void sub_19097462C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  sub_190974A70(a4);
  v8 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
  swift_beginAccess();
  v9 = *(v5 + v8);
  if (*(v9 + 16))
  {
    v10 = sub_190875CC8(a4);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      sub_190D50920();
      v13 = sub_190D58910();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *(v12 + 24);
      *(v12 + 24) = 0x8000000000000000;
      sub_190C1C6A0(a3 & 1, isUniquelyReferenced_nonNull_native, v13);
      *(v12 + 24) = v15;
      swift_endAccess();
    }
  }
}

void sub_19097472C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_190D518E0();
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_190D518A0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s19LatencyEventPayloadVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
  swift_beginAccess();
  v15 = *(v2 + v14);
  if (*(v15 + 16))
  {
    v16 = sub_190875CC8(a1);
    if (v17)
    {
      v39 = a1;
      v18 = *(*(v15 + 56) + 8 * v16);
      (*(v8 + 16))(v10, v2 + OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_sessionID, v7);
      sub_190D50920();
      v19 = sub_190BD8FD0();
      v20 = *(v18 + 16);
      v36 = v19;
      v37 = v20;
      sub_190BD8C0C(v6);
      v38 = *(v18 + 17);
      swift_beginAccess();
      v21 = *(v18 + 24);
      if (*(v21 + 16) && (v22 = sub_1908789E4(), (v23 & 1) != 0))
      {
        v35 = 0;
        v34 = *(*(v21 + 56) + 8 * v22);
      }

      else
      {
        v34 = 0;
        v35 = 1;
      }

      v24 = *(v18 + 24);
      if (*(v24 + 16))
      {
        v25 = 1;
        v26 = sub_1908789E4();
        if (v27)
        {
          v25 = 0;
          v28 = *(*(v24 + 56) + 8 * v26);
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
        v25 = 1;
      }

      (*(v8 + 32))(v13, v10, v7);
      v29 = v40;
      *&v13[v11[5]] = v39;
      v30 = v37;
      v13[v11[6]] = v36;
      v13[v11[7]] = v30;
      (*(v29 + 32))(&v13[v11[8]], v6, v4);
      v13[v11[9]] = v38;
      v31 = &v13[v11[10]];
      *v31 = v34;
      v31[8] = v35;
      v32 = &v13[v11[11]];
      *v32 = v28;
      v32[8] = v25;
      sub_190974D54(v13);

      sub_190974E80(v13);
    }
  }
}

unint64_t sub_190974A70(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_suggestionContext;
  swift_beginAccess();
  if (!*(*(v1 + v3) + 16) || (result = sub_190875CC8(a1), (v5 & 1) == 0))
  {
    _s17SuggestionContextCMa();
    v6 = swift_allocObject();
    *(v6 + 16) = 768;
    *(v6 + 24) = sub_190822154(MEMORY[0x1E69E7CC0]);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v1 + v3);
    *(v1 + v3) = 0x8000000000000000;
    sub_190C1C57C(v6, a1, isUniquelyReferenced_nonNull_native);
    *(v1 + v3) = v8;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_190974B5C()
{
  v1 = OBJC_IVAR____TtCVVV7ChatKit7Gallery9Analytics15ImagePlayground7Context_sessionID;
  v2 = sub_190D518A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s7ContextCMa(uint64_t a1)
{
  result = qword_1EAD58318;
  if (!qword_1EAD58318)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190974C5C(uint64_t a1)
{
  result = sub_190D518A0();
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

uint64_t sub_190974CF8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_190974D54(uint64_t a1)
{
  v9[3] = _s19LatencyEventPayloadVMa(0);
  v9[4] = &off_1F041B0F0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  sub_190974EDC(a1, boxed_opaque_existential_1);
  v3 = sub_190D56ED0();
  sub_19083B854(v9, v8);
  v4 = swift_allocObject();
  sub_19029058C(v8, v4 + 16);
  v7[4] = sub_190897A2C;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_190A928AC;
  v7[3] = &block_descriptor_45;
  v5 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v5);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t sub_190974E80(uint64_t a1)
{
  v2 = _s19LatencyEventPayloadVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190974EDC(uint64_t a1, uint64_t a2)
{
  v4 = _s19LatencyEventPayloadVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190974F40(uint64_t a1, unint64_t a2)
{
  v4 = sub_190D50EF0();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v18 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_190D582A0();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v20[0] = a1;
          v20[1] = v19;
          v12 = v20 + v9;
        }

        else
        {
          v11 = v18;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_190D58340();
          }

          v12 = (v11 + v9);
        }

        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(*v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v14 = 3;
          }

          else
          {
            v14 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

LABEL_15:
      sub_190D50ED0();
      v15 = sub_190D50EE0();
      (*v10)(v7, v4);
      if ((v15 & 1) == 0)
      {
        v9 += v14;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  v15 = 0;
  return v15 & 1;
}

id EntryRichTextViewEffectsPickerAssistant.__allocating_init(textView:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes] = 0;
  swift_unknownObjectWeakAssign();
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id EntryRichTextViewEffectsPickerAssistant.init(textView:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EntryRichTextViewEffectsPickerAssistant();
  v3 = objc_msgSendSuper2(&v5, sel_init);

  return v3;
}

uint64_t sub_1909752BC()
{
  v1 = OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_190975354(char a1)
{
  v3 = OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void sub_190975404()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_9;
  }

  v1 = Strong;
  v2 = sub_1909754B0();

  if (!v2)
  {
    return;
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = v3;
  [v3 setSelectedTextRange_];
}

id sub_1909754B0()
{
  v1 = v0;
  v2 = sub_190D50EF0();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v0 selectedTextRange];
  if (result)
  {
    v8 = result;
    if (![result isEmpty])
    {
      goto LABEL_19;
    }

    v9 = [v8 start];
    v10 = [v0 positionFromPosition:v9 offset:-1];

    if (!v10)
    {
      v10 = [v8 start];
    }

    v11 = [v8 start];
    v12 = [v1 positionFromPosition:v11 offset:1];

    if (!v12)
    {
      v12 = [v8 start];
    }

    v13 = [v1 textRangeFromPosition:v10 toPosition:v12];

    if (v13)
    {
      v14 = [v1 textInRange_];
      if (!v14)
      {
        goto LABEL_20;
      }

      v15 = v14;
      v16 = sub_190D56F10();
      v18 = v17;

      v48 = v16;
      v49 = v18;
      sub_190D50ED0();
      v19 = sub_19081E484();
      v20 = sub_190D580B0();
      v22 = v21;
      v47 = *(v3 + 8);
      v47(v6, v2);

      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v23 && ((v24 = [v1 tokenizer], v25 = objc_msgSend(v8, sel_start), v26 = objc_msgSend(v24, sel_isPosition_withinTextUnit_inDirection_, v25, 2, sub_190D57770()), v25, swift_unknownObjectRelease(), (v26 & 1) != 0) || (v27 = objc_msgSend(v1, sel_tokenizer), v28 = objc_msgSend(v8, sel_start), v29 = objc_msgSend(v27, sel_isPosition_withinTextUnit_inDirection_, v28, 2, sub_190D57770()), swift_unknownObjectRelease(), v28, v29)) && ((v30 = objc_msgSend(v1, sel_tokenizer), v31 = objc_msgSend(v8, sel_end), v32 = objc_msgSend(v30, sel_rangeEnclosingPosition_withGranularity_inDirection_, v31, 2, sub_190D57770()), v31, swift_unknownObjectRelease(), v32) || (v33 = objc_msgSend(v1, sel_tokenizer), v34 = objc_msgSend(v8, sel_start), v32 = objc_msgSend(v33, sel_rangeEnclosingPosition_withGranularity_inDirection_, v34, 2, sub_190D57770()), v34, swift_unknownObjectRelease(), v32)))
      {
        v35 = [v1 textInRange_];
        if (v35)
        {
          v36 = v35;
          v37 = sub_190D56F10();
          v39 = v38;

          v48 = v37;
          v49 = v39;
          sub_190D50ED0();
          sub_190D580B0();
          v47(v6, v2);

          v40 = [v32 start];
          v41 = sub_190D56ED0();

          v42 = [v41 length];

          v43 = [v1 positionFromPosition:v40 offset:v42];
          if (v43)
          {
            v44 = [v32 start];
            v45 = [v1 textRangeFromPosition:v44 toPosition:v43];

            return v45;
          }
        }
      }

      else
      {
LABEL_20:
      }
    }

    else
    {
LABEL_19:
    }

    return 0;
  }

  return result;
}

void sub_190975ACC()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = Strong;
  v1 = sub_190977138();
  if ((v3 & 1) == 0)
  {
    v4 = sub_190977530(v1, v2);

    if (!v4)
    {
      return;
    }

    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      [v5 setSelectedTextRange_];

      goto LABEL_6;
    }

LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
}

void sub_190975C60(__CFString *a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_shouldSkipNextAdjustingOfTypingAttributes;
  swift_beginAccess();
  if (*(v5 + v10))
  {
    goto LABEL_13;
  }

  v80 = OBJC_IVAR___CKEntryRichTextViewEffectsPickerAssistant_textView;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_90;
  }

  v12 = Strong;
  v13 = [Strong typingAttributes];

  type metadata accessor for Key(0);
  sub_19082B370();
  v14 = sub_190D56D90();

  LOBYTE(v13) = sub_1909764E0(v14);

  if ((v13 & 1) == 0)
  {
    goto LABEL_13;
  }

  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
LABEL_91:
    __break(1u);
LABEL_92:

    __break(1u);
    goto LABEL_93;
  }

  v16 = v15;
  v17 = [v15 text];

  if (!v17)
  {
LABEL_13:
    *(v5 + v10) = 0;
    return;
  }

  v18 = sub_190D56F10();
  v20 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v20 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {

    goto LABEL_12;
  }

  v78 = a1;
  v79 = a2;
  v21 = v18;
  v22 = v19;
  a1 = v17;
  v77 = a3;
  v23 = sub_190D57580();
  if (v25)
  {

LABEL_12:
    goto LABEL_13;
  }

  v75 = v23;
  v76 = v24;
  v26 = swift_unknownObjectWeakLoadStrong();
  if (!v26)
  {
    goto LABEL_92;
  }

  v27 = v26;
  v28 = [v26 typingAttributes];

  v29 = sub_190D56D90();
  LOBYTE(v28) = sub_1909765E0(v29);

  if (v28)
  {

    v30 = swift_unknownObjectWeakLoadStrong();
    if (v30)
    {
      v31 = v30;
      v32 = [v30 typingAttributes];

      v33 = sub_190D56D90();
      sub_190976B94(v33);
      v34 = swift_unknownObjectWeakLoadStrong();
      if (v34)
      {
        v35 = v34;

LABEL_83:
        v74 = sub_190D56D60();

        [v35 setTypingAttributes_];

        return;
      }

      goto LABEL_94;
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v36.length = MEMORY[0x193AF2930](v21, v22);
  v37 = *MEMORY[0x1E695E480];
  if ((a5 & 1) == 0)
  {
    v42 = *MEMORY[0x1E695E480];
    v36.location = 0;
    v43 = CFStringTokenizerCreate(v37, a1, v36, 4uLL, 0);

    a1 = v78;
    if (CFStringTokenizerAdvanceToNextToken(v43))
    {
      v44 = 0;
      while (1)
      {
        CFStringTokenizerGetCurrentTokenRange(v43);
        v45 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_86;
        }

        ++v44;
        if (!CFStringTokenizerAdvanceToNextToken(v43))
        {
          goto LABEL_38;
        }
      }
    }

    v45 = 0;
LABEL_38:

    sub_190976760(v75, v76, v78, v79, v21, v22);
    v51 = MEMORY[0x193AF2930]();
    v52 = sub_190D56ED0();
    v88.location = 0;
    v88.length = v51;
    v53 = CFStringTokenizerCreate(v42, v52, v88, 4uLL, 0);

    if (CFStringTokenizerAdvanceToNextToken(v53))
    {
      v54 = 0;
      v55 = v77;
      while (1)
      {
        CFStringTokenizerGetCurrentTokenRange(v53);
        v56 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_88;
        }

        ++v54;
        if (!CFStringTokenizerAdvanceToNextToken(v53))
        {

          if (v45 != v56)
          {
            goto LABEL_53;
          }

          goto LABEL_43;
        }
      }
    }

    v55 = v77;
    if (v45)
    {
LABEL_53:
      v60 = 1;
    }

    else
    {
LABEL_43:
      v57 = HIBYTE(v79) & 0xF;
      *&v83 = v78;
      *(&v83 + 1) = v79;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v57 = v78 & 0xFFFFFFFFFFFFLL;
      }

      *&v84 = 0;
      *(&v84 + 1) = v57;
      sub_190D52690();
      do
      {
        v58 = sub_190D57040();
        v60 = v59 != 0;
        if (!v59)
        {
          break;
        }

        v61 = sub_190974F40(v58, v59);
      }

      while ((v61 & 1) == 0);
    }

    a1 = v80;
    v62 = swift_unknownObjectWeakLoadStrong();
    if (!v62)
    {
      goto LABEL_95;
    }

    v63 = v62;

    v64 = [v63 attributedText];

    if (!v64)
    {
      if (v60)
      {
        goto LABEL_80;
      }

      return;
    }

    v65 = [v64 length];
    v66 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    if (v66 >= v65)
    {

      if (v60)
      {
        goto LABEL_80;
      }

      return;
    }

    if (!v60)
    {

      return;
    }

    v67 = *MEMORY[0x1E69DB6D8];
    if ([v64 attribute:*MEMORY[0x1E69DB6D8] atIndex:v55 effectiveRange:0])
    {
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {
      v85 = 0u;
      v86 = 0u;
    }

    if ([v64 attribute:v67 atIndex:v66 effectiveRange:{0, v75, v76}])
    {
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {

      v81 = 0u;
      v82 = 0u;
    }

    v83 = v81;
    v84 = v82;
    v81 = v85;
    v82 = v86;
    if (*(&v86 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55590, &unk_190DE18C0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v68 = &v83;
LABEL_79:
        sub_19021E7D8(v68);
        goto LABEL_80;
      }

      v81 = v83;
      v82 = v84;
      if (*(&v84 + 1))
      {
        if (swift_dynamicCast())
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          return;
        }

        swift_unknownObjectRelease();
        goto LABEL_80;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_19021E7D8(&v83);
    }

    v68 = &v81;
    goto LABEL_79;
  }

  v38 = *MEMORY[0x1E695E480];
  v36.location = 0;
  v39 = CFStringTokenizerCreate(v37, a1, v36, 1uLL, 0);

  a1 = v78;
  if (CFStringTokenizerAdvanceToNextToken(v39))
  {
    v40 = 0;
    while (1)
    {
      CFStringTokenizerGetCurrentTokenRange(v39);
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      ++v40;
      if (!CFStringTokenizerAdvanceToNextToken(v39))
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v41 = 0;
LABEL_32:

  sub_190976760(v75, v76, v78, v79, v21, v22);
  v46 = MEMORY[0x193AF2930]();
  v47 = sub_190D56ED0();
  v87.location = 0;
  v87.length = v46;
  v48 = CFStringTokenizerCreate(v38, v47, v87, 1uLL, 0);

  if (CFStringTokenizerAdvanceToNextToken(v48))
  {
    v49 = 0;
    a1 = v80;
    while (1)
    {
      CFStringTokenizerGetCurrentTokenRange(v48);
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_87;
      }

      ++v49;
      if (!CFStringTokenizerAdvanceToNextToken(v48))
      {
        goto LABEL_50;
      }
    }
  }

  v50 = 0;
LABEL_50:

  if (v41 != v50)
  {
LABEL_80:
    v69 = swift_unknownObjectWeakLoadStrong();
    if (v69)
    {
      v70 = v69;
      v71 = [v69 typingAttributes];

      v72 = sub_190D56D90();
      sub_190976B94(v72);
      v73 = swift_unknownObjectWeakLoadStrong();
      if (v73)
      {
        v35 = v73;

        goto LABEL_83;
      }

LABEL_97:
      __break(1u);
      return;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }
}

uint64_t sub_1909764E0(uint64_t a1)
{
  if (sub_1909765E0(a1))
  {
    return 1;
  }

  if (*(a1 + 16))
  {
    v3 = sub_1908789E0();
    if (v4)
    {
      sub_19021834C(*(a1 + 56) + 32 * v3, &v8);
      sub_19021E7D8(&v8);
      return 1;
    }
  }

  v8 = 0u;
  v9 = 0u;
  sub_19021E7D8(&v8);
  if (qword_1EAD465D0 == -1)
  {
    if (!*(a1 + 16))
    {
LABEL_11:
      v7 = 0;
      v8 = 0u;
      v9 = 0u;
      goto LABEL_12;
    }
  }

  else
  {
    swift_once();
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  v5 = sub_1908789E0();
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_19021834C(*(a1 + 56) + 32 * v5, &v8);
  v7 = 1;
LABEL_12:
  sub_19021E7D8(&v8);
  return v7;
}

uint64_t sub_1909765E0(uint64_t a1)
{
  if (qword_1EAD46598 == -1)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_4;
    }
  }

  else
  {
    swift_once();
    if (!*(a1 + 16))
    {
LABEL_4:
      v9 = 0u;
      v10 = 0u;
      sub_19021E7D8(&v9);
      if (qword_1EAD46620 == -1)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_11;
        }
      }

      else
      {
        swift_once();
        if (!*(a1 + 16))
        {
          goto LABEL_11;
        }
      }

      v2 = sub_1908789E0();
      if (v4)
      {
        goto LABEL_7;
      }

LABEL_11:
      v9 = 0u;
      v10 = 0u;
      sub_19021E7D8(&v9);
      if (qword_1EAD46608 == -1)
      {
        if (!*(a1 + 16))
        {
          goto LABEL_16;
        }
      }

      else
      {
        swift_once();
        if (!*(a1 + 16))
        {
          goto LABEL_16;
        }
      }

      v6 = sub_1908789E0();
      if (v7)
      {
        sub_19021834C(*(a1 + 56) + 32 * v6, &v9);
        v5 = 1;
LABEL_17:
        sub_19021E7D8(&v9);
        return v5;
      }

LABEL_16:
      v5 = 0;
      v9 = 0u;
      v10 = 0u;
      goto LABEL_17;
    }
  }

  v2 = sub_1908789E0();
  if ((v3 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_7:
  sub_19021834C(*(a1 + 56) + 32 * v2, &v9);
  sub_19021E7D8(&v9);
  return 1;
}

void sub_190976760(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  sub_190D52690();
  sub_190D58070();
  v13 = v12;

  if ((v13 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  sub_190D52690();
  sub_190D58070();
  v15 = v14;

  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_23;
  }

  v16 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v16) = 1;
  }

  v17 = 4 << v16;
  v18 = a1;
  if ((a1 & 0xC) == 4 << v16)
  {
    v18 = sub_190AFA228(a1, a5, a6);
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_7:
    v19 = v18 >> 16;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(a6) & 0xF;
    }

    else
    {
      v20 = a5 & 0xFFFFFFFFFFFFLL;
    }

    v21 = (v20 << 16) | 7;
    LOBYTE(v22) = 1;
    goto LABEL_11;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v20 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v20 < v18 >> 16)
  {
    goto LABEL_42;
  }

  v19 = sub_190D57080();
  v30 = 11;
  if ((a5 & 0x800000000000000) != 0)
  {
    v30 = 7;
  }

  v21 = v30 | (v20 << 16);
  v22 = (a5 & 0x800000000000000) >> 59;
LABEL_11:
  v23 = a2;
  if ((a2 & 0xC) == 4 << v22)
  {
    v31 = v21;
    v23 = sub_190AFA228(a2, a5, a6);
    v21 = v31;
  }

  if ((v21 & 0xC) == v17)
  {
    v32 = v23;
    v21 = sub_190AFA228(v21, a5, a6);
    v23 = v32;
    if ((a6 & 0x1000000000000000) == 0)
    {
LABEL_15:
      v24 = (v21 >> 16) - (v23 >> 16);
      if ((a4 & 0x1000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_36;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_15;
  }

  if (v20 < v23 >> 16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v20 >= v21 >> 16)
  {
    v24 = sub_190D57080();
    if ((a4 & 0x1000000000000000) == 0)
    {
LABEL_16:
      if ((a4 & 0x2000000000000000) != 0)
      {
        v26 = HIBYTE(a4) & 0xF;
        v27 = __OFADD__(v19, v26);
        v25 = v19 + v26;
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v25 = v19 + (a3 & 0xFFFFFFFFFFFFLL);
        if (!__OFADD__(v19, a3 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_21;
        }
      }

      goto LABEL_38;
    }

LABEL_36:
    v33 = v24;
    v34 = sub_190D57050();
    v24 = v33;
    v27 = __OFADD__(v19, v34);
    v25 = v19 + v34;
    if (!v27)
    {
LABEL_21:
      v27 = __OFADD__(v25, v24);
      v28 = v25 + v24;
      if (!v27)
      {
        MEMORY[0x193AF2830](v28);
LABEL_23:
        sub_190D57100();
        sub_1909778C4();
        sub_190D57010();

        sub_190D57010();
        sub_190C84B54(a2, a5, a6, v29);
        sub_190D57010();

        return;
      }

      goto LABEL_39;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_190976A74()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = Strong;
  v2 = [Strong typingAttributes];

  type metadata accessor for Key(0);
  sub_19082B370();
  v3 = sub_190D56D90();

  sub_190976B94(v3);
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;

  v6 = sub_190D56D60();

  [v5 setTypingAttributes_];
}

id sub_190976B94(uint64_t a1)
{
  v17 = a1;
  v2 = objc_opt_self();
  sub_190D52690();
  result = [v2 sharedBehaviors];
  if (!result)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v4 = result;
  v5 = *MEMORY[0x1E69DB648];
  v6 = [v4 balloonTextFont];
  if (v6)
  {
    v7 = v6;
    v16 = sub_1902188FC(0, &qword_1EAD46540, 0x1E69DB878);
    *&v15 = v7;
    sub_190824530(&v15, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_190C1C8E8(v14, v5, isUniquelyReferenced_nonNull_native);

    v17 = a1;
  }

  else
  {
    sub_190C81894(&v15);

    sub_19021E7D8(&v15);
  }

  sub_190C81894(&v15);
  sub_19021E7D8(&v15);
  sub_190C81894(&v15);
  sub_19021E7D8(&v15);
  sub_190C81894(&v15);
  sub_19021E7D8(&v15);
  v9 = *MEMORY[0x1E69DB650];
  result = [v4 theme];
  if (!result)
  {
    goto LABEL_27;
  }

  v10 = result;
  v11 = [result entryFieldTextColor];

  if (v11)
  {
    v16 = sub_1902188FC(0, &qword_1EAD46520, 0x1E69DC888);
    *&v15 = v11;
    sub_190824530(&v15, v14);
    v12 = v17;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_190C1C8E8(v14, v9, v13);

    v17 = v12;
  }

  else
  {
    sub_190C81894(&v15);

    sub_19021E7D8(&v15);
  }

  if (qword_1EAD465D0 != -1)
  {
    swift_once();
  }

  sub_190C81894(&v15);
  sub_19021E7D8(&v15);
  if (qword_1EAD465E8 != -1)
  {
    swift_once();
  }

  sub_190C81894(&v15);
  sub_19021E7D8(&v15);
  if (qword_1EAD465B0 != -1)
  {
    swift_once();
  }

  sub_190C81894(&v15);
  sub_19021E7D8(&v15);
  if (qword_1EAD46578 != -1)
  {
    swift_once();
  }

  sub_190C81894(&v15);
  sub_19021E7D8(&v15);
  if (qword_1EAD46640 != -1)
  {
    swift_once();
  }

  sub_190C81894(&v15);
  sub_19021E7D8(&v15);
  if (qword_1EAD46598 != -1)
  {
    swift_once();
  }

  sub_190C81894(&v15);
  sub_19021E7D8(&v15);
  if (qword_1EAD46620 != -1)
  {
    swift_once();
  }

  sub_190C81894(&v15);
  sub_19021E7D8(&v15);
  if (qword_1EAD46608 != -1)
  {
    swift_once();
  }

  sub_190C81894(&v15);

  sub_19021E7D8(&v15);
  return v17;
}

id EntryRichTextViewEffectsPickerAssistant.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EntryRichTextViewEffectsPickerAssistant.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryRichTextViewEffectsPickerAssistant();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__CFStringTokenizer *sub_190977138()
{
  v1 = v0;
  result = [v0 selectedTextRange];
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (![(__CFStringTokenizer *)result isEmpty])
  {
    location = 0;
LABEL_38:

    return location;
  }

  v4 = [v0 tokenizer];
  v5 = [(__CFStringTokenizer *)v3 start];
  v6 = [v4 positionFromPosition:v5 toBoundary:1 inDirection:sub_190D57770()];

  swift_unknownObjectRelease();
  if (!v6)
  {
    v6 = [(__CFStringTokenizer *)v3 start];
  }

  v7 = [v1 tokenizer];
  v8 = [(__CFStringTokenizer *)v3 end];
  v9 = [v7 positionFromPosition:v8 toBoundary:1 inDirection:sub_190D57770()];

  swift_unknownObjectRelease();
  if (!v9)
  {
    v9 = [(__CFStringTokenizer *)v3 end];
  }

  v10 = [v1 textRangeFromPosition:v6 toPosition:v9];
  if (!v10)
  {
    location = 0;
    v11 = v3;
    v3 = v6;
    v22 = v9;
LABEL_37:

    v3 = v22;
    goto LABEL_38;
  }

  v11 = v10;
  v12 = [v1 beginningOfDocument];
  v13 = [(__CFStringTokenizer *)v11 start];
  v14 = [v1 offsetFromPosition:v12 toPosition:v13];

  v15 = [v11 &selRef_showMakoIMessageAlert];
  v16 = [v11 &selRef_enableSyndication];
  v17 = [v1 offsetFromPosition:v15 toPosition:v16];

  result = [v1 text];
  if (!result)
  {
    goto LABEL_42;
  }

  v18 = result;
  sub_190D56F10();

  if (v14 == sub_190D50E40())
  {
    v19 = -1;
  }

  else
  {
    v19 = v14;
  }

  v20 = *MEMORY[0x1E695E480];
  v21 = sub_190D56ED0();
  v31.location = v19;
  v31.length = v17;
  v22 = CFStringTokenizerCreate(v20, v21, v31, 0, 0);

  if (!CFStringTokenizerAdvanceToNextToken(v22))
  {
LABEL_33:
    location = 0;
LABEL_36:

    goto LABEL_37;
  }

  v23 = __OFADD__(v14, v17);
  v24 = v17 + v14;
  v25 = v23;
  while (1)
  {
    CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v22);
    result = CurrentTokenRange.location;
    if (v25)
    {
      break;
    }

    v28 = CurrentTokenRange.location + CurrentTokenRange.length;
    if (__OFADD__(CurrentTokenRange.location, CurrentTokenRange.length))
    {
      goto LABEL_40;
    }

    if (v24 >= v28)
    {
      v29 = CurrentTokenRange.location + CurrentTokenRange.length;
    }

    else
    {
      v29 = v24;
    }

    if (v14 >= CurrentTokenRange.location && v14 < v28)
    {
      v23 = __OFSUB__(v29, v14);
      v26 = v29 - v14;
      if (v23)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (CurrentTokenRange.location < v14 || CurrentTokenRange.location >= v24)
      {
        goto LABEL_18;
      }

      v23 = __OFSUB__(v29, CurrentTokenRange.location);
      v26 = v29 - CurrentTokenRange.location;
      if (v23)
      {
        __break(1u);
        return result;
      }
    }

    if (v26 > 0)
    {
      location = CurrentTokenRange.location;
      goto LABEL_36;
    }

LABEL_18:
    if (!CFStringTokenizerAdvanceToNextToken(v22))
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

id sub_190977530(uint64_t a1, uint64_t a2)
{
  v5 = [v2 beginningOfDocument];
  v6 = [v2 positionFromPosition:v5 offset:a1];

  if (!v6)
  {
    v6 = [v2 endOfDocument];
  }

  v7 = [v2 positionFromPosition:v6 offset:a2];
  if (!v7)
  {
    v7 = [v2 endOfDocument];
  }

  v8 = [v2 textRangeFromPosition:v6 toPosition:v7];

  return v8;
}

unint64_t sub_1909778C4()
{
  result = qword_1EAD583A0;
  if (!qword_1EAD583A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD583A0);
  }

  return result;
}

uint64_t sub_190977928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 40))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_19097797C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1909779DC()
{
  result = qword_1EAD583A8;
  if (!qword_1EAD583A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD583A8);
  }

  return result;
}

unint64_t sub_190977A30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD583B0, &qword_190DE1A28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DE1910;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x8000000190E691F0;
  *(inited + 48) = sub_190D57230();
  strcpy((inited + 56), "active_message");
  *(inited + 71) = -18;
  *(inited + 72) = sub_190D57230();
  *(inited + 80) = 0x646165725F6D6461;
  *(inited + 88) = 0xE900000000000079;
  *(inited + 96) = sub_190D57230();
  *(inited + 104) = 0x756F72676B636162;
  *(inited + 112) = 0xEF657079745F646ELL;
  *(inited + 120) = sub_190D574E0();
  *(inited + 128) = 0x6F705F7972746E65;
  *(inited + 136) = 0xEB00000000746E69;
  *(inited + 144) = sub_190D574E0();
  strcpy((inited + 152), "gallery_action");
  *(inited + 167) = -18;
  *(inited + 168) = sub_190D574E0();
  strcpy((inited + 176), "message_type");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  *(inited + 192) = sub_190D574E0();
  *(inited + 200) = 0xD000000000000022;
  *(inited + 208) = 0x8000000190E69210;
  *(inited + 216) = sub_190D574E0();
  *(inited + 224) = 0xD000000000000027;
  *(inited + 232) = 0x8000000190E69240;
  *(inited + 240) = sub_190D574E0();
  *(inited + 248) = 0xD000000000000019;
  *(inited + 256) = 0x8000000190E69270;
  *(inited + 264) = sub_190D574E0();
  strcpy((inited + 272), "ChangeContext");
  *(inited + 286) = -4864;
  *(inited + 288) = sub_190D574E0();
  v1 = sub_190821BE8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD583B8, &unk_190DE1A30);
  swift_arrayDestroy();
  return v1;
}