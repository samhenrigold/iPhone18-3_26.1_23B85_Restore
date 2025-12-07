void sub_25C777F28(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v86 = a3;
  v87 = a2;
  v88 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v79 - v8;
  v10 = sub_25C78E744();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v84 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v85 = &v79 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v79 - v16;
  *(a4 + 24) = 0u;
  *(a4 + 16) = 0x403C000000000000;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0;
  v18 = objc_opt_self();
  v19 = [v18 mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v89.origin.x = v21;
  v89.origin.y = v23;
  v89.size.width = v25;
  v89.size.height = v27;
  Height = CGRectGetHeight(v89);
  v29 = Height + Height;
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return;
  }

  *(a4 + 64) = v29;
  *(a4 + 72) = 0x4049000000000000;
  v30 = [v18 mainScreen];
  [v30 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v90.origin.x = v32;
  v90.origin.y = v34;
  v90.size.width = v36;
  v90.size.height = v38;
  *(a4 + 80) = CGRectGetWidth(v90);
  v39 = [v18 mainScreen];
  [v39 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v91.origin.x = v41;
  v91.origin.y = v43;
  v91.size.width = v45;
  v91.size.height = v47;
  Width = CGRectGetWidth(v91);
  v49 = [v18 mainScreen];
  [v49 bounds];
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;

  v92.origin.x = v51;
  v92.origin.y = v53;
  v92.size.width = v55;
  v92.size.height = v57;
  v58 = CGRectGetHeight(v92);
  *(a4 + 88) = v58 < Width;
  v59 = [objc_opt_self() sharedInstance];
  v60 = [v59 supportsPrivateCloudComputeSummary];

  *(a4 + 89) = v60;
  *(a4 + 96) = 0x4074800000000000;
  v61 = v87;
  sub_25C78E734();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_25C77AB6C(v9, &qword_27FC14000, " \r");
    v62 = 0;
    v63 = 0xE000000000000000;
  }

  else
  {
    v83 = v60;
    v64 = v10;
    v65 = *(v11 + 32);
    v65(v17, v9, v64);
    v66 = objc_opt_self();
    v67 = sub_25C78E714();
    v68 = [v66 NotesAppIDForNoteMentionedInURL_];

    if (v68)
    {
      v62 = sub_25C78F034();
      v63 = v69;

      (*(v11 + 8))(v17, v64);
    }

    else
    {
      v81 = v64;
      v82 = v11;
      v80 = v65;
      v70 = sub_25C78E714();
      v71 = [v66 isShowHTMLNoteURL_];

      if (v71 && (v72 = sub_25C78E714(), v73 = [v66 objectIDURIRepresentationForHTMLNoteMentionedInURL_], v72, v73))
      {
        v74 = v84;
        sub_25C78E724();

        v75 = v85;
        v76 = v81;
        v80(v85, v74, v81);
        v62 = sub_25C78E704();
        v63 = v77;
        v78 = *(v82 + 8);
        v78(v75, v76);
        v78(v17, v76);
      }

      else
      {
        (*(v82 + 8))(v17, v81);
        v62 = 0;
        v63 = 0xE000000000000000;
      }
    }

    v61 = v87;
    LOBYTE(v60) = v83;
  }

  *a4 = v62;
  *(a4 + 8) = v63;
  *(a4 + 104) = [objc_allocWithZone(type metadata accessor for NotesSiriSingleNoteHelper()) init];
  *(a4 + 112) = a5;
  sub_25C77A850(v86, a4 + 24);
  *(a4 + 120) = v88;
  *(a4 + 128) = v61;
  *(a4 + 90) = (v58 < Width) & (v60 ^ 1);
}

id sub_25C7784F0()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v62 = [objc_allocWithZone(MEMORY[0x277CBEB98]) init];
  v3 = [objc_opt_self() sharedContext];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 managedObjectContext];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_opt_self();
  v7 = v5;
  result = [v6 sharedContext];
  if (!result)
  {
    __break(1u);
    goto LABEL_55;
  }

  v9 = result;
  v10 = [result managedObjectContext];

  if (!v5 || (MEMORY[0x28223BE20](v11), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC140A0, &unk_25C78FF20), sub_25C78F0F4(), v7, !v61))
  {
    if (!v10)
    {

LABEL_53:

      return v2;
    }

    MEMORY[0x28223BE20](v11);
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC140A0, &unk_25C78FF20);
    sub_25C78F0F4();

    if (!v61)
    {

      goto LABEL_53;
    }
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (v13)
  {
    v35 = v13;
    swift_unknownObjectRelease();
    CGSizeMake();
    v38 = [objc_opt_self() createTextViewWithNote:v35 size:{v36, v37}];
    v39 = [objc_opt_self() isEnabled];
    v40 = v38;
    v41 = v40;
    v42 = &selRef_setPaperEnabled_;
    if (!v39)
    {
      v42 = &selRef_setStylusDrawingEnabled_;
    }

    [v40 *v42];
    v43 = v41;
    [v43 setDataDetectorTypes_];
    v44 = [v43 textDragInteraction];

    [v44 setEnabled_];
    v45 = [v43 textStorage];
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46)
    {
      [v46 fixupAfterEditing];
    }

    v47 = v43;
    sub_25C7792FC(v47);
    [v47 setUserInteractionEnabled_];
    [v47 setSelectable_];
    [v47 setScrollEnabled_];

    v48 = objc_opt_self();
    sub_25C77ADD4(0, &qword_27FC140B0, 0x277D367E8);
    [v48 registerTextAttachmentClass:swift_getObjCClassFromMetadata() forFileType:*MEMORY[0x277CD96A8]];
    sub_25C77ADD4(0, &qword_27FC140B8, 0x277D368E8);
    [v48 registerTextAttachmentClass:swift_getObjCClassFromMetadata() forFileType:*MEMORY[0x277CD96B0]];
    v49 = objc_opt_self();
    v50 = v47;
    v51 = [v49 clearColor];
    [v50 setBackgroundColor_];

    v52 = [v49 ICTintColor];
    [v50 setTintColor_];

    swift_unknownObjectRelease();
    v2 = v50;
    goto LABEL_53;
  }

  swift_unknownObjectRelease();
  if (!swift_dynamicCastObjCProtocolConditional())
  {

    swift_unknownObjectRelease();
    goto LABEL_53;
  }

  CGSizeMake();
  v14 = CGRectMake();
  v18 = [objc_allocWithZone(MEMORY[0x277D369C0]) initWithFrame_];
  [v18 setDelegate_];
  result = [v18 webView];
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v19 = result;
  v20 = [result scrollView];

  v21 = [v20 subviews];
  sub_25C77ADD4(0, &qword_27FC140A8, 0x277D75D18);
  v22 = sub_25C78F074();

  v59 = v7;
  v60 = v2;
  v58 = v10;
  v57 = v18;
  if (v22 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C78F1A4())
  {
    v24 = 0;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x25F88CF20](v24, v22);
      }

      else
      {
        if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v25 = *(v22 + 8 * v24 + 32);
      }

      v26 = v25;
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v28 = [v25 className];
      if (v28)
      {
        v29 = v28;
        v30 = sub_25C78F034();
        v32 = v31;

        if (v30 == 0x6E65746E6F434B57 && v32 == 0xED00007765695674)
        {

LABEL_37:

          sub_25C7792FC(v26);

          goto LABEL_42;
        }

        v34 = sub_25C78F1C4();

        if (v34)
        {
          goto LABEL_37;
        }
      }

      ++v24;
      if (v27 == i)
      {
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    ;
  }

LABEL_41:

LABEL_42:
  if ([v62 count] < 1)
  {
    v54 = sub_25C78F024();
    [v57 setHtmlString:v54 attachments:0];
  }

  else
  {
    if ([v57 delegate])
    {
      type metadata accessor for NotesSiriSingleNoteHelper();
      if (swift_dynamicCastClass())
      {
        sub_25C77A33C();
      }

      swift_unknownObjectRelease();
    }

    v53 = sub_25C78F024();
    v54 = [v62 allObjects];
    if (!v54)
    {
      sub_25C78F074();
      v54 = sub_25C78F064();
    }

    [v57 setHtmlString:v53 attachments:v54];
  }

  result = [v57 webView];
  if (result)
  {
    v55 = result;
    v56 = [result scrollView];

    [v56 setScrollEnabled_];
    [v57 setInsideSiriSnippet_];
    swift_unknownObjectRelease();

    v2 = v57;
    goto LABEL_53;
  }

LABEL_56:
  __break(1u);
  return result;
}

id sub_25C778E88@<X0>(uint64_t a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  sub_25C77ADD4(0, &unk_27FC140C0, 0x277D35F28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = sub_25C78F024();
  v11 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v10 context:a2];

  if (v11)
  {
    *a3 = [v11 isPasswordProtected];
    result = [v11 isUnsupported];
  }

  else
  {
    result = 0;
    *a3 = 0;
  }

  *a4 = result;
  *a5 = v11;
  return result;
}

void sub_25C778F68(void *a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X3>, void **a5@<X4>, void *a6@<X8>)
{
  v33 = a5;
  v34 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_25C78E744();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C78E734();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25C77AB6C(v12, &qword_27FC14000, " \r");
    v17 = 0;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v18 = sub_25C78E714();
    v19 = [a2 ic:v18 objectIDFromURL:?];

    if (v19)
    {
      v32 = v6;
      v20 = [a2 ic:v19 existingObjectWithID:?];
      if (v20)
      {
        v21 = v20;
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        v17 = v22;
        if (v22)
        {
          *a3 = [v22 isPlainText];
          v23 = [v17 content];
          if (v23)
          {
            v24 = v23;
            v25 = sub_25C78F034();
            v27 = v26;
          }

          else
          {
            v25 = 0;
            v27 = 0xE000000000000000;
          }

          *a4 = v25;
          a4[1] = v27;

          v28 = [v17 attachments];
          if (v28)
          {
            v29 = v28;
            sub_25C78F0B4();

            v30 = sub_25C78F0A4();
          }

          else
          {
            v30 = [objc_allocWithZone(MEMORY[0x277CBEB98]) init];
          }

          (*(v14 + 8))(v16, v13);
          v31 = *v33;
          *v33 = v30;
        }

        else
        {

          (*(v14 + 8))(v16, v13);
        }
      }

      else
      {
        (*(v14 + 8))(v16, v13);

        v17 = 0;
      }
    }

    else
    {
      (*(v14 + 8))(v16, v13);
      v17 = 0;
    }
  }

  *v34 = v17;
}

void sub_25C7792FC(void *a1)
{
  [a1 setUserInteractionEnabled_];
  v2 = [a1 subviews];
  sub_25C77ADD4(0, &qword_27FC140A8, 0x277D75D18);
  v3 = sub_25C78F074();

  if (v3 >> 62)
  {
    v4 = sub_25C78F1A4();
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x25F88CF20](i, v3);
    }

    else
    {
      v6 = *(v3 + 8 * i + 32);
    }

    v7 = v6;
    sub_25C7792FC(v6);
  }

LABEL_10:
}

id sub_25C779414(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  if (a2)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = *&a1;
  }

  if (a4)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = *&a3;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    v13 = a5;
    result = [v12 textLayoutManager];
    if (result)
    {
      v15 = result;
      if ((a2 & 1) != 0 || (a1 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
      {
        if (v9 > -9.22337204e18)
        {
          if (v9 < 9.22337204e18)
          {
            v16 = v9;
            v70 = result;
            v71 = v13;
            if (qword_27FC13F50 == v9 && (*(v5 + 120) == qword_27FC13F40 && *(v5 + 128) == qword_27FC13F48 || (sub_25C78F1C4() & 1) != 0) || *(v5 + 72) >= v9 || v9 >= *(v5 + 80))
            {
              v67 = 0;
              v68 = 0;
              v32 = 0;
              v69 = 0;
              goto LABEL_29;
            }

            v17 = [v15 textContainer];
            if (v17)
            {
              v18 = v17;
              CGSizeMake();
              [v18 setSize_];
            }

            v88[0] = 0;
            v87 = 0;
            if (*(v5 + 90) != 1)
            {
              v55 = [v15 documentRange];
              v56 = [v55 location];

              sub_25C77AC6C(v5, &v78);
              v57 = swift_allocObject();
              v58 = v82;
              *(v57 + 104) = v83;
              v59 = v85;
              *(v57 + 120) = v84;
              *(v57 + 136) = v59;
              v60 = v78;
              *(v57 + 40) = v79;
              v61 = v81;
              *(v57 + 56) = v80;
              *(v57 + 72) = v61;
              *(v57 + 88) = v58;
              *(v57 + 16) = v88;
              v62 = v86;
              *(v57 + 24) = v60;
              *(v57 + 152) = v62;
              *(v57 + 160) = &v87;
              v63 = swift_allocObject();
              *(v63 + 16) = sub_25C77ACA8;
              *(v63 + 24) = v57;
              v76 = sub_25C77ACD0;
              v77 = v63;
              aBlock = MEMORY[0x277D85DD0];
              v73 = 1107296256;
              v74 = sub_25C779D04;
              v75 = &block_descriptor;
              v64 = _Block_copy(&aBlock);

              v65 = [v15 enumerateTextLayoutFragmentsFromLocation:v56 options:4 usingBlock:v64];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              _Block_release(v64);
              LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

              if ((v56 & 1) == 0)
              {
                v68 = sub_25C77ACA8;
                v69 = v57;
                v67 = 0;
                v23 = 0;
LABEL_44:
                v32 = v23;
                v66 = *(v5 + 128);
                qword_27FC13F40 = *(v5 + 120);
                qword_27FC13F48 = v66;
                qword_27FC13F50 = v16;
                qword_27FC13F58 = v88[0];
                byte_27FC13F60 = v87;

LABEL_29:
                v33 = objc_opt_self();
                v34 = [v33 standardUserDefaults];
                v35 = sub_25C78F024();
                v36 = [v34 BOOLForKey_];

                v37 = [v33 standardUserDefaults];
                v38 = sub_25C78F024();
                v39 = [v37 BOOLForKey_];

                v40 = byte_27FC13F60;
                if (v36 != byte_27FC13F60 || v39 != byte_27FC13F60)
                {
                  v41 = [v33 standardUserDefaults];
                  v42 = sub_25C78F024();
                  [v41 setBool:v40 forKey:v42];

                  sub_25C77AAFC(v5 + 24, &v78);
                  if (*(&v79 + 1))
                  {
                    __swift_project_boxed_opaque_existential_1(&v78, *(&v79 + 1));
                    v43 = off_286E65B68[0];
                    type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
                    v43();
                    __swift_destroy_boxed_opaque_existential_1(&v78);
                  }

                  else
                  {
                    sub_25C77AB6C(&v78, &qword_27FC14008, " \r");
                  }
                }

                CGSizeMake();
                v52 = v54;
                sub_25C77ABCC(v67, v32);
                sub_25C77ABCC(v68, v69);
                return v52;
              }

              goto LABEL_49;
            }

            [v12 contentSize];
            result = [v13 systemLayoutSizeFittingSize_];
            v20 = v19;
            if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v19 > -9.22337204e18)
              {
                if (v19 < 9.22337204e18)
                {
                  v21 = [v15 documentRange];
                  v22 = [v21 location];

                  sub_25C77AC6C(v5, &v78);
                  v23 = swift_allocObject();
                  v24 = v82;
                  *(v23 + 104) = v83;
                  v25 = v85;
                  *(v23 + 120) = v84;
                  *(v23 + 136) = v25;
                  v26 = v78;
                  *(v23 + 40) = v79;
                  v27 = v81;
                  *(v23 + 56) = v80;
                  *(v23 + 72) = v27;
                  *(v23 + 88) = v24;
                  *(v23 + 16) = v88;
                  v28 = v86;
                  *(v23 + 24) = v26;
                  *(v23 + 152) = v28;
                  *(v23 + 160) = &v87;
                  v29 = swift_allocObject();
                  *(v29 + 16) = sub_25C77AE28;
                  *(v29 + 24) = v23;
                  v76 = sub_25C77AE30;
                  v77 = v29;
                  aBlock = MEMORY[0x277D85DD0];
                  v73 = 1107296256;
                  v74 = sub_25C779D04;
                  v75 = &block_descriptor_18;
                  v30 = _Block_copy(&aBlock);

                  v31 = [v15 enumerateTextLayoutFragmentsFromLocation:v22 options:4 usingBlock:v30];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  _Block_release(v30);
                  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

                  if ((v22 & 1) == 0)
                  {
                    if (*(v5 + 64) <= v20)
                    {
                      v67 = sub_25C77AE28;
                      v68 = 0;
                      v69 = 0;
                    }

                    else
                    {
                      v68 = 0;
                      v69 = 0;
                      v88[0] = v20;
                      v67 = sub_25C77AE28;
                    }

                    goto LABEL_44;
                  }

                  goto LABEL_52;
                }

LABEL_51:
                __break(1u);
LABEL_52:
                __break(1u);
                goto LABEL_53;
              }

LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }

LABEL_47:
          __break(1u);
          goto LABEL_48;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_47;
    }
  }

  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (!v44)
  {
    [a5 systemLayoutSizeFittingSize_];
    return v53;
  }

  v45 = v44;
  v46 = a5;
  result = [v45 webView];
  if (result)
  {
    v47 = result;
    v48 = [result scrollView];

    [v48 contentSize];
    v50 = v49;

    [v46 systemLayoutSizeFittingSize_];
    v52 = v51;

    return v52;
  }

LABEL_53:
  __break(1u);
  return result;
}

uint64_t sub_25C779D04(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

void sub_25C779D48(void *a1, uint64_t *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *a2;
  [a1 layoutFragmentFrame];
  MaxY = CGRectGetMaxY(v10);
  if ((*&MaxY & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (MaxY <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (MaxY >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7 + MaxY;
  if (__OFADD__(v7, MaxY))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v9 >= *(a3 + 64))
  {
    *a4 = 1;
  }

  else
  {
    *a4 = 0;
    *a2 = v9;
  }
}

uint64_t sub_25C779E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25C77AAA8();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_25C779EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25C77AAA8();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_25C779F48(uint64_t a1)
{
  sub_25C77AAA8();
  sub_25C78EC34();
  __break(1u);
}

uint64_t sub_25C779F70@<X0>(uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  if (a2)
  {
    v8 = sub_25C78F024();
    v9 = sub_25C77A524(v8);
    v10 = [v9 dataFileURL];
    if (v10)
    {
      v11 = v10;
      sub_25C78E724();

      v12 = sub_25C78E744();
      (*(*(v12 - 8) + 56))(v7, 0, 1, v12);
    }

    else
    {

      v16 = sub_25C78E744();
      (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    }

    return sub_25C77A8D0(v7, a3);
  }

  else
  {
    v13 = sub_25C78E744();
    v14 = *(*(v13 - 8) + 56);

    return v14(a3, 1, 1, v13);
  }
}

void sub_25C77A33C()
{
  v0 = sub_25C78E6E4();
  v7 = *(v0 - 8);
  v8 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C77ADD4(0, &qword_27FC14018, 0x277CBEB18);
  v3 = MEMORY[0x25F88CEB0](MEMORY[0x277D84F90]);
  sub_25C78F104();
  sub_25C78E6D4();
  while (v13)
  {
    sub_25C77A8C0(v12, &v11);
    sub_25C77ADD4(0, &qword_27FC14020, 0x277D35920);
    if (swift_dynamicCast())
    {
      v4 = v10;
      v5 = [objc_allocWithZone(MEMORY[0x277D369B8]) initWithNoteAttachmentObject_];
      [v3 ic:v5 addNonNilObject:?];
    }

    sub_25C78E6D4();
  }

  (*(v7 + 8))(v2, v8);
  v6 = *(v9 + OBJC_IVAR____TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper_attachmentPresentations);
  *(v9 + OBJC_IVAR____TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper_attachmentPresentations) = v3;
}

id sub_25C77A524(uint64_t a1)
{
  v3 = sub_25C78E6E4();
  v12 = *(v3 - 8);
  v13 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC11NotesSiriUIP33_3E7C7BF264EBD40B6730A9F9F307847625NotesSiriSingleNoteHelper_attachmentPresentations);
  sub_25C78F124();

  sub_25C78E6D4();
  while (v17)
  {
    sub_25C77A8C0(v16, &v15);
    sub_25C77ADD4(0, &qword_27FC14010, 0x277D369B8);
    if (swift_dynamicCast())
    {
      v7 = v14;
      result = [v14 contentID];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v9 = result;
      v10 = [result isEqual_];

      if (v10)
      {
        (*(v12 + 8))(v5, v13);
        return v7;
      }
    }

    sub_25C78E6D4();
  }

  (*(v12 + 8))(v5, v13);
  return [objc_allocWithZone(MEMORY[0x277D369B8]) init];
}

id sub_25C77A79C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesSiriSingleNoteHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25C77A850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14008, " \r");
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_25C77A8C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25C77A8D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_11NotesSiriUI0aB25TextEditorWrapperDelegate_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_25C77A98C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_25C77A9D4(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25C77AA48()
{
  result = qword_27FC14090;
  if (!qword_27FC14090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14090);
  }

  return result;
}

unint64_t sub_25C77AAA8()
{
  result = qword_27FC14098;
  if (!qword_27FC14098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14098);
  }

  return result;
}

uint64_t sub_25C77AAFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14008, " \r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C77AB6C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25C77ABCC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_25C77ADD4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25C77AE34()
{
  v0 = sub_25C78E914();
  __swift_allocate_value_buffer(v0, qword_27FC14130);
  __swift_project_value_buffer(v0, qword_27FC14130);
  return sub_25C78E8F4();
}

uint64_t sub_25C77AE88@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25C78EAB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14158, &qword_25C78FFA0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for NotesSiriListView(0);
  sub_25C780FAC(v1 + *(v10 + 24), v9, &qword_27FC14158, &qword_25C78FFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25C78E7C4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_25C78F0D4();
    v13 = sub_25C78ECD4();
    sub_25C78E8E4();

    sub_25C78EAA4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t NotesSiriListView.init(noteIdentifier:headerText:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, void *a4@<X2>, void *a5@<X3>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14148, &qword_25C78FF60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18[-v11];
  [objc_opt_self() startSharedContextWithOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14150, &qword_25C78FF68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25C78FF30;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  NotesSiriListView.init(noteIdentifiers:modernManagedObjectContext:htmlManagedObjectContext:query:)(inited, 0, 0, a4, a5, v12);
  v14 = type metadata accessor for NotesSiriListView(0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14))
  {
    sub_25C77AB6C(v12, &qword_27FC14148, &qword_25C78FF60);
    v16 = 1;
  }

  else
  {
    sub_25C77B6E8(v12, a3);
    v16 = 0;
  }

  return (*(v15 + 56))(a3, v16, 1, v14);
}

id NotesSiriListView.init(noteIdentifiers:modernManagedObjectContext:htmlManagedObjectContext:query:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, id a3@<X2>, void *a4@<X3>, void *a5@<X4>, unint64_t a6@<X8>)
{
  v43 = a4;
  v44 = a5;
  v10 = type metadata accessor for NotesSiriListView(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x277D84F90];
  *v13 = MEMORY[0x277D84F90];
  sub_25C78EFD4();
  v15 = *(v10 + 24);
  *(v13 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14158, &qword_25C78FFA0);
  swift_storeEnumTagMultiPayload();
  v16 = a2;
  if (!a2)
  {
    v17 = [objc_opt_self() sharedContext];
    if (v17)
    {
      v15 = v17;
      v16 = [v17 managedObjectContext];
    }

    else
    {
      v16 = 0;
    }
  }

  v40 = a2;
  v41 = v13;
  v42 = a3;
  if (a3)
  {
    v18 = v16;
    v19 = a2;
    if (v16)
    {
LABEL_7:
      v39 = v10;
      v20 = v42;

LABEL_12:
      v37 = v11;
      v38 = a6;
      v47 = v14;
      v10 = *(a1 + 16);
      if (!v10)
      {
LABEL_20:

        v27 = v41;
        *v41 = v14;
        v28 = v38;
        sub_25C781014(v27, v38, type metadata accessor for NotesSiriListView);
        (*(v37 + 56))(v28, 0, 1, v39);
        return sub_25C78107C(v27, type metadata accessor for NotesSiriListView);
      }

      a6 = 0;
      v11 = a1 + 40;
      while (a6 < *(a1 + 16))
      {
        v15 = *v11;
        v46[0] = *(v11 - 8);
        v46[1] = v15;

        sub_25C788AD8(v46, a3, v43, v44, v16, &v45);

        if (v45)
        {
          MEMORY[0x25F88CDF0](v26);
          v15 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v15 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_25C78F084();
          }

          sub_25C78F094();
          v14 = v47;
        }

        ++a6;
        v11 += 16;
        if (v10 == a6)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v21 = objc_opt_self();
    v22 = v16;
    v23 = a2;
    result = [v21 sharedContext];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v15 = result;
    a3 = [result managedObjectContext];

    if (v16)
    {
      goto LABEL_7;
    }
  }

  if (a3)
  {
    v39 = v10;
    v25 = v42;
    goto LABEL_12;
  }

  v15 = v42;

  if (qword_27FC13F68 != -1)
  {
LABEL_26:
    swift_once();
  }

  v29 = sub_25C78E914();
  __swift_project_value_buffer(v29, qword_27FC14130);
  v30 = sub_25C78E904();
  v31 = sub_25C78F0C4();
  v32 = os_log_type_enabled(v30, v31);
  v34 = v40;
  v33 = v41;
  if (v32)
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_25C776000, v30, v31, "No object context found!", v35, 2u);
    MEMORY[0x25F88D470](v35, -1, -1);
  }

  sub_25C78107C(v33, type metadata accessor for NotesSiriListView);
  return (*(v11 + 56))(a6, 1, 1, v10);
}

uint64_t type metadata accessor for NotesSiriListView(uint64_t a1)
{
  result = qword_27FC14178;
  if (!qword_27FC14178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C77B6E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSiriListView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NotesSiriListView.init(models:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotesSiriListView(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25C78EFD4();
  v8 = *(v4 + 24);
  *(v7 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14158, &qword_25C78FFA0);
  swift_storeEnumTagMultiPayload();
  *v7 = a1;
  sub_25C781014(v7, a2, type metadata accessor for NotesSiriListView);
  (*(v5 + 56))(a2, 0, 1, v4);
  return sub_25C78107C(v7, type metadata accessor for NotesSiriListView);
}

uint64_t NotesSiriListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14160, &qword_25C78FFA8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14168, &qword_25C78FFB0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v12 = &v21 - v11;
  v13 = *v1;
  if (*v1 >> 62)
  {
    v22 = v10;
    result = sub_25C78F1A4();
    v10 = v22;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = *(v10 + 56);

    return v20(a1, 1, 1, v6);
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  v22 = v10;
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x25F88CF20](0, v13);
    goto LABEL_6;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);

LABEL_6:
    sub_25C77BB7C(v15, v5);

    sub_25C78EF74();
    sub_25C78E9F4();
    sub_25C780F44(v5, v9, &qword_27FC14160, &qword_25C78FFA8);
    v16 = &v9[*(v6 + 36)];
    v17 = v28;
    *(v16 + 4) = v27;
    *(v16 + 5) = v17;
    *(v16 + 6) = v29;
    v18 = v24;
    *v16 = v23;
    *(v16 + 1) = v18;
    v19 = v26;
    *(v16 + 2) = v25;
    *(v16 + 3) = v19;
    sub_25C780F44(v9, v12, &qword_27FC14168, &qword_25C78FFB0);
    sub_25C780F44(v12, a1, &qword_27FC14168, &qword_25C78FFB0);
    return (*(v22 + 56))(a1, 0, 1, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_25C77BB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = type metadata accessor for NotesSiriListView(0);
  v31[0] = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v31[1] = v5;
  v32 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C78E784();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25C78E7C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v2;
  sub_25C77AE88(v13);
  if ([objc_opt_self() currentNoteListSortType] == 1)
  {
    v14 = &OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_creationDate;
  }

  else
  {
    v14 = &OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_modificationDate;
  }

  v15 = a1 + *v14;
  swift_beginAccess();
  (*(v7 + 16))(v9, v15, v6);
  v16 = sub_25C78E754();
  v18 = v17;
  sub_25C78E754();

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v19 = sub_25C77C3C4(a1);
  v21 = v20;
  v22 = sub_25C78E894();
  v24 = v23;
  *&v35 = a1;
  *(&v35 + 1) = v16;
  *v36 = v18;
  *&v36[8] = xmmword_25C78FF40;
  *&v36[24] = xmmword_25C78FF50;
  *&v36[40] = 0x4018000000000000;
  v37 = 0;
  v25 = v32;
  sub_25C781014(v33, v32, type metadata accessor for NotesSiriListView);
  v26 = (*(v31[0] + 80) + 24) & ~*(v31[0] + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  sub_25C77B6E8(v25, v27 + v26);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC141B8, &qword_25C790040);
  sub_25C78060C();
  v28 = v34;
  sub_25C78EE04();

  v38[2] = *&v36[16];
  v38[3] = *&v36[32];
  v39 = v37;
  v38[0] = v35;
  v38[1] = *v36;
  sub_25C77AB6C(v38, &qword_27FC141B8, &qword_25C790040);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14160, &qword_25C78FFA8);
  v30 = (v28 + *(result + 36));
  *v30 = v19;
  v30[1] = v21;
  v30[2] = v22;
  v30[3] = v24;
  return result;
}

uint64_t sub_25C77BF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v31 = a2;
  v32 = a3;
  v28 = a1;
  v35 = a6;
  v6 = sub_25C78ECB4();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_25C78EB74();
  v9 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC144C8, &qword_25C790450);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC144D0, &qword_25C790458);
  v16 = *(v15 - 8);
  v26 = v15;
  v27 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - v17;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC144D8, &qword_25C790460);
  MEMORY[0x28223BE20](v25);
  v20 = &v24 - v19;
  sub_25C78EB54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC144E0, &qword_25C790468);
  sub_25C78240C(&qword_27FC144E8, &qword_27FC144E0, &qword_25C790468, MEMORY[0x277CE04B0]);
  sub_25C78EE14();
  (*(v9 + 8))(v11, v24);
  sub_25C78ECA4();
  v21 = sub_25C781F80();
  sub_25C78EE44();
  (*(v29 + 8))(v8, v30);
  sub_25C77AB6C(v14, &qword_27FC144C8, &qword_25C790450);
  v38 = v31;
  v39 = v32;
  v36 = v12;
  v37 = v21;
  swift_getOpaqueTypeConformance2();
  sub_25C781450();
  v22 = v26;
  sub_25C78EE34();
  (*(v27 + 8))(v18, v22);
  v38 = v33;
  v39 = v34;
  sub_25C78E9C4();
  return sub_25C77AB6C(v20, &qword_27FC144D8, &qword_25C790460);
}

uint64_t sub_25C77C3C4(uint64_t a1)
{

  v2 = sub_25C78E804();
  v4 = v3;

  v5 = sub_25C78E814();
  v7 = v6;

  v8 = (a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v37 = v9;
  v38 = v10;
  v11 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString + 8);
  v39 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString);
  v40 = v11;
  v12 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet + 8);
  v41 = *(a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
  v42 = v12;
  v43 = v2;
  v44 = v4;
  v45 = v5;
  v46 = v7;

  v14 = 0;
  v15 = MEMORY[0x277D84F90];
LABEL_2:
  if (v14 <= 5)
  {
    v16 = 5;
  }

  else
  {
    v16 = v14;
  }

  v17 = v16 + 1;
  v18 = 16 * v14 + 40;
  while (v14 != 5)
  {
    if (v17 == ++v14)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v19 = v18 + 16;
    v20 = *&v36[v18];
    v18 += 16;
    if (v20)
    {
      v21 = *&v36[v19 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25C7810DC(0, *(v15 + 16) + 1, 1, v15);
        v15 = result;
      }

      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        result = sub_25C7810DC((v22 > 1), v23 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14500, &qword_25C790470);
  result = swift_arrayDestroy();
  v25 = 0;
  v26 = *(v15 + 16);
  v27 = MEMORY[0x277D84F90];
LABEL_15:
  v28 = (v15 + 40 + 16 * v25);
  while (v26 != v25)
  {
    if (v25 >= *(v15 + 16))
    {
      goto LABEL_28;
    }

    ++v25;
    v30 = *(v28 - 1);
    v29 = *v28;
    v28 += 2;
    v31 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v31 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_25C7811E8(0, *(v27 + 16) + 1, 1);
      }

      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_25C7811E8((v32 > 1), v33 + 1, 1);
      }

      *(v27 + 16) = v33 + 1;
      v34 = v27 + 16 * v33;
      *(v34 + 32) = v30;
      *(v34 + 40) = v29;
      goto LABEL_15;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14508, &qword_25C790478);
  sub_25C78240C(&qword_27FC14510, &qword_27FC14508, &qword_25C790478, MEMORY[0x277D83958]);
  v35 = sub_25C78F014();

  return v35;
}

uint64_t sub_25C77C72C(uint64_t a1)
{
  v2 = sub_25C78F004();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25C78E744();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v11 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_noteUrl;
  swift_beginAccess();
  (*(v7 + 16))(v9, a1 + v11, v6);
  v12 = sub_25C78E714();
  (*(v7 + 8))(v9, v6);
  [v10 setPunchOutUri_];

  type metadata accessor for NotesSiriListView(0);
  sub_25C78EFC4();
  v13 = v10;
  sub_25C78EFF4();

  return (*(v3 + 8))(v5, v2);
}

double sub_25C77C954@<D0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC141E8, &qword_25C790170);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC141F0, &qword_25C790178);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v18 - v8;
  *v5 = sub_25C78EBA4();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC141F8, &qword_25C790180);
  sub_25C77CB50(v1, &v5[*(v10 + 44)]);
  sub_25C78EF74();
  sub_25C78E9F4();
  sub_25C780F44(v5, v9, &qword_27FC141E8, &qword_25C790170);
  v11 = &v9[*(v7 + 44)];
  v12 = v18[5];
  *(v11 + 4) = v18[4];
  *(v11 + 5) = v12;
  *(v11 + 6) = v18[6];
  v13 = v18[1];
  *v11 = v18[0];
  *(v11 + 1) = v13;
  v14 = v18[3];
  *(v11 + 2) = v18[2];
  *(v11 + 3) = v14;
  v15 = sub_25C78ECF4();
  sub_25C780F44(v9, a1, &qword_27FC141F0, &qword_25C790178);
  v16 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14200, &qword_25C790188) + 36);
  *v16 = v15;
  result = 0.0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 1;
  return result;
}

uint64_t sub_25C77CB50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14208, &qword_25C790190);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-v8];
  sub_25C78EF64();
  sub_25C78E994();
  v29 = v33;
  v30 = v31;
  v28 = v35;
  v27 = v36;
  v45 = 1;
  v44 = v32;
  v43 = v34;
  *v9 = sub_25C78EAD4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14210, &qword_25C790198);
  sub_25C77CE04(a1, &v9[*(v10 + 44)]);
  sub_25C78EF64();
  sub_25C78E994();
  v26 = v37;
  v25 = v39;
  v24 = v41;
  v23 = v42;
  v48 = 1;
  v47 = v38;
  v46 = v40;
  v11 = v45;
  LOBYTE(a1) = v44;
  v12 = v43;
  sub_25C780FAC(v9, v7, &qword_27FC14208, &qword_25C790190);
  v13 = v48;
  v14 = v47;
  v22 = v46;
  *a2 = 0;
  *(a2 + 8) = v11;
  v15 = v29;
  *(a2 + 16) = v30;
  *(a2 + 24) = a1;
  *(a2 + 32) = v15;
  *(a2 + 40) = v12;
  v16 = v27;
  *(a2 + 48) = v28;
  *(a2 + 56) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14218, &qword_25C7901A0);
  sub_25C780FAC(v7, a2 + *(v17 + 48), &qword_27FC14208, &qword_25C790190);
  v18 = a2 + *(v17 + 64);
  *v18 = 0;
  *(v18 + 8) = v13;
  *(v18 + 16) = v26;
  *(v18 + 24) = v14;
  *(v18 + 32) = v25;
  *(v18 + 40) = v22;
  v19 = v23;
  *(v18 + 48) = v24;
  *(v18 + 56) = v19;
  sub_25C77AB6C(v9, &qword_27FC14208, &qword_25C790190);
  return sub_25C77AB6C(v7, &qword_27FC14208, &qword_25C790190);
}

uint64_t sub_25C77CE04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14220, &qword_25C7901A8);
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v50 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14228, &unk_25C7901B0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v61 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = (&v50 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v59 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v60 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14230, &qword_25C7901C0);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v63 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = &v50 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14238, &qword_25C7901C8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v62 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v50 - v24;
  *v25 = sub_25C78EBA4();
  *(v25 + 1) = 0x4010000000000000;
  v25[16] = 0;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14240, &qword_25C7901D0);
  sub_25C77D580(a1, &v25[*(v26 + 44)]);
  v27 = *a1;
  v28 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  swift_beginAccess();
  sub_25C780FAC(v27 + v28, v16, &qword_27FC14000, " \r");
  v29 = sub_25C78E744();
  v30 = 1;
  v31 = (*(*(v29 - 8) + 48))(v16, 1, v29);
  sub_25C77AB6C(v16, &qword_27FC14000, " \r");
  if (v31 != 1)
  {
    v51 = sub_25C78EEA4();
    sub_25C78EF64();
    sub_25C78E994();
    v57 = v69;
    v56 = v70;
    v55 = v71;
    v54 = v72;
    v53 = v73;
    v52 = v74;
    v32 = sub_25C78EB94();
    v33 = v58;
    *v58 = v32;
    *(v33 + 8) = 0;
    *(v33 + 16) = 1;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14250, &qword_25C7901E0) + 44);
    v34 = v27 + v28;
    v35 = v60;
    sub_25C780FAC(v34, v60, &qword_27FC14000, " \r");
    v36 = swift_allocObject();
    v37 = *(a1 + 1);
    v36[1] = *a1;
    v36[2] = v37;
    v38 = *(a1 + 3);
    v36[3] = *(a1 + 2);
    v36[4] = v38;
    sub_25C780FAC(v35, v59, &qword_27FC14000, " \r");
    v39 = swift_allocObject();
    v39[2] = sub_25C780944;
    v39[3] = v36;
    v39[4] = sub_25C77FE90;
    v39[5] = 0;
    sub_25C780BD0(a1, v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14258, &qword_25C7901E8);
    sub_25C780C08();
    sub_25C78E924();
    sub_25C77AB6C(v35, &qword_27FC14000, " \r");
    v40 = v61;
    sub_25C780FAC(v33, v61, &qword_27FC14228, &unk_25C7901B0);
    *v5 = 0;
    v5[8] = 1;
    v41 = v57;
    *(v5 + 2) = v51;
    *(v5 + 3) = v41;
    v5[32] = v56;
    *(v5 + 5) = v55;
    v5[48] = v54;
    v42 = v52;
    *(v5 + 7) = v53;
    *(v5 + 8) = v42;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142C8, &qword_25C790220);
    sub_25C780FAC(v40, &v5[*(v43 + 64)], &qword_27FC14228, &unk_25C7901B0);

    sub_25C77AB6C(v33, &qword_27FC14228, &unk_25C7901B0);
    sub_25C77AB6C(v40, &qword_27FC14228, &unk_25C7901B0);

    sub_25C780F44(v5, v67, &qword_27FC14220, &qword_25C7901A8);
    v30 = 0;
  }

  v44 = v67;
  (*(v64 + 56))(v67, v30, 1, v65);
  v45 = v62;
  sub_25C780FAC(v25, v62, &qword_27FC14238, &qword_25C7901C8);
  v46 = v63;
  sub_25C780FAC(v44, v63, &qword_27FC14230, &qword_25C7901C0);
  v47 = v66;
  sub_25C780FAC(v45, v66, &qword_27FC14238, &qword_25C7901C8);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14248, &qword_25C7901D8);
  sub_25C780FAC(v46, v47 + *(v48 + 48), &qword_27FC14230, &qword_25C7901C0);
  sub_25C77AB6C(v44, &qword_27FC14230, &qword_25C7901C0);
  sub_25C77AB6C(v25, &qword_27FC14238, &qword_25C7901C8);
  sub_25C77AB6C(v46, &qword_27FC14230, &qword_25C7901C0);
  return sub_25C77AB6C(v45, &qword_27FC14238, &qword_25C7901C8);
}

uint64_t sub_25C77D580@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142F0, &qword_25C790248);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142F8, &qword_25C790250);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14300, &qword_25C790258);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  *v20 = sub_25C78EAD4();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14308, &qword_25C790260);
  sub_25C77D908(a1, &v20[*(v21 + 44)]);
  *v14 = sub_25C78EAD4();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14310, &qword_25C790268);
  sub_25C77E9AC(a1, &v14[*(v22 + 44)]);
  *v8 = sub_25C78EAD4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14318, &qword_25C790270);
  sub_25C77F0E0(&v8[*(v23 + 44)]);
  v24 = v18;
  v29 = v18;
  sub_25C780FAC(v20, v18, &qword_27FC14300, &qword_25C790258);
  sub_25C780FAC(v14, v12, &qword_27FC142F8, &qword_25C790250);
  v25 = v6;
  sub_25C780FAC(v8, v6, &qword_27FC142F0, &qword_25C790248);
  v26 = v30;
  sub_25C780FAC(v24, v30, &qword_27FC14300, &qword_25C790258);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14320, &qword_25C790278);
  sub_25C780FAC(v12, v26 + *(v27 + 48), &qword_27FC142F8, &qword_25C790250);
  sub_25C780FAC(v25, v26 + *(v27 + 64), &qword_27FC142F0, &qword_25C790248);
  sub_25C77AB6C(v8, &qword_27FC142F0, &qword_25C790248);
  sub_25C77AB6C(v14, &qword_27FC142F8, &qword_25C790250);
  sub_25C77AB6C(v20, &qword_27FC14300, &qword_25C790258);
  sub_25C77AB6C(v25, &qword_27FC142F0, &qword_25C790248);
  sub_25C77AB6C(v12, &qword_27FC142F8, &qword_25C790250);
  return sub_25C77AB6C(v29, &qword_27FC14300, &qword_25C790258);
}

uint64_t sub_25C77D908@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC143E8, &qword_25C790390);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  *v9 = sub_25C78EAD4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC143F0, &qword_25C790398);
  sub_25C77DBD8(a1, &v9[*(v10 + 44)]);
  sub_25C78EF64();
  sub_25C78E994();
  v11 = &v9[*(v4 + 44)];
  v12 = v32[1];
  *v11 = v32[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v32[2];
  sub_25C77E634(&v38);
  v14 = v38;
  v13 = v39;
  v29 = v39;
  v28 = v40;
  v15 = v42;
  v27 = v41;
  v16 = v43;
  v17 = v44;
  v18 = sub_25C78EB84();
  LOBYTE(v33) = v17;
  v30 = v7;
  sub_25C780FAC(v9, v7, &qword_27FC143E8, &qword_25C790390);
  v19 = v7;
  v20 = v31;
  sub_25C780FAC(v19, v31, &qword_27FC143E8, &qword_25C790390);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC143F8, &qword_25C7903A0) + 48));
  *&v33 = v14;
  *(&v33 + 1) = v13;
  LOBYTE(v20) = v28;
  LOBYTE(v34) = v28;
  v22 = v27;
  *(&v34 + 1) = v27;
  *&v35 = v15;
  *(&v35 + 1) = v16;
  LOBYTE(v36) = v17;
  *(&v36 + 1) = v18;
  *&v37 = sub_25C77E984;
  *(&v37 + 1) = 0;
  v23 = v34;
  *v21 = v33;
  v21[1] = v23;
  v24 = v36;
  v21[2] = v35;
  v21[3] = v24;
  v21[4] = v37;
  sub_25C780FAC(&v33, &v38, &qword_27FC14400, &qword_25C7903A8);
  sub_25C77AB6C(v9, &qword_27FC143E8, &qword_25C790390);
  v38 = v14;
  v39 = v29;
  v40 = v20;
  v41 = v22;
  v42 = v15;
  v43 = v16;
  v44 = v17;
  v45 = v18;
  v46 = sub_25C77E984;
  v47 = 0;
  sub_25C77AB6C(&v38, &qword_27FC14400, &qword_25C7903A8);
  return sub_25C77AB6C(v30, &qword_27FC143E8, &qword_25C790390);
}

uint64_t sub_25C77DBD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14380, &qword_25C790368);
  MEMORY[0x28223BE20](v72);
  v5 = &v64 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14408, &qword_25C7903B0);
  MEMORY[0x28223BE20](v69);
  v71 = &v64 - v6;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14410, &qword_25C7903B8);
  MEMORY[0x28223BE20](v70);
  v8 = &v64 - v7;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14418, &qword_25C7903C0);
  MEMORY[0x28223BE20](v80);
  v73 = &v64 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14420, &qword_25C7903C8);
  MEMORY[0x28223BE20](v10);
  v12 = &v64 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14428, &qword_25C7903D0);
  MEMORY[0x28223BE20](v77);
  v78 = &v64 - v13;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14430, &qword_25C7903D8);
  MEMORY[0x28223BE20](v81);
  v79 = &v64 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14438, &qword_25C7903E0);
  MEMORY[0x28223BE20](v74);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14440, &qword_25C7903E8);
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14448, &qword_25C7903F0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v64 - v22;
  v24 = *a1;
  if (*(*a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isPasswordProtected) == 1)
  {
    v75 = v21;
    v25 = *(v24 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isAuthenticated);
    v67 = v12;
    v68 = a2;
    v76 = v10;
    if (v25 == 1)
    {
      v72 = sub_25C78EEE4();
      LODWORD(v73) = 0;
    }

    else
    {
      v72 = sub_25C78EEE4();
      LODWORD(v73) = 1;
    }

    v41 = sub_25C78EC94();
    v42 = sub_25C78ED14();
    KeyPath = swift_getKeyPath();
    v44 = &v19[*(v17 + 36)];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
    v46 = *MEMORY[0x277CE1050];
    v47 = sub_25C78EF04();
    (*(*(v47 - 8) + 104))(v44 + v45, v46, v47);
    *v44 = swift_getKeyPath();
    *v19 = v72;
    *(v19 + 2) = v41;
    *(v19 + 2) = KeyPath;
    *(v19 + 3) = v42;
    sub_25C780FAC(v19, v16, &qword_27FC14440, &qword_25C7903E8);
    swift_storeEnumTagMultiPayload();
    sub_25C781A4C();
    sub_25C78EC64();
    sub_25C77AB6C(v19, &qword_27FC14440, &qword_25C7903E8);
    sub_25C780FAC(v23, v78, &qword_27FC14448, &qword_25C7903F0);
    swift_storeEnumTagMultiPayload();
    sub_25C7819C8();
    sub_25C781BBC();
    v48 = v79;
    sub_25C78EC64();
    sub_25C780FAC(v48, v67, &qword_27FC14430, &qword_25C7903D8);
    swift_storeEnumTagMultiPayload();
    sub_25C78193C();
    sub_25C78EC64();
    sub_25C77AB6C(v48, &qword_27FC14430, &qword_25C7903D8);
    v49 = v23;
    v50 = &qword_27FC14448;
    v51 = &qword_25C7903F0;
  }

  else
  {
    if (*(v24 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isShared) != 1)
    {
      *v12 = 0;
      v12[8] = 1;
      swift_storeEnumTagMultiPayload();
      sub_25C78193C();
      return sub_25C78EC64();
    }

    v75 = v21;
    v76 = v10;
    if (*(v24 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_hasUnreadChanges) == 1)
    {
      v74 = sub_25C78EEE4();
      v26 = [objc_opt_self() ICTintColor];
      v66 = sub_25C78EE74();
      v65 = swift_getKeyPath();
      v27 = sub_25C78EC94();
      v28 = sub_25C78ED14();
      v29 = swift_getKeyPath();
      v30 = v12;
      v31 = &v8[*(v70 + 36)];
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
      v33 = *MEMORY[0x277CE1050];
      v34 = sub_25C78EF04();
      (*(*(v34 - 8) + 104))(v31 + v32, v33, v34);
      *v31 = swift_getKeyPath();
      v12 = v30;
      v36 = v65;
      v35 = v66;
      *v8 = v74;
      *(v8 + 1) = v36;
      *(v8 + 2) = v35;
      *(v8 + 6) = v27;
      *(v8 + 4) = v29;
      *(v8 + 5) = v28;
      sub_25C780FAC(v8, v71, &qword_27FC14410, &qword_25C7903B8);
      swift_storeEnumTagMultiPayload();
      sub_25C781C48();
      sub_25C7815D0();
      v37 = v73;
      sub_25C78EC64();
      v38 = v8;
      v39 = &qword_27FC14410;
      v40 = &qword_25C7903B8;
    }

    else
    {
      v53 = sub_25C78EEE4();
      v54 = sub_25C78EC94();
      v55 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14398, &qword_25C790370) + 36)];
      v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
      v57 = *MEMORY[0x277CE1050];
      v58 = sub_25C78EF04();
      (*(*(v58 - 8) + 104))(v55 + v56, v57, v58);
      *v55 = swift_getKeyPath();
      *v5 = v53;
      *(v5 + 2) = v54;
      v59 = sub_25C78ED14();
      v60 = swift_getKeyPath();
      v61 = v71;
      v62 = &v5[*(v72 + 36)];
      *v62 = v60;
      v62[1] = v59;
      sub_25C780FAC(v5, v61, &qword_27FC14380, &qword_25C790368);
      swift_storeEnumTagMultiPayload();
      sub_25C781C48();
      sub_25C7815D0();
      v37 = v73;
      sub_25C78EC64();
      v38 = v5;
      v39 = &qword_27FC14380;
      v40 = &qword_25C790368;
    }

    sub_25C77AB6C(v38, v39, v40);
    sub_25C780FAC(v37, v78, &qword_27FC14418, &qword_25C7903C0);
    swift_storeEnumTagMultiPayload();
    sub_25C7819C8();
    sub_25C781BBC();
    v63 = v79;
    sub_25C78EC64();
    sub_25C780FAC(v63, v12, &qword_27FC14430, &qword_25C7903D8);
    swift_storeEnumTagMultiPayload();
    sub_25C78193C();
    sub_25C78EC64();
    sub_25C77AB6C(v63, &qword_27FC14430, &qword_25C7903D8);
    v49 = v37;
    v50 = &qword_27FC14418;
    v51 = &qword_25C7903C0;
  }

  return sub_25C77AB6C(v49, v50, v51);
}

uint64_t sub_25C77E634@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC147D0, &qword_25C790358);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v43 - v4;
  v6 = sub_25C78E6A4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = *v1;
  v14 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle;
  swift_beginAccess();
  sub_25C780FAC(v13 + v14, v5, &unk_27FC147D0, &qword_25C790358);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25C77AB6C(v5, &unk_27FC147D0, &qword_25C790358);
    v15 = (v13 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
    swift_beginAccess();
    v16 = *v15;
    v17 = v15[1];
    v47 = v16;
    v48 = v17;
    sub_25C781450();

    v18 = sub_25C78EDA4();
    v20 = v19;
    v22 = v21;
    sub_25C78ED44();
    v23 = sub_25C78ED74();
    v25 = v24;
    v27 = v26;
    v29 = v28;

    sub_25C7814B4(v18, v20, v22 & 1);
  }

  else
  {
    (*(v7 + 32))(v12, v5, v6);
    (*(v7 + 16))(v10, v12, v6);
    v30 = sub_25C78ED94();
    v32 = v31;
    v34 = v33;
    v45 = v35;
    sub_25C78ED44();
    v46 = sub_25C78ED74();
    v44 = v36;
    v38 = v37;
    v29 = v39;

    v40 = v34 & 1;
    v27 = v38;
    v41 = v32;
    v25 = v44;
    sub_25C7814B4(v30, v41, v40);

    (*(v7 + 8))(v12, v6);
    v23 = v46;
  }

  result = swift_getKeyPath();
  *a1 = v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = v27 & 1;
  *(a1 + 24) = v29;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_25C77E9AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14358, &qword_25C790308);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  *v9 = sub_25C78EAD4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14360, &qword_25C790310);
  sub_25C77ECD4(a1, &v9[*(v10 + 44)]);
  sub_25C78EF64();
  sub_25C78E994();
  v11 = &v9[*(v4 + 44)];
  v12 = *&v26[11];
  *v11 = *&v26[9];
  *(v11 + 1) = v12;
  *(v11 + 2) = *&v26[13];
  v13 = sub_25C78EAC4();
  LOBYTE(v33[0]) = 1;
  sub_25C77F420(a1, v27);
  *(&v26[2] + 7) = v27[1];
  *(&v26[4] + 7) = v27[2];
  *(&v26[6] + 7) = v27[3];
  HIBYTE(v26[8]) = v28;
  *(v26 + 7) = v27[0];
  v14 = v33[0];
  LODWORD(a1) = sub_25C78EC94();
  KeyPath = swift_getKeyPath();
  LOBYTE(v33[0]) = 0;
  v24 = v7;
  sub_25C780FAC(v9, v7, &qword_27FC14358, &qword_25C790308);
  v16 = v25;
  sub_25C780FAC(v7, v25, &qword_27FC14358, &qword_25C790308);
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14368, &qword_25C790348) + 48);
  *(&v30[2] + 1) = *&v26[4];
  *(&v30[1] + 1) = *&v26[2];
  v18 = v16 + v17;
  v29 = v13;
  LOBYTE(v30[0]) = v14;
  *(&v30[4] + 1) = v26[8];
  *(&v30[3] + 1) = *&v26[6];
  *(v30 + 1) = *v26;
  HIDWORD(v30[4]) = a1;
  *&v31 = KeyPath;
  *(&v31 + 1) = 1;
  v32 = 0;
  *(v18 + 112) = 0;
  v19 = v30[4];
  *(v18 + 64) = v30[3];
  *(v18 + 80) = v19;
  *(v18 + 96) = v31;
  v20 = v30[2];
  *(v18 + 32) = v30[1];
  *(v18 + 48) = v20;
  v21 = v30[0];
  *v18 = v29;
  *(v18 + 16) = v21;
  sub_25C780FAC(&v29, v33, &qword_27FC14370, &qword_25C790350);
  sub_25C77AB6C(v9, &qword_27FC14358, &qword_25C790308);
  v36 = *&v26[2];
  v37 = *&v26[4];
  v38 = *&v26[6];
  v33[0] = v13;
  v33[1] = 0;
  v34 = v14;
  v39 = v26[8];
  v35 = *v26;
  v40 = a1;
  v41 = KeyPath;
  v42 = 1;
  v43 = 0;
  sub_25C77AB6C(v33, &qword_27FC14370, &qword_25C790350);
  return sub_25C77AB6C(v24, &qword_27FC14358, &qword_25C790308);
}

uint64_t sub_25C77ECD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14328, &qword_25C790280);
  MEMORY[0x28223BE20](v4);
  v6 = v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14378, &qword_25C790360);
  MEMORY[0x28223BE20](v7);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14380, &qword_25C790368);
  MEMORY[0x28223BE20](v10);
  v12 = v33 - v11;
  if (*(*a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isShared) == 1 && *(*a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_hasUnreadChanges) == 1)
  {
    v13 = sub_25C78EEE4();
    v14 = sub_25C78EC94();
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14398, &qword_25C790370) + 36);
    v33[1] = a2;
    v16 = &v12[v15];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
    v18 = *MEMORY[0x277CE1050];
    v19 = sub_25C78EF04();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = swift_getKeyPath();
    *v12 = v13;
    *(v12 + 2) = v14;
    v20 = sub_25C78ED14();
    KeyPath = swift_getKeyPath();
    v22 = &v12[*(v10 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    sub_25C780FAC(v12, v9, &qword_27FC14380, &qword_25C790368);
    swift_storeEnumTagMultiPayload();
    sub_25C7815D0();
    sub_25C7817F8();
    sub_25C78EC64();
    v23 = v12;
    v24 = &qword_27FC14380;
    v25 = &qword_25C790368;
  }

  else
  {
    v26 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14330, &qword_25C790288) + 36)];
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
    v28 = *MEMORY[0x277CE1050];
    v29 = sub_25C78EF04();
    (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
    *v26 = swift_getKeyPath();
    *v6 = 0;
    v6[8] = 1;
    sub_25C78EF64();
    sub_25C78E994();
    v30 = &v6[*(v4 + 36)];
    v31 = v35;
    *v30 = v34;
    *(v30 + 1) = v31;
    *(v30 + 2) = v36;
    sub_25C780FAC(v6, v9, &qword_27FC14328, &qword_25C790280);
    swift_storeEnumTagMultiPayload();
    sub_25C7815D0();
    sub_25C7817F8();
    sub_25C78EC64();
    v23 = v6;
    v24 = &qword_27FC14328;
    v25 = &qword_25C790280;
  }

  return sub_25C77AB6C(v23, v24, v25);
}

uint64_t sub_25C77F0E0@<X0>(uint64_t a2@<X8>)
{
  v30 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14328, &qword_25C790280);
  v3 = v2 - 8;
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v27[-v7];
  v9 = &v27[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14330, &qword_25C790288) + 36) - v7];
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14338, &qword_25C790290) + 28);
  v11 = *MEMORY[0x277CE1050];
  v12 = sub_25C78EF04();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v8 = 0;
  v8[8] = 1;
  sub_25C78EF64();
  sub_25C78E994();
  v13 = &v8[*(v3 + 44)];
  v14 = *&v31[11];
  *v13 = *&v31[9];
  v13[1] = v14;
  v13[2] = *&v31[13];
  v15 = sub_25C78EAC4();
  LOBYTE(v35[0]) = 1;
  sub_25C77F930(v32);
  *(v31 + 7) = v32[0];
  *(&v31[2] + 7) = v32[1];
  *(&v31[4] + 7) = v32[2];
  *(&v31[6] + 7) = v32[3];
  v16 = v35[0];
  v17 = sub_25C78ED14();
  KeyPath = swift_getKeyPath();
  v28 = sub_25C78EC94();
  v29 = v6;
  sub_25C780FAC(v8, v6, &qword_27FC14328, &qword_25C790280);
  v19 = v6;
  v20 = v30;
  sub_25C780FAC(v19, v30, &qword_27FC14328, &qword_25C790280);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14340, &qword_25C7902F8) + 48));
  v33 = v15;
  LOBYTE(v3) = v16;
  LOBYTE(v34[0]) = v16;
  *(&v34[3] + 1) = *&v31[6];
  *(&v34[2] + 1) = *&v31[4];
  *(&v34[1] + 1) = *&v31[2];
  *(v34 + 1) = *v31;
  *&v34[4] = *(&v31[7] + 7);
  *(&v34[4] + 1) = KeyPath;
  *&v34[5] = v17;
  v22 = v28;
  DWORD2(v34[5]) = v28;
  v23 = v34[4];
  v21[4] = v34[3];
  v21[5] = v23;
  *(v21 + 92) = *(&v34[4] + 12);
  v24 = v34[0];
  *v21 = v33;
  v21[1] = v24;
  v25 = v34[2];
  v21[2] = v34[1];
  v21[3] = v25;
  sub_25C780FAC(&v33, v35, &qword_27FC14348, &qword_25C790300);
  sub_25C77AB6C(v8, &qword_27FC14328, &qword_25C790280);
  v38 = *&v31[2];
  v39 = *&v31[4];
  *v40 = *&v31[6];
  v35[0] = v15;
  v35[1] = 0;
  v36 = v3;
  v37 = *v31;
  *&v40[15] = *(&v31[7] + 7);
  v41 = KeyPath;
  v42 = v17;
  v43 = v22;
  sub_25C77AB6C(v35, &qword_27FC14348, &qword_25C790300);
  return sub_25C77AB6C(v29, &qword_27FC14328, &qword_25C790280);
}

uint64_t sub_25C77F420@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC147D0, &qword_25C790358);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v60 - v5;
  v7 = sub_25C78E6A4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v60 - v11;
  v12 = a1[2];
  v72 = a1[1];
  v73 = v12;
  v13 = sub_25C781450();

  v60 = v13;
  v14 = sub_25C78EDA4();
  v16 = v15;
  v18 = v17;
  sub_25C78ED14();
  v19 = sub_25C78ED74();
  v64 = v20;
  v65 = v19;
  v63 = v21;
  v66 = v22;

  sub_25C7814B4(v14, v16, v18 & 1);

  v23 = *a1;
  v24 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet;
  swift_beginAccess();
  sub_25C780FAC(v23 + v24, v6, &unk_27FC147D0, &qword_25C790358);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_25C77AB6C(v6, &unk_27FC147D0, &qword_25C790358);
    v25 = *(v23 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet + 8);
    if (!v25)
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = -1;
      goto LABEL_6;
    }

    v72 = *(v23 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
    v73 = v25;

    v26 = sub_25C78EDA4();
    v28 = v27;
    v30 = v29;
    sub_25C78ED14();
    v31 = sub_25C78ED74();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    sub_25C7814B4(v26, v28, v30 & 1);

    v67 = v31;
    v68 = v33;
    v69 = v35 & 1;
    v70 = v37;
    v71 = 1;
    sub_25C78EC64();
  }

  else
  {
    v38 = v62;
    (*(v8 + 32))(v62, v6, v7);
    (*(v8 + 16))(v61, v38, v7);
    v39 = sub_25C78ED94();
    v41 = v40;
    v43 = v42;
    sub_25C78ED14();
    v44 = sub_25C78ED74();
    v60 = v45;
    v47 = v46;
    v61 = v7;
    v49 = v48;

    sub_25C7814B4(v39, v41, v43 & 1);

    v67 = v44;
    v68 = v60;
    v69 = v47 & 1;
    v70 = v49;
    v71 = 0;
    sub_25C78EC64();
    (*(v8 + 8))(v62, v61);
  }

  v50 = v72;
  v51 = v73;
  v52 = v74;
  v53 = v75;
  v54 = v76;
  sub_25C781540(v72, v73, v74, v75);
LABEL_6:
  v55 = v63 & 1;
  v57 = v64;
  v56 = v65;
  sub_25C7814A4(v65, v64, v63 & 1);
  v58 = v66;

  sub_25C781528(v50, v51, v52, v53, v54);
  sub_25C78157C(v50, v51, v52, v53, v54);
  LOBYTE(v72) = v55;
  *a2 = v56;
  *(a2 + 8) = v57;
  *(a2 + 16) = v55;
  *(a2 + 24) = v58;
  *(a2 + 32) = v50;
  *(a2 + 40) = v51;
  *(a2 + 48) = v52;
  *(a2 + 56) = v53;
  *(a2 + 64) = v54;
  sub_25C78157C(v50, v51, v52, v53, v54);
  sub_25C7814B4(v56, v57, v55);
}

uint64_t sub_25C77F930@<X0>(uint64_t a2@<X8>)
{
  sub_25C78EEE4();
  v3 = sub_25C78EDB4();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  sub_25C78E834();

  sub_25C781450();
  v10 = sub_25C78EDA4();
  v12 = v11;
  v13 = v7 & 1;
  v18 = v7 & 1;
  v15 = v14 & 1;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v13;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v14 & 1;
  *(a2 + 56) = v16;
  sub_25C7814A4(v3, v5, v13);

  sub_25C7814A4(v10, v12, v15);

  sub_25C7814B4(v10, v12, v15);

  sub_25C7814B4(v3, v5, v18);
}

uint64_t sub_25C77FAC0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_25C78E9E4();
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C78EEF4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x277CE0FE0], v9);
  v13 = sub_25C78EF14();
  (*(v10 + 8))(v12, v9);
  *&v37 = v13;
  sub_25C78EDC4();

  sub_25C78EF64();
  sub_25C78E994();
  v14 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14290, &qword_25C790200) + 36));
  v15 = v38;
  *v14 = v37;
  v14[1] = v15;
  v14[2] = v39;
  v16 = *(a2 + 56);
  v17 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14280, &qword_25C7901F8) + 36));
  v18 = *(v6 + 28);
  v19 = *MEMORY[0x277CE0118];
  v20 = sub_25C78EB34();
  v21 = *(*(v20 - 8) + 104);
  v21(&v17[v18], v19, v20);
  *v17 = v16;
  *(v17 + 1) = v16;
  *&v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142A0, &qword_25C790208) + 36)] = 256;
  v21(&v8[*(v6 + 28)], v19, v20);
  *v8 = v16;
  *(v8 + 1) = v16;
  LODWORD(v6) = sub_25C78EC74();
  sub_25C78E954();
  v22 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14270, &qword_25C7901F0) + 36);
  v23 = MEMORY[0x277CDFC08];
  sub_25C781014(v8, v22, MEMORY[0x277CDFC08]);
  v24 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142D8, &qword_25C790230) + 36);
  v25 = v41;
  *v24 = v40;
  *(v24 + 16) = v25;
  *(v24 + 32) = v42;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142E0, &qword_25C790238);
  *(v22 + *(v26 + 52)) = v6;
  *(v22 + *(v26 + 56)) = 256;
  v27 = sub_25C78EF64();
  v29 = v28;
  sub_25C78107C(v8, v23);
  v30 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142E8, &qword_25C790240) + 36));
  *v30 = v27;
  v30[1] = v29;
  v31 = sub_25C78EF64();
  v33 = v32;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142B0, &qword_25C790210);
  v35 = (v22 + *(result + 36));
  *v35 = v31;
  v35[1] = v33;
  return result;
}

double sub_25C77FE90@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_25C78EEA4();
  sub_25C78EF64();
  sub_25C78E994();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  result = *&v9;
  *(a2 + 40) = v9;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25C780014(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25C78EFE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14170, &unk_25C790010);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_25C780158(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_25C78EFE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14170, &unk_25C790010);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_25C780288(uint64_t a1)
{
  sub_25C780384(319, &qword_27FC14188, type metadata accessor for NoteViewModel, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_25C78EFE4();
    if (v2 <= 0x3F)
    {
      sub_25C780384(319, &qword_27FC14190, MEMORY[0x277CC9788], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25C780384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_25C7803EC()
{
  result = qword_27FC14198;
  if (!qword_27FC14198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC141A0, &qword_25C790038);
    sub_25C7804B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14198);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25C7804B8()
{
  result = qword_27FC141A8;
  if (!qword_27FC141A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14168, &qword_25C78FFB0);
    sub_25C780544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC141A8);
  }

  return result;
}

unint64_t sub_25C780544()
{
  result = qword_27FC141B0;
  if (!qword_27FC141B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14160, &qword_25C78FFA8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC141B8, &qword_25C790040);
    sub_25C78060C();
    swift_getOpaqueTypeConformance2();
    sub_25C780718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC141B0);
  }

  return result;
}

unint64_t sub_25C78060C()
{
  result = qword_27FC141C0;
  if (!qword_27FC141C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC141B8, &qword_25C790040);
    sub_25C7806C4();
    sub_25C78240C(&qword_27FC141D0, &qword_27FC141D8, &qword_25C790048, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC141C0);
  }

  return result;
}

unint64_t sub_25C7806C4()
{
  result = qword_27FC141C8;
  if (!qword_27FC141C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC141C8);
  }

  return result;
}

unint64_t sub_25C780718()
{
  result = qword_27FC141E0;
  if (!qword_27FC141E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC141E0);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25C780778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25C7807C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25C780824(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25C78086C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25C780904()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25C78094C@<X0>(void (*a1)(uint64_t)@<X1>, void (*a2)(void *__return_ptr)@<X3>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142D0, &qword_25C790228);
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14270, &qword_25C7901F0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-1] - v9;
  v11 = sub_25C78E9B4();
  if (v11)
  {
    a1(v11);
    sub_25C780FAC(v10, v7, &qword_27FC14270, &qword_25C7901F0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142C0, &qword_25C790218);
    sub_25C780C94();
    sub_25C780EC0();
    sub_25C78EC64();

    return sub_25C77AB6C(v10, &qword_27FC14270, &qword_25C7901F0);
  }

  else
  {
    a2(v19);
    v13 = v19[1];
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v23;
    *v7 = v19[0];
    *(v7 + 1) = v13;
    v7[16] = v14;
    *(v7 + 3) = v15;
    v7[32] = v16;
    *(v7 + 40) = v17;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC142C0, &qword_25C790218);
    sub_25C780C94();
    sub_25C780EC0();
    return sub_25C78EC64();
  }
}

uint64_t sub_25C780B84()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25C780C08()
{
  result = qword_27FC14260;
  if (!qword_27FC14260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14258, &qword_25C7901E8);
    sub_25C780C94();
    sub_25C780EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14260);
  }

  return result;
}

unint64_t sub_25C780C94()
{
  result = qword_27FC14268;
  if (!qword_27FC14268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14270, &qword_25C7901F0);
    sub_25C780D4C();
    sub_25C78240C(&qword_27FC142A8, &qword_27FC142B0, &qword_25C790210, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14268);
  }

  return result;
}

unint64_t sub_25C780D4C()
{
  result = qword_27FC14278;
  if (!qword_27FC14278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14280, &qword_25C7901F8);
    sub_25C780E04();
    sub_25C78240C(&qword_27FC14298, &qword_27FC142A0, &qword_25C790208, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14278);
  }

  return result;
}

unint64_t sub_25C780E04()
{
  result = qword_27FC14288;
  if (!qword_27FC14288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14290, &qword_25C790200);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14288);
  }

  return result;
}

unint64_t sub_25C780EC0()
{
  result = qword_27FC142B8;
  if (!qword_27FC142B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC142C0, &qword_25C790218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC142B8);
  }

  return result;
}

uint64_t sub_25C780F44(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C780FAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C781014(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C78107C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_25C7810DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14150, &qword_25C78FF68);
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

char *sub_25C7811E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25C781208(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25C781208(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14150, &qword_25C78FF68);
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

uint64_t sub_25C781338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_25C781450()
{
  result = qword_27FC14350;
  if (!qword_27FC14350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14350);
  }

  return result;
}

uint64_t sub_25C7814A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25C7814B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25C7814C4@<X0>(uint64_t a1@<X8>)
{
  result = sub_25C78EA84();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_25C781528(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_25C781540(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_25C781540(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_25C7814A4(a1, a2, a3 & 1);
}

uint64_t sub_25C78157C(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_25C781594(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_25C781594(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_25C7814B4(a1, a2, a3 & 1);
}

unint64_t sub_25C7815D0()
{
  result = qword_27FC14388;
  if (!qword_27FC14388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14380, &qword_25C790368);
    sub_25C781688();
    sub_25C78240C(&qword_27FC143C8, &qword_27FC143D0, &qword_25C790388, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14388);
  }

  return result;
}

unint64_t sub_25C781688()
{
  result = qword_27FC14390;
  if (!qword_27FC14390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14398, &qword_25C790370);
    sub_25C781740();
    sub_25C78240C(&qword_27FC143C0, &qword_27FC14338, &qword_25C790290, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14390);
  }

  return result;
}

unint64_t sub_25C781740()
{
  result = qword_27FC143A0;
  if (!qword_27FC143A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC143A8, &qword_25C790378);
    sub_25C78240C(&qword_27FC143B0, &qword_27FC143B8, &qword_25C790380, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC143A0);
  }

  return result;
}

unint64_t sub_25C7817F8()
{
  result = qword_27FC143D8;
  if (!qword_27FC143D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14328, &qword_25C790280);
    sub_25C781884();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC143D8);
  }

  return result;
}

unint64_t sub_25C781884()
{
  result = qword_27FC143E0;
  if (!qword_27FC143E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14330, &qword_25C790288);
    sub_25C78240C(&qword_27FC143C0, &qword_27FC14338, &qword_25C790290, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC143E0);
  }

  return result;
}

unint64_t sub_25C78193C()
{
  result = qword_27FC14450;
  if (!qword_27FC14450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14430, &qword_25C7903D8);
    sub_25C7819C8();
    sub_25C781BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14450);
  }

  return result;
}

unint64_t sub_25C7819C8()
{
  result = qword_27FC14458;
  if (!qword_27FC14458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14448, &qword_25C7903F0);
    sub_25C781A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14458);
  }

  return result;
}

unint64_t sub_25C781A4C()
{
  result = qword_27FC14460;
  if (!qword_27FC14460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14440, &qword_25C7903E8);
    sub_25C781B04();
    sub_25C78240C(&qword_27FC143C0, &qword_27FC14338, &qword_25C790290, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14460);
  }

  return result;
}

unint64_t sub_25C781B04()
{
  result = qword_27FC14468;
  if (!qword_27FC14468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14470, &qword_25C7903F8);
    sub_25C781740();
    sub_25C78240C(&qword_27FC143C8, &qword_27FC143D0, &qword_25C790388, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14468);
  }

  return result;
}

unint64_t sub_25C781BBC()
{
  result = qword_27FC14478;
  if (!qword_27FC14478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14418, &qword_25C7903C0);
    sub_25C781C48();
    sub_25C7815D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14478);
  }

  return result;
}

unint64_t sub_25C781C48()
{
  result = qword_27FC14480;
  if (!qword_27FC14480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14410, &qword_25C7903B8);
    sub_25C781D00();
    sub_25C78240C(&qword_27FC143C0, &qword_27FC14338, &qword_25C790290, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14480);
  }

  return result;
}

unint64_t sub_25C781D00()
{
  result = qword_27FC14488;
  if (!qword_27FC14488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14490, &qword_25C790400);
    sub_25C781DB8();
    sub_25C78240C(&qword_27FC143C8, &qword_27FC143D0, &qword_25C790388, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14488);
  }

  return result;
}

unint64_t sub_25C781DB8()
{
  result = qword_27FC14498;
  if (!qword_27FC14498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC144A0, &qword_25C790408);
    sub_25C781E70();
    sub_25C78240C(&qword_27FC143B0, &qword_27FC143B8, &qword_25C790380, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14498);
  }

  return result;
}

unint64_t sub_25C781E70()
{
  result = qword_27FC144A8;
  if (!qword_27FC144A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC144B0, &qword_25C790410);
    sub_25C78240C(&qword_27FC144B8, &qword_27FC144C0, &qword_25C790418, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC144A8);
  }

  return result;
}

uint64_t sub_25C781F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C78EA34();
  *a1 = result;
  return result;
}

unint64_t sub_25C781F80()
{
  result = qword_27FC144F0;
  if (!qword_27FC144F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC144C8, &qword_25C790450);
    sub_25C78240C(&qword_27FC144E8, &qword_27FC144E0, &qword_25C790468, MEMORY[0x277CE04B0]);
    sub_25C782038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC144F0);
  }

  return result;
}

unint64_t sub_25C782038()
{
  result = qword_27FC144F8;
  if (!qword_27FC144F8)
  {
    sub_25C78ECC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC144F8);
  }

  return result;
}

uint64_t sub_25C782090()
{
  v1 = (type metadata accessor for NotesSiriListView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_25C78EFE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14158, &qword_25C78FFA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_25C78E7C4();
    (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25C7821F8()
{
  type metadata accessor for NotesSiriListView(0);
  v1 = *(v0 + 16);

  return sub_25C77C72C(v1);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_25C7822C8()
{
  result = qword_27FC14518;
  if (!qword_27FC14518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14200, &qword_25C790188);
    sub_25C782354();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14518);
  }

  return result;
}

unint64_t sub_25C782354()
{
  result = qword_27FC14520;
  if (!qword_27FC14520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC141F0, &qword_25C790178);
    sub_25C78240C(&qword_27FC14528, &qword_27FC141E8, &qword_25C790170, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14520);
  }

  return result;
}

uint64_t sub_25C78240C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25C782458()
{
  result = qword_27FC14530;
  if (!qword_27FC14530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC144D8, &qword_25C790460);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC144C8, &qword_25C790450);
    sub_25C781F80();
    swift_getOpaqueTypeConformance2();
    sub_25C782038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14530);
  }

  return result;
}

unint64_t NotesSiriSingleNoteView.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = 0;
  type metadata accessor for NotesSiriSingleNoteView(0);
  sub_25C78E734();
  v6 = objc_opt_self();
  [v6 startSharedContextWithOptions_];
  *a3 = a1;
  *(a3 + 8) = a2;

  v7 = [v6 sharedContext];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 managedObjectContext];
  }

  else
  {
    v9 = 0;
  }

  result = [objc_opt_self() sharedContext];
  if (!result)
  {
    goto LABEL_24;
  }

  v11 = result;
  v12 = [result managedObjectContext];

  v22[0] = a1;
  v22[1] = a2;
  v13 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v14 = v12;
  v20[0] = a1;
  v20[1] = a2;

  sub_25C788AD8(v20, v12, 0, 0, v9, &v19);

  if (v19)
  {
    MEMORY[0x25F88CDF0](v15);
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25C78F084();
    }

    sub_25C78F094();
    v13 = v21;
  }

  sub_25C786830(v22);
  if (!(v13 >> 62))
  {
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_11;
    }

LABEL_18:

    v18 = 0;
    goto LABEL_19;
  }

  v16 = sub_25C78F1A4();
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_11:
  v17 = __OFSUB__(v16, 1);
  result = v16 - 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_21;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
LABEL_21:
    v18 = MEMORY[0x25F88CF20](result, v13);
    goto LABEL_16;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v18 = *(v13 + 8 * result + 32);

LABEL_16:

LABEL_19:

    *(a3 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t NotesSiriSingleNoteView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = sub_25C78EB74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14548, &qword_25C7904A0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = *v1;
  v13 = v1[1];
  v14 = v1[2];

  sub_25C7829EC(v12, v13, v14, v8);
  sub_25C78EB54();
  sub_25C786C9C(&qword_27FC14550, type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView, &unk_25C790594);
  sub_25C78EE14();
  (*(v3 + 8))(v5, v2);
  sub_25C7868A4(v8);
  v17[2] = sub_25C78E854();
  v17[3] = v15;
  sub_25C781450();
  sub_25C78E9C4();

  return sub_25C77AB6C(v11, &qword_27FC14548, &qword_25C7904A0);
}

void sub_25C7829EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a1;
  v36 = a2;
  v6 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v7 = (v6 - 8);
  v37 = *(v6 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v6);
  v38 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25C78E7A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  v16 = v7[9];
  sub_25C78E734();
  sub_25C78EFD4();
  *(a4 + v7[11]) = 0x4028000000000000;
  v17 = a4 + v7[12];
  LOBYTE(v39) = 0;
  sub_25C78EF24();
  v18 = v41;
  *v17 = aBlock;
  *(v17 + 8) = v18;
  v19 = (a4 + v7[13]);
  v39 = 0xBFF0000000000000;
  sub_25C78EF24();
  v20 = v41;
  *v19 = aBlock;
  v19[1] = v20;
  sub_25C78E794();
  (*(v10 + 16))(v13, v15, v9);
  sub_25C78EF24();
  (*(v10 + 8))(v15, v9);
  v21 = (a4 + v7[15]);
  *v21 = 0;
  v21[1] = 0xE000000000000000;
  v22 = v7[16];
  *(a4 + v22) = 0;
  v23 = v7[17];
  *(a4 + v23) = 0;
  *(a4 + v7[18]) = 0x4034000000000000;
  *(a4 + v7[19]) = 0x4038000000000000;
  *(a4 + v7[20]) = 0x403C000000000000;
  *(a4 + v7[21]) = 0x404A000000000000;
  [objc_opt_self() startSharedContextWithOptions_];
  v24 = v36;
  *a4 = v35;
  *(a4 + 8) = v24;
  if (a3)
  {

    sub_25C77AB6C(a4 + v16, &qword_27FC14000, " \r");
    v25 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_noteUrl;
    swift_beginAccess();
    v26 = sub_25C78E744();
    v27 = *(v26 - 8);
    (*(v27 + 16))(a4 + v16, a3 + v25, v26);
    (*(v27 + 56))(a4 + v16, 0, 1, v26);
    v28 = (a3 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
    swift_beginAccess();
    v29 = v28[1];
    *v21 = *v28;
    v21[1] = v29;
    *(a4 + v22) = *(a3 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isPasswordProtected);
    *(a4 + v23) = *(a3 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isUnsupported);
    LOBYTE(v25) = *(a3 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isModernNote);

    *(a4 + 24) = v25;
  }

  v30 = objc_opt_self();
  v31 = v38;
  sub_25C7872A4(a4, v38);
  v32 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v33 = swift_allocObject();
  sub_25C78730C(v31, v33 + v32);
  v44 = sub_25C78832C;
  v45 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v41 = 1107296256;
  v42 = sub_25C78301C;
  v43 = &block_descriptor_0;
  v34 = _Block_copy(&aBlock);

  [v30 setOpenURLHandler_];

  _Block_release(v34);
}

void sub_25C782EC4(uint64_t a1, void (*a2)(uint64_t))
{
  v3 = sub_25C78F004();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v8 = sub_25C78E714();
  [v7 setPunchOutUri_];

  type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  sub_25C78EFC4();
  v9 = v7;
  sub_25C78EFF4();

  (*(v4 + 8))(v6, v3);
  if (a2)
  {
    a2(1);
  }
}

uint64_t sub_25C78301C(uint64_t a1, uint64_t a2, const void *a3)
{
  v5 = sub_25C78E744();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  sub_25C78E724();
  v10 = _Block_copy(a3);
  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = sub_25C788404;
  }

  else
  {
    v11 = 0;
  }

  v9(v8, v10, v11);
  sub_25C77ABCC(v10, v11);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25C783178@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = sub_25C78EB74();
  v27 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x28223BE20](v4);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14780, &qword_25C7907A0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v23 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14680, &qword_25C7906C8);
  MEMORY[0x28223BE20](v26);
  v9 = &v23 - v8;
  v11 = *v1;
  v10 = v1[1];
  v12 = (v1 + *(v4 + 44));
  v13 = *v12;
  v14 = v12[1];
  v34[0] = v13;
  v34[1] = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145C8, &qword_25C790608);
  sub_25C78EF34();
  v15 = v30;
  v32 = v4;
  v33 = &off_286E65B60;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  sub_25C7872A4(v1, boxed_opaque_existential_1);
  sub_25C777F28(v11, v10, &v30, v34, *&v15);
  sub_25C7872A4(v1, &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v18 = swift_allocObject();
  sub_25C78730C(&v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v19 = sub_25C77AA48();
  sub_25C78EE04();

  sub_25C78EB54();
  v30 = &type metadata for NotesSiriTextEditorWrapper;
  v31 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v24;
  sub_25C78EE14();
  (*(v27 + 8))(v3, v28);
  (*(v25 + 8))(v7, v20);
  v30 = sub_25C78E854();
  v31 = v21;
  sub_25C781450();
  sub_25C78E9C4();

  sub_25C77AB6C(v9, &qword_27FC14680, &qword_25C7906C8);
  return sub_25C7882D8(v34);
}

uint64_t sub_25C7835C4(uint64_t a1)
{
  v2 = sub_25C78F004();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  v10 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  sub_25C780FAC(a1 + *(v10 + 28), v8, &qword_27FC14000, " \r");
  v11 = sub_25C78E744();
  v12 = *(v11 - 8);
  v13 = 0;
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    v13 = sub_25C78E714();
    (*(v12 + 8))(v8, v11);
  }

  [v9 setPunchOutUri_];

  sub_25C78EFC4();
  v14 = v9;
  sub_25C78EFF4();

  return (*(v3 + 8))(v5, v2);
}

void *sub_25C7837EC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v20[0] = *(v4 - 8);
  v20[1] = v4;
  v5 = *(v20[0] + 64);
  MEMORY[0x28223BE20](v4);
  v6 = objc_opt_self();
  v7 = [v6 standardUserDefaults];
  v8 = sub_25C78F024();
  v9 = [v7 BOOLForKey_];

  v10 = [v6 standardUserDefaults];
  v11 = sub_25C78F024();
  [v10 setBool:v9 forKey:v11];

  *a1 = sub_25C78EF64();
  a1[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145A8, &qword_25C7905E8);
  sub_25C783AC8(v2, v9, a1 + *(v13 + 44));
  v14 = [objc_opt_self() defaultCenter];
  if (qword_27FC13F78 != -1)
  {
    swift_once();
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145B0, &qword_25C7905F0);
  sub_25C78F0E4();

  sub_25C7872A4(v2, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v20[0] + 80) + 16) & ~*(v20[0] + 80);
  v17 = swift_allocObject();
  sub_25C78730C(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  v18 = (a1 + *(v15 + 56));
  *v18 = sub_25C787370;
  v18[1] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145B8, &qword_25C7905F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);
  return sub_25C78EF34();
}

uint64_t sub_25C783AC8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v32 = a2;
  v34 = a3;
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145D0, &qword_25C790610);
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145D8, &qword_25C790618);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145E0, &qword_25C790620);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  *v21 = sub_25C78EBA4();
  *(v21 + 1) = 0;
  v21[16] = 0;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145E8, &qword_25C790628);
  sub_25C783F10(a1, v32, &v21[*(v22 + 44)]);
  *&v21[*(v16 + 44)] = 0;
  if (*(a1 + 24) == 1)
  {
    v35 = sub_25C78EE94();
    v36 = 0x3F50624DD2F1A9FCLL;
    sub_25C7872A4(a1, &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v24 = swift_allocObject();
    sub_25C78730C(&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145F8, &qword_25C790638);
    sub_25C787AC8();
    sub_25C78EE04();

    v25 = v33;
    *&v8[*(v33 + 36)] = 0x3FF0000000000000;
    sub_25C780F44(v8, v14, &qword_27FC145D0, &qword_25C790610);
    v26 = 0;
    v27 = v25;
  }

  else
  {
    v26 = 1;
    v27 = v33;
  }

  (*(v6 + 56))(v14, v26, 1, v27);
  sub_25C780FAC(v21, v19, &qword_27FC145E0, &qword_25C790620);
  sub_25C780FAC(v14, v12, &qword_27FC145D8, &qword_25C790618);
  v28 = v34;
  sub_25C780FAC(v19, v34, &qword_27FC145E0, &qword_25C790620);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145F0, &qword_25C790630);
  sub_25C780FAC(v12, v28 + *(v29 + 48), &qword_27FC145D8, &qword_25C790618);
  sub_25C77AB6C(v14, &qword_27FC145D8, &qword_25C790618);
  sub_25C77AB6C(v21, &qword_27FC145E0, &qword_25C790620);
  sub_25C77AB6C(v12, &qword_27FC145D8, &qword_25C790618);
  return sub_25C77AB6C(v19, &qword_27FC145E0, &qword_25C790620);
}

uint64_t sub_25C783F10@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v59) = a2;
  v63 = a3;
  v58 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v51 = *(v58 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v58);
  v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25C78E7E4();
  MEMORY[0x28223BE20](v5 - 8);
  v55 = sub_25C78EFB4();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14630, &qword_25C790650);
  MEMORY[0x28223BE20](v53);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14638, &qword_25C790658);
  v62 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v57 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v56 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14640, &qword_25C790660);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v61 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14648, &qword_25C790668);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v60 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v51 - v22;
  *v23 = sub_25C78EAD4();
  *(v23 + 1) = 0;
  v24 = 1;
  v23[16] = 1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14650, &qword_25C790670);
  sub_25C784788(a1, &v23[*(v25 + 44)]);
  if (v59)
  {
    v59 = v10;
    v26 = sub_25C78E864();
    *(&v69 + 1) = MEMORY[0x277D837D0];
    *&v70 = MEMORY[0x277D63F80];
    *&v68 = v26;
    *(&v68 + 1) = v27;
    v67 = 0;
    v66 = 0u;
    v65 = 0u;
    sub_25C78E7D4();
    v64[3] = sub_25C78EF84();
    v64[4] = MEMORY[0x277D63B10];
    __swift_allocate_boxed_opaque_existential_1(v64);
    sub_25C78EF94();
    sub_25C78EFA4();
    v28 = v52;
    sub_25C7872A4(a1, v52);
    v29 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v30 = swift_allocObject();
    sub_25C78730C(v28, v30 + v29);
    sub_25C786C9C(&qword_27FC14660, MEMORY[0x277D63CD0], MEMORY[0x277D63CC8]);
    v31 = v55;
    sub_25C78EE04();

    (*(v54 + 8))(v7, v31);
    LOBYTE(v31) = sub_25C78ED04();
    v32 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14668, &qword_25C790680) + 36)];
    *v32 = v31;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    v32[40] = 1;
    v33 = &v9[*(v53 + 36)];
    *v33 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14670, &qword_25C7906B8);
    swift_storeEnumTagMultiPayload();
    v34 = sub_25C78EF64();
    v36 = v35;
    v37 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14678, &qword_25C7906C0) + 36));
    *v37 = v34;
    v37[1] = v36;
    sub_25C78EF64();
    sub_25C78E9F4();
    v38 = v57;
    sub_25C780F44(v9, v57, &qword_27FC14630, &qword_25C790650);
    v10 = v59;
    v39 = (v38 + *(v59 + 36));
    v40 = v71;
    v41 = v73;
    v42 = v74;
    v39[4] = v72;
    v39[5] = v41;
    v39[6] = v42;
    v43 = v69;
    *v39 = v68;
    v39[1] = v43;
    v39[2] = v70;
    v39[3] = v40;
    v44 = v38;
    v45 = v56;
    sub_25C780F44(v44, v56, &qword_27FC14638, &qword_25C790658);
    sub_25C780F44(v45, v18, &qword_27FC14638, &qword_25C790658);
    v24 = 0;
  }

  (*(v62 + 56))(v18, v24, 1, v10);
  v46 = v60;
  sub_25C780FAC(v23, v60, &qword_27FC14648, &qword_25C790668);
  v47 = v61;
  sub_25C780FAC(v18, v61, &qword_27FC14640, &qword_25C790660);
  v48 = v63;
  sub_25C780FAC(v46, v63, &qword_27FC14648, &qword_25C790668);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14658, &qword_25C790678);
  sub_25C780FAC(v47, v48 + *(v49 + 48), &qword_27FC14640, &qword_25C790660);
  sub_25C77AB6C(v18, &qword_27FC14640, &qword_25C790660);
  sub_25C77AB6C(v23, &qword_27FC14648, &qword_25C790668);
  sub_25C77AB6C(v47, &qword_27FC14640, &qword_25C790660);
  return sub_25C77AB6C(v46, &qword_27FC14648, &qword_25C790668);
}

uint64_t sub_25C784788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14680, &qword_25C7906C8);
  MEMORY[0x28223BE20](v56);
  v51 = &v49 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14688, &qword_25C7906D0);
  MEMORY[0x28223BE20](v53);
  v52 = &v49 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14690, &qword_25C7906D8);
  MEMORY[0x28223BE20](v54);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14698, &qword_25C7906E0);
  MEMORY[0x28223BE20](v7);
  v55 = &v49 - v8;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC146A0, &qword_25C7906E8);
  MEMORY[0x28223BE20](v64);
  v10 = &v49 - v9;
  v11 = sub_25C78EB74();
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v60 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v57 = *(v13 - 1);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC146A8, &qword_25C7906F0);
  v58 = *(v15 - 8);
  v59 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC146B0, &qword_25C7906F8);
  v18 = MEMORY[0x28223BE20](v63);
  MEMORY[0x28223BE20](v18);
  if ((*(a1 + v13[14]) & 1) != 0 || *(a1 + v13[15]) == 1)
  {
    v55 = v20;
    v56 = &v49 - v19;
    v50 = sub_25C78EBA4();
    v75 = 1;
    sub_25C785114(a1, v73);
    memcpy(v77, v73, sizeof(v77));
    memcpy(v78, v73, 0x250uLL);
    v51 = a1;
    v53 = v11;
    sub_25C780FAC(v77, v65, &qword_27FC14728, &qword_25C790728);
    sub_25C77AB6C(v78, &qword_27FC14728, &qword_25C790728);
    memcpy(&v74[7], v77, 0x250uLL);
    v21 = v75;
    sub_25C78EF74();
    sub_25C78E9F4();
    v22 = sub_25C78ED14();
    KeyPath = swift_getKeyPath();
    v24 = sub_25C78EC84();
    v54 = v7;
    v25 = v24;
    v26 = sub_25C78ECF4();
    v52 = v10;
    v27 = v26;
    v76 = 1;
    v65[0] = v50;
    v65[1] = 0;
    LOBYTE(v65[2]) = v21;
    memcpy(&v65[2] + 1, v74, 0x257uLL);
    *&v65[85] = v70;
    *&v65[87] = v71;
    *&v65[89] = v72;
    *&v65[77] = v66;
    *&v65[79] = v67;
    *&v65[81] = v68;
    *&v65[83] = v69;
    v65[91] = KeyPath;
    v65[92] = v22;
    LODWORD(v65[93]) = v25;
    LOBYTE(v65[94]) = v27;
    memset(&v65[95], 0, 32);
    LOBYTE(v65[99]) = 1;
    sub_25C7872A4(v51, &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v29 = swift_allocObject();
    sub_25C78730C(&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC146D0, &qword_25C790700);
    v31 = sub_25C787F00(&qword_27FC146D8, &qword_27FC146D0, &qword_25C790700, sub_25C787F84);
    sub_25C78EE04();

    memcpy(v73, v65, 0x319uLL);
    sub_25C77AB6C(v73, &qword_27FC146D0, &qword_25C790700);
    v32 = v60;
    sub_25C78EB54();
    v65[0] = v30;
    v65[1] = v31;
    swift_getOpaqueTypeConformance2();
    v33 = v55;
    v34 = v59;
    sub_25C78EE14();
    (*(v61 + 8))(v32, v53);
    (*(v58 + 8))(v17, v34);
    v65[0] = sub_25C78E854();
    v65[1] = v35;
    sub_25C781450();
    v36 = v56;
    sub_25C78E9C4();

    v37 = &qword_27FC146B0;
    v38 = &qword_25C7906F8;
    sub_25C77AB6C(v33, &qword_27FC146B0, &qword_25C7906F8);
    sub_25C780FAC(v36, v52, &qword_27FC146B0, &qword_25C7906F8);
    swift_storeEnumTagMultiPayload();
    sub_25C787DD4();
    sub_25C7881AC();
    sub_25C78EC64();
    v39 = v36;
  }

  else
  {
    if (*(a1 + 24) == 1)
    {
      sub_25C783178(v6);
      v40 = *(a1 + v13[9]);
      v41 = sub_25C78ECE4();
      v42 = &v6[*(v54 + 36)];
      *v42 = v41;
      *(v42 + 1) = v40;
      *(v42 + 2) = 0;
      *(v42 + 3) = v40;
      *(v42 + 4) = 0;
      v42[40] = 0;
      sub_25C780FAC(v6, v52, &qword_27FC14690, &qword_25C7906D8);
      swift_storeEnumTagMultiPayload();
      sub_25C787F00(&qword_27FC146B8, &qword_27FC14690, &qword_25C7906D8, sub_25C787CEC);
      sub_25C787CEC();
      v43 = v55;
      sub_25C78EC64();
      v44 = v6;
      v45 = &qword_27FC14690;
      v46 = &qword_25C7906D8;
    }

    else
    {
      v47 = v51;
      sub_25C783178(v51);
      sub_25C780FAC(v47, v52, &qword_27FC14680, &qword_25C7906C8);
      swift_storeEnumTagMultiPayload();
      sub_25C787F00(&qword_27FC146B8, &qword_27FC14690, &qword_25C7906D8, sub_25C787CEC);
      sub_25C787CEC();
      v43 = v55;
      sub_25C78EC64();
      v44 = v47;
      v45 = &qword_27FC14680;
      v46 = &qword_25C7906C8;
    }

    sub_25C77AB6C(v44, v45, v46);
    v37 = &qword_27FC14698;
    v38 = &qword_25C7906E0;
    sub_25C780FAC(v43, v10, &qword_27FC14698, &qword_25C7906E0);
    swift_storeEnumTagMultiPayload();
    sub_25C787DD4();
    sub_25C7881AC();
    sub_25C78EC64();
    v39 = v43;
  }

  return sub_25C77AB6C(v39, v37, v38);
}

uint64_t sub_25C785114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  sub_25C78EF64();
  sub_25C78E994();
  v16 = v42;
  v17 = v40;
  v14 = v45;
  v15 = v44;
  v53 = 1;
  v52 = v41;
  v51 = v43;
  v13 = sub_25C78EAD4();
  v39 = 1;
  sub_25C7853F4(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v55, __src, 0x148uLL);
  sub_25C780FAC(__dst, v29, &qword_27FC14730, &qword_25C790760);
  sub_25C77AB6C(v55, &qword_27FC14730, &qword_25C790760);
  memcpy(&v38[7], __dst, 0x148uLL);
  v4 = v39;
  sub_25C78EF74();
  sub_25C78E9F4();
  sub_25C78EF64();
  sub_25C78E994();
  v12 = v46;
  v5 = v47;
  v6 = v48;
  v7 = v49;
  v28 = 1;
  v27 = v47;
  v26 = v49;
  v8 = v53;
  v9 = v52;
  v10 = v51;
  v29[0] = v13;
  LOBYTE(v29[1]) = v4;
  memcpy(&v29[1] + 1, v38, 0x14FuLL);
  v29[26] = v23;
  v29[27] = v24;
  v29[28] = v25;
  v29[22] = v19;
  v29[23] = v20;
  v29[24] = v21;
  v29[25] = v22;
  *a2 = 0;
  *(a2 + 8) = v8;
  *(a2 + 16) = v17;
  *(a2 + 24) = v9;
  *(a2 + 32) = v16;
  *(a2 + 40) = v10;
  *(a2 + 48) = v15;
  *(a2 + 56) = v14;
  memcpy((a2 + 64), v29, 0x1D0uLL);
  *(a2 + 528) = 0;
  *(a2 + 536) = 1;
  *(a2 + 544) = v12;
  *(a2 + 552) = v5;
  *(a2 + 560) = v6;
  *(a2 + 568) = v7;
  *(a2 + 576) = v50;
  *__src = v13;
  *&__src[8] = 0;
  __src[16] = v4;
  memcpy(&__src[17], v38, 0x14FuLL);
  v35 = v23;
  v36 = v24;
  v37 = v25;
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  sub_25C780FAC(v29, v18, &qword_27FC14738, &qword_25C790768);
  return sub_25C77AB6C(__src, &qword_27FC14738, &qword_25C790768);
}

uint64_t sub_25C7853F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  sub_25C78EF64();
  sub_25C78E994();
  v5 = v74;
  v29 = v78;
  v30 = v76;
  v28 = v79;
  v95 = 1;
  v94 = v75;
  v93 = v77;
  if (*(a1 + *(v4 + 56)) == 1)
  {
    v6 = sub_25C78EBA4();
    LOBYTE(v57) = 1;
    sub_25C785A60(a1, &v80);
    v40 = v88;
    v41 = v89;
    v36 = v84;
    v37 = v85;
    v38 = v86;
    v39 = v87;
    v32 = v80;
    v33 = v81;
    v34 = v82;
    v35 = v83;
    v51 = v88;
    v52 = v89;
    v47 = v84;
    v48 = v85;
    v49 = v86;
    v50 = v87;
    v43 = v80;
    v44 = v81;
    v42 = v90;
    v53 = v90;
    v45 = v82;
    v46 = v83;
    sub_25C780FAC(&v32, &v71, &qword_27FC14770, &qword_25C790790);
    sub_25C77AB6C(&v43, &qword_27FC14770, &qword_25C790790);
    *&v31[119] = v39;
    *&v31[135] = v40;
    *&v31[151] = v41;
    *&v31[167] = v42;
    *&v31[55] = v35;
    *&v31[71] = v36;
    *&v31[87] = v37;
    *&v31[103] = v38;
    *&v31[7] = v32;
    *&v31[23] = v33;
    *&v31[39] = v34;
    *&v72[113] = *&v31[112];
    *&v72[129] = *&v31[128];
    *&v72[145] = *&v31[144];
    *&v72[160] = *&v31[159];
    *&v72[49] = *&v31[48];
    *&v72[65] = *&v31[64];
    *&v72[81] = *&v31[80];
    *&v72[97] = *&v31[96];
    *&v72[1] = *v31;
    *&v72[17] = *&v31[16];
    v71 = v6;
    v72[0] = v57;
    *&v72[33] = *&v31[32];
    sub_25C788278(&v71);
  }

  else
  {
    v7 = sub_25C78EBA4();
    LOBYTE(v57) = 1;
    sub_25C785D5C(a1, &v80);
    v38 = v86;
    v39 = v87;
    v40 = v88;
    v41 = v89;
    v34 = v82;
    v35 = v83;
    v36 = v84;
    v37 = v85;
    v32 = v80;
    v33 = v81;
    v49 = v86;
    v50 = v87;
    v51 = v88;
    v52 = v89;
    v45 = v82;
    v46 = v83;
    v47 = v84;
    v48 = v85;
    v43 = v80;
    v44 = v81;
    sub_25C780FAC(&v32, &v71, &qword_27FC14740, &qword_25C790770);
    sub_25C77AB6C(&v43, &qword_27FC14740, &qword_25C790770);
    *&v70[55] = v35;
    *&v70[39] = v34;
    *&v70[103] = v38;
    *&v70[119] = v39;
    *&v70[135] = v40;
    *&v70[151] = v41;
    *&v70[71] = v36;
    *&v70[87] = v37;
    *&v70[7] = v32;
    *&v70[23] = v33;
    *&v72[113] = *&v70[112];
    *&v72[129] = *&v70[128];
    *&v72[145] = *&v70[144];
    *&v72[49] = *&v70[48];
    *&v72[65] = *&v70[64];
    *&v72[81] = *&v70[80];
    *&v72[97] = *&v70[96];
    *&v72[1] = *v70;
    *&v72[17] = *&v70[16];
    v71 = v7;
    v72[0] = v57;
    *&v72[160] = *(&v41 + 1);
    *&v72[33] = *&v70[32];
    sub_25C78826C(&v71);
  }

  v67 = *&v72[144];
  v68 = *&v72[160];
  v69 = v73;
  v63 = *&v72[80];
  v64 = *&v72[96];
  v65 = *&v72[112];
  v66 = *&v72[128];
  v59 = *&v72[16];
  v60 = *&v72[32];
  v61 = *&v72[48];
  v62 = *&v72[64];
  v57 = v71;
  v58 = *v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14748, &qword_25C790778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14750, &qword_25C790780);
  v8 = MEMORY[0x277CE1198];
  sub_25C78240C(&qword_27FC14758, &qword_27FC14748, &qword_25C790778, MEMORY[0x277CE1198]);
  sub_25C78240C(&qword_27FC14760, &qword_27FC14750, &qword_25C790780, v8);
  sub_25C78EC64();
  sub_25C78EF64();
  sub_25C78E994();
  *&v72[144] = v90;
  *&v72[160] = v91;
  v9 = v86;
  *&v72[80] = v86;
  *&v72[96] = v87;
  v10 = v88;
  *&v72[128] = v89;
  *&v72[112] = v88;
  v11 = v82;
  *&v72[16] = v82;
  *&v72[32] = v83;
  v12 = v84;
  *&v72[64] = v85;
  *&v72[48] = v84;
  v13 = v80;
  v71 = v80;
  *v72 = v81;
  v14 = v91;
  v67 = v90;
  v68 = v91;
  v15 = v87;
  v63 = v86;
  v64 = v87;
  v16 = v89;
  v65 = v88;
  v66 = v89;
  v17 = v83;
  v59 = v82;
  v60 = v83;
  v18 = v85;
  v61 = v84;
  v62 = v85;
  v19 = v81;
  v57 = v80;
  v58 = v81;
  *(a2 + 224) = v90;
  *(a2 + 240) = v14;
  *(a2 + 160) = v9;
  *(a2 + 176) = v15;
  *(a2 + 192) = v10;
  *(a2 + 208) = v16;
  *(a2 + 96) = v11;
  *(a2 + 112) = v17;
  *(a2 + 128) = v12;
  *(a2 + 144) = v18;
  v20 = v32;
  v21 = v33;
  v56 = 1;
  v55 = BYTE8(v32);
  v54 = BYTE8(v33);
  v22 = v95;
  v23 = v94;
  v24 = v93;
  v73 = v92;
  v25 = BYTE8(v32);
  v26 = BYTE8(v33);
  v69 = v92;
  *a2 = 0;
  *(a2 + 8) = v22;
  *(a2 + 16) = v5;
  *(a2 + 24) = v23;
  *(a2 + 32) = v30;
  *(a2 + 40) = v24;
  *(a2 + 48) = v29;
  *(a2 + 56) = v28;
  *(a2 + 256) = v92;
  *(a2 + 64) = v13;
  *(a2 + 80) = v19;
  *(a2 + 264) = 0;
  *(a2 + 272) = 1;
  *(a2 + 280) = v20;
  *(a2 + 288) = v25;
  *(a2 + 296) = v21;
  *(a2 + 304) = v26;
  *(a2 + 312) = v34;
  sub_25C780FAC(&v57, &v43, &qword_27FC14768, &qword_25C790788);
  return sub_25C77AB6C(&v71, &qword_27FC14768, &qword_25C790788);
}

uint64_t sub_25C785A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0) + 52));
  v4 = v3[1];
  v44 = *v3;
  v45 = v4;
  sub_25C781450();

  v5 = sub_25C78EDA4();
  v7 = v6;
  v27 = v8;
  v28 = v9;
  sub_25C78EF64();
  sub_25C78E994();
  v10 = v30;
  v11 = v32;
  v12 = v34;
  v13 = v35;
  v38 = 1;
  v37 = v31;
  v36 = v33;
  v14 = sub_25C78EAC4();
  sub_25C785C78(&v44);
  v15 = v44;
  v16 = v45;
  v17 = v46;
  v18 = v47;
  v19 = v48;
  v20 = v49;
  v21 = v31;
  v22 = v33;
  v29[72] = v27 & 1;
  v39 = v14;
  LOBYTE(v40) = 1;
  *(&v40 + 1) = v44;
  LODWORD(v41) = v45;
  *(&v41 + 1) = v46;
  *&v42 = v47;
  BYTE8(v42) = v48;
  v43 = v49;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v27 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v10;
  *(a2 + 56) = v21;
  *(a2 + 64) = v11;
  *(a2 + 72) = v22;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  v23 = v41;
  v24 = v42;
  *(a2 + 160) = v20;
  *(a2 + 128) = v23;
  *(a2 + 144) = v24;
  v25 = v40;
  *(a2 + 96) = v39;
  *(a2 + 112) = v25;
  v44 = v14;
  v45 = 0;
  LOBYTE(v46) = 1;
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v19;
  v52 = v20;
  sub_25C7814A4(v5, v7, v27 & 1);

  sub_25C780FAC(&v39, v29, &qword_27FC14778, &qword_25C790798);
  sub_25C77AB6C(&v44, &qword_27FC14778, &qword_25C790798);
  sub_25C7814B4(v5, v7, v27 & 1);
}

uint64_t sub_25C785C78@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25C78EEE4();
  v3 = sub_25C78EC94();
  sub_25C78E7F4();
  sub_25C781450();
  v4 = sub_25C78EDA4();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  LOBYTE(v3) = v7 & 1;
  *(a1 + 32) = v7 & 1;
  *(a1 + 40) = v8;

  sub_25C7814A4(v4, v6, v3);

  sub_25C7814B4(v4, v6, v3);
}

uint64_t sub_25C785D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0) + 52));
  v30 = *v3;
  v31 = v3[1];
  sub_25C781450();

  v27 = sub_25C78EDA4();
  v28 = v4;
  v29 = v5;
  v26 = v6;
  sub_25C78EF64();
  sub_25C78E994();
  sub_25C78E844();
  v7 = sub_25C78EDA4();
  v9 = v8;
  v11 = v10;
  sub_25C78ED24();
  v12 = sub_25C78ED54();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_25C7814B4(v7, v9, v11 & 1);

  sub_25C78E884();
  v19 = sub_25C78EDA4();
  v21 = v20;
  v23 = v22 & 1;
  *a2 = v27;
  *(a2 + 8) = v29;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v28;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v30;
  *(a2 + 56) = v31;
  *(a2 + 64) = v32;
  *(a2 + 72) = v33;
  *(a2 + 80) = v34;
  *(a2 + 88) = v35;
  *(a2 + 96) = v12;
  *(a2 + 104) = v14;
  *(a2 + 112) = v16 & 1;
  *(a2 + 120) = v18;
  *(a2 + 128) = v19;
  *(a2 + 136) = v20;
  *(a2 + 144) = v22 & 1;
  *(a2 + 152) = v24;
  sub_25C7814A4(v27, v29, v26 & 1);

  sub_25C7814A4(v12, v14, v16 & 1);

  sub_25C7814A4(v19, v21, v23);

  sub_25C7814B4(v19, v21, v23);

  sub_25C7814B4(v12, v14, v16 & 1);

  sub_25C7814B4(v27, v29, v26 & 1);
}

uint64_t sub_25C786000(uint64_t a1, uint64_t a2)
{
  v3 = sub_25C78E7A4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v20 - v8;
  sub_25C78E794();
  v10 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  (*(v4 + 16))(v7, v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);
  sub_25C78EF44();
  (*(v4 + 8))(v9, v3);
  v11 = sub_25C78E694();
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  v20[1] = 0x6965486C616E6966;
  v20[2] = 0xEB00000000746867;
  sub_25C78F164();
  if (!*(v12 + 16) || (v13 = sub_25C7876A8(v21), (v14 & 1) == 0))
  {

    sub_25C7876EC(v21);
LABEL_8:
    v22 = 0u;
    v23 = 0u;
    return sub_25C77AB6C(&v22, &qword_27FC145C0, &qword_25C790600);
  }

  sub_25C787740(*(v12 + 56) + 32 * v13, &v22);
  sub_25C7876EC(v21);

  if (!*(&v23 + 1))
  {
    return sub_25C77AB6C(&v22, &qword_27FC145C0, &qword_25C790600);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v16 = v21[0];
    v17 = (a2 + *(v10 + 44));
    v18 = *v17;
    v19 = v17[1];
    v21[0] = v18;
    v21[1] = v19;
    *&v22 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC145C8, &qword_25C790608);
    return sub_25C78EF44();
  }

  return result;
}

uint64_t sub_25C78627C()
{
  v0 = sub_25C78EE84();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_25C78EED4();
  qword_27FC14FC0 = result;
  return result;
}

uint64_t sub_25C78635C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25C78E944();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  sub_25C7873E0(&v13 - v7);
  (*(v3 + 104))(v6, *MEMORY[0x277CDF3C0], v2);
  v9 = sub_25C78E934();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  if (v9)
  {
    sub_25C78EEB4();
  }

  else
  {
    if (qword_27FC13F70 != -1)
    {
      swift_once();
    }
  }

  v11 = sub_25C78EEC4();

  *a1 = v11;
  return result;
}

uint64_t sub_25C78650C()
{
  v0 = sub_25C78E7A4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  sub_25C78E794();
  (*(v1 + 16))(v4, v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);
  sub_25C78EF44();
  return (*(v1 + 8))(v6, v0);
}

id sub_25C78665C()
{
  v0 = sub_25C78F024();

  return v0;
}

id sub_25C7866B8()
{
  v0 = sub_25C78F024();

  return v0;
}

uint64_t sub_25C7866F8()
{
  result = sub_25C78F024();
  qword_27FC14538 = result;
  return result;
}

uint64_t sub_25C786754()
{
  result = sub_25C78F024();
  qword_27FC14540 = result;
  return result;
}

id sub_25C7867B0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_25C7868A4(uint64_t a1)
{
  v2 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C786930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25C786A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25C786AB0(uint64_t a1)
{
  sub_25C78862C(319, &qword_27FC14568, type metadata accessor for NoteViewModel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25C78862C(319, &qword_27FC147F0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_25C786BB0()
{
  result = qword_27FC14570;
  if (!qword_27FC14570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14548, &qword_25C7904A0);
    sub_25C786C9C(&qword_27FC14550, type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView, &unk_25C790594);
    sub_25C786C9C(&qword_27FC144F8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14570);
  }

  return result;
}

uint64_t sub_25C786C9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C786CF8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_25C78EFE4();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[12];

  return v15(v16, a2, v14);
}

uint64_t sub_25C786E90(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_25C78EFE4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[12];

  return v15(v16, a2, a2, v14);
}

void sub_25C787014(uint64_t a1)
{
  sub_25C78862C(319, &qword_27FC14568, type metadata accessor for NoteViewModel, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_25C78862C(319, &qword_27FC147F0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25C78EFE4();
      if (v3 <= 0x3F)
      {
        sub_25C7871E4(319, &qword_27FC14590, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_25C7871E4(319, &qword_27FC14598, MEMORY[0x277D85048]);
          if (v5 <= 0x3F)
          {
            sub_25C78862C(319, &qword_27FC145A0, MEMORY[0x277CC95F0], MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_25C7871E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25C78EF54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25C787230(uint64_t a1)
{
  result = sub_25C786C9C(&qword_27FC14550, type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView, &unk_25C790594);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25C7872A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78730C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C787370(uint64_t a1)
{
  v3 = *(type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25C786000(a1, v4);
}

uint64_t sub_25C7873E0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25C78EAB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14670, &qword_25C7906B8);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25C780FAC(v2, &v14 - v9, &qword_27FC14670, &qword_25C7906B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_25C78E944();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_25C78F0D4();
    v13 = sub_25C78ECD4();
    sub_25C78E8E4();

    sub_25C78EAA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_25C7875E0(uint64_t a1)
{
  v2 = sub_25C78E944();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25C78EA24();
}

unint64_t sub_25C7876A8(uint64_t a1)
{
  v2 = sub_25C78F144();

  return sub_25C78779C(a1, v2);
}

uint64_t sub_25C787740(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25C78779C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_25C787864(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25F88CEF0](v9, a1);
      sub_25C7876EC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t objectdestroyTm_0()
{
  v1 = type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_25C78E744();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = v1[8];
  v10 = sub_25C78EFE4();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);

  v11 = v5 + v1[12];
  v12 = sub_25C78E7A4();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14578, &qword_25C790548);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

unint64_t sub_25C787AC8()
{
  result = qword_27FC14600;
  if (!qword_27FC14600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC145F8, &qword_25C790638);
    sub_25C787B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14600);
  }

  return result;
}

unint64_t sub_25C787B54()
{
  result = qword_27FC14608;
  if (!qword_27FC14608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14610, &qword_25C790640);
    sub_25C787C0C();
    sub_25C78240C(&qword_27FC14620, &qword_27FC14628, &qword_25C790648, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14608);
  }

  return result;
}

unint64_t sub_25C787C0C()
{
  result = qword_27FC14618;
  if (!qword_27FC14618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14618);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_25C787CEC()
{
  result = qword_27FC146C0;
  if (!qword_27FC146C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14680, &qword_25C7906C8);
    sub_25C77AA48();
    swift_getOpaqueTypeConformance2();
    sub_25C786C9C(&qword_27FC144F8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC146C0);
  }

  return result;
}

unint64_t sub_25C787DD4()
{
  result = qword_27FC146C8;
  if (!qword_27FC146C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC146B0, &qword_25C7906F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC146D0, &qword_25C790700);
    sub_25C787F00(&qword_27FC146D8, &qword_27FC146D0, &qword_25C790700, sub_25C787F84);
    swift_getOpaqueTypeConformance2();
    sub_25C786C9C(&qword_27FC144F8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC146C8);
  }

  return result;
}

uint64_t sub_25C787F00(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25C787F84()
{
  result = qword_27FC146E0;
  if (!qword_27FC146E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC146E8, &qword_25C790708);
    sub_25C78803C();
    sub_25C78240C(&qword_27FC143B0, &qword_27FC143B8, &qword_25C790380, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC146E0);
  }

  return result;
}

unint64_t sub_25C78803C()
{
  result = qword_27FC146F0;
  if (!qword_27FC146F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC146F8, &qword_25C790710);
    sub_25C7880F4();
    sub_25C78240C(&qword_27FC143C8, &qword_27FC143D0, &qword_25C790388, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC146F0);
  }

  return result;
}

unint64_t sub_25C7880F4()
{
  result = qword_27FC14700;
  if (!qword_27FC14700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14708, &qword_25C790718);
    sub_25C78240C(&qword_27FC14710, &qword_27FC14718, &qword_25C790720, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14700);
  }

  return result;
}

unint64_t sub_25C7881AC()
{
  result = qword_27FC14720;
  if (!qword_27FC14720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14698, &qword_25C7906E0);
    sub_25C787F00(&qword_27FC146B8, &qword_27FC14690, &qword_25C7906D8, sub_25C787CEC);
    sub_25C787CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14720);
  }

  return result;
}

void sub_25C78832C(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for NotesSiriSingleNoteView.SingleNoteContentView(0);

  sub_25C782EC4(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C7883CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25C788430(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14788, &qword_25C7907A8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25C7884BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14788, &qword_25C7907A8);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25C788558(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25C788590(uint64_t a1)
{
  sub_25C78862C(319, &qword_27FC147A0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25C78862C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25C788714()
{
  v0 = sub_25C78E914();
  __swift_allocate_value_buffer(v0, qword_27FC147B0);
  __swift_project_value_buffer(v0, qword_27FC147B0);
  return sub_25C78E8F4();
}

uint64_t sub_25C788760(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_25C7887CC()
{
  v1 = (v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_25C788824(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_25C788954(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  swift_beginAccess();
  sub_25C78C308(v6, v7 + v8, &qword_27FC14000, " \r");
  return swift_endAccess();
}

uint64_t sub_25C7888FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  swift_beginAccess();
  return sub_25C788954(v1 + v3, a1);
}

uint64_t sub_25C788954(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C7889C4(uint64_t a1, char *a2, void *a3, void *a4, void *a5)
{
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  v17 = MEMORY[0x277D84F90];
  if (v5)
  {
    v11 = (a1 + 40);
    do
    {
      v12 = *v11;
      v16[0] = *(v11 - 1);
      v16[1] = v12;

      sub_25C788AD8(v16, a3, a4, a5, a2, &v15);

      if (v15)
      {
        MEMORY[0x25F88CDF0](v13);
        if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25C78F084();
        }

        sub_25C78F094();
        v6 = v17;
      }

      v11 += 2;
      --v5;
    }

    while (v5);
  }

  return v6;
}

void sub_25C788AD8(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X8>)
{
  v126 = a6;
  v124 = a4;
  v125 = a5;
  v123 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v118 - v9;
  v11 = sub_25C78E744();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v120 = (&v118 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v119 = &v118 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v118 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v118 - v23;
  v26 = *a1;
  v25 = a1[1];
  sub_25C78E734();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25C77AB6C(v10, &qword_27FC14000, " \r");
    if (qword_27FC13F88 != -1)
    {
      swift_once();
    }

    v27 = sub_25C78E914();
    __swift_project_value_buffer(v27, qword_27FC147B0);

    v28 = sub_25C78E904();
    v29 = sub_25C78F0C4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v128 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_25C78BC28(v26, v25, &v128);
      _os_log_impl(&dword_25C776000, v28, v29, "URL invalid with identifier: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x25F88D470](v31, -1, -1);
      MEMORY[0x25F88D470](v30, -1, -1);
    }

LABEL_28:
    v48 = 0;
    goto LABEL_29;
  }

  v121 = v12;
  v122 = v11;
  (*(v12 + 32))(v24, v10, v11);
  v32 = objc_opt_self();
  v33 = sub_25C78E714();
  v34 = [v32 isShowHTMLNoteURL_];

  if (v34)
  {
    v35 = a2 == 0;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    v36 = a2;
    v37 = sub_25C78E714();
    v38 = [v32 objectIDURIRepresentationForHTMLNoteMentionedInURL_];

    if (v38)
    {
      v39 = v22;
      sub_25C78E724();

      v40 = sub_25C78E714();
      v41 = [v36 ic:v40 objectIDFromURL:?];

      if (v41)
      {
        v43 = v24;
        MEMORY[0x28223BE20](v42);
        *(&v118 - 2) = v36;
        *(&v118 - 1) = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14818, &qword_25C7908A8);
        v44 = v127;
        sub_25C78F0F4();
        v45 = v128;
        v46 = v36;
        v47 = v121;
        if (v128)
        {
          type metadata accessor for NoteViewModel(0);
          v48 = swift_allocObject();
          v49 = v124;

          sub_25C78AB8C(v45, v46, v123, v49);

          v50 = *(v47 + 8);
          v51 = v122;
          v50(v39, v122);
          v50(v43, v51);
        }

        else
        {
          v124 = v46;
          if (qword_27FC13F88 != -1)
          {
            swift_once();
          }

          v98 = sub_25C78E914();
          __swift_project_value_buffer(v98, qword_27FC147B0);
          v99 = *(v47 + 16);
          v100 = v119;
          v125 = v43;
          v101 = v122;
          v99(v119, v43, v122);
          v102 = sub_25C78E904();
          v103 = sub_25C78F0C4();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = v100;
            v105 = swift_slowAlloc();
            v118 = v105;
            v106 = swift_slowAlloc();
            v127 = v44;
            v120 = v106;
            v128 = v106;
            *v105 = 136315138;
            sub_25C78C1D0();
            v107 = sub_25C78F1B4();
            v123 = v41;
            v108 = v107;
            v110 = v109;
            v111 = *(v47 + 8);
            v111(v104, v101);
            v112 = sub_25C78BC28(v108, v110, &v128);

            v113 = v118;
            *(v118 + 1) = v112;
            v114 = v113;
            _os_log_impl(&dword_25C776000, v102, v103, "HTML note not found with url: %s", v113, 0xCu);
            v115 = v120;
            __swift_destroy_boxed_opaque_existential_1(v120);
            MEMORY[0x25F88D470](v115, -1, -1);
            MEMORY[0x25F88D470](v114, -1, -1);

            v111(v39, v101);
            v111(v125, v101);
          }

          else
          {

            v117 = *(v47 + 8);
            v117(v100, v101);
            v117(v39, v101);
            v117(v125, v101);
          }

          v48 = 0;
        }

        goto LABEL_29;
      }

      (*(v121 + 8))(v39, v122);
    }
  }

  v52 = sub_25C78E714();
  v53 = [v32 isShowNoteURL_];

  v54 = v122;
  if (!v53 || !v125)
  {
LABEL_23:
    if (qword_27FC13F88 != -1)
    {
      swift_once();
    }

    v67 = sub_25C78E914();
    __swift_project_value_buffer(v67, qword_27FC147B0);
    v68 = v121;
    (*(v121 + 16))(v15, v24, v54);
    v69 = v24;
    v70 = sub_25C78E904();
    v71 = sub_25C78F0C4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v128 = v73;
      *v72 = 136315138;
      sub_25C78C1D0();
      v125 = v69;
      v74 = sub_25C78F1B4();
      v75 = v54;
      v77 = v76;
      v78 = *(v68 + 8);
      v79 = v15;
      v80 = v75;
      v78(v79, v75);
      v81 = sub_25C78BC28(v74, v77, &v128);

      *(v72 + 4) = v81;
      _os_log_impl(&dword_25C776000, v70, v71, "UUID invalid: %s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v73);
      MEMORY[0x25F88D470](v73, -1, -1);
      MEMORY[0x25F88D470](v72, -1, -1);

      v78(v125, v80);
    }

    else
    {

      v82 = *(v68 + 8);
      v82(v15, v54);
      v82(v69, v54);
    }

    goto LABEL_28;
  }

  v55 = v24;
  v56 = v125;
  v57 = v55;
  v58 = sub_25C78E714();
  v59 = [v32 NotesAppIDForNoteMentionedInURL_];

  if (!v59)
  {

    v24 = v57;
    goto LABEL_23;
  }

  v60 = sub_25C78F034();
  v62 = v61;

  MEMORY[0x28223BE20](v63);
  *(&v118 - 4) = v60;
  *(&v118 - 3) = v62;
  *(&v118 - 2) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14810, &unk_25C790898);
  v64 = v127;
  sub_25C78F0F4();
  v127 = v64;

  v65 = v128;
  if (!v128)
  {
    v83 = v121;
    if (qword_27FC13F88 != -1)
    {
      swift_once();
    }

    v84 = sub_25C78E914();
    __swift_project_value_buffer(v84, qword_27FC147B0);
    v85 = v120;
    (*(v83 + 16))(v120, v57, v54);
    v86 = sub_25C78E904();
    v87 = sub_25C78F0C4();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v125 = v57;
      v89 = v83;
      v90 = v88;
      v124 = swift_slowAlloc();
      v128 = v124;
      *v90 = 136315138;
      sub_25C78C1D0();
      v91 = sub_25C78F1B4();
      v92 = v54;
      v94 = v93;
      v95 = *(v89 + 8);
      v95(v85, v92);
      v96 = sub_25C78BC28(v91, v94, &v128);

      *(v90 + 4) = v96;
      _os_log_impl(&dword_25C776000, v86, v87, "Modern note not found with url: %s", v90, 0xCu);
      v97 = v124;
      __swift_destroy_boxed_opaque_existential_1(v124);
      MEMORY[0x25F88D470](v97, -1, -1);
      MEMORY[0x25F88D470](v90, -1, -1);

      v95(v125, v122);
    }

    else
    {

      v116 = *(v83 + 8);
      v116(v85, v54);
      v116(v57, v54);
    }

    goto LABEL_28;
  }

  type metadata accessor for NoteViewModel(0);
  v48 = swift_allocObject();
  v66 = v124;

  sub_25C789818(v65, v56, v123, v66);
  (*(v121 + 8))(v57, v54);
LABEL_29:
  *v126 = v48;
}

void sub_25C7896FC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = [a1 ic:a2 existingObjectWithID:?];
  if (v4)
  {
    v5 = v4;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      *a3 = v6;
      return;
    }
  }

  *a3 = 0;
}

void sub_25C789778(uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_25C77ADD4(0, &unk_27FC140C0, 0x277D35F28);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_25C78F024();
  v8 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v7 context:a3];

  *a4 = v8;
}

uint64_t sub_25C789818(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_25C78E6F4();
  v9 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  sub_25C78E774();
  sub_25C78E774();
  v13 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
  *v13 = 0;
  v13[1] = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isPasswordProtected) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isAuthenticated) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isUnsupported) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isShared) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_hasUnreadChanges) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isModernNote) = 1;
  v14 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  v15 = sub_25C78E744();
  (*(*(v15 - 8) + 56))(v4 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle;
  v17 = sub_25C78E6A4();
  v18 = *(*(v17 - 8) + 56);
  v18(v4 + v16, 1, 1, v17);
  v18(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = v4;
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25C78C3C0;
  *(v20 + 24) = v19;
  v25[4] = sub_25C78C3D8;
  v25[5] = v20;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1107296256;
  v25[2] = sub_25C78AB64;
  v25[3] = &block_descriptor_68;
  v21 = _Block_copy(v25);
  v22 = a1;

  v23 = a2;

  [v23 performBlockAndWait_];

  _Block_release(v21);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if ((v23 & 1) == 0)
  {
    return v4;
  }

  __break(1u);
  return result;
}

void sub_25C789B48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v111 = a3;
  v112 = a5;
  v116 = a2;
  v117 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14000, " \r");
  MEMORY[0x28223BE20](v6 - 8);
  v113 = &v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC147D0, &qword_25C790358);
  MEMORY[0x28223BE20](v8 - 8);
  v110 = &v105 - v9;
  v118 = sub_25C78E784();
  v120 = *(v118 - 8);
  v10 = MEMORY[0x28223BE20](v118);
  v115 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v114 = &v105 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v121 = &v105 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v105 - v17;
  MEMORY[0x28223BE20](v16);
  v119 = &v105 - v19;
  v20 = sub_25C78E744();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v105 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v105 - v28;
  v30 = [a1 identifier];
  sub_25C78F034();

  v31 = sub_25C78F024();

  v32 = NotesAppURLForNoteIdentifier();

  if (!v32)
  {
    return;
  }

  sub_25C78E724();

  (*(v21 + 32))(v29, v27, v20);
  v33 = [a1 title];
  if (!v33)
  {
    (*(v21 + 8))(v29, v20);
    return;
  }

  v34 = v33;
  v35 = sub_25C78F034();
  v37 = v36;

  v38 = [a1 folder];
  if (!v38)
  {
    (*(v21 + 8))(v29, v20);
LABEL_11:

    return;
  }

  v39 = v38;
  v40 = [a1 creationDate];
  if (!v40)
  {
    (*(v21 + 8))(v29, v20);

    goto LABEL_11;
  }

  v105 = v35;
  v106 = v39;
  v107 = v29;
  v108 = v21;
  v109 = v20;
  v41 = v40;
  sub_25C78E764();

  v43 = v119;
  v42 = v120;
  v44 = *(v120 + 32);
  v45 = v118;
  v44(v119, v18, v118);
  v46 = [a1 modificationDate];
  if (v46)
  {
    v47 = v114;
    v48 = v46;
    sub_25C78E764();

    v44(v121, v47, v45);
    v49 = v108;
    v50 = v109;
    (*(v108 + 16))(v24, v107, v109);
    v51 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_noteUrl;
    v114 = a1;
    v52 = v116;
    swift_beginAccess();
    (*(v49 + 40))(v52 + v51, v24, v50);
    swift_endAccess();
    v53 = (v52 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
    swift_beginAccess();
    *v53 = v105;
    v53[1] = v37;
    v54 = v52;

    v55 = v106;
    v56 = [v106 localizedTitle];
    v57 = sub_25C78F034();
    v59 = v58;

    v60 = (v54 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder);
    *v60 = v57;
    v60[1] = v59;

    v61 = [v55 account];
    v62 = [v61 localizedName];

    v63 = sub_25C78F034();
    v65 = v64;

    v66 = (v54 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account);
    *v66 = v63;
    v66[1] = v65;

    v67 = v120;
    v68 = *(v120 + 16);
    v69 = v115;
    v68(v115, v43, v45);
    v70 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_creationDate;
    swift_beginAccess();
    v71 = v67;
    v72 = *(v67 + 40);
    v72(v54 + v70, v69, v45);
    swift_endAccess();
    v68(v69, v121, v45);
    v73 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_modificationDate;
    swift_beginAccess();
    v72(v54 + v73, v69, v45);
    swift_endAccess();
    v74 = objc_opt_self();
    v75 = v114;
    v76 = [v74 dateForCurrentSortTypeAccessibilityStringForNote:v114 folderNoteSortType:0];
    v77 = v45;
    v78 = v75;
    if (v76)
    {
      v79 = v76;
      v80 = sub_25C78F034();
      v82 = v81;
    }

    else
    {
      v80 = 0;
      v82 = 0xE000000000000000;
    }

    v83 = (v54 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString);
    *v83 = v80;
    v83[1] = v82;

    v84 = [v78 contentInfoText];
    v85 = sub_25C78F034();
    v87 = v86;

    v88 = (v54 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
    *v88 = v85;
    v88[1] = v87;

    v89 = [v78 isPasswordProtected];
    *(v54 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isPasswordProtected) = v89;
    v90 = [v78 isAuthenticated];
    *(v54 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isAuthenticated) = v90;
    v91 = [v78 isUnsupported];
    *(v54 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isUnsupported) = v91;
    v92 = [v78 isSharedViaICloud];
    *(v54 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isShared) = v92;
    v93 = [v78 hasUnreadChanges];
    *(v54 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_hasUnreadChanges) = v93;
    if (v117)
    {
      v94 = [v78 noteAsPlainTextWithoutTitle];
      if (!v94)
      {
        sub_25C78F034();
        v94 = sub_25C78F024();
      }

      v95 = [v94 ic_whitespaceAndNewlineCoalescedString];

      sub_25C78F034();
      type metadata accessor for NoteViewModel(0);
      v96 = v110;
      sub_25C78A628(v110);

      v97 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet;
      swift_beginAccess();
      sub_25C78C308(v96, v54 + v97, &unk_27FC147D0, &qword_25C790358);
      swift_endAccess();

      sub_25C78A628(v96);

      v98 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle;
      swift_beginAccess();
      sub_25C78C308(v96, v54 + v98, &unk_27FC147D0, &qword_25C790358);
      swift_endAccess();
      v78 = v114;
      v77 = v118;
    }

    [v78 updateThumbnailAttachmentIdentifier];
    v99 = [v78 thumbnailAttachmentIdentifier];
    if (v99)
    {
      v100 = v99;
      sub_25C78F034();

      type metadata accessor for NoteViewModel(0);
      v101 = v113;
      sub_25C78A7D4(v112, v113);

      v102 = *(v71 + 8);
      v102(v121, v77);
      v102(v119, v77);
      (*(v108 + 8))(v107, v109);
      v103 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
      swift_beginAccess();
      sub_25C78C308(v101, v54 + v103, &qword_27FC14000, " \r");
      swift_endAccess();
      return;
    }

    v104 = *(v71 + 8);
    v104(v121, v77);
    v104(v119, v77);
  }

  else
  {

    (*(v42 + 8))(v43, v45);
  }

  (*(v108 + 8))(v107, v109);
}

void sub_25C78A628(uint64_t a5@<X8>)
{
  v6 = objc_allocWithZone(MEMORY[0x277D368D0]);
  v7 = sub_25C78F024();
  v8 = [v6 initWithSearchString_];

  v9 = sub_25C78F024();
  v10 = [v8 firstMatchInDocumentWithGlobalFallback_];

  v11 = objc_opt_self();
  v12 = sub_25C78F024();
  v13 = [objc_opt_self() ICTintColor];
  v14 = [v11 attributedStringWithMatchHighlighted:v12 optionalAttributedHighlightedString:0 textCheckingResult:v10 highlightColor:v13 insideFrame:v8 finishingUpRegexMatchFinder:{0.0, 0.0, 286.0, 20.0}];

  if (v14)
  {
    sub_25C78E6B4();

    v15 = sub_25C78E6A4();
    v16 = *(*(v15 - 8) + 56);

    v16(a5, 0, 1, v15);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25C78A7D4@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_25C77ADD4(0, &unk_27FC14880, 0x277D35E00);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_25C78F024();
  v8 = [ObjCClassFromMetadata cloudObjectWithIdentifier:v7 context:a3];

  if (!v8)
  {
    if (qword_27FC13F88 != -1)
    {
      swift_once();
    }

    v15 = sub_25C78E914();
    __swift_project_value_buffer(v15, qword_27FC147B0);
    v11 = sub_25C78E904();
    v16 = sub_25C78F0C4();
    if (os_log_type_enabled(v11, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_25C776000, v11, v16, "Cannot create attachment for identifier — returning nil preview image", v17, 2u);
      MEMORY[0x25F88D470](v17, -1, -1);
    }

LABEL_19:
    v14 = 1;
    goto LABEL_20;
  }

  [objc_opt_self() ic_scale];
  v10 = [v8 attachmentPreviewImageWithMinSize:25.0 scale:25.0, v9];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 previewImageURL];
    if (v12)
    {
      v13 = v12;
      sub_25C78E724();

      v14 = 0;
      goto LABEL_20;
    }

    if (qword_27FC13F88 != -1)
    {
      swift_once();
    }

    v22 = sub_25C78E914();
    __swift_project_value_buffer(v22, qword_27FC147B0);
    v23 = sub_25C78E904();
    v24 = sub_25C78F0C4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_25C776000, v23, v24, "Cannot get previewImageURL for preview image - returning nil preview image", v25, 2u);
      MEMORY[0x25F88D470](v25, -1, -1);
    }

    goto LABEL_19;
  }

  if (qword_27FC13F88 != -1)
  {
    swift_once();
  }

  v18 = sub_25C78E914();
  __swift_project_value_buffer(v18, qword_27FC147B0);
  v19 = sub_25C78E904();
  v20 = sub_25C78F0C4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_25C776000, v19, v20, "Cannot create preview image for attachment — returning nil preview image", v21, 2u);
    MEMORY[0x25F88D470](v21, -1, -1);
  }

  v14 = 1;
  v11 = v8;
LABEL_20:

  v26 = sub_25C78E744();
  v27 = *(*(v26 - 8) + 56);

  return v27(a4, v14, 1, v26);
}

uint64_t sub_25C78AB8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_25C78E6F4();
  v9 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account);
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString);
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  sub_25C78E774();
  sub_25C78E774();
  v13 = (v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
  *v13 = 0;
  v13[1] = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isPasswordProtected) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isAuthenticated) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isUnsupported) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isShared) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_hasUnreadChanges) = 0;
  *(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isModernNote) = 1;
  v14 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  v15 = sub_25C78E744();
  (*(*(v15 - 8) + 56))(v4 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle;
  v17 = sub_25C78E6A4();
  v18 = *(*(v17 - 8) + 56);
  v18(v4 + v16, 1, 1, v17);
  v18(v4 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = v4;
  v19[4] = a3;
  v19[5] = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25C78C2AC;
  *(v20 + 24) = v19;
  v23[4] = sub_25C78C2C8;
  v23[5] = v20;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_25C78AB64;
  v23[3] = &block_descriptor_1;
  v21 = _Block_copy(v23);
  swift_unknownObjectRetain();

  [a2 performBlockAndWait_];
  swift_unknownObjectRelease();

  _Block_release(v21);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if ((a2 & 1) == 0)
  {
    return v4;
  }

  __break(1u);
  return result;
}

double sub_25C78AEB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v84 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC147D0, &qword_25C790358);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v72 - v7;
  v9 = sub_25C78E784();
  v82 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25C78E744();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v72 - v20;
  v22 = [objc_opt_self() appURLForHTMLNote_];
  if (!v22)
  {
    return result;
  }

  v81 = a2;
  v24 = v22;
  sub_25C78E724();

  (*(v13 + 32))(v21, v19, v12);
  v25 = [a1 title];
  if (!v25)
  {
LABEL_16:
    (*(v13 + 8))(v21, v12);
    return result;
  }

  v78 = v8;
  v26 = v25;
  v79 = sub_25C78F034();
  v28 = v27;

  v29 = [a1 folder];
  if (!v29)
  {
    (*(v13 + 8))(v21, v12);

    return result;
  }

  v80 = v28;
  v30 = [v29 name];
  swift_unknownObjectRelease();
  if (!v30)
  {
    (*(v13 + 8))(v21, v12);
    goto LABEL_14;
  }

  v31 = sub_25C78F034();
  v33 = v32;

  v34 = [a1 account];
  if (!v34 || (v77 = v31, v35 = [v34 localizedName], swift_unknownObjectRelease(), !v35))
  {
    (*(v13 + 8))(v21, v12);

LABEL_14:

    return result;
  }

  v75 = sub_25C78F034();
  v37 = v36;

  v86 = &unk_286E88080;
  v76 = swift_dynamicCastObjCProtocolConditional();
  if (!v76)
  {

    goto LABEL_16;
  }

  (*(v13 + 16))(v16, v21, v12);
  v73 = v33;
  v74 = v37;
  v38 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_noteUrl;
  v39 = v81;
  swift_beginAccess();
  v72 = *(v13 + 40);
  swift_unknownObjectRetain();
  v72(v39 + v38, v16, v12);
  swift_endAccess();
  v40 = (v39 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  swift_beginAccess();
  v41 = v80;
  *v40 = v79;
  v40[1] = v41;
  v79 = v40;

  v42 = (v39 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_folder);
  v43 = v73;
  *v42 = v77;
  v42[1] = v43;

  v44 = v39;
  v45 = (v39 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_account);
  v46 = v74;
  *v45 = v75;
  v45[1] = v46;

  v85 = &unk_286E88080;
  v47 = swift_dynamicCastObjCProtocolConditional();
  if (v47)
  {
    v48 = v47;
    v49 = objc_opt_self();
    swift_unknownObjectRetain();
    v50 = [v49 dateForCurrentSortTypeAccessibilityStringForNote:v48 folderNoteSortType:0];
    if (v50)
    {
      v51 = v50;
      v52 = sub_25C78F034();
      v54 = v53;
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v52 = 0;
      v54 = 0xE000000000000000;
    }

    v44 = v81;
    v55 = (v81 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_axDateString);
    *v55 = v52;
    v55[1] = v54;
  }

  v56 = [a1 creationDate];
  sub_25C78E764();

  v57 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_creationDate;
  swift_beginAccess();
  v58 = *(v82 + 40);
  v58(v44 + v57, v11, v9);
  swift_endAccess();
  v59 = [a1 modificationDate];
  sub_25C78E764();

  v60 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_modificationDate;
  swift_beginAccess();
  v58(v44 + v60, v11, v9);
  swift_endAccess();
  v61 = v76;
  v62 = [v76 contentInfoText];
  v63 = sub_25C78F034();
  v65 = v64;

  v66 = (v44 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_subtitleSnippet);
  *v66 = v63;
  v66[1] = v65;

  *(v44 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_isModernNote) = 0;
  if (v83)
  {
    v67 = [v61 noteAsPlainTextWithoutTitle];
    sub_25C78F034();

    type metadata accessor for NoteViewModel(0);
    v68 = v78;
    sub_25C78A628(v78);

    v69 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet;
    v70 = v81;
    swift_beginAccess();
    sub_25C78C308(v68, v70 + v69, &unk_27FC147D0, &qword_25C790358);
    swift_endAccess();

    sub_25C78A628(v68);
    swift_unknownObjectRelease();

    (*(v13 + 8))(v21, v12);
    v71 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle;
    swift_beginAccess();
    sub_25C78C308(v68, v70 + v71, &unk_27FC147D0, &qword_25C790358);
    swift_endAccess();
  }

  else
  {
    (*(v13 + 8))(v21, v12);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t NoteViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_noteUrl;
  v2 = sub_25C78E744();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_creationDate;
  v4 = sub_25C78E784();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_modificationDate, v4);

  sub_25C77AB6C(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail, &qword_27FC14000, " \r");
  sub_25C77AB6C(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedTitle, &unk_27FC147D0, &qword_25C790358);
  sub_25C77AB6C(v0 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_highlightedSnippet, &unk_27FC147D0, &qword_25C790358);
  return v0;
}

uint64_t NoteViewModel.__deallocating_deinit()
{
  NoteViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25C78B8A0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_title);
  swift_beginAccess();
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_25C78B8FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11NotesSiriUI13NoteViewModel_thumbnail;
  swift_beginAccess();
  return sub_25C788954(v3 + v4, a2);
}

uint64_t type metadata accessor for NoteViewModel(uint64_t a1)
{
  result = qword_27FC147E0;
  if (!qword_27FC147E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25C78B9B0(uint64_t a1)
{
  sub_25C78E744();
  if (v1 <= 0x3F)
  {
    sub_25C78E784();
    if (v2 <= 0x3F)
    {
      sub_25C78BBD4(319, &qword_27FC147F0, MEMORY[0x277CC9260]);
      if (v3 <= 0x3F)
      {
        sub_25C78BBD4(319, &unk_27FC147F8, MEMORY[0x277CC8C40]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_25C78BBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25C78F134();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_25C78BC28(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25C78BCF4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25C787740(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25C78BCF4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25C78BE00(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25C78F194();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25C78BE00(uint64_t a1, unint64_t a2)
{
  v3 = sub_25C78BE4C(a1, a2);
  sub_25C78BF7C(&unk_286E657E0);
  return v3;
}

void *sub_25C78BE4C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25C78C068(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25C78F194();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25C78F044();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25C78C068(v10, 0);
        result = sub_25C78F174();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25C78BF7C(uint64_t result)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_25C78C0DC(result, v11, 1, v3);
  v3 = result;
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25C78C068(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC14890, &unk_25C7908B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25C78C0DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FC14890, &unk_25C7908B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_25C78C1D0()
{
  result = qword_27FC14808;
  if (!qword_27FC14808)
  {
    sub_25C78E744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14808);
  }

  return result;
}

uint64_t sub_25C78C264()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25C78C308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C78C370()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t NotesSiriListHeaderView.headerText.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NotesSiriListHeaderView.defaultFolderUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotesSiriListHeaderView(0) + 28);
  v4 = sub_25C78E744();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for NotesSiriListHeaderView(uint64_t a1)
{
  result = qword_27FC14958;
  if (!qword_27FC14958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NotesSiriListHeaderView.init(noteCount:headerText:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[1] = a3;
  v9 = type metadata accessor for NotesSiriListHeaderView(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = 0;
  v12[1] = sub_25C78E8B4();
  v12[2] = v13;
  sub_25C78EFD4();
  v14 = [objc_opt_self() appURLForDefaultFolder];
  sub_25C78E724();

  *(v12 + *(v9 + 32)) = 26;
  v15 = *(v9 + 36);
  *(v12 + v15) = 0;
  if ((a2 & 1) == 0)
  {
    if (a1 >= 26)
    {
      *v12 = 25;
      *(v12 + v15) = 1;
      if (!a4)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    *v12 = a1;
  }

  if (a4)
  {
LABEL_5:
    v16 = sub_25C78F024();

    v17 = [v16 ic_quotedString];

    v18 = sub_25C78F034();
    v20 = v19;

    v12[1] = v18;
    v12[2] = v20;
  }

LABEL_6:
  sub_25C78C714(v12, a5);
  (*(v10 + 56))(a5, 0, 1, v9);
  return sub_25C78C778(v12);
}

uint64_t sub_25C78C714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSiriListHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78C778(uint64_t a1)
{
  v2 = type metadata accessor for NotesSiriListHeaderView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NotesSiriListHeaderView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_25C78EB74();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NotesSiriListHeaderView(0);
  v45 = *(v6 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14900, &qword_25C7908C0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14908, &qword_25C7908C8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14910, &qword_25C7908D0);
  v48 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v16 = &v41 - v15;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14918, &qword_25C7908D8);
  v17 = MEMORY[0x28223BE20](v47);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v42 = &v41 - v20;
  *v11 = sub_25C78EAD4();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14920, &qword_25C7908E0);
  sub_25C78CEF8(v2, &v11[*(v21 + 44)]);
  v22 = sub_25C78ED34();
  KeyPath = swift_getKeyPath();
  v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14928, &qword_25C790918) + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  v25 = sub_25C78ECE4();
  v26 = &v11[*(v9 + 44)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  sub_25C78EF74();
  sub_25C78E9F4();
  sub_25C78D854(v11, v14);
  v27 = &v14[*(v12 + 36)];
  v28 = v59;
  *(v27 + 4) = v58;
  *(v27 + 5) = v28;
  *(v27 + 6) = v60;
  v29 = v55;
  *v27 = v54;
  *(v27 + 1) = v29;
  v30 = v57;
  *(v27 + 2) = v56;
  *(v27 + 3) = v30;
  v31 = v43;
  sub_25C78C714(v41, v43);
  v32 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v33 = swift_allocObject();
  sub_25C78D9F0(v31, v33 + v32);
  v34 = sub_25C78DAB4();
  sub_25C78EE04();

  sub_25C77AB6C(v14, &qword_27FC14908, &qword_25C7908C8);
  sub_25C78EB44();
  v52 = v12;
  v53 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = v46;
  sub_25C78EE64();
  v36 = v50;
  v37 = *(v49 + 8);
  v37(v5, v50);
  (*(v48 + 8))(v16, v35);
  sub_25C78EB54();
  v38 = v42;
  sub_25C78E9D4();
  v37(v5, v36);
  sub_25C77AB6C(v19, &qword_27FC14918, &qword_25C7908D8);
  v52 = sub_25C78E874();
  v53 = v39;
  sub_25C781450();
  sub_25C78E9C4();

  return sub_25C77AB6C(v38, &qword_27FC14918, &qword_25C7908D8);
}

uint64_t sub_25C78CDB4()
{
  v0 = sub_25C78F004();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  type metadata accessor for NotesSiriListHeaderView(0);
  v5 = sub_25C78E714();
  [v4 setPunchOutUri_];

  sub_25C78EFC4();
  v6 = v4;
  sub_25C78EFF4();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_25C78CEF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14998, &qword_25C7909D8);
  MEMORY[0x28223BE20](v57);
  v55 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149A0, &qword_25C7909E0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v58 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v49 - v7;
  v8 = sub_25C78EB74();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149A8, &unk_25C7909E8);
  v12 = v11 - 8;
  v13 = MEMORY[0x28223BE20](v11);
  v54 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = &v49 - v15;
  v50 = a1;
  v16 = a1[2];
  v61 = a1[1];
  v62 = v16;
  v53 = sub_25C781450();

  v17 = sub_25C78EDA4();
  v19 = v18;
  v21 = v20;
  v22 = sub_25C78ED64();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_25C7814B4(v17, v19, v21 & 1);

  v61 = v22;
  v62 = v24;
  LOBYTE(v63) = v26 & 1;
  v64 = v28;
  sub_25C78EB64();
  v29 = v60;
  sub_25C78EE14();
  (*(v51 + 8))(v10, v52);
  sub_25C7814B4(v22, v24, v26 & 1);

  *(v29 + *(v12 + 44)) = sub_25C78EC84();
  v30 = v50;
  v31 = *v50;
  v32 = sub_25C78EAC4();
  sub_25C78D450(v30, v31, &v61);
  v33 = v61;
  v34 = v62;
  v35 = v63;
  v36 = v64;
  v70 = 0;
  v69 = v65;
  v61 = v32;
  v62 = 0;
  LOBYTE(v63) = 0;
  v64 = v33;
  v65 = v34;
  v66 = v35;
  v67 = v36;
  v68 = v69;
  sub_25C78ED24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14978, &qword_25C7909C8);
  sub_25C78240C(&qword_27FC14970, &qword_27FC14978, &qword_25C7909C8, MEMORY[0x277CE1138]);
  v37 = v55;
  sub_25C78EDF4();
  sub_25C781594(v33, v34, v35, v36);
  *(v37 + *(v57 + 36)) = sub_25C78EC94();
  v61 = sub_25C78E824();
  v62 = v38;
  sub_25C78E14C();
  v39 = v56;
  sub_25C78EE34();

  sub_25C77AB6C(v37, &qword_27FC14998, &qword_25C7909D8);
  v40 = v60;
  v41 = v54;
  sub_25C78E274(v60, v54);
  v42 = v39;
  v43 = v39;
  v44 = v58;
  sub_25C78E2E4(v42, v58);
  v45 = v59;
  sub_25C78E274(v41, v59);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149B8, &qword_25C7909F8);
  v47 = v45 + *(v46 + 48);
  *v47 = 0;
  *(v47 + 8) = 0;
  sub_25C78E2E4(v44, v45 + *(v46 + 64));
  sub_25C77AB6C(v43, &qword_27FC149A0, &qword_25C7909E0);
  sub_25C78E354(v40);
  sub_25C77AB6C(v44, &qword_27FC149A0, &qword_25C7909E0);
  return sub_25C78E354(v41);
}

__n128 NotesSiriListHeaderView.noteCountHelper(noteCount:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25C78EAC4();
  sub_25C78D450(v2, a1, v9);
  v6 = v10;
  result = v9[0];
  v8 = v9[1];
  *a2 = v5;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = result;
  *(a2 + 40) = v8;
  *(a2 + 56) = v6;
  return result;
}

double sub_25C78D450@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25C78E7C4();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14980, &qword_25C7909D0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = sub_25C78EB14();
  MEMORY[0x28223BE20](v11 - 8);
  if (*(a1 + *(type metadata accessor for NotesSiriListHeaderView(0) + 36)) == 1)
  {
    *&v30 = sub_25C78E8A4();
    *(&v30 + 1) = v12;
    sub_25C781450();
    v25 = sub_25C78EDA4();
    v26 = v13;
    v27 = v14 & 1;
    v28 = v15;
    v29 = 0;
  }

  else
  {
    sub_25C78EB04();
    sub_25C78EAF4();
    *&v30 = a2;
    sub_25C78E7B4();
    sub_25C78E0F8();
    sub_25C78E6C4();
    sub_25C78240C(&qword_27FC14990, &qword_27FC14980, &qword_25C7909D0, MEMORY[0x277CC8CE8]);
    sub_25C78EAE4();
    (*(v8 + 8))(v10, v7);
    sub_25C78EAF4();
    sub_25C78EB24();
    v16 = ICSharedFrameworkBundleIdentifier();
    if (!v16)
    {
      sub_25C78F034();
      v16 = sub_25C78F024();
    }

    v17 = [objc_opt_self() bundleWithIdentifier_];

    v25 = sub_25C78ED84();
    v26 = v18;
    v27 = v19 & 1;
    v28 = v20;
    v29 = 1;
  }

  sub_25C78EC64();
  result = *&v30;
  v22 = v31;
  v23 = v32;
  *a3 = v30;
  *(a3 + 16) = v22;
  *(a3 + 32) = v23;
  return result;
}

uint64_t sub_25C78D7A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C78EA54();
  *a1 = result;
  return result;
}

uint64_t sub_25C78D7D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25C78EA54();
  *a1 = result;
  return result;
}

uint64_t sub_25C78D854(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC14900, &qword_25C7908C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78D8C4()
{
  v1 = (type metadata accessor for NotesSiriListHeaderView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_25C78EFE4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  v7 = v1[9];
  v8 = sub_25C78E744();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25C78D9F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesSiriListHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78DA54()
{
  type metadata accessor for NotesSiriListHeaderView(0);

  return sub_25C78CDB4();
}

unint64_t sub_25C78DAB4()
{
  result = qword_27FC14930;
  if (!qword_27FC14930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14908, &qword_25C7908C8);
    sub_25C78DB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14930);
  }

  return result;
}

unint64_t sub_25C78DB40()
{
  result = qword_27FC14938;
  if (!qword_27FC14938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14900, &qword_25C7908C0);
    sub_25C78DBCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14938);
  }

  return result;
}

unint64_t sub_25C78DBCC()
{
  result = qword_27FC14940;
  if (!qword_27FC14940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14928, &qword_25C790918);
    sub_25C78240C(&qword_27FC14948, &qword_27FC14950, &unk_25C790920, MEMORY[0x277CE1138]);
    sub_25C78240C(&qword_27FC143C8, &qword_27FC143D0, &qword_25C790388, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14940);
  }

  return result;
}

uint64_t sub_25C78DCE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25C78EFE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_25C78E744();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25C78DE18(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v8 = sub_25C78EFE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_25C78E744();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25C78DF3C(uint64_t a1)
{
  result = sub_25C78EFE4();
  if (v2 <= 0x3F)
  {
    result = sub_25C78E744();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_25C78DFEC()
{
  result = qword_27FC14968;
  if (!qword_27FC14968)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14918, &qword_25C7908D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14908, &qword_25C7908C8);
    sub_25C78DAB4();
    swift_getOpaqueTypeConformance2();
    sub_25C782038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14968);
  }

  return result;
}

unint64_t sub_25C78E0F8()
{
  result = qword_27FC14988;
  if (!qword_27FC14988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC14988);
  }

  return result;
}

unint64_t sub_25C78E14C()
{
  result = qword_27FC149B0;
  if (!qword_27FC149B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14998, &qword_25C7909D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC14978, &qword_25C7909C8);
    sub_25C78240C(&qword_27FC14970, &qword_27FC14978, &qword_25C7909C8, MEMORY[0x277CE1138]);
    swift_getOpaqueTypeConformance2();
    sub_25C78240C(&qword_27FC143B0, &qword_27FC143B8, &qword_25C790380, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC149B0);
  }

  return result;
}

uint64_t sub_25C78E274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149A8, &unk_25C7909E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78E2E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149A0, &qword_25C7909E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C78E354(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149A8, &unk_25C7909E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NotesSiriSashView.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_25C78E8C4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149C0, &qword_25C790A00);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_25C78E420@<X0>(uint64_t a1@<X8>)
{
  sub_25C78E8C4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC149C0, &qword_25C790A00);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t getEnumTagSinglePayload for NotesSiriSashView(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NotesSiriSashView(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_25C78E54C()
{
  result = qword_27FC149C8;
  if (!qword_27FC149C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FC149C0, &qword_25C790A00);
    sub_25C78E5D8();
    sub_25C78E630();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC149C8);
  }

  return result;
}

unint64_t sub_25C78E5D8()
{
  result = qword_27FC149D0;
  if (!qword_27FC149D0)
  {
    sub_25C78E8D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC149D0);
  }

  return result;
}

unint64_t sub_25C78E630()
{
  result = qword_27FC149D8;
  if (!qword_27FC149D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FC149E0, " B");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC149D8);
  }

  return result;
}