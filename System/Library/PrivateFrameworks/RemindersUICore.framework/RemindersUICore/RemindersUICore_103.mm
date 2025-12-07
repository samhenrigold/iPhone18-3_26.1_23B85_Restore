void sub_21DA811B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + qword_27CE655B8);
  v7 = v5;
  if (v5)
  {
    v6 = v5;
    v5 = v7;
  }

  sub_21DA7E384(v5, a4);
}

uint64_t sub_21DA81220(char *a1)
{
  v2 = qword_27CE655F8;
  swift_beginAccess();
  v3 = *&a1[v2];
  if (v3)
  {
    v4 = v3;
    v5 = [v4 string];
    v6 = sub_21DBFA16C();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      [*&a1[qword_27CE65590] setAttributedText_];
      goto LABEL_19;
    }
  }

  v10 = qword_27CE65590;
  v11 = [*&a1[qword_27CE65590] text];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = sub_21DBFA16C();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v17 = *&a1[v10];
    v18 = [v17 font];
    [v17 setFont_];

    v19 = *&a1[v10];
    v20 = qword_27CE655D8;
    swift_beginAccess();
    v21 = *&a1[v20];
    v22 = v19;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = [a1 tintColor];
    }

    v25 = v21;
    [v19 setTextColor_];

    v24 = *&a1[v10];
    v26 = [v24 text];
    if (v26)
    {
      v27 = v26;
      sub_21DBFA16C();

      v4 = sub_21DBFA12C();
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
LABEL_13:
    v24 = *&a1[v10];
    v4 = sub_21DBFA12C();
  }

  [v24 setText_];

LABEL_19:
  return sub_21DA7D34C();
}

uint64_t sub_21DA81488(char *a1)
{
  v2 = qword_27CE65608;
  swift_beginAccess();
  v3 = *&a1[v2];
  if (v3)
  {
    v4 = [v3 string];
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v8 = &a1[qword_27CE655C8];
    swift_beginAccess();
    v7 = *(v8 + 1);
    if (!v7)
    {
LABEL_10:
      v13 = *&a1[qword_27CE655B0];
      *&a1[qword_27CE655B0] = 0;
      goto LABEL_22;
    }

    v5 = *v8;
  }

  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = qword_27CE655B0;
  v11 = *&a1[qword_27CE655B0];
  if (v11)
  {
    v12 = *&a1[qword_27CE655B0];
  }

  else
  {
    v12 = sub_21DA84B04(a1);
  }

  v14 = qword_27CE655F0;
  swift_beginAccess();
  v15 = *&a1[v14];
  v16 = v11;
  [v12 setFont_];
  v17 = qword_27CE655E8;
  swift_beginAccess();
  v18 = *&a1[v17];
  if (v18)
  {
    v19 = *&a1[v17];
  }

  else
  {
    v19 = [a1 tintColor];
    v18 = 0;
  }

  v20 = v18;
  [v12 setTextColor_];

  if (*&a1[v2])
  {
    [v12 setAttributedText_];
  }

  else
  {
    v21 = &a1[qword_27CE655C8];
    swift_beginAccess();
    if (*(v21 + 1))
    {
      sub_21DBF8E0C();
      v22 = sub_21DBFA12C();
    }

    else
    {
      v22 = 0;
    }

    [v12 setText_];
  }

  v13 = *&a1[v10];
  *&a1[v10] = v12;
LABEL_22:

  return sub_21DA7D34C();
}

uint64_t sub_21DA816E0(uint64_t a1)
{
  v2 = a1 + qword_27CE65610;
  swift_beginAccess();
  v77 = a1;
  v3 = a1 + qword_27CE65618;
  if (*(v2 + 40) == 255)
  {
    swift_beginAccess();
    goto LABEL_5;
  }

  v75 = *(v2 + 40);
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v78 = *(v2 + 24);
  v7 = *(v2 + 32);
  swift_beginAccess();
  v8 = *v3;
  v9 = *(v3 + 8);
  if (*v3)
  {
    swift_unknownObjectRetain();
    v74 = v9;
  }

  else
  {
    v74 = 0;
  }

  sub_21D361B20(v4, v5, v6, v78, v7, v75);
  sub_21D639460(v8, v9);
  sub_21D5C5F74(v8, v9);
  v72 = v4;
  if (!v75)
  {
    if (v7)
    {
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v15 = v7;
    }

    else
    {
      v22 = objc_opt_self();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v15 = [v22 secondaryLabelColor];
    }

    v23 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v23 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      v73 = v6;
      v69 = v5;
      v70 = v7;
      if (v74 && (type metadata accessor for TTRIStaticTableViewDisclosureTextAccessoryProvider(), (v24 = swift_dynamicCastClass()) != 0))
      {
        v12 = v24;
        v25 = v7;
        swift_unknownObjectRetain();
      }

      else
      {
        v26 = objc_allocWithZone(MEMORY[0x277D756B8]);
        v27 = v7;
        v28 = [v26 init];
        [v28 setNumberOfLines_];
        [v28 setUserInteractionEnabled_];
        if (qword_280D176B8 != -1)
        {
          swift_once();
        }

        v29 = sub_21D900614(1);
        [v28 setFont_];

        [v28 setAdjustsFontForContentSizeCategory_];
        type metadata accessor for UILayoutPriority(0);
        v84 = 1132068864;
        v83 = 1065353216;
        sub_21D367748();
        sub_21DBF84EC();
        LODWORD(v30) = v79;
        [v28 setContentCompressionResistancePriority:0 forAxis:v30];
        LODWORD(v31) = 1144750080;
        [v28 setContentHuggingPriority:0 forAxis:v31];
        [v28 setTextColor_];
        v32 = objc_allocWithZone(type metadata accessor for TTRIStaticTableViewDisclosureTextAccessoryProvider());
        v12 = TTRIStaticTableViewDisclosureTextAccessoryProvider.init(label:)(v28);
        v33 = v12 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_delegate;
        swift_beginAccess();
        *(v33 + 8) = &protocol witness table for TTRIStaticTableViewStandardCell;
        swift_unknownObjectWeakAssign();
      }

      v34 = (v12 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_text);
      swift_beginAccess();
      v35 = *v34;
      v36 = v34[1];
      v37 = v34[2];
      v38 = v34[3];
      v39 = v34[4];
      *v34 = v72;
      v34[1] = v69;
      v34[2] = v73;
      v34[3] = v78;
      v34[4] = v15;
      v40 = v15;
      *&v79 = v35;
      *(&v79 + 1) = v36;
      v80 = v37;
      v81 = v38;
      v82 = v39;
      sub_21D369928(&v79);

      v41 = (v77 + qword_27CE65620);
      swift_beginAccess();
      v42 = *v41;
      v43 = v41[1];
      v44 = (v12 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_accessibilityDifferentiateWithoutColorsIcon);
      swift_beginAccess();
      *v44 = v42;
      v44[1] = v43;
      sub_21DBF8E0C();

      v45 = *(v12 + OBJC_IVAR____TtC15RemindersUICore50TTRIStaticTableViewDisclosureTextAccessoryProvider_label);
      v46 = v34[1];
      v47 = v34[2];
      v48 = v34[3];
      v49 = v34[4];
      *&v79 = *v34;
      *(&v79 + 1) = v46;
      v80 = v47;
      v81 = v48;
      v82 = v49;
      v50 = v49;
      sub_21DBF8E0C();
      v5 = v69;
      sub_21DBF8E0C();
      v51 = sub_21D36AA04(&v79);
      v52 = v82;

      [v45 setAttributedText_];
      v13 = &protocol witness table for TTRIStaticTableViewDisclosureTextAccessoryProvider;
      v7 = v70;
      v14 = *v3;
      if (!*v3)
      {
        goto LABEL_30;
      }

      goto LABEL_18;
    }

    v68 = v7;

    sub_21D361BB4(v4, v5, v6, v78, v7, 0);
    swift_unknownObjectRelease();
LABEL_5:
    v10 = *v3;
    v11 = *(v3 + 8);
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *v3 = 0;
    goto LABEL_40;
  }

  v73 = v6;
  if (v75 == 1)
  {
    v12 = v74;
    if (v74 && object_getClass(v74) == _TtC15RemindersUICoreP33_9E3A88BD467F4112E1709B34BEFAF4D318CustomViewProvider && v74[2] == v4)
    {
      swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for CustomViewProvider();
      v12 = swift_allocObject();
      *(v12 + 16) = v4;
      sub_21D361B20(v4, v5, v73, v78, v7, 1);
    }

    v13 = &off_282EE43A0;
    v14 = *v3;
    if (!*v3)
    {
      goto LABEL_30;
    }

LABEL_18:
    v16 = *(v3 + 8);
    swift_unknownObjectRetain();
    sub_21D639460(v14, v16);
    v17 = v5;
    v18 = v14;
    sub_21D5C5F74(v14, v16);
    v19 = v18;
    v5 = v17;
    v20 = v19;
    v21 = v19;
    goto LABEL_31;
  }

  sub_21D361B34(v4, v5, v6, v78, v7, 2);
  v12 = v4;
  v13 = v5;
  v14 = *v3;
  if (*v3)
  {
    goto LABEL_18;
  }

LABEL_30:
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  swift_unknownObjectRetain();
  v53 = sub_21DBFA5DC();
  v20 = [objc_opt_self() containerBoxViewWithArrangedSubviews_];

  [v20 setHorizontalAlignment_];
  [v20 setVerticalAlignment_];
  v21 = 0;
LABEL_31:
  ObjectType = swift_getObjectType();
  v76 = (v13[1])(ObjectType, v13);
  v54 = v20;
  v55 = [v54 arrangedSubviews];
  if (!v55 || (v56 = v55, sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18), v57 = sub_21DBFA5EC(), v56, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70), v58 = swift_allocObject(), *(v58 + 16) = xmmword_21DC09CF0, *(v58 + 32) = v76, v59 = v76, v60 = sub_21D114F14(v57, v58), , , (v60 & 1) == 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_21DC09CF0;
    *(v61 + 32) = v76;
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    v62 = v76;
    v63 = sub_21DBFA5DC();

    [v54 setArrangedSubviews_];

    if (qword_280D0C1F8 != -1)
    {
      swift_once();
    }

    LODWORD(v64) = 1144750080;
    [v54 setLayoutSize:xmmword_280D0C200 withContentPriority:v64];
    if ((v13[2])(ObjectType, v13))
    {
      type metadata accessor for UILayoutPriority(0);
      v85 = 1065353216;
      v86 = 1132068864;
      sub_21D367748();
      sub_21DBF84EC();
      LODWORD(v65) = v79;
      [v54 setContentCompressionResistancePriority:0 forAxis:v65];
    }
  }

  v87 = &unk_282F3F750;
  v66 = swift_dynamicCastObjCProtocolConditional();
  if (v66)
  {
    swift_unknownObjectRetain();
  }

  [v54 setDelegate_];
  swift_unknownObjectRelease();
  sub_21D361BB4(v72, v5, v73, v78, v7, v75);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v10 = *v3;
  v11 = *(v3 + 8);
  *v3 = v54;
  *(v3 + 8) = v12;
  *(v3 + 16) = v13;
LABEL_40:
  sub_21D5C5F74(v10, v11);
  return sub_21DA7D34C();
}

void sub_21DA820B0()
{
  sub_21D539DA4(*(v0 + qword_27CE655A0), *(v0 + qword_27CE655A0 + 8), *(v0 + qword_27CE655A0 + 16), *(v0 + qword_27CE655A0 + 24), *(v0 + qword_27CE655A0 + 32), *(v0 + qword_27CE655A0 + 40), *(v0 + qword_27CE655A0 + 48), *(v0 + qword_27CE655A0 + 56), *(v0 + qword_27CE655A0 + 64));

  sub_21D361BB4(*(v0 + qword_27CE65610), *(v0 + qword_27CE65610 + 8), *(v0 + qword_27CE65610 + 16), *(v0 + qword_27CE65610 + 24), *(v0 + qword_27CE65610 + 32), *(v0 + qword_27CE65610 + 40));
  sub_21D5C5F74(*(v0 + qword_27CE65618), *(v0 + qword_27CE65618 + 8));

  v1 = *(v0 + qword_27CE655B0);
}

id TTRIStaticTableViewStandardCell.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIStaticTableViewStandardCell(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_21DA8222C(uint64_t a1)
{
  v2 = a1 + qword_27CE655A0;
  sub_21D539DA4(*(a1 + qword_27CE655A0), *(v2 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));

  sub_21D361BB4(*(a1 + qword_27CE65610), *(a1 + qword_27CE65610 + 8), *(a1 + qword_27CE65610 + 16), *(a1 + qword_27CE65610 + 24), *(a1 + qword_27CE65610 + 32), *(a1 + qword_27CE65610 + 40));
  sub_21D5C5F74(*(a1 + qword_27CE65618), *(a1 + qword_27CE65618 + 8));

  v3 = *(a1 + qword_27CE655B0);
}

uint64_t _s15RemindersUICore31TTRIStaticTableViewStandardCellC06CustomE7OptionsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }

LABEL_10:
    if (*(a1 + 56))
    {
      if ((*(a2 + 56) & 1) == 0)
      {
        return 0;
      }
    }

    else if ((*(a2 + 56) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40))), xmmword_21DC395B0)) & 0xF) != 0)
    {
      return 0;
    }

    return 1;
  }

  if (*(a2 + 16))
  {
    goto LABEL_10;
  }

  return 0;
}

uint64_t sub_21DA8247C(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  if (*a1)
  {
    if (!v9)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
    v12 = v9;
    v13 = v6;
    v14 = sub_21DBFB63C();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v7)
  {
    if (!v10)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
    v15 = v10;
    v16 = v7;
    v17 = sub_21DBFB63C();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v8)
  {
    if (v11)
    {
      sub_21D0D8CF0(0, a3, a4);
      v18 = v11;
      v19 = v8;
      v20 = sub_21DBFB63C();

      if (v20)
      {
        return 1;
      }
    }
  }

  else if (!v11)
  {
    return 1;
  }

  return 0;
}

uint64_t _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v40 = a1[2];
  v41 = v2;
  v4 = a1[1];
  v38 = *a1;
  v39 = v4;
  v5 = *(a2 + 48);
  v6 = *(a2 + 16);
  *&v43[32] = *(a2 + 32);
  *&v43[48] = v5;
  v7 = *(a2 + 16);
  *v43 = *a2;
  *&v43[16] = v7;
  v8 = a1[3];
  v45[2] = v40;
  v45[3] = v8;
  v45[0] = v38;
  v45[1] = v3;
  v47 = *v43;
  v50 = *(a2 + 48);
  v49 = *&v43[32];
  v42 = *(a1 + 64);
  v44 = *(a2 + 64);
  v46 = *(a1 + 64);
  v51 = *(a2 + 64);
  v48 = v6;
  v9 = *(&v38 + 1);
  v10 = v42;
  v11 = v42 >> 6;
  if (v11 > 1)
  {
    if (v11 == 2)
    {
      if ((v44 & 0xC0) == 0x80)
      {
        v26 = v38;
        *&v27 = v39;
        v31 = *v43;
        v32 = *&v43[16];
        sub_21DA84A8C(v43, &v33);
        sub_21DA84A8C(&v38, &v33);
        sub_21DA84A8C(v43, &v33);
        sub_21DA84A8C(&v38, &v33);
        v12 = &unk_27CE65680;
        v13 = 0x277D755D0;
        goto LABEL_8;
      }
    }

    else if (v44 == 192)
    {
      v18 = vorrq_s8(vorrq_s8(*v43, *&v43[32]), vorrq_s8(*&v43[16], *&v43[48]));
      if (!*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)))
      {
        sub_21D0CF7E0(v45, &qword_27CE65690, &unk_21DC39930);
        v14 = 1;
        return v14 & 1;
      }
    }

    goto LABEL_15;
  }

  if (v11)
  {
    v15 = v44;
    if ((v44 & 0xC0) == 0x40)
    {
      v25 = v39;
      v20 = v41;
      v21 = v40;
      v23 = *&v43[24];
      v24 = *&v43[8];
      v22 = *&v43[40];
      v16 = *&v43[56];
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      sub_21DA84A8C(v43, &v33);
      sub_21DA84A8C(&v38, &v33);
      v17 = sub_21DBFB63C();
      sub_21D0CF7E0(v45, &qword_27CE65690, &unk_21DC39930);
      if (v17)
      {
        v33 = v9;
        v34 = v25;
        v35 = v21;
        v36 = v20;
        v37 = v10 & 0x3F;
        v26 = v24;
        v27 = v23;
        v28 = v22;
        v29 = v16;
        v30 = v15 & 0x3F;
        v14 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC06CustomE7OptionsV2eeoiySbAE_AEtFZ_0(&v33, &v26);
        return v14 & 1;
      }

LABEL_16:
      v14 = 0;
      return v14 & 1;
    }

LABEL_15:
    sub_21DA84A8C(v43, &v33);
    sub_21DA84A8C(&v38, &v33);
    sub_21D0CF7E0(v45, &qword_27CE65690, &unk_21DC39930);
    goto LABEL_16;
  }

  if (v44 > 0x3Fu)
  {
    goto LABEL_15;
  }

  v26 = v38;
  *&v27 = v39;
  v31 = *v43;
  v32 = *&v43[16];
  sub_21DA84A8C(v43, &v33);
  sub_21DA84A8C(&v38, &v33);
  sub_21DA84A8C(v43, &v33);
  sub_21DA84A8C(&v38, &v33);
  v12 = &qword_280D1B8F0;
  v13 = 0x277D75348;
LABEL_8:
  v14 = sub_21DA8247C(&v26, &v31, v12, v13);
  sub_21D0CF7E0(v45, &qword_27CE65690, &unk_21DC39930);
  sub_21D35D940(v43);
  sub_21D35D940(&v38);
  return v14 & 1;
}

BOOL _s15RemindersUICore31TTRIStaticTableViewStandardCellC06SideByH18TitleConfigurationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (v2 == v3)
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = 0;
    }

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      return 0;
    }
  }

  return *(a1 + 24) == *(a2 + 24);
}

BOOL _s15RemindersUICore31TTRIStaticTableViewStandardCellC14ExtraAccessoryO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v49 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (v6 == 1)
    {
      if (v12 == 1)
      {
        v13 = *(a2 + 24);
        v14 = *(a2 + 8);
        sub_21D361B34(*a2, v14, v10, v13, v11, 1);
        sub_21D361B34(v3, v2, v5, v4, v49, 1);
        sub_21D361B34(v8, v14, v10, v13, v11, 1);
        sub_21D361B34(v3, v2, v5, v4, v49, 1);
        sub_21D361BC8(v3, v2, v5, v4, v49, 1);
        sub_21D361BC8(v8, v14, v10, v13, v11, 1);
        sub_21D361BC8(v3, v2, v5, v4, v49, 1);
        v15 = v8;
        v16 = v14;
        v17 = v10;
        v18 = v13;
        v19 = v11;
        v20 = 1;
LABEL_19:
        sub_21D361BC8(v15, v16, v17, v18, v19, v20);
        return v3 == v8;
      }
    }

    else if (v12 == 2)
    {
      v31 = *(a2 + 24);
      v32 = *(a2 + 8);
      sub_21D361B34(*a2, v32, v10, v31, v11, 2);
      sub_21D361B34(v3, v2, v5, v4, v49, 2);
      sub_21D361B34(v8, v32, v10, v31, v11, 2);
      sub_21D361B34(v3, v2, v5, v4, v49, 2);
      sub_21D361BC8(v3, v2, v5, v4, v49, 2);
      sub_21D361BC8(v8, v32, v10, v31, v11, 2);
      sub_21D361BC8(v3, v2, v5, v4, v49, 2);
      v15 = v8;
      v16 = v32;
      v17 = v10;
      v18 = v31;
      v19 = v11;
      v20 = 2;
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (*(a2 + 40))
  {
LABEL_20:
    v48 = *(a2 + 8);
    sub_21D361B34(*a2, v48, v10, v9, v11, v12);
    sub_21D361B34(v3, v2, v5, v4, v49, v6);
    sub_21D361BC8(v3, v2, v5, v4, v49, v6);
    v33 = v8;
    v34 = v48;
    v35 = v10;
    v36 = v9;
    v37 = v11;
    v38 = v12;
LABEL_21:
    sub_21D361BC8(v33, v34, v35, v36, v37, v38);
    return 0;
  }

  if (v3 != v8 || v2 != v7)
  {
    v21 = *(a2 + 8);
    v22 = sub_21DBFC64C();
    v7 = v21;
    if ((v22 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if (!v4)
  {
    if (!v9)
    {
      goto LABEL_14;
    }

LABEL_24:
    v39 = v9;
    v40 = v7;
    sub_21D361B34(v8, v7, v10, v39, v11, 0);
    sub_21D361B34(v3, v2, v5, v4, v49, 0);
    sub_21D361BC8(v3, v2, v5, v4, v49, 0);
    v33 = v8;
    v34 = v40;
    v35 = v10;
    v36 = v39;
    v37 = v11;
    v38 = 0;
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_24;
  }

  if (v5 != v10 || v4 != v9)
  {
    v23 = v9;
    v24 = v8;
    v25 = v7;
    v26 = sub_21DBFC64C();
    v7 = v25;
    v8 = v24;
    v9 = v23;
    if ((v26 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_14:
  if (v49)
  {
    if (v11)
    {
      v46 = v9;
      v27 = v7;
      v47 = v7;
      sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
      sub_21D361B34(v8, v27, v10, v9, v11, 0);
      sub_21D361B34(v3, v2, v5, v4, v49, 0);
      v28 = v11;
      v29 = v49;
      LOBYTE(v27) = sub_21DBFB63C();
      sub_21D361BC8(v3, v2, v5, v4, v49, 0);
      sub_21D361BC8(v8, v47, v10, v46, v11, 0);

      return v27 & 1;
    }

    v44 = v9;
    v45 = v7;
    sub_21D361B34(v8, v7, v10, v44, 0, 0);
    sub_21D361B34(v3, v2, v5, v4, v49, 0);
    sub_21D361BC8(v3, v2, v5, v4, v49, 0);
    v33 = v8;
    v34 = v45;
    v35 = v10;
    v36 = v44;
    v37 = 0;
    v38 = 0;
    goto LABEL_21;
  }

  v41 = v9;
  v42 = v7;
  sub_21D361B34(v8, v7, v10, v41, v11, 0);
  sub_21D361B34(v3, v2, v5, v4, 0, 0);
  v43 = v11;
  sub_21D361BC8(v3, v2, v5, v4, 0, 0);
  sub_21D361BC8(v8, v42, v10, v41, v11, 0);
  if (v11)
  {

    return 0;
  }

  return 1;
}

uint64_t type metadata accessor for TTRIStaticTableViewStandardCell(uint64_t a1)
{
  result = qword_27CE65640;
  if (!qword_27CE65640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DA82FB4(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = *&a1[qword_27CE5AF20];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = ObjectType;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21DA84A84;
  *(v5 + 24) = v4;
  v9[4] = sub_21D11DA28;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D0E6204;
  v9[3] = &block_descriptor_141_0;
  v6 = _Block_copy(v9);
  v7 = a1;

  [v3 performBatchUpdates_];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

void sub_21DA83120(char *a1)
{
  v2 = &a1[qword_27CE655A0];
  swift_beginAccess();
  v3 = v2[64];
  v22 = v2[64];
  v4 = *(v2 + 3);
  v20 = *(v2 + 2);
  v21 = v4;
  v5 = *(v2 + 1);
  v18 = *v2;
  v19 = v5;
  v7 = *(&v5 + 1) >> 1 != 0xFFFFFFFFLL || v3 > 1;
  if (v3 <= 0x3F && v7)
  {
    v8 = v19;
    v15 = v18;
    v9 = *&a1[qword_27CE5AF20];
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = v15;
    *(v10 + 40) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_21DA84A78;
    *(v11 + 24) = v10;
    aBlock[4] = sub_21D11DA28;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_21D0E6204;
    aBlock[3] = &block_descriptor_131_1;
    v12 = _Block_copy(aBlock);
    sub_21D1ADB0C(&v18, v16);
    sub_21D1ADB0C(&v18, v16);
    v13 = a1;

    [v9 performBatchUpdates_];
    sub_21D0CF7E0(&v18, &unk_27CE5EA00, &unk_21DC0A7C0);
    _Block_release(v12);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

void _s15RemindersUICore31TTRIStaticTableViewStandardCellC5coderACSgSo7NSCoderC_tcfc_0()
{
  v1 = v0;
  *(v0 + qword_27CE655A8) = 1;
  v2 = v0 + qword_27CE655A0;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0x1FFFFFFFELL;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  v3 = (v0 + qword_27CE655C8);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + qword_27CE655D0);
  *v4 = 0;
  v4[1] = 0;
  v5 = qword_27CE655D8;
  *(v1 + v5) = [objc_opt_self() labelColor];
  *(v1 + qword_27CE655E8) = 0;
  v6 = qword_27CE655F0;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *(v1 + v6) = sub_21D900614(4);
  *(v1 + qword_27CE655F8) = 0;
  *(v1 + qword_27CE65608) = 0;
  v7 = v1 + qword_27CE65610;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 40) = -1;
  v8 = (v1 + qword_27CE65618);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  v9 = (v1 + qword_27CE65620);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + qword_27CE65580) = 0;
  *(v1 + qword_27CE65588) = 0;
  v10 = v1 + qword_27CE655B8;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v1 + qword_27CE655B0) = 0;
  *(v1 + qword_27CE65628) = 0x3FD999999999999ALL;
  sub_21DBFC31C();
  __break(1u);
}

void _s15RemindersUICore31TTRIStaticTableViewStandardCellC15reuseIdentifierACSgSSSg_tcfc_0()
{
  v1 = v0;
  *(v0 + qword_27CE655A8) = 1;
  v2 = v0 + qword_27CE655A0;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0x1FFFFFFFELL;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  v3 = (v0 + qword_27CE655C8);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + qword_27CE655D0);
  *v4 = 0;
  v4[1] = 0;
  v5 = qword_27CE655D8;
  *(v1 + v5) = [objc_opt_self() labelColor];
  *(v1 + qword_27CE655E8) = 0;
  v6 = qword_27CE655F0;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *(v1 + v6) = sub_21D900614(4);
  *(v1 + qword_27CE655F8) = 0;
  *(v1 + qword_27CE65608) = 0;
  v7 = v1 + qword_27CE65610;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 40) = -1;
  v8 = (v1 + qword_27CE65618);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = 0;
  v9 = (v1 + qword_27CE65620);
  *v9 = 0;
  v9[1] = 0;
  *(v1 + qword_27CE65580) = 0;
  *(v1 + qword_27CE65588) = 0;
  v10 = v1 + qword_27CE655B8;
  *v10 = 0;
  *(v10 + 8) = 0;
  *(v1 + qword_27CE655B0) = 0;
  *(v1 + qword_27CE65628) = 0x3FD999999999999ALL;
  sub_21DBFC31C();
  __break(1u);
}

uint64_t keypath_set_69Tm(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(id *))
{
  v8 = *a1;
  v6 = v8;
  return a5(&v8);
}

id keypath_get_68Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

double keypath_get_64Tm@<D0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
  sub_21DBF8E0C();
  return result;
}

uint64_t getEnumTagSinglePayload for TTRIStaticTableViewStandardCell.CustomViewOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRIStaticTableViewStandardCell.CustomViewOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 57) = v3;
  return result;
}

uint64_t initializeWithCopy for TTRIStaticTableViewStandardCell.Icon(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_21D361F04(*a2, v4, v5, v6, v7, v8, v9, v10, v11);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  return a1;
}

uint64_t assignWithCopy for TTRIStaticTableViewStandardCell.Icon(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  sub_21D361F04(*a2, v4, v5, v6, v7, v8, v9, v10, v11);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  sub_21D362050(v12, v13, v14, v15, v16, v17, v18, v19, v20);
  return a1;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for TTRIStaticTableViewStandardCell.Icon(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v13 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v13;
  v14 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v14;
  *(a1 + 64) = v3;
  sub_21D362050(v4, v6, v5, v7, v8, v9, v10, v11, v12);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIStaticTableViewStandardCell.Icon(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for TTRIStaticTableViewStandardCell.Icon(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 64) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 65) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 2 * -a2;
      result = 0.0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *(a1 + 64) = 0;
      return result;
    }

    *(a1 + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21DA847C8(uint64_t a1)
{
  v1 = *(a1 + 64) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_21DA847F4(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 64) & 1 | (a2 << 6);
    *(result + 24) &= 1uLL;
    *(result + 64) = v2;
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0;
    *(result + 64) = -64;
  }

  return result;
}

uint64_t initializeWithCopy for TTRIStaticTableViewStandardCell.ExtraAccessory(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_21D361B34(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t assignWithCopy for TTRIStaticTableViewStandardCell.ExtraAccessory(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_21D361B34(*a2, v4, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  v14 = *(a1 + 40);
  *(a1 + 40) = v8;
  sub_21D361BC8(v9, v10, v11, v12, v13, v14);
  return a1;
}

uint64_t assignWithTake for TTRIStaticTableViewStandardCell.ExtraAccessory(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v3;
  v11 = *(a1 + 40);
  *(a1 + 40) = v4;
  sub_21D361BC8(v5, v7, v6, v8, v9, v11);
  return a1;
}

unint64_t sub_21DA84A14()
{
  result = qword_280D0C380;
  if (!qword_280D0C380)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CE65660, &qword_21DC22B10);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_280D0C380);
  }

  return result;
}

uint64_t sub_21DA84AD0(uint64_t a1)
{

  return a1;
}

id sub_21DA84B04(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setNumberOfLines_];
  [v2 setUserInteractionEnabled_];
  [v2 setAdjustsFontForContentSizeCategory_];
  if (qword_27CE57020 != -1)
  {
    swift_once();
  }

  LODWORD(v3) = dword_27CE65574;
  [v2 setContentCompressionResistancePriority:1 forAxis:v3];
  if (qword_27CE57030 != -1)
  {
    swift_once();
  }

  LODWORD(v4) = dword_27CE6557C;
  [v2 setContentHuggingPriority:1 forAxis:v4];
  if (qword_27CE57000 != -1)
  {
    swift_once();
  }

  LODWORD(v5) = dword_27CE65564;
  [v2 setContentCompressionResistancePriority:0 forAxis:v5];
  if (qword_27CE57010 != -1)
  {
    swift_once();
  }

  LODWORD(v6) = dword_27CE6556C;
  [v2 setContentHuggingPriority:0 forAxis:v6];
  v7 = qword_27CE655A8;
  swift_beginAccess();
  [v2 setEnabled_];
  return v2;
}

uint64_t initializeWithCopy for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[3];
  *(a1 + 16) = a2[2];
  *(a1 + 24) = v4;
  v5 = *(a2 + 3);
  *(a1 + 32) = *(a2 + 2);
  *(a1 + 48) = v5;
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  sub_21DBF8E0C();

  *(a1 + 24) = a2[3];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = a2[5];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t assignWithTake for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t storeEnumTagSinglePayload for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t assignWithCopy for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation.ColumnConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t assignWithTake for TTRIStaticTableViewStandardCell.GridSubviewRowsComputation.ColumnConfiguration(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  *(a1 + 16) = a2[2];
  return a1;
}

id sub_21DA85098()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  v3 = sub_21D900614(1);
  if ((v2 & 0x80000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    v5 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    *(inited + 64) = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
    *(inited + 40) = v3;
    v6 = v3;
    v7 = v5;
    sub_21D11274C(inited);
    swift_setDeallocating();
    sub_21D1BAED0(inited + 32);
    v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v9 = sub_21DBFA12C();
    type metadata accessor for Key(0);
    sub_21D112874();
    v10 = sub_21DBF9E5C();

    v11 = [v8 initWithString:v9 attributes:v10];

    return v11;
  }

  v47 = v2;
  REMAlarmProximity.localizedLabelFormatString.getter(v1);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_21DC08D00;
  v14 = *MEMORY[0x277D740A8];
  *(v13 + 32) = *MEMORY[0x277D740A8];
  v15 = *MEMORY[0x277D743F8];
  v16 = v14;
  isa = UIFont.withCustomWeight(_:)(v15).super.isa;
  v18 = sub_21D0D8CF0(0, &qword_280D176B0, 0x277D74300);
  *(v13 + 64) = v18;
  *(v13 + 40) = isa;
  sub_21D11274C(v13);
  swift_setDeallocating();
  sub_21D1BAED0(v13 + 32);
  v46 = v12;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_21DC08D00;
  *(v19 + 32) = v16;
  *(v19 + 64) = v18;
  *(v19 + 40) = v3;
  v48 = v3;
  sub_21D11274C(v19);
  swift_setDeallocating();
  sub_21D1BAED0(v19 + 32);
  v20 = objc_allocWithZone(MEMORY[0x277CCAB68]);
  v21 = sub_21DBFA12C();

  v22 = [v20 initWithString_];

  v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v24 = sub_21DBFA12C();
  type metadata accessor for Key(0);
  sub_21D112874();
  v25 = sub_21DBF9E5C();

  v11 = [v23 initWithString:v24 attributes:v25];

  v26 = v22;
  v27 = sub_21DBFA12C();
  v28 = [v26 rangeOfString_];
  v30 = v29;

  if (v28 == sub_21DBF4B4C())
  {

    if ((v47 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v31 = sub_21DBFA12C();
    [v26 replaceCharactersInRange:v28 withString:{v30, v31}];

    v32 = objc_allocWithZone(MEMORY[0x277CCAB48]);
    v33 = sub_21DBF9E5C();

    v34 = [v32 initWithString:v26 attributes:v33];

    [v34 insertAttributedString:v11 atIndex:v28];
    v11 = v34;
    if ((v47 & 1) == 0)
    {
LABEL_12:

      return v11;
    }
  }

  [v11 mutableCopy];
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0D8CF0(0, &qword_27CE5FAF0, 0x277CCAB48);
  if (!swift_dynamicCast())
  {
    goto LABEL_12;
  }

  v35 = swift_initStackObject();
  v36 = *MEMORY[0x277D74150];
  *(v35 + 32) = *MEMORY[0x277D74150];
  *(v35 + 16) = xmmword_21DC08D00;
  *(v35 + 64) = MEMORY[0x277D83B88];
  *(v35 + 40) = 1;
  v37 = v36;
  sub_21D11274C(v35);
  swift_setDeallocating();
  sub_21D1BAED0(v35 + 32);
  v38 = sub_21DBF9E5C();

  v39 = [v49 string];
  v40 = sub_21DBFA16C();
  v42 = v41;

  v43 = MEMORY[0x223D42B30](v40, v42);

  [v49 addAttributes:v38 range:{0, v43}];

  v44 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
  if (v44)
  {

    return v44;
  }

  return v11;
}

uint64_t sub_21DA856C8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE65698);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA85768(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE65698);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRILocationCellContent.action.getter()
{
  v1 = (v0 + qword_27CE65698);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1, v1[1]);
  return v2;
}

uint64_t TTRILocationCellContent.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE65698);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6, v7);
}

id TTRILocationCellContent.init(state:)(__int128 *a1)
{
  v9 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = (v1 + qword_27CE65698);
  *v4 = 0;
  v4[1] = 0;
  v5 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v5 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v5 & *v1) + 0x90)) = 0;
  v6 = v1 + *((*v5 & *v1) + 0x78);
  *v6 = v9;
  *(v6 + 2) = v2;
  v6[24] = v3;
  *(v1 + *((*v5 & *v1) + 0x80)) = 0;
  v7 = v1 + *((*v5 & *v1) + 0x88);
  strcpy(v7, "LocationCell");
  v7[13] = 0;
  *(v7 + 7) = -5120;
  v10.receiver = v1;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE622F8, &qword_21DC2B250);
  return objc_msgSendSuper2(&v10, sel_init);
}

void TTRILocationCellContent.updateCell(_:)(void *a1)
{
  v2 = v1;
  v4 = [a1 textLabel];
  v5 = MEMORY[0x277D85000];
  if (v4)
  {
    v6 = v4;
    v7 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v20 = *v7;
    v21 = *(v7 + 2);
    LOBYTE(v22) = v7[24];
    v8 = sub_21DA85098();
    [v6 setAttributedText_];
  }

  v9 = v2 + *((*v5 & *v2) + 0x78);
  swift_beginAccess();
  v10 = v9[24];
  if (v10 < 0 && (v10 & 1) != 0)
  {
    v12 = *(v9 + 1);
    v11 = *(v9 + 2);
    v13 = *v9;
    sub_21D5D359C(v13, v12);
    sub_21DBF8E0C();
    REMAlarmProximity.localizedLabelFormatString.getter(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_21DC08D00;
    *(v14 + 56) = MEMORY[0x277D837D0];
    *(v14 + 64) = sub_21D17A884();
    *(v14 + 32) = v13;
    *(v14 + 40) = v12;
    sub_21DBFA17C();

    sub_21D5D35A4();
    if (qword_280D1B938 != -1)
    {
      swift_once();
    }

    v15 = qword_280D1B940;
    v16 = qword_280D1B948[0];
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v15, v16);

    if (qword_27CE57548 != -1)
    {
      swift_once();
    }

    v17 = qword_27CE67180;
    v18 = *algn_27CE67188;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v17, v18);

    v19 = sub_21DBFA12C();

    [a1 setAccessibilityLabel_];
  }

  else
  {
    [a1 setAccessibilityLabel_];
  }
}

void sub_21DA85E00(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  v5 = &v4[qword_27CE65698];
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 1);

    v6(v8);
    sub_21D0D0E88(v6, v7);

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v9);
  }
}

id TTRILocationTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id TTRILocationTableCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void (*TTRILocationTableCell.accessibilityActivationPoint.modify(void *a1))()
{
  [*(v1 + OBJC_IVAR____TtC15RemindersUICore21TTRILocationTableCell_infoButton) accessibilityActivationPoint];
  *a1 = v3;
  a1[1] = v4;
  return nullsub_1;
}

uint64_t _s15RemindersUICore28TTRILocationCellContentStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (v5 < 0)
  {
    if (v9 < 0)
    {
      v15 = *a1;
      if (v3 == v7 && v2 == v6)
      {
        sub_21D5D359C(v15, v2);
        sub_21D5D359C(v3, v2);
        sub_21D5D35A4();
        sub_21D5D35A4();
        if (v4 != v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v17 = sub_21DBFC64C();
        sub_21D5D359C(v7, v6);
        sub_21D5D359C(v3, v2);
        sub_21D5D35A4();
        sub_21D5D35A4();
        v14 = 0;
        if ((v17 & 1) == 0 || v4 != v8)
        {
          return v14 & 1;
        }
      }

      v14 = v9 ^ v5 ^ 1;
      return v14 & 1;
    }

LABEL_9:
    sub_21D5D359C(*a2, *(a2 + 8));
    sub_21D5D359C(v3, v2);
    sub_21D5D35A4();
    sub_21D5D35A4();
LABEL_10:
    v14 = 0;
    return v14 & 1;
  }

  if (v9 < 0)
  {
    goto LABEL_9;
  }

  v10 = *a1;
  if (v3 != v7 || v2 != v6)
  {
    v12 = sub_21DBFC64C();
    sub_21D5D359C(v7, v6);
    sub_21D5D359C(v3, v2);
    sub_21D5D35A4();
    sub_21D5D35A4();
    return v12 & 1;
  }

  sub_21D5D359C(v10, v2);
  sub_21D5D359C(v3, v2);
  sub_21D5D35A4();
  sub_21D5D35A4();
  v14 = 1;
  return v14 & 1;
}

id sub_21DA86454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = [objc_opt_self() buttonWithType_];
  v7 = [objc_opt_self() configurationWithScale_];
  v8 = sub_21DBFA12C();
  v9 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  [v6 setImage:v9 forState:0];
  v10 = v6;
  [v10 sizeToFit];
  *&v3[OBJC_IVAR____TtC15RemindersUICore21TTRILocationTableCell_infoButton] = v10;
  v11 = v10;
  if (a2)
  {
    v12 = sub_21DBFA12C();
  }

  else
  {
    v12 = 0;
  }

  v24.receiver = v3;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, 0, v12);

  v14 = v13;
  [v14 setAccessoryView_];

  v15 = [v14 textLabel];
  if (v15)
  {
    v16 = v15;
    v17 = [objc_opt_self() secondaryLabelColor];
    [v16 setTextColor_];
  }

  v18 = [v14 textLabel];
  if (v18)
  {
    v19 = v18;
    [v18 setNumberOfLines_];
  }

  v20 = [v14 textLabel];

  if (v20)
  {
    [v20 setLineBreakMode_];
  }

  v21 = v14;
  [v21 setIsAccessibilityElement_];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v22 = sub_21DBFA12C();

  [v21 setAccessibilityHint_];

  return v21;
}

uint64_t initializeWithCopy for TTRILocationCellContentState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D5D359C(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for TTRILocationCellContentState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_21D5D359C(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_21D5D35A4();
  return a1;
}

uint64_t assignWithTake for TTRILocationCellContentState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_21D5D35A4();
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRILocationCellContentState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 25))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRILocationCellContentState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRILocationCellContent(uint64_t a1)
{
  result = qword_27CE656A8;
  if (!qword_27CE656A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id TTRIGenericCellContent.init(adaptor:hasDisclosure:state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *MEMORY[0x277D85000];
  v8 = sub_21DA874DC(a1, a2, a3);
  v9 = *((v7 & v6) + 0xE8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a3, AssociatedTypeWitness);
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

void sub_21DA86BEC(char *a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x108);
  swift_beginAccess();
  if (*(v1 + v3))
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  *a1 = v4;
}

void sub_21DA86C98()
{
  v1 = (v0 + *((*MEMORY[0x277D85000] & *v0) + 0x108));
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = v1[1];
    v4 = sub_21D0D0E78(*v1, v3);
    v2(v4);
    sub_21D0D0E88(v2, v3);
  }
}

uint64_t sub_21DA86D2C(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0xF0);
  v6 = *((*MEMORY[0x277D85000] & *v1) + 0xE8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v13 - v9;
  v11 = *((v4 & v3) + 0x78);
  swift_beginAccess();
  (*(v8 + 16))(v10, &v1[v11], AssociatedTypeWitness);
  (*(v5 + 48))(v10, a1, v6, v5);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_21DA86F04()
{
  v0 = sub_21DA87640();
  sub_21D0D0E78(v0, v1);
  return v0;
}

uint64_t sub_21DA86F38(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x108));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6, v7);
}

uint64_t sub_21DA870C4@<X0>(uint64_t (**a1)()@<X8>)
{
  v2 = sub_21DA87640();
  if (v2)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_allocObject();
    v3 = v5;
    v7 = v6;
    v2 = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = v5;
    v8 = sub_21D0E6070;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a1 = v8;
  a1[1] = v7;

  return sub_21D0D0E78(v2, v3);
}

uint64_t sub_21DA87158(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_21D11DA58;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_21D0D0E78(v1, v2);
  return sub_21DA86F38(v4, v3);
}

id TTRIGenericCellContent.__allocating_init(adaptor:hasDisclosure:state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v8 = objc_allocWithZone(v4);
  v9 = sub_21DA874DC(a1, v6, a3);
  v10 = *(v4 + 29);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a3, AssociatedTypeWitness);
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_21DA87300()
{
  v1 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *v0) + 0xE8) - 8) + 8))(&v0[*((*MEMORY[0x277D85000] & *v0) + 0xF8)]);
  v2 = &v0[*((*v1 & *v0) + 0x108)];
  v3 = *v2;
  v4 = v2[1];

  return sub_21D0D0E88(v3, v4);
}

id TTRIGenericCellContent.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTRIGenericCellContent(0, *((*MEMORY[0x277D85000] & *v4) + 0xE8), *((*MEMORY[0x277D85000] & *v4) + 0xF0), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_21DA87424(char *a1)
{
  v2 = MEMORY[0x277D85000];
  (*(*(*((*MEMORY[0x277D85000] & *a1) + 0xE8) - 8) + 8))(&a1[*((*MEMORY[0x277D85000] & *a1) + 0xF8)]);
  v3 = &a1[*((*v2 & *a1) + 0x108)];
  v4 = *v3;
  v5 = v3[1];

  return sub_21D0D0E88(v4, v5);
}

id sub_21DA874DC(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = MEMORY[0x277D85000];
  v9 = *MEMORY[0x277D85000];
  v10 = &v4[*((*MEMORY[0x277D85000] & *v4) + 0x108)];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = *((v9 & v7) + 0xE8);
  (*(*(v11 - 8) + 16))(&v4[*((*v8 & *v4) + 0xF8)], a1, v11);
  v3[*((*v8 & *v3) + 0x100)] = a2;
  v12 = *((v9 & v7) + 0xF0);
  (*(v12 + 32))(&v16, v11, v12);
  v13 = (*(v12 + 40))(v11, v12);
  return sub_21DBE97E0(a3, &v16, v13, v14);
}

uint64_t sub_21DA87640()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x108);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_21DA87728(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 TTRIDetailCellState.init(icon:title:titleTextColor:subtitle:detailText:detailTextColor:shortenedDetailText:checkmarkState:accessibilityLabel:accessibilityValue:accessibilityHint:accessibilityDifferentiateWithoutColorsIcon:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char *a12, __int128 a13, __int128 a14, __n128 a15, uint64_t a16, uint64_t a17)
{
  v24 = *a12;
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0x1FFFFFFFELL;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0;
  v33 = 0;
  v25 = *(a9 + 48);
  v32[2] = *(a9 + 32);
  v32[3] = v25;
  v26 = *(a9 + 16);
  v32[0] = *a9;
  v32[1] = v26;
  sub_21D0CF7E0(v32, &unk_27CE5EA00, &unk_21DC0A7C0);
  v27 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v27;
  *(a9 + 64) = *(a1 + 64);
  v28 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v28;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 128) = a10;
  *(a9 + 136) = a11;
  *(a9 + 144) = v24;
  *(a9 + 152) = a13;
  *(a9 + 168) = a14;
  result = a15;
  *(a9 + 184) = a15;
  *(a9 + 200) = a16;
  *(a9 + 208) = a17;
  return result;
}

id TTRIDetailCellContent.__allocating_init(state:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v4;
  v11[12] = *(a1 + 192);
  v12 = *(a1 + 208);
  v5 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v5;
  v6 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v6;
  v7 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v7;
  v8 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v8;
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  return sub_21DA87B30(0, 0x65436C6961746544, 0xEA00000000006C6CLL, 0, v11);
}

id TTRIDetailDisclosureCellContent.__allocating_init(state:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *(a1 + 176);
  v11[10] = *(a1 + 160);
  v11[11] = v4;
  v11[12] = *(a1 + 192);
  v12 = *(a1 + 208);
  v5 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v5;
  v6 = *(a1 + 144);
  v11[8] = *(a1 + 128);
  v11[9] = v6;
  v7 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v7;
  v8 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v8;
  v9 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v9;
  return sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, v11);
}

id sub_21DA87B30(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = MEMORY[0x277D85000];
  v11 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x108));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + *((*v10 & *v5) + 0xF8));
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v5 + *((*v10 & *v5) + 0x100)) = a4;
  *(v5 + *((*v10 & *v5) + 0x68)) = 0;
  *(v5 + *((*v10 & *v5) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v10 & *v5) + 0x90)) = 0;
  v13 = v5 + *((*v10 & *v5) + 0x78);
  v14 = *(a5 + 16);
  *v13 = *a5;
  *(v13 + 1) = v14;
  v15 = *(a5 + 80);
  *(v13 + 4) = *(a5 + 64);
  *(v13 + 5) = v15;
  v16 = *(a5 + 48);
  *(v13 + 2) = *(a5 + 32);
  *(v13 + 3) = v16;
  v17 = *(a5 + 144);
  *(v13 + 8) = *(a5 + 128);
  *(v13 + 9) = v17;
  v18 = *(a5 + 112);
  *(v13 + 6) = *(a5 + 96);
  *(v13 + 7) = v18;
  *(v13 + 26) = *(a5 + 208);
  v19 = *(a5 + 192);
  *(v13 + 11) = *(a5 + 176);
  *(v13 + 12) = v19;
  *(v13 + 10) = *(a5 + 160);
  *(v5 + *((*v10 & *v5) + 0x80)) = a1;
  v20 = (v5 + *((*v10 & *v5) + 0x88));
  *v20 = a2;
  v20[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v22.receiver = v5;
  v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE65790, &unk_21DC39C90);
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_21DA87D44(void *a1, uint64_t a2, uint64_t a3, char a4, _OWORD *a5)
{
  v10 = MEMORY[0x277D85000];
  v11 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x108));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + *((*v10 & *v5) + 0xF8));
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v5 + *((*v10 & *v5) + 0x100)) = a4;
  *(v5 + *((*v10 & *v5) + 0x68)) = 0;
  *(v5 + *((*v10 & *v5) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v10 & *v5) + 0x90)) = 0;
  v13 = (v5 + *((*v10 & *v5) + 0x78));
  v14 = a5[1];
  *v13 = *a5;
  v13[1] = v14;
  v15 = a5[5];
  v13[4] = a5[4];
  v13[5] = v15;
  v16 = a5[3];
  v13[2] = a5[2];
  v13[3] = v16;
  *(v5 + *((*v10 & *v5) + 0x80)) = a1;
  v17 = (v5 + *((*v10 & *v5) + 0x88));
  *v17 = a2;
  v17[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v19.receiver = v5;
  v19.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65760, &qword_21DC39C60);
  return objc_msgSendSuper2(&v19, sel_init);
}

id sub_21DA87F1C(void *a1, uint64_t a2, uint64_t a3, char a4, _OWORD *a5)
{
  v10 = MEMORY[0x277D85000];
  v11 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x108));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + *((*v10 & *v5) + 0xF8));
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v5 + *((*v10 & *v5) + 0x100)) = a4;
  *(v5 + *((*v10 & *v5) + 0x68)) = 0;
  *(v5 + *((*v10 & *v5) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v10 & *v5) + 0x90)) = 0;
  v13 = (v5 + *((*v10 & *v5) + 0x78));
  v14 = a5[3];
  v13[2] = a5[2];
  v13[3] = v14;
  v15 = a5[1];
  *v13 = *a5;
  v13[1] = v15;
  *(v13 + 121) = *(a5 + 121);
  v16 = a5[7];
  v13[6] = a5[6];
  v13[7] = v16;
  v17 = a5[5];
  v13[4] = a5[4];
  v13[5] = v17;
  *(v5 + *((*v10 & *v5) + 0x80)) = a1;
  v18 = (v5 + *((*v10 & *v5) + 0x88));
  *v18 = a2;
  v18[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v20.receiver = v5;
  v20.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65780, &qword_21DC39C80);
  return objc_msgSendSuper2(&v20, sel_init);
}

id sub_21DA88104(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v16 = MEMORY[0x277D85000];
  v17 = (v8 + *((*MEMORY[0x277D85000] & *v8) + 0x108));
  *v17 = 0;
  v17[1] = 0;
  v18 = (v8 + *((*v16 & *v8) + 0xF8));
  *v18 = a1;
  v18[1] = a2;
  v18[2] = a3;
  *(v8 + *((*v16 & *v8) + 0x100)) = a4;
  *(v8 + *((*v16 & *v8) + 0x68)) = 0;
  *(v8 + *((*v16 & *v8) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + *((*v16 & *v8) + 0x90)) = 0;
  v19 = v8 + *((*v16 & *v8) + 0x78);
  *v19 = a5;
  *(v19 + 1) = a6;
  *(v19 + 2) = a7;
  v19[24] = a8 & 1;
  *(v8 + *((*v16 & *v8) + 0x80)) = a1;
  v20 = (v8 + *((*v16 & *v8) + 0x88));
  *v20 = a2;
  v20[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v22.receiver = v8;
  v22.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65768, &qword_21DC39C68);
  return objc_msgSendSuper2(&v22, sel_init);
}

id sub_21DA88304(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v14 = MEMORY[0x277D85000];
  v15 = (v7 + *((*MEMORY[0x277D85000] & *v7) + 0x108));
  *v15 = 0;
  v15[1] = 0;
  v16 = (v7 + *((*v14 & *v7) + 0xF8));
  *v16 = a1;
  v16[1] = a2;
  v16[2] = a3;
  *(v7 + *((*v14 & *v7) + 0x100)) = a4;
  *(v7 + *((*v14 & *v7) + 0x68)) = 0;
  *(v7 + *((*v14 & *v7) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v7 + *((*v14 & *v7) + 0x90)) = 0;
  v17 = v7 + *((*v14 & *v7) + 0x78);
  v18 = *(a5 + 16);
  *v17 = *a5;
  *(v17 + 1) = v18;
  v17[96] = *(a5 + 96);
  v19 = *(a5 + 80);
  *(v17 + 4) = *(a5 + 64);
  *(v17 + 5) = v19;
  v20 = *(a5 + 48);
  *(v17 + 2) = *(a5 + 32);
  *(v17 + 3) = v20;
  *(v7 + *((*v14 & *v7) + 0x80)) = a1;
  v21 = (v7 + *((*v14 & *v7) + 0x88));
  *v21 = a2;
  v21[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v23.receiver = v7;
  v23.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  return objc_msgSendSuper2(&v23, sel_init);
}

id sub_21DA884EC(void *a1, uint64_t a2, uint64_t a3, char a4, _OWORD *a5)
{
  v10 = MEMORY[0x277D85000];
  v11 = (v5 + *((*MEMORY[0x277D85000] & *v5) + 0x108));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + *((*v10 & *v5) + 0xF8));
  *v12 = a1;
  v12[1] = a2;
  v12[2] = a3;
  *(v5 + *((*v10 & *v5) + 0x100)) = a4;
  *(v5 + *((*v10 & *v5) + 0x68)) = 0;
  *(v5 + *((*v10 & *v5) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v10 & *v5) + 0x90)) = 0;
  v13 = (v5 + *((*v10 & *v5) + 0x78));
  v14 = a5[1];
  *v13 = *a5;
  v13[1] = v14;
  *(v13 + 89) = *(a5 + 89);
  v15 = a5[5];
  v13[4] = a5[4];
  v13[5] = v15;
  v16 = a5[3];
  v13[2] = a5[2];
  v13[3] = v16;
  *(v5 + *((*v10 & *v5) + 0x80)) = a1;
  v17 = (v5 + *((*v10 & *v5) + 0x88));
  *v17 = a2;
  v17[1] = a3;
  sub_21D568328(a1);
  sub_21DBF8E0C();
  v19.receiver = v5;
  v19.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65778, &qword_21DC39C78);
  return objc_msgSendSuper2(&v19, sel_init);
}

BOOL static TTRIDetailCellState.CheckmarkState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TTRIDetailCellState.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21D0D3954(v8, v7, &unk_27CE5EA00, &unk_21DC0A7C0);
}

__n128 TTRIDetailCellState.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_21D0CF7E0(v7, &unk_27CE5EA00, &unk_21DC0A7C0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t TTRIDetailCellState.title.getter()
{
  v1 = *(v0 + 72);
  sub_21DBF8E0C();
  return v1;
}

void TTRIDetailCellState.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

void *TTRIDetailCellState.titleTextColor.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void *TTRIDetailCellState.subtitle.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

uint64_t TTRIDetailCellState.detailText.getter()
{
  v1 = *(v0 + 104);
  sub_21DBF8E0C();
  return v1;
}

void TTRIDetailCellState.detailText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

void *TTRIDetailCellState.detailTextColor.getter()
{
  v1 = *(v0 + 120);
  v2 = v1;
  return v1;
}

uint64_t TTRIDetailCellState.shortenedDetailText.getter()
{
  v1 = *(v0 + 128);
  sub_21DBF8E0C();
  return v1;
}

void TTRIDetailCellState.shortenedDetailText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
}

uint64_t TTRIDetailCellState.accessibilityLabel.getter()
{
  v1 = *(v0 + 152);
  sub_21DBF8E0C();
  return v1;
}

void TTRIDetailCellState.accessibilityLabel.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
}

uint64_t TTRIDetailCellState.accessibilityValue.getter()
{
  v1 = *(v0 + 168);
  sub_21DBF8E0C();
  return v1;
}

void TTRIDetailCellState.accessibilityValue.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
}

uint64_t TTRIDetailCellState.accessibilityHint.getter()
{
  v1 = *(v0 + 184);
  sub_21DBF8E0C();
  return v1;
}

void TTRIDetailCellState.accessibilityHint.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
}

uint64_t TTRIDetailCellState.accessibilityDifferentiateWithoutColorsIcon.getter()
{
  v1 = *(v0 + 200);
  sub_21DBF8E0C();
  return v1;
}

void TTRIDetailCellState.accessibilityDifferentiateWithoutColorsIcon.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
}

id TTRIDetailCellStateAdaptor.prototypeCellView.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_21D568328(v2);
}

uint64_t TTRIDetailCellStateAdaptor.reuseIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRIDetailCellStateAdaptor.init(reuseIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

uint64_t TTRIDetailCellStateAdaptor.setState(_:on:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v14[10] = *(a1 + 160);
  v14[11] = v2;
  v14[12] = *(a1 + 192);
  v15 = *(a1 + 208);
  v3 = *(a1 + 112);
  v14[6] = *(a1 + 96);
  v14[7] = v3;
  v4 = *(a1 + 144);
  v14[8] = *(a1 + 128);
  v14[9] = v4;
  v5 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v5;
  v6 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v6;
  v7 = *(a1 + 16);
  v14[0] = *a1;
  v14[1] = v7;
  v12[2] = a2;
  v12[3] = v14;
  v8 = *(a2 + qword_27CE5AF20);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_21DA8A07C;
  *(v9 + 24) = v12;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_137;
  v10 = _Block_copy(aBlock);

  [v8 performBatchUpdates_];
  _Block_release(v10);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21DA88F1C(uint64_t a1, __int128 *a2)
{
  v2 = a2;
  v4 = a2[3];
  v93 = a2[2];
  v94 = v4;
  v95 = *(a2 + 64);
  v5 = a2[1];
  v91 = *a2;
  v92 = v5;
  v6 = a1 + qword_27CE655A0;
  swift_beginAccess();
  v7 = *(v6 + 48);
  v98 = *(v6 + 32);
  v99 = v7;
  v100 = *(v6 + 64);
  v8 = *(v6 + 16);
  v96 = *v6;
  v97 = v8;
  v101[2] = v98;
  v101[3] = v7;
  v102 = v100;
  v101[0] = v96;
  v101[1] = v8;
  v9 = v91;
  v10 = v92;
  v11 = v93;
  v12 = v94;
  *(v6 + 64) = v95;
  *(v6 + 32) = v11;
  *(v6 + 48) = v12;
  *v6 = v9;
  *(v6 + 16) = v10;
  sub_21D0D3954(&v91, &aBlock, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0D3954(&v96, &aBlock, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0CF7E0(v101, &unk_27CE5EA00, &unk_21DC0A7C0);
  v87 = v98;
  v88 = v99;
  v89 = v100;
  aBlock = v96;
  v86 = v97;
  sub_21DA7EF48(&aBlock);
  sub_21D0CF7E0(&v96, &unk_27CE5EA00, &unk_21DC0A7C0);
  v13 = *(v2 + 72);
  v14 = *(v2 + 80);
  v15 = *(a1 + qword_27CE65590);
  swift_bridgeObjectRetain_n();
  v16 = v15;
  v67 = v14;
  v68 = v13;
  v17 = sub_21DBFA12C();
  [v16 setText_];

  v18 = *(v2 + 88);
  v19 = v18;
  if (!v18)
  {
    v19 = [objc_opt_self() labelColor];
  }

  *&aBlock = v19;
  v20 = v18;
  sub_21DA7B9D0(&aBlock);
  *&aBlock = [objc_opt_self() secondaryLabelColor];
  sub_21DA7BAF4(&aBlock);
  v21 = *(v2 + 96);
  v65 = v21;
  v69 = v21;
  sub_21DA7C390(v21);
  v23 = *(v2 + 104);
  v22 = *(v2 + 112);
  v71 = a1;
  v24 = *(v2 + 120);
  v25 = a1 + qword_27CE65610;
  swift_beginAccess();
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v29 = *(v25 + 24);
  v30 = *(v25 + 32);
  v73 = v23;
  *v25 = v23;
  *(v25 + 8) = v22;
  v31 = *(v2 + 128);
  *(v25 + 16) = v31;
  *(v25 + 32) = v24;
  LOBYTE(v23) = *(v25 + 40);
  *(v25 + 40) = 0;
  v66 = v31;
  v32 = v24;
  v72 = v22;
  isEscapingClosureAtFileLocation = v71;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_21D361B20(v26, v27, v28, v29, v30, v23);
  sub_21D361BB4(v26, v27, v28, v29, v30, v23);
  *&aBlock = v26;
  *(&aBlock + 1) = v27;
  *&v86 = v28;
  *(&v86 + 1) = v29;
  *&v87 = v30;
  BYTE8(v87) = v23;
  sub_21DA7F6B4(&aBlock);
  sub_21D361BB4(v26, v27, v28, v29, v30, v23);
  v70 = *(v2 + 152);
  if (*(&v70 + 1))
  {
    sub_21DBF8E0C();
    v34 = v67;

    v35 = v65;

    v36 = sub_21DBFA12C();
    v37 = v68;
    v38 = v69;
  }

  else
  {
    v39 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_21DC08D00;
    v34 = v67;
    v37 = v68;
    *(v40 + 32) = v68;
    *(v40 + 40) = v67;
    v38 = v69;
    if (v69)
    {
      v41 = [v65 string];
      v42 = sub_21DBFA16C();
      v44 = v43;

      v46 = *(v40 + 16);
      v45 = *(v40 + 24);
      v47 = (v46 + 1);
      if (v46 >= v45 >> 1)
      {
LABEL_39:
        v40 = sub_21D210A84((v45 > 1), v47, 1, v40);
      }

      *(v40 + 16) = v47;
      v48 = v40 + 16 * v46;
      *(v48 + 32) = v42;
      *(v48 + 40) = v44;
      v38 = v69;
    }

    *&aBlock = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
    sub_21D1ADAA8();
    sub_21DBFA07C();

    v36 = sub_21DBFA12C();

    v35 = v39;
  }

  [isEscapingClosureAtFileLocation setAccessibilityLabel_];

  v39 = *(v2 + 168);
  v49 = *(v2 + 176);
  if (v49)
  {
    swift_bridgeObjectRetain_n();
  }

  v50 = sub_21DBFA12C();

  [isEscapingClosureAtFileLocation setAccessibilityValue_];

  if (*(v2 + 192))
  {
    v51 = sub_21DBFA12C();
  }

  else
  {
    v51 = 0;
  }

  [isEscapingClosureAtFileLocation setAccessibilityHint_];

  v75 = v37;
  v76 = v34;
  if (v38)
  {
    v52 = [v35 string];
    v44 = sub_21DBFA16C();
    v47 = v53;
  }

  else
  {
    v44 = 0;
    v47 = 0;
  }

  v40 = 0;
  v46 = v74;
  v77 = v44;
  v78 = v47;
  v79 = v73;
  v80 = v72;
  v82 = v70;
  v81 = v66;
  v83 = v39;
  v84 = v49;
  v37 = 6;
  v42 = MEMORY[0x277D84F90];
LABEL_18:
  if (v40 <= 6)
  {
    v54 = 6;
  }

  else
  {
    v54 = v40;
  }

  v45 = v54 + 1;
  v55 = 16 * v40 + 40;
  while (v40 != 6)
  {
    if (v45 == ++v40)
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v56 = v55 + 16;
    v44 = *&v74[v55];
    v55 += 16;
    if (v44)
    {
      v39 = *&v74[v56 - 24];
      sub_21DBF8E0C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_21D210A84(0, *(v42 + 16) + 1, 1, v42);
      }

      v34 = *(v42 + 16);
      v57 = *(v42 + 24);
      v47 = (v34 + 1);
      if (v34 >= v57 >> 1)
      {
        v42 = sub_21D210A84((v57 > 1), v34 + 1, 1, v42);
      }

      *(v42 + 16) = v47;
      v58 = v42 + 16 * v34;
      *(v58 + 32) = v39;
      *(v58 + 40) = v44;
      goto LABEL_18;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE588A0, &qword_21DC09AF0);
  swift_arrayDestroy();
  v59 = sub_21DBFA5DC();

  [isEscapingClosureAtFileLocation setAccessibilityUserInputLabels_];

  v60 = *(v2 + 144);
  if (v60 != 2)
  {
    if (v60)
    {
      v61 = 3;
    }

    else
    {
      v61 = 0;
    }

    [isEscapingClosureAtFileLocation setAccessoryType_];
  }

  v90 = *(v2 + 200);
  v62 = (isEscapingClosureAtFileLocation + qword_27CE65620);
  swift_beginAccess();
  *v62 = v90;
  sub_21D0D3954(&v90, &aBlock, &qword_27CE588A0, &qword_21DC09AF0);

  v44 = *(isEscapingClosureAtFileLocation + qword_27CE5AF20);
  v42 = swift_allocObject();
  *(v42 + 16) = isEscapingClosureAtFileLocation;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21DA82084;
  *(v2 + 24) = v42;
  *&v87 = sub_21D0E622C;
  *(&v87 + 1) = v2;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v86 = sub_21D0E6204;
  *(&v86 + 1) = &block_descriptor_36_2;
  v47 = _Block_copy(&aBlock);
  v37 = *(&v87 + 1);
  v63 = isEscapingClosureAtFileLocation;

  [v44 performBatchUpdates_];
  _Block_release(v47);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_38;
  }

  return result;
}

id TTRIDetailCellContent.init(state:)(uint64_t a1)
{
  v1 = *(a1 + 176);
  v8[10] = *(a1 + 160);
  v8[11] = v1;
  v8[12] = *(a1 + 192);
  v9 = *(a1 + 208);
  v2 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v2;
  v3 = *(a1 + 144);
  v8[8] = *(a1 + 128);
  v8[9] = v3;
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return sub_21DA87B30(0, 0x65436C6961746544, 0xEA00000000006C6CLL, 0, v8);
}

id TTRIDetailDisclosureCellContent.init(state:)(uint64_t a1)
{
  v1 = *(a1 + 176);
  v8[10] = *(a1 + 160);
  v8[11] = v1;
  v8[12] = *(a1 + 192);
  v9 = *(a1 + 208);
  v2 = *(a1 + 112);
  v8[6] = *(a1 + 96);
  v8[7] = v2;
  v3 = *(a1 + 144);
  v8[8] = *(a1 + 128);
  v8[9] = v3;
  v4 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v4;
  v5 = *(a1 + 80);
  v8[4] = *(a1 + 64);
  v8[5] = v5;
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  return sub_21DA87B30(0, 0xD000000000000014, 0x800000021DC5F610, 1, v8);
}

uint64_t _s15RemindersUICore19TTRIDetailCellStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v122 = *(a1 + 32);
  v123 = v4;
  v5 = *(a1 + 16);
  v120 = *a1;
  v121 = v5;
  v6 = *(a2 + 48);
  v125[2] = *(a2 + 32);
  v125[3] = v6;
  v7 = *(a2 + 16);
  v125[0] = *a2;
  v125[1] = v7;
  v124 = *(a1 + 64);
  v8 = *(a1 + 72);
  v93 = *(a1 + 88);
  v94 = *(a1 + 80);
  v91 = *(a1 + 96);
  v88 = *(a1 + 112);
  v89 = *(a1 + 104);
  v9 = *(a1 + 128);
  v85 = *(a1 + 120);
  v82 = *(a1 + 136);
  v10 = *(a1 + 144);
  v11 = *(a1 + 152);
  v12 = *(a1 + 160);
  v13 = *(a1 + 168);
  v14 = *(a1 + 176);
  v15 = *(a1 + 184);
  v16 = *(a1 + 192);
  v17 = *(a1 + 200);
  v18 = *(a1 + 208);
  v126 = *(a2 + 64);
  v19 = *(a2 + 72);
  v20 = *(a2 + 80);
  v92 = *(a2 + 88);
  v90 = *(a2 + 96);
  v86 = *(a2 + 112);
  v87 = *(a2 + 104);
  v21 = *(a2 + 120);
  v80 = *(a2 + 128);
  v22 = *(&v5 + 1);
  *&v119[23] = *(a2 + 16);
  v83 = *(a2 + 136);
  v84 = v21;
  *&v119[7] = v125[0];
  v81 = *(a2 + 144);
  v24 = *(a2 + 152);
  v23 = *(a2 + 160);
  v26 = *(a2 + 168);
  v25 = *(a2 + 176);
  v27 = *(a2 + 184);
  v28 = *(a2 + 192);
  v30 = *(a2 + 200);
  v29 = *(a2 + 208);
  v31 = v124;
  v32 = *(&v7 + 1);
  v33 = v126;
  if (*(&v5 + 1) >> 1 == 0xFFFFFFFFLL && v124 < 2u)
  {
    if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v126 < 2u)
    {
      v73 = v9;
      v74 = v24;
      v75 = v23;
      v76 = v10;
      v77 = v26;
      v78 = v12;
      v79 = v11;
      v71 = v14;
      v72 = v25;
      v66 = *(a2 + 184);
      v67 = *(a2 + 208);
      v68 = v13;
      v69 = v16;
      v70 = *(a2 + 192);
      v62 = *(a2 + 200);
      v63 = v17;
      v64 = v15;
      v65 = v18;
      v109 = *a1;
      *&v110 = *(a1 + 16);
      *(&v110 + 1) = *(&v121 + 1);
      v34 = *(a1 + 48);
      v111 = *(a1 + 32);
      v112 = v34;
      v113 = v124;
      sub_21D0D3954(&v120, &v104, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(v125, &v104, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0CF7E0(&v109, &unk_27CE5EA00, &unk_21DC0A7C0);
      goto LABEL_10;
    }

    sub_21D0D3954(&v120, &v109, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(v125, &v109, &unk_27CE5EA00, &unk_21DC0A7C0);
LABEL_18:
    v109 = *a1;
    *&v110 = *(a1 + 16);
    *(&v110 + 1) = v22;
    v44 = *(a1 + 48);
    v111 = *(a1 + 32);
    v112 = v44;
    v113 = v31;
    *v114 = *v119;
    *&v114[15] = *&v119[15];
    v115 = v32;
    v45 = *(a2 + 32);
    v117 = *(a2 + 48);
    v116 = v45;
    v118 = v33;
    sub_21D0CF7E0(&v109, qword_27CE5ABE0, &qword_21DC1E920);
    return 0;
  }

  v35 = *(a1 + 16);
  v109 = *a1;
  *&v110 = v35;
  *(&v110 + 1) = *(&v121 + 1);
  v36 = *(a1 + 48);
  v111 = *(a1 + 32);
  v112 = v36;
  v113 = v124;
  v108 = v124;
  v106 = v111;
  v107 = v36;
  v104 = v109;
  v105 = v110;
  if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v126 < 2u)
  {
    v101 = v111;
    v102 = v112;
    v103 = v113;
    v99 = v109;
    v100 = v110;
    sub_21D0D3954(&v120, v97, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(v125, v97, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D0D3954(&v109, v97, &unk_27CE5EA00, &unk_21DC0A7C0);
    sub_21D35D940(&v99);
    goto LABEL_18;
  }

  v73 = v9;
  v74 = v24;
  v75 = v23;
  v76 = v10;
  v77 = v26;
  v78 = v12;
  v79 = v11;
  v71 = v14;
  v72 = v25;
  v66 = v27;
  v67 = v29;
  v68 = v13;
  v69 = v16;
  v70 = v28;
  v62 = v30;
  v63 = v17;
  v64 = v15;
  v65 = v18;
  v99 = *a2;
  v37 = *(a2 + 16);
  v38 = *(a2 + 48);
  v101 = *(a2 + 32);
  v102 = v38;
  *&v100 = v37;
  *(&v100 + 1) = v32;
  v103 = v126;
  sub_21D0D3954(&v120, v97, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0D3954(v125, v97, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0D3954(&v109, v97, &unk_27CE5EA00, &unk_21DC0A7C0);
  v39 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v104, &v99);
  v95[2] = v101;
  v95[3] = v102;
  v96 = v103;
  v95[0] = v99;
  v95[1] = v100;
  sub_21D35D940(v95);
  v97[2] = v106;
  v97[3] = v107;
  v98 = v108;
  v97[0] = v104;
  v97[1] = v105;
  sub_21D35D940(v97);
  v99 = *a1;
  *&v100 = *(a1 + 16);
  *(&v100 + 1) = v22;
  v40 = *(a1 + 48);
  v101 = *(a1 + 32);
  v102 = v40;
  v103 = v31;
  sub_21D0CF7E0(&v99, &unk_27CE5EA00, &unk_21DC0A7C0);
  if ((v39 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if ((v8 != v19 || v94 != v20) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v93)
  {
    if (!v92)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
    v41 = v92;
    v42 = v93;
    v43 = sub_21DBFB63C();

    if ((v43 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v92)
  {
    return 0;
  }

  if (v91)
  {
    if (!v90)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
    v47 = v90;
    v48 = v91;
    v49 = sub_21DBFB63C();

    if ((v49 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v90)
  {
    return 0;
  }

  if ((v89 != v87 || v88 != v86) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (v85)
  {
    if (!v84)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
    v50 = v84;
    v51 = v85;
    v52 = sub_21DBFB63C();

    if ((v52 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v84)
  {
    return 0;
  }

  if (v82)
  {
    v54 = v78;
    v53 = v79;
    v55 = v77;
    v56 = v76;
    v58 = v74;
    v57 = v75;
    if (!v83)
    {
      return 0;
    }

    if (v73 != v80 || v82 != v83)
    {
      v59 = sub_21DBFC64C();
      v58 = v74;
      v57 = v75;
      v56 = v76;
      v55 = v77;
      v54 = v78;
      v53 = v79;
      if ((v59 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v54 = v78;
    v53 = v79;
    v55 = v77;
    v56 = v76;
    v58 = v74;
    v57 = v75;
    if (v83)
    {
      return 0;
    }
  }

  if (v56 == 2)
  {
    if (v81 != 2)
    {
      return 0;
    }

    goto LABEL_47;
  }

  result = 0;
  if (v81 != 2 && ((v81 ^ v56) & 1) == 0)
  {
LABEL_47:
    if (v54)
    {
      if (!v57)
      {
        return 0;
      }

      if (v53 != v58 || v54 != v57)
      {
        v60 = v55;
        v61 = sub_21DBFC64C();
        v55 = v60;
        if ((v61 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v57)
    {
      return 0;
    }

    if (v71)
    {
      if (!v72 || (v68 != v55 || v71 != v72) && (sub_21DBFC64C() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v72)
    {
      return 0;
    }

    if (v69)
    {
      if (v70 && (v64 == v66 && v69 == v70 || (sub_21DBFC64C() & 1) != 0))
      {
LABEL_68:
        if (v65)
        {
          if (v67 && (v63 == v62 && v65 == v67 || (sub_21DBFC64C() & 1) != 0))
          {
            return 1;
          }
        }

        else if (!v67)
        {
          return 1;
        }
      }
    }

    else if (!v70)
    {
      goto LABEL_68;
    }

    return 0;
  }

  return result;
}

unint64_t sub_21DA8A088()
{
  result = qword_27CE65738;
  if (!qword_27CE65738)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIDetailCellState, &type metadata for TTRIDetailCellState, v0, v1);
    atomic_store(result, &qword_27CE65738);
  }

  return result;
}

double destroy for TTRIDetailCellState(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 64);
  if (v2 >> 1 != 0xFFFFFFFF || v3 >= 2)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v2, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), v3);
  }

  return result;
}

uint64_t initializeWithCopy for TTRIDetailCellState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 64);
  if (v4 >> 1 != 0xFFFFFFFF || v5 >= 2)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 40);
    v30 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);
    sub_21D361F04(*a2, v8, v9, v4, v30, v10, v11, v12, v5);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v4;
    *(a1 + 32) = v30;
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    *(a1 + 64) = v5;
  }

  else
  {
    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
  }

  v15 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v15;
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  v18 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v18;
  v20 = *(a2 + 120);
  v19 = *(a2 + 128);
  *(a1 + 120) = v20;
  *(a1 + 128) = v19;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  v21 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v21;
  v22 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v22;
  v23 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v23;
  v24 = *(a2 + 200);
  v25 = *(a2 + 208);
  *(a1 + 200) = v24;
  *(a1 + 208) = v25;
  sub_21DBF8E0C();
  v26 = v16;
  v27 = v17;
  sub_21DBF8E0C();
  v28 = v20;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIDetailCellState(uint64_t a1, uint64_t *a2)
{
  v4 = a2[3];
  v5 = *(a2 + 64);
  v7 = v4 >> 1 == 0xFFFFFFFF && v5 < 2;
  if (*(a1 + 24) >> 1 != 0xFFFFFFFFLL || *(a1 + 64) >= 2u)
  {
    if (v7)
    {
      sub_21D35D940(a1);
      *a1 = *a2;
      v10 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = *(a2 + 1);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v10;
      *(a1 + 48) = v9;
      *(a1 + 16) = v11;
    }

    else
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v18 = a2[5];
      v46 = a2[4];
      v19 = a2[6];
      v20 = a2[7];
      sub_21D361F04(*a2, v16, v17, v4, v46, v18, v19, v20, v5);
      v21 = *a1;
      v22 = *(a1 + 8);
      v23 = *(a1 + 16);
      v24 = *(a1 + 24);
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      v29 = *(a1 + 64);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      *(a1 + 24) = v4;
      *(a1 + 32) = v46;
      *(a1 + 40) = v18;
      *(a1 + 48) = v19;
      *(a1 + 56) = v20;
      *(a1 + 64) = v5;
      sub_21D362050(v21, v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else if (v7)
  {
    *a1 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    *(a1 + 16) = v12;
  }

  else
  {
    v30 = *a2;
    v31 = a2[1];
    v32 = a2[2];
    v33 = a2[5];
    v47 = a2[4];
    v34 = a2[6];
    v35 = a2[7];
    sub_21D361F04(*a2, v31, v32, v4, v47, v33, v34, v35, v5);
    *a1 = v30;
    *(a1 + 8) = v31;
    *(a1 + 16) = v32;
    *(a1 + 24) = v4;
    *(a1 + 32) = v47;
    *(a1 + 40) = v33;
    *(a1 + 48) = v34;
    *(a1 + 56) = v35;
    *(a1 + 64) = v5;
  }

  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  sub_21DBF8E0C();

  v36 = *(a1 + 88);
  v37 = a2[11];
  *(a1 + 88) = v37;
  v38 = v37;

  v39 = *(a1 + 96);
  v40 = a2[12];
  *(a1 + 96) = v40;
  v41 = v40;

  *(a1 + 104) = a2[13];
  *(a1 + 112) = a2[14];
  sub_21DBF8E0C();

  v42 = *(a1 + 120);
  v43 = a2[15];
  *(a1 + 120) = v43;
  v44 = v43;

  *(a1 + 128) = a2[16];
  *(a1 + 136) = a2[17];
  sub_21DBF8E0C();

  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = a2[19];
  *(a1 + 160) = a2[20];
  sub_21DBF8E0C();

  *(a1 + 168) = a2[21];
  *(a1 + 176) = a2[22];
  sub_21DBF8E0C();

  *(a1 + 184) = a2[23];
  *(a1 + 192) = a2[24];
  sub_21DBF8E0C();

  *(a1 + 200) = a2[25];
  *(a1 + 208) = a2[26];
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t assignWithTake for TTRIDetailCellState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 64);
  if (v4 >> 1 == 0xFFFFFFFF && v5 < 2)
  {
    goto LABEL_12;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 64);
  if (v7 >> 1 == 0xFFFFFFFF && v8 < 2)
  {
    sub_21D35D940(a1);
LABEL_12:
    v19 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v19;
    *(a1 + 64) = *(a2 + 64);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    goto LABEL_13;
  }

  v10 = *(a2 + 16);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  *(a1 + 64) = v8;
  sub_21D362050(v11, v12, v13, v4, v14, v15, v16, v17, v5);
LABEL_13:
  v21 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v21;

  v22 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);

  v23 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  v24 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v24;

  v25 = *(a1 + 120);
  *(a1 + 120) = *(a2 + 120);

  v26 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v26;

  *(a1 + 144) = *(a2 + 144);
  v27 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v27;

  v28 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v28;

  v29 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v29;

  v30 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v30;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIDetailCellState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIDetailCellState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.__allocating_init(baseTree:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_21D0D0FD0(a1, v2 + 16);
  return v2;
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.numberOfChildren(of:)(uint64_t a1)
{
  swift_beginAccess();
  sub_21D0D32E4(v1 + 16, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = (*(v4 + 24))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.child(_:of:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_21D0D32E4(v2 + 16, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 32))(a1, a2, v5, v6);
  return __swift_destroy_boxed_opaque_existential_0(v8);
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.item(withID:)(uint64_t a1)
{
  swift_beginAccess();
  sub_21D0D32E4(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 40))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.parent(of:)(uint64_t a1)
{
  swift_beginAccess();
  sub_21D0D32E4(v1 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 48))(a1, v3, v4);
  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TTRDerivedTreeLocation(0, *(*v3 + 80), *(*v3 + 88), a2);
  v9 = *(v6 - 8);
  (*(v9 + 16))(a3, a1, v6);
  v7 = *(v9 + 56);

  return v7(a3, 0, 1, v6);
}

uint64_t TTRTreeStorageDerivedUntouchedTreeAny.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_21DA8AEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TTRDerivedTreeLocation(255, a3, a4, a4);
  sub_21DBFC5CC();
  v6 = *(v5 - 8);
  swift_allocObject();
  v7 = sub_21DBFA60C();
  (*(v6 + 16))(v8, a1, v5);

  sub_21D23C8B4(v7, v5);
}

uint64_t sub_21DA8AF90(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageDerivedUntouchedTreeAny<A>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21DA8AFCC(uint64_t a1)
{
  result = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageDerivedUntouchedTreeAny<A>);
  *(a1 + 8) = result;
  return result;
}

double static UIAccessibility.addButtonShapesStatusChangeObserver(_:selector:)(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  [v4 addObserver:sub_21DBFC62C() selector:a2 name:*MEMORY[0x277D76450] object:0];

  swift_unknownObjectRelease();
  return result;
}

UITraitCollection __swiftcall UITraitCollection.modifiedToOnlyDarkenColorsForIncreaseContrast()()
{
  if ([v0 accessibilityContrast] == 1)
  {

    return sub_21DBFB24C();
  }

  else
  {

    return v2;
  }
}

double static UIAccessibility.removeButtonShapesStatusChangeObserver(_:)(void *a1)
{
  v2 = [objc_opt_self() defaultCenter];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  [v2 removeObserver:sub_21DBFC62C() name:*MEMORY[0x277D76450] object:0];

  swift_unknownObjectRelease();
  return result;
}

uint64_t static UIAccessibility.ttriIsFullKeyboardAccessRunning.getter()
{
  result = _AXSFullKeyboardAccessEnabled();
  if (result)
  {
    return GSEventIsHardwareKeyboardAttached() != 0;
  }

  return result;
}

uint64_t sub_21DA8B298()
{
  result = sub_21DBFA12C();
  qword_280D177B0 = result;
  return result;
}

id static NSAttributedStringKey.ttriAccessibilityLowPitch.getter()
{
  if (qword_280D177A8 != -1)
  {
    swift_once();
  }

  v1 = qword_280D177B0;

  return v1;
}

uint64_t static UIAccessibility.ttriIsAccessibilityRunning.getter()
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || _AXSCommandAndControlEnabled())
  {
    return 1;
  }

  result = _AXSFullKeyboardAccessEnabled();
  if (result)
  {
    return GSEventIsHardwareKeyboardAttached() != 0;
  }

  return result;
}

void static UIAccessibility.addAccessibilityStatusChangeObserver(_:selector:)(void *a1, uint64_t a2)
{
  if (qword_27CE57040 != -1)
  {
    swift_once();
  }

  v4 = off_27CE65818;
  v5 = *(off_27CE65818 + 2);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = (v4 + 32);
    do
    {
      v8 = *v7++;
      v9 = v8;
      v10 = [v6 defaultCenter];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      [v10 addObserver:sub_21DBFC62C() selector:a2 name:v9 object:0];

      swift_unknownObjectRelease();
      --v5;
    }

    while (v5);
  }
}

void static UIAccessibility.removeAccessibilityStatusChangeObserver(_:)(void *a1)
{
  if (qword_27CE57040 != -1)
  {
    swift_once();
  }

  v2 = off_27CE65818;
  v3 = *(off_27CE65818 + 2);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = (v2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      v8 = [v4 defaultCenter];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      [v8 removeObserver:sub_21DBFC62C() name:v7 object:0];

      swift_unknownObjectRelease();
      --v3;
    }

    while (v3);
  }
}

id sub_21DA8B5B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE65820, &qword_21DC39D68);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D20;
  v1 = *MEMORY[0x277D765F0];
  v5 = *MEMORY[0x277D76520];
  v2 = *MEMORY[0x277D76520];
  *(v0 + 32) = *MEMORY[0x277D765F0];
  *(v0 + 40) = v2;
  off_27CE65818 = v0;
  v3 = v1;

  return v5;
}

Swift::Bool __swiftcall UICollectionViewCell._accessibilityScrollToVisible()()
{
  v1 = sub_21DBFA12C();
  v2 = NSClassFromString(v1);

  if (v2 && [v0 isKindOfClass_] && (v3 = objc_msgSend(v0, sel_traitCollection), v4 = objc_msgSend(v3, sel_userInterfaceIdiom), v3, v4 == 1))
  {

    return sub_21DA8B798();
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = MEMORY[0x277D752A8];
    return objc_msgSendSuper2(&v6, sel__accessibilityScrollToVisible);
  }
}

BOOL sub_21DA8B798()
{
  sub_21D0D8CF0(0, &unk_27CE62380, 0x277D75B40);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = v0;
  v3 = v2;
  v4 = 0;
  for (i = v0; ; v2 = i)
  {
    if ([v2 isKindOfClass_])
    {

      v6 = i;
      v4 = i;
    }

    else
    {
      v6 = i;
    }

    i = [v6 superview];

    if (!i)
    {
      break;
    }
  }

  if (!v4)
  {
    return 0;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  sub_21D0D8CF0(0, &unk_280D0C2F0, 0x277D75B48);
  v9 = swift_getObjCClassFromMetadata();
  v10 = v3;
  v11 = v10;
  v12 = 0;
  while (1)
  {
    if ([v10 isKindOfClass_])
    {

      v13 = v0;
      v12 = v0;
    }

    else
    {
      v13 = v0;
    }

    v0 = [v13 superview];

    if (!v0)
    {
      break;
    }

    v10 = v0;
  }

  if (v12)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    v15 = v14 != 0;
    if (v14)
    {
      v16 = v14;
      [v11 bounds];
      [v11 convertPoint:v16 toCoordinateSpace:?];
      v18 = v17;
      v19 = v4;
      [v8 contentOffset];
      v21 = v20;
      [v16 frame];
      v23 = v18 + v22;
      [v8 adjustedContentInset];
      v25 = v24;

      [v8 setContentOffset:1 animated:{v21, v23 - v25}];
    }
  }

  else
  {
LABEL_19:
    v15 = 0;
    v12 = v4;
  }

  return v15;
}

BOOL sub_21DA8B9E4(void *a1)
{
  v1 = a1;
  v2 = UICollectionViewCell._accessibilityScrollToVisible()();

  return v2;
}

void sub_21DA8BA18(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      [v3 removeObserver_];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21DA8BAB4()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65828);
  v1 = __swift_project_value_buffer(v0, qword_27CE65828);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static REMFileAttachment.urlOfItemCopyInTemporaryDirectory(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v59[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v5);
  v7 = v45 - v6;
  v54 = sub_21DBF54CC();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v45 - v11;
  MEMORY[0x28223BE20](v13);
  v55 = v45 - v14;
  v53 = a1;
  if ((sub_21DBF532C() & 1) == 0)
  {
    v20 = objc_opt_self();
    v18 = sub_21DBFA12C();
    v19 = [v20 invalidParameterErrorWithDescription_];
    goto LABEL_7;
  }

  if (qword_27CE57050 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, qword_27CE65840);
  sub_21D3050B8(v15, v7);
  v16 = v54;
  if ((*(v8 + 48))(v7, 1, v54) == 1)
  {
    sub_21D238E40(v7);
    v17 = objc_opt_self();
    v18 = sub_21DBFA12C();
    v19 = [v17 internalErrorWithDebugDescription_];
LABEL_7:
    v19;

    return swift_willThrow();
  }

  v45[1] = v2;
  v48 = *(v8 + 32);
  v49 = v8 + 32;
  v48(v55, v7, v16);
  v47 = sub_21DBF534C();
  v51 = v22;
  sub_21DBF540C();
  v46 = sub_21DBF53BC();
  v50 = v23;
  v24 = *(v8 + 8);
  v52 = v8 + 8;
  v56 = v24;
  v24(v12, v16);
  v25 = objc_opt_self();
  v26 = 0;
  v27 = 0;
  v28 = v16;
  do
  {
    if (v26)
    {
      v59[0] = v46;
      v59[1] = v50;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](45, 0xE100000000000000);
      v58 = v26;
      v29 = sub_21DBFC5BC();
      MEMORY[0x223D42AA0](v29);
    }

    else
    {
      sub_21DBF8E0C();
    }

    sub_21DBF542C();

    sub_21DBF543C();
    v56(v12, v28);
    if (v27)
    {
      v56(a2, v28);
    }

    v48(a2, v57, v28);
    v30 = [v25 defaultManager];
    sub_21DBF549C();
    v31 = sub_21DBFA12C();

    v32 = [v30 fileExistsAtPath_];

    if ((v32 & 1) == 0)
    {
      goto LABEL_19;
    }

    v33 = [v25 defaultManager];
    sub_21DBF549C();
    v34 = sub_21DBFA12C();

    sub_21DBF549C();
    v35 = sub_21DBFA12C();

    v36 = [v33 contentsEqualAtPath:v34 andPath:v35];

    if (v36)
    {

      v28 = v54;
      return (v56)(v55, v28);
    }

    v27 = 1;
    v37 = __OFADD__(v26++, 1);
    v28 = v54;
  }

  while (!v37);
  __break(1u);
LABEL_19:

  v38 = [v25 defaultManager];
  v39 = sub_21DBF53FC();
  v40 = sub_21DBF53FC();
  v59[0] = 0;
  v41 = [v38 copyItemAtURL:v39 toURL:v40 error:v59];

  if (v41)
  {
    v42 = v59[0];
    return (v56)(v55, v28);
  }

  v43 = v59[0];
  sub_21DBF52DC();

  swift_willThrow();
  v44 = v56;
  v56(a2, v28);
  return v44(v55, v28);
}

id sub_21DA8C1BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  __swift_allocate_value_buffer(v0, qword_27CE65840);
  v1 = __swift_project_value_buffer(v0, qword_27CE65840);
  return sub_21DA8C214(v1);
}

id sub_21DA8C214@<X0>(uint64_t a1@<X8>)
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21DBF54CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  MEMORY[0x28223BE20](v6);
  v8 = v33 - v7 + 32;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v33[0] = 0;
  v11 = [v10 rem:v33 createProtectedTemporaryDirectoryIfNeededWithError:?];

  v12 = v33[0];
  if (v11)
  {
    sub_21DBF546C();
    v13 = v12;

    sub_21DBF542C();
    v14 = *(v3 + 8);
    v14(v5, v2);
    v15 = [v9 defaultManager];
    v16 = sub_21DBF53FC();
    v33[0] = 0;
    v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v33];

    v32 = v33[0];
    if (v17)
    {
      (*(v3 + 32))(a1, v8, v2);
      (*(v3 + 56))(a1, 0, 1, v2);
      v18 = v32;

      return v18;
    }

    v22 = v32;
    v21 = sub_21DBF52DC();

    swift_willThrow();
    v14(v8, v2);
  }

  else
  {
    v20 = v33[0];
    v21 = sub_21DBF52DC();

    swift_willThrow();
  }

  if (qword_27CE57048 != -1)
  {
    swift_once();
  }

  v23 = sub_21DBF84BC();
  __swift_project_value_buffer(v23, qword_27CE65828);
  v24 = v21;
  v25 = sub_21DBF84AC();
  v26 = sub_21DBFAEBC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v33[0] = v28;
    *v27 = 136315138;
    swift_getErrorValue();
    v29 = sub_21DBFC74C();
    v31 = sub_21D0CDFB4(v29, v30, v33);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_21D0C9000, v25, v26, "REMFileAttachment.tmpAttachmentsDirURL error: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x223D46520](v28, -1, -1);
    MEMORY[0x223D46520](v27, -1, -1);
  }

  else
  {
  }

  return (*(v3 + 56))(a1, 1, 1, v2);
}

uint64_t sub_21DA8C6AC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65858);
  v1 = __swift_project_value_buffer(v0, qword_27CE65858);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void TTRISeparator.thickness.getter(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness;
  swift_beginAccess();
  v4 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v4;
}

id sub_21DA8C7CC(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a2 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness;
  swift_beginAccess();
  *v5 = v2;
  v5[8] = v3;
  [v4 invalidateIntrinsicContentSize];
  return [v4 setNeedsDisplay];
}

id TTRISeparator.thickness.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
  swift_beginAccess();
  *v4 = v2;
  v4[8] = v3;
  [v1 invalidateIntrinsicContentSize];
  return [v1 setNeedsDisplay];
}

id (*TTRISeparator.thickness.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DA8C92C;
}

id sub_21DA8C92C(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    [v5 invalidateIntrinsicContentSize];

    return [v5 setNeedsDisplay];
  }

  return result;
}

uint64_t TTRISeparator.dotted.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted;
  swift_beginAccess();
  return *(v0 + v1);
}

void TTRISeparator.dotted.setter(char a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_21DA8CA2C();
}

void sub_21DA8CA2C()
{
  [v0 setNeedsDisplay];
  v1 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted;
  swift_beginAccess();
  v2 = v0[v1];
  v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer];
  if (v2 == 1)
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_21DC0AA00;
      v5 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v6 = v3;
      *(v4 + 32) = [v5 initWithInteger_];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
      v7 = sub_21DBFA5DC();

      [v6 setLineDashPattern_];

      return;
    }

    __break(1u);
    goto LABEL_8;
  }

  if (!v3)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v3 setLineDashPattern_];
}

void (*TTRISeparator.dotted.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_21DA8CBF4;
}

void sub_21DA8CBF4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_21DA8CA2C();
  }
}

id TTRISeparator.init(axis:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
  *v4 = 0;
  v4[8] = 1;
  v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted] = 0;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_appliedBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis];
  *v6 = 0;
  v6[8] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_21DA8CD00(a1);

  return v7;
}

void sub_21DA8CD00(uint64_t a1)
{
  swift_getObjectType();
  v3 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis];
  *v3 = a1;
  v3[8] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x277CD9F90]) init];
  v5 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer;
  v6 = *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer];
  *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer] = v4;

  if (!*&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor])
  {
    v7 = [objc_opt_self() separatorColor];
    TTRISeparator.backgroundColor.setter(v7);
  }

  v8 = [v1 layer];
  if (*&v1[v5])
  {
    v9 = v8;
    [v8 addSublayer_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630, &unk_21DC22100);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_21DC08D00;
    v11 = sub_21DBF874C();
    v12 = MEMORY[0x277D74B68];
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    sub_21DBFB5CC();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

id TTRISeparator.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id TTRISeparator.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRISeparator.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
  *v4 = 0;
  v4[8] = 1;
  v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted] = 0;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_appliedBounds];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  v5[32] = 1;
  v6 = &v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis];
  *v6 = 0;
  v6[8] = 1;
  *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer] = 0;
  *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor] = 0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v13, sel_initWithCoder_, a1);
  v8 = v7;
  if (v7)
  {
    v9 = v7;
    [v9 bounds];
    Width = CGRectGetWidth(v14);
    [v9 bounds];
    v11 = CGRectGetHeight(v15) >= Width;
    sub_21DA8CD00(v11);
  }

  return v8;
}

void TTRISeparator.intrinsicContentSize.getter()
{
  if (v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis + 8])
  {
    __break(1u);
    goto LABEL_11;
  }

  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis];
  if (v1 != 1)
  {
    if (!v1)
    {
      v4 = &v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
      swift_beginAccess();
      if (v4[8])
      {
        goto LABEL_4;
      }

      return;
    }

LABEL_11:
    if (qword_27CE57058 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE65858);
    v6 = MEMORY[0x277D84F90];
    v7 = sub_21D17716C(MEMORY[0x277D84F90]);
    v8 = sub_21D17716C(v6);
    sub_21DAEAB00("unknown axis", 12, 2, v7, v8);
    __break(1u);
    return;
  }

  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
  swift_beginAccess();
  if (v2[8])
  {
LABEL_4:
    v3 = [v0 traitCollection];
    [v3 displayScale];
  }
}

CGSize __swiftcall TTRISeparator.sizeThatFits(_:)(CGSize a1)
{
  height = a1.height;
  width = a1.width;
  TTRISeparator.intrinsicContentSize.getter();
  if (v3 == *MEMORY[0x277D77260])
  {
    v3 = width;
  }

  if (v4 == *MEMORY[0x277D77260])
  {
    v4 = height;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

Swift::Void __swiftcall TTRISeparator.layoutSubviews()()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_appliedBounds];
  if ((v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_appliedBounds + 32] & 1) != 0 || (v2 = *(v1 + 2), [v0 bounds], (sub_21D110D14(v3, 0.0000000149011612, v2) & 1) == 0) || (v1[32] & 1) != 0 || (v4 = *(v1 + 3), objc_msgSend(v0, sel_bounds), (sub_21D110D14(v5, 0.0000000149011612, v4) & 1) == 0))
  {
    [v0 bounds];
    *v1 = v6;
    *(v1 + 1) = v7;
    *(v1 + 2) = v8;
    *(v1 + 3) = v9;
    v1[32] = 0;
    sub_21DA8D488();
  }

  v10 = *&v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer];
  if (v10)
  {
    v11 = *&v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor];
    v12 = v10;
    if (v11)
    {
      v11 = [v11 CGColor];
    }

    [v10 setStrokeColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_21DA8D488()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness];
  swift_beginAccess();
  if (v2[1])
  {
    v3 = [v1 traitCollection];
    [v3 displayScale];
    v5 = v4;

    if (v5 <= 0.0)
    {
      v6 = 1.0;
    }

    else
    {
      v6 = 1.0 / v5;
    }
  }

  else
  {
    v6 = *v2;
  }

  if (v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis + 8])
  {
    __break(1u);
    goto LABEL_15;
  }

  v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis];
  if (v7 == 1)
  {
    [v1 layoutMargins];
    v8 = [v1 layer];
    [v8 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    v34.origin.x = v10;
    v34.origin.y = v12;
    v34.size.width = v14;
    v34.size.height = v16;
    CGRectGetHeight(v34);
    [v1 layoutMargins];
    goto LABEL_11;
  }

  if (!v7)
  {
    [v1 layoutMargins];
    v17 = [v1 layer];
    [v17 bounds];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;

    v35.origin.x = v19;
    v35.origin.y = v21;
    v35.size.width = v23;
    v35.size.height = v25;
    CGRectGetWidth(v35);
    [v1 layoutMargins];
LABEL_11:
    Mutable = CGPathCreateMutable();
    sub_21DBFB01C();
    sub_21DBFB02C();
    v27 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer;
    v28 = *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer];
    if (v28)
    {
      [v28 setPath_];
      v29 = *&v1[v27];
      if (v29)
      {
        [v29 setLineWidth_];

        return;
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  if (qword_27CE57058 != -1)
  {
    swift_once();
  }

  v30 = sub_21DBF84BC();
  __swift_project_value_buffer(v30, qword_27CE65858);
  v31 = MEMORY[0x277D84F90];
  v32 = sub_21D17716C(MEMORY[0x277D84F90]);
  v33 = sub_21D17716C(v31);
  sub_21DAEAB00("unknown axis", 12, 2, v32, v33);
  __break(1u);
}

void *TTRISeparator.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor);
  v2 = v1;
  return v1;
}

void TTRISeparator.backgroundColor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor;
  v4 = *&v1[OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor];
  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    v4 = 0;
    goto LABEL_7;
  }

  if (!a1)
  {
LABEL_7:
    *&v1[v3] = a1;
    v8 = a1;

    [v1 setNeedsLayout];
    goto LABEL_8;
  }

  v5 = v1;
  sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  v6 = v4;
  v8 = a1;
  v7 = sub_21DBFB63C();

  if ((v7 & 1) == 0)
  {
    v1 = v5;
    v4 = *&v5[v3];
    goto LABEL_7;
  }

LABEL_8:
}

void (*TTRISeparator.backgroundColor.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_21DA8D9B8;
}

void sub_21DA8D9B8(uint64_t a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
    v5 = *&v4[v3];
    if (v5)
    {
      if (v2)
      {
        sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
        v7 = v5;
        v9 = v2;
        v8 = sub_21DBFB63C();

        if (v8)
        {
          goto LABEL_10;
        }

        v4 = *(a1 + 8);
        v3 = *(a1 + 16);
        v5 = *&v4[v3];
      }
    }

    else
    {
      if (!v2)
      {
        return;
      }

      v5 = 0;
    }

    *&v4[v3] = v2;
    v9 = v2;

    [v4 setNeedsLayout];
    goto LABEL_10;
  }

  v9 = v2;
  TTRISeparator.backgroundColor.setter(v2);
LABEL_10:
}

id TTRISeparator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s15RemindersUICore13TTRISeparatorC5frameACSo6CGRectV_tcfc_0()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_thickness;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_dotted) = 0;
  v2 = v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_appliedBounds;
  *v2 = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 1;
  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_axis;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_shapeLayer) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore13TTRISeparator_internalBackgroundColor) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void *sub_21DA8DC6C(void *a1)
{
  v2 = v1;
  v32 = a1;
  v3 = sub_21DBF86EC();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF8B2C();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659A8, &qword_21DC39F88);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {

    v15 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
    swift_beginAccess();
    sub_21D0D3954(v2 + v15, v13, &qword_27CE659A8, &qword_21DC39F88);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528, qword_21DC1C470);
    v31 = *(v16 - 8);
    v17 = (*(v31 + 48))(v13, 1, v16);
    result = sub_21D0CF7E0(v13, &qword_27CE659A8, &qword_21DC39F88);
    if (v17 == 1)
    {
      result = sub_21DA8E3EC();
      if (result)
      {
        v18 = result;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v20 = Strong;
          if ([Strong isFirstResponder])
          {
            [v20 resignFirstResponder];
          }

          v21 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView);
          if (v21)
          {
            [v21 setUserInteractionEnabled_];
          }

          [v20 _addBoundingPathChangeObserver_];
        }

        v22 = [objc_allocWithZone(type metadata accessor for TTRITextViewAnimationSupport.FullDocumentTextChunk(0)) init];
        v23 = v18;
        sub_21DBF8B1C();
        v24 = type metadata accessor for TTRIHorizontalPonderingTextEffect(0);
        swift_allocObject();
        v25 = sub_21DA92FD4(v22, v23, v7);

        v26 = *(v25 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_animateFromColor);
        v27 = v32;
        *(v25 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_animateFromColor) = v32;
        v28 = v27;

        v36[3] = v24;
        v36[4] = sub_21DA91144(&qword_27CE659B0, type metadata accessor for TTRIHorizontalPonderingTextEffect, aY_7);
        v36[0] = v25;

        v29 = v33;
        sub_21DBF864C();

        __swift_destroy_boxed_opaque_existential_0(v36);
        (*(v34 + 32))(v10, v29, v35);
        (*(v31 + 56))(v10, 0, 1, v16);
        swift_beginAccess();
        sub_21DA9118C(v10, v2 + v15);
        return swift_endAccess();
      }
    }
  }

  return result;
}

uint64_t sub_21DA8E08C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659A8, &qword_21DC39F88);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v21[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v21[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528, qword_21DC1C470);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21[-v9];
  v11 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
  swift_beginAccess();
  sub_21D0D3954(v0 + v11, v6, &qword_27CE659A8, &qword_21DC39F88);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    v12 = &qword_27CE659A8;
    v13 = &qword_21DC39F88;
    v14 = v6;
  }

  else
  {
    sub_21DA911FC(v6, v10);
    v15 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_textEffectView);
    if (v15)
    {
      v16 = v15;
      sub_21DBF86AC();
    }

    (*(v8 + 56))(v3, 1, 1, v7);
    swift_beginAccess();
    sub_21DA9118C(v3, v0 + v11);
    swift_endAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      v19 = *(v0 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView);
      if (v19)
      {
        [v19 setUserInteractionEnabled_];
      }

      [v18 _removeBoundingPathChangeObserver_];
    }

    v12 = &qword_27CE5E528;
    v13 = qword_21DC1C470;
    v14 = v10;
  }

  return sub_21D0CF7E0(v14, v12, v13);
}

uint64_t sub_21DA8E324()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE658A0);
  v1 = __swift_project_value_buffer(v0, qword_27CE658A0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_21DA8E3EC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_textEffectView;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_textEffectView];
  v3 = v2;
  if (!v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      [Strong bounds];
      v8 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
      v9 = objc_allocWithZone(sub_21DBF872C());
      v10 = v0;
      v3 = sub_21DBF871C();
      [v5 addSubview_];
      [v8 addSubview_];

      v11 = *&v10[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView];
      *&v10[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView] = v8;

      v12 = *&v0[v1];
      *&v0[v1] = v3;
      v13 = v3;
    }

    else
    {
      v3 = 0;
    }
  }

  v14 = v2;
  return v3;
}

uint64_t sub_21DA8E518()
{
  v1 = *v0;
  v2 = 0x2064696C61766E49;
  v3 = 0xD000000000000024;
  if (v1 == 3)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  if (*v0 <= 1u)
  {
    return 0xD000000000000015;
  }

  else
  {
    return v2;
  }
}

id sub_21DA8E5DC(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_21DA8E708(uint64_t a1)
{
  sub_21DA8E7BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21DA8E7BC(uint64_t a1)
{
  if (!qword_27CE65900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5E528, qword_21DC1C470);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE65900);
    }
  }
}

void sub_21DA8E888(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    type metadata accessor for TTRITextViewAnimationSupport.FullDocumentTextChunk(0);
    if (swift_dynamicCastClass())
    {
      v4 = swift_unknownObjectWeakLoadStrong();
      v5 = a1;
      if (v4 && (v6 = [v4 beginningOfDocument], v7 = objc_msgSend(v4, sel_endOfDocument), v8 = objc_msgSend(v4, sel_textRangeFromPosition_toPosition_, v6, v7), v4, v6, v7, v8))
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_21DC08D00;
        v10 = *MEMORY[0x277D740C0];
        *(inited + 32) = *MEMORY[0x277D740C0];
        v11 = objc_opt_self();
        v12 = v10;
        v13 = [v11 labelColor];
        *(inited + 64) = sub_21D114D24();
        *(inited + 40) = v13;
        sub_21D11274C(inited);
        swift_setDeallocating();
        sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0, &qword_21DC09050);
        type metadata accessor for Key(0);
        sub_21DA91144(&qword_280D17790, type metadata accessor for Key, byte_21DC082E8);
        v14 = sub_21DBF9E5C();

        [v3 _targetedPreviewForRange_withRenderingAttributes_includeFullDocument_];
      }

      else
      {
        sub_21DA90E54();
        swift_allocError();
        *v16 = 2;
        swift_willThrow();
      }
    }

    else
    {
      sub_21DA90E54();
      swift_allocError();
      *v17 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_21DA90E54();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
  }
}

uint64_t sub_21DA8ECF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = sub_21DBFA84C();
  v2[5] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8ED8C, v4, v3);
}

uint64_t sub_21DA8ED8C()
{
  v1 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v1);
  v3 = v2;
  v0[7] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8EE38, v5, v4);
}

uint64_t sub_21DA8EE38()
{
  v1 = v0[3];

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
  }

  v3 = Strong != 0;
  v4 = v0[6];
  v4[2](v4, v3);
  _Block_release(v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_21DA8EEE0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_21DBFA84C();
  v2[4] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8EF78, v4, v3);
}

uint64_t sub_21DA8EF78()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    type metadata accessor for TTRITextViewAnimationSupport.FullDocumentTextChunk(0);
    Strong = swift_dynamicCastClass();
    if (Strong)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = *(v0 + 16);
        v4 = [v2 beginningOfDocument];
        v5 = [v2 endOfDocument];
        v6 = [v2 textRangeFromPosition:v4 toPosition:v5];

        if (v6)
        {
        }

        Strong = v6 != 0;
      }
    }
  }

  v7 = *(v0 + 8);

  return v7(Strong);
}

uint64_t sub_21DA8F238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8F2D4, v5, v4);
}

uint64_t sub_21DA8F2D4()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_21DA8F398;
  v7 = v0[2];

  return sub_21DA8EEE0(v7);
}

uint64_t sub_21DA8F398(char a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  v3[2](v3, a1 & 1);
  _Block_release(v3);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_21DA8F4F8(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  sub_21DBFA84C();
  v2[8] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8F590, v4, v3);
}

uint64_t sub_21DA8F590()
{
  v1 = *(v0 + 48);

  sub_21DA8E888(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_21DA8F920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8F9BC, v5, v4);
}

uint64_t sub_21DA8F9BC()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_21DA8FA80;
  v7 = v0[2];

  return sub_21DA8F4F8(v7);
}

uint64_t sub_21DA8FA80(void *a1)
{
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_21DA8FD74(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  sub_21DBFA84C();
  *(v4 + 40) = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA8FE14, v6, v5);
}

uint64_t sub_21DA8FE14()
{
  v1 = *(v0 + 32);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  *(v0 + 48) = _Block_copy(v2);
  v4 = v3;
  v5 = v1;
  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_21DA8FEEC;
  v7 = *(v0 + 64);

  return sub_21DA906EC(v7);
}

uint64_t sub_21DA8FEEC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_21DA900C4()
{
  result = qword_27CE65990;
  if (!qword_27CE65990)
  {
    result = swift_getWitnessTable(a5_2, &type metadata for TTRITextViewAnimationSupport.EffectType, v0, v1);
    atomic_store(result, &qword_27CE65990);
  }

  return result;
}

uint64_t sub_21DA90118(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_21D0F00D0;

  return v6();
}

uint64_t sub_21DA90200(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_21D1B795C;

  return v7();
}

uint64_t sub_21DA902E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_21D0D3954(a3, v23 - v10, &unk_27CE5F150, &qword_21DC0D090);
  v12 = sub_21DBFA89C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_21D0CF7E0(v11, &unk_27CE5F150, &qword_21DC0D090);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_21DBFA88C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_21DBFA7CC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_21DBFA1EC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_21D0CF7E0(a3, &unk_27CE5F150, &qword_21DC0D090);

    return v21;
  }

LABEL_8:
  sub_21D0CF7E0(a3, &unk_27CE5F150, &qword_21DC0D090);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

id sub_21DA905E4()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_chunkVisibilityUpdater];
  *v2 = 0;
  *(v2 + 1) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_containerView] = 0;
  *&v0[OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_textEffectView] = 0;
  v3 = OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_activeEffect;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528, qword_21DC1C470);
  (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  swift_unknownObjectWeakAssign();
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_21DA906EC(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 64) = a1;
  sub_21DBFA84C();
  *(v2 + 56) = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();

  return MEMORY[0x2822009F8](sub_21DA90788, v4, v3);
}

uint64_t sub_21DA90788()
{
  v22 = v0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 48);

    v3 = v2 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_chunkVisibilityUpdater;
    v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_chunkVisibilityUpdater);
    if (v4)
    {
      v5 = *(v0 + 64);
      v6 = *(v3 + 8);

      v4(v5);
      sub_21D0EC9F4(v4, v6);
      goto LABEL_11;
    }

    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  sub_21DA90E54();
  v8 = swift_allocError();
  *v9 = v7;
  swift_willThrow();
  if (qword_27CE57060 != -1)
  {
    swift_once();
  }

  v10 = sub_21DBF84BC();
  __swift_project_value_buffer(v10, qword_27CE658A0);
  v11 = v8;
  v12 = sub_21DBF84AC();
  v13 = sub_21DBFAEBC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v14 = 136315138;
    swift_getErrorValue();
    v16 = sub_21DBFC74C();
    v18 = sub_21D0CDFB4(v16, v17, &v21);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_21D0C9000, v12, v13, "TTRITextViewAnimationSupport: failed to update chunk visibility {error:  %s}", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x223D46520](v15, -1, -1);
    MEMORY[0x223D46520](v14, -1, -1);
  }

  else
  {
  }

LABEL_11:
  v19 = *(v0 + 8);

  return v19();
}

void sub_21DA909E0(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (!Strong)
    {
      return;
    }

    v5 = Strong;

    if (v5 != a1)
    {
      return;
    }

    goto LABEL_9;
  }

  if (!Strong)
  {
LABEL_9:
    v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICore28TTRITextViewAnimationSupport_textEffectView);
    if (v4)
    {

      [v4 setNeedsLayout];
    }

    return;
  }
}

uint64_t sub_21DA90A94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21D1B795C;

  return sub_21DA8FD74(v2, v3, v5, v4);
}

uint64_t sub_21DA90B58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21D0F00D0;

  return sub_21DA90118(v2, v3, v4);
}

uint64_t sub_21DA90C18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21DA90200(a1, v4, v5, v6);
}

uint64_t sub_21DA90CE4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return sub_21D0ED4E8(a1, v4);
}

uint64_t sub_21DA90D9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D1B795C;

  return sub_21D0ED4E8(a1, v4);
}

unint64_t sub_21DA90E54()
{
  result = qword_27CE659A0;
  if (!qword_27CE659A0)
  {
    result = swift_getWitnessTable(aQ_15, &type metadata for TTRITextViewAnimationSupport.Error, v0, v1);
    atomic_store(result, &qword_27CE659A0);
  }

  return result;
}

uint64_t sub_21DA90EA8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21D0F00D0;

  return sub_21DA8F920(v2, v3, v4);
}

uint64_t objectdestroy_31Tm_0()
{
  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_21DA90FA4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21D0F00D0;

  return sub_21DA8F238(v2, v3, v4);
}

uint64_t sub_21DA91058()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21D0F00D0;

  return sub_21DA8ECF0(v2, v3);
}

uint64_t objectdestroy_10Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21DA91144(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21DA9118C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659A8, &qword_21DC39F88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA911FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5E528, qword_21DC1C470);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21DA91284()
{
  result = qword_27CE659B8;
  if (!qword_27CE659B8)
  {
    result = swift_getWitnessTable(byte_21DC3A020, &type metadata for TTRITextViewAnimationSupport.Error, v0, v1);
    atomic_store(result, &qword_27CE659B8);
  }

  return result;
}

id sub_21DA912D8(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v3 = 0.5;
  if (v1 == 1)
  {
    v3 = 0.75;
  }

  return [v2 initWithWhite:v3 alpha:1.0];
}

void sub_21DA9133C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = [a1 view];
    [v9 bounds];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v33.origin.x = v11;
    v33.origin.y = v13;
    v33.size.width = v15;
    v33.size.height = v17;
    Width = CGRectGetWidth(v33);
    v19 = sub_21DA916A8();
    v20 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_animateFromColor);
    v21 = swift_allocObject();
    v21[2] = Width;
    v21[3] = v19;
    *(v21 + 4) = 1;
    MEMORY[0x28223BE20](v21);
    *(&v32 - 2) = v20;
    *(swift_allocObject() + 16) = v20;
    sub_21DBF8B8C();
    v22 = v20;
    v23 = sub_21DBF863C();

    sub_21DBF866C();
    v24 = sub_21DBF867C();
    MEMORY[0x28223BE20](v24);
    *(&v32 - 2) = sub_21DA93508;
    *(&v32 - 1) = v21;
    sub_21DBF869C();
    v25 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_trackedTargetedPreview);
    *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_trackedTargetedPreview) = a1;

    *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_effectViewHandle) = v23;
    v26 = a1;

    v27 = sub_21DBFA89C();
    (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
    sub_21DBFA84C();
    v28 = v8;

    v29 = sub_21DBFA83C();
    v30 = swift_allocObject();
    v31 = MEMORY[0x277D85700];
    v30[2] = v29;
    v30[3] = v31;
    v30[4] = v28;
    v30[5] = v2;
    sub_21D1B56F0(0, 0, v6, &unk_21DC3A188, v30);
  }
}

CGFloat sub_21DA916A8()
{
  v1 = [v0 parameters];
  v2 = [v1 ttr_textLineRects];

  if (!v2)
  {
    return 24.0;
  }

  sub_21DA9360C();
  v3 = sub_21DBFA5EC();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_17:

    v7 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_13;
    }

    goto LABEL_18;
  }

  v4 = sub_21DBFBD7C();
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_4:
  v29 = MEMORY[0x277D84F90];
  sub_21D18F77C(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v29;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223D44740](v6, v3);
    }

    else
    {
      v8 = *(v3 + 8 * v6 + 32);
    }

    v9 = v8;
    [v8 CGRectValue];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v19 = v29[2];
    v18 = v29[3];
    if (v19 >= v18 >> 1)
    {
      sub_21D18F77C((v18 > 1), v19 + 1, 1);
    }

    ++v6;
    v29[2] = v19 + 1;
    v20 = &v29[4 * v19];
    v20[4] = v11;
    v20[5] = v13;
    v20[6] = v15;
    v20[7] = v17;
  }

  while (v4 != v6);

  if (!v29[2])
  {
LABEL_18:

    return 24.0;
  }

LABEL_13:
  v21 = v7[4];
  v22 = v7[5];
  v23 = v7[6];
  v24 = v7[7];

  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;

  return CGRectGetHeight(*&v25);
}

uint64_t sub_21DA918CC(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659E8, &unk_21DC3A190);
  sub_21DBF8B7C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21DC08D00;
  sub_21DBF8B6C();
  return v3;
}

id sub_21DA919A8(uint64_t a1)
{
  v2 = [objc_allocWithZone(sub_21DBF8B8C()) initWithFrame_];
  [v2 setUserInteractionEnabled_];
  [v2 setBackgroundColor_];

  sub_21DBF8B5C();
  return v2;
}

void sub_21DA91A38(void *a1, uint64_t a2)
{
  [a1 setBackgroundColor_];
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v7[4] = sub_21DA935EC;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_21D0D74FC;
  v7[3] = &block_descriptor_30_3;
  v5 = _Block_copy(v7);
  v6 = a1;

  [v3 animateWithDuration:v5 animations:0.35];
  _Block_release(v5);
}

void sub_21DA91B3C(void *a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  v5[4] = sub_21DA912D8;
  v5[5] = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_21D114B20;
  v5[3] = &block_descriptor_33_2;
  v3 = _Block_copy(v5);
  v4 = [v2 initWithDynamicProvider_];
  _Block_release(v3);

  [a1 setBackgroundColor_];
}

uint64_t sub_21DA91C20(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  sub_21D7F6D2C(v2);

  return sub_21DBF8B4C();
}

uint64_t sub_21DA91C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[18] = a1;
  sub_21DBFA84C();
  v5[21] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[22] = v7;
  v5[23] = v6;

  return MEMORY[0x2822009F8](sub_21DA91D10, v7, v6);
}

uint64_t sub_21DA91D10()
{
  v1 = sub_21DBF870C();
  *(v0 + 192) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(*(v0 + 160) + 16);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21DA91E9C;
    v4 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659E0, &qword_21DC3A168);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_21DA92024;
    *(v0 + 104) = &block_descriptor_24_3;
    *(v0 + 112) = v4;
    [v2 updateTextChunkVisibilityForAnimation:v3 visible:0 completionHandler:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {

    **(v0 + 144) = *(v0 + 192) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_21DA91E9C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_21DA91FA4, v2, v1);
}

uint64_t sub_21DA91FA4()
{

  swift_unknownObjectRelease();
  **(v0 + 144) = *(v0 + 192) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DA92024(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

void sub_21DA92058(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = *(v2 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_trackedTargetedPreview);
  if (v8)
  {
    v9 = sub_21DBFA89C();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    sub_21DBFA84C();
    v10 = v8;

    v11 = v2;
    v12 = sub_21DBFA83C();
    v13 = swift_allocObject();
    v14 = MEMORY[0x277D85700];
    v13[2] = v12;
    v13[3] = v14;
    v13[4] = v10;
    v13[5] = a1;
    v13[6] = a2;
    v13[7] = v11;
    sub_21D1B5178(0, 0, v7, &unk_21DC3A178, v13);
  }
}

uint64_t sub_21DA921C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  sub_21DBFA84C();
  v7[11] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v7[12] = v9;
  v7[13] = v8;

  return MEMORY[0x2822009F8](sub_21DA92260, v9, v8);
}

uint64_t sub_21DA92260()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = [*(v0 + 56) view];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = *(v1 + 16);
  v19 = (v2 + *v2);
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_21DA923C0;
  v14.n128_u64[0] = v5;
  v15.n128_u64[0] = v7;
  v16.n128_u64[0] = v9;
  v17.n128_u64[0] = v11;

  return v19(v0 + 16, v12, v14, v15, v16, v17);
}

uint64_t sub_21DA923C0()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_21DA924E0, v3, v2);
}

uint64_t sub_21DA924E0()
{

  if ((*(v0 + 48) & 1) == 0)
  {
    v2 = *(v0 + 32);
    v1 = *(v0 + 40);
    v4 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = [*(v0 + 56) view];
    [v5 setFrame_];
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21DA9259C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[26] = a4;
  v5[27] = a5;
  sub_21DBFA84C();
  v5[28] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[29] = v7;
  v5[30] = v6;

  return MEMORY[0x2822009F8](sub_21DA92634, v7, v6);
}

uint64_t sub_21DA92634()
{
  v1 = sub_21DBF870C();
  v0[31] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0[27] + 16);
    v0[2] = v0;
    v0[3] = sub_21DA928B0;
    v4 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659E0, &qword_21DC3A168);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21DA92024;
    v0[21] = &block_descriptor_139;
    v0[22] = v4;
    [v2 updateTextChunkVisibilityForAnimation:v3 visible:1 completionHandler:v0 + 18];
    v5 = v0 + 2;
LABEL_5:

    return MEMORY[0x282200938](v5);
  }

  v6 = sub_21DBF86FC();
  v0[32] = v6;
  if (v6)
  {
    v7 = v6;
    v8 = *(v0[27] + 16);
    v0[10] = v0;
    v0[11] = sub_21DA92B5C;
    v9 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659E0, &qword_21DC3A168);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21DA92024;
    v0[21] = &block_descriptor_6_6;
    v0[22] = v9;
    [v7 finishAnimationFor:v8 completionHandler:v0 + 18];
    v5 = v0 + 10;
    goto LABEL_5;
  }

  if (*(v0[27] + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_effectViewHandle))
  {

    sub_21DBF868C();
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_21DA928B0()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_21DA929B8, v2, v1);
}

uint64_t sub_21DA929B8()
{
  swift_unknownObjectRelease();
  v1 = sub_21DBF86FC();
  v0[32] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0[27] + 16);
    v0[10] = v0;
    v0[11] = sub_21DA92B5C;
    v4 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE659E0, &qword_21DC3A168);
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_21DA92024;
    v0[21] = &block_descriptor_6_6;
    v0[22] = v4;
    [v2 finishAnimationFor:v3 completionHandler:v0 + 18];

    return MEMORY[0x282200938](v0 + 10);
  }

  else
  {

    if (*(v0[27] + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_effectViewHandle))
    {

      sub_21DBF868C();
    }

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_21DA92B5C()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_21DA92C64, v2, v1);
}

uint64_t sub_21DA92C64()
{

  swift_unknownObjectRelease();
  if (*(*(v0 + 216) + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_effectViewHandle))
  {

    sub_21DBF868C();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21DA92CF8()
{
  MEMORY[0x223D46650](v0 + 24);
  v1 = OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_id;
  v2 = sub_21DBF86EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIHorizontalPonderingTextEffect(uint64_t a1)
{
  result = qword_27CE659D0;
  if (!qword_27CE659D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21DA92E28(uint64_t a1)
{
  result = sub_21DBF86EC();
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

uint64_t sub_21DA92EDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_id;
  v5 = sub_21DBF86EC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_21DA92FD4(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v20 = sub_21DBF86EC();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF8B2C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_animateFromColor;
  *(v4 + v15) = [objc_opt_self() labelColor];
  *(v4 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_effectViewHandle) = 0;
  *(v4 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_trackedTargetedPreview) = 0;
  swift_unknownObjectWeakAssign();
  *(v4 + 16) = a1;
  (*(v12 + 16))(v14, a3, v11);
  sub_21DBF86DC();
  swift_allocObject();
  v16 = a1;
  v17 = a2;
  sub_21DBF86CC();
  sub_21DBF86BC();

  (*(v12 + 8))(a3, v11);
  (*(v8 + 32))(v4 + OBJC_IVAR____TtC15RemindersUICore33TTRIHorizontalPonderingTextEffect_id, v10, v20);
  return v4;
}

void sub_21DA93228()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_21DBFA89C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_21DBFA84C();
    v7 = v5;

    v8 = v0;
    v9 = sub_21DBFA83C();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v7;
    v10[5] = v8;
    sub_21D1B5178(0, 0, v3, &unk_21DC3A160, v10);
  }
}

uint64_t sub_21DA93374(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21DA9259C(a1, v4, v5, v7, v6);
}

uint64_t sub_21DA93434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21D0F00D0;

  return sub_21DA921C4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_21DA9352C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21DA91C74(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_28_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_21DA9360C()
{
  result = qword_27CE659F0;
  if (!qword_27CE659F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE659F0);
  }

  return result;
}

double destroy for TTRIReminderDetailViewConfiguration()
{

  return result;
}

uint64_t initializeWithCopy for TTRIReminderDetailViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIReminderDetailViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  sub_21DBF8E0C();

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t assignWithTake for TTRIReminderDetailViewConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIReminderDetailViewConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 89))
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

uint64_t storeEnumTagSinglePayload for TTRIReminderDetailViewConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_21DA93958@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = v3 >> 6;
  if (v3 >> 6 <= 1)
  {
    if (!v4)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_4:
        v5 = sub_21DBF516C();
        v7 = v6;
        result = sub_21DBF516C();
LABEL_30:
        v11 = 1;
        goto LABEL_31;
      }

LABEL_35:
      swift_once();
      goto LABEL_4;
    }

    if (qword_280D1BAA8 == -1)
    {
LABEL_29:
      v5 = sub_21DBF516C();
      v7 = v17;
      result = 0;
      v9 = 0;
      goto LABEL_30;
    }

LABEL_36:
    swift_once();
    goto LABEL_29;
  }

  if (v4 == 2)
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF516C();
    v7 = v10;
    v11 = 0;
    result = 0;
    v9 = 0;
    goto LABEL_31;
  }

  v12 = *a1;
  if (__PAIR128__(-64, 2) >= __PAIR128__(v3, *a1))
  {
    v13 = *(a1 + 8);
    if (v12 | v13 ^ 0xC0)
    {
      if (v13 != 192 || v12 != 1)
      {
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_4;
        }

        goto LABEL_35;
      }

      goto LABEL_20;
    }

LABEL_28:
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if (__PAIR128__(((v12 >= 5) + v3 + 63), v12 - 5) >= 2)
  {
    if (*(a1 + 8) != 192 || v12 != 3)
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      result = sub_21DBF516C();
      v5 = 0;
      v7 = 0;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

LABEL_20:
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v5 = sub_21DBF516C();
  v7 = v15;
  result = sub_21DBF516C();
  v11 = 0;
LABEL_31:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v11;
  *(a2 + 17) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v9;
  return result;
}

void sub_21DA93F7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_27CE56A20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = byte_27CE5E181;
  v6 = v4 >> 6;
  if (v4 >> 6 <= 1)
  {
    if (v6)
    {
      v5 = byte_27CE5E181 & v4;
      v17 = v3;
      v18 = v4;
      sub_21DA93958(&v17, &v20);
      *&v19[7] = v20;
      *&v19[23] = v21;
      *&v19[39] = v22;
      sub_21D257D78(v3, v4);
      LOBYTE(v6) = 0;
      v7 = 0;
      v8 = 0;
      v9 = 1;
      v10 = 540.0;
      v11 = 3;
      v12 = 1;
      goto LABEL_44;
    }

    goto LABEL_7;
  }

  if (v6 == 2)
  {
LABEL_7:
    v17 = v3;
    v18 = v4;
    sub_21DA93958(&v17, &v20);
    *&v19[7] = v20;
    *&v19[23] = v21;
    *&v19[39] = v22;
    if (v6)
    {
      LOBYTE(v6) = 0;
      v9 = 0;
      v12 = 0;
      v7 = 1;
      v10 = 540.0;
      v11 = 3;
      v8 = 4705;
    }

    else
    {
      v10 = 540.0;
      v11 = 2;
      v8 = 17919;
      v7 = 0;
      v9 = 0;
      v12 = 0;
    }

    goto LABEL_44;
  }

  v5 = (__PAIR128__((v4 + 64), v3) < 6) & byte_27CE5E181;
  v17 = v3;
  v18 = v4;
  sub_21DA93958(&v17, &v20);
  *&v19[7] = v20;
  *&v19[23] = v21;
  *&v19[39] = v22;
  if (__PAIR128__(-64, 2) >= __PAIR128__(v4, v3))
  {
    v8 = v3 | v4 ^ 0xC0;
    if (v8)
    {
      v14 = v4 == 192 && v3 == 1;
      v10 = 540.0;
      v8 = 16579;
      if (v14)
      {
        LOBYTE(v6) = 0;
      }

      else
      {
        v10 = 540.0;
        LOBYTE(v6) = 1;
      }

      v7 = v14;
      if (!v14)
      {
        v8 = 16578;
      }

      v11 = 3;
      v9 = 0;
      v12 = 0;
    }

    else
    {
      LOBYTE(v6) = 0;
      v7 = 0;
      v12 = 0;
      v9 = 1;
      v10 = 540.0;
      v11 = 3;
    }
  }

  else if (__PAIR128__(-64, 4) < __PAIR128__(v4, v3))
  {
    v15 = v4 == 192 && v3 == 5;
    v10 = 540.0;
    v11 = 3;
    v8 = 97;
    v7 = 1;
    if (!v15)
    {
      v8 = 4705;
    }

    v9 = 1;
    if (!v15)
    {
      v10 = 540.0;
      v11 = 3;
    }

    LOBYTE(v6) = 0;
    v12 = 0;
  }

  else
  {
    v10 = 320.0;
    v8 = 30463;
    v13 = v4 == 192 && v3 == 3;
    LOBYTE(v6) = 0;
    v11 = 3;
    if (v13)
    {
      v8 = 16480;
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    if (v13)
    {
      v10 = 540.0;
    }

    else
    {
      v11 = 3;
    }

    v7 = 0;
    v12 = 0;
  }

LABEL_44:
  *a2 = v5;
  v16 = *&v19[16];
  *(a2 + 1) = *v19;
  *(a2 + 17) = v16;
  *(a2 + 32) = *&v19[31];
  *(a2 + 48) = v9;
  *(a2 + 56) = v8;
  *(a2 + 64) = v6;
  *(a2 + 65) = v7;
  *(a2 + 72) = v10;
  *(a2 + 80) = v11;
  *(a2 + 88) = v12;
}

uint64_t initializeWithCopy for TTRIReminderDetailViewConfiguration.NavigationConfiguration(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIReminderDetailViewConfiguration.NavigationConfiguration(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRIReminderDetailViewConfiguration.NavigationConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 17) = *(a2 + 17);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  return a1;
}

unint64_t sub_21DA94428()
{
  result = qword_27CE659F8;
  if (!qword_27CE659F8)
  {
    result = swift_getWitnessTable(byte_21DC3A238, &type metadata for TTRIReminderDetailHideableCells, v0, v1);
    atomic_store(result, &qword_27CE659F8);
  }

  return result;
}

unint64_t sub_21DA94480()
{
  result = qword_27CE65A00;
  if (!qword_27CE65A00)
  {
    result = swift_getWitnessTable(byte_21DC3A208, &type metadata for TTRIReminderDetailHideableCells, v0, v1);
    atomic_store(result, &qword_27CE65A00);
  }

  return result;
}

unint64_t sub_21DA944D8()
{
  result = qword_27CE65A08;
  if (!qword_27CE65A08)
  {
    result = swift_getWitnessTable(aA_9, &type metadata for TTRIReminderDetailHideableCells, v0, v1);
    atomic_store(result, &qword_27CE65A08);
  }

  return result;
}

unint64_t sub_21DA94530()
{
  result = qword_27CE65A10;
  if (!qword_27CE65A10)
  {
    result = swift_getWitnessTable(byte_21DC3A298, &type metadata for TTRIReminderDetailHideableCells, v0, v1);
    atomic_store(result, &qword_27CE65A10);
  }

  return result;
}

void sub_21DA94594()
{
  if (([v0 _isInPopoverPresentation] & 1) == 0)
  {
    sub_21DA9558C(&OBJC_IVAR____TtC15RemindersUICore28TTRIQuickEntryViewController_tableView, &unk_282EE5708, sub_21DA97FB0, &block_descriptor_37_4);
    v1 = objc_opt_self();
    v2 = [v1 defaultCenter];
    v3 = *MEMORY[0x277D76C60];
    v4 = objc_opt_self();
    v5 = [v4 mainQueue];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97E2C;
    v30 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_43_2;
    v7 = _Block_copy(&aBlock);

    v8 = [v2 addObserverForName:v3 object:0 queue:v5 usingBlock:v7];
    _Block_release(v7);

    v9 = [v1 defaultCenter];
    v10 = *MEMORY[0x277D76C50];
    v11 = [v4 mainQueue];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97E34;
    v30 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_47_1;
    v13 = _Block_copy(&aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);

    v15 = [v1 defaultCenter];
    v16 = *MEMORY[0x277D76C48];
    v17 = [v4 mainQueue];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97E7C;
    v30 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_51_3;
    v19 = _Block_copy(&aBlock);

    v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
    _Block_release(v19);

    v21 = [objc_allocWithZone(type metadata accessor for TTRKeyboardAvoidanceData()) init];
    ObjectType = swift_getObjectType();
    aBlock = v8;
    v22 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willShowNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v22);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v14;
    v23 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willHideNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v23);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v20;
    v24 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willChangeFrameNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v24);
    swift_endAccess();
    if (qword_27CE57068 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(v0, qword_27CE65A18, v21, 1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_21DA94AA8()
{
  if (([v0 _isInPopoverPresentation] & 1) == 0)
  {
    sub_21DA9558C(&OBJC_IVAR____TtC15RemindersUICore32TTRIReminderDetailViewController_tableView, &unk_282EE5938, sub_21DA97FB4, &block_descriptor_85_0);
    v1 = objc_opt_self();
    v2 = [v1 defaultCenter];
    v3 = *MEMORY[0x277D76C60];
    v4 = objc_opt_self();
    v5 = [v4 mainQueue];
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97ED0;
    v30 = v6;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_91;
    v7 = _Block_copy(&aBlock);

    v8 = [v2 addObserverForName:v3 object:0 queue:v5 usingBlock:v7];
    _Block_release(v7);

    v9 = [v1 defaultCenter];
    v10 = *MEMORY[0x277D76C50];
    v11 = [v4 mainQueue];
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97ED8;
    v30 = v12;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_95_1;
    v13 = _Block_copy(&aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);

    v15 = [v1 defaultCenter];
    v16 = *MEMORY[0x277D76C48];
    v17 = [v4 mainQueue];
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = sub_21DA97F20;
    v30 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_21D0EE46C;
    ObjectType = &block_descriptor_99;
    v19 = _Block_copy(&aBlock);

    v20 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v19];
    _Block_release(v19);

    v21 = [objc_allocWithZone(type metadata accessor for TTRKeyboardAvoidanceData()) init];
    ObjectType = swift_getObjectType();
    aBlock = v8;
    v22 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willShowNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v22);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v14;
    v23 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willHideNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v23);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v20;
    v24 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willChangeFrameNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v21 + v24);
    swift_endAccess();
    if (qword_27CE57068 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(v0, qword_27CE65A18, v21, 1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void TTRKeyboardAvoidance<>.startAvoidingKeyboard()(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16))())
  {
    (*(a2 + 32))(a1, a2);
    v30 = objc_opt_self();
    v5 = [v30 defaultCenter];
    v6 = *MEMORY[0x277D76C60];
    v7 = objc_opt_self();
    v8 = [v7 mainQueue];
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = a2;
    v10[4] = v9;
    v36 = sub_21DA96DE4;
    v37 = v10;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21D0EE46C;
    ObjectType = &block_descriptor_140;
    v11 = _Block_copy(&aBlock);

    v31 = [v5 addObserverForName:v6 object:0 queue:v8 usingBlock:v11];
    _Block_release(v11);

    v12 = [v30 defaultCenter];
    v13 = *MEMORY[0x277D76C50];
    v14 = [v7 mainQueue];
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = v15;
    v36 = sub_21DA972D8;
    v37 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21D0EE46C;
    ObjectType = &block_descriptor_10_5;
    v17 = _Block_copy(&aBlock);

    v18 = [v12 addObserverForName:v13 object:0 queue:v14 usingBlock:v17];
    _Block_release(v17);

    v19 = [v30 defaultCenter];
    v20 = *MEMORY[0x277D76C48];
    v21 = [v7 mainQueue];
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = v22;
    v36 = sub_21DA97AA0;
    v37 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_21D0EE46C;
    ObjectType = &block_descriptor_17_7;
    v24 = _Block_copy(&aBlock);

    v25 = [v19 addObserverForName:v20 object:0 queue:v21 usingBlock:v24];
    _Block_release(v24);

    v26 = [objc_allocWithZone(type metadata accessor for TTRKeyboardAvoidanceData()) init];
    ObjectType = swift_getObjectType();
    aBlock = v31;
    v27 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willShowNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v26 + v27);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v18;
    v28 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willHideNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v26 + v28);
    swift_endAccess();
    ObjectType = swift_getObjectType();
    aBlock = v25;
    v29 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willChangeFrameNotificationToken;
    swift_beginAccess();
    swift_unknownObjectRetain();
    sub_21D45C42C(&aBlock, v26 + v29);
    swift_endAccess();
    if (qword_27CE57068 != -1)
    {
      swift_once();
    }

    objc_setAssociatedObject(v2, qword_27CE65A18, v26, 1);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_21DA9558C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27CE57068 != -1)
  {
    swift_once();
  }

  v7 = qword_27CE65A18;
  if (objc_getAssociatedObject(v4, qword_27CE65A18))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  aBlock = v32;
  v28 = v33;
  if (*(&v33 + 1))
  {
    type metadata accessor for TTRKeyboardAvoidanceData();
    if (swift_dynamicCast())
    {
      v8 = v31;
      v9 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willShowNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v31 + v9, &v32);
      if (*(&v33 + 1))
      {
        sub_21D0CF2E8(&v32, &aBlock);
        v10 = [objc_opt_self() defaultCenter];
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v28 + 1));
        [v10 removeObserver_];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        sub_21D1A8418(&v32);
      }

      v11 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willHideNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v8 + v11, &v32);
      if (*(&v33 + 1))
      {
        sub_21D0CF2E8(&v32, &aBlock);
        v12 = [objc_opt_self() &selRef__currentHandleDistance + 5];
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v28 + 1));
        [v12 &selRef:sub_21DBFC62C() addOperation:?];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        sub_21D1A8418(&v32);
      }

      v13 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willChangeFrameNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v8 + v13, &v32);
      if (*(&v33 + 1))
      {
        sub_21D0CF2E8(&v32, &aBlock);
        v14 = [objc_opt_self() &selRef__currentHandleDistance + 5];
        __swift_project_boxed_opaque_existential_1(&aBlock, *(&v28 + 1));
        [v14 &selRef:sub_21DBFC62C() addOperation:?];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
      }

      else
      {
        sub_21D1A8418(&v32);
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        [Strong contentInset];
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v23 = objc_opt_self();
        v24 = swift_allocObject();
        v24[2] = v4;
        v24[3] = v18;
        v24[4] = v20;
        v24[5] = 0;
        v24[6] = v22;
        v29 = a3;
        v30 = v24;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v28 = sub_21D0D74FC;
        *(&v28 + 1) = a4;
        v25 = _Block_copy(&aBlock);
        v26 = v4;

        [v23 animateWithDuration:v25 animations:0.25];
        _Block_release(v25);
        objc_setAssociatedObject(v26, v7, 0, 1);
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    sub_21D1A8418(&aBlock);
  }
}

void TTRKeyboardAvoidance<>.stopAvoidingKeyboard()(uint64_t a1, uint64_t a2)
{
  if (qword_27CE57068 != -1)
  {
    swift_once();
  }

  v5 = qword_27CE65A18;
  if (objc_getAssociatedObject(v2, qword_27CE65A18))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15 = v13;
  v16 = v14;
  if (*(&v14 + 1))
  {
    type metadata accessor for TTRKeyboardAvoidanceData();
    if (swift_dynamicCast())
    {
      v6 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willShowNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v12 + v6, &v13);
      if (*(&v14 + 1))
      {
        sub_21D0CF2E8(&v13, &v15);
        v7 = [objc_opt_self() defaultCenter];
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        [v7 removeObserver_];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v15);
      }

      else
      {
        sub_21D1A8418(&v13);
      }

      v8 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willHideNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v12 + v8, &v13);
      if (*(&v14 + 1))
      {
        sub_21D0CF2E8(&v13, &v15);
        v9 = [objc_opt_self() defaultCenter];
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        [v9 removeObserver_];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v15);
      }

      else
      {
        sub_21D1A8418(&v13);
      }

      v10 = OBJC_IVAR____TtC15RemindersUICoreP33_8F03EA6F046ABEC42AD2CA420BBDA77124TTRKeyboardAvoidanceData_willChangeFrameNotificationToken;
      swift_beginAccess();
      sub_21D0DB414(v12 + v10, &v13);
      if (*(&v14 + 1))
      {
        sub_21D0CF2E8(&v13, &v15);
        v11 = [objc_opt_self() defaultCenter];
        __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
        [v11 removeObserver_];

        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(&v15);
      }

      else
      {
        sub_21D1A8418(&v13);
      }

      (*(a2 + 56))(a1, a2, 0.0, 0.25);
      objc_setAssociatedObject(v2, v5, 0, 1);
    }
  }

  else
  {
    sub_21D1A8418(&v15);
  }
}

void sub_21DA95D90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong contentInset];
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v19 = objc_opt_self();
    v20 = swift_allocObject();
    *(v20 + 16) = v6;
    *(v20 + 24) = v14;
    *(v20 + 32) = v16;
    *(v20 + 40) = a5;
    *(v20 + 48) = v18;
    v23[4] = a3;
    v23[5] = v20;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_21D0D74FC;
    v23[3] = a4;
    v21 = _Block_copy(v23);
    v22 = v6;

    [v19 animateWithDuration:v21 animations:a6];
    _Block_release(v21);
  }

  else
  {
    __break(1u);
  }
}

void TTRKeyboardAvoidance<>.setKeyboardAvoidanceBottomInset(_:duration:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = (*(a2 + 8))();
  [v9 contentInset];
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = v4;
  *(v17 + 40) = v11;
  *(v17 + 48) = v13;
  *(v17 + 56) = a3;
  *(v17 + 64) = v15;
  v20[4] = sub_21DA97C88;
  v20[5] = v17;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_21D0D74FC;
  v20[3] = &block_descriptor_23_5;
  v18 = _Block_copy(v20);
  v19 = v4;

  [v16 animateWithDuration:v18 animations:a4];
  _Block_release(v18);
}

void *sub_21DA960A8()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_27CE65A18 = result;
  return result;
}

void sub_21DA960FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF4D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      __break(1u);
      goto LABEL_29;
    }

    v10 = v9;
    v11 = [v9 traitCollection];

    v12 = [v11 _presentationSemanticContext];
    if (v12 != 3)
    {
      v13 = sub_21DBF4D2C();
      v14 = sub_21DBFA16C();
      v16 = v15;
      if (v14 == sub_21DBFA16C() && v16 == v17)
      {
      }

      else
      {
        v19 = sub_21DBFC64C();

        if ((v19 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      (*(v4 + 16))(v6, a1, v3);
      TTRIKeyboardNotification.init(notification:)(v6, &aBlock);
      v20 = aBlock;
      if (aBlock)
      {
        v21 = *&v75;
        v23 = *&v73;
        v22 = v74;
        v24 = *&v72;
        if (v77)
        {
          v25 = 0.25;
        }

        else
        {
          v25 = v76;
        }

        v26 = swift_unknownObjectWeakLoadStrong();
        if (v26)
        {
          v27 = v26;
          v28 = [v26 window];
          if (v28)
          {
            v29 = v28;
            sub_21D1B2ABC();
            v30 = [v29 screen];
            v31 = sub_21DBFB63C();

            if (v31)
            {
              v70 = v25;
              v32 = [v20 coordinateSpace];
              [v27 bounds];
              v34 = v33;
              v36 = v35;
              v38 = v37;
              v40 = v39;
              [v27 safeAreaInsets];
              v42 = v40 - v41;
              [objc_msgSend(v27 coordinateSpace)];
              v44 = v43;
              v46 = v45;
              v48 = v47;
              v50 = v49;
              swift_unknownObjectRelease();
              v78.origin.x = v44;
              v78.origin.y = v46;
              v78.size.width = v48;
              v78.size.height = v50;
              v82.origin.x = v34;
              v82.origin.y = v36;
              v82.size.width = v38;
              v82.size.height = v42;
              v79 = CGRectIntersection(v78, v82);
              x = v79.origin.x;
              y = v79.origin.y;
              width = v79.size.width;
              height = v79.size.height;
              if (CGRectIsEmpty(v79))
              {

                swift_unknownObjectRelease();
                v55 = 0.0;
              }

              else
              {
                v80.origin.x = v34;
                v80.origin.y = v36;
                v80.size.width = v38;
                v80.size.height = v42;
                MaxY = CGRectGetMaxY(v80);
                v81.origin.x = x;
                v81.origin.y = y;
                v81.size.width = width;
                v81.size.height = height;
                MinY = CGRectGetMinY(v81);

                swift_unknownObjectRelease();
                v55 = MaxY - MinY;
              }

              v25 = v70;
LABEL_24:
              v56 = swift_unknownObjectWeakLoadStrong();
              if (v56)
              {
                v57 = v56;
                [v56 contentInset];
                v59 = v58;
                v61 = v60;
                v63 = v62;

                v64 = objc_opt_self();
                *&v65 = COERCE_DOUBLE(swift_allocObject());
                *(v65 + 16) = v8;
                *(v65 + 24) = v59;
                *(v65 + 32) = v61;
                *(v65 + 40) = v55;
                *(v65 + 48) = v63;
                *&v75 = COERCE_DOUBLE(sub_21DA97FB0);
                v76 = *&v65;
                aBlock = MEMORY[0x277D85DD0];
                v72 = 1107296256;
                *&v73 = COERCE_DOUBLE(sub_21D0D74FC);
                v74 = COERCE_DOUBLE(&block_descriptor_72_1);
                v66 = _Block_copy(&aBlock);
                v67 = v8;

                [v64 animateWithDuration:v66 animations:v25];
                _Block_release(v66);
                sub_21D5D32F8();

                return;
              }

LABEL_30:
              __break(1u);
              return;
            }
          }

          v55 = 0.0;
          goto LABEL_24;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

LABEL_21:
  }
}

void sub_21DA96600(uint64_t a1, uint64_t a2)
{
  v3 = sub_21DBF4D5C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      __break(1u);
      goto LABEL_29;
    }

    v10 = v9;
    v11 = [v9 traitCollection];

    v12 = [v11 _presentationSemanticContext];
    if (v12 != 3)
    {
      v13 = sub_21DBF4D2C();
      v14 = sub_21DBFA16C();
      v16 = v15;
      if (v14 == sub_21DBFA16C() && v16 == v17)
      {
      }

      else
      {
        v19 = sub_21DBFC64C();

        if ((v19 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      (*(v4 + 16))(v6, a1, v3);
      TTRIKeyboardNotification.init(notification:)(v6, &aBlock);
      v20 = aBlock;
      if (aBlock)
      {
        v21 = *&v75;
        v23 = *&v73;
        v22 = v74;
        v24 = *&v72;
        if (v77)
        {
          v25 = 0.25;
        }

        else
        {
          v25 = v76;
        }

        v26 = swift_unknownObjectWeakLoadStrong();
        if (v26)
        {
          v27 = v26;
          v28 = [v26 window];
          if (v28)
          {
            v29 = v28;
            sub_21D1B2ABC();
            v30 = [v29 screen];
            v31 = sub_21DBFB63C();

            if (v31)
            {
              v70 = v25;
              v32 = [v20 coordinateSpace];
              [v27 bounds];
              v34 = v33;
              v36 = v35;
              v38 = v37;
              v40 = v39;
              [v27 safeAreaInsets];
              v42 = v40 - v41;
              [objc_msgSend(v27 coordinateSpace)];
              v44 = v43;
              v46 = v45;
              v48 = v47;
              v50 = v49;
              swift_unknownObjectRelease();
              v78.origin.x = v44;
              v78.origin.y = v46;
              v78.size.width = v48;
              v78.size.height = v50;
              v82.origin.x = v34;
              v82.origin.y = v36;
              v82.size.width = v38;
              v82.size.height = v42;
              v79 = CGRectIntersection(v78, v82);
              x = v79.origin.x;
              y = v79.origin.y;
              width = v79.size.width;
              height = v79.size.height;
              if (CGRectIsEmpty(v79))
              {

                swift_unknownObjectRelease();
                v55 = 0.0;
              }

              else
              {
                v80.origin.x = v34;
                v80.origin.y = v36;
                v80.size.width = v38;
                v80.size.height = v42;
                MaxY = CGRectGetMaxY(v80);
                v81.origin.x = x;
                v81.origin.y = y;
                v81.size.width = width;
                v81.size.height = height;
                MinY = CGRectGetMinY(v81);

                swift_unknownObjectRelease();
                v55 = MaxY - MinY;
              }

              v25 = v70;
LABEL_24:
              v56 = swift_unknownObjectWeakLoadStrong();
              if (v56)
              {
                v57 = v56;
                [v56 contentInset];
                v59 = v58;
                v61 = v60;
                v63 = v62;

                v64 = objc_opt_self();
                *&v65 = COERCE_DOUBLE(swift_allocObject());
                *(v65 + 16) = v8;
                *(v65 + 24) = v59;
                *(v65 + 32) = v61;
                *(v65 + 40) = v55;
                *(v65 + 48) = v63;
                *&v75 = COERCE_DOUBLE(sub_21DA97FB4);
                v76 = *&v65;
                aBlock = MEMORY[0x277D85DD0];
                v72 = 1107296256;
                *&v73 = COERCE_DOUBLE(sub_21D0D74FC);
                v74 = COERCE_DOUBLE(&block_descriptor_120_0);
                v66 = _Block_copy(&aBlock);
                v67 = v8;

                [v64 animateWithDuration:v66 animations:v25];
                _Block_release(v66);
                sub_21D819408();

                return;
              }

LABEL_30:
              __break(1u);
              return;
            }
          }

          v55 = 0.0;
          goto LABEL_24;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

LABEL_21:
  }
}

void sub_21DA96B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21DBF4D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v33 = *(a4 + 8);
    v13 = v33(a3, a4);
    v14 = [v13 traitCollection];

    v15 = [v14 _presentationSemanticContext];
    if (v15 == 3)
    {
      goto LABEL_15;
    }

    v31 = a3;
    *&v32 = a1;
    v16 = sub_21DBF4D2C();
    v17 = sub_21DBFA16C();
    v19 = v18;
    if (v17 == sub_21DBFA16C() && v19 == v20)
    {
    }

    else
    {
      v22 = sub_21DBFC64C();

      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    (*(v8 + 16))(v10, v32, v7);
    TTRIKeyboardNotification.init(notification:)(v10, &v34);
    v23 = v34;
    if (!v34)
    {
LABEL_15:

      return;
    }

    v24 = v37;
    v25 = v38 & 1;
    if (v38)
    {
      v26 = 0.25;
    }

    else
    {
      v26 = v37;
    }

    v32 = v35;
    v30 = v36;
    v27 = v31;
    v28 = v33(v31, a4);
    v34 = v23;
    v35 = v32;
    v36 = v30;
    v37 = v24;
    v38 = v25;
    v29 = UIScrollView.bottomContentInset(forAvoidingKeyboardWith:)(&v34);

    (*(a4 + 56))(v27, a4, v29, v26);
    (*(a4 + 40))(v27, a4, v26);
  }
}

void sub_21DA96DF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_21DBF4D2C();
    v11 = sub_21DBFA16C();
    v13 = v12;
    if (v11 == sub_21DBFA16C() && v13 == v14)
    {

      v17 = sub_21DBF4D4C();
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = sub_21DBFC64C();

      if ((v16 & 1) == 0)
      {
LABEL_21:

        return;
      }

      v17 = sub_21DBF4D4C();
      if (!v17)
      {
        goto LABEL_16;
      }
    }

    v18 = v17;
    *&v36 = sub_21DBFA16C();
    *(&v36 + 1) = v19;
    sub_21DBFBE2C();
    if (*(v18 + 16))
    {
      v20 = sub_21D17EA0C(v35);
      if (v21)
      {
        sub_21D0CEB98(*(v18 + 56) + 32 * v20, &v36);
        sub_21D181D3C(v35);

        if (*(&v37 + 1))
        {
          if (swift_dynamicCast())
          {
            v22 = *v35;
LABEL_19:
            v23 = swift_unknownObjectWeakLoadStrong();
            if (!v23)
            {
              __break(1u);
              return;
            }

            v24 = v23;
            [v23 contentInset];
            v26 = v25;
            v28 = v27;
            v30 = v29;

            v31 = objc_opt_self();
            v32 = swift_allocObject();
            v32[2] = v9;
            v32[3] = v26;
            v32[4] = v28;
            v32[5] = 0;
            v32[6] = v30;
            v35[4] = a5;
            v35[5] = v32;
            v35[0] = MEMORY[0x277D85DD0];
            v35[1] = 1107296256;
            v35[2] = sub_21D0D74FC;
            v35[3] = a6;
            v33 = _Block_copy(v35);
            v34 = v9;

            [v31 animateWithDuration:v33 animations:v22];
            _Block_release(v33);
            goto LABEL_21;
          }

LABEL_18:
          v22 = 0.25;
          goto LABEL_19;
        }

LABEL_17:
        sub_21D1A8418(&v36);
        goto LABEL_18;
      }
    }

    sub_21D181D3C(v35);
LABEL_16:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_17;
  }
}

void sub_21DA970BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_21DBF4D2C();
    v9 = sub_21DBFA16C();
    v11 = v10;
    if (v9 == sub_21DBFA16C() && v11 == v12)
    {

      v15 = sub_21DBF4D4C();
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v14 = sub_21DBFC64C();

      if ((v14 & 1) == 0)
      {
LABEL_20:

        return;
      }

      v15 = sub_21DBF4D4C();
      if (!v15)
      {
        goto LABEL_16;
      }
    }

    v16 = v15;
    *&v22 = sub_21DBFA16C();
    *(&v22 + 1) = v17;
    sub_21DBFBE2C();
    if (*(v16 + 16))
    {
      v18 = sub_21D17EA0C(v21);
      if (v19)
      {
        sub_21D0CEB98(*(v16 + 56) + 32 * v18, &v22);
        sub_21D181D3C(v21);

        if (*(&v23 + 1))
        {
          if (swift_dynamicCast())
          {
            v20 = *v21;
LABEL_19:
            (*(a4 + 56))(a3, a4, 0.0, v20);
            (*(a4 + 48))(a3, a4, v20);
            goto LABEL_20;
          }

LABEL_18:
          v20 = 0.25;
          goto LABEL_19;
        }

LABEL_17:
        sub_21D1A8418(&v22);
        goto LABEL_18;
      }
    }

    sub_21D181D3C(v21);
LABEL_16:
    v22 = 0u;
    v23 = 0u;
    goto LABEL_17;
  }
}

void sub_21DA972E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_21DBF4D5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v83 = a4;
    v16 = swift_unknownObjectWeakLoadStrong();
    if (!v16)
    {
      __break(1u);
      goto LABEL_29;
    }

    v17 = v16;
    v18 = [v16 traitCollection];

    v19 = [v18 _presentationSemanticContext];
    if (v19 != 3)
    {
      v81 = a5;
      v82 = a6;
      v20 = sub_21DBF4D2C();
      v21 = sub_21DBFA16C();
      v23 = v22;
      if (v21 == sub_21DBFA16C() && v23 == v24)
      {
      }

      else
      {
        v26 = sub_21DBFC64C();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      (*(v11 + 16))(v13, a1, v10);
      TTRIKeyboardNotification.init(notification:)(v13, &aBlock);
      v27 = aBlock;
      if (aBlock)
      {
        v28 = v88;
        v30 = *&v86;
        v29 = v87;
        v31 = *&v85;
        if (v90)
        {
          v32 = 0.25;
        }

        else
        {
          v32 = v89;
        }

        v33 = swift_unknownObjectWeakLoadStrong();
        if (v33)
        {
          v34 = v33;
          v35 = [v33 window];
          v37 = v81;
          v36 = v82;
          if (v35)
          {
            v38 = v35;
            sub_21D1B2ABC();
            v39 = [v38 screen];
            v40 = sub_21DBFB63C();

            if (v40)
            {
              v80 = v32;
              v41 = [v27 coordinateSpace];
              [v34 bounds];
              v43 = v42;
              v45 = v44;
              v47 = v46;
              v49 = v48;
              [v34 safeAreaInsets];
              v51 = v49 - v50;
              [objc_msgSend(v34 coordinateSpace)];
              v53 = v52;
              v55 = v54;
              v57 = v56;
              v59 = v58;
              swift_unknownObjectRelease();
              v91.origin.x = v53;
              v91.origin.y = v55;
              v91.size.width = v57;
              v91.size.height = v59;
              v95.origin.x = v43;
              v95.origin.y = v45;
              v95.size.width = v47;
              v95.size.height = v51;
              v92 = CGRectIntersection(v91, v95);
              x = v92.origin.x;
              y = v92.origin.y;
              width = v92.size.width;
              height = v92.size.height;
              if (CGRectIsEmpty(v92))
              {

                swift_unknownObjectRelease();
                v64 = 0.0;
              }

              else
              {
                v93.origin.x = v43;
                v93.origin.y = v45;
                v93.size.width = v47;
                v93.size.height = v51;
                MaxY = CGRectGetMaxY(v93);
                v94.origin.x = x;
                v94.origin.y = y;
                v94.size.width = width;
                v94.size.height = height;
                MinY = CGRectGetMinY(v94);

                swift_unknownObjectRelease();
                v64 = MaxY - MinY;
              }

              v32 = v80;
LABEL_25:
              v67 = swift_unknownObjectWeakLoadStrong();
              if (v67)
              {
                v68 = v67;
                [v67 contentInset];
                v70 = v69;
                v72 = v71;
                v74 = v73;

                v75 = objc_opt_self();
                *&v76 = COERCE_DOUBLE(swift_allocObject());
                *(v76 + 16) = v15;
                *(v76 + 24) = v70;
                *(v76 + 32) = v72;
                *(v76 + 40) = v64;
                *(v76 + 48) = v74;
                v88 = *&v37;
                v89 = *&v76;
                aBlock = MEMORY[0x277D85DD0];
                v85 = 1107296256;
                *&v86 = COERCE_DOUBLE(sub_21D0D74FC);
                v87 = *&v36;
                v77 = _Block_copy(&aBlock);
                v78 = v15;

                [v75 animateWithDuration:v77 animations:v32];
                _Block_release(v77);

                return;
              }

LABEL_30:
              __break(1u);
              return;
            }
          }

          v64 = 0.0;
          goto LABEL_25;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

LABEL_20:
  }
}

void sub_21DA977E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21DBF4D5C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v33 = *(a4 + 8);
    v13 = v33(a3, a4);
    v14 = [v13 traitCollection];

    v15 = [v14 _presentationSemanticContext];
    if (v15 == 3)
    {
      goto LABEL_15;
    }

    v31 = a3;
    *&v32 = a1;
    v16 = sub_21DBF4D2C();
    v17 = sub_21DBFA16C();
    v19 = v18;
    if (v17 == sub_21DBFA16C() && v19 == v20)
    {
    }

    else
    {
      v22 = sub_21DBFC64C();

      if ((v22 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    (*(v8 + 16))(v10, v32, v7);
    TTRIKeyboardNotification.init(notification:)(v10, &v34);
    v23 = v34;
    if (!v34)
    {
LABEL_15:

      return;
    }

    v24 = v37;
    v25 = v38 & 1;
    if (v38)
    {
      v26 = 0.25;
    }

    else
    {
      v26 = v37;
    }

    v32 = v35;
    v30 = v36;
    v27 = v31;
    v28 = v33(v31, a4);
    v34 = v23;
    v35 = v32;
    v36 = v30;
    v37 = v24;
    v38 = v25;
    v29 = UIScrollView.bottomContentInset(forAvoidingKeyboardWith:)(&v34);

    (*(a4 + 56))(v27, a4, v29, v26);
  }
}

void sub_21DA97AD4(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, double a6)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = Strong;
  [Strong setScrollIndicatorInsets_];

  v12 = swift_unknownObjectWeakLoadStrong();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v13 = v12;
  [v12 setContentInset_];
}

void sub_21DA97BA0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a7 + 8);
  v14 = v13(a6, a7);
  [v14 setScrollIndicatorInsets_];

  v15 = v13(a6, a7);
  [v15 setContentInset_];
}

uint64_t sub_21DA98000()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65A38);
  v1 = __swift_project_value_buffer(v0, qword_27CE65A38);
  if (qword_280D17A58 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21AB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTREditSectionsListEditor.remList.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void *TTREditSectionsListEditor.__allocating_init(list:undoManager:committer:userDefaults:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[4] = MEMORY[0x277D84F90];
  v8[2] = a1;
  sub_21D0D32E4(a4, (v8 + 5));
  v9 = a1;
  v10 = [v9 store];
  v11 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v12 = type metadata accessor for TTRBasicUndoContext();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v26[3] = v12;
  v26[4] = &protocol witness table for TTRBasicUndoContext;
  v26[0] = v13;
  sub_21D1826C4(v26, v25);
  v14 = [v11 updateList_];
  sub_21D1826C4(v25, v23);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v15 = qword_280D1AA18;
  sub_21D311700(v25);
  type metadata accessor for TTRListEditor();
  v16 = swift_allocObject();
  v21 = type metadata accessor for TTRUserDefaults();
  v22 = &protocol witness table for TTRUserDefaults;
  *&v20 = v15;
  v17 = v15;
  sub_21D311700(v26);
  *(v16 + 64) = 0;
  *(v16 + 16) = v14;
  v18 = v23[1];
  *(v16 + 24) = v23[0];
  *(v16 + 40) = v18;
  *(v16 + 56) = v24;
  swift_beginAccess();
  *(v16 + 64) = 0;
  sub_21D0D15E0(&v20, v16 + 72);

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  v8[3] = v16;
  return v8;
}

void *TTREditSectionsListEditor.init(list:undoManager:committer:userDefaults:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9 = MEMORY[0x277D84F90];
  v4[2] = a1;
  v4[4] = v9;
  sub_21D0D32E4(a4, (v4 + 5));
  v10 = a1;
  v11 = [v10 store];
  v12 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  swift_beginAccess();
  v13 = v4[2];
  v14 = type metadata accessor for TTRBasicUndoContext();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v29[3] = v14;
  v29[4] = &protocol witness table for TTRBasicUndoContext;
  v29[0] = v15;
  sub_21D1826C4(v29, v28);
  v16 = v13;
  v17 = [v12 updateList_];
  sub_21D1826C4(v28, v26);
  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v18 = qword_280D1AA18;
  sub_21D311700(v28);
  type metadata accessor for TTRListEditor();
  v19 = swift_allocObject();
  v24 = type metadata accessor for TTRUserDefaults();
  v25 = &protocol witness table for TTRUserDefaults;
  *&v23 = v18;
  v20 = v18;
  sub_21D311700(v29);
  *(v19 + 64) = 0;
  *(v19 + 16) = v17;
  v21 = v26[1];
  *(v19 + 24) = v26[0];
  *(v19 + 40) = v21;
  *(v19 + 56) = v27;
  swift_beginAccess();
  *(v19 + 64) = 0;
  sub_21D0D15E0(&v23, v19 + 72);

  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  v4[3] = v19;
  return v4;
}

Swift::Void __swiftcall TTREditSectionsListEditor.saveSectionNames(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  v28 = v1;
  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    goto LABEL_22;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_21DBF8E0C();
  if (v3)
  {
    v4 = 0;
    v26 = v2 & 0xFFFFFFFFFFFFFF8;
    v27 = v2 & 0xC000000000000001;
    v24 = &v32;
    v5 = (a1._rawValue + 40);
    v25 = v3;
    do
    {
      if (v27)
      {
        v14 = MEMORY[0x223D44740](v4, v2);
      }

      else
      {
        if (v4 >= *(v26 + 16))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v3 = sub_21DBFBD7C();
          goto LABEL_3;
        }

        v14 = *(v2 + 8 * v4 + 32);
      }

      v15 = v14;
      v16 = *(a1._rawValue + 2);
      if (v4 == v16)
      {

        break;
      }

      if (v4 >= v16)
      {
        goto LABEL_21;
      }

      v17 = *(v5 - 1);
      v18 = *v5;
      sub_21D1826C4(*(v28 + 24) + 24, aBlock);
      v19 = v33;
      if (v33)
      {
        v30 = v17;
        v20 = v2;
        v21 = v34;
        __swift_project_boxed_opaque_existential_1(aBlock, v33);
        v22 = *(v21 + 1);
        sub_21DBF8E0C();
        v23 = v22(v19, v21);
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        if (v23)
        {
          v6 = type metadata accessor for TTRBasicUndoContext();
          v19 = swift_allocObject();
          v19[2] = v23;
          v7 = &protocol witness table for TTRBasicUndoContext;
        }

        else
        {
          v6 = 0;
          v7 = 0;
          v19 = 0;
        }

        v2 = v20;
        v17 = v30;
      }

      else
      {
        sub_21DBF8E0C();
        sub_21D311700(aBlock);
        v6 = 0;
        v7 = 0;
      }

      ++v4;
      type metadata accessor for TTRListSectionEditor();
      v8 = swift_allocObject();
      *(v8 + 16) = v15;
      *(v8 + 24) = v19;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = v6;
      *(v8 + 56) = v7;
      *(v8 + 64) = 0;
      v9 = v15;
      v10._countAndFlagsBits = v17;
      v10._object = v18;
      TTRListSectionEditor.edit(displayName:)(v10);

      v11 = [v9 saveRequest];
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v12 = sub_21DBFB12C();
      v34 = sub_21DA9A390;
      v35 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v32 = sub_21D11E5E4;
      v33 = &block_descriptor_141;
      v13 = _Block_copy(aBlock);
      [v11 saveWithQueue:v12 completion:v13];
      _Block_release(v13);

      v5 += 2;
    }

    while (v25 != v4);
  }
}

void TTREditSectionsListEditor.saveHideEmptySectionsToggle(for:)(uint64_t a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  v4 = *(a1 + 56);
  swift_beginAccess();
  sub_21D0D32E4(v3 + 72, v12);
  v5 = v13;
  v6 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = [*(v3 + 16) objectID];
  (*(v6 + 6))(v4, v7, v5, v6);

  __swift_destroy_boxed_opaque_existential_0(v12);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  sub_21D182B38(sub_21D1CD9EC, v8);

  v9 = [*(v3 + 16) saveRequest];
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v10 = sub_21DBFB12C();
  v14 = sub_21DA98A70;
  v15 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_21D11E5E4;
  v13 = &block_descriptor_3_1;
  v11 = _Block_copy(v12);
  [v9 saveWithQueue:v10 completion:v11];
  _Block_release(v11);
}

void sub_21DA98A84(void *a1, const char *a2, const char *a3, ...)
{
  if (a1)
  {
    if (qword_27CE57070 != -1)
    {
      swift_once();
    }

    v5 = sub_21DBF84BC();
    __swift_project_value_buffer(v5, qword_27CE65A38);
    v6 = a1;
    oslog = sub_21DBF84AC();
    v7 = sub_21DBFAEBC();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v18 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_21DBFC74C();
      v12 = sub_21D0CDFB4(v10, v11, &v18);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_21D0C9000, oslog, v7, a3, v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223D46520](v9, -1, -1);
      MEMORY[0x223D46520](v8, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27CE57070 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE65A38);
    oslog = sub_21DBF84AC();
    v15 = sub_21DBFAE9C();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21D0C9000, oslog, v15, a2, v16, 2u);
      MEMORY[0x223D46520](v16, -1, -1);
    }
  }
}

uint64_t TTREditSectionsListEditor.fetchSections(_:)(uint64_t a1)
{
  v2 = sub_21DBF719C();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF6DBC();
  v20 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A70, &unk_21DC09E80);
  v19 = *(v8 - 8);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v18 - v10;
  v12 = [*(*(v1 + 24) + 16) saveRequest];
  v13 = [v12 store];

  swift_beginAccess();
  v14 = *(v1 + 16);
  v15 = v23;
  sub_21DBF6D0C();

  if (!v15)
  {
    v16 = sub_21DBF76DC();
    MEMORY[0x223D3F550](v16);
    (*(v20 + 8))(v7, v5);
    v1 = sub_21DBF718C();
    (*(v21 + 8))(v4, v22);
    (*(v19 + 8))(v11, v8);
  }

  return v1;
}

uint64_t TTREditSectionsListEditor.sectionForUserAction(with:)(void *a1)
{

  return sub_21DA99E7C(a1, &selRef_fetchListSectionsWithObjectIDs_error_, &qword_27CE584F8, 0x277D44698, sub_21D1AA2A4);
}

void *TTREditSectionsSmartListEditor.__allocating_init(list:undoManager:committer:userDefaults:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  v8[4] = MEMORY[0x277D84F90];
  v8[2] = a1;
  sub_21D0D32E4(a4, (v8 + 5));
  v9 = a1;
  v10 = [v9 store];
  v11 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v12 = type metadata accessor for TTRBasicUndoContext();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v20[3] = v12;
  v20[4] = &protocol witness table for TTRBasicUndoContext;
  v20[0] = v13;
  sub_21D1826C4(v20, v18);
  v14 = [v11 updateSmartList_];

  sub_21D311700(v20);
  type metadata accessor for TTRSmartListEditor();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = v18[1];
  *(v15 + 24) = v18[0];
  *(v15 + 40) = v16;
  *(v15 + 56) = v19;
  *(v15 + 64) = 0;
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  v8[3] = v15;
  return v8;
}

void *TTREditSectionsSmartListEditor.init(list:undoManager:committer:userDefaults:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  v4[2] = a1;
  v4[4] = MEMORY[0x277D84F90];
  sub_21D0D32E4(a4, (v4 + 5));
  v9 = a1;
  v10 = [v9 store];
  v11 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];

  v12 = type metadata accessor for TTRBasicUndoContext();
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v20[3] = v12;
  v20[4] = &protocol witness table for TTRBasicUndoContext;
  v20[0] = v13;
  sub_21D1826C4(v20, v18);
  v14 = [v11 updateSmartList_];

  sub_21D311700(v20);
  type metadata accessor for TTRSmartListEditor();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = v18[1];
  *(v15 + 24) = v18[0];
  *(v15 + 40) = v16;
  *(v15 + 56) = v19;
  *(v15 + 64) = 0;
  __swift_destroy_boxed_opaque_existential_0(a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  v4[3] = v15;
  return v4;
}

id _s15RemindersUICore25TTREditSectionsListEditorC12listObjectIDSo09REMObjectI0Cvg_0()
{
  swift_beginAccess();
  v1 = [*(v0 + 16) objectID];

  return v1;
}

uint64_t sub_21DA9947C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  __swift_project_boxed_opaque_existential_1((v2 + 40), v5);
  swift_beginAccess();
  v11 = [*(v2 + 16) objectID];
  v12 = a1;
  v7 = (*(v6 + 8))(&v11, v5, v6);
  sub_21D157478(v11, v12);
  v8 = sub_21DBF71BC();
  v9 = MEMORY[0x277D45468];
  if ((v7 & 1) == 0)
  {
    v9 = MEMORY[0x277D45470];
  }

  return (*(*(v8 - 8) + 104))(a2, *v9, v8);
}

void sub_21DA99594(uint64_t a1, SEL *a2)
{
  v4 = v2;
  v6 = [*(*(v4 + 24) + 16) saveRequest];
  v7 = [v6 store];

  v8 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v9 = [v8 *a2];
  swift_beginAccess();
  v10 = v9;
  MEMORY[0x223D42D80]();
  if (*((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21DBFA63C();
  }

  sub_21DBFA6CC();
  swift_endAccess();
}

Swift::Void __swiftcall TTREditSectionsSmartListEditor.saveSectionNames(_:)(Swift::OpaquePointer a1)
{
  swift_beginAccess();
  v28 = v1;
  v2 = *(v1 + 32);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_21DBF8E0C();
  if (v3)
  {
    v4 = 0;
    v26 = v2 & 0xFFFFFFFFFFFFFF8;
    v27 = v2 & 0xC000000000000001;
    v23 = &v31;
    v5 = (a1._rawValue + 40);
    v24 = v3;
    v25 = v2;
    do
    {
      if (v27)
      {
        v14 = MEMORY[0x223D44740](v4, v2);
      }

      else
      {
        if (v4 >= *(v26 + 16))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v3 = sub_21DBFBD7C();
          goto LABEL_3;
        }

        v14 = *(v2 + 8 * v4 + 32);
      }

      v15 = v14;
      v16 = *(a1._rawValue + 2);
      if (v4 == v16)
      {

        break;
      }

      if (v4 >= v16)
      {
        goto LABEL_20;
      }

      v17 = *(v5 - 1);
      v18 = *v5;
      sub_21D1826C4(*(v28 + 24) + 24, aBlock);
      v19 = v32;
      if (v32)
      {
        v20 = v33;
        __swift_project_boxed_opaque_existential_1(aBlock, v32);
        v21 = *(v20 + 1);
        sub_21DBF8E0C();
        v22 = v21(v19, v20);
        __swift_destroy_boxed_opaque_existential_0(aBlock);
        if (v22)
        {
          v6 = type metadata accessor for TTRBasicUndoContext();
          v19 = swift_allocObject();
          v19[2] = v22;
          v7 = &protocol witness table for TTRBasicUndoContext;
        }

        else
        {
          v6 = 0;
          v7 = 0;
          v19 = 0;
        }
      }

      else
      {
        sub_21DBF8E0C();
        sub_21D311700(aBlock);
        v6 = 0;
        v7 = 0;
      }

      ++v4;
      type metadata accessor for TTRSmartListSectionEditor();
      v8 = swift_allocObject();
      *(v8 + 64) = 0;
      *(v8 + 16) = v15;
      *(v8 + 24) = v19;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0;
      *(v8 + 48) = v6;
      *(v8 + 56) = v7;
      swift_beginAccess();
      *(v8 + 64) = 0;
      v9 = v15;
      v10._countAndFlagsBits = v17;
      v10._object = v18;
      TTRSmartListSectionEditor.edit(displayName:)(v10);

      v11 = [v9 saveRequest];
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v12 = sub_21DBFB12C();
      v33 = sub_21DA9A390;
      v34 = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v31 = sub_21D11E5E4;
      v32 = &block_descriptor_9_4;
      v13 = _Block_copy(aBlock);
      [v11 saveWithQueue:v12 completion:v13];
      _Block_release(v13);

      v5 += 2;
      v2 = v25;
    }

    while (v24 != v4);
  }
}