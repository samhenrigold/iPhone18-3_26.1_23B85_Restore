void sub_20BF84D60(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BF84E40(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BF84E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BF84EE4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

char *sub_20BF84F78(void *a1, char *a2, uint64_t a3)
{
  v4 = &a2[OBJC_IVAR____TtC9SeymourUI30EngagementBannerBackgroundView_imageDisplay];
  *v4 = a1;
  *(v4 + 1) = a3;
  v5 = a1;
  v6 = [v5 widthAnchor];
  v7 = [v6 constraintEqualToConstant_];

  *&a2[OBJC_IVAR____TtC9SeymourUI30EngagementBannerBackgroundView_imageDisplayWidthConstraint] = v7;
  v26.receiver = a2;
  v26.super_class = type metadata accessor for EngagementBannerBackgroundView();
  v8 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  v9 = [objc_opt_self() clearColor];
  [v8 setBackgroundColor_];

  v10 = [v8 layer];
  [v10 setCornerRadius_];

  [v8 setClipsToBounds_];
  [v8 addSubview_];
  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_20C14FE90;
  v13 = [v5 topAnchor];
  v14 = [v8 topAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v12 + 32) = v15;
  v16 = [v5 rightAnchor];
  v17 = [v8 rightAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v12 + 40) = v18;
  v19 = [v5 bottomAnchor];

  v20 = [v8 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v12 + 48) = v21;
  v22 = *&v8[OBJC_IVAR____TtC9SeymourUI30EngagementBannerBackgroundView_imageDisplayWidthConstraint];
  *(v12 + 56) = v22;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v23 = v22;
  v24 = sub_20C13CC54();

  [v11 activateConstraints_];

  return v8;
}

uint64_t sub_20BF852C0(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C137C24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C135E74();
  MEMORY[0x28223BE20](v11);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v57 - v16;
  v18 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v18 == 34)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F20, &qword_20C152E18);
    v32 = swift_projectBox();
    v33 = *(v31 + 48);
    v34 = v32 + *(v31 + 80);
    v35 = *v34;
    v36 = *(v34 + 8);
    v37 = *(v34 + 16);
    v38 = *(v34 + 24);
    v39 = *(v34 + 32);
    v58 = v8;
    (*(v8 + 16))(v10, v32 + v33, v7);
    v40 = *&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_subtitleLabel];
    v41 = v35;
    v42 = v36;
    v57[0] = v37;
    v57[2] = v38;

    v57[1] = v39;

    v43 = [v42 string];
    if (!v43)
    {
      sub_20C13C954();
      v43 = sub_20C13C914();
    }

    [v40 setText_];

    v44 = *&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_titleLabel];
    v45 = [v41 string];
    if (!v45)
    {
      sub_20C13C954();
      v45 = sub_20C13C914();
    }

    [v44 setText_];

    sub_20BF83768(v10);
    [*&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_playButton] setHidden_];
    [v1 accessibilityConfigureForPlayback_];

    return (v58[1])(v10, v7);
  }

  else if (v18 == 16)
  {
    v58 = v15;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766D58, &unk_20C186C80);
    v20 = swift_projectBox();
    v21 = *(v20 + *(v19 + 48));
    sub_20B5E8678(v20, v17);
    v22 = *&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_subtitleLabel];
    v23 = v21;

    v24 = sub_20C13C914();

    [v22 setText_];

    v25 = *&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_titleLabel];
    v26 = sub_20C13C914();

    [v25 setText_];

    [*&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_bannerMessageImageView] setImage_];
    v27 = *&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_bannerMessageBackgroundView];
    [v27 setNeedsLayout];
    [*&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkBackgroundView] setHidden_];
    [v27 setHidden_];
    sub_20B5E8678(v17, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = EnumCaseMultiPayload == 1;
    [*&v1[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_playButton] setHidden_];
    [v1 accessibilityConfigureForPlayback_];

    sub_20B5E86DC(v17);
    return sub_20B5E86DC(v13);
  }

  else
  {
    sub_20C13B424();

    v46 = v1;
    v47 = sub_20C13BB74();
    v48 = sub_20C13D1D4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = a1;
      v60 = v58;
      *v49 = 138543618;
      *(v49 + 4) = v46;
      *v50 = v46;
      *(v49 + 12) = 2082;
      v51 = sub_20B5F66D0();
      v52 = v46;
      v53 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v51);
      v55 = sub_20B51E694(v53, v54, &v60);

      *(v49 + 14) = v55;
      _os_log_impl(&dword_20B517000, v47, v48, "Attempted to configure %{public}@ with item: %{public}s", v49, 0x16u);
      sub_20B520158(v50, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v50, -1, -1);
      v56 = v58;
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x20F2F6A40](v56, -1, -1);
      MEMORY[0x20F2F6A40](v49, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_20BF85964@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_20C1380F4();
  if (!v7)
  {
    v8 = [objc_opt_self() mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v118.origin.x = v10;
    v118.origin.y = v12;
    v118.size.width = v14;
    v118.size.height = v16;
    Width = CGRectGetWidth(v118);
    v119.origin.x = v10;
    v119.origin.y = v12;
    v119.size.width = v14;
    v119.size.height = v16;
    Height = CGRectGetHeight(v119);
    if (Height >= Width)
    {
      Height = Width;
    }

    if (Height < 375.0)
    {
      v19 = *MEMORY[0x277D769D0];
      v20 = *MEMORY[0x277D76840];
      *v116 = MEMORY[0x277D84FA0];
      v21 = v20;
      v22 = 1;
      sub_20B6FF83C(&v117, 1);
      v23 = *v116;
      result = v19;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 1;
LABEL_87:
      v116[0] = v22;
      v106 = v28 & 1;
      LOBYTE(v117) = v106;
      *a3 = v25;
      *(a3 + 8) = v21;
      *(a3 + 16) = result;
      *(a3 + 24) = v26;
      *(a3 + 28) = v22;
      *(a3 + 29) = 9;
      *(a3 + 32) = v27;
      *(a3 + 40) = v106;
      *(a3 + 48) = v23;
      return result;
    }

    v114 = a1;
    v82 = *MEMORY[0x277D76918];
    v83 = *MEMORY[0x277D74368];
    v112 = *MEMORY[0x277D76840];
    v84 = MEMORY[0x277D84FA0];
    v117 = MEMORY[0x277D84FA0];
    sub_20C13E164();
    v113 = v83;
    v85 = v83;
    sub_20C13CA64();
    v86 = sub_20C13E1B4();
    v87 = -1 << *(v84 + 32);
    v88 = v86 & ~v87;
    if ((*(v84 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v88))
    {
      v89 = ~v87;
      while (1)
      {
        v90 = *(*(v84 + 48) + v88);
        if (v90 <= 2 && v90 != 1 && v90 != 2)
        {
          break;
        }

        v91 = sub_20C13DFF4();

        if (v91)
        {
          goto LABEL_66;
        }

        v88 = (v88 + 1) & v89;
        if (((*(v84 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v88) & 1) == 0)
        {
          goto LABEL_65;
        }
      }
    }

    else
    {
LABEL_65:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v116 = v84;
      sub_20B706478(0, v88, isUniquelyReferenced_nonNull_native);
      v117 = v84;
    }

LABEL_66:
    v115 = a2;
    v110 = v112;
    sub_20B6FF83C(v116, 1);
    v23 = v117;
    sub_20C13E164();
    v108 = v82;
    sub_20C13CA64();
    v93 = sub_20C13E1B4();
    v94 = -1 << *(v23 + 32);
    v95 = v93 & ~v94;
    if ((*(v23 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95))
    {
      v96 = ~v94;
      while (1)
      {
        v97 = *(*(v23 + 48) + v95);
        if (v97 > 1 && v97 != 3 && v97 != 4)
        {
          break;
        }

        v98 = sub_20C13DFF4();

        if (v98)
        {
          goto LABEL_74;
        }

        v95 = (v95 + 1) & v96;
        if (((*(v23 + 56 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      v28 = a2;
      if ((a2 & 1) == 0)
      {
LABEL_79:
        sub_20C13E164();
        sub_20C13CA64();
        v100 = sub_20C13E1B4();
        v101 = -1 << *(v23 + 32);
        v56 = v100 & ~v101;
        if ((*(v23 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
        {
          v102 = ~v101;
          while (1)
          {
            v103 = *(*(v23 + 48) + v56);
            if (v103 >= 4)
            {
              break;
            }

            v104 = sub_20C13DFF4();

            if (v104)
            {
              goto LABEL_85;
            }

            v56 = (v56 + 1) & v102;
            if (((*(v23 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
            {
              goto LABEL_84;
            }
          }

LABEL_88:

          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

    else
    {
LABEL_73:
      v99 = swift_isUniquelyReferenced_nonNull_native();
      *v116 = v23;
      sub_20B706478(2u, v95, v99);
      v23 = *v116;
LABEL_74:
      v28 = a2;
      if ((a2 & 1) == 0)
      {
        goto LABEL_79;
      }
    }

    goto LABEL_75;
  }

  v114 = a1;
  if (v7 == 1)
  {
    v29 = [v3 window];
    v30 = MEMORY[0x277D74368];
    v31 = MEMORY[0x277D76840];
    v32 = MEMORY[0x277D84FA0];
    v115 = a2;
    if (!v29 || (v33 = v29, [v29 bounds], v35 = v34, v37 = v36, v33, v37 >= v35))
    {
      v60 = *MEMORY[0x277D76A28];
      v61 = *v30;
      v111 = *v31;
      v117 = v32;
      sub_20C13E164();
      v113 = v61;
      v62 = v61;
      sub_20C13CA64();
      v63 = sub_20C13E1B4();
      v64 = -1 << *(v32 + 32);
      v65 = v63 & ~v64;
      if ((*(v32 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v65))
      {
        v66 = ~v64;
        while (1)
        {
          v67 = *(*(v32 + 48) + v65);
          if (v67 <= 2 && v67 != 1 && v67 != 2)
          {
            break;
          }

          v68 = sub_20C13DFF4();

          if (v68)
          {
            goto LABEL_42;
          }

          v65 = (v65 + 1) & v66;
          if (((*(v32 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v65) & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

      else
      {
LABEL_41:
        v69 = swift_isUniquelyReferenced_nonNull_native();
        *v116 = v32;
        sub_20B706478(0, v65, v69);
        v117 = v32;
      }

LABEL_42:
      v110 = v111;
      sub_20B6FF83C(v116, 1);
      v23 = v117;
      sub_20C13E164();
      v108 = v60;
      sub_20C13CA64();
      v70 = sub_20C13E1B4();
      v71 = -1 << *(v23 + 32);
      v72 = v70 & ~v71;
      if ((*(v23 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
      {
        v73 = ~v71;
        while (1)
        {
          v74 = *(*(v23 + 48) + v72);
          if (v74 > 1 && v74 != 3 && v74 != 4)
          {
            break;
          }

          v75 = sub_20C13DFF4();

          if (v75)
          {
            goto LABEL_50;
          }

          v72 = (v72 + 1) & v73;
          if (((*(v23 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
          {
            goto LABEL_49;
          }
        }

        v28 = a2;
        if (a2)
        {
          goto LABEL_75;
        }
      }

      else
      {
LABEL_49:
        v76 = swift_isUniquelyReferenced_nonNull_native();
        *v116 = v23;
        sub_20B706478(2u, v72, v76);
        v23 = *v116;
LABEL_50:
        v28 = a2;
        if (a2)
        {
          goto LABEL_75;
        }
      }

      sub_20C13E164();
      sub_20C13CA64();
      v77 = sub_20C13E1B4();
      v78 = -1 << *(v23 + 32);
      v56 = v77 & ~v78;
      if ((*(v23 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
      {
        v79 = ~v78;
        while (1)
        {
          v80 = *(*(v23 + 48) + v56);
          if (v80 >= 4)
          {
            goto LABEL_88;
          }

          v81 = sub_20C13DFF4();

          if (v81)
          {
            goto LABEL_85;
          }

          v56 = (v56 + 1) & v79;
          if (((*(v23 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_84;
          }
        }
      }

      goto LABEL_84;
    }

    v38 = *v30;
    v107 = *MEMORY[0x277D76A08];
    v109 = *v31;
    v117 = v32;
    sub_20C13E164();
    v113 = v38;
    v39 = v38;
    sub_20C13CA64();
    v40 = sub_20C13E1B4();
    v41 = -1 << *(v32 + 32);
    v42 = v40 & ~v41;
    if ((*(v32 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v42))
    {
      v43 = ~v41;
      while (1)
      {
        v44 = *(*(v32 + 48) + v42);
        if (v44 <= 2 && v44 != 1 && v44 != 2)
        {
          break;
        }

        v45 = sub_20C13DFF4();

        if (v45)
        {
          goto LABEL_18;
        }

        v42 = (v42 + 1) & v43;
        if (((*(v32 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v42) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v46 = swift_isUniquelyReferenced_nonNull_native();
      *v116 = v32;
      sub_20B706478(0, v42, v46);
      v117 = v32;
    }

LABEL_18:
    v110 = v109;
    sub_20B6FF83C(v116, 1);
    v23 = v117;
    sub_20C13E164();
    v108 = v107;
    sub_20C13CA64();
    v47 = sub_20C13E1B4();
    v48 = -1 << *(v23 + 32);
    v49 = v47 & ~v48;
    if ((*(v23 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
    {
      v50 = ~v48;
      while (1)
      {
        v51 = *(*(v23 + 48) + v49);
        if (v51 > 1 && v51 != 3 && v51 != 4)
        {
          break;
        }

        v52 = sub_20C13DFF4();

        if (v52)
        {
          goto LABEL_26;
        }

        v49 = (v49 + 1) & v50;
        if (((*(v23 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *v116 = v23;
      sub_20B706478(2u, v49, v53);
      v23 = *v116;
    }

LABEL_26:
    v28 = a2;
    if ((a2 & 1) == 0)
    {
      sub_20C13E164();
      sub_20C13CA64();
      v54 = sub_20C13E1B4();
      v55 = -1 << *(v23 + 32);
      v56 = v54 & ~v55;
      if ((*(v23 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
      {
        v57 = ~v55;
        do
        {
          v58 = *(*(v23 + 48) + v56);
          if (v58 >= 4)
          {
            goto LABEL_88;
          }

          v59 = sub_20C13DFF4();

          if (v59)
          {
            goto LABEL_85;
          }

          v56 = (v56 + 1) & v57;
        }

        while (((*(v23 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) != 0);
      }

LABEL_84:
      v105 = swift_isUniquelyReferenced_nonNull_native();
      *v116 = v23;
      sub_20B706478(4u, v56, v105);
      v23 = *v116;
LABEL_85:
      v27 = v114;
      v28 = v115;
      goto LABEL_86;
    }

LABEL_75:
    v27 = v114;
LABEL_86:
    v21 = v110;
    v25 = v113;
    result = v108;
    v22 = 0;
    v26 = 0x8000;
    goto LABEL_87;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

void sub_20BF86920()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA52234(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BF869F8(void *a1)
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

  sub_20BA637D0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BF86AB4(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F302C(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20BF86B68()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = v0 + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_layout;
  *v3 = xmmword_20C186B90;
  *(v3 + 16) = 0x4014000000000000;
  v4 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_labelGuide;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v5 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_bannerMessageImageView;
  type metadata accessor for NoIntrinsicImageView();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor_];

  [v6 setClipsToBounds_];
  [v6 setContentMode_];

  *(v0 + v5) = v6;
  v9 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_playButton;
  type metadata accessor for PlayButton();
  v10 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setUserInteractionEnabled_];

  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_subtitleLabel;
  v12 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = [v7 whiteColor];
  [v12 setTextColor_];

  [v12 setNumberOfLines_];
  [v12 setLineBreakMode_];
  *(v0 + v11) = v12;
  v14 = OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v16 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v15 setTextColor_];

  [v15 setNumberOfLines_];
  *(v0 + v14) = v15;
  v17 = (v0 + OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_oldSize);
  *v17 = 0;
  v17[1] = 0;
  sub_20C13DE24();
  __break(1u);
}

unint64_t sub_20BF86ECC()
{
  result = qword_27C771040;
  if (!qword_27C771040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C771040);
  }

  return result;
}

unint64_t sub_20BF86FA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_20BF87100(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_20BF86FD4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v3 = 0x800000020C191880;
    v4 = 0xD000000000000016;
    if (v2 == 6)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v3 = 0x800000020C1918A0;
    }

    v6 = 0xD000000000000014;
    v5 = 0x800000020C191840;
    if (v2 != 4)
    {
      v6 = 0xD000000000000015;
      v5 = 0x800000020C191860;
    }

    v7 = *v1 <= 5u;
  }

  else
  {
    v3 = 0xEB00000000317265;
    v4 = 0x6E6E614274736574;
    if (v2 != 2)
    {
      v4 = 0xD000000000000014;
      v3 = 0x800000020C191820;
    }

    v5 = 0x800000020C1917E0;
    v6 = 0xD000000000000013;
    if (*v1)
    {
      v5 = 0x800000020C191800;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    v7 = *v1 <= 1u;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (v7)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_20BF87100(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13DEA4();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

char *sub_20BF8715C(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signInButton;
  v5 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
  v6 = TVButtonTextContentView.init(title:)(0, 0);
  v7 = objc_allocWithZone(type metadata accessor for TVButton());
  v8 = sub_20BB87F6C(v6, 0, 0, v7, 0.0, 0.0, 0.0, 0.0);
  v9 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v8[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setShadowVerticalOffset_];
  [*&v8[v9] setShadowOpacity:0 forUserInterfaceStyle:0.2];
  [*&v8[v9] setShadowOpacity:2 forUserInterfaceStyle:0.2];
  [*&v8[v9] setShadowOpacity:1 forUserInterfaceStyle:0.2];
  *&v8[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = 0x4046800000000000;
  sub_20B9DE3E4();
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v4] = v8;
  v10 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView;
  type metadata accessor for TVSignOutView();
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView;
  v13 = [objc_allocWithZone(type metadata accessor for TVUpNextQueueButtonView()) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v12] = v13;
  v14 = &v2[OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_layout];
  *v14 = xmmword_20C186D70;
  *(v14 + 1) = xmmword_20C186D80;
  *(v14 + 4) = 0x4034000000000000;
  v15 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_focusGuide;
  *&v2[v15] = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  *&v2[OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_presenter] = a1;
  v87.receiver = v2;
  v87.super_class = type metadata accessor for TVRootMenuView();

  v16 = objc_msgSendSuper2(&v87, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + 296) = &off_2822FB088;
  swift_unknownObjectWeakAssign();
  v17 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_focusGuide;
  v18 = *&v16[OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_focusGuide];
  v19 = v16;
  [v18 setEnabled_];
  v20 = *&v16[v17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C150040;
  v86 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView;
  v22 = *&v19[OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView];
  *(v21 + 32) = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signInButton;
  v24 = *&v19[OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signInButton];
  *(v21 + 40) = v24;
  v25 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView;
  v26 = *&v19[OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView];
  v84 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView;
  v85 = v23;
  *(v21 + 48) = v26;
  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0, &unk_20C14F970);
  v31 = sub_20C13CC54();

  [v27 setPreferredFocusEnvironments_];

  v32 = v19;
  v33 = *&v16[v17];
  v34 = v32;
  [v34 addLayoutGuide_];
  [v34 addSubview_];
  [v34 addSubview_];
  [v34 addSubview_];
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C14FE90;
  v36 = v35;
  v37 = [*&v16[v17] leadingAnchor];
  v38 = [v34 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor_];

  v36[4] = v39;
  v40 = [*&v16[v17] trailingAnchor];
  v41 = [v34 trailingAnchor];

  v42 = [v40 &selRef:v41 alertControllerReleasedDictationButton:? + 5];
  v36[5] = v42;
  v43 = [*&v16[v17] bottomAnchor];
  v44 = [v34 &selRef_secondaryLabel + 5];

  v45 = [v43 &selRef:v44 alertControllerReleasedDictationButton:? + 5];
  v36[6] = v45;
  v46 = [*&v16[v17] topAnchor];
  v47 = [v34 &selRef_setLineBreakMode_];

  v48 = [v46 &selRef:v47 alertControllerReleasedDictationButton:? + 5];
  v36[7] = v48;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F580;
  v50 = inited;
  v83 = inited;
  v51 = [v34 heightAnchor];

  v52 = [v51 constraintEqualToConstant_];
  *(v50 + 32) = v52;
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_20C150040;
  v54 = [*&v19[v84] &selRef_setLineBreakMode_];
  v55 = [v34 &selRef_setLineBreakMode_];

  v56 = [v54 constraintEqualToAnchor:v55 constant:38.0];
  *(v53 + 32) = v56;
  v57 = [*&v19[v84] leadingAnchor];
  v58 = [v34 leadingAnchor];

  v59 = [v57 constraintEqualToAnchor:v58 constant:80.0];
  *(v53 + 40) = v59;
  v60 = [*&v19[v84] bottomAnchor];
  v61 = [v34 bottomAnchor];

  v62 = [v60 constraintEqualToAnchor_];
  *(v53 + 48) = v62;
  v63 = swift_initStackObject();
  *(v63 + 16) = xmmword_20C151490;
  v64 = [*&v19[v86] topAnchor];
  v65 = [v34 topAnchor];

  v66 = [v64 constraintEqualToAnchor:v65 constant:50.0];
  *(v63 + 32) = v66;
  v67 = [*&v19[v86] trailingAnchor];
  v68 = [v34 trailingAnchor];

  v69 = [v67 constraintEqualToAnchor:v68 constant:-80.0];
  *(v63 + 40) = v69;
  v70 = swift_initStackObject();
  *(v70 + 16) = xmmword_20C150040;
  v71 = [*&v19[v85] topAnchor];
  v72 = [v34 topAnchor];

  v73 = [v71 &selRef_passwordEntryCancelledHandler + 6];
  *(v70 + 32) = v73;
  v74 = [*&v19[v85] leadingAnchor];
  v75 = [v34 leadingAnchor];

  v76 = [v74 &selRef_passwordEntryCancelledHandler + 6];
  *(v70 + 40) = v76;
  v77 = [*&v19[v85] bottomAnchor];
  v78 = [v34 bottomAnchor];

  v79 = [v77 constraintEqualToAnchor_];
  *(v70 + 48) = v79;
  v80 = objc_opt_self();
  sub_20B8D9310(v83);
  sub_20B8D9310(v53);
  sub_20B8D9310(v63);
  sub_20B8D9310(v70);
  sub_20B5E29D0();
  v81 = sub_20C13CC54();

  [v80 activateConstraints_];

  [*&v19[v85] setHidden_];
  [*&v19[v84] setHidden_];

  return v34;
}

id sub_20BF87BF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TVRootMenuView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_20BF87CDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *&v3[OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView];
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v9 = *(v8 + OBJC_IVAR____TtC9SeymourUI13TVSignOutView_titleLabel);
  v10 = sub_20C13C914();
  [v9 setText_];

  sub_20C0D6438();
  [v3 setNeedsUpdateConstraints];
  return [v3 setNeedsLayout];
}

void sub_20BF87E5C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signInButton;
  v3 = objc_allocWithZone(type metadata accessor for TVButtonTextContentView());
  v4 = TVButtonTextContentView.init(title:)(0, 0);
  v5 = objc_allocWithZone(type metadata accessor for TVButton());
  v6 = sub_20BB87F6C(v4, 0, 0, v5, 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v6[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setShadowVerticalOffset_];
  [*&v6[v7] setShadowOpacity:0 forUserInterfaceStyle:0.2];
  [*&v6[v7] setShadowOpacity:2 forUserInterfaceStyle:0.2];
  [*&v6[v7] setShadowOpacity:1 forUserInterfaceStyle:0.2];
  *&v6[OBJC_IVAR____TtC9SeymourUI8TVButton_cornerRadius] = 0x4046800000000000;
  sub_20B9DE3E4();
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v2) = v6;
  v8 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_signOutView;
  type metadata accessor for TVSignOutView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_stackQueueButtonView;
  v11 = [objc_allocWithZone(type metadata accessor for TVUpNextQueueButtonView()) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v10) = v11;
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_layout;
  *v12 = xmmword_20C186D70;
  *(v12 + 16) = xmmword_20C186D80;
  *(v12 + 32) = 0x4034000000000000;
  v13 = OBJC_IVAR____TtC9SeymourUI14TVRootMenuView_focusGuide;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x277D75500]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BF88070(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

void sub_20BF880C0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v45 = a8;
  v44 = a7;
  v50 = a1;
  v51 = a6;
  v49 = a4;
  v42 = a3;
  v10 = sub_20C133954();
  v43 = v10;
  v48 = *(v10 - 8);
  v11 = v48;
  MEMORY[0x28223BE20](v10);
  v47 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for WorkoutPlanSwappableItem(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  v46 = &v42 - v20;
  sub_20BF982E8(a2, &v42 - v20, type metadata accessor for WorkoutPlanSwappableItem);
  v22 = *(v11 + 16);
  v22(v15, v42, v10);
  v23 = type metadata accessor for WorkoutPlanAlternativesViewController();
  v24 = objc_allocWithZone(v23);
  v54[3] = &type metadata for CatalogPageNavigator;
  v54[4] = &off_2822FB218;
  v25 = swift_allocObject();
  v54[0] = v25;
  v26 = v51;
  *(v25 + 16) = a5;
  *(v25 + 24) = v26;
  *(v25 + 32) = v44;
  *(v25 + 40) = v45;
  *&v24[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_resignActiveObserver] = 0;
  v24[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_visibility] = 1;
  *&v24[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dependencies] = a5;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&v24[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_eventHub] = v53;
  sub_20B51CC64(v54, &v24[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_pageNavigator]);
  sub_20C133AA4();
  v24[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_platform] = v53;
  sub_20BF982E8(v21, v18, type metadata accessor for WorkoutPlanSwappableItem);
  v27 = v47;
  v28 = v43;
  v22(v47, v15, v43);
  type metadata accessor for WorkoutPlanAlternativesPageDataProvider(0);
  swift_allocObject();

  v30 = sub_20B63252C(v29, 0, 0, v18, v27);

  *&v24[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dataProvider] = v30;
  v52.receiver = v24;
  v52.super_class = v23;
  v31 = objc_msgSendSuper2(&v52, sel_initWithNibName_bundle_, 0, 0);
  *(*&v31[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanAlternativesViewController_dataProvider] + 24) = &off_2822A9B68;
  swift_unknownObjectWeakAssign();
  v32 = v31;

  sub_20B6304D4();

  v33 = sub_20C13C914();

  [v32 setTitle_];
  swift_unknownObjectRelease();

  (*(v48 + 8))(v15, v28);
  sub_20BF98350(v46, type metadata accessor for WorkoutPlanSwappableItem);
  __swift_destroy_boxed_opaque_existential_1(v54);
  v34 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v35 = v34;
  if (v49)
  {
    v36 = v49;
    [v35 setModalPresentationStyle_];
    v37 = [v35 popoverPresentationController];
    if (!v37)
    {
LABEL_7:

      goto LABEL_8;
    }

    v38 = v37;
    [v37 setSourceView_];
LABEL_6:

    goto LABEL_7;
  }

  [v34 setModalPresentationStyle_];
  v39 = [v35 sheetPresentationController];
  if (v39)
  {
    v38 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_20C14F580;
    sub_20B51C88C(0, &qword_27C771098, 0x277D75A28);
    *(swift_allocObject() + 16) = 0x3FE3D70A3D70A3D7;
    v41 = sub_20C13D4C4();

    *(v40 + 32) = v41;
    v36 = sub_20C13CC54();

    [v38 setDetents_];
    goto LABEL_6;
  }

LABEL_8:
  [v50 presentViewController:v35 animated:1 completion:{0, v42}];
}

void sub_20BF886B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v11 = a3;
  v14 = sub_20C13BB84();
  v15 = MEMORY[0x28223BE20](v14);
  v18 = sub_20BF8896C(a2, v11, a4, a5, a6, v7, v15);
  if (sub_20BF95494(a2))
  {
    v16 = [a1 navigationController];
    if (v16)
    {
      v17 = v16;
      [v16 pushViewController:v18 animated:1];
    }
  }

  else
  {
    [a1 presentViewController:v18 animated:1 completion:0];
  }
}

char *sub_20BF8896C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double a7)
{
  LODWORD(v135) = a6;
  v133 = a4;
  v134 = a5;
  v125 = a2;
  v9 = type metadata accessor for CatalogTipPlayerConfiguration(0);
  MEMORY[0x28223BE20](v9);
  v126 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CatalogTipPlaybackContent(0);
  MEMORY[0x28223BE20](v11);
  v128 = (&v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v13 - 8);
  v130 = &v121 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v121 - v16;
  v18 = sub_20C132C14();
  v131 = *(v18 - 8);
  v132 = v18;
  MEMORY[0x28223BE20](v18);
  v127 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v129 = &v121 - v21;
  v136 = sub_20C134014();
  v22 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v24 = &v121 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20C133E94();
  if (v27)
  {
    if (v25 > 4u)
    {
      if (v25 > 7u)
      {
        v28 = v22;
        v42 = *(v22 + 16);
        v30 = v136;
        v42(v24, a1, v136);

        v43 = sub_20C133E44();
        v45 = v44;
        type metadata accessor for CatalogWorkoutPageDataProvider(0);
        swift_allocObject();

        v46 = sub_20C114A78(v43, v45, a3);

        v47 = objc_allocWithZone(type metadata accessor for CatalogWorkoutDetailViewController());

        v48 = v133;
        swift_unknownObjectRetain();
        v37 = sub_20BF94870(a3, v46, a3, v48, v134, v135, v47);
        goto LABEL_18;
      }

      if (v25 == 6)
      {
        sub_20C133E64();
        v39 = v131;
        v38 = v132;
        if ((*(v131 + 48))(v17, 1, v132) == 1)
        {
          sub_20B520158(v17, &unk_27C7617F0, &unk_20C151A10);
          sub_20B8B3454();
          swift_allocError();
          *v40 = 0;
          swift_willThrow();
        }

        else
        {
          (*(v39 + 32))(v129, v17, v38);
          sub_20C133EF4();
          v71 = sub_20C133FB4();
          v134 = v72;
          v135 = v71;
          v133 = sub_20C133F14();
          v124 = v73;
          v123 = sub_20C133ED4();
          v122 = v74;
          v121 = *(v39 + 16);
          v75 = v127;
          v121(v127, v129, v132);
          v76 = sub_20C133E44();
          v78 = v77;
          v79 = v128;
          v121(v128 + v11[8], v75, v132);
          sub_20B52F9E8(v130, v79 + v11[5], &unk_27C766680, &unk_20C14F920);
          *v79 = v76;
          v79[1] = v78;
          v80 = (v79 + v11[6]);
          v81 = v134;
          *v80 = v135;
          v80[1] = v81;
          v82 = (v79 + v11[7]);
          v83 = v124;
          *v82 = v133;
          v82[1] = v83;
          v84 = (v79 + v11[9]);
          v85 = v122;
          *v84 = v123;
          v84[1] = v85;
          v86 = v79;
          v87 = v126;
          sub_20BF982E8(v86, v126, type metadata accessor for CatalogTipPlaybackContent);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for CatalogTipPlayerPresenter(0);
          v88 = swift_allocObject();
          *(v88 + 88) = 0;
          swift_unknownObjectWeakInit();
          *(v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_activationState) = 0;
          *(v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_currentAudibleMediaSelectionOption) = 0;
          (*(v22 + 56))(v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_trainerTipLockup, 1, 1, v136);
          *(v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_hasPublishedMediaEvent) = 0;
          *(v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_isPresentingSummary) = 0;
          v89 = (v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_periodicTimeObserver);
          *v89 = 0u;
          v89[1] = 0u;
          sub_20C138F44();
          sub_20C133AA4();
          *(v88 + 136) = aBlock;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B70, &unk_20C155A70);
          sub_20C133AA4();
          sub_20B51C710(&aBlock, v88 + 96);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
          sub_20C133AA4();
          sub_20B51C710(&aBlock, v88 + 144);
          sub_20BF982E8(v87, v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_configuration, type metadata accessor for CatalogTipPlayerConfiguration);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
          sub_20C133AA4();
          *(v88 + 16) = aBlock;
          LOBYTE(v75) = v125;
          *(v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_metricTopicRoutingBehavior) = v125;
          *(v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_options) = 4;
          v90 = (v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_pageContext);
          *v90 = 0;
          v90[1] = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768870, &unk_20C162E40);
          sub_20C133AA4();
          sub_20B51C710(&aBlock, v88 + 32);
          v91 = (v88 + OBJC_IVAR____TtC9SeymourUI25CatalogTipPlayerPresenter_summaryNavigationHandlers);
          type metadata accessor for CatalogTipSummaryPresenter(0);
          *v91 = 0u;
          v91[1] = 0u;
          swift_allocObject();

          v93 = sub_20BE4B50C(v92, v75, 0, 0);

          *(v88 + 72) = v93;
          v94 = swift_allocObject();
          swift_weakInit();
          v95 = *(v93 + 32);
          v96 = *(v93 + 40);
          *(v93 + 32) = sub_20BAA50B0;
          *(v93 + 40) = v94;

          sub_20B583ECC(v95, v96);

          v97 = *(v88 + 72);
          v98 = swift_allocObject();
          swift_weakInit();
          v99 = *(v97 + 48);
          v100 = *(v97 + 56);
          *(v97 + 48) = sub_20BAA50B8;
          *(v97 + 56) = v98;

          sub_20B583ECC(v99, v100);

          v101 = [objc_opt_self() defaultCenter];
          v102 = *MEMORY[0x277CE6100];
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v104 = [Strong player];
            swift_unknownObjectRelease();
            v105 = v131;
            if (v104)
            {
              v106 = [v104 currentItem];

              if (v106)
              {
                *&aBlock = v106;
                sub_20B51C88C(0, &qword_27C7689D0, 0x277CE65B0);
                v104 = sub_20C13DFD4();
              }

              else
              {
                v104 = 0;
              }
            }
          }

          else
          {
            v104 = 0;
            v105 = v131;
          }

          v107 = [objc_opt_self() mainQueue];
          v108 = swift_allocObject();
          swift_weakInit();

          v141 = sub_20BAA50C0;
          v142 = v108;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v139 = sub_20BF3ECF4;
          v140 = &block_descriptor_48_2;
          v109 = _Block_copy(&aBlock);

          v110 = [v101 addObserverForName:v102 object:v104 queue:v107 usingBlock:v109];
          _Block_release(v109);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          sub_20BF98350(v87, type metadata accessor for CatalogTipPlayerConfiguration);
          sub_20BF98350(v128, type metadata accessor for CatalogTipPlaybackContent);
          v111 = *(v105 + 8);
          v112 = v132;
          v111(v127, v132);
          sub_20B520158(v130, &unk_27C766680, &unk_20C14F920);
          v113 = type metadata accessor for CatalogTipPlayerViewController();
          v114 = objc_allocWithZone(v113);
          *&v114[OBJC_IVAR____TtC9SeymourUI30CatalogTipPlayerViewController_presenter] = v88;
          v137.receiver = v114;
          v137.super_class = v113;
          v38 = objc_msgSendSuper2(&v137, sel_initWithNibName_bundle_, 0, 0);
          v111(v129, v112);
          *(*&v38[OBJC_IVAR____TtC9SeymourUI30CatalogTipPlayerViewController_presenter] + 88) = &off_2822996A0;
          swift_unknownObjectWeakAssign();
        }

        return v38;
      }

      if (v25 == 7)
      {
        v28 = v22;
        v49 = *(v22 + 16);
        v30 = v136;
        v49(v24, a1, v136);

        v50 = sub_20C133E44();
        v52 = v51;
        type metadata accessor for TrainerPageDataProvider(0);
        swift_allocObject();

        v53 = sub_20BF802CC(v50, v52, a3);

        v54 = objc_allocWithZone(type metadata accessor for TrainerDetailViewController());

        v55 = v133;
        swift_unknownObjectRetain();
        v37 = sub_20BAA0328(a3, v53, a3, v55, v134, v135, v54);
        goto LABEL_18;
      }
    }

    else
    {
      if (v25 > 2u)
      {
        if (v25 == 3)
        {
          (*(v22 + 16))(v24, a1, v136);
          swift_retain_n();
          v41 = v133;
          swift_unknownObjectRetain();
          return sub_20BF92358(a3, 0, 0, a3, v41, v134, v135, v24);
        }

        v28 = v22;
        v63 = *(v22 + 16);
        v30 = v136;
        v63(v24, a1, v136);

        v64 = sub_20C133E44();
        v66 = v65;
        type metadata accessor for CatalogProgramPageDataProvider(0);
        swift_allocObject();

        v67 = sub_20BC94DE8(v64, v66, a3);

        v68 = objc_allocWithZone(type metadata accessor for CatalogProgramDetailViewController());

        v69 = v133;
        swift_unknownObjectRetain();
        v37 = sub_20BF944F4(a3, v67, a3, v69, v134, v135, v68);
LABEL_18:
        v38 = v37;

        (*(v28 + 8))(v24, v30);
        return v38;
      }

      if (v25 == 1)
      {
        v28 = v22;
        v29 = *(v22 + 16);
        v30 = v136;
        v29(v24, a1, v136);

        v31 = sub_20C133E44();
        v33 = v32;
        type metadata accessor for CatalogEditorialCollectionPageDataProvider(0);
        swift_allocObject();

        v34 = sub_20BF68BB0(v31, v33, a3);

        v35 = objc_allocWithZone(type metadata accessor for CatalogEditorialCollectionDetailViewController());

        v36 = v133;
        swift_unknownObjectRetain();
        v37 = sub_20BF93598(a3, v34, a3, v36, v134, v135, v35);
        goto LABEL_18;
      }

      if (v25 == 2)
      {
        v28 = v22;
        v56 = *(v22 + 16);
        v30 = v136;
        v56(v24, a1, v136);

        v57 = sub_20C133E44();
        v59 = v58;
        type metadata accessor for CatalogModalityPageDataProvider(0);
        swift_allocObject();

        v60 = sub_20BB9F644(v57, v59, a3);

        v61 = objc_allocWithZone(type metadata accessor for CatalogModalityDetailViewController());

        v62 = v133;
        swift_unknownObjectRetain();
        v37 = sub_20BF93914(a3, v60, a3, v62, v134, v135, v61);
        goto LABEL_18;
      }
    }

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD00000000000003DLL, 0x800000020C1A5750);
    v120 = sub_20C135984();
    MEMORY[0x20F2F4230](v120);
  }

  else
  {
    sub_20B583F4C(v25, v26, 0);
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_20C13DC94();
    v145 = aBlock;
    MEMORY[0x20F2F4230](0xD00000000000003DLL, 0x800000020C1A5750);
    v115 = sub_20C133E94();
    v117 = v116;
    *&aBlock = v115;
    *(&aBlock + 1) = v116;
    v119 = v118 & 1;
    LOBYTE(v139) = v118 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710B0, &qword_20C186EB0);
    sub_20C133BB4();
    sub_20B583F4C(v115, v117, v119);
    MEMORY[0x20F2F4230](v143, v144);
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

double sub_20BF899FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v11 = objc_allocWithZone(type metadata accessor for WorkoutPlanScheduleViewController());
  swift_retain_n();
  swift_unknownObjectRetain();
  v33 = sub_20BF95640(a3, 0, 0, 0, a3, a4, a5, v6, v11);

  type metadata accessor for WorkoutPlanTemplateDetailViewController();
  if (!swift_dynamicCastClass())
  {
    v19 = [a1 navigationController];
    if (v19)
    {
      v20 = v19;
      [v19 pushViewController:v33 animated:1];
    }

LABEL_9:

    return result;
  }

  v12 = [a1 presentingViewController];
  if (v12)
  {
    v13 = v12;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v33;
      aBlock[4] = sub_20BF982D0;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_163;
      v16 = _Block_copy(aBlock);
      v17 = v33;

      [a1 dismissViewControllerAnimated:1 completion:v16];

      _Block_release(v16);
      return result;
    }
  }

  v21 = [a1 navigationController];
  if (!v21)
  {
    goto LABEL_9;
  }

  v22 = v21;
  v23 = [v21 viewControllers];

  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  v24 = sub_20C13CC74();

  v25 = (v24 >> 62);
  if (v24 >> 62)
  {
    if (sub_20C13DB34())
    {
      goto LABEL_14;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_24;
  }

LABEL_14:
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v25 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
  {
    v24 = sub_20BF908C8(v24);
  }

  v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v27)
  {
    v28 = v27 - 1;
    v29 = *((v24 & 0xFFFFFFFFFFFFFF8) + 8 * v28 + 0x20);
    *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) = v28;

    aBlock[0] = v24;
    v25 = v33;
    MEMORY[0x20F2F43B0]();
    if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  sub_20C13CCA4();
LABEL_19:
  sub_20C13CCE4();
  v30 = [a1 navigationController];
  if (v30)
  {
    v31 = v30;
    v32 = sub_20C13CC54();

    [v31 setViewControllers:v32 animated:1];
  }

  else
  {
  }

  return result;
}

void sub_20BF89DF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong pushViewController:a2 animated:1];
  }
}

void sub_20BF89E58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v54 = a6;
  v52 = a4;
  v53 = a5;
  v9 = sub_20C137F24();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v51 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_20C13BB84();
  v47 = *(v15 - 8);
  v48 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v18 = *(v10 + 16);
  v50 = a2;
  v46 = v18;
  v18(v14, a2, v9);
  v19 = sub_20C13BB74();
  v20 = sub_20C13D1F4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v45 = a1;
    v22 = v21;
    v42 = v21;
    v44 = swift_slowAlloc();
    v55 = v44;
    *v22 = 136446210;
    v43 = v20;
    v23 = sub_20C137F04();
    v24 = v9;
    v26 = v25;
    v27 = *(v10 + 8);
    v49 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v14, v24);
    v28 = sub_20B51E694(v23, v26, &v55);
    v9 = v24;

    v29 = v42;
    *(v42 + 4) = v28;
    v30 = v29;
    _os_log_impl(&dword_20B517000, v19, v43, "[CatalogPageNavigating] Did select trainer %{public}s", v29, 0xCu);
    v31 = v44;
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x20F2F6A40](v31, -1, -1);
    a1 = v45;
    MEMORY[0x20F2F6A40](v30, -1, -1);
  }

  else
  {

    v27 = *(v10 + 8);
    v49 = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v27(v14, v9);
  }

  (*(v47 + 8))(v17, v48);
  v32 = v51;
  v46(v51, v50, v9);

  v33 = sub_20C137EB4();
  v35 = v34;
  type metadata accessor for TrainerPageDataProvider(0);
  swift_allocObject();

  v36 = sub_20BF802CC(v33, v35, a3);

  v37 = objc_allocWithZone(type metadata accessor for TrainerDetailViewController());

  v38 = v52;
  swift_unknownObjectRetain();
  v39 = sub_20BAA0328(a3, v36, a3, v38, v53, v54, v37);

  v27(v32, v9);
  v40 = [a1 navigationController];
  if (v40)
  {
    v41 = v40;
    [v40 pushViewController:v39 animated:1];
  }
}

void sub_20BF8A268(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, char *, uint64_t), void (*a7)(char *, void, uint64_t), uint64_t a8, unsigned __int8 a9, char *a10, void (*a11)(char *, uint64_t, uint64_t, uint64_t), uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  LODWORD(v14) = a8;
  v138 = a7;
  v139 = a1;
  v135 = a5;
  v136 = a6;
  v134 = a4;
  LODWORD(v137) = a14;
  v143 = a13;
  v141 = a2;
  v142 = a12;
  v131 = a10;
  v132 = a11;
  LODWORD(v133) = a9;
  v129 = sub_20C1391E4();
  v115 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v114 = v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C134C44();
  MEMORY[0x28223BE20](v17 - 8);
  v128 = v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v19 - 8);
  v127 = v97 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v21 - 8);
  v126 = v97 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v23 - 8);
  v125 = v97 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v25 - 8);
  v122 = v97 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v27 - 8);
  v118 = v97 - v28;
  v124 = sub_20C134F74();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v113 = v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v120 = v97 - v31;
  MEMORY[0x28223BE20](v32);
  v121 = v97 - v33;
  v140 = sub_20C135D24();
  v119 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v112 = v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v116 = v97 - v36;
  MEMORY[0x28223BE20](v37);
  v117 = v97 - v38;
  v130 = sub_20C13B604();
  v39 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v41 = v97 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C13BB84();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = v97 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();

  v46 = sub_20C13BB74();
  v47 = sub_20C13D1F4();
  v48 = a3;

  if (os_log_type_enabled(v46, v47))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    LODWORD(v111) = v14;
    v14 = v50;
    v144 = v50;
    *v49 = 136446210;
    *(v49 + 4) = sub_20B51E694(v141, v48, &v144);
    _os_log_impl(&dword_20B517000, v46, v47, "[CatalogPageNavigating] Did select gallery %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v51 = v14;
    LOBYTE(v14) = v111;
    MEMORY[0x20F2F6A40](v51, -1, -1);
    MEMORY[0x20F2F6A40](v49, -1, -1);
  }

  (*(v43 + 8))(v45, v42);
  v141 = sub_20BF8B1C8(v141, v48, v134, v135, v136, v138, v14, v133, v131, v132, v142, v143, v137);
  v52 = sub_20C1380C4();
  v53 = v130;
  (*(v39 + 104))(v41, *MEMORY[0x277D4F8B8], v130);
  v54 = sub_20B8D7248(v41, v52);

  (*(v39 + 8))(v41, v53);
  if (v54)
  {
    v55 = sub_20C1352B4();
    v57 = v56;
    if (v55 == sub_20C1352B4() && v57 == v58)
    {
    }

    else
    {
      v59 = sub_20C13DFF4();

      if ((v59 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v60 = *MEMORY[0x277D50F68];
    v61 = sub_20C134C34();
    v62 = v117;
    (*(*(v61 - 8) + 104))(v117, v60, v61);
    v63 = *MEMORY[0x277D52110];
    v64 = v119;
    v65 = *(v119 + 104);
    v137 = v119 + 104;
    v138 = v65;
    v66 = v140;
    v65(v62, v63, v140);
    v67 = *(v64 + 16);
    v135 = v64 + 16;
    v136 = v67;
    v68 = v116;
    v67(v116, v62, v66);
    v133 = sub_20C1333A4();
    v69 = *(v133 - 8);
    v132 = *(v69 + 56);
    v134 = v69 + 56;
    v132(v118, 1, 1, v133);
    v130 = sub_20C135664();
    v70 = *(v130 - 8);
    v111 = *(v70 + 56);
    v131 = (v70 + 56);
    v111(v122, 1, 1, v130);
    v109 = sub_20C135674();
    v71 = *(v109 - 8);
    v108 = *(v71 + 56);
    v110 = v71 + 56;
    v108(v125, 1, 1, v109);
    v106 = sub_20C134FB4();
    v72 = *(v106 - 8);
    v105 = *(v72 + 56);
    v107 = v72 + 56;
    v105(v126, 1, 1, v106);
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
    v73 = *(v103 - 8);
    v102 = *(v73 + 56);
    v104 = v73 + 56;
    v102(v127, 1, 1, v103);
    v100 = sub_20C135F14();
    v74 = *(v100 - 8);
    v99 = *(v74 + 56);
    v101 = v74 + 56;
    v99(v128, 1, 1, v100);
    v75 = v121;
    sub_20C134F54();
    v97[2] = swift_getObjectType();
    v76 = *(v123 + 16);
    v97[3] = v123 + 16;
    v98 = v76;
    v76(v120, v75, v124);
    v77 = v114;
    sub_20C1391F4();
    v97[1] = sub_20BF98704(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
    v78 = v129;
    sub_20C13A764();
    v115 = *(v115 + 8);
    (v115)(v77, v78);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764CF0, &unk_20C16A310);
    v80 = v79[12];
    v81 = v79[16];
    v82 = &v68[v79[20]];
    v83 = *MEMORY[0x277D514D8];
    v84 = sub_20C134F84();
    (*(*(v84 - 8) + 104))(v68, v83, v84);
    v85 = sub_20C132C14();
    v86 = *(*(v85 - 8) + 56);
    v86(&v68[v80], 1, 1, v85);
    v86(&v68[v81], 1, 1, v85);
    *v82 = 0;
    *(v82 + 1) = 0;
    v87 = v140;
    v138(v68, *MEMORY[0x277D52128], v140);
    v136(v112, v68, v87);
    v132(v118, 1, 1, v133);
    v111(v122, 1, 1, v130);
    v108(v125, 1, 1, v109);
    v105(v126, 1, 1, v106);
    v102(v127, 1, 1, v103);
    v99(v128, 1, 1, v100);
    v88 = v120;
    sub_20C134F54();
    v89 = v88;
    v90 = v124;
    v98(v113, v88, v124);
    sub_20C1391F4();
    v91 = v129;
    sub_20C13A764();
    (v115)(v77, v91);
    v92 = *(v123 + 8);
    v92(v89, v90);
    v93 = *(v119 + 8);
    v94 = v140;
    v93(v116, v140);
    v92(v121, v90);
    v93(v117, v94);
  }

LABEL_9:
  v95 = [v139 navigationController];
  if (v95)
  {
    v96 = v95;
    [v95 pushViewController:v141 animated:1];
  }
}

char *sub_20BF8B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7, unsigned int a8, char *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v136 = a8;
  v138 = a6;
  v137 = a5;
  v140 = a2;
  v139 = a1;
  v135 = a9;
  v16 = sub_20C1352F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a7 <= 4u)
  {
    if (a7 <= 1u)
    {
      v149 = &type metadata for CatalogPageNavigator;
      v150 = &off_2822FB218;
      v60 = swift_allocObject();
      v148[0] = v60;
      *(v60 + 16) = a10;
      *(v60 + 24) = a11;
      *(v60 + 32) = a12;
      *(v60 + 40) = a13;
      v61 = type metadata accessor for LibraryGalleryViewController(0);
      v62 = objc_allocWithZone(v61);
      v63 = &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior];
      *v63 = 0;
      *(v63 + 1) = 0;
      v63[16] = -4;
      v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isTransitioningContentInset] = 0;
      *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_resignActiveObserver] = 0;
      v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_visibility] = 1;
      if (a7)
      {
        v112 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_standardNavigationBarTintColor;
        v113 = objc_opt_self();

        swift_unknownObjectRetain();
        *&v62[v112] = [v113 whiteColor];
        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentNavigationBarTintColor] = 0;
        v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isBeyondScrollBoundary] = 0;
        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dependencies] = a10;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
        sub_20C133AA4();
        sub_20B51C710(v147, &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_serviceSubscriptionCache]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
        sub_20C133AA4();
        sub_20B51C710(v147, &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_storefrontLocalizer]);
        v114 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_metricPageCategory;
        (*(v17 + 104))(&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_metricPageCategory], *MEMORY[0x277D51838], v16);
        (*(v17 + 16))(v19, &v62[v114], v16);
        type metadata accessor for LibraryGalleryDataProvider(0);
        swift_allocObject();
        v115 = v138;

        v116 = v135;

        v118 = sub_20BCBDDC8(v117, 1u, v136, v137, v115, v116, v19);

        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider] = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
        sub_20C133AA4();
        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_eventHub] = v147[0];
        sub_20B51CC64(v148, &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_pageNavigator]);
        sub_20C133AA4();
        v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_platform] = v147[0];
        v119 = &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_galleryTitle];
        v120 = v140;
        *v119 = v139;
        v119[1] = v120;
        v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_destination] = 1;
        type metadata accessor for UpNextQueueButtonPresenter();
        swift_allocObject();

        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButtonPresenter] = sub_20B887320(v121);
        v122 = sub_20BE8C450(&unk_282287530);

        v124 = sub_20BAB9360(v123, v122, 0);

        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButton] = v124;
        v125 = &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior];
        *v125 = 0;
        v125[8] = 2;
        v142.receiver = v62;
        v142.super_class = v61;
        v38 = objc_msgSendSuper2(&v142, sel_initWithNibName_bundle_, 0, 0, v135);
      }

      else
      {
        v64 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_standardNavigationBarTintColor;
        v65 = objc_opt_self();

        swift_unknownObjectRetain();
        *&v62[v64] = [v65 whiteColor];
        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentNavigationBarTintColor] = 0;
        v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isBeyondScrollBoundary] = 0;
        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dependencies] = a10;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
        sub_20C133AA4();
        sub_20B51C710(v147, &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_serviceSubscriptionCache]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
        sub_20C133AA4();
        sub_20B51C710(v147, &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_storefrontLocalizer]);
        v66 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_metricPageCategory;
        (*(v17 + 104))(&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_metricPageCategory], *MEMORY[0x277D51838], v16);
        (*(v17 + 16))(v19, &v62[v66], v16);
        type metadata accessor for LibraryGalleryDataProvider(0);
        swift_allocObject();

        v67 = v138;

        v68 = v135;

        v69 = sub_20BCBDDC8(a10, 0, v136, v137, v67, v68, v19);

        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider] = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
        sub_20C133AA4();
        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_eventHub] = v147[0];
        sub_20B51CC64(v148, &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_pageNavigator]);
        sub_20C133AA4();
        v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_platform] = v147[0];
        v70 = &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_galleryTitle];
        v71 = v140;
        *v70 = v139;
        v70[1] = v71;
        v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_destination] = 0;
        type metadata accessor for UpNextQueueButtonPresenter();
        swift_allocObject();

        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButtonPresenter] = sub_20B887320(a10);
        v72 = sub_20BE8C450(&unk_282287508);

        v74 = sub_20BAB9360(v73, v72, 0);

        *&v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButton] = v74;
        v75 = &v62[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior];
        *v75 = 0;
        v75[8] = 2;
        v141.receiver = v62;
        v141.super_class = v61;
        v38 = objc_msgSendSuper2(&v141, sel_initWithNibName_bundle_, 0, 0, v135);
      }

      goto LABEL_18;
    }

    swift_retain_n();
    v39 = v138;

    v40 = v140;

    swift_unknownObjectRetain();
    if (a7 == 2)
    {
      v41 = sub_20BF95EF0(a10, a10, a11, a12, a13, v136, v137, v39, v139, v40);
    }

    else
    {
      v41 = sub_20BF96370(a10, a10, a11, a12, a13, v136, v137, v39, v139, v40);
    }

LABEL_20:
    v130 = v41;

    return v130;
  }

  if (a7 <= 7u)
  {
    if (a7 == 5)
    {
      v149 = &type metadata for CatalogPageNavigator;
      v150 = &off_2822FB218;
      v76 = swift_allocObject();
      v148[0] = v76;
      *(v76 + 16) = a10;
      *(v76 + 24) = a11;
      *(v76 + 32) = a12;
      *(v76 + 40) = a13;
      v77 = type metadata accessor for LibraryGalleryViewController(0);
      v78 = objc_allocWithZone(v77);
      v79 = &v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior];
      *v79 = 0;
      *(v79 + 1) = 0;
      v79[16] = -4;
      v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isTransitioningContentInset] = 0;
      *&v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_resignActiveObserver] = 0;
      v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_visibility] = 1;
      v80 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_standardNavigationBarTintColor;
      v81 = objc_opt_self();

      swift_unknownObjectRetain();
      *&v78[v80] = [v81 whiteColor];
      *&v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentNavigationBarTintColor] = 0;
      v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isBeyondScrollBoundary] = 0;
      *&v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dependencies] = a10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
      sub_20C133AA4();
      sub_20B51C710(v147, &v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_serviceSubscriptionCache]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
      sub_20C133AA4();
      sub_20B51C710(v147, &v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_storefrontLocalizer]);
      v82 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_metricPageCategory;
      (*(v17 + 104))(&v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_metricPageCategory], *MEMORY[0x277D51838], v16);
      (*(v17 + 16))(v19, &v78[v82], v16);
      type metadata accessor for LibraryGalleryDataProvider(0);
      swift_allocObject();
      v83 = v138;

      v84 = v135;

      v86 = sub_20BCBDDC8(v85, 5u, v136, v137, v83, v84, v19);

      *&v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider] = v86;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
      sub_20C133AA4();
      *&v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_eventHub] = v147[0];
      sub_20B51CC64(v148, &v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_pageNavigator]);
      sub_20C133AA4();
      v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_platform] = v147[0];
      v87 = &v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_galleryTitle];
      v88 = v140;
      *v87 = v139;
      v87[1] = v88;
      v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_destination] = 5;
      type metadata accessor for UpNextQueueButtonPresenter();
      swift_allocObject();

      *&v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButtonPresenter] = sub_20B887320(v89);
      v90 = sub_20BE8C450(&unk_282287558);

      v92 = sub_20BAB9360(v91, v90, 0);

      *&v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButton] = v92;
      v93 = &v78[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior];
      *v93 = 0;
      v93[8] = 2;
      v143.receiver = v78;
      v143.super_class = v77;
      v38 = objc_msgSendSuper2(&v143, sel_initWithNibName_bundle_, 0, 0, v135);
      goto LABEL_18;
    }

    if (a7 == 6)
    {
      v149 = &type metadata for CatalogPageNavigator;
      v150 = &off_2822FB218;
      v20 = swift_allocObject();
      v148[0] = v20;
      *(v20 + 16) = a10;
      *(v20 + 24) = a11;
      *(v20 + 32) = a12;
      *(v20 + 40) = a13;
      v21 = type metadata accessor for LibraryGalleryViewController(0);
      v22 = objc_allocWithZone(v21);
      v23 = &v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior];
      *v23 = 0;
      *(v23 + 1) = 0;
      v23[16] = -4;
      v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isTransitioningContentInset] = 0;
      *&v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_resignActiveObserver] = 0;
      v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_visibility] = 1;
      v24 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_standardNavigationBarTintColor;
      v25 = objc_opt_self();

      swift_unknownObjectRetain();
      *&v22[v24] = [v25 whiteColor];
      *&v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentNavigationBarTintColor] = 0;
      v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isBeyondScrollBoundary] = 0;
      *&v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dependencies] = a10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
      sub_20C133AA4();
      sub_20B51C710(v147, &v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_serviceSubscriptionCache]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
      sub_20C133AA4();
      sub_20B51C710(v147, &v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_storefrontLocalizer]);
      v26 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_metricPageCategory;
      (*(v17 + 104))(&v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_metricPageCategory], *MEMORY[0x277D51838], v16);
      (*(v17 + 16))(v19, &v22[v26], v16);
      type metadata accessor for LibraryGalleryDataProvider(0);
      swift_allocObject();
      v27 = v138;

      v28 = v135;

      v30 = sub_20BCBDDC8(v29, 6u, v136, v137, v27, v28, v19);

      *&v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider] = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
      sub_20C133AA4();
      *&v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_eventHub] = v147[0];
      sub_20B51CC64(v148, &v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_pageNavigator]);
      sub_20C133AA4();
      v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_platform] = v147[0];
      v31 = &v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_galleryTitle];
      v32 = v140;
      *v31 = v139;
      v31[1] = v32;
      v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_destination] = 6;
      type metadata accessor for UpNextQueueButtonPresenter();
      swift_allocObject();

      *&v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButtonPresenter] = sub_20B887320(v33);
      v34 = sub_20BE8C450(&unk_2822875D0);

      v36 = sub_20BAB9360(v35, v34, 0);

      *&v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButton] = v36;
      v37 = &v22[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior];
      *v37 = 0;
      v37[8] = 2;
      v146.receiver = v22;
      v146.super_class = v21;
      v38 = objc_msgSendSuper2(&v146, sel_initWithNibName_bundle_, 0, 0, v135);
LABEL_18:
      v126 = v38;
      __swift_destroy_boxed_opaque_existential_1(v148);
      return v126;
    }

    v128 = objc_allocWithZone(type metadata accessor for WorkoutPlanGalleryViewController());
    swift_retain_n();
    v129 = v140;

    swift_unknownObjectRetain();
    v41 = sub_20BF967F0(a10, a10, a11, a12, a13, v139, v129, v128);
    goto LABEL_20;
  }

  if (a7 == 8)
  {
    v149 = &type metadata for CatalogPageNavigator;
    v150 = &off_2822FB218;
    v94 = swift_allocObject();
    v148[0] = v94;
    *(v94 + 16) = a10;
    *(v94 + 24) = a11;
    *(v94 + 32) = a12;
    *(v94 + 40) = a13;
    v95 = type metadata accessor for LibraryGalleryViewController(0);
    v96 = objc_allocWithZone(v95);
    v97 = &v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentContentInsetBehavior];
    *v97 = 0;
    *(v97 + 1) = 0;
    v97[16] = -4;
    v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isTransitioningContentInset] = 0;
    *&v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_resignActiveObserver] = 0;
    v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_visibility] = 1;
    v98 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_standardNavigationBarTintColor;
    v99 = objc_opt_self();

    swift_unknownObjectRetain();
    *&v96[v98] = [v99 whiteColor];
    *&v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_currentNavigationBarTintColor] = 0;
    v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_isBeyondScrollBoundary] = 0;
    *&v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dependencies] = a10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
    sub_20C133AA4();
    sub_20B51C710(v147, &v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_serviceSubscriptionCache]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
    sub_20C133AA4();
    sub_20B51C710(v147, &v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_storefrontLocalizer]);
    v100 = OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_metricPageCategory;
    (*(v17 + 104))(&v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_metricPageCategory], *MEMORY[0x277D51838], v16);
    (*(v17 + 16))(v19, &v96[v100], v16);
    type metadata accessor for LibraryGalleryDataProvider(0);
    swift_allocObject();
    v101 = v138;

    v102 = v135;

    v104 = sub_20BCBDDC8(v103, 8u, v136, v137, v101, v102, v19);

    *&v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_dataProvider] = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
    sub_20C133AA4();
    *&v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_eventHub] = v147[0];
    sub_20B51CC64(v148, &v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_pageNavigator]);
    sub_20C133AA4();
    v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_platform] = v147[0];
    v105 = &v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_galleryTitle];
    v106 = v140;
    *v105 = v139;
    v105[1] = v106;
    v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_destination] = 8;
    type metadata accessor for UpNextQueueButtonPresenter();
    swift_allocObject();

    *&v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButtonPresenter] = sub_20B887320(v107);
    v108 = sub_20BE8C450(&unk_282287580);

    v110 = sub_20BAB9360(v109, v108, 0);

    *&v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_upNextQueueButton] = v110;
    v111 = &v96[OBJC_IVAR____TtC9SeymourUI28LibraryGalleryViewController_contentInsetInitialBehavior];
    *v111 = 0;
    v111[8] = 2;
    v144.receiver = v96;
    v144.super_class = v95;
    v38 = objc_msgSendSuper2(&v144, sel_initWithNibName_bundle_, 0, 0, v135);
    goto LABEL_18;
  }

  if (a7 == 9)
  {
    v149 = &type metadata for CatalogPageNavigator;
    v150 = &off_2822FB218;
    v42 = swift_allocObject();
    v148[0] = v42;
    *(v42 + 16) = a10;
    *(v42 + 24) = a11;
    *(v42 + 32) = a12;
    *(v42 + 40) = a13;
    v43 = type metadata accessor for ChartGalleryViewController(0);
    v44 = objc_allocWithZone(v43);
    v45 = &v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentContentInsetBehavior];
    *v45 = 0;
    *(v45 + 1) = 0;
    v45[16] = -4;
    v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isTransitioningContentInset] = 0;
    *&v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_resignActiveObserver] = 0;
    v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_visibility] = 1;
    v46 = OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_metricPageCategory;
    (*(v17 + 104))(&v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_metricPageCategory], *MEMORY[0x277D51838], v16);
    v47 = OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_standardNavigationBarTintColor;
    v48 = objc_opt_self();

    swift_unknownObjectRetain();
    *&v44[v47] = [v48 whiteColor];
    *&v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_currentNavigationBarTintColor] = 0;
    v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_isBeyondScrollBoundary] = 0;
    (*(v17 + 16))(v19, &v44[v46], v16);
    type metadata accessor for ChartGalleryDataProvider(0);
    swift_allocObject();
    v49 = v138;

    v50 = v135;

    v52 = sub_20BE524C8(v51, v136, v137, v49, v50, v19);

    *&v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dataProvider] = v52;
    *&v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_dependencies] = a10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
    sub_20C133AA4();
    *&v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_eventHub] = v147[0];
    v53 = &v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_galleryTitle];
    v54 = v140;
    *v53 = v139;
    v53[1] = v54;
    sub_20B51CC64(v148, &v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_pageNavigator]);

    sub_20C133AA4();
    v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_platform] = v147[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
    sub_20C133AA4();
    sub_20B51C710(v147, &v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_serviceSubscriptionCache]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
    sub_20C133AA4();
    sub_20B51C710(v147, &v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_storefrontLocalizer]);
    v55 = &v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_contentInsetInitialBehavior];
    *v55 = 0;
    v55[8] = 0;
    type metadata accessor for UpNextQueueButtonPresenter();
    swift_allocObject();

    *&v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_upNextQueueButtonPresenter] = sub_20B887320(v56);
    v57 = sub_20BE8C450(&unk_2822875A8);

    v59 = sub_20BAB9360(v58, v57, 0);

    *&v44[OBJC_IVAR____TtC9SeymourUI26ChartGalleryViewController_upNextQueueButton] = v59;
    v145.receiver = v44;
    v145.super_class = v43;
    v38 = objc_msgSendSuper2(&v145, sel_initWithNibName_bundle_, 0, 0, v135);
    goto LABEL_18;
  }

  type metadata accessor for CatalogTipGalleryPageDataProvider(0);
  swift_allocObject();
  swift_retain_n();
  v131 = v140;

  v132 = sub_20BCDAE6C(v139, v131, a3, a4, a10);

  v133 = objc_allocWithZone(type metadata accessor for CatalogTipGalleryViewController());

  swift_unknownObjectRetain();
  v134 = sub_20BF96B08(a10, v132, a10, a11, a12, a13, v133);

  return v134;
}

void sub_20BF8CC58(void *a1, void (*a2)(char *, char *, uint64_t), void (*a3)(char *, char *, uint64_t), uint64_t a4, void (*a5)(char *, char *, uint64_t), char *a6, char *a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, objc_class *a12, unsigned __int8 a13)
{
  v114 = a8;
  v102 = a7;
  v101 = a6;
  v100 = a5;
  v99 = a4;
  v98 = a3;
  v115 = a1;
  v122 = a13;
  v104 = a12;
  v14 = a11;
  v120 = a10;
  v130 = sub_20C135914();
  v121 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v113 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v128 = &v95 - v17;
  v129 = sub_20C134EC4();
  v119 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v112 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v127 = &v95 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v21 - 8);
  v110 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v126 = &v95 - v24;
  v118 = sub_20C135524();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v109 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v108 = &v95 - v27;
  MEMORY[0x28223BE20](v28);
  v124 = &v95 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v95 - v31;
  v33 = sub_20C133E24();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v107 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v123 = &v95 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v95 - v39;
  v103 = sub_20C13BB84();
  v41 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v43 = &v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v44 = *(v34 + 16);
  v97 = a2;
  v106 = v34 + 16;
  v105 = v44;
  v44(v40, a2, v33);
  v45 = sub_20C13BB74();
  v46 = sub_20C13D1F4();
  v47 = os_log_type_enabled(v45, v46);
  v125 = v33;
  v116 = v32;
  v111 = v34;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v96 = a11;
    v50 = v49;
    v133[0] = v49;
    *v48 = 141558274;
    *(v48 + 4) = 1752392040;
    *(v48 + 12) = 2080;
    sub_20BF98704(&qword_27C769C00, MEMORY[0x277D504B0], MEMORY[0x277D504B8]);
    v51 = sub_20C13DFA4();
    v53 = v52;
    (*(v34 + 8))(v40, v125);
    v54 = sub_20B51E694(v51, v53, v133);
    v33 = v125;

    *(v48 + 14) = v54;
    _os_log_impl(&dword_20B517000, v45, v46, "[CatalogPageNavigating] Did select %{mask.hash}s", v48, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v50);
    v55 = v50;
    v14 = v96;
    MEMORY[0x20F2F6A40](v55, -1, -1);
    v56 = v48;
    v32 = v116;
    MEMORY[0x20F2F6A40](v56, -1, -1);
  }

  else
  {

    (*(v34 + 8))(v40, v33);
  }

  (*(v41 + 8))(v43, v103);
  v103 = a9;
  v57 = v105;
  v105(v123, v97, v33);
  v58 = (v117 + 16);
  v59 = *(v117 + 16);
  v60 = v118;
  v59(v32, v98, v118);
  sub_20B52F9E8(v99, v126, &unk_27C7710A0, &unk_20C156800);
  v61 = *(v119 + 16);
  v99 = v119 + 16;
  v98 = v61;
  v61(v127, v100, v129);
  v62 = v101;
  v101 = v58;
  v100 = v59;
  v59(v124, v62, v60);
  v63 = *(v121 + 16);
  v64 = v102;
  v102 = (v121 + 16);
  v97 = v63;
  v63(v128, v64, v130);
  v133[3] = &type metadata for CatalogPageNavigator;
  v133[4] = &off_2822FB218;
  v65 = swift_allocObject();
  v133[0] = v65;
  *(v65 + 16) = v120;
  *(v65 + 24) = v14;
  *(v65 + 32) = v104;
  *(v65 + 40) = v122;
  v104 = type metadata accessor for FilterOptionsViewController();
  v66 = objc_allocWithZone(v104);
  v66[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_visibility] = 1;
  v67 = &v66[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_layout];
  *v67 = xmmword_20C166500;
  *(v67 + 2) = 0x4034000000000000;
  v68 = objc_allocWithZone(MEMORY[0x277D756B8]);

  swift_unknownObjectRetain();
  v69 = [v68 initWithFrame_];
  [v69 setTranslatesAutoresizingMaskIntoConstraints_];
  [v69 setAdjustsFontForContentSizeCategory_];
  v70 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v71 = [v70 fontDescriptorWithSymbolicTraits_];
  if (v71)
  {
    v72 = v71;

    v70 = v72;
  }

  v73 = OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_titleLabel;
  v74 = objc_opt_self();
  v75 = [v74 fontWithDescriptor:v70 size:0.0];

  [v69 setFont_];
  *&v66[v73] = v69;
  v76 = OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_subtitleLabel;
  v77 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v77 setTranslatesAutoresizingMaskIntoConstraints_];
  [v77 setAdjustsFontForContentSizeCategory_];
  v78 = [v74 preferredFontForTextStyle_];
  [v77 setFont_];

  *&v66[v76] = v77;
  v79 = v120;
  *&v66[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_dependencies] = v120;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&v66[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_eventHub] = v132;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v132, &v66[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v132, &v66[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_storefrontLocalizer]);
  v80 = v107;
  v57(v107, v123, v125);
  v81 = v108;
  v82 = v32;
  v83 = v118;
  v84 = v100;
  v100(v108, v82, v118);
  v85 = v110;
  sub_20B52F9E8(v126, v110, &unk_27C7710A0, &unk_20C156800);
  v86 = v112;
  v98(v112, v127, v129);
  v87 = v109;
  v84(v109, v124, v83);
  v88 = v113;
  v97(v113, v128, v130);
  type metadata accessor for FilterOptionsPageDataProvider(0);
  swift_allocObject();

  v90 = sub_20B98418C(v79, v80, v81, v85, v86, v87, v88, v114, v89);

  *&v66[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_dataProvider] = v90;
  sub_20B51CC64(v133, &v66[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_pageNavigator]);
  sub_20C133AA4();
  v66[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_platform] = v132;
  v131.receiver = v66;
  v131.super_class = v104;
  v91 = objc_msgSendSuper2(&v131, sel_initWithNibName_bundle_, 0, 0);
  (*(v121 + 8))(v128, v130);
  v92 = *(v117 + 8);
  v92(v124, v83);
  (*(v119 + 8))(v127, v129);
  sub_20B520158(v126, &unk_27C7710A0, &unk_20C156800);
  v92(v116, v83);
  (*(v111 + 8))(v123, v125);
  __swift_destroy_boxed_opaque_existential_1(v133);
  *(*&v91[OBJC_IVAR____TtC9SeymourUI27FilterOptionsViewController_dataProvider] + 24) = &off_2822BB0F8;
  swift_unknownObjectWeakAssign();
  v93 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  v94 = sub_20C138104();
  if (v94 == sub_20C138104())
  {
    [v93 setModalPresentationStyle_];
  }

  [v115 presentViewController:v93 animated:1 completion:0];
}

uint64_t sub_20BF8DA70(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v72 = a7;
  v76 = a6;
  LODWORD(v75) = a5;
  v68 = a4;
  v67 = a3;
  v74 = a1;
  v70 = a11;
  v69 = a10;
  v78 = a9;
  v13 = type metadata accessor for WorkoutPlanScheduleEditableItem(0);
  MEMORY[0x28223BE20](v13);
  v71 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v77 = &v64 - v16;
  MEMORY[0x28223BE20](v17);
  v65 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810, &qword_20C159480);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v64 - v20;
  v22 = sub_20C136864();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090, &qword_20C15A040);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v64 - v27;
  v66 = a2;
  sub_20B52F9E8(a2, v21, &qword_27C765810, &qword_20C159480);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_20B520158(v21, &qword_27C765810, &qword_20C159480);
    v29 = sub_20C1365F4();
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  }

  else
  {
    v30 = (*(v23 + 32))(v25, v21, v22);
    MEMORY[0x28223BE20](v30);
    *(&v64 - 2) = v25;
    v31 = v76;

    v33 = sub_20BEE0CD8(sub_20BF982B0, v32, (&v64 - 4), v31);
    sub_20BEDD4A0(v33, v28);

    (*(v23 + 8))(v25, v22);
  }

  v34 = v65;
  v35 = &v65[v13[5]];
  v73 = v28;
  sub_20B52F9E8(v28, v35, &qword_27C771090, &qword_20C15A040);
  sub_20B52F9E8(v66, v34 + v13[6], &qword_27C765810, &qword_20C159480);
  *v34 = v67;
  *(v34 + 8) = v68 & 1;
  *(v34 + v13[7]) = v75;
  v36 = v77;
  sub_20BF982E8(v34, v77, type metadata accessor for WorkoutPlanScheduleEditableItem);
  v75 = type metadata accessor for WorkoutPlanEditScheduleViewController();
  v37 = objc_allocWithZone(v75);
  v82[3] = &type metadata for CatalogPageNavigator;
  v82[4] = &off_2822FB218;
  v38 = swift_allocObject();
  v82[0] = v38;
  v39 = v78;
  *(v38 + 16) = a8;
  *(v38 + 24) = v39;
  *(v38 + 32) = v69;
  *(v38 + 40) = v70;
  *&v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_resignActiveObserver] = 0;
  v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_visibility] = 1;
  *&v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_primaryActionButton] = 0;
  *&v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dependencies] = a8;
  swift_retain_n();
  swift_unknownObjectRetain_n();
  v40 = v76;

  v41 = v72;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_eventHub] = v83[0];
  sub_20B51CC64(v82, &v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_pageNavigator]);
  sub_20C133AA4();
  v42 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_platform;
  v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_platform] = v83[0];
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  v43 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_workoutPlanStringBuilder;
  *&v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_workoutPlanStringBuilder] = *&v83[0];
  v44 = v36;
  v45 = v71;
  sub_20BF982E8(v44, v71, type metadata accessor for WorkoutPlanScheduleEditableItem);
  type metadata accessor for WorkoutPlanEditSchedulePageDataProvider(0);
  swift_allocObject();

  v47 = sub_20B7D1AE0(v46, v45, v40, 0, 0, v41);

  *&v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider] = v47;
  v48 = *&v37[v43];
  v49 = v48[9];
  v50 = v48[10];
  __swift_project_boxed_opaque_existential_1(v48 + 6, v49);

  v51 = sub_20B5E107C(0x415F4554454C4544, 0xEF59544956495443, v49, v50);
  v53 = v52;

  *&v83[0] = v51;
  *(&v83[0] + 1) = v53;
  memset(&v83[1], 0, 32);
  v84 = 0;
  LOBYTE(v48) = v37[v42];
  v54 = objc_allocWithZone(type metadata accessor for PageActionMagicPocketView());
  v55 = sub_20BA99324(0, v83, v48);
  [v55 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_magicPocketView] = v55;
  sub_20C133AA4();
  LOBYTE(v40) = v81;
  v56 = type metadata accessor for PageScrollObserver();
  v57 = objc_allocWithZone(v56);
  *&v57[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v57[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_behaviors] = 1;
  v57[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_platform] = v40;
  v80.receiver = v57;
  v80.super_class = v56;
  v58 = objc_msgSendSuper2(&v80, sel_init);
  v59 = &v37[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_scrollObserver];
  *v59 = v58;
  v59[1] = &off_2822A5318;
  v79.receiver = v37;
  v79.super_class = v75;
  v60 = objc_msgSendSuper2(&v79, sel_initWithNibName_bundle_, 0, 0);
  sub_20BF98350(v77, type metadata accessor for WorkoutPlanScheduleEditableItem);
  __swift_destroy_boxed_opaque_existential_1(v82);
  v61 = OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider;
  *(*&v60[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_dataProvider] + 24) = &off_2822A6E78;
  swift_unknownObjectWeakAssign();
  *(*&v60[v61] + 40) = &off_2822A7188;
  swift_unknownObjectWeakAssign();
  *(*&v60[OBJC_IVAR____TtC9SeymourUI37WorkoutPlanEditScheduleViewController_scrollObserver] + OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8) = &off_2822A7178;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  v62 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v62 setModalPresentationStyle_];
  [v74 presentViewController:v62 animated:1 completion:0];

  sub_20BF98350(v34, type metadata accessor for WorkoutPlanScheduleEditableItem);
  return sub_20B520158(v73, &qword_27C771090, &qword_20C15A040);
}

uint64_t sub_20BF8E340(uint64_t a1)
{
  v1 = sub_20C1365A4();
  v3 = v2;
  if (v1 == sub_20C136834() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_20C13DFF4();
  }

  return v5 & 1;
}

void sub_20BF8E3DC(void *a1, char *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = *a2;
  v16 = type metadata accessor for WorkoutPlanPreferencesViewController();
  v17 = objc_allocWithZone(v16);
  v29[3] = &type metadata for CatalogPageNavigator;
  v29[4] = &off_2822FB218;
  v18 = swift_allocObject();
  v29[0] = v18;
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  *(v18 + 32) = a7;
  *(v18 + 40) = a8;
  *&v17[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_resignActiveObserver] = 0;
  *&v17[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_primaryActionButton] = 0;
  v17[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_visibility] = 1;
  *&v17[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dependencies] = a5;
  swift_retain_n();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&v17[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_eventHub] = v28;
  sub_20B51CC64(v29, &v17[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_pageNavigator]);
  sub_20C133AA4();
  v17[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_platform] = v28;
  v17[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_preferenceType] = v15;
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *&v17[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_workoutPlanStringBuilder] = v28;
  LOBYTE(v28) = v15;
  type metadata accessor for WorkoutPlanPreferencesPageDataProvider(0);
  swift_allocObject();

  v19 = sub_20BEF9C2C(a5, a4, 0, 0, &v28, a3);

  *&v17[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider] = v19;
  v27.receiver = v17;
  v27.super_class = v16;
  v20 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v29);
  v21 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider;
  *(*&v20[OBJC_IVAR____TtC9SeymourUI36WorkoutPlanPreferencesViewController_dataProvider] + 24) = &off_2822C9800;
  swift_unknownObjectWeakAssign();
  v22 = *&v20[v21];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = *(v22 + 32);
  v25 = *(v22 + 40);
  *(v22 + 32) = sub_20BF982A8;
  *(v22 + 40) = v23;

  swift_retain_n();
  sub_20B583ECC(v24, v25);

  v26 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v26 setModalPresentationStyle_];
  [a1 presentViewController:v26 animated:1 completion:0];
}

void sub_20BF8E720(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = a6;
  v38 = a6;
  v36 = a4;
  v37 = a5;
  v40 = a1;
  v9 = sub_20C132EE4();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C137374();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v35 - v18;
  v20 = *(v13 + 16);
  v20(&v35 - v18, a2, v12, v17);
  (v20)(v15, v19, v12);

  sub_20C1372B4();
  type metadata accessor for WorkoutPlanTemplateDetailPageDataProvider(0);
  swift_allocObject();
  v21 = sub_20BDCE950(a3, v11, 0, 0, 1);
  v39 = *(v13 + 8);
  v39(v15, v12);
  v22 = type metadata accessor for WorkoutPlanTemplateDetailViewController();
  v23 = objc_allocWithZone(v22);
  v43[3] = &type metadata for CatalogPageNavigator;
  v43[4] = &off_2822FB218;
  v24 = swift_allocObject();
  v43[0] = v24;
  v26 = v36;
  v25 = v37;
  *(v24 + 16) = a3;
  *(v24 + 24) = v26;
  *(v24 + 32) = v25;
  *(v24 + 40) = v6;
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_resignActiveObserver] = 0;
  v27 = &v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_currentContentInsetBehavior];
  *v27 = 0;
  *(v27 + 1) = 0;
  v27[16] = -4;
  v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_isTransitioningContentInset] = 0;
  v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_visibility] = 1;
  v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_allowsPlanActions] = 1;

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_bag] = v42;
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dependencies] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_eventHub] = v42;
  sub_20B51CC64(v43, &v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_pageNavigator]);
  sub_20C133AA4();
  v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_platform] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v42, &v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_storefrontLocalizer]);
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider] = v21;
  type metadata accessor for WorkoutPlanStringBuilder(0);

  sub_20C133AA4();
  *&v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_workoutPlanStringBuilder] = v42;
  v28 = &v23[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_contentInsetInitialBehavior];
  *v28 = 0;
  v28[8] = 3;
  v41.receiver = v23;
  v41.super_class = v22;
  v29 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v43);
  *(*&v29[OBJC_IVAR____TtC9SeymourUI39WorkoutPlanTemplateDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI41WorkoutPlanTemplateDetailPageDataProvider_delegate + 8) = &off_2822C9E08;
  swift_unknownObjectWeakAssign();

  v39(v19, v12);
  if (!v38)
  {
    v30 = [v40 navigationController];
    [v30 pushViewController:v29 animated:1];
LABEL_7:

    return;
  }

  v31 = v40;
  if (v38 == 1)
  {
    v32 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v32 setModalPresentationStyle_];
    v33 = [v31 navigationController];
    if (v33)
    {
      v34 = v33;
      [v33 presentViewController:v32 animated:1 completion:0];
    }

    v30 = v29;
    v29 = v32;
    goto LABEL_7;
  }

  sub_20C13DE24();
  __break(1u);
}

void sub_20BF8ECC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v14 = sub_20C137054();
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a2, v15);
  v19 = objc_allocWithZone(type metadata accessor for WorkoutPlanReviewViewController());
  swift_retain_n();

  swift_unknownObjectRetain();
  v20 = sub_20BF97A8C(a4, 0, 0, a4, a5, a6, v7, v17, a3, v19);

  v21 = [a1 navigationController];
  if (v21)
  {
    v22 = v21;
    [v21 pushViewController:v20 animated:1];
  }
}

double sub_20BF8EE48(void *a1, uint64_t a2, char *a3)
{
  v6 = *v3;
  v7 = *a3;

  v8 = [a1 navigationController];
  type metadata accessor for AccountSettingsLinkPresenter();
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v11 = v7;
  sub_20BEC2BA4(a2, a1, &v11);

  return result;
}

void sub_20BF8EF08(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_20C132C14();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  (*(v14 + 16))(v12, a2, v10);
  objc_allocWithZone(type metadata accessor for MarketingBannerPlayerViewController(0));

  v15 = sub_20BC4F340(v13, a3, a4, v12);
  [a1 presentViewController:v15 animated:1 completion:0];
}

void sub_20BF8F0F8(void *a1, uint64_t a2)
{
  v4 = sub_20C1353F4();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a2, v5);
  v9 = objc_allocWithZone(type metadata accessor for WorkoutPlanCompletionViewController(0));

  v11 = sub_20C1058BC(v10, v7, 1, 0, 0, 4);

  v12 = [a1 navigationController];
  if (v12)
  {
    v13 = v12;
    [v12 presentViewController:v11 animated:1 completion:0];
  }
}

void sub_20BF8F290(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = objc_allocWithZone(type metadata accessor for QueuedSessionViewController());

  v7 = QueuedSessionViewController.init(dependencies:queueItems:playContext:)(v5, a2, 0, 0);
  [v7 setModalPresentationStyle_];
  [a1 presentViewController:v7 animated:1 completion:0];
}

void sub_20BF8F344(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = objc_allocWithZone(type metadata accessor for WorkoutPlanSurveyViewController());
  swift_retain_n();
  swift_unknownObjectRetain();
  v8 = sub_20BF97354(v3, 0, 0, v3, v4, v5, v6, v7);

  v9 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v9 setModalPresentationStyle_];
  [a1 presentViewController:v9 animated:1 completion:0];
}

void sub_20BF8F460(uint64_t *a1)
{
  v2 = *(sub_20C133B74() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DD0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BF8F508(v5);
  *a1 = v3;
}

void sub_20BF8F508(uint64_t *a1)
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
        sub_20C133B74();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C133B74() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BF8F8DC(v8, v9, a1, v4);
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
    sub_20BF8F634(0, v2, 1, a1);
  }
}

void sub_20BF8F634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C133B74();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_20C133B44();
      v28 = sub_20C133B44();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BF8F8DC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C133B74();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20BF902C0(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C133B44();
      v126 = sub_20C133B44();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C133B44();
        v39 = sub_20C133B44();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
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

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20BF902C0(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C133B44();
    v104 = sub_20C133B44();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
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

void sub_20BF902C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C133B74();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
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

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C133B44();
          v45 = sub_20C133B44();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
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

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C133B44();
        v26 = sub_20C133B44();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A07CC(&v64, &v63, &v62);
}

uint64_t sub_20BF908C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_20C13DB34();
  }

  return sub_20C13DCD4();
}

double sub_20BF90ABC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = sub_20C137CB4();
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a1;
  v13[4] = a2;
  v14 = a4;

  v12(a8, v13);

  return result;
}

double sub_20BF90B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v24 = a2;
  v5 = sub_20C13C4B4();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C13C4F4();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7646E0, &unk_20C1560D0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  sub_20B52F9E8(a1, &v20 - v13, &qword_27C7646E0, &unk_20C1560D0);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v17;
  sub_20B5DF134(v14, v16 + v15, &qword_27C7646E0, &unk_20C1560D0);
  aBlock[4] = sub_20BF989E4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_152_0;
  v18 = _Block_copy(aBlock);

  sub_20C13C4D4();
  v25 = MEMORY[0x277D84F90];
  sub_20BF98704(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v10, v7, v18);
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v8 + 8))(v10, v22);

  return result;
}

double sub_20BF90EDC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double (*a9)(uint64_t, uint64_t, __n128))
{
  v25 = a7;
  v26 = a8;
  v29 = a3;
  v27 = a9;
  v13 = sub_20C13C4B4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C13C4F4();
  v17 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2 & 1;
  v32 = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  *(v21 + 32) = a1;
  *(v21 + 40) = v32;
  aBlock[4] = v25;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = v26;
  v22 = _Block_copy(aBlock);

  (v27)(a1, v20);
  sub_20C13C4D4();
  v30 = MEMORY[0x277D84F90];
  sub_20BF98704(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v19, v16, v22);
  _Block_release(v22);
  (*(v14 + 8))(v16, v13);
  (*(v17 + 8))(v19, v28);

  return result;
}

double sub_20BF911AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v21 = a4;
  v24 = a2;
  v5 = sub_20C13C4B4();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C13C4F4();
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  sub_20B52F9E8(a1, &v20 - v13, &unk_27C76D250, &unk_20C155D00);
  v15 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v16 = swift_allocObject();
  v17 = v21;
  *(v16 + 16) = v20;
  *(v16 + 24) = v17;
  sub_20B5DF134(v14, v16 + v15, &unk_27C76D250, &unk_20C155D00);
  aBlock[4] = sub_20BF98A04;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_161;
  v18 = _Block_copy(aBlock);

  sub_20C13C4D4();
  v25 = MEMORY[0x277D84F90];
  sub_20BF98704(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v10, v7, v18);
  _Block_release(v18);
  (*(v23 + 8))(v7, v5);
  (*(v8 + 8))(v10, v22);

  return result;
}

char *sub_20BF91514(uint64_t a1, uint64_t a2, void *a3, int a4, _BYTE *a5)
{
  LODWORD(v46) = a4;
  v49 = a3;
  v47 = a2;
  v48 = a1;
  sub_20C1380F4();
  v6 = sub_20C138104();
  v7 = sub_20C138104();
  v8 = 16.0;
  if (v6 == v7)
  {
    v8 = 24.0;
  }

  v9 = &a5[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_layout];
  *v9 = xmmword_20C186E30;
  *(v9 + 2) = 0x407A900000000000;
  *(v9 + 3) = v8;
  v10 = OBJC_IVAR____TtC9SeymourUI16QueueActionsView_totalDurationLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setTextAlignment_];
  v12 = objc_opt_self();
  v13 = [v12 preferredFontForTextStyle_];
  [v11 setFont_];

  *&a5[v10] = v11;
  v14 = OBJC_IVAR____TtC9SeymourUI16QueueActionsView_workoutsMetadataLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setTextAlignment_];
  v16 = [v12 preferredFontForTextStyle_];
  [v16 pointSize];
  v18 = v17;

  v19 = [v12 boldSystemFontOfSize_];
  [v15 setFont_];

  *&a5[v14] = v15;
  *&a5[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_zeroHeightConstraint] = 0;
  sub_20C133AA4();
  a5[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_platform] = v57[0];
  v20 = &a5[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_presenter];
  *v20 = v47;
  v20[1] = &off_282309DF0;
  sub_20B51CC64(v49, &a5[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_mediaTagStringBuilder]);
  a5[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_viewType] = v46 & 1;
  v21 = type metadata accessor for ActionButtonTemplateBuilder();
  v22 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v23 = swift_allocObject();
  v24 = qword_27C760AA0;

  v46 = v23;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_27C76CF70;
  if (qword_27C760AA8 != -1)
  {
    swift_once();
  }

  v26 = qword_27C76CF78;
  v57[3] = v21;
  v57[4] = &off_2822EEB00;
  v57[0] = v22;
  v55 = &type metadata for ActionButtonViewFactory;
  v56 = &off_2822B2B20;
  v27 = type metadata accessor for ActionButtonContainerView();
  v28 = objc_allocWithZone(v27);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v57, v21);
  v45 = v22;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v34 = *v32;
  v53[3] = v21;
  v53[4] = &off_2822EEB00;
  v52[4] = &off_2822B2B20;
  v53[0] = v34;
  v52[3] = &type metadata for ActionButtonViewFactory;
  *&v28[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v28[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v28[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v53, &v28[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v35 = &v28[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  *v35 = v46;
  v35[1] = &off_28229AE20;
  sub_20B51CC64(v52, &v28[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v28[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v25;
  *&v28[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v26;
  v51.receiver = v28;
  v51.super_class = v27;
  v36 = objc_msgSendSuper2(&v51, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0, v45);
  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v53);
  v37 = v36;
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v57);
  [v37 setTranslatesAutoresizingMaskIntoConstraints_];

  *&a5[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_actionButtonView] = v37;
  v38 = type metadata accessor for QueueActionsView();
  v50.receiver = a5;
  v50.super_class = v38;
  v39 = objc_msgSendSuper2(&v50, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v40 = [v39 heightAnchor];
  v41 = [v40 constraintEqualToConstant_];

  v42 = *&v39[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_zeroHeightConstraint];
  *&v39[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_zeroHeightConstraint] = v41;

  *(v47 + 24) = &off_2822FF700;
  swift_unknownObjectWeakAssign();

  v43 = OBJC_IVAR____TtC9SeymourUI16QueueActionsView_actionButtonView;
  *(*&v39[OBJC_IVAR____TtC9SeymourUI16QueueActionsView_actionButtonView] + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822FF720;
  swift_unknownObjectWeakAssign();

  [v39 addSubview_];
  [v39 addSubview_];
  [v39 addSubview_];
  sub_20C0052A4();

  __swift_destroy_boxed_opaque_existential_1(v49);
  return v39;
}

uint64_t sub_20BF91CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26[0] = a7;
  v26[1] = a8;
  v26[2] = a9;
  v26[3] = a10;
  v16 = sub_20C1333A4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v20 = OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_configuration;
  v21 = sub_20C134104();
  (*(*(v21 - 8) + 56))(a5 + v20, 1, 1, v21);
  *(a5 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_items) = MEMORY[0x277D84F90];
  v22 = (a5 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
  *v22 = 0;
  v22[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v27, a5 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(v27, a5 + 88);
  *(a5 + 128) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(a5 + 32) = v27[0];
  v23 = (a5 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_queueType);
  *v23 = a2;
  v23[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650, &unk_20C15C0E0);
  sub_20C133AA4();
  sub_20B51C710(v27, a5 + 136);
  type metadata accessor for QueueMediaTagBuilder();
  v24 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();

  *(a5 + 176) = v24;
  (*(v17 + 16))(v19, a4 + *a6, v16);

  (*(v17 + 32))(a5 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_metricPage, v19, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v27, a5 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_subscriptionCache);
  sub_20C133AA4();
  sub_20B51C710(v27, a5 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(a5 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_subscriptionToken) = sub_20C13A914();
  swift_getObjectType();
  sub_20C138F84();
  swift_allocObject();
  swift_weakInit();
  sub_20BF98704(&qword_27C76C460, MEMORY[0x277D541F0], MEMORY[0x277D541E8]);

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v27);

  swift_getObjectType();
  sub_20C138FA4();
  swift_allocObject();
  swift_weakInit();
  sub_20BF98704(&qword_27C769A40, MEMORY[0x277D54200], MEMORY[0x277D541F8]);

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v27);

  swift_getObjectType();
  sub_20C139454();
  swift_allocObject();
  swift_weakInit();
  sub_20BF98704(&unk_281103B10, MEMORY[0x277D543B0], MEMORY[0x277D543A8]);

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v27);

  swift_getObjectType();
  sub_20C13B0D4();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v27);

  return a5;
}

id sub_20BF92358(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  v34 = a7;
  v33 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  v17 = sub_20C133E44();
  v19 = v18;
  v20 = sub_20C138204();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  type metadata accessor for PlaylistDetailDataProvider(0);
  swift_allocObject();

  sub_20B58C2C8(a2, a3);
  v21 = sub_20B7DA994(v17, v19, a1, a2, a3, v16);

  v22 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController());

  v23 = a3;
  v24 = a8;
  sub_20BF92620(a1, v21, a2, v23, a4, a5, v33, v34, v22);
  v26 = v25;
  sub_20B51CC64(v25 + OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_mediaTagStringBuilder, v35);
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v27 = v26;
  sub_20C134004();
  v28 = sub_20C138544();

  v29 = [v28 string];

  if (!v29)
  {
    sub_20C13C954();
    v29 = sub_20C13C914();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  [v27 setTitle_];

  sub_20BF23204(&unk_282287370);

  v30 = sub_20C134014();
  (*(*(v30 - 8) + 8))(v24, v30);
  return v27;
}

void sub_20BF92620(uint64_t a1, char *a2, void (*a3)(uint64_t, char *, uint64_t), unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, _BYTE *a9)
{
  v100 = a4;
  v99 = a3;
  ObjectType = swift_getObjectType();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = &v88 - v16;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v90 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v91 = &v88 - v19;
  MEMORY[0x28223BE20](v20);
  v92 = &v88 - v21;
  v89 = v22;
  MEMORY[0x28223BE20](v23);
  v94 = &v88 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7643F0, &qword_20C1536C0);
  MEMORY[0x28223BE20](v25 - 8);
  v101 = (&v88 - v26);
  v27 = sub_20C138204();
  v103 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v97 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106[3] = &type metadata for CatalogPageNavigator;
  v106[4] = &off_2822FB218;
  v29 = swift_allocObject();
  v106[0] = v29;
  *(v29 + 16) = a5;
  *(v29 + 24) = a6;
  *(v29 + 32) = a7;
  *&a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_resignActiveObserver] = 0;
  *(v29 + 40) = a8;
  v30 = &a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentContentInsetBehavior];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = -4;
  a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isTransitioningContentInset] = 0;
  a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_visibility] = 1;
  v31 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_standardNavigationBarTintColor;
  v32 = objc_opt_self();
  *&a9[v31] = [v32 whiteColor];
  *&a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_currentNavigationBarTintColor] = 0;
  a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_isBeyondScrollBoundary] = 0;
  *&a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  v33 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_mediaTagStringBuilder;
  sub_20B51C710(&v105, &a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_mediaTagStringBuilder]);
  *&a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_dataProvider] = a2;
  v34 = &a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_contentInsetInitialBehavior];
  *v34 = 0;
  v34[8] = 2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_eventHub] = v105;
  sub_20B51CC64(v106, &a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_platform] = v105;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(&v105, &a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_bookmarkClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v105, &a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v105, &a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_storefrontLocalizer]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_subscriptionToken] = sub_20C13A914();
  v35 = *(a2 + 4);
  v36 = *(a2 + 5);
  type metadata accessor for QueueActionsViewPresenter(0);
  v37 = swift_allocObject();

  v38 = sub_20BF91CC8(a1, v35, v36, a2, v37, &OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage, &unk_20C186EB8, &unk_20C186EC0, &unk_20C186EC8, &unk_20C186ED0);
  *&a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter] = v38;
  sub_20B51CC64(&a9[v33], &v105);
  v39 = objc_allocWithZone(type metadata accessor for QueueActionsView());

  v98 = a1;
  v40 = sub_20BF91514(a1, v38, &v105, 0, v39);
  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a9[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsView] = v40;
  v104.receiver = a9;
  v104.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v104, sel_initWithNibName_bundle_, 0, 0);
  v42 = [v41 view];
  if (v42)
  {
    v43 = v42;
    sub_20B58CFB0(v99, v100);
    v44 = [v32 systemBackgroundColor];
    [v43 setBackgroundColor_];

    v45 = OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter;
    v46 = *&v41[OBJC_IVAR____TtC9SeymourUI28PlaylistDetailViewController_queueActionsViewPresenter];
    v47 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v48 = (v46 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
    v49 = *(v46 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
    v50 = *(v46 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue + 8);
    *v48 = sub_20BF28F70;
    v48[1] = v47;

    sub_20B583ECC(v49, v50);

    v51 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_playlist;
    swift_beginAccess();
    v52 = &a2[v51];
    v53 = v101;
    sub_20B52F9E8(v52, v101, &qword_27C7643F0, &qword_20C1536C0);
    v54 = v103;
    LODWORD(v46) = (*(v103 + 6))(v53, 1, v27);

    v96 = a2;
    if (v46 == 1)
    {
      sub_20B520158(v53, &qword_27C7643F0, &qword_20C1536C0);
      v103 = v41;
      v55 = v91;
      sub_20B7D7B40(0, v91);
      sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
      v101 = sub_20C13D374();
      v56 = v93;
      ObjectType = *(v93 + 16);
      v57 = v90;
      v58 = v95;
      (ObjectType)(v90, v55, v95);
      v59 = (*(v56 + 80) + 16) & ~*(v56 + 80);
      v100 = v59;
      v60 = (v89 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      v99 = *(v56 + 32);
      v99(v61 + v59, v57, v58);
      *(v61 + v60) = v101;
      v62 = v92;
      sub_20C137C94();
      v101 = *(v56 + 8);
      (v101)(v55, v58);
      v63 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v64 = swift_allocObject();
      *(v64 + 16) = sub_20BF290D8;
      *(v64 + 24) = v63;
      (ObjectType)(v55, v62, v58);
      v65 = swift_allocObject();
      v66 = v55;
      v41 = v103;
      v99(v65 + v100, v66, v58);
      v67 = (v65 + v60);
      *v67 = sub_20B5DF3D4;
      v67[1] = v64;
      v68 = v94;
      sub_20C137C94();
      v69 = v62;
      v70 = v101;
      (v101)(v69, v58);
      v71 = sub_20C137CB4();
      v72 = swift_allocObject();
      *(v72 + 16) = 0;
      *(v72 + 24) = 0;
      v71(sub_20B52347C, v72);

      v70(v68, v58);
LABEL_9:
      swift_getObjectType();
      sub_20C13A7B4();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_unknownObjectRetain();

      sub_20C13A7A4();

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(&v105);
      __swift_destroy_boxed_opaque_existential_1(v106);

      return;
    }

    v73 = v27;
    (*(v54 + 4))(v97, v53, v27);
    sub_20C1381D4();
    v74 = sub_20C13C914();

    [v41 setTitle_];

    v75 = sub_20C1381E4();
    v76 = *(v75 + 16);
    if (!v76)
    {
      a2 = MEMORY[0x277D84F90];
      goto LABEL_8;
    }

    v101 = v45;
    ObjectType = v73;
    a2 = sub_20BEDE85C(v76, 0);
    v77 = *(sub_20C133B74() - 8);
    sub_20BEE200C(&v105, &a2[(*(v77 + 80) + 32) & ~*(v77 + 80)], v76, v75);
    v79 = v78;
    v80 = v105;

    sub_20B583EDC(v80);
    if (v79 == v76)
    {
      v73 = ObjectType;
      v54 = v103;
      v45 = v101;
LABEL_8:
      *&v105 = a2;
      sub_20BF8F460(&v105);

      v81 = v105;
      v82 = *(v45 + v41);

      v83 = sub_20BEF6794(v81);

      *(v82 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_items) = v83;

      v84 = sub_20C13CDF4();
      v85 = v88;
      (*(*(v84 - 8) + 56))(v88, 1, 1, v84);
      v86 = swift_allocObject();
      v86[2] = 0;
      v86[3] = 0;
      v86[4] = v82;
      v86[5] = v83;

      sub_20B6383D0(0, 0, v85, &unk_20C184730, v86);

      (*(v54 + 1))(v97, v73);
      v87 = v41;
      goto LABEL_9;
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
}

void *sub_20BF934AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, void *a8)
{
  v19[3] = &type metadata for CatalogPageNavigator;
  v19[4] = &off_2822FB218;
  v16 = swift_allocObject();
  v19[0] = v16;
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  a8[2] = 0;
  a8[3] = 0;
  v17 = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  a8[12] = v17;
  a8[4] = a1;
  sub_20B51CC64(v19, (a8 + 5));
  a8[10] = a6;
  a8[11] = a7;
  [v17 setCountLimit_];
  __swift_destroy_boxed_opaque_existential_1(v19);
  return a8;
}

id sub_20BF93598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v26[3] = &type metadata for CatalogPageNavigator;
  v26[4] = &off_2822FB218;
  v14 = swift_allocObject();
  v26[0] = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  v15 = &a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentContentInsetBehavior];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = -4;
  a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isTransitioningContentInset] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_resignActiveObserver] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_visibility] = 1;
  v16 = OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_standardNavigationBarTintColor;
  *&a7[v16] = [objc_opt_self() whiteColor];
  *&a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_currentNavigationBarTintColor] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_isBeyondScrollBoundary] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dependencies] = a1;
  *&a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_eventHub] = v25[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v25, &a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v25, &a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_storefrontLocalizer]);
  v17 = &a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_contentInsetInitialBehavior];
  *v17 = 0;
  v17[8] = 0;
  sub_20B51CC64(v26, &a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_platform] = v25[0];
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_subscriptionToken] = sub_20C13A914();
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_upNextQueueButtonPresenter] = sub_20B887320(v18);
  v19 = sub_20BE8C450(&unk_2822872A8);

  v21 = sub_20BAB9360(v20, v19, 0);

  *&a7[OBJC_IVAR____TtC9SeymourUI46CatalogEditorialCollectionDetailViewController_upNextQueueButton] = v21;
  v24.receiver = a7;
  v24.super_class = type metadata accessor for CatalogEditorialCollectionDetailViewController();
  v22 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v26);
  *(a2 + 24) = &off_2822DFFF8;
  swift_unknownObjectWeakAssign();
  return v22;
}

char *sub_20BF93914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v67 = a2;
  v13 = sub_20C1333A4();
  MEMORY[0x28223BE20](v13 - 8);
  v66 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C13C654();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72[3] = &type metadata for CatalogPageNavigator;
  v72[4] = &off_2822FB218;
  v19 = swift_allocObject();
  v72[0] = v19;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  v20 = &a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -4;
  a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isTransitioningContentInset] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_visibility] = 1;
  v21 = OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v22 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0, &unk_20C180F80);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = MEMORY[0x277D84F98];
  *(v22 + 16) = v23;
  *&a7[v21] = v22;
  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_resignActiveObserver] = 0;
  v24 = OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_standardNavigationBarTintColor;
  *&a7[v24] = [objc_opt_self() blackColor];
  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentStatusBarStyle] = 3;
  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentNavigationBarTintColor] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isBeyondScrollBoundary] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v69, &a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v69, &a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_storefrontLocalizer]);
  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider] = v67;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_eventHub] = v69;
  sub_20B51CC64(v72, &a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_platform] = v69;
  sub_20C13C734();

  v25 = sub_20C13C724();
  sub_20C13C644();
  v26 = type metadata accessor for MarketingOverlayImpressionsTracker(0);
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D221C0];
  *(v27 + 16) = v25;
  *(v27 + 24) = v28;
  (*(v16 + 32))(v27 + OBJC_IVAR____TtC9SeymourUI34MarketingOverlayImpressionsTracker_context, v18, v15);
  v70 = v26;
  v71 = sub_20BF98704(&qword_27C76FC30, type metadata accessor for MarketingOverlayImpressionsTracker, &unk_20C161718);
  *&v69 = v27;
  type metadata accessor for MarketingHostedControllerCoordinator();
  v29 = swift_allocObject();
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v69, v26);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = (&v66 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v34 + 16))(v33, v31);
  v35 = sub_20BE8C464(a1, *v33, v29);

  __swift_destroy_boxed_opaque_existential_1(&v69);
  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingHostedContentCoordinator] = v35;
  sub_20B51CC64(v35 + 40, &v69);
  v36 = v70;
  v37 = __swift_project_boxed_opaque_existential_1(&v69, v70);

  v38 = v66;
  v39 = v67;
  v40 = sub_20BB9D2F0(v66);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = (&v66 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v37, v36, v41);
  v45 = sub_20BE8C638(a1, v35, *v43, v38);

  __swift_destroy_boxed_opaque_existential_1(&v69);
  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingMessageViewControllerHandler] = v45;
  type metadata accessor for CatalogPageSortOptionsDataProvider();
  v46 = swift_allocObject();

  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v46 + 4, v46[7]);
  v47 = sub_20C138D34();
  v49 = v48;

  v46[2] = v47;
  v46[3] = v49;
  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_sortOptionsDataProvider] = v46;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_subscriptionToken] = sub_20C13A914();
  v50 = &a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_contentInsetInitialBehavior];
  *v50 = 0;
  v50[8] = 3;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_upNextQueueButtonPresenter] = sub_20B887320(v51);
  v52 = sub_20BE8C450(&unk_282287348);

  v54 = sub_20BAB9360(v53, v52, 0);

  *&a7[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_upNextQueueButton] = v54;
  v55 = type metadata accessor for CatalogModalityDetailViewController();
  v68.receiver = a7;
  v68.super_class = v55;
  v56 = objc_msgSendSuper2(&v68, sel_initWithNibName_bundle_, 0, 0);
  *(v39 + 24) = &off_2822FBC68;
  swift_unknownObjectWeakAssign();
  v57 = *&v56[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingHostedContentCoordinator];
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = *(v57 + 136);
  v60 = *(v57 + 144);
  *(v57 + 136) = sub_20BF983B0;
  *(v57 + 144) = v58;
  v61 = v56;

  sub_20B583ECC(v59, v60);

  swift_getObjectType();
  sub_20C139404();
  v66 = OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_subscriptionToken;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BF98704(&unk_27C769C10, MEMORY[0x277D54398], MEMORY[0x277D54390]);
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v69);
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = swift_allocObject();
  v64 = v67;
  *(v63 + 16) = v62;
  *(v63 + 24) = v64;
  sub_20BF98704(&qword_27C7710D0, type metadata accessor for FilterResultUpdated, &unk_20C16F370);

  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v69);
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B86FA88();
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v69);
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20B86FB30();
  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v69);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return v61;
}

id sub_20BF944F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v26[3] = &type metadata for CatalogPageNavigator;
  v26[4] = &off_2822FB218;
  v14 = swift_allocObject();
  v26[0] = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  v15 = &a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentContentInsetBehavior];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = -4;
  a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isTransitioningContentInset] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_visibility] = 1;
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_resignActiveObserver] = 0;
  v16 = OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_standardNavigationBarTintColor;
  *&a7[v16] = [objc_opt_self() whiteColor];
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_currentNavigationBarTintColor] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_isBeyondScrollBoundary] = 0;
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dependencies] = a1;
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_eventHub] = v25[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763C20, &qword_20C155098);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_localeAnalyzer] = v25[0];
  sub_20B51CC64(v26, &a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_platform] = v25[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v25, &a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v25, &a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_storefrontLocalizer]);
  v17 = &a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_contentInsetInitialBehavior];
  *v17 = 0;
  v17[8] = 3;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_upNextQueueButtonPresenter] = sub_20B887320(v18);
  v19 = sub_20BE8C450(&unk_282287398);

  v21 = sub_20BAB9360(v20, v19, 0);

  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogProgramDetailViewController_upNextQueueButton] = v21;
  v24.receiver = a7;
  v24.super_class = type metadata accessor for CatalogProgramDetailViewController();
  v22 = objc_msgSendSuper2(&v24, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v26);
  *(a2 + 24) = &off_282301B70;
  swift_unknownObjectWeakAssign();
  return v22;
}

char *sub_20BF94870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v14 = sub_20C1333A4();
  MEMORY[0x28223BE20](v14 - 8);
  v70 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C13C654();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75[3] = &type metadata for CatalogPageNavigator;
  v75[4] = &off_2822FB218;
  v20 = swift_allocObject();
  v75[0] = v20;
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  v21 = &a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = -4;
  a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isTransitioningContentInset] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_visibility] = 1;
  v22 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v23 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0, &unk_20C180F80);
  v24 = swift_allocObject();
  *(v24 + 24) = 0;
  *(v24 + 16) = MEMORY[0x277D84F98];
  *(v23 + 16) = v24;
  *&a7[v22] = v23;
  v25 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dynamicOfferCoordinator;
  *&a7[v25] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v26 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseCoordinator;
  *&a7[v26] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v27 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseHandler;
  *&a7[v27] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_resignActiveObserver] = 0;
  v28 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_webUserInterfaceCoordinator;
  *&a7[v28] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  v29 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_standardNavigationBarTintColor;
  *&a7[v29] = [objc_opt_self() whiteColor];
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isBeyondScrollBoundary] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00, &unk_20C14FD60);
  sub_20C133AA4();
  sub_20B51C710(&v72, &a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_accountProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_bag] = v72;
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dependencies] = a1;
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_eventHub] = v72;
  sub_20C13C734();

  v30 = sub_20C13C724();
  sub_20C13C644();
  v31 = type metadata accessor for MarketingOverlayImpressionsTracker(0);
  v32 = swift_allocObject();
  v33 = MEMORY[0x277D221C0];
  *(v32 + 16) = v30;
  *(v32 + 24) = v33;
  (*(v17 + 32))(v32 + OBJC_IVAR____TtC9SeymourUI34MarketingOverlayImpressionsTracker_context, v19, v16);
  v73 = v31;
  v74 = sub_20BF98704(&qword_27C76FC30, type metadata accessor for MarketingOverlayImpressionsTracker, &unk_20C161718);
  *&v72 = v32;
  type metadata accessor for MarketingHostedControllerCoordinator();
  v34 = swift_allocObject();
  v35 = __swift_mutable_project_boxed_opaque_existential_1(&v72, v31);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = (&v69 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38, v36);
  v40 = sub_20BE8C464(a1, *v38, v34);

  __swift_destroy_boxed_opaque_existential_1(&v72);
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingHostedContentCoordinator] = v40;
  sub_20B51CC64(v40 + 40, &v72);
  v41 = v73;
  v42 = __swift_project_boxed_opaque_existential_1(&v72, v73);

  v43 = v70;
  v44 = a2;
  v45 = sub_20C10FB64(v70);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (&v69 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v42, v41, v46);
  v50 = sub_20BE8C638(a1, v40, *v48, v43);

  __swift_destroy_boxed_opaque_existential_1(&v72);
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingMessageViewControllerHandler] = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090, &unk_20C14F940);
  sub_20C133AA4();
  sub_20B51C710(&v72, &a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingMetricFieldsProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769450, &unk_20C1839F0);
  sub_20C133AA4();
  sub_20B51C710(&v72, &a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingSubscriptionStatusProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40, &unk_20C16DEE0);
  sub_20C133AA4();
  sub_20B51C710(&v72, &a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_networkEvaluator]);
  sub_20B51CC64(v75, &a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_pageNavigator]);
  sub_20C133AA4();
  v51 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_platform;
  a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_platform] = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v72, &a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v72, &a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_storefrontLocalizer]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_subscriptionToken] = sub_20C13A914();
  v52 = &a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_contentInsetInitialBehavior];
  v53 = 0x4030000000000000;
  if (a7[v51] == 1)
  {
    v54 = 0;
  }

  else
  {
    v53 = 0;
    v54 = 3;
  }

  *v52 = v53;
  v52[8] = v54;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButtonPresenter] = sub_20B887320(v55);
  v56 = sub_20BE8C450(&unk_2822873E8);

  v58 = sub_20BAB9360(v57, v56, 0);

  *&a7[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButton] = v58;
  v59 = type metadata accessor for CatalogWorkoutDetailViewController();
  v71.receiver = a7;
  v71.super_class = v59;
  v60 = objc_msgSendSuper2(&v71, sel_initWithNibName_bundle_, 0, 0);
  *(v44 + 24) = &off_2822F54D8;
  swift_unknownObjectWeakAssign();
  v61 = *&v60[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingHostedContentCoordinator];
  v62 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v63 = *(v61 + 136);
  v64 = *(v61 + 144);
  *(v61 + 136) = sub_20BF02BE4;
  *(v61 + 144) = v62;
  v65 = v60;

  sub_20B583ECC(v63, v64);

  v66 = &v65[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_eventHub];
  *(*&v65[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v65[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  v67 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  *(*&v65[v67] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *(v66 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  *(*&v65[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v66 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B86FA88();
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v72);
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20B86FB30();
  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v72);
  __swift_destroy_boxed_opaque_existential_1(v75);
  return v65;
}

uint64_t sub_20BF95494(uint64_t a1)
{
  v1 = sub_20C133E94();
  if ((v3 & 1) == 0)
  {
    sub_20B583F4C(v1, v2, 0);
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD00000000000003DLL, 0x800000020C1A5750);
    v6 = sub_20C133E94();
    v8 = v7;
    v10 = v9 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710B0, &qword_20C186EB0);
    sub_20C133BB4();
    sub_20B583F4C(v6, v8, v10);
    MEMORY[0x20F2F4230]();

    goto LABEL_6;
  }

  v4 = v1;
  result = 1;
  if (((1 << v4) & 0x1BE) == 0)
  {
    if (v4 != 6)
    {
      while (1)
      {
        sub_20C13DC94();
        MEMORY[0x20F2F4230](0xD00000000000003DLL, 0x800000020C1A5750);
        v11 = sub_20C135984();
        MEMORY[0x20F2F4230](v11);

LABEL_6:
        sub_20C13DE24();
        __break(1u);
      }
    }

    return 0;
  }

  return result;
}

id sub_20BF95640(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, _BYTE *a9)
{
  ObjectType = swift_getObjectType();
  v36[3] = &type metadata for CatalogPageNavigator;
  v36[4] = &off_2822FB218;
  v16 = swift_allocObject();
  v36[0] = v16;
  *(v16 + 16) = a5;
  *(v16 + 24) = a6;
  *(v16 + 32) = a7;
  *(v16 + 40) = a8;
  *&a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_resignActiveObserver] = 0;
  v17 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_navigationTitleView;
  v18 = objc_allocWithZone(type metadata accessor for CalendarTitleView());

  swift_unknownObjectRetain();
  v19 = [v18 initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a9[v17] = v19;
  a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_isViewTransitioningToSize] = 0;
  v20 = &a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_latestContentSize];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  type metadata accessor for WorkoutPlanCalendarCoordinator(0);
  v21 = swift_allocObject();
  *(v21 + 24) = 0u;
  *(v21 + 40) = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 72) = 1;
  v22 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_metadata;
  v23 = type metadata accessor for WorkoutPlanScheduleMetadata(0);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  v24 = v21 + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_weekdayDelegate;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = OBJC_IVAR____TtC9SeymourUI30WorkoutPlanCalendarCoordinator_workoutPlan;
  v26 = sub_20C133954();
  (*(*(v26 - 8) + 56))(v21 + v25, 1, 1, v26);
  type metadata accessor for WorkoutPlanStringBuilder(0);

  sub_20C133AA4();

  *(v21 + 16) = v35;
  *&a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_eventHub] = v35;
  sub_20B51CC64(v36, &a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_pageNavigator]);
  sub_20C133AA4();
  a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_platform] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v35, &a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_storefrontLocalizer]);
  type metadata accessor for WorkoutPlanSchedulePageDataProviderX(0);
  swift_allocObject();

  sub_20B58C2C8(a3, a4);
  v27 = sub_20BCD6F5C(v21, a1, a3, a4, a2);

  *&a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_dataProvider] = v27;
  *&a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_calendarCoordinator] = v21;
  type metadata accessor for WorkoutPlanHostedContentCoordinator();
  v28 = swift_allocObject();

  *&a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_hostedContentCoordinator] = sub_20BF934AC(a1, a5, a6, a7, a8, a3, a4, v28);
  sub_20C133AA4();
  *&a9[OBJC_IVAR____TtC9SeymourUI33WorkoutPlanScheduleViewController_workoutPlanStringBuilder] = v35;
  v34.receiver = a9;
  v34.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v34, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(v36);
  return v29;
}

void sub_20BF95A98(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a3;
  v55 = a4;
  v8 = sub_20C132C14();
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_20C134284();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v52 = &v41[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v41[-v16];
  v18 = sub_20C13BB84();
  v49 = *(v18 - 8);
  v50 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v41[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20C13B534();
  v21 = *(v13 + 16);
  v53 = a2;
  v51 = v12;
  v48 = v21;
  v21(v17, a2, v12);
  v22 = sub_20C13BB74();
  v23 = sub_20C13D1F4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v45 = a1;
    v25 = v24;
    v43 = swift_slowAlloc();
    v56 = v43;
    *v25 = 141558274;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2080;
    v26 = v11;
    v42 = v23;
    sub_20C134254();
    sub_20BF98704(&qword_27C768AB0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v27 = v46;
    v28 = sub_20C13DFA4();
    v44 = a5;
    v30 = v29;
    (*(v47 + 8))(v26, v27);
    v31 = v17;
    v32 = v51;
    (*(v13 + 8))(v31, v51);
    v33 = sub_20B51E694(v28, v30, &v56);
    a5 = v44;

    *(v25 + 14) = v33;
    _os_log_impl(&dword_20B517000, v22, v42, "[CatalogPageNavigating] Did select preview with URL - %{mask.hash}s", v25, 0x16u);
    v34 = v43;
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x20F2F6A40](v34, -1, -1);
    v35 = v25;
    a1 = v45;
    MEMORY[0x20F2F6A40](v35, -1, -1);
  }

  else
  {

    v36 = v17;
    v32 = v51;
    (*(v13 + 8))(v36, v51);
  }

  (*(v49 + 8))(v20, v50);
  v37 = v52;
  v48(v52, v53, v32);
  v38 = objc_allocWithZone(type metadata accessor for PreviewPlayerViewController(0));

  v39 = v55;

  v40 = sub_20BD8C614(a5, v37, v54, v39);

  [a1 presentViewController:v40 animated:1 completion:0];
}

char *sub_20BF95EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a10;
  v39 = a8;
  v40 = a9;
  v17 = sub_20C1352F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = &type metadata for CatalogPageNavigator;
  v44[4] = &off_2822FB218;
  v21 = swift_allocObject();
  v44[0] = v21;
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  v22 = type metadata accessor for EditorialGalleryViewController(0);
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentContentInsetBehavior];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = -4;
  v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isTransitioningContentInset] = 0;
  *&v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_resignActiveObserver] = 0;
  v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_visibility] = 1;
  v25 = OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_metricPageCategory;
  (*(v18 + 104))(&v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_metricPageCategory], *MEMORY[0x277D51838], v17);
  v26 = OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_standardNavigationBarTintColor;
  *&v23[v26] = [objc_opt_self() whiteColor];
  *&v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_currentNavigationBarTintColor] = 0;
  v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_isBeyondScrollBoundary] = 0;
  (*(v18 + 16))(v20, &v23[v25], v17);
  type metadata accessor for EditorialGalleryDataProvider(0);
  swift_allocObject();

  v28 = sub_20BBCCA34(v27, a6, a7, v39, v20);

  *&v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dataProvider] = v28;
  *&v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_eventHub] = v43[0];
  v29 = &v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_galleryTitle];
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  sub_20B51CC64(v44, &v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_pageNavigator]);
  sub_20C133AA4();
  v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_platform] = v43[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v43, &v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v43, &v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_storefrontLocalizer]);
  v31 = &v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_contentInsetInitialBehavior];
  *v31 = 0;
  v31[8] = 0;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_upNextQueueButtonPresenter] = sub_20B887320(v32);
  v33 = sub_20BE8C450(&unk_2822874B8);

  v35 = sub_20BAB9360(v34, v33, 0);

  *&v23[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_upNextQueueButton] = v35;
  v42.receiver = v23;
  v42.super_class = v22;
  v36 = objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v44);
  *(*&v36[OBJC_IVAR____TtC9SeymourUI30EditorialGalleryViewController_dataProvider] + 24) = &off_2822EE930;
  swift_unknownObjectWeakAssign();
  return v36;
}

char *sub_20BF96370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a10;
  v39 = a8;
  v40 = a9;
  v17 = sub_20C1352F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = &type metadata for CatalogPageNavigator;
  v44[4] = &off_2822FB218;
  v21 = swift_allocObject();
  v44[0] = v21;
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4;
  *(v21 + 40) = a5;
  v22 = type metadata accessor for GuidedWorkoutGalleryViewController(0);
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentContentInsetBehavior];
  *v24 = 0;
  *(v24 + 1) = 0;
  v24[16] = -4;
  v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isTransitioningContentInset] = 0;
  *&v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_resignActiveObserver] = 0;
  v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_visibility] = 1;
  v25 = OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_metricPageCategory;
  (*(v18 + 104))(&v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_metricPageCategory], *MEMORY[0x277D51838], v17);
  v26 = OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_standardNavigationBarTintColor;
  *&v23[v26] = [objc_opt_self() whiteColor];
  *&v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_currentNavigationBarTintColor] = 0;
  v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_isBeyondScrollBoundary] = 0;
  (*(v18 + 16))(v20, &v23[v25], v17);
  type metadata accessor for GuidedWorkoutGalleryDataProvider(0);
  swift_allocObject();

  v28 = sub_20B63E03C(v27, a6, a7, v39, v20);

  *&v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_dataProvider] = v28;
  *&v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_eventHub] = v43[0];
  v29 = &v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_galleryTitle];
  v30 = v41;
  *v29 = v40;
  v29[1] = v30;
  sub_20B51CC64(v44, &v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_pageNavigator]);
  sub_20C133AA4();
  v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_platform] = v43[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v43, &v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v43, &v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_storefrontLocalizer]);
  v31 = &v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_contentInsetInitialBehavior];
  *v31 = 0;
  v31[8] = 0;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_upNextQueueButtonPresenter] = sub_20B887320(v32);
  v33 = sub_20BE8C450(&unk_2822874E0);

  v35 = sub_20BAB9360(v34, v33, 0);

  *&v23[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_upNextQueueButton] = v35;
  v42.receiver = v23;
  v42.super_class = v22;
  v36 = objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v44);
  *(*&v36[OBJC_IVAR____TtC9SeymourUI34GuidedWorkoutGalleryViewController_dataProvider] + 24) = &off_2822A7568;
  swift_unknownObjectWeakAssign();
  return v36;
}

char *sub_20BF967F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  ObjectType = swift_getObjectType();
  v28[3] = &type metadata for CatalogPageNavigator;
  v28[4] = &off_2822FB218;
  v17 = swift_allocObject();
  v28[0] = v17;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  v18 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dynamicOfferCoordinator;
  *&a8[v18] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v19 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_purchaseCoordinator;
  *&a8[v19] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v20 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_purchaseHandler;
  *&a8[v20] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v21 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_webUserInterfaceCoordinator;
  *&a8[v21] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  *&a8[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_resignActiveObserver] = 0;
  a8[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_visibility] = 1;
  *&a8[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *&a8[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_bag] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a8[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_eventHub] = v27;
  sub_20B51CC64(v28, &a8[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_pageNavigator]);
  sub_20C133AA4();
  a8[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_platform] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v27, &a8[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_storefrontLocalizer]);
  v22 = &a8[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_galleryTitle];
  *v22 = a6;
  v22[1] = a7;
  type metadata accessor for WorkoutPlanGalleryDataProvider(0);
  swift_allocObject();

  *&a8[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dataProvider] = sub_20BACFFA8(v23);
  v26.receiver = a8;
  v26.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v26, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v28);
  *(*&v24[OBJC_IVAR____TtC9SeymourUI32WorkoutPlanGalleryViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30WorkoutPlanGalleryDataProvider_delegate + 8) = &off_2822D9150;
  swift_unknownObjectWeakAssign();
  return v24;
}

char *sub_20BF96B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v20[3] = &type metadata for CatalogPageNavigator;
  v20[4] = &off_2822FB218;
  v14 = swift_allocObject();
  v20[0] = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_visibility] = 1;
  *(v14 + 40) = a6;
  *&a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_resignActiveObserver] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_hasPostedEnterEvent] = 0;
  a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_hasPostedExitEvent] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_bag] = v18;
  *&a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_dependencies] = a1;
  *&a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_eventHub] = v18;
  sub_20B51CC64(v20, &a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_pageNavigator]);
  sub_20C133AA4();
  a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_platform] = v18;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a7[OBJC_IVAR____TtC9SeymourUI31CatalogTipGalleryViewController_subscriptionToken] = sub_20C13A914();
  v19.receiver = a7;
  v19.super_class = type metadata accessor for CatalogTipGalleryViewController();
  v15 = objc_msgSendSuper2(&v19, sel_initWithNibName_bundle_, 0, 0);
  *(a2 + 24) = &off_2822A3438;
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  sub_20C139404();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BF98704(&unk_27C769C10, MEMORY[0x277D54398], MEMORY[0x277D54390]);
  v16 = v15;
  swift_unknownObjectRetain();

  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v18);
  __swift_destroy_boxed_opaque_existential_1(v20);
  return v16;
}

void sub_20BF96E4C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WorkoutSessionConfiguration(0);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  v50 = sub_20C13BB84();
  v14 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v52 = a2;
  sub_20BF982E8(a2, v13, type metadata accessor for WorkoutSessionConfiguration);
  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v48 = a3;
    v21 = v20;
    v53 = v20;
    *v19 = 141558274;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2080;
    sub_20C1344C4();
    v49 = a1;
    sub_20BF98704(&qword_27C769BF0, MEMORY[0x277D50820], MEMORY[0x277D50838]);
    v22 = sub_20C13DFA4();
    v24 = v23;
    sub_20BF98350(v13, type metadata accessor for WorkoutSessionConfiguration);
    v25 = sub_20B51E694(v22, v24, &v53);
    a1 = v49;

    *(v19 + 14) = v25;
    _os_log_impl(&dword_20B517000, v17, v18, "[CatalogPageNavigating] Did select %{mask.hash}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v26 = v21;
    a3 = v48;
    MEMORY[0x20F2F6A40](v26, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  else
  {

    sub_20BF98350(v13, type metadata accessor for WorkoutSessionConfiguration);
  }

  (*(v14 + 8))(v16, v50);
  sub_20BF982E8(v52, v10, type metadata accessor for WorkoutSessionConfiguration);
  v27 = v51;
  sub_20BF982E8(v10, v51, type metadata accessor for WorkoutSessionConfiguration);
  v28 = swift_retain_n();
  v29 = sub_20B9C04B4(v28, v27);
  v30 = objc_allocWithZone(type metadata accessor for SessionViewController(0));
  v31 = sub_20BFE1644(a3, v29, 0, 0, 0, 0);
  sub_20BF98350(v10, type metadata accessor for WorkoutSessionConfiguration);
  [v31 setModalPresentationStyle_];
  v32 = sub_20C1344B4();
  v34 = v33;
  v36 = v35;
  v37 = sub_20C133B84();
  sub_20B583F4C(v32, v34, v36 & 1);
  if ((v37 & 1) == 0 || (v38 = [a1 tabBarController]) == 0)
  {
LABEL_9:
    v42 = [a1 navigationController];
    if (v42)
    {
      v43 = v42;
      ObjectType = swift_getObjectType();
      v45 = swift_conformsToProtocol2();
      if (v45)
      {
        v46 = v45;
        v47 = v31;
        PictureInPictureSurrogateProtocol<>.presentSessionViewController(_:animated:completion:)(v47, &protocol witness table for SessionViewController, 1, 0, 0, ObjectType, v46);

        goto LABEL_14;
      }
    }

    [a1 presentViewController:v31 animated:1 completion:0];
    goto LABEL_14;
  }

  v39 = v38;
  v40 = swift_getObjectType();
  v41 = swift_conformsToProtocol2();
  if (!v41)
  {

    goto LABEL_9;
  }

  MiniPlayerHosting<>.presentSessionViewController(_:animated:completion:)(v31, 1, 0, 0, v40, v41);

LABEL_14:
}

char *sub_20BF97354(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, _BYTE *a8)
{
  ObjectType = swift_getObjectType();
  v43 = sub_20C1333A4();
  v16 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48[3] = &type metadata for CatalogPageNavigator;
  v48[4] = &off_2822FB218;
  v19 = swift_allocObject();
  v48[0] = v19;
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  *(v19 + 32) = a6;
  v20 = &a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_currentContentInsetBehavior];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -4;
  a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_isTransitioningContentInset] = 0;
  a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_visibility] = 1;
  *(v19 + 40) = a7;
  *&a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_resignActiveObserver] = 0;
  *&a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dependencies] = a1;
  sub_20B51CC64(v48, &a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_pageNavigator]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_eventHub] = v49[0];
  sub_20C133AA4();
  v21 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_platform;
  a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_platform] = v49[0];
  v22 = &a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_contentInsetInitialBehavior];
  *v22 = 0;
  v22[8] = 2;
  type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
  swift_allocObject();

  v24 = sub_20B697898(v23, a2, a3);

  v25 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider;
  *&a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider] = v24;
  type metadata accessor for WorkoutPlanCreationStringProvider();
  v26 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();

  *(v26 + 64) = *&v49[0];
  *(v26 + 16) = 2;
  v27 = *&a8[v25];
  type metadata accessor for PageActionPresenter(0);
  v28 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v28 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState) = xmmword_20C1583B0;
  *(v28 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask) = 0;
  *(v28 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isFetchingMarketingOffer) = 0;
  *(v28 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isSubscribed) = 0;
  v29 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_marketingOffer;
  v30 = sub_20C138894();
  (*(*(v30 - 8) + 56))(v28 + v29, 1, 1, v30);
  type metadata accessor for PageActionPresenter.State(0);
  swift_storeEnumTagMultiPayload();
  sub_20C133AA4();
  *(v28 + 128) = v49[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650, &unk_20C15C0E0);
  sub_20C133AA4();
  sub_20B51C710(v49, v28 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v49, v28 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_subscriptionCache);
  v31 = v43;
  (*(v16 + 16))(v18, v27 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage, v43);

  (*(v16 + 32))(v28 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_metricPage, v18, v31);
  v32 = (v28 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_stringProvider);
  *v32 = v26;
  v32[1] = &off_2822D4B00;
  *(v28 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_supportedBehaviors) = 2;
  *(v28 + 184) = 3;
  *(v28 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_offerHint) = xmmword_20C186E40;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v28 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_subscriptionToken) = sub_20C13A914();

  v33 = sub_20BF98704(&unk_27C771080, type metadata accessor for PageActionPresenter, &unk_20C15FAB0);
  v34 = &a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_actionPresenter];
  *v34 = v28;
  v34[1] = v33;
  memset(v49, 0, sizeof(v49));
  v50 = 5;
  LOBYTE(v31) = a8[v21];
  v35 = objc_allocWithZone(type metadata accessor for PageActionMagicPocketView());
  v36 = sub_20BA99324(1, v49, v31);
  [v36 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_magicPocketView] = v36;
  sub_20C133AA4();
  LOBYTE(v21) = v47;
  v37 = type metadata accessor for PageScrollObserver();
  v38 = objc_allocWithZone(v37);
  *&v38[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v38[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_behaviors] = 1;
  v38[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_platform] = v21;
  v46.receiver = v38;
  v46.super_class = v37;
  v39 = objc_msgSendSuper2(&v46, sel_init);
  v40 = &a8[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_scrollObserver];
  *v40 = v39;
  v40[1] = &off_2822A5318;
  v45.receiver = a8;
  v45.super_class = ObjectType;
  v41 = objc_msgSendSuper2(&v45, sel_initWithNibName_bundle_, 0, 0);

  __swift_destroy_boxed_opaque_existential_1(v48);
  *(*&v41[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_actionPresenter] + 120) = &off_2823049D0;
  swift_unknownObjectWeakAssign();
  *(*&v41[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_dataProvider] + 24) = &off_2823049B0;
  swift_unknownObjectWeakAssign();
  *(*&v41[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanSurveyViewController_scrollObserver] + OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8) = &off_282304D30;
  swift_unknownObjectWeakAssign();
  return v41;
}

char *sub_20BF97A8C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  v53 = a8;
  v47 = a3;
  v45 = a2;
  v46 = a9;
  ObjectType = swift_getObjectType();
  v51 = sub_20C1333A4();
  v50 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C137054();
  v52 = v17;
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58[3] = &type metadata for CatalogPageNavigator;
  v58[4] = &off_2822FB218;
  v21 = swift_allocObject();
  v58[0] = v21;
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_visibility] = 1;
  *(v21 + 32) = a6;
  *&a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_resignActiveObserver] = 0;
  *(v21 + 40) = a7;
  *&a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_eventHub] = v59[0];
  sub_20B51CC64(v58, &a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_pageNavigator]);
  sub_20C133AA4();
  v48 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_platform;
  a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_platform] = v59[0];
  type metadata accessor for WorkoutPlanStringBuilder(0);
  sub_20C133AA4();
  *&a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_workoutPlanStringBuilder] = *&v59[0];
  (*(v18 + 16))(v20, a8, v17);
  type metadata accessor for WorkoutPlanReviewPageDataProvider(0);
  swift_allocObject();

  v23 = sub_20BD44D88(v22, v45, v47, v20, v46);

  v24 = OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider;
  *&a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider] = v23;
  type metadata accessor for WorkoutPlanCreationStringProvider();
  v25 = swift_allocObject();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20C133AA4();

  *(v25 + 64) = *&v59[0];
  *(v25 + 16) = 1;
  v26 = *&a10[v24];
  type metadata accessor for PageActionPresenter(0);
  v27 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v27 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_dataState) = xmmword_20C1583B0;
  *(v27 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask) = 0;
  *(v27 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isFetchingMarketingOffer) = 0;
  *(v27 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_isSubscribed) = 0;
  v28 = OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_marketingOffer;
  v29 = sub_20C138894();
  (*(*(v29 - 8) + 56))(v27 + v28, 1, 1, v29);
  type metadata accessor for PageActionPresenter.State(0);
  swift_storeEnumTagMultiPayload();
  sub_20C133AA4();
  *(v27 + 128) = v59[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768650, &unk_20C15C0E0);
  sub_20C133AA4();
  sub_20B51C710(v59, v27 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v59, v27 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_subscriptionCache);
  v30 = v50;
  v31 = v49;
  v32 = v51;
  (*(v50 + 16))(v49, v26 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanReviewPageDataProvider_metricPage, v51);

  (*(v30 + 32))(v27 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_metricPage, v31, v32);
  v33 = (v27 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_stringProvider);
  *v33 = v25;
  v33[1] = &off_2822D4B00;
  *(v27 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_supportedBehaviors) = 4;
  *(v27 + 184) = 13;
  v34 = (v27 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_offerHint);
  *v34 = 0;
  v34[1] = 0;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v27 + OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_subscriptionToken) = sub_20C13A914();

  v35 = sub_20BF98704(&unk_27C771080, type metadata accessor for PageActionPresenter, &unk_20C15FAB0);
  v36 = &a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_actionPresenter];
  *v36 = v27;
  v36[1] = v35;
  memset(v59, 0, sizeof(v59));
  v60 = 5;
  LOBYTE(v26) = a10[v48];
  v37 = objc_allocWithZone(type metadata accessor for PageActionMagicPocketView());
  v38 = sub_20BA99324(1, v59, v26);
  [v38 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_magicPocketView] = v38;
  sub_20C133AA4();
  LOBYTE(v27) = v57;
  v39 = type metadata accessor for PageScrollObserver();
  v40 = objc_allocWithZone(v39);
  *&v40[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v40[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_behaviors] = 1;
  v40[OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_platform] = v27;
  v56.receiver = v40;
  v56.super_class = v39;
  v41 = objc_msgSendSuper2(&v56, sel_init);
  v42 = &a10[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_scrollObserver];
  *v42 = v41;
  v42[1] = &off_2822A5318;
  v55.receiver = a10;
  v55.super_class = ObjectType;
  v43 = objc_msgSendSuper2(&v55, sel_initWithNibName_bundle_, 0, 0);

  (*(v18 + 8))(v53, v52);
  __swift_destroy_boxed_opaque_existential_1(v58);
  *(*&v43[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_actionPresenter] + 120) = &off_2822A5A00;
  swift_unknownObjectWeakAssign();
  *(*&v43[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_dataProvider] + 24) = &off_2822A59E0;
  swift_unknownObjectWeakAssign();
  *(*&v43[OBJC_IVAR____TtC9SeymourUI31WorkoutPlanReviewViewController_scrollObserver] + OBJC_IVAR____TtC9SeymourUI18PageScrollObserver_delegate + 8) = &off_2822A5D00;
  swift_unknownObjectWeakAssign();
  return v43;
}

uint64_t sub_20BF982E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BF98350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_17(void (*a1)(void, __n128), uint64_t a2)
{

  (a1)(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

double sub_20BF98438(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_20BF90ABC(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), &qword_27C7621E0, &unk_20C150360, &unk_2822FB560, sub_20BF98518);
}

uint64_t sub_20BF98554()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20C1161F8(v0);
}

uint64_t sub_20BF985E4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20C116378(v0);
}

uint64_t sub_20BF98674()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20C1165DC(v0);
}

uint64_t sub_20BF98704(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BF9874C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20C1165DC(v0);
}

uint64_t sub_20BF987EC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52A9D4;

  return sub_20C116378(v0);
}

uint64_t objectdestroy_139Tm()
{

  sub_20B71C190(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20BF98984()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

double sub_20BF989CC(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

unint64_t sub_20BF98AB4(uint64_t a1)
{
  result = sub_20BF98ADC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_20BF98ADC()
{
  result = qword_27C764A68;
  if (!qword_27C764A68)
  {
    sub_20C1382B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764A68);
  }

  return result;
}

void sub_20BF98B48()
{
  [*(*(*(v0 + OBJC_IVAR____TtC9SeymourUI33TVWorkoutPlanDetailViewController_dataProvider) + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) contentOffset];

  sub_20BDD7444(v1, v2);
}

void PictureInPictureDisplayHandling<>.dismissSessionViewController(animated:completion:)(char a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v4 presentedViewController];
  if (v13 && (v14 = v13, swift_getObjectType(), v15 = swift_conformsToProtocol2(), v14, v15))
  {
    sub_20C13B574();
    sub_20C13BB64();
    (*(v9 + 8))(v12, v8);
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_164;
      v16 = _Block_copy(aBlock);
    }

    else
    {
      v16 = 0;
    }

    [v4 dismissViewControllerAnimated:a1 & 1 completion:v16];
    _Block_release(v16);
  }

  else if (a2)
  {
    a2();
  }
}

void PictureInPictureDisplayHandling<>.showPictureInPictureActiveAlert(completion:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  if (qword_27C760CF0 != -1)
  {
    swift_once();
  }

  if (qword_27C760CF8 != -1)
  {
    swift_once();
  }

  v10 = sub_20C13C914();
  v11 = sub_20C13C914();
  v12 = [objc_opt_self() alertControllerWithTitle:v10 message:v11 preferredStyle:1];

  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v15 = sub_20C13C914();

  v16 = [objc_opt_self() actionWithTitle:v15 style:1 handler:0];

  [v12 addAction_];
  if (a1)
  {
    aBlock[4] = a1;
    aBlock[5] = a2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_3_2;
    a1 = _Block_copy(aBlock);
  }

  [v3 presentViewController:v12 animated:1 completion:a1];
  _Block_release(a1);
}

void PictureInPictureDisplayHandling<>.showPictureInPictureSupportingViewController(_:animated:completion:)(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = [v9 presentedViewController];
  if (v17)
  {

    v18 = [v9 presentedViewController];
    if (v18)
    {
      v19 = v18;
      v25 = a5;
      v20 = a8;
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      *(v22 + 16) = a6;
      *(v22 + 24) = a7;
      *(v22 + 32) = v20;
      *(v22 + 40) = a9;
      *(v22 + 48) = v21;
      *(v22 + 56) = a1;
      *(v22 + 64) = a2;
      *(v22 + 72) = a3 & 1;
      *(v22 + 80) = a4;
      *(v22 + 88) = v25;
      aBlock[4] = sub_20BF993F8;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20B7B548C;
      aBlock[3] = &block_descriptor_9_0;
      v23 = _Block_copy(aBlock);
      v24 = a1;
      sub_20B584050(a4, v25);

      [v19 dismissViewControllerAnimated:1 completion:v23];
      _Block_release(v23);
    }
  }

  else
  {

    PictureInPictureSurrogateProtocol<>.presentSessionViewController(_:animated:completion:)(a1, a2, a3 & 1, a4, a5, a6, a9);
  }
}

void sub_20BF99354(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    PictureInPictureSurrogateProtocol<>.presentSessionViewController(_:animated:completion:)(a2, a3, a4 & 1, a5, a6, a7, a10);
  }
}

void sub_20BF99484(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI18RootViewController_controllerDisplayCoordinator);
  v10 = *(v9 + 16);
  os_unfair_lock_lock(v10 + 6);
  sub_20B85BFB4(&v10[4], aBlock);
  os_unfair_lock_unlock(v10 + 6);
  if (LOBYTE(aBlock[0]) || (v12 = *(v9 + 16), MEMORY[0x28223BE20](v11), os_unfair_lock_lock((v12 + 24)), sub_20B85BF9C((v12 + 16), aBlock), os_unfair_lock_unlock((v12 + 24)), (v13 = aBlock[0]) == 0))
  {
    if (a3)
    {
      a3();
    }
  }

  else
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;
    v15[5] = a3;
    v15[6] = a4;
    aBlock[4] = sub_20BF9E744;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_104;
    v16 = _Block_copy(aBlock);

    sub_20B584050(a3, a4);

    [v13 dismissViewControllerAnimated:1 completion:v16];
    _Block_release(v16);
  }
}

void sub_20BF99674(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_controllerDisplayCoordinator);
  v10 = *(v9 + 16);
  os_unfair_lock_lock(v10 + 6);
  sub_20B85BFB4(&v10[4], aBlock);
  os_unfair_lock_unlock(v10 + 6);
  if (LOBYTE(aBlock[0]) || (v12 = *(v9 + 16), MEMORY[0x28223BE20](v11), os_unfair_lock_lock((v12 + 24)), sub_20B85BF9C((v12 + 16), aBlock), os_unfair_lock_unlock((v12 + 24)), (v13 = aBlock[0]) == 0))
  {
    if (a3)
    {
      a3();
    }
  }

  else
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;
    v15[5] = a3;
    v15[6] = a4;
    aBlock[4] = sub_20BF9D8CC;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_59_0;
    v16 = _Block_copy(aBlock);

    sub_20B584050(a3, a4);

    [v13 dismissViewControllerAnimated:1 completion:v16];
    _Block_release(v16);
  }
}

void sub_20BF99864(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v9 = *(v4 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_controllerDisplayCoordinator);
  v10 = *(v9 + 16);
  os_unfair_lock_lock(v10 + 6);
  sub_20B85B3AC(&v10[4], aBlock);
  os_unfair_lock_unlock(v10 + 6);
  if (LOBYTE(aBlock[0]) || (v12 = *(v9 + 16), MEMORY[0x28223BE20](v11), os_unfair_lock_lock((v12 + 24)), sub_20B85B3C8((v12 + 16), aBlock), os_unfair_lock_unlock((v12 + 24)), (v13 = aBlock[0]) == 0))
  {
    if (a3)
    {
      a3();
    }
  }

  else
  {
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = a1;
    v15[4] = a2;
    v15[5] = a3;
    v15[6] = a4;
    aBlock[4] = sub_20BF9D84C;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    aBlock[3] = &block_descriptor_165;
    v16 = _Block_copy(aBlock);

    sub_20B584050(a3, a4);

    [v13 dismissViewControllerAnimated:1 completion:v16];
    _Block_release(v16);
  }
}

void sub_20BF99A50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI18RootViewController_controllerDisplayCoordinator);
    v7 = Strong;

    v8 = *(v6 + 16);
    MEMORY[0x28223BE20](v9);
    os_unfair_lock_lock(v8 + 6);
    sub_20B85BF80(&v8[4]);
    os_unfair_lock_unlock(v8 + 6);
  }

  if (a4)
  {
    a4(Strong);
  }
}

void sub_20BF99B50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_controllerDisplayCoordinator);
    v7 = Strong;

    v8 = *(v6 + 16);
    MEMORY[0x28223BE20](v9);
    os_unfair_lock_lock(v8 + 6);
    sub_20B85BF80(&v8[4]);
    os_unfair_lock_unlock(v8 + 6);
  }

  if (a4)
  {
    a4(Strong);
  }
}

void sub_20BF99C50(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_controllerDisplayCoordinator);
    v7 = Strong;

    v8 = *(v6 + 16);
    MEMORY[0x28223BE20](v9);
    os_unfair_lock_lock(v8 + 6);
    sub_20B85B3FC(&v8[4]);
    os_unfair_lock_unlock(v8 + 6);
  }

  if (a4)
  {
    a4(Strong);
  }
}

void sub_20BF99D4C(void (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7];
  v9 = [v2 presentedViewController];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = *(*&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_controllerDisplayCoordinator] + 16);
      MEMORY[0x28223BE20](v11);
      *&v19[-16] = v13;
      v19[-8] = 0;
      os_unfair_lock_lock((v12 + 24));
      sub_20BF9E79C((v12 + 16), &v20);
      os_unfair_lock_unlock((v12 + 24));
      v14 = v21;
      if (v21)
      {
        v15 = v20;
        v16 = *&v2[OBJC_IVAR____TtC9SeymourUI18RootViewController_marketingHostedContentCoordinator];
        v17 = sub_20C13CDF4();
        (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = v16;
        v18[5] = v15;
        v18[6] = v14;

        sub_20B6383D0(0, 0, v8, &unk_20C187310, v18);

        sub_20BF99484(v15, v14, a1, a2);
      }

      else
      {
        if (a1)
        {
          a1();
        }
      }

      return;
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_20BF99F98(void (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7];
  v9 = [v2 presentedViewController];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = *(*&v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_controllerDisplayCoordinator] + 16);
      MEMORY[0x28223BE20](v11);
      *&v19[-16] = v13;
      v19[-8] = 0;
      os_unfair_lock_lock((v12 + 24));
      sub_20BF9E79C((v12 + 16), &v20);
      os_unfair_lock_unlock((v12 + 24));
      v14 = v21;
      if (v21)
      {
        v15 = v20;
        v16 = *&v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingHostedContentCoordinator];
        v17 = sub_20C13CDF4();
        (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = v16;
        v18[5] = v15;
        v18[6] = v14;

        sub_20B6383D0(0, 0, v8, &unk_20C187308, v18);

        sub_20BF99674(v15, v14, a1, a2);
      }

      else
      {
        if (a1)
        {
          a1();
        }
      }

      return;
    }
  }

  if (a1)
  {
    a1();
  }
}

void sub_20BF9A1E4(void (*a1)(void), uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220, &qword_20C151250);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v19[-v7];
  v9 = [v2 presentedViewController];
  if (v9)
  {
    v10 = v9;
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = *(*&v2[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_controllerDisplayCoordinator] + 16);
      MEMORY[0x28223BE20](v11);
      *&v19[-16] = v13;
      v19[-8] = 0;
      os_unfair_lock_lock((v12 + 24));
      sub_20B85BDB0((v12 + 16), &v20);
      os_unfair_lock_unlock((v12 + 24));
      v14 = v21;
      if (v21)
      {
        v15 = v20;
        v16 = *&v2[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingHostedContentCoordinator];
        v17 = sub_20C13CDF4();
        (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = v16;
        v18[5] = v15;
        v18[6] = v14;

        sub_20B6383D0(0, 0, v8, &unk_20C15DE40, v18);

        sub_20BF99864(v15, v14, a1, a2);
      }

      else
      {
        if (a1)
        {
          a1();
        }
      }

      return;
    }
  }

  if (a1)
  {
    a1();
  }
}

uint64_t sub_20BF9A428(void *a1, uint64_t a2, uint64_t a3)
{
  [a1 removeFromParentViewController];
  v7 = [a1 view];
  [v7 removeFromSuperview];

  v8 = *(*(v3 + OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider) + 48);
  sub_20C0C8A10(a2, a3, &v10);
  if (v11)
  {
    sub_20B51C710(&v10, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_20BD3EEBC();

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {

    return sub_20B520158(&v10, &qword_27C7711A8, &qword_20C187300);
  }
}

uint64_t sub_20BF9A530(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  [a1 removeFromParentViewController];
  v11 = [a1 view];
  [v11 removeFromSuperview];

  v12 = *(*(v5 + *a4) + *a5);
  sub_20C0C8A10(a2, a3, &v14);
  if (v15)
  {
    sub_20B51C710(&v14, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_20BD3EEBC();

    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {

    return sub_20B520158(&v14, &qword_27C7711A8, &qword_20C187300);
  }
}

uint64_t sub_20BF9A630(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  [v4 addChildViewController_];
  [a1 didMoveToParentViewController_];
  v8 = *(*&v4[OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider] + 48);
  v14[0] = a1;
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  sub_20BF9D864();
  v9 = v8;
  v10 = a1;
  sub_20C13DC04();
  sub_20C0C8A10(a2, a3, &v12);
  if (v13)
  {
    sub_20B51C710(&v12, v14);
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_20BD3EB90(v15);

    sub_20B51D9C4(v15);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {

    sub_20B51D9C4(v15);
    return sub_20B520158(&v12, &qword_27C7711A8, &qword_20C187300);
  }
}

uint64_t sub_20BF9A788(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = v5;
  [v8 addChildViewController_];
  [a1 didMoveToParentViewController_];
  v12 = *(*&v8[*a4] + *a5);
  v18[0] = a1;
  sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
  sub_20BF9D864();
  v13 = v12;
  v14 = a1;
  sub_20C13DC04();
  sub_20C0C8A10(a2, a3, &v16);
  if (v17)
  {
    sub_20B51C710(&v16, v18);
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_20BD3EB90(v19);

    sub_20B51D9C4(v19);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {

    sub_20B51D9C4(v19);
    return sub_20B520158(&v16, &qword_27C7711A8, &qword_20C187300);
  }
}

void sub_20BF9A900(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_20C1333A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(v4 + *a1) + 16);
  os_unfair_lock_lock((v11 + 24));
  v12 = *(*(v11 + 16) + 16);
  os_unfair_lock_unlock((v11 + 24));
  if (v12)
  {
    a4();
    sub_20B90D720(v10);
    (*(v8 + 8))(v10, v7);
  }
}

void sub_20BF9AA44(uint64_t *a1, uint64_t *a2)
{
  v41 = sub_20C132E94();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C13C634();
  v7 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v42 = v2;
  v10 = *(*(v2 + v9) + 16);
  os_unfair_lock_lock((v10 + 24));
  v11 = *(v10 + 16);

  os_unfair_lock_unlock((v10 + 24));
  v12 = 0;
  v13 = v11 + 64;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 64);
  v17 = *a2;
  v18 = (v14 + 63) >> 6;
  v36 = (v5 + 8);
  v37 = v17;
  v35 = (v7 + 8);
  v19 = &off_277D9A000;
  v45 = v11;
  v20 = v38;
  while (v16)
  {
LABEL_9:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = (v12 << 10) | (16 * v22);
    v24 = *(*(v11 + 56) + v23);
    if (v24)
    {
      v25 = *(v11 + 48) + v23;
      v26 = *v25;
      v27 = *(v25 + 8);

      v28 = v24;
      v29 = [v28 v19[312]];
      if (v29)
      {
        v30 = v29;
        v31 = __swift_project_boxed_opaque_existential_1((*(v42 + v37) + 40), *(*(v42 + v37) + 64));
        v44 = v28;
        v32 = *v31;
        sub_20B8ECC8C(v30, v26, v27, v20);

        v43 = *(v32 + 24);
        swift_getObjectType();
        v33 = v40;
        sub_20C132E84();
        v19 = &off_277D9A000;
        sub_20C13C664();

        (*v36)(v33, v41);
        (*v35)(v20, v39);
      }

      else
      {
      }

      v11 = v45;
    }
  }

  while (1)
  {
    v21 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v21 >= v18)
    {

      return;
    }

    v16 = *(v13 + 8 * v21);
    ++v12;
    if (v16)
    {
      v12 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_20BF9AD8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v23 = a5;
  v25 = a2;
  v22 = a1;
  v7 = sub_20C132E94();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C634();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13B804();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_20C13B884();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767750, "^[\t");
  sub_20C13B834();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  sub_20C13B7F4();
  sub_20C13B7E4();
  v30[3] = MEMORY[0x277D837D0];
  v30[0] = a3;
  v30[1] = a4;

  sub_20C13B7D4();
  sub_20B520158(v30, &unk_27C768A00, &qword_20C152F90);
  sub_20C13B7E4();
  sub_20C13B814();
  sub_20C13B854();

  (*(v15 + 8))(v17, v14);
  v18 = *(v24 + *v23);
  ObjectType = swift_getObjectType();
  v20 = (*(v25 + 56))(ObjectType);
  __swift_project_boxed_opaque_existential_1((v18 + 40), *(v18 + 64));
  sub_20B8ECC8C(v20, a3, a4, v12);
  swift_getObjectType();
  sub_20C132E84();
  sub_20C13C664();

  (*(v28 + 8))(v9, v29);
  return (*(v26 + 8))(v12, v27);
}

uint64_t sub_20BF9B1A4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v23 = a5;
  v25 = a2;
  v22 = a1;
  v7 = sub_20C132E94();
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C634();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13B804();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_20C13B884();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B874();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767750, "^[\t");
  sub_20C13B834();
  *(swift_allocObject() + 16) = xmmword_20C14F980;
  sub_20C13B7F4();
  sub_20C13B7E4();
  v30[3] = MEMORY[0x277D837D0];
  v30[0] = a3;
  v30[1] = a4;

  sub_20C13B7D4();
  sub_20B520158(v30, &unk_27C768A00, &qword_20C152F90);
  sub_20C13B7E4();
  sub_20C13B814();
  sub_20C13B854();

  (*(v15 + 8))(v17, v14);
  v18 = *(v24 + *v23);
  ObjectType = swift_getObjectType();
  v20 = (*(v25 + 56))(ObjectType);
  __swift_project_boxed_opaque_existential_1((v18 + 40), *(v18 + 64));
  sub_20B8ECC8C(v20, a3, a4, v12);
  swift_getObjectType();
  sub_20C132E84();
  sub_20C13C674();

  (*(v28 + 8))(v9, v29);
  return (*(v26 + 8))(v12, v27);
}

void sub_20BF9B5B4(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v46 = a2;
  v47 = a6;
  v44 = a5;
  LODWORD(v10) = a3;
  v12 = sub_20C1333A4();
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C13B884();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a4)
    {
      if (v10)
      {
        v21 = v47;
        if (!v47)
        {
          v22 = a4;
          sub_20BF9A530(v22, a1, v46, &OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page);
          v23 = v20;
          v20 = v22;
LABEL_12:

          goto LABEL_13;
        }

LABEL_8:
        v31 = v10;
        v32 = a7;
        v23 = v21;
        v33 = [v20 viewIfLoaded];
        v34 = [v33 window];

        if (v34)
        {

          if (v31)
          {
            ObjectType = swift_getObjectType();
            v36 = *&v20[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingMessageViewControllerHandler];
            v37 = *(v32 + 16);
            v38 = v36;
            v37(v36, ObjectType, v32);
            v23 = v23;
            sub_20BF9A788(v23, a1, v46, &OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page);
          }

          else
          {
            v39 = *(*&v20[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_page);
            v40 = v46;
            sub_20C0C1FA8(a1, v46);

            sub_20BF9AD8C(v23, v32, a1, v40, &OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingHostedContentCoordinator);
          }
        }

        goto LABEL_12;
      }

      v24 = a4;
      v42 = v16;
      v25 = v24;
      v26 = a1;
      v43 = v10;
      v10 = a7;
      v27 = a1;
      v28 = v46;
      sub_20BF99864(v26, v46, 0, 0);
      v29 = v27;
      v30 = v28;
      a1 = v27;
      a7 = v10;
      sub_20BF9B1A4(v25, v44, v29, v30, &OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingHostedContentCoordinator);
      sub_20C13B874();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767750, "^[\t");
      sub_20C13B834();
      *(swift_allocObject() + 16) = xmmword_20C14F980;
      sub_20C13B824();
      sub_20C13B854();

      (*(v42 + 8))(v18, v15);
      sub_20BB9D2F0(v14);
      LOBYTE(v10) = v43;
      sub_20B90D720(v14);

      (*(v45 + 8))(v14, v12);
    }

    v21 = v47;
    if (!v47)
    {
LABEL_13:

      return;
    }

    goto LABEL_8;
  }
}

void sub_20BF9BA2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C1333A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong presentedViewController];
    v9 = sub_20C1393F4();
    v10 = v9;
    if (v8)
    {
      sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
      v11 = sub_20C13D5F4();

      if (v11)
      {
        v13 = v7;
        sub_20BB9D2F0(v5);
        type metadata accessor for CatalogModalityDetailViewController();
        sub_20BF9D804(&qword_27C7711A0, v12, type metadata accessor for CatalogModalityDetailViewController, &unk_20C187058);
        sub_20C138C54();
        (*(v3 + 8))(v5, v2);
      }
    }

    else
    {
    }
  }
}

void sub_20BF9BBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_20C1333A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong presentedViewController];
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v15 = OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_modality;
      swift_beginAccess();
      sub_20B52F9E8(a3 + v15, v10, &unk_27C7710A0, &unk_20C156800);
      v16 = sub_20C134734();
      if ((*(*(v16 - 8) + 48))(v10, 1, v16) == 1)
      {

        sub_20B520158(v10, &unk_27C7710A0, &unk_20C156800);
        *(a3 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
      }

      else
      {
        sub_20B520158(v10, &unk_27C7710A0, &unk_20C156800);
        v17[1] = a3;
        sub_20BB9D2F0(v7);
        type metadata accessor for CatalogModalityPageDataProvider(0);
        sub_20BF9D804(&qword_27C76B738, 255, type metadata accessor for CatalogModalityPageDataProvider, &unk_20C170DD0);
        sub_20C138C54();

        (*(v5 + 8))(v7, v4);
      }
    }
  }
}

void sub_20BF9BE90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20BF9A900(&OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_controllerDisplayCoordinator, &OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingHostedContentCoordinator, &OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider, sub_20BB9D2F0);
  }
}

void sub_20BF9BF10(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_20BF9AA44(&OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_controllerDisplayCoordinator, &OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingHostedContentCoordinator);
  }
}

void sub_20BF9C00C(uint64_t a1)
{
  v2 = a1;
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CatalogModalityDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, v2 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentNavigationBarTintColor];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentNavigationBarTintColor];
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_standardNavigationBarTintColor];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  v9 = v1[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior + 16];
  if (v9 <= 0xFB)
  {
    if (v9 >> 6 > 1)
    {
      sub_20C13DC94();
      MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
      sub_20C13DDF4();
      sub_20C1380E4();
    }

    else
    {
      sub_20BE8F76C();
    }
  }
}

uint64_t sub_20BF9C29C(char a1)
{
  v2 = v1;
  v19 = sub_20C1333A4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CatalogModalityDetailViewController();
  v21.receiver = v2;
  v21.super_class = v10;
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  v11 = *&v2[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider];
  sub_20BB9DC90();
  v12 = OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_modality;
  swift_beginAccess();
  sub_20B52F9E8(v11 + v12, v9, &unk_27C7710A0, &unk_20C156800);
  v13 = sub_20C134734();
  v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
  sub_20B520158(v9, &unk_27C7710A0, &unk_20C156800);
  if (v14 == 1)
  {
    *(v11 + OBJC_IVAR____TtC9SeymourUI31CatalogModalityPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
  }

  else
  {
    v20 = v11;
    sub_20BB9D2F0(v6);
    type metadata accessor for CatalogModalityPageDataProvider(0);
    sub_20BF9D804(&qword_27C76B738, 255, type metadata accessor for CatalogModalityPageDataProvider, &unk_20C170DD0);
    sub_20C138C54();
    (*(v4 + 8))(v6, v19);
  }

  sub_20BF9D804(&qword_27C7711B8, v15, type metadata accessor for CatalogModalityDetailViewController, &unk_20C187098);
  sub_20BF9D804(&qword_27C7711C0, v16, type metadata accessor for CatalogModalityDetailViewController, &unk_20C187010);
  return sub_20C139364();
}

void sub_20BF9C5C8(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CatalogModalityDetailViewController();
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_viewWillDisappear_, a1 & 1);
  v17 = v2;
  sub_20C132E84();
  sub_20BF9D804(&qword_27C7711B8, v9, type metadata accessor for CatalogModalityDetailViewController, &unk_20C187098);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  sub_20BF9A1E4(0, 0);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B51C88C(0, &qword_281100550, 0x277D75D28);
    v13 = sub_20C13CC74();

    v17 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = &v17;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v16 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v17 = v2;
      sub_20BF9D804(&qword_27C7711A0, v15, type metadata accessor for CatalogModalityDetailViewController, &unk_20C187058);
      sub_20C138C64();
    }
  }
}

void sub_20BF9CA20(uint64_t a1)
{
  v35[3] = type metadata accessor for CatalogModalityDetailViewController();
  v35[0] = v1;
  type metadata accessor for MoreOptionsButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = v1;
  v4 = [ObjCClassFromMetadata buttonWithType_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = &v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  [v4 setTintColor_];
  v6 = *(v5 + 10);
  v7 = *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor];
  *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor] = v6;
  v8 = v6;

  *&v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors] = MEMORY[0x277D84FA0];

  sub_20BCC01CC(v4[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary], 0);
  sub_20B52F9E8(v35, v33, &unk_27C768A00, &qword_20C152F90);
  v9 = v34;
  if (v34)
  {
    v10 = __swift_project_boxed_opaque_existential_1(v33, v34);
    v11 = *(v9 - 8);
    v12 = MEMORY[0x28223BE20](v10);
    v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v14, v12);
    v15 = sub_20C13DFD4();
    (*(v11 + 8))(v14, v9);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v15 = 0;
  }

  [v4 addTarget:v15 action:sel_moreOptionsButtonTapped_ forControlEvents:0x2000];
  swift_unknownObjectRelease();
  sub_20B520158(v35, &unk_27C768A00, &qword_20C152F90);
  v16 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v17 = objc_allocWithZone(v16);
  v18 = &v17[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v18 = v4;
  *(v18 + 1) = &off_2822DD228;
  v32.receiver = v17;
  v32.super_class = v16;
  v19 = v4;
  v20 = objc_msgSendSuper2(&v32, sel_init);
  [v20 setCustomView_];

  v21 = *&v3[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_upNextQueueButton];
  v22 = objc_allocWithZone(v16);
  v23 = &v22[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v23 = v21;
  *(v23 + 1) = &off_2822C8C68;
  v31.receiver = v22;
  v31.super_class = v16;
  v24 = v21;
  v25 = objc_msgSendSuper2(&v31, sel_init);
  [v25 setCustomView_];

  v26 = [v3 navigationItem];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C151490;
  *(v27 + 32) = v20;
  *(v27 + 40) = v25;
  sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
  v28 = v20;
  v29 = v25;
  v30 = sub_20C13CC54();

  [v26 setRightBarButtonItems_];
}

double sub_20BF9CDD0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong navigationItem];

    v5 = [v4 rightBarButtonItems];
    if (v5)
    {
      sub_20B51C88C(0, &qword_27C770510, 0x277D751E0);
      v6 = sub_20C13CC74();

      if (v6 >> 62)
      {
LABEL_21:
        v7 = sub_20C13DB34();
        if (v7)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
LABEL_5:
          v8 = 0;
          do
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              v10 = MEMORY[0x20F2F5430](v8, v6);
            }

            else
            {
              if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v10 = *(v6 + 8 * v8 + 32);
            }

            v11 = v10;
            v12 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            v13 = [v10 customView];
            if (v13)
            {
              v9 = v13;
              type metadata accessor for MoreOptionsButton();
              if (swift_dynamicCastClass())
              {

                swift_beginAccess();
                v14 = swift_unknownObjectWeakLoadStrong();
                if (v14)
                {
                  v15 = v14;
                  v16 = v11;
                  sub_20C03B844(v11, 0);
                }

                else
                {
                }

                return result;
              }
            }

            else
            {
              v9 = v11;
            }

            ++v8;
          }

          while (v12 != v7);
        }
      }
    }
  }

  return result;
}

id sub_20BF9D0C0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CatalogModalityDetailViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20BF9D268(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v3 = 1;
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_standardNavigationBarTintColor];
      v3 = 3;
    }

    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentNavigationBarTintColor] = v2;
    v5 = v2;

    v6 = objc_opt_self();
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v5;
    v7[4] = v3;
    v11[4] = sub_20BF9D8E4;
    v11[5] = v7;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_20B7B548C;
    v11[3] = &block_descriptor_66_1;
    v8 = _Block_copy(v11);
    v9 = v5;
    v10 = v1;

    [v6 animateWithDuration:v8 animations:0.2];
    _Block_release(v8);
  }
}

id sub_20BF9D3F0(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  *&a1[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentStatusBarStyle] = a3;

  return [a1 setNeedsStatusBarAppearanceUpdate];
}

uint64_t sub_20BF9D4D4(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

double sub_20BF9D60C()
{
  swift_beginAccess();
  swift_unknownObjectRetain();
  return result;
}

double sub_20BF9D654(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BF9D70C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BF9D770(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_20C139374();
}

uint64_t sub_20BF9D804(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20BF9D864()
{
  result = qword_27C7711B0;
  if (!qword_27C7711B0)
  {
    sub_20B51C88C(255, &qword_281100550, 0x277D75D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7711B0);
  }

  return result;
}

char *sub_20BF9D8F0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_20C1333A4();
  MEMORY[0x28223BE20](v12 - 8);
  v65 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13C654();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71[3] = a5;
  v71[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v19 = &a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = -4;
  a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isTransitioningContentInset] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_visibility] = 1;
  v20 = OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0, &unk_20C180F80);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = MEMORY[0x277D84F98];
  *(v21 + 16) = v22;
  *&a4[v20] = v21;
  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_resignActiveObserver] = 0;
  v23 = OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_standardNavigationBarTintColor;
  *&a4[v23] = [objc_opt_self() blackColor];
  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentStatusBarStyle] = 3;
  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentNavigationBarTintColor] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isBeyondScrollBoundary] = 0;
  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v68, &a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(&v68, &a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_storefrontLocalizer]);
  v66 = a2;
  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_eventHub] = v68;
  sub_20B51CC64(v71, &a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_pageNavigator]);
  sub_20C133AA4();
  a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_platform] = v68;
  sub_20C13C734();

  v24 = sub_20C13C724();
  sub_20C13C644();
  v25 = type metadata accessor for MarketingOverlayImpressionsTracker(0);
  v26 = swift_allocObject();
  v27 = MEMORY[0x277D221C0];
  *(v26 + 16) = v24;
  *(v26 + 24) = v27;
  (*(v15 + 32))(v26 + OBJC_IVAR____TtC9SeymourUI34MarketingOverlayImpressionsTracker_context, v17, v14);
  v69 = v25;
  v70 = sub_20BF9D804(&qword_27C76FC30, 255, type metadata accessor for MarketingOverlayImpressionsTracker, &unk_20C161718);
  *&v68 = v26;
  type metadata accessor for MarketingHostedControllerCoordinator();
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(&v68, v25);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = sub_20BE8C464(a1, *v32, v28);

  __swift_destroy_boxed_opaque_existential_1(&v68);
  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingHostedContentCoordinator] = v34;
  sub_20B51CC64(v34 + 40, &v68);
  v35 = v69;
  v36 = __swift_project_boxed_opaque_existential_1(&v68, v69);

  v37 = v65;
  v38 = v66;
  v39 = sub_20BB9D2F0(v65);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = (&v65 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v36, v35, v40);
  v44 = sub_20BE8C638(a1, v34, *v42, v37);

  __swift_destroy_boxed_opaque_existential_1(&v68);
  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingMessageViewControllerHandler] = v44;
  type metadata accessor for CatalogPageSortOptionsDataProvider();
  v45 = swift_allocObject();

  sub_20C133AA4();
  __swift_project_boxed_opaque_existential_1(v45 + 4, v45[7]);
  v46 = sub_20C138D34();
  v48 = v47;

  v45[2] = v46;
  v45[3] = v48;
  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_sortOptionsDataProvider] = v45;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_subscriptionToken] = sub_20C13A914();
  v49 = &a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_contentInsetInitialBehavior];
  *v49 = 0;
  v49[8] = 3;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_upNextQueueButtonPresenter] = sub_20B887320(v50);
  v51 = sub_20BE8C450(&unk_28228D4D0);

  v53 = sub_20BAB9360(v52, v51, 0);

  *&a4[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_upNextQueueButton] = v53;
  v54 = type metadata accessor for CatalogModalityDetailViewController();
  v67.receiver = a4;
  v67.super_class = v54;
  v55 = objc_msgSendSuper2(&v67, sel_initWithNibName_bundle_, 0, 0);
  *(v38 + 24) = &off_2822FBC68;
  swift_unknownObjectWeakAssign();
  v56 = *&v55[OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_marketingHostedContentCoordinator];
  v57 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v58 = *(v56 + 136);
  v59 = *(v56 + 144);
  *(v56 + 136) = sub_20BF983B0;
  *(v56 + 144) = v57;
  v60 = v55;

  sub_20B583ECC(v58, v59);

  swift_getObjectType();
  sub_20C139404();
  v65 = OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_subscriptionToken;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20BF9D804(&unk_27C769C10, 255, MEMORY[0x277D54398], MEMORY[0x277D54390]);
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v68);
  swift_getObjectType();
  type metadata accessor for FilterResultUpdated(0);
  v61 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v62 = swift_allocObject();
  v63 = v66;
  *(v62 + 16) = v61;
  *(v62 + 24) = v63;
  sub_20BF9D804(&qword_27C7710D0, 255, type metadata accessor for FilterResultUpdated, &unk_20C16F370);

  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v68);
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B86FA88();
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v68);
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20B86FB30();
  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  return v60;
}

void sub_20BF9E494()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0, &unk_20C180F80);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x277D84F98];
  *(v3 + 16) = v4;
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_resignActiveObserver) = 0;
  v5 = OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_standardNavigationBarTintColor;
  *(v0 + v5) = [objc_opt_self() blackColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentStatusBarStyle) = 3;
  *(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI35CatalogModalityDetailViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t objectdestroy_79Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_20BF9E62C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_20B52AC14;

  return sub_20B90C514(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_47Tm_1()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double sub_20BF9E7C4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BF9EBF8(v2);
  }

  return result;
}

uint64_t sub_20BF9E824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764AE0, &unk_20C1643D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TipCategoryFilterUpdated(0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_coordinator);

    v24[1] = *(v16 + 24);
    swift_unknownObjectRetain();

    v17 = *(v9 + 16);
    v25 = v8;
    v17(v11, a3, v8);
    sub_20B52F9E8(a1, v7, &qword_27C764AE0, &unk_20C1643D0);
    v18 = sub_20C1370C4();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_20B520158(v7, &qword_27C764AE0, &unk_20C1643D0);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = sub_20C1370A4();
      v21 = v22;
      (*(v19 + 8))(v7, v18);
    }

    swift_getObjectType();
    (*(v9 + 32))(v14, v11, v25);
    v23 = &v14[*(v12 + 20)];
    *v23 = v20;
    v23[1] = v21;
    sub_20BFA0408(&qword_27C7667C8, type metadata accessor for TipCategoryFilterUpdated, &unk_20C18F5B0);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return sub_20BF9FE74(v14, type metadata accessor for TipCategoryFilterUpdated);
  }

  return result;
}

double sub_20BF9EB68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      sub_20BF9FADC(v5, a1, v6, &OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_20BF9EBF8(int a1)
{
  v2 = v1;
  v83 = a1;
  v88 = sub_20C13BB84();
  v3 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v87 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v78 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v78 - v12;
  v14 = sub_20C134734();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = sub_20BF7A8FC(9, v13);
  sub_20B520158(v13, &unk_27C7710A0, &unk_20C156800);
  if ((v15 & 1) == 0)
  {
    sub_20C13B534();
    v32 = sub_20C13BB74();
    v33 = sub_20C13D1F4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v104[0] = v35;
      *v34 = 136446210;
      v36 = sub_20C1368A4();
      v38 = sub_20B51E694(v36, v37, v104);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_20B517000, v32, v33, "Unsupported property type: %{public}s. Aborting row creation.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x20F2F6A40](v35, -1, -1);
      MEMORY[0x20F2F6A40](v34, -1, -1);
    }

    (*(v3 + 8))(v5, v88);
    return;
  }

  v16 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_coordinator);
  v17 = (v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_storefrontLocalizer);
  v18 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_storefrontLocalizer + 24);
  v19 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_storefrontLocalizer + 32);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_storefrontLocalizer), v18);
  v20 = sub_20B5E0F54(0xD00000000000001DLL, 0x800000020C1B2CC0, v18, v19);
  v22 = v21;

  sub_20BC77C20(v20, v22, 0x322E6E6F73726570, 0xED00006C6C69662ELL, v16, v2);
  v24 = v23;

  if ((*(v16 + *(*v16 + 200)) & 8) != 0)
  {
    v30 = 0;
    v31 = 0;
    v27 = 0;
    v29 = 0;
  }

  else
  {
    v25 = v17[3];
    v26 = v17[4];
    __swift_project_boxed_opaque_existential_1(v17, v25);
    v27 = sub_20B5E0F54(0xD00000000000001DLL, 0x800000020C194330, v25, v26);
    v29 = v28;
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v30 = sub_20C138D34();
  }

  *&v94 = v30;
  *(&v94 + 1) = v31;
  LOBYTE(v95) = 1;
  *(&v95 + 1) = 0;
  *&v96 = 0;
  WORD4(v96) = 128;
  v97 = 0uLL;
  *&v98 = 0xD000000000000016;
  *(&v98 + 1) = 0x800000020C1B8EB0;
  *&v99 = v27;
  *(&v99 + 1) = v29;
  LOBYTE(v100) = 0;
  *(&v100 + 1) = v24;
  v101 = MEMORY[0x277D84F90];
  *&v102 = 0;
  *(&v102 + 1) = v27;
  *v103 = v29;
  *&v103[8] = xmmword_20C150190;
  nullsub_1();
  v39 = v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row;
  v40 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 144);
  v104[8] = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 128);
  v104[9] = v40;
  v105 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 160);
  v41 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 80);
  v104[4] = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 64);
  v104[5] = v41;
  v42 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 112);
  v104[6] = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 96);
  v104[7] = v42;
  v43 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 16);
  v104[0] = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row);
  v104[1] = v43;
  v44 = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 48);
  v104[2] = *(v2 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 32);
  v104[3] = v44;
  v45 = *v103;
  *(v39 + 128) = v102;
  *(v39 + 144) = v45;
  *(v39 + 160) = *&v103[16];
  v46 = v99;
  *(v39 + 64) = v98;
  *(v39 + 80) = v46;
  v47 = v101;
  *(v39 + 96) = v100;
  *(v39 + 112) = v47;
  v48 = v95;
  *v39 = v94;
  *(v39 + 16) = v48;
  v49 = v97;
  *(v39 + 32) = v96;
  *(v39 + 48) = v49;

  sub_20B520158(v104, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
LABEL_27:
    swift_unknownObjectRelease();
    return;
  }

  v78 = Strong;
  if (![*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_26:
    sub_20C0C2D50(0);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v51 = sub_20C13BE74();
  (*(v87 + 8))(v10, v8);
  v87 = v51;
  v82 = *(v51 + 16);
  if (!v82)
  {
LABEL_24:

    goto LABEL_26;
  }

  v52 = 0;
  v80 = 0;
  v81 = v87 + 32;
  while (2)
  {
    if (v52 < *(v87 + 16))
    {
      v53 = v2;
      v54 = (v81 + 24 * v52);
      v55 = v54[1];
      v79 = *v54;
      v56 = v54[2];
      v88 = v52 + 1;
      v57 = *(v55 + 16);

      v58 = v56;

      v59 = 0;
      do
      {
        if (v57 == v59)
        {
          goto LABEL_14;
        }

        sub_20C132EE4();
        sub_20BFA0408(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        ++v59;
      }

      while ((sub_20C13C894() & 1) == 0);
      v60 = *(v39 + 128);
      v61 = *(v39 + 144);
      v62 = *(v39 + 96);
      v90[7] = *(v39 + 112);
      v91 = v60;
      v92 = v61;
      v93 = *(v39 + 160);
      v63 = *(v39 + 80);
      v90[4] = *(v39 + 64);
      v90[5] = v63;
      v90[6] = v62;
      v64 = *(v39 + 16);
      v90[0] = *v39;
      v90[1] = v64;
      v65 = *(v39 + 48);
      v90[2] = *(v39 + 32);
      v90[3] = v65;
      v66 = sub_20B5EAF8C(v90);
      if (v66 == 1)
      {
        v67 = 0;
        v68 = 0;
      }

      else
      {
        v67 = *(&v91 + 1);
        v68 = v92;
      }

      v69 = v58;
      v89[0] = v67;
      v89[1] = v68;
      MEMORY[0x28223BE20](v66);
      *(&v78 - 2) = v89;
      v70 = v58;
      v71 = v80;
      v72 = sub_20B796758(sub_20B5EAFA4, (&v78 - 4), v70);
      v80 = v71;

      if ((v72 & 1) == 0)
      {
LABEL_14:

        v52 = v88;
        if (v88 == v82)
        {
          goto LABEL_24;
        }

        continue;
      }

      sub_20B5E2E18();
      v73 = sub_20C13D374();
      v75 = v84;
      v74 = v85;
      *v84 = v73;
      v76 = v86;
      (*(v74 + 104))(v75, *MEMORY[0x277D85200], v86);
      v77 = sub_20C13C584();
      (*(v74 + 8))(v75, v76);
      if ((v77 & 1) == 0)
      {
        goto LABEL_35;
      }

      if ((v83 & 0x80) != 0)
      {
        sub_20C10D188(v53, v79, v83 & 1, v78);
      }

      else
      {
        sub_20B61F824(v79, v55, v69, v53, v83 & 1, v78);
      }

      goto LABEL_27;
    }

    break;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_20BF9F5E0()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 32);
  v11[3] = v7;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_storefrontLocalizer));

  v8 = OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_filterRoot;
  v9 = sub_20C134EC4();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TipCategoryFilterOptionsShelf(uint64_t a1)
{
  result = qword_27C7711C8;
  if (!qword_27C7711C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BF9F788(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = sub_20C134EC4();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20BF9F87C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BF9F8F4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI29TipCategoryFilterOptionsShelf_row + 32);
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

uint64_t sub_20BF9FADC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PageMetricAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a3;
  sub_20B51CC64(a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_locationStore, v30);
  __swift_project_boxed_opaque_existential_1(v30, v30[3]);
  v11 = *(type metadata accessor for ShelfMetricAction(0) + 28);
  v27 = a2;
  v12 = (a2 + v11);
  if (v12[1])
  {
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = a1 + *a4;
  v16 = *(v15 + 144);
  v31[8] = *(v15 + 128);
  v31[9] = v16;
  v32 = *(v15 + 160);
  v17 = *(v15 + 80);
  v31[4] = *(v15 + 64);
  v31[5] = v17;
  v18 = *(v15 + 112);
  v31[6] = *(v15 + 96);
  v31[7] = v18;
  v19 = *(v15 + 16);
  v31[0] = *v15;
  v31[1] = v19;
  v20 = *(v15 + 48);
  v31[2] = *(v15 + 32);
  v31[3] = v20;
  sub_20B52F9E8(v31, &v29, &qword_27C762340, &unk_20C150290);

  v21 = sub_20B9297B4(v31, v13, v14);
  sub_20B520158(v31, &qword_27C762340, &unk_20C150290);

  __swift_destroy_boxed_opaque_existential_1(v30);
  sub_20BB91124(v27, v10 + *(v8 + 20));
  *v10 = v21;
  v22 = v28;
  v23 = v28 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 8);
    ObjectType = swift_getObjectType();
    (*(v24 + 160))(v22, v10, ObjectType, v24);
    swift_unknownObjectRelease();
  }

  return sub_20BF9FE74(v10, type metadata accessor for PageMetricAction);
}

uint64_t sub_20BF9FE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BF9FEEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for PageMetricAction(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51CC64(a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_locationStore, v29);
  __swift_project_boxed_opaque_existential_1(v29, v29[3]);
  v11 = *(type metadata accessor for ShelfMetricAction(0) + 28);
  v27 = a2;
  v12 = (a2 + v11);
  if (v12[1])
  {
    v13 = *v12;
    v14 = v12[1];
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
  }

  v15 = a1 + *a4;
  v16 = *(v15 + 144);
  v30[8] = *(v15 + 128);
  v30[9] = v16;
  v31 = *(v15 + 160);
  v17 = *(v15 + 80);
  v30[4] = *(v15 + 64);
  v30[5] = v17;
  v18 = *(v15 + 112);
  v30[6] = *(v15 + 96);
  v30[7] = v18;
  v19 = *(v15 + 16);
  v30[0] = *v15;
  v30[1] = v19;
  v20 = *(v15 + 48);
  v30[2] = *(v15 + 32);
  v30[3] = v20;

  sub_20B52F9E8(v30, &v28, &qword_27C762340, &unk_20C150290);
  v21 = sub_20B9297B4(v30, v13, v14);
  sub_20B520158(v30, &qword_27C762340, &unk_20C150290);

  __swift_destroy_boxed_opaque_existential_1(v29);
  sub_20BB91124(v27, v10 + *(v8 + 20));
  *v10 = v21;
  v22 = a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(v22 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 160))(a3, v10, ObjectType, v23);
    swift_unknownObjectRelease();
  }

  return sub_20BF9FE74(v10, type metadata accessor for PageMetricAction);
}

uint64_t sub_20BFA0128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PageMetricAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B51CC64(a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_locationStore, v23);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v9 = (a2 + *(type metadata accessor for ShelfMetricAction(0) + 28));
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = *(a1 + 160);
  v24[8] = *(a1 + 144);
  v24[9] = v12;
  v25 = *(a1 + 176);
  v13 = *(a1 + 96);
  v24[4] = *(a1 + 80);
  v24[5] = v13;
  v14 = *(a1 + 128);
  v24[6] = *(a1 + 112);
  v24[7] = v14;
  v15 = *(a1 + 32);
  v24[0] = *(a1 + 16);
  v24[1] = v15;
  v16 = *(a1 + 64);
  v24[2] = *(a1 + 48);
  v24[3] = v16;

  sub_20B52F9E8(v24, v22, &qword_27C762340, &unk_20C150290);
  v17 = sub_20B9297B4(v24, v10, v11);
  sub_20B520158(v24, &qword_27C762340, &unk_20C150290);

  __swift_destroy_boxed_opaque_existential_1(v23);
  sub_20BB91124(a2, v8 + *(v6 + 20));
  *v8 = v17;
  v18 = a3 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v18 + 8);
    ObjectType = swift_getObjectType();
    (*(v19 + 160))(a3, v8, ObjectType, v19);
    swift_unknownObjectRelease();
  }

  return sub_20BF9FE74(v8, type metadata accessor for PageMetricAction);
}

uint64_t sub_20BFA0408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BFA0450(uint64_t a1)
{
  sub_20C1380F4();
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  v12 = [v1 mainScreen];
  [v12 nativeScale];
  v14 = v13;

  v15 = sub_20C138104();
  result = sub_20C138104();
  v17 = 0.0;
  if (v15 != result)
  {
    v17 = 16.0;
    if (Width / v14 > 375.0)
    {
      v17 = 0.0;
      if (Width / v14 < 834.0)
      {
        v17 = 24.0;
      }
    }
  }

  qword_27C7711D8 = *&v17;
  return result;
}

uint64_t sub_20BFA0578(uint64_t a1)
{
  sub_20C1380F4();
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  v12 = [v1 mainScreen];
  [v12 nativeScale];
  v14 = v13;

  v15 = sub_20C138104();
  result = sub_20C138104();
  v17 = 0.0;
  if (v15 != result)
  {
    v17 = 16.0;
    if (Width / v14 > 375.0)
    {
      v17 = 0.0;
      if (Width / v14 < 834.0)
      {
        v17 = 16.0;
      }
    }
  }

  qword_27C7711E0 = *&v17;
  return result;
}

uint64_t sub_20BFA06A0(uint64_t a1)
{
  sub_20C1380F4();
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  Width = CGRectGetWidth(v18);
  v12 = [v1 mainScreen];
  [v12 nativeScale];
  v14 = v13;

  v15 = sub_20C138104();
  result = sub_20C138104();
  v17 = 0.0;
  if (v15 != result)
  {
    v17 = 10.0;
    if (Width / v14 > 375.0)
    {
      v17 = 0.0;
      if (Width / v14 < 834.0)
      {
        v17 = 30.0;
      }
    }
  }

  qword_27C7711E8 = *&v17;
  return result;
}

void sub_20BFA07C8(uint64_t a1)
{
  v1 = sub_20C13A484();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_presenter);
    v6 = Strong;

    sub_20BFA7450(v5 + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_sessionOrigin, v3, MEMORY[0x277D4DFB8]);

    v7 = sub_20C13A434();
    v9 = v8;
    sub_20BFA74B8(v3, MEMORY[0x277D4DFB8]);
    v10 = [objc_opt_self() sharedApplication];
    sub_20BD47474(v7, v9);
  }
}

double sub_20BFA0910(uint64_t a1)
{
  v1 = sub_20C134F24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_presenter);
    v12 = Strong;

    sub_20C13B444();
    sub_20C13BB64();
    (*(v6 + 8))(v8, v5);
    (*(v2 + 104))(v4, *MEMORY[0x277D51410], v1);
    v13 = sub_20C134324();
    sub_20BB3F40C(v4, v13, v14);

    (*(v2 + 8))(v4, v1);
    v15 = *(v11 + 48);
    if (v15)
    {
      v16 = *(v11 + 56);

      v15(v17);

      sub_20B583ECC(v15, v16);
    }

    else
    {
    }
  }

  return result;
}

double sub_20BFA0B88(uint64_t a1)
{
  v1 = sub_20C134F24();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_presenter);
    v12 = Strong;

    sub_20C13B444();
    sub_20C13BB64();
    (*(v6 + 8))(v8, v5);
    (*(v2 + 104))(v4, *MEMORY[0x277D51410], v1);
    v13 = sub_20C134324();
    sub_20BB3F40C(v4, v13, v14);

    (*(v2 + 8))(v4, v1);
    v15 = *(v11 + 48);
    if (v15)
    {
      v16 = *(v11 + 56);

      v15(v17);

      sub_20B583ECC(v15, v16);
    }

    else
    {
    }
  }

  return result;
}

double sub_20BFA0E00(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    a2();
  }

  return result;
}

void sub_20BFA0FFC(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for PhoneSessionLandscapeSummaryViewController(0);
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
      sub_20BFA7518();
      sub_20C138C64();
    }
  }
}

void sub_20BFA11EC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_scrollView];
  v3 = [v0 view];
  if (!v3)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = v3;
  v5 = *MEMORY[0x277D768C8];
  v6 = *(MEMORY[0x277D768C8] + 8);
  v8 = *(MEMORY[0x277D768C8] + 16);
  v7 = *(MEMORY[0x277D768C8] + 24);
  v9 = [v2 leadingAnchor];
  v10 = [v4 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10 constant:v6];

  LODWORD(v12) = 1148846080;
  [v11 setPriority_];
  v198 = v11;
  v13 = [v2 trailingAnchor];
  v14 = [v4 trailingAnchor];
  v15 = -v7;
  v16 = [v13 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v17) = 1148846080;
  [v16 &selRef_meterUnit];
  v195 = v16;
  v18 = [v2 topAnchor];
  v19 = [v4 &selRef_setLineBreakMode_];
  v20 = [v18 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v21) = 1148846080;
  [v20 &selRef_meterUnit];
  v22 = [v2 bottomAnchor];
  v23 = [v4 &selRef_secondaryLabel + 5];
  v24 = -v8;
  v25 = [v22 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v26) = 1148846080;
  [v25 &selRef_meterUnit];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_20C14FE90;
  *(v27 + 32) = v198;
  *(v27 + 40) = v195;
  *(v27 + 48) = v20;
  *(v27 + 56) = v25;
  v28 = v20;

  v29 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_scrollViewSizingView];
  v30 = [v29 leadingAnchor];
  v31 = [v2 leadingAnchor];
  v32 = [v30 constraintEqualToAnchor:v31 constant:v6];

  LODWORD(v33) = 1148846080;
  [v32 setPriority_];
  v199 = v32;
  v34 = [v29 trailingAnchor];
  v35 = [v2 trailingAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:v15];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  v38 = v36;
  v39 = [v29 topAnchor];
  v40 = v2;
  v41 = [v2 topAnchor];
  v42 = [v39 constraintEqualToAnchor:v41 constant:v5];

  LODWORD(v43) = 1148846080;
  [v42 setPriority_];
  v44 = [v29 bottomAnchor];
  v45 = [v40 bottomAnchor];
  v46 = [v44 constraintEqualToAnchor:v45 constant:v24];

  v47 = v40;
  LODWORD(v48) = 1148846080;
  [v46 setPriority_];
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14FE90;
  *(inited + 32) = v199;
  *(inited + 40) = v38;
  *(inited + 48) = v42;
  *(inited + 56) = v46;

  sub_20B8D9310(inited);
  v50 = swift_initStackObject();
  *(v50 + 16) = xmmword_20C14F580;
  v51 = [v29 widthAnchor];
  v200 = v40;
  v52 = [v40 widthAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v50 + 32) = v53;
  sub_20B8D9310(v50);
  v54 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_backgroundView];
  v55 = [v1 view];
  if (v55)
  {
    v56 = v55;
    v57 = [v54 leadingAnchor];
    v58 = [v56 leadingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:v6];

    LODWORD(v60) = 1148846080;
    [v59 setPriority_];
    v196 = v59;
    v61 = [v54 trailingAnchor];
    v62 = [v56 trailingAnchor];
    v63 = [v61 constraintEqualToAnchor:v62 constant:v15];

    LODWORD(v64) = 1148846080;
    [v63 setPriority_];
    v65 = v63;
    v66 = [v54 topAnchor];
    v67 = [v56 topAnchor];
    v68 = [v66 constraintEqualToAnchor:v67 constant:v5];

    LODWORD(v69) = 1148846080;
    [v68 setPriority_];
    v70 = [v54 bottomAnchor];
    v71 = [v56 bottomAnchor];
    v72 = [v70 constraintEqualToAnchor:v71 constant:v24];

    LODWORD(v73) = 1148846080;
    [v72 setPriority_];
    v74 = swift_initStackObject();
    *(v74 + 16) = xmmword_20C14FE90;
    *(v74 + 32) = v196;
    *(v74 + 40) = v65;
    *(v74 + 48) = v68;
    *(v74 + 56) = v72;
    v191 = v74;
    v75 = v68;

    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_20C150040;
    v77 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_contentSummaryView];
    v78 = [v77 leadingAnchor];
    v79 = [v40 safeAreaLayoutGuide];
    v80 = [v79 leadingAnchor];

    if (qword_27C760CB0 != -1)
    {
      swift_once();
    }

    v81 = [v78 constraintEqualToAnchor:v80 constant:*&qword_27C7711E0];

    *(v76 + 32) = v81;
    v82 = [v77 topAnchor];
    v197 = v77;
    v83 = [v40 topAnchor];
    if (qword_27C760CA8 != -1)
    {
      swift_once();
    }

    v84 = [v82 constraintEqualToAnchor:v83 constant:*&qword_27C7711D8];

    *(v76 + 40) = v84;
    v85 = [v77 trailingAnchor];
    v193 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackView];
    v86 = [v193 leadingAnchor];
    v87 = [v85 constraintEqualToAnchor:v86 constant:-8.0];

    v190 = v76;
    *(v76 + 48) = v87;
    v88 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridView];
    v89 = [v88 heightAnchor];
    v90 = [v89 constraintEqualToConstant_];

    v91 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewHeight;
    v92 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewHeight];
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewHeight] = v90;

    v93 = [v88 widthAnchor];
    v94 = [v93 constraintEqualToConstant_];

    v95 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewWidth;
    v96 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewWidth];
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewWidth] = v94;

    v97 = v88;
    v98 = [v88 &selRef_setLineBreakMode_];
    v99 = [v77 bottomAnchor];
    if (qword_27C760CB8 != -1)
    {
      swift_once();
    }

    v100 = [v98 &selRef_passwordEntryCancelledHandler + 6];

    v101 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewTopSpacing;
    v102 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewTopSpacing];
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewTopSpacing] = v100;

    v103 = swift_initStackObject();
    *(v103 + 16) = xmmword_20C14FE90;
    v104 = *&v1[v95];
    *(v103 + 32) = v104;
    v105 = *&v1[v91];
    *(v103 + 40) = v105;
    v106 = *&v1[v101];
    *(v103 + 48) = v106;
    v107 = v104;
    v108 = v105;
    v109 = v106;
    v194 = v97;
    v110 = [v97 leadingAnchor];
    v111 = [v77 leadingAnchor];
    v112 = [v110 constraintEqualToAnchor_];

    *(v103 + 56) = v112;
    v113 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsView];
    v114 = [v113 bottomAnchor];
    v115 = [v47 bottomAnchor];
    v116 = [v114 &selRef_passwordEntryCancelledHandler + 6];

    v117 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsToScrollViewBottomConstraint;
    v118 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsToScrollViewBottomConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_activityRingsToScrollViewBottomConstraint] = v116;

    v119 = swift_initStackObject();
    *(v119 + 16) = xmmword_20C150040;
    v120 = *&v1[v117];
    *(v119 + 32) = v120;
    v121 = v120;
    v122 = [v113 leadingAnchor];
    v123 = [v197 leadingAnchor];
    v124 = [v122 constraintEqualToAnchor_];

    *(v119 + 40) = v124;
    v125 = [v113 topAnchor];
    v126 = [v97 bottomAnchor];
    v127 = [v125 constraintEqualToAnchor:v126 constant:9.0];

    v189 = v119;
    *(v119 + 48) = v127;
    v128 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarView];
    v129 = [v128 leadingAnchor];
    v130 = [v197 leadingAnchor];
    v131 = [v129 constraintEqualToAnchor_];

    LODWORD(v132) = 1132068864;
    [v131 setPriority_];
    v201 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToContentSummaryLeadingConstraint;
    v133 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToContentSummaryLeadingConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToContentSummaryLeadingConstraint] = v131;

    v134 = [v128 topAnchor];
    v135 = [v113 bottomAnchor];
    v136 = [v134 constraintEqualToAnchor_];

    v192 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToActivityRingsTopConstraint;
    v137 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToActivityRingsTopConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToActivityRingsTopConstraint] = v136;

    v138 = [v128 leadingAnchor];
    v139 = [v197 leadingAnchor];
    v140 = [v138 constraintEqualToAnchor_];

    LODWORD(v141) = 1144750080;
    [v140 setPriority_];
    v142 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarLeadingConstraint;
    v143 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarLeadingConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarLeadingConstraint] = v140;

    v144 = [v128 topAnchor];
    v145 = [v194 bottomAnchor];
    v146 = [v144 constraintEqualToAnchor:v145 constant:9.0];

    v147 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToGridViewTopConstraint;
    v148 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToGridViewTopConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToGridViewTopConstraint] = v146;

    v149 = [v128 bottomAnchor];
    v150 = [v200 bottomAnchor];
    v151 = [v149 constraintEqualToAnchor:v150 constant:-16.0];

    v152 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToScrollViewBottomConstraint;
    v153 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToScrollViewBottomConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarToScrollViewBottomConstraint] = v151;

    v154 = swift_allocObject();
    v155 = *&v1[v201];
    v156 = *&v1[v192];
    *(v154 + 16) = xmmword_20C150050;
    v157 = *&v1[v142];
    v158 = *&v1[v147];
    *(v154 + 32) = v155;
    *(v154 + 40) = v156;
    *(v154 + 48) = v157;
    *(v154 + 56) = v158;
    v159 = *&v1[v152];
    *(v154 + 64) = v159;
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_burnBarConstraints] = v154;
    v160 = v155;
    v161 = v156;
    v162 = v157;
    v163 = v158;
    v164 = v159;

    v165 = [v193 topAnchor];
    v166 = [v197 topAnchor];
    v167 = [v165 constraintEqualToAnchor_];

    v168 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackViewTopConstraint;
    v169 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackViewTopConstraint];
    *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackViewTopConstraint] = v167;

    v170 = swift_initStackObject();
    *(v170 + 16) = xmmword_20C151490;
    v171 = [v193 trailingAnchor];
    v172 = [v200 safeAreaLayoutGuide];
    v173 = [v172 trailingAnchor];

    v174 = [v171 constraintEqualToAnchor_];
    *(v170 + 32) = v174;
    v175 = *&v1[v168];
    *(v170 + 40) = v175;
    v176 = v175;
    v177 = [v193 arrangedSubviews];
    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v178 = sub_20C13CC74();

    if (v178 >> 62)
    {
      v179 = sub_20C13DB34();
      if (v179)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v179 = *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v179)
      {
LABEL_11:
        v203 = MEMORY[0x277D84F90];
        sub_20C13DD64();
        if ((v179 & 0x8000000000000000) == 0)
        {
          v202 = v170;
          v180 = 0;
          do
          {
            if ((v178 & 0xC000000000000001) != 0)
            {
              v181 = MEMORY[0x20F2F5430](v180, v178);
            }

            else
            {
              v181 = *(v178 + 8 * v180 + 32);
            }

            v182 = v181;
            ++v180;
            v183 = [v193 widthAnchor];
            v184 = [v182 widthAnchor];
            v185 = [v183 constraintLessThanOrEqualToAnchor:v184 multiplier:1.0];

            sub_20C13DD34();
            sub_20C13DD74();
            sub_20C13DD84();
            sub_20C13DD44();
          }

          while (v179 != v180);

          v186 = v203;
          v170 = v202;
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_22;
      }
    }

    v186 = MEMORY[0x277D84F90];
LABEL_20:
    sub_20B8D9310(v186);
    sub_20B8D9310(v191);
    sub_20B8D9310(v190);
    sub_20B8D9310(v103);
    sub_20B8D9310(v170);
    sub_20B8D9310(v189);
    v187 = objc_opt_self();
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v188 = sub_20C13CC54();

    [v187 activateConstraints_];

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_20BFA2584()
{
  v1 = v0;
  v2 = sub_20C1344C4();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360, &unk_20C17F2A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = type metadata accessor for SessionSummaryViewModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v13 = sub_20C13C914();
  v14 = [v12 initWithString_];

  v15 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_summary;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v15, v7, &unk_27C765360, &unk_20C17F2A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20B520158(v7, &unk_27C765360, &unk_20C17F2A0);
    result = sub_20C13DE24();
    __break(1u);
  }

  else
  {
    sub_20B7A3A9C(v7, v11, type metadata accessor for SessionSummaryViewModel);
    v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stringBuilder + 16);
    v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stringBuilder + 48);
    v52 = *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stringBuilder + 32);
    v53 = v17;
    v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stringBuilder + 16);
    v51[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stringBuilder);
    v51[1] = v18;
    v47 = v16;
    v48 = v52;
    v49 = *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stringBuilder + 48);
    v54 = *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stringBuilder + 64);
    v50 = *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_stringBuilder + 64);
    v46 = v51[0];
    v19 = v11[1];
    sub_20B7A3194(v51, &v41);

    v21 = sub_20BAAAE6C(v20, v19);
    v38 = v14;
    v43 = v48;
    v44 = v49;
    v45 = v50;
    v41 = v46;
    v42 = v47;
    v22 = v21;
    sub_20B7A3B8C(&v41);

    v23 = v22;
    v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_contentSummaryView);
    v25 = *v11;
    v26 = OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels;
    v27 = *(*&v24[OBJC_IVAR____TtC9SeymourUI25SummaryContentSummaryView_labels] + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel);
    v28 = v23;
    [v27 setAttributedText_];
    v29 = *&v24[v26];
    v30 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
    [*(v29 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel) setHidden_];
    [*(v29 + v30) setAttributedText_];
    [v24 invalidateIntrinsicContentSize];

    v32 = v39;
    v31 = v40;
    (*(v39 + 16))(v4, *(v1 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_presenter) + OBJC_IVAR____TtC9SeymourUI23SessionSummaryPresenter_catalogWorkout, v40);
    v33 = sub_20C1344B4();
    v35 = v34;
    LOBYTE(v29) = v36;
    (*(v32 + 8))(v4, v31);
    *&v46 = v33;
    *(&v46 + 1) = v35;
    LOBYTE(v31) = v29 & 1;
    LOBYTE(v47) = v29 & 1;
    v41 = xmmword_20C152300;
    LOBYTE(v42) = 1;
    sub_20B6A6418(v33, v35, v29 & 1);
    sub_20B590B28();
    sub_20B590B7C();
    LOBYTE(v29) = sub_20C133BF4();
    sub_20B583F4C(v46, *(&v46 + 1), v47);
    sub_20B80447C((v29 & 1) == 0);

    sub_20B583F4C(v33, v35, v31);
    return sub_20BFA74B8(v11, type metadata accessor for SessionSummaryViewModel);
  }

  return result;
}

void sub_20BFA2AE0()
{
  v1 = type metadata accessor for SessionSummaryViewModel(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360, &unk_20C17F2A0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v40 - v6;
  v8 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_summary;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v8, v7, &unk_27C765360, &unk_20C17F2A0);
  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_20B520158(v7, &unk_27C765360, &unk_20C17F2A0);
  }

  else
  {
    sub_20BFA7450(v7, v4, type metadata accessor for SessionSummaryViewModel);
    sub_20B520158(v7, &unk_27C765360, &unk_20C17F2A0);
    v9 = &v4[*(v1 + 72)];
    v11 = *v9;
    v10 = v9[1];
    v13 = v9[2];
    v12 = v9[3];
    v14 = v9[5];
    v15 = *v9;
    v41 = v9[4];
    sub_20B7A3B04(v15, v10, v13, v12, v41, v14);
    sub_20BFA74B8(v4, type metadata accessor for SessionSummaryViewModel);
    if (v10)
    {
      v42 = v12;
      v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_queueCompleteView);
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      v18[2] = v16;
      v18[3] = v11;
      v18[4] = v10;
      v47 = sub_20B7A3B70;
      v48 = v18;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_20B7B548C;
      v46 = &block_descriptor_73;
      v19 = _Block_copy(&aBlock);
      v20 = v16;

      [v17 animateWithDuration:v19 animations:0.1];
      _Block_release(v19);
      if (v13)
      {
        v21 = *&v20[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeDetailLabel];
        v22 = v13;
        [v21 setAttributedText_];
        v23 = swift_allocObject();
        *(v23 + 16) = v20;
        v47 = sub_20B7A3C64;
        v48 = v23;
        aBlock = MEMORY[0x277D85DD0];
        v44 = 1107296256;
        v45 = sub_20B7B548C;
        v46 = &block_descriptor_92_0;
        v24 = _Block_copy(&aBlock);
        v25 = v20;

        [v17 animateWithDuration:v24 animations:0.1];
        _Block_release(v24);
      }

      v26 = v41;
      v27 = v42;
      if (v42 && v41)
      {
        v28 = v42;
        v29 = v26;
        sub_20BF70BF8(v28, v29);
      }

      if (v13)
      {
        v30 = *&v20[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalTimeDetailLabel];
        v31 = v13;
        [v30 setAttributedText_];
        v32 = swift_allocObject();
        *(v32 + 16) = v20;
        v47 = sub_20B7A3B84;
        v48 = v32;
        aBlock = MEMORY[0x277D85DD0];
        v44 = 1107296256;
        v45 = sub_20B7B548C;
        v46 = &block_descriptor_85_1;
        v33 = _Block_copy(&aBlock);
        v34 = v20;
        v27 = v42;

        [v17 animateWithDuration:v33 animations:0.1];
        _Block_release(v33);
      }

      if (v14)
      {
        v35 = *&v20[OBJC_IVAR____TtC9SeymourUI24SummaryQueueCompleteView_totalDistanceDetailLabel];
        v36 = v14;
        [v35 setAttributedText_];
        v37 = swift_allocObject();
        *(v37 + 16) = v20;
        v47 = sub_20B7A3B7C;
        v48 = v37;
        aBlock = MEMORY[0x277D85DD0];
        v44 = 1107296256;
        v45 = sub_20B7B548C;
        v46 = &block_descriptor_79_0;
        v38 = _Block_copy(&aBlock);
        v39 = v20;

        [v17 animateWithDuration:v38 animations:0.1];
        _Block_release(v38);
      }
    }
  }
}

id sub_20BFA30E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765360, &unk_20C17F2A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v65 - v3;
  v5 = type metadata accessor for SessionSummaryViewModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_summary;
  swift_beginAccess();
  sub_20B52F9E8(&v1[v9], v4, &unk_27C765360, &unk_20C17F2A0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_20B520158(v4, &unk_27C765360, &unk_20C17F2A0);
  }

  sub_20B7A3A9C(v4, v8, type metadata accessor for SessionSummaryViewModel);
  v11 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridView];
  [*&v11[OBJC_IVAR____TtC9SeymourUI21SummaryMetricGridView_layout] invalidateLayout];
  v12 = [v11 topAnchor];
  v13 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_contentSummaryView];
  v14 = [v13 bottomAnchor];
  if (qword_27C760CB8 != -1)
  {
    swift_once();
  }

  v15 = [v12 constraintEqualToAnchor:v14 constant:*&qword_27C7711E8];

  v16 = OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewTopSpacing;
  v17 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewTopSpacing];
  *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewTopSpacing] = v15;

  v18 = *&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_trailingStackView];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v19 = result;
  [result bounds];
  v21 = v20;
  v23 = v22;

  [v18 systemLayoutSizeFittingSize_];
  v25 = v24;
  result = [v1 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v26 = result;
  [result bounds];
  v28 = v27;
  v30 = v29;

  [v18 systemLayoutSizeFittingSize_];
  v32 = v31;
  [v13 intrinsicContentSize];
  v34 = v33;
  [*&v1[v16] constant];
  v36 = v34 + v35;
  result = [v1 view];
  v37 = result;
  if (v32 >= v36)
  {
    if (result)
    {
      v49 = [result safeAreaLayoutGuide];

      [v49 layoutFrame];
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;

      v67.origin.x = v51;
      v67.origin.y = v53;
      v67.size.width = v55;
      v67.size.height = v57;
      v58 = CGRectGetWidth(v67) - v25 + -16.0;
      if (qword_27C760CB0 != -1)
      {
        v47 = swift_once();
      }

      Width = v58 - (*&qword_27C7711E0 + *&qword_27C7711E0);
      goto LABEL_14;
    }

LABEL_21:
    __break(1u);
    return result;
  }

  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = [result safeAreaLayoutGuide];

  [v38 layoutFrame];
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;

  v66.origin.x = v40;
  v66.origin.y = v42;
  v66.size.width = v44;
  v66.size.height = v46;
  Width = CGRectGetWidth(v66);
LABEL_14:
  v59 = *(sub_20B839B88(v47) + 16);

  v61 = *(sub_20B839B88(v60) + 16);

  if ((v61 & 1) + (v59 >> 1) <= 1)
  {
    v62 = 1;
  }

  else
  {
    v62 = (v61 & 1) + (v59 >> 1);
  }

  sub_20BA00314(v62, Width);
  v64 = v63;
  [*&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewWidth] setConstant_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI42PhoneSessionLandscapeSummaryViewController_gridViewHeight] setConstant_];
  return sub_20BFA74B8(v8, type metadata accessor for SessionSummaryViewModel);
}