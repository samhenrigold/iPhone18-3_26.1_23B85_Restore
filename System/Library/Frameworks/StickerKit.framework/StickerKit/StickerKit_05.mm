void sub_19A670458(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v34 - v8 + 48;
  v10 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (*(v10 + OBJC_IVAR___STKImageGlyph_emojiString + 8))
    {
      if (*(v10 + OBJC_IVAR___STKImageGlyph_stickerSourceType) == 2)
      {
      }

      else
      {
        v13 = *(Strong + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager);

        v14 = sub_19A7AAFE4();

        v15 = [v13 lastUsedVariantEmojiForEmojiString_];

        sub_19A7AB014();
      }

      v16 = sub_19A7AAFE4();

      v17 = [objc_opt_self() emojiTokenWithString:v16 localeData:0];

      if (v17)
      {
        sub_19A5F59D8(v17, 0x697274536D6F7266, 0xEA0000000000676ELL, 0, v34);

        v18 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_viewModel;

        sub_19A63F030(v34);

        v19 = *&v12[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_configuration];
        v33 = a2;
        if (v19)
        {
          v20 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_userInterfaceIdiom;
          swift_beginAccess();
          if (*(v19 + v20) == 1)
          {
            v21 = OBJC_IVAR___STKEmojiAndStickerCollectionViewConfiguration_isInPopover;
            swift_beginAccess();
            v19 = ~*(v19 + v21) & 1;
          }

          else
          {
            v19 = 0;
          }
        }

        v22 = a1 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_style;
        *v22 = v19;
        *(v22 + 8) = 0;
        v23 = *(a1 + v18);
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v33 - 4) = v23;
        *(&v33 - 3) = v19;
        *(&v33 - 16) = 0;
        *&v34[0] = v23;
        sub_19A681478(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel, &unk_19A7B8A84);

        sub_19A7A90B4();

        v25 = sub_19A7A9094();
        v26 = *(v25 - 8);
        (*(v26 + 16))(v9, v33, v25);
        (*(v26 + 56))(v9, 0, 1, v25);
        v27 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_indexPath;
        swift_beginAccess();
        sub_19A680E70(v9, a1 + v27, &unk_1EAFCF110, &unk_19A7B6AF0);
        swift_endAccess();

        v28 = sub_19A7A9064();
        v29 = sub_19A6701A8(v28);
        v30 = !v29;
        if (v29)
        {
          v31 = 0x5473746E65636552;
        }

        else
        {
          v31 = 0xD000000000000013;
        }

        if (v30)
        {
          v32 = 0x800000019A7C82F0;
        }

        else
        {
          v32 = 0xEA00000000006261;
        }

        sub_19A63F418(v31, v32);

        *(a1 + OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_delegate + 8) = &off_1F0DC8290;
        swift_unknownObjectWeakAssign();
      }
    }
  }
}

void sub_19A67091C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-v8];
  v10 = *a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(v10 + OBJC_IVAR___STKImageGlyph_character + 8);
    if (v13)
    {
      v14 = *(v10 + OBJC_IVAR___STKImageGlyph_character);
      *(a1 + OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_delegate + 8) = &off_1F0DC82A8;
      swift_unknownObjectWeakAssign();

      sub_19A79475C(v14, v13);

      v15 = sub_19A7A9094();
      v16 = *(v15 - 8);
      (*(v16 + 16))(v9, a2, v15);
      (*(v16 + 56))(v9, 0, 1, v15);
      v17 = OBJC_IVAR____TtC10StickerKit34UnicodeCharacterCollectionViewCell_indexPath;
      swift_beginAccess();
      sub_19A680E70(v9, a1 + v17, &unk_1EAFCF110, &unk_19A7B6AF0);
      swift_endAccess();
    }

    else
    {
    }
  }
}

uint64_t sub_19A670B18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = _s10StickerKit10ImageGlyphC05imageD03forACSgSS_tFZ_0(*a3, a3[1]);
  if (v7)
  {
    v8 = v7;
    if (sub_19A7669B0() == 4)
    {
      *&v12[0] = v8;
      type metadata accessor for UnicodeCharacterCollectionViewCell(0);
      type metadata accessor for ImageGlyph(0);
      v9 = v8;
    }

    else if (sub_19A7669B0() == 3 || !sub_19A7669B0())
    {
      *&v12[0] = v8;
      type metadata accessor for EmojiCollectionViewCell(0);
      type metadata accessor for ImageGlyph(0);
      v9 = v8;
    }

    else
    {
      *&v12[0] = v8;
      type metadata accessor for StickerCollectionViewCell(0);
      type metadata accessor for ImageGlyph(0);
      v9 = v8;
    }

    v10 = sub_19A7AB624();
  }

  else
  {
    sub_19A5F5028(0, &qword_1EAFCA4B8, 0x1E69DC7F8);
    memset(v12, 0, sizeof(v12));
    v10 = sub_19A7AB624();
    sub_19A5F2B54(v12, &unk_1EAFCD750, &unk_19A7B87D0);
  }

  return v10;
}

void sub_19A670CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    *(a1 + *a6 + 8) = a7;
    swift_unknownObjectWeakAssign();
  }
}

uint64_t sub_19A670D38(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 == 0xD000000000000024 && 0x800000019A7C6A30 == a4 || (sub_19A7AC064() & 1) != 0)
  {
    type metadata accessor for StickerButtonView();
  }

  else if (a3 == 0xD00000000000002ALL && 0x800000019A7C6A60 == a4 || (sub_19A7AC064() & 1) != 0)
  {
    type metadata accessor for StickerEmptyContentView();
  }

  else
  {
    sub_19A5F5028(0, &unk_1EAFCA480, 0x1E69DC7E8);
  }

  return sub_19A7AB634();
}

uint64_t sub_19A670E54(uint64_t *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v46 - v4;
  v6 = sub_19A7A9094();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v14 = *a1;
  v13 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v16 = Strong;
  if (Strong[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isSearching] == 1)
  {

LABEL_17:
    v27 = 0;
    return v27 & 1;
  }

  v49 = _s10StickerKit10ImageGlyphC05imageD03forACSgSS_tFZ_0(v14, v13);
  if (!v49)
  {
    if (qword_1EAFCA9A8 != -1)
    {
      swift_once();
    }

    v23 = sub_19A7A9384();
    __swift_project_value_buffer(v23, qword_1EAFCA9B0);

    v19 = sub_19A7A9364();
    v24 = sub_19A7AB584();

    if (os_log_type_enabled(v19, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v50 = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_19A62540C(v14, v13, &v50);
      _os_log_impl(&dword_19A5EE000, v19, v24, "Can not find image glyph for item identifier: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x19A907A30](v26, -1, -1);
      MEMORY[0x19A907A30](v25, -1, -1);
    }

    goto LABEL_16;
  }

  v17 = *&v16[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_imageGlyphDataSource];
  sub_19A654ED4(v49, v5);

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
    if (qword_1EAFCA9A8 != -1)
    {
      swift_once();
    }

    v18 = sub_19A7A9384();
    __swift_project_value_buffer(v18, qword_1EAFCA9B0);

    v19 = sub_19A7A9364();
    v20 = sub_19A7AB584();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v50 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_19A62540C(v14, v13, &v50);
      _os_log_impl(&dword_19A5EE000, v19, v20, "Can not find image glyph index path for item identifier: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x19A907A30](v22, -1, -1);
      MEMORY[0x19A907A30](v21, -1, -1);
    }

LABEL_16:
    goto LABEL_17;
  }

  (*(v7 + 32))(v12, v5, v6);
  v29 = sub_19A7A9064();
  v30 = sub_19A670300(v29);
  v31 = v16[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging];
  LODWORD(v48) = v30;
  v27 = v31 & v30;
  if (qword_1EAFCA9A8 != -1)
  {
    swift_once();
  }

  v32 = sub_19A7A9384();
  __swift_project_value_buffer(v32, qword_1EAFCA9B0);
  (*(v7 + 16))(v9, v12, v6);

  v33 = sub_19A7A9364();
  v34 = sub_19A7AB5A4();

  v47 = v34;
  v35 = v34;
  v36 = v33;
  if (os_log_type_enabled(v33, v35))
  {
    v37 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v37 = 136315906;
    *(v37 + 4) = sub_19A62540C(v14, v13, &v50);
    *(v37 + 12) = 1024;
    *(v37 + 14) = v48 & 1;
    *(v37 + 18) = 1024;
    *(v37 + 20) = v27 & 1;
    *(v37 + 24) = 2080;
    sub_19A681478(&qword_1EAFCD6D8, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
    v48 = v36;
    v38 = sub_19A7AC024();
    v40 = v39;
    v41 = *(v7 + 8);
    v41(v9, v6);
    v42 = sub_19A62540C(v38, v40, &v50);

    *(v37 + 26) = v42;
    v43 = v48;
    _os_log_impl(&dword_19A5EE000, v48, v47, "Attempted to reorder item identifier: %s, isSticker: %{BOOL}d, canReorder: %{BOOL}d, indexPath:%s", v37, 0x22u);
    v44 = v46;
    swift_arrayDestroy();
    MEMORY[0x19A907A30](v44, -1, -1);
    MEMORY[0x19A907A30](v37, -1, -1);

    v41(v12, v6);
  }

  else
  {

    v45 = *(v7 + 8);
    v45(v9, v6);
    v45(v12, v6);
  }

  return v27 & 1;
}

void sub_19A671518(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD740, &qword_19A7BB568);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD748, &qword_19A7BB570);
    MEMORY[0x19A903950](v10);
    v11 = sub_19A7ABEA4();
    (*(v7 + 8))(v9, v6);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = 0;
      v14 = (v11 + 65);
      v43 = *(v11 + 16);
      v44 = v11;
      while (v13 < *(v11 + 16))
      {
        if ((*v14 & 1) == 0)
        {
          v15 = *(v14 - 33);
          v16 = *(v14 - 25);
          v17 = *(v14 - 17);
          v18 = *(v14 - 9);
          v19 = *(v14 - 1);
          v53 = v15;
          if (v19)
          {
            v20 = qword_1EAFCA9A8;

            if (v20 != -1)
            {
              swift_once();
            }

            v21 = sub_19A7A9384();
            __swift_project_value_buffer(v21, qword_1EAFCA9B0);
            v22 = sub_19A7A9364();
            v23 = sub_19A7AB584();
            if (os_log_type_enabled(v22, v23))
            {
              v24 = swift_slowAlloc();
              v51 = v18;
              v25 = v24;
              *v24 = 0;
              _os_log_impl(&dword_19A5EE000, v22, v23, "Asked to move a sticker without a source location", v24, 2u);
              MEMORY[0x19A907A30](v25, -1, -1);
            }

            sub_19A6812B0(v53, v16, v17);
          }

          else
          {
            v26 = sub_19A7AB394();
            v47 = *(v26 - 8);
            v27 = v19;
            v28 = v16;
            (*(v47 + 56))(v52, 1, 1, v26);
            v29 = swift_allocObject();
            swift_unknownObjectWeakInit();
            sub_19A7AB354();
            v30 = v15;
            v48 = v28;
            v49 = v17;
            v50 = v27;
            sub_19A6812B8(v15, v28, v17);

            v31 = sub_19A7AB344();
            v32 = swift_allocObject();
            v32[2] = v31;
            v32[3] = MEMORY[0x1E69E85E0];
            v32[4] = v29;
            v51 = v18;
            v32[5] = v18;
            v32[6] = v30;
            v33 = v47;

            v34 = v45;
            sub_19A60F0CC(v52, v45, &unk_1EAFCD690, &qword_19A7B6B00);
            LODWORD(v29) = (*(v33 + 48))(v34, 1, v26);

            if (v29 == 1)
            {
              sub_19A5F2B54(v34, &unk_1EAFCD690, &qword_19A7B6B00);
            }

            else
            {
              sub_19A7AB384();
              (*(v33 + 8))(v34, v26);
            }

            v35 = v32[2];
            swift_unknownObjectRetain();

            v37 = v48;
            v36 = v49;
            if (v35)
            {
              swift_getObjectType();
              v38 = sub_19A7AB2E4();
              v40 = v39;
              swift_unknownObjectRelease();
            }

            else
            {
              v38 = 0;
              v40 = 0;
            }

            v41 = v53;
            sub_19A5F2B54(v52, &unk_1EAFCD690, &qword_19A7B6B00);
            v42 = swift_allocObject();
            *(v42 + 16) = &unk_19A7BB580;
            *(v42 + 24) = v32;
            if (v40 | v38)
            {
              v54 = 0;
              v55 = 0;
              v56 = v38;
              v57 = v40;
            }

            v12 = v43;
            v11 = v44;
            swift_task_create();

            sub_19A6812B0(v41, v37, v36);
          }
        }

        ++v13;
        v14 += 40;
        if (v12 == v13)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_22:
    }
  }
}

uint64_t sub_19A671AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  sub_19A7AB354();
  v6[8] = sub_19A7AB344();
  v8 = sub_19A7AB2E4();
  v6[9] = v8;
  v6[10] = v7;

  return MEMORY[0x1EEE6DFA0](sub_19A671B6C, v8, v7);
}

uint64_t sub_19A671B6C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_imageGlyphDataSource);
    v0[12] = v2;
    v2;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_19A671C80;
    v5 = v0[6];
    v4 = v0[7];

    return sub_19A6557DC(v5, v4);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_19A671C80()
{
  v1 = *v0;
  v2 = *(*v0 + 96);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_19A671DC0, v4, v3);
}

uint64_t sub_19A671DC0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A671E28()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v112 = &v108 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v115 = &v108 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v108 - v9;
  v11 = sub_19A7A9094();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v109 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v108 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v108 - v20;
  if (qword_1EAFCA9A8 != -1)
  {
    swift_once();
  }

  v114 = v0;
  v22 = sub_19A7A9384();
  v116 = __swift_project_value_buffer(v22, qword_1EAFCA9B0);
  v23 = sub_19A7A9364();
  v24 = sub_19A7AB574();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_19A5EE000, v23, v24, "scrollToLastCreatedSticker", v25, 2u);
    MEMORY[0x19A907A30](v25, -1, -1);
  }

  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  v26 = sub_19A652898();
  v27 = sub_19A652F7C(v26);

  v28 = sub_19A65883C(1);
  if (v29)
  {
    v28 = -1;
  }

  v110 = v13;
  if ((v27 & 0xC000000000000001) == 0)
  {
    if ((v28 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v28 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v27 + 8 * v28 + 32);
      goto LABEL_13;
    }

    __break(1u);
LABEL_39:
    swift_once();
    goto LABEL_16;
  }

  v30 = MEMORY[0x19A906130](v28, v27);
LABEL_13:
  v31 = v30;

  v117 = v31;
  sub_19A6579A0(v31, v10);
  v13 = *(v12 + 48);
  v32 = v13(v10, 1, v11);
  v113 = v18;
  if (v32 == 1)
  {
    v33 = v12;
    sub_19A5F2B54(v10, &unk_1EAFCF110, &unk_19A7B6AF0);
    goto LABEL_17;
  }

  (*(v12 + 32))(v21, v10, v11);
  if (qword_1ED8B2D18 != -1)
  {
    goto LABEL_39;
  }

LABEL_16:
  v34 = v115;
  (*(v12 + 16))(v115, v21, v11);
  (*(v12 + 56))(v34, 0, 1, v11);
  sub_19A779BD0(v34);
  sub_19A5F2B54(v34, &unk_1EAFCF110, &unk_19A7B6AF0);
  v33 = v12;
  (*(v12 + 8))(v21, v11);
LABEL_17:
  sub_19A6579A0(v117, v5);
  if (v13(v5, 1, v11) == 1)
  {
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
    v35 = sub_19A7A9364();
    v36 = sub_19A7AB584();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_19A5EE000, v35, v36, "Can't find sticker category index", v37, 2u);
      MEMORY[0x19A907A30](v37, -1, -1);
    }

    return 0;
  }

  v40 = v33;
  v41 = v33 + 32;
  v42 = *(v33 + 32);
  v43 = v113;
  v42(v113, v5, v11);
  v44 = v114;
  v45 = *(v114 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  v46 = sub_19A7A9014();
  v47 = [v45 layoutAttributesForItemAtIndexPath_];

  v48 = v11;
  if (!v47)
  {
    v86 = v111;
    (*(v40 + 16))(v111, v43, v48);
    v87 = sub_19A7A9364();
    v88 = sub_19A7AB584();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = v43;
      v91 = swift_slowAlloc();
      v118[0] = v91;
      *v89 = 136315138;
      sub_19A681478(&qword_1EAFCD6D8, MEMORY[0x1E6969C28], MEMORY[0x1E6969C70]);
      v92 = sub_19A7AC024();
      v94 = v93;
      v95 = *(v40 + 8);
      v95(v86, v48);
      v96 = sub_19A62540C(v92, v94, v118);

      *(v89 + 4) = v96;
      _os_log_impl(&dword_19A5EE000, v87, v88, "Can't find item at index path %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v91);
      MEMORY[0x19A907A30](v91, -1, -1);
      MEMORY[0x19A907A30](v89, -1, -1);

      v95(v90, v48);
    }

    else
    {

      v107 = *(v40 + 8);
      v107(v86, v48);
      v107(v43, v48);
    }

    return 0;
  }

  v111 = v42;
  [v47 frame];
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;

  [v45 convertRect:0 toView:{v50, v52, v54, v56}];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v65 = sub_19A7A9364();
  v66 = sub_19A7AB574();
  v67 = os_log_type_enabled(v65, v66);
  v108 = v41;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v116 = v11;
    v70 = v69;
    v118[0] = v69;
    *v68 = 136315138;
    v119.origin.x = v58;
    v119.origin.y = v60;
    v119.size.width = v62;
    v119.size.height = v64;
    v71 = NSStringFromCGRect(v119);
    v72 = sub_19A7AB014();
    v73 = v45;
    v75 = v74;

    v76 = v72;
    v44 = v114;
    v77 = sub_19A62540C(v76, v75, v118);
    v45 = v73;

    *(v68 + 4) = v77;
    _os_log_impl(&dword_19A5EE000, v65, v66, "didScrollToLastCreatedSticker frameInWindow %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    v78 = v70;
    v48 = v116;
    MEMORY[0x19A907A30](v78, -1, -1);
    MEMORY[0x19A907A30](v68, -1, -1);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v80 = [Strong _hostedWindowScene];
    if (v80)
    {
      v81 = v80;
      v82 = sub_19A7A54EC(7, 0, 0, v58, v60, v62, v64);
      [v81 sendAction_];
    }

    swift_unknownObjectRelease();
  }

  v83 = *(v40 + 16);
  v84 = v115;
  v83(v115, v43, v48);
  v38 = 1;
  (*(v40 + 56))(v84, 0, 1, v48);
  v85 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_flatColorCellIndex;
  swift_beginAccess();
  sub_19A680E70(v84, v44 + v85, &unk_1EAFCF110, &unk_19A7B6AF0);
  swift_endAccess();
  if (*(v44 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasPlayedRippleAnimation))
  {

    (*(v40 + 8))(v43, v48);
  }

  else
  {
    *(v44 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasPlayedRippleAnimation) = 1;
    v97 = sub_19A7AB394();
    (*(*(v97 - 8) + 56))(v112, 1, 1, v97);
    v98 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v99 = v109;
    v83(v109, v43, v48);
    sub_19A7AB354();

    v100 = v45;
    v101 = sub_19A7AB344();
    v102 = v48;
    v103 = (*(v40 + 80) + 48) & ~*(v40 + 80);
    v104 = swift_allocObject();
    v105 = MEMORY[0x1E69E85E0];
    v104[2] = v101;
    v104[3] = v105;
    v104[4] = v98;
    v104[5] = v100;
    (v111)(v104 + v103, v99, v102);

    v106 = sub_19A7233DC(0, 0, v112, &unk_19A7BB510, v104);

    (*(v40 + 8))(v113, v102);
    *(v44 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_rippleAnimationTask) = v106;
  }

  return v38;
}

uint64_t sub_19A6729EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  v6[11] = swift_task_alloc();
  v7 = sub_19A7ABDC4();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  sub_19A7AB354();
  v6[18] = sub_19A7AB344();
  v9 = sub_19A7AB2E4();
  v6[19] = v9;
  v6[20] = v8;

  return MEMORY[0x1EEE6DFA0](sub_19A672B40, v9, v8);
}

uint64_t sub_19A672B40()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 168) = Strong;
  if (Strong)
  {
    *(v0 + 176) = CACurrentMediaTime();
    v2 = sub_19A7AC1E4();
    v4 = v3;
    sub_19A7AC0F4();
    v5 = swift_task_alloc();
    *(v0 + 184) = v5;
    *v5 = v0;
    v5[1] = sub_19A672CC8;

    return sub_19A776184(v2, v4, 0, 0, 1);
  }

  else
  {

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_19A672CC8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v2[24] = v0;

  v6 = *(v4 + 8);
  v2[25] = v6;
  v2[26] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[20];
  v8 = v2[19];
  if (v0)
  {
    v9 = sub_19A673048;
  }

  else
  {
    v9 = sub_19A672E74;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_19A672E74()
{
  if (qword_1EAFCA9A8 != -1)
  {
    swift_once();
  }

  v1 = sub_19A7A9384();
  v0[27] = __swift_project_value_buffer(v1, qword_1EAFCA9B0);
  v2 = sub_19A7A9364();
  v3 = sub_19A7AB574();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19A5EE000, v2, v3, "Starting ripple animation", v4, 2u);
    MEMORY[0x19A907A30](v4, -1, -1);
  }

  v5 = v0[9];

  v6 = sub_19A7A9014();
  [v5 stk:v6 performRippleAnimationAtIndexPath:0.0 delay:?];

  CACurrentMediaTime();
  v7 = sub_19A7AC1E4();
  v9 = v8;
  sub_19A7AC0F4();
  v10 = swift_task_alloc();
  v0[28] = v10;
  *v10 = v0;
  v10[1] = sub_19A6730F4;

  return sub_19A776184(v7, v9, 0, 0, 1);
}

uint64_t sub_19A673048()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A6730F4()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 96);
  *(*v1 + 232) = v0;

  v3(v4, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {
    v8 = sub_19A6734F8;
  }

  else
  {
    v8 = sub_19A67329C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19A67329C(uint64_t a1)
{
  v2 = sub_19A7A9364();
  v3 = sub_19A7AB574();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19A5EE000, v2, v3, "Presenting edit menu", v4, 2u);
    MEMORY[0x19A907A30](v4, -1, -1);
  }

  v5 = v1[9];

  v6 = sub_19A7A9014();
  v7 = [v5 cellForItemAtIndexPath_];

  if (v7)
  {
    type metadata accessor for StickerCollectionViewCell(0);
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v7;
      [v8 frame];
      sub_19A5F5028(0, &unk_1EAFCD6E0, 0x1E69DC9D8);
      v10 = sub_19A7AB854();
      [v10 set:1 ignoresKeyboardAvoidance:{0, 0, 0, 0, 0}];
      v11 = sub_19A6EC54C();
      [v11 presentEditMenuWithConfiguration_];
    }
  }

  else
  {
    v8 = 0;
  }

  v1[30] = v8;
  CACurrentMediaTime();
  v12 = sub_19A7AC1E4();
  v14 = v13;
  sub_19A7AC0F4();
  v15 = swift_task_alloc();
  v1[31] = v15;
  *v15 = v1;
  v15[1] = sub_19A6735A4;

  return sub_19A776184(v12, v14, 0, 0, 1);
}

uint64_t sub_19A6734F8()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A6735A4()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 96);
  *(*v1 + 256) = v0;

  v3(v4, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {
    v8 = sub_19A673924;
  }

  else
  {
    v8 = sub_19A67374C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19A67374C(uint64_t a1)
{
  v2 = sub_19A7A9364();
  v3 = sub_19A7AB574();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_19A5EE000, v2, v3, "Clearing flatColor", v4, 2u);
    MEMORY[0x19A907A30](v4, -1, -1);
  }

  v5 = v1[21];
  v6 = v1[11];

  v7 = sub_19A7A9094();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_flatColorCellIndex;
  swift_beginAccess();
  sub_19A680E70(v6, v5 + v8, &unk_1EAFCF110, &unk_19A7B6AF0);
  swift_endAccess();
  sub_19A673D24();
  sub_19A7AC0F4();
  v9 = swift_task_alloc();
  v1[33] = v9;
  *v9 = v1;
  v9[1] = sub_19A6739DC;

  return sub_19A776184(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_19A673924()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19A6739DC()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 96);
  *(*v1 + 272) = v0;

  v3(v4, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {
    v8 = sub_19A673C6C;
  }

  else
  {
    v8 = sub_19A673B84;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19A673B84()
{

  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  v1 = v0[30];
  v2 = v0[21];
  sub_19A778D44();

  v3 = v0[1];

  return v3();
}

uint64_t sub_19A673C6C()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

double sub_19A673D24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0, qword_19A7BF0B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v73 = &v72 - v2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD6B0, &qword_19A7BB500);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v72 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v72 - v8;
  v9 = sub_19A7A9094();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v15 = &v72 - v14;
  v88 = *(v0 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  v16 = [v88 indexPathsForVisibleItems];
  v17 = sub_19A7AB254();

  v18 = *(v17 + 16);
  if (v18)
  {
    v83 = v6;
    v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v72 = v17;
    v20 = v17 + v19;
    v79 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_flatColorCellIndex;
    v80 = v0;
    swift_beginAccess();
    v22 = *(v10 + 16);
    v21 = v10 + 16;
    v90 = v22;
    v84 = (v21 + 32);
    v78 = (v21 + 40);
    v74 = (v21 + 16);
    v23 = *(v21 + 56);
    v91 = v21;
    v89 = (v21 - 8);
    v77 = v23;
    v86 = v15;
    v22(v15, v20, v9);
    while (1)
    {
      v31 = sub_19A7A9014();
      v30 = [v88 cellForItemAtIndexPath_];

      if (v30)
      {
        break;
      }

LABEL_7:
      (*v89)(v15, v9);
      v20 += v23;
      if (!--v18)
      {
        goto LABEL_44;
      }

      v90(v15, v20, v9);
    }

    type metadata accessor for StickerCollectionViewCell(0);
    v32 = swift_dynamicCastClass();
    if (!v32)
    {
LABEL_6:

      goto LABEL_7;
    }

    v33 = v32;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v35 = *(Strong + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging);
      v36 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging;
      LODWORD(v37) = *(v33 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_isRearranging);
      if (v35 == v37)
      {
        v45 = v30;
      }

      else
      {
        if (v35)
        {
          v38 = qword_1ED8B2A98;
          v39 = v30;
          if (v38 != -1)
          {
            swift_once();
          }

          v76 = qword_1ED8B2AA0;
          v40 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_indexPath;
          swift_beginAccess();
          v41 = (*v84)(v33 + v40, 1, v9);
          v42 = 0;
          if (!v41)
          {
            v42 = sub_19A7A9064();
          }

          v37 = v42;
          swift_endAccess();
          v43 = sub_19A75BF80(v37);
          LOBYTE(v37) = *(v33 + v36);
        }

        else
        {
          v46 = v30;
          v43 = 0;
        }

        *(v33 + v36) = v43 & 1;
        sub_19A6EB5C4(v37);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v44 = v30;
    }

    v47 = *(v33 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_stickerView);
    v48 = OBJC_IVAR___STKStickerView_isPaused;
    swift_beginAccess();
    v49 = v47[v48];
    v50 = v84;
    v85 = v33;
    if ((v49 & 1) == 0)
    {
      v51 = *&v47[OBJC_IVAR___STKStickerView_animatedImage];
      if (v51)
      {
        v52 = *&v51[OBJC_IVAR___STKAnimatedImage_images];
        if (v52 >> 62)
        {
          if (sub_19A7ABBE4() >= 2)
          {
            goto LABEL_28;
          }
        }

        else if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2)
        {
LABEL_28:
          v53 = v47;
          v54 = v51;
          sub_19A6CBC28();
          v55 = v73;
          sub_19A7A8ED4();
          v56 = sub_19A7A8EF4();
          (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
          v57 = OBJC_IVAR___STKStickerView_animatedPlaybackStartDate;
          swift_beginAccess();
          sub_19A680E70(v55, &v53[v57], &unk_1EAFCE4E0, qword_19A7BF0B0);
          swift_endAccess();
          sub_19A6CC0CC();

          v50 = v84;
          goto LABEL_32;
        }
      }
    }

    v58 = *&v47[OBJC_IVAR___STKStickerView_displayLink];
    if (v58)
    {
      [v58 setPaused_];
    }

LABEL_32:
    v59 = v87;
    v90(v87, v86, v9);
    (*v78)(v59, 0, 1, v9);
    v60 = *(v82 + 48);
    v61 = v59;
    v62 = v81;
    sub_19A60F0CC(v61, v81, &unk_1EAFCF110, &unk_19A7B6AF0);
    sub_19A60F0CC(v80 + v79, v62 + v60, &unk_1EAFCF110, &unk_19A7B6AF0);
    v63 = v9;
    v64 = *v50;
    if ((*v50)(v62, 1, v63) == 1)
    {
      sub_19A5F2B54(v87, &unk_1EAFCF110, &unk_19A7B6AF0);
      v65 = v64(v62 + v60, 1, v63);
      v9 = v63;
      if (v65 != 1)
      {
        goto LABEL_37;
      }

      sub_19A5F2B54(v62, &unk_1EAFCF110, &unk_19A7B6AF0);
      v24 = v85;
      v15 = v86;
      v23 = v77;
    }

    else
    {
      sub_19A60F0CC(v62, v83, &unk_1EAFCF110, &unk_19A7B6AF0);
      if (v64(v62 + v60, 1, v63) == 1)
      {
        sub_19A5F2B54(v87, &unk_1EAFCF110, &unk_19A7B6AF0);
        (*v89)(v83, v63);
        v9 = v63;
LABEL_37:
        sub_19A5F2B54(v62, &qword_1EAFCD6B0, &qword_19A7BB500);
        v24 = v85;
        v15 = v86;
        v23 = v77;
LABEL_38:
        v66 = *&v24[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor];
        *&v24[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor] = 0;
        v67 = v24;

        sub_19A70FF44();
        v29 = v30;
        goto LABEL_5;
      }

      v68 = v62 + v60;
      v69 = v75;
      (*v74)(v75, v68, v63);
      sub_19A681478(&unk_1EAFCD6B8, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
      LODWORD(v76) = sub_19A7AAFD4();
      v70 = *v89;
      (*v89)(v69, v63);
      sub_19A5F2B54(v87, &unk_1EAFCF110, &unk_19A7B6AF0);
      v70(v83, v63);
      sub_19A5F2B54(v62, &unk_1EAFCF110, &unk_19A7B6AF0);
      v24 = v85;
      v15 = v86;
      v9 = v63;
      v23 = v77;
      if ((v76 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v25 = objc_opt_self();
    v26 = v24;
    v27 = [v25 tertiarySystemFillColor];
    v28 = *&v26[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor];
    *&v26[OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor] = v27;
    v29 = v27;

    sub_19A70FF44();
LABEL_5:

    v30 = v29;
    goto LABEL_6;
  }

LABEL_44:

  return result;
}

uint64_t sub_19A67468C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  if (qword_1EAFCA9A8 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCA9B0);
  v5 = v0;
  v6 = sub_19A7A9364();
  v7 = sub_19A7AB574();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v5 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_instanceID);

    _os_log_impl(&dword_19A5EE000, v6, v7, "dataSourceDidUpdate in collection view %ld", v8, 0xCu);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = objc_opt_self();

  if ([v10 isMainThread])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      sub_19A674998(1);
    }
  }

  else
  {
    v13 = sub_19A7AB394();
    (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
    sub_19A7AB354();

    v14 = sub_19A7AB344();
    v15 = swift_allocObject();
    v16 = MEMORY[0x1E69E85E0];
    v15[2] = v14;
    v15[3] = v16;
    v15[4] = sub_19A681470;
    v15[5] = v9;
    sub_19A6816F0(0, 0, v3, &unk_19A7BB5D0, v15);
  }
}

void sub_19A674940(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_19A674998(1);
  }
}

void sub_19A674998(char a1)
{
  v2 = v1;
  v4 = sub_19A7AA7D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  v11 = sub_19A7AA764();
  MEMORY[0x1EEE9AC00](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v29 - v15;
  if ((*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isSearching) & 1) == 0)
  {
    v30 = v14;
    v31 = v13;
    v17 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_imageGlyphDataSource);
    if ((*(v17 + OBJC_IVAR___STKImageGlyphDataSource_isConfiguring) & 1) != 0 || (v29[1] = v11, v18 = sub_19A652488(), (v18 & 1) == 0))
    {
      v23 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_datasourceIsReadyTimeoutWorkItem;
      if (!*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_datasourceIsReadyTimeoutWorkItem))
      {
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        *(v25 + 24) = a1 & 1;
        aBlock[4] = sub_19A680CA0;
        aBlock[5] = v25;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_19A6815D4;
        aBlock[3] = &block_descriptor_5;
        v30 = _Block_copy(aBlock);
        v32 = MEMORY[0x1E69E7CC0];
        sub_19A681478(&qword_1ED8B20A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCECD0, &unk_19A7B9A50);
        v31 = v5;
        sub_19A612560();
        sub_19A7ABB54();
        sub_19A7AA804();
        swift_allocObject();
        v26 = sub_19A7AA7E4();

        *(v2 + v23) = v26;

        sub_19A5F5028(0, &qword_1ED8B2040, 0x1E69E9610);
        v27 = sub_19A7AB794();
        sub_19A7AA7C4();
        sub_19A7AA814();
        v28 = *(v31 + 8);
        v28(v7, v4);
        sub_19A7AB714();

        v28(v10, v4);
      }
    }

    else
    {
      if (*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_datasourceIsReadyTimeoutWorkItem))
      {

        sub_19A7AA7F4();
      }

      v19 = *(v17 + OBJC_IVAR___STKImageGlyphDataSource_lock);
      MEMORY[0x1EEE9AC00](v18);
      v29[-2] = v17;
      MEMORY[0x1EEE9AC00](v20);
      v29[-2] = sub_19A680CB4;
      v29[-1] = v21;
      os_unfair_lock_lock(v19 + 4);
      sub_19A60EEF8(v22);
      os_unfair_lock_unlock(v19 + 4);
      sub_19A67553C(v16, a1 & 1);
      v30[1](v16, v31);
    }
  }
}

uint64_t sub_19A674F00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v20 - v2;
  if (qword_1EAFCA9A8 != -1)
  {
    swift_once();
  }

  v4 = sub_19A7A9384();
  __swift_project_value_buffer(v4, qword_1EAFCA9B0);
  v5 = v0;
  v6 = sub_19A7A9364();
  v7 = sub_19A7AB574();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v5 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_instanceID);

    _os_log_impl(&dword_19A5EE000, v6, v7, "dataSourceDidUpdate in collection view %ld", v8, 0xCu);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = objc_opt_self();

  if ([v10 isMainThread])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      if ([objc_opt_self() isInternalBuild])
      {
        v13 = sub_19A6DBCD4();
      }

      else
      {
        v13 = 1;
      }

      v12[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_didAcceptRestrictedDistributionTerms] = v13 & 1;
      v18 = *&v12[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView];
      [v18 reloadData];
    }
  }

  else
  {
    v14 = sub_19A7AB394();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    sub_19A7AB354();

    v15 = sub_19A7AB344();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = sub_19A6813A8;
    v16[5] = v9;
    sub_19A6816F0(0, 0, v3, &unk_19A7BB5C8, v16);
  }
}

void sub_19A675208(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([objc_opt_self() isInternalBuild])
    {
      v3 = sub_19A6DBCD4();
    }

    else
    {
      v3 = 1;
    }

    v2[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_didAcceptRestrictedDistributionTerms] = v3 & 1;
    [*&v2[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView] reloadData];
  }
}

uint64_t sub_19A67537C(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(*(result + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_imageGlyphDataSource) + OBJC_IVAR___STKImageGlyphDataSource_lock);
    MEMORY[0x1EEE9AC00](result);
    *(&v17 - 2) = v9;
    MEMORY[0x1EEE9AC00](v10);
    *(&v17 - 2) = sub_19A6814C0;
    *(&v17 - 1) = v11;
    v13 = v12;
    v15 = v14;
    os_unfair_lock_lock(v8 + 4);
    sub_19A60FBD4(v16);
    os_unfair_lock_unlock(v8 + 4);

    sub_19A67553C(v6, a2 & 1);
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

void sub_19A67553C(uint64_t a1, char a2)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  v4 = *(v32 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  if (qword_1EAFCA9A8 != -1)
  {
    swift_once();
  }

  v11 = sub_19A7A9384();
  __swift_project_value_buffer(v11, qword_1EAFCA9B0);
  v12 = v2;
  v13 = sub_19A7A9364();
  v14 = sub_19A7AB574();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(v12 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_instanceID);

    _os_log_impl(&dword_19A5EE000, v13, v14, "updateDataSource in collection view %ld", v15, 0xCu);
    MEMORY[0x19A907A30](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  v31 = swift_allocBox();
  v17 = v16;
  if (*(&v12->isa + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging) & 1) != 0 || *(&v12->isa + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isSearching) == 1 || (*(&v12->isa + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_wasSearching))
  {
    goto LABEL_15;
  }

  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  if (sub_19A778764() || (v18 = sub_19A675A1C(), !v19))
  {
LABEL_15:
    v20 = sub_19A7A9094();
    (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
    if ((a2 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_19A675BBC(v18, v19, v17);

    if ((a2 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(&v12->isa + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasCompletedInitialDataSourceUpdate) == 1)
  {
    sub_19A60F0CC(v17, v10, &unk_1EAFCF110, &unk_19A7B6AF0);
    v21 = sub_19A7A9094();
    v22 = (*(*(v21 - 8) + 48))(v10, 1, v21);
    sub_19A5F2B54(v10, &unk_1EAFCF110, &unk_19A7B6AF0);
    if (v22 == 1)
    {
      if (qword_1ED8B2D18 != -1)
      {
        swift_once();
      }

      sub_19A778764();
    }
  }

LABEL_21:
  v23 = sub_19A66CC24();
  v24 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v25 = v7;
  v26 = v7;
  v27 = v32;
  (*(v4 + 16))(v26, v33, v32);
  v28 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  (*(v4 + 32))(v29 + v28, v25, v27);
  *(v29 + ((v5 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;

  sub_19A7A9584();
}

uint64_t sub_19A675A1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_19A7A9094();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A6768AC(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_19A5F2B54(v2, &unk_1EAFCF110, &unk_19A7B6AF0);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = sub_19A66CC24();
    sub_19A7A9544();

    (*(v4 + 8))(v6, v3);
    return v9;
  }
}

void sub_19A675BBC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60);
  sub_19A7A94B4();
  if (v26)
  {
    v6 = sub_19A7A9464();
    if ((v7 & 1) == 0)
    {
      v15 = v6;
      v16 = sub_19A7A9484();
      v17 = *(v16 + 16);
      if (v17)
      {
        v18 = 0;
        v19 = (v16 + 40);
        while (1)
        {
          v20 = *(v19 - 1) == a1 && *v19 == a2;
          if (v20 || (sub_19A7AC064() & 1) != 0)
          {
            break;
          }

          ++v18;
          v19 += 2;
          if (v17 == v18)
          {
            goto LABEL_20;
          }
        }

        MEMORY[0x19A903470](v18, v15);

        v14 = 0;
        goto LABEL_23;
      }

LABEL_20:

LABEL_22:
      v14 = 1;
      goto LABEL_23;
    }
  }

  v8 = _s10StickerKit10ImageGlyphC05imageD03forACSgSS_tFZ_0(a1, a2);
  if (!v8)
  {
    goto LABEL_22;
  }

  if (*&v8[OBJC_IVAR___STKImageGlyph_stickerSourceType] != 2)
  {

    goto LABEL_22;
  }

  v24 = v8;
  v25 = a3;
  v9 = sub_19A7A9494();
  v10 = v9;
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v9 + 40;
    while (1)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
        return;
      }

      sub_19A639920();

      if (sub_19A7ABB14())
      {
        break;
      }

      ++v12;
      v13 += 16;
      if (v11 == v12)
      {
        goto LABEL_11;
      }
    }

    sub_19A7A94B4();

    a3 = v25;
    v22 = sub_19A7A9464();
    if ((v23 & 1) == 0)
    {
      MEMORY[0x19A903470](0, v22);

      v14 = 0;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_11:

  v14 = 1;
  a3 = v25;
LABEL_23:
  v21 = sub_19A7A9094();
  (*(*(v21 - 8) + 56))(a3, v14, 1, v21);
}

void sub_19A675E9C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v76 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD6B0, &qword_19A7BB500);
  MEMORY[0x1EEE9AC00](v79);
  v4 = &v72 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v81 = &v72 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v82 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - v18;
  v20 = sub_19A7A9094();
  v83 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v77 = &v72 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v72 - v26;
  v28 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v80 = v22;
    v31 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView;
    [*(Strong + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView) layoutIfNeeded];
    v32 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasCompletedInitialDataSourceUpdate;
    v33 = v30[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasCompletedInitialDataSourceUpdate];
    v75 = v31;
    if (v33)
    {
      if (qword_1ED8B2D18 != -1)
      {
        swift_once();
      }

      if (sub_19A778764())
      {
        sub_19A671E28();
      }
    }

    else
    {
      v30[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasCompletedInitialDataSourceUpdate] = 1;
      if (qword_1ED8B2D18 != -1)
      {
        swift_once();
      }

      if (sub_19A778764())
      {
        if ((sub_19A671E28() & 1) == 0)
        {
          v30[v32] = 0;
        }
      }

      else
      {
        v34 = sub_19A77A488();
        if (v35)
        {
          sub_19A675BBC(v34, v35, v19);

          v36 = v83;
          if ((*(v83 + 48))(v19, 1, v20) == 1)
          {
            sub_19A5F2B54(v19, &unk_1EAFCF110, &unk_19A7B6AF0);
          }

          else
          {
            v37 = *(v36 + 32);
            v74 = (v36 + 32);
            v73 = v37;
            v37(v27, v19, v20);
            v38 = v77;
            MEMORY[0x19A903470](0, 0);
            sub_19A681478(&unk_1EAFCD6B8, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
            LODWORD(v76) = sub_19A7AAFD4();
            v39 = *(v36 + 8);
            v39(v38, v20);
            if (v76)
            {
              v39(v27, v20);
            }

            else
            {
              v73(v16, v27, v20);
              (*(v83 + 56))(v16, 0, 1, v20);
              swift_beginAccess();
              sub_19A680E70(v16, v28, &unk_1EAFCF110, &unk_19A7B6AF0);
            }
          }
        }
      }
    }

    swift_beginAccess();
    sub_19A60F0CC(v28, v13, &unk_1EAFCF110, &unk_19A7B6AF0);
    v40 = v83;
    v41 = *(v83 + 48);
    if (v41(v13, 1, v20) == 1)
    {
      sub_19A5F2B54(v13, &unk_1EAFCF110, &unk_19A7B6AF0);
LABEL_38:
      sub_19A673D24();

      return;
    }

    v42 = v80;
    v74 = *(v40 + 32);
    v74(v80, v13, v20);
    v43 = v82;
    (*(v40 + 16))(v82, v42, v20);
    (*(v40 + 56))(v43, 0, 1, v20);
    v44 = v30;
    v45 = v20;
    v46 = v81;
    v76 = v44;
    sub_19A6768AC(v81);
    v47 = *(v79 + 48);
    sub_19A60F0CC(v43, v4, &unk_1EAFCF110, &unk_19A7B6AF0);
    sub_19A60F0CC(v46, &v4[v47], &unk_1EAFCF110, &unk_19A7B6AF0);
    if (v41(v4, 1, v45) == 1)
    {
      sub_19A5F2B54(v46, &unk_1EAFCF110, &unk_19A7B6AF0);
      sub_19A5F2B54(v43, &unk_1EAFCF110, &unk_19A7B6AF0);
      v48 = v41(&v4[v47], 1, v45);
      v49 = v83;
      v50 = v45;
      v30 = v76;
      if (v48 == 1)
      {
        sub_19A5F2B54(v4, &unk_1EAFCF110, &unk_19A7B6AF0);
        (*(v49 + 8))(v80, v50);
        goto LABEL_38;
      }
    }

    else
    {
      v51 = v78;
      sub_19A60F0CC(v4, v78, &unk_1EAFCF110, &unk_19A7B6AF0);
      v50 = v45;
      if (v41(&v4[v47], 1, v45) != 1)
      {
        v69 = v77;
        v74(v77, &v4[v47], v50);
        sub_19A681478(&unk_1EAFCD6B8, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
        v70 = sub_19A7AAFD4();
        v49 = v83;
        v71 = *(v83 + 8);
        v71(v69, v50);
        sub_19A5F2B54(v81, &unk_1EAFCF110, &unk_19A7B6AF0);
        sub_19A5F2B54(v82, &unk_1EAFCF110, &unk_19A7B6AF0);
        v71(v51, v50);
        sub_19A5F2B54(v4, &unk_1EAFCF110, &unk_19A7B6AF0);
        v30 = v76;
        if (v70)
        {
          v71(v80, v50);
          goto LABEL_38;
        }

LABEL_26:
        v52 = v75;
        v53 = [*&v30[v75] collectionViewLayout];
        type metadata accessor for ImageGlyphCollectionViewLayout();
        v54 = swift_dynamicCastClass();
        if (!v54)
        {
LABEL_37:

          (*(v49 + 8))(v80, v50);
          goto LABEL_38;
        }

        v82 = v54;
        v55 = *&v30[v52];
        v56 = v80;
        v57 = sub_19A7A9014();
        v58 = [v55 layoutAttributesForItemAtIndexPath_];

        if (!v58)
        {
          (*(v49 + 8))(v56, v50);

          goto LABEL_38;
        }

        v59 = v58;
        [v58 frame];
        [v82 targetContentOffsetForProposedContentOffset_];
        v61 = v60;
        v63 = v62;
        v64 = [*&v30[v52] collectionViewLayout];
        v65 = swift_dynamicCastClass();
        if (v65)
        {
          v66 = [v65 configuration];
          v67 = [v66 scrollDirection];

          if (!v67)
          {
            v61 = 0.0;
            v68 = v63;
LABEL_36:
            [*&v30[v52] setContentOffset:0 animated:{v61, v68}];

            goto LABEL_37;
          }
        }

        else
        {
        }

        v68 = 0.0;
        goto LABEL_36;
      }

      sub_19A5F2B54(v81, &unk_1EAFCF110, &unk_19A7B6AF0);
      sub_19A5F2B54(v82, &unk_1EAFCF110, &unk_19A7B6AF0);
      v49 = v83;
      (*(v83 + 8))(v51, v45);
      v30 = v76;
    }

    sub_19A5F2B54(v4, &qword_1EAFCD6B0, &qword_19A7BB500);
    goto LABEL_26;
  }
}

unint64_t sub_19A6768AC@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView) collectionViewLayout];
  type metadata accessor for ImageGlyphCollectionViewLayout();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = sub_19A725FAC();
    v7 = [v5 collectionView];
    if (v7)
    {
      v8 = v7;
      [v7 contentOffset];
      v10 = v9;
      v12 = v11;
    }

    else
    {
      v10 = 0.0;
      v12 = 0.0;
    }

    result = sub_19A6D7704(v10, v12);
    v15 = result;
    v16 = *&v6[OBJC_IVAR____TtC10StickerKit22ImageGlyphLayoutSolver_sections];
    if ((v16 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = *(v16 + 8 * result + 32);
LABEL_10:
        v18 = sub_19A6277E4(v10, v12);
        v20 = v19;

        if (v20)
        {
          v21 = 0;
        }

        else
        {
          v21 = v18;
        }

        MEMORY[0x19A903470](v21, v15);

        v13 = 0;
        goto LABEL_14;
      }

      __break(1u);
      return result;
    }

    v17 = MEMORY[0x19A906130](v15, v16);

    goto LABEL_10;
  }

  v13 = 1;
  v6 = v3;
LABEL_14:

  v22 = sub_19A7A9094();
  v23 = *(*(v22 - 8) + 56);

  return v23(a1, v13, 1, v22);
}

uint64_t sub_19A676A88(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 14)
    {

      return sub_19A676D38();
    }

    else
    {
      if (a1 != 13)
      {
        v2 = [objc_opt_self() categoryIndexForCategoryType_];
        v3 = sub_19A677108();
        result = sub_19A65883C(3);
        if (v4)
        {
          v5 = 0;
        }

        else
        {
          v5 = result;
        }

        v6 = __OFSUB__(v3, v5);
        v7 = v3 - v5;
        if (v6)
        {
          __break(1u);
        }

        else
        {
          result = v2 + v7;
          if (!__OFADD__(v2, v7))
          {
            return result;
          }
        }

        __break(1u);
        return result;
      }

      return sub_19A676B84();
    }
  }

  else
  {

    return sub_19A676F20();
  }
}

uint64_t sub_19A676B84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v12 - v4;
  v6 = sub_19A65883C(2);
  if (v7)
  {
    v6 = -1;
  }

  sub_19A75C0D0(v6, v5);
  sub_19A60F0CC(v5, v2, &unk_1EAFCF110, &unk_19A7B6AF0);
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
    sub_19A5F2B54(v2, &unk_1EAFCF110, &unk_19A7B6AF0);
    return 0;
  }

  else
  {
    v11 = sub_19A7A9064();
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
    (*(v9 + 8))(v2, v8);
    return v11;
  }
}

uint64_t sub_19A676D38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = sub_19A65883C(1);
  if (v7)
  {
    v6 = -1;
  }

  sub_19A75C0D0(v6, v5);
  sub_19A60F0CC(v5, v2, &unk_1EAFCF110, &unk_19A7B6AF0);
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_19A5F2B54(v2, &unk_1EAFCF110, &unk_19A7B6AF0);
    v10 = sub_19A659378(3);
    v12 = v11;
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
    if (!v10)
    {
      v14 = -2;
      return v14 & ~(v14 >> 63);
    }

    result = swift_unknownObjectRelease();
    v14 = v12 - 2;
    if (!__OFSUB__(v12, 2))
    {
      return v14 & ~(v14 >> 63);
    }

    __break(1u);
  }

  else
  {
    v15 = sub_19A7A9064();
    (*(v9 + 8))(v2, v8);
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
    return v15;
  }

  return result;
}

uint64_t sub_19A676F20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - v4;
  v6 = sub_19A65883C(5);
  if (v7)
  {
    v6 = -1;
  }

  sub_19A75C0D0(v6, v5);
  sub_19A60F0CC(v5, v2, &unk_1EAFCF110, &unk_19A7B6AF0);
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_19A5F2B54(v2, &unk_1EAFCF110, &unk_19A7B6AF0);
    v10 = sub_19A659378(3);
    v12 = v11;
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
    if (!v10)
    {
      v14 = -1;
      return v14 & ~(v14 >> 63);
    }

    result = swift_unknownObjectRelease();
    v14 = v12 - 1;
    if (!__OFSUB__(v12, 1))
    {
      return v14 & ~(v14 >> 63);
    }

    __break(1u);
  }

  else
  {
    v15 = sub_19A7A9064();
    (*(v9 + 8))(v2, v8);
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
    return v15;
  }

  return result;
}

uint64_t sub_19A677108()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - v4;
  v6 = sub_19A65883C(3);
  if (v7)
  {
    v6 = 0;
  }

  sub_19A75C0D0(v6, v5);
  sub_19A60F0CC(v5, v2, &unk_1EAFCF110, &unk_19A7B6AF0);
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v2, 1, v8) == 1)
  {
    sub_19A5F2B54(v2, &unk_1EAFCF110, &unk_19A7B6AF0);
    v10 = sub_19A659378(3);
    v12 = v11;
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
    if (v10)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v12 = sub_19A7A9064();
    (*(v9 + 8))(v2, v8);
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  return v12;
}

void sub_19A6772DC(void *a1)
{
  v15 = [*(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView) collectionViewLayout];
  type metadata accessor for ImageGlyphCollectionViewLayout();
  if (swift_dynamicCastClass())
  {
    [a1 contentOffset];
    v4 = v3;
    v6 = v5;
    v7 = sub_19A725FAC();
    v8 = COERCE_DOUBLE(sub_19A6D75E4(v4, v6));
    v10 = v9;
    v12 = v11;

    if ((v12 & 1) != 0 || (v13 = [objc_opt_self() itk:v8 valueWithPoint:v10]) == 0)
    {
      [a1 setPagingEnabled_];
      [a1 _setPagingOrigin_];
    }

    else
    {
      v14 = v13;
      [a1 setPagingEnabled_];
      [v14 CGPointValue];
      [a1 _setPagingOrigin_];
    }
  }
}

void *sub_19A677454()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = sub_19A7A9094();
  v40 = *(v7 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  [v10 contentOffset];
  [v10 bounds];
  CGPointMake();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v43 = v10;
  v19 = [v10 visibleCells];
  sub_19A5F5028(0, &qword_1EAFCA4B8, 0x1E69DC7F8);
  v20 = sub_19A7AB254();

  if (v20 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v22 = 0;
    v46 = v20 & 0xFFFFFFFFFFFFFF8;
    v47 = v20 & 0xC000000000000001;
    v23 = (v40 + 56);
    v41 = (v40 + 32);
    v42 = (v40 + 48);
    v45 = MEMORY[0x1E69E7CC0];
    v39 = v3;
    while (1)
    {
      if (v47)
      {
        v24 = MEMORY[0x19A906130](v22, v20);
      }

      else
      {
        if (v22 >= *(v46 + 16))
        {
          goto LABEL_23;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      [v24 frame];
      v51.origin.x = v12;
      v51.origin.y = v14;
      v51.size.width = v16;
      v51.size.height = v18;
      v50 = CGRectIntersection(v49, v51);
      if (CGRectIsNull(v50))
      {

        (*v23)(v6, 1, 1, v7);
      }

      else
      {
        v27 = i;
        v28 = [v43 indexPathForCell_];
        if (v28)
        {
          v29 = v28;
          sub_19A7A9024();

          v30 = 0;
        }

        else
        {
          v30 = 1;
        }

        (*v23)(v3, v30, 1, v7);
        sub_19A680C30(v3, v6);
        i = v27;
        if ((*v42)(v6, 1, v7) != 1)
        {
          v31 = *v41;
          (*v41)(v44, v6, v7);
          v32 = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_19A76C2A0(0, v32[2] + 1, 1, v32);
          }

          v34 = v32[2];
          v33 = v32[3];
          v45 = v32;
          if (v34 >= v33 >> 1)
          {
            v45 = sub_19A76C2A0((v33 > 1), v34 + 1, 1, v45);
          }

          v35 = v44;
          v36 = v45;
          v45[2] = v34 + 1;
          v31(&v36[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34], v35, v7);
          v3 = v39;
          i = v27;
          goto LABEL_6;
        }
      }

      sub_19A5F2B54(v6, &unk_1EAFCF110, &unk_19A7B6AF0);
LABEL_6:
      ++v22;
      if (v26 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_26:

  v48 = v45;

  sub_19A66C58C(&v48, sub_19A67E488, sub_19A67D79C);

  return v48;
}

id sub_19A677930(uint64_t a1)
{
  if (sub_19A659378(3))
  {
    v3 = v2;
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0;
  }

  result = sub_19A65883C(3);
  v6 = a1 - v3;
  if (__OFSUB__(a1, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = result;
  }

  v8 = __OFADD__(v6, v7);
  v9 = v7 + v6;
  if (v8)
  {
    goto LABEL_13;
  }

  v10 = v9 & ~(v9 >> 63);
  v11 = objc_opt_self();

  return [v11 categoryTypeForCategoryIndex_];
}

void sub_19A6779D8(id a1)
{
  v2 = v1;
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultCenter];
  if (qword_1EAFCABA8 != -1)
  {
    swift_once();
  }

  [v8 postNotificationName:qword_1EAFDD570 object:0 userInfo:0];

  v9 = sub_19A677EBC();
  v10 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_category;
  if ([*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_category) categoryType] == a1)
  {
    if ([*(v2 + v10) categoryType] || objc_msgSend(*(v2 + v10), sel_lastVisibleFirstEmojiIndex) != 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isDraggingInputView);
    }

    [*(v2 + v10) setLastVisibleFirstEmojiIndex_];
    v16 = *(v2 + v10);
LABEL_18:
    v20 = [objc_opt_self() categoryIndexForCategoryType_];
    v21 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
    MEMORY[0x19A903470](v11, v20);
    v22 = sub_19A7A9014();
    (*(v5 + 8))(v7, v4);
    v23 = [v21 layoutAttributesForItemAtIndexPath_];

    if (!v23)
    {
LABEL_25:

      return;
    }

    [v23 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = [v21 collectionViewLayout];
    type metadata accessor for ImageGlyphCollectionViewLayout();
    v33 = swift_dynamicCastClass();
    if (v33)
    {
      v34 = [v33 configuration];
      v35 = [v34 scrollDirection];

      if (!v35)
      {
        v43.origin.x = v25;
        v43.origin.y = v27;
        v43.size.width = v29;
        v43.size.height = v31;
        MinY = CGRectGetMinY(v43);
        [v21 contentOffset];
        MinX = v37;
LABEL_24:
        [v21 bounds];
        v41 = v40;
        [v21 bounds];
        [v21 scrollRectToVisible:0 animated:{MinX, MinY, v41}];
        [*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager) setLastViewedCategory_];
        goto LABEL_25;
      }
    }

    else
    {
    }

    v44.origin.x = v25;
    v44.origin.y = v27;
    v44.size.width = v29;
    v44.size.height = v31;
    MinX = CGRectGetMinX(v44);
    [v21 contentOffset];
    MinY = v39;
    goto LABEL_24;
  }

  v12 = [objc_opt_self() categoryForType_];
  if (v12)
  {
    v13 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager);
    v14 = v12;
    [v14 setLastVisibleFirstEmojiIndex_];

    if (!a1 && ![v14 lastVisibleFirstEmojiIndex])
    {
      [v14 setLastVisibleFirstEmojiIndex_];
    }

    v15 = *(v2 + v10);
    *(v2 + v10) = v14;

    v16 = v14;
    v17 = sub_19A676A88([v16 categoryType]);
    v18 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
    if (v17 >= [v18 numberOfSections])
    {
LABEL_17:
      v11 = [v16 lastVisibleFirstEmojiIndex];
      goto LABEL_18;
    }

    v19 = [v18 numberOfItemsInSection_];
    v11 = v19 - 1;
    if (!__OFSUB__(v19, 1))
    {
      if (v11 < [v16 lastVisibleFirstEmojiIndex])
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

    __break(1u);
  }

  __break(1u);
}

double sub_19A677EBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v31 - v5;
  v7 = sub_19A7A9094();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v31 - v12;
  v14 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_selectedIndexPath;
  swift_beginAccess();
  sub_19A60F0CC(v0 + v14, v6, &unk_1EAFCF110, &unk_19A7B6AF0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_19A5F2B54(v6, &unk_1EAFCF110, &unk_19A7B6AF0);
    v15 = *(v0 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
    v16 = [v15 indexPathsForSelectedItems];
    if (v16)
    {
      v18 = v16;
      v19 = sub_19A7AB254();

      v20 = *(v19 + 16);
      if (v20)
      {
        v23 = *(v8 + 16);
        v22 = v8 + 16;
        v21 = v23;
        v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
        v31[1] = v19;
        v25 = v19 + v24;
        v26 = *(v22 + 56);
        do
        {
          v21(v10, v25, v7);
          v27 = sub_19A7A9014();
          [v15 deselectItemAtIndexPath:v27 animated:0];

          (*(v22 - 8))(v10, v7);
          v25 += v26;
          --v20;
        }

        while (v20);
      }
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v28 = *(v0 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
    v29 = v0;
    v30 = sub_19A7A9014();
    [v28 deselectItemAtIndexPath:v30 animated:0];

    (*(v8 + 8))(v13, v7);
    (*(v8 + 56))(v3, 1, 1, v7);
    swift_beginAccess();
    sub_19A680E70(v3, v29 + v14, &unk_1EAFCF110, &unk_19A7B6AF0);
    swift_endAccess();
  }

  return result;
}

void sub_19A67827C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_19A7A9064();
  if (*(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isSearching) == 1)
  {
    v5 = v4;
    if (sub_19A659378(3))
    {
      v7 = v6;
      swift_unknownObjectRelease();
      v4 = v5;
      if (v5 == v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v4 = v5;
      if (!v5)
      {
        goto LABEL_8;
      }
    }
  }

  if (sub_19A75BAE8(v4))
  {
    v8 = 8;
    goto LABEL_11;
  }

LABEL_8:
  v9 = sub_19A7A9064();
  if (sub_19A6701A8(v9))
  {
    v8 = 8;
  }

  else
  {
    v8 = 32;
  }

LABEL_11:
  v10 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  v11 = [v10 collectionViewLayout];
  type metadata accessor for ImageGlyphCollectionViewLayout();
  v12 = swift_dynamicCastClass();
  if (v12)
  {
    v13 = [v12 configuration];
    v14 = [v13 scrollDirection];

    if (!v14)
    {
      v8 = 1;
    }
  }

  else
  {
  }

  [v10 scrollRectToVisible:0 animated:{sub_19A678414(a1, v8)}];
  *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_currentSection) = sub_19A7A9064();

  sub_19A678758(a1);
}

double sub_19A678414(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  v5 = sub_19A7A9014();
  v6 = [v4 layoutAttributesForItemAtIndexPath_];

  if (!v6)
  {
LABEL_8:
    v25 = sub_19A7A9064();
    v26 = [v4 collectionViewLayout];
    type metadata accessor for ImageGlyphCollectionViewLayout();
    if (swift_dynamicCastClass())
    {
      v27 = sub_19A725FAC();
      v28 = sub_19A6D7E98(v25);
      if (v28)
      {
        v29 = v28;
        v24 = sub_19A627590();

        return v24;
      }
    }

    return 0.0;
  }

  [v6 frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [v4 collectionViewLayout];
  type metadata accessor for ImageGlyphCollectionViewLayout();
  if (!swift_dynamicCastClass() || (v16 = sub_19A725FAC(), v17 = sub_19A7A9064(), v18 = sub_19A6D7E98(v17), v16, !v18))
  {

    goto LABEL_8;
  }

  v19 = [v4 collectionViewLayout];
  v20 = swift_dynamicCastClass();
  if (v20)
  {
    v21 = [v20 configuration];
    v22 = [v21 scrollDirection];

    if (!v22)
    {
      v37.origin.x = v8;
      v37.origin.y = v10;
      v37.size.width = v12;
      v37.size.height = v14;
      CGRectGetMinY(v37);
      [v4 contentOffset];
      v24 = v23;
      [v4 bounds];
      [v4 bounds];

      return v24;
    }
  }

  else
  {
  }

  v30 = v8;
  v31 = v10;
  v32 = v12;
  v33 = v14;
  if (a2 == 32)
  {
    MaxX = CGRectGetMaxX(*&v30);
    [v4 bounds];
    v24 = MaxX - v35 + *&v18[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 80];
  }

  else
  {
    v24 = CGRectGetMinX(*&v30) - *&v18[OBJC_IVAR____TtC10StickerKit23ImageGlyphLayoutSection_configuration + 80];
  }

  [v4 contentOffset];
  [v4 bounds];
  [v4 bounds];

  return v24;
}

void sub_19A678758(uint64_t a1)
{
  v2 = v1;
  v3 = sub_19A7A9064();
  v4 = v3;
  if ((*(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isSearching) & 1) != 0 || !sub_19A75BDF8(v3))
  {
    if (sub_19A670300(v4))
    {
      v5 = 14;
    }

    else if (sub_19A6701A8(v4))
    {
      v5 = 0;
    }

    else
    {
      v5 = sub_19A677930(v4);
    }
  }

  else
  {
    v5 = 13;
  }

  v6 = objc_opt_self();
  v7 = [v6 categoryForType_];
  if (v7)
  {
    v8 = v7;
    [v7 setLastVisibleFirstEmojiIndex_];
  }

  else
  {
    v8 = [v6 categoryForType_];
    if (!v8)
    {
      __break(1u);
      return;
    }
  }

  v9 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_category);
  *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_category) = v8;
  v10 = v8;

  [*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager) setLastViewedCategory_];
}

uint64_t sub_19A6789B8(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = sub_19A7AB394();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    sub_19A7AB354();
    v10 = a1;
    swift_unknownObjectRetain();
    v11 = sub_19A7AB344();
    v12 = swift_allocObject();
    v13 = MEMORY[0x1E69E85E0];
    *(v12 + 16) = v11;
    *(v12 + 24) = v13;
    *(v12 + 32) = v10;
    *(v12 + 40) = v8;
    *(v12 + 48) = a2 & 1;
    sub_19A6816F0(0, 0, v6, &unk_19A7BB4E8, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_19A678B18(double a1, double a2)
{
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a2;
  v9 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  v10 = [v9 collectionViewLayout];
  v11 = [v10 layoutAttributesForElementsInRect_];

  if (!v11)
  {
    return;
  }

  sub_19A5F5028(0, &qword_1EAFCA440, 0x1E69DC858);
  v12 = sub_19A7AB254();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_18:

    return;
  }

  v13 = sub_19A7ABBE4();
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (v13 < 1)
  {
    __break(1u);
  }

  else
  {
    v29 = v6;
    v14 = 0;
    v15 = 0;
    v16 = 1.79769313e308;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x19A906130](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      [v17 frame];
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;
      v23 = vabdd_f64(CGRectGetMidX(v31), a1);
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      MidY = CGRectGetMidY(v32);
      if (v23 > 38.0 || (v25 = vabdd_f64(MidY, v30), v25 > 38.0) || (v26 = v23 + v25, v26 >= v16))
      {
      }

      else
      {

        v16 = v26;
        v14 = v18;
      }

      ++v15;
    }

    while (v13 != v15);

    if (v14)
    {
      v27 = [v14 indexPath];
      sub_19A7A9024();

      v28 = sub_19A7A9014();
      (*(v29 + 8))(v8, v5);
      [v9 cellForItemAtIndexPath_];
    }
  }
}

id sub_19A678E34(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v34.receiver = v4;
  v34.super_class = swift_getObjectType();
  v8 = objc_msgSendSuper2(&v34, sel_hitTest_withEvent_, a1, a3, a4);
  if (v8)
  {
    sub_19A5F5028(0, &qword_1EAFCA430, 0x1E69DD250);
    v9 = v8;
    v10 = v4;
    v11 = sub_19A7AB924();

    if (v11 & 1) != 0 || (v12 = *&v10[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView], v13 = v9, v14 = v12, v15 = sub_19A7AB924(), v14, v13, (v15))
    {
      [v10 convertPoint:*&v10[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView] toCoordinateSpace:{a3, a4}];
      sub_19A678B18(v16, v17);
      if (v18)
      {
        v19 = v18;
        [v10 convertPoint:v18 toCoordinateSpace:{a3, a4}];
        v21 = v20;
        v23 = v22;
        v24 = v19;
        [v24 bounds];
        v26 = v25 + -0.01;
        if (v25 + -0.01 >= v21)
        {
          v26 = v21;
        }

        if (v26 > 0.0)
        {
          v27 = v26;
        }

        else
        {
          v27 = 0.0;
        }

        [v24 bounds];
        v29 = v28;

        v30 = v29 + -0.01;
        if (v29 + -0.01 >= v23)
        {
          v30 = v23;
        }

        if (v30 > 0.0)
        {
          v31 = v30;
        }

        else
        {
          v31 = 0.0;
        }

        v32 = [v24 hitTest:a1 withEvent:{v27, v31}];

        if (v32)
        {

          return v32;
        }
      }
    }
  }

  return v8;
}

uint64_t sub_19A6790B4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_selectedIndexPath;
  swift_beginAccess();
  sub_19A60F0CC(v0 + v8, v3, &unk_1EAFCF110, &unk_19A7B6AF0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_19A5F2B54(v3, &unk_1EAFCF110, &unk_19A7B6AF0);
LABEL_7:
    v12 = 0;
    return v12 & 1;
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = *(v0 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  v10 = sub_19A7A9014();
  v11 = [v9 cellForItemAtIndexPath_];

  (*(v5 + 8))(v7, v4);
  if (!v11)
  {
    goto LABEL_7;
  }

  type metadata accessor for EmojiCollectionViewCell(0);
  if (!swift_dynamicCastClass())
  {

    goto LABEL_7;
  }

  v12 = sub_19A63F5C4();

  return v12 & 1;
}

uint64_t sub_19A679300(void *a1)
{
  v3 = [a1 keyCode];
  if (!v3)
  {
    return 65276;
  }

  v4 = v3;
  v5 = [v1 effectiveUserInterfaceLayoutDirection];
  v6 = [a1 modifierFlags];
  v7 = [a1 modifierFlags];
  v8 = [a1 modifierFlags];
  if (v4 <= 78)
  {
    if (v4 == 40)
    {
      if ((*&v8 & 0x80000) != 0)
      {
        return 4294934528;
      }

      else
      {
        return 16385;
      }
    }

    else if (v4 == 43)
    {
      return (v7 >> 9) & 0x100 ^ 0x103;
    }

    else
    {
      if ((*&v8 & 0x80000) != 0)
      {
        v10 = -32768;
      }

      else
      {
        v10 = 0x4000;
      }

      if (v4 == 44)
      {
        return v10;
      }

      else
      {
        return 65276;
      }
    }
  }

  else if (v4 > 80)
  {
    if (v4 == 81)
    {
      if ((*&v6 & 0x100000) != 0)
      {
        return 258;
      }

      else
      {
        return 257;
      }
    }

    else
    {
      if ((*&v6 & 0x100000) != 0)
      {
        v11 = 2;
      }

      else
      {
        v11 = 1;
      }

      if (v4 == 82)
      {
        return v11;
      }

      else
      {
        return 65276;
      }
    }
  }

  else if (v4 == 79)
  {
    return (v5 != 1) << 8;
  }

  else
  {
    return (v5 == 1) << 8;
  }
}

BOOL sub_19A679458(uint64_t a1, int a2)
{
  LODWORD(v66) = a2;
  v71 = a1;
  v3 = sub_19A7A9094();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v64 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v64 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v64 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v73 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v72 = &v64 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v64 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v64 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v64 - v27;
  v69 = *(v4 + 56);
  v70 = v4 + 56;
  v69(&v64 - v27, 1, 1, v3, v26);
  v29 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_selectedIndexPath;
  swift_beginAccess();
  sub_19A60F0CC(v2 + v29, v24, &unk_1EAFCF110, &unk_19A7B6AF0);
  v30 = (v4 + 48);
  v31 = *(v4 + 48);
  v32 = v31(v24, 1, v3);
  v74 = v31;
  if (v32 == 1)
  {
    sub_19A5F2B54(v24, &unk_1EAFCF110, &unk_19A7B6AF0);
    v33 = [*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView) indexPathsForVisibleItems];
    v34 = sub_19A7AB254();

    v75[0] = v34;

    sub_19A66C58C(v75, sub_19A67DA60, sub_19A67D4D8);
    v35 = v2;

    if (*(v75[0] + 16))
    {
      v36 = v65;
      (*(v4 + 16))(v65, v75[0] + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

      sub_19A5F2B54(v28, &unk_1EAFCF110, &unk_19A7B6AF0);
      (*(v4 + 32))(v28, v36, v3);
      (v69)(v28, 0, 1, v3);
    }

    else
    {
    }

    v38 = 0;
    LODWORD(v39) = 0;
    v71 = 2;
  }

  else
  {
    v65 = v28;
    v37 = *(v4 + 32);
    v37(v14, v24, v3);
    sub_19A679FA4(v71, v66 & 1, v21);
    v35 = v2;
    if (v31(v21, 1, v3) == 1)
    {
      (*(v4 + 8))(v14, v3);
      sub_19A5F2B54(v21, &unk_1EAFCF110, &unk_19A7B6AF0);
      v38 = 0;
      LODWORD(v39) = 0;
      v71 = 2;
      v28 = v65;
    }

    else
    {
      v40 = v21;
      v41 = v37;
      v37(v67, v40, v3);
      v42 = [*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView) isScrollAnimating];
      v66 = v4;
      (*(v4 + 8))(v14, v3);
      if (v71 == 2)
      {
        v71 = v71;
        v38 = 1;
        v28 = v65;
      }

      else
      {
        v28 = v65;
        if (v71 == 3)
        {
          v38 = 0;
          v43 = 1;
        }

        else
        {
          v38 = v42 ^ 1;
          v43 = 2;
        }

        v71 = v43;
      }

      sub_19A5F2B54(v28, &unk_1EAFCF110, &unk_19A7B6AF0);
      v41(v28, v67, v3);
      LODWORD(v39) = 1;
      (v69)(v28, 0, 1, v3);
      v4 = v66;
    }
  }

  if (qword_1EAFCA9A8 != -1)
  {
    swift_once();
  }

  v44 = sub_19A7A9384();
  __swift_project_value_buffer(v44, qword_1EAFCA9B0);
  v45 = sub_19A7A9364();
  v46 = sub_19A7AB574();
  if (os_log_type_enabled(v45, v46))
  {
    LODWORD(v67) = v38;
    v70 = v35;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v75[0] = v48;
    *v47 = 136315138;
    swift_beginAccess();
    v69 = v30;
    if (v74(v28, 1, v3))
    {
      v49 = 0xE300000000000000;
      v50 = 7104878;
    }

    else
    {
      v52 = *(v4 + 16);
      LODWORD(v66) = v39;
      v39 = v64;
      v53 = v52(v64, v28, v3);
      v54 = MEMORY[0x19A903440](v53);
      v49 = v55;
      v56 = v39;
      LOBYTE(v39) = v66;
      (*(v4 + 8))(v56, v3);
      v50 = v54;
    }

    v57 = sub_19A62540C(v50, v49, v75);

    *(v47 + 4) = v57;
    _os_log_impl(&dword_19A5EE000, v45, v46, "newSelectedIndexPath: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    MEMORY[0x19A907A30](v48, -1, -1);
    MEMORY[0x19A907A30](v47, -1, -1);

    v51 = v72;
    v38 = v67;
  }

  else
  {

    v51 = v72;
  }

  swift_beginAccess();
  sub_19A60F0CC(v28, v51, &unk_1EAFCF110, &unk_19A7B6AF0);
  v58 = v74;
  if (v74(v51, 1, v3) == 1)
  {
    sub_19A5F2B54(v51, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  else
  {
    v59 = v39;
    v60 = v68;
    (*(v4 + 32))(v68, v51, v3);
    sub_19A67A318(v60, v59, v38, v71);
    (*(v4 + 8))(v60, v3);
  }

  v61 = v73;
  sub_19A60F0CC(v28, v73, &unk_1EAFCF110, &unk_19A7B6AF0);
  v62 = v58(v61, 1, v3) != 1;
  sub_19A5F2B54(v61, &unk_1EAFCF110, &unk_19A7B6AF0);
  sub_19A5F2B54(v28, &unk_1EAFCF110, &unk_19A7B6AF0);
  return v62;
}

uint64_t sub_19A679D1C(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_19A7A9094();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_selectedIndexPath;
  swift_beginAccess();
  sub_19A60F0CC(v1 + v10, v5, &unk_1EAFCF110, &unk_19A7B6AF0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_19A5F2B54(v5, &unk_1EAFCF110, &unk_19A7B6AF0);
    return 0;
  }

  (*(v7 + 32))(v9, v5, v6);
  v12 = *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  v13 = sub_19A7A9014();
  v14 = [v12 cellForItemAtIndexPath_];

  if (!v14)
  {
    (*(v7 + 8))(v9, v6);
    return 0;
  }

  type metadata accessor for EmojiCollectionViewCell(0);
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    sub_19A67AAEC(v15, 0, a1 & 1);
  }

  else
  {
    type metadata accessor for StickerCollectionViewCell(0);
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
      v17 = 0;
      goto LABEL_10;
    }

    sub_19A67B4FC(v16, a1 & 1);
  }

  v17 = 1;
LABEL_10:

  (*(v7 + 8))(v9, v6);
  return v17;
}

char *sub_19A679FA4@<X0>(unsigned __int8 a2@<W1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - v9;
  v11 = sub_19A7A9094();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v30 = v12 + 56;
  v31 = v13;
  v13(a4, 1, 1, v11);
  v14 = *(v4 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  v15 = [v14 numberOfSections];
  if ((v7 - 1) <= 1)
  {
    sub_19A67A748((a3 & 1) == 0, v7 == 2, v10);
    sub_19A5F2B54(a4, &unk_1EAFCF110, &unk_19A7B6AF0);
    return sub_19A680C30(v10, a4);
  }

  v16 = v15;
  v28 = v4;
  v29 = a4;
  if (a3)
  {
    v17 = 1;
  }

  else
  {
    v17 = -1;
  }

  v18 = sub_19A7A9064();
  result = sub_19A7A9044();
  if (v7 == 3)
  {
    a3 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      __break(1u);
      goto LABEL_44;
    }

    if (a3 < 0)
    {
      v18 = 0;
      v20 = 0;
      goto LABEL_41;
    }

    v18 = (v16 - 1);
    if (__OFSUB__(v16, 1))
    {
      goto LABEL_45;
    }

    if (v18 >= a3)
    {
      if ((*(v28 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isSearching) & 1) == 0 && sub_19A75BDF8(a3))
      {
        v22 = 13;
        goto LABEL_35;
      }

LABEL_30:
      if (sub_19A670300(a3))
      {
        v22 = 14;
      }

      else if (sub_19A6701A8(a3))
      {
        v22 = 0;
      }

      else
      {
        v22 = sub_19A677930(a3);
      }

LABEL_35:
      v24 = [objc_opt_self() categoryForType_];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 lastVisibleFirstEmojiIndex];
        v27 = [v14 numberOfItemsInSection_];

        if (v26 >= v27)
        {
          v20 = 0;
        }

        else
        {
          v20 = v26;
        }
      }

      else
      {
        v20 = 0;
      }

      v18 = a3;
      goto LABEL_41;
    }

    result = [v14 numberOfItemsInSection_];
    v20 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_41;
    }

    __break(1u);
  }

  v20 = &result[v17];
  if (__OFADD__(result, v17))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = [v14 numberOfItemsInSection_];
  if ((v20 & 0x8000000000000000) == 0 && v20 < result)
  {
    goto LABEL_41;
  }

  v21 = v18 + v17;
  if (__OFADD__(v18, v17))
  {
    goto LABEL_46;
  }

  if (!__OFSUB__(v16, 1))
  {
    if (v21 >= (v16 - 1))
    {
      v21 = (v16 - 1);
    }

    v18 = v21 & ~(v21 >> 63);
    if (a3)
    {
      v20 = 0;
LABEL_41:
      MEMORY[0x19A903470](v20, v18);
      a4 = v29;
      sub_19A5F2B54(v29, &unk_1EAFCF110, &unk_19A7B6AF0);
      v31(v10, 0, 1, v11);
      return sub_19A680C30(v10, a4);
    }

    v23 = [v14 numberOfItemsInSection_];
    v20 = v23 - 1;
    if (!__OFSUB__(v23, 1))
    {
      goto LABEL_41;
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_47:
  __break(1u);
  return result;
}

void sub_19A67A318(uint64_t a1, char a2, int a3, uint64_t a4)
{
  v5 = v4;
  v46 = a4;
  v45 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v44 - v9;
  v11 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_selectedIndexPath;
  swift_beginAccess();
  v12 = sub_19A7A9094();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v4 + v11, 1, v12);
  v15 = 0;
  if (!v14)
  {
    v15 = sub_19A7A9064();
  }

  swift_endAccess();
  v16 = sub_19A7A9064();
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v15 == v16;
  }

  if (!v17)
  {
    v18 = sub_19A7A9064();
    v19 = v18;
    if ((*(v4 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isSearching) & 1) != 0 || !sub_19A75BDF8(v18))
    {
      if (sub_19A670300(v19))
      {
        v20 = 14;
      }

      else
      {
        v20 = sub_19A6701A8(v19) ? 0 : sub_19A677930(v19);
      }
    }

    else
    {
      v20 = 13;
    }

    v21 = *(v4 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager);
    v22 = sub_19A7A9014();
    [v21 reloadCategoryForIndexPath:v22 withSender:v5];

    [v21 reloadForCategory:v20 withSender:v5];
    v23 = [objc_opt_self() categoryForType_];
    if (v23)
    {
      v24 = *(v5 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_category);
      *(v5 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_category) = v23;
    }
  }

  (*(v13 + 16))(v10, a1, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  swift_beginAccess();
  sub_19A680E70(v10, v5 + v11, &unk_1EAFCF110, &unk_19A7B6AF0);
  swift_endAccess();
  v25 = *(v5 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  v26 = [v25 numberOfItemsInSection_];
  if (sub_19A7A9044() < v26)
  {
    v27 = sub_19A7A9014();
    [v25 selectItemAtIndexPath:v27 animated:0 scrollPosition:0];

    if (a2)
    {
      v28 = sub_19A7A9014();
      v29 = [v25 cellForItemAtIndexPath_];

      if (!v29 || ([v29 bounds], objc_msgSend(v25, sel_convertRect_fromCoordinateSpace_, v29), v31 = v30, v33 = v32, v35 = v34, v37 = v36, objc_msgSend(v25, sel_bounds), v49.origin.x = v38, v49.origin.y = v39, v49.size.width = v40, v49.size.height = v41, v47.origin.x = v31, v47.origin.y = v33, v47.size.width = v35, v47.size.height = v37, v48 = CGRectIntersection(v47, v49), v50.origin.x = v31, v50.origin.y = v33, v50.size.width = v35, v50.size.height = v37, v42 = CGRectEqualToRect(v48, v50), v29, !v42))
      {
        v43 = sub_19A7A9014();
        [v25 scrollToItemAtIndexPath:v43 atScrollPosition:v46 animated:v45 & 1];
      }
    }

    sub_19A678758(a1);
  }
}

void sub_19A67A748(char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(v4 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
  v9 = sub_19A7A9014();
  v10 = [v8 layoutAttributesForItemAtIndexPath_];

  if (v10)
  {
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = 0.0;
    v14 = 0.0;
    v16 = 0.0;
    v18 = 0.0;
  }

  UIRectGetCenter();
  v20 = v19;
  v22 = v21;
  [v8 frame];
  if (a2)
  {
    v24 = -1.0;
  }

  else
  {
    v24 = 1.0;
  }

  if (a3)
  {
    v25 = v23;
  }

  else
  {
    v25 = v18;
  }

  v58 = v25;
  CGPointMake();
  v62.origin.x = v26;
  v62.origin.y = v27;
  v62.size.width = v28;
  v62.size.height = v29;
  v60.origin.x = v12;
  v60.origin.y = v14;
  v60.size.width = v16;
  v60.size.height = v18;
  v61 = CGRectUnion(v60, v62);
  x = v61.origin.x;
  y = v61.origin.y;
  width = v61.size.width;
  height = v61.size.height;
  v34 = [v8 collectionViewLayout];
  v35 = [v34 layoutAttributesForElementsInRect_];

  if (v35)
  {
    sub_19A5F5028(0, &qword_1EAFCA440, 0x1E69DC858);
    v36 = sub_19A7AB254();

    if (!(v36 >> 62))
    {
      goto LABEL_12;
    }

LABEL_30:
    v37 = sub_19A7ABBE4();
    if (v37)
    {
      goto LABEL_13;
    }

LABEL_31:

    goto LABEL_32;
  }

  v36 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_30;
  }

LABEL_12:
  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_31;
  }

LABEL_13:
  if (v37 < 1)
  {
    __break(1u);
    return;
  }

  v38 = 0;
  v39 = 0;
  v40 = v22 + v24 * v58;
  do
  {
    if ((v36 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x19A906130](v38, v36);
    }

    else
    {
      v41 = *(v36 + 8 * v38 + 32);
    }

    v42 = v41;
    [v41 frame];
    if (v43 == v14)
    {
LABEL_15:

      goto LABEL_16;
    }

    if (v39)
    {
      v44 = v39;
      [v42 frame];
      UIRectGetCenter();
      v46 = v45;
      v48 = v47;
      [v44 frame];
      UIRectGetCenter();
      v50 = v49;
      v52 = v51;

      v53 = vabdd_f64(v40, v48) - vabdd_f64(v40, v52);
      if (v53 >= 0.0 && (v53 != 0.0 || vabdd_f64(v20, v46) >= vabdd_f64(v20, v50)))
      {
        goto LABEL_15;
      }
    }

    v39 = v42;
LABEL_16:
    ++v38;
  }

  while (v37 != v38);

  if (v39)
  {
    v54 = [v39 indexPath];
    sub_19A7A9024();

    v55 = 0;
    goto LABEL_33;
  }

LABEL_32:
  v55 = 1;
LABEL_33:
  v56 = sub_19A7A9094();
  v57 = *(*(v56 - 8) + 56);

  v57(a4, v55, 1, v56);
}

void sub_19A67AAEC(uint64_t a1, int a2, int a3)
{
  v70 = a3;
  v68 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v67[-v5];
  v72 = sub_19A7A9094();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v67[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_viewModel;
  v9 = *(a1 + OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_viewModel);
  swift_getKeyPath();
  *&v78 = v9;
  sub_19A681478(&qword_1EAFCADB0, type metadata accessor for EmojiCellViewModel, &unk_19A7B8A84);

  sub_19A7A90C4();

  v10 = *(v9 + 72);
  v78 = *(v9 + 56);
  v79 = v10;
  v80 = *(v9 + 88);
  v81 = *(v9 + 104);
  sub_19A60F01C(&v78, &v74);

  v11 = *(a1 + v8);
  swift_getKeyPath();
  *&v74 = v11;

  sub_19A7A90C4();

  v12 = *(v11 + 104);

  if (v12 <= 0xFD)
  {
    v13 = [objc_opt_self() sharedInstance];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 hasDisplayedSkinToneHelp];

      if ((v15 & 1) == 0)
      {
        v49 = v73;
        [*&v73[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView] setHidden_];
        [v49 bounds];
        v54 = [objc_allocWithZone(type metadata accessor for VariantHelpView()) initWithFrame_];
        v55 = v81;
        v56 = &v54[OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji];
        v57 = *&v54[OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji];
        v58 = *&v54[OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji + 8];
        v59 = *&v54[OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji + 16];
        v60 = *&v54[OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji + 24];
        v61 = *&v54[OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji + 32];
        v62 = *&v54[OBJC_IVAR____TtC10StickerKit15VariantHelpView_emoji + 40];
        v63 = v79;
        v64 = v80;
        *v56 = v78;
        *(v56 + 1) = v63;
        *(v56 + 2) = v64;
        v65 = *(v56 + 24);
        *(v56 + 24) = v55;
        sub_19A67FECC(v57, v58, v59, v60, v61, v62, v65);
        *&v54[OBJC_IVAR____TtC10StickerKit15VariantHelpView_delegate + 8] = &off_1F0DC81F0;
        swift_unknownObjectWeakAssign();
        [v49 addSubview_];
        v66 = *&v49[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_variantHelpView];
        *&v49[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_variantHelpView] = v54;

        return;
      }
    }

    if ((v68 & 1) == 0)
    {
      v16 = *&v73[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager];
      v74 = v78;
      v75 = v79;
      v76 = v80;
      v77 = v81;
      sub_19A7862FC(0);
      v17 = sub_19A7AAFE4();

      v18 = [v16 hasLastUsedVariantForEmojiString_];

      if ((v18 & 1) == 0)
      {
        sub_19A60F078(&v78);

        sub_19A63F7BC(1);

        return;
      }
    }

    v19 = *&v73[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager];
    v20 = sub_19A7AAFE4();
    v74 = v78;
    v75 = v79;
    v76 = v80;
    v77 = v81;
    sub_19A7862FC(0);
    v21 = sub_19A7AAFE4();

    [v19 updateSkinToneBaseKey:v20 variantUsed:v21];

    sub_19A63F7BC(0);
  }

  v74 = v78;
  v75 = v79;
  v76 = v80;
  v77 = v81;
  sub_19A7862FC(0);
  v22 = sub_19A7AAFE4();

  v23 = [objc_opt_self() emojiWithString:v22 withVariantMask:0];

  if (v23)
  {
    v24 = [objc_opt_self() sharedInputModeController];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 lastUsedInputModeForCurrentContext];

      v27 = v73;
      if (v26)
      {
        v28 = [v26 primaryLanguage];

        if (v28)
        {
          sub_19A7AB014();
        }
      }
    }

    else
    {
      v27 = v73;
    }

    v29 = *&v27[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager];
    v30 = sub_19A7AAFE4();

    [v29 emojiUsed:v23 language:v30];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA40, &unk_19A7BCFF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_19A7B6C20;
  *(inited + 32) = 0x7079546567616D49;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = sub_19A7AAFE4();
  *(inited + 56) = 0x7079546567617355;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_19A7AAFE4();
  v32 = sub_19A69C364(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCC170, &unk_19A7B6CA0);
  swift_arrayDestroy();
  v33 = OBJC_IVAR____TtC10StickerKit23EmojiCollectionViewCell_indexPath;
  swift_beginAccess();
  sub_19A60F0CC(a1 + v33, v6, &unk_1EAFCF110, &unk_19A7B6AF0);
  v34 = v71;
  v35 = v72;
  if ((*(v71 + 48))(v6, 1, v72) == 1)
  {
    sub_19A5F2B54(v6, &unk_1EAFCF110, &unk_19A7B6AF0);
    v36 = sub_19A7AAFE4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v74 = v32;
    sub_19A64FE0C(v36, 0x756F536567617355, 0xEB00000000656372, isUniquelyReferenced_nonNull_native);
    v38 = v74;
    v39 = v73;
  }

  else
  {
    v40 = v69;
    (*(v34 + 32))(v69, v6, v35);
    v41 = sub_19A7A9064();
    v39 = v73;
    sub_19A6701A8(v41);
    v42 = sub_19A7AAFE4();

    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v74 = v32;
    sub_19A64FE0C(v42, 0x756F536567617355, 0xEB00000000656372, v43);
    v38 = v74;
    (*(v34 + 8))(v40, v35);
  }

  if (qword_1EAFCAD68 != -1)
  {
    swift_once();
  }

  if (qword_1EAFCB558 != -1)
  {
    swift_once();
  }

  sub_19A661F84(qword_1EAFDD6C8, 0x6567617355, 0xE500000000000000, 0, 0, 0, 0, 2, 0, 1, v38);

  v44 = *&v39[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_feedbackGeneratorPartner];
  if (v44)
  {
    [v44 actionOccurred_];
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v74 = v78;
    v75 = v79;
    v76 = v80;
    v77 = v81;
    sub_19A7862FC(0);
    v46 = v45;
    v48 = v47;
    sub_19A60F078(&v78);
    sub_19A7A0AF8(v46, v48, v70 & 1);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_19A60F078(&v78);
  }
}

void sub_19A67B4FC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_19A7A9094();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging] == 1)
  {
    v3[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging] = 0;

    sub_19A66E300(1);
  }

  else
  {
    v13 = *(a1 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph);
    if (v13)
    {
      v33 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCEA40, &unk_19A7BCFF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_19A7B6C20;
      *(inited + 32) = 0x7079546567616D49;
      *(inited + 40) = 0xE900000000000065;
      v15 = qword_1EAFCAD68;
      v16 = v13;
      if (v15 != -1)
      {
        v34 = v16;
        swift_once();
        v16 = v34;
      }

      v34 = v3;
      v31 = qword_1EAFDD598;
      v17 = v16;
      sub_19A665B5C(v13);
      v32 = v17;

      v18 = sub_19A7AAFE4();

      *(inited + 48) = v18;
      *(inited + 56) = 0x7079546567617355;
      *(inited + 64) = 0xE900000000000065;
      *(inited + 72) = sub_19A7AAFE4();
      v19 = sub_19A69C364(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCC170, &unk_19A7B6CA0);
      swift_arrayDestroy();
      v20 = OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_indexPath;
      swift_beginAccess();
      sub_19A60F0CC(a1 + v20, v8, &unk_1EAFCF110, &unk_19A7B6AF0);
      if ((*(v10 + 48))(v8, 1, v9) == 1)
      {
        sub_19A5F2B54(v8, &unk_1EAFCF110, &unk_19A7B6AF0);
        v21 = sub_19A7AAFE4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = v19;
        sub_19A64FE0C(v21, 0x756F536567617355, 0xEB00000000656372, isUniquelyReferenced_nonNull_native);
        v23 = v35;
      }

      else
      {
        (*(v10 + 32))(v12, v8, v9);
        v24 = sub_19A7A9064();
        sub_19A6701A8(v24);
        v25 = sub_19A7AAFE4();

        v26 = swift_isUniquelyReferenced_nonNull_native();
        v35 = v19;
        sub_19A64FE0C(v25, 0x756F536567617355, 0xEB00000000656372, v26);
        v23 = v35;
        (*(v10 + 8))(v12, v9);
      }

      v27 = v33;
      if (qword_1EAFCB558 != -1)
      {
        swift_once();
      }

      sub_19A661F84(qword_1EAFDD6C8, 0x6567617355, 0xE500000000000000, 0, 0, 0, 0, 2, 0, 1, v23);

      v28 = *&v34[OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_feedbackGeneratorPartner];
      if (v28)
      {
        [v28 actionOccurred_];
      }

      v29 = v27 & 1;
      v30 = v32;
      sub_19A6789B8(v32, v29);
    }
  }
}

void sub_19A67BA60(uint64_t a1)
{
  sub_19A67BB78(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_19A67BB78(uint64_t a1)
{
  if (!qword_1ED8B3710)
  {
    sub_19A7A9094();
    v1 = sub_19A7ABA94();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED8B3710);
    }
  }
}

void sub_19A67BC54(void *a1)
{
  v2 = v1;
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  if (qword_1EAFCA9A8 != -1)
  {
    swift_once();
  }

  v16 = sub_19A7A9384();
  v69 = __swift_project_value_buffer(v16, qword_1EAFCA9B0);
  v17 = sub_19A7A9364();
  v18 = sub_19A7AB574();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = a1;
    v20 = v10;
    v21 = v15;
    v22 = v7;
    v23 = v5;
    v24 = v4;
    v25 = v2;
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_19A5EE000, v17, v18, "handleLongPress", v26, 2u);
    v27 = v26;
    v2 = v25;
    v4 = v24;
    v5 = v23;
    v7 = v22;
    v15 = v21;
    v10 = v20;
    a1 = v19;
    MEMORY[0x19A907A30](v27, -1, -1);
  }

  v28 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging;
  if (*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging) == 1)
  {
    v29 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);
    [a1 locationInView_];
    v31 = v30;
    v33 = v32;
    v34 = [a1 state];
    if (v34 > 2)
    {
      if (v34 == 3)
      {
        v53 = sub_19A7A9364();
        v54 = sub_19A7AB574();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_19A5EE000, v53, v54, "Long press ended", v55, 2u);
          MEMORY[0x19A907A30](v55, -1, -1);
        }

        v42 = sel_endInteractiveMovement;
      }

      else
      {
        if (v34 != 4)
        {
          return;
        }

        v44 = sub_19A7A9364();
        v45 = sub_19A7AB574();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_19A5EE000, v44, v45, "Long press cancelled", v46, 2u);
          MEMORY[0x19A907A30](v46, -1, -1);
        }

        v42 = sel_cancelInteractiveMovement;
      }

      v43 = v29;

LABEL_13:
      [v43 v42];
      return;
    }

    if (v34 != 1)
    {
      if (v34 != 2)
      {
        return;
      }

      v35 = sub_19A7A9364();
      v36 = sub_19A7AB574();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = v2;
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_19A5EE000, v35, v36, "Long press changed", v38, 2u);
        v39 = v38;
        v2 = v37;
        MEMORY[0x19A907A30](v39, -1, -1);
      }

      v40 = v31 + *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_touchOffsetForMovingCell);
      v41 = v33 + *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_touchOffsetForMovingCell + 8);
      v42 = sel_updateInteractiveMovementTargetPosition_;
      v43 = v29;

      goto LABEL_13;
    }

    v67 = v2;
    v47 = sub_19A7A9364();
    v48 = sub_19A7AB574();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_19A5EE000, v47, v48, "Long press began", v49, 2u);
      MEMORY[0x19A907A30](v49, -1, -1);
    }

    v50 = [v29 indexPathForItemAtPoint_];
    v51 = v68;
    if (v50)
    {
      v52 = v50;
      sub_19A7A9024();

      (*(v5 + 56))(v51, 0, 1, v4);
    }

    else
    {
      (*(v5 + 56))(v68, 1, 1, v4);
    }

    sub_19A680C30(v51, v15);
    sub_19A60F0CC(v15, v10, &unk_1EAFCF110, &unk_19A7B6AF0);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_19A5F2B54(v10, &unk_1EAFCF110, &unk_19A7B6AF0);
      v56 = *(v67 + v28);
      *(v67 + v28) = 0;
      sub_19A66E300(v56);
      sub_19A5F2B54(v15, &unk_1EAFCF110, &unk_19A7B6AF0);
    }

    else
    {
      (*(v5 + 32))(v7, v10, v4);
      v57 = sub_19A7A9014();
      [v29 beginInteractiveMovementForItemAtIndexPath_];

      v58 = sub_19A7A9014();
      v59 = [v29 cellForItemAtIndexPath_];

      if (v59)
      {
        [v59 center];
        v61 = v60;
        v63 = v62;

        (*(v5 + 8))(v7, v4);
        sub_19A5F2B54(v15, &unk_1EAFCF110, &unk_19A7B6AF0);
        v64 = (v67 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_touchOffsetForMovingCell);
        *v64 = v61 - v31;
        v64[1] = v63 - v33;
      }

      else
      {
        (*(v5 + 8))(v7, v4);
        sub_19A5F2B54(v15, &unk_1EAFCF110, &unk_19A7B6AF0);
        v65 = (v67 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_touchOffsetForMovingCell);
        *v65 = 0;
        v65[1] = 0;
      }
    }
  }
}

uint64_t sub_19A67C9A4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_19A7A9094();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A6772DC(a1);
  v11 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging;
  if ((*(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging) & 1) == 0)
  {
    v12 = [objc_opt_self() defaultCenter];
    if (qword_1EAFCABA8 != -1)
    {
      swift_once();
    }

    [v12 postNotificationName:qword_1EAFDD570 object:0 userInfo:0];
  }

  sub_19A6768AC(v6);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    sub_19A7A9084();
    if (v13(v6, 1, v7) != 1)
    {
      sub_19A5F2B54(v6, &unk_1EAFCF110, &unk_19A7B6AF0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v14 = sub_19A7A9064();
  if (*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_currentSection) != v14)
  {
    v15 = v14;
    *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_currentSection) = v14;
    v16 = *(v2 + v11);
    *(v2 + v11) = 0;
    sub_19A66E300(v16);
    if (*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isDraggingInputView) == 1)
    {
      v17 = *(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager);
      v18 = sub_19A7A9014();
      [v17 reloadCategoryForIndexPath:v18 withSender:v2];

      if ((*(v2 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isSearching) & 1) != 0 || !sub_19A75BDF8(v15))
      {
        if (sub_19A670300(v15))
        {
          v19 = 14;
        }

        else if (sub_19A6701A8(v15))
        {
          v19 = 0;
        }

        else
        {
          v19 = sub_19A677930(v15);
        }
      }

      else
      {
        v19 = 13;
      }

      [v17 reloadForCategory:v19 withSender:v2];
    }
  }

  v20 = sub_19A66EE50();
  [a1 contentOffset];
  v22 = v21 / 75.0;
  if (v21 / 75.0 > 0.5)
  {
    v22 = 0.5;
  }

  [v20 setAlpha_];

  return (*(v8 + 8))(v10, v7);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for EmojiAndStickerCollectionInputView.Style(uint64_t a1, unsigned int a2)
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
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EmojiAndStickerCollectionInputView.Style(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_19A67CF2C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_19A7A8F64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  v21 = *(a1 + OBJC_IVAR____TtC10StickerKit25StickerCollectionViewCell_imageGlyph);
  if (!v21)
  {
    (*(v14 + 56))(v12, 1, 1, v13, v18);
    return sub_19A5F2B54(v12, &qword_1EAFCD800, &qword_19A7BCE60);
  }

  sub_19A60F0CC(v21 + OBJC_IVAR___STKImageGlyph_stickerUUID, v12, &qword_1EAFCD800, &qword_19A7BCE60);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_19A5F2B54(v12, &qword_1EAFCD800, &qword_19A7BCE60);
  }

  v22 = *(v14 + 32);
  v22(v20, v12, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = [Strong _hostedWindowScene];
    if (v24)
    {
      v25 = v24;
      (*(v14 + 16))(v16, v20, v13);
      type metadata accessor for EditSticker(0);
      v26 = swift_allocObject();
      v22((v26 + OBJC_IVAR____TtC10StickerKit11EditSticker_stickerIdentifier), v16, v13);
      v27 = (v26 + OBJC_IVAR____TtC10StickerKit11EditSticker_sourceRect);
      *v27 = a2;
      v27[1] = a3;
      v27[2] = a4;
      v27[3] = a5;
      v28 = sub_19A7A5B68(3, v26, 0, 1);

      [v25 sendAction_];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return (*(v14 + 8))(v20, v13);
}

void *sub_19A67D244()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = [result _hostedWindowScene];
    if (v1)
    {
      v2 = v1;
      v3 = sub_19A7A6270(4, 1, 0, 0);
      [v2 sendAction_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_19A67D2F4()
{
  v1 = [objc_opt_self() sharedInstance];
  [v1 didDisplaySkinToneHelp];

  v2 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_variantHelpView;
  v3 = *(v0 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_variantHelpView);
  if (v3)
  {
    [v3 removeFromSuperview];
    v4 = *(v0 + v2);
  }

  else
  {
    v4 = 0;
  }

  *(v0 + v2) = 0;

  v5 = *(v0 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView);

  return [v5 setHidden_];
}

void sub_19A67D39C(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), void (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  v7 = sub_19A7AC004();
  if (v7 < v6)
  {
    if (v6 >= -1)
    {
      v8 = v7;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_19A7A9094();
        v10 = sub_19A7AB294();
        *(v10 + 16) = v9;
      }

      v11 = *(sub_19A7A9094() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    a3(0, v6, 1, a1);
  }
}

void sub_19A67D4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_19A7A9094();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v11;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_19A681478(&unk_1EAFCD760, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
      v26 = sub_19A7AAFA4();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_19A67D79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_19A7A9094();
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  v38 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v20 = *(v14 + 16);
    v19 = v14 + 16;
    v21 = *(v19 + 56);
    v47 = (v19 - 8);
    v48 = v20;
    v49 = v19;
    v44 = (v19 + 16);
    v45 = v18;
    v22 = (v18 + v21 * (a3 - 1));
    v43 = -v21;
    v23 = a1 - a3;
    v37 = v21;
    v24 = v18 + v21 * a3;
LABEL_5:
    v41 = v22;
    v42 = a3;
    v39 = v24;
    v40 = v23;
    v25 = v23;
    v26 = v22;
    while (1)
    {
      v27 = v48;
      (v48)(v17, v24, v8, v15);
      v27(v12, v26, v8);
      v28 = sub_19A7A9064();
      if (v28 == sub_19A7A9064())
      {
        v29 = sub_19A7A9044();
        v30 = sub_19A7A9044();
      }

      else
      {
        v29 = sub_19A7A9064();
        v30 = sub_19A7A9064();
      }

      v31 = v29 < v30;
      v32 = *v47;
      (*v47)(v12, v8);
      v32(v17, v8);
      if (!v31)
      {
LABEL_4:
        a3 = v42 + 1;
        v22 = &v41[v37];
        v23 = v40 - 1;
        v24 = v39 + v37;
        if (v42 + 1 == v38)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v45)
      {
        break;
      }

      v33 = *v44;
      v34 = v46;
      (*v44)(v46, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v33(v26, v34, v8);
      v26 += v43;
      v24 += v43;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_19A67DA60(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v122 = a1;
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v134 = &v119 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v140 = &v119 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v139 = &v119 - v17;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_19A67FC80(v20);
    }

    v142 = v20;
    v115 = *(v20 + 2);
    if (v115 >= 2)
    {
      while (*a3)
      {
        v116 = *&v20[16 * v115];
        v117 = *&v20[16 * v115 + 24];
        sub_19A67EFEC(*a3 + v9[9] * v116, *a3 + v9[9] * *&v20[16 * v115 + 16], *a3 + v9[9] * v117, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v117 < v116)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_19A67FC80(v20);
        }

        if (v115 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v118 = &v20[16 * v115];
        *v118 = v116;
        *(v118 + 1) = v117;
        v142 = v20;
        sub_19A67FBF4(v115 - 1);
        v20 = v142;
        v115 = *(v142 + 2);
        if (v115 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v119 = a4;
  v19 = 0;
  v137 = (v9 + 1);
  v138 = v9 + 2;
  v136 = (v9 + 4);
  v20 = MEMORY[0x1E69E7CC0];
  v124 = v9;
  v141 = v8;
  v120 = a3;
  while (1)
  {
    v21 = v19;
    v125 = v20;
    if (v19 + 1 >= v18)
    {
      v34 = v19 + 1;
    }

    else
    {
      v132 = v18;
      v121 = v5;
      v22 = *a3;
      v23 = v9[9];
      v24 = v19;
      v123 = v19;
      v25 = &v22[v23 * (v19 + 1)];
      v26 = v8;
      v27 = v9[2];
      v28 = v139;
      v27(v139, v25, v26, v16);
      v29 = &v22[v23 * v24];
      v30 = v140;
      v131 = v27;
      (v27)(v140, v29, v26);
      v130 = sub_19A681478(&unk_1EAFCD760, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
      LODWORD(v133) = sub_19A7AAFA4();
      v31 = v9[1];
      v31(v30, v26);
      v129 = v31;
      v31(v28, v26);
      v32 = v123 + 2;
      v135 = v23;
      v33 = &v22[v23 * (v123 + 2)];
      while (1)
      {
        v34 = v132;
        if (v132 == v32)
        {
          break;
        }

        v35 = v139;
        v36 = v9;
        v37 = v141;
        v38 = v131;
        (v131)(v139, v33, v141);
        v39 = v140;
        v38(v140, v25, v37);
        v40 = sub_19A7AAFA4() & 1;
        v41 = v129;
        (v129)(v39, v37);
        v42 = v37;
        v9 = v36;
        v41(v35, v42);
        ++v32;
        v33 += v135;
        v25 += v135;
        if ((v133 & 1) != v40)
        {
          v34 = v32 - 1;
          break;
        }
      }

      v5 = v121;
      v20 = v125;
      v8 = v141;
      a3 = v120;
      v21 = v123;
      if (v133)
      {
        if (v34 < v123)
        {
          goto LABEL_123;
        }

        if (v123 < v34)
        {
          v43 = v34;
          v44 = v135 * (v34 - 1);
          v45 = v34 * v135;
          v132 = v34;
          v46 = v123;
          v47 = v123 * v135;
          do
          {
            if (v46 != --v43)
            {
              v49 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v133 = *v136;
              v133(v127, &v49[v47], v141);
              if (v47 < v44 || &v49[v47] >= &v49[v45])
              {
                v48 = v141;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v48 = v141;
                if (v47 != v44)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v133(&v49[v44], v127, v48);
              v9 = v124;
              v20 = v125;
            }

            ++v46;
            v44 -= v135;
            v45 -= v135;
            v47 += v135;
          }

          while (v46 < v43);
          v5 = v121;
          v8 = v141;
          v21 = v123;
          v34 = v132;
        }
      }
    }

    v50 = a3[1];
    if (v34 < v50)
    {
      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 < v119)
      {
        if (__OFADD__(v21, v119))
        {
          goto LABEL_124;
        }

        if (v21 + v119 >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v21 + v119;
        }

        if (v51 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v34 != v51)
        {
          break;
        }
      }
    }

    v52 = v34;
    if (v34 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_19A67FD78(0, *(v20 + 2) + 1, 1, v20);
    }

    v54 = *(v20 + 2);
    v53 = *(v20 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v20 = sub_19A67FD78((v53 > 1), v54 + 1, 1, v20);
    }

    *(v20 + 2) = v55;
    v56 = &v20[16 * v54];
    *(v56 + 4) = v21;
    *(v56 + 5) = v52;
    v21 = *v122;
    if (!*v122)
    {
      goto LABEL_131;
    }

    v128 = v52;
    if (v54)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v20 + 4);
          v59 = *(v20 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_52:
          if (v61)
          {
            goto LABEL_110;
          }

          v74 = &v20[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_113;
          }

          v80 = &v20[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_117;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v84 = &v20[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_66:
        if (v79)
        {
          goto LABEL_112;
        }

        v87 = &v20[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_115;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_73:
        v95 = v57 - 1;
        if (v57 - 1 >= v55)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v96 = *&v20[16 * v95 + 32];
        v97 = *&v20[16 * v57 + 40];
        sub_19A67EFEC(*a3 + v9[9] * v96, *a3 + v9[9] * *&v20[16 * v57 + 32], *a3 + v9[9] * v97, v21);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v97 < v96)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_19A67FC80(v20);
        }

        if (v95 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v98 = &v20[16 * v95];
        *(v98 + 4) = v96;
        *(v98 + 5) = v97;
        v142 = v20;
        sub_19A67FBF4(v57);
        v20 = v142;
        v55 = *(v142 + 2);
        v8 = v141;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v20[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_108;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_109;
      }

      v69 = &v20[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_111;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_114;
      }

      if (v73 >= v65)
      {
        v91 = &v20[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = a3[1];
    v19 = v128;
    if (v128 >= v18)
    {
      goto LABEL_94;
    }
  }

  v121 = v5;
  v99 = *a3;
  v100 = v9[9];
  v135 = v9[2];
  v101 = v99 + v100 * (v34 - 1);
  v102 = -v100;
  v123 = v21;
  v103 = v21 - v34;
  v133 = v99;
  v126 = v100;
  v104 = v99 + v34 * v100;
  v128 = v51;
LABEL_85:
  v131 = v101;
  v132 = v34;
  v129 = v104;
  v130 = v103;
  v105 = v101;
  while (1)
  {
    v106 = v139;
    v107 = v135;
    (v135)(v139, v104, v8);
    v108 = v140;
    v107(v140, v105, v141);
    sub_19A681478(&unk_1EAFCD760, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
    v109 = sub_19A7AAFA4();
    v110 = *v137;
    v111 = v108;
    v8 = v141;
    (*v137)(v111, v141);
    v110(v106, v8);
    if ((v109 & 1) == 0)
    {
LABEL_84:
      v34 = v132 + 1;
      v101 = &v131[v126];
      v103 = v130 - 1;
      v104 = &v129[v126];
      v52 = v128;
      if (v132 + 1 != v128)
      {
        goto LABEL_85;
      }

      v5 = v121;
      a3 = v120;
      v9 = v124;
      v20 = v125;
      v21 = v123;
      if (v128 < v123)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v133)
    {
      break;
    }

    v112 = *v136;
    v113 = v134;
    (*v136)(v134, v104, v8);
    swift_arrayInitWithTakeFrontToBack();
    v112(v105, v113, v8);
    v105 += v102;
    v104 += v102;
    if (__CFADD__(v103++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_19A67E488(int64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v144 = a1;
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v147 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v138 - v12;
  MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v138 - v15;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v142 = &v138 - v20;
  v25 = MEMORY[0x1EEE9AC00](v21);
  v141 = &v138 - v26;
  v27 = a3[1];
  v154 = v9;
  if (v27 < 1)
  {
    v29 = MEMORY[0x1E69E7CC0];
LABEL_103:
    v30 = *v144;
    if (!*v144)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = v154;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v165 = v29;
      v133 = *(v29 + 16);
      if (v133 >= 2)
      {
        while (*a3)
        {
          v134 = *(v29 + 16 * v133);
          v135 = v29;
          v136 = *(v29 + 16 * (v133 - 1) + 32);
          v29 = *(v29 + 16 * (v133 - 1) + 40);
          sub_19A67F5E0(*a3 + *(v8 + 72) * v134, (*a3 + *(v8 + 72) * v136), (*a3 + *(v8 + 72) * v29), v30);
          if (v5)
          {
            goto LABEL_113;
          }

          if (v29 < v134)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_19A67FC80(v135);
          }

          if (v133 - 2 >= *(v135 + 2))
          {
            goto LABEL_129;
          }

          v137 = &v135[16 * v133];
          *v137 = v134;
          *(v137 + 1) = v29;
          v165 = v135;
          sub_19A67FBF4(v133 - 1);
          v29 = v165;
          v133 = *(v165 + 16);
          if (v133 <= 1)
          {
            goto LABEL_113;
          }
        }

        goto LABEL_139;
      }

LABEL_113:

      return;
    }

LABEL_135:
    v29 = sub_19A67FC80(v29);
    goto LABEL_105;
  }

  v161 = v22;
  v138 = a4;
  v28 = 0;
  v163 = (v9 + 8);
  v164 = v9 + 16;
  v162 = (v9 + 32);
  v29 = MEMORY[0x1E69E7CC0];
  v146 = a3;
  v149 = v16;
  v140 = v23;
  v139 = v24;
  while (1)
  {
    v30 = v28;
    v31 = v28 + 1;
    if (v28 + 1 < v27)
    {
      v152 = v27;
      v32 = *a3;
      v33 = *(v154 + 72);
      v155 = v28 + 1;
      v34 = *(v154 + 16);
      v35 = v141;
      v34(v141, v32 + v33 * v31, v8, v25);
      v145 = v30;
      v156 = v33;
      v36 = v32 + v33 * v30;
      v37 = v142;
      v151 = v34;
      (v34)(v142, v36, v8);
      v38 = sub_19A7A9064();
      v39 = sub_19A7A9064();
      v148 = v5;
      if (v38 == v39)
      {
        v40 = sub_19A7A9044();
        v41 = sub_19A7A9044();
      }

      else
      {
        v40 = sub_19A7A9064();
        v41 = sub_19A7A9064();
      }

      LODWORD(v153) = v40 < v41;
      v143 = v29;
      v42 = *v163;
      (*v163)(v37, v8);
      v150 = v42;
      (v42)(v35, v8);
      v43 = (v145 + 2);
      v44 = v155;
      v45 = v156 * (v145 + 2);
      v46 = v32 + v45;
      v47 = v156 * v155;
      v48 = v32 + v156 * v155;
      v49 = v140;
      a3 = v139;
      do
      {
        v31 = v43;
        v55 = v44;
        v29 = v47;
        v54 = v45;
        if (v43 >= v152)
        {
          break;
        }

        v158 = v44;
        v160 = v43;
        v56 = v151;
        v151(a3, v46, v8);
        v56(v49, v48, v8);
        v57 = sub_19A7A9064();
        v58 = sub_19A7A9064();
        v157 = v54;
        if (v57 == v58)
        {
          v50 = sub_19A7A9044();
          v51 = sub_19A7A9044();
        }

        else
        {
          v50 = sub_19A7A9064();
          v51 = sub_19A7A9064();
        }

        v52 = v50 < v51;
        v53 = v150;
        (v150)(v49, v8);
        v53(a3, v8);
        v31 = v160;
        v43 = (v160 + 1);
        v54 = v157;
        v46 += v156;
        v48 += v156;
        v55 = v158;
        v44 = v158 + 1;
        v47 = &v156[v29];
        v45 = &v156[v157];
      }

      while (v153 == v52);
      if (!v153)
      {
        a3 = v146;
        v29 = v143;
        v5 = v148;
        v16 = v149;
LABEL_30:
        v30 = v145;
        goto LABEL_31;
      }

      v30 = v145;
      v5 = v148;
      if (v31 < v145)
      {
        goto LABEL_132;
      }

      if (v145 < v31)
      {
        v59 = v145 * v156;
        do
        {
          if (v30 != v55)
          {
            v148 = v5;
            v61 = *v146;
            if (!*v146)
            {
              goto LABEL_138;
            }

            v62 = v55;
            v160 = *v162;
            v160(v147, (v61 + v59), v8);
            if (v59 < v29 || v61 + v59 >= (v61 + v54))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v160((v61 + v29), v147, v8);
            v5 = v148;
            v55 = v62;
          }

          ++v30;
          v29 -= v156;
          v54 -= v156;
          v59 += v156;
        }

        while (v30 < v55--);
        a3 = v146;
        v29 = v143;
        v16 = v149;
        goto LABEL_30;
      }

      a3 = v146;
      v29 = v143;
      v16 = v149;
    }

LABEL_31:
    v63 = a3[1];
    if (v31 < v63)
    {
      if (__OFSUB__(v31, v30))
      {
        goto LABEL_131;
      }

      if (v31 - v30 < v138)
      {
        break;
      }
    }

LABEL_52:
    if (v31 < v30)
    {
      goto LABEL_130;
    }

    v83 = swift_isUniquelyReferenced_nonNull_native();
    v155 = v31;
    if ((v83 & 1) == 0)
    {
      v29 = sub_19A67FD78(0, *(v29 + 16) + 1, 1, v29);
    }

    v85 = *(v29 + 16);
    v84 = *(v29 + 24);
    v86 = v85 + 1;
    if (v85 >= v84 >> 1)
    {
      v29 = sub_19A67FD78((v84 > 1), v85 + 1, 1, v29);
    }

    *(v29 + 16) = v86;
    v87 = v29 + 16 * v85;
    v88 = v155;
    *(v87 + 32) = v30;
    *(v87 + 40) = v88;
    v89 = *v144;
    if (!*v144)
    {
      goto LABEL_140;
    }

    if (v85)
    {
      while (1)
      {
        v30 = v86 - 1;
        if (v86 >= 4)
        {
          break;
        }

        if (v86 == 3)
        {
          v90 = *(v29 + 32);
          v91 = *(v29 + 40);
          v100 = __OFSUB__(v91, v90);
          v92 = v91 - v90;
          v93 = v100;
LABEL_72:
          if (v93)
          {
            goto LABEL_119;
          }

          v106 = (v29 + 16 * v86);
          v108 = *v106;
          v107 = v106[1];
          v109 = __OFSUB__(v107, v108);
          v110 = v107 - v108;
          v111 = v109;
          if (v109)
          {
            goto LABEL_122;
          }

          v112 = (v29 + 32 + 16 * v30);
          v114 = *v112;
          v113 = v112[1];
          v100 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v100)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v110, v115))
          {
            goto LABEL_126;
          }

          if (v110 + v115 >= v92)
          {
            if (v92 < v115)
            {
              v30 = v86 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v116 = (v29 + 16 * v86);
        v118 = *v116;
        v117 = v116[1];
        v100 = __OFSUB__(v117, v118);
        v110 = v117 - v118;
        v111 = v100;
LABEL_86:
        if (v111)
        {
          goto LABEL_121;
        }

        v119 = v29 + 16 * v30;
        v121 = *(v119 + 32);
        v120 = *(v119 + 40);
        v100 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v100)
        {
          goto LABEL_124;
        }

        if (v122 < v110)
        {
          goto LABEL_3;
        }

LABEL_93:
        v127 = v30 - 1;
        if (v30 - 1 >= v86)
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

        if (!*a3)
        {
          goto LABEL_137;
        }

        v128 = v29;
        v129 = *(v29 + 32 + 16 * v127);
        v130 = *(v29 + 32 + 16 * v30);
        v29 = *(v29 + 32 + 16 * v30 + 8);
        sub_19A67F5E0(*a3 + *(v154 + 72) * v129, (*a3 + *(v154 + 72) * v130), (*a3 + *(v154 + 72) * v29), v89);
        if (v5)
        {
          goto LABEL_113;
        }

        if (v29 < v129)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v128 = sub_19A67FC80(v128);
        }

        if (v127 >= *(v128 + 2))
        {
          goto LABEL_116;
        }

        v131 = &v128[16 * v127];
        *(v131 + 4) = v129;
        *(v131 + 5) = v29;
        v165 = v128;
        sub_19A67FBF4(v30);
        v29 = v165;
        v86 = *(v165 + 16);
        v16 = v149;
        if (v86 <= 1)
        {
          goto LABEL_3;
        }
      }

      v94 = v29 + 32 + 16 * v86;
      v95 = *(v94 - 64);
      v96 = *(v94 - 56);
      v100 = __OFSUB__(v96, v95);
      v97 = v96 - v95;
      if (v100)
      {
        goto LABEL_117;
      }

      v99 = *(v94 - 48);
      v98 = *(v94 - 40);
      v100 = __OFSUB__(v98, v99);
      v92 = v98 - v99;
      v93 = v100;
      if (v100)
      {
        goto LABEL_118;
      }

      v101 = (v29 + 16 * v86);
      v103 = *v101;
      v102 = v101[1];
      v100 = __OFSUB__(v102, v103);
      v104 = v102 - v103;
      if (v100)
      {
        goto LABEL_120;
      }

      v100 = __OFADD__(v92, v104);
      v105 = v92 + v104;
      if (v100)
      {
        goto LABEL_123;
      }

      if (v105 >= v97)
      {
        v123 = (v29 + 32 + 16 * v30);
        v125 = *v123;
        v124 = v123[1];
        v100 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v100)
        {
          goto LABEL_127;
        }

        if (v92 < v126)
        {
          v30 = v86 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v27 = a3[1];
    v28 = v155;
    if (v155 >= v27)
    {
      goto LABEL_103;
    }
  }

  v64 = (v30 + v138);
  if (__OFADD__(v30, v138))
  {
    goto LABEL_133;
  }

  if (v64 >= v63)
  {
    v64 = a3[1];
  }

  if (v64 < v30)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v31 == v64)
  {
    goto LABEL_52;
  }

  v143 = v29;
  v148 = v5;
  v65 = *a3;
  v66 = *(v154 + 72);
  v160 = *(v154 + 16);
  v67 = (v65 + v66 * (v31 - 1));
  v157 = -v66;
  v158 = v65;
  v145 = v30;
  v68 = v30 - v31;
  v150 = v66;
  v151 = v64;
  v69 = (v65 + v31 * v66);
LABEL_42:
  v155 = v31;
  v156 = v67;
  v152 = v69;
  v153 = v68;
  while (1)
  {
    v70 = v160;
    v160(v16, v69, v8);
    v71 = v8;
    v72 = v16;
    v73 = v161;
    v74 = v71;
    (v70)(v161, v67);
    v75 = sub_19A7A9064();
    if (v75 == sub_19A7A9064())
    {
      v76 = sub_19A7A9044();
      v77 = sub_19A7A9044();
    }

    else
    {
      v76 = sub_19A7A9064();
      v77 = sub_19A7A9064();
    }

    v78 = v76 < v77;
    v79 = *v163;
    (*v163)(v73, v74);
    (v79)(v72, v74);
    v16 = v72;
    if (!v78)
    {
      v8 = v74;
LABEL_41:
      v31 = v155 + 1;
      v67 = &v150[v156];
      v68 = v153 - 1;
      v69 = &v150[v152];
      if ((v155 + 1) == v151)
      {
        v31 = v151;
        v5 = v148;
        v30 = v145;
        a3 = v146;
        v29 = v143;
        goto LABEL_52;
      }

      goto LABEL_42;
    }

    if (!v158)
    {
      break;
    }

    v80 = *v162;
    v81 = v159;
    v8 = v74;
    (*v162)(v159, v69, v74);
    swift_arrayInitWithTakeFrontToBack();
    v80(v67, v81, v74);
    v67 += v157;
    v69 += v157;
    if (__CFADD__(v68++, 1))
    {
      goto LABEL_41;
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

void sub_19A67EFEC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v51 = sub_19A7A9094();
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v48 = &v39 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v50 = a3;
  v15 = (a2 - a1) / v13;
  v54 = a1;
  v53 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v26 = a4 + v17;
    if (v17 >= 1)
    {
      v27 = -v13;
      v42 = a4;
      v43 = (v8 + 16);
      v40 = (v8 + 8);
      v41 = a1;
      v28 = a4 + v17;
      v29 = v50;
      v44 = v27;
      do
      {
        v39 = v26;
        v30 = a2 + v27;
        v46 = a2 + v27;
        v47 = v26;
        v45 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v54 = a2;
            v26 = v39;
            goto LABEL_59;
          }

          v32 = v29;
          v50 = v29 + v27;
          v33 = v28 + v27;
          v34 = *v43;
          v35 = v48;
          v36 = v51;
          (*v43)(v48, v28 + v27, v51);
          v37 = v49;
          v34(v49, v30, v36);
          sub_19A681478(&unk_1EAFCD760, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
          LOBYTE(v34) = sub_19A7AAFA4();
          v38 = *v40;
          (*v40)(v37, v36);
          v38(v35, v36);
          if (v34)
          {
            break;
          }

          v29 = v50;
          if (v32 < v28 || v50 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v46;
            a1 = v41;
          }

          else
          {
            v30 = v46;
            a1 = v41;
            if (v32 != v28)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = v33;
          v28 = v33;
          v31 = v33 > v42;
          v27 = v44;
          a2 = v45;
          if (!v31)
          {
            v26 = v47;
            goto LABEL_58;
          }
        }

        v29 = v50;
        if (v32 < v45 || v50 >= v45)
        {
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v41;
        }

        else
        {
          a2 = v46;
          a1 = v41;
          if (v32 != v45)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v26 = v47;
        v27 = v44;
      }

      while (v28 > v42);
    }

LABEL_58:
    v54 = a2;
LABEL_59:
    v52 = v26;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v52 = a4 + v16;
    if (v16 >= 1 && a2 < v50)
    {
      v45 = *(v8 + 16);
      v46 = v8 + 16;
      v43 = v13;
      v44 = (v8 + 8);
      do
      {
        v19 = v48;
        v20 = v51;
        v21 = v45;
        (v45)(v48, a2, v51);
        v22 = v49;
        v21(v49, a4, v20);
        sub_19A681478(&unk_1EAFCD760, MEMORY[0x1E6969C28], MEMORY[0x1E6969C48]);
        LOBYTE(v21) = sub_19A7AAFA4();
        v23 = *v44;
        (*v44)(v22, v20);
        v23(v19, v20);
        if (v21)
        {
          v24 = v43;
          if (a1 < a2 || a1 >= &v43[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v24;
        }

        else
        {
          v24 = v43;
          v25 = &v43[a4];
          if (a1 < a4 || a1 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v53 = v25;
          a4 += v24;
        }

        a1 += v24;
        v54 = a1;
      }

      while (a4 < v47 && a2 < v50);
    }
  }

  sub_19A67FC94(&v54, &v53, &v52);
}

void sub_19A67F5E0(unint64_t a1, char *a2, char *a3, char *a4)
{
  v59 = a4;
  v7 = sub_19A7A9094();
  v63 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v64 = *(v18 + 72);
  if (!v64)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v64 == -1)
  {
    goto LABEL_67;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v64 == -1)
  {
    goto LABEL_68;
  }

  v20 = &a2[-a1] / v64;
  v67 = a1;
  v21 = v59;
  v66 = v59;
  if (v20 >= v19 / v64)
  {
    v24 = v19 / v64 * v64;
    if (v59 < a2 || &a2[v24] <= v59)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v59 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v35 = &v21[v24];
    if (v24 >= 1)
    {
      v36 = -v64;
      v55 = (v63 + 8);
      v56 = (v63 + 16);
      v37 = &v21[v24];
      v57 = -v64;
      v58 = a1;
      do
      {
        v63 = v35;
        v54 = v35;
        v38 = a2;
        v60 = a2;
        v61 = &a2[v36];
        while (1)
        {
          if (v38 <= a1)
          {
            v67 = v38;
            v65 = v54;
            goto LABEL_65;
          }

          v40 = a3;
          v41 = *v56;
          v64 = v37 + v36;
          (v41)(v11);
          v42 = v62;
          v41();
          v43 = sub_19A7A9064();
          if (v43 == sub_19A7A9064())
          {
            v44 = sub_19A7A9044();
            v45 = sub_19A7A9044();
          }

          else
          {
            v44 = sub_19A7A9064();
            v45 = sub_19A7A9064();
          }

          v46 = v44 < v45;
          v47 = v42;
          a3 = (v40 + v36);
          v48 = *v55;
          (*v55)(v47, v7);
          v49 = v11;
          v48(v11, v7);
          if (v46)
          {
            break;
          }

          v50 = v64;
          v51 = v64;
          v52 = v59;
          if (v40 < v37 || a3 >= v37)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v40 != v37)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v63 = v51;
          v37 = v51;
          v39 = v50 > v52;
          v11 = v49;
          v36 = v57;
          a1 = v58;
          v38 = v60;
          if (!v39)
          {
            a2 = v60;
            v35 = v63;
            goto LABEL_64;
          }
        }

        a2 = v61;
        v53 = v59;
        if (v40 < v60 || a3 >= v60)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v40 != v60)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v35 = v63;
        v36 = v57;
        a1 = v58;
      }

      while (v37 > v53);
    }

LABEL_64:
    v67 = a2;
    v65 = v35;
  }

  else
  {
    v22 = v20 * v64;
    v23 = v59;
    if (v59 < a1 || a1 + v22 <= v59)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v59 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a3;
    v62 = &v21[v22];
    v65 = &v21[v22];
    if (v22 >= 1 && a2 < a3)
    {
      v60 = *(v63 + 16);
      v63 += 16;
      v26 = (v63 - 8);
      do
      {
        v27 = v60;
        (v60)(v17, a2, v7);
        (v27)(v14, v23, v7);
        v28 = sub_19A7A9064();
        if (v28 == sub_19A7A9064())
        {
          v29 = sub_19A7A9044();
          v30 = sub_19A7A9044();
        }

        else
        {
          v29 = sub_19A7A9064();
          v30 = sub_19A7A9064();
        }

        v31 = v29 < v30;
        v32 = *v26;
        (*v26)(v14, v7);
        v32(v17, v7);
        if (v31)
        {
          v33 = v64;
          if (a1 < a2 || a1 >= &a2[v64])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v33;
        }

        else
        {
          v33 = v64;
          v34 = v23 + v64;
          if (a1 < v23 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v66 = v34;
          v23 += v33;
        }

        a1 += v33;
        v67 = a1;
      }

      while (v23 < v62 && a2 < v61);
    }
  }

LABEL_65:
  sub_19A67FC94(&v67, &v66, &v65);
}

uint64_t sub_19A67FBF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_19A67FC80(v3);
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

uint64_t sub_19A67FC94(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_19A7A9094();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_19A67FD78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6A0, &unk_19A7BB4F0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_19A67FECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a2)
  {

    sub_19A60EF74(a5, a6, a7);
  }
}

uint64_t sub_19A67FF34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60F860;

  return sub_19A7A2008(a1, v4, v5, v6, v7, v8);
}

void sub_19A67FFFC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager;
  *(v1 + v2) = [objc_opt_self() emojiKeyManager];
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_collectionView;
  if (qword_1ED8B2A98 != -1)
  {
    goto LABEL_4;
  }

  while (1)
  {
    v4 = qword_1ED8B2AA0;
    v5 = sub_19A75FAC8();
    v6 = [objc_allocWithZone(MEMORY[0x1E69DC7F0]) initWithFrame:v5 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    *(v1 + v3) = v6;
    *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_configuration) = 0;
    *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_imageGlyphDataSource) = v4;
    *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView____lazy_storage___dataSource) = 0;
    *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_didAcceptRestrictedDistributionTerms) = 0;
    *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_datasourceIsReadyTimeoutWorkItem) = 0;
    v7 = objc_opt_self();
    v8 = v4;
    v9 = [v7 categoryForType_];
    if (v9)
    {
      break;
    }

    __break(1u);
LABEL_4:
    swift_once();
  }

  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_category) = v9;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isSearching) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_wasSearching) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_searchResults) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView____lazy_storage___tapGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView____lazy_storage___longPressGestureRecognizer) = 0;
  v10 = (v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_touchOffsetForMovingCell);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hostAppID);
  *v11 = 0;
  v11[1] = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isDraggingInputView) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_currentSection) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasCompletedInitialDisplay) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasCompletedInitialLayout) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasCompletedInitialDataSourceUpdate) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_hasPlayedRippleAnimation) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_rippleAnimationTask) = 0;
  v12 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_flatColorCellIndex;
  v13 = sub_19A7A9094();
  v14 = *(*(v13 - 8) + 56);
  v14(v1 + v12, 1, 1, v13);
  v14(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_selectedIndexPath, 1, 1, v13);
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_feedbackGeneratorPartner) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView____lazy_storage___keylineView) = 0;
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_variantHelpView) = 0;
  sub_19A7ABE34();
  __break(1u);
}

void sub_19A6802FC(void *a1, uint64_t a2)
{
  v4 = sub_19A7A9094();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD6B0, &qword_19A7BB500);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  type metadata accessor for StickerCollectionViewCell(0);
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    v35 = v7;
    v36 = v13;
    v37 = a1;
    sub_19A6EB008();
    (*(v5 + 16))(v16, a2, v4);
    (*(v5 + 56))(v16, 0, 1, v4);
    v19 = OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_flatColorCellIndex;
    v20 = v38;
    swift_beginAccess();
    v21 = *(v8 + 48);
    sub_19A60F0CC(v16, v10, &unk_1EAFCF110, &unk_19A7B6AF0);
    sub_19A60F0CC(v20 + v19, &v10[v21], &unk_1EAFCF110, &unk_19A7B6AF0);
    v22 = *(v5 + 48);
    if (v22(v10, 1, v4) == 1)
    {
      sub_19A5F2B54(v16, &unk_1EAFCF110, &unk_19A7B6AF0);
      if (v22(&v10[v21], 1, v4) == 1)
      {
        sub_19A5F2B54(v10, &unk_1EAFCF110, &unk_19A7B6AF0);
LABEL_10:
        v30 = objc_opt_self();
        v25 = v37;
        v31 = v37;
        v32 = [v30 tertiarySystemFillColor];
        v33 = *(v18 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor);
        *(v18 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor) = v32;
        v26 = v32;

        sub_19A70FF44();
        goto LABEL_11;
      }
    }

    else
    {
      v23 = v36;
      sub_19A60F0CC(v10, v36, &unk_1EAFCF110, &unk_19A7B6AF0);
      if (v22(&v10[v21], 1, v4) != 1)
      {
        v27 = v35;
        (*(v5 + 32))(v35, &v10[v21], v4);
        sub_19A681478(&unk_1EAFCD6B8, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
        v28 = sub_19A7AAFD4();
        v29 = *(v5 + 8);
        v29(v27, v4);
        sub_19A5F2B54(v16, &unk_1EAFCF110, &unk_19A7B6AF0);
        v29(v23, v4);
        sub_19A5F2B54(v10, &unk_1EAFCF110, &unk_19A7B6AF0);
        if (v28)
        {
          goto LABEL_10;
        }

LABEL_8:
        v24 = *(v18 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor);
        *(v18 + OBJC_IVAR____TtC10StickerKit37BaseEmojiAndStickerCollectionViewCell_flatColor) = 0;
        v25 = v37;
        v26 = v37;

        sub_19A70FF44();
LABEL_11:

        return;
      }

      sub_19A5F2B54(v16, &unk_1EAFCF110, &unk_19A7B6AF0);
      (*(v5 + 8))(v23, v4);
    }

    sub_19A5F2B54(v10, &qword_1EAFCD6B0, &qword_19A7BB500);
    goto LABEL_8;
  }
}

void sub_19A6807C8()
{
  v1 = v0;
  if (qword_1EAFCA9A8 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCA9B0);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "handleTap", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging);
  *(v1 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isRearranging) = 0;

  sub_19A66E300(v6);
}

uint64_t sub_19A6808C4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23[-v3];
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23[-v13];
  *(v0 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_isDraggingInputView) = 0;
  sub_19A6768AC(v4);
  v15 = *(v6 + 48);
  if (v15(v4, 1, v5) == 1)
  {
    sub_19A7A9084();
    if (v15(v4, 1, v5) != 1)
    {
      sub_19A5F2B54(v4, &unk_1EAFCF110, &unk_19A7B6AF0);
    }
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
  }

  v16 = sub_19A677454();
  MEMORY[0x1EEE9AC00](v16);
  *&v23[-16] = v14;
  sub_19A66C2BC(sub_19A680BE4, &v23[-32], v17);
  if (*(v18 + 16))
  {
    (*(v6 + 16))(v8, v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

    (*(v6 + 32))(v11, v8, v5);
    sub_19A678758(v11);
    v19 = *(v0 + OBJC_IVAR____TtC10StickerKit34EmojiAndStickerCollectionInputView_emojiKeyManager);
    v20 = sub_19A7A9014();
    [v19 didVisitIndexPath:v20 withSender:v1];

    v21 = *(v6 + 8);
    v21(v11, v5);
    return (v21)(v14, v5);
  }

  else
  {

    return (*(v6 + 8))(v14, v5);
  }
}

uint64_t sub_19A680C30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_19A680CD0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD6C8, &unk_19A7C1D60) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_19A675E9C(v3, (v0 + v2), v4);
}

uint64_t sub_19A680D6C(uint64_t a1)
{
  v4 = *(sub_19A7A9094() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_19A60F860;

  return sub_19A6729EC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_19A680E70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_19A680EF0(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD710, &qword_19A7BB540) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD718, &qword_19A7BB548) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD720, &qword_19A7BB550) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = *(v13 + 64);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD708, &qword_19A7BB538) - 8);
  v17 = v3 + ((v14 + v15 + *(v16 + 80)) & ~*(v16 + 80));

  return sub_19A670B18(a1, a2, a3, v3 + v8, v3 + v11, v3 + v14, v17);
}

uint64_t sub_19A681124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD6F8, &qword_19A7BB528) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD6F0, &qword_19A7BB520) - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD700, &qword_19A7BB530) - 8);
  v17 = v4 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80));

  return sub_19A670D38(v16, a1, a2, a3, a4, v4 + v10, v4 + v13, v17);
}

uint64_t sub_19A6812C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60FB98;

  return sub_19A671AD0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19A6813B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_19A60FB98;

  return sub_19A7190D4(a1, v4, v5, v7, v6);
}

uint64_t sub_19A681478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A6814DC(uint64_t a1)
{
  result = MEMORY[0x19A9058E0](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_19A76001C(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19A6815D4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_19A681618()
{
  v1 = v0[3];
  v2 = v0[4];
  if (!v2)
  {
    v4 = (v0[2] + 64) >> 6;
    if (v4 <= v1 + 1)
    {
      v5 = v1 + 1;
    }

    else
    {
      v5 = (v0[2] + 64) >> 6;
    }

    v6 = v5 - 1;
    while (1)
    {
      v3 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        break;
      }

      if (v3 >= v4)
      {
        v7 = 0;
        v0[3] = v6;
        v0[4] = 0;
        return v7;
      }

      v2 = *(v0[1] + 8 * v3);
      ++v1;
      if (v2)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v3 = v0[3];
LABEL_10:
  v0[3] = v3;
  v0[4] = (v2 - 1) & v2;
  v7 = v0[5];
  if (__OFADD__(v7, 1))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v0[5] = v7 + 1;

  return v7;
}

uint64_t sub_19A6816F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19A60F0CC(a3, v25 - v10, &unk_1EAFCD690, &qword_19A7B6B00);
  v12 = sub_19A7AB394();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19A5F2B54(v11, &unk_1EAFCD690, &qword_19A7B6B00);
  }

  else
  {
    sub_19A7AB384();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19A7AB2E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19A7AB074() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19A6819F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19A60F0CC(a3, v25 - v10, &unk_1EAFCD690, &qword_19A7B6B00);
  v12 = sub_19A7AB394();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19A5F2B54(v11, &unk_1EAFCD690, &qword_19A7B6B00);
  }

  else
  {
    sub_19A7AB384();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19A7AB2E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_19A7AB074() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      type metadata accessor for JumpAndSlamAnimationHelper();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_19A5F2B54(v25[0], &unk_1EAFCD690, &qword_19A7B6B00);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  type metadata accessor for JumpAndSlamAnimationHelper();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19A681CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19A60F0CC(a3, v25 - v10, &unk_1EAFCD690, &qword_19A7B6B00);
  v12 = sub_19A7AB394();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19A5F2B54(v11, &unk_1EAFCD690, &qword_19A7B6B00);
  }

  else
  {
    sub_19A7AB384();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19A7AB2E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19A7AB074() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAA0, &qword_19A7BBA08);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDAA0, &qword_19A7BBA08);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19A682010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19A60F0CC(a3, v25 - v10, &unk_1EAFCD690, &qword_19A7B6B00);
  v12 = sub_19A7AB394();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19A5F2B54(v11, &unk_1EAFCD690, &qword_19A7B6B00);
  }

  else
  {
    sub_19A7AB384();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19A7AB2E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19A7AB074() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19A682308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_19A60F0CC(a3, v25 - v10, &unk_1EAFCD690, &qword_19A7B6B00);
  v12 = sub_19A7AB394();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_19A5F2B54(v11, &unk_1EAFCD690, &qword_19A7B6B00);
  }

  else
  {
    sub_19A7AB384();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_19A7AB2E4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_19A7AB074() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA20, &qword_19A7BB938);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_19A5F2B54(a3, &unk_1EAFCD690, &qword_19A7B6B00);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCDA20, &qword_19A7BB938);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_19A68261C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_19A6814D8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_19A69AAA4(v6);
  return sub_19A7ABD74();
}

id sub_19A682698(void *a1)
{
  v2 = sub_19A7A9304();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_19A7AACC4();
  v9 = v8;
  v10 = sub_19A7A8E14();
  sub_19A612F14(v7, v9);
  [v6 setData_];

  sub_19A7AAC74();
  sub_19A7A9284();
  (*(v3 + 8))(v5, v2);
  v11 = sub_19A7AAFE4();

  [v6 setType_];

  sub_19A7AAD14();
  [v6 setSize_];
  sub_19A7AACF4();
  v12 = sub_19A7AAFE4();

  [v6 setRole_];

  return v6;
}

uint64_t sub_19A682864()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCB1D0);
  __swift_project_value_buffer(v0, qword_1EAFCB1D0);
  return sub_19A7A9374();
}

uint64_t sub_19A6828E8()
{
  v1 = v0;
  v2 = sub_19A7A8F64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AddStickerError(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_19A6A0F08(v1, v8, type metadata accessor for AddStickerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v13 = *v8;
      v14 = v8[1];
      strcpy(v15, "InvalidUTI: ");
      BYTE5(v15[1]) = 0;
      HIWORD(v15[1]) = -5120;
      MEMORY[0x19A905510](v13, v14);

      return v15[0];
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      v15[0] = 0;
      v15[1] = 0xE000000000000000;
      sub_19A7ABCB4();

      v15[0] = 0xD00000000000001ALL;
      v15[1] = 0x800000019A7C8530;
      sub_19A6A1110(&qword_1EAFCCE28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v11 = sub_19A7AC024();
      MEMORY[0x19A905510](v11);

      v12 = v15[0];
      (*(v3 + 8))(v5, v2);
      return v12;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return 0xD000000000000017;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x20676E697373694DLL;
  }

  else
  {
    return 0xD000000000000023;
  }
}

void *Sticker.stk_representationForRole(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_19A7AAD94();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A906130](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (sub_19A7AACF4() == a1 && v11 == a2)
      {

        return v9;
      }

      v12 = sub_19A7AC064();

      if (v12)
      {

        return v9;
      }

      ++v7;
      if (v10 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return 0;
}

Swift::String __swiftcall Sticker.stk_stickerName()()
{
  v0 = sub_19A7AADC4();
  if (!v1)
  {
    v0 = sub_19A7AABF4();
    if (!v1)
    {
      v0 = sub_19A7AB0A4();
    }
  }

  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

void Sticker.stk_asAdaptiveImageGlyph()()
{
  v1 = v0;
  v87 = MEMORY[0x1E69E7CC0];
  v2 = sub_19A7AAEF4();
  v4 = v3;
  v5 = _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(v2, v3);
  sub_19A612F00(v2, v4);
  v84 = v5;
  if (!v5)
  {
    v84 = sub_19A69C220(MEMORY[0x1E69E7CC0]);
  }

  v83 = MEMORY[0x1E69E7CC0];
  v6 = &off_1F0DC4C70;
  v7 = 5;
  v85 = v1;
  do
  {
    v12 = *(v6 - 1);
    v11 = *v6;

    v13 = Sticker.stk_representationForRole(_:)(v12, v11);
    if (v13)
    {
      v14 = v13;
      v15 = sub_19A7AACC4();
      v17 = v16;
      v18 = sub_19A7A8E14();
      v19 = CGImageSourceCreateWithData(v18, 0);

      if (v19)
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v19, 0, 0);
        sub_19A612F14(v15, v17);

        if (ImageAtIndex)
        {

          v21 = objc_opt_self();
          sub_19A64EC2C(v84);
          v22 = sub_19A7AAF34();

          v23 = [v21 createEmojiStrikeWithImage:ImageAtIndex metadata:v22];

          v24 = v23;
          MEMORY[0x19A905660]();
          v1 = v85;
          if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19A7AB274();
          }

          sub_19A7AB2A4();

          v83 = v87;
          goto LABEL_6;
        }
      }

      else
      {

        sub_19A612F14(v15, v17);
      }

      v1 = v85;
    }

    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v25 = sub_19A7A9384();
    __swift_project_value_buffer(v25, qword_1EAFCB1D0);

    v26 = sub_19A7A9364();
    v27 = sub_19A7AB584();

    if (os_log_type_enabled(v26, v27))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v86 = v9;
      *v8 = 136315138;
      v10 = sub_19A62540C(v12, v11, &v86);

      *(v8 + 4) = v10;
      v1 = v85;
      _os_log_impl(&dword_19A5EE000, v26, v27, "Missing emoji representation for role %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x19A907A30](v9, -1, -1);
      MEMORY[0x19A907A30](v8, -1, -1);
    }

    else
    {
    }

LABEL_6:
    v6 += 2;
    --v7;
  }

  while (v7);
  v28 = v83;
  if (v83 >> 62)
  {
    if (sub_19A7ABBE4())
    {
      goto LABEL_51;
    }

LABEL_22:
    v29 = sub_19A7AAD94();
    if (v29 >> 62)
    {
      v31 = v29;
      v32 = sub_19A7ABBE4();
      v29 = v31;
      if (v32)
      {
        goto LABEL_24;
      }
    }

    else if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_24:
      if ((v29 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x19A906130](0);
        goto LABEL_27;
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v29 + 32);
LABEL_27:
        v6 = v30;

        goto LABEL_35;
      }

      __break(1u);
LABEL_73:
      swift_once();
LABEL_32:
      v35 = sub_19A7A9384();
      __swift_project_value_buffer(v35, qword_1EAFCB1D0);
      v36 = sub_19A7A9364();
      v37 = sub_19A7AB584();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_19A5EE000, v36, v37, "No UISticker still rep available, falling back to default.", v38, 2u);
        MEMORY[0x19A907A30](v38, -1, -1);
      }

      if (!v6)
      {
LABEL_48:
        if (v28 >> 62)
        {
          if (sub_19A7ABBE4())
          {
            goto LABEL_50;
          }
        }

        else if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_50:

          goto LABEL_51;
        }

        if (qword_1EAFCB1C8 != -1)
        {
          swift_once();
        }

        v75 = sub_19A7A9384();
        __swift_project_value_buffer(v75, qword_1EAFCB1D0);
        v76 = v1;
        v77 = sub_19A7A9364();
        v78 = sub_19A7AB584();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          *v79 = 138412290;
          *(v79 + 4) = v76;
          *v80 = v76;
          v81 = v76;
          _os_log_impl(&dword_19A5EE000, v77, v78, "No strikes available for Sticker: %@", v79, 0xCu);
          sub_19A5F2B54(v80, &unk_1EAFCD7D0, &qword_19A7BB5F0);
          MEMORY[0x19A907A30](v80, -1, -1);
          MEMORY[0x19A907A30](v79, -1, -1);
        }

        sub_19A69DE7C();
        swift_allocError();
        *v82 = 1;
        swift_willThrow();
        goto LABEL_70;
      }

LABEL_35:
      v39 = v6;
      v40 = sub_19A7AACC4();
      v42 = v41;
      v43 = sub_19A7A8E14();
      v44 = CGImageSourceCreateWithData(v43, 0);

      if (!v44)
      {

        sub_19A612F14(v40, v42);
        goto LABEL_48;
      }

      v45 = CGImageSourceCreateImageAtIndex(v44, 0, 0);
      sub_19A612F14(v40, v42);

      if (v45)
      {
        SquareSticker = _STKStickerCreateSquareSticker(v45, 0x140uLL);
        if (SquareSticker)
        {
          v47 = SquareSticker;
          v48 = objc_opt_self();
          sub_19A64EC2C(v84);
          v49 = sub_19A7AAF34();

          v50 = [v48 createEmojiStrikeWithImage:v47 metadata:v49];

          v51 = v50;
          MEMORY[0x19A905660]();
          if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19A7AB274();
          }

          sub_19A7AB2A4();

          v28 = v87;
          v1 = v85;
          goto LABEL_48;
        }

        if (qword_1EAFCB1C8 != -1)
        {
          swift_once();
        }

        v52 = sub_19A7A9384();
        __swift_project_value_buffer(v52, qword_1EAFCB1D0);
        v53 = sub_19A7A9364();
        v54 = sub_19A7AB584();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          *v55 = 0;
          _os_log_impl(&dword_19A5EE000, v53, v54, "Nil CGImage after creating square sticker", v55, 2u);
          MEMORY[0x19A907A30](v55, -1, -1);
        }
      }

      goto LABEL_48;
    }

    v33 = sub_19A7AACB4();
    v6 = Sticker.stk_representationForRole(_:)(v33, v34);

    if (qword_1EAFCB1C8 == -1)
    {
      goto LABEL_32;
    }

    goto LABEL_73;
  }

  if (!*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_51:
  v56 = sub_19A7AADC4();
  if (v57 || (v56 = sub_19A7AADA4(), v57))
  {
    v58 = v56;
    v59 = v57;
    goto LABEL_54;
  }

  v73 = sub_19A7AABF4();
  v59 = v74;
  if (!v74)
  {
    goto LABEL_57;
  }

  v58 = v73;
LABEL_54:
  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = v58 & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {
LABEL_57:
    sub_19A7AB0A4();
  }

  sub_19A683808();

  sub_19A7AB0A4();
  v61 = objc_allocWithZone(MEMORY[0x1E69655E0]);
  v62 = sub_19A7AAFE4();

  v63 = sub_19A7AAFE4();

  sub_19A5F5028(0, &qword_1EAFCA4E0, 0x1E69655E8);
  v64 = sub_19A7AB234();

  v6 = [v61 initWithContentIdentifier:v62 shortDescription:v63 strikeImages:v64];

  v65 = [v6 imageData];
  if (v65)
  {
    v66 = v65;
    v67 = sub_19A7A8E34();
    v69 = v68;

    v70 = objc_allocWithZone(MEMORY[0x1E69DB780]);
    v71 = sub_19A7A8E14();
    [v70 initWithImageContent_];

    sub_19A612F14(v67, v69);

    return;
  }

  sub_19A69DE7C();
  swift_allocError();
  *v72 = 1;
  swift_willThrow();

LABEL_70:
}

uint64_t sub_19A683808()
{
  v0 = sub_19A7A8F64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7AAEB4();
  v4 = sub_19A7AAEA4();
  v5 = sub_19A7AAEA4();
  MEMORY[0x19A905020]();
  v6 = sub_19A7A8F14();
  v8 = v7;
  (*(v1 + 8))(v3, v0);
  if (v4 != v5)
  {
    sub_19A7AAEB4();
    v13[0] = sub_19A7AAEA4();
    v9 = sub_19A7AC024();
    v11 = v10;
    v13[0] = v6;
    v13[1] = v8;

    MEMORY[0x19A905510](v9, v11);

    return v13[0];
  }

  return v6;
}

uint64_t Sticker.createSharingVC(sourceView:sourceRect:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *(v6 + 104) = v5;
  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 64) = a1;
  v7 = sub_19A7A8D44();
  *(v6 + 112) = v7;
  *(v6 + 120) = *(v7 - 8);
  *(v6 + 128) = swift_task_alloc();
  v8 = sub_19A7A8DF4();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();
  sub_19A7AB354();
  *(v6 + 160) = sub_19A7AB344();
  v9 = sub_19A7AB2E4();
  *(v6 + 168) = v9;
  *(v6 + 176) = v10;

  return MEMORY[0x1EEE6DFA0](sub_19A683B24, v9, v10);
}

uint64_t sub_19A683B24()
{
  v1 = sub_19A7AADE4();
  v4 = v1;
  if (v1)
  {
    if (sub_19A7AAC54())
    {
      v60 = sub_19A7AACC4();
      v61 = v5;

      v6 = NSTemporaryDirectory();
      if (!v6)
      {
        sub_19A7AB014();
        v6 = sub_19A7AAFE4();
      }

      v7 = *(v0 + 15);
      v8 = *(v0 + 16);
      v9 = *(v0 + 14);
      v10 = [objc_opt_self() fileURLWithPath_];

      sub_19A7A8D94();
      v0[2] = 4.92660551e204;
      v0[3] = -3.91910665e202;
      v59 = *MEMORY[0x1E6968F70];
      v58 = *(v7 + 104);
      v58(v8);
      sub_19A639920();
      sub_19A7A8DC4();
      v11 = *(v7 + 8);
      v11(v8, v9);
      v12 = sub_19A7AADA4();
      if (v13)
      {
        v14 = v12;
        v15 = v13;
      }

      else
      {
        v14 = sub_19A7AAE34();
        v15 = v16;
      }

      v17 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (!v17)
      {

        v15 = 0xEC00000072656B63;
        v14 = 0x697453206576694CLL;
      }

      v18 = objc_opt_self();
      v19 = [v18 defaultManager];
      sub_19A7A8DA4();
      v20 = sub_19A7AAFE4();

      v0[6] = 0.0;
      v21 = [v19 createDirectoryAtPath:v20 withIntermediateDirectories:1 attributes:0 error:v0 + 6];

      v22 = *(v0 + 6);
      if (v21)
      {
        v23 = v22;
      }

      else
      {
        v24 = v22;
        v25 = sub_19A7A8D34();

        swift_willThrow();
      }

      v26 = *(v0 + 16);
      v27 = *(v0 + 14);
      *(v0 + 4) = v14;
      *(v0 + 5) = v15;
      (v58)(v26, v59, v27);
      sub_19A7A8DC4();
      v11(v26, v27);

      sub_19A7A8D74();

      v28 = [v18 defaultManager];
      sub_19A7A8DA4();
      v29 = sub_19A7AAFE4();

      v0[7] = 0.0;
      v30 = [v28 removeItemAtPath:v29 error:v0 + 7];

      v31 = *(v0 + 7);
      if (v30)
      {
        v32 = v31;
      }

      else
      {
        v33 = v31;
        v34 = sub_19A7A8D34();

        swift_willThrow();
      }

      sub_19A7A8E44();
      v36 = *(v0 + 18);
      v35 = *(v0 + 19);
      v37 = *(v0 + 17);
      v39 = v0[11];
      v38 = v0[12];
      v41 = v0[9];
      v40 = v0[10];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7E0, &unk_19A7B6CB0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_19A7B6C30;
      *(v42 + 56) = v37;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v42 + 32));
      (*(v36 + 16))(boxed_opaque_existential_1, v35, v37);
      v44 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
      v45 = sub_19A7AB234();

      v46 = [v44 initWithActivityItems:v45 applicationActivities:0];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD7E8, &unk_19A7BB610);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_19A7B6C30;
      v48 = *MEMORY[0x1E69CDB18];
      *(v47 + 32) = *MEMORY[0x1E69CDB18];
      type metadata accessor for ActivityType(0);
      v49 = v48;
      v50 = sub_19A7AB234();

      [v46 setExcludedActivityTypes_];

      v51 = v46;
      v52 = [v51 popoverPresentationController];
      [v52 setSourceRect_];

      v53 = [v51 popoverPresentationController];
      v54 = *(v0 + 18);
      v55 = *(v0 + 19);
      v56 = *(v0 + 17);
      if (v53)
      {
        [v53 setSourceView_];

        sub_19A612F14(v60, v61);
        (*(v54 + 8))(v55, v56);
      }

      else
      {
        (*(v54 + 8))(*(v0 + 19), *(v0 + 17));
        sub_19A612F14(v60, v61);
      }

      v57 = *(v0 + 1);

      return v57(v51);
    }
  }

  v0[23] = 0.0;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_19A68423C;

  return sub_19A684AE8();
}

uint64_t sub_19A68423C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 200) = a1;
  *(v4 + 208) = a2;

  v5 = *(v3 + 176);
  v6 = *(v3 + 168);

  return MEMORY[0x1EEE6DFA0](sub_19A684398, v6, v5);
}

uint64_t sub_19A684398()
{
  v1 = *(v0 + 26);

  if (v1 >> 60 == 15)
  {
    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v2 = sub_19A7A9384();
    __swift_project_value_buffer(v2, qword_1EAFCB1D0);
    v3 = sub_19A7A9364();
    v4 = sub_19A7AB584();
    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 25);
      v5 = *(v0 + 26);
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_19A5EE000, v3, v4, "Error creating sharable items for Sticker, bailing", v7, 2u);
      MEMORY[0x19A907A30](v7, -1, -1);
      sub_19A612F00(v6, v5);
    }

    v8 = 0;
  }

  else
  {
    v65 = *(v0 + 25);
    v66 = *(v0 + 26);
    v9 = *(v0 + 23);
    v10 = NSTemporaryDirectory();
    if (!v10)
    {
      sub_19A7AB014();
      v10 = sub_19A7AAFE4();
    }

    v11 = *(v0 + 15);
    v12 = *(v0 + 16);
    v13 = *(v0 + 14);
    v14 = [objc_opt_self() fileURLWithPath_];

    sub_19A7A8D94();
    v0[2] = 4.92660551e204;
    v0[3] = -3.91910665e202;
    v64 = *MEMORY[0x1E6968F70];
    v63 = *(v11 + 104);
    v63(v12);
    sub_19A639920();
    sub_19A7A8DC4();
    v62 = *(v11 + 8);
    v62(v12, v13);
    v15 = sub_19A7AADA4();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
    }

    else
    {
      v17 = sub_19A7AAE34();
      v18 = v19;
    }

    v20 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v20 = v17 & 0xFFFFFFFFFFFFLL;
    }

    if (!v20)
    {

      sub_19A7AABC4();
      v17 = sub_19A7AB0A4();
      v18 = v21;
    }

    v22 = objc_opt_self();
    v23 = [v22 defaultManager];
    sub_19A7A8DA4();
    v24 = sub_19A7AAFE4();

    v0[6] = 0.0;
    v25 = [v23 createDirectoryAtPath:v24 withIntermediateDirectories:1 attributes:0 error:v0 + 6];

    v26 = *(v0 + 6);
    if (v25)
    {
      v27 = v26;
    }

    else
    {
      v28 = v26;
      v29 = sub_19A7A8D34();

      swift_willThrow();
      v9 = 0;
    }

    v30 = *(v0 + 16);
    v31 = *(v0 + 14);
    *(v0 + 4) = v17;
    *(v0 + 5) = v18;
    (v63)(v30, v64, v31);
    sub_19A7A8DC4();
    v62(v30, v31);

    sub_19A7A8D74();

    v32 = [v22 defaultManager];
    sub_19A7A8DA4();
    v33 = sub_19A7AAFE4();

    v0[7] = 0.0;
    v34 = [v32 removeItemAtPath:v33 error:v0 + 7];

    v35 = *(v0 + 7);
    if (v34)
    {
      v36 = v35;
    }

    else
    {
      v37 = v35;
      v38 = sub_19A7A8D34();

      swift_willThrow();
      v9 = 0;
    }

    sub_19A7A8E44();
    if (v9)
    {
    }

    v40 = *(v0 + 18);
    v39 = *(v0 + 19);
    v41 = *(v0 + 17);
    v43 = v0[11];
    v42 = v0[12];
    v45 = v0[9];
    v44 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD7E0, &unk_19A7B6CB0);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_19A7B6C30;
    *(v46 + 56) = v41;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v46 + 32));
    (*(v40 + 16))(boxed_opaque_existential_1, v39, v41);
    v48 = objc_allocWithZone(MEMORY[0x1E69CD9F8]);
    v49 = sub_19A7AB234();

    v50 = [v48 initWithActivityItems:v49 applicationActivities:0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD7E8, &unk_19A7BB610);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_19A7B6C30;
    v52 = *MEMORY[0x1E69CDB18];
    *(v51 + 32) = *MEMORY[0x1E69CDB18];
    type metadata accessor for ActivityType(0);
    v53 = v52;
    v54 = sub_19A7AB234();

    [v50 setExcludedActivityTypes_];

    v8 = v50;
    v55 = [v8 popoverPresentationController];
    [v55 setSourceRect_];

    v56 = [v8 popoverPresentationController];
    v57 = *(v0 + 18);
    v58 = *(v0 + 19);
    v59 = *(v0 + 17);
    if (v56)
    {
      [v56 setSourceView_];

      sub_19A612F14(v65, v66);
      (*(v57 + 8))(v58, v59);
    }

    else
    {
      (*(v57 + 8))(*(v0 + 19), *(v0 + 17));
      sub_19A612F14(v65, v66);
    }
  }

  v60 = *(v0 + 1);

  return v60(v8);
}

uint64_t sub_19A684AE8()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_19A684B78;

  return sub_19A68B2B8();
}

uint64_t sub_19A684B78(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A684C78, 0, 0);
}

uint64_t sub_19A684C78()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v7 = 0;
    v9 = 0xF000000000000000;
    goto LABEL_12;
  }

  v2 = v1;
  v3 = sub_19A7AAEF4();
  v5 = v4;
  v6 = [v2 itk_HEICData];
  v7 = sub_19A7A8E34();
  v9 = v8;

  if (v5 >> 60 != 15)
  {
    sub_19A612F68(v7, v9);
    sub_19A612F68(v7, v9);
    sub_19A69E0F4(v3, v5);
    v10 = sub_19A7A8E14();
    v11 = CGImageSourceCreateWithData(v10, 0);

    if (v11)
    {
      sub_19A612F68(v3, v5);
      v12 = _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(v3, v5);
      sub_19A612F00(v3, v5);
      if (v12)
      {
        v13 = sub_19A7472D0(v11, v12);
        v15 = v14;
        sub_19A612F14(v7, v9);
        sub_19A612F00(v3, v5);

LABEL_10:
        sub_19A612F14(v7, v9);
        sub_19A612F14(v7, v9);
        sub_19A612F00(v3, v5);
        v7 = v13;
        v9 = v15;
        goto LABEL_11;
      }

      sub_19A612F14(v7, v9);
      sub_19A612F00(v3, v5);
    }

    else
    {
      sub_19A612F14(v7, v9);
      sub_19A612F00(v3, v5);
    }

    v13 = 0;
    v15 = 0xF000000000000000;
    goto LABEL_10;
  }

LABEL_11:

LABEL_12:
  v16 = *(v0 + 8);

  return v16(v7, v9);
}

uint64_t _UISticker.emojiAssetIdentifier.getter()
{
  v1 = [v0 effectType];
  v2 = [v0 identifier];
  v3 = sub_19A7AB014();

  if ((v1 & 0x8000000000000000) == 0)
  {
    [v0 effectType];
    v4 = sub_19A7AC024();
    v6 = v5;

    MEMORY[0x19A905510](v4, v6);
  }

  return v3;
}

id _UISticker.stk_asEmojiTextAttachment()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v91 - v3;
  v5 = sub_19A7AB394();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_19A7AB354();
  v6 = sub_19A7AB344();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  *(v7 + 16) = v6;
  *(v7 + 24) = v8;
  sub_19A6819F0(0, 0, v4, &unk_19A7BB628, v7);

  v97 = MEMORY[0x1E69E7CC0];
  v9 = [v1 metadata];
  if (v9)
  {
    v10 = v9;
    v11 = sub_19A7A8E34();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0xF000000000000000;
  }

  v14 = _s10StickerKit19EmojiMetadataHelperC18metadataDictionary8fromDataSDySSypGSg10Foundation0I0VSg_tFZ_0(v11, v13);
  sub_19A612F00(v11, v13);
  v93 = v14;
  if (!v14)
  {
    v93 = sub_19A69C220(MEMORY[0x1E69E7CC0]);
  }

  v92 = MEMORY[0x1E69E7CC0];
  v16 = &off_1F0DC4C70;
  v17 = 5;
  *&v15 = 136315138;
  v94 = v15;
  v95 = v1;
  do
  {
    v22 = *(v16 - 1);
    v21 = *v16;

    v23 = sub_19A685C40(v22, v21);
    if (v23)
    {
      v24 = v23;
      v25 = [v23 data];
      v26 = sub_19A7A8E34();
      v28 = v27;

      v29 = sub_19A7A8E14();
      v30 = CGImageSourceCreateWithData(v29, 0);

      if (v30)
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v30, 0, 0);
        sub_19A612F14(v26, v28);

        if (ImageAtIndex)
        {

          v32 = objc_opt_self();
          sub_19A64EC2C(v93);
          v33 = sub_19A7AAF34();

          v34 = [v32 createEmojiStrikeWithImage:ImageAtIndex metadata:v33];

          v35 = v34;
          MEMORY[0x19A905660]();
          v1 = v95;
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19A7AB274();
          }

          sub_19A7AB2A4();

          v92 = v97;
          goto LABEL_9;
        }
      }

      else
      {

        sub_19A612F14(v26, v28);
      }

      v1 = v95;
    }

    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v36 = sub_19A7A9384();
    __swift_project_value_buffer(v36, qword_1EAFCB1D0);

    v37 = sub_19A7A9364();
    v38 = sub_19A7AB584();

    if (os_log_type_enabled(v37, v38))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v96 = v19;
      *v18 = v94;
      v20 = sub_19A62540C(v22, v21, &v96);

      *(v18 + 4) = v20;
      v1 = v95;
      _os_log_impl(&dword_19A5EE000, v37, v38, "missing emoji rep for role %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x19A907A30](v19, -1, -1);
      MEMORY[0x19A907A30](v18, -1, -1);
    }

    else
    {
    }

LABEL_9:
    v16 += 2;
    --v17;
  }

  while (v17);
  v39 = v92;
  if (v92 >> 62)
  {
    if (!sub_19A7ABBE4())
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_40:
    v59 = [v1 bakedInRep];
    if (v59)
    {
      goto LABEL_49;
    }

    v60 = sub_19A7AAC84();
    v59 = sub_19A685C40(v60, v61);

    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v62 = sub_19A7A9384();
    __swift_project_value_buffer(v62, qword_1EAFCB1D0);
    v63 = sub_19A7A9364();
    v64 = sub_19A7AB584();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_19A5EE000, v63, v64, "No UISticker baked in rep avaialble, falling back to non-effect still image.", v65, 2u);
      MEMORY[0x19A907A30](v65, -1, -1);
    }

    if (v59)
    {
      goto LABEL_49;
    }

    v66 = sub_19A7AACB4();
    v59 = sub_19A685C40(v66, v67);

    v68 = sub_19A7A9364();
    v69 = sub_19A7AB584();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_19A5EE000, v68, v69, "No UISticker still rep avaialble, falling back to default.", v70, 2u);
      MEMORY[0x19A907A30](v70, -1, -1);
    }

    if (v59)
    {
LABEL_49:
      v71 = [v59 data];
      v72 = sub_19A7A8E34();
      v74 = v73;

      v75 = sub_19A7A8E14();
      v76 = CGImageSourceCreateWithData(v75, 0);

      if (v76)
      {
        v77 = CGImageSourceCreateImageAtIndex(v76, 0, 0);
        sub_19A612F14(v72, v74);

        if (v77)
        {
          SquareSticker = _UIStickerCreateSquareSticker();
          v79 = objc_opt_self();
          sub_19A64EC2C(v93);
          v80 = sub_19A7AAF34();

          v81 = [v79 createEmojiStrikeWithImage:SquareSticker metadata:v80];

          v82 = v81;
          MEMORY[0x19A905660]();
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_19A7AB274();
          }

          sub_19A7AB2A4();

          v39 = v97;
        }

        else
        {
        }
      }

      else
      {

        sub_19A612F14(v72, v74);
      }
    }
  }

LABEL_25:
  if (v39 >> 62)
  {
    if (!sub_19A7ABBE4())
    {
      goto LABEL_57;
    }

LABEL_27:
    v40 = [v1 accessibilityName];
    if (!v40)
    {
      v40 = [v1 sanitizedPrompt];
      if (!v40)
      {
        v40 = [v1 searchText];
        if (!v40)
        {
          goto LABEL_32;
        }
      }
    }

    v41 = v40;
    v42 = sub_19A7AB014();
    v44 = v43;

    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v42 & 0xFFFFFFFFFFFFLL;
    }

    if (!v45)
    {
LABEL_32:
      sub_19A7AB0A4();
    }

    _UISticker.emojiAssetIdentifier.getter();

    sub_19A7AB0A4();
    v46 = objc_allocWithZone(MEMORY[0x1E69655E0]);
    v47 = sub_19A7AAFE4();

    v48 = sub_19A7AAFE4();

    sub_19A5F5028(0, &qword_1EAFCA4E0, 0x1E69655E8);
    v49 = sub_19A7AB234();

    v50 = [v46 initWithContentIdentifier:v47 shortDescription:v48 strikeImages:v49];

    v51 = [v50 imageData];
    if (v51)
    {
      v52 = v51;
      v53 = sub_19A7A8E34();
      v55 = v54;

      v56 = objc_allocWithZone(MEMORY[0x1E69DB7B0]);
      v57 = sub_19A7A8E14();
      v48 = [v56 initWithData_];

      sub_19A612F14(v53, v55);
    }

    else
    {
      sub_19A69DE7C();
      swift_allocError();
      *v58 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

LABEL_57:

    if (qword_1EAFCB1C8 != -1)
    {
      swift_once();
    }

    v83 = sub_19A7A9384();
    __swift_project_value_buffer(v83, qword_1EAFCB1D0);
    v48 = v1;
    v84 = sub_19A7A9364();
    v85 = sub_19A7AB584();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      *v86 = 138412290;
      *(v86 + 4) = v48;
      *v87 = v48;
      v88 = v48;
      _os_log_impl(&dword_19A5EE000, v84, v85, "No strikes avaialable for _UISticker: %@", v86, 0xCu);
      sub_19A5F2B54(v87, &unk_1EAFCD7D0, &qword_19A7BB5F0);
      MEMORY[0x19A907A30](v87, -1, -1);
      MEMORY[0x19A907A30](v86, -1, -1);
    }

    sub_19A69DE7C();
    swift_allocError();
    *v89 = 1;
    swift_willThrow();
  }

  return v48;
}

uint64_t sub_19A685AFC(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_19A7AB354();
  *(v1 + 24) = sub_19A7AB344();
  v3 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A685B94, v3, v2);
}

uint64_t sub_19A685B94()
{

  if (qword_1ED8B3548 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8B42B8;
  **(v0 + 16) = qword_1ED8B42B8;
  v4 = *(v0 + 8);
  v2 = v1;

  return v4();
}

void *sub_19A685C40(uint64_t a1, uint64_t a2)
{
  v5 = [v2 representations];
  sub_19A5F5028(0, &qword_1ED8B2000, 0x1E69DD760);
  v6 = sub_19A7AB254();

  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x19A906130](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 role];
      if (v12)
      {
        v13 = v12;
        v14 = a2;
        v15 = sub_19A7AB014();
        v17 = v16;

        if (v15 == a1 && v17 == v14)
        {

LABEL_18:

          return v10;
        }

        a2 = v14;
        v19 = sub_19A7AC064();

        if (v19)
        {
          goto LABEL_18;
        }
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_22:

  return 0;
}

id sub_19A685E20(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

uint64_t _UISticker.stk_renderBakedInRepIfNecessary(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_19A7AB394();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = a1;
  v9[6] = a2;
  v10 = v2;

  sub_19A6816F0(0, 0, v7, &unk_19A7BB638, v9);
}