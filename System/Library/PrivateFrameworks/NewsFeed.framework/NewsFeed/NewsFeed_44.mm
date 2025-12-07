void sub_1D5F41AA8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1D5F4249C(0, &unk_1EC881460, MEMORY[0x1E69E6A10]);
    v2 = sub_1D7263CDC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v3 = sub_1D5B5A498(0, &qword_1EC881450, 0x1E69B5628);
  v30[5] = v2;
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = v5 + 63;
  if (v3 == MEMORY[0x1E69E6158])
  {
    v25 = v8 >> 6;

    v26 = 0;
    if (!v7)
    {
      goto LABEL_28;
    }

    do
    {
      v27 = v26;
LABEL_31:
      sub_1D5F42518(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v27 << 6)), v30);
      v28 = sub_1D7263C5C();
      sub_1D5F42574(v30);
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (!v29)
      {

        return;
      }

      v7 &= v7 - 1;
      sub_1D5F41F28(v29);
      v26 = v27;
    }

    while (v7);
LABEL_28:
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v27);
      ++v26;
      if (v7)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    v9 = v8 >> 6;
    v10 = v2 + 56;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      sub_1D5F42518(*(a1 + 48) + 40 * (__clz(__rbit64(v7)) | (v11 << 6)), v30);
      v14 = sub_1D7263C5C();
      sub_1D5F42574(v30);
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      v17 = sub_1D72636FC();
      v18 = -1 << *(v2 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v10 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v2 + 48) + 8 * v12) = v16;
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v9)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
}

void sub_1D5F41F28(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D72636FC();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_1D5B5A498(0, &qword_1EC881450, 0x1E69B5628);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_1D726370C();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void sub_1D5F42068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1D7261ABC();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7261B2C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 == 5 || a5 == 2)
  {
    v26 = v17;
    sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
    v25 = sub_1D726308C();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = a1;
    v21[4] = a2;
    v21[5] = a3;
    v21[6] = a4;
    aBlock[4] = sub_1D5F423C0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D5B6B06C;
    aBlock[3] = &block_descriptor_7;
    v22 = _Block_copy(aBlock);

    sub_1D7261AEC();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D5B736C8(&qword_1EDF3A8F0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1D5B73908(0);
    sub_1D5B736C8(&qword_1EDF1B560, sub_1D5B73908, MEMORY[0x1E69E6328]);
    sub_1D7263B6C();
    v23 = v25;
    MEMORY[0x1DA6FA730](0, v19, v13, v22);
    _Block_release(v22);

    (*(v27 + 8))(v13, v10);
    (*(v15 + 8))(v19, v26);
  }
}

uint64_t sub_1D5F423D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatPluginData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D5F42434()
{
  result = qword_1EC881458;
  if (!qword_1EC881458)
  {
    sub_1D5B5A498(255, &qword_1EC881450, 0x1E69B5628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881458);
  }

  return result;
}

void sub_1D5F4249C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B5A498(255, &qword_1EC881450, 0x1E69B5628);
    v7 = sub_1D5F42434();
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D5F425C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5F42628@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v50 - v16;
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  v18 = type metadata accessor for TagMastheadModel(0);
  v19 = *(a1 + *(v18 + 24));
  *(a3 + 32) = v19;
  v20 = *(a1 + *(v18 + 28));
  v21 = type metadata accessor for TagMastheadViewBackground(0);
  *(a3 + v21[11]) = v20;
  v22 = *a1;
  swift_getObjectType();
  v23 = v19;
  v24 = &off_1E84D3000;
  if ((FCTagProviding.forceBasicTagMasthead.getter() & 1) != 0 || ![v22 theme])
  {
    goto LABEL_8;
  }

  ObjectType = swift_getObjectType();
  v26 = FCFeedTheming.navigationChromeBackgroundImage(for:userInterfaceIdiom:)([a2 horizontalSizeClass], objc_msgSend(a2, sel_userInterfaceIdiom));
  if (!v26)
  {
    swift_unknownObjectRelease();
LABEL_8:
    *(a3 + v21[8]) = 0;
    *(a3 + v21[9]) = 0;
    v32 = 4;
    goto LABEL_9;
  }

  v27 = v26;
  v54 = v17;
  v28 = FCFeedTheming.darkStyleNavigationChromeBackgroundImage(for:userInterfaceIdiom:)([a2 horizontalSizeClass], objc_msgSend(a2, sel_userInterfaceIdiom));
  v53 = ObjectType;
  if (!v28)
  {
    v28 = v27;
  }

  v29 = v28;
  v51 = sub_1D5B5A498(0, &qword_1EDF1AB50, 0x1E69B51B8);
  v56 = v51;
  v30 = sub_1D5EECFF8();
  v57 = v30;
  v55 = v27;
  v52 = v27;
  [a2 displayScale];
  sub_1D725E64C();
  swift_allocObject();
  *(a3 + v21[8]) = sub_1D725E63C();
  v56 = v51;
  v57 = v30;
  v55 = v29;
  v31 = v29;
  [a2 displayScale];
  swift_allocObject();
  *(a3 + v21[9]) = sub_1D725E63C();
  v32 = FCFeedTheming.navigationChromeBackgroundImageContentMode(for:userInterfaceIdiom:)([a2 horizontalSizeClass], objc_msgSend(a2, sel_userInterfaceIdiom));
  swift_unknownObjectRelease();

  v17 = v54;
  v24 = &off_1E84D3000;
LABEL_9:
  *(a3 + v21[10]) = v32;
  v33 = [v22 v24[380]];
  if (v33 && (v34 = [v33 navigationChromeBackgroundGradient], swift_unknownObjectRelease(), v34))
  {
    v53 = a2;
    v54 = v17;
    v35 = v21[6];
    v36 = v34;
    GradientDescriptor.init(from:)(v36, a3 + v35);
    v37 = sub_1D725DD3C();
    v38 = *(*(v37 - 8) + 56);
    v38(a3 + v35, 0, 1, v37);
    v39 = [v22 v24[380]];
    if (!v39 || (v40 = [v39 darkStyleNavigationChromeBackgroundGradient], swift_unknownObjectRelease(), (v41 = v40) == 0))
    {
      v41 = v36;
    }

    v42 = v54;
    GradientDescriptor.init(from:)(v41, v54);

    sub_1D5F433D0(a1);
    v38(v42, 0, 1, v37);
    return sub_1D5F4342C(v42, a3 + v21[7]);
  }

  else
  {

    sub_1D5F433D0(a1);
    v44 = v21[6];
    v45 = sub_1D725DD3C();
    v46 = *(v45 - 8);
    v47 = *(v46 + 56);
    v53 = (v46 + 56);
    v54 = v47;
    (v47)(a3 + v44, 1, 1, v45);
    v48 = a3 + v21[7];
    v49 = v54;

    return v49(v48, 1, 1, v45);
  }
}

void sub_1D5F42B3C(char *a1, void *a2)
{
  sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v43 = &v37 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - v13;
  v15 = sub_1D725DD3C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v41 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x1EEE9AC00](v19, v20).n128_u64[0];
  v23 = &v37 - v22;
  v40 = *&a1[qword_1EDF3A2D8];
  [v40 setHidden_];
  v24 = *&a1[qword_1EDF3A2E0];
  [v24 setHidden_];
  v39 = a1;
  [*&a1[qword_1EDF3A2E8] setBackgroundColor_];
  v25 = type metadata accessor for TagMastheadViewBackground(0);
  v26 = *(v25 + 24);
  v44 = v2;
  sub_1D5F42FF8(v2 + v26, v14);
  v27 = *(v16 + 48);
  if (v27(v14, 1, v15) == 1)
  {
    sub_1D5F43078(v14);
  }

  else
  {
    v37 = v24;
    v38 = a2;
    v28 = *(v16 + 32);
    v28(v23, v14, v15);
    v29 = v43;
    sub_1D5F42FF8(v44 + *(v25 + 28), v43);
    if (v27(v29, 1, v15) == 1)
    {
      (*(v16 + 8))(v23, v15);
      sub_1D5F43078(v29);
      a2 = v38;
    }

    else
    {
      v30 = v41;
      v28(v41, v29, v15);
      [v40 setHidden_];
      v31 = [v39 traitCollection];
      v32 = [v31 userInterfaceStyle];

      if (v32 >= 2)
      {
        a2 = v38;
        v35 = v42;
        if (v32 == 2)
        {
          (*(v16 + 16))(v42, v30, v15);
        }

        else
        {
          (*(v16 + 16))(v42, v23, v15);
        }

        (*(v16 + 56))(v35, 0, 1, v15);
        sub_1D725CD5C();
        v36 = *(v16 + 8);
        v36(v30, v15);
        v36(v23, v15);
      }

      else
      {
        v33 = v42;
        (*(v16 + 16))(v42, v23, v15);
        (*(v16 + 56))(v33, 0, 1, v15);
        sub_1D725CD5C();
        v34 = *(v16 + 8);
        v34(v30, v15);
        v34(v23, v15);
        a2 = v38;
      }
    }

    v24 = v37;
  }

  sub_1D5F430F0(v24, a2);
}

uint64_t type metadata accessor for TagMastheadViewBackground(uint64_t a1)
{
  result = qword_1EDF23EB8;
  if (!qword_1EDF23EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5F42FF8(uint64_t a1, uint64_t a2)
{
  sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5F43078(uint64_t a1)
{
  sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D5F430F0(void *a1, void *a2)
{
  v5 = type metadata accessor for TagMastheadViewBackground(0);
  v6 = *(v2 + *(v5 + 32));
  if (v6)
  {
    v7 = v5;
    v8 = *(v2 + *(v5 + 36));
    if (v8)
    {

      [a1 setHidden_];
      v9 = [a1 traitCollection];
      v10 = [v9 userInterfaceStyle];

      if (v10 == 2)
      {
        v11 = v8;
      }

      else
      {
        v11 = v6;
      }

      [a1 setClipsToBounds_];
      [a1 setContentMode_];
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v12 = sub_1D725E64C();
      v13 = MEMORY[0x1E69D7F48];
      v17 = v12;
      v18 = MEMORY[0x1E69D7F48];
      v16[0] = v11;

      v14 = sub_1D725D0BC();
      __swift_destroy_boxed_opaque_existential_1(v16);
      if (v14)
      {
        v15 = v14;
        sub_1D725FBBC();
        [a1 layoutIfNeeded];
        [a1 setNeedsDisplay];
      }

      else
      {
        v17 = v12;
        v18 = v13;
        v16[0] = v11;
        swift_allocObject();
        swift_unknownObjectWeakInit();

        sub_1D725FB5C();

        __swift_destroy_boxed_opaque_existential_1(v16);
      }
    }
  }
}

void sub_1D5F4332C(void *a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = a1;
      sub_1D725FBBC();
      [v4 layoutIfNeeded];
      [v4 setNeedsDisplay];
    }
  }
}

uint64_t sub_1D5F433D0(uint64_t a1)
{
  v2 = type metadata accessor for TagMastheadModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5F4342C(uint64_t a1, uint64_t a2)
{
  sub_1D5F435F0(0, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D5F434D4(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_1D5B5A498(319, qword_1EDF1A6A0, 0x1E69DC888);
    if (v2 <= 0x3F)
    {
      sub_1D5F435F0(319, &qword_1EDF3B598, MEMORY[0x1E69D7B70]);
      if (v3 <= 0x3F)
      {
        sub_1D5F435F0(319, &qword_1EDF3B4E8, MEMORY[0x1E69D7F50]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ContentMode(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D5F435F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void __swiftcall HeadlineFontBook.init(titleFont:excerptFont:accessoryFont:publisherFont:adBadgeFont:)(NewsFeed::HeadlineFontBook *__return_ptr retstr, UIFont titleFont, UIFont excerptFont, UIFont accessoryFont, UIFont publisherFont, UIFont adBadgeFont)
{
  retstr->titleFont = titleFont;
  retstr->excerptFont = excerptFont;
  retstr->accessoryFont = accessoryFont;
  retstr->publisherFont = publisherFont;
  retstr->adBadgeFont = adBadgeFont;
}

id sub_1D5F4368C(uint64_t *a1)
{
  *&v1[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_resizing] = *a1;

  return [v1 setNeedsLayout];
}

uint64_t sub_1D5F436D4()
{
  sub_1D5E42B34();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D72849C0;
  v2 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_widthLayer);
  v3 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_heightLayer);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  v4 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_leftMarginLayer);
  v5 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_rightMarginLayer);
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  v6 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_topMarginLayer);
  v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_bottomMarginLayer);
  *(v1 + 64) = v6;
  *(v1 + 72) = v7;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return v1;
}

unint64_t sub_1D5F43794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_resizing] = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_frameLayer;
  *&v3[v7] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v8 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_widthLayer;
  *&v3[v8] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v9 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_heightLayer;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v10 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_leftMarginLayer;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v11 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_rightMarginLayer;
  *&v3[v11] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v12 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_topMarginLayer;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v13 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_bottomMarginLayer;
  *&v3[v13] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  if (a3)
  {
    v14 = sub_1D726203C();
  }

  else
  {
    v14 = 0;
  }

  v49.receiver = v3;
  v49.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v49, sel_initWithStyle_reuseIdentifier_, a1, v14);

  v16 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_frameLayer;
  v17 = *&v15[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_frameLayer];
  v18 = v15;
  [v17 setLineWidth_];
  v19 = *&v15[v16];
  sub_1D5E42B34();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D72816C0;
  sub_1D5BAFAD8();
  v21 = v19;
  *(v20 + 32) = sub_1D72636EC();
  v22 = sub_1D726265C();

  [v21 setLineDashPattern_];

  v23 = *&v15[v16];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 lightGrayColor];
  v27 = [v26 CGColor];

  [v25 setStrokeColor_];
  v28 = *&v15[v16];
  v29 = [v24 clearColor];
  v30 = [v29 CGColor];

  [v28 setFillColor_];
  v31 = [v18 contentView];

  v32 = [v31 layer];
  [v32 addSublayer_];

  v48 = v18;
  result = sub_1D5F436D4();
  v34 = result;
  if (!(result >> 62))
  {
    v35 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_6;
    }

LABEL_13:

    return v48;
  }

  result = sub_1D7263BFC();
  v35 = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v35 >= 1)
  {
    v36 = 0;
    v47 = *MEMORY[0x1E6979E98];
    v37 = *MEMORY[0x1E6979E78];
    do
    {
      if ((v34 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x1DA6FB460](v36, v34);
      }

      else
      {
        v38 = *(v34 + 8 * v36 + 32);
      }

      v39 = v38;
      ++v36;
      [v38 setLineWidth_];
      v40 = [v24 clearColor];
      v41 = [v40 CGColor];

      [v39 setFillColor_];
      [v39 setLineJoin_];
      [v39 setLineCap_];
      v42 = [v24 systemBlueColor];
      v43 = [v42 colorWithAlphaComponent_];

      v44 = [v43 CGColor];
      [v39 setStrokeColor_];

      v45 = [v48 contentView];
      v46 = [v45 layer];

      [v46 addSublayer_];
    }

    while (v35 != v36);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1D5F43D54()
{
  v123.receiver = v0;
  v123.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v123, sel_layoutSubviews);
  [v0 bounds];
  v1 = CGRectGetWidth(v124) * 0.5;
  v2 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_frameLayer];
  [v0 bounds];
  v3 = CGRectGetWidth(v125) * 0.5 - v1 * 0.5;
  [v0 bounds];
  [v2 setFrame_];
  [v2 bounds];
  v8 = [objc_opt_self() bezierPathWithRect_];
  v9 = [v8 CGPath];

  [v2 setPath_];
  v10 = sub_1D5F436D4();
  v11 = v10;
  if (v10 >> 62)
  {
    v12 = sub_1D7263BFC();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  v13 = objc_opt_self();
  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1DA6FB460](v15, v11);
    }

    else
    {
      v16 = *(v11 + 8 * v15 + 32);
    }

    v17 = v16;
    ++v15;
    v18 = [v14 systemBlueColor];
    v19 = [v18 colorWithAlphaComponent_];

    v20 = [v19 CGColor];
    [v17 setStrokeColor_];
  }

  while (v12 != v15);
LABEL_10:

  v21 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_heightLayer];
  [v0 bounds];
  v22 = CGRectGetWidth(v127) * 0.5;
  [v2 frame];
  v23 = CGRectGetMinY(v128) + 8.0;
  [v0 bounds];
  v24 = CGRectGetWidth(v129) * 0.5;
  [v2 frame];
  v25 = CGRectGetMaxY(v130) + -8.0;
  v26 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v26 moveToPoint_];
  [v26 addLineToPoint_];
  sub_1D6089D88(v26, v22, v23, v24, v25);
  sub_1D6089D88(v26, v24, v25, v22, v23);
  v27 = [v26 CGPath];

  v119 = v21;
  [v21 setPath_];

  v28 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_widthLayer];
  [v2 frame];
  v29 = CGRectGetMinX(v131) + 8.0;
  [v0 bounds];
  v30 = CGRectGetHeight(v132) * 0.5;
  [v2 frame];
  v31 = CGRectGetMaxX(v133) + -8.0;
  [v0 bounds];
  v32 = CGRectGetHeight(v134) * 0.5;
  v33 = [objc_allocWithZone(MEMORY[0x1E69DC728]) init];
  [v33 moveToPoint_];
  [v33 addLineToPoint_];
  sub_1D6089D88(v33, v29, v30, v31, v32);
  sub_1D6089D88(v33, v31, v32, v29, v30);
  v34 = [v33 CGPath];

  v117 = v28;
  [v28 setPath_];

  v35 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_topMarginLayer];
  [v0 bounds];
  v36 = CGRectGetWidth(v135) * 0.5;
  [v0 bounds];
  v37 = CGRectGetWidth(v136) * 0.5;
  [v2 frame];
  MinY = CGRectGetMinY(v137);
  v39 = sub_1D6089EA4(v36, 8.0, v37, MinY + -8.0, 8.0);
  v40 = [v39 CGPath];

  v120 = v35;
  [v35 setPath_];

  v41 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_bottomMarginLayer];
  [v0 bounds];
  v42 = CGRectGetWidth(v138) * 0.5;
  [v2 frame];
  v43 = CGRectGetMaxY(v139) + 8.0;
  [v0 bounds];
  v44 = CGRectGetWidth(v140) * 0.5;
  [v0 bounds];
  Height = CGRectGetHeight(v141);
  v46 = sub_1D6089EA4(v42, v43, v44, Height + -8.0, 8.0);
  v47 = [v46 CGPath];

  [v41 setPath_];
  [v2 frame];
  v48 = CGRectGetMinY(v142) + -16.0;
  v49 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_leftMarginLayer];
  [v2 frame];
  v50 = CGRectGetMinX(v143) + -8.0;
  [v0 bounds];
  v51 = CGRectGetHeight(v144) * 0.5;
  [v2 frame];
  v52 = CGRectGetMinX(v145) + -8.0 - v48;
  [v0 bounds];
  v53 = CGRectGetHeight(v146);
  v54 = sub_1D6089EA4(v50, v51, v52, v53 * 0.5, 8.0);
  v55 = [v54 CGPath];

  v118 = v49;
  [v49 setPath_];

  v56 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_rightMarginLayer];
  [v2 frame];
  v57 = CGRectGetMaxX(v147) + 8.0;
  [v0 bounds];
  v58 = CGRectGetHeight(v148) * 0.5;
  [v2 frame];
  v59 = v48 + CGRectGetMaxX(v149) + 8.0;
  [v0 bounds];
  v60 = CGRectGetHeight(v150);
  v61 = sub_1D6089EA4(v57, v58, v59, v60 * 0.5, 8.0);
  v62 = [v61 CGPath];

  v121 = v56;
  [v56 setPath_];

  v63 = *&v0[OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_resizing];
  if (!v63)
  {
    return;
  }

  v116 = v41;
  swift_beginAccess();
  v64 = v63[2];
  v122 = v63;
  if (*(v64 + 16))
  {
    sub_1D7264A0C();

    sub_1D72621EC();
    v65 = sub_1D7264A5C();
    v66 = -1 << *(v64 + 32);
    v67 = v65 & ~v66;
    if ((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
    {
      v68 = ~v66;
      while (*(*(v64 + 48) + v67) > 2u || !*(*(v64 + 48) + v67) || *(*(v64 + 48) + v67) == 2)
      {
        v69 = sub_1D72646CC();

        if (v69)
        {
          goto LABEL_23;
        }

        v67 = (v67 + 1) & v68;
        if (((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_23:

      v70 = [objc_opt_self() systemBlueColor];
      v71 = [v70 CGColor];

      [v117 setStrokeColor_];
    }

    else
    {
LABEL_19:
    }
  }

  else
  {
  }

  v72 = v63[2];
  if (*(v72 + 16))
  {
    sub_1D7264A0C();

    sub_1D72621EC();
    v73 = sub_1D7264A5C();
    v74 = -1 << *(v72 + 32);
    v75 = v73 & ~v74;
    if ((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
    {
      v76 = ~v74;
      while (1)
      {
        v77 = *(*(v72 + 48) + v75);
        if (v77 >= 4 && v77 != 5)
        {
          break;
        }

        v78 = sub_1D72646CC();

        if (v78)
        {
          goto LABEL_34;
        }

        v75 = (v75 + 1) & v76;
        if (((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

LABEL_34:

      v79 = [objc_opt_self() systemBlueColor];
      v80 = [v79 CGColor];

      [v119 setStrokeColor_];
    }

    else
    {
LABEL_31:
    }
  }

  v81 = v63[2];
  if (*(v81 + 16))
  {
    sub_1D7264A0C();

    sub_1D72621EC();
    v82 = sub_1D7264A5C();
    v83 = -1 << *(v81 + 32);
    v84 = v82 & ~v83;
    if ((*(v81 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84))
    {
      v85 = ~v83;
      while (1)
      {
        v86 = *(*(v81 + 48) + v84);
        if (v86 <= 2 && v86 != 1 && v86 != 2)
        {
          break;
        }

        v87 = sub_1D72646CC();

        if (v87)
        {
          goto LABEL_46;
        }

        v84 = (v84 + 1) & v85;
        if (((*(v81 + 56 + ((v84 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v84) & 1) == 0)
        {

          goto LABEL_47;
        }
      }

LABEL_46:

      v88 = [objc_opt_self() systemBlueColor];
      v89 = [v88 CGColor];

      [v118 setStrokeColor_];
LABEL_47:
      v63 = v122;
    }

    else
    {
    }
  }

  v90 = v63[2];
  if (*(v90 + 16))
  {
    sub_1D7264A0C();

    sub_1D72621EC();
    v91 = sub_1D7264A5C();
    v92 = -1 << *(v90 + 32);
    v93 = v91 & ~v92;
    if ((*(v90 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93))
    {
      v94 = ~v92;
      while (*(*(v90 + 48) + v93) != 2)
      {
        v95 = sub_1D72646CC();

        if (v95)
        {
          goto LABEL_57;
        }

        v93 = (v93 + 1) & v94;
        if (((*(v90 + 56 + ((v93 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v93) & 1) == 0)
        {

          goto LABEL_58;
        }
      }

LABEL_57:

      v96 = [objc_opt_self() systemBlueColor];
      v97 = [v96 CGColor];

      [v121 setStrokeColor_];
LABEL_58:
      v63 = v122;
    }

    else
    {
    }
  }

  v98 = v63[2];
  if (*(v98 + 16))
  {
    sub_1D7264A0C();

    sub_1D72621EC();
    v99 = sub_1D7264A5C();
    v100 = -1 << *(v98 + 32);
    v101 = v99 & ~v100;
    if ((*(v98 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101))
    {
      v102 = ~v100;
      while (1)
      {
        v103 = *(*(v98 + 48) + v101);
        if (v103 > 2 && v103 != 4 && v103 != 5)
        {
          break;
        }

        v104 = sub_1D72646CC();

        if (v104)
        {
          goto LABEL_70;
        }

        v101 = (v101 + 1) & v102;
        if (((*(v98 + 56 + ((v101 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v101) & 1) == 0)
        {

          goto LABEL_71;
        }
      }

LABEL_70:

      v105 = [objc_opt_self() systemBlueColor];
      v106 = [v105 CGColor];

      [v120 setStrokeColor_];
LABEL_71:
      v63 = v122;
    }

    else
    {
    }
  }

  v107 = v63[2];
  if (!*(v107 + 16))
  {
LABEL_80:

    return;
  }

  sub_1D7264A0C();

  sub_1D72621EC();
  v108 = sub_1D7264A5C();
  v109 = -1 << *(v107 + 32);
  v110 = v108 & ~v109;
  if (((*(v107 + 56 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
  {

    goto LABEL_80;
  }

  v111 = ~v109;
  while (1)
  {
    v112 = *(*(v107 + 48) + v110);
    if (v112 > 4)
    {
      break;
    }

    v113 = sub_1D72646CC();

    if (v113)
    {
      goto LABEL_82;
    }

    v110 = (v110 + 1) & v111;
    if (((*(v107 + 56 + ((v110 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v110) & 1) == 0)
    {

      return;
    }
  }

LABEL_82:

  v114 = [objc_opt_self() systemBlueColor];
  v115 = [v114 CGColor];

  [v116 setStrokeColor_];
}

void sub_1D5F452A4()
{
  *(v0 + OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_resizing) = 0;
  v1 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_frameLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v2 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_widthLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v3 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_heightLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v4 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_leftMarginLayer;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v5 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_rightMarginLayer;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v6 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_topMarginLayer;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v7 = OBJC_IVAR____TtC8NewsFeed32DebugFormatInspectorResizingCell_bottomMarginLayer;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D5F45404(char a1, uint64_t a2)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - v10;
  v12 = sub_1D7264AAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v55 + 1) = a2;
  LOBYTE(v54) = a1;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v17 = sub_1D7264A7C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v11, v7);
  if ((*(v18 + 88))(v7, v17) != *MEMORY[0x1E69E75A8])
  {
    (*(v18 + 8))(v7, v17);
LABEL_7:
    (*(v13 + 8))(v16, v12);
    goto LABEL_8;
  }

  v45 = v13;
  v46 = v12;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v19 == result)
  {
    v21 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v21)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v54 = v52;
      v55 = v53[0];
      v56 = v53[1];
      sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);
      v23 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
        v24 = v52;
        v25 = sub_1D5C73AB0(v52, *(&v52 + 1));
        if (v26)
        {
          v49[0] = v25;
          v49[1] = v26;
          sub_1D5BF4D9C();
          v27 = sub_1D7263A0C();
          v29 = v28;

          v30 = sub_1D5FD24A4(1uLL, v24, v23);
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v37 = MEMORY[0x1DA6F97E0](v30, v32, v34, v36);
          v39 = v38;

          *&v47[0] = v27;
          *(&v47[0] + 1) = v29;

          MEMORY[0x1DA6F9910](v37, v39);

          v23 = *(&v47[0] + 1);
          v24 = *&v47[0];
        }

        v40 = v46;
        __swift_destroy_boxed_opaque_existential_1(v53);
        sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v47, v49);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1D7273AE0;
          *(v41 + 32) = v24;
          *(v41 + 40) = v23;
          v42 = v50;
          v43 = v51;
          __swift_project_boxed_opaque_existential_1(v49, v50);
          v44 = (*(v43 + 8))(v42, v43);
          *&v52 = v41;
          sub_1D6985160(v44);
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
          v22 = v52;
          __swift_destroy_boxed_opaque_existential_1(v49);
        }

        else
        {
          v48 = 0;
          memset(v47, 0, sizeof(v47));
          sub_1D5BFB704(v47, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1D7273AE0;
          *(v22 + 32) = v24;
          *(v22 + 40) = v23;
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v54, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    (*(v45 + 8))(v16, v46);
LABEL_8:
    v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v11, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F45ACC()
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v42 - v7;
  v9 = sub_1D7264AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v50[0] + 1) = &type metadata for FormatLiveActivityBinding.Command;
  *&v49 = swift_allocObject();
  sub_1D5F58338(v0, v49 + 16);
  sub_1D5F58394(v0, v51);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v14 = sub_1D7264A7C();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v8, 1, v14) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v8, v4);
  if ((*(v15 + 88))(v4, v14) != *MEMORY[0x1E69E75A8])
  {
    (*(v15 + 8))(v4, v14);
LABEL_7:
    (*(v10 + 8))(v13, v9);
    goto LABEL_8;
  }

  v42 = v10;
  v43 = v9;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v16 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v16 == result)
  {
    v18 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v18)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v51[0] = v49;
      v51[1] = v50[0];
      v51[2] = v50[1];
      sub_1D5D28654(v51, &v49, sub_1D5F57EB8);
      v20 = *(&v49 + 1);
      if (*(&v49 + 1))
      {
        v21 = v49;
        v22 = sub_1D5C73AB0(v49, *(&v49 + 1));
        if (v23)
        {
          v46[0] = v22;
          v46[1] = v23;
          sub_1D5BF4D9C();
          v24 = sub_1D7263A0C();
          v26 = v25;

          v27 = sub_1D5FD24A4(1uLL, v21, v20);
          v29 = v28;
          v31 = v30;
          v33 = v32;

          v34 = MEMORY[0x1DA6F97E0](v27, v29, v31, v33);
          v36 = v35;

          *&v44[0] = v24;
          *(&v44[0] + 1) = v26;

          MEMORY[0x1DA6F9910](v34, v36);

          v20 = *(&v44[0] + 1);
          v21 = *&v44[0];
        }

        v37 = v42;
        __swift_destroy_boxed_opaque_existential_1(v50);
        sub_1D5D28654(v51, &v49, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v44, v46);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v38 = swift_allocObject();
          *(v38 + 16) = xmmword_1D7273AE0;
          *(v38 + 32) = v21;
          *(v38 + 40) = v20;
          v39 = v47;
          v40 = v48;
          __swift_project_boxed_opaque_existential_1(v46, v47);
          v41 = (*(v40 + 8))(v39, v40);
          *&v49 = v38;
          sub_1D6985160(v41);
          sub_1D5F57F4C(v51, sub_1D5F57EB8);
          (*(v37 + 8))(v13, v43);
          v19 = v49;
          __swift_destroy_boxed_opaque_existential_1(v46);
        }

        else
        {
          v45 = 0;
          memset(v44, 0, sizeof(v44));
          sub_1D5BFB704(v44, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_1D7273AE0;
          *(v19 + 32) = v21;
          *(v19 + 40) = v20;
          sub_1D5F57F4C(v51, sub_1D5F57EB8);
          (*(v37 + 8))(v13, v43);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v51, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v50);
    }

    (*(v42 + 8))(v13, v43);
LABEL_8:
    v19 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v8, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F461B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49 - v14;
  v16 = sub_1D7264AAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v59 + 1) = &type metadata for FormatSportsEventBinding.Command;
  v21 = swift_allocObject();
  *&v58 = v21;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = v4;
  sub_1D5F5844C(a1, a2, a3, v4, sub_1D5E1DA1C);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v22 = sub_1D7264A7C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v15, v11);
  if ((*(v23 + 88))(v11, v22) != *MEMORY[0x1E69E75A8])
  {
    (*(v23 + 8))(v11, v22);
LABEL_7:
    (*(v17 + 8))(v20, v16);
    goto LABEL_8;
  }

  v49 = v17;
  v50 = v16;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v24 == result)
  {
    v26 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v26)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v58 = v56;
      v59 = v57[0];
      v60 = v57[1];
      sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);
      v28 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v29 = v56;
        v30 = sub_1D5C73AB0(v56, *(&v56 + 1));
        if (v31)
        {
          v53[0] = v30;
          v53[1] = v31;
          sub_1D5BF4D9C();
          v32 = sub_1D7263A0C();
          v34 = v33;

          v35 = sub_1D5FD24A4(1uLL, v29, v28);
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v42 = MEMORY[0x1DA6F97E0](v35, v37, v39, v41);
          v44 = v43;

          *&v51[0] = v32;
          *(&v51[0] + 1) = v34;

          MEMORY[0x1DA6F9910](v42, v44);

          v28 = *(&v51[0] + 1);
          v29 = *&v51[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v57);
        sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v51, v53);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1D7273AE0;
          *(v45 + 32) = v29;
          *(v45 + 40) = v28;
          v46 = v54;
          v47 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          v48 = (*(v47 + 8))(v46, v47);
          *&v56 = v45;
          sub_1D6985160(v48);
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
          v27 = v56;
          __swift_destroy_boxed_opaque_existential_1(v53);
        }

        else
        {
          v52 = 0;
          memset(v51, 0, sizeof(v51));
          sub_1D5BFB704(v51, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1D7273AE0;
          *(v27 + 32) = v29;
          *(v27 + 40) = v28;
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v58, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    (*(v49 + 8))(v20, v50);
LABEL_8:
    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v15, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F468CC()
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - v7;
  v9 = sub_1D7264AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v52[0] + 1) = &type metadata for FormatSportsEventBinding.Image;
  v14 = swift_allocObject();
  *&v51 = v14;
  v15 = v0[1];
  v14[1] = *v0;
  v14[2] = v15;
  *(v14 + 41) = *(v0 + 25);
  sub_1D5F5823C(v0, v53);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v16 = sub_1D7264A7C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v8, v4);
  if ((*(v17 + 88))(v4, v16) != *MEMORY[0x1E69E75A8])
  {
    (*(v17 + 8))(v4, v16);
LABEL_7:
    (*(v10 + 8))(v13, v9);
    goto LABEL_8;
  }

  v44 = v10;
  v45 = v9;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v18 == result)
  {
    v20 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v20)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v53[0] = v51;
      v53[1] = v52[0];
      v53[2] = v52[1];
      sub_1D5D28654(v53, &v51, sub_1D5F57EB8);
      v22 = *(&v51 + 1);
      if (*(&v51 + 1))
      {
        v23 = v51;
        v24 = sub_1D5C73AB0(v51, *(&v51 + 1));
        if (v25)
        {
          v48[0] = v24;
          v48[1] = v25;
          sub_1D5BF4D9C();
          v26 = sub_1D7263A0C();
          v28 = v27;

          v29 = sub_1D5FD24A4(1uLL, v23, v22);
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v36 = MEMORY[0x1DA6F97E0](v29, v31, v33, v35);
          v38 = v37;

          *&v46[0] = v26;
          *(&v46[0] + 1) = v28;

          MEMORY[0x1DA6F9910](v36, v38);

          v22 = *(&v46[0] + 1);
          v23 = *&v46[0];
        }

        v39 = v44;
        __swift_destroy_boxed_opaque_existential_1(v52);
        sub_1D5D28654(v53, &v51, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v46, v48);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1D7273AE0;
          *(v40 + 32) = v23;
          *(v40 + 40) = v22;
          v41 = v49;
          v42 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v43 = (*(v42 + 8))(v41, v42);
          *&v51 = v40;
          sub_1D6985160(v43);
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
          v21 = v51;
          __swift_destroy_boxed_opaque_existential_1(v48);
        }

        else
        {
          v47 = 0;
          memset(v46, 0, sizeof(v46));
          sub_1D5BFB704(v46, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          *(v21 + 32) = v23;
          *(v21 + 40) = v22;
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v53, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    (*(v44 + 8))(v13, v45);
LABEL_8:
    v21 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v8, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F46FC8(uint64_t a1, char a2, uint64_t a3)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - v12;
  v14 = sub_1D7264AAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v56 + 1) = a3;
  *&v55 = a1;
  BYTE8(v55) = a2;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v19 = sub_1D7264A7C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v13, v9);
  if ((*(v20 + 88))(v9, v19) != *MEMORY[0x1E69E75A8])
  {
    (*(v20 + 8))(v9, v19);
LABEL_7:
    (*(v15 + 8))(v18, v14);
    goto LABEL_8;
  }

  v46 = v15;
  v47 = v14;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v21 == result)
  {
    v23 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v55 = v53;
      v56 = v54[0];
      v57 = v54[1];
      sub_1D5D28654(&v55, &v53, sub_1D5F57EB8);
      v25 = *(&v53 + 1);
      if (*(&v53 + 1))
      {
        v26 = v53;
        v27 = sub_1D5C73AB0(v53, *(&v53 + 1));
        if (v28)
        {
          v50[0] = v27;
          v50[1] = v28;
          sub_1D5BF4D9C();
          v29 = sub_1D7263A0C();
          v31 = v30;

          v32 = sub_1D5FD24A4(1uLL, v26, v25);
          v34 = v33;
          v36 = v35;
          v38 = v37;

          v39 = MEMORY[0x1DA6F97E0](v32, v34, v36, v38);
          v41 = v40;

          *&v48[0] = v29;
          *(&v48[0] + 1) = v31;

          MEMORY[0x1DA6F9910](v39, v41);

          v25 = *(&v48[0] + 1);
          v26 = *&v48[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v54);
        sub_1D5D28654(&v55, &v53, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v48, v50);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1D7273AE0;
          *(v42 + 32) = v26;
          *(v42 + 40) = v25;
          v43 = v51;
          v44 = v52;
          __swift_project_boxed_opaque_existential_1(v50, v51);
          v45 = (*(v44 + 8))(v43, v44);
          *&v53 = v42;
          sub_1D6985160(v45);
          sub_1D5F57F4C(&v55, sub_1D5F57EB8);
          (*(v46 + 8))(v18, v47);
          v24 = v53;
          __swift_destroy_boxed_opaque_existential_1(v50);
        }

        else
        {
          v49 = 0;
          memset(v48, 0, sizeof(v48));
          sub_1D5BFB704(v48, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1D7273AE0;
          *(v24 + 32) = v26;
          *(v24 + 40) = v25;
          sub_1D5F57F4C(&v55, sub_1D5F57EB8);
          (*(v46 + 8))(v18, v47);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v55, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    (*(v46 + 8))(v18, v47);
LABEL_8:
    v24 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v13, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F476A4(uint64_t a1)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - v8;
  v10 = sub_1D7264AAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v53 + 1) = a1;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v15 = sub_1D7264A7C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v9, v5);
  if ((*(v16 + 88))(v5, v15) != *MEMORY[0x1E69E75A8])
  {
    (*(v16 + 8))(v5, v15);
LABEL_7:
    (*(v11 + 8))(v14, v10);
    goto LABEL_8;
  }

  v43 = v11;
  v44 = v10;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v17 == result)
  {
    v19 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v19)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v52 = v50;
      v53 = v51[0];
      v54 = v51[1];
      sub_1D5D28654(&v52, &v50, sub_1D5F57EB8);
      v21 = *(&v50 + 1);
      if (*(&v50 + 1))
      {
        v22 = v50;
        v23 = sub_1D5C73AB0(v50, *(&v50 + 1));
        if (v24)
        {
          v47[0] = v23;
          v47[1] = v24;
          sub_1D5BF4D9C();
          v25 = sub_1D7263A0C();
          v27 = v26;

          v28 = sub_1D5FD24A4(1uLL, v22, v21);
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v35 = MEMORY[0x1DA6F97E0](v28, v30, v32, v34);
          v37 = v36;

          *&v45[0] = v25;
          *(&v45[0] + 1) = v27;

          MEMORY[0x1DA6F9910](v35, v37);

          v21 = *(&v45[0] + 1);
          v22 = *&v45[0];
        }

        v38 = v43;
        __swift_destroy_boxed_opaque_existential_1(v51);
        sub_1D5D28654(&v52, &v50, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v45, v47);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_1D7273AE0;
          *(v39 + 32) = v22;
          *(v39 + 40) = v21;
          v40 = v48;
          v41 = v49;
          __swift_project_boxed_opaque_existential_1(v47, v48);
          v42 = (*(v41 + 8))(v40, v41);
          *&v50 = v39;
          sub_1D6985160(v42);
          sub_1D5F57F4C(&v52, sub_1D5F57EB8);
          (*(v38 + 8))(v14, v44);
          v20 = v50;
          __swift_destroy_boxed_opaque_existential_1(v47);
        }

        else
        {
          v46 = 0;
          memset(v45, 0, sizeof(v45));
          sub_1D5BFB704(v45, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1D7273AE0;
          *(v20 + 32) = v22;
          *(v20 + 40) = v21;
          sub_1D5F57F4C(&v52, sub_1D5F57EB8);
          (*(v38 + 8))(v14, v44);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v52, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v51);
    }

    (*(v43 + 8))(v14, v44);
LABEL_8:
    v20 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v9, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F47D5C(uint64_t a1, char a2)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - v10;
  v12 = sub_1D7264AAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v55 + 1) = &type metadata for FormatPuzzleTypeBinding.Text;
  *&v54 = a1;
  BYTE8(v54) = a2 & 1;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v17 = sub_1D7264A7C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v11, v7);
  if ((*(v18 + 88))(v7, v17) != *MEMORY[0x1E69E75A8])
  {
    (*(v18 + 8))(v7, v17);
LABEL_7:
    (*(v13 + 8))(v16, v12);
    goto LABEL_8;
  }

  v45 = v13;
  v46 = v12;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v19 == result)
  {
    v21 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v21)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v54 = v52;
      v55 = v53[0];
      v56 = v53[1];
      sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);
      v23 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
        v24 = v52;
        v25 = sub_1D5C73AB0(v52, *(&v52 + 1));
        if (v26)
        {
          v49[0] = v25;
          v49[1] = v26;
          sub_1D5BF4D9C();
          v27 = sub_1D7263A0C();
          v29 = v28;

          v30 = sub_1D5FD24A4(1uLL, v24, v23);
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v37 = MEMORY[0x1DA6F97E0](v30, v32, v34, v36);
          v39 = v38;

          *&v47[0] = v27;
          *(&v47[0] + 1) = v29;

          MEMORY[0x1DA6F9910](v37, v39);

          v23 = *(&v47[0] + 1);
          v24 = *&v47[0];
        }

        v40 = v46;
        __swift_destroy_boxed_opaque_existential_1(v53);
        sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v47, v49);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1D7273AE0;
          *(v41 + 32) = v24;
          *(v41 + 40) = v23;
          v42 = v50;
          v43 = v51;
          __swift_project_boxed_opaque_existential_1(v49, v50);
          v44 = (*(v43 + 8))(v42, v43);
          *&v52 = v41;
          sub_1D6985160(v44);
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
          v22 = v52;
          __swift_destroy_boxed_opaque_existential_1(v49);
        }

        else
        {
          v48 = 0;
          memset(v47, 0, sizeof(v47));
          sub_1D5BFB704(v47, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1D7273AE0;
          *(v22 + 32) = v24;
          *(v22 + 40) = v23;
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v54, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    (*(v45 + 8))(v16, v46);
LABEL_8:
    v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v11, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F48434(char a1, uint64_t a2)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - v10;
  v12 = sub_1D7264AAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v55 + 1) = a2;
  LOBYTE(v54) = a1 & 1;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v17 = sub_1D7264A7C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v11, v7);
  if ((*(v18 + 88))(v7, v17) != *MEMORY[0x1E69E75A8])
  {
    (*(v18 + 8))(v7, v17);
LABEL_7:
    (*(v13 + 8))(v16, v12);
    goto LABEL_8;
  }

  v45 = v13;
  v46 = v12;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v19 == result)
  {
    v21 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v21)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v54 = v52;
      v55 = v53[0];
      v56 = v53[1];
      sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);
      v23 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
        v24 = v52;
        v25 = sub_1D5C73AB0(v52, *(&v52 + 1));
        if (v26)
        {
          v49[0] = v25;
          v49[1] = v26;
          sub_1D5BF4D9C();
          v27 = sub_1D7263A0C();
          v29 = v28;

          v30 = sub_1D5FD24A4(1uLL, v24, v23);
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v37 = MEMORY[0x1DA6F97E0](v30, v32, v34, v36);
          v39 = v38;

          *&v47[0] = v27;
          *(&v47[0] + 1) = v29;

          MEMORY[0x1DA6F9910](v37, v39);

          v23 = *(&v47[0] + 1);
          v24 = *&v47[0];
        }

        v40 = v46;
        __swift_destroy_boxed_opaque_existential_1(v53);
        sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v47, v49);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1D7273AE0;
          *(v41 + 32) = v24;
          *(v41 + 40) = v23;
          v42 = v50;
          v43 = v51;
          __swift_project_boxed_opaque_existential_1(v49, v50);
          v44 = (*(v43 + 8))(v42, v43);
          *&v52 = v41;
          sub_1D6985160(v44);
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
          v22 = v52;
          __swift_destroy_boxed_opaque_existential_1(v49);
        }

        else
        {
          v48 = 0;
          memset(v47, 0, sizeof(v47));
          sub_1D5BFB704(v47, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1D7273AE0;
          *(v22 + 32) = v24;
          *(v22 + 40) = v23;
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v54, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    (*(v45 + 8))(v16, v46);
LABEL_8:
    v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v11, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F48C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double (*a5)(uint64_t, uint64_t, uint64_t, void, __n128))
{
  v56 = a5;
  LODWORD(v55) = BYTE1(a3);
  v9 = a3 >> 8;
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v55 - v16;
  v18 = sub_1D7264AAC();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v65 + 1) = a4;
  *&v64 = a1;
  *(&v64 + 1) = a2;
  LOBYTE(v65) = a3;
  BYTE1(v65) = v9;
  v24 = a3;
  v25 = v17;
  v56(a1, a2, v24, v55, v21);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v26 = sub_1D7264A7C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v17, 1, v26) == 1)
  {
    goto LABEL_7;
  }

  v28 = v19;
  v56 = v18;
  sub_1D5F57E24(v25, v13);
  if ((*(v27 + 88))(v13, v26) != *MEMORY[0x1E69E75A8])
  {
    (*(v27 + 8))(v13, v26);
    v18 = v56;
LABEL_7:
    (*(v19 + 8))(v23, v18);
    v33 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1D5D28118(v25, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v33;
  }

  v55 = v25;
  v29 = v23;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v30 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v30 == result)
  {
    v32 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v32)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v64 = v62;
      v65 = v63[0];
      v66 = v63[1];
      sub_1D5D28654(&v64, &v62, sub_1D5F57EB8);
      v34 = *(&v62 + 1);
      if (*(&v62 + 1))
      {
        v35 = v62;
        v36 = sub_1D5C73AB0(v62, *(&v62 + 1));
        if (v37)
        {
          v59[0] = v36;
          v59[1] = v37;
          sub_1D5BF4D9C();
          v38 = sub_1D7263A0C();
          v40 = v39;

          v41 = sub_1D5FD24A4(1uLL, v35, v34);
          v43 = v42;
          v45 = v44;
          v47 = v46;

          v48 = MEMORY[0x1DA6F97E0](v41, v43, v45, v47);
          v50 = v49;

          *&v57[0] = v38;
          *(&v57[0] + 1) = v40;

          MEMORY[0x1DA6F9910](v48, v50);

          v34 = *(&v57[0] + 1);
          v35 = *&v57[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v63);
        sub_1D5D28654(&v64, &v62, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v57, v59);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1D7273AE0;
          *(v51 + 32) = v35;
          *(v51 + 40) = v34;
          v52 = v60;
          v53 = v61;
          __swift_project_boxed_opaque_existential_1(v59, v60);
          v54 = (*(v53 + 8))(v52, v53);
          *&v62 = v51;
          sub_1D6985160(v54);
          sub_1D5F57F4C(&v64, sub_1D5F57EB8);
          (*(v28 + 8))(v29, v56);
          v33 = v62;
          __swift_destroy_boxed_opaque_existential_1(v59);
        }

        else
        {
          v58 = 0;
          memset(v57, 0, sizeof(v57));
          sub_1D5BFB704(v57, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_1D7273AE0;
          *(v33 + 32) = v35;
          *(v33 + 40) = v34;
          sub_1D5F57F4C(&v64, sub_1D5F57EB8);
          (*(v28 + 8))(v29, v56);
        }

        goto LABEL_15;
      }

      sub_1D5F57F4C(&v64, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v63);
    }

    (*(v19 + 8))(v29, v56);
    v33 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v25 = v55;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F493D0()
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - v7;
  v9 = sub_1D7264AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v52[0] + 1) = &type metadata for FormatRecipeBinding.Text;
  v14 = swift_allocObject();
  *&v51 = v14;
  v15 = v0[1];
  v14[1] = *v0;
  v14[2] = v15;
  v14[3] = v0[2];
  sub_1D5F58298(v0, v53);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v16 = sub_1D7264A7C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v8, v4);
  if ((*(v17 + 88))(v4, v16) != *MEMORY[0x1E69E75A8])
  {
    (*(v17 + 8))(v4, v16);
LABEL_7:
    (*(v10 + 8))(v13, v9);
    goto LABEL_8;
  }

  v44 = v10;
  v45 = v9;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v18 == result)
  {
    v20 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v20)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v53[0] = v51;
      v53[1] = v52[0];
      v53[2] = v52[1];
      sub_1D5D28654(v53, &v51, sub_1D5F57EB8);
      v22 = *(&v51 + 1);
      if (*(&v51 + 1))
      {
        v23 = v51;
        v24 = sub_1D5C73AB0(v51, *(&v51 + 1));
        if (v25)
        {
          v48[0] = v24;
          v48[1] = v25;
          sub_1D5BF4D9C();
          v26 = sub_1D7263A0C();
          v28 = v27;

          v29 = sub_1D5FD24A4(1uLL, v23, v22);
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v36 = MEMORY[0x1DA6F97E0](v29, v31, v33, v35);
          v38 = v37;

          *&v46[0] = v26;
          *(&v46[0] + 1) = v28;

          MEMORY[0x1DA6F9910](v36, v38);

          v22 = *(&v46[0] + 1);
          v23 = *&v46[0];
        }

        v39 = v44;
        __swift_destroy_boxed_opaque_existential_1(v52);
        sub_1D5D28654(v53, &v51, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v46, v48);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1D7273AE0;
          *(v40 + 32) = v23;
          *(v40 + 40) = v22;
          v41 = v49;
          v42 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v43 = (*(v42 + 8))(v41, v42);
          *&v51 = v40;
          sub_1D6985160(v43);
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
          v21 = v51;
          __swift_destroy_boxed_opaque_existential_1(v48);
        }

        else
        {
          v47 = 0;
          memset(v46, 0, sizeof(v46));
          sub_1D5BFB704(v46, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          *(v21 + 32) = v23;
          *(v21 + 40) = v22;
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v53, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    (*(v44 + 8))(v13, v45);
LABEL_8:
    v21 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v8, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F49B18(uint64_t a1, uint64_t a2, double (*a3)(uint64_t, _OWORD *))
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v48 - v12;
  v14 = sub_1D7264AAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v56[0] + 1) = a1;
  v19 = swift_allocObject();
  *&v55 = v19;
  v20 = *(v3 + 16);
  *(v19 + 16) = *v3;
  *(v19 + 32) = v20;
  *(v19 + 48) = *(v3 + 32);
  *(v19 + 64) = *(v3 + 48);
  a3(v3, v57);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v21 = sub_1D7264A7C();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v13, 1, v21) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v13, v9);
  if ((*(v22 + 88))(v9, v21) != *MEMORY[0x1E69E75A8])
  {
    (*(v22 + 8))(v9, v21);
LABEL_7:
    (*(v15 + 8))(v18, v14);
    goto LABEL_8;
  }

  v48 = v15;
  v49 = v14;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v23 == result)
  {
    v25 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v25)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v57[0] = v55;
      v57[1] = v56[0];
      v57[2] = v56[1];
      sub_1D5D28654(v57, &v55, sub_1D5F57EB8);
      v27 = *(&v55 + 1);
      if (*(&v55 + 1))
      {
        v28 = v55;
        v29 = sub_1D5C73AB0(v55, *(&v55 + 1));
        if (v30)
        {
          v52[0] = v29;
          v52[1] = v30;
          sub_1D5BF4D9C();
          v31 = sub_1D7263A0C();
          v33 = v32;

          v34 = sub_1D5FD24A4(1uLL, v28, v27);
          v36 = v35;
          v38 = v37;
          v40 = v39;

          v41 = MEMORY[0x1DA6F97E0](v34, v36, v38, v40);
          v43 = v42;

          *&v50[0] = v31;
          *(&v50[0] + 1) = v33;

          MEMORY[0x1DA6F9910](v41, v43);

          v27 = *(&v50[0] + 1);
          v28 = *&v50[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v56);
        sub_1D5D28654(v57, &v55, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v50, v52);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_1D7273AE0;
          *(v44 + 32) = v28;
          *(v44 + 40) = v27;
          v45 = v53;
          v46 = v54;
          __swift_project_boxed_opaque_existential_1(v52, v53);
          v47 = (*(v46 + 8))(v45, v46);
          *&v55 = v44;
          sub_1D6985160(v47);
          sub_1D5F57F4C(v57, sub_1D5F57EB8);
          (*(v48 + 8))(v18, v49);
          v26 = v55;
          __swift_destroy_boxed_opaque_existential_1(v52);
        }

        else
        {
          v51 = 0;
          memset(v50, 0, sizeof(v50));
          sub_1D5BFB704(v50, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1D7273AE0;
          *(v26 + 32) = v28;
          *(v26 + 40) = v27;
          sub_1D5F57F4C(v57, sub_1D5F57EB8);
          (*(v48 + 8))(v18, v49);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v57, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v56);
    }

    (*(v48 + 8))(v18, v49);
LABEL_8:
    v26 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v13, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4A264(uint64_t a1, __int16 a2, double a3)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v47 - v12;
  v14 = sub_1D7264AAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v57 + 1) = &type metadata for FormatIssueBinding.Font;
  *&v56 = a3;
  *(&v56 + 1) = a1;
  LOWORD(v57) = a2;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v19 = sub_1D7264A7C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v13, v9);
  if ((*(v20 + 88))(v9, v19) != *MEMORY[0x1E69E75A8])
  {
    (*(v20 + 8))(v9, v19);
LABEL_7:
    (*(v15 + 8))(v18, v14);
    goto LABEL_8;
  }

  v47 = v15;
  v48 = v14;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v21 == result)
  {
    v23 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v56 = v54;
      v57 = v55[0];
      v58 = v55[1];
      sub_1D5D28654(&v56, &v54, sub_1D5F57EB8);
      v25 = *(&v54 + 1);
      if (*(&v54 + 1))
      {
        v26 = v54;
        v27 = sub_1D5C73AB0(v54, *(&v54 + 1));
        if (v28)
        {
          v51[0] = v27;
          v51[1] = v28;
          sub_1D5BF4D9C();
          v29 = sub_1D7263A0C();
          v31 = v30;

          v32 = sub_1D5FD24A4(1uLL, v26, v25);
          v34 = v33;
          v36 = v35;
          v38 = v37;

          v39 = MEMORY[0x1DA6F97E0](v32, v34, v36, v38);
          v41 = v40;

          *&v49[0] = v29;
          *(&v49[0] + 1) = v31;

          MEMORY[0x1DA6F9910](v39, v41);

          v25 = *(&v49[0] + 1);
          v26 = *&v49[0];
        }

        v42 = v48;
        __swift_destroy_boxed_opaque_existential_1(v55);
        sub_1D5D28654(&v56, &v54, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v49, v51);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1D7273AE0;
          *(v43 + 32) = v26;
          *(v43 + 40) = v25;
          v44 = v52;
          v45 = v53;
          __swift_project_boxed_opaque_existential_1(v51, v52);
          v46 = (*(v45 + 8))(v44, v45);
          *&v54 = v43;
          sub_1D6985160(v46);
          sub_1D5F57F4C(&v56, sub_1D5F57EB8);
          (*(v47 + 8))(v18, v42);
          v24 = v54;
          __swift_destroy_boxed_opaque_existential_1(v51);
        }

        else
        {
          v50 = 0;
          memset(v49, 0, sizeof(v49));
          sub_1D5BFB704(v49, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1D7273AE0;
          *(v24 + 32) = v26;
          *(v24 + 40) = v25;
          sub_1D5F57F4C(&v56, sub_1D5F57EB8);
          (*(v47 + 8))(v18, v42);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v56, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    (*(v47 + 8))(v18, v48);
LABEL_8:
    v24 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v13, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4A97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49 - v14;
  v16 = sub_1D7264AAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v59 + 1) = &type metadata for FormatGroupBinding.Command;
  v21 = swift_allocObject();
  *&v58 = v21;
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  *(v21 + 32) = a3;
  *(v21 + 40) = v4;
  sub_1D5F58594(a1, a2, a3, v4, sub_1D5E1DA1C, sub_1D5E1DA1C);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v22 = sub_1D7264A7C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v15, v11);
  if ((*(v23 + 88))(v11, v22) != *MEMORY[0x1E69E75A8])
  {
    (*(v23 + 8))(v11, v22);
LABEL_7:
    (*(v17 + 8))(v20, v16);
    goto LABEL_8;
  }

  v49 = v17;
  v50 = v16;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v24 == result)
  {
    v26 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v26)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v58 = v56;
      v59 = v57[0];
      v60 = v57[1];
      sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);
      v28 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v29 = v56;
        v30 = sub_1D5C73AB0(v56, *(&v56 + 1));
        if (v31)
        {
          v53[0] = v30;
          v53[1] = v31;
          sub_1D5BF4D9C();
          v32 = sub_1D7263A0C();
          v34 = v33;

          v35 = sub_1D5FD24A4(1uLL, v29, v28);
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v42 = MEMORY[0x1DA6F97E0](v35, v37, v39, v41);
          v44 = v43;

          *&v51[0] = v32;
          *(&v51[0] + 1) = v34;

          MEMORY[0x1DA6F9910](v42, v44);

          v28 = *(&v51[0] + 1);
          v29 = *&v51[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v57);
        sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v51, v53);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1D7273AE0;
          *(v45 + 32) = v29;
          *(v45 + 40) = v28;
          v46 = v54;
          v47 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          v48 = (*(v47 + 8))(v46, v47);
          *&v56 = v45;
          sub_1D6985160(v48);
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
          v27 = v56;
          __swift_destroy_boxed_opaque_existential_1(v53);
        }

        else
        {
          v52 = 0;
          memset(v51, 0, sizeof(v51));
          sub_1D5BFB704(v51, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1D7273AE0;
          *(v27 + 32) = v29;
          *(v27 + 40) = v28;
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v58, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    (*(v49 + 8))(v20, v50);
LABEL_8:
    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v15, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4B094()
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - v7;
  v9 = sub_1D7264AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v52[0] + 1) = &type metadata for FormatGroupBinding.Image;
  v14 = swift_allocObject();
  *&v51 = v14;
  v15 = v0[1];
  v14[1] = *v0;
  v14[2] = v15;
  *(v14 + 41) = *(v0 + 25);
  sub_1D5F581E0(v0, v53);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v16 = sub_1D7264A7C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v8, v4);
  if ((*(v17 + 88))(v4, v16) != *MEMORY[0x1E69E75A8])
  {
    (*(v17 + 8))(v4, v16);
LABEL_7:
    (*(v10 + 8))(v13, v9);
    goto LABEL_8;
  }

  v44 = v10;
  v45 = v9;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v18 == result)
  {
    v20 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v20)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v53[0] = v51;
      v53[1] = v52[0];
      v53[2] = v52[1];
      sub_1D5D28654(v53, &v51, sub_1D5F57EB8);
      v22 = *(&v51 + 1);
      if (*(&v51 + 1))
      {
        v23 = v51;
        v24 = sub_1D5C73AB0(v51, *(&v51 + 1));
        if (v25)
        {
          v48[0] = v24;
          v48[1] = v25;
          sub_1D5BF4D9C();
          v26 = sub_1D7263A0C();
          v28 = v27;

          v29 = sub_1D5FD24A4(1uLL, v23, v22);
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v36 = MEMORY[0x1DA6F97E0](v29, v31, v33, v35);
          v38 = v37;

          *&v46[0] = v26;
          *(&v46[0] + 1) = v28;

          MEMORY[0x1DA6F9910](v36, v38);

          v22 = *(&v46[0] + 1);
          v23 = *&v46[0];
        }

        v39 = v44;
        __swift_destroy_boxed_opaque_existential_1(v52);
        sub_1D5D28654(v53, &v51, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v46, v48);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1D7273AE0;
          *(v40 + 32) = v23;
          *(v40 + 40) = v22;
          v41 = v49;
          v42 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v43 = (*(v42 + 8))(v41, v42);
          *&v51 = v40;
          sub_1D6985160(v43);
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
          v21 = v51;
          __swift_destroy_boxed_opaque_existential_1(v48);
        }

        else
        {
          v47 = 0;
          memset(v46, 0, sizeof(v46));
          sub_1D5BFB704(v46, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          *(v21 + 32) = v23;
          *(v21 + 40) = v22;
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v53, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    (*(v44 + 8))(v13, v45);
LABEL_8:
    v21 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v8, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4B790()
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v44 - v7;
  v9 = sub_1D7264AAC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v52[0] + 1) = &type metadata for FormatGroupBinding.Text;
  v14 = swift_allocObject();
  *&v51 = v14;
  v15 = *(v0 + 16);
  *(v14 + 16) = *v0;
  *(v14 + 32) = v15;
  *(v14 + 48) = *(v0 + 32);
  *(v14 + 64) = *(v0 + 48);
  sub_1D5F58648(v0, v53);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v16 = sub_1D7264A7C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v8, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v8, v4);
  if ((*(v17 + 88))(v4, v16) != *MEMORY[0x1E69E75A8])
  {
    (*(v17 + 8))(v4, v16);
LABEL_7:
    (*(v10 + 8))(v13, v9);
    goto LABEL_8;
  }

  v44 = v10;
  v45 = v9;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v18 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v18 == result)
  {
    v20 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v20)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v53[0] = v51;
      v53[1] = v52[0];
      v53[2] = v52[1];
      sub_1D5D28654(v53, &v51, sub_1D5F57EB8);
      v22 = *(&v51 + 1);
      if (*(&v51 + 1))
      {
        v23 = v51;
        v24 = sub_1D5C73AB0(v51, *(&v51 + 1));
        if (v25)
        {
          v48[0] = v24;
          v48[1] = v25;
          sub_1D5BF4D9C();
          v26 = sub_1D7263A0C();
          v28 = v27;

          v29 = sub_1D5FD24A4(1uLL, v23, v22);
          v31 = v30;
          v33 = v32;
          v35 = v34;

          v36 = MEMORY[0x1DA6F97E0](v29, v31, v33, v35);
          v38 = v37;

          *&v46[0] = v26;
          *(&v46[0] + 1) = v28;

          MEMORY[0x1DA6F9910](v36, v38);

          v22 = *(&v46[0] + 1);
          v23 = *&v46[0];
        }

        v39 = v44;
        __swift_destroy_boxed_opaque_existential_1(v52);
        sub_1D5D28654(v53, &v51, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v46, v48);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1D7273AE0;
          *(v40 + 32) = v23;
          *(v40 + 40) = v22;
          v41 = v49;
          v42 = v50;
          __swift_project_boxed_opaque_existential_1(v48, v49);
          v43 = (*(v42 + 8))(v41, v42);
          *&v51 = v40;
          sub_1D6985160(v43);
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
          v21 = v51;
          __swift_destroy_boxed_opaque_existential_1(v48);
        }

        else
        {
          v47 = 0;
          memset(v46, 0, sizeof(v46));
          sub_1D5BFB704(v46, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v21 = swift_allocObject();
          *(v21 + 16) = xmmword_1D7273AE0;
          *(v21 + 32) = v23;
          *(v21 + 40) = v22;
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v39 + 8))(v13, v45);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v53, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    (*(v44 + 8))(v13, v45);
LABEL_8:
    v21 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v8, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4BE7C(uint64_t a1, uint64_t a2, int a3)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v46 - v12;
  v14 = sub_1D7264AAC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v56 + 1) = &type metadata for FormatGroupBinding.Font;
  *&v55 = a1;
  *(&v55 + 1) = a2;
  BYTE2(v56) = BYTE2(a3);
  LOWORD(v56) = a3;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v19 = sub_1D7264A7C();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v13, 1, v19) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v13, v9);
  if ((*(v20 + 88))(v9, v19) != *MEMORY[0x1E69E75A8])
  {
    (*(v20 + 8))(v9, v19);
LABEL_7:
    (*(v15 + 8))(v18, v14);
    goto LABEL_8;
  }

  v46 = v15;
  v47 = v14;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v21 == result)
  {
    v23 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v23)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v55 = v53;
      v56 = v54[0];
      v57 = v54[1];
      sub_1D5D28654(&v55, &v53, sub_1D5F57EB8);
      v25 = *(&v53 + 1);
      if (*(&v53 + 1))
      {
        v26 = v53;
        v27 = sub_1D5C73AB0(v53, *(&v53 + 1));
        if (v28)
        {
          v50[0] = v27;
          v50[1] = v28;
          sub_1D5BF4D9C();
          v29 = sub_1D7263A0C();
          v31 = v30;

          v32 = sub_1D5FD24A4(1uLL, v26, v25);
          v34 = v33;
          v36 = v35;
          v38 = v37;

          v39 = MEMORY[0x1DA6F97E0](v32, v34, v36, v38);
          v41 = v40;

          *&v48[0] = v29;
          *(&v48[0] + 1) = v31;

          MEMORY[0x1DA6F9910](v39, v41);

          v25 = *(&v48[0] + 1);
          v26 = *&v48[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v54);
        sub_1D5D28654(&v55, &v53, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v48, v50);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1D7273AE0;
          *(v42 + 32) = v26;
          *(v42 + 40) = v25;
          v43 = v51;
          v44 = v52;
          __swift_project_boxed_opaque_existential_1(v50, v51);
          v45 = (*(v44 + 8))(v43, v44);
          *&v53 = v42;
          sub_1D6985160(v45);
          sub_1D5F57F4C(&v55, sub_1D5F57EB8);
          (*(v46 + 8))(v18, v47);
          v24 = v53;
          __swift_destroy_boxed_opaque_existential_1(v50);
        }

        else
        {
          v49 = 0;
          memset(v48, 0, sizeof(v48));
          sub_1D5BFB704(v48, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_1D7273AE0;
          *(v24 + 32) = v26;
          *(v24 + 40) = v25;
          sub_1D5F57F4C(&v55, sub_1D5F57EB8);
          (*(v46 + 8))(v18, v47);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v55, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v54);
    }

    (*(v46 + 8))(v18, v47);
LABEL_8:
    v24 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v13, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v24;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4C55C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  v6 = a2 >> 8;
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v47 - v13;
  v15 = sub_1D7264AAC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v57 + 1) = a3;
  *&v56 = a1;
  BYTE8(v56) = v4;
  BYTE9(v56) = v6;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v20 = sub_1D7264A7C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v14, v10);
  if ((*(v21 + 88))(v10, v20) != *MEMORY[0x1E69E75A8])
  {
    (*(v21 + 8))(v10, v20);
LABEL_7:
    (*(v16 + 8))(v19, v15);
    goto LABEL_8;
  }

  v47 = v16;
  v48 = v15;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v22 == result)
  {
    v24 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v24)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v56 = v54;
      v57 = v55[0];
      v58 = v55[1];
      sub_1D5D28654(&v56, &v54, sub_1D5F57EB8);
      v26 = *(&v54 + 1);
      if (*(&v54 + 1))
      {
        v27 = v54;
        v28 = sub_1D5C73AB0(v54, *(&v54 + 1));
        if (v29)
        {
          v51[0] = v28;
          v51[1] = v29;
          sub_1D5BF4D9C();
          v30 = sub_1D7263A0C();
          v32 = v31;

          v33 = sub_1D5FD24A4(1uLL, v27, v26);
          v35 = v34;
          v37 = v36;
          v39 = v38;

          v40 = MEMORY[0x1DA6F97E0](v33, v35, v37, v39);
          v42 = v41;

          *&v49[0] = v30;
          *(&v49[0] + 1) = v32;

          MEMORY[0x1DA6F9910](v40, v42);

          v26 = *(&v49[0] + 1);
          v27 = *&v49[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v55);
        sub_1D5D28654(&v56, &v54, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v49, v51);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1D7273AE0;
          *(v43 + 32) = v27;
          *(v43 + 40) = v26;
          v44 = v52;
          v45 = v53;
          __swift_project_boxed_opaque_existential_1(v51, v52);
          v46 = (*(v45 + 8))(v44, v45);
          *&v54 = v43;
          sub_1D6985160(v46);
          sub_1D5F57F4C(&v56, sub_1D5F57EB8);
          (*(v47 + 8))(v19, v48);
          v25 = v54;
          __swift_destroy_boxed_opaque_existential_1(v51);
        }

        else
        {
          v50 = 0;
          memset(v49, 0, sizeof(v49));
          sub_1D5BFB704(v49, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_1D7273AE0;
          *(v25 + 32) = v27;
          *(v25 + 40) = v26;
          sub_1D5F57F4C(&v56, sub_1D5F57EB8);
          (*(v47 + 8))(v19, v48);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v56, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v55);
    }

    (*(v47 + 8))(v19, v48);
LABEL_8:
    v25 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v14, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4CC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double (*a5)(uint64_t, uint64_t, uint64_t, __n128))
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;
  v18 = sub_1D7264AAC();
  v19 = *(v18 - 8);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v64 + 1) = a4;
  *&v63 = a1;
  *(&v63 + 1) = a2;
  LOBYTE(v64) = a3;
  v24 = a3;
  v25 = v17;
  a5(a1, a2, v24, v21);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v26 = sub_1D7264A7C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    goto LABEL_7;
  }

  v55 = v19;
  sub_1D5F57E24(v25, v13);
  if ((*(v27 + 88))(v13, v26) != *MEMORY[0x1E69E75A8])
  {
    (*(v27 + 8))(v13, v26);
    v19 = v55;
LABEL_7:
    (*(v19 + 8))(v23, v18);
    v32 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1D5D28118(v25, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v32;
  }

  v28 = v25;
  v54 = v18;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v29 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v29 == result)
  {
    v31 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v31)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v63 = v61;
      v64 = v62[0];
      v65 = v62[1];
      sub_1D5D28654(&v63, &v61, sub_1D5F57EB8);
      v33 = *(&v61 + 1);
      if (*(&v61 + 1))
      {
        v34 = v61;
        v35 = sub_1D5C73AB0(v61, *(&v61 + 1));
        if (v36)
        {
          v58[0] = v35;
          v58[1] = v36;
          sub_1D5BF4D9C();
          v37 = sub_1D7263A0C();
          v39 = v38;

          v40 = sub_1D5FD24A4(1uLL, v34, v33);
          v42 = v41;
          v44 = v43;
          v46 = v45;

          v47 = MEMORY[0x1DA6F97E0](v40, v42, v44, v46);
          v49 = v48;

          *&v56[0] = v37;
          *(&v56[0] + 1) = v39;

          MEMORY[0x1DA6F9910](v47, v49);

          v33 = *(&v56[0] + 1);
          v34 = *&v56[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v62);
        sub_1D5D28654(&v63, &v61, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v56, v58);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_1D7273AE0;
          *(v50 + 32) = v34;
          *(v50 + 40) = v33;
          v51 = v59;
          v52 = v60;
          __swift_project_boxed_opaque_existential_1(v58, v59);
          v53 = (*(v52 + 8))(v51, v52);
          *&v61 = v50;
          sub_1D6985160(v53);
          sub_1D5F57F4C(&v63, sub_1D5F57EB8);
          (*(v55 + 8))(v23, v54);
          v32 = v61;
          __swift_destroy_boxed_opaque_existential_1(v58);
        }

        else
        {
          v57 = 0;
          memset(v56, 0, sizeof(v56));
          sub_1D5BFB704(v56, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_1D7273AE0;
          *(v32 + 32) = v34;
          *(v32 + 40) = v33;
          sub_1D5F57F4C(&v63, sub_1D5F57EB8);
          (*(v55 + 8))(v23, v54);
        }

        goto LABEL_15;
      }

      sub_1D5F57F4C(&v63, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v62);
    }

    (*(v55 + 8))(v23, v54);
    v32 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v25 = v28;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4D388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v57 = a6;
  v7 = a4;
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v56 - v17;
  v19 = sub_1D7264AAC();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v66 + 1) = a5;
  v24 = swift_allocObject();
  *&v65 = v24;
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  *(v24 + 40) = v7;
  v25 = a3;
  v26 = v18;
  sub_1D5F58038(a1, a2, v25, v7);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v27 = sub_1D7264A7C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v26, 1, v27) == 1)
  {
    goto LABEL_7;
  }

  v56 = v20;
  v57 = v19;
  sub_1D5F57E24(v26, v14);
  if ((*(v28 + 88))(v14, v27) != *MEMORY[0x1E69E75A8])
  {
    (*(v28 + 8))(v14, v27);
    v19 = v57;
    v20 = v56;
LABEL_7:
    (*(v20 + 8))(v23, v19);
    v34 = MEMORY[0x1E69E7CC0];
LABEL_16:
    sub_1D5D28118(v26, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v34;
  }

  v29 = v26;
  v30 = v23;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v31 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v31 == result)
  {
    v33 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v33)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v65 = v63;
      v66 = v64[0];
      v67 = v64[1];
      sub_1D5D28654(&v65, &v63, sub_1D5F57EB8);
      v35 = *(&v63 + 1);
      if (*(&v63 + 1))
      {
        v36 = v63;
        v37 = sub_1D5C73AB0(v63, *(&v63 + 1));
        if (v38)
        {
          v60[0] = v37;
          v60[1] = v38;
          sub_1D5BF4D9C();
          v39 = sub_1D7263A0C();
          v41 = v40;

          v42 = sub_1D5FD24A4(1uLL, v36, v35);
          v44 = v43;
          v46 = v45;
          v48 = v47;

          v49 = MEMORY[0x1DA6F97E0](v42, v44, v46, v48);
          v51 = v50;

          *&v58[0] = v39;
          *(&v58[0] + 1) = v41;

          MEMORY[0x1DA6F9910](v49, v51);

          v35 = *(&v58[0] + 1);
          v36 = *&v58[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v64);
        sub_1D5D28654(&v65, &v63, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v58, v60);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_1D7273AE0;
          *(v52 + 32) = v36;
          *(v52 + 40) = v35;
          v53 = v61;
          v54 = v62;
          __swift_project_boxed_opaque_existential_1(v60, v61);
          v55 = (*(v54 + 8))(v53, v54);
          *&v63 = v52;
          sub_1D6985160(v55);
          sub_1D5F57F4C(&v65, sub_1D5F57EB8);
          (*(v56 + 8))(v30, v57);
          v34 = v63;
          __swift_destroy_boxed_opaque_existential_1(v60);
        }

        else
        {
          v59 = 0;
          memset(v58, 0, sizeof(v58));
          sub_1D5BFB704(v58, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_1D7273AE0;
          *(v34 + 32) = v36;
          *(v34 + 40) = v35;
          sub_1D5F57F4C(&v65, sub_1D5F57EB8);
          (*(v56 + 8))(v30, v57);
        }

        goto LABEL_15;
      }

      sub_1D5F57F4C(&v65, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v64);
    }

    (*(v56 + 8))(v30, v57);
    v34 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v26 = v29;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4DAB8(uint64_t a1, __int16 a2)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v45 - v10;
  v12 = sub_1D7264AAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v55 + 1) = &type metadata for FormatBoolBinding;
  *&v54 = a1;
  WORD4(v54) = a2;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v17 = sub_1D7264A7C();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v11, v7);
  if ((*(v18 + 88))(v7, v17) != *MEMORY[0x1E69E75A8])
  {
    (*(v18 + 8))(v7, v17);
LABEL_7:
    (*(v13 + 8))(v16, v12);
    goto LABEL_8;
  }

  v45 = v13;
  v46 = v12;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v19 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v19 == result)
  {
    v21 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v21)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v54 = v52;
      v55 = v53[0];
      v56 = v53[1];
      sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);
      v23 = *(&v52 + 1);
      if (*(&v52 + 1))
      {
        v24 = v52;
        v25 = sub_1D5C73AB0(v52, *(&v52 + 1));
        if (v26)
        {
          v49[0] = v25;
          v49[1] = v26;
          sub_1D5BF4D9C();
          v27 = sub_1D7263A0C();
          v29 = v28;

          v30 = sub_1D5FD24A4(1uLL, v24, v23);
          v32 = v31;
          v34 = v33;
          v36 = v35;

          v37 = MEMORY[0x1DA6F97E0](v30, v32, v34, v36);
          v39 = v38;

          *&v47[0] = v27;
          *(&v47[0] + 1) = v29;

          MEMORY[0x1DA6F9910](v37, v39);

          v23 = *(&v47[0] + 1);
          v24 = *&v47[0];
        }

        v40 = v46;
        __swift_destroy_boxed_opaque_existential_1(v53);
        sub_1D5D28654(&v54, &v52, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v47, v49);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_1D7273AE0;
          *(v41 + 32) = v24;
          *(v41 + 40) = v23;
          v42 = v50;
          v43 = v51;
          __swift_project_boxed_opaque_existential_1(v49, v50);
          v44 = (*(v43 + 8))(v42, v43);
          *&v52 = v41;
          sub_1D6985160(v44);
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
          v22 = v52;
          __swift_destroy_boxed_opaque_existential_1(v49);
        }

        else
        {
          v48 = 0;
          memset(v47, 0, sizeof(v47));
          sub_1D5BFB704(v47, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1D7273AE0;
          *(v22 + 32) = v24;
          *(v22 + 40) = v23;
          sub_1D5F57F4C(&v54, sub_1D5F57EB8);
          (*(v45 + 8))(v16, v40);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v54, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    (*(v45 + 8))(v16, v46);
LABEL_8:
    v22 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v11, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4E1C0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v49 - v14;
  v16 = sub_1D7264AAC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v59 + 1) = &type metadata for FormatTagBinding.Image;
  v21 = swift_allocObject();
  *&v58 = v21;
  v21[2] = a1;
  v21[3] = a2;
  v21[4] = a3;
  v21[5] = a4;
  sub_1D5F58484(a1, a2);
  sub_1D7264A6C();
  sub_1D7264A8C();
  v22 = sub_1D7264A7C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v15, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v15, v11);
  if ((*(v23 + 88))(v11, v22) != *MEMORY[0x1E69E75A8])
  {
    (*(v23 + 8))(v11, v22);
LABEL_7:
    (*(v17 + 8))(v20, v16);
    goto LABEL_8;
  }

  v49 = v17;
  v50 = v16;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v24 == result)
  {
    v26 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v26)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v58 = v56;
      v59 = v57[0];
      v60 = v57[1];
      sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);
      v28 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v29 = v56;
        v30 = sub_1D5C73AB0(v56, *(&v56 + 1));
        if (v31)
        {
          v53[0] = v30;
          v53[1] = v31;
          sub_1D5BF4D9C();
          v32 = sub_1D7263A0C();
          v34 = v33;

          v35 = sub_1D5FD24A4(1uLL, v29, v28);
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v42 = MEMORY[0x1DA6F97E0](v35, v37, v39, v41);
          v44 = v43;

          *&v51[0] = v32;
          *(&v51[0] + 1) = v34;

          MEMORY[0x1DA6F9910](v42, v44);

          v28 = *(&v51[0] + 1);
          v29 = *&v51[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v57);
        sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v51, v53);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1D7273AE0;
          *(v45 + 32) = v29;
          *(v45 + 40) = v28;
          v46 = v54;
          v47 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          v48 = (*(v47 + 8))(v46, v47);
          *&v56 = v45;
          sub_1D6985160(v48);
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
          v27 = v56;
          __swift_destroy_boxed_opaque_existential_1(v53);
        }

        else
        {
          v52 = 0;
          memset(v51, 0, sizeof(v51));
          sub_1D5BFB704(v51, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1D7273AE0;
          *(v27 + 32) = v29;
          *(v27 + 40) = v28;
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v20, v50);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v58, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    (*(v49 + 8))(v20, v50);
LABEL_8:
    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v15, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4E8E0(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  v8 = HIWORD(a3);
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v49 - v15;
  v17 = sub_1D7264AAC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v59 + 1) = a4;
  *&v58 = a1;
  *(&v58 + 1) = a2;
  LOWORD(v59) = v5;
  BYTE2(v59) = v8;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v22 = sub_1D7264A7C();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v16, 1, v22) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v16, v12);
  if ((*(v23 + 88))(v12, v22) != *MEMORY[0x1E69E75A8])
  {
    (*(v23 + 8))(v12, v22);
LABEL_7:
    (*(v18 + 8))(v21, v17);
    goto LABEL_8;
  }

  v49 = v18;
  v50 = v17;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v24 == result)
  {
    v26 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v26)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      v58 = v56;
      v59 = v57[0];
      v60 = v57[1];
      sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);
      v28 = *(&v56 + 1);
      if (*(&v56 + 1))
      {
        v29 = v56;
        v30 = sub_1D5C73AB0(v56, *(&v56 + 1));
        if (v31)
        {
          v53[0] = v30;
          v53[1] = v31;
          sub_1D5BF4D9C();
          v32 = sub_1D7263A0C();
          v34 = v33;

          v35 = sub_1D5FD24A4(1uLL, v29, v28);
          v37 = v36;
          v39 = v38;
          v41 = v40;

          v42 = MEMORY[0x1DA6F97E0](v35, v37, v39, v41);
          v44 = v43;

          *&v51[0] = v32;
          *(&v51[0] + 1) = v34;

          MEMORY[0x1DA6F9910](v42, v44);

          v28 = *(&v51[0] + 1);
          v29 = *&v51[0];
        }

        __swift_destroy_boxed_opaque_existential_1(v57);
        sub_1D5D28654(&v58, &v56, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v51, v53);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v45 = swift_allocObject();
          *(v45 + 16) = xmmword_1D7273AE0;
          *(v45 + 32) = v29;
          *(v45 + 40) = v28;
          v46 = v54;
          v47 = v55;
          __swift_project_boxed_opaque_existential_1(v53, v54);
          v48 = (*(v47 + 8))(v46, v47);
          *&v56 = v45;
          sub_1D6985160(v48);
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v21, v50);
          v27 = v56;
          __swift_destroy_boxed_opaque_existential_1(v53);
        }

        else
        {
          v52 = 0;
          memset(v51, 0, sizeof(v51));
          sub_1D5BFB704(v51, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_1D7273AE0;
          *(v27 + 32) = v29;
          *(v27 + 40) = v28;
          sub_1D5F57F4C(&v58, sub_1D5F57EB8);
          (*(v49 + 8))(v21, v50);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(&v58, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v57);
    }

    (*(v49 + 8))(v21, v50);
LABEL_8:
    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v16, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4EFC8(char a1)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v43 - v8;
  v10 = sub_1D7264AAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = &type metadata for FormatHeadlineBinding.DateTime;
  v53[0] = a1;
  sub_1D7264A6C();
  sub_1D7264A8C();
  v15 = sub_1D7264A7C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    goto LABEL_7;
  }

  sub_1D5F57E24(v9, v5);
  if ((*(v16 + 88))(v5, v15) != *MEMORY[0x1E69E75A8])
  {
    (*(v16 + 8))(v5, v15);
LABEL_7:
    (*(v11 + 8))(v14, v10);
    goto LABEL_8;
  }

  v43 = v11;
  v44 = v10;
  sub_1D7264A9C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v17 = sub_1D7263D8C();
  swift_getObjectType();
  result = sub_1D7263D8C();
  if (v17 == result)
  {
    v19 = sub_1D7263D9C();
    swift_unknownObjectRelease();
    if (v19)
    {
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1D7263FDC();
      swift_unknownObjectRelease();

      sub_1D5D28654(v53, &v50, sub_1D5F57EB8);
      v21 = v51;
      if (v51)
      {
        v22 = v50;
        v23 = sub_1D5C73AB0(v50, v51);
        if (v24)
        {
          v47[0] = v23;
          v47[1] = v24;
          sub_1D5BF4D9C();
          v25 = sub_1D7263A0C();
          v27 = v26;

          v28 = sub_1D5FD24A4(1uLL, v22, v21);
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v35 = MEMORY[0x1DA6F97E0](v28, v30, v32, v34);
          v37 = v36;

          *&v45[0] = v25;
          *(&v45[0] + 1) = v27;

          MEMORY[0x1DA6F9910](v35, v37);

          v21 = *(&v45[0] + 1);
          v22 = *&v45[0];
        }

        v38 = v43;
        __swift_destroy_boxed_opaque_existential_1(v52);
        sub_1D5D28654(v53, &v50, sub_1D5F57EB8);

        sub_1D5B49474(0, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
        if (swift_dynamicCast())
        {
          sub_1D5B63F14(v45, v47);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_1D7273AE0;
          *(v39 + 32) = v22;
          *(v39 + 40) = v21;
          v40 = v48;
          v41 = v49;
          __swift_project_boxed_opaque_existential_1(v47, v48);
          v42 = (*(v41 + 8))(v40, v41);
          v50 = v39;
          sub_1D6985160(v42);
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v38 + 8))(v14, v44);
          v20 = v50;
          __swift_destroy_boxed_opaque_existential_1(v47);
        }

        else
        {
          v46 = 0;
          memset(v45, 0, sizeof(v45));
          sub_1D5BFB704(v45, &qword_1EC8814C8, &qword_1EC8814C0, &protocol descriptor for FormatBindingType);
          sub_1D5B581A0(0, &qword_1EDF195B0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_1D7273AE0;
          *(v20 + 32) = v22;
          *(v20 + 40) = v21;
          sub_1D5F57F4C(v53, sub_1D5F57EB8);
          (*(v38 + 8))(v14, v44);
        }

        goto LABEL_9;
      }

      sub_1D5F57F4C(v53, sub_1D5F57EB8);
      __swift_destroy_boxed_opaque_existential_1(v52);
    }

    (*(v43 + 8))(v14, v44);
LABEL_8:
    v20 = MEMORY[0x1E69E7CC0];
LABEL_9:
    sub_1D5D28118(v9, &qword_1EC8814B0, MEMORY[0x1E69E75C8]);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4F670(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = a6;
  v11 = result;
  if (a3)
  {
    if (a6)
    {
      v12 = sub_1D6365C30(result, a2, a4, a5);
      v6 = 1;
LABEL_6:
      sub_1D5F586D0(a4, a5, v6 & 1);
      sub_1D5F586D0(v11, a2, a3 & 1);
      sub_1D5F5870C(v11, a2, a3 & 1);
      sub_1D5F5870C(a4, a5, v6 & 1);
      return v12 & 1;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  if (a6)
  {
    goto LABEL_5;
  }

  v13 = *(result + 16);
  if (v13 != *(a4 + 16))
  {
    v6 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  if (!v13 || result == a4)
  {
    v6 = 0;
    v12 = 1;
    goto LABEL_6;
  }

  v14 = (result + 32);
  v15 = (a4 + 32);
  while (v13)
  {
    v17 = *v14++;
    v16 = v17;
    v18 = *v15++;
    v12 = v16 == v18;
    if (v16 != v18 || v13-- == 1)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5F4F798(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      sub_1D5E04CC4(a4, a5, 0);
      sub_1D5D2F2C4(a1, a2, 0);
      sub_1D5D2F2C4(a4, a5, 0);
      v12 = a4 ^ a1 ^ 1;
      return v12 & 1;
    }

LABEL_9:
    sub_1D5E04CC4(a4, a5, a6 & 1);
    sub_1D5D2F2C4(a1, a2, a3 & 1);
    sub_1D5D2F2C4(a4, a5, a6 & 1);
    v12 = 0;
    return v12 & 1;
  }

  if ((a6 & 1) == 0)
  {
    sub_1D5E04CC4(a1, a2, 1);
    goto LABEL_9;
  }

  if (a1 == a4 && a2 == a5)
  {
    v12 = 1;
    sub_1D5E04CC4(a4, a2, 1);
    sub_1D5E04CC4(a4, a2, 1);
    sub_1D5D2F2C4(a4, a2, 1);
    sub_1D5D2F2C4(a4, a2, 1);
    return v12 & 1;
  }

  v14 = sub_1D72646CC();
  sub_1D5E04CC4(a4, a5, 1);
  sub_1D5E04CC4(a1, a2, 1);
  sub_1D5D2F2C4(a1, a2, 1);
  sub_1D5D2F2C4(a4, a5, 1);
  return v14 & 1;
}

BOOL sub_1D5F4F928(unint64_t a1, __int16 a2, uint64_t a3, __int16 a4, __n128 a5)
{
  if ((a2 & 0xFF00) == 0xC00)
  {
    return (a4 & 0xFF00) == 0xC00;
  }

  if ((a4 & 0xFF00) == 0xC00)
  {
    return 0;
  }

  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a4)
    {
      return 0;
    }

    a5.n128_u64[0] = a1;
    if (*&a1 != *&a3)
    {
      return 0;
    }
  }

  v6 = FormatFontScalingStyle.rawValue.getter(a5);
  v8 = v7;
  if (v6 == FormatFontScalingStyle.rawValue.getter(v9) && v8 == v10)
  {

    return 1;
  }

  v11 = sub_1D72646CC();

  return (v11 & 1) != 0;
}

uint64_t static FormatFont.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 61 == 2)
      {
        v19 = v2 & 0x1FFFFFFFFFFFFFFFLL;
        v20 = *(v19 + 56);
        v21 = *(v19 + 48);
        v22 = *(v19 + 40);
        v23 = *(v19 + 32);
        v24 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v25 = *(v24 + 16);
        v26 = *(v24 + 32);
        v27 = *(v24 + 40);
        v28 = *(v24 + 48);
        v29 = *(v24 + 56);
        v60 = *(v19 + 16);
        *&v61 = v23;
        *(&v61 + 1) = v22;
        *&v62[0] = v21;
        WORD4(v62[0]) = v20;
        v56 = v25;
        *&v57 = v26;
        *(&v57 + 1) = v27;
        *&v58[0] = v28;
        WORD4(v58[0]) = v29;

        v12 = _s8NewsFeed16FormatRemoteFontV2eeoiySbAC_ACtFZ_0(&v60, &v56);
        goto LABEL_11;
      }

LABEL_26:
      v18 = 0;
      return v18 & 1;
    }

    if (v4 == 3)
    {
      if (v3 >> 61 == 3)
      {
        v5 = v2 & 0x1FFFFFFFFFFFFFFFLL;
        v6 = *(v5 + 40);
        v7 = *(v5 + 32);
        v8 = v3 & 0x1FFFFFFFFFFFFFFFLL;
        v9 = *(v8 + 32);
        v10 = *(v8 + 40);
        v60 = *(v5 + 16);
        *&v61 = v7;
        BYTE8(v61) = v6;
        v56 = *(v8 + 16);
        *&v57 = v9;
        BYTE8(v57) = v10;

        v12 = _s8NewsFeed17FormatBindingFontO2eeoiySbAC_ACtFZ_0(&v60, &v56, v11);
LABEL_11:
        v18 = v12;

        return v18 & 1;
      }

      goto LABEL_26;
    }

    if (v3 >> 61 != 4)
    {
      goto LABEL_26;
    }

    v30 = v2 & 0x1FFFFFFFFFFFFFFFLL;
    v31 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);
    v32 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
    v33 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v34 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    v35 = *(v34 + 16);
    v36 = *(v34 + 24);
    v37 = *(v34 + 32);
    v38 = *(v34 + 40);
    v39 = *(v34 + 48);
    v60 = *(v30 + 16);
    *&v61 = v33;
    BYTE8(v61) = v32;
    *&v62[0] = v31;
    *&v56 = v35;
    *(&v56 + 1) = v36;
    *&v57 = v37;
    BYTE8(v57) = v38;
    *&v58[0] = v39;

    sub_1D5F58038(v35, v36, v37, v38);

    if ((_s8NewsFeed17FormatBindingFontO2eeoiySbAC_ACtFZ_0(&v60, &v56, v40) & 1) == 0)
    {
      sub_1D5F57FEC(v35, v36, v37, v38);

      goto LABEL_26;
    }

    v41 = static FormatFont.== infix(_:_:)(v62, v58);
    sub_1D5F57FEC(v35, v36, v37, v38);

    if ((v41 & 1) == 0)
    {
      goto LABEL_26;
    }

LABEL_24:
    v18 = 1;
    return v18 & 1;
  }

  if (v4)
  {
    if (v3 >> 61 != 1)
    {
      goto LABEL_26;
    }

    v42 = v2 & 0x1FFFFFFFFFFFFFFFLL;
    v43 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v44 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v45 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v46 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
    v47 = *(v42 + 48);
    v48 = v3 & 0x1FFFFFFFFFFFFFFFLL;
    v49 = *(v48 + 32);
    v50 = *(v48 + 40);
    v51 = *(v48 + 48);
    v52 = v43 == *(v48 + 16) && v44 == *(v48 + 24);
    if (!v52 && (sub_1D72646CC() & 1) == 0)
    {
      goto LABEL_26;
    }

    if (v45 != v49)
    {
      goto LABEL_26;
    }

    v54 = sub_1D5F4F928(v46, v47, v50, v51, v53);

    if (!v54)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if (v3 >> 61)
  {
    goto LABEL_26;
  }

  v13 = *(v3 + 64);
  v58[0] = *(v3 + 48);
  v58[1] = v13;
  v59 = *(v3 + 80);
  v14 = *(v3 + 32);
  v56 = *(v3 + 16);
  v57 = v14;
  v15 = *(v2 + 64);
  v62[0] = *(v2 + 48);
  v62[1] = v15;
  v63 = *(v2 + 80);
  v16 = *(v2 + 32);
  v60 = *(v2 + 16);
  v61 = v16;

  v18 = _s8NewsFeed16FormatSystemFontV2eeoiySbAC_ACtFZ_0(&v60, &v56, v17);

  return v18 & 1;
}

uint64_t sub_1D5F4FDC4(void *a1)
{
  v4 = *v1;
  v5 = *v1 >> 61;
  if (v5 <= 1)
  {
    if (!v5)
    {
      v11 = *(v4 + 48);
      v30[1] = *(v4 + 32);
      v30[2] = v11;
      v30[3] = *(v4 + 64);
      v31 = *(v4 + 80);
      v30[0] = *(v4 + 16);
      v12 = *(v4 + 64);
      v27 = *(v4 + 48);
      v28 = v12;
      v29 = *(v4 + 80);
      v13 = *(v4 + 32);
      v25 = *(v4 + 16);
      v26 = v13;
      sub_1D5D3F188(v30, v24);
      v14 = sub_1D7259EBC();
      v7 = sub_1D6BED6FC(v14);

      sub_1D5D41588(v30);
      return v7;
    }

    v21 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x30);

    v16 = sub_1D7259EBC();
    if ((v21 & 0xFF00) == 0xC00)
    {
      sub_1D5C14A38();
      v7 = sub_1D72633EC();
      goto LABEL_14;
    }

    sub_1D5C14A38();
    LOBYTE(v30[0]) = HIBYTE(v21);
    v22 = sub_1D6F8A788();
    v7 = sub_1D72633AC();
LABEL_17:

    return v7;
  }

  v6 = v4 & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 == 2)
  {
    v15 = *(v6 + 56);

    v16 = sub_1D7259EBC();
    if ((v15 & 0xFF00) == 0xC00)
    {
      sub_1D5C14A38();
      v7 = sub_1D72633EC();

LABEL_14:

      return v7;
    }

    sub_1D5C14A38();
    LOBYTE(v30[0]) = HIBYTE(v15);
    v22 = sub_1D6F8A788();
    v7 = sub_1D72633AC();

    goto LABEL_17;
  }

  if (v5 == 3)
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    sub_1D5F58038(v7, v8, v9, v10);
    sub_1D5F50718(a1, v7, v8, v9, v10, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_bindingStack, &OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options, sub_1D6B744A8, v30, sub_1D6B7DBB4);
    sub_1D5F57FEC(v7, v8, v9, v10);
    if (!v2)
    {
      *&v25 = *&v30[0];
      v7 = sub_1D5F4FDC4(a1);
    }
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = *(v6 + 24);
    v19 = *(v6 + 32);
    v20 = *(v6 + 40);
    *&v30[0] = *(v6 + 48);
    sub_1D5F58038(v17, v18, v19, v20);
    swift_retain_n();
    v7 = sub_1D5F4FDC4(a1);
    sub_1D5F57FEC(v17, v18, v19, v20);
  }

  return v7;
}

double sub_1D5F5022C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, unint64_t *a6@<X8>)
{
  v34 = a4;
  v47 = a3;
  v36 = a2;
  v33 = a6;
  v8 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27C58(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v32 - v14;
  v16 = type metadata accessor for FormatOption(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      sub_1D5F53540();
    }

    else
    {
      v32 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      v22 = a1[5];
      v42 = a1[4];
      v43 = v22;
      v44 = a1[6];
      v23 = a1[1];
      v38 = *a1;
      v39 = v23;
      v24 = a1[3];
      v40 = a1[2];
      v41 = v24;
      v25 = off_1F51B1B98[0];
      v26 = v47;

      v25(v36, v26, v15);
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        sub_1D5D28118(v15, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v27 = v47;
        *v11 = v36;
        v11[1] = v27;
        swift_storeEnumTagMultiPayload();
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        sub_1D5D28654(v11, v28, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        sub_1D5F57F4C(v11, type metadata accessor for FormatLayoutError);
      }

      else
      {
        v29 = v47;

        v30 = v32;
        sub_1D5D5E2D4(v15, v32, type metadata accessor for FormatOption);
        v46[4] = v42;
        v46[5] = v43;
        v46[6] = v44;
        v46[0] = v38;
        v46[1] = v39;
        v46[2] = v40;
        v46[3] = v41;

        v31 = v35;
        sub_1D6B74D28(v46, &v37);
        if (!v31)
        {

          v45[3] = v41;
          v45[4] = v42;
          v45[5] = v43;
          v45[6] = v44;
          v45[0] = v38;
          v45[1] = v39;
          v45[2] = v40;
          sub_1D6B7E138(v37, v36, v29, v34, v45, v33);
        }

        sub_1D5F57F4C(v30, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v20 = 0xD00000000000006ELL;
    v20[1] = 0x80000001D73C3790;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return result;
}

double sub_1D5F50718@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, void *a6@<X5>, uint64_t a7@<X6>, void (*a8)(__int128 *__return_ptr, void *, uint64_t, __n128)@<X7>, uint64_t *a9@<X8>, void (*a10)(void, uint64_t, uint64_t, uint64_t, void *, __n128))
{
  v39 = a8;
  v40 = a7;
  v44 = a6;
  v41 = a4;
  v42 = a9;
  *&v43 = a2;
  *(&v43 + 1) = a3;
  v38 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v38, v12);
  v14 = (&v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27C58(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v38 - v17;
  v19 = type metadata accessor for FormatOption(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      sub_1D5F535EC(a1, v43, *(&v43 + 1), v41 & 0xFFFFFF, v44, v42);
    }

    else
    {
      v44 = a1;
      v31 = *(&v43 + 1);

      v32 = v43;
      FormatOptionCollection.subscript.getter(v43, v31, v18);
      if ((*(v20 + 48))(v18, 1, v19) == 1)
      {
        sub_1D5D28118(v18, &qword_1EDF337F0, type metadata accessor for FormatOption);
        *v14 = v32;
        v14[1] = v31;
        swift_storeEnumTagMultiPayload();
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        sub_1D5D28654(v14, v33, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        sub_1D5F57F4C(v14, type metadata accessor for FormatLayoutError);
      }

      else
      {
        v34 = v32;

        sub_1D5D5E2D4(v18, v23, type metadata accessor for FormatOption);
        v35 = *(v23 + 2);

        v36 = v44;
        v37 = v58;
        (v39)(&v50, v44, v35);
        if (!v37)
        {

          (a10)(v50, v34, v31, v41, v36);
        }

        sub_1D5F57F4C(v23, type metadata accessor for FormatOption);
      }
    }
  }

  else if (a5)
  {
    v30 = v58;
    sub_1D6B7C1C8(*(a1 + *v44), &v50);
    if (!v30)
    {
      v48[6] = v56;
      v49[0] = v57[0];
      *(v49 + 9) = *(v57 + 9);
      v48[2] = v52;
      v48[3] = v53;
      v48[4] = v54;
      v48[5] = v55;
      v48[0] = v50;
      v48[1] = v51;
      v45[6] = v56;
      *v46 = v57[0];
      *(&v46[1] + 1) = *(v57 + 9);
      v45[2] = v52;
      v45[3] = v53;
      v45[4] = v54;
      v45[5] = v55;
      *&v46[5] = v43;
      v47 = v41;
      v45[0] = v50;
      v45[1] = v51;
      sub_1D715C20C(v45, v42);
      sub_1D5ECF320(v48);
    }
  }

  else
  {
    v28 = v58;
    sub_1D6B7C374(*(a1 + *v44), v27);
    if (!v28)
    {
      v50 = v43;
      LOWORD(v51) = v41;
      BYTE2(v51) = BYTE2(v41);
      sub_1D70DC564(v27, v42);
      sub_1D5F57F4C(v27, type metadata accessor for FeedHeadline);
    }
  }

  return result;
}

void sub_1D5F50C20(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v13 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      sub_1D5F53974(a2, a3, a4 & 0xFFFFFF, sub_1D5FB61AC, sub_1D5FB6008, sub_1D5FB5E2C, sub_1D5FB5A80, a6);
    }

    else
    {
      sub_1D6F6FFE8(a1, a2, a3, a4, a6);
    }
  }

  else if (a5)
  {
    sub_1D5FB5410();
    if (!v6)
    {
      v22[6] = v30;
      v23[0] = v31[0];
      *(v23 + 9) = *(v31 + 9);
      v22[2] = v26;
      v22[3] = v27;
      v22[4] = v28;
      v22[5] = v29;
      v22[0] = v24;
      v22[1] = v25;
      v17[6] = v30;
      v18[0] = v31[0];
      *(v18 + 9) = *(v31 + 9);
      v17[2] = v26;
      v17[3] = v27;
      v17[4] = v28;
      v17[5] = v29;
      v19 = a2;
      v20 = a3;
      v21 = a4;
      v17[0] = v24;
      v17[1] = v25;
      sub_1D715C20C(v17, a6);
      sub_1D5ECF320(v22);
    }
  }

  else
  {
    sub_1D5FB543C();
    if (!v6)
    {
      *&v24 = a2;
      *(&v24 + 1) = a3;
      LOWORD(v25) = a4;
      BYTE2(v25) = BYTE2(a4);
      sub_1D70DC564(v16, a6);
      sub_1D5F57F4C(v16, type metadata accessor for FeedHeadline);
    }
  }
}

double sub_1D5F50E54@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, uint64_t *a6@<X8>)
{
  v32 = a4;
  v34 = a2;
  v31 = a6;
  v9 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27C58(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v29 - v15;
  v17 = type metadata accessor for FormatOption(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      sub_1D5F53974(v34, a3, v32 & 0xFFFFFF, sub_1D5F55D7C, sub_1D5F55B34, sub_1D5F55870, sub_1D5F54F8C, v31);
    }

    else
    {
      v29 = off_1F513B088[0];
      type metadata accessor for FormatDecorationContext(0);

      v30 = a3;
      v24 = v29(v34, a3, v16);
      if ((*(v18 + 48))(v16, 1, v17, v24) == 1)
      {
        sub_1D5D28118(v16, &qword_1EDF337F0, type metadata accessor for FormatOption);
        v25 = v30;
        *v12 = v34;
        v12[1] = v25;
        swift_storeEnumTagMultiPayload();
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        sub_1D5D28654(v12, v26, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        sub_1D5F57F4C(v12, type metadata accessor for FormatLayoutError);
      }

      else
      {
        v27 = v30;

        sub_1D5D5E2D4(v16, v21, type metadata accessor for FormatOption);

        v28 = v33;
        sub_1D6B766A8(a1, &v35);
        if (!v28)
        {

          sub_1D6B82C0C(v35, v34, v27, v32, a1, v31);
        }

        sub_1D5F57F4C(v21, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v22 = 0xD000000000000066;
    v22[1] = 0x80000001D73C3700;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return result;
}

double sub_1D5F512D8@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 a5@<W4>, unint64_t *a6@<X8>)
{
  v31 = a4;
  v33 = a2;
  v30 = a6;
  v9 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27C58(0, &qword_1EDF337F0, type metadata accessor for FormatOption, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v28 - v15;
  v17 = type metadata accessor for FormatOption(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      sub_1D5F53CF4();
    }

    else
    {

      v29 = a1;
      v24 = v33;
      FormatOptionCollection.subscript.getter(v33, a3, v16);

      if ((*(v18 + 48))(v16, 1, v17) == 1)
      {
        sub_1D5D28118(v16, &qword_1EDF337F0, type metadata accessor for FormatOption);
        *v12 = v24;
        v12[1] = a3;
        swift_storeEnumTagMultiPayload();
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        sub_1D5D28654(v12, v25, type metadata accessor for FormatLayoutError);
        swift_willThrow();
        sub_1D5F57F4C(v12, type metadata accessor for FormatLayoutError);
      }

      else
      {

        sub_1D5D5E2D4(v16, v21, type metadata accessor for FormatOption);

        v26 = v29;
        v27 = v32;
        sub_1D6B76F28(v29, &v34);
        if (!v27)
        {

          sub_1D6B83D5C(v34, v33, a3, v31, v26, v30);
        }

        sub_1D5F57F4C(v21, type metadata accessor for FormatOption);
      }
    }
  }

  else
  {
    sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v22 = 0xD000000000000048;
    v22[1] = 0x80000001D73C36B0;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return result;
}

uint64_t sub_1D5F516EC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned __int8 a5)
{
  v8 = type metadata accessor for FormatLayoutError(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      return sub_1D5F53DA0();
    }

    else
    {
      *v11 = a2;
      v11[1] = a3;
      swift_storeEnumTagMultiPayload();
      sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      sub_1D5D28654(v11, v14, type metadata accessor for FormatLayoutError);
      swift_willThrow();

      return sub_1D5F57F4C(v11, type metadata accessor for FormatLayoutError);
    }
  }

  else
  {
    sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v12 = 0xD00000000000005DLL;
    v12[1] = 0x80000001D73C3880;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

void *sub_1D5F518FC(__int128 *a1, unint64_t *a2)
{
  v2 = a1[1];
  v188 = *a1;
  v189 = v2;
  v190 = a1[2];
  v162 = *(a1 + 7);
  v191 = *(a1 + 6);
  v3 = a1[5];
  v182 = a1[4];
  v183 = v3;
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v187 = *(a1 + 18);
  v185 = v5;
  v186 = v6;
  v184 = v4;
  v7 = *a2;
  if ((~*a2 & 0xF000000000000007) == 0)
  {
    sub_1D5EF032C(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D7273AE0;
    sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8(0);
    v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v11 + v10));
    v12 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v12 - 8) + 56))(v11 + v10, 0, 1, v12);
    sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v11, &v168);
    swift_setDeallocating();
    sub_1D5F57F4C(v11 + v10, sub_1D5EA74B8);
    swift_deallocClassInstance();
    *(v8 + 56) = &type metadata for FormatInspectionGroup;
    *(v8 + 64) = &off_1F518B2C0;
    v13 = swift_allocObject();
    *(v8 + 32) = v13;
    v14 = v169;
    *(v13 + 16) = v168;
    *(v13 + 32) = v14;
    *(v13 + 48) = v170;
    v15 = sub_1D7073500(v8);
    swift_setDeallocating();
    sub_1D5BFB704(v8 + 32, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
    swift_deallocClassInstance();
    return v15;
  }

  v17 = v7 >> 61;
  if ((v7 >> 61) <= 1)
  {
    if (!v17)
    {
      v37 = *(v7 + 48);
      v164 = *(v7 + 32);
      v165 = v37;
      v166 = *(v7 + 64);
      v167 = *(v7 + 80);
      v163 = *(v7 + 16);
      sub_1D5EF032C(0);
      v156 = swift_allocObject();
      *(v156 + 16) = xmmword_1D7279970;
      sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
      sub_1D5EA74B8(0);
      v39 = *(*(v38 - 8) + 72);
      v149 = (*(*(v38 - 8) + 80) + 32) & ~*(*(v38 - 8) + 80);
      v146 = swift_allocObject();
      *(v146 + 16) = xmmword_1D727E3C0;
      v40 = v146 + v149;
      sub_1D5D3F188(&v163, &v168);
      sub_1D711F844(1701869908, 0xE400000000000000, 0x6D6574737953, 0xE600000000000000, (v146 + v149));
      v41 = type metadata accessor for FormatInspectionItem(0);
      v42 = *(*(v41 - 8) + 56);
      v42(v146 + v149, 0, 1, v41);
      v170 = v165;
      v171 = v166;
      LOWORD(v172) = v167;
      v168 = v163;
      v169 = v164;
      v43 = sub_1D6BED6FC(v162);
      v44 = [v43 fontName];

      v45 = sub_1D726207C();
      v47 = v46;

      v48 = sub_1D711F844(1701667150, 0xE400000000000000, v45, v47, (v146 + v149 + v39));
      (v42)(v146 + v149 + v39, 0, 1, v41, v48);
      v142 = 2 * v39;
      sub_1D711A80C(1702521171, 0xE400000000000000, v163, 0, (v146 + v149 + 2 * v39));
      v42(v146 + v149 + 2 * v39, 0, 1, v41);
      v144 = 3 * v39;
      sub_1D7121B54(0x746867696557, 0xE600000000000000, SBYTE2(v164), (v146 + v149 + 3 * v39));
      v42(v146 + v149 + 3 * v39, 0, 1, v41);
      v49 = *(&v164 + 1);
      sub_1D5D3F188(&v163, &v168);
      v50 = sub_1D7121E48(0x737469617254, 0xE600000000000000, v49, (v146 + v149 + 4 * v39));
      (v42)(v146 + v149 + 4 * v39, 0, 1, v41, v50);
      v51 = v164;
      v52 = (v164 & 0xFF00) == 3072;
      if ((v164 & 0xFF00) == 0xC00)
      {
        v53 = 12;
      }

      else
      {
        v53 = BYTE1(v164);
      }

      v54 = 5 * v39;
      if ((v164 & 0xFF00) == 0xC00)
      {
        v55 = 0;
      }

      else
      {
        v55 = *(&v163 + 1);
      }

      sub_1D7121930(0x656C797453, 0xE500000000000000, v53, (v40 + v54));
      v42(v40 + v54, 0, 1, v41);
      sub_1D711A80C(0x657A69532078614DLL, 0xE800000000000000, v55, (v52 | v51) & 1, (v40 + 6 * v39));
      v42(v40 + 6 * v39, 0, 1, v41);
      sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v146, v178);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v156 + 56) = &type metadata for FormatInspectionGroup;
      *(v156 + 64) = &off_1F518B2C0;
      v56 = swift_allocObject();
      *(v156 + 32) = v56;
      v57 = v178[1];
      *(v56 + 16) = v178[0];
      *(v56 + 32) = v57;
      *(v56 + 48) = v179;
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D7274590;
      v59 = (v58 + v149);
      v60 = v165;
      v152 = v166;
      v61 = v167;
      v62 = (v167 & 0xFF00) == 1280;
      if ((v167 & 0xFF00) == 0x500)
      {
        v63 = 4;
      }

      else
      {
        v63 = HIBYTE(v167);
      }

      if ((v167 & 0xFF00) == 0x500)
      {
        v64 = 0;
      }

      else
      {
        v64 = *(&v166 + 1);
      }

      if ((v167 & 0xFF00) == 0x500)
      {
        v65 = 0;
      }

      else
      {
        v65 = *(&v165 + 1);
      }

      if ((v167 & 0xFF00) == 0x500)
      {
        v60 = 10;
      }

      v154 = v60;
      sub_1D7121E98(0x6E6769736544, 0xE600000000000000, v63, v59);
      v42(v59, 0, 1, v41);
      sub_1D7121EA4(0x6564617247, 0xE500000000000000, v64, (v62 | v61) & 1, &v59[v39]);
      v42(&v59[v39], 0, 1, v41);
      sub_1D711A80C(0x746E616C53, 0xE500000000000000, v65, (v62 | v152) & 1, &v59[v142]);
      v42(&v59[v142], 0, 1, v41);
      sub_1D7121EB8(0x6874646957, 0xE500000000000000, v154, &v59[v144]);
      v42(&v59[v144], 0, 1, v41);
      sub_1D6795150(0x74744120746E6F46, 0xEF73657475626972, 0, 0, v58, v180);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v156 + 96) = &type metadata for FormatInspectionGroup;
      *(v156 + 104) = &off_1F518B2C0;
      v66 = swift_allocObject();
      *(v156 + 72) = v66;
      v67 = v180[1];
      *(v66 + 16) = v180[0];
      *(v66 + 32) = v67;
      *(v66 + 48) = v181;
      v168 = v188;
      v169 = v189;
      v170 = v190;
      *&v171 = v191;
      *(&v171 + 1) = v162;
      v174 = v184;
      v175 = v185;
      v176 = v186;
      v177 = v187;
      v172 = v182;
      v173 = v183;
      v68 = sub_1D6BED6FC(v162);
      sub_1D5D41588(&v163);
      v69 = sub_1D5F57318(&v168, v68);

      *(v156 + 136) = &type metadata for FormatInspection;
      *(v156 + 144) = &off_1F51E3FD0;
      *(v156 + 112) = v69;
      v36 = sub_1D7073500(v156);
      swift_setDeallocating();
      sub_1D5F572B0(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6720]);
      swift_arrayDestroy();
      goto LABEL_26;
    }

    v112 = v7 & 0x1FFFFFFFFFFFFFFFLL;
    v114 = *(v112 + 16);
    v113 = *(v112 + 24);
    v115 = *(v112 + 32);
    v161 = *(v112 + 40);
    v116 = *(v112 + 48);
    sub_1D5EF032C(0);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_1D7270C10;
    sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8(0);
    v119 = *(*(v118 - 8) + 72);
    v120 = (*(*(v118 - 8) + 80) + 32) & ~*(*(v118 - 8) + 80);
    v145 = 4 * v119;
    v121 = swift_allocObject();
    *(v121 + 16) = xmmword_1D7279960;
    v122 = v121 + v120;

    sub_1D711F844(1701869908, 0xE400000000000000, 0x6D6F74737543, 0xE600000000000000, (v121 + v120));
    v123 = type metadata accessor for FormatInspectionItem(0);
    v124 = *(*(v123 - 8) + 56);
    v124(v121 + v120, 0, 1, v123);

    v125 = sub_1D711F844(1701667150, 0xE400000000000000, v114, v113, (v121 + v120 + v119));
    (v124)(v121 + v120 + v119, 0, 1, v123, v125);
    sub_1D711A80C(1702521171, 0xE400000000000000, v115, 0, (v121 + v120 + 2 * v119));
    v124(v121 + v120 + 2 * v119, 0, 1, v123);
    if ((v116 & 0xFF00) == 0xC00)
    {
      v126 = 12;
    }

    else
    {
      v126 = HIBYTE(v116);
    }

    v127 = 3 * v119;
    if ((v116 & 0xFF00) == 0xC00)
    {
      v128 = 0;
    }

    else
    {
      v128 = v161;
    }

    sub_1D7121930(0x656C797453, 0xE500000000000000, v126, (v122 + v127));
    v124(v122 + v127, 0, 1, v123);
    sub_1D711A80C(0x657A69532078614DLL, 0xE800000000000000, v128, ((v116 & 0xFF00) == 3072) | v116 & 1, (v122 + v145));
    v124(v122 + v145, 0, 1, v123);
    sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v121, &v163);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v151 + 56) = &type metadata for FormatInspectionGroup;
    *(v151 + 64) = &off_1F518B2C0;
    v129 = swift_allocObject();
    *(v129 + 48) = v165;
    *(v151 + 32) = v129;
    v130 = v164;
    *(v129 + 16) = v163;
    *(v129 + 32) = v130;
    v131 = a1[1];
    v168 = *a1;
    v169 = v131;
    v170 = a1[2];
    *&v171 = *(a1 + 6);
    *(&v171 + 1) = v162;
    v132 = a1[7];
    v174 = a1[6];
    v175 = v132;
    v176 = a1[8];
    v177 = *(a1 + 18);
    v133 = a1[5];
    v172 = a1[4];
    v173 = v133;
    sub_1D5C14A38();
    if ((v116 & 0xFF00) == 0xC00)
    {
      v134 = sub_1D72633EC();
    }

    else
    {
      v136 = sub_1D6F8A788();
      v134 = sub_1D72633AC();
    }

    v139 = sub_1D5F57318(&v168, v134);

    *(v151 + 96) = &type metadata for FormatInspection;
    *(v151 + 104) = &off_1F51E3FD0;
    *(v151 + 72) = v139;
    v138 = sub_1D7073500(v151);
    swift_setDeallocating();
    sub_1D5F572B0(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v138;
  }

  v18 = v7 & 0x1FFFFFFFFFFFFFFFLL;
  if (v17 == 2)
  {
    v70 = *(v18 + 24);
    v71 = *(v18 + 40);
    v157 = *(v18 + 48);
    v160 = *(v18 + 16);
    v72 = *(v18 + 56);
    sub_1D5EF032C(0);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_1D7270C10;
    sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8(0);
    v75 = *(*(v74 - 8) + 72);
    v76 = (*(*(v74 - 8) + 80) + 32) & ~*(*(v74 - 8) + 80);
    v143 = 4 * v75;
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1D7279960;
    v78 = v77 + v76;

    sub_1D711F844(1701869908, 0xE400000000000000, 0x65746F6D6552, 0xE600000000000000, (v77 + v76));
    v79 = type metadata accessor for FormatInspectionItem(0);
    v80 = *(*(v79 - 8) + 56);
    v80(v77 + v76, 0, 1, v79);

    v81 = sub_1D711F844(1701667150, 0xE400000000000000, v160, v70, (v77 + v76 + v75));
    (v80)(v77 + v76 + v75, 0, 1, v79, v81);
    sub_1D711A80C(1702521171, 0xE400000000000000, v71, 0, (v77 + v76 + 2 * v75));
    v80(v77 + v76 + 2 * v75, 0, 1, v79);
    if ((v72 & 0xFF00) == 0xC00)
    {
      v82 = 12;
    }

    else
    {
      v82 = HIBYTE(v72);
    }

    v83 = 3 * v75;
    if ((v72 & 0xFF00) == 0xC00)
    {
      v84 = 0;
    }

    else
    {
      v84 = v157;
    }

    sub_1D7121930(0x656C797453, 0xE500000000000000, v82, (v78 + v83));
    v80(v78 + v83, 0, 1, v79);
    sub_1D711A80C(0x657A69532078614DLL, 0xE800000000000000, v84, ((v72 & 0xFF00) == 3072) | v72 & 1, (v78 + v143));
    v80(v78 + v143, 0, 1, v79);
    sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v77, &v163);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v147 + 56) = &type metadata for FormatInspectionGroup;
    *(v147 + 64) = &off_1F518B2C0;
    v85 = swift_allocObject();
    *(v85 + 48) = v165;
    *(v147 + 32) = v85;
    v86 = v164;
    *(v85 + 16) = v163;
    *(v85 + 32) = v86;
    v87 = a1[1];
    v168 = *a1;
    v169 = v87;
    v170 = a1[2];
    *&v171 = *(a1 + 6);
    *(&v171 + 1) = v162;
    v88 = a1[7];
    v174 = a1[6];
    v175 = v88;
    v176 = a1[8];
    v177 = *(a1 + 18);
    v89 = a1[5];
    v172 = a1[4];
    v173 = v89;
    sub_1D5C14A38();
    if ((v72 & 0xFF00) == 0xC00)
    {
      v90 = sub_1D72633EC();
    }

    else
    {
      v135 = sub_1D6F8A788();
      v90 = sub_1D72633AC();
    }

    v137 = sub_1D5F57318(&v168, v90);

    *(v147 + 96) = &type metadata for FormatInspection;
    *(v147 + 104) = &off_1F51E3FD0;
    *(v147 + 72) = v137;
    v138 = sub_1D7073500(v147);
    swift_setDeallocating();
    sub_1D5F572B0(0, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6720]);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    return v138;
  }

  if (v17 == 3)
  {
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v18 + 32);
    v22 = *(v18 + 40);
    sub_1D5EF032C(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1D7273AE0;
    sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
    sub_1D5EA74B8(0);
    v159 = *(*(v24 - 8) + 72);
    v25 = (*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7270C10;
    v27 = v26 + v25;
    sub_1D5F58038(v19, v20, v21, v22);
    sub_1D711F844(1701869908, 0xE400000000000000, 0x676E69646E6942, 0xE700000000000000, (v26 + v25));
    v28 = type metadata accessor for FormatInspectionItem(0);
    v155 = *(*(v28 - 8) + 56);
    v155(v26 + v25, 0, 1, v28);
    v29 = sub_1D5F4D388(v19, v20, v21, v22, &type metadata for FormatBindingFont, &unk_1F5125490);
    sub_1D5F57FEC(v19, v20, v21, v22);
    *&v168 = v29;
    sub_1D5B581A0(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1D5BB0AB8();
    v30 = sub_1D7261F3C();
    v32 = v31;

    v33 = sub_1D711F844(1752457552, 0xE400000000000000, v30, v32, (v27 + v159));
    (v155)(v27 + v159, 0, 1, v28, v33);
    sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v26, &v168);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v23 + 56) = &type metadata for FormatInspectionGroup;
    *(v23 + 64) = &off_1F518B2C0;
    v34 = swift_allocObject();
    *(v23 + 32) = v34;
    v35 = v169;
    *(v34 + 16) = v168;
    *(v34 + 32) = v35;
    *(v34 + 48) = v170;
    v36 = sub_1D7073500(v23);
    swift_setDeallocating();
    sub_1D5BFB704(v23 + 32, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
LABEL_26:
    swift_deallocClassInstance();
    return v36;
  }

  v91 = *(v18 + 16);
  v92 = *(v18 + 24);
  v93 = *(v18 + 32);
  v141 = *(v18 + 48);
  v94 = *(v18 + 40);
  sub_1D5EF032C(0);
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_1D7273AE0;
  sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8(0);
  v148 = *(*(v96 - 8) + 72);
  v97 = (*(*(v96 - 8) + 80) + 32) & ~*(*(v96 - 8) + 80);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_1D7270C10;
  v99 = (v98 + v97);
  v100 = v91;
  v158 = v91;
  v150 = v93;
  v153 = v94;
  sub_1D5F58038(v91, v92, v93, v94);

  sub_1D711F844(1701869908, 0xE400000000000000, 0x676E69646E6942, 0xE700000000000000, v99);
  v101 = type metadata accessor for FormatInspectionItem(0);
  v102 = *(*(v101 - 8) + 56);
  v102(v99, 0, 1, v101);
  sub_1D5F4D388(v100, v92, v93, v94, &type metadata for FormatBindingFont, &unk_1F5125490);
  sub_1D5B581A0(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1D5BB0AB8();
  v103 = sub_1D7261F3C();
  v140 = v104;

  sub_1D5F572B0(0, &qword_1EC8803C0, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6F90]);
  v105 = swift_allocObject();
  *(v105 + 16) = xmmword_1D7273AE0;
  v168 = v188;
  v169 = v189;
  v170 = v190;
  *&v171 = v191;
  *(&v171 + 1) = v162;
  v174 = v184;
  v175 = v185;
  v176 = v186;
  v177 = v187;
  v172 = v182;
  v173 = v183;
  *&v163 = v141;

  v106 = sub_1D5F518FC(&v168, &v163);
  sub_1D5C8500C(v141);
  *(v105 + 56) = &type metadata for FormatInspection;
  *(v105 + 64) = &off_1F51E3FD0;
  *(v105 + 32) = v106;
  v107 = sub_1D5F62BFC(v105);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v105 + 32));
  swift_deallocClassInstance();
  v108 = sub_1D7073500(v107);

  sub_1D711AD20(0x676E69646E6942, 0xE700000000000000, v108, v103, v140, &v99[v148]);
  v102(&v99[v148], 0, 1, v101);
  sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v98, &v168);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v95 + 56) = &type metadata for FormatInspectionGroup;
  *(v95 + 64) = &off_1F518B2C0;
  v109 = swift_allocObject();
  *(v95 + 32) = v109;
  v110 = v169;
  *(v109 + 16) = v168;
  *(v109 + 32) = v110;
  *(v109 + 48) = v170;
  v111 = sub_1D7073500(v95);
  swift_setDeallocating();
  sub_1D5BFB704(v95 + 32, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  swift_deallocClassInstance();
  sub_1D5F57FEC(v158, v92, v150, v153);

  return v111;
}

uint64_t sub_1D5F5343C(uint64_t a1, uint64_t a2)
{
  sub_1D5D28654(a1, &v16, sub_1D5E29ACC);
  v3 = v16;
  v4 = sub_1D726207C();
  v6 = v5;

  sub_1D5D28654(a2, &v14, sub_1D5E29ACC);
  v7 = v14;
  v8 = sub_1D726207C();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1D72646CC();
  }

  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v12 & 1;
}

uint64_t sub_1D5F53540()
{
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v0 = 0xD00000000000007ALL;
  v0[1] = 0x80000001D73C3800;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

void sub_1D5F535EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v13 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (a4 >> 21) & 7;
  if (v17 <= 1)
  {
    if (v17)
    {
      sub_1D6750B04(*(a1 + *a5 + 8), &v30);
      if (!v6)
      {
        v22 = v30;
        *&v30 = a2;
        *(&v30 + 1) = a3;
        LOWORD(v31) = a4;
        BYTE2(v31) = BYTE2(a4) & 0x1F;
        sub_1D5EA5DE0(v22, a6);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_1D6752174(*(a1 + *a5 + 8), v16);
      if (!v6)
      {
        *&v30 = a2;
        *(&v30 + 1) = a3;
        LOWORD(v31) = a4;
        BYTE2(v31) = BYTE2(a4);
        sub_1D70DC564(v16, a6);
        sub_1D5F57F4C(v16, type metadata accessor for FeedHeadline);
      }
    }
  }

  else if (v17 == 2)
  {
    sub_1D6751EC0(*(a1 + *a5 + 8), &v30);
    if (!v6)
    {
      v28[6] = v36;
      v29[0] = v37[0];
      *(v29 + 9) = *(v37 + 9);
      v28[2] = v32;
      v28[3] = v33;
      v28[4] = v34;
      v28[5] = v35;
      v28[0] = v30;
      v28[1] = v31;
      v23[6] = v36;
      v24[0] = v37[0];
      *(v24 + 9) = *(v37 + 9);
      v23[2] = v32;
      v23[3] = v33;
      v23[4] = v34;
      v23[5] = v35;
      v25 = a2;
      v26 = a3;
      v27 = a4;
      v23[0] = v30;
      v23[1] = v31;
      sub_1D715C20C(v23, a6);
      sub_1D5ECF320(v28);
    }
  }

  else if (v17 == 3)
  {
    sub_1D67505CC(*(a1 + *a5 + 8), &v30);
    if (!v6)
    {
      v18 = v30;
      *&v30 = a2;
      *(&v30 + 1) = a3;
      LOWORD(v31) = a4;
      BYTE2(v31) = BYTE2(a4) & 0x1F;
      v19 = FCFeedDescriptor.feedTag.getter();
      sub_1D5EA5DE0(v19, a6);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D67505CC(*(a1 + *a5 + 8), &v30);
    if (!v6)
    {
      v20 = v30;
      v21 = [objc_msgSend(v30 backingTag)];
      swift_unknownObjectRelease();
      if (v21)
      {
        *&v30 = a2;
        *(&v30 + 1) = a3;
        LOWORD(v31) = a4;
        BYTE2(v31) = BYTE2(a4) & 0x1F;
        sub_1D5EA5DE0(v21, a6);
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }
}

void sub_1D5F53974(uint64_t a1@<X1>, uint64_t a2@<X2>, unsigned int a3@<W3>, void (*a4)(__n128)@<X4>, void (*a5)(__int128 *__return_ptr, __n128)@<X5>, void (*a6)(__int128 *__return_ptr, __n128)@<X6>, void *(*a7)(__int128 *__return_ptr, __n128)@<X7>, uint64_t *a8@<X8>)
{
  *&v25 = a1;
  *(&v25 + 1) = a2;
  v39 = a8;
  v14 = type metadata accessor for FeedHeadline(0);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v18 = &v26[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (a3 >> 21) & 7;
  if (v19 <= 1)
  {
    if (v19)
    {
      a5(&v31, v16);
      if (!v8)
      {
        v24 = v31;
        v31 = v25;
        LOWORD(v32) = a3;
        BYTE2(v32) = BYTE2(a3) & 0x1F;
        sub_1D5EA5DE0(v24, v39);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      a4(v16);
      if (!v8)
      {
        v31 = v25;
        LOWORD(v32) = a3;
        BYTE2(v32) = BYTE2(a3);
        sub_1D70DC564(v18, v39);
        sub_1D5F57F4C(v18, type metadata accessor for FeedHeadline);
      }
    }
  }

  else if (v19 == 2)
  {
    a6(&v31, v16);
    if (!v8)
    {
      v29[6] = v37;
      v30[0] = v38[0];
      *(v30 + 9) = *(v38 + 9);
      v29[2] = v33;
      v29[3] = v34;
      v29[4] = v35;
      v29[5] = v36;
      v29[0] = v31;
      v29[1] = v32;
      v26[6] = v37;
      *v27 = v38[0];
      *(&v27[1] + 1) = *(v38 + 9);
      v26[2] = v33;
      v26[3] = v34;
      v26[4] = v35;
      v26[5] = v36;
      *&v27[5] = v25;
      v28 = a3;
      v26[0] = v31;
      v26[1] = v32;
      sub_1D715C20C(v26, v39);
      sub_1D5ECF320(v29);
    }
  }

  else if (v19 == 3)
  {
    a7(&v31, v16);
    if (!v8)
    {
      v20 = v31;
      v31 = v25;
      LOWORD(v32) = a3;
      BYTE2(v32) = BYTE2(a3) & 0x1F;
      v21 = FCFeedDescriptor.feedTag.getter();
      sub_1D5EA5DE0(v21, v39);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    a7(&v31, v16);
    if (!v8)
    {
      v22 = v31;
      v23 = [objc_msgSend(v31 backingTag)];
      swift_unknownObjectRelease();
      if (v23)
      {
        v31 = v25;
        LOWORD(v32) = a3;
        BYTE2(v32) = BYTE2(a3) & 0x1F;
        sub_1D5EA5DE0(v23, v39);
        swift_unknownObjectRelease();
      }

      else
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1D5F53CF4()
{
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v0 = 0xD000000000000048;
  v0[1] = 0x80000001D73C36B0;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D5F53DA0()
{
  type metadata accessor for FormatLayoutError(0);
  sub_1D5B57228(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
  swift_allocError();
  *v0 = 0xD00000000000005DLL;
  v0[1] = 0x80000001D73C3880;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_1D5F53E4C@<X0>(uint64_t a1@<X8>)
{
  sub_1D5D27C58(0, qword_1EDF34D20, type metadata accessor for FeedRecipe, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - v5;
  v7 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v7 + 16) || (v8 = sub_1D5B69D90(0x6963655264656546, 0xEA00000000006570), (v9 & 1) == 0))
  {
    sub_1D5F58758();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(v7 + 16);
    if (v15)
    {
      v22[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC();
      v18 = v22[0];

      result = sub_1D5B87E38(v18);
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    *v14 = 0x6963655264656546;
    *(v14 + 8) = 0xEA00000000006570;
    *(v14 + 16) = v16;
    *(v14 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v7 + 56) + 40 * v8, v21);
  sub_1D5B63F14(v21, v22);
  sub_1D5B68374(v22, v21);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  v10 = type metadata accessor for FeedRecipe(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    return sub_1D5D5E2D4(v6, a1, type metadata accessor for FeedRecipe);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1D5D28118(v6, qword_1EDF34D20, type metadata accessor for FeedRecipe);
    sub_1D5F58758();
    swift_allocError();
    v20 = v19;
    *v19 = 0x6963655264656546;
    v19[1] = 0xEA00000000006570;
    sub_1D5B68374(v22, (v19 + 2));
    *(v20 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }
}

uint64_t sub_1D5F54198@<X0>(uint64_t a1@<X8>)
{
  sub_1D5D27C58(0, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v22 - v5;
  v7 = 0x80000001D73C3770;
  v8 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v8 + 16) || (v9 = sub_1D5B69D90(0xD000000000000013, 0x80000001D73C3770), (v10 & 1) == 0))
  {
    sub_1D5F58758();
    v13 = swift_allocError();
    v15 = v14;
    v16 = *(v8 + 16);
    if (v16)
    {
      v23 = 0x80000001D73C3770;
      v25[6] = v13;
      v17 = sub_1D5B9A6D8(v16, 0);
      v18 = sub_1D5E2A8BC();
      v19 = v25[0];

      result = sub_1D5B87E38(v19);
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }

      v7 = v23;
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    *v15 = 0xD000000000000013;
    *(v15 + 8) = v7;
    *(v15 + 16) = v17;
    *(v15 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v8 + 56) + 40 * v9, v24);
  sub_1D5B63F14(v24, v25);
  sub_1D5B68374(v25, v24);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  v11 = type metadata accessor for FeedPuzzleStatistic(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v25);
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    return sub_1D5D5E2D4(v6, a1, type metadata accessor for FeedPuzzleStatistic);
  }

  else
  {
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_1D5D28118(v6, qword_1EDF37F78, type metadata accessor for FeedPuzzleStatistic);
    sub_1D5F58758();
    swift_allocError();
    v21 = v20;
    *v20 = 0xD000000000000013;
    v20[1] = 0x80000001D73C3770;
    sub_1D5B68374(v25, (v20 + 2));
    *(v21 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }
}

uint64_t sub_1D5F544DC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x7A7A755064656546, 0xEE0065707954656CLL), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v9 = swift_allocError();
    v11 = v10;
    v12 = *(v3 + 16);
    if (v12)
    {
      v23[7] = v9;
      v13 = sub_1D5B9A6D8(v12, 0);
      v14 = sub_1D5E2A8BC();

      result = sub_1D5B87E38(v18);
      if (v14 != v12)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v11, "FeedPuzzleType");
    *(v11 + 15) = -18;
    *(v11 + 16) = v13;
    *(v11 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, &v18);
  sub_1D5B63F14(&v18, v23);
  sub_1D5B68374(v23, v22);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    v7 = v19;
    *a1 = v18;
    a1[1] = v7;
    v8 = v21;
    a1[2] = v20;
    a1[3] = v8;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    memset(v17, 0, sizeof(v17));
    sub_1D5F587EC(v17, &unk_1EDF154F0, &type metadata for FeedPuzzleType);
    sub_1D5F58758();
    swift_allocError();
    v16 = v15;
    strcpy(v15, "FeedPuzzleType");
    v15[15] = -18;
    sub_1D5B68374(v23, (v15 + 16));
    v16[56] = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

uint64_t sub_1D5F54740@<X0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x7A7A755064656546, 0xEA0000000000656CLL), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v13 = swift_allocError();
    v15 = v14;
    v16 = *(v3 + 16);
    if (v16)
    {
      v35[7] = v13;
      v17 = sub_1D5B9A6D8(v16, 0);
      v18 = sub_1D5E2A8BC();

      result = sub_1D5B87E38(v21);
      if (v18 != v16)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    *v15 = 0x7A7A755064656546;
    *(v15 + 8) = 0xEA0000000000656CLL;
    *(v15 + 16) = v17;
    *(v15 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, &v21);
  sub_1D5B63F14(&v21, v35);
  sub_1D5B68374(v35, v34);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v35);
    v7 = v32;
    a1[10] = v31;
    a1[11] = v7;
    a1[12] = v33;
    v8 = v28;
    a1[6] = v27;
    a1[7] = v8;
    v9 = v30;
    a1[8] = v29;
    a1[9] = v9;
    v10 = v24;
    a1[2] = v23;
    a1[3] = v10;
    v11 = v26;
    a1[4] = v25;
    a1[5] = v11;
    v12 = v22;
    *a1 = v21;
    a1[1] = v12;
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    sub_1D5F587EC(&v21, &qword_1EDF12E30, &type metadata for FeedPuzzle);
    sub_1D5F58758();
    swift_allocError();
    v20 = v19;
    *v19 = 0x7A7A755064656546;
    v19[1] = 0xEA0000000000656CLL;
    sub_1D5B68374(v35, (v19 + 2));
    *(v20 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  return result;
}

uint64_t sub_1D5F549CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x726F705364656546, 0xEF746E6576457374), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v7 = swift_allocError();
    v9 = v8;
    v10 = *(v3 + 16);
    if (v10)
    {
      v20[6] = v7;
      v11 = sub_1D5B9A6D8(v10, 0);
      v12 = sub_1D5E2A8BC();

      result = sub_1D5B87E38(v20[0]);
      if (v12 != v10)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    *v9 = 0x726F705364656546;
    *(v9 + 8) = 0xEF746E6576457374;
    *(v9 + 16) = v11;
    *(v9 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, v19);
  sub_1D5B63F14(v19, v20);
  sub_1D5B68374(v20, v19);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18 & 1;
  }

  else
  {
    sub_1D5F5885C(0, 0, 0);
    sub_1D5F58758();
    swift_allocError();
    v14 = v13;
    *v13 = 0x726F705364656546;
    v13[1] = 0xEF746E6576457374;
    sub_1D5B68374(v20, (v13 + 2));
    *(v14 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return result;
}

uint64_t sub_1D5F54C3C@<X0>(uint64_t a1@<X8>)
{
  sub_1D5D27C58(0, qword_1EDF34968, type metadata accessor for FeedWebEmbed, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - v5;
  v7 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v7 + 16) || (v8 = sub_1D5B69D90(0x4562655764656546, 0xEC0000006465626DLL), (v9 & 1) == 0))
  {
    sub_1D5F58758();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(v7 + 16);
    if (v15)
    {
      v22[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC();
      v18 = v22[0];

      result = sub_1D5B87E38(v18);
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v14, "FeedWebEmbed");
    *(v14 + 13) = 0;
    *(v14 + 14) = -5120;
    *(v14 + 16) = v16;
    *(v14 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v7 + 56) + 40 * v8, v21);
  sub_1D5B63F14(v21, v22);
  sub_1D5B68374(v22, v21);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  v10 = type metadata accessor for FeedWebEmbed(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    return sub_1D5D5E2D4(v6, a1, type metadata accessor for FeedWebEmbed);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1D5D28118(v6, qword_1EDF34968, type metadata accessor for FeedWebEmbed);
    sub_1D5F58758();
    swift_allocError();
    v20 = v19;
    strcpy(v19, "FeedWebEmbed");
    *(v19 + 13) = 0;
    *(v19 + 14) = -5120;
    sub_1D5B68374(v22, v19 + 16);
    *(v20 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }
}

uint64_t sub_1D5F54F8C@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    swift_allocError();
    v8 = v7;
    v9 = *(v3 + 16);
    if (v9)
    {
      v10 = sub_1D5B9A6D8(v9, 0);
      v11 = sub_1D5E2A8BC();

      result = sub_1D5B87E38(v15[0]);
      if (v11 != v9)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v8, "FeedDescriptor");
    *(v8 + 15) = -18;
    *(v8 + 16) = v10;
    *(v8 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, v14);
  sub_1D5B63F14(v14, v15);
  sub_1D5B68374(v15, v14);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *a1 = v15[6];
  }

  else
  {
    sub_1D5F58758();
    swift_allocError();
    v13 = v12;
    strcpy(v12, "FeedDescriptor");
    v12[15] = -18;
    sub_1D5B68374(v15, (v12 + 16));
    v13[56] = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return result;
}

void sub_1D5F551BC(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x7779615064656546, 0xEB000000006C6C61), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v13 = swift_allocError();
    v15 = v14;
    v16 = *(v3 + 16);
    if (v16)
    {
      v56[8] = v13;
      v17 = sub_1D5B9A6D8(v16, 0);
      v18 = sub_1D5E2A8BC();

      sub_1D5B87E38(v39);
      if (v18 != v16)
      {
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    *v15 = 0x7779615064656546;
    *(v15 + 8) = 0xEB000000006C6C61;
    *(v15 + 16) = v17;
    *(v15 + 56) = 0;
    swift_willThrow();
    return;
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, &v39);
  sub_1D5B63F14(&v39, v56);
  sub_1D5B68374(v56, v55);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v56);
    nullsub_1();
    v6 = v52;
    *(a1 + 192) = v51;
    *(a1 + 208) = v6;
    *(a1 + 224) = v53;
    *(a1 + 240) = v54;
    v7 = v48;
    *(a1 + 128) = v47;
    *(a1 + 144) = v7;
    v8 = v50;
    *(a1 + 160) = v49;
    *(a1 + 176) = v8;
    v9 = v44;
    *(a1 + 64) = v43;
    *(a1 + 80) = v9;
    v10 = v46;
    *(a1 + 96) = v45;
    *(a1 + 112) = v10;
    v11 = v40;
    *a1 = v39;
    *(a1 + 16) = v11;
    v12 = v42;
    *(a1 + 32) = v41;
    *(a1 + 48) = v12;
  }

  else
  {
    sub_1D5F588A0(&v21);
    v51 = v33;
    v52 = v34;
    v53 = v35;
    v47 = v29;
    v48 = v30;
    v49 = v31;
    v50 = v32;
    v43 = v25;
    v44 = v26;
    v45 = v27;
    v46 = v28;
    v39 = v21;
    v40 = v22;
    v41 = v23;
    v42 = v24;
    v37[12] = v33;
    v37[13] = v34;
    v37[14] = v35;
    v37[8] = v29;
    v37[9] = v30;
    v37[10] = v31;
    v37[11] = v32;
    v37[4] = v25;
    v37[5] = v26;
    v37[6] = v27;
    v37[7] = v28;
    v37[0] = v21;
    v37[1] = v22;
    v54 = v36;
    v38 = v36;
    v37[2] = v23;
    v37[3] = v24;
    sub_1D5F587EC(v37, qword_1EDF34BC0, &type metadata for FeedPaywall);
    sub_1D5F58758();
    swift_allocError();
    v20 = v19;
    *v19 = 0x7779615064656546;
    v19[1] = 0xEB000000006C6C61;
    sub_1D5B68374(v56, (v19 + 2));
    *(v20 + 56) = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v56);
  }
}

uint64_t sub_1D5F55520@<X0>(uint64_t a1@<X8>)
{
  sub_1D5D27C58(0, qword_1EDF12C58, type metadata accessor for FeedWeather, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - v5;
  v7 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v7 + 16) || (v8 = sub_1D5B69D90(0x7461655764656546, 0xEB00000000726568), (v9 & 1) == 0))
  {
    sub_1D5F58758();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(v7 + 16);
    if (v15)
    {
      v22[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC();
      v18 = v22[0];

      result = sub_1D5B87E38(v18);
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    *v14 = 0x7461655764656546;
    *(v14 + 8) = 0xEB00000000726568;
    *(v14 + 16) = v16;
    *(v14 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v7 + 56) + 40 * v8, v21);
  sub_1D5B63F14(v21, v22);
  sub_1D5B68374(v22, v21);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  v10 = type metadata accessor for FeedWeather(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    return sub_1D5D5E2D4(v6, a1, type metadata accessor for FeedWeather);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1D5D28118(v6, qword_1EDF12C58, type metadata accessor for FeedWeather);
    sub_1D5F58758();
    swift_allocError();
    v20 = v19;
    *v19 = 0x7461655764656546;
    v19[1] = 0xEB00000000726568;
    sub_1D5B68374(v22, (v19 + 2));
    *(v20 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }
}

void sub_1D5F55870(_OWORD *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x7573734964656546, 0xE900000000000065), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v10 = swift_allocError();
    v12 = v11;
    v13 = *(v3 + 16);
    if (v13)
    {
      v37[8] = v10;
      v14 = sub_1D5B9A6D8(v13, 0);
      v15 = sub_1D5E2A8BC();

      sub_1D5B87E38(v28);
      if (v15 != v13)
      {
        __break(1u);
        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
    }

    *v12 = 0x7573734964656546;
    *(v12 + 8) = 0xE900000000000065;
    *(v12 + 16) = v14;
    *(v12 + 56) = 0;
    swift_willThrow();
    return;
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, &v28);
  sub_1D5B63F14(&v28, v37);
  sub_1D5B68374(v37, v36);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    nullsub_1();
    v6 = v35[0];
    a1[6] = v34;
    a1[7] = v6;
    *(a1 + 121) = *(v35 + 9);
    v7 = v31;
    a1[2] = v30;
    a1[3] = v7;
    v8 = v33;
    a1[4] = v32;
    a1[5] = v8;
    v9 = v29;
    *a1 = v28;
    a1[1] = v9;
  }

  else
  {
    sub_1D5D62850(&v18);
    v34 = v24;
    v35[0] = v25[0];
    *(v35 + 9) = *(v25 + 9);
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v28 = v18;
    v29 = v19;
    v26[6] = v24;
    v27[0] = v25[0];
    *(v27 + 9) = *(v25 + 9);
    v26[2] = v20;
    v26[3] = v21;
    v26[4] = v22;
    v26[5] = v23;
    v26[0] = v18;
    v26[1] = v19;
    sub_1D5F587EC(v26, &qword_1EDF34E30, &type metadata for FeedIssue);
    sub_1D5F58758();
    swift_allocError();
    v17 = v16;
    *v16 = 0x7573734964656546;
    v16[1] = 0xE900000000000065;
    sub_1D5B68374(v37, (v16 + 2));
    *(v17 + 56) = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v37);
  }
}

uint64_t sub_1D5F55B34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v3 + 16) || (v4 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470), (v5 & 1) == 0))
  {
    sub_1D5F58758();
    v7 = swift_allocError();
    v9 = v8;
    v10 = *(v3 + 16);
    if (v10)
    {
      v19[6] = v7;
      v11 = sub_1D5B9A6D8(v10, 0);
      v12 = sub_1D5E2A8BC();

      result = sub_1D5B87E38(v19[0]);
      if (v12 != v10)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v9, "FeedGroupTag");
    *(v9 + 13) = 0;
    *(v9 + 14) = -5120;
    *(v9 + 16) = v11;
    *(v9 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v3 + 56) + 40 * v4, v18);
  sub_1D5B63F14(v18, v19);
  sub_1D5B68374(v19, v18);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  if (swift_dynamicCast())
  {
    result = __swift_destroy_boxed_opaque_existential_1(v19);
    *a1 = v15;
    *(a1 + 8) = v16;
    *(a1 + 16) = v17;
  }

  else
  {
    sub_1D5F587AC(0, 0);
    sub_1D5F58758();
    swift_allocError();
    v14 = v13;
    strcpy(v13, "FeedGroupTag");
    *(v13 + 13) = 0;
    *(v13 + 14) = -5120;
    sub_1D5B68374(v19, v13 + 16);
    *(v14 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

uint64_t sub_1D5F55D7C@<X0>(uint64_t a1@<X8>)
{
  sub_1D5D27C58(0, qword_1EDF42030, type metadata accessor for FeedHeadline, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v21 - v5;
  v7 = *(v1 + *(type metadata accessor for FormatDecorationContext(0) + 44));
  if (!*(v7 + 16) || (v8 = sub_1D5B69D90(0x6461654864656546, 0xEC000000656E696CLL), (v9 & 1) == 0))
  {
    sub_1D5F58758();
    v12 = swift_allocError();
    v14 = v13;
    v15 = *(v7 + 16);
    if (v15)
    {
      v22[6] = v12;
      v16 = sub_1D5B9A6D8(v15, 0);
      v17 = sub_1D5E2A8BC();
      v18 = v22[0];

      result = sub_1D5B87E38(v18);
      if (v17 != v15)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    strcpy(v14, "FeedHeadline");
    *(v14 + 13) = 0;
    *(v14 + 14) = -5120;
    *(v14 + 16) = v16;
    *(v14 + 56) = 0;
    return swift_willThrow();
  }

  sub_1D5B68374(*(v7 + 56) + 40 * v8, v21);
  sub_1D5B63F14(v21, v22);
  sub_1D5B68374(v22, v21);
  sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
  v10 = type metadata accessor for FeedHeadline(0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v22);
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
    return sub_1D5D5E2D4(v6, a1, type metadata accessor for FeedHeadline);
  }

  else
  {
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    sub_1D5D28118(v6, qword_1EDF42030, type metadata accessor for FeedHeadline);
    sub_1D5F58758();
    swift_allocError();
    v20 = v19;
    strcpy(v19, "FeedHeadline");
    *(v19 + 13) = 0;
    *(v19 + 14) = -5120;
    sub_1D5B68374(v22, v19 + 16);
    *(v20 + 56) = 1;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }
}

uint64_t sub_1D5F560CC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFC84(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D5F56138(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D5F56138(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D726449C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D5E29ACC(0);
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D5F56458(v7, v8, a1, v4);
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
    return sub_1D5F56234(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D5F56234(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_6:
    v32 = a3;
    v24 = v6;
    v25 = v5;
    while (1)
    {
      sub_1D5D28654(v5, v31, sub_1D5E29ACC);
      v7 = v5 - 40;
      sub_1D5D28654(v5 - 40, v30, sub_1D5E29ACC);
      sub_1D5D28654(v31, &v28, sub_1D5E29ACC);
      v8 = v28;
      v9 = sub_1D726207C();
      v11 = v10;

      sub_1D5D28654(v30, &v26, sub_1D5E29ACC);
      v12 = v26;
      v13 = sub_1D726207C();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {

        __swift_destroy_boxed_opaque_existential_1(v27);
        __swift_destroy_boxed_opaque_existential_1(v29);
        sub_1D5F57F4C(v30, sub_1D5E29ACC);
        result = sub_1D5F57F4C(v31, sub_1D5E29ACC);
LABEL_5:
        a3 = v32 + 1;
        v5 = v25 + 40;
        v6 = v24 - 1;
        if (v32 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v17 = sub_1D72646CC();

      __swift_destroy_boxed_opaque_existential_1(v27);
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_1D5F57F4C(v30, sub_1D5E29ACC);
      result = sub_1D5F57F4C(v31, sub_1D5E29ACC);
      if ((v17 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v18 = *(v5 + 32);
      v20 = *v5;
      v19 = *(v5 + 16);
      v21 = *(v5 - 24);
      *v5 = *v7;
      *(v5 + 16) = v21;
      *(v5 + 32) = *(v5 - 8);
      *v7 = v20;
      *(v5 - 24) = v19;
      v5 -= 40;
      *(v7 + 32) = v18;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D5F56458(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3;
  v115 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v6 = *v115;
    if (!*v115)
    {
      goto LABEL_144;
    }

    v4 = v11;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_138:
      result = sub_1D62FF50C(v4);
    }

    v129 = result;
    v103 = *(result + 16);
    if (v103 >= 2)
    {
      v4 = 40;
      while (1)
      {
        v104 = *v8;
        if (!*v8)
        {
          goto LABEL_142;
        }

        v8 = (v103 - 1);
        v105 = *(result + 16 * v103);
        v106 = result;
        v107 = *(result + 16 * (v103 - 1) + 40);
        sub_1D5F56D7C((v104 + 40 * v105), (v104 + 40 * *(result + 16 * (v103 - 1) + 32)), v104 + 40 * v107, v6);
        if (v7)
        {
        }

        if (v107 < v105)
        {
          goto LABEL_131;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_1D62FF50C(v106);
        }

        if (v103 - 2 >= *(v106 + 2))
        {
          goto LABEL_132;
        }

        v108 = &v106[16 * v103];
        *v108 = v105;
        *(v108 + 1) = v107;
        v129 = v106;
        sub_1D62FF480(v8);
        result = v129;
        v103 = *(v129 + 16);
        v8 = a3;
        if (v103 <= 1)
        {
        }
      }
    }
  }

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v12 = v10;
    if (v10 + 1 < v9)
    {
      v120 = v9;
      v113 = v11;
      v13 = *v8;
      sub_1D5D28654(*v8 + 40 * (v10 + 1), v128, sub_1D5E29ACC);
      sub_1D5D28654(v13 + 40 * v10, v127, sub_1D5E29ACC);
      v14 = sub_1D5F5343C(v128, v127);
      if (!v7)
      {
        v15 = v14;
        sub_1D5F57F4C(v127, sub_1D5E29ACC);
        result = sub_1D5F57F4C(v128, sub_1D5E29ACC);
        v16 = v10 + 2;
        v110 = v10;
        v4 = 40 * v10;
        v17 = v13 + 40 * v10 + 80;
        while (v120 != v16)
        {
          sub_1D5D28654(v17, v128, sub_1D5E29ACC);
          sub_1D5D28654(v17 - 40, v127, sub_1D5E29ACC);
          sub_1D5D28654(v128, &v125, sub_1D5E29ACC);
          v19 = v125;
          v6 = sub_1D726207C();
          v21 = v20;

          sub_1D5D28654(v127, &v123, sub_1D5E29ACC);
          v22 = v123;
          v23 = sub_1D726207C();
          v25 = v24;

          if (v6 == v23 && v21 == v25)
          {
            v18 = 0;
          }

          else
          {
            v18 = sub_1D72646CC();
          }

          __swift_destroy_boxed_opaque_existential_1(v124);
          __swift_destroy_boxed_opaque_existential_1(v126);
          sub_1D5F57F4C(v127, sub_1D5E29ACC);
          result = sub_1D5F57F4C(v128, sub_1D5E29ACC);
          ++v16;
          v17 += 40;
          if ((v15 ^ v18))
          {
            v120 = v16 - 1;
            break;
          }
        }

        v7 = 0;
        v11 = v113;
        v8 = a3;
        v12 = v110;
        if (v15)
        {
          v26 = v120;
          if (v120 < v110)
          {
            goto LABEL_137;
          }

          if (v110 < v120)
          {
            v27 = 40 * v120 - 40;
            v28 = v120;
            v29 = v110;
            do
            {
              if (v29 != --v28)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_141;
                }

                v31 = v30 + v4;
                v32 = v30 + v27;
                v33 = *v31;
                v34 = *(v31 + 16);
                v35 = *(v31 + 32);
                v36 = *(v32 + 32);
                v37 = *(v32 + 16);
                *v31 = *v32;
                *(v31 + 16) = v37;
                *(v31 + 32) = v36;
                *(v32 + 32) = v35;
                *v32 = v33;
                *(v32 + 16) = v34;
              }

              ++v29;
              v27 -= 40;
              v4 += 40;
            }

            while (v29 < v28);
          }
        }

        else
        {
          v26 = v120;
        }

        goto LABEL_24;
      }

      sub_1D5F57F4C(v127, sub_1D5E29ACC);
      sub_1D5F57F4C(v128, sub_1D5E29ACC);
    }

    v26 = v10 + 1;
LABEL_24:
    v38 = v8[1];
    if (v26 >= v38)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v26, v12))
    {
      goto LABEL_134;
    }

    if (v26 - v12 >= a4)
    {
LABEL_33:
      v40 = v26;
      if (v26 < v12)
      {
        goto LABEL_133;
      }

      goto LABEL_34;
    }

    if (__OFADD__(v12, a4))
    {
      goto LABEL_135;
    }

    if (v12 + a4 >= v38)
    {
      v39 = v8[1];
    }

    else
    {
      v39 = v12 + a4;
    }

    if (v39 < v12)
    {
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
      goto LABEL_138;
    }

    if (v26 == v39)
    {
      goto LABEL_33;
    }

    v112 = v7;
    v114 = v11;
    v122 = *v8;
    v87 = *v8 + 40 * v26;
    v111 = v12;
    v88 = v12 - v26;
    v117 = v39;
LABEL_86:
    v119 = v87;
    v121 = v26;
    v118 = v88;
LABEL_87:
    sub_1D5D28654(v87, v128, sub_1D5E29ACC);
    v89 = v87 - 40;
    sub_1D5D28654(v87 - 40, v127, sub_1D5E29ACC);
    sub_1D5D28654(v128, &v125, sub_1D5E29ACC);
    v6 = v125;
    v90 = sub_1D726207C();
    v92 = v91;

    sub_1D5D28654(v127, &v123, sub_1D5E29ACC);
    v93 = v123;
    v94 = sub_1D726207C();
    v96 = v95;

    if (v90 != v94 || v92 != v96)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_1(v124);
    __swift_destroy_boxed_opaque_existential_1(v126);
    v4 = sub_1D5E29ACC;
    sub_1D5F57F4C(v127, sub_1D5E29ACC);
    sub_1D5F57F4C(v128, sub_1D5E29ACC);
LABEL_85:
    v26 = v121 + 1;
    v87 = v119 + 40;
    v40 = v117;
    v88 = v118 - 1;
    if (v121 + 1 != v117)
    {
      goto LABEL_86;
    }

    v7 = v112;
    v11 = v114;
    v8 = a3;
    v12 = v111;
    if (v117 < v111)
    {
      goto LABEL_133;
    }

LABEL_34:
    v41 = v11;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v11 = v41;
    }

    else
    {
      result = sub_1D698BA94(0, *(v41 + 16) + 1, 1, v41);
      v11 = result;
    }

    v4 = *(v11 + 16);
    v42 = *(v11 + 24);
    v43 = v4 + 1;
    if (v4 >= v42 >> 1)
    {
      result = sub_1D698BA94((v42 > 1), v4 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 16) = v43;
    v44 = v11 + 16 * v4;
    *(v44 + 32) = v12;
    *(v44 + 40) = v40;
    v45 = *v115;
    if (!*v115)
    {
      goto LABEL_143;
    }

    v10 = v40;
    v6 = v7;
    if (v4)
    {
      while (2)
      {
        v7 = v43 - 1;
        if (v43 >= 4)
        {
          v50 = v11 + 32 + 16 * v43;
          v51 = *(v50 - 64);
          v52 = *(v50 - 56);
          v56 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          if (v56)
          {
            goto LABEL_120;
          }

          v55 = *(v50 - 48);
          v54 = *(v50 - 40);
          v56 = __OFSUB__(v54, v55);
          v48 = v54 - v55;
          v49 = v56;
          if (v56)
          {
            goto LABEL_121;
          }

          v57 = (v11 + 16 * v43);
          v59 = *v57;
          v58 = v57[1];
          v56 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v56)
          {
            goto LABEL_123;
          }

          v56 = __OFADD__(v48, v60);
          v61 = v48 + v60;
          if (v56)
          {
            goto LABEL_126;
          }

          if (v61 >= v53)
          {
            v79 = (v11 + 32 + 16 * v7);
            v81 = *v79;
            v80 = v79[1];
            v56 = __OFSUB__(v80, v81);
            v82 = v80 - v81;
            if (v56)
            {
              goto LABEL_130;
            }

            if (v48 < v82)
            {
              v7 = v43 - 2;
            }
          }

          else
          {
LABEL_53:
            if (v49)
            {
              goto LABEL_122;
            }

            v62 = (v11 + 16 * v43);
            v64 = *v62;
            v63 = v62[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_125;
            }

            v68 = (v11 + 32 + 16 * v7);
            v70 = *v68;
            v69 = v68[1];
            v56 = __OFSUB__(v69, v70);
            v71 = v69 - v70;
            if (v56)
            {
              goto LABEL_128;
            }

            if (__OFADD__(v66, v71))
            {
              goto LABEL_129;
            }

            if (v66 + v71 < v48)
            {
              goto LABEL_67;
            }

            if (v48 < v71)
            {
              v7 = v43 - 2;
            }
          }
        }

        else
        {
          if (v43 == 3)
          {
            v46 = *(v11 + 32);
            v47 = *(v11 + 40);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
            goto LABEL_53;
          }

          v72 = (v11 + 16 * v43);
          v74 = *v72;
          v73 = v72[1];
          v56 = __OFSUB__(v73, v74);
          v66 = v73 - v74;
          v67 = v56;
LABEL_67:
          if (v67)
          {
            goto LABEL_124;
          }

          v75 = v11 + 16 * v7;
          v77 = *(v75 + 32);
          v76 = *(v75 + 40);
          v56 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v56)
          {
            goto LABEL_127;
          }

          if (v78 < v66)
          {
            break;
          }
        }

        v4 = v7 - 1;
        if (v7 - 1 >= v43)
        {
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
          goto LABEL_136;
        }

        if (!*v8)
        {
          goto LABEL_140;
        }

        v83 = v11;
        v84 = *(v11 + 32 + 16 * v4);
        v85 = *(v11 + 32 + 16 * v7 + 8);
        sub_1D5F56D7C((*v8 + 40 * v84), (*v8 + 40 * *(v11 + 32 + 16 * v7)), *v8 + 40 * v85, v45);
        if (v6)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1D62FF50C(v83);
        }

        if (v4 >= *(v83 + 2))
        {
          goto LABEL_119;
        }

        v86 = &v83[16 * v4];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        v129 = v83;
        result = sub_1D62FF480(v7);
        v11 = v129;
        v43 = *(v129 + 16);
        if (v43 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v9 = v8[1];
    v7 = v6;
    if (v10 >= v9)
    {
      goto LABEL_101;
    }
  }

  v4 = sub_1D72646CC();

  __swift_destroy_boxed_opaque_existential_1(v124);
  __swift_destroy_boxed_opaque_existential_1(v126);
  sub_1D5F57F4C(v127, sub_1D5E29ACC);
  result = sub_1D5F57F4C(v128, sub_1D5E29ACC);
  if ((v4 & 1) == 0)
  {
    goto LABEL_85;
  }

  if (v122)
  {
    v98 = *(v87 + 32);
    v100 = *v87;
    v99 = *(v87 + 16);
    v101 = *(v87 - 24);
    *v87 = *v89;
    *(v87 + 16) = v101;
    *(v87 + 32) = *(v87 - 8);
    *v89 = v100;
    *(v87 - 24) = v99;
    v87 -= 40;
    *(v89 + 32) = v98;
    if (__CFADD__(v88++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
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

uint64_t sub_1D5F56D7C(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v7 = __src;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[40 * v11] <= a4)
    {
      memmove(a4, __src, 40 * v11);
      v7 = __src;
    }

    v58 = &v4[40 * v11];
    if (v10 < 40 || v7 <= __dst)
    {
      v27 = v7;
    }

    else
    {
      v51 = v4;
      do
      {
        v50 = v7;
        v29 = (v7 - 40);
        v30 = (v58 - 40);
        v5 -= 40;
        while (1)
        {
          sub_1D5D28654(v30, v57, sub_1D5E29ACC);
          v33 = v29;
          sub_1D5D28654(v29, v56, sub_1D5E29ACC);
          sub_1D5D28654(v57, &v54, sub_1D5E29ACC);
          v34 = v54;
          v35 = sub_1D726207C();
          v37 = v36;

          sub_1D5D28654(v56, &v52, sub_1D5E29ACC);
          v38 = v52;
          v39 = sub_1D726207C();
          v41 = v40;

          v42 = v35 == v39 && v37 == v41;
          v43 = v42 ? 0 : sub_1D72646CC();

          __swift_destroy_boxed_opaque_existential_1(v53);
          __swift_destroy_boxed_opaque_existential_1(v55);
          sub_1D5F57F4C(v56, sub_1D5E29ACC);
          sub_1D5F57F4C(v57, sub_1D5E29ACC);
          if (v43)
          {
            break;
          }

          v29 = v33;
          if (v5 + 40 != v30 + 40)
          {
            v44 = *v30;
            v45 = *(v30 + 16);
            *(v5 + 32) = *(v30 + 32);
            *v5 = v44;
            *(v5 + 16) = v45;
          }

          v31 = v30 - 40;
          v5 -= 40;
          v4 = v51;
          v32 = v30 > v51;
          v30 -= 40;
          if (!v32)
          {
            v58 = (v31 + 40);
            v27 = v50;
            goto LABEL_44;
          }
        }

        v27 = v33;
        if ((v5 + 40) != v50)
        {
          v46 = *v33;
          v47 = *(v33 + 16);
          *(v5 + 32) = *(v33 + 32);
          *v5 = v46;
          *(v5 + 16) = v47;
        }

        v58 = (v30 + 40);
        v4 = v51;
        if (v30 + 40 <= v51)
        {
          break;
        }

        v7 = v27;
      }

      while (v27 > __dst);
      v58 = (v30 + 40);
    }
  }

  else
  {
    if (a4 != __dst || &__dst[40 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
      v7 = __src;
    }

    v58 = &v4[40 * v9];
    if (v8 >= 40 && v7 < v5)
    {
      while (1)
      {
        v13 = v7;
        sub_1D5D28654(v7, v57, sub_1D5E29ACC);
        sub_1D5D28654(v4, v56, sub_1D5E29ACC);
        sub_1D5D28654(v57, &v54, sub_1D5E29ACC);
        v14 = v54;
        v15 = sub_1D726207C();
        v17 = v16;

        sub_1D5D28654(v56, &v52, sub_1D5E29ACC);
        v18 = v52;
        v19 = sub_1D726207C();
        v21 = v20;

        v22 = v15 == v19 && v17 == v21;
        if (v22)
        {
          break;
        }

        v23 = sub_1D72646CC();

        __swift_destroy_boxed_opaque_existential_1(v53);
        __swift_destroy_boxed_opaque_existential_1(v55);
        sub_1D5F57F4C(v56, sub_1D5E29ACC);
        sub_1D5F57F4C(v57, sub_1D5E29ACC);
        if ((v23 & 1) == 0)
        {
          goto LABEL_15;
        }

        v24 = v13;
        v7 = v13 + 40;
        if (__dst != v13)
        {
          goto LABEL_16;
        }

LABEL_17:
        __dst += 40;
        if (v4 >= v58 || v7 >= v5)
        {
          goto LABEL_19;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v53);
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_1D5F57F4C(v56, sub_1D5E29ACC);
      sub_1D5F57F4C(v57, sub_1D5E29ACC);
LABEL_15:
      v24 = v4;
      v22 = __dst == v4;
      v4 += 40;
      v7 = v13;
      if (v22)
      {
        goto LABEL_17;
      }

LABEL_16:
      v25 = *v24;
      v26 = *(v24 + 1);
      *(__dst + 4) = *(v24 + 4);
      *__dst = v25;
      *(__dst + 1) = v26;
      goto LABEL_17;
    }

LABEL_19:
    v27 = __dst;
  }

LABEL_44:
  v48 = (v58 - v4) / 40;
  if (v27 != v4 || v27 >= &v4[40 * v48])
  {
    memmove(v27, v4, 40 * v48);
  }

  return 1;
}

unint64_t sub_1D5F57278(uint64_t a1)
{
  result = sub_1D5B55668();
  *(a1 + 8) = result;
  return result;
}

void sub_1D5F572B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1D5B49474(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_1D5F57318(uint64_t a1, void *a2)
{
  v78 = type metadata accessor for FormatInspectionItem(0);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78 - 8, v3);
  v5 = (&v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v8 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
  v10 = &v72 - v9;
  v76 = a2;
  v11 = [a2 fontDescriptor];
  v12 = [v11 fontAttributes];

  type metadata accessor for AttributeName(0);
  sub_1D5B57228(&qword_1EDF1A790, type metadata accessor for AttributeName, &unk_1D7272A74);
  v13 = sub_1D7261D3C();

  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = sub_1D5E24080(*(v13 + 16), 0);
    v17 = sub_1D5E25E5C(&v87, (v16 + 4), v14, v13);
    v18 = v87;
    v74 = *(&v88 + 1);
    inited = v17;
    v73 = v89;

    sub_1D5B87E38(v18);
    if (inited == v14)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v16 = v15;
LABEL_5:
  *&v87 = v16;
  sub_1D5F560CC(&v87);

  v19 = v87;
  v20 = *(v87 + 16);
  if (v20)
  {
    v84 = v15;
    sub_1D6997AF0(0, v20, 0);
    v21 = v84;
    inited = v19;
    v22 = v19 + 32;
    do
    {
      sub_1D5D28654(v22, &v87, sub_1D5E29ACC);
      sub_1D5D28654(&v87, v85, sub_1D5E29ACC);
      v23 = *&v85[0];
      v24 = sub_1D726207C();
      v26 = v25;

      v27 = v78;
      v79 = v87;
      v80 = v88;
      v81 = v89;

      sub_1D5B7C390((&v79 + 8), &v82);
      v79 = v82;
      v80 = v83;
      v28 = *(v27 + 24);
      if (*(&v83 + 1))
      {
        sub_1D5EA7510(&v79, v5 + v28);
        v29 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v29 - 8) + 56))(v5 + v28, 0, 1, v29);
        *v5 = v24;
        v5[1] = v26;
        v5[2] = 0;
        v5[3] = 0;
        v30 = v5 + *(v78 + 28);
        *v30 = 0;
        *(v30 + 1) = 0;
        v30[16] = -1;
        sub_1D5EA756C(&v79);
      }

      else
      {
        v31 = type metadata accessor for FormatInspectionItem.Value(0);
        (*(*(v31 - 8) + 56))(v5 + v28, 1, 1, v31);
        *v5 = v24;
        v5[1] = v26;
        v5[2] = 0;
        v5[3] = 0;
        v32 = v5 + *(v27 + 28);
        *v32 = 0;
        *(v32 + 1) = 0;
        v32[16] = -1;
      }

      sub_1D5D5E2D4(v5, v10, type metadata accessor for FormatInspectionItem);
      __swift_destroy_boxed_opaque_existential_1(v85 + 1);
      v84 = v21;
      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D6997AF0((v33 > 1), v34 + 1, 1);
        v21 = v84;
      }

      *(v21 + 16) = v34 + 1;
      sub_1D5D5E2D4(v10, v21 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v34, type metadata accessor for FormatInspectionItem);
      v22 += 40;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5EF032C(0);
  inited = swift_initStackObject();
  v72 = xmmword_1D7273AE0;
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5D27C58(0, &qword_1EC880490, sub_1D5EA74B8, MEMORY[0x1E69E6F90]);
  sub_1D5EA74B8(0);
  v74 = v35;
  v36 = *(*(v35 - 8) + 72);
  v37 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
  v38 = swift_allocObject();
  v73 = v38;
  *(v38 + 16) = xmmword_1D7279790;
  v39 = (v38 + v37);
  v40 = v76;
  v41 = [v76 familyName];
  v42 = sub_1D726207C();
  v44 = v43;

  v45 = sub_1D711F844(0x4E20796C696D6146, 0xEB00000000656D61, v42, v44, v39);
  v46 = *(v77 + 56);
  v77 += 56;
  v46(v39, 0, 1, v78, v45);
  v47 = [v40 fontName];
  v48 = sub_1D726207C();
  v50 = v49;

  v51 = sub_1D711F844(0x6D614E20746E6F46, 0xE900000000000065, v48, v50, &v39[v36]);
  v52 = v78;
  v46(&v39[v36], 0, 1, v78, v51);
  [v40 pointSize];
  sub_1D711A80C(0x695320746E696F50, 0xEA0000000000657ALL, v53, 0, &v39[2 * v36]);
  (v46)(&v39[2 * v36], 0, 1, v52);
  [v40 lineHeight];
  sub_1D711A80C(0x69654820656E694CLL, 0xEB00000000746867, v54, 0, &v39[3 * v36]);
  (v46)(&v39[3 * v36], 0, 1, v52);
  [v40 ascender];
  sub_1D711A80C(0x7265646E65637341, 0xE800000000000000, v55, 0, &v39[4 * v36]);
  (v46)(&v39[4 * v36], 0, 1, v52);
  [v40 descender];
  sub_1D711A80C(0x65646E6563736544, 0xE900000000000072, v56, 0, &v39[5 * v36]);
  (v46)(&v39[5 * v36], 0, 1, v52);
  [v40 capHeight];
  sub_1D711A80C(0x6769654820706143, 0xEA00000000007468, v57, 0, &v39[6 * v36]);
  (v46)(&v39[6 * v36], 0, 1, v52);
  [v40 leading];
  sub_1D711A80C(0x676E696461654CLL, 0xE700000000000000, v58, 0, &v39[7 * v36]);
  (v46)(&v39[7 * v36], 0, 1, v52);
  [v40 xHeight];
  sub_1D711A80C(0x74686769654878, 0xE700000000000000, v59, 0, &v39[8 * v36]);
  v60 = v52;
  (v46)(&v39[8 * v36], 0, 1, v52);
  sub_1D5F572B0(0, &qword_1EC8803C0, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable, MEMORY[0x1E69E6F90]);
  v61 = swift_initStackObject();
  *(v61 + 16) = v72;
  v62 = sub_1D5F62998(v21);

  sub_1D6795150(0x7475626972747441, 0xEA00000000007365, 0, 0, v62, v85);

  *(v61 + 56) = &type metadata for FormatInspectionGroup;
  *(v61 + 64) = &off_1F518B2C0;
  v63 = swift_allocObject();
  *(v61 + 32) = v63;
  *(v63 + 48) = v86;
  v64 = v85[1];
  *(v63 + 16) = v85[0];
  *(v63 + 32) = v64;
  v65 = sub_1D5F62BFC(v61);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((v61 + 32));
  v66 = sub_1D7073500(v65);

  sub_1D711AD20(0x7475626972747441, 0xEA00000000007365, v66, 0, 0, &v39[9 * v36]);
  (v46)(&v39[9 * v36], 0, 1, v60);
  sub_1D6795150(0x74654D20746E6F46, 0xEC00000073636972, 0, 0, v73, &v87);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v67 = inited;
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(v67 + 64) = &off_1F518B2C0;
  v68 = swift_allocObject();
  *(v67 + 32) = v68;
  *(v68 + 48) = v89;
  v69 = v88;
  *(v68 + 16) = v87;
  *(v68 + 32) = v69;
  v70 = sub_1D7073500(v67);
  swift_setDeallocating();
  sub_1D5BFB704(v67 + 32, &unk_1EC880480, &qword_1EC880AD0, &protocol descriptor for FormatInspectionGroupable);
  return v70;
}

uint64_t sub_1D5F57E24(uint64_t a1, uint64_t a2)
{
  sub_1D5D27C58(0, &qword_1EC8814B0, MEMORY[0x1E69E75C8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D5F57EB8(uint64_t a1)
{
  if (!qword_1EC8814B8)
  {
    sub_1D5B581A0(255, &qword_1EDF43BE0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC8814B8);
    }
  }
}

uint64_t sub_1D5F57F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_14Tm_0()
{
  sub_1D5F57FEC(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

void sub_1D5F57FEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }
}

uint64_t sub_1D5F58038(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  return result;
}

double sub_1D5F58084(uint64_t result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = a6 >> 5;
  if (v6 > 3)
  {
    if (v6 != 4 && v6 != 5)
    {
      if (v6 == 6)
      {
        return sub_1D5F58198(result, a2, a3, a4, a5, a6 & 1);
      }

      return v7;
    }

    return sub_1D5F580D0(result, a2, a3, a4);
  }

  if (v6 == 1)
  {
    return sub_1D5F580D0(result, a2, a3, a4);
  }

  if (v6 == 3)
  {
    sub_1D5F5816C(result, a2, a3, SBYTE1(a3));
  }

  return v7;
}

double sub_1D5F580D0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((a2 >> 59) & 2 | (a2 >> 2) & 1) <= 2)
  {
  }

  return result;
}

void sub_1D5F5816C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

double sub_1D5F58198(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFE | (a2 >> 1) & 1;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      return sub_1D5F580D0(a2, a3, a4, a5);
    }
  }

  else
  {
    if (v7)
    {
      a2 &= ~2uLL;
    }

    return sub_1D5F580D0(a1, a2, a3, a4);
  }

  return result;
}

void sub_1D5F582F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  v7 = a7 >> 4;
  if (v7 > 8)
  {
    if (v7 == 9)
    {
      sub_1D5E1E164(a1, a2, a3, a4, a5, a6, a7 & 0xF);
    }

    else if (v7 == 12)
    {
      sub_1D5E1E174(a1, a2, a3, a4, a5, a6);
    }
  }

  else if (a7 >> 4)
  {
    if (v7 == 3)
    {
      sub_1D5E1E134(a1, a2, a3, BYTE1(a3));
    }
  }

  else
  {
    sub_1D5E1E074(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_1D5F5844C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if ((a4 >> 6) <= 1u)
  {
    return a5(a1, a2, a3);
  }

  if (a4 >> 6 == 2)
  {
    return a5(a2, a3, a4 & 0x3F);
  }

  return a1;
}

uint64_t sub_1D5F58484(uint64_t a1, unint64_t a2)
{
  if (((a2 >> 59) & 2 | (a2 >> 2) & 1) <= 2)
  {
  }

  return result;
}

uint64_t sub_1D5F58514(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = a3 & 0xCF;
  if (((a3 >> 4) & 3) == 0)
  {
    v3 = a3;
  }

  if (((a3 >> 4) & 3) <= 1)
  {
    v4 = v3;
  }

  else
  {
    v4 = a3 & 0xCF;
  }

  return sub_1D5E1DCD0(a1, a2, v4);
}

uint64_t sub_1D5F58594(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  v7 = (a4 >> 3) & 7;
  if (v7 <= 2)
  {
    if (v7 && v7 != 2)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v7 == 3)
  {
LABEL_8:

    return a5(result, a2, a3);
  }

  if (v7 == 4)
  {
    return sub_1D5F5844C(result, a2, a3, a4 & 0xC7, a6);
  }

  return result;
}

uint64_t objectdestroy_32Tm(void (*a1)(void, void, void, void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64));

  return swift_deallocObject();
}

void sub_1D5F586A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t sub_1D5F586D0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    v3 = vars8;
  }
}

uint64_t sub_1D5F5870C(uint64_t a1, uint64_t a2, char a3)
{

  if (a3)
  {
  }

  return result;
}

unint64_t sub_1D5F58758()
{
  result = qword_1EC8814D0[0];
  if (!qword_1EC8814D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC8814D0);
  }

  return result;
}

void sub_1D5F587AC(uint64_t a1, void *a2)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D5F587EC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B581A0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D5F5885C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

double sub_1D5F588A0(uint64_t a1)
{
  *(a1 + 240) = 0;
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1D5F588D0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_1D5E42B34();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1D7284BA0;
    v2 = objc_opt_self();
    *(v1 + 32) = [v2 systemBlueColor];
    *(v1 + 40) = [v2 systemRedColor];
    *(v1 + 48) = [v2 systemGreenColor];
    *(v1 + 56) = [v2 systemCyanColor];
    *(v1 + 64) = [v2 systemGrayColor];
    *(v1 + 72) = [v2 systemPinkColor];
    *(v1 + 80) = [v2 systemPurpleColor];
    *(v1 + 88) = [v2 systemMintColor];
    *(v1 + 96) = [v2 systemIndigoColor];
    *(v1 + 104) = [v2 systemOrangeColor];
    *(v1 + 112) = [v2 systemBrownColor];
    *(v1 + 120) = [v2 systemTealColor];
    *(v0 + 24) = v1;
  }

  return v1;
}

void *sub_1D5F58AA4(uint64_t a1)
{
  v3 = v1;
  swift_beginAccess();
  v5 = sub_1D5EC4E90(a1, *(v1 + 16));
  swift_endAccess();
  if (!v5)
  {
    v6 = sub_1D5F588D0();
    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

    goto LABEL_4;
  }

  while (1)
  {
    swift_beginAccess();
    v9 = *(v3 + 16);
    if ((v9 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (v9 < 0)
    {
      v10 = *(v3 + 16);
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = sub_1D7263BFC();
    if (!__OFADD__(v11, 1))
    {
      *(v3 + 16) = sub_1D5F58ED0(v10, v11 + 1);
      break;
    }

    __break(1u);
LABEL_17:
    v7 = sub_1D7263BFC();

    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_19;
    }

LABEL_4:
    if (HIDWORD(v7))
    {
LABEL_19:
      __break(1u);
LABEL_20:

      v5 = MEMORY[0x1DA6FB460](v7, v2);
    }

    else
    {
      result = arc4random_uniform(v7);
      v7 = result;
      v2 = *(v3 + 24);
      if ((v2 & 0xC000000000000001) != 0)
      {
        goto LABEL_20;
      }

      if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= result)
      {
        __break(1u);
        goto LABEL_22;
      }

      v5 = *(v2 + 8 * result + 32);
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v3 + 16);
  sub_1D6D789C0(v5, a1, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v13;
  swift_endAccess();
  result = sub_1D5EC4E90(a1, v13);
  if (result)
  {
    return result;
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_1D5F58C54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D5F58C94(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D5F5920C(0);
    v2 = sub_1D726411C();
    v19 = v2;
    sub_1D7263FEC();
    v3 = sub_1D726401C();
    if (v3)
    {
      v4 = v3;
      sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1D5B5A498(0, &qword_1EDF1A690, 0x1E69DCAB8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1D6D69250(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1D72636FC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1D726401C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D5F58ED0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1D5F59128(0);
    v2 = sub_1D726411C();
    v16 = v2;
    sub_1D7263FEC();
    if (sub_1D726401C())
    {
      type metadata accessor for GroupLayoutKey(0);
      do
      {
        swift_dynamicCast();
        sub_1D5B5A498(0, qword_1EDF1A6A0, 0x1E69DC888);
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D6D6A3FC(v9 + 1, 1);
        }

        v2 = v16;
        sub_1D7264A0C();
        sub_1D72621EC();
        sub_1D72621EC();
        result = sub_1D7264A5C();
        v4 = v16 + 64;
        v5 = -1 << *(v16 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v16 + 48) + 8 * v8) = v15;
        *(*(v16 + 56) + 8 * v8) = v14;
        ++*(v16 + 16);
      }

      while (sub_1D726401C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void sub_1D5F59128(uint64_t a1)
{
  if (!qword_1EC895720)
  {
    type metadata accessor for GroupLayoutKey(255);
    sub_1D5B5A498(255, qword_1EDF1A6A0, 0x1E69DC888);
    sub_1D5F591B4();
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC895720);
    }
  }
}

unint64_t sub_1D5F591B4()
{
  result = qword_1EDF11A70;
  if (!qword_1EDF11A70)
  {
    type metadata accessor for GroupLayoutKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11A70);
  }

  return result;
}

void sub_1D5F5920C(uint64_t a1)
{
  if (!qword_1EDF03E50)
  {
    sub_1D5B5A498(255, qword_1EDF1A6A0, 0x1E69DC888);
    sub_1D5B5A498(255, &qword_1EDF1A690, 0x1E69DCAB8);
    sub_1D5F592A8();
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF03E50);
    }
  }
}

unint64_t sub_1D5F592A8()
{
  result = qword_1EDF04370;
  if (!qword_1EDF04370)
  {
    sub_1D5B5A498(255, qword_1EDF1A6A0, 0x1E69DC888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF04370);
  }

  return result;
}

uint64_t sub_1D5F59310@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D7258F1C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E6984CE0])
  {
    *a1 = 40;
    return result;
  }

  if (result == *MEMORY[0x1E6984C08])
  {
    *a1 = 20;
    return result;
  }

  if (result == *MEMORY[0x1E6984C10])
  {
    *a1 = 16;
    return result;
  }

  if (result == *MEMORY[0x1E6984CC0])
  {
    goto LABEL_8;
  }

  if (result == *MEMORY[0x1E6984C98])
  {
    *a1 = 30;
  }

  else if (result == *MEMORY[0x1E6984CC8])
  {
    *a1 = 27;
  }

  else if (result == *MEMORY[0x1E6984CD8])
  {
    *a1 = 10;
  }

  else if (result == *MEMORY[0x1E6984CE8])
  {
    *a1 = 14;
  }

  else if (result == *MEMORY[0x1E6984CA0])
  {
    *a1 = 21;
  }

  else if (result == *MEMORY[0x1E6984C58])
  {
    *a1 = 9;
  }

  else if (result == *MEMORY[0x1E6984C28])
  {
    *a1 = 11;
  }

  else if (result == *MEMORY[0x1E6984CD0])
  {
    *a1 = 26;
  }

  else if (result == *MEMORY[0x1E6984C78])
  {
    *a1 = 18;
  }

  else if (result == *MEMORY[0x1E6984C80])
  {
    *a1 = 22;
  }

  else if (result == *MEMORY[0x1E6984D10])
  {
    *a1 = 37;
  }

  else if (result == *MEMORY[0x1E6984D18])
  {
    *a1 = 39;
  }

  else if (result == *MEMORY[0x1E6984C70])
  {
    *a1 = 33;
  }

  else if (result == *MEMORY[0x1E6984D20])
  {
    *a1 = 3;
  }

  else if (result == *MEMORY[0x1E6984C60])
  {
    *a1 = 34;
  }

  else if (result == *MEMORY[0x1E6984C18])
  {
    *a1 = 31;
  }

  else if (result == *MEMORY[0x1E6984C30])
  {
    *a1 = 28;
  }

  else if (result == *MEMORY[0x1E6984C38])
  {
    *a1 = 29;
  }

  else if (result == *MEMORY[0x1E6984C88])
  {
    *a1 = 13;
  }

  else if (result == *MEMORY[0x1E6984C68])
  {
    *a1 = 35;
  }

  else if (result == *MEMORY[0x1E6984CA8])
  {
    *a1 = 19;
  }

  else if (result == *MEMORY[0x1E6984CB0])
  {
    *a1 = 23;
  }

  else if (result == *MEMORY[0x1E6984C90])
  {
    *a1 = 17;
  }

  else if (result == *MEMORY[0x1E6984C40])
  {
    *a1 = 42;
  }

  else if (result == *MEMORY[0x1E6984C20])
  {
    *a1 = 43;
  }

  else if (result == *MEMORY[0x1E6984C00])
  {
    *a1 = 44;
  }

  else if (result == *MEMORY[0x1E6984C48])
  {
    *a1 = 5;
  }

  else if (result == *MEMORY[0x1E6984C50])
  {
    *a1 = 2;
  }

  else
  {
    if (result == *MEMORY[0x1E6984CB8])
    {
LABEL_8:
      *a1 = 25;
      return result;
    }

    if (result == *MEMORY[0x1E6984D28])
    {
      *a1 = 45;
    }

    else
    {
      *a1 = 0;
      return (*(v5 + 8))(v9, v4);
    }
  }

  return result;
}

void sub_1D5F59850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D5BEE810(a2, a3);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  sub_1D5BEE8A0(v8, v9);
  v4 = sub_1D7259EEC();
  v5 = sub_1D5BEE8E4(v4);

  sub_1D5BEEACC(v8, v9);
  if ((v5 & 1) == 0)
  {
    sub_1D5C17350();
    swift_allocError();
    v7 = v6;
    *v6 = sub_1D7259EEC();
    *(v7 + 40) = 1;
    swift_willThrow();
  }
}

uint64_t _s8NewsFeed22GroupLayoutFactoryTypePAAE11descriptionSSvg_0(uint64_t a1, uint64_t a2)
{
  sub_1D725AA4C();
  sub_1D5BF4D9C();
  v2 = sub_1D7263A6C();

  return v2;
}

double sub_1D5F59A90(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  sub_1D5BEE810(a3, a4);
  v11 = v5;
  LOBYTE(v12) = v6;
  v7 = *(type metadata accessor for GroupLayoutContext(0) + 20);
  v8 = [objc_opt_self() mainBundle];
  sub_1D6C07488(&v11, v9, a2, a2 + v7, v8);

  return result;
}

__int16 *FormatArrangementData.init(scoringContext:placeholders:debugCandidates:)@<X0>(__int16 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  *a4 = a2;
  *(a4 + 8) = v4;
  *(a4 + 16) = a3;
  return result;
}

uint64_t FormatArrangementData.init(curations:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = 4096;
  *(a2 + 16) = 0;
  return result;
}

uint64_t sub_1D5F59B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5F59BB8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D5F59C14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D5F59C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1D5F59CD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1F && *(a1 + 10))
  {
    return (*a1 + 31);
  }

  v3 = ((*(a1 + 8) >> 12) & 1 | (2 * (HIBYTE(*(a1 + 8)) & 0xC | (*(a1 + 8) >> 6) & 0xF))) ^ 0x1F;
  if (v3 >= 0x1E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5F59D28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1E)
  {
    *(result + 8) = 0;
    *result = a2 - 31;
    if (a3 >= 0x1F)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1F)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 & 0x18) << 7) - (a2 << 12)) & 0x1C00 | (((-a2 >> 1) & 3) << 6);
    }
  }

  return result;
}

id sub_1D5F59DC8(uint64_t a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadMainViewController_editor] = a1;
  *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadMainViewController_uploadNavigationController] = a2;
  *&v3[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadMainViewController_uploadDiffNavigationController] = a3;
  v13.receiver = v3;
  v13.super_class = ObjectType;

  v8 = a2;
  v9 = a3;
  v10 = objc_msgSendSuper2(&v13, sel_initWithStyle_, 1);
  [v10 setViewController:v8 forColumn:{0, v13.receiver, v13.super_class}];
  v11 = v9;
  [v10 setViewController:v11 forColumn:2];
  [v10 setViewController:v11 forColumn:3];

  return v10;
}

void sub_1D5F59F2C(void *a1, _BYTE *a2)
{
  if ((*a2 & 1) == 0)
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5[4] = sub_1D5F5A34C;
    v5[5] = v3;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1D5B6B06C;
    v5[3] = &block_descriptor_8;
    v4 = _Block_copy(v5);

    [a1 dismissViewControllerAnimated:1 completion:v4];
    _Block_release(v4);
  }
}

double sub_1D5F5A158(uint64_t a1)
{
  v6[0] = 0;
  v7 = 0xD000000000000010;
  v8 = 0x80000001D73C39F0;
  v9 = 0xD000000000000036;
  v10 = 0x80000001D73C3A10;
  v11 = 0u;
  v12 = 0u;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadMainViewController_editor);
    v3 = Strong;

    v4 = OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_alertManager;
    swift_beginAccess();
    if (*(v2 + v4))
    {

      sub_1D6AD3108(v6);
    }

    sub_1D5F181F4(v6);
  }

  else
  {
    sub_1D5F181F4(v6);
  }

  return result;
}