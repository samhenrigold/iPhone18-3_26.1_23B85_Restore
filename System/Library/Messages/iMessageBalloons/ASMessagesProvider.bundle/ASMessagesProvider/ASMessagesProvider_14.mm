id sub_197F24()
{
  v1 = sub_BD88(&qword_93FF90, qword_77ECE0);
  __chkstk_darwin(v1 - 8);
  v3 = &v31 - v2;
  v4 = type metadata accessor for TitleHeaderView(0);
  v32.receiver = v0;
  v32.super_class = v4;
  objc_msgSendSuper2(&v32, "prepareForReuse");
  v5 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction];
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction];
  v7 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction + 8];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_F704(v6, v7);
  v8 = type metadata accessor for Accessory(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessory;
  swift_beginAccess();
  sub_19CD50(v3, &v0[v9]);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView;
  if (!*&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView])
  {
    goto LABEL_6;
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    [v11 removeTarget:v0 action:"didTapWithAccessoryView:" forControlEvents:64];
  }

  v12 = *&v0[v10];
  if (v12)
  {
    [v12 removeFromSuperview];
    v13 = *&v0[v10];
  }

  else
  {
LABEL_6:
    v13 = 0;
  }

  *&v0[v10] = 0;

  v14 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork;
  v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView;
    v17 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView];

    if (v17)
    {
      [v17 removeFromSuperview];
      v18 = *&v0[v16];
    }

    else
    {
      v18 = 0;
    }

    *&v0[v16] = 0;
  }

  *&v0[v14] = 0;

  sub_193868(v15);

  v19 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork;
  v20 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork];
  if (v20)
  {
    v21 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView;
    v22 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView];

    if (v22)
    {
      [v22 removeFromSuperview];
      v23 = *&v0[v21];
    }

    else
    {
      v23 = 0;
    }

    *&v0[v21] = 0;
  }

  *&v0[v19] = 0;

  sub_1935C8(v20);

  v24 = &v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText];
  v26 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText];
  v25 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText + 8];
  if (v25)
  {
    v27 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel;
    v28 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel];

    if (v28)
    {
      [v28 removeFromSuperview];
      v29 = *&v0[v27];
    }

    else
    {
      v29 = 0;
    }

    *&v0[v27] = 0;
  }

  *v24 = 0;
  *(v24 + 1) = 0;

  sub_193028(v26, v25);

  return [*&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel] setText:0];
}

void sub_198304()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel);
  if (v1)
  {
    v2 = [v1 text];
    if (v2)
    {
      v3 = v2;
      v4 = sub_769240();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v30 = v4;
    v31 = v6;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v7 = [*(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_769240();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v32 = v9;
  v33 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel);
  if (v12)
  {
    v13 = [v12 text];
    if (v13)
    {
      v14 = v13;
      v15 = sub_769240();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v34 = v15;
    v35 = v17;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
LABEL_17:
  if (v18 <= 3)
  {
    v20 = 3;
  }

  else
  {
    v20 = v18;
  }

  v21 = v20 + 1;
  v22 = 16 * v18 + 40;
  while (1)
  {
    if (v18 == 3)
    {
      sub_BD88(&qword_941BA0, &qword_7811C0);
      swift_arrayDestroy();
      sub_BD88(&unk_947FF0, &unk_7801F0);
      sub_5FBA8();
      sub_7691A0();

      return;
    }

    if (v21 == ++v18)
    {
      break;
    }

    v23 = v22 + 16;
    v24 = *&v29[v22];
    v22 += 16;
    if (v24)
    {
      v25 = *&v29[v23 - 24];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_7B5CC(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_7B5CC((v26 > 1), v27 + 1, 1, v19);
      }

      *(v19 + 2) = v27 + 1;
      v28 = &v19[2 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_198770()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TitleHeaderView(0);
  v1 = objc_msgSendSuper2(&v7, "_accessibilitySupplementaryFooterViews");
  if (v1)
  {
    v2 = v1;
    v3 = sub_769460();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView];
  if (v4)
  {
    v5 = v4;

    sub_BD88(&qword_941C10, &qword_781230);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_77B6D0;
    *(v3 + 56) = sub_BE70(0, &qword_93E550, UIView_ptr);
    *(v3 + 32) = v5;
  }

  return v3;
}

id sub_1988CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_198A78(uint64_t a1)
{
  type metadata accessor for TitleHeaderView.Style(319);
  if (v1 <= 0x3F)
  {
    sub_19909C(319, &qword_947E10, type metadata accessor for Accessory);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_198BF0(uint64_t a1, uint64_t a2, int *a3, __n128 a4)
{
  v7 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_10:

    return v10(v11, a2, v9);
  }

  v12 = sub_BD88(&qword_9439E0, &unk_787AB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v13 = *(v12 - 8);
    v14 = a3[6];
LABEL_9:
    v10 = *(v13 + 48);
    v11 = a1 + v14;
    goto LABEL_10;
  }

  v15 = sub_75CFD0();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v13 = *(v15 - 8);
    v14 = a3[10];
    goto LABEL_9;
  }

  v16 = sub_75CFE0();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v13 = *(v16 - 8);
    v14 = a3[11];
    goto LABEL_9;
  }

  v18 = *(a1 + a3[13]);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_198DCC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_BD88(&qword_9439E0, &unk_787AB0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = sub_75CFD0();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[10];
      }

      else
      {
        result = sub_75CFE0();
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[13]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[11];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_198F70(uint64_t a1)
{
  type metadata accessor for TitleHeaderView.TextConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_19909C(319, &qword_947E88, type metadata accessor for TitleHeaderView.TextConfiguration);
    if (v2 <= 0x3F)
    {
      sub_75CFD0();
      if (v3 <= 0x3F)
      {
        sub_75CFE0();
        if (v4 <= 0x3F)
        {
          sub_1990F0(319);
          if (v5 <= 0x3F)
          {
            sub_BE70(319, &qword_93E540, UIColor_ptr);
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

void sub_19909C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_76A480();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1990F0(uint64_t a1)
{
  if (!qword_947E90[0])
  {
    sub_BE70(255, &qword_93E540, UIColor_ptr);
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, qword_947E90);
    }
  }
}

uint64_t sub_19917C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_7666D0();
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
      v13 = sub_766CA0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1992B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_7666D0();
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
      v13 = sub_766CA0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1993D8(uint64_t a1)
{
  sub_BE70(319, &qword_93E540, UIColor_ptr);
  if (v1 <= 0x3F)
  {
    sub_1994D4();
    if (v2 <= 0x3F)
    {
      sub_7666D0();
      if (v3 <= 0x3F)
      {
        sub_766CA0();
        if (v4 <= 0x3F)
        {
          sub_199524();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1994D4()
{
  if (!qword_94E860)
  {
    v0 = sub_76A480();
    if (!v1)
    {
      atomic_store(v0, &qword_94E860);
    }
  }
}

unint64_t sub_199524()
{
  result = qword_943C60;
  if (!qword_943C60)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_943C60);
  }

  return result;
}

unint64_t sub_19958C()
{
  result = qword_947FA0;
  if (!qword_947FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_947FA0);
  }

  return result;
}

id sub_1995E0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22)
{
  v330 = a6;
  v331 = a8;
  v290 = a7;
  v327 = a1;
  v328 = a5;
  v326 = a4;
  v299 = a3;
  v336 = a2;
  v323 = a9;
  v324 = a10;
  v342 = a20;
  v24 = sub_766690();
  v297 = *(v24 - 8);
  v298 = v24;
  __chkstk_darwin(v24);
  v296 = v289 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_7664A0();
  v293 = *(v295 - 8);
  __chkstk_darwin(v295);
  v292 = v289 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = sub_766CA0();
  v352 = *(v337 - 8);
  __chkstk_darwin(v337);
  v294 = v289 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_75CFF0();
  v318 = *(v320 - 8);
  __chkstk_darwin(v320);
  v319 = v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_75CFE0();
  v315 = *(v29 - 8);
  v316 = v29;
  __chkstk_darwin(v29);
  v317 = v289 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_75CFD0();
  v312 = *(v31 - 8);
  v313 = v31;
  __chkstk_darwin(v31);
  v314 = v289 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_75D020();
  v325 = *(v322 - 8);
  __chkstk_darwin(v322);
  v321 = v289 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_75D010();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v304 = v289 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v349 = v289 - v38;
  __chkstk_darwin(v39);
  v348 = v289 - v40;
  __chkstk_darwin(v41);
  v340 = v289 - v42;
  v43 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v43 - 8);
  v302 = v289 - v44;
  v45 = sub_762D10();
  v333 = *(v45 - 8);
  v334 = v45;
  __chkstk_darwin(v45);
  v332 = v289 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_756CB0();
  v48 = *(v47 - 8);
  __chkstk_darwin(v47);
  v50 = v289 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v301 = *(v51 - 1);
  __chkstk_darwin(v51);
  v341 = v289 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v305 = v289 - v54;
  __chkstk_darwin(v55);
  v57 = (v289 - v56);
  v58 = sub_BD88(&qword_947FC0, &unk_789570);
  v59 = *(v58 - 8);
  v310 = v58;
  v311 = v59;
  __chkstk_darwin(v58);
  v291 = v289 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v345 = v289 - v62;
  __chkstk_darwin(v63);
  v344 = v289 - v64;
  __chkstk_darwin(v65);
  v303 = v289 - v66;
  __chkstk_darwin(v67);
  v347 = v289 - v68;
  __chkstk_darwin(v69);
  v346 = v289 - v70;
  __chkstk_darwin(v71);
  v339 = (v289 - v72);
  __chkstk_darwin(v73);
  v300 = v289 - v74;
  *&v76 = __chkstk_darwin(v75).n128_u64[0];
  v78 = (v289 - v77);
  v329 = a22;
  v79 = [a22 traitCollection];
  v350 = v34;
  v351 = v35;
  v338 = v78;
  v343 = v51;
  v335 = v79;
  v307 = v47;
  v308 = v50;
  v309 = v48;
  if (!v336)
  {
    v93 = *(v35 + 56);
    v93(v78, 1, 1, v34);
    goto LABEL_23;
  }

  v80 = v342;
  sub_19CE28(v342, v57, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  v81 = sub_769E10();
  *&v388 = v327;
  *(&v388 + 1) = v336;

  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v83 = v82;
  (*(v48 + 8))(v50, v47);

  v84 = 0;
  if ((v83 & 1) == 0)
  {
    [v81 lineHeight];
    v86 = ceil(v85 * 1.3);
    if ((*&v86 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v86 > -9.22337204e18)
    {
      if (v86 >= 9.22337204e18)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v84 = v86;
      goto LABEL_7;
    }

    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

LABEL_7:
  v306 = v57;
  if (!v299)
  {
    goto LABEL_15;
  }

  v289[1] = v84;

  sub_7651B0();
  v87 = v337;
  if (v88 && (v89 = [objc_opt_self() configurationWithFont:v81], v90 = sub_769210(), , v91 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v90, v89), v90, v89, v51 = v343, v91))
  {
    [v91 size];
    sub_7670D0();
    swift_allocObject();
    v92 = sub_7670B0();
  }

  else
  {
    v94 = v51[6];
    v95 = sub_7666D0();
    v96 = v292;
    (*(*(v95 - 8) + 16))(v292, v80 + v94, v95);
    v97 = v293;
    v98 = v295;
    (*(v293 + 104))(v96, enum case for FontSource.useCase(_:), v295);
    *(&v389 + 1) = v98;
    v390 = &protocol witness table for FontSource;
    v99 = sub_B1B4(&v388);
    (*(v97 + 16))(v99, v96, v98);

    v100 = v294;
    sub_766CB0();
    (*(v97 + 8))(v96, v98);
    sub_766C90();
    sub_765260();
    v101 = v296;
    sub_7666A0();
    sub_766610();

    (*(v297 + 8))(v101, v298);
    (*(v352 + 8))(v100, v87);
    sub_7670D0();
    swift_allocObject();
    v92 = sub_7670B0();
  }

  if (v92)
  {
    *(&v389 + 1) = sub_7670D0();
    v390 = &protocol witness table for LayoutViewPlaceholder;
    v299 = v92;
    *&v388 = v92;
  }

  else
  {
LABEL_15:
    v299 = 0;
    v390 = 0;
    v388 = 0u;
    v389 = 0u;
  }

  v387 = 0;
  v385 = 0u;
  v386 = 0u;
  v384 = 0;
  v382 = 0u;
  v383 = 0u;
  v102 = sub_7653B0();
  v380 = v102;
  v381 = sub_19CCA8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v103 = sub_B1B4(v379);
  (*(*(v102 - 8) + 104))(v103, enum case for Feature.measurement_with_labelplaceholder(_:), v102);
  v104 = v81;

  v57 = v104;
  sub_765C30();
  sub_BEB8(v379);
  v105 = v332;
  sub_762D00();
  sub_762CE0();
  (*(v333 + 8))(v105, v334);
  sub_1ED18(&v388, v378, &unk_943B10, &qword_77E080);
  v106 = v380;
  v107 = v381;
  v108 = sub_B170(v379, v380);
  v376 = v106;
  v377 = *(v107 + 8);
  v109 = sub_B1B4(v375);
  (*(*(v106 - 8) + 16))(v109, v108, v106);
  v110 = v343;
  v111 = v306;
  v112 = *(v306 + v343[8]);
  v373 = &type metadata for Float;
  v374 = &protocol witness table for Float;
  v372 = v112;
  v113 = v343[9];
  v114 = v337;
  v370 = v337;
  v371 = &protocol witness table for StaticDimension;
  v115 = sub_B1B4(v369);
  v116 = *(v352 + 16);
  v116(v115, v111 + v113, v114);
  v117 = v110[10];
  v367 = v114;
  v368 = &protocol witness table for StaticDimension;
  v118 = sub_B1B4(v366);
  v116(v118, v111 + v117, v114);
  sub_1ED18(&v385, &v360, &qword_9417D0, &unk_780EA0);
  v119 = *(&v361 + 1);
  if (*(&v361 + 1))
  {
    v120 = v362;
    v121 = sub_B170(&v360, *(&v361 + 1));
    *(&v364 + 1) = v119;
    v365 = *(v120 + 8);
    v122 = sub_B1B4(&v363);
    (*(*(v119 - 8) + 16))(v122, v121, v119);
    sub_BEB8(&v360);
  }

  else
  {
    sub_10A2C(&v360, &qword_9417D0, &unk_780EA0);
    v363 = 0u;
    v364 = 0u;
    v365 = 0;
  }

  v123 = v300;
  sub_1ED18(&v382, v357, &qword_9417D0, &unk_780EA0);
  v124 = v358;
  v47 = v307;
  if (v358)
  {
    v125 = v359;
    v126 = sub_B170(v357, v358);
    *(&v361 + 1) = v124;
    v362 = *(v125 + 8);
    v127 = sub_B1B4(&v360);
    (*(*(v124 - 8) + 16))(v127, v126, v124);
    sub_BEB8(v357);
  }

  else
  {
    sub_10A2C(v357, &qword_9417D0, &unk_780EA0);
    v360 = 0u;
    v361 = 0u;
    v362 = 0;
  }

  v128 = v343;
  v129 = v306;
  sub_134D8(v306 + v343[12], v357);
  sub_134D8(v129 + v128[13], v356);
  v355 = &protocol witness table for Double;
  v354 = &type metadata for Double;
  v353 = 0x4020000000000000;
  sub_75D000();

  sub_10A2C(&v382, &qword_9417D0, &unk_780EA0);
  v51 = v128;
  sub_10A2C(&v385, &qword_9417D0, &unk_780EA0);
  sub_19CCF0(v129, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_BEB8(v379);

  sub_10A2C(&v388, &unk_943B10, &qword_77E080);
  v34 = v350;
  v93 = *(v351 + 56);
  v93(v123, 0, 1, v350);
  sub_109C4(v123, v338, &qword_947FC0, &unk_789570);
LABEL_23:
  v130 = v337;
  v131 = v328;
  if (!v331)
  {
LABEL_26:
    v93(v339, 1, 1, v34);
    v390 = 0;
    v388 = 0u;
    v389 = 0u;
    v385 = 0u;
    v386 = 0u;
    v387 = 0;
    goto LABEL_41;
  }

  v132 = v47;
  v57 = type metadata accessor for TitleHeaderView.Style(0);
  v133 = v302;
  sub_1ED18(v342 + v57[6], v302, &qword_9439E0, &unk_787AB0);
  if ((*(v301 + 48))(v133, 1, v51) == 1)
  {
    sub_10A2C(v133, &qword_9439E0, &unk_787AB0);
    v47 = v132;
    goto LABEL_26;
  }

  sub_19CDC0(v133, v305, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  v336 = sub_769E10();
  *&v388 = v290;
  *(&v388 + 1) = v331;

  v134 = v308;
  sub_756C90();
  sub_12EC40();
  sub_76A4C0();
  v136 = v135;
  (*(v309 + 8))(v134, v132);

  if (v136)
  {
LABEL_31:
    if (*(v342 + v57[9]) == 2)
    {
      v306 = a18;
      v327 = a17;
      v140 = sub_7653B0();
      *(&v389 + 1) = v140;
      v302 = sub_19CCA8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v390 = v302;
      v141 = sub_B1B4(&v388);
      LODWORD(v301) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v142 = *(*(v140 - 8) + 104);
      v142(v141);
      v143 = v336;

      v144 = v143;
      sub_765C30();
      sub_BEB8(&v388);
      v145 = v332;
      sub_762D00();
      sub_762CE0();
      v336 = v93;
      v146 = v334;
      v147 = *(v333 + 8);
      v147(v145, v334);
      *(&v386 + 1) = v140;
      v387 = v302;
      v148 = sub_B1B4(&v385);
      (v142)(v148, v301, v140);
      v130 = v337;

      v149 = v144;
      v57 = sub_765C30();
      sub_BEB8(&v385);
      sub_762D00();
      sub_762CE0();

      v147(v145, v146);
      v131 = v328;
      sub_19CCF0(v305, type metadata accessor for TitleHeaderView.TextConfiguration);

      (v336)(v339, 1, 1, v350);
      v51 = v343;
    }

    else
    {
      v390 = 0;
      v388 = 0u;
      v389 = 0u;
      v387 = 0;
      v385 = 0u;
      v386 = 0u;
      v384 = 0;
      v382 = 0u;
      v383 = 0u;
      v150 = sub_7653B0();
      v380 = v150;
      v381 = sub_19CCA8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v151 = sub_B1B4(v379);
      (*(*(v150 - 8) + 104))(v151, enum case for Feature.measurement_with_labelplaceholder(_:), v150);

      v152 = v336;
      sub_765C30();
      sub_BEB8(v379);
      v153 = v332;
      v336 = v152;
      sub_762D00();
      sub_762CE0();
      (*(v333 + 8))(v153, v334);
      sub_1ED18(&v388, v378, &unk_943B10, &qword_77E080);
      v154 = v380;
      v155 = v381;
      v156 = sub_B170(v379, v380);
      v376 = v154;
      v377 = *(v155 + 8);
      v157 = sub_B1B4(v375);
      (*(*(v154 - 8) + 16))(v157, v156, v154);
      v158 = v343;
      v159 = v305;
      v160 = *(v305 + v343[8]);
      v373 = &type metadata for Float;
      v374 = &protocol witness table for Float;
      v372 = v160;
      v161 = v343[9];
      v370 = v130;
      v371 = &protocol witness table for StaticDimension;
      v162 = sub_B1B4(v369);
      v163 = v130;
      v164 = *(v352 + 16);
      v164(v162, v159 + v161, v163);
      v165 = v158[10];
      v367 = v163;
      v368 = &protocol witness table for StaticDimension;
      v166 = sub_B1B4(v366);
      v164(v166, v159 + v165, v163);
      sub_1ED18(&v385, &v360, &qword_9417D0, &unk_780EA0);
      v167 = *(&v361 + 1);
      if (*(&v361 + 1))
      {
        v168 = v362;
        v169 = sub_B170(&v360, *(&v361 + 1));
        *(&v364 + 1) = v167;
        v365 = *(v168 + 8);
        v170 = sub_B1B4(&v363);
        (*(*(v167 - 8) + 16))(v170, v169, v167);
        sub_BEB8(&v360);
      }

      else
      {
        sub_10A2C(&v360, &qword_9417D0, &unk_780EA0);
        v363 = 0u;
        v364 = 0u;
        v365 = 0;
      }

      v171 = v351;
      sub_1ED18(&v382, v357, &qword_9417D0, &unk_780EA0);
      v172 = v358;
      if (v358)
      {
        v173 = v359;
        v174 = sub_B170(v357, v358);
        *(&v361 + 1) = v172;
        v362 = *(v173 + 8);
        v175 = sub_B1B4(&v360);
        (*(*(v172 - 8) + 16))(v175, v174, v172);
        sub_BEB8(v357);
      }

      else
      {
        sub_10A2C(v357, &qword_9417D0, &unk_780EA0);
        v360 = 0u;
        v361 = 0u;
        v362 = 0;
      }

      v51 = v343;
      v176 = v305;
      sub_134D8(v305 + v343[12], v357);
      sub_134D8(v176 + v51[13], v356);
      v355 = &protocol witness table for Double;
      v354 = &type metadata for Double;
      v353 = 0x4020000000000000;
      v177 = v339;
      sub_75D000();
      sub_10A2C(&v382, &qword_9417D0, &unk_780EA0);
      sub_10A2C(&v385, &qword_9417D0, &unk_780EA0);
      sub_10A2C(&v388, &unk_943B10, &qword_77E080);
      sub_19CCF0(v176, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_BEB8(v379);

      v178 = *(v171 + 56);
      v57 = (v171 + 56);
      v178(v177, 0, 1, v350);
      v390 = 0;
      v388 = 0u;
      v389 = 0u;
      v385 = 0u;
      v386 = 0u;
      v387 = 0;
      v130 = v337;
      v131 = v328;
    }

    v47 = v307;
LABEL_41:
    v336 = type metadata accessor for TitleHeaderView.Style(0);
    v328 = (v342 + v336[5]);
    sub_19CE28(v328, v341, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_BE70(0, &qword_93F900, UIFont_ptr);
    v331 = sub_769E10();
    if (!v131)
    {
      goto LABEL_49;
    }

    v179 = v130;
    v48 = v326;
    *&v382 = v326;
    *(&v382 + 1) = v131;

    v50 = v308;
    sub_756C90();
    sub_12EC40();
    sub_76A4C0();
    v181 = v180;
    (*(v309 + 8))(v50, v47);

    if (v181)
    {
LABEL_48:
      v130 = v179;
      if (!v330)
      {
        goto LABEL_56;
      }

LABEL_49:
      v327 = a19;

      sub_7651B0();
      if (v184 && (v185 = [objc_opt_self() configurationWithFont:v331], v186 = sub_769210(), , v187 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v186, v185), v186, v51 = v343, v185, v187))
      {
        [v187 size];
        sub_7670D0();
        swift_allocObject();
        v188 = sub_7670B0();
      }

      else
      {
        v189 = v130;
        v190 = v328;
        v191 = v51[6];
        v192 = sub_7666D0();
        v193 = v190 + v191;
        v130 = v189;
        v194 = v292;
        (*(*(v192 - 8) + 16))(v292, v193, v192);
        v195 = v293;
        v196 = v295;
        (*(v293 + 104))(v194, enum case for FontSource.useCase(_:), v295);
        *(&v383 + 1) = v196;
        v384 = &protocol witness table for FontSource;
        v197 = sub_B1B4(&v382);
        (*(v195 + 16))(v197, v194, v196);

        v198 = v294;
        sub_766CB0();
        (*(v195 + 8))(v194, v196);
        sub_766C90();
        sub_765260();
        v199 = v296;
        sub_7666A0();
        sub_766610();

        (*(v297 + 8))(v199, v298);
        (*(v352 + 8))(v198, v130);
        sub_7670D0();
        swift_allocObject();
        v188 = sub_7670B0();
      }

      if (v188)
      {
        v200 = sub_7670D0();
        v384 = &protocol witness table for LayoutViewPlaceholder;
        *(&v383 + 1) = v200;
        v330 = v188;
        *&v382 = v188;
      }

      else
      {
LABEL_56:
        v330 = 0;
        v384 = 0;
        v382 = 0u;
        v383 = 0u;
      }

      v201 = sub_7653B0();
      v380 = v201;
      v381 = sub_19CCA8(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v202 = sub_B1B4(v379);
      (*(*(v201 - 8) + 104))(v202, enum case for Feature.measurement_with_labelplaceholder(_:), v201);

      v203 = v331;
      sub_765C30();
      sub_BEB8(v379);
      v204 = v332;
      v331 = v203;
      sub_762D00();
      sub_762CE0();
      (*(v333 + 8))(v204, v334);
      sub_1ED18(&v382, v378, &unk_943B10, &qword_77E080);
      v205 = v380;
      v206 = v381;
      v207 = sub_B170(v379, v380);
      v376 = v205;
      v377 = *(v206 + 8);
      v208 = sub_B1B4(v375);
      (*(*(v205 - 8) + 16))(v208, v207, v205);
      v209 = v343;
      v210 = v341;
      v211 = *(v341 + v343[8]);
      v373 = &type metadata for Float;
      v374 = &protocol witness table for Float;
      v372 = v211;
      v212 = v343[9];
      v370 = v130;
      v371 = &protocol witness table for StaticDimension;
      v213 = sub_B1B4(v369);
      v214 = *(v352 + 16);
      v214(v213, v210 + v212, v130);
      v215 = v209[10];
      v367 = v130;
      v368 = &protocol witness table for StaticDimension;
      v216 = sub_B1B4(v366);
      v214(v216, v210 + v215, v130);
      sub_1ED18(&v388, &v360, &qword_9417D0, &unk_780EA0);
      v217 = *(&v361 + 1);
      if (*(&v361 + 1))
      {
        v218 = v362;
        v219 = sub_B170(&v360, *(&v361 + 1));
        *(&v364 + 1) = v217;
        v365 = *(v218 + 8);
        v220 = sub_B1B4(&v363);
        (*(*(v217 - 8) + 16))(v220, v219, v217);
        sub_BEB8(&v360);
      }

      else
      {
        sub_10A2C(&v360, &qword_9417D0, &unk_780EA0);
        v363 = 0u;
        v364 = 0u;
        v365 = 0;
      }

      v221 = v344;
      v222 = v342;
      sub_1ED18(&v385, v357, &qword_9417D0, &unk_780EA0);
      v223 = v358;
      if (v358)
      {
        v224 = v359;
        v225 = sub_B170(v357, v358);
        *(&v361 + 1) = v223;
        v362 = *(v224 + 8);
        v226 = sub_B1B4(&v360);
        (*(*(v223 - 8) + 16))(v226, v225, v223);
        sub_BEB8(v357);
      }

      else
      {
        sub_10A2C(v357, &qword_9417D0, &unk_780EA0);
        v360 = 0u;
        v361 = 0u;
        v362 = 0;
      }

      v227 = v345;
      v228 = v343;
      v229 = v341;
      sub_134D8(v341 + v343[12], v357);
      sub_134D8(v229 + v228[13], v356);
      v355 = &protocol witness table for Double;
      v354 = &type metadata for Double;
      v353 = 0x4020000000000000;
      sub_75D000();
      sub_BEB8(v379);
      sub_10A2C(&v382, &unk_943B10, &qword_77E080);
      v230 = *(v222 + v336[9]);
      sub_BD88(&qword_947FC8, qword_7A9250);
      v352 = *(v311 + 72);
      v231 = (*(v311 + 80) + 32) & ~*(v311 + 80);
      if (v230)
      {
        if (v230 != 1)
        {
          v259 = v352;
          v337 = swift_allocObject();
          v260 = v337 + v231;
          sub_1ED18(v338, v337 + v231, &qword_947FC0, &unk_789570);
          v261 = v350;
          v262 = v351;
          (*(v351 + 16))(v260 + v259, v340, v350);
          (*(v262 + 56))(v260 + v259, 0, 1, v261);
          v263 = v303;
          sub_1ED18(v260, v303, &qword_947FC0, &unk_789570);
          v264 = v291;
          sub_109C4(v263, v291, &qword_947FC0, &unk_789570);
          v265 = *(v262 + 48);
          v266 = (v262 + 32);
          v267 = v265(v264, 1, v261);
          v349 = (v262 + 32);
          if (v267 == 1)
          {
            sub_10A2C(v264, &qword_947FC0, &unk_789570);
            v268 = _swiftEmptyArrayStorage;
          }

          else
          {
            v269 = *v266;
            (*v266)(v304, v264, v261);
            v268 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v268 = sub_7B968(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v271 = *(v268 + 2);
            v270 = *(v268 + 3);
            if (v271 >= v270 >> 1)
            {
              v268 = sub_7B968((v270 > 1), v271 + 1, 1, v268);
            }

            *(v268 + 2) = v271 + 1;
            v272 = v268 + ((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v271;
            v261 = v350;
            v269(v272, v304, v350);
            v264 = v291;
          }

          v273 = v303;
          sub_1ED18(v260 + v352, v303, &qword_947FC0, &unk_789570);
          sub_109C4(v273, v264, &qword_947FC0, &unk_789570);
          if (v265(v264, 1, v261) == 1)
          {
            sub_10A2C(v264, &qword_947FC0, &unk_789570);
            v258 = v342;
            v57 = v338;
          }

          else
          {
            v274 = v261;
            v275 = *v349;
            (*v349)(v304, v264, v274);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v258 = v342;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v268 = sub_7B968(0, *(v268 + 2) + 1, 1, v268);
            }

            v57 = v338;
            v278 = *(v268 + 2);
            v277 = *(v268 + 3);
            if (v278 >= v277 >> 1)
            {
              v268 = sub_7B968((v277 > 1), v278 + 1, 1, v268);
            }

            *(v268 + 2) = v278 + 1;
            v275(v268 + ((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v278, v304, v350);
          }

          swift_setDeallocating();
          swift_arrayDestroy();
LABEL_100:
          swift_deallocClassInstance();
          v47 = v321;
          if (a11 == 0.0 && a12 == 0.0)
          {
            v279 = 0;
            v280 = 0;
            v281 = 0;
            *&v383 = 0;
            *(&v382 + 1) = 0;
          }

          else
          {
            v280 = sub_7670D0();
            swift_allocObject();
            v279 = sub_7670B0();
            v281 = &protocol witness table for LayoutViewPlaceholder;
          }

          *&v382 = v279;
          *(&v383 + 1) = v280;
          v384 = v281;
          sub_1ED18(&v382, v379, &unk_943B10, &qword_77E080);
          v282 = v336;
          v283 = *(v258 + v336[14]);
          v378[3] = &type metadata for CGFloat;
          v378[4] = &protocol witness table for CGFloat;
          v378[0] = v283;
          (*(v312 + 16))(v314, v258 + v336[10], v313);
          (*(v315 + 16))(v317, v258 + v282[11], v316);
          (*(v318 + 104))(v319, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v320);
          sub_75CFA0();
          sub_769DA0();
          sub_19CCA8(&unk_947FD0, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
          v48 = v322;
          sub_7665A0();
          v379[0] = v284;
          v379[1] = v285;
          sub_769DB0();
          if (JUScreenClassGetMain() != 1)
          {

            (*(v325 + 8))(v47, v48);
            (*(v351 + 8))(v340, v350);
            sub_19CCF0(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10A2C(&v385, &qword_9417D0, &unk_780EA0);
            sub_10A2C(&v388, &qword_9417D0, &unk_780EA0);
            sub_10A2C(v339, &qword_947FC0, &unk_789570);
            sub_10A2C(v57, &qword_947FC0, &unk_789570);
            return sub_10A2C(&v382, &unk_943B10, &qword_77E080);
          }

          v286 = v350;
          v51 = v351;
          v50 = v335;
          if (qword_93DE20 != -1)
          {
            swift_once();
          }

          v287 = sub_BE38(v343, qword_9A0178);
          if (sub_19C62C(v328, v287))
          {

            (*(v325 + 8))(v47, v48);
            (*(v51 + 1))(v340, v286);
            sub_19CCF0(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10A2C(&v385, &qword_9417D0, &unk_780EA0);
            sub_10A2C(&v388, &qword_9417D0, &unk_780EA0);
            sub_10A2C(v339, &qword_947FC0, &unk_789570);
            sub_10A2C(v57, &qword_947FC0, &unk_789570);
            return sub_10A2C(&v382, &unk_943B10, &qword_77E080);
          }

          if (qword_93DE28 == -1)
          {
LABEL_111:
            v288 = sub_BE38(v343, qword_9A0190);
            sub_19C62C(v328, v288);

            (*(v325 + 8))(v47, v48);
            (*(v51 + 1))(v340, v350);
            sub_19CCF0(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10A2C(&v385, &qword_9417D0, &unk_780EA0);
            sub_10A2C(&v388, &qword_9417D0, &unk_780EA0);
            sub_10A2C(v339, &qword_947FC0, &unk_789570);
            sub_10A2C(v57, &qword_947FC0, &unk_789570);
            return sub_10A2C(&v382, &unk_943B10, &qword_77E080);
          }

LABEL_119:
          swift_once();
          goto LABEL_111;
        }

        v232 = v352;
        v337 = swift_allocObject();
        v233 = v337 + v231;
        sub_1ED18(v338, v337 + v231, &qword_947FC0, &unk_789570);
        v235 = v350;
        v234 = v351;
        (*(v351 + 16))(v233 + v232, v340, v350);
        v236 = *(v234 + 56);
        v234 += 56;
        v236(v233 + v232, 0, 1, v235);
        sub_1ED18(v339, v233 + 2 * v232, &qword_947FC0, &unk_789570);
        v237 = (v234 - 8);
        v348 = (v234 - 24);
        v238 = v235;
        v239 = _swiftEmptyArrayStorage;
        v240 = 3;
        v346 = v233;
        do
        {
          v241 = v347;
          sub_1ED18(v233, v347, &qword_947FC0, &unk_789570);
          sub_109C4(v241, v227, &qword_947FC0, &unk_789570);
          if ((*v237)(v227, 1, v238) == 1)
          {
            sub_10A2C(v227, &qword_947FC0, &unk_789570);
          }

          else
          {
            v242 = *v348;
            (*v348)(v349, v227, v238);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v239 = sub_7B968(0, *(v239 + 2) + 1, 1, v239);
            }

            v244 = *(v239 + 2);
            v243 = *(v239 + 3);
            if (v244 >= v243 >> 1)
            {
              v239 = sub_7B968((v243 > 1), v244 + 1, 1, v239);
            }

            *(v239 + 2) = v244 + 1;
            v238 = v350;
            v242(v239 + ((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v244, v349, v350);
            v227 = v345;
          }

          v233 += v352;
          --v240;
        }

        while (v240);
      }

      else
      {
        v245 = v352;
        v246 = 2 * v352;
        v337 = swift_allocObject();
        v247 = v351;
        v248 = v337 + v231;
        sub_1ED18(v338, v337 + v231, &qword_947FC0, &unk_789570);
        sub_1ED18(v339, v248 + v245, &qword_947FC0, &unk_789570);
        v249 = v350;
        (*(v247 + 16))(v248 + v246, v340, v350);
        (*(v247 + 56))(v248 + v246, 0, 1, v249);
        v250 = (v247 + 48);
        v349 = (v247 + 32);
        v251 = v249;
        v252 = _swiftEmptyArrayStorage;
        v253 = 3;
        v347 = v248;
        do
        {
          v254 = v346;
          sub_1ED18(v248, v346, &qword_947FC0, &unk_789570);
          sub_109C4(v254, v221, &qword_947FC0, &unk_789570);
          if ((*v250)(v221, 1, v251) == 1)
          {
            sub_10A2C(v221, &qword_947FC0, &unk_789570);
          }

          else
          {
            v255 = *v349;
            (*v349)(v348, v221, v251);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v252 = sub_7B968(0, *(v252 + 2) + 1, 1, v252);
            }

            v257 = *(v252 + 2);
            v256 = *(v252 + 3);
            if (v257 >= v256 >> 1)
            {
              v252 = sub_7B968((v256 > 1), v257 + 1, 1, v252);
            }

            *(v252 + 2) = v257 + 1;
            v251 = v350;
            v255(v252 + ((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v257, v348, v350);
            v221 = v344;
          }

          v248 += v352;
          --v253;
        }

        while (v253);
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      v258 = v342;
      v57 = v338;
      goto LABEL_100;
    }

    [v331 lineHeight];
    v183 = ceil(v182 * 1.3);
    if ((*&v183 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v183 > -9.22337204e18)
      {
        if (v183 < 9.22337204e18)
        {
          goto LABEL_48;
        }

LABEL_118:
        __break(1u);
        goto LABEL_119;
      }

LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    goto LABEL_115;
  }

  result = [v336 lineHeight];
  v139 = ceil(v138 * 1.3);
  if ((*&v139 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_121;
  }

  if (v139 <= -9.22337204e18)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v139 < 9.22337204e18)
  {
    goto LABEL_31;
  }

LABEL_122:
  __break(1u);
  return result;
}

BOOL sub_19C62C(void *a1, void *a2)
{
  sub_BE70(0, &qword_94AB00, NSObject_ptr);
  if ((sub_76A1C0() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || (a1[1] != a2[1] || v4 != v5) && (sub_76A950() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  if (sub_7666C0() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]) && (sub_766C60() & 1) != 0 && (sub_766C60())
  {
    return *(a1 + v6[11]) == *(a2 + v6[11]);
  }

  return 0;
}

BOOL sub_19C74C(void *a1, void *a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_BD88(&qword_9439E0, &unk_787AB0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v30 - v9);
  v11 = sub_BD88(&qword_947FB0, &qword_789568);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_BE70(0, &qword_94AB00, NSObject_ptr);
  if ((sub_76A1C0() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[2];
  v15 = a2[2];
  if (v14)
  {
    if (!v15 || (a1[1] != a2[1] || v14 != v15) && (sub_76A950() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((sub_7666C0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  if (*(a1 + v4[8]) != *(a2 + v4[8]))
  {
    return 0;
  }

  if ((sub_766C60() & 1) == 0)
  {
    return 0;
  }

  if ((sub_766C60() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v16 = type metadata accessor for TitleHeaderView.Style(0);
  if (!sub_19C62C((a1 + *(v16 + 20)), (a2 + *(v16 + 20))))
  {
    return 0;
  }

  v30 = v16;
  v17 = *(v16 + 24);
  v18 = *(v11 + 48);
  sub_1ED18(a1 + v17, v13, &qword_9439E0, &unk_787AB0);
  v31 = v18;
  sub_1ED18(a2 + v17, &v13[v18], &qword_9439E0, &unk_787AB0);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_1ED18(v13, v10, &qword_9439E0, &unk_787AB0);
    v20 = v31;
    if (v19(&v13[v31], 1, v4) != 1)
    {
      sub_19CDC0(&v13[v20], v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      v21 = sub_19C62C(v10, v7);
      sub_19CCF0(v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_19CCF0(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10A2C(v13, &qword_9439E0, &unk_787AB0);
      if (!v21)
      {
        return 0;
      }

      goto LABEL_23;
    }

    sub_19CCF0(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
LABEL_21:
    sub_10A2C(v13, &qword_947FB0, &qword_789568);
    return 0;
  }

  if (v19(&v13[v31], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_10A2C(v13, &qword_9439E0, &unk_787AB0);
LABEL_23:
  v22 = v30;
  if (*(a1 + v30[7]) != *(a2 + v30[7]) || *(a1 + v30[8]) != *(a2 + v30[8]) || *(a1 + v30[9]) != *(a2 + v30[9]) || (sub_75CFC0() & 1) == 0)
  {
    return 0;
  }

  v23 = v22[12];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v26 = v25;
    v27 = v24;
    v28 = sub_76A1C0();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (sub_76A1C0())
  {
    sub_75CFE0();
    sub_19CCA8(&qword_947FB8, &type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment, &protocol conformance descriptor for TitleHeaderLayout.ChildrenHorizontalAlignment);
    sub_769430();
    sub_769430();
    return v33 == v32;
  }

  return 0;
}

uint64_t sub_19CCA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19CCF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19CD50(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FF90, qword_77ECE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_19CDC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19CE28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_19CE90()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_eyebrowArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_titleArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_shortDetailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessory;
  v3 = type metadata accessor for Accessory(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_accessoryAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_separatorInset);
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  v5[1] = v6;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider15TitleHeaderView_allowsAccessibilityLayouts) = 1;
  sub_76A840();
  __break(1u);
}

char *sub_19CFE8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder;
  sub_759210();
  v11 = sub_759020();
  sub_75CD10();

  *&v5[v10] = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder;
  sub_7595E0();
  v13 = sub_7595A0();
  v15 = sub_48A70C(v13, v14, UIFontTextStyleFootnote);

  *&v5[v12] = v15;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder;
  v17 = sub_7595D0();
  v19 = sub_48A70C(v17, v18, UIFontTextStyleBody);

  *&v5[v16] = v19;
  v20 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder;
  v21 = sub_759580();
  v23 = sub_48A70C(v21, v22, UIFontTextStyleFootnote);

  *&v5[v20] = v23;
  v24 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder;
  type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  *&v5[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_contentType;
  v26 = enum case for Shelf.ContentType.smallLockup(_:);
  v27 = sub_764930();
  (*(*(v27 - 8) + 104))(&v5[v25], v26, v27);
  v5[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder] = 0;
  v34.receiver = v5;
  v34.super_class = type metadata accessor for LockupPlaceholderView(0);
  v28 = objc_msgSendSuper2(&v34, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v32 = v28;
  [v32 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder]];
  [v32 addSubview:*&v32[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder]];

  return v32;
}

uint64_t sub_19D2A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_764930();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_contentType;
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v9, v1 + v10, v3);
  v12 = (*(v4 + 88))(v9, v3);
  if (v12 == enum case for Shelf.ContentType.smallLockup(_:))
  {
    return sub_19D504(a1);
  }

  if (v12 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    return sub_19DA1C(a1);
  }

  if (v12 == enum case for Shelf.ContentType.largeLockup(_:))
  {
    return sub_19DEFC(a1);
  }

  v14[1] = 0;
  v14[2] = 0xE000000000000000;
  sub_76A730(44);
  v11(v6, v1 + v10, v3);
  sub_76A7F0();
  (*(v4 + 8))(v6, v3);
  v15._object = 0x80000000007CCC40;
  v15._countAndFlagsBits = 0xD00000000000002ALL;
  sub_769370(v15);
  result = sub_76A840();
  __break(1u);
  return result;
}

uint64_t sub_19D504@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v35 = sub_762D10();
  v3 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75CF00();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  if (qword_93C668 != -1)
  {
    swift_once();
  }

  v13 = sub_BE38(v6, qword_99B898);
  v38 = v7;
  v14 = *(v7 + 16);
  v14(v12, v13, v6);
  sub_75CE80();
  sub_75CE40();
  v37 = v9;
  v14(v9, v12, v6);
  v15 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder);
  v59[8] = sub_759210();
  v59[9] = &protocol witness table for UIView;
  v59[5] = v15;
  v16 = objc_opt_self();
  v17 = v15;
  v18 = [v16 preferredFontForTextStyle:UIFontTextStyleBody];
  v19 = sub_7653B0();
  v59[3] = v19;
  v59[4] = sub_19E738(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v20 = sub_B1B4(v59);
  (*(*(v19 - 8) + 104))(v20, enum case for Feature.measurement_with_labelplaceholder(_:), v19);
  sub_765C30();
  sub_BEB8(v59);
  sub_762D00();
  sub_762CE0();
  (*(v3 + 8))(v5, v35);
  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder) == 1)
  {
    v21 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder);
    v22 = sub_BE70(0, &qword_950A70, UILabel_ptr);
    v23 = v21;
    v24 = &protocol witness table for UILabel;
  }

  else
  {
    v22 = 0;
    v24 = 0;
    v21 = 0;
    v55 = 0;
    v56 = 0;
  }

  v57 = v22;
  v58 = v24;
  v54 = v21;
  v25 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder);
  v52 = sub_BE70(0, &qword_950A70, UILabel_ptr);
  v53 = &protocol witness table for UILabel;
  v50 = &protocol witness table for UILabel;
  v51 = v25;
  v26 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder);
  v49 = v52;
  v48 = v26;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v27 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder);
  v40 = sub_BE70(0, &qword_93E550, UIView_ptr);
  v41 = &protocol witness table for UIView;
  v39 = v27;
  v28 = sub_75CF20();
  v29 = v36;
  v36[3] = v28;
  v29[4] = sub_19E738(&qword_9480A0, &type metadata accessor for SmallLockupLayout, &protocol conformance descriptor for SmallLockupLayout);
  v29[5] = sub_19E738(&qword_94A290, &type metadata accessor for SmallLockupLayout, &protocol conformance descriptor for SmallLockupLayout);
  sub_B1B4(v29);
  v30 = v25;
  v31 = v26;
  v32 = v27;
  sub_75CF10();
  return (*(v38 + 8))(v12, v6);
}

uint64_t sub_19DA1C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_762D10();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75D6B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  type metadata accessor for MediumLockupCollectionViewCell(0);
  v13 = [v1 traitCollection];
  sub_278FB0(v12);

  v14 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder];
  [v14 sizeThatFits:{0.0, 0.0}];
  sub_75D6A0();
  v15 = *(v7 + 16);
  v37 = v9;
  v38 = v6;
  v15(v9, v12, v6);
  v16 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder];
  v59 = sub_759210();
  v60 = &protocol witness table for UIView;
  v58 = v16;
  if (v1[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder] == 1)
  {
    v17 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder];
    v18 = sub_BE70(0, &qword_950A70, UILabel_ptr);
    v19 = v17;
    v20 = &protocol witness table for UILabel;
  }

  else
  {
    v18 = 0;
    v20 = 0;
    v17 = 0;
    v54 = 0;
    v55 = 0;
  }

  v56 = v18;
  v57 = v20;
  v53 = v17;
  v21 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder];
  v51 = sub_BE70(0, &qword_950A70, UILabel_ptr);
  v52 = &protocol witness table for UILabel;
  v49 = &protocol witness table for UILabel;
  v50 = v21;
  v22 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder];
  v48 = v51;
  v46 = 0;
  v47 = v22;
  v44 = 0u;
  v45 = 0u;
  v23 = objc_opt_self();
  v24 = v16;
  v25 = v21;
  v26 = v22;
  v27 = [v23 preferredFontForTextStyle:UIFontTextStyleBody];
  v28 = sub_7653B0();
  v43[3] = v28;
  v43[4] = sub_19E738(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v29 = sub_B1B4(v43);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  sub_765C30();
  sub_BEB8(v43);
  sub_762D00();
  sub_762CE0();
  (*(v35 + 8))(v5, v36);
  v41 = sub_BE70(0, &qword_93E550, UIView_ptr);
  v42 = &protocol witness table for UIView;
  v40 = v14;
  v30 = sub_75D6D0();
  v31 = v39;
  v39[3] = v30;
  v31[4] = sub_19E738(&qword_948090, &type metadata accessor for MediumLockupLayout, &protocol conformance descriptor for MediumLockupLayout);
  v31[5] = sub_19E738(&qword_948098, &type metadata accessor for MediumLockupLayout, &protocol conformance descriptor for MediumLockupLayout);
  sub_B1B4(v31);
  v32 = v14;
  sub_75D6C0();
  return (*(v7 + 8))(v12, v38);
}

uint64_t sub_19DEFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_75C8F0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C8B0 != -1)
  {
    swift_once();
  }

  v7 = sub_BE38(v3, qword_99C5C0);
  (*(v4 + 16))(v6, v7, v3);
  v8 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder);
  v34 = sub_759210();
  v35 = &protocol witness table for UIView;
  v33 = v8;
  if (*(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder) == 1)
  {
    v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder);
    v10 = sub_BE70(0, &qword_950A70, UILabel_ptr);
    v11 = v9;
    v12 = &protocol witness table for UILabel;
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v9 = 0;
    v29 = 0;
    v30 = 0;
  }

  v31 = v10;
  v32 = v12;
  v28 = v9;
  v13 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder);
  v26 = sub_BE70(0, &qword_950A70, UILabel_ptr);
  v27 = &protocol witness table for UILabel;
  v24 = &protocol witness table for UILabel;
  v25 = v13;
  v14 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder);
  v23 = v26;
  v22 = v14;
  v15 = sub_75C910();
  memset(v20, 0, sizeof(v20));
  v21 = 0;
  a1[3] = v15;
  a1[4] = sub_19E738(&qword_948080, &type metadata accessor for LargeLockupLayout, &protocol conformance descriptor for LargeLockupLayout);
  a1[5] = sub_19E738(&qword_948088, &type metadata accessor for LargeLockupLayout, &protocol conformance descriptor for LargeLockupLayout);
  sub_B1B4(a1);
  v16 = v8;
  v17 = v13;
  v18 = v14;
  return sub_75C900();
}

uint64_t sub_19E270()
{
  v1 = sub_7664F0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_75C910();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for LockupPlaceholderView(0);
  v13.receiver = v0;
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, "layoutSubviews");
  sub_19D2A4(v12);
  if (v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder] == 1)
  {
    [v0 insertSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder] belowSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder]];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder] removeFromSuperview];
  }

  sub_16C320(v12, v11);
  sub_BD88(&qword_9480A8, &qword_7895F0);
  if (swift_dynamicCast())
  {
    (*(v6 + 8))(v8, v5);
    [*&v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder] removeFromSuperview];
  }

  else
  {
    [v0 addSubview:*&v0[OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder]];
  }

  sub_B170(v12, v12[3]);
  sub_75D650();
  sub_7672C0();
  (*(v2 + 8))(v4, v1);
  return sub_BEB8(v12);
}

id sub_19E540()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockupPlaceholderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for LockupPlaceholderView(uint64_t a1)
{
  result = qword_948070;
  if (!qword_948070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19E688(uint64_t a1)
{
  result = sub_764930();
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

uint64_t sub_19E738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_19E780()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_iconPlaceholder;
  sub_759210();
  v3 = sub_759020();
  sub_75CD10();

  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_headingPlaceholder;
  sub_7595E0();
  v5 = sub_7595A0();
  v7 = sub_48A70C(v5, v6, UIFontTextStyleFootnote);

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_titlePlaceholder;
  v9 = sub_7595D0();
  v11 = sub_48A70C(v9, v10, UIFontTextStyleBody);

  *(v1 + v8) = v11;
  v12 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_subtitlePlaceholder;
  v13 = sub_759580();
  v15 = sub_48A70C(v13, v14, UIFontTextStyleFootnote);

  *(v1 + v12) = v15;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_offerButtonPlaceholder;
  type metadata accessor for PlaceholderHelper.PlacholderOfferButton();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_contentType;
  v18 = enum case for Shelf.ContentType.smallLockup(_:);
  v19 = sub_764930();
  (*(*(v19 - 8) + 104))(v1 + v17, v18, v19);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider21LockupPlaceholderView_wantsHeadingTextPlaceholder) = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_19E9FC(Swift::Float a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_765080();
  sub_161DC(v7, a5);
  sub_BE38(v7, a5);
  sub_396E8();
  sub_76A120(0.0, 0.0, 0.0, a1);
  return sub_765050();
}

uint64_t sub_19EA90()
{
  v0 = sub_765080();
  sub_161DC(v0, qword_99B550);
  sub_BE38(v0, qword_99B550);
  sub_396E8();
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v2 colorWithAlphaComponent:0.2];

  v4 = [v1 whiteColor];
  v5 = [v4 colorWithAlphaComponent:0.2];

  v6.super.isa = v3;
  v7.super.isa = v5;
  sub_76A0C0(v6, v7);
  return sub_765050();
}

uint64_t sub_19ED70(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_765080();
  sub_161DC(v7, a5);
  sub_BE38(v7, a5);
  v8 = [objc_opt_self() blackColor];
  v9 = [v8 colorWithAlphaComponent:a1];

  return sub_765050();
}

double sub_19EE34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_19EE88()
{
  ObjectType = swift_getObjectType();
  if (_swiftEmptyArrayStorage >> 62)
  {
    v4 = ObjectType;
    if (sub_76A860())
    {
      sub_1A19EC(_swiftEmptyArrayStorage);
      v2 = v5;
    }

    else
    {
      v2 = _swiftEmptySetSingleton;
    }

    ObjectType = v4;
  }

  else
  {
    v2 = _swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews] = v2;
  v0[OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase] = 3;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer] = 0;
  *&v0[OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator] = 0;
  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

void sub_19EF70(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = ObjectType;
    v6 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
    swift_beginAccess();
    v7 = a1;
    sub_1A01E8(&v29, v7);
    swift_endAccess();

    v8 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase;
    v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase);
    if ((v9 - 1) >= 2)
    {
      if (!*(v2 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase))
      {
        [v7 setAlpha:1.0];
        goto LABEL_18;
      }
    }

    else
    {
      v10 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
      if (v10)
      {
        sub_BD88(&unk_93F5C0, &unk_77C600);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_77D9F0;
        *(inited + 32) = v7;
        v12 = v7;
        v13 = v10;
        sub_1A19EC(inited);
        v15 = v14;
        swift_setDeallocating();
        swift_arrayDestroy();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = v5;
        v17 = objc_allocWithZone(UIViewPropertyAnimator);
        if (v9 == 1)
        {
          v27 = sub_1A1D28;
          v28 = v16;
          v23 = _NSConcreteStackBlock;
          v24 = 1107296256;
          v18 = &unk_886C68;
        }

        else
        {
          v27 = sub_1A1CF0;
          v28 = v16;
          v23 = _NSConcreteStackBlock;
          v24 = 1107296256;
          v18 = &unk_886C18;
        }

        v25 = sub_23F0CC;
        v26 = v18;
        v21 = _Block_copy(&v23);

        v22 = [v17 initWithDuration:v21 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0, v23, v24}];
        _Block_release(v21);
        v7 = v22;
        [v13 fractionComplete];
        [v7 setFractionComplete:?];
        [v7 startAnimation];

        goto LABEL_18;
      }

      *(v2 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 3;
    }

    v19 = *(v2 + v6);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = sub_76A630();

      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_13:
      if (*(v2 + v8) == 3 && !UIAccessibilityIsReduceMotionEnabled())
      {
        sub_19F560();
      }

      goto LABEL_18;
    }

    if (*(v19 + 16))
    {
      goto LABEL_13;
    }

LABEL_18:
  }
}

void sub_19F2DC()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 3;
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
  if (v1)
  {
    [v1 invalidate];
  }

  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  if (v2)
  {
    [v2 stopAnimation:1];
  }

  v3 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if ((v4 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_76A5F0();
    sub_2630C();
    sub_1A3148(&qword_946D88, sub_2630C, &protocol conformance descriptor for NSObject);
    sub_769660();
    v6 = v20;
    v5 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v4 + 56);
    swift_bridgeObjectRetain_n();
    v8 = 0;
    v6 = v4;
  }

  v13 = (v7 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v14 = v8;
    v15 = v9;
    v16 = v8;
    if (!v9)
    {
      break;
    }

LABEL_16:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
LABEL_22:
      sub_1A01E0(v6);

      return;
    }

    while (1)
    {
      [v18 setAlpha:1.0];

      v8 = v16;
      v9 = v17;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_76A660())
      {
        sub_2630C();
        swift_dynamicCast();
        v18 = v19;
        v16 = v8;
        v17 = v9;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_22;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void sub_19F560()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_76A630();

    if (v3)
    {
LABEL_3:
      *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 0;
      v4 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_1A1D84;
      aBlock[5] = v4;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_123860;
      aBlock[3] = &unk_886CB8;
      v5 = _Block_copy(aBlock);
      v6 = objc_opt_self();

      v7 = [v6 timerWithTimeInterval:0 repeats:v5 block:0.8];
      _Block_release(v5);

      v8 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
      *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer) = v7;
      v9 = v7;
      [v8 invalidate];

      v10 = [objc_opt_self() mainRunLoop];
      [v10 addTimer:v9 forMode:NSRunLoopCommonModes];

      return;
    }
  }

  else if (*(v2 + 16))
  {
    goto LABEL_3;
  }

  sub_19F2DC();
}

void sub_19F75C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer);
    *(Strong + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_sleepTimer) = 0;
    v4 = Strong;
    [v3 invalidate];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_19F804();
  }
}

void sub_19F804()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19F2DC();
    return;
  }

  v4 = sub_76A630();

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 1;
  v5 = *(v0 + v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v19 = sub_1A31B4;
  v20 = v6;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_23F0CC;
  v18 = &unk_886D08;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 initWithDuration:v8 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1A1D8C;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_19EE34;
  v18 = &unk_886D30;
  v11 = _Block_copy(&aBlock);

  [v9 addCompletion:v11];
  _Block_release(v11);
  v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v9;
  if (v12)
  {
    v13 = v9;
    [v12 stopAnimation:1];
  }

  else
  {
    v14 = v9;
  }

  [v9 startAnimation];
}

void sub_19FAA8()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (*(v3 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_19F2DC();
    return;
  }

  v4 = sub_76A630();

  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) = 2;
  v5 = *(v0 + v2);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = ObjectType;
  v7 = objc_allocWithZone(UIViewPropertyAnimator);
  v19 = sub_1A31B8;
  v20 = v6;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_23F0CC;
  v18 = &unk_886D80;
  v8 = _Block_copy(&aBlock);

  v9 = [v7 initWithDuration:v8 controlPoint1:0.6 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  _Block_release(v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = sub_1A1DBC;
  v20 = v10;
  aBlock = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_19EE34;
  v18 = &unk_886DA8;
  v11 = _Block_copy(&aBlock);

  [v9 addCompletion:v11];
  _Block_release(v11);
  v12 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator);
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_currentAnimator) = v9;
  if (v12)
  {
    v13 = v9;
    [v12 stopAnimation:1];
  }

  else
  {
    v14 = v9;
  }

  [v9 startAnimation];
}

void sub_19FD4C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (!a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      a3();
    }
  }
}

void sub_19FDB4(uint64_t a1, uint64_t a2, double a3)
{
  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_76A5F0();
    sub_2630C();
    sub_1A3148(&qword_946D88, sub_2630C, &protocol conformance descriptor for NSObject);
    sub_769660();
    v4 = v18;
    v5 = v19;
    v6 = v20;
    v7 = v21;
    v8 = v22;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
LABEL_18:
      sub_1A01E0(v4);
      return;
    }

    while (1)
    {
      [v16 setAlpha:a3];

      v7 = v14;
      v8 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_76A660())
      {
        sub_2630C();
        swift_dynamicCast();
        v16 = v17;
        v14 = v7;
        v15 = v8;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v5 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_19FFBC()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animatingViews;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = sub_76A630();

    if (!v3)
    {
      return;
    }
  }

  else if (!*(v2 + 16))
  {
    return;
  }

  if (*(v0 + OBJC_IVAR____TtC18ASMessagesProvider41AppEventLiveIndicatorAnimationCoordinator_animationPhase) == 3 && !UIAccessibilityIsReduceMotionEnabled())
  {
    sub_19F560();
  }
}

unint64_t sub_1A018C()
{
  result = qword_9480F8;
  if (!qword_9480F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9480F8);
  }

  return result;
}

uint64_t sub_1A01E8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_76A640();

    if (v9)
    {

      sub_2630C();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_76A630();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_26EAFC(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_26ECEC(v20 + 1);
    }

    v18 = v8;
    sub_26F6FC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2630C();
  v11 = sub_76A1B0(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1A096C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_76A1C0();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1A0400(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  sub_769240();
  sub_76AA30();
  sub_769330();
  v7 = sub_76AA80();

  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = sub_769240();
      v13 = v12;
      if (v11 == sub_769240() && v13 == v14)
      {

        goto LABEL_12;
      }

      v16 = sub_76A950();

      if (v16)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20 = *(*(v6 + 48) + 8 * v9);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    v18 = a2;
    sub_1A0ACC(v18, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v22;
    *a1 = v18;
    return 1;
  }
}

uint64_t sub_1A05AC(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_76AA20();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1A0CB4(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1A068C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A3148(&qword_948180, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
  v33 = a2;
  v11 = sub_769150();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A3148(&qword_945868, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
      v21 = sub_7691C0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A0DD4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_1A096C(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26ECEC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_26F780();
      goto LABEL_12;
    }

    sub_1A1078(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_76A1B0(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_2630C();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_76A1C0();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_76A9A0();
  __break(1u);
}

void sub_1A0ACC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_26EF14(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_26F8D0();
      goto LABEL_16;
    }

    sub_1A128C(v7 + 1);
  }

  v9 = *v3;
  sub_769240();
  sub_76AA30();
  sub_769330();
  v10 = sub_76AA80();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for ActivityType(0);
    do
    {
      v13 = sub_769240();
      v15 = v14;
      if (v13 == sub_769240() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_76A950();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = a1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  sub_76A9A0();
  __break(1u);
}

void sub_1A0CB4(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26F190(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_26FA20();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1A14E0(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_76AA20();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_76A9A0();
  __break(1u);
}

uint64_t sub_1A0DD4(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_764CF0();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26F3B4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_26FB60();
      goto LABEL_12;
    }

    sub_1A16D0(v11 + 1);
  }

  v13 = *v3;
  sub_1A3148(&qword_948180, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
  v14 = sub_769150();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1A3148(&qword_945868, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
      v22 = sub_7691C0();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_76A9A0();
  __break(1u);
  return result;
}

void sub_1A1078(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_BD88(&qword_948100, &qword_7896F0);
  v4 = sub_76A700();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v18 = sub_76A1B0(v16);
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v26;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1A128C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_BD88(&qword_948128, &qword_789708);
  v4 = sub_76A700();
  v5 = v4;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_769240();
      sub_76AA30();
      v18 = v17;
      sub_769330();
      v19 = sub_76AA80();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1A14E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_BD88(&qword_948140, &unk_78EF40);
  v4 = sub_76A700();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_76AA20();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1A16D0(uint64_t a1)
{
  v2 = v1;
  v34 = sub_764CF0();
  v3 = *(v34 - 8);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_BD88(&qword_9520F0, &unk_78EF50);
  v7 = sub_76A700();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1A3148(&qword_948180, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
      v21 = sub_769150();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_1A19EC(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_76A860())
    {
LABEL_3:
      sub_BD88(&qword_948100, &qword_7896F0);
      v3 = sub_76A720();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_76A860();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = _swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 7;
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_76A770();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_76A1B0(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = v6[v13 >> 6];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2630C();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_76A1C0();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = v6[v13 >> 6];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        v6[v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_76A1B0(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = v6[v27 >> 6];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_2630C();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_76A1C0();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = v6[v27 >> 6];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        v6[v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1A1CB8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1A1D10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1A1D4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1A1DEC(uint64_t a1)
{
  v2 = sub_757480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_BD88(&qword_948160, &qword_789728);
    v9 = sub_76A720();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A3148(&qword_948168, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
      v16 = sub_769150();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A3148(&qword_948170, &type metadata accessor for Calendar.Component, &protocol conformance descriptor for Calendar.Component);
          v23 = sub_7691C0();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void sub_1A210C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_948128, &qword_789708);
    v3 = sub_76A720();
    v4 = 0;
    v5 = v3 + 56;
    v24 = v1;
    v25 = a1 + 32;
    v6 = v1;
    do
    {
      v7 = *(v25 + 8 * v4);
      sub_769240();
      sub_76AA30();
      v26 = v7;
      sub_769330();
      v8 = sub_76AA80();

      v9 = -1 << *(v3 + 32);
      v10 = v8 & ~v9;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_15;
      }

      v14 = ~v9;
      do
      {
        v15 = sub_769240();
        v17 = v16;
        if (v15 == sub_769240() && v17 == v18)
        {

LABEL_4:
          v6 = v24;
          goto LABEL_5;
        }

        v20 = sub_76A950();

        if (v20)
        {

          goto LABEL_4;
        }

        v10 = (v10 + 1) & v14;
        v11 = v10 >> 6;
        v12 = *(v5 + 8 * (v10 >> 6));
        v13 = 1 << v10;
      }

      while (((1 << v10) & v12) != 0);
      v6 = v24;
LABEL_15:
      *(v5 + 8 * v11) = v13 | v12;
      *(*(v3 + 48) + 8 * v10) = v26;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        __break(1u);
        return;
      }

      *(v3 + 16) = v23;
LABEL_5:
      ++v4;
    }

    while (v4 != v6);
  }
}

void *sub_1A2300(uint64_t a1)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_BD88(&qword_948130, &unk_789710);
    v9 = sub_76A720();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A3148(&qword_948138, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
      v16 = sub_769150();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A3148(&qword_944DC0, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
          v23 = sub_7691C0();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

Swift::Int sub_1A2620(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_948120, &qword_789700);
    v3 = sub_76A720();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_76AA30();
      sub_76AA40(v10);
      result = sub_76AA80();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void *sub_1A275C(uint64_t a1, uint64_t a2)
{
  v3 = sub_757640();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v31 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_BD88(&qword_948178, qword_789730);
    v10 = sub_76A720();
    v11 = 0;
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v36 = v13;
    v37 = v10 + 56;
    v14 = *(v12 + 64);
    v33 = v9;
    v34 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v32 = (v12 + 16);
    while (1)
    {
      v35 = v11;
      v36(v38, v34 + v15 * v11, v3);
      sub_1A3148(&unk_952080, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v17 = sub_769150();
      v18 = ~(-1 << *(v10 + 32));
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = *(v37 + 8 * v20);
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) != 0)
      {
        while (1)
        {
          v23 = v12;
          v36(v6, *(v10 + 48) + v19 * v15, v3);
          sub_1A3148(&qword_944B50, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v24 = sub_7691C0();
          v25 = *v16;
          (*v16)(v6, v3);
          if (v24)
          {
            break;
          }

          v19 = (v19 + 1) & v18;
          v20 = v19 >> 6;
          v21 = *(v37 + 8 * (v19 >> 6));
          v22 = 1 << v19;
          v12 = v23;
          if (((1 << v19) & v21) == 0)
          {
            goto LABEL_8;
          }
        }

        v25(v38, v3);
        v12 = v23;
      }

      else
      {
LABEL_8:
        v26 = v38;
        *(v37 + 8 * v20) = v22 | v21;
        result = (*v32)(*(v10 + 48) + v19 * v15, v26, v3);
        v28 = *(v10 + 16);
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v30;
      }

      v11 = v35 + 1;
      if (v35 + 1 == v33)
      {
        return v10;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

void sub_1A2A7C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_76A860())
    {
LABEL_3:
      sub_BD88(&qword_948148, &qword_789720);
      v3 = sub_76A720();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_76A860();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = _swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 7;
  v21 = a1 & 0xC000000000000001;
  v19 = a1 + 32;
  v20 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    v8 = sub_76A770();
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    sub_767C10();
    sub_1A3148(&qword_948150, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
    v10 = sub_769150();
    v11 = -1 << *(v3 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = v7[v12 >> 6];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1A3148(&qword_948158, &type metadata accessor for AnyCancellable, &protocol conformance descriptor for AnyCancellable);
      while ((sub_7691C0() & 1) == 0)
      {
        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = v7[v12 >> 6];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v7[v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void *sub_1A2D10(uint64_t a1)
{
  v2 = sub_768E20();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_BD88(&qword_948108, &qword_7896F8);
    v9 = sub_76A720();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1A3148(&qword_948110, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
      v16 = sub_769150();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1A3148(&qword_948118, &type metadata accessor for MetricsFieldInclusionRequest, &protocol conformance descriptor for MetricsFieldInclusionRequest);
          v23 = sub_7691C0();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_1A3030(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_BD88(&qword_948140, &unk_78EF40);
    v3 = sub_76A720();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_76AA20();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_1A3148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for HeaderButton(uint64_t a1)
{
  result = qword_9481B0;
  if (!qword_9481B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A3270()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_948188);
  v1 = sub_BE38(v0, qword_948188);
  if (qword_93D4C0 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99E650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A3338()
{
  v0 = sub_7666D0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderButton(0);
  if (qword_93C5D8 != -1)
  {
    swift_once();
  }

  v4 = sub_BE38(v0, qword_948188);
  (*(v1 + 16))(v3, v4, v0);
  result = sub_75C550();
  qword_9481A0 = result;
  return result;
}

uint64_t sub_1A3454(uint64_t a1)
{
  v1 = sub_7666D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (qword_93C5D8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v1, qword_948188);
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_75C550();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

id sub_1A3598(void *a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for HeaderButton(0);
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v5 != result))
  {
    v7 = *&v2[qword_9481A8];
    v8 = [v2 traitCollection];
    v9 = sub_7699F0();

    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = 0.0;
    }

    if (v9)
    {
      v11 = 0.0;
    }

    else
    {
      v11 = v7;
    }

    if (v9)
    {
      v12 = -v7;
    }

    else
    {
      v12 = v7;
    }

    if ((v9 & 1) == 0)
    {
      v7 = -v7;
    }

    [v2 setContentEdgeInsets:{0.0, v11, 0.0, v10}];
    return [v2 setImageEdgeInsets:{0.0, v7, 0.0, v12}];
  }

  return result;
}

void sub_1A36CC(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_1A3598(a3);
}

id sub_1A3738(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_9481A8] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for HeaderButton(0);
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_1A37B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1A37FC(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_7664A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7666D0();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v12[3] = v4;
  v12[4] = &protocol witness table for FontSource;
  v9 = sub_B1B4(v12);
  (*(v5 + 16))(v9, v7, v4);
  sub_765C10();
  (*(v5 + 8))(v7, v4);
  sub_BEB8(v12);
  return JUScreenClassGetMain();
}

id sub_1A399C@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_BD88(&qword_9482D8, qword_7897C8);
  __chkstk_darwin(v1 - 8);
  sub_765D80();
  v12 = sub_765DA0();
  v11 = v2;
  v10 = sub_765DB0();
  v9 = v3;
  sub_765D10();
  sub_765D60();
  sub_765D20();
  sub_765D50();
  sub_765D30();
  sub_765D40();
  v4 = objc_opt_self();
  result = [v4 shared];
  if (result)
  {
    v6 = result;
    v7 = [result isAccountModificationRestricted];

    if (v7)
    {
LABEL_5:
      sub_765D90();
      return sub_765D70();
    }

    result = [v4 shared];
    if (result)
    {
      v8 = result;
      [result isAddingFriendsRestricted];

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

uint64_t sub_1A3B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_765DC0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  sub_762C50();
  sub_765D30();
  v14 = *(v8 + 8);
  v14(v13, v7);
  if (!v29[3])
  {
    return sub_10A2C(v29, &qword_9482C0, &qword_7897C0);
  }

  sub_BD88(&unk_9482C8, "2J\a");
  sub_764C80();
  result = swift_dynamicCast();
  if (result)
  {
    v25 = v28;
    sub_75A920();
    sub_768900();
    sub_768ED0();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      sub_762C50();
      sub_765D80();
      v14(v10, v7);
      v18 = swift_dynamicCast();
      v19 = v18 == 0;
      if (v18)
      {
        v20 = v26;
      }

      else
      {
        v20 = 0;
      }

      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v27;
      }

      sub_5AE50(v20, v21);
    }

    v22 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v6, 1, v22) == 1)
    {

      return sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32A6C0(v25, 1, a2, v6);

      return (*(v23 + 8))(v6, v22);
    }
  }

  return result;
}

uint64_t sub_1A3F20(uint64_t a1, uint64_t a2)
{
  v3 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-v4 - 8];
  v6 = sub_765DC0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_762C50();
  sub_765D40();
  (*(v7 + 8))(v9, v6);
  if (!v16)
  {
    return sub_10A2C(v15, &qword_9482C0, &qword_7897C0);
  }

  sub_BD88(&unk_9482C8, "2J\a");
  sub_764C80();
  result = swift_dynamicCast();
  if (result)
  {
    v11 = v14;
    v12 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v5, 1, v12) == 1)
    {

      return sub_10A2C(v5, &unk_93F980, &qword_77EDA0);
    }

    else
    {
      sub_32A6C0(v11, 1, a2, v5);

      return (*(v13 + 8))(v5, v12);
    }
  }

  return result;
}

double sub_1A418C(uint64_t a1)
{
  if (a1)
  {

    sub_765320();
    sub_75A110();
    sub_765E60();
    sub_75A090();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_75A040();

    sub_10A2C(v2, &unk_9443A0, &unk_77E240);
  }

  return result;
}

void sub_1A42B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_smallPlayerCard);

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = *(v8 + OBJC_IVAR____TtC18ASMessagesProvider34SmallContactCardCollectionViewCell_smallPlayerCard);

      v11 = sub_765E50();
      if (v11)
      {
      }
    }

    sub_765E20();
  }
}

uint64_t sub_1A43F0()
{
  sub_75A110();
  sub_765E60();
  sub_75A090();
  sub_75A0B0();
  return sub_1EB60(v1);
}

uint64_t sub_1A4470(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_765E60();
  sub_765E30();
  v8 = [objc_opt_self() absoluteDimension:v7];
  v9 = sub_75F970();

  return v9;
}

uint64_t sub_1A45A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A45EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_765DC0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  sub_762C50();
  sub_1A399C(v11);
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_765E40();
  v12(v11, v5);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a3;
  v14[4] = v13;

  sub_765DF0();

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a3;

  return sub_765E10();
}

uint64_t sub_1A4808()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1A4840()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1A4888()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A48D0()
{
  v0 = sub_7666D0();
  sub_161DC(v0, qword_9482E0);
  v1 = sub_BE38(v0, qword_9482E0);
  if (qword_93D608 != -1)
  {
    swift_once();
  }

  v2 = sub_BE38(v0, qword_99EA10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_1A4998(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v12 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v12 - 8);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v44 - v15;
  v17 = sub_7666D0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_hasMoreButton] = 1;
  v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] = 0;
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines] = 3;
  v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] = 1;
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString] = 0;
  v21 = &v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreTapHandler];
  *v21 = 0;
  v21[1] = 0;
  if (qword_93D608 != -1)
  {
    swift_once();
  }

  v22 = sub_BE38(v17, qword_99EA10);
  type metadata accessor for FadeInDynamicTypeButton(0);
  v23 = *(v18 + 16);
  v23(v20, v22, v17);
  v24 = a1;
  v25 = sub_FD810(v20, v24);

  v26 = v25;
  v47._countAndFlagsBits = 0x4D5F4E4F49544341;
  v47._object = 0xEB0000000045524FLL;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  sub_75B750(v47, v48);
  v27 = sub_769210();

  [v26 setTitle:v27 forState:0];

  [v26 setContentEdgeInsets:{COERCE_DOUBLE(1), 0.0, 0.0, 0.0}];
  [v26 setAdjustsImageWhenHighlighted:0];

  *&v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] = v26;
  sub_75BB20();
  v28 = sub_75BB00();
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] = v28;
  v29 = v28;
  sub_75BAD0();

  v30 = type metadata accessor for ExpandableTextView();
  v46.receiver = v6;
  v46.super_class = v30;
  v31 = objc_msgSendSuper2(&v46, "initWithFrame:", a2, a3, a4, a5);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v35 = v31;
  [v35 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v35 setUserInteractionEnabled:1];
  [v35 setBackgroundColor:v24];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
  [*&v35[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] setNumberOfLines:*&v35[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines]];
  [*&v35[v36] setLineBreakMode:0];
  [*&v35[v36] setTextAlignment:4];
  if (qword_93C5E8 != -1)
  {
    swift_once();
  }

  v37 = sub_BE38(v17, qword_9482E0);
  v23(v16, v37, v17);
  (*(v18 + 56))(v16, 0, 1, v17);
  sub_1ED18(v16, v45, &unk_93E530, &unk_77C5F0);
  sub_75BA40();
  sub_10A2C(v16, &unk_93E530, &unk_77C5F0);
  [v35 addSubview:*&v35[v36]];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton;
  v39 = [*&v35[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] traitCollection];
  v40 = [v39 preferredContentSizeCategory];

  sub_769B60();
  v41 = *&v35[v38];
  [v41 addTarget:v35 action:"moreFrom:" forControlEvents:64];

  v42 = *&v35[v38];
  sub_75D600();

  [v35 addSubview:*&v35[v38]];
  return v35;
}

void sub_1A5114(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel);
  v7 = [v6 text];
  if (!v7)
  {
    if (!a2)
    {
      return;
    }

LABEL_11:
    v14 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v14 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      sub_75E140();

      sub_75E0F0();
      sub_75E0E0();
      v15 = sub_75E160();
      v16 = 0;
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    goto LABEL_19;
  }

  v8 = v7;
  v9 = sub_769240();
  v11 = v10;

  if (a2)
  {
    if (v11)
    {
      if (v9 == a1 && v11 == a2)
      {

LABEL_24:

        return;
      }

      v13 = sub_76A950();

      if (v13)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_11;
  }

  if (!v11)
  {
    return;
  }

  v15 = 0;
  v16 = 1;
LABEL_19:
  v17 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString);
  *(v3 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString) = v15;
  v18 = v15;

  if (v15)
  {
    sub_75E120();

LABEL_27:
    v19 = sub_769210();

    goto LABEL_28;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_27;
  }

  v19 = 0;
LABEL_28:
  [v6 setText:v19];

  sub_1A5974();
}

void sub_1A532C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel);
  v5 = [v4 attributedText];
  v6 = v5;
  if (!a1)
  {
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    v8 = a1;
LABEL_8:
    v17 = v8;
    if ([v8 length])
    {
      v9 = sub_75E140();
      v10 = v17;
      sub_75E0E0();
      v11 = objc_allocWithZone(v9);
      v12 = sub_75E150();
LABEL_11:
      v13 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString);
      *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString) = v12;
      v14 = v12;

      if (v12)
      {
        v15 = sub_75E0D0();

        v18 = a1;
      }

      else
      {
        v18 = a1;
        v15 = v18;
      }

      [v4 setAttributedText:v15];

      sub_1A5974();
      v8 = v18;
      goto LABEL_15;
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  sub_BE70(0, &qword_9562D0, NSAttributedString_ptr);
  v16 = a1;
  v7 = sub_76A1C0();

  v8 = v16;
  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
}

char *sub_1A561C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20.receiver = v2;
  v20.super_class = type metadata accessor for ExpandableTextView();
  objc_msgSendSuper2(&v20, "layoutSubviews");
  sub_75D650();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel];
  [v12 sizeThatFits:{v8, v10}];
  v14 = v13;
  v21.origin.x = v5;
  v21.origin.y = v7;
  v21.size.width = v9;
  v21.size.height = v11;
  [v12 setFrame:{v5, v7, CGRectGetWidth(v21), v14}];
  v15 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton];
  result = [v15 isHidden];
  if ((result & 1) == 0)
  {
    result = [v12 numberOfLines];
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v17 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString];
      if (v17)
      {
        v18 = v17;
        [v12 numberOfLines];
        [v12 lineBreakMode];
        v19 = sub_75E100();
      }

      else
      {
        v19 = 0;
      }

      [v15 sizeThatFits:{v9, v11}];
      v22.origin.x = v5;
      v22.origin.y = v7;
      v22.size.width = v9;
      v22.size.height = v11;
      CGRectGetMaxX(v22);
      v23.origin.x = v5;
      v23.origin.y = v7;
      v23.size.width = v9;
      v23.size.height = v11;
      CGRectGetMaxY(v23);
      sub_75D650();
      sub_769D30();
      [v15 setFrame:?];
      *(v15 + qword_944EC0) = v19 == 1;
      return sub_FD398();
    }
  }

  return result;
}

id sub_1A5974()
{
  v7 = sub_BD88(&unk_93E530, &unk_77C5F0);
  *&v8 = __chkstk_darwin(v7 - 8).n128_u64[0];
  v10 = &v47 - v9;
  v11 = [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel] attributedText];
  if (v11)
  {
    if (v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_hasMoreButton] == 1 && v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_isCollapsed] == 1)
    {
      if (v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_alwaysShowsMoreButtonWhenCollapsed] == 1)
      {
        v12 = v11;
        [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setHidden:0];
LABEL_23:

        return [v0 setNeedsLayout];
      }

      v12 = v11;
      v14 = [v11 length];
      v15 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton];
      if (!v14)
      {
        [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setHidden:1];
        goto LABEL_23;
      }

      v16 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_collapsedNumberOfLines];
      type metadata accessor for ExpandableTextView();
      sub_75D650();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        v4 = v17;
        v3 = v18;
        v21 = fabs(v17);
        if (v17 > 1.79769313e308)
        {
          v21 = 1.79769313e308;
        }

        v22 = 0.0;
        if (v21 == 0.0)
        {
          goto LABEL_22;
        }

        top = UIEdgeInsetsZero.top;
        left = UIEdgeInsetsZero.left;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
        v2 = v12;
        v25 = [v0 traitCollection];
        v26 = type metadata accessor for ExpandableTextView.MeasurementsCacheKey();
        v27 = objc_allocWithZone(v26);
        v28 = &v27[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
        *v28 = UIEdgeInsetsZero.top;
        v28[1] = left;
        v28[2] = bottom;
        v28[3] = right;
        *&v27[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] = v20;
        v29 = &v27[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize];
        *v29 = v4;
        *(v29 + 1) = 0x7FEFFFFFFFFFFFFFLL;
        *&v27[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection] = v25;
        *&v27[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText] = v2;
        v48.receiver = v27;
        v48.super_class = v26;
        v1 = objc_msgSendSuper2(&v48, "init");
        if (qword_93C5F0 == -1)
        {
LABEL_15:
          v30 = qword_9482F8;
          v31 = [qword_9482F8 objectForKey:v1];
          if (v31)
          {
            v32 = v31;

            v22 = *&v32[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements + 8];
          }

          else
          {
            v33 = qword_93C5E8;
            v32 = v2;
            if (v33 != -1)
            {
              swift_once();
            }

            v34 = sub_7666D0();
            v35 = sub_BE38(v34, qword_9482E0);
            v36 = *(v34 - 8);
            (*(v36 + 16))(v10, v35, v34);
            (*(v36 + 56))(v10, 0, 1, v34);
            sub_766B00();
            sub_766B20();
            sub_766B10();
            v38 = v37;
            v40 = v39;
            v42 = v41;

            sub_10A2C(v10, &unk_93E530, &unk_77C5F0);
            v22 = top + bottom + v38;
            v43 = type metadata accessor for ExpandableTextView.CacheValue();
            v44 = objc_allocWithZone(v43);
            v45 = &v44[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements];
            *v45 = v4;
            v45[1] = v22;
            *(v45 + 2) = v40;
            *(v45 + 3) = v42;
            v47.receiver = v44;
            v47.super_class = v43;
            v46 = objc_msgSendSuper2(&v47, "init");
            [v30 setObject:v46 forKey:v1];
          }

LABEL_22:
          [v15 setHidden:v3 >= v22];
          goto LABEL_23;
        }
      }

      swift_once();
      goto LABEL_15;
    }
  }

  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_moreButton] setHidden:1];
  return [v0 setNeedsLayout];
}

id sub_1A5F58(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ExpandableTextView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t (*sub_1A6074(void *a1))()
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) numberOfLines];
  return sub_1A60D4;
}

uint64_t (*sub_1A611C(void *a1))()
{
  v2 = *v1;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel;
  a1[1] = *v1;
  a1[2] = v3;
  *a1 = [*(v2 + v3) lineBreakMode];
  return sub_1A617C;
}

id sub_1A61A0()
{
  v1 = [*(*v0 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) font];

  return v1;
}

void sub_1A61E4(void *a1)
{
  [*(*v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel) setFont:a1];
}

void (*sub_1A6238(void *a1))(id *a1)
{
  v3 = *(*v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel);
  a1[1] = v3;
  *a1 = [v3 font];
  return sub_1A62A0;
}

void sub_1A62A0(id *a1)
{
  v1 = *a1;
  [a1[1] setFont:?];
}

uint64_t sub_1A6350(uint64_t a1)
{
  swift_getObjectType();
  sub_1ED18(a1, v11, &unk_93FBD0, &qword_77DFA0);
  if (!v12)
  {
    sub_10A2C(v11, &unk_93FBD0, &qword_77DFA0);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v3 = (v1 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins);
  v4 = &v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins];
  if (*(v1 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins) != *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_layoutMargins] || v3[1] != v4[1] || v3[2] != v4[2] || v3[3] != v4[3] || *(v1 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines) != *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines] || *(v1 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize) != *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize] || *(v1 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize + 8) != *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize + 8] || (sub_BE70(0, &qword_94AB00, NSObject_ptr), v5 = *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_traitCollection], v6 = sub_76A1C0(), v5, (v6 & 1) == 0))
  {

    goto LABEL_14;
  }

  v7 = *&v10[OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_attributedText];
  v8 = sub_76A1C0();

  return v8 & 1;
}

Swift::Int sub_1A6570()
{
  sub_76AA90();
  sub_7697C0();
  sub_76AA40(*(v0 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_numberOfLines));
  v1 = v0 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize;
  v2 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642920MeasurementsCacheKey_fittingSize);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_76AA60(*&v2);
  v3 = *(v1 + 8);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_76AA60(*&v3);
  sub_76A1D0();
  sub_76A1D0();
  return sub_76AA70();
}

uint64_t sub_1A66F0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1ED18(a1, v17, &unk_93FBD0, &qword_77DFA0);
  v4 = v18;
  if (v18)
  {
    v5 = sub_B170(v17, v18);
    v6 = *(v4 - 8);
    v7 = __chkstk_darwin(v5);
    v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_76A930();
    (*(v6 + 8))(v9, v4);
    sub_BEB8(v17);
  }

  else
  {
    v10 = 0;
  }

  v16.receiver = v1;
  v16.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v16, "isEqual:", v10);
  swift_unknownObjectRelease();
  if (v11)
  {
    sub_1ED18(a1, v17, &unk_93FBD0, &qword_77DFA0);
    if (v18)
    {
      if (swift_dynamicCast())
      {
        v12 = v15[1];
        v13 = JUMeasurementsEqual();

        return v13;
      }
    }

    else
    {
      sub_10A2C(v17, &unk_93FBD0, &qword_77DFA0);
    }
  }

  return 0;
}

uint64_t sub_1A6914(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_76A510();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_10A2C(v10, &unk_93FBD0, &qword_77DFA0);
  return v8 & 1;
}

Swift::Int sub_1A69D0()
{
  sub_76AA90();
  v1 = (v0 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements);
  v2 = *(v0 + OBJC_IVAR____TtCC18ASMessagesProvider18ExpandableTextViewP33_22EA8C57047A2D7BD3210E46FB89642910CacheValue_measurements);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_76AA60(*&v2);
  v3 = v1[1];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_76AA60(*&v3);
  v4 = v1[2];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_76AA60(*&v4);
  v5 = v1[3];
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_76AA60(*&v5);
  return sub_76AA70();
}

id sub_1A6ADC()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_9482F8 = result;
  return result;
}

double sub_1A6B10(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString;
  v5 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_languageAwareString);
  if (v5)
  {
    v6 = v5;
    v7 = sub_75E120();
    v9 = v8;

    if (!v3)
    {
      if (!v9)
      {
        return result;
      }

      v3 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if (!a1)
    {
      return result;
    }

    v9 = 0;
    v7 = 0;
  }

  v11 = v3;
  v12 = sub_75E120();
  v14 = v13;

  if (!v9)
  {
    if (!v14)
    {
      return result;
    }

    goto LABEL_17;
  }

  if (!v14)
  {
LABEL_17:

LABEL_18:
    v17 = v11;
    v18 = sub_75E130();

    if (v18)
    {
      v3 = 0;
    }

    else
    {
      v19 = v17;
    }

LABEL_21:
    v20 = *(v2 + v4);
    *(v2 + v4) = v3;
    v21 = v3;

    v22 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider18ExpandableTextView_textLabel);
    if (v3)
    {
      v23 = sub_75E0D0();
    }

    else
    {
      v23 = 0;
    }

    [v22 setAttributedText:v23];

    sub_1A5974();
    return result;
  }

  if (v7 != v12 || v9 != v14)
  {
    v16 = sub_76A950();

    if (v16)
    {
      return result;
    }

    goto LABEL_18;
  }

  return result;
}

double sub_1A6D2C(uint64_t a1, int a2, int a3, void *a4, double a5)
{
  v160 = a4;
  v155 = a3;
  v168 = a2;
  v6 = sub_BD88(&qword_9540B0, qword_792620);
  v164 = *(v6 - 8);
  v165 = v6;
  __chkstk_darwin(v6);
  v163 = v147 - v7;
  v8 = sub_7615B0();
  v156 = *(v8 - 8);
  v157 = v8;
  __chkstk_darwin(v8);
  v158 = v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7615D0();
  v11 = *(v10 - 8);
  v161 = v10;
  v162 = v11;
  __chkstk_darwin(v10);
  v159 = v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_766D70();
  v166 = *(v13 - 8);
  v167 = v13;
  __chkstk_darwin(v13);
  v174 = v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v183 = v147 - v16;
  __chkstk_darwin(v17);
  v184 = v147 - v18;
  __chkstk_darwin(v19);
  v185 = v147 - v20;
  __chkstk_darwin(v21);
  v186 = v147 - v22;
  __chkstk_darwin(v23);
  v182 = v147 - v24;
  __chkstk_darwin(v25);
  v187 = v147 - v26;
  __chkstk_darwin(v27);
  v176 = v147 - v28;
  v29 = sub_767030();
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v153 = v147 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v154 = v147 - v33;
  __chkstk_darwin(v34);
  v36 = v147 - v35;
  __chkstk_darwin(v37);
  v181 = v147 - v38;
  __chkstk_darwin(v39);
  v150 = v147 - v40;
  __chkstk_darwin(v41);
  v151 = v147 - v42;
  __chkstk_darwin(v43);
  v173 = v147 - v44;
  __chkstk_darwin(v45);
  v148 = v147 - v46;
  __chkstk_darwin(v47);
  v149 = v147 - v48;
  __chkstk_darwin(v49);
  v178 = v147 - v50;
  __chkstk_darwin(v51);
  v179 = v147 - v52;
  __chkstk_darwin(v53);
  v180 = v147 - v54;
  __chkstk_darwin(v55);
  v188 = v147 - v56;
  __chkstk_darwin(v57);
  v59 = v147 - v58;
  __chkstk_darwin(v60);
  v172 = v147 - v61;
  __chkstk_darwin(v62);
  v64 = v147 - v63;
  __chkstk_darwin(v65);
  v67 = v147 - v66;
  __chkstk_darwin(v68);
  v70 = v147 - v69;
  __chkstk_darwin(v71);
  v177 = v147 - v72;
  v73 = sub_765020();
  if (v73)
  {
  }

  v169 = v73;
  v175 = v59;
  v190 = a1;
  v171 = v36;
  sub_767020();
  if (qword_93D728 != -1)
  {
    swift_once();
  }

  v191 = sub_7666D0();
  sub_BE38(v191, qword_99ED70);
  sub_766FF0();
  v74 = v30;
  v77 = *(v30 + 8);
  v75 = v30 + 8;
  v76 = v77;
  v77(v64, v29);
  v78 = v29;
  v79 = v168;
  v147[3] = ~v168;
  sub_767010();
  v77(v67, v78);
  v80 = (v79 & 1) == 0;
  v81 = v78;
  if (v80)
  {
    v82 = 4;
  }

  else
  {
    v82 = 0;
  }

  v147[2] = v82;
  sub_767000();
  v193 = v76;
  v194 = v75;
  v76(v70, v78);
  v83 = sub_764FE0();
  if (v83)
  {
    v84 = v83;
    sub_75E120();
  }

  v85 = *(v74 + 16);
  v189 = v74 + 16;
  v192 = v85;
  v85(v64, v177, v78);
  sub_766D50();
  sub_766D90();
  v152 = sub_7670D0();
  swift_allocObject();
  v170 = sub_767090();
  v86 = v188;
  sub_767020();
  if (qword_93D740 != -1)
  {
    swift_once();
  }

  v87 = sub_BE38(v191, qword_99EDB8);
  v88 = v175;
  v147[1] = v87;
  sub_766FF0();
  v89 = v193;
  v193(v86, v81);
  sub_767010();
  v89(v88, v81);
  v90 = v172;
  sub_767000();
  v89(v64, v81);
  sub_765010();
  v91 = v90;
  v92 = v192;
  v192(v64, v91, v81);
  sub_766D50();
  v93 = v188;
  sub_766D90();
  sub_767020();
  if (qword_93D748 != -1)
  {
    swift_once();
  }

  sub_BE38(v191, qword_99EDD0);
  sub_766FF0();
  v89(v93, v81);
  sub_767010();
  v89(v88, v81);
  sub_767000();
  v89(v64, v81);
  v94 = sub_764FB0();
  if (v94)
  {
    v95 = v94;
    sub_75E120();

    v92 = v192;
  }

  v92(v64, v180, v81);
  sub_766D50();
  sub_766D90();
  v96 = v188;
  sub_767020();
  if (qword_93D750 != -1)
  {
    swift_once();
  }

  sub_BE38(v191, qword_99EDE8);
  v97 = v175;
  sub_766FF0();
  v98 = v193;
  v193(v96, v81);
  sub_767010();
  v98(v97, v81);
  sub_767000();
  v98(v64, v81);
  v99 = sub_764FC0();
  if (v99)
  {
    v100 = v99;
    sub_75E120();

    v192(v64, v179, v81);
  }

  else
  {
    v92(v64, v179, v81);
  }

  sub_766D50();
  sub_766D90();
  sub_767020();
  if (qword_93D738 != -1)
  {
    swift_once();
  }

  v101 = sub_BE38(v191, qword_99EDA0);
  v102 = v148;
  v147[0] = v101;
  sub_766FF0();
  v103 = v193;
  v193(v64, v81);
  v104 = v149;
  sub_767010();
  v103(v102, v81);
  sub_767000();
  v103(v104, v81);
  v105 = sub_765000();
  if (v105)
  {
    v106 = v105;
    sub_75E120();
  }

  v107 = v192;
  v192(v64, v178, v81);
  sub_766D50();
  sub_766D90();
  sub_767020();
  v108 = v191;
  if (qword_93D730 != -1)
  {
    v146 = v191;
    swift_once();
    v108 = v146;
  }

  sub_BE38(v108, qword_99ED88);
  v109 = v150;
  sub_766FF0();
  v110 = v193;
  v193(v64, v81);
  v111 = v151;
  sub_767010();
  v110(v109, v81);
  v112 = v173;
  sub_767000();
  v110(v111, v81);
  v204._object = 0x80000000007D32E0;
  v204._countAndFlagsBits = 0xD000000000000012;
  v205._countAndFlagsBits = 0;
  v205._object = 0xE000000000000000;
  sub_75B750(v204, v205);
  v107(v64, v112, v81);
  sub_766D50();
  sub_766D90();
  v113 = v188;
  sub_767020();
  v114 = v175;
  sub_766FF0();
  v115 = v110;
  v110(v113, v81);
  sub_767010();
  v110(v114, v81);
  sub_767000();
  v110(v64, v81);
  v116 = sub_765020();
  v117 = v174;
  if (v116)
  {
    sub_765710();

    v115 = v193;
  }

  v192(v64, v181, v81);
  sub_766D50();
  sub_766D90();
  sub_767020();
  v118 = v153;
  sub_766FF0();
  v115(v64, v81);
  v119 = v154;
  sub_767010();
  v115(v118, v81);
  v120 = v171;
  sub_767000();
  v115(v119, v81);
  if (sub_765020())
  {
    v121 = sub_765700();

    if (v121)
    {
      sub_75E120();
    }
  }

  v192(v64, v120, v81);
  sub_766D50();
  sub_766D90();
  v122 = v117;
  if (qword_93C8C8 != -1)
  {
    swift_once();
  }

  v123 = v157;
  v124 = sub_BE38(v157, qword_99C700);
  (*(v156 + 16))(v158, v124, v123);
  v125 = v167;
  v203[3] = v167;
  v203[4] = &protocol witness table for LabelPlaceholder;
  v126 = sub_B1B4(v203);
  v127 = v166;
  v128 = *(v166 + 16);
  v128(v126, v176, v125);
  v202[3] = v125;
  v202[4] = &protocol witness table for LabelPlaceholder;
  v129 = sub_B1B4(v202);
  v128(v129, v187, v125);
  v201[3] = v125;
  v201[4] = &protocol witness table for LabelPlaceholder;
  v130 = sub_B1B4(v201);
  v128(v130, v182, v125);
  v200[3] = v125;
  v200[4] = &protocol witness table for LabelPlaceholder;
  v131 = sub_B1B4(v200);
  v128(v131, v186, v125);
  v199[3] = v125;
  v199[4] = &protocol witness table for LabelPlaceholder;
  v132 = sub_B1B4(v199);
  v128(v132, v185, v125);
  v198[3] = v125;
  v198[4] = &protocol witness table for LabelPlaceholder;
  v133 = sub_B1B4(v198);
  v128(v133, v184, v125);
  v197[3] = v125;
  v197[4] = &protocol witness table for LabelPlaceholder;
  v134 = sub_B1B4(v197);
  v128(v134, v183, v125);
  v196[3] = v125;
  v196[4] = &protocol witness table for LabelPlaceholder;
  v135 = sub_B1B4(v196);
  v128(v135, v122, v125);
  v195 = v170;
  sub_7665D0();
  v136 = v159;
  sub_7615C0();
  v137 = [v160 traitCollection];
  sub_1A884C(&qword_94E350, &type metadata accessor for ProductReviewCustomLayout, &protocol conformance descriptor for ProductReviewCustomLayout);
  v138 = v163;
  v139 = v161;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v140 = v165;
  sub_7673F0();
  v142 = v141;

  (*(v164 + 8))(v138, v140);
  (*(v162 + 8))(v136, v139);
  v143 = *(v127 + 8);
  v143(v174, v125);
  v144 = v193;
  v193(v171, v81);
  v143(v183, v125);
  v144(v181, v81);
  v143(v184, v125);
  v144(v173, v81);
  v143(v185, v125);
  v144(v178, v81);
  v143(v186, v125);
  v144(v179, v81);
  v143(v182, v125);
  v144(v180, v81);
  v143(v187, v125);
  v144(v172, v81);
  v143(v176, v125);
  v144(v177, v81);
  return v142;
}

double sub_1A8148()
{
  v0 = sub_BD88(&qword_943FD0, &unk_7995F0);
  v49 = *(v0 - 8);
  __chkstk_darwin(v0);
  v48 = &v38 - v1;
  v47 = sub_75FA00();
  v46 = *(v47 - 8);
  __chkstk_darwin(v47);
  v43 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v45 = &v38 - v4;
  v52 = sub_BD88(&qword_946810, &qword_783360);
  v44 = *(v52 - 8);
  __chkstk_darwin(v52);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v51 = &v38 - v7;
  v8 = sub_BD88(&unk_94F1F0, &qword_782290);
  v41 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v50 = sub_7656C0();
  v11 = *(v50 - 8);
  __chkstk_darwin(v50);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_765030();
  v15 = sub_1A884C(&unk_955EE0, &type metadata accessor for Review, &protocol conformance descriptor for Review);
  sub_75C750();
  v16 = v55[0];
  if (!v55[0])
  {
    return 0.0;
  }

  swift_getKeyPath();
  v40 = v0;
  sub_75C7B0();

  sub_765580();
  v18 = v17;
  v39 = *(v11 + 8);
  v39(v13, v50);
  swift_getKeyPath();
  sub_75C7B0();

  v19 = v55[0];
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v56.receiver = v21;
  v56.super_class = v20;
  v23 = objc_msgSendSuper2(&v56, "init");
  v55[3] = v14;
  v55[4] = v15;
  v55[0] = v16;
  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v41 + 8))(v10, v8);

  v24 = v51;
  sub_75C800();
  v25 = v45;
  sub_75C740();
  swift_getKeyPath();
  sub_75C7B0();

  sub_765630();
  v27 = v26;
  v39(v13, v50);
  sub_134D8(v55, v53);
  v28 = v23;
  sub_BD88(&unk_944DA0, &unk_77EB70);
  swift_dynamicCast();
  v29 = v44;
  (*(v44 + 16))(v42, v24, v52);
  sub_768FA0();
  v30 = v48;
  sub_769060();
  v31 = v54;
  v32 = v43;
  sub_75F980();
  sub_1A884C(&qword_94FA60, &type metadata accessor for ComponentLayoutOptions, &protocol conformance descriptor for ComponentLayoutOptions);
  v33 = v47;
  LOBYTE(v20) = sub_76A520();
  v34 = *(v46 + 8);
  v34(v32, v33);
  sub_1A6D2C(v31, v20 & 1, v20 & 1, v28, v27);
  v36 = v35;

  (*(v49 + 8))(v30, v40);
  v34(v25, v33);
  (*(v29 + 8))(v51, v52);

  sub_BEB8(v55);
  return v36;
}

uint64_t sub_1A884C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A8898()
{
  v7 = sub_769960();
  v0 = *(v7 - 8);
  __chkstk_darwin(v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_769920();
  __chkstk_darwin(v3);
  v4 = sub_7683C0();
  __chkstk_darwin(v4 - 8);
  v6[1] = sub_12EA98();
  sub_7683B0();
  v8 = _swiftEmptyArrayStorage;
  sub_1A937C(&qword_9483F0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_BD88(&qword_9483F8, qword_78C180);
  sub_1A93C4(&unk_948400, &qword_9483F8, qword_78C180);
  sub_76A5A0();
  (*(v0 + 104))(v2, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v7);
  result = sub_769990();
  qword_9483E8 = result;
  return result;
}

uint64_t sub_1A8AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_opt_self() sharedInstance];
  v17[0] = 0;
  LODWORD(a4) = [v10 setCategory:a3 mode:a4 options:a5 error:v17];

  if (a4)
  {
    v11 = v17[0];
  }

  else
  {
    v12 = v17[0];
    sub_756F70();

    swift_willThrow();
    if (qword_93DEF0 != -1)
    {
      swift_once();
    }

    v13 = sub_768FF0();
    sub_BE38(v13, qword_9A0400);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77E280;
    sub_768540();
    swift_getErrorValue();
    v17[3] = v16;
    v14 = sub_B1B4(v17);
    (*(*(v16 - 1) + 16))(v14);
    sub_7685E0();
    sub_BDD0(v17);
    sub_768EA0();
  }

  return sub_1A9090(a1, a2, &unk_886EC0, sub_1A979C, &unk_886ED8);
}

uint64_t sub_1A8DA0(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 sharedInstance];
  v6 = [v5 categoryOptions];

  if ((v6 & 1) == 0)
  {
    v7 = [v4 sharedInstance];
    v15[0] = 0;
    v8 = [v7 setCategory:AVAudioSessionCategoryPlayback mode:AVAudioSessionModeDefault options:1 error:v15];

    if (v8)
    {
      v9 = v15[0];
    }

    else
    {
      v10 = v15[0];
      sub_756F70();

      swift_willThrow();
      if (qword_93DEF0 != -1)
      {
        swift_once();
      }

      v11 = sub_768FF0();
      sub_BE38(v11, qword_9A0400);
      sub_BD88(&qword_93FD00, &unk_77DF10);
      sub_7685F0();
      *(swift_allocObject() + 16) = xmmword_77E280;
      sub_768540();
      swift_getErrorValue();
      v15[3] = v14;
      v12 = sub_B1B4(v15);
      (*(*(v14 - 1) + 16))(v12);
      sub_7685E0();
      sub_BDD0(v15);
      sub_768EA0();
    }
  }

  return sub_1A9090(a1, a2, &unk_886F60, sub_1A9758, &unk_886F78);
}

uint64_t sub_1A9090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v8 = sub_768380();
  v21 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_7683C0();
  v11 = *(v20 - 8);
  __chkstk_darwin(v20);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12EA98();
  v14 = sub_769970();
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = a4;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = v19;
  v16 = _Block_copy(aBlock);
  sub_F714(a1, a2);

  sub_7683A0();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1A937C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_1A93C4(&qword_9406F0, &qword_940350, &unk_77F850);
  sub_76A5A0();
  sub_769980();
  _Block_release(v16);

  (*(v21 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v20);
}

double sub_1A9364(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1A937C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A93C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_1A9418(uint64_t a1, uint64_t a2)
{
  v4 = sub_768380();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_7683C0();
  v8 = *(v15 - 8);
  __chkstk_darwin(v15);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93C5F8 != -1)
  {
    swift_once();
  }

  v14[1] = qword_9483E8;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  aBlock[4] = sub_1A9710;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23F0CC;
  aBlock[3] = &unk_886F28;
  v12 = _Block_copy(aBlock);
  sub_F714(a1, a2);
  sub_7683A0();
  v16 = _swiftEmptyArrayStorage;
  sub_1A937C(&qword_9406E0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_BD88(&qword_940350, &unk_77F850);
  sub_1A93C4(&qword_9406F0, &qword_940350, &unk_77F850);
  sub_76A5A0();
  sub_769980();
  _Block_release(v12);
  (*(v5 + 8))(v7, v4);
  (*(v8 + 8))(v10, v15);

  return result;
}

uint64_t sub_1A9718()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1A975C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

double sub_1A97AC(uint64_t a1)
{
  v2 = sub_759B00();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  (*(v7 + 8))(v9, v6);
  sub_5C8B80(a1, v5);
  sub_75DA40();
  sub_759AA0();
  v11 = v10;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v5, v2);
  return v11;
}

double sub_1A99C4()
{
  v0 = sub_75DAB0();
  v56 = *(v0 - 8);
  v57 = v0;
  __chkstk_darwin(v0);
  v2 = &v52[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = sub_759B00();
  v60 = *(v3 - 8);
  v61 = v3;
  __chkstk_darwin(v3);
  v59 = &v52[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v58 = &v52[-v6];
  __chkstk_darwin(v7);
  v9 = &v52[-v8];
  v10 = sub_7656C0();
  v54 = *(v10 - 8);
  v55 = v10;
  __chkstk_darwin(v10);
  v12 = &v52[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_BD88(&unk_94F1F0, &qword_782290);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v52[-v15];
  sub_764C80();
  sub_1AA0D4(&qword_951430, &type metadata accessor for Action, &protocol conformance descriptor for Action);
  sub_75C750();
  if (!v63)
  {
    return 0.0;
  }

  v62 = v63;

  sub_BD88(&unk_952540, &qword_7918A0);
  if (swift_dynamicCast())
  {
    sub_B170(&v63, *(&v64 + 1));
    v53 = sub_762A20();
    sub_BEB8(&v63);
  }

  else
  {
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    sub_1AA11C(&v63);
    v53 = 0;
  }

  swift_getKeyPath();
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  (*(v14 + 8))(v16, v13);
  if (v63 == 1)
  {
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    v19 = v18;
    v21 = v20;
    (*(v54 + 8))(v12, v55);
    sub_75C720();
    sub_5C8B80(v2, v9);
    (*(v56 + 8))(v2, v57);
    v22 = sub_527DE4();
    swift_getObjectType();
    sub_2524B8(v9, v22, v19, v21);
    v17 = v23;

    swift_unknownObjectRelease();
    (*(v60 + 8))(v9, v61);
  }

  else
  {
    v24 = ASKDeviceTypeGetCurrent();
    v25 = sub_769240();
    v27 = v26;
    v28 = sub_769240();
    v30 = v60;
    if (v25 != v28 || v27 != v29)
    {
      sub_76A950();
    }

    sub_75C720();
    v31 = v58;
    sub_5C8B80(v2, v58);
    (*(v56 + 8))(v2, v57);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765630();
    v33 = v32;
    v35 = v34;
    (*(v54 + 8))(v12, v55);
    v36 = v61;
    (*(v30 + 16))(v59, v31, v61);
    v37 = sub_527DE4();
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v41 = sub_764C60();
    v43 = v42;
    v44 = sub_764C70();
    if (v44)
    {
    }

    v45 = v44 != 0;
    swift_getObjectType();
    v46 = sub_527DE4();
    swift_getObjectType();
    v47 = sub_3DB210(v46);
    swift_unknownObjectRelease();
    v48 = v59;
    sub_251BC4(v59, v37, v41, v43, v45, v47, v53 & 1, v33, v35, UIEdgeInsetsZero.top, left, bottom, right);
    v17 = v49;

    swift_unknownObjectRelease();

    v50 = *(v30 + 8);
    v50(v48, v36);
    v50(v58, v36);
  }

  return v17;
}

uint64_t sub_1AA0D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AA11C(uint64_t a1)
{
  v2 = sub_BD88(&unk_9513E0, &qword_7A38B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1AA194(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v27 = a1;
  v25 = a2;
  v26 = a3;
  v3 = sub_BD88(&unk_94F1F0, &qword_782290);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  v7 = sub_7656C0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75DA20();
  sub_765630();
  v12 = v11;
  v14 = v13;
  v15 = *(v8 + 8);
  v15(v10, v7);
  sub_75DAA0();
  swift_getKeyPath();
  sub_768750();

  (*(v4 + 8))(v6, v3);
  v16 = v29;
  sub_75DA20();
  sub_765580();
  v18 = v17;
  v15(v10, v7);
  v19 = sub_75DA30();
  v20 = type metadata accessor for SnapshotPageTraitEnvironment();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_pageContainerSize];
  *v22 = v18;
  *(v22 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v21[OBJC_IVAR____TtC18ASMessagesProvider28SnapshotPageTraitEnvironment_traitCollection] = v19;
  v28.receiver = v21;
  v28.super_class = v20;
  v23 = objc_msgSendSuper2(&v28, "init");
  (*(*(v25 + 8) + 16))(v16, v23, v27, v12, v14);
}

uint64_t sub_1AA434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v25 = a5;
  v23 = a2;
  v7 = sub_75DAB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_BD88(&unk_944DB0, &unk_799A90);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_7601F0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_75C720();
  sub_763C00();
  (*(v8 + 8))(v10, v7);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_10A2C(v13, &unk_944DB0, &unk_799A90);
  }

  (*(v15 + 32))(v17, v13, v14);
  v19 = sub_1AA738(v24);
  __chkstk_darwin(v19);
  *(&v23 - 2) = v17;
  sub_3A06DC(sub_F81F0, (&v23 - 4), v19);
  v21 = v20;

  if (v21 >> 62)
  {
    if (!sub_76A860())
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (*(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_5:
    v22._rawValue = v21;
    sub_75A070(v22);
  }

LABEL_6:

  return (*(v15 + 8))(v17, v14);
}

double *sub_1AA738(uint64_t a1)
{
  v2 = sub_764930();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v21 - v7;
  v9 = sub_BD88(&unk_94F1F0, &qword_782290);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v21 - v11;
  swift_getKeyPath();
  v24 = a1;
  sub_75C7B0();

  swift_getKeyPath();
  sub_768750();

  v14 = *(v10 + 8);
  v13 = v10 + 8;
  v23 = v14;
  v14(v12, v9);
  v22 = *(v3 + 104);
  v22(v5, enum case for Shelf.ContentType.todayCard(_:), v2);
  v21[2] = sub_1AAB98();
  LOBYTE(a1) = sub_7691C0();
  v15 = *(v3 + 8);
  v15(v5, v2);
  v15(v8, v2);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    v21[1] = v13;
    sub_75C7B0();

    swift_getKeyPath();
    sub_768750();

    v23(v12, v9);
    v22(v5, enum case for Shelf.ContentType.miniTodayCard(_:), v2);
    v16 = sub_7691C0();
    v15(v5, v2);
    v15(v8, v2);
    if ((v16 & 1) == 0)
    {
      sub_BD88(&qword_944DC8, &qword_7848C8);
      sub_75C760();
      if (v26)
      {
        sub_10914(&v25, v27);
        sub_B170(v27, v27[3]);
        v17 = sub_75E950();
        if (v17)
        {
          v18 = v17;
          sub_BD88(&unk_93F5C0, &unk_77C600);
          v19 = swift_allocObject();
          *(v19 + 16) = xmmword_77D9F0;
          *(v19 + 32) = v18;
          sub_BEB8(v27);
          return v19;
        }

        sub_BEB8(v27);
      }

      else
      {
        sub_10A2C(&v25, &unk_944DD0, &unk_7848D0);
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1AAB28@<X0>(uint64_t *a1@<X8>)
{
  sub_7601E0();
  sub_7601C0();
  result = sub_765330();
  *a1 = result;
  return result;
}

unint64_t sub_1AAB98()
{
  result = qword_944DC0;
  if (!qword_944DC0)
  {
    sub_764930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_944DC0);
  }

  return result;
}

void sub_1AAC90(void *a1)
{
  v13 = [a1 viewControllerForKey:UITransitionContextFromViewControllerKey];
  if (v13)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      sub_2B49D4(v3, a1, 1);
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      v6 = OBJC_IVAR____TtC18ASMessagesProvider27AnimatedTransitionWithTasks_tasks;
      swift_beginAccess();
      v7 = *(v1 + v6);
      v8 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + v6) = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_7BB70(0, *(v7 + 2) + 1, 1, v7);
        *(v1 + v6) = v7;
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_7BB70((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      v12 = &v7[3 * v11];
      *(v12 + 4) = sub_1ABCA4;
      *(v12 + 5) = v5;
      *(v12 + 48) = 2;
      *(v1 + v6) = v7;
      swift_endAccess();
    }

    else
    {
    }
  }
}

void sub_1AAE48(void *a1)
{
  v2 = v1;
  v89 = sub_768380();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v85 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_7683C0();
  v86 = *(v87 - 8);
  __chkstk_darwin(v87);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_7683E0();
  v84 = *(v91 - 8);
  __chkstk_darwin(v91);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v81 = &v77 - v10;
  v11 = [a1 viewControllerForKey:{UITransitionContextToViewControllerKey, sub_B584C(0)}];
  if (v11)
  {
    v12 = v11;
    [a1 finalFrameForViewController:v11];
  }

  else
  {
    v12 = [a1 containerView];
    [v12 bounds];
  }

  v17 = v13;
  v18 = v14;
  v19 = v15;
  v20 = v16;

  v21 = &v1[OBJC_IVAR____TtC18ASMessagesProvider23BouncyFromRectAnimation_fromRect];
  v22 = v1[OBJC_IVAR____TtC18ASMessagesProvider23BouncyFromRectAnimation_fromRect + 32];
  if (v22)
  {
    v96.origin.x = v17;
    v96.origin.y = v18;
    v96.size.width = v19;
    v96.size.height = v20;
    v23 = CGRectGetWidth(v96) * 0.2;
    v97.origin.x = v17;
    v97.origin.y = v18;
    v97.size.width = v19;
    v97.size.height = v20;
    v24 = CGRectGetHeight(v97) * 0.2;
    v98.origin.x = v17;
    v98.origin.y = v18;
    v98.size.width = v19;
    v98.size.height = v20;
    v99 = CGRectInset(v98, v23, v24);
    x = v99.origin.x;
    y = v99.origin.y;
    width = v99.size.width;
    height = v99.size.height;
  }

  else
  {
    v25 = v21[2];
    height = v21[3];
    width = v25;
    v26 = *v21;
    y = v21[1];
    x = v26;
  }

  v27 = x;
  v100.origin.x = x;
  v28 = y;
  v100.origin.y = y;
  v29 = width;
  v100.size.width = width;
  v30 = height;
  v100.size.height = height;
  v83 = CGRectGetWidth(v100);
  v101.origin.x = v17;
  v101.origin.y = v18;
  v101.size.width = v19;
  v101.size.height = v20;
  v82 = CGRectGetWidth(v101);
  v102.origin.x = v27;
  v102.origin.y = v28;
  v102.size.width = v29;
  v102.size.height = v30;
  v80 = CGRectGetHeight(v102);
  v103.origin.x = v17;
  v103.origin.y = v18;
  v103.size.width = v19;
  v103.size.height = v20;
  v79 = CGRectGetHeight(v103);
  v104.origin.x = v27;
  x = v27;
  v104.origin.y = v28;
  v104.size.width = v29;
  width = v29;
  v104.size.height = v30;
  height = v30;
  MidX = CGRectGetMidX(v104);
  v105.origin.x = v17;
  v105.origin.y = v18;
  v105.size.width = v19;
  v105.size.height = v20;
  v77 = CGRectGetMidX(v105);
  v106.origin.x = v27;
  v106.origin.y = v28;
  v31 = v28;
  v106.size.width = v29;
  v106.size.height = v30;
  MidY = CGRectGetMidY(v106);
  v107.origin.x = v17;
  v107.origin.y = v18;
  v107.size.width = v19;
  v107.size.height = v20;
  v33 = CGRectGetMidY(v107);
  v34 = sqrt((v83 - v82) * (v83 - v82) + (v80 - v79) * (v80 - v79));
  v35 = sqrt((MidX - v77) * (MidX - v77) + (MidY - v33) * (MidY - v33));
  if (v34 > v35)
  {
    v35 = v34;
  }

  v80 = v35 / 0.7 / v35;
  v108.origin.x = v17;
  v108.origin.y = v18;
  v108.size.width = v19;
  v108.size.height = v20;
  v36 = CGRectGetMidX(v108);
  v37 = x;
  v109.origin.x = x;
  v109.origin.y = v31;
  v109.size.width = width;
  v38 = height;
  v109.size.height = height;
  v39 = v36 - CGRectGetMidX(v109);
  v83 = v17;
  v110.origin.x = v17;
  v40 = v18;
  v110.origin.y = v18;
  v79 = v19;
  v110.size.width = v19;
  v82 = v20;
  v110.size.height = v20;
  MinY = CGRectGetMinY(v110);
  v111.origin.x = v37;
  v111.origin.y = v31;
  v111.size.width = width;
  v111.size.height = v38;
  v42 = MinY - CGRectGetMinY(v111);
  v43 = [a1 viewForKey:UITransitionContextToViewKey];
  v44 = v43;
  if (v43)
  {
    v45 = y + v42;
    v46 = x + v39;
    v47 = v43;
    v48 = [a1 containerView];
    [v48 addSubview:v47];

    [v47 setFrame:{v46, v45, width, height}];
    if (v22)
    {
      [v47 setAlpha:0.0];
    }
  }

  [v44 layoutIfNeeded];
  CATransform3DMakeTranslation(&aBlock, -v39, -v42, 0.0);
  v49 = sub_769210();
  v50 = [objc_opt_self() animationWithKeyPath:v49];

  v51 = objc_opt_self();
  v52 = v50;
  v53 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setFromValue:v53];

  v54 = *&CATransform3DIdentity.m33;
  *&aBlock.m31 = *&CATransform3DIdentity.m31;
  *&aBlock.m33 = v54;
  v55 = *&CATransform3DIdentity.m43;
  *&aBlock.m41 = *&CATransform3DIdentity.m41;
  *&aBlock.m43 = v55;
  v56 = *&CATransform3DIdentity.m13;
  *&aBlock.m11 = *&CATransform3DIdentity.m11;
  *&aBlock.m13 = v56;
  v57 = *&CATransform3DIdentity.m23;
  *&aBlock.m21 = *&CATransform3DIdentity.m21;
  *&aBlock.m23 = v57;
  v58 = [v51 valueWithCATransform3D:&aBlock];
  [v52 setToValue:v58];

  [v52 setDamping:16.0];
  [v52 setMass:1.0];
  [v52 setStiffness:150.0];
  [v52 setInitialVelocity:v80];
  v59 = v52;
  [v59 settlingDuration];
  [v59 setDuration:?];
  [v59 setFillMode:kCAFillModeBackwards];

  width = *&v44;
  if (*&v44 != 0.0)
  {
    v60 = [*&width layer];
    v61 = sub_769210();
    [v60 addAnimation:v59 forKey:v61];
  }

  [v59 settlingDuration];
  sub_12EA98();
  v62 = sub_769970();
  sub_7683D0();
  v63 = v81;
  sub_768450();
  height = *(v84 + 8);
  (*&height)(v8, v91);
  v64 = swift_allocObject();
  *(v64 + 16) = a1;
  *(v64 + 24) = v2;
  *&aBlock.m21 = sub_1ABBCC;
  *&aBlock.m22 = v64;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_23F0CC;
  *&aBlock.m14 = &unk_886FC8;
  v65 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  x = COERCE_DOUBLE(v2);

  sub_7683A0();
  *&aBlock.m11 = _swiftEmptyArrayStorage;
  sub_4C81C();
  sub_BD88(&qword_940350, &unk_77F850);
  sub_4C874();
  v66 = v85;
  v67 = v89;
  sub_76A5A0();
  sub_769930();
  _Block_release(v65);

  (*(v88 + 8))(v66, v67);
  (*(v86 + 8))(v6, v87);
  (*&height)(v63, v91);
  v68 = objc_opt_self();
  v69 = swift_allocObject();
  v70 = x;
  v71 = width;
  *(v69 + 16) = x;
  *(v69 + 24) = v71;
  *(v69 + 32) = v83;
  *(v69 + 40) = v40;
  v72 = v82;
  *(v69 + 48) = v79;
  *(v69 + 56) = v72;
  *&aBlock.m21 = sub_1ABC5C;
  *&aBlock.m22 = v69;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_23F0CC;
  *&aBlock.m14 = &unk_887018;
  v73 = _Block_copy(&aBlock);
  v74 = *&v71;
  v75 = *&v70;

  *&aBlock.m21 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  aBlock.m22 = 0.0;
  *&aBlock.m11 = _NSConcreteStackBlock;
  *&aBlock.m12 = 1107296256;
  *&aBlock.m13 = sub_3D6D80;
  *&aBlock.m14 = &unk_887040;
  v76 = _Block_copy(&aBlock);
  [v68 animateWithDuration:129 delay:v73 options:v76 animations:0.35 completion:0.0];

  _Block_release(v76);
  _Block_release(v73);
}

id sub_1ABA60(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  sub_B584C(1);
  result = [a6 setFrame:{a1, a2, a3, a4}];
  if (a6)
  {

    return [a6 setAlpha:1.0];
  }

  return result;
}

id sub_1ABB34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BouncyFromRectAnimation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1ABB8C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1ABC04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1ABC1C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1ABC6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1ABCA4()
{
  v1 = [*(v0 + 16) tabBar];
  [v1 setHidden:0];
}

void sub_1ABD10(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_768C60();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_onSelect];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView] = 0;
  v15 = &v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_previousLayoutWidth];
  *v15 = 0;
  v15[8] = 1;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionCalculator] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;
  v16 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v17 = sub_768AB0();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_tokens] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout] = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout()) init];
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout;
  *(*&v22[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate + 8) = &off_887118;
  swift_unknownObjectWeakAssign();
  v24 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v22[v23] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView;
  v26 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView];
  *&v22[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView] = v24;
  v27 = v24;

  if (!v27)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = [objc_opt_self() clearColor];
  [v27 setBackgroundColor:v28];

  v29 = *&v22[v25];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v29 setDataSource:v22];
  v30 = *&v22[v25];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v30 setDelegate:v22];
  v31 = *&v22[v25];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v31 setShowsHorizontalScrollIndicator:0];
  v32 = *&v22[v25];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v32 setShowsVerticalScrollIndicator:0];
  v33 = *&v22[v25];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v33 setBouncesHorizontally:1];
  v34 = *&v22[v25];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v34 setClipsToBounds:0];
  if (!*&v22[v25])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v22 addSubview:?];
  v35 = *&v22[v25];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v10;
  v45[1] = ObjectType;
  [v35 setPreservesSuperviewLayoutMargins:1];
  v37 = *&v22[v25];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for GuidedSearchTokenCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = v37;
  sub_769BD0();
  v40 = sub_769210();

  [v39 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v40];

  v41 = *&v22[v25];
  if (v41)
  {
    memset(v46, 0, sizeof(v46));
    v42 = v41;
    sub_768C20();
    sub_10A2C(v46, &unk_93FBD0, &qword_77DFA0);
    sub_769E70();

    (*(v11 + 8))(v13, v36);
    v43 = [v22 traitCollection];

    [*&v22[v23] invalidateLayout];
    sub_BD88(&qword_9477F0, qword_780200);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_77E280;
    *(v44 + 32) = sub_767890();
    *(v44 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v44 + 48) = sub_767B80();
    *(v44 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
    sub_769F40();

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1AC2DC()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    Width = CGRectGetWidth(v11);

    [v3 setFrame:{0.0, 0.0, Width, 60.0}];
    v5 = [v1 traitCollection];
    v6 = sub_7699E0();

    if ((v6 & 1) != 0 && (v1[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_previousLayoutWidth + 8] & 1) == 0)
    {
      v7 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_previousLayoutWidth];
      [v1 bounds];
      if (v7 <= 834.0 == CGRectGetWidth(v12) > 834.0)
      {

        [*&v1[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout] invalidateLayout];
      }
    }

    [v1 bounds];
    v8 = CGRectGetWidth(v13);
    v9 = &v1[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_previousLayoutWidth];
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_tokens) = a2;

  if (*(a3 + 16))
  {
    v8 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView);
    if (!v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    sub_757640();
    v9 = v8;
    isa = sub_769450().super.isa;
    [v9 deleteItemsAtIndexPaths:isa];
  }

  if (!*(a5 + 16))
  {
    return;
  }

  v11 = *(a1 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  sub_757640();
  v12 = v11;
  v13 = sub_769450().super.isa;
  [v12 insertItemsAtIndexPaths:v13];
}

void sub_1AC654(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_1AC6B0();
    }
  }
}

void sub_1AC6B0()
{
  if (*(*(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout) + OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_opt_self();
    v10 = sub_1AF1A8;
    v11 = v1;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_23F0CC;
    v9 = &unk_887218;
    v4 = _Block_copy(&v6);

    v10 = sub_1AF1B0;
    v11 = v2;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_3D6D80;
    v9 = &unk_887240;
    v5 = _Block_copy(&v6);

    [v3 animateWithDuration:0 delay:v4 usingSpringWithDamping:v5 initialSpringVelocity:0.3 options:0.0 animations:27.0 completion:0.0];
    _Block_release(v5);
    _Block_release(v4);
  }
}

void sub_1AC8A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView);
    v3 = Strong;
    v4 = v2;

    if (v2)
    {
      [v4 setContentOffset:{0.0, 0.0}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AC938(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout);

    v4[OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled] = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout);

    [v7 invalidateLayout];
  }
}

void sub_1ACA04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v7 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_768AB0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_1ADA98(a3, &v4[v14]);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionCalculator;
  swift_beginAccess();
  *&v4[v15] = a1;

  sub_1ED18(a3, v9, &unk_93FF30, &unk_77DB10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_10A2C(v9, &unk_93FF30, &unk_77DB10);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);

    [v4 bounds];
    sub_75F4B0();
    (*(v11 + 8))(v13, v10);
  }

  v16 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView;
  v17 = *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_764280();
  swift_allocObject();
  v18 = v17;
  v19 = sub_764220();
  v20 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator] = v19;

  if (*&v4[v20])
  {

    sub_764250();

    if (*&v4[v20])
    {

      sub_764240();
    }
  }

  sub_7614F0();
  swift_allocObject();

  v21 = sub_761500();
  v22 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsScrollObserver;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsScrollObserver] = v21;

  if (*&v4[v22])
  {
    v23 = *&v4[v16];
    if (v23)
    {

      v24.super.super.super.isa = v23;
      isa = v24.super.super.super.isa;
      sub_7614D0(v24);

      return;
    }

LABEL_13:
    __break(1u);
  }
}

uint64_t type metadata accessor for GuidedSearchTokenPaletteView(uint64_t a1)
{
  result = qword_948520;
  if (!qword_948520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ACE48(uint64_t a1)
{
  sub_1ACF18(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1ACF18(uint64_t a1)
{
  if (!qword_948530)
  {
    sub_768AB0();
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_948530);
    }
  }
}

id sub_1AD0E0(void *a1, uint64_t a2)
{
  type metadata accessor for GuidedSearchTokenCell();
  sub_769BD0();
  v3 = sub_769210();

  isa = sub_757550().super.isa;
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v5 = v5;
    sub_1AD208(v14);
    v8 = v15;
    if (v15)
    {
      v10 = v14[1];
      v9 = v14[2];
      v11 = v14[0];
      v12 = v16;

      sub_47C360(v11, v10, v9, v8, v12 & 1);

      return v7;
    }

    else
    {
    }
  }

  return v5;
}

void sub_1AD208(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_tokens;
  v5 = *(*(v2 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_tokens) + 16);
  v6 = sub_7575A0();
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v6 < 0 || v6 >= v5)
  {
    goto LABEL_6;
  }

  v12 = sub_7575A0();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v2 + v4);
    if (v12 < *(v13 + 16))
    {
      v14 = v13 + 40 * v12;
      v8 = *(v14 + 32);
      v9 = *(v14 + 40);
      v10 = *(v14 + 48);
      v11 = *(v14 + 56);
      v7 = *(v14 + 64);

LABEL_6:
      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;
      *(a1 + 32) = v7;
      return;
    }
  }

  __break(1u);
}

__n128 sub_1AD7E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AD7FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AD844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1AD898()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_tokens);
  v2 = *(v1 + 16);

  v3 = 0;
LABEL_2:
  v4 = 40 * v3;
  while (1)
  {
    if (v2 == v3)
    {

      return;
    }

    if (v3 >= *(v1 + 16))
    {
      break;
    }

    ++v3;
    v5 = v4 + 40;
    v6 = *(v1 + v4 + 64);
    v4 += 40;
    if (v6)
    {
      v8 = *(v1 + v5 - 8);
      v7 = *(v1 + v5);
      v10 = *(v1 + v5 + 8);
      v9 = *(v1 + v5 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_143DA0(0, *&_swiftEmptyArrayStorage[2] + 1, 1);
      }

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (*&v12 >= *&v11 >> 1)
      {
        sub_143DA0((*&v11 > 1uLL), *&v12 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v12 + 1;
      v13 = &_swiftEmptyArrayStorage[5 * *&v12];
      *(v13 + 4) = v8;
      *(v13 + 5) = v7;
      *(v13 + 6) = v10;
      *(v13 + 7) = v9;
      *(v13 + 64) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_1AD9E8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (sub_76A950() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (v12 || (sub_76A950() & 1) != 0)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

uint64_t sub_1ADA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double sub_1ADB08(uint64_t a1, void *a2, double a3, double a4)
{
  v6 = sub_76A920();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_762D10();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_47D874(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), a2, v12);
  v34 = *(a1 + 32);
  sub_26F08();
  v16 = qword_93D160;
  v30 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_7666D0();
  sub_BE38(v17, qword_99DCA8);
  sub_769E00();
  v18 = sub_7653B0();
  v32 = v18;
  v33 = sub_9BA34();
  v19 = sub_B1B4(v31);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  sub_765C30();
  sub_BEB8(v31);
  sub_762CD0();
  sub_762CE0();
  (*(v11 + 8))(v14, v10);
  sub_B170(v31, v32);
  sub_7665B0();
  sub_769DC0();
  (*(v7 + 104))(v9, enum case for FloatingPointRoundingRule.up(_:), v6);
  sub_769D80();
  v21 = v20;
  (*(v7 + 8))(v9, v6);
  v22 = [a2 traitCollection];
  v23 = sub_47DB74();

  if (v34 == 1)
  {
    [v23 size];
    v25 = v24;

    v26 = v25 + 5.0;
  }

  else
  {

    v26 = 0.0;
  }

  v27 = v21 + v26;
  sub_BEB8(v31);
  return v27;
}

id sub_1ADED4(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout];

  return [v2 invalidateLayout];
}

uint64_t sub_1ADF30(uint64_t a1, unsigned __int8 *a2)
{
  v83 = sub_BD88(&qword_941BC0, &qword_7811E0);
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v86 = &v79 - v4;
  v89 = sub_757640();
  v97 = *(v89 - 8);
  __chkstk_darwin(v89);
  v81 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v99 = &v79 - v7;
  __chkstk_darwin(v8);
  v93 = &v79 - v9;
  v10 = sub_BD88(&qword_948550, &qword_789CF8);
  __chkstk_darwin(v10);
  v96 = &v79 - v11;
  v90 = sub_BD88(&qword_948558, qword_789D00);
  v85 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = &v79 - v12;
  v13 = *(a1 + 16);
  v14 = _swiftEmptyArrayStorage;
  v95 = v13;
  v91 = a1;
  v92 = a2;
  if (v13)
  {
    v101[0] = _swiftEmptyArrayStorage;
    sub_143CDC(0, v13, 0);
    v14 = v101[0];
    v15 = (a1 + 56);
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v101[0] = v14;
      v19 = *(v14 + 2);
      v18 = *(v14 + 3);

      if (v19 >= v18 >> 1)
      {
        sub_143CDC((v18 > 1), v19 + 1, 1);
        v14 = v101[0];
      }

      *(v14 + 2) = v19 + 1;
      v20 = &v14[2 * v19];
      *(v20 + 4) = v17;
      *(v20 + 5) = v16;
      v15 += 5;
      --v13;
    }

    while (v13);
    a2 = v92;
  }

  v21 = *(a2 + 2);
  v22 = _swiftEmptyArrayStorage;
  v79 = v21;
  if (v21)
  {
    v101[0] = _swiftEmptyArrayStorage;
    sub_143CDC(0, v21, 0);
    v22 = v101[0];
    v23 = a2 + 56;
    v24 = v21;
    do
    {
      v26 = *(v23 - 1);
      v25 = *v23;
      v101[0] = v22;
      v28 = *(v22 + 2);
      v27 = *(v22 + 3);

      if (v28 >= v27 >> 1)
      {
        sub_143CDC((v27 > 1), v28 + 1, 1);
        v22 = v101[0];
      }

      *(v22 + 2) = v28 + 1;
      v29 = &v22[2 * v28];
      *(v29 + 4) = v26;
      *(v29 + 5) = v25;
      v23 += 40;
      --v24;
    }

    while (v24);
  }

  v101[0] = v22;
  v101[4] = v14;
  sub_BD88(&unk_947FF0, &unk_7801F0);
  sub_16194(&qword_94EC70, &unk_947FF0, &unk_7801F0, &protocol conformance descriptor for [A]);
  v30 = v84;
  sub_769190();

  v31 = v96;
  (*(v85 + 16))(v96, v30, v90);
  v32 = *(v10 + 36);
  sub_16194(&qword_948560, &qword_948558, qword_789D00, &protocol conformance descriptor for CollectionDifference<A>);
  sub_7696C0();
  sub_7696F0();
  if (*(v31 + v32) == v101[0])
  {
    v87 = _swiftEmptyArrayStorage;
    v100 = _swiftEmptyArrayStorage;
  }

  else
  {
    v94 = (v97 + 32);
    v100 = _swiftEmptyArrayStorage;
    v87 = _swiftEmptyArrayStorage;
    do
    {
      while (1)
      {
        v54 = sub_769710();
        v56 = *v55;
        v57 = *(v55 + 33);
        v58 = *v55;
        v59 = *(v55 + 8);
        v98 = *(v55 + 16);
        v60 = DebugMenuPage.debugSettingsProviders.getter(v58, v59, v98);
        v54(v101, 0, v60);
        sub_769700();
        if (v57 == 1)
        {
          break;
        }

        sub_7575B0();
        v61 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_7BA20(0, *(v100 + 2) + 1, 1, v100);
        }

        v62 = v98;
        v64 = *(v100 + 2);
        v63 = *(v100 + 3);
        if (v64 >= v63 >> 1)
        {
          v75 = v98;
          v76 = sub_7BA20((v63 > 1), v64 + 1, 1, v100);
          v62 = v75;
          v100 = v76;
        }

        v65 = sub_1AF1C0(v61, v59, v62);
        v66 = v99;
        v67 = v100;
        *(v100 + 2) = v64 + 1;
        (*(v97 + 32))(v67 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v64, v66, v89, v65);
        v31 = v96;
        sub_7696F0();
        if (*(v31 + v32) == v101[0])
        {
          goto LABEL_14;
        }
      }

      sub_7575B0();
      v68 = v56;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_7BA20(0, *(v87 + 2) + 1, 1, v87);
      }

      v69 = v59;
      v70 = v98;
      v72 = *(v87 + 2);
      v71 = *(v87 + 3);
      if (v72 >= v71 >> 1)
      {
        v77 = v98;
        v78 = sub_7BA20((v71 > 1), v72 + 1, 1, v87);
        v70 = v77;
        v69 = v59;
        v87 = v78;
      }

      v73 = sub_1AF1C0(v68, v69, v70);
      v74 = v87;
      *(v87 + 2) = v72 + 1;
      (*(v97 + 32))(v74 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v72, v93, v89, v73);
      v31 = v96;
      sub_7696F0();
    }

    while (*(v31 + v32) != v101[0]);
  }

LABEL_14:
  result = sub_10A2C(v31, &qword_948550, &qword_789CF8);
  v34 = v95;
  if (!v95)
  {
    v88 = _swiftEmptyArrayStorage;
LABEL_62:
    (*(v85 + 8))(v84, v90);
    return v87;
  }

  v35 = 0;
  v93 = (v91 + 32);
  v80 = (v97 + 32);
  v92 += 64;
  v88 = _swiftEmptyArrayStorage;
  v91 = v79 + 1;
  while (2)
  {
    if (v35 >= v34)
    {
      __break(1u);
    }

    else if (!__OFADD__(v35, 1))
    {
      v99 = v35 + 1;
      v36 = v92;
      v94 = v35;
      v37 = &v93[40 * v35];
      v38 = *(v37 + 1);
      v96 = *v37;
      v98 = v38;
      v40 = *(v37 + 2);
      v39 = *(v37 + 3);
      LODWORD(v97) = v37[32];
      v41 = v91;
      while (1)
      {
        if (!--v41)
        {
          goto LABEL_17;
        }

        v42 = *(v36 - 4);
        v43 = *(v36 - 3);
        v45 = *(v36 - 2);
        v44 = *(v36 - 1);
        v46 = *v36;
        v47 = v45 == v40 && v44 == v39;
        v48 = v47;
        if (v47)
        {
          break;
        }

        v36 += 40;
        result = sub_76A950();
        if (result)
        {
          v49 = v98;
          if (v98)
          {
            goto LABEL_31;
          }

LABEL_37:
          if (v43)
          {
            goto LABEL_40;
          }

          goto LABEL_38;
        }
      }

      v45 = v40;
      v49 = v98;
      if (!v98)
      {
        goto LABEL_37;
      }

LABEL_31:
      if (!v43)
      {
        goto LABEL_41;
      }

      result = v96;
      if (v96 == v42 && v49 == v43 || (result = sub_76A950(), (result & 1) != 0))
      {
LABEL_38:
        if (v48 || (result = sub_76A950(), (result & 1) != 0))
        {
          if (v97 == v46)
          {
LABEL_17:
            v35 = v99;
            v34 = v95;
            if (v99 == v95)
            {
              goto LABEL_62;
            }

            continue;
          }
        }
      }

LABEL_40:

LABEL_41:

      sub_7575B0();
      v50 = v86 + *(v83 + 48);
      (*v80)();
      *v50 = v42;
      *(v50 + 8) = v43;
      *(v50 + 16) = v45;
      *(v50 + 24) = v44;
      *(v50 + 32) = v46;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v88 = sub_7B9FC(0, *(v88 + 2) + 1, 1, v88);
      }

      v34 = v95;
      v35 = v99;
      v52 = *(v88 + 2);
      v51 = *(v88 + 3);
      if (v52 >= v51 >> 1)
      {
        v88 = sub_7B9FC((v51 > 1), v52 + 1, 1, v88);
      }

      v53 = v88;
      *(v88 + 2) = v52 + 1;
      result = sub_109C4(v86, v53 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v52, &qword_941BC0, &qword_7811E0);
      if (v35 != v34)
      {
        continue;
      }

      goto LABEL_62;
    }

    break;
  }

  __break(1u);
  return result;
}

void sub_1AE9B4(unsigned __int8 *a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_757640();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_BD88(&unk_948540, &unk_789CE8);
  __chkstk_darwin(v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v65 = &v55 - v13;
  v66 = v3;

  v14 = sub_1ADF30(v56, a1);
  v57 = v15;
  v58 = v14;
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v55 = a1;
    v63 = (v6 + 32);
    v64 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView;
    v59 = (v6 + 8);

    v19 = 0;
    v61 = v11;
    v62 = v17;
    v60 = v18;
    while (1)
    {
      v20 = v65;
      if (v19 == v18)
      {
        v21 = sub_BD88(&qword_941BC0, &qword_7811E0);
        (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
        v67 = v18;
      }

      else
      {
        if ((v19 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          return;
        }

        if (v19 >= *(v17 + 16))
        {
          goto LABEL_23;
        }

        v22 = v5;
        v23 = v17;
        v24 = v19;
        v25 = sub_BD88(&qword_941BC0, &qword_7811E0);
        v26 = *(v25 - 8);
        sub_1ED18(v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v24, v11, &qword_941BC0, &qword_7811E0);
        v67 = v24 + 1;
        v17 = v23;
        v5 = v22;
        (*(v26 + 56))(v11, 0, 1, v25);
      }

      sub_109C4(v11, v20, &unk_948540, &unk_789CE8);
      v27 = sub_BD88(&qword_941BC0, &qword_7811E0);
      if ((*(*(v27 - 8) + 48))(v20, 1, v27) == 1)
      {

        a1 = v55;
        break;
      }

      v28 = v20 + *(v27 + 48);
      v29 = *v28;
      v30 = *(v28 + 8);
      v32 = *(v28 + 16);
      v31 = *(v28 + 24);
      v33 = *(v28 + 32);
      v34 = v20;
      v35 = v5;
      (*v63)(v8, v34, v5);
      v36 = *&v66[v64];
      if (!v36)
      {
        goto LABEL_24;
      }

      v37 = v36;
      isa = sub_757550().super.isa;
      v39 = [v37 cellForItemAtIndexPath:isa];

      if (v39)
      {
        type metadata accessor for GuidedSearchTokenCell();
        if (swift_dynamicCastClass())
        {
          sub_47C360(v29, v30, v32, v31, v33);
        }

        v5 = v35;
        (*v59)(v8, v35);
      }

      else
      {
        v5 = v35;
        (*v59)(v8, v35);
      }

      v11 = v61;
      v17 = v62;
      v18 = v60;
      v19 = v67;
    }
  }

  v40 = *(v58 + 16);
  if (v40)
  {
    v41 = *&v66[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView];
    if (!v41)
    {
      goto LABEL_26;
    }

    v42 = v41;
    [v42 contentOffset];
    [v42 setContentOffset:0 animated:?];

    *(*&v66[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC18ASMessagesProvider44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) = 1;
  }

  v43 = *&v66[OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView];
  if (!v43)
  {
    goto LABEL_25;
  }

  v44 = v40 != 0;
  v45 = v43;

  v46 = swift_allocObject();
  v47 = v66;
  v46[2] = v66;
  v46[3] = a1;
  v48 = v57;
  v46[4] = v58;
  v46[5] = v17;
  v46[6] = v48;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1AF0F4;
  *(v49 + 24) = v46;
  v72 = sub_2EC28;
  v73 = v49;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_1EB578;
  v71 = &unk_887178;
  v50 = _Block_copy(&aBlock);
  v51 = v47;

  v52 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v44;
  *(v53 + 24) = v52;
  v72 = sub_1AF19C;
  v73 = v53;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_3D6D80;
  v71 = &unk_8871F0;
  v54 = _Block_copy(&aBlock);

  [v45 performBatchUpdates:v50 completion:v54];
  _Block_release(v54);
  _Block_release(v50);
}

uint64_t sub_1AF09C()
{

  return _swift_deallocObject(v0, 56, 7);
}

double sub_1AF114(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1AF12C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1AF164()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1AF1C8()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_onSelect);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_collectionView) = 0;
  v2 = v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_previousLayoutWidth;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionCalculator) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsScrollObserver) = 0;
  v3 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v4 = sub_768AB0();
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  sub_76A840();
  __break(1u);
}

double sub_1AF2C8(void *a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_768AB0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_1ED18(v2 + v11, v6, &unk_93FF30, &unk_77DB10);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10A2C(v6, &unk_93FF30, &unk_77DB10);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionCalculator;
    swift_beginAccess();
    if (*(v2 + v13))
    {
      swift_endAccess();

      [a1 frame];
      sub_75F500();

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      swift_endAccess();
    }
  }

  if (*(v2 + OBJC_IVAR____TtC18ASMessagesProvider28GuidedSearchTokenPaletteView_impressionsCoordinator))
  {

    sub_764260();
  }

  return result;
}

uint64_t sub_1AF558()
{
  v0 = sub_760500();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  sub_161DC(v7, qword_99B6F8);
  v8 = sub_BE38(v7, qword_99B6F8);
  if (qword_93C740 != -1)
  {
    swift_once();
  }

  v9 = sub_BE38(v0, qword_99BB00);
  v10 = *(v1 + 16);
  v10(v6, v9, v0);
  sub_396E8();
  v11 = sub_769FF0();
  if (qword_93C760 != -1)
  {
    swift_once();
  }

  v12 = sub_BE38(v0, qword_99BB60);
  v10(v3, v12, v0);
  v13 = sub_769FF0();
  v14 = *(v1 + 32);
  v14(v8, v6, v0);
  *(v8 + v7[5]) = v11;
  result = (v14)(v8 + v7[6], v3, v0);
  *(v8 + v7[7]) = v13;
  return result;
}

char *sub_1AF778(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(0);
  __chkstk_darwin(v10);
  v85 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_75FC90();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v82 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&qword_948660, qword_789EE8);
  __chkstk_darwin(v15);
  v17 = &v82 - v16;
  v18 = sub_BD88(&qword_93EBC0, qword_783DC0);
  __chkstk_darwin(v18 - 8);
  v83 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  v23 = sub_763DF0();
  v88 = *(v23 - 8);
  v89 = v23;
  __chkstk_darwin(v23);
  v86 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v84 = &v82 - v26;
  sub_763DD0();
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artwork] = 0;
  v27 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_id];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v27 + 4) = 0;
  v28 = *(v13 + 56);
  v28(&v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_itemType], 1, 1, v12);
  v29 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_labelMaxWidth];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold];
  *v30 = 0;
  v30[8] = 1;
  v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_allowsTruncation] = 2;
  v31 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkSize];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_configuration;
  if (qword_93C600 != -1)
  {
    swift_once();
  }

  v87 = v10;
  v33 = sub_BE38(v10, qword_99B6F8);
  sub_1B232C(v33, &v5[v32]);
  sub_75BB20();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label] = sub_75BB00();
  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView] = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v92.receiver = v5;
  v92.super_class = ObjectType;
  v34 = objc_msgSendSuper2(&v92, "initWithFrame:", a1, a2, a3, a4);
  v35 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  (*(v13 + 104))(v22, enum case for MetadataRibbonItemType.developer(_:), v12);
  v28(v22, 0, 1, v12);
  v36 = *(v15 + 48);
  sub_1ED18(&v34[v35], v17, &qword_93EBC0, qword_783DC0);
  sub_1ED18(v22, &v17[v36], &qword_93EBC0, qword_783DC0);
  v37 = *(v13 + 48);
  if (v37(v17, 1, v12) != 1)
  {
    v41 = v83;
    sub_1ED18(v17, v83, &qword_93EBC0, qword_783DC0);
    if (v37(&v17[v36], 1, v12) != 1)
    {
      v44 = v82;
      (*(v13 + 32))(v82, &v17[v36], v12);
      sub_1B23EC(&qword_948668, &type metadata accessor for MetadataRibbonItemType, &protocol conformance descriptor for MetadataRibbonItemType);
      v45 = v34;
      v46 = sub_7691C0();
      v47 = *(v13 + 8);
      v47(v44, v12);
      sub_10A2C(v22, &qword_93EBC0, qword_783DC0);
      v47(v41, v12);
      sub_10A2C(v17, &qword_93EBC0, qword_783DC0);
      v40 = v87;
      if (v46)
      {
        goto LABEL_11;
      }

LABEL_9:
      v43 = v84;
      sub_763DD0();
      goto LABEL_12;
    }

    v42 = v34;
    sub_10A2C(v22, &qword_93EBC0, qword_783DC0);
    (*(v13 + 8))(v41, v12);
    v40 = v87;
LABEL_8:
    sub_10A2C(v17, &qword_948660, qword_789EE8);
    goto LABEL_9;
  }

  v38 = v34;
  sub_10A2C(v22, &qword_93EBC0, qword_783DC0);
  v39 = v37(&v17[v36], 1, v12);
  v40 = v87;
  if (v39 != 1)
  {
    goto LABEL_8;
  }

  sub_10A2C(v17, &qword_93EBC0, qword_783DC0);
LABEL_11:
  v43 = v84;
  sub_763DE0();
LABEL_12:
  v48 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_metrics;
  v87 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v88 + 40))(&v34[v48], v43, v89);
  swift_endAccess();
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v52 = v34;
  [v52 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v53 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView;
  [*&v52[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView] setContentMode:0];
  v54 = *&v52[v53];
  sub_7590F0();

  v55 = *&v52[v53];
  v56 = &v52[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_configuration];
  v84 = v34;
  v57 = v85;
  sub_1B232C(&v52[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_configuration], v85);
  v58 = v55;
  v59 = [v52 traitCollection];

  v60.super.isa = v59;
  v61.super.isa = sub_7604E0(v60).super.isa;
  v62 = [(objc_class *)v59 preferredContentSizeCategory];
  v63 = sub_769B20();

  if (v63)
  {
    v64 = 3;
  }

  else
  {
    v64 = 1;
  }

  v65 = [objc_opt_self() configurationWithFont:v61.super.isa scale:v64];

  sub_1B2390(v57);
  sub_759120();

  v66 = *&v56[*(v40 + 28)];
  v67 = *&v52[v53];
  v68 = v66;
  sub_7590A0();

  v69 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label;
  [*&v52[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label] setTextColor:*&v56[*(v40 + 20)]];
  v70 = *&v52[v69];
  v71 = sub_760500();
  v91[3] = v71;
  v91[4] = sub_1B23EC(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
  v72 = sub_B1B4(v91);
  (*(*(v71 - 8) + 16))(v72, v56, v71);
  v73 = v70;
  sub_75BA60();

  v74 = *&v52[v69];
  v75 = v88;
  v76 = v86;
  v77 = v89;
  (*(v88 + 16))(v86, &v84[v87], v89);
  v78 = v74;
  v79 = sub_763DB0();
  (*(v75 + 8))(v76, v77);
  [v78 setNumberOfLines:v79];

  [v52 addSubview:*&v52[v69]];
  [v52 addSubview:*&v52[v53]];
  sub_BD88(&qword_9477F0, qword_780200);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_77B6D0;
  *(v80 + 32) = sub_767B80();
  *(v80 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_769F40();

  swift_unknownObjectRelease();

  return v52;
}

uint64_t sub_1B0244()
{
  ObjectType = swift_getObjectType();
  v19 = ObjectType;
  v2 = sub_7664F0();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_763DF0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_763E00();
  v9 = *(v20 - 8);
  *&v10 = __chkstk_darwin(v20).n128_u64[0];
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v0;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "layoutSubviews", v10, v19);
  v13 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label];
  v27 = sub_75BB20();
  v28 = &protocol witness table for UILabel;
  v26 = v13;
  v14 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView];
  v24 = sub_759210();
  v25 = &protocol witness table for UIView;
  v23 = v14;
  v15 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v6 + 16))(v8, &v0[v15], v5);
  v16 = v13;
  v17 = v14;
  sub_763D80();
  sub_75D650();
  sub_763DA0();
  (*(v21 + 8))(v4, v22);
  return (*(v9 + 8))(v12, v20);
}

double sub_1B053C(uint64_t a1, __n128 a2, double a3)
{
  v20[0] = a1;
  v4 = sub_763DF0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_763E00();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label);
  v20[12] = sub_75BB20();
  v20[13] = &protocol witness table for UILabel;
  v20[9] = v12;
  v13 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView);
  v20[7] = sub_759210();
  v20[8] = &protocol witness table for UIView;
  v20[4] = v13;
  v14 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_metrics;
  swift_beginAccess();
  (*(v5 + 16))(v7, v3 + v14, v4);
  v15 = v12;
  v16 = v13;
  sub_763D80();
  sub_763D90();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  return v18;
}

id sub_1B07FC(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4)
{
  v5 = v4;
  v28 = a4;
  v27 = sub_765240();
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_763DF0();
  v12 = *(v11 - 8);
  *&v13 = __chkstk_darwin(v11).n128_u64[0];
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_label];
  if (a3)
  {
    a3 = sub_769210();
  }

  [v16 setText:{a3, v13, v27, v28}];

  *&v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artwork] = a1;

  if (a1)
  {
    v17 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_metrics;
    swift_beginAccess();
    (*(v12 + 16))(v15, &v5[v17], v11);
    v18 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_configuration;
    swift_retain_n();
    v19 = [v5 traitCollection];
    v20 = sub_1B1748(a1, v15, &v5[v18], v19);
    v22 = v21;

    (*(v12 + 8))(v15, v11);
    v23 = &v5[OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkSize];
    *v23 = v20;
    *(v23 + 1) = v22;
    v24 = sub_759150();
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    v24(v29, 0);
    [v5 setNeedsLayout];
    sub_765250();
    sub_765210();
    (*(v8 + 8))(v10, v27);
    sub_765330();
    sub_75A110();
    sub_759210();
    sub_75A090();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_75A040();

    sub_10A2C(v29, &unk_9443A0, &unk_77E240);

    return [v5 setNeedsLayout];
  }

  else
  {

    return [v5 setNeedsLayout];
  }
}

void sub_1B0C00(objc_class *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(Strong + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_artworkView);

    v13.is_nil = (a2 & 1) == 0;
    v13.value.super.isa = a1;
    sub_759140(v13, v10);
  }

  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [v11 setNeedsLayout];
  }
}

void sub_1B0DFC(uint64_t a1)
{
  sub_763DF0();
  if (v1 <= 0x3F)
  {
    sub_DBB44(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for MetadataRibbonIconWithLabelView.Configuration(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1B0F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_760500();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B1048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_760500();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B1100(uint64_t a1)
{
  result = sub_760500();
  if (v2 <= 0x3F)
  {
    result = sub_396E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_1B1194(uint64_t a1, uint64_t a2)
{
  sub_75A110();
  sub_768900();
  sub_768ED0();
  v2 = sub_75D790();
  v3 = sub_75D7B0();
  sub_1B07FC(v2, v3, v4, v6);

  return result;
}

uint64_t sub_1B1248@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &qword_93EBC0, qword_783DC0);
}

uint64_t sub_1B12B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_itemType;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &qword_93EBC0, qword_783DC0);
  return swift_endAccess();
}

void sub_1B138C(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_labelMaxWidth;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_1B1458(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_truncationLegibilityThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1B1518()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1B155C(char a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1B160C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  return sub_1ED18(v1 + v3, a1, &unk_9443A0, &unk_77E240);
}

uint64_t sub_1B1674(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31MetadataRibbonIconWithLabelView_id;
  swift_beginAccess();
  sub_B33C8(a1, v1 + v3, &unk_9443A0, &unk_77E240);
  return swift_endAccess();
}