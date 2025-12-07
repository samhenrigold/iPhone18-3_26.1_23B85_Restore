void sub_19A764FD4(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    if (a2)
    {
      v11 = OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerObserver;
      swift_beginAccess();
      sub_19A6A60B4(v10 + v11, &v26);
      if (*(&v27 + 1))
      {
        sub_19A625DC4(&v26, &aBlock);
        __swift_project_boxed_opaque_existential_1(&aBlock, v23);
        v12 = a3;
        [v12 removeTimeObserver_];
        swift_unknownObjectRelease();

        v26 = 0u;
        v27 = 0u;
        swift_beginAccess();
        sub_19A765C0C(&v26, v10 + v11);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&aBlock);
      }

      else
      {
        sub_19A5F2B54(&v26, &unk_1EAFCD750, &unk_19A7B87D0);
      }

      [a4 play];
      v13 = objc_opt_self();
      v14 = swift_allocObject();
      *(v14 + 16) = a5;
      v24 = sub_19A6F1328;
      v25 = v14;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v22 = sub_19A6815D4;
      v23 = &block_descriptor_67;
      v15 = _Block_copy(&aBlock);
      v16 = a5;

      v17 = swift_allocObject();
      *(v17 + 16) = v10;
      *(v17 + 24) = v16;
      v24 = sub_19A765C7C;
      v25 = v17;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v22 = sub_19A765D14;
      v23 = &block_descriptor_73;
      v18 = _Block_copy(&aBlock);
      v19 = v16;
      v20 = v10;

      [v13 animateWithDuration:v15 animations:v18 completion:0.25];
      _Block_release(v18);
      _Block_release(v15);
    }
  }
}

void sub_19A765290(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView;
  [*(*(a2 + OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView) + OBJC_IVAR____TtC10StickerKit10PlayerView_player) pause];
  [*(a2 + v5) setHidden_];
  [*(a2 + v5) removeFromSuperview];
  v7 = *(a2 + v5);
  *(a2 + v5) = a3;
  v6 = a3;
}

void sub_19A765330()
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = *(*(v0 + OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView) + OBJC_IVAR____TtC10StickerKit10PlayerView_player);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 sharedInstance];
    v5 = *MEMORY[0x1E6958068];
    v6 = *MEMORY[0x1E6958130];
    v16 = 0;
    v7 = [v4 setCategory:v5 mode:v6 options:1 error:&v16];

    if (v7)
    {
      v8 = v16;
    }

    else
    {
      v9 = v16;
      v10 = sub_19A7A8D34();

      swift_willThrow();
    }

    [v3 play];
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = sub_19A765BC0;
    v21 = v12;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_19A6815D4;
    v19 = &block_descriptor_40_1;
    v13 = _Block_copy(&v16);

    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = sub_19A765BE0;
    v21 = v14;
    v16 = MEMORY[0x1E69E9820];
    v17 = 1107296256;
    v18 = sub_19A765D14;
    v19 = &block_descriptor_44_0;
    v15 = _Block_copy(&v16);

    [v11 animateWithDuration:v13 animations:v15 completion:0.2];
    _Block_release(v15);
    _Block_release(v13);
  }
}

void sub_19A7655C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC10StickerKit13LivePhotoView_stillImageView);

    [v4 setHidden_];
  }
}

void sub_19A765640()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC10StickerKit13LivePhotoView_playerView) + OBJC_IVAR____TtC10StickerKit10PlayerView_player);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = sub_19A765B90;
    v15 = v3;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_19A6815D4;
    v13 = &block_descriptor_33;
    v4 = _Block_copy(&v10);
    v5 = v1;

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = v5;
    v14 = sub_19A765BB8;
    v15 = v7;
    v10 = MEMORY[0x1E69E9820];
    v11 = 1107296256;
    v12 = sub_19A765D14;
    v13 = &block_descriptor_36;
    v8 = _Block_copy(&v10);
    v9 = v5;

    [v2 animateWithDuration:v4 animations:v8 completion:0.2];
    _Block_release(v8);
    _Block_release(v4);
  }
}

void sub_19A765828(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC10StickerKit13LivePhotoView_stillImageView);

    [v5 setAlpha_];
  }
}

id sub_19A7658B0(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC10StickerKit13LivePhotoView_stillImageView);

    [v6 setHidden_];
  }

  [a3 pause];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v9[0] = *MEMORY[0x1E6960CC0];
  v9[1] = *(MEMORY[0x1E6960CC0] + 8);
  v9[2] = v7;
  return [a3 seekToTime_];
}

void sub_19A76597C()
{
  v1 = [v0 image];
  if (v1)
  {
    v2 = v1;
    if ([v0 contentMode] == 1 && (objc_msgSend(v2, sel_size), v3 > 0.0) && (objc_msgSend(v2, sel_size), v4 > 0.0))
    {
      [v2 size];
      v6 = v5;
      [v2 size];
      v8 = v7;
      [v0 bounds];
      if (v8 >= v6)
      {
        CGRectGetHeight(*&v9);
      }

      else
      {
        CGRectGetWidth(*&v9);
      }

      [v2 size];
      [v2 size];
      [v2 size];
      [v0 bounds];
      CGRectGetWidth(v13);
      [v0 bounds];
      CGRectGetHeight(v14);
    }

    else
    {
      [v0 bounds];
    }
  }

  else
  {
    [v0 bounds];
  }
}

uint64_t sub_19A765C0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD750, &unk_19A7B87D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_19A765C84()
{
  result = qword_1EAFCBE18;
  if (!qword_1EAFCBE18)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCBE18);
  }

  return result;
}

id ImageGlyph.__allocating_init(stickerUUID:stickerEffectType:stickerSourceType:avatarIdentifier:poseIdentifier:emoji:emojiString:indexPath:character:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v55 = a7;
  v54 = a6;
  v53 = a5;
  v52 = a4;
  v51 = a3;
  v50 = a2;
  v61 = a11;
  v56 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v58 = &v49 - v17;
  v59 = sub_19A7A9094();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v49 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v13;
  v19 = objc_allocWithZone(v13);
  v20 = *a8;
  v21 = a8[1];
  v22 = a8[2];
  v23 = a8[3];
  v24 = a8[4];
  v25 = a8[5];
  v26 = *(a8 + 24);
  v27 = &v19[OBJC_IVAR___STKImageGlyph_optionalData];
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  *&v19[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
  v19[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
  v62 = a1;
  sub_19A60F0CC(a1, &v19[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800, &qword_19A7BCE60);
  *&v19[OBJC_IVAR___STKImageGlyph_stickerEffectType] = v50;
  *&v19[OBJC_IVAR___STKImageGlyph_stickerSourceType] = v51;
  v28 = &v19[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
  v29 = v53;
  *v28 = v52;
  v28[1] = v29;
  v30 = &v19[OBJC_IVAR___STKImageGlyph_poseIdentifier];
  v31 = v55;
  *v30 = v54;
  v30[1] = v31;
  v32 = &v19[OBJC_IVAR___STKImageGlyph_emoji];
  *v32 = v20;
  *(v32 + 1) = v21;
  *(v32 + 2) = v22;
  *(v32 + 3) = v23;
  *(v32 + 4) = v24;
  *(v32 + 5) = v25;
  *(v32 + 24) = v26;
  if (v21)
  {
    *&v63 = v20;
    *(&v63 + 1) = v21;
    *&v64 = v22;
    *(&v64 + 1) = v23;
    *&v65 = v24;
    *(&v65 + 1) = v25;
    v66 = v26 & 0x1FF;
    v67[0] = v20;
    v67[1] = v21;
    v67[2] = v22;
    v67[3] = v23;
    v67[4] = v24;
    v67[5] = v25;
    v68 = v26;
    sub_19A60F01C(v67, v69);
    sub_19A7862FC(0);
    v34 = v33;
    v36 = v35;
    v69[0] = v63;
    v69[1] = v64;
    v69[2] = v65;
    v70 = v66;
    sub_19A60F078(v69);
  }

  else
  {
    v34 = a9;
    v36 = v56;
  }

  v37 = &v19[OBJC_IVAR___STKImageGlyph_emojiString];
  *v37 = v34;
  v37[1] = v36;
  v38 = v61;
  v39 = v58;
  sub_19A60F0CC(v61, v58, &unk_1EAFCF110, &unk_19A7B6AF0);
  v40 = v57;
  v41 = v59;
  if ((*(v57 + 48))(v39, 1, v59) == 1)
  {
    sub_19A5F2B54(v39, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  else
  {
    v42 = v49;
    (*(v40 + 32))(v49, v39, v41);
    v43 = sub_19A76DC5C();
    v45 = v44;
    (*(v40 + 8))(v42, v41);
    *v27 = v43;
    v27[1] = v45;
  }

  v46 = &v19[OBJC_IVAR___STKImageGlyph_character];
  *v46 = a12;
  v46[1] = a13;
  v71.receiver = v19;
  v71.super_class = v60;
  v47 = objc_msgSendSuper2(&v71, sel_init);
  sub_19A5F2B54(v38, &unk_1EAFCF110, &unk_19A7B6AF0);
  sub_19A5F2B54(v62, &qword_1EAFCD800, &qword_19A7BCE60);
  return v47;
}

void *sub_19A76617C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x19A906130](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_19A766294()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCF8D8);
  __swift_project_value_buffer(v0, qword_1EAFCF8D8);
  return sub_19A7A9374();
}

unint64_t sub_19A766330@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_19A770F18(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_19A766384@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_19A76F530(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_19A7663D0(uint64_t a1)
{
  v2 = sub_19A7669B0() - 1;
  if (v2 > 3)
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  else
  {
    v3 = *&aSticker_9[8 * v2];
    v4 = *&aCharacte[8 * v2 + 8];
  }

  v25 = v3;
  v26 = v4;
  sub_19A7675C8();
  if (v6)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0xE000000000000000;
  if (v6)
  {
    v8 = v6;
  }

  v27 = v7;
  v28 = v8;
  v9 = *(v1 + OBJC_IVAR___STKImageGlyph_stickerSourceType) - 1;
  if (v9 > 5)
  {
    v11 = 0xE700000000000000;
    v10 = 0x6E776F6E6B6E75;
  }

  else
  {
    v10 = *&aUsercontrecent[8 * v9];
    v11 = *&aThirdpargenera[8 * v9 + 16];
  }

  v29 = v10;
  v30 = v11;
  v12 = *(v1 + OBJC_IVAR___STKImageGlyph_optionalData + 8);
  v31 = *(v1 + OBJC_IVAR___STKImageGlyph_optionalData);
  v32 = v12;

  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
LABEL_13:
  if (v13 <= 4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v13;
  }

  v16 = v15 + 1;
  v17 = 16 * v13 + 40;
  while (1)
  {
    if (v13 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAFCEEB0, &unk_19A7B9800);
      swift_arrayDestroy();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0, &qword_19A7BE0D0);
      sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0, &qword_19A7BE0D0, MEMORY[0x1E69E6310]);
      sub_19A7AAF94();

      return;
    }

    if (v16 == ++v13)
    {
      break;
    }

    v18 = v17 + 16;
    v19 = *&v24[v17];
    v17 += 16;
    if (v19)
    {
      v20 = *&v24[v18 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_19A5F61A0(0, *(v14 + 2) + 1, 1, v14);
      }

      v22 = *(v14 + 2);
      v21 = *(v14 + 3);
      if (v22 >= v21 >> 1)
      {
        v14 = sub_19A5F61A0((v21 > 1), v22 + 1, 1, v14);
      }

      *(v14 + 2) = v22 + 1;
      v23 = &v14[16 * v22];
      *(v23 + 4) = v20;
      *(v23 + 5) = v19;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t ImageGlyph.avatarIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___STKImageGlyph_avatarIdentifier);

  return v1;
}

uint64_t ImageGlyph.poseIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___STKImageGlyph_poseIdentifier);

  return v1;
}

uint64_t ImageGlyph.emojiString.getter()
{
  v1 = *(v0 + OBJC_IVAR___STKImageGlyph_emojiString);

  return v1;
}

id sub_19A7668D4(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_19A7AAFE4();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t ImageGlyph.character.getter()
{
  v1 = *(v0 + OBJC_IVAR___STKImageGlyph_character);

  return v1;
}

uint64_t sub_19A7669B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  sub_19A60F0CC(v0 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v8 - v2, &qword_1EAFCD800, &qword_19A7BCE60);
  v4 = sub_19A7A8F64();
  v5 = 1;
  v6 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  sub_19A5F2B54(v3, &qword_1EAFCD800, &qword_19A7BCE60);
  if (v6 == 1)
  {
    if (*(v0 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8))
    {
      return 2;
    }

    else if (*(v0 + OBJC_IVAR___STKImageGlyph_emoji + 8) || *(v0 + OBJC_IVAR___STKImageGlyph_emojiString + 8))
    {
      return 3;
    }

    else
    {
      return 4 * (*(v0 + OBJC_IVAR___STKImageGlyph_character + 8) != 0);
    }
  }

  return v5;
}

BOOL sub_19A766B4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  sub_19A60F0CC(v0 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v7 - v2, &qword_1EAFCD800, &qword_19A7BCE60);
  v4 = sub_19A7A8F64();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  sub_19A5F2B54(v3, &qword_1EAFCD800, &qword_19A7BCE60);
  return v5 == 1 && !*(v0 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8) && !*(v0 + OBJC_IVAR___STKImageGlyph_emoji + 8) && !*(v0 + OBJC_IVAR___STKImageGlyph_emojiString + 8) && *(v0 + OBJC_IVAR___STKImageGlyph_character + 8) == 0;
}

id ImageGlyph.init(stickerUUID:stickerEffectType:stickerSourceType:avatarIdentifier:poseIdentifier:emoji:emojiString:indexPath:character:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  v57 = a7;
  v56 = a6;
  v55 = a5;
  v54 = a4;
  v53 = a3;
  v52 = a2;
  v62 = a11;
  v58 = a10;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v60 = &v50 - v18;
  v61 = sub_19A7A9094();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v51 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a8;
  v20 = a8[1];
  v22 = a8[2];
  v23 = a8[3];
  v24 = a8[4];
  v25 = a8[5];
  v26 = *(a8 + 24);
  v27 = &v14[OBJC_IVAR___STKImageGlyph_optionalData];
  *v27 = 0;
  v27[1] = 0xE000000000000000;
  *&v14[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
  v14[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
  v63 = a1;
  sub_19A60F0CC(a1, &v14[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800, &qword_19A7BCE60);
  *&v14[OBJC_IVAR___STKImageGlyph_stickerEffectType] = v52;
  *&v14[OBJC_IVAR___STKImageGlyph_stickerSourceType] = v53;
  v28 = &v14[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
  v29 = v55;
  *v28 = v54;
  v28[1] = v29;
  v30 = &v14[OBJC_IVAR___STKImageGlyph_poseIdentifier];
  v31 = v57;
  *v30 = v56;
  v30[1] = v31;
  v32 = &v14[OBJC_IVAR___STKImageGlyph_emoji];
  *v32 = v21;
  *(v32 + 1) = v20;
  *(v32 + 2) = v22;
  *(v32 + 3) = v23;
  *(v32 + 4) = v24;
  *(v32 + 5) = v25;
  *(v32 + 24) = v26;
  if (v20)
  {
    *&v64 = v21;
    *(&v64 + 1) = v20;
    *&v65 = v22;
    *(&v65 + 1) = v23;
    *&v66 = v24;
    *(&v66 + 1) = v25;
    v67 = v26 & 0x1FF;
    v68[0] = v21;
    v68[1] = v20;
    v68[2] = v22;
    v68[3] = v23;
    v68[4] = v24;
    v68[5] = v25;
    v69 = v26;
    sub_19A60F01C(v68, v70);
    sub_19A7862FC(0);
    v34 = v33;
    v36 = v35;
    v70[0] = v64;
    v70[1] = v65;
    v70[2] = v66;
    v71 = v67;
    sub_19A60F078(v70);
  }

  else
  {
    v34 = a9;
    v36 = v58;
  }

  v37 = &v14[OBJC_IVAR___STKImageGlyph_emojiString];
  *v37 = v34;
  v37[1] = v36;
  v38 = v62;
  v39 = v60;
  sub_19A60F0CC(v62, v60, &unk_1EAFCF110, &unk_19A7B6AF0);
  v40 = v59;
  v41 = v61;
  if ((*(v59 + 48))(v39, 1, v61) == 1)
  {
    sub_19A5F2B54(v39, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  else
  {
    v42 = v51;
    (*(v40 + 32))(v51, v39, v41);
    v43 = sub_19A76DC5C();
    v45 = v44;
    (*(v40 + 8))(v42, v41);
    *v27 = v43;
    v27[1] = v45;
  }

  v46 = &v14[OBJC_IVAR___STKImageGlyph_character];
  *v46 = a12;
  v46[1] = a13;
  v47 = type metadata accessor for ImageGlyph(0);
  v72.receiver = v14;
  v72.super_class = v47;
  v48 = objc_msgSendSuper2(&v72, sel_init);
  sub_19A5F2B54(v38, &unk_1EAFCF110, &unk_19A7B6AF0);
  sub_19A5F2B54(v63, &qword_1EAFCD800, &qword_19A7BCE60);
  return v48;
}

void sub_19A7675C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18 - v2;
  v4 = OBJC_IVAR___STKImageGlyph_stickerUUID;
  sub_19A60F0CC(v0 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v18 - v2, &qword_1EAFCD800, &qword_19A7BCE60);
  v5 = sub_19A7A8F64();
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_19A5F2B54(v3, &qword_1EAFCD800, &qword_19A7BCE60);
  if (v6 == 1)
  {
    v7 = *(v0 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8);
    if (v7)
    {
      v8 = *(v0 + OBJC_IVAR___STKImageGlyph_avatarIdentifier);
      v10 = *(v0 + OBJC_IVAR___STKImageGlyph_poseIdentifier);
      v9 = *(v0 + OBJC_IVAR___STKImageGlyph_poseIdentifier + 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120, &qword_19A7B6F90);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_19A7B6C20;
      *(v11 + 32) = v8;
      *(v11 + 40) = v7;
      v12 = 0x6C61727475656ELL;
      if (v9)
      {
        v12 = v10;
      }

      v13 = 0xE700000000000000;
      if (v9)
      {
        v13 = v9;
      }

      *(v11 + 48) = v12;
      *(v11 + 56) = v13;
      v19 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0, &qword_19A7BE0D0);
      sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0, &qword_19A7BE0D0, MEMORY[0x1E69E6310]);
      sub_19A7AAF94();
    }

    else
    {
      v14 = v0 + OBJC_IVAR___STKImageGlyph_emoji;
      v15 = *(v0 + OBJC_IVAR___STKImageGlyph_emoji + 8);
      if (v15)
      {
        v16 = *(v14 + 48);
        v19 = *v14;
        v20 = v15;
        v17 = *(v14 + 32);
        v21 = *(v14 + 16);
        v22 = v17;
        v23 = v16;
        sub_19A7862FC(0);
      }

      else if (*(v0 + OBJC_IVAR___STKImageGlyph_emojiString + 8) || *(v0 + OBJC_IVAR___STKImageGlyph_character + 8))
      {
      }
    }
  }

  else
  {
    sub_19A76DD90(v0 + v4, *(v0 + OBJC_IVAR___STKImageGlyph_stickerEffectType), *(v0 + OBJC_IVAR___STKImageGlyph_stickerSourceType));
  }
}

uint64_t sub_19A767894(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 96) = a1;
  v3 = sub_19A7AAC14();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A767958, 0, 0);
}

uint64_t sub_19A767958()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 32) + 104);
  v3 = *(v0 + 40);
  if (*(v0 + 96) == 1)
  {
    v2(v3, *MEMORY[0x1E69D4708], v1);
    v4 = swift_task_alloc();
    *(v0 + 48) = v4;
    *v4 = v0;
    v5 = sub_19A767A78;
  }

  else
  {
    v2(v3, *MEMORY[0x1E69D4728], v1);
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v5 = sub_19A767D94;
  }

  v4[1] = v5;
  v6 = *(v0 + 40);

  return sub_19A7697C0(v6);
}

uint64_t sub_19A767A78(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 56) = a1;

  (*(v5 + 8))(v4, v6);
  if (a1)
  {
    v8 = swift_task_alloc();
    *(v3 + 64) = v8;
    *v8 = v7;
    v8[1] = sub_19A767C5C;

    return Sticker.uiSticker()();
  }

  else
  {

    v10 = *(v7 + 8);

    return v10(0);
  }
}

uint64_t sub_19A767C5C(uint64_t a1)
{
  v3 = *(*v1 + 56);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_19A767D94(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 80) = a1;

  (*(v5 + 8))(v4, v6);
  if (a1)
  {
    v8 = swift_task_alloc();
    *(v3 + 88) = v8;
    *v8 = v7;
    v8[1] = sub_19A767F78;

    return Sticker.uiSticker()();
  }

  else
  {

    v10 = *(v7 + 8);

    return v10(0);
  }
}

uint64_t sub_19A767F78(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_19A768234(char a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_19A7682F0;

  return sub_19A767894(a1);
}

uint64_t sub_19A7682F0(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_19A7685B0(const void *a1, void *a2)
{
  v2[2] = a2;
  v5 = sub_19A7AAC14();
  v2[3] = v5;
  v2[4] = *(v5 - 8);
  v2[5] = swift_task_alloc();
  v2[6] = _Block_copy(a1);
  v6 = a2;

  return MEMORY[0x1EEE6DFA0](sub_19A76868C, 0, 0);
}

uint64_t sub_19A76868C()
{
  (*(v0[4] + 104))(v0[5], *MEMORY[0x1E69D4728], v0[3]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_19A768748;
  v2 = v0[5];

  return sub_19A7697C0(v2);
}

uint64_t sub_19A768748(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 24);
  v7 = *v1;
  *(*v1 + 64) = a1;

  (*(v5 + 8))(v4, v6);
  if (a1)
  {
    v8 = swift_task_alloc();
    *(v3 + 72) = v8;
    *v8 = v7;
    v8[1] = sub_19A768950;

    return Sticker.uiSticker()();
  }

  else
  {
    v10 = *(v3 + 48);

    v10[2](v10, 0);
    _Block_release(v10);

    v11 = *(v7 + 8);

    return v11();
  }
}

uint64_t sub_19A768950(void *a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v8 = *v1;

  v5 = *(v3 + 48);
  (v5)[2](v5, a1);
  _Block_release(v5);

  v6 = *(v8 + 8);

  return v6();
}

id sub_19A768AF4(void *a1, uint64_t a2, unsigned int *a3)
{
  v5 = sub_19A7AAC14();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *a3, v5, v7);
  v10 = a1;
  v11 = sub_19A768F20(v9);

  (*(v6 + 8))(v9, v5);

  return v11;
}

void *sub_19A768F20(uint64_t a1)
{
  v80 = a1;
  v2 = sub_19A7AABD4();
  v3 = *(v2 - 8);
  v78 = v2;
  v79 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v77 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v58 - v6;
  v81 = sub_19A7AAC14();
  v7 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_19A7AAA14();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v58 - v15;
  v17 = sub_19A7A8F64();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v1 + OBJC_IVAR___STKImageGlyph_stickerUUID;
  v22 = v21;
  v24 = v23;
  sub_19A60F0CC(v20, v16, &qword_1EAFCD800, &qword_19A7BCE60);
  if ((*(v24 + 48))(v16, 1, v22) != 1)
  {
    v72 = v24;
    v73 = v22;
    (*(v24 + 32))(v19, v16, v22);
    v26 = *MEMORY[0x1E69D4638];
    v27 = *(v11 + 104);
    v74 = v10;
    v75 = v27;
    v27(v13, v26, v10);
    sub_19A7AAAC4();
    swift_allocObject();
    v28 = v13;
    sub_19A7AAA04();
    (*(v7 + 104))(v9, *MEMORY[0x1E69D4718], v81);
    v71 = v19;
    v29 = v11 + 104;
    v33 = sub_19A7AAA54();
    (*(v7 + 8))(v9, v81);

    if (v33)
    {
      v69 = v26;
      v34 = v33;
      v35 = v76;
      v70 = v34;
      sub_19A7AAE84();
      v36 = *MEMORY[0x1E69D46F0];
      v37 = v78;
      v38 = v79;
      v39 = v77;
      v67 = *(v79 + 104);
      v68 = v79 + 104;
      v67(v77, v36, v78);
      v40 = sub_19A7710F0(&unk_1EAFCA608, MEMORY[0x1E69D46F8], MEMORY[0x1E69D4700]);
      sub_19A7AB1D4();
      v66 = v40;
      sub_19A7AB1D4();
      v42 = *(v38 + 8);
      v41 = v38 + 8;
      v42(v39, v37);
      v65 = v42;
      v42(v35, v37);
      v43 = v74;
      v31 = v28;
      if (v83 == v82)
      {
        v81 = v29;
        v44 = v70;
        v45 = sub_19A7AAC04();
        v47 = v44;
        v26 = v69;
        if (v46)
        {
          v48 = HIBYTE(v46) & 0xF;
          if ((v46 & 0x2000000000000000) == 0)
          {
            v48 = v45 & 0xFFFFFFFFFFFFLL;
          }

          if (v48)
          {
            v79 = v41;
            v75(v28, v69, v43);
            swift_allocObject();
            sub_19A7AAA04();
            v50 = sub_19A7AAAA4();

            if (v50 >> 62)
            {
              goto LABEL_32;
            }

            for (i = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_19A7ABBE4())
            {
              v52 = 0;
              v63 = v50 & 0xC000000000000001;
              v62 = v50 & 0xFFFFFFFFFFFFFF8;
              v60 = *MEMORY[0x1E69D46E8];
              v61 = v50;
              v59 = i;
              v53 = v78;
              while (1)
              {
                if (v63)
                {
                  v54 = MEMORY[0x19A906130](v52, v50);
                }

                else
                {
                  if (v52 >= *(v62 + 16))
                  {
                    goto LABEL_31;
                  }

                  v54 = *(v50 + 8 * v52 + 32);
                }

                v25 = v54;
                v64 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  break;
                }

                v55 = v76;
                sub_19A7AAE84();
                v56 = v77;
                v67(v77, v60, v53);
                sub_19A7AB1D4();
                sub_19A7AB1D4();
                v57 = v65;
                v65(v56, v53);
                v57(v55, v53);
                if (v83 == v82)
                {

                  (*(v72 + 8))(v71, v73);
                  return v25;
                }

                ++v52;
                v26 = v69;
                v47 = v70;
                v50 = v61;
                if (v64 == v59)
                {
                  goto LABEL_33;
                }
              }

              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              ;
            }

LABEL_33:

            v30 = v74;
            goto LABEL_5;
          }
        }

        else
        {
        }

        v30 = v43;
      }

      else
      {

        v30 = v43;
        v26 = v69;
      }
    }

    else
    {
      v30 = v74;
      v31 = v28;
    }

LABEL_5:
    v75(v31, v26, v30);
    swift_allocObject();
    sub_19A7AAA04();
    v32 = v71;
    v25 = sub_19A7AAA54();
    (*(v72 + 8))(v32, v73);

    return v25;
  }

  sub_19A5F2B54(v16, &qword_1EAFCD800, &qword_19A7BCE60);
  return 0;
}

uint64_t sub_19A7697C0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_19A7AABD4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_19A7A9304();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A7698E4, 0, 0);
}

uint64_t sub_19A7698E4()
{
  v1 = v0[8];
  sub_19A60F0CC(v0[3] + OBJC_IVAR___STKImageGlyph_stickerUUID, v1, &qword_1EAFCD800, &qword_19A7BCE60);
  v2 = sub_19A7A8F64();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  sub_19A5F2B54(v1, &qword_1EAFCD800, &qword_19A7BCE60);
  if (v3 == 1)
  {
    v4 = v0[3];
    v5 = v4 + OBJC_IVAR___STKImageGlyph_avatarIdentifier;
    v6 = *(v4 + OBJC_IVAR___STKImageGlyph_avatarIdentifier);
    v0[9] = v6;
    v7 = *(v5 + 8);
    v0[10] = v7;
    if (v7)
    {
      v8 = (v4 + OBJC_IVAR___STKImageGlyph_poseIdentifier);
      v9 = *v8;
      v0[11] = *v8;
      v10 = v8[1];
      v0[12] = v10;
      if (v10)
      {
        if (qword_1EAFCB030 != -1)
        {
          swift_once();
        }

        v0[13] = qword_1EAFDD668;

        v11 = swift_task_alloc();
        v0[14] = v11;
        *v11 = v0;
        v11[1] = sub_19A769B18;

        return sub_19A798220(v6, v7, v9, v10);
      }
    }

    v13 = 0;
  }

  else
  {
    v13 = sub_19A768F20(v0[2]);
  }

  v14 = v0[1];

  return v14(v13);
}

uint64_t sub_19A769B18(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19A769C38, 0, 0);
}

uint64_t sub_19A769C38()
{
  v1 = v0[15];
  if (v1)
  {
    v2 = v0[5];
    v14 = v0[6];
    v15 = v0[4];
    v3 = v1;
    v4 = [v3 itk_HEICData];
    sub_19A7A8E34();

    sub_19A7A92B4();
    [v3 size];
    sub_19A7AAC84();
    v5 = objc_allocWithZone(sub_19A7AAD24());
    v6 = sub_19A7AACE4();
    v7 = sub_19A7AAF14();
    sub_19A7AAF04();
    (*(v2 + 104))(v14, *MEMORY[0x1E69D46E8], v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_19A7B6C40;
    *(v8 + 32) = v6;
    v9 = objc_allocWithZone(v7);
    v10 = v6;
    v11 = sub_19A7AAE74();
  }

  else
  {
    v11 = 0;
  }

  v12 = v0[1];

  return v12(v11);
}

uint64_t sub_19A769E7C()
{
  v1 = sub_19A7AAC14();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19A7AAA14();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7A8F64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = OBJC_IVAR___STKImageGlyph_stickerUUID;
  sub_19A60F0CC(v0 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v28 - v12, &qword_1EAFCD800, &qword_19A7BCE60);
  v29 = v6;
  v15 = *(v6 + 48);
  v16 = v15(v13, 1, v5);
  sub_19A5F2B54(v13, &qword_1EAFCD800, &qword_19A7BCE60);
  result = 0;
  if (v16 != 1)
  {
    sub_19A60F0CC(v0 + v14, v10, &qword_1EAFCD800, &qword_19A7BCE60);
    if (v15(v10, 1, v5) == 1)
    {
      sub_19A5F2B54(v10, &qword_1EAFCD800, &qword_19A7BCE60);
      return 0;
    }

    else
    {
      v18 = v29;
      v19 = v36;
      (*(v29 + 32))(v36, v10, v5);
      (*(v30 + 104))(v32, *MEMORY[0x1E69D4638], v31);
      sub_19A7AAAC4();
      swift_allocObject();
      sub_19A7AAA04();
      v21 = v33;
      v20 = v34;
      v22 = v35;
      (*(v34 + 104))(v33, *MEMORY[0x1E69D4718], v35);
      v23 = sub_19A7AAA54();
      (*(v20 + 8))(v21, v22);

      if (v23)
      {
        v24 = sub_19A7AADC4();
        if (v25 || (v24 = sub_19A7AABF4(), v26))
        {
          v27 = v24;
        }

        else
        {
          v27 = sub_19A7AB0A4();
        }
      }

      else
      {
        v27 = 0;
      }

      (*(v18 + 8))(v19, v5);
      return v27;
    }
  }

  return result;
}

uint64_t sub_19A76A43C()
{
  v1 = sub_19A7AAC14();
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_19A7AAA14();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_19A7A8F64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = OBJC_IVAR___STKImageGlyph_stickerUUID;
  sub_19A60F0CC(v0 + OBJC_IVAR___STKImageGlyph_stickerUUID, &v26 - v12, &qword_1EAFCD800, &qword_19A7BCE60);
  v27 = v6;
  v15 = *(v6 + 48);
  v16 = v15(v13, 1, v5);
  sub_19A5F2B54(v13, &qword_1EAFCD800, &qword_19A7BCE60);
  result = 0;
  if (v16 != 1)
  {
    sub_19A60F0CC(v0 + v14, v10, &qword_1EAFCD800, &qword_19A7BCE60);
    if (v15(v10, 1, v5) == 1)
    {
      sub_19A5F2B54(v10, &qword_1EAFCD800, &qword_19A7BCE60);
      return 0;
    }

    else
    {
      v18 = v5;
      v19 = v27;
      v20 = v34;
      (*(v27 + 32))(v34, v10, v5);
      (*(v28 + 104))(v30, *MEMORY[0x1E69D4638], v29);
      sub_19A7AAAC4();
      swift_allocObject();
      sub_19A7AAA04();
      v22 = v31;
      v21 = v32;
      v23 = v33;
      (*(v32 + 104))(v31, *MEMORY[0x1E69D4718], v33);
      v24 = sub_19A7AAA54();
      (*(v21 + 8))(v22, v23);

      if (v24)
      {
        v25 = sub_19A7AADC4();
      }

      else
      {
        v25 = 0;
      }

      (*(v19 + 8))(v20, v18);
      return v25;
    }
  }

  return result;
}

id sub_19A76A9D0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_19A7AAFE4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_19A76AA50(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  sub_19A60F0CC(a1, v13, &unk_1EAFCD750, &unk_19A7B87D0);
  if (!v14)
  {
    sub_19A5F2B54(v13, &unk_1EAFCD750, &unk_19A7B87D0);
    goto LABEL_7;
  }

  v3 = swift_dynamicCast();
  if ((v3 & 1) == 0)
  {
LABEL_7:
    v10 = 0;
    return v10 & 1;
  }

  sub_19A7663D0(v3);
  v5 = v4;
  v7 = v6;
  sub_19A7663D0(v4);
  if (v5 == v9 && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_19A7AC064();
  }

  return v10 & 1;
}

uint64_t sub_19A76ABFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v55 - v3;
  v5 = sub_19A7669B0();
  switch(v5)
  {
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120, &qword_19A7B6F90);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_19A7B6C30;
      v63 = 0x203A696A6F6D65;
      v64 = 0xE700000000000000;
      v14 = v0 + OBJC_IVAR___STKImageGlyph_emoji;
      v15 = *(v0 + OBJC_IVAR___STKImageGlyph_emoji + 8);
      if (v15)
      {
        v16 = *(v14 + 48);
        v18 = *(v14 + 32);
        v17 = *(v14 + 40);
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        *&v55 = *v14;
        *(&v55 + 1) = v15;
        *&v56 = v20;
        *(&v56 + 1) = v19;
        *&v57 = v18;
        *(&v57 + 1) = v17;
        v58 = v16 & 0x1FF;
        v59[0] = v55;
        v59[1] = v15;
        v59[2] = v20;
        v59[3] = v19;
        v59[4] = v18;
        v59[5] = v17;
        v60 = v16;
        sub_19A60F01C(v59, v61);
        sub_19A7862FC(0);
        v22 = v21;
        v24 = v23;
        v61[0] = v55;
        v61[1] = v56;
        v61[2] = v57;
        v62 = v58;
        sub_19A60F078(v61);
      }

      else
      {
        v22 = 1701736302;
        v24 = 0xE400000000000000;
      }

      MEMORY[0x19A905510](v22, v24);

      v34 = v64;
      *(v7 + 32) = v63;
      *(v7 + 40) = v34;
      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120, &qword_19A7B6F90);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_19A7B6C20;
      *&v61[0] = 0;
      *(&v61[0] + 1) = 0xE000000000000000;
      sub_19A7ABCB4();

      *&v61[0] = 0xD000000000000012;
      *(&v61[0] + 1) = 0x800000019A7CDC20;
      if (*(v0 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8))
      {
        v12 = *(v0 + OBJC_IVAR___STKImageGlyph_avatarIdentifier);
        v13 = *(v0 + OBJC_IVAR___STKImageGlyph_avatarIdentifier + 8);
      }

      else
      {
        v12 = 1701736302;
        v13 = 0xE400000000000000;
      }

      MEMORY[0x19A905510](v12, v13);

      v30 = *(&v61[0] + 1);
      *(v7 + 32) = *&v61[0];
      *(v7 + 40) = v30;
      *&v61[0] = 0;
      *(&v61[0] + 1) = 0xE000000000000000;
      sub_19A7ABCB4();

      *&v61[0] = 0xD000000000000010;
      *(&v61[0] + 1) = 0x800000019A7CDC40;
      if (*(v0 + OBJC_IVAR___STKImageGlyph_poseIdentifier + 8))
      {
        v31 = *(v0 + OBJC_IVAR___STKImageGlyph_poseIdentifier);
        v32 = *(v0 + OBJC_IVAR___STKImageGlyph_poseIdentifier + 8);
      }

      else
      {
        v31 = 1701736302;
        v32 = 0xE400000000000000;
      }

      MEMORY[0x19A905510](v31, v32);

      v33 = *(&v61[0] + 1);
      *(v7 + 48) = *&v61[0];
      *(v7 + 56) = v33;
      break;
    case 1:
      v6 = 1701736302;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120, &qword_19A7B6F90);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_19A7B90E0;
      strcpy(v61, "stickerUUID: ");
      HIWORD(v61[0]) = -4864;
      sub_19A60F0CC(v0 + OBJC_IVAR___STKImageGlyph_stickerUUID, v4, &qword_1EAFCD800, &qword_19A7BCE60);
      v8 = sub_19A7A8F64();
      v9 = *(v8 - 8);
      if ((*(v9 + 48))(v4, 1, v8) == 1)
      {
        sub_19A5F2B54(v4, &qword_1EAFCD800, &qword_19A7BCE60);
        v10 = 0xE400000000000000;
        v11 = 1701736302;
      }

      else
      {
        v25 = sub_19A7A8F14();
        v10 = v26;
        (*(v9 + 8))(v4, v8);
        v11 = v25;
      }

      MEMORY[0x19A905510](v11, v10);

      v27 = *(&v61[0] + 1);
      *(v7 + 32) = *&v61[0];
      *(v7 + 40) = v27;
      *&v61[0] = 0;
      *(&v61[0] + 1) = 0xE000000000000000;
      sub_19A7ABCB4();

      *&v61[0] = 0xD000000000000013;
      *(&v61[0] + 1) = 0x800000019A7CDC60;
      v28 = *(v1 + OBJC_IVAR___STKImageGlyph_stickerEffectType);
      v29 = 0xE400000000000000;
      if (v28 <= 2)
      {
        if (v28 == 1)
        {
          v29 = 0xE600000000000000;
          v6 = 0x656B6F727473;
        }

        else if (v28 == 2)
        {
          v29 = 0xE500000000000000;
          v6 = 0x63696D6F63;
        }
      }

      else
      {
        switch(v28)
        {
          case 3:
            v29 = 0xE500000000000000;
            v6 = 0x7966667570;
            break;
          case 4:
            v6 = 0x6563736564697269;
            v29 = 0xEA0000000000746ELL;
            break;
          case 5:
            v6 = 1702259052;
            break;
        }
      }

      MEMORY[0x19A905510](v6, v29);

      v35 = *(&v61[0] + 1);
      *(v7 + 48) = *&v61[0];
      *(v7 + 56) = v35;
      *&v61[0] = 0;
      *(&v61[0] + 1) = 0xE000000000000000;
      sub_19A7ABCB4();

      *&v61[0] = 0xD000000000000013;
      *(&v61[0] + 1) = 0x800000019A7CDC80;
      v36 = *(v1 + OBJC_IVAR___STKImageGlyph_stickerSourceType);
      if (v36 > 3)
      {
        switch(v36)
        {
          case 4:
            v37 = 0xE500000000000000;
            v38 = 0x696A6F6D65;
            goto LABEL_44;
          case 5:
            v37 = 0xEA00000000007974;
            v38 = 0x7261706472696874;
            goto LABEL_44;
          case 6:
            v38 = 0x65746172656E6567;
            v37 = 0xE900000000000064;
            goto LABEL_44;
        }
      }

      else
      {
        switch(v36)
        {
          case 1:
            v37 = 0xEB00000000746E65;
            v38 = 0x746E6F4372657375;
            goto LABEL_44;
          case 2:
            v37 = 0xE600000000000000;
            v38 = 0x746E65636572;
            goto LABEL_44;
          case 3:
            v37 = 0xE600000000000000;
            v38 = 0x696A6F6D656DLL;
LABEL_44:
            MEMORY[0x19A905510](v38, v37);

            v39 = *(&v61[0] + 1);
            *(v7 + 64) = *&v61[0];
            *(v7 + 72) = v39;
            goto LABEL_45;
        }
      }

      v37 = 0xE700000000000000;
      v38 = 0x6E776F6E6B6E75;
      goto LABEL_44;
    default:
      v7 = MEMORY[0x1E69E7CC0];
      break;
  }

LABEL_45:
  v40 = (v1 + OBJC_IVAR___STKImageGlyph_optionalData);
  v41 = *(v1 + OBJC_IVAR___STKImageGlyph_optionalData + 8);
  v42 = *(v1 + OBJC_IVAR___STKImageGlyph_optionalData) & 0xFFFFFFFFFFFFLL;
  if ((v41 & 0x2000000000000000) != 0)
  {
    v42 = HIBYTE(v41) & 0xF;
  }

  if (v42)
  {
    *&v61[0] = 0;
    *(&v61[0] + 1) = 0xE000000000000000;
    sub_19A7ABCB4();

    strcpy(v61, "optionalData: ");
    HIBYTE(v61[0]) = -18;
    v43 = *v40;
    v44 = v40[1];

    MEMORY[0x19A905510](v43, v44);

    v45 = v61[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_19A5F61A0(0, *(v7 + 16) + 1, 1, v7);
    }

    v47 = *(v7 + 16);
    v46 = *(v7 + 24);
    if (v47 >= v46 >> 1)
    {
      v7 = sub_19A5F61A0((v46 > 1), v47 + 1, 1, v7);
    }

    *(v7 + 16) = v47 + 1;
    *(v7 + 16 * v47 + 32) = v45;
  }

  *&v61[0] = 0;
  *(&v61[0] + 1) = 0xE000000000000000;
  v48 = sub_19A7669B0();
  if (v48 > 2)
  {
    if (v48 == 3)
    {
      v49 = 0xE500000000000000;
      v50 = 0x696A6F6D65;
      goto LABEL_63;
    }

    if (v48 == 4)
    {
      v49 = 0xE900000000000072;
      v50 = 0x6574636172616863;
      goto LABEL_63;
    }

LABEL_60:
    v49 = 0xE700000000000000;
    v50 = 0x6E776F6E6B6E75;
    goto LABEL_63;
  }

  if (v48 == 1)
  {
    v49 = 0xE700000000000000;
    v50 = 0x72656B63697473;
    goto LABEL_63;
  }

  if (v48 != 2)
  {
    goto LABEL_60;
  }

  v49 = 0xE600000000000000;
  v50 = 0x696A6F6D656DLL;
LABEL_63:
  MEMORY[0x19A905510](v50, v49);

  MEMORY[0x19A905510](0x203A6870796C4720, 0xE90000000000007BLL);
  v59[0] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0, &qword_19A7BE0D0);
  sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0, &qword_19A7BE0D0, MEMORY[0x1E69E6310]);
  v51 = sub_19A7AAF94();
  v53 = v52;

  MEMORY[0x19A905510](v51, v53);

  MEMORY[0x19A905510](125, 0xE100000000000000);
  return *&v61[0];
}

id ImageGlyph.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_19A76B66C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ImageGlyph(0);
  result = sub_19A7ABCC4();
  *a2 = result;
  return result;
}

uint64_t ImageGlyphCategory.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_id;
  v4 = sub_19A7A8F64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_19A76B728()
{
  sub_19A7ABCB4();

  MEMORY[0x19A905510](*(v0 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title), *(v0 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_title + 8));
  v1 = 0xE800000000000000;
  MEMORY[0x19A905510](0x203A6567616D4920, 0xE800000000000000);
  if (*(v0 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName + 8))
  {
    v4 = *(v0 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName);
    v5 = *(v0 + OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_imageName + 8);

    MEMORY[0x19A905510](0x6D65747379732820, 0xE900000000000029);
    v2 = v4;
    v1 = v5;
  }

  else
  {
    v2 = 0x6567616D49206F4ELL;
  }

  MEMORY[0x19A905510](v2, v1);

  return 0x79726F6765746143;
}

id sub_19A76B850(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_19A7AAFE4();

  return v5;
}

uint64_t sub_19A76B8C0()
{
  v1 = v0;
  sub_19A7ABCB4();
  v2 = sub_19A76B728();

  v9 = v2;
  MEMORY[0x19A905510](0xD00000000000001ELL, 0x800000019A7CDCC0);
  v3 = [objc_opt_self() emojiCategoryStringForCategoryType_];
  if (v3)
  {
    v4 = v3;
    v5 = sub_19A7AB014();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x19A905510](v5, v7);

  return v9;
}

id sub_19A76BA34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_19A76BB08@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC10StickerKit18ImageGlyphCategory_id;
  v5 = sub_19A7A8F64();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_19A76BB84(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

char *sub_19A76BBBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF90, &qword_19A7B97E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19A76BD24(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_19A76BE6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF70, &unk_19A7B97C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A76BF90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF68, &unk_19A7C2100);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A76C09C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF60, &qword_19A7C21A0);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_19A76C19C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC8A0, &qword_19A7B7CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_19A76C2C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF80, &unk_19A7B97D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF88, &unk_19A7C2120);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_19A76C3FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCFC0, &qword_19A7B98F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

void *sub_19A76C518(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF930, &qword_19A7C2190);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF938, &qword_19A7C2198);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19A76C674(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

char *sub_19A76C850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCFCD0, &qword_19A7C2A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_19A76C954(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF1B0, &unk_19A7B93D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_19A76CA58(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCCF78, &unk_19A7C2110);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19A76CB78(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCC808, &unk_19A7C21B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_19A76CBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v67 = a1;
  v68 = a2;
  v69 = a3;
  v70 = a4;
  sub_19A77166C();

  v6 = sub_19A7AB154();
  v8 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_19A76D714(v6, v7);
    v38 = v37;

    v7 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = sub_19A7ABD44();
      v10 = v66;
    }

    v11 = *v9;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v21 = v10 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v9)
          {
            v25 = 0;
            v26 = v9 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_125;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v25 * a5;
              if ((v25 * a5) >> 64 == (v25 * a5) >> 63)
              {
                v25 = v29 + (v27 + v28);
                if (!__OFADD__(v29, (v27 + v28)))
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (v9)
        {
          v33 = 0;
          while (1)
          {
            v34 = *v9;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_125;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 == (v33 * a5) >> 63)
            {
              v33 = v36 + (v34 + v35);
              if (!__OFADD__(v36, (v34 + v35)))
              {
                ++v9;
                if (--v10)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v12)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (v9)
        {
          v16 = 0;
          v17 = v9 + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                if (v18 < 0x61 || v18 >= v15)
                {
                  break;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v20 = v16 * a5;
            if ((v16 * a5) >> 64 == (v16 * a5) >> 63)
            {
              v16 = v20 - (v18 + v19);
              if (!__OFSUB__(v20, (v18 + v19)))
              {
                ++v17;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v39 = HIBYTE(v7) & 0xF;
  v67 = v8;
  v68 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v58 = 0;
        v59 = a5 + 48;
        v60 = a5 + 55;
        v61 = a5 + 87;
        if (a5 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v67;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_125;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          v65 = v58 * a5;
          if ((v58 * a5) >> 64 == (v58 * a5) >> 63)
          {
            v58 = v65 + (v63 + v64);
            if (!__OFADD__(v65, (v63 + v64)))
            {
              v62 = (v62 + 1);
              if (--v39)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v67 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_125;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 == (v41 * a5) >> 63)
          {
            v41 = v48 - (v46 + v47);
            if (!__OFSUB__(v48, (v46 + v47)))
            {
              ++v45;
              if (--v40)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v50 = 0;
      v51 = a5 + 48;
      v52 = a5 + 55;
      v53 = a5 + 87;
      if (a5 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v67 + 1;
      while (1)
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_125;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        v57 = v50 * a5;
        if ((v50 * a5) >> 64 == (v50 * a5) >> 63)
        {
          v50 = v57 + (v55 + v56);
          if (!__OFADD__(v57, (v55 + v56)))
          {
            ++v54;
            if (--v49)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

void sub_19A76D184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v74 = a1;
  v75 = a2;
  v76 = a3;
  v77 = a4;
  sub_19A77166C();

  v6 = sub_19A7AB154();
  v8 = v6;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_19A76D714(v6, v7);
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      v9 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = sub_19A7ABD44();
      v10 = v73;
    }

    v11 = *v9;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v23 = v10 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (v9)
          {
            v27 = 0;
            v28 = v9 + 1;
            while (1)
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v24)
              {
                if (v29 < 0x41 || v29 >= v25)
                {
                  if (v29 < 0x61 || v29 >= v26)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              if (is_mul_ok(v27, a5))
              {
                v31 = v27 * a5;
                v32 = v29 + v30;
                v22 = __CFADD__(v31, v32);
                v27 = v31 + v32;
                if (!v22)
                {
                  ++v28;
                  if (--v23)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (v9)
        {
          v36 = 0;
          while (1)
          {
            v37 = *v9;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            if (is_mul_ok(v36, a5))
            {
              v39 = v36 * a5;
              v40 = v37 + v38;
              v22 = __CFADD__(v39, v40);
              v36 = v39 + v40;
              if (!v22)
              {
                ++v9;
                if (--v10)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v12)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (v9)
        {
          v16 = 0;
          v17 = v9 + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                if (v18 < 0x61 || v18 >= v15)
                {
                  break;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            if (is_mul_ok(v16, a5))
            {
              v20 = v16 * a5;
              v21 = v18 + v19;
              v22 = v20 >= v21;
              v16 = v20 - v21;
              if (v22)
              {
                ++v17;
                if (--v12)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v43 = HIBYTE(v7) & 0xF;
  v74 = v8;
  v75 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v64 = 0;
        v65 = a5 + 48;
        v66 = a5 + 55;
        v67 = a5 + 87;
        if (a5 > 10)
        {
          v65 = 58;
        }

        else
        {
          v67 = 97;
          v66 = 65;
        }

        v68 = &v74;
        while (1)
        {
          v69 = *v68;
          if (v69 < 0x30 || v69 >= v65)
          {
            if (v69 < 0x41 || v69 >= v66)
            {
              if (v69 < 0x61 || v69 >= v67)
              {
                goto LABEL_127;
              }

              v70 = -87;
            }

            else
            {
              v70 = -55;
            }
          }

          else
          {
            v70 = -48;
          }

          if (is_mul_ok(v64, a5))
          {
            v71 = v64 * a5;
            v72 = v69 + v70;
            v22 = __CFADD__(v71, v72);
            v64 = v71 + v72;
            if (!v22)
            {
              v68 = (v68 + 1);
              if (--v43)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v74 + 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          if (is_mul_ok(v45, a5))
          {
            v52 = v45 * a5;
            v53 = v50 + v51;
            v22 = v52 >= v53;
            v45 = v52 - v53;
            if (v22)
            {
              ++v49;
              if (--v44)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v55 = 0;
      v56 = a5 + 48;
      v57 = a5 + 55;
      v58 = a5 + 87;
      if (a5 > 10)
      {
        v56 = 58;
      }

      else
      {
        v58 = 97;
        v57 = 65;
      }

      v59 = &v74 + 1;
      while (1)
      {
        v60 = *v59;
        if (v60 < 0x30 || v60 >= v56)
        {
          if (v60 < 0x41 || v60 >= v57)
          {
            if (v60 < 0x61 || v60 >= v58)
            {
              goto LABEL_127;
            }

            v61 = -87;
          }

          else
          {
            v61 = -55;
          }
        }

        else
        {
          v61 = -48;
        }

        if (is_mul_ok(v55, a5))
        {
          v62 = v55 * a5;
          v63 = v60 + v61;
          v22 = __CFADD__(v62, v63);
          v55 = v62 + v63;
          if (!v22)
          {
            ++v59;
            if (--v54)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

uint64_t sub_19A76D714(uint64_t a1, unint64_t a2)
{
  v2 = sub_19A7AB164();
  v6 = sub_19A76D794(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_19A76D794(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_19A7ABAA4();
    if (!v9 || (v10 = v9, v11 = sub_19A76CB78(v9, 0), v12 = sub_19A76D8EC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_19A7AB094();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_19A7AB094();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_19A7ABD44();
LABEL_4:

  return sub_19A7AB094();
}

unint64_t sub_19A76D8EC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_19A76DB0C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_19A7AB124();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_19A7ABD44();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_19A76DB0C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_19A7AB0F4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_19A76DB0C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_19A7AB134();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x19A905540](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_19A76DB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v16[0] = a3;
    v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v13 = v16;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v13 = sub_19A7ABD44();
  }

  result = a6(v13, a1, a2, a3, a4, a5);
  if (!v6)
  {
    v18 = v15 & 1;
LABEL_8:
    v17 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_19A76DC5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120, &qword_19A7B6F90);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_19A7B6C20;
  sub_19A7A9064();
  *(v0 + 32) = sub_19A7AC024();
  *(v0 + 40) = v1;
  sub_19A7A9044();
  *(v0 + 48) = sub_19A7AC024();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0, &qword_19A7BE0D0);
  sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0, &qword_19A7BE0D0, MEMORY[0x1E69E6310]);
  v3 = sub_19A7AAF94();

  return v3;
}

uint64_t sub_19A76DD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_19A7A8F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A60F0CC(a1, v8, &qword_1EAFCD800, &qword_19A7BCE60);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_19A5F2B54(v8, &qword_1EAFCD800, &qword_19A7BCE60);
    return 0;
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120, &qword_19A7B6F90);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_19A7B90E0;
    *(v14 + 32) = sub_19A7A8F14();
    *(v14 + 40) = v15;
    v20 = a2;
    *(v14 + 48) = sub_19A7AC024();
    *(v14 + 56) = v16;
    v20 = a3;
    *(v14 + 64) = sub_19A7AC024();
    *(v14 + 72) = v17;
    v20 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0, &qword_19A7BE0D0);
    sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0, &qword_19A7BE0D0, MEMORY[0x1E69E6310]);
    v18 = sub_19A7AAF94();

    (*(v10 + 8))(v12, v9);
    return v18;
  }
}

id sub_19A76E038(uint64_t a1)
{
  v1 = sub_19A7A9094();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v43 - v9;
  if ((sub_19A7AADB4() & 1) != 0 && (sub_19A7AAEB4(), sub_19A7AAEA4() < 1))
  {
    v11 = 5;
  }

  else
  {
    sub_19A7AAEB4();
    v10 = sub_19A7AAEA4();
    v11 = v10 & ~(v10 >> 63);
  }

  v46 = v11;
  v12 = v51;
  MEMORY[0x19A905020]();
  v13 = sub_19A7A8F64();
  v14 = (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v45 = Sticker.sourceType.getter(v14);
  sub_19A786590(v62);
  v16 = v62[0];
  v15 = v62[1];
  v17 = v62[2];
  v18 = v62[3];
  v19 = v62[4];
  v20 = v62[5];
  v21 = v63;
  v49 = v2;
  v22 = *(v2 + 56);
  v50 = v1;
  v22(v52, 1, 1, v1);
  v47 = type metadata accessor for ImageGlyph(0);
  v23 = objc_allocWithZone(v47);
  v24 = &v23[OBJC_IVAR___STKImageGlyph_optionalData];
  *v24 = 0;
  v24[1] = 0xE000000000000000;
  *&v23[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
  v23[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
  sub_19A60F0CC(v12, &v23[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800, &qword_19A7BCE60);
  *&v23[OBJC_IVAR___STKImageGlyph_stickerEffectType] = v46;
  *&v23[OBJC_IVAR___STKImageGlyph_stickerSourceType] = v45;
  v25 = &v23[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v23[OBJC_IVAR___STKImageGlyph_poseIdentifier];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v23[OBJC_IVAR___STKImageGlyph_emoji];
  *v27 = v16;
  *(v27 + 1) = v15;
  *(v27 + 2) = v17;
  *(v27 + 3) = v18;
  *(v27 + 4) = v19;
  *(v27 + 5) = v20;
  *(v27 + 24) = v21;
  if (v15)
  {
    *&v53 = v16;
    *(&v53 + 1) = v15;
    *&v54 = v17;
    *(&v54 + 1) = v18;
    *&v55 = v19;
    *(&v55 + 1) = v20;
    v56 = v21 & 0x1FF;
    v57[0] = v16;
    v57[1] = v15;
    v57[2] = v17;
    v57[3] = v18;
    v57[4] = v19;
    v57[5] = v20;
    v58 = v21;
    sub_19A60F01C(v57, v59);
    sub_19A7862FC(0);
    v29 = v28;
    v31 = v30;
    v59[0] = v53;
    v59[1] = v54;
    v59[2] = v55;
    v60 = v56;
    sub_19A60F078(v59);
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = &v23[OBJC_IVAR___STKImageGlyph_emojiString];
  *v32 = v29;
  v32[1] = v31;
  v33 = v48;
  sub_19A60F0CC(v52, v48, &unk_1EAFCF110, &unk_19A7B6AF0);
  v34 = v49;
  v35 = v50;
  if ((*(v49 + 48))(v33, 1, v50) == 1)
  {
    sub_19A5F2B54(v33, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  else
  {
    v36 = v44;
    (*(v34 + 32))(v44, v33, v35);
    v37 = sub_19A76DC5C();
    v39 = v38;
    (*(v34 + 8))(v36, v35);
    *v24 = v37;
    v24[1] = v39;
  }

  v40 = &v23[OBJC_IVAR___STKImageGlyph_character];
  *v40 = 0;
  v40[1] = 0;
  v61.receiver = v23;
  v61.super_class = v47;
  v41 = objc_msgSendSuper2(&v61, sel_init);
  sub_19A5F2B54(v52, &unk_1EAFCF110, &unk_19A7B6AF0);
  sub_19A5F2B54(v51, &qword_1EAFCD800, &qword_19A7BCE60);
  return v41;
}

char *sub_19A76E5A0(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_19A7A9094();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_19A7A8F64();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v3 + 56))(v11, 1, 1, v2);
  v16 = type metadata accessor for ImageGlyph(0);
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR___STKImageGlyph_optionalData];
  *v18 = 0;
  v18[1] = 0xE000000000000000;
  *&v17[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
  v17[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
  sub_19A60F0CC(v14, &v17[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800, &qword_19A7BCE60);
  *&v17[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
  *&v17[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
  v19 = &v17[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v17[OBJC_IVAR___STKImageGlyph_poseIdentifier];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v17[OBJC_IVAR___STKImageGlyph_emoji];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  *(v21 + 2) = 0u;
  *(v21 + 24) = 0;
  v22 = &v17[OBJC_IVAR___STKImageGlyph_emojiString];
  *v22 = 0;
  v22[1] = 0;
  sub_19A60F0CC(v11, v8, &unk_1EAFCF110, &unk_19A7B6AF0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_19A5F2B54(v8, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v23 = sub_19A76DC5C();
    v25 = v24;
    (*(v3 + 8))(v5, v2);
    *v18 = v23;
    v18[1] = v25;
  }

  v26 = &v17[OBJC_IVAR___STKImageGlyph_character];
  *v26 = 0;
  v26[1] = 0;
  v42.receiver = v17;
  v42.super_class = v16;
  v27 = objc_msgSendSuper2(&v42, sel_init);
  sub_19A5F2B54(v11, &unk_1EAFCF110, &unk_19A7B6AF0);
  sub_19A5F2B54(v14, &qword_1EAFCD800, &qword_19A7BCE60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF120, &qword_19A7B6F90);
  v28 = swift_allocObject();
  v29 = v28;
  *(v28 + 16) = xmmword_19A7B6C20;
  if (v39 <= 2)
  {
    if (v39 == 1)
    {
      v30 = 0xE700000000000000;
      v31 = 0x72656B63697473;
      goto LABEL_16;
    }

    if (v39 == 2)
    {
      v30 = 0xE600000000000000;
      v31 = 0x696A6F6D656DLL;
      goto LABEL_16;
    }

LABEL_15:
    v30 = 0xE700000000000000;
    v31 = 0x6E776F6E6B6E75;
    goto LABEL_16;
  }

  if (v39 == 3)
  {
    v30 = 0xE500000000000000;
    v31 = 0x696A6F6D65;
    goto LABEL_16;
  }

  if (v39 == 4)
  {
    v30 = 0xE900000000000072;
    v31 = 0x6574636172616863;
    goto LABEL_16;
  }

  if (v39 != 5)
  {
    goto LABEL_15;
  }

  v30 = 0xE600000000000000;
  v31 = 0x746E65636572;
LABEL_16:
  *(v28 + 32) = v31;
  *(v28 + 40) = v30;
  *(v28 + 48) = sub_19A76DC5C();
  *(v29 + 56) = v32;
  v41 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE8F0, &qword_19A7BE0D0);
  sub_19A623714(&qword_1ED8B2080, &qword_1EAFCE8F0, &qword_19A7BE0D0, MEMORY[0x1E69E6310]);
  v33 = sub_19A7AAF94();
  v35 = v34;

  v36 = &v27[OBJC_IVAR___STKImageGlyph_optionalData];
  *v36 = v33;
  v36[1] = v35;

  return v27;
}

uint64_t sub_19A76EADC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x72656B63697473 && a2 == 0xE700000000000000 || (sub_19A7AC064() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x696A6F6D656DLL && a2 == 0xE600000000000000 || (sub_19A7AC064() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_19A7AC064() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x6574636172616863 && a2 == 0xE900000000000072 || (sub_19A7AC064() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x746E65636572 && a2 == 0xE600000000000000)
  {
    return 5;
  }

  if (sub_19A7AC064())
  {
    return 5;
  }

  return 0;
}

uint64_t sub_19A76EC58(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_19A76DB0C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_19A7AB114();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_19A76DB0C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_19A76DB0C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_19A7AB114();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_19A76F0C4(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_19A76DB0C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_19A7AB114();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_19A76DB0C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_19A76DB0C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_19A7AB114();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

unint64_t sub_19A76F530(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

uint64_t sub_19A76F540(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x746E6F4372657375 && a2 == 0xEB00000000746E65 || (sub_19A7AC064() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x696A6F6D656DLL && a2 == 0xE600000000000000 || (sub_19A7AC064() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_19A7AC064() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 0x7261706472696874 && a2 == 0xEA00000000007974 || (sub_19A7AC064() & 1) != 0)
  {
    return 5;
  }

  if (a1 == 0x65746172656E6567 && a2 == 0xE900000000000064 || (sub_19A7AC064() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x746E65636572 && a2 == 0xE600000000000000)
  {
    return 2;
  }

  if (sub_19A7AC064())
  {
    return 2;
  }

  return 0;
}

char *_s10StickerKit10ImageGlyphC05imageD03forACSgSS_tFZ_0(void *a1, uint64_t a2)
{
  v264 = sub_19A7A9094();
  v267 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v256 = &v244 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v253 = &v244 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v249 = &v244 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v244 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v244 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v260 = &v244 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v263 = &v244 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v258 = &v244 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v261 = &v244 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v250 = &v244 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v252 = &v244 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v251 = &v244 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v259 = &v244 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v245 = &v244 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v244 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v244 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v244 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v254 = &v244 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v262 = &v244 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v247 = &v244 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v244 - v49;
  v266 = sub_19A7A8F64();
  v51 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v257 = &v244 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = a1;
  v272 = a1;
  v273 = a2;
  v53 = a2;
  sub_19A639920();
  v54 = sub_19A7ABB24();
  if (!v54[2])
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v55 = v54;
  v248 = v11;
  v246 = v35;
  v244 = v14;
  v265 = v51;
  v56 = v54[4];
  v58 = v54[5];
  v57 = v54 + 4;
  v60 = v54[6];
  v59 = v54[7];

  v61 = MEMORY[0x19A9054C0](v56, v58, v60, v59);
  v63 = v62;

  v64 = sub_19A76EADC(v61, v63);

  if (v64 > 2)
  {
    if (v64 == 3)
    {
      v96 = v267;
      if (v55[2] < 3uLL)
      {
        goto LABEL_51;
      }

      v97 = v55[12];
      v98 = v55[13];
      v99 = v55[14];
      v100 = v55[15];

      v101 = MEMORY[0x19A9054C0](v97, v98, v99, v100);
      v103 = v102;

      v104 = sub_19A76F540(v101, v103);

      v105 = v254;
      (*(v265 + 56))(v254, 1, 1, v266);
      if (v55[2] >= 2uLL)
      {
        v106 = v55[8];
        v107 = v55[9];
        v108 = v55[10];
        v109 = v55[11];

        v110 = MEMORY[0x19A9054C0](v106, v107, v108, v109);
        v112 = v111;

        v113 = v252;
        v114 = v264;
        (*(v96 + 7))(v252, 1, 1, v264);
        v115 = type metadata accessor for ImageGlyph(0);
        v116 = objc_allocWithZone(v115);
        v117 = &v116[OBJC_IVAR___STKImageGlyph_optionalData];
        *v117 = 0;
        v117[1] = 0xE000000000000000;
        *&v116[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
        v116[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
        sub_19A60F0CC(v105, &v116[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800, &qword_19A7BCE60);
        *&v116[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
        *&v116[OBJC_IVAR___STKImageGlyph_stickerSourceType] = v104;
        v118 = &v116[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
        *v118 = 0;
        v118[1] = 0;
        v119 = &v116[OBJC_IVAR___STKImageGlyph_poseIdentifier];
        *v119 = 0;
        v119[1] = 0;
        v120 = &v116[OBJC_IVAR___STKImageGlyph_emoji];
        *v120 = 0u;
        *(v120 + 1) = 0u;
        *(v120 + 2) = 0u;
        *(v120 + 24) = 0;
        v121 = &v116[OBJC_IVAR___STKImageGlyph_emojiString];
        *v121 = v110;
        v121[1] = v112;
        v122 = v250;
        sub_19A60F0CC(v113, v250, &unk_1EAFCF110, &unk_19A7B6AF0);
        if ((*(v96 + 6))(v122, 1, v114) == 1)
        {
          sub_19A5F2B54(v122, &unk_1EAFCF110, &unk_19A7B6AF0);
        }

        else
        {
          v200 = v249;
          (*(v96 + 4))(v249, v122, v114);
          v201 = sub_19A76DC5C();
          v203 = v202;
          (*(v96 + 1))(v200, v114);
          *v117 = v201;
          v117[1] = v203;
        }

        v204 = &v116[OBJC_IVAR___STKImageGlyph_character];
        *v204 = 0;
        v204[1] = 0;
        v270.receiver = v116;
        v270.super_class = v115;
        v175 = objc_msgSendSuper2(&v270, sel_init);
        sub_19A5F2B54(v113, &unk_1EAFCF110, &unk_19A7B6AF0);
        sub_19A5F2B54(v105, &qword_1EAFCD800, &qword_19A7BCE60);
        return v175;
      }

      goto LABEL_70;
    }

    v71 = v267;
    if (v64 != 4)
    {
      if (v64 != 5)
      {
        goto LABEL_76;
      }

      if (qword_1EAFCB6C8 == -1)
      {
LABEL_26:
        v157 = sub_19A7A9384();
        __swift_project_value_buffer(v157, qword_1EAFCF8D8);

        v158 = sub_19A7A9364();
        v159 = sub_19A7AB584();

        if (os_log_type_enabled(v158, v159))
        {
          v160 = swift_slowAlloc();
          v161 = swift_slowAlloc();
          v272 = v161;
          *v160 = 136315138;
          *(v160 + 4) = sub_19A62540C(v255, v53, &v272);
          _os_log_impl(&dword_19A5EE000, v158, v159, "Was asked to decode an image glyph identifier formatted as recent. This is unexpected. %s", v160, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v161);
          MEMORY[0x19A907A30](v161, -1, -1);
          MEMORY[0x19A907A30](v160, -1, -1);
        }

        return 0;
      }

LABEL_68:
      swift_once();
      goto LABEL_26;
    }

    (*(v265 + 56))(v41, 1, 1, v266);
    v72 = v261;
    v73 = v264;
    (*(v71 + 7))(v261, 1, 1, v264);
    if (v55[2] >= 2uLL)
    {
      v74 = v55[8];
      v75 = v55[9];
      v76 = v55[10];
      v77 = v55[11];

      v78 = MEMORY[0x19A9054C0](v74, v75, v76, v77);
      v266 = v79;

      v80 = type metadata accessor for ImageGlyph(0);
      v81 = objc_allocWithZone(v80);
      v82 = &v81[OBJC_IVAR___STKImageGlyph_optionalData];
      *v82 = 0;
      v82[1] = 0xE000000000000000;
      *&v81[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
      v81[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
      sub_19A60F0CC(v41, &v81[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800, &qword_19A7BCE60);
      *&v81[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
      *&v81[OBJC_IVAR___STKImageGlyph_stickerSourceType] = 0;
      v83 = &v81[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
      *v83 = 0;
      v83[1] = 0;
      v84 = &v81[OBJC_IVAR___STKImageGlyph_poseIdentifier];
      *v84 = 0;
      v84[1] = 0;
      v85 = &v81[OBJC_IVAR___STKImageGlyph_emoji];
      *v85 = 0u;
      *(v85 + 1) = 0u;
      *(v85 + 2) = 0u;
      *(v85 + 24) = 0;
      v86 = &v81[OBJC_IVAR___STKImageGlyph_emojiString];
      *v86 = 0;
      v86[1] = 0;
      v87 = v258;
      sub_19A60F0CC(v72, v258, &unk_1EAFCF110, &unk_19A7B6AF0);
      if ((*(v71 + 6))(v87, 1, v73) == 1)
      {
        sub_19A5F2B54(v87, &unk_1EAFCF110, &unk_19A7B6AF0);
      }

      else
      {
        v183 = v73;
        v184 = v78;
        v185 = v253;
        (*(v71 + 4))(v253, v87, v73);
        v186 = sub_19A76DC5C();
        v188 = v187;
        v189 = v185;
        v78 = v184;
        (*(v71 + 1))(v189, v183);
        *v82 = v186;
        v82[1] = v188;
        v72 = v261;
      }

      v190 = &v81[OBJC_IVAR___STKImageGlyph_character];
      v191 = v266;
      *v190 = v78;
      v190[1] = v191;
      v271.receiver = v81;
      v271.super_class = v80;
      v175 = objc_msgSendSuper2(&v271, sel_init);
      sub_19A5F2B54(v72, &unk_1EAFCF110, &unk_19A7B6AF0);
      sub_19A5F2B54(v41, &qword_1EAFCD800, &qword_19A7BCE60);
      return v175;
    }

LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if (!v64)
  {
    v262 = v55[2];
    if (v262 < 3)
    {
      v95 = 0;
    }

    else
    {
      v88 = v55[12];
      v89 = v55[13];
      v90 = v55[14];
      v91 = v55[15];

      v92 = MEMORY[0x19A9054C0](v88, v89, v90, v91);
      v94 = v93;

      v95 = sub_19A76F540(v92, v94);
    }

    v162 = v267;
    v53 = v260;
    (*(v265 + 56))(v38, 1, 1, v266);
    v163 = v263;
    v164 = v264;
    (*(v162 + 7))(v263, 1, 1, v264);
    v267 = type metadata accessor for ImageGlyph(0);
    v165 = objc_allocWithZone(v267);
    v166 = &v165[OBJC_IVAR___STKImageGlyph_optionalData];
    *v166 = 0;
    v166[1] = 0xE000000000000000;
    *&v165[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
    v165[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
    sub_19A60F0CC(v38, &v165[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800, &qword_19A7BCE60);
    *&v165[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
    *&v165[OBJC_IVAR___STKImageGlyph_stickerSourceType] = v95;
    v167 = &v165[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
    *v167 = 0;
    v167[1] = 0;
    v168 = &v165[OBJC_IVAR___STKImageGlyph_poseIdentifier];
    *v168 = 0;
    v168[1] = 0;
    v169 = &v165[OBJC_IVAR___STKImageGlyph_emoji];
    *v169 = 0u;
    *(v169 + 1) = 0u;
    *(v169 + 2) = 0u;
    *(v169 + 24) = 0;
    v170 = &v165[OBJC_IVAR___STKImageGlyph_emojiString];
    *v170 = 0;
    v170[1] = 0;
    sub_19A60F0CC(v163, v53, &unk_1EAFCF110, &unk_19A7B6AF0);
    if ((*(v162 + 6))(v53, 1, v164) == 1)
    {
      sub_19A5F2B54(v53, &unk_1EAFCF110, &unk_19A7B6AF0);
    }

    else
    {
      v171 = v256;
      (*(v162 + 4))(v256, v53, v164);
      v172 = sub_19A76DC5C();
      v53 = v173;
      (*(v162 + 1))(v171, v164);
      *v166 = v172;
      v166[1] = v53;
    }

    v174 = &v165[OBJC_IVAR___STKImageGlyph_character];
    *v174 = 0;
    v174[1] = 0;
    v276.receiver = v165;
    v276.super_class = v267;
    v175 = objc_msgSendSuper2(&v276, sel_init);
    sub_19A5F2B54(v263, &unk_1EAFCF110, &unk_19A7B6AF0);
    sub_19A5F2B54(v38, &qword_1EAFCD800, &qword_19A7BCE60);
    v176 = 4;
    if (v262 < 4)
    {
      v176 = v262;
    }

    v177 = v176 - 1;
    v178 = v55[2];
    if (v178 >= v177)
    {
      if (v262)
      {
        v272 = v55;
        v273 = v57;
        v274 = v177;
        v275 = (2 * v178) | 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF940, &qword_19A7C21A8);
        sub_19A623714(&qword_1EAFCF948, &qword_1EAFCF940, &qword_19A7C21A8, MEMORY[0x1E69E6968]);
        sub_19A771618();
        v179 = sub_19A7AB1C4();
        v181 = v180;

        v182 = &v175[OBJC_IVAR___STKImageGlyph_optionalData];
        *v182 = v179;
        v182[1] = v181;

        return v175;
      }

      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  if (v64 == 1)
  {
    if (v55[2] >= 5uLL)
    {
      v65 = v55[8];
      v66 = v55[9];
      v67 = v55[10];
      v68 = v55[11];

      MEMORY[0x19A9054C0](v65, v66, v67, v68);

      sub_19A7A8F04();

      v69 = v265;
      v70 = v266;
      if ((*(v265 + 48))(v50, 1, v266) == 1)
      {

        sub_19A5F2B54(v50, &qword_1EAFCD800, &qword_19A7BCE60);
        return 0;
      }

      (*(v69 + 32))(v257, v50, v70);
      if (v55[2] >= 3uLL)
      {
        v192 = v55[12];
        v193 = v55[13];
        v194 = v55[15];
        v195 = v267;
        if ((v193 ^ v192) >> 14)
        {
          v196 = v55[14];
          v197 = sub_19A76DB88(v55[12], v55[13], v196, v55[15], 10, sub_19A76EC58);
          if ((v198 & 0x100) != 0)
          {

            sub_19A76D184(v192, v193, v196, v194, 10);
            v199 = v210;
            v212 = v211;

            if ((v212 & 1) == 0)
            {
LABEL_54:
              if (v55[2] < 4uLL)
              {
                __break(1u);
              }

              else
              {
                v214 = v55[16];
                v215 = v55[17];
                v217 = v55[18];
                v216 = v55[19];

                if ((v215 ^ v214) >> 14)
                {
                  v218 = sub_19A76DB88(v214, v215, v217, v216, 10, sub_19A76F0C4);
                  v220 = v264;
                  if ((v219 & 0x100) != 0)
                  {
                    sub_19A76CBEC(v214, v215, v217, v216, 10);
                  }

                  v221 = v218;
                  v222 = v219;

                  if ((v222 & 1) == 0)
                  {
                    v223 = v246;
                    v224 = sub_19A76F530(v221);
                    if ((v225 & 1) == 0)
                    {
                      v226 = v224;
                      v227 = v265;
                      v228 = v266;
                      v229 = v247;
                      (*(v265 + 16))(v247, v257, v266);
                      (*(v227 + 56))(v229, 0, 1, v228);
                      (*(v195 + 7))(v223, 1, 1, v220);
                      v230 = type metadata accessor for ImageGlyph(0);
                      v231 = objc_allocWithZone(v230);
                      v232 = &v231[OBJC_IVAR___STKImageGlyph_optionalData];
                      *v232 = 0;
                      v232[1] = 0xE000000000000000;
                      *&v231[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
                      v231[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
                      sub_19A60F0CC(v229, &v231[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800, &qword_19A7BCE60);
                      *&v231[OBJC_IVAR___STKImageGlyph_stickerEffectType] = v199;
                      *&v231[OBJC_IVAR___STKImageGlyph_stickerSourceType] = v226;
                      v233 = &v231[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
                      *v233 = 0;
                      v233[1] = 0;
                      v234 = &v231[OBJC_IVAR___STKImageGlyph_poseIdentifier];
                      *v234 = 0;
                      v234[1] = 0;
                      v235 = &v231[OBJC_IVAR___STKImageGlyph_emoji];
                      *v235 = 0u;
                      *(v235 + 1) = 0u;
                      *(v235 + 2) = 0u;
                      *(v235 + 24) = 0;
                      v236 = &v231[OBJC_IVAR___STKImageGlyph_emojiString];
                      *v236 = 0;
                      v236[1] = 0;
                      v237 = v245;
                      sub_19A60F0CC(v223, v245, &unk_1EAFCF110, &unk_19A7B6AF0);
                      if ((*(v195 + 6))(v237, 1, v220) == 1)
                      {
                        sub_19A5F2B54(v237, &unk_1EAFCF110, &unk_19A7B6AF0);
                      }

                      else
                      {
                        v238 = v244;
                        (*(v195 + 4))(v244, v237, v220);
                        v239 = sub_19A76DC5C();
                        v241 = v240;
                        (*(v195 + 1))(v238, v220);
                        *v232 = v239;
                        v232[1] = v241;
                      }

                      v242 = &v231[OBJC_IVAR___STKImageGlyph_character];
                      *v242 = 0;
                      v242[1] = 0;
                      v268.receiver = v231;
                      v268.super_class = v230;
                      v175 = objc_msgSendSuper2(&v268, sel_init);
                      sub_19A5F2B54(v223, &unk_1EAFCF110, &unk_19A7B6AF0);
                      sub_19A5F2B54(v247, &qword_1EAFCD800, &qword_19A7BCE60);
                      (*(v265 + 8))(v257, v266);
                      return v175;
                    }
                  }

                  (*(v265 + 8))(v257, v266);
                  return 0;
                }
              }
            }
          }

          else if ((v198 & 1) == 0)
          {
            v199 = v197;
            goto LABEL_54;
          }

          (*(v265 + 8))(v257, v266);
          goto LABEL_51;
        }

LABEL_73:
        v243 = *(v265 + 8);

        v243(v257, v266);

        goto LABEL_51;
      }

LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_51:

    return 0;
  }

  v123 = v267;
  if (v64 == 2)
  {
    v124 = v262;
    if (v55[2] < 4uLL)
    {
      goto LABEL_51;
    }

    v125 = v55[12];
    v126 = v55[13];
    v127 = v55[14];
    v128 = v55[15];

    v129 = MEMORY[0x19A9054C0](v125, v126, v127, v128);
    v131 = v130;

    v263 = sub_19A76F540(v129, v131);

    (*(v265 + 56))(v124, 1, 1, v266);
    if (v55[2] >= 2uLL)
    {
      v132 = v55[8];
      v133 = v55[9];
      v134 = v55[10];
      v135 = v55[11];

      v136 = MEMORY[0x19A9054C0](v132, v133, v134, v135);
      v138 = v137;

      v139 = v55[12];
      v140 = v55[13];
      v141 = v55[14];
      v142 = v55[15];

      v143 = MEMORY[0x19A9054C0](v139, v140, v141, v142);
      v145 = v144;

      v146 = v259;
      v147 = v264;
      (*(v123 + 7))(v259, 1, 1, v264);
      v148 = type metadata accessor for ImageGlyph(0);
      v149 = objc_allocWithZone(v148);
      v150 = &v149[OBJC_IVAR___STKImageGlyph_optionalData];
      *v150 = 0;
      v150[1] = 0xE000000000000000;
      *&v149[OBJC_IVAR___STKImageGlyph_loadedSticker] = 0;
      v149[OBJC_IVAR___STKImageGlyph_didAttemptToLoadSticker] = 0;
      sub_19A60F0CC(v262, &v149[OBJC_IVAR___STKImageGlyph_stickerUUID], &qword_1EAFCD800, &qword_19A7BCE60);
      *&v149[OBJC_IVAR___STKImageGlyph_stickerEffectType] = 0;
      *&v149[OBJC_IVAR___STKImageGlyph_stickerSourceType] = v263;
      v151 = &v149[OBJC_IVAR___STKImageGlyph_avatarIdentifier];
      *v151 = v136;
      v151[1] = v138;
      v152 = &v149[OBJC_IVAR___STKImageGlyph_poseIdentifier];
      *v152 = v143;
      v152[1] = v145;
      v153 = &v149[OBJC_IVAR___STKImageGlyph_emoji];
      *v153 = 0u;
      *(v153 + 1) = 0u;
      *(v153 + 2) = 0u;
      *(v153 + 24) = 0;
      v154 = &v149[OBJC_IVAR___STKImageGlyph_emojiString];
      *v154 = 0;
      v154[1] = 0;
      v155 = v146;
      v156 = v251;
      sub_19A60F0CC(v155, v251, &unk_1EAFCF110, &unk_19A7B6AF0);
      if ((*(v123 + 6))(v156, 1, v147) == 1)
      {
        sub_19A5F2B54(v156, &unk_1EAFCF110, &unk_19A7B6AF0);
      }

      else
      {
        v205 = v248;
        (*(v123 + 4))(v248, v156, v147);
        v206 = sub_19A76DC5C();
        v208 = v207;
        (*(v123 + 1))(v205, v147);
        *v150 = v206;
        v150[1] = v208;
      }

      v209 = &v149[OBJC_IVAR___STKImageGlyph_character];
      *v209 = 0;
      v209[1] = 0;
      v269.receiver = v149;
      v269.super_class = v148;
      v175 = objc_msgSendSuper2(&v269, sel_init);
      sub_19A5F2B54(v259, &unk_1EAFCF110, &unk_19A7B6AF0);
      sub_19A5F2B54(v262, &qword_1EAFCD800, &qword_19A7BCE60);
      return v175;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

LABEL_76:
  v272 = v64;
  result = sub_19A7AC094();
  __break(1u);
  return result;
}

unint64_t sub_19A770F18(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_19A770F6C()
{
  result = qword_1EAFCF8F0;
  if (!qword_1EAFCF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF8F0);
  }

  return result;
}

unint64_t sub_19A770FC4()
{
  result = qword_1EAFCF8F8;
  if (!qword_1EAFCF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF8F8);
  }

  return result;
}

uint64_t sub_19A77106C(uint64_t a1)
{
  *(a1 + 8) = sub_19A7710F0(&qword_1EAFCF900, type metadata accessor for ImageGlyphCategory, MEMORY[0x1E69E81B8]);
  result = sub_19A7710F0(&qword_1EAFCF908, type metadata accessor for ImageGlyphCategory, &protocol conformance descriptor for ImageGlyphCategory);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_19A7710F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_19A771160(uint64_t a1)
{
  sub_19A625D6C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_19A7713E4(uint64_t a1)
{
  result = sub_19A7A8F64();
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

uint64_t sub_19A7714B8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_19A60FB98;

  return sub_19A7685B0(v2, v3);
}

uint64_t sub_19A771564()
{
  v2 = *(v0 + 16);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_19A60F860;

  return sub_19A768234(v2, v4, v3);
}

unint64_t sub_19A771618()
{
  result = qword_1EAFCF950;
  if (!qword_1EAFCF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF950);
  }

  return result;
}

unint64_t sub_19A77166C()
{
  result = qword_1EAFCF958;
  if (!qword_1EAFCF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCF958);
  }

  return result;
}

id StickerSearchConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_19A771704()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCB200);
  __swift_project_value_buffer(v0, qword_1EAFCB200);
  return sub_19A7A9374();
}

double StickerSearchConfiguration.fontSize.getter()
{
  v1 = OBJC_IVAR___STKStickerSearchConfiguration_fontSize;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StickerSearchConfiguration.fontSize.setter(double a1)
{
  v3 = OBJC_IVAR___STKStickerSearchConfiguration_fontSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double StickerSearchConfiguration.margin.getter()
{
  v1 = OBJC_IVAR___STKStickerSearchConfiguration_margin;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StickerSearchConfiguration.margin.setter(double a1)
{
  v3 = OBJC_IVAR___STKStickerSearchConfiguration_margin;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double StickerSearchConfiguration.spacing.getter()
{
  v1 = OBJC_IVAR___STKStickerSearchConfiguration_spacing;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StickerSearchConfiguration.spacing.setter(double a1)
{
  v3 = OBJC_IVAR___STKStickerSearchConfiguration_spacing;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t StickerSearchConfiguration.visible.getter()
{
  v1 = OBJC_IVAR___STKStickerSearchConfiguration_visible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t StickerSearchConfiguration.visible.setter(char a1)
{
  v3 = OBJC_IVAR___STKStickerSearchConfiguration_visible;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id StickerSearchConfiguration.init()(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___STKStickerSearchConfiguration_fontSize] = 0x4040000000000000;
  *&v2[OBJC_IVAR___STKStickerSearchConfiguration_margin] = 0;
  *&v2[OBJC_IVAR___STKStickerSearchConfiguration_spacing] = 0;
  v2[OBJC_IVAR___STKStickerSearchConfiguration_visible] = 1;
  v5.receiver = v2;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_19A771EAC()
{
  v1 = 0x657A6953746E6F66;
  v2 = 0x676E6963617073;
  if (*v0 != 2)
  {
    v2 = 0x656C6269736976;
  }

  if (*v0)
  {
    v1 = 0x6E696772616DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19A771F24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_19A776AB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_19A771F4C(uint64_t a1)
{
  v2 = sub_19A772264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_19A771F88(uint64_t a1)
{
  v2 = sub_19A772264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id StickerSearchConfiguration.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t StickerSearchConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF988, &qword_19A7C2260);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A772264();
  sub_19A7AC1D4();
  v9 = OBJC_IVAR___STKStickerSearchConfiguration_fontSize;
  swift_beginAccess();
  v17 = *(v3 + v9);
  LOBYTE(v16) = 0;
  sub_19A7722B8();
  sub_19A7ABFE4();
  if (!v2)
  {
    v10 = OBJC_IVAR___STKStickerSearchConfiguration_margin;
    swift_beginAccess();
    v16 = *(v3 + v10);
    LOBYTE(v14) = 1;
    sub_19A7ABFE4();
    v11 = OBJC_IVAR___STKStickerSearchConfiguration_spacing;
    swift_beginAccess();
    v14 = *(v3 + v11);
    v15 = 2;
    sub_19A7ABFE4();
    swift_beginAccess();
    v15 = 3;
    sub_19A7ABFC4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_19A772264()
{
  result = qword_1ED8B3010;
  if (!qword_1ED8B3010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B3010);
  }

  return result;
}

unint64_t sub_19A7722B8()
{
  result = qword_1EAFCB120[0];
  if (!qword_1EAFCB120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAFCB120);
  }

  return result;
}

char *StickerSearchConfiguration.init(from:)(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF990, &qword_19A7C2268);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v28 = OBJC_IVAR___STKStickerSearchConfiguration_fontSize;
  *&v2[OBJC_IVAR___STKStickerSearchConfiguration_fontSize] = 0x4040000000000000;
  v8 = OBJC_IVAR___STKStickerSearchConfiguration_margin;
  *&v2[OBJC_IVAR___STKStickerSearchConfiguration_margin] = 0;
  v9 = OBJC_IVAR___STKStickerSearchConfiguration_spacing;
  *&v2[OBJC_IVAR___STKStickerSearchConfiguration_spacing] = 0;
  v10 = OBJC_IVAR___STKStickerSearchConfiguration_visible;
  v2[OBJC_IVAR___STKStickerSearchConfiguration_visible] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19A772264();
  v29 = v7;
  v12 = ObjectType;
  v11 = v33;
  sub_19A7AC1C4();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = v8;
    v27 = v9;
    v26 = v10;
    v38[0] = 0;
    sub_19A6EA94C();
    v13 = v31;
    v14 = v29;
    sub_19A7ABF64();
    v15 = v37;
    v16 = v28;
    swift_beginAccess();
    *&v3[v16] = v15;
    v17 = v3;
    LOBYTE(v37) = 1;
    sub_19A7ABF64();
    v18 = v36;
    v19 = v33;
    swift_beginAccess();
    *(v19 + v3) = v18;
    LOBYTE(v36) = 2;
    sub_19A7ABF64();
    v20 = v30;
    v21 = v35;
    v22 = v27;
    swift_beginAccess();
    *&v17[v22] = v21;
    LOBYTE(v35) = 3;
    LOBYTE(v22) = sub_19A7ABF44();
    v24 = v26;
    swift_beginAccess();
    v17[v24] = v22 & 1;
    v34.receiver = v17;
    v34.super_class = v12;
    v8 = objc_msgSendSuper2(&v34, sel_init);
    (*(v20 + 8))(v14, v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

uint64_t sub_19A7726E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v1);

  return v1;
}

char *sub_19A77275C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = StickerSearchConfiguration.init(from:)(a1, v7);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

double StickerRemoteSearchViewController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*StickerRemoteSearchViewController.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___STKStickerRemoteSearchViewController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_19A6267A8;
}

void sub_19A7729C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE530, &unk_19A7B7BC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v75 - v2;
  v4 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];
  v5 = objc_allocWithZone(MEMORY[0x1E69DD6A0]);
  v6 = v4;
  v7 = [v5 init];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD688]) initWithProcessIdentity:v6 sceneSpecification:v7];
  v75 = v6;

  swift_getKeyPath();
  swift_getKeyPath();
  ObjectType = v8;
  v9 = v0;
  sub_19A7AB654();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&ObjectType);

  v10 = ObjectType;
  [ObjectType setDelegate_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&ObjectType);

  v11 = ObjectType;
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD698]) init];
  [v11 setActivationController_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&ObjectType);

  v13 = ObjectType;
  sub_19A7AB864();

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE540, &qword_19A7B7BD0);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v3, 1, v14) == 1)
  {
    sub_19A5F783C(v3);
  }

  else
  {
    v16 = sub_19A7AB014();
    v18 = v17;
    v19 = type metadata accessor for ActivitityTypeConfiguration();
    v20 = objc_allocWithZone(v19);
    v21 = &v20[OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType];
    *v21 = v16;
    v21[1] = v18;
    v76.receiver = v20;
    v76.super_class = v19;
    objc_msgSendSuper2(&v76, sel_init);
    swift_getOpaqueTypeConformance2();
    sub_19A6D5134();
    sub_19A7A9504();
    (*(v15 + 8))(v3, v14);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&ObjectType);

  v22 = ObjectType;
  v23 = [ObjectType keyboardSuppressionController];

  if (v23)
  {
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCFA20, qword_19A7C2558);
    sub_19A7AB064();
    v24 = sub_19A7AAFE4();

    v25 = [v23 suppressKeyboardFocusRequestsForReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0;
  }

  *&v9[OBJC_IVAR___STKStickerRemoteSearchViewController_keyboardSuppression] = v25;
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&ObjectType);

  v26 = ObjectType;
  v27 = [ObjectType sceneViewController];

  [v9 addChildViewController_];
  v28 = [v27 view];
  if (!v28)
  {
    goto LABEL_15;
  }

  v29 = v28;
  [objc_opt_self() additionalInsets];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = [v9 view];
  if (!v38)
  {
    __break(1u);
    goto LABEL_17;
  }

  v39 = v38;
  [v38 bounds];
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;

  v48 = -v31;
  v49 = -v33;
  [v29 setFrame_];
  v50 = [v9 view];
  if (!v50)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v51 = v50;
  [v50 addSubview_];

  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_19A7BB2E0;
  v53 = [v29 topAnchor];
  v54 = [v9 view];
  if (!v54)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v55 = v54;
  v56 = [v54 topAnchor];

  v57 = [v53 constraintEqualToAnchor:v56 constant:v48];
  *(v52 + 32) = v57;
  v58 = [v29 bottomAnchor];
  v59 = [v9 view];
  if (!v59)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v60 = v59;
  v61 = [v59 bottomAnchor];

  v62 = [v58 constraintEqualToAnchor:v61 constant:v35];
  *(v52 + 40) = v62;
  v63 = [v29 leftAnchor];
  v64 = [v9 view];
  if (!v64)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v65 = v64;
  v66 = [v64 leftAnchor];

  v67 = [v63 constraintEqualToAnchor:v66 constant:v49];
  *(v52 + 48) = v67;
  v68 = [v29 rightAnchor];
  v69 = [v9 view];
  if (v69)
  {
    v70 = v69;
    v71 = objc_opt_self();
    v72 = [v70 rightAnchor];

    v73 = [v68 constraintEqualToAnchor:v72 constant:v37];
    *(v52 + 56) = v73;
    sub_19A5F5028(0, &qword_1ED8B2030, 0x1E696ACD8);
    v74 = sub_19A7AB234();

    [v71 activateConstraints_];

LABEL_15:
    [v27 didMoveToParentViewController_];

    return;
  }

LABEL_21:
  __break(1u);
}

Swift::Void __swiftcall StickerRemoteSearchViewController.viewDidLoad()()
{
  v1 = v0;
  if (qword_1EAFCB1F0 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCB200);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "viewDidLoad", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    sub_19A7729C8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF9A0, &qword_19A7C2270);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_19A7B6C30;
    v10 = sub_19A7A93E4();
    v11 = MEMORY[0x1E69DC090];
    *(v9 + 32) = v10;
    *(v9 + 40) = v11;
    MEMORY[0x19A905AE0](v9, sel_layoutDirectionDidChange);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall StickerRemoteSearchViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_1EAFCB1F0 != -1)
  {
    swift_once();
  }

  v5 = sub_19A7A9384();
  __swift_project_value_buffer(v5, qword_1EAFCB200);
  v6 = sub_19A7A9364();
  v7 = sub_19A7AB574();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_19A5EE000, v6, v7, "viewDidAppear", v8, 2u);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  v9.receiver = v2;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1);
  sub_19A7735D8();
}

void sub_19A7735D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE530, &unk_19A7B7BC0);
  *&v3 = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v23 - v4;
  v6 = [v0 traitCollection];
  v7 = [v6 layoutDirection];

  v8 = type metadata accessor for LayoutDirectionTraitConfiguration();
  v9 = objc_allocWithZone(v8);
  v10 = OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection;
  *&v9[OBJC_IVAR____TtC10StickerKit33LayoutDirectionTraitConfiguration_layoutDirection] = -1;
  swift_beginAccess();
  *&v9[v10] = v7;
  v24.receiver = v9;
  v24.super_class = v8;
  v11 = objc_msgSendSuper2(&v24, sel_init);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v23);

  v12 = v23;
  sub_19A7AB864();

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE540, &qword_19A7B7BD0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_19A5F783C(v5);
  }

  else
  {
    v15 = v11;
    swift_getOpaqueTypeConformance2();
    sub_19A6B93B4();
    sub_19A7A9504();
    (*(v14 + 8))(v5, v13);
  }

  if (qword_1EAFCB1F0 != -1)
  {
    swift_once();
  }

  v16 = sub_19A7A9384();
  __swift_project_value_buffer(v16, qword_1EAFCB200);
  v17 = v1;
  v18 = sub_19A7A9364();
  v19 = sub_19A7AB574();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    v21 = [v17 traitCollection];
    v22 = [v21 layoutDirection];

    *(v20 + 4) = v22;
    _os_log_impl(&dword_19A5EE000, v18, v19, "layoutDirectionDidChange Layout direction changed: %ld", v20, 0xCu);
    MEMORY[0x19A907A30](v20, -1, -1);
  }

  else
  {

    v18 = v11;
    v11 = v17;
  }
}

void StickerRemoteSearchViewController.search(withQuery:)(void *a1)
{
  if (qword_1EAFCB1F0 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCB200);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "search", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v8);

  v6 = v8;
  v7 = sub_19A6D5188(0, a1, 0, 0);
  [v6 sendAction_];
}

void StickerRemoteSearchViewController.configure(withConfiguration:)(void *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v4);

  v2 = v4;
  v3 = sub_19A6D51D0(1, a1, 0, 0);
  [v2 sendAction_];
}

double StickerRemoteSearchViewController.didSelectEmoji(_:indexPath:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_19A7AAFE4();
  if (qword_1EAFCB6F8 != -1)
  {
    swift_once();
  }

  v8 = CEMCreateStringByTranslatingEmojiCharactersToNameInString();

  if (v8)
  {
    v9 = sub_19A7AB014();
    v11 = v10;
  }

  else
  {

    v9 = a1;
    v11 = a2;
  }

  sub_19A69DBE0(v9, v11);

  v12 = sub_19A7AB394();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_19A755944(0, 0, v6, &unk_19A7C22D0, v13);

  sub_19A702DE0(v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = sub_19A7AAFE4();
    v18 = sub_19A7A9014();
    [v16 didSelectEmoji:v17 indexPath:v18];

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_19A773F38()
{
  v1 = sub_19A7ABDC4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A773FF4, 0, 0);
}

uint64_t sub_19A773FF4(uint64_t a1)
{
  sub_19A7AC0F4();
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_19A7740C0;

  return sub_19A776184(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_19A7740C0()
{
  v2 = *v1;

  v3 = v2[4];
  v4 = v2[3];
  v5 = v2[2];
  if (v0)
  {
  }

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_19A776DDC, 0, 0);
}

uint64_t sub_19A774370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  v4[3] = swift_task_alloc();
  sub_19A7AB354();
  v4[4] = sub_19A7AB344();
  v6 = sub_19A7AB2E4();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_19A774440, v6, v5);
}

uint64_t sub_19A774440(__n128 a1)
{
  v2 = sub_19A7AADC4();
  if (!v3)
  {
    v2 = sub_19A7AABF4();
    if (!v3)
    {
      v2 = sub_19A7AB0A4();
    }
  }

  v4 = v1[3];
  sub_19A69DBE0(v2, v3);

  v5 = sub_19A7AB394();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  sub_19A755944(0, 0, v4, &unk_19A7C2548, v6);

  sub_19A702DE0(v4);
  v7 = objc_opt_self();
  v1[7] = v7;
  [v7 playInputClick];
  v8 = swift_task_alloc();
  v1[8] = v8;
  *v8 = v1;
  v8[1] = sub_19A7745BC;

  return Sticker.uiSticker()();
}

uint64_t sub_19A7745BC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x1EEE6DFA0](sub_19A7746E4, v4, v3);
}

uint64_t sub_19A7746E4()
{
  v1 = v0[9];
  v2 = v0[7];

  [v2 insertSticker_];

  v3 = v0[1];

  return v3();
}

uint64_t sub_19A774774()
{
  v1 = sub_19A7ABDC4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19A774830, 0, 0);
}

uint64_t sub_19A774830(uint64_t a1)
{
  sub_19A7AC0F4();
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_19A7748FC;

  return sub_19A776184(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_19A7748FC()
{
  v2 = *v1;

  v3 = v2[4];
  v4 = v2[3];
  v5 = v2[2];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_19A776DDC;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_19A6E1A2C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

Swift::Void __swiftcall StickerRemoteSearchViewController.toggleGlow(_:)(Swift::Bool a1)
{
  if (qword_1EAFCB1F0 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCB200);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_19A5EE000, v3, v4, "Glow: %{BOOL}d", v5, 8u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = [Strong respondsToSelector_];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = swift_unknownObjectWeakLoadStrong();
      if (v8)
      {
        [v8 toggleGlow_];
        swift_unknownObjectRelease();
      }
    }
  }
}

void _s10StickerKit0A26RemoteSearchViewControllerC022presentEmojiGenerationF15WithInputStringyySSF_0(uint64_t a1, uint64_t a2)
{
  [objc_opt_self() clearActiveKBForwardingInputDelegateAndResign_];
  type metadata accessor for EmojiGenerationRemoteController(0);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = &v4[OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  sub_19A6E0DB8();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_19A6FF284(v4, CGPointMake, 0);
}

double sub_19A774F5C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_19A7AB014();
  v6 = v5;
  v7 = a1;
  _s10StickerKit0A26RemoteSearchViewControllerC022presentEmojiGenerationF15WithInputStringyySSF_0(v4, v6);

  return result;
}

void sub_19A77503C(uint64_t (*a1)(void), void *a2, uint64_t a3)
{
  [objc_opt_self() clearActiveKBForwardingInputDelegateAndResign_];
  a1(0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = &v6[*a2];
  swift_beginAccess();
  *(v7 + 1) = a3;
  swift_unknownObjectWeakAssign();
  sub_19A6FF284(v6, 0, 0);
}

void sub_19A77511C(void *a1, uint64_t a2, uint64_t (*a3)(void), void *a4, uint64_t a5)
{
  v9 = objc_opt_self();
  v10 = a1;
  [v9 clearActiveKBForwardingInputDelegateAndResign_];
  a3(0);
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = &v11[*a4];
  swift_beginAccess();
  *(v12 + 1) = a5;
  swift_unknownObjectWeakAssign();
  sub_19A6FF284(v11, 0, 0);
}

id StickerRemoteSearchViewController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1EAFCB1F0 != -1)
  {
    swift_once();
  }

  v3 = sub_19A7A9384();
  __swift_project_value_buffer(v3, qword_1EAFCB200);
  v4 = sub_19A7A9364();
  v5 = sub_19A7AB574();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19A5EE000, v4, v5, "deinit", v6, 2u);
    MEMORY[0x19A907A30](v6, -1, -1);
  }

  v7 = *&v1[OBJC_IVAR___STKStickerRemoteSearchViewController_keyboardSuppression];
  if (v7)
  {
    [v7 invalidate];
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

id StickerRemoteSearchViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id StickerRemoteSearchViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &unk_1EAFCB0D0, 0x1E69DD688);
  sub_19A7AB664();
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR___STKStickerRemoteSearchViewController_jumpAndSlamAnimation;
  type metadata accessor for JumpAndSlamAnimation();
  swift_allocObject();
  *&v3[v8] = sub_19A5F1740();
  *&v3[OBJC_IVAR___STKStickerRemoteSearchViewController_keyboardSuppression] = 0;
  if (a2)
  {
    v9 = sub_19A7AAFE4();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = v4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, v9, a3);

  return v10;
}

id StickerRemoteSearchViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id StickerRemoteSearchViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &unk_1EAFCB0D0, 0x1E69DD688);
  sub_19A7AB664();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___STKStickerRemoteSearchViewController_jumpAndSlamAnimation;
  type metadata accessor for JumpAndSlamAnimation();
  swift_allocObject();
  *&v1[v4] = sub_19A5F1740();
  *&v1[OBJC_IVAR___STKStickerRemoteSearchViewController_keyboardSuppression] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

void StickerRemoteSearchViewController.emojiGenerationRemoteController(_:didGenerateEmoji:shouldInsert:)(void *a1, void *a2, char a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = [objc_opt_self() activeInstance];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 isInHardwareKeyboardMode];

    if ((v12 & 1) == 0)
    {
      [objc_opt_self() setRestoresToEmojiInputMode];
    }
  }

  if (a3)
  {
    v13 = sub_19A7AB394();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    sub_19A7AB354();
    v14 = a2;
    v15 = v3;
    v16 = a1;
    v17 = sub_19A7AB344();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E85E0];
    v18[2] = v17;
    v18[3] = v19;
    v18[4] = v14;
    v18[5] = v15;
    v18[6] = v16;
    sub_19A6816F0(0, 0, v9, &unk_19A7C22E0, v18);
  }

  else
  {

    sub_19A70255C(a1, 0, 0, 0, 0);
  }
}

uint64_t sub_19A775934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v6[3] = sub_19A7AB354();
  v6[4] = sub_19A7AB344();
  v7 = swift_task_alloc();
  v6[5] = v7;
  *v7 = v6;
  v7[1] = sub_19A7759E8;

  return Sticker.uiSticker()();
}

uint64_t sub_19A7759E8(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_19A7AB2E4();

  return MEMORY[0x1EEE6DFA0](sub_19A775B2C, v3, v2);
}

uint64_t sub_19A775B2C()
{
  v1 = v0[6];
  v2 = v0[2];

  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;
  sub_19A70255C(v2, 0, 0, sub_19A6D656C, v3);

  v5 = v0[1];

  return v5();
}

void StickerRemoteSearchViewController.stickerPhotosViewController(_:didCreate:sourceFrame:)(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  [objc_opt_self() setRestoresToEmojiInputMode];

  v15 = sub_19A69BA80(v11);
  sub_19A68261C(&v15);
  v12 = v15;
  if ((v15 & 0x8000000000000000) != 0 || (v15 & 0x4000000000000000) != 0)
  {
    if (sub_19A7ABBE4())
    {
      goto LABEL_4;
    }

LABEL_9:

    v14 = 0;
    goto LABEL_10;
  }

  if (!*(v15 + 16))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x19A906130](0, v12);
  }

  else
  {
    if (!*(v12 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v13 = *(v12 + 32);
  }

  v14 = v13;

LABEL_10:

  sub_19A71EF78(a1, v14, a3, a4, a5, a6);
}

void StickerRemoteSearchViewController.stickerPhotosViewController(_:didCreate:isLive:sourceFrame:)(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [objc_opt_self() setRestoresToEmojiInputMode];

  v10 = sub_19A7AADE4();
  sub_19A71EF78(a1, v10, a2, a3, a4, a5);
}

void sub_19A775F4C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  [objc_opt_self() setRestoresToEmojiInputMode];

  v10 = sub_19A7AADE4();
  sub_19A71EF78(a1, v10, a2, a3, a4, a5);
}

void sub_19A776030(void *a1)
{
  [objc_opt_self() setRestoresToEmojiInputMode];

  sub_19A70255C(a1, 0, 0, 0, 0);
}

void sub_19A77608C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v3);

  *a2 = v3;
}

uint64_t sub_19A77610C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_19A7AB654();
}

uint64_t sub_19A776184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_19A7ABDB4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_19A776284, 0, 0);
}

uint64_t sub_19A776284()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_19A7ABDC4();
  v5 = sub_19A776D74(&qword_1EAFCA3F0, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_19A7AC0D4();
  sub_19A776D74(&qword_1EAFCA3F8, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_19A7ABDD4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_19A776414;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_19A776414()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_19A7765D0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_19A7765D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A776690@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_19A7766C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A60FB98;

  return sub_19A773F38();
}

uint64_t sub_19A77676C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60F860;

  return sub_19A775934(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for StickerRemoteSearchViewController(uint64_t a1)
{
  result = qword_1ED8B2FF0;
  if (!qword_1ED8B2FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A7768EC(uint64_t a1)
{
  sub_19A6D649C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_19A7769B0()
{
  result = qword_1EAFCFA18;
  if (!qword_1EAFCFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAFCFA18);
  }

  return result;
}

unint64_t sub_19A776A08()
{
  result = qword_1ED8B3000;
  if (!qword_1ED8B3000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B3000);
  }

  return result;
}

unint64_t sub_19A776A60()
{
  result = qword_1ED8B3008;
  if (!qword_1ED8B3008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8B3008);
  }

  return result;
}

uint64_t sub_19A776AB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657A6953746E6F66 && a2 == 0xE800000000000000;
  if (v4 || (sub_19A7AC064() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696772616DLL && a2 == 0xE600000000000000 || (sub_19A7AC064() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6963617073 && a2 == 0xE700000000000000 || (sub_19A7AC064() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C6269736976 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_19A7AC064();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_19A776C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_19A60FB98;

  return sub_19A774370(a1, v4, v5, v6);
}

uint64_t sub_19A776CC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_19A60FB98;

  return sub_19A774774();
}

uint64_t sub_19A776D74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19A776DF4()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCB1B0);
  __swift_project_value_buffer(v0, qword_1EAFCB1B0);
  return sub_19A7A9374();
}

uint64_t sub_19A776E74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v1);

  return v1;
}

void sub_19A776EE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE530, &unk_19A7B7BC0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v70 - v2;
  v4 = [objc_opt_self() identityForEmbeddedApplicationIdentifier_];
  v5 = objc_allocWithZone(MEMORY[0x1E69DD6A0]);
  v6 = v4;
  v7 = [v5 init];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD688]) initWithProcessIdentity:v6 sceneSpecification:v7];

  swift_getKeyPath();
  swift_getKeyPath();
  ObjectType = v8;
  v9 = v0;
  sub_19A7AB654();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&ObjectType);

  v10 = ObjectType;
  [ObjectType setDelegate_];

  v11 = [objc_allocWithZone(MEMORY[0x1E69DD698]) init];
  [v11 setDelegate_];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&ObjectType);

  v12 = ObjectType;
  [ObjectType setActivationController_];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&ObjectType);

  v13 = ObjectType;
  v14 = [ObjectType keyboardSuppressionController];

  if (v14)
  {
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCFA90, &qword_19A7C2600);
    sub_19A7AB064();
    v15 = sub_19A7AAFE4();

    v16 = [v14 suppressKeyboardFocusRequestsForReason_];
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0;
  }

  *&v9[OBJC_IVAR___STKCategoryViewController_keyboardSuppression] = v16;
  swift_unknownObjectRelease();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&ObjectType);

  v17 = ObjectType;
  sub_19A7AB864();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE540, &qword_19A7B7BD0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v3, 1, v18) == 1)
  {
    sub_19A5F783C(v3);
  }

  else
  {
    v20 = sub_19A7AB014();
    v22 = v21;
    v23 = type metadata accessor for ActivitityTypeConfiguration();
    v24 = objc_allocWithZone(v23);
    v25 = &v24[OBJC_IVAR____TtC10StickerKit27ActivitityTypeConfiguration_activityType];
    *v25 = v20;
    v25[1] = v22;
    v73.receiver = v24;
    v73.super_class = v23;
    objc_msgSendSuper2(&v73, sel_init);
    swift_getOpaqueTypeConformance2();
    sub_19A6D5134();
    sub_19A7A9504();
    (*(v19 + 8))(v3, v18);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&ObjectType);

  v26 = ObjectType;
  v27 = [ObjectType sceneViewController];

  [v9 addChildViewController_];
  v28 = [v27 view];
  if (!v28)
  {
    goto LABEL_15;
  }

  v29 = v28;
  v30 = [v9 view];
  if (!v30)
  {
    __break(1u);
    goto LABEL_17;
  }

  v31 = v30;
  [v30 bounds];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  [v29 setFrame_];
  v40 = [v9 view];
  if (!v40)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v41 = v40;
  v71 = v11;
  v72 = v6;
  [v40 addSubview_];

  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD100, &unk_19A7B6CC0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_19A7BB2E0;
  v43 = [v29 topAnchor];
  v44 = [v9 view];
  if (!v44)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v45 = v44;
  v46 = MEMORY[0x1E69DDCE0];
  v47 = *MEMORY[0x1E69DDCE0];
  v48 = [v44 topAnchor];

  v49 = [v43 constraintEqualToAnchor:v48 constant:-v47];
  *(v42 + 32) = v49;
  v50 = [v29 bottomAnchor];
  v51 = [v9 view];
  if (!v51)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v52 = v51;
  v53 = v46[2];
  v54 = [v51 bottomAnchor];

  v55 = [v50 constraintEqualToAnchor:v54 constant:v53];
  *(v42 + 40) = v55;
  v56 = [v29 leftAnchor];
  v57 = [v9 view];
  if (!v57)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v58 = v57;
  v59 = v46[1];
  v60 = [v57 leftAnchor];

  v61 = [v56 constraintEqualToAnchor:v60 constant:-v59];
  *(v42 + 48) = v61;
  v62 = [v29 rightAnchor];
  v63 = [v9 view];
  if (v63)
  {
    v64 = v63;
    v65 = v46[3];
    v66 = objc_opt_self();
    v67 = [v64 rightAnchor];

    v68 = [v62 constraintEqualToAnchor:v67 constant:v65];
    *(v42 + 56) = v68;
    sub_19A5F5028(0, &qword_1ED8B2030, 0x1E696ACD8);
    v69 = sub_19A7AB234();

    [v66 activateConstraints_];

    v11 = v71;
    v6 = v72;
LABEL_15:
    [v27 didMoveToParentViewController_];

    return;
  }

LABEL_21:
  __break(1u);
}

Swift::Void __swiftcall CategoryViewController.viewDidLoad()()
{
  v1 = v0;
  if (qword_1EAFCB1A8 != -1)
  {
    swift_once();
  }

  v2 = sub_19A7A9384();
  __swift_project_value_buffer(v2, qword_1EAFCB1B0);
  v3 = sub_19A7A9364();
  v4 = sub_19A7AB574();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_19A5EE000, v3, v4, "viewDidLoad", v5, 2u);
    MEMORY[0x19A907A30](v5, -1, -1);
  }

  v6 = [v1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [objc_opt_self() clearColor];
    [v7 setBackgroundColor_];

    sub_19A776EE8();
  }

  else
  {
    __break(1u);
  }
}

id sub_19A77799C(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = *(a1 + 16);

  return [v2 postEmojiSearchViewButtonConfigurationWillChangeNotification_];
}

id CategoryViewController.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_1EAFCB1A8 != -1)
  {
    swift_once();
  }

  v3 = sub_19A7A9384();
  __swift_project_value_buffer(v3, qword_1EAFCB1B0);
  v4 = sub_19A7A9364();
  v5 = sub_19A7AB574();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_19A5EE000, v4, v5, "deinit", v6, 2u);
    MEMORY[0x19A907A30](v6, -1, -1);
  }

  v7 = *&v1[OBJC_IVAR___STKCategoryViewController_keyboardSuppression];
  if (v7)
  {
    [v7 invalidate];
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

id CategoryViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_19A7AAFE4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CategoryViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &unk_1EAFCB0D0, 0x1E69DD688);
  sub_19A7AB664();
  *&v3[OBJC_IVAR___STKCategoryViewController_keyboardSuppression] = 0;
  if (a2)
  {
    v7 = sub_19A7AAFE4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id CategoryViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CategoryViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_19A5F5028(0, &unk_1EAFCB0D0, 0x1E69DD688);
  sub_19A7AB664();
  *&v1[OBJC_IVAR___STKCategoryViewController_keyboardSuppression] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

void sub_19A778078(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v3);

  *a2 = v3;
}

uint64_t sub_19A7780F8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_19A7AB654();
}

void _s10StickerKit22CategoryViewControllerC13viewDidAppearyySbF_0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE530, &unk_19A7B7BC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - v3;
  if (qword_1EAFCB1A8 != -1)
  {
    swift_once();
  }

  v5 = sub_19A7A9384();
  __swift_project_value_buffer(v5, qword_1EAFCB1B0);
  v6 = sub_19A7A9364();
  v7 = sub_19A7AB574();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_19A5EE000, v6, v7, "viewDidAppear", v8, 2u);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_19A7AB644(&v20);

  v9 = v20;
  sub_19A7AB864();

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCE540, &qword_19A7B7BD0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    sub_19A5F783C(v4);
    return;
  }

  v12 = [v1 view];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 _inheritedRenderConfig];

    if (v14)
    {
      v15 = [v14 animatedBackground];

      v16 = type metadata accessor for RenderConfiguration();
      v17 = objc_allocWithZone(v16);
      v17[OBJC_IVAR____TtC10StickerKit19RenderConfiguration_animatedBackground] = v15;
      v19.receiver = v17;
      v19.super_class = v16;
      objc_msgSendSuper2(&v19, sel_init);
      swift_getOpaqueTypeConformance2();
      sub_19A6A6190();
      sub_19A7A9504();
      (*(v11 + 8))(v4, v10);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t type metadata accessor for CategoryViewController(uint64_t a1)
{
  result = qword_1EAFCB2E0;
  if (!qword_1EAFCB2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A7784BC(uint64_t a1)
{
  sub_19A6D649C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_19A77855C(uint64_t a1, uint64_t a2)
{
  v3 = sub_19A7A8C04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_19A7A8BC4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_19A778650()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1ED8B2198);
  __swift_project_value_buffer(v0, qword_1ED8B2198);
  return sub_19A7A9374();
}

id sub_19A7786D4()
{
  result = [objc_allocWithZone(type metadata accessor for CategoryKeyView(0)) init];
  qword_1ED8B2D20 = result;
  return result;
}

id static CategoryKeyView.sharedInstance.getter()
{
  if (qword_1ED8B2D18 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED8B2D20;

  return v1;
}

BOOL sub_19A778764()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0, qword_19A7BF0B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_19A7A8EF4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v11 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_lastCreateSticker;
  swift_beginAccess();
  sub_19A60F0CC(v0 + v11, v3, &unk_1EAFCE4E0, qword_19A7BF0B0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_19A5F2B54(v3, &unk_1EAFCE4E0, qword_19A7BF0B0);
    if (qword_1ED8B2190 != -1)
    {
      swift_once();
    }

    v12 = sub_19A7A9384();
    __swift_project_value_buffer(v12, qword_1ED8B2198);
    v13 = sub_19A7A9364();
    v14 = sub_19A7AB574();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_19A5EE000, v13, v14, "didCreateSticker is false", v15, 2u);
      MEMORY[0x19A907A30](v15, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_19A7A8EE4();
    sub_19A7A8E84();
    v18 = v17;
    v19 = *(v5 + 8);
    v19(v7, v4);
    v16 = v18 < 5.0;
    if (qword_1ED8B2190 != -1)
    {
      swift_once();
    }

    v20 = sub_19A7A9384();
    __swift_project_value_buffer(v20, qword_1ED8B2198);
    v21 = sub_19A7A9364();
    v22 = sub_19A7AB574();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v18 < 5.0;
      _os_log_impl(&dword_19A5EE000, v21, v22, "didCreateSticker is %{BOOL}d", v23, 8u);
      MEMORY[0x19A907A30](v23, -1, -1);
    }

    v19(v10, v4);
  }

  return v16;
}

double sub_19A778B08(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0, qword_19A7BF0B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  if (qword_1ED8B2190 != -1)
  {
    swift_once();
  }

  v7 = sub_19A7A9384();
  __swift_project_value_buffer(v7, qword_1ED8B2198);
  v8 = sub_19A7A9364();
  v9 = sub_19A7AB574();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&dword_19A5EE000, v8, v9, "didCreateSticker = %{BOOL}d", v10, 8u);
    MEMORY[0x19A907A30](v10, -1, -1);
  }

  if (a1)
  {
    sub_19A7A8EE4();
    v12 = sub_19A7A8EF4();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    v13 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_lastCreateSticker;
    swift_beginAccess();
    sub_19A66C134(v6, v2 + v13);
    swift_endAccess();
  }

  return result;
}

double (*sub_19A778CD0(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_19A778764();
  return sub_19A778D1C;
}

double sub_19A778D44()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCE4E0, qword_19A7BF0B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  if (qword_1ED8B2190 != -1)
  {
    swift_once();
  }

  v5 = sub_19A7A9384();
  __swift_project_value_buffer(v5, qword_1ED8B2198);
  v6 = sub_19A7A9364();
  v7 = sub_19A7AB574();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_19A5EE000, v6, v7, "clearDidCreateSticker", v8, 2u);
    MEMORY[0x19A907A30](v8, -1, -1);
  }

  v9 = sub_19A7A8EF4();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_lastCreateSticker;
  swift_beginAccess();
  sub_19A66C134(v4, v1 + v10);
  swift_endAccess();
  return result;
}

uint64_t sub_19A778F34@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EmojiKeyboardWaypoint(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  _s9ConverterCMa();
  sub_19A70BADC(v4);
  sub_19A66BBA0(v4, v7);
  sub_19A62D860(v4);
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  if (sub_19A659378(3))
  {
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  MEMORY[0x19A903470](0, v13);
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_19A5F2B54(v7, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  return result;
}

char *sub_19A779148()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFAA0, &qword_19A7C2740);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCFAA8, &qword_19A7C2748);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - v7;
  v9 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_lastCreateSticker;
  v10 = sub_19A7A8EF4();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC10StickerKit15CategoryKeyView_categoriesDidChangeObserver] = 0;
  v11 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_waypointManager;
  _s7ManagerCMa();
  v12 = swift_allocObject();
  v12[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCECF0, &qword_19A7BEEC8);
  v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD988, &qword_19A7BB860) - 8);
  v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_19A7B6C30;
  v16 = (v15 + v14);
  v17 = v13[14];
  *v16 = 0;
  if (qword_1EAFCB640 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for EmojiKeyboardWaypoint(0);
  v19 = __swift_project_value_buffer(v18, qword_1EAFDD760);
  sub_19A62D798(v19, v16 + v17);
  v20 = sub_19A69CAE4(v15);
  swift_setDeallocating();
  sub_19A5F2B54(v16, &qword_1EAFCD988, &qword_19A7BB860);
  swift_deallocClassInstance();
  v12[3] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF140, &qword_19A7B6AE8);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v12[4] = v21;
  v12[5] = 0;
  sub_19A70CCBC();
  *&v1[v11] = v12;
  *&v1[OBJC_IVAR____TtC10StickerKit15CategoryKeyView__emojiKeyManager] = 0;
  v1[OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit15CategoryKeyView_indexPathCancellable] = 0;
  *&v1[OBJC_IVAR____TtC10StickerKit15CategoryKeyView_percentageCancellable] = 0;
  v22 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView__scrollPosition;
  type metadata accessor for CategoryBar.ScrollPosition(0);
  swift_allocObject();
  *&v1[v22] = sub_19A74AFDC();
  v23 = type metadata accessor for CategoryKeyView(0);
  v33.receiver = v1;
  v33.super_class = v23;
  v24 = objc_msgSendSuper2(&v33, sel_init);
  swift_beginAccess();
  v25 = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF438, &unk_19A7C0EB0);
  sub_19A7A9674();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_19A6A52CC(&qword_1ED8B2100, &qword_1EAFCFAA8, &qword_19A7C2748);
  v26 = sub_19A7A9724();

  (*(v6 + 8))(v8, v5);
  *&v25[OBJC_IVAR____TtC10StickerKit15CategoryKeyView_indexPathCancellable] = v26;

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCF538, &qword_19A7C1140);
  sub_19A7A9674();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_19A6A52CC(&qword_1ED8B20F8, &qword_1EAFCFAA0, &qword_19A7C2740);
  v27 = v32;
  v28 = sub_19A7A9724();

  (*(v31 + 8))(v4, v27);
  *&v25[OBJC_IVAR____TtC10StickerKit15CategoryKeyView_percentageCancellable] = v28;

  sub_19A77B4E8();

  return v25;
}

void sub_19A7796FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_19A779BD0(a1);
  }
}

void sub_19A779758(double *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ((*(Strong + OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling) & 1) == 0)
    {
      if (*(Strong + OBJC_IVAR____TtC10StickerKit15CategoryKeyView__emojiKeyManager))
      {
        [swift_unknownObjectRetain() reloadCategoryForOffsetPercentage:Strong withSender:v2];
        swift_unknownObjectRelease();
      }
    }
  }
}

id CategoryKeyView.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC10StickerKit15CategoryKeyView_categoriesDidChangeObserver];
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver_];
    swift_unknownObjectRelease();
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for CategoryKeyView(0);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_19A779A2C()
{
  v1 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling;
  *(v0 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling) = 1;

  sub_19A7A9064();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_19A7A96B4();
  sub_19A74A260();

  *(v0 + v1) = 0;
}

uint64_t sub_19A779BD0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = sub_19A7A9094();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  sub_19A60F0CC(a1, v9, &unk_1EAFCF110, &unk_19A7B6AF0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_19A5F2B54(v9, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  (*(v11 + 32))(v16, v9, v10);
  v23[0] = v16;
  sub_19A77B1A4(v16, v13);
  v18 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling;
  *(v2 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling) = 1;

  v19 = sub_19A7A9064();
  swift_getKeyPath();
  swift_getKeyPath();
  v23[1] = v19;

  sub_19A7A96B4();
  sub_19A74A260();

  *(v2 + v18) = 0;
  v20 = *(v2 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView__emojiKeyManager);
  if (v20)
  {
    swift_unknownObjectRetain();
    v21 = sub_19A7A9014();
    [v20 reloadCategoryForIndexPath:v21 withSender:v2];

    swift_unknownObjectRelease();
  }

  (*(v11 + 16))(v6, v13, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  sub_19A779FCC(v6);
  sub_19A5F2B54(v6, &unk_1EAFCF110, &unk_19A7B6AF0);
  v22 = *(v11 + 8);
  v22(v13, v10);
  return (v22)(v23[0], v10);
}

void sub_19A779F18(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView__emojiKeyManager))
  {
    *(v1 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView__emojiKeyManager) = a1;
    swift_unknownObjectRetain();
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E69DCB88]) initWithType_];
  if (v3)
  {
    v4 = v3;
    [v3 setDisplayType_];
    [a1 updateEmojiKeyManagerWithKey:v4 withKeyView:v1];
  }
}

uint64_t sub_19A779FCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCD690, &qword_19A7B6B00);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  sub_19A60F0CC(a1, v7, &unk_1EAFCF110, &unk_19A7B6AF0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_19A5F2B54(v7, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  v16 = *(v9 + 32);
  v16(v14, v7, v8);
  v17 = sub_19A7AB394();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  (*(v9 + 16))(v11, v14, v8);
  v18 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  v20 = v23;
  *(v19 + 4) = v23;
  v16(&v19[v18], v11, v8);
  v21 = v20;
  sub_19A755944(0, 0, v4, &unk_19A7C2758, v19);

  sub_19A5F2B54(v4, &unk_1EAFCD690, &qword_19A7B6B00);
  return (*(v9 + 8))(v14, v8);
}

uint64_t sub_19A77A2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_19A77A2F0, 0, 0);
}

uint64_t sub_19A77A2F0()
{
  sub_19A70BCC0(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19A77A488()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EmojiKeyboardWaypoint(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1ED8B2190 != -1)
  {
    swift_once();
  }

  v12 = sub_19A7A9384();
  __swift_project_value_buffer(v12, qword_1ED8B2198);
  v13 = sub_19A7A9364();
  v14 = sub_19A7AB574();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_19A5EE000, v13, v14, "scrollToLastViewedIdentifier", v15, 2u);
    MEMORY[0x19A907A30](v15, -1, -1);
  }

  sub_19A70BADC(v11);
  _s9ConverterCMa();
  sub_19A66BBA0(v11, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_19A5F2B54(v4, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v16 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling;
    *(v1 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling) = 1;

    v17 = sub_19A7A9064();
    swift_getKeyPath();
    swift_getKeyPath();
    v22[1] = v17;

    sub_19A7A96B4();
    sub_19A74A260();

    *(v1 + v16) = 0;
    v18 = *(v1 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView__emojiKeyManager);
    if (v18)
    {
      swift_unknownObjectRetain();
      v19 = sub_19A7A9014();
      [v18 reloadCategoryForIndexPath:v19 withSender:v1];
      swift_unknownObjectRelease();
    }

    (*(v6 + 8))(v8, v5);
  }

  v20 = v11[2];

  sub_19A62D860(v11);
  return v20;
}

void sub_19A77A81C(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_19A778B08(1);
  }

  else
  {
    if (qword_1ED8B2A98 != -1)
    {
      swift_once();
    }

    sub_19A75C58C(14, v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_19A5F2B54(v7, &unk_1EAFCF110, &unk_19A7B6AF0);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      (*(v9 + 16))(v4, v11, v8);
      (*(v9 + 56))(v4, 0, 1, v8);
      sub_19A779FCC(v4);
      sub_19A5F2B54(v4, &unk_1EAFCF110, &unk_19A7B6AF0);
      (*(v9 + 8))(v11, v8);
    }
  }
}

uint64_t sub_19A77AAA0()
{
  v1 = v0;
  v2 = type metadata accessor for EmojiKeyboardWaypoint(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - v6;
  v8 = sub_19A7A9094();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9ConverterCMa();
  sub_19A70BADC(v4);
  sub_19A66BBA0(v4, v7);
  sub_19A62D860(v4);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_19A5F2B54(v7, &unk_1EAFCF110, &unk_19A7B6AF0);
  }

  (*(v9 + 32))(v11, v7, v8);
  if (qword_1ED8B2190 != -1)
  {
    swift_once();
  }

  v13 = sub_19A7A9384();
  __swift_project_value_buffer(v13, qword_1ED8B2198);
  v14 = sub_19A7A9364();
  v15 = sub_19A7AB574();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_19A5EE000, v14, v15, "CategoryKeyView is refreshing", v16, 2u);
    MEMORY[0x19A907A30](v16, -1, -1);
  }

  v17 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling;
  *(v1 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling) = 1;

  v18 = sub_19A7A9064();
  swift_getKeyPath();
  swift_getKeyPath();
  v19[1] = v18;

  sub_19A7A96B4();
  sub_19A74A260();

  result = (*(v9 + 8))(v11, v8);
  *(v1 + v17) = 0;
  return result;
}

void (*sub_19A77ADDC())(void *, void)
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - v3;
  v5 = sub_19A7A9094();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED8B2190 != -1)
  {
    swift_once();
  }

  v9 = sub_19A7A9384();
  __swift_project_value_buffer(v9, qword_1ED8B2198);
  v10 = sub_19A7A9364();
  v11 = sub_19A7AB574();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_19A5EE000, v10, v11, "CategoryKeyView categories did change", v12, 2u);
    MEMORY[0x19A907A30](v12, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();

  result = sub_19A7A9694();
  if (__OFADD__(*v14, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v14;
    result(v18, 0);

    swift_getKeyPath();
    swift_getKeyPath();

    sub_19A7A96A4();

    v15 = *(v6 + 48);
    if (v15(v4, 1, v5) == 1)
    {
      sub_19A778F34(v8);
      if (v15(v4, 1, v5) != 1)
      {
        sub_19A5F2B54(v4, &unk_1EAFCF110, &unk_19A7B6AF0);
      }
    }

    else
    {
      (*(v6 + 32))(v8, v4, v5);
    }

    v16 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling;
    *(v1 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView_scrolling) = 1;

    v17 = sub_19A7A9064();
    swift_getKeyPath();
    swift_getKeyPath();
    v18[0] = v17;

    sub_19A7A96B4();
    sub_19A74A260();

    result = (*(v6 + 8))(v8, v5);
    *(v1 + v16) = 0;
  }

  return result;
}

uint64_t sub_19A77B1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAFCF110, &unk_19A7B6AF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for EmojiKeyboardWaypoint(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_19A7A9094();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_19A7A9044())
  {
    return (*(v11 + 16))(a2, a1, v10);
  }

  v20[0] = v6;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_19A7A96A4();

  v14 = v20[1];
  v15 = v14 == sub_19A7A9064();
  v16 = v20[0];
  if (v15)
  {
    return (*(v11 + 16))(a2, a1, v10);
  }

  (*(v11 + 16))(v13, a1, v10);
  if (qword_1ED8B2A98 != -1)
  {
    swift_once();
  }

  sub_19A75C450(a1);
  if ((v19 & 1) == 0 && v18 != 13)
  {
    sub_19A70C200(v18, v9);
    _s9ConverterCMa();
    sub_19A66BBA0(v9, v16);
    sub_19A62D860(v9);
    if ((*(v11 + 48))(v16, 1, v10) == 1)
    {
      sub_19A5F2B54(v16, &unk_1EAFCF110, &unk_19A7B6AF0);
    }

    else
    {
      (*(v11 + 8))(v13, v10);
      (*(v11 + 32))(v13, v16, v10);
    }
  }

  return (*(v11 + 32))(a2, v13, v10);
}

double sub_19A77B4E8()
{
  v1 = OBJC_IVAR____TtC10StickerKit15CategoryKeyView_categoriesDidChangeObserver;
  if (!*(v0 + OBJC_IVAR____TtC10StickerKit15CategoryKeyView_categoriesDidChangeObserver))
  {
    v2 = [objc_opt_self() defaultCenter];
    if (qword_1ED8B2010 != -1)
    {
      swift_once();
    }

    v3 = qword_1ED8B4230;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_19A77B8AC;
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_19A77855C;
    v8[3] = &block_descriptor_35;
    v5 = _Block_copy(v8);

    v6 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v5];
    _Block_release(v5);

    *(v0 + v1) = v6;
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_19A77B65C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_19A77ADDC();
  }
}

uint64_t type metadata accessor for CategoryKeyView(uint64_t a1)
{
  result = qword_1ED8B2CD8;
  if (!qword_1ED8B2CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19A77B704(uint64_t a1)
{
  sub_19A6CF2C4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_19A77B8CC(uint64_t a1)
{
  v4 = *(sub_19A7A9094() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_19A60F860;

  return sub_19A77A2D0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_19A77B9DC()
{
  v0 = sub_19A7A9384();
  __swift_allocate_value_buffer(v0, qword_1EAFCFAB0);
  __swift_project_value_buffer(v0, qword_1EAFCFAB0);
  return sub_19A7A9374();
}

void sub_19A77BA5C()
{
  v1 = v0;
  sub_19A7A8BE4();
  if (v11)
  {
    sub_19A5F5028(0, &qword_1EAFCFC68, 0x1E69DCEF8);
    if (swift_dynamicCast())
    {
      if ([v0 isDescendantOfView_])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        v3 = v9;
        if (Strong && (v4 = sub_19A7AB924(), Strong, (v4 & 1) != 0))
        {

          v5 = *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_scrollViewToObserveCount];
          v6 = __OFADD__(v5, 1);
          v7 = v5 + 1;
          if (v6)
          {
            __break(1u);
          }

          else
          {
            *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_scrollViewToObserveCount] = v7;
          }
        }

        else
        {
          *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_scrollViewToObserveCount] = 0;
          v8 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          sub_19A77BF5C(v8);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_19A5F2B54(v10, &unk_1EAFCD750, &unk_19A7B87D0);
  }
}

void sub_19A77BBDC()
{
  v1 = v0;
  sub_19A7A8BE4();
  if (v13)
  {
    sub_19A5F5028(0, &qword_1EAFCFC68, 0x1E69DCEF8);
    if (swift_dynamicCast())
    {
      v2 = v11;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v4 = Strong, v2 = v11, v5 = sub_19A7AB924(), v4, v2, (v5 & 1) != 0))
      {
        v6 = OBJC_IVAR____SKIStickerEffectViewInternal_scrollViewToObserveCount;
        if (*(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_scrollViewToObserveCount) < 1)
        {
          v10 = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakAssign();
          sub_19A77BF5C(v10);

          *(v1 + v6) = 0;
        }

        else
        {

          v7 = *(v1 + v6);
          v8 = __OFSUB__(v7, 1);
          v9 = v7 - 1;
          if (v8)
          {
            __break(1u);
          }

          else
          {
            *(v1 + v6) = v9;
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_19A5F2B54(v12, &unk_1EAFCD750, &unk_19A7B87D0);
  }
}

uint64_t sub_19A77BD40(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_19A7A8C04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19A7A8BC4();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

id sub_19A77BEDC()
{
  result = [objc_opt_self() mapTableWithKeyOptions:5 valueOptions:0];
  qword_1EAFDD7A0 = result;
  return result;
}

id sub_19A77BF20()
{
  result = [objc_opt_self() weakObjectsHashTable];
  qword_1EAFCFAD0 = result;
  return result;
}

void sub_19A77BF5C(id a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    v5 = a1;
    [v5 _removeScrollViewScrollObserver_];
    if (qword_1EAFCB6E0 != -1)
    {
      swift_once();
    }

    [qword_1EAFCFAD0 removeObject_];
    goto LABEL_9;
  }

  v5 = Strong;
  if (a1)
  {
    sub_19A5F5028(0, &qword_1EAFCFC68, 0x1E69DCEF8);
    a1 = a1;
    v6 = sub_19A7AB924();

    if (v6)
    {
      return;
    }

    goto LABEL_6;
  }

LABEL_9:

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 _addScrollViewScrollObserver_];
    if (qword_1EAFCB6E0 != -1)
    {
      swift_once();
    }

    [qword_1EAFCFAD0 addObject_];
  }
}

void sub_19A77C0F4(double a1)
{
  *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_requiredScale) = a1;
  v2 = OBJC_IVAR____SKIStickerEffectViewInternal_appliedScale;
  if (a1 > 0.0 && *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_appliedScale) != a1)
  {
    *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_appliedScale) = a1;
    v4 = objc_opt_self();
    [v4 begin];
    [v4 setDisableActions_];
    v5 = *(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_metalLayerContainer);
    CATransform3DMakeScale(&v6, 1.0 / *(v1 + v2), 1.0 / *(v1 + v2), 1.0);
    [v5 setSublayerTransform_];
    [v4 commit];
  }
}

void sub_19A77C1C4(char a1)
{
  if (v1[OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive] == (a1 & 1))
  {
    return;
  }

  v2 = OBJC_IVAR____SKIStickerEffectViewInternal_displayLink;
  v3 = *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink];
  if (!v1[OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive])
  {
    if (!v3)
    {
      v11 = 0;
      goto LABEL_9;
    }

LABEL_7:
    v8 = objc_opt_self();
    v9 = v3;
    v10 = [v8 mainRunLoop];
    [v9 removeFromRunLoop:v10 forMode:*MEMORY[0x1E695DA28]];

    v11 = *&v1[v2];
LABEL_9:
    *&v1[v2] = 0;
LABEL_10:

    return;
  }

  if (v3)
  {
    goto LABEL_7;
  }

  v4 = [v1 window];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 screen];

    v7 = [v6 displayLinkWithTarget:v1 selector:sel__internalUpdateFromDisplayLink_];
  }

  else
  {
    v7 = 0;
  }

  v12 = *&v1[v2];
  *&v1[v2] = v7;
  v13 = v7;

  if (v7)
  {
    sub_19A7AB5F4();
    [v13 setPreferredFrameRateRange_];
  }

  v14 = *&v1[v2];
  if (v14)
  {
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 mainRunLoop];
    [v16 addToRunLoop:v17 forMode:*MEMORY[0x1E695DA28]];

    v11 = v17;
    goto LABEL_10;
  }
}

void sub_19A77C3E0(uint64_t a1)
{
  if (qword_1EAFCB590 != -1)
  {
    a1 = swift_once();
  }

  v2 = qword_1EAFDD6E0;
  if (*(v1 + OBJC_IVAR____SKIStickerEffectViewInternal_motionActive) != 1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v8[2] = v1;
    v8[3] = &off_1F0DCE2F8;
    swift_beginAccess();
    v4 = sub_19A6A7540(sub_19A72FA00, v8);
    v5 = *(v2 + 136);
    if (v5 >> 62)
    {
      v7 = v4;
      v6 = sub_19A7ABBE4();
      v4 = v7;
      if (v6 >= v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v4)
      {
LABEL_9:
        sub_19A6C0C2C(v4, v6);
        swift_endAccess();
        sub_19A6A675C();
        return;
      }
    }

    __break(1u);
    return;
  }

  v3 = qword_1EAFDD6E0;

  sub_19A72F668(v1, v3);
}

id sub_19A77C550()
{
  result = sub_19A77C5A0(27.4155678);
  qword_1EAFCFAD8 = result;
  return result;
}

id sub_19A77C578()
{
  result = sub_19A77C5A0(15.4212569);
  qword_1EAFCFAE0 = result;
  return result;
}

id sub_19A77C5A0(double a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69794A8]) init];
  [v2 setStiffness_];
  [v2 stiffness];
  v4 = sqrt(v3);
  [v2 setDamping_];
  v5 = v2;
  [v5 settlingDuration];
  [v5 setDuration_];
  v6 = [objc_opt_self() functionWithName_];
  [v5 setTimingFunction_];

  return v5;
}

id sub_19A77C694(float32x4_t a1)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*&v1[OBJC_IVAR____SKIStickerEffectViewInternal_settlingOrientation], a1))) & 1) == 0)
  {
    v1[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
    if (!*&v1[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
    {
      return [v1 itk_setNeedsLayout];
    }
  }

  return result;
}

id sub_19A77C790(float a1)
{
  v2 = *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_curlPosition];
  *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_curlPosition] = a1;
  if (v2 != a1)
  {
    v1[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
    if (!*&v1[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
    {
      return [v1 itk_setNeedsLayout];
    }
  }

  return result;
}

void sub_19A77C86C(uint64_t result)
{
  if (*&v1[OBJC_IVAR____SKIStickerEffectViewInternal_effect] != result)
  {
    sub_19A77EC24();
    v1[OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress] = 0;
    v1[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
    if (!*&v1[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
    {
      [v1 itk_setNeedsLayout];
    }

    sub_19A77D990();
  }
}

void sub_19A77C8EC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____SKIStickerEffectViewInternal_displayHandler];
  v11 = *&v4[OBJC_IVAR____SKIStickerEffectViewInternal_displayHandler];
  if (v11)
  {
    v12 = v10[1];

    v11(0);
    sub_19A60126C(v11, v12);
  }

  v13 = *&v5[OBJC_IVAR____SKIStickerEffectViewInternal_image];
  *&v5[OBJC_IVAR____SKIStickerEffectViewInternal_image] = a1;
  v14 = a1;
  sub_19A77CBE0(v13);

  v15 = *&v5[OBJC_IVAR____SKIStickerEffectViewInternal_effect];
  *&v5[OBJC_IVAR____SKIStickerEffectViewInternal_effect] = a2;
  v16 = a2;
  if (v15 != a2)
  {
    sub_19A77EC24();
    v5[OBJC_IVAR____SKIStickerEffectViewInternal_renderInProgress] = 0;
    v5[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
    if (!*&v5[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
    {
      [v5 itk_setNeedsLayout];
    }

    sub_19A77D990();
  }

  v17 = *v10;
  v18 = v10[1];
  *v10 = a3;
  v10[1] = a4;
  sub_19A60138C(a3, a4);
  sub_19A60138C(a3, a4);
  sub_19A60126C(v17, v18);
  if (a3)
  {
    sub_19A60126C(a3, a4);
    if ((v5[OBJC_IVAR____SKIStickerEffectViewInternal_displayLinkActive] & 1) == 0)
    {

      sub_19A77F290();
    }
  }
}

void sub_19A77CBE0(uint64_t result)
{
  v2 = *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_image];
  if (v2)
  {
    if (v2 == result)
    {
      return;
    }
  }

  else if (!result)
  {
    return;
  }

  v3 = *&v1[OBJC_IVAR____SKIStickerEffectViewInternal_metalLayer];
  [v3 setHidden_];
  if (([v3 isHidden] & 1) == 0)
  {
    v1[OBJC_IVAR____SKIStickerEffectViewInternal_needsRender] = 1;
    if (!*&v1[OBJC_IVAR____SKIStickerEffectViewInternal_displayLink])
    {
      [v1 itk_setNeedsLayout];
    }
  }

  sub_19A77EC24();
}

uint64_t sub_19A77CD78()
{
  v1 = v0;
  sub_19A7ABCB4();
  MEMORY[0x19A905510](0x65636E6174736E69, 0xEA0000000000203ALL);
  v12 = *&v0[OBJC_IVAR____SKIStickerEffectViewInternal_instanceNumber];
  v2 = sub_19A7AC024();
  MEMORY[0x19A905510](v2);

  MEMORY[0x19A905510](0x3A74636566666520, 0xE900000000000020);
  v3 = [*&v0[OBJC_IVAR____SKIStickerEffectViewInternal_effect] description];
  v4 = sub_19A7AB014();
  v6 = v5;

  MEMORY[0x19A905510](v4, v6);

  MEMORY[0x19A905510](0x3A64657375617020, 0xE900000000000020);
  if (v1[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused])
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____SKIStickerEffectViewInternal_isPaused])
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x19A905510](v7, v8);

  MEMORY[0x19A905510](0x3A73646E756F6220, 0xE900000000000020);
  [v1 bounds];
  type metadata accessor for CGRect(0);
  sub_19A7ABDE4();
  MEMORY[0x19A905510](0xD000000000000016, 0x800000019A7CE600);
  if (v1[OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke])
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (v1[OBJC_IVAR____SKIStickerEffectViewInternal_boundsIncludeStroke])
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x19A905510](v9, v10);

  return 0;
}