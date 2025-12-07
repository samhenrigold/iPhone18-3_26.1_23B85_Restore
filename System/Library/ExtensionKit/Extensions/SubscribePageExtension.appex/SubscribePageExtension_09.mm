id sub_100105BF4()
{
  v1 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  __chkstk_darwin(v1 - 8);
  v3 = &v31 - v2;
  v4 = type metadata accessor for TitleHeaderView(0);
  v32.receiver = v0;
  v32.super_class = v4;
  objc_msgSendSuper2(&v32, "prepareForReuse");
  v5 = &v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction];
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction];
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction + 8];
  *v5 = 0;
  *(v5 + 1) = 0;
  sub_1000164A8(v6, v7);
  v8 = type metadata accessor for Accessory(0);
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessory;
  swift_beginAccess();
  sub_10010AA88(v3, &v0[v9]);
  swift_endAccess();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView;
  if (!*&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView])
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

  v14 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork;
  v15 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork];
  if (v15)
  {
    v16 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView;
    v17 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView];

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

  sub_100100E7C(v15);

  v19 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork;
  v20 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork];
  if (v20)
  {
    v21 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView;
    v22 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView];

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

  sub_100100BDC(v20);

  v24 = &v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText];
  v26 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText];
  v25 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText + 8];
  if (v25)
  {
    v27 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel;
    v28 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel];

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

  sub_10010063C(v26, v25);

  return [*&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel] setText:0];
}

void sub_100105FD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel);
  if (v1)
  {
    v2 = [v1 text];
    if (v2)
    {
      v3 = v2;
      v4 = sub_100753094();
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

  v7 = [*(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleLabel) text];
  if (v7)
  {
    v8 = v7;
    v9 = sub_100753094();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v32 = v9;
  v33 = v11;
  v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel);
  if (v12)
  {
    v13 = [v12 text];
    if (v13)
    {
      v14 = v13;
      v15 = sub_100753094();
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
      sub_10000C518(&qword_10092FE70, &qword_1007A63F0);
      swift_arrayDestroy();
      sub_10000C518(&unk_100928A70, &unk_1007AC470);
      sub_10010ABC4();
      sub_100752FF4();

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
        v19 = sub_1002554F8(0, *(v19 + 2) + 1, 1, v19);
      }

      v27 = *(v19 + 2);
      v26 = *(v19 + 3);
      if (v27 >= v26 >> 1)
      {
        v19 = sub_1002554F8((v26 > 1), v27 + 1, 1, v19);
      }

      *(v19 + 2) = v27 + 1;
      v28 = &v19[16 * v27];
      *(v28 + 4) = v25;
      *(v28 + 5) = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_100106440()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for TitleHeaderView(0);
  v1 = objc_msgSendSuper2(&v7, "_accessibilitySupplementaryFooterViews");
  if (v1)
  {
    v2 = v1;
    v3 = sub_1007532A4();
  }

  else
  {
    v3 = 0;
  }

  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView];
  if (v4)
  {
    v5 = v4;

    sub_10000C518(&unk_1009259C0, &unk_1007A9270);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1007A5A00;
    *(v3 + 56) = sub_100016C60(0, &qword_100922300, UIView_ptr);
    *(v3 + 32) = v5;
  }

  return v3;
}

id sub_10010659C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100106748(uint64_t a1)
{
  type metadata accessor for TitleHeaderView.Style(319);
  if (v1 <= 0x3F)
  {
    sub_100106D6C(319, &qword_100928850, type metadata accessor for Accessory);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1001068C0(uint64_t a1, uint64_t a2, int *a3, __n128 a4)
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

  v12 = sub_10000C518(&unk_100940600, &qword_1007AC320);
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

  v15 = sub_100747134();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v13 = *(v15 - 8);
    v14 = a3[10];
    goto LABEL_9;
  }

  v16 = sub_100747144();
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

uint64_t sub_100106A9C(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v13 = sub_10000C518(&unk_100940600, &qword_1007AC320);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      v16 = sub_100747134();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[10];
      }

      else
      {
        result = sub_100747144();
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

void sub_100106C40(uint64_t a1)
{
  type metadata accessor for TitleHeaderView.TextConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_100106D6C(319, &qword_1009288C8, type metadata accessor for TitleHeaderView.TextConfiguration);
    if (v2 <= 0x3F)
    {
      sub_100747134();
      if (v3 <= 0x3F)
      {
        sub_100747144();
        if (v4 <= 0x3F)
        {
          sub_100106DC0(319);
          if (v5 <= 0x3F)
          {
            sub_100016C60(319, &qword_100923500, UIColor_ptr);
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

void sub_100106D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100754284();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100106DC0(uint64_t a1)
{
  if (!qword_1009288D0[0])
  {
    sub_100016C60(255, &qword_100923500, UIColor_ptr);
    v1 = sub_100754284();
    if (!v2)
    {
      atomic_store(v1, qword_1009288D0);
    }
  }
}

uint64_t sub_100106E4C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100750534();
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
      v13 = sub_100750B04();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_100106F84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100750534();
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
      v13 = sub_100750B04();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1001070A8(uint64_t a1)
{
  sub_100016C60(319, &qword_100923500, UIColor_ptr);
  if (v1 <= 0x3F)
  {
    sub_1001071A4();
    if (v2 <= 0x3F)
    {
      sub_100750534();
      if (v3 <= 0x3F)
      {
        sub_100750B04();
        if (v4 <= 0x3F)
        {
          sub_1001071F4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1001071A4()
{
  if (!qword_10092C930)
  {
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10092C930);
    }
  }
}

unint64_t sub_1001071F4()
{
  result = qword_1009289A0;
  if (!qword_1009289A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1009289A0);
  }

  return result;
}

unint64_t sub_10010725C()
{
  result = qword_1009289F0;
  if (!qword_1009289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009289F0);
  }

  return result;
}

id sub_1001072B0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, void *a22)
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
  v24 = sub_1007504F4();
  v297 = *(v24 - 8);
  v298 = v24;
  __chkstk_darwin(v24);
  v296 = v289 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_100750304();
  v293 = *(v295 - 8);
  __chkstk_darwin(v295);
  v292 = v289 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v337 = sub_100750B04();
  v352 = *(v337 - 8);
  __chkstk_darwin(v337);
  v294 = v289 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = sub_100747154();
  v318 = *(v320 - 8);
  __chkstk_darwin(v320);
  v319 = v289 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100747144();
  v315 = *(v29 - 8);
  v316 = v29;
  __chkstk_darwin(v29);
  v317 = v289 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100747134();
  v312 = *(v31 - 8);
  v313 = v31;
  __chkstk_darwin(v31);
  v314 = v289 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v322 = sub_100747184();
  v325 = *(v322 - 8);
  __chkstk_darwin(v322);
  v321 = v289 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100747174();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v304 = v289 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v349 = v289 - v38;
  __chkstk_darwin(v39);
  v348 = v289 - v40;
  __chkstk_darwin(v41);
  v340 = v289 - v42;
  v43 = sub_10000C518(&unk_100940600, &qword_1007AC320);
  __chkstk_darwin(v43 - 8);
  v302 = v289 - v44;
  v45 = sub_10074CD14();
  v333 = *(v45 - 8);
  v334 = v45;
  __chkstk_darwin(v45);
  v332 = v289 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100740E74();
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
  v58 = sub_10000C518(&qword_1009289F8, &unk_1007BE1C0);
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
  sub_10010A978(v342, v57, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v81 = sub_100753C14();
  *&v388 = v327;
  *(&v388 + 1) = v336;

  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
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

  sub_10074F1F4();
  v87 = v337;
  if (v88 && (v89 = [objc_opt_self() configurationWithFont:v81], v90 = sub_100753064(), , v91 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v90, v89), v90, v89, v51 = v343, v91))
  {
    [v91 size];
    sub_100750F34();
    swift_allocObject();
    v92 = sub_100750F14();
  }

  else
  {
    v94 = v51[6];
    v95 = sub_100750534();
    v96 = v292;
    (*(*(v95 - 8) + 16))(v292, v80 + v94, v95);
    v97 = v293;
    v98 = v295;
    (*(v293 + 104))(v96, enum case for FontSource.useCase(_:), v295);
    *(&v389 + 1) = v98;
    v390 = &protocol witness table for FontSource;
    v99 = sub_10000D134(&v388);
    (*(v97 + 16))(v99, v96, v98);

    v100 = v294;
    sub_100750B14();
    (*(v97 + 8))(v96, v98);
    sub_100750AF4();
    sub_10074F2A4();
    v101 = v296;
    sub_100750504();
    sub_100750474();

    (*(v297 + 8))(v101, v298);
    (*(v352 + 8))(v100, v87);
    sub_100750F34();
    swift_allocObject();
    v92 = sub_100750F14();
  }

  if (v92)
  {
    *(&v389 + 1) = sub_100750F34();
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
  v102 = sub_10074F3F4();
  v380 = v102;
  v381 = sub_10010AA40(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v103 = sub_10000D134(v379);
  (*(*(v102 - 8) + 104))(v103, enum case for Feature.measurement_with_labelplaceholder(_:), v102);
  v104 = v81;

  v57 = v104;
  sub_10074FC74();
  sub_10000C620(v379);
  v105 = v332;
  sub_10074CD04();
  sub_10074CCE4();
  (*(v333 + 8))(v105, v334);
  sub_100016B4C(&v388, v378, &unk_100928A00, &qword_1007A5AB0);
  v106 = v380;
  v107 = v381;
  v108 = sub_10000C888(v379, v380);
  v376 = v106;
  v377 = *(v107 + 8);
  v109 = sub_10000D134(v375);
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
  v115 = sub_10000D134(v369);
  v116 = *(v352 + 16);
  v116(v115, v111 + v113, v114);
  v117 = v110[10];
  v367 = v114;
  v368 = &protocol witness table for StaticDimension;
  v118 = sub_10000D134(v366);
  v116(v118, v111 + v117, v114);
  sub_100016B4C(&v385, &v360, &qword_10092BC30, &qword_1007AD5C0);
  v119 = *(&v361 + 1);
  if (*(&v361 + 1))
  {
    v120 = v362;
    v121 = sub_10000C888(&v360, *(&v361 + 1));
    *(&v364 + 1) = v119;
    v365 = *(v120 + 8);
    v122 = sub_10000D134(&v363);
    (*(*(v119 - 8) + 16))(v122, v121, v119);
    sub_10000C620(&v360);
  }

  else
  {
    sub_10000C8CC(&v360, &qword_10092BC30, &qword_1007AD5C0);
    v363 = 0u;
    v364 = 0u;
    v365 = 0;
  }

  v123 = v300;
  sub_100016B4C(&v382, v357, &qword_10092BC30, &qword_1007AD5C0);
  v124 = v358;
  v47 = v307;
  if (v358)
  {
    v125 = v359;
    v126 = sub_10000C888(v357, v358);
    *(&v361 + 1) = v124;
    v362 = *(v125 + 8);
    v127 = sub_10000D134(&v360);
    (*(*(v124 - 8) + 16))(v127, v126, v124);
    sub_10000C620(v357);
  }

  else
  {
    sub_10000C8CC(v357, &qword_10092BC30, &qword_1007AD5C0);
    v360 = 0u;
    v361 = 0u;
    v362 = 0;
  }

  v128 = v343;
  v129 = v306;
  sub_10000C824(v306 + v343[12], v357);
  sub_10000C824(v129 + v128[13], v356);
  v355 = &protocol witness table for Double;
  v354 = &type metadata for Double;
  v353 = 0x4020000000000000;
  sub_100747164();

  sub_10000C8CC(&v382, &qword_10092BC30, &qword_1007AD5C0);
  v51 = v128;
  sub_10000C8CC(&v385, &qword_10092BC30, &qword_1007AD5C0);
  sub_10010A9E0(v129, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_10000C620(v379);

  sub_10000C8CC(&v388, &unk_100928A00, &qword_1007A5AB0);
  v34 = v350;
  v93 = *(v351 + 56);
  v93(v123, 0, 1, v350);
  sub_100066578(v123, v338, &qword_1009289F8, &unk_1007BE1C0);
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
  sub_100016B4C(v342 + v57[6], v302, &unk_100940600, &qword_1007AC320);
  if ((*(v301 + 48))(v133, 1, v51) == 1)
  {
    sub_10000C8CC(v133, &unk_100940600, &qword_1007AC320);
    v47 = v132;
    goto LABEL_26;
  }

  sub_10010AAF8(v133, v305, type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
  v336 = sub_100753C14();
  *&v388 = v290;
  *(&v388 + 1) = v331;

  v134 = v308;
  sub_100740E54();
  sub_1000D5C0C();
  sub_1007542C4();
  v136 = v135;
  (*(v309 + 8))(v134, v132);

  if (v136)
  {
LABEL_31:
    if (*(v342 + v57[9]) == 2)
    {
      v306 = a18;
      v327 = a17;
      v140 = sub_10074F3F4();
      *(&v389 + 1) = v140;
      v302 = sub_10010AA40(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v390 = v302;
      v141 = sub_10000D134(&v388);
      LODWORD(v301) = enum case for Feature.measurement_with_labelplaceholder(_:);
      v142 = *(*(v140 - 8) + 104);
      v142(v141);
      v143 = v336;

      v144 = v143;
      sub_10074FC74();
      sub_10000C620(&v388);
      v145 = v332;
      sub_10074CD04();
      sub_10074CCE4();
      v336 = v93;
      v146 = v334;
      v147 = *(v333 + 8);
      v147(v145, v334);
      *(&v386 + 1) = v140;
      v387 = v302;
      v148 = sub_10000D134(&v385);
      (v142)(v148, v301, v140);
      v130 = v337;

      v149 = v144;
      v57 = sub_10074FC74();
      sub_10000C620(&v385);
      sub_10074CD04();
      sub_10074CCE4();

      v147(v145, v146);
      v131 = v328;
      sub_10010A9E0(v305, type metadata accessor for TitleHeaderView.TextConfiguration);

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
      v150 = sub_10074F3F4();
      v380 = v150;
      v381 = sub_10010AA40(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v151 = sub_10000D134(v379);
      (*(*(v150 - 8) + 104))(v151, enum case for Feature.measurement_with_labelplaceholder(_:), v150);

      v152 = v336;
      sub_10074FC74();
      sub_10000C620(v379);
      v153 = v332;
      v336 = v152;
      sub_10074CD04();
      sub_10074CCE4();
      (*(v333 + 8))(v153, v334);
      sub_100016B4C(&v388, v378, &unk_100928A00, &qword_1007A5AB0);
      v154 = v380;
      v155 = v381;
      v156 = sub_10000C888(v379, v380);
      v376 = v154;
      v377 = *(v155 + 8);
      v157 = sub_10000D134(v375);
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
      v162 = sub_10000D134(v369);
      v163 = v130;
      v164 = *(v352 + 16);
      v164(v162, v159 + v161, v163);
      v165 = v158[10];
      v367 = v163;
      v368 = &protocol witness table for StaticDimension;
      v166 = sub_10000D134(v366);
      v164(v166, v159 + v165, v163);
      sub_100016B4C(&v385, &v360, &qword_10092BC30, &qword_1007AD5C0);
      v167 = *(&v361 + 1);
      if (*(&v361 + 1))
      {
        v168 = v362;
        v169 = sub_10000C888(&v360, *(&v361 + 1));
        *(&v364 + 1) = v167;
        v365 = *(v168 + 8);
        v170 = sub_10000D134(&v363);
        (*(*(v167 - 8) + 16))(v170, v169, v167);
        sub_10000C620(&v360);
      }

      else
      {
        sub_10000C8CC(&v360, &qword_10092BC30, &qword_1007AD5C0);
        v363 = 0u;
        v364 = 0u;
        v365 = 0;
      }

      v171 = v351;
      sub_100016B4C(&v382, v357, &qword_10092BC30, &qword_1007AD5C0);
      v172 = v358;
      if (v358)
      {
        v173 = v359;
        v174 = sub_10000C888(v357, v358);
        *(&v361 + 1) = v172;
        v362 = *(v173 + 8);
        v175 = sub_10000D134(&v360);
        (*(*(v172 - 8) + 16))(v175, v174, v172);
        sub_10000C620(v357);
      }

      else
      {
        sub_10000C8CC(v357, &qword_10092BC30, &qword_1007AD5C0);
        v360 = 0u;
        v361 = 0u;
        v362 = 0;
      }

      v51 = v343;
      v176 = v305;
      sub_10000C824(v305 + v343[12], v357);
      sub_10000C824(v176 + v51[13], v356);
      v355 = &protocol witness table for Double;
      v354 = &type metadata for Double;
      v353 = 0x4020000000000000;
      v177 = v339;
      sub_100747164();
      sub_10000C8CC(&v382, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(&v385, &qword_10092BC30, &qword_1007AD5C0);
      sub_10000C8CC(&v388, &unk_100928A00, &qword_1007A5AB0);
      sub_10010A9E0(v176, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10000C620(v379);

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
    sub_10010A978(v328, v341, type metadata accessor for TitleHeaderView.TextConfiguration);
    sub_100016C60(0, &qword_100923AB0, UIFont_ptr);
    v331 = sub_100753C14();
    if (!v131)
    {
      goto LABEL_49;
    }

    v179 = v130;
    v48 = v326;
    *&v382 = v326;
    *(&v382 + 1) = v131;

    v50 = v308;
    sub_100740E54();
    sub_1000D5C0C();
    sub_1007542C4();
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

      sub_10074F1F4();
      if (v184 && (v185 = [objc_opt_self() configurationWithFont:v331], v186 = sub_100753064(), , v187 = objc_msgSend(objc_opt_self(), "_systemImageNamed:withConfiguration:", v186, v185), v186, v51 = v343, v185, v187))
      {
        [v187 size];
        sub_100750F34();
        swift_allocObject();
        v188 = sub_100750F14();
      }

      else
      {
        v189 = v130;
        v190 = v328;
        v191 = v51[6];
        v192 = sub_100750534();
        v193 = v190 + v191;
        v130 = v189;
        v194 = v292;
        (*(*(v192 - 8) + 16))(v292, v193, v192);
        v195 = v293;
        v196 = v295;
        (*(v293 + 104))(v194, enum case for FontSource.useCase(_:), v295);
        *(&v383 + 1) = v196;
        v384 = &protocol witness table for FontSource;
        v197 = sub_10000D134(&v382);
        (*(v195 + 16))(v197, v194, v196);

        v198 = v294;
        sub_100750B14();
        (*(v195 + 8))(v194, v196);
        sub_100750AF4();
        sub_10074F2A4();
        v199 = v296;
        sub_100750504();
        sub_100750474();

        (*(v297 + 8))(v199, v298);
        (*(v352 + 8))(v198, v130);
        sub_100750F34();
        swift_allocObject();
        v188 = sub_100750F14();
      }

      if (v188)
      {
        v200 = sub_100750F34();
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

      v201 = sub_10074F3F4();
      v380 = v201;
      v381 = sub_10010AA40(&qword_10092AC70, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v202 = sub_10000D134(v379);
      (*(*(v201 - 8) + 104))(v202, enum case for Feature.measurement_with_labelplaceholder(_:), v201);

      v203 = v331;
      sub_10074FC74();
      sub_10000C620(v379);
      v204 = v332;
      v331 = v203;
      sub_10074CD04();
      sub_10074CCE4();
      (*(v333 + 8))(v204, v334);
      sub_100016B4C(&v382, v378, &unk_100928A00, &qword_1007A5AB0);
      v205 = v380;
      v206 = v381;
      v207 = sub_10000C888(v379, v380);
      v376 = v205;
      v377 = *(v206 + 8);
      v208 = sub_10000D134(v375);
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
      v213 = sub_10000D134(v369);
      v214 = *(v352 + 16);
      v214(v213, v210 + v212, v130);
      v215 = v209[10];
      v367 = v130;
      v368 = &protocol witness table for StaticDimension;
      v216 = sub_10000D134(v366);
      v214(v216, v210 + v215, v130);
      sub_100016B4C(&v388, &v360, &qword_10092BC30, &qword_1007AD5C0);
      v217 = *(&v361 + 1);
      if (*(&v361 + 1))
      {
        v218 = v362;
        v219 = sub_10000C888(&v360, *(&v361 + 1));
        *(&v364 + 1) = v217;
        v365 = *(v218 + 8);
        v220 = sub_10000D134(&v363);
        (*(*(v217 - 8) + 16))(v220, v219, v217);
        sub_10000C620(&v360);
      }

      else
      {
        sub_10000C8CC(&v360, &qword_10092BC30, &qword_1007AD5C0);
        v363 = 0u;
        v364 = 0u;
        v365 = 0;
      }

      v221 = v344;
      v222 = v342;
      sub_100016B4C(&v385, v357, &qword_10092BC30, &qword_1007AD5C0);
      v223 = v358;
      if (v358)
      {
        v224 = v359;
        v225 = sub_10000C888(v357, v358);
        *(&v361 + 1) = v223;
        v362 = *(v224 + 8);
        v226 = sub_10000D134(&v360);
        (*(*(v223 - 8) + 16))(v226, v225, v223);
        sub_10000C620(v357);
      }

      else
      {
        sub_10000C8CC(v357, &qword_10092BC30, &qword_1007AD5C0);
        v360 = 0u;
        v361 = 0u;
        v362 = 0;
      }

      v227 = v345;
      v228 = v343;
      v229 = v341;
      sub_10000C824(v341 + v343[12], v357);
      sub_10000C824(v229 + v228[13], v356);
      v355 = &protocol witness table for Double;
      v354 = &type metadata for Double;
      v353 = 0x4020000000000000;
      sub_100747164();
      sub_10000C620(v379);
      sub_10000C8CC(&v382, &unk_100928A00, &qword_1007A5AB0);
      v230 = *(v222 + v336[9]);
      sub_10000C518(&qword_100928A10, &qword_1007AC450);
      v352 = *(v311 + 72);
      v231 = (*(v311 + 80) + 32) & ~*(v311 + 80);
      if (v230)
      {
        if (v230 != 1)
        {
          v259 = v352;
          v337 = swift_allocObject();
          v260 = v337 + v231;
          sub_100016B4C(v338, v337 + v231, &qword_1009289F8, &unk_1007BE1C0);
          v261 = v350;
          v262 = v351;
          (*(v351 + 16))(v260 + v259, v340, v350);
          (*(v262 + 56))(v260 + v259, 0, 1, v261);
          v263 = v303;
          sub_100016B4C(v260, v303, &qword_1009289F8, &unk_1007BE1C0);
          v264 = v291;
          sub_100066578(v263, v291, &qword_1009289F8, &unk_1007BE1C0);
          v265 = *(v262 + 48);
          v266 = (v262 + 32);
          v267 = v265(v264, 1, v261);
          v349 = (v262 + 32);
          if (v267 == 1)
          {
            sub_10000C8CC(v264, &qword_1009289F8, &unk_1007BE1C0);
            v268 = _swiftEmptyArrayStorage;
          }

          else
          {
            v269 = *v266;
            (*v266)(v304, v264, v261);
            v268 = _swiftEmptyArrayStorage;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v268 = sub_100255918(0, _swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
            }

            v271 = *(v268 + 2);
            v270 = *(v268 + 3);
            if (v271 >= v270 >> 1)
            {
              v268 = sub_100255918((v270 > 1), v271 + 1, 1, v268);
            }

            *(v268 + 2) = v271 + 1;
            v272 = &v268[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v271];
            v261 = v350;
            v269(v272, v304, v350);
            v264 = v291;
          }

          v273 = v303;
          sub_100016B4C(v260 + v352, v303, &qword_1009289F8, &unk_1007BE1C0);
          sub_100066578(v273, v264, &qword_1009289F8, &unk_1007BE1C0);
          if (v265(v264, 1, v261) == 1)
          {
            sub_10000C8CC(v264, &qword_1009289F8, &unk_1007BE1C0);
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
              v268 = sub_100255918(0, *(v268 + 2) + 1, 1, v268);
            }

            v57 = v338;
            v278 = *(v268 + 2);
            v277 = *(v268 + 3);
            if (v278 >= v277 >> 1)
            {
              v268 = sub_100255918((v277 > 1), v278 + 1, 1, v268);
            }

            *(v268 + 2) = v278 + 1;
            v275(&v268[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v278], v304, v350);
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
            v280 = sub_100750F34();
            swift_allocObject();
            v279 = sub_100750F14();
            v281 = &protocol witness table for LayoutViewPlaceholder;
          }

          *&v382 = v279;
          *(&v383 + 1) = v280;
          v384 = v281;
          sub_100016B4C(&v382, v379, &unk_100928A00, &qword_1007A5AB0);
          v282 = v336;
          v283 = *(v258 + v336[14]);
          v378[3] = &type metadata for CGFloat;
          v378[4] = &protocol witness table for CGFloat;
          v378[0] = v283;
          (*(v312 + 16))(v314, v258 + v336[10], v313);
          (*(v315 + 16))(v317, v258 + v282[11], v316);
          (*(v318 + 104))(v319, enum case for TitleHeaderLayout.AccessoryHorizontalAlignment.rightJustified(_:), v320);
          sub_100747104();
          sub_100753BA4();
          sub_10010AA40(&qword_100928A18, &type metadata accessor for TitleHeaderLayout, &protocol conformance descriptor for TitleHeaderLayout);
          v48 = v322;
          sub_100750404();
          v379[0] = v284;
          v379[1] = v285;
          sub_100753BB4();
          if (JUScreenClassGetMain() != 1)
          {

            (*(v325 + 8))(v47, v48);
            (*(v351 + 8))(v340, v350);
            sub_10010A9E0(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000C8CC(&v385, &qword_10092BC30, &qword_1007AD5C0);
            sub_10000C8CC(&v388, &qword_10092BC30, &qword_1007AD5C0);
            sub_10000C8CC(v339, &qword_1009289F8, &unk_1007BE1C0);
            sub_10000C8CC(v57, &qword_1009289F8, &unk_1007BE1C0);
            return sub_10000C8CC(&v382, &unk_100928A00, &qword_1007A5AB0);
          }

          v286 = v350;
          v51 = v351;
          v50 = v335;
          if (qword_100920AD0 != -1)
          {
            swift_once();
          }

          v287 = sub_10000D0FC(v343, qword_10097FF28);
          if (sub_10010A2FC(v328, v287))
          {

            (*(v325 + 8))(v47, v48);
            (*(v51 + 1))(v340, v286);
            sub_10010A9E0(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000C8CC(&v385, &qword_10092BC30, &qword_1007AD5C0);
            sub_10000C8CC(&v388, &qword_10092BC30, &qword_1007AD5C0);
            sub_10000C8CC(v339, &qword_1009289F8, &unk_1007BE1C0);
            sub_10000C8CC(v57, &qword_1009289F8, &unk_1007BE1C0);
            return sub_10000C8CC(&v382, &unk_100928A00, &qword_1007A5AB0);
          }

          if (qword_100920AD8 == -1)
          {
LABEL_111:
            v288 = sub_10000D0FC(v343, qword_10097FF40);
            sub_10010A2FC(v328, v288);

            (*(v325 + 8))(v47, v48);
            (*(v51 + 1))(v340, v350);
            sub_10010A9E0(v341, type metadata accessor for TitleHeaderView.TextConfiguration);
            sub_10000C8CC(&v385, &qword_10092BC30, &qword_1007AD5C0);
            sub_10000C8CC(&v388, &qword_10092BC30, &qword_1007AD5C0);
            sub_10000C8CC(v339, &qword_1009289F8, &unk_1007BE1C0);
            sub_10000C8CC(v57, &qword_1009289F8, &unk_1007BE1C0);
            return sub_10000C8CC(&v382, &unk_100928A00, &qword_1007A5AB0);
          }

LABEL_119:
          swift_once();
          goto LABEL_111;
        }

        v232 = v352;
        v337 = swift_allocObject();
        v233 = v337 + v231;
        sub_100016B4C(v338, v337 + v231, &qword_1009289F8, &unk_1007BE1C0);
        v235 = v350;
        v234 = v351;
        (*(v351 + 16))(v233 + v232, v340, v350);
        v236 = *(v234 + 56);
        v234 += 56;
        v236(v233 + v232, 0, 1, v235);
        sub_100016B4C(v339, v233 + 2 * v232, &qword_1009289F8, &unk_1007BE1C0);
        v237 = (v234 - 8);
        v348 = (v234 - 24);
        v238 = v235;
        v239 = _swiftEmptyArrayStorage;
        v240 = 3;
        v346 = v233;
        do
        {
          v241 = v347;
          sub_100016B4C(v233, v347, &qword_1009289F8, &unk_1007BE1C0);
          sub_100066578(v241, v227, &qword_1009289F8, &unk_1007BE1C0);
          if ((*v237)(v227, 1, v238) == 1)
          {
            sub_10000C8CC(v227, &qword_1009289F8, &unk_1007BE1C0);
          }

          else
          {
            v242 = *v348;
            (*v348)(v349, v227, v238);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v239 = sub_100255918(0, *(v239 + 2) + 1, 1, v239);
            }

            v244 = *(v239 + 2);
            v243 = *(v239 + 3);
            if (v244 >= v243 >> 1)
            {
              v239 = sub_100255918((v243 > 1), v244 + 1, 1, v239);
            }

            *(v239 + 2) = v244 + 1;
            v238 = v350;
            v242(&v239[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v244], v349, v350);
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
        sub_100016B4C(v338, v337 + v231, &qword_1009289F8, &unk_1007BE1C0);
        sub_100016B4C(v339, v248 + v245, &qword_1009289F8, &unk_1007BE1C0);
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
          sub_100016B4C(v248, v346, &qword_1009289F8, &unk_1007BE1C0);
          sub_100066578(v254, v221, &qword_1009289F8, &unk_1007BE1C0);
          if ((*v250)(v221, 1, v251) == 1)
          {
            sub_10000C8CC(v221, &qword_1009289F8, &unk_1007BE1C0);
          }

          else
          {
            v255 = *v349;
            (*v349)(v348, v221, v251);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v252 = sub_100255918(0, *(v252 + 2) + 1, 1, v252);
            }

            v257 = *(v252 + 2);
            v256 = *(v252 + 3);
            if (v257 >= v256 >> 1)
            {
              v252 = sub_100255918((v256 > 1), v257 + 1, 1, v252);
            }

            *(v252 + 2) = v257 + 1;
            v251 = v350;
            v255(&v252[((*(v351 + 80) + 32) & ~*(v351 + 80)) + *(v351 + 72) * v257], v348, v350);
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

BOOL sub_10010A2FC(void *a1, void *a2)
{
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  if ((sub_100753FC4() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5 || (a1[1] != a2[1] || v4 != v5) && (sub_100754754() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v6 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  if (sub_100750524() & 1) != 0 && *(a1 + v6[7]) == *(a2 + v6[7]) && *(a1 + v6[8]) == *(a2 + v6[8]) && (sub_100750AC4() & 1) != 0 && (sub_100750AC4())
  {
    return *(a1 + v6[11]) == *(a2 + v6[11]);
  }

  return 0;
}

BOOL sub_10010A41C(void *a1, void *a2)
{
  v4 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v5 = *(v4 - 1);
  __chkstk_darwin(v4);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10000C518(&unk_100940600, &qword_1007AC320);
  __chkstk_darwin(v8 - 8);
  v10 = (&v30 - v9);
  v11 = sub_10000C518(&qword_100928A30, &qword_1007AC458);
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  sub_100016C60(0, &qword_1009327F0, NSObject_ptr);
  if ((sub_100753FC4() & 1) == 0)
  {
    return 0;
  }

  v14 = a1[2];
  v15 = a2[2];
  if (v14)
  {
    if (!v15 || (a1[1] != a2[1] || v14 != v15) && (sub_100754754() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  if ((sub_100750524() & 1) == 0)
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

  if ((sub_100750AC4() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100750AC4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[11]) != *(a2 + v4[11]))
  {
    return 0;
  }

  v16 = type metadata accessor for TitleHeaderView.Style(0);
  if (!sub_10010A2FC((a1 + *(v16 + 20)), (a2 + *(v16 + 20))))
  {
    return 0;
  }

  v30 = v16;
  v17 = *(v16 + 24);
  v18 = *(v11 + 48);
  sub_100016B4C(a1 + v17, v13, &unk_100940600, &qword_1007AC320);
  v31 = v18;
  sub_100016B4C(a2 + v17, &v13[v18], &unk_100940600, &qword_1007AC320);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) != 1)
  {
    sub_100016B4C(v13, v10, &unk_100940600, &qword_1007AC320);
    v20 = v31;
    if (v19(&v13[v31], 1, v4) != 1)
    {
      sub_10010AAF8(&v13[v20], v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      v21 = sub_10010A2FC(v10, v7);
      sub_10010A9E0(v7, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10010A9E0(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_10000C8CC(v13, &unk_100940600, &qword_1007AC320);
      if (!v21)
      {
        return 0;
      }

      goto LABEL_23;
    }

    sub_10010A9E0(v10, type metadata accessor for TitleHeaderView.TextConfiguration);
LABEL_21:
    sub_10000C8CC(v13, &qword_100928A30, &qword_1007AC458);
    return 0;
  }

  if (v19(&v13[v31], 1, v4) != 1)
  {
    goto LABEL_21;
  }

  sub_10000C8CC(v13, &unk_100940600, &qword_1007AC320);
LABEL_23:
  v22 = v30;
  if (*(a1 + v30[7]) != *(a2 + v30[7]) || *(a1 + v30[8]) != *(a2 + v30[8]) || *(a1 + v30[9]) != *(a2 + v30[9]) || (sub_100747124() & 1) == 0)
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

    sub_100016C60(0, &qword_100923500, UIColor_ptr);
    v26 = v25;
    v27 = v24;
    v28 = sub_100753FC4();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  if (sub_100753FC4())
  {
    sub_100747144();
    sub_10010AA40(&qword_100928A38, &type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment, &protocol conformance descriptor for TitleHeaderLayout.ChildrenHorizontalAlignment);
    sub_100753274();
    sub_100753274();
    return v33 == v32;
  }

  return 0;
}

uint64_t sub_10010A978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010A9E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10010AA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010AA88(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_10093FDB0, &unk_1007AC460);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010AAF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010AB60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TitleHeaderView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10010ABC4()
{
  result = qword_10092FA00;
  if (!qword_10092FA00)
  {
    sub_10000C724(&unk_100928A70, &unk_1007AC470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10092FA00);
  }

  return result;
}

void sub_10010AC28()
{
  v1 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_eyebrowArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtwork) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_titleArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_detailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_shortDetailLabel) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryView) = 0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessory;
  v3 = type metadata accessor for Accessory(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_accessoryAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_separatorInset);
  v6 = *&UIEdgeInsetsZero.bottom;
  *v5 = *&UIEdgeInsetsZero.top;
  v5[1] = v6;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15TitleHeaderView_allowsAccessibilityLayouts) = 1;
  sub_100754644();
  __break(1u);
}

uint64_t type metadata accessor for HeaderButton(uint64_t a1)
{
  result = qword_100928AC8;
  if (!qword_100928AC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010AE1C()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_100928AA0);
  v1 = sub_10000D0FC(v0, qword_100928AA0);
  if (qword_100920EA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100980930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10010AEE4()
{
  v0 = sub_100750534();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HeaderButton(0);
  if (qword_100920298 != -1)
  {
    swift_once();
  }

  v4 = sub_10000D0FC(v0, qword_100928AA0);
  (*(v1 + 16))(v3, v4, v0);
  result = sub_1007466B4();
  qword_100928AB8 = result;
  return result;
}

uint64_t sub_10010B000(uint64_t a1)
{
  v1 = sub_100750534();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (qword_100920298 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v1, qword_100928AA0);
  (*(v2 + 16))(v4, v5, v1);
  v6 = sub_1007466B4();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

id sub_10010B144(void *a1)
{
  v2 = v1;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for HeaderButton(0);
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = [v4 layoutDirection];

  if (!a1 || (result = [a1 layoutDirection], v5 != result))
  {
    v7 = *&v2[qword_100928AC0];
    v8 = [v2 traitCollection];
    v9 = sub_1007537F4();

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

void sub_10010B278(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_10010B144(a3);
}

id sub_10010B2E4(char *a1, double a2, double a3, double a4, double a5)
{
  *&a1[qword_100928AC0] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for HeaderButton(0);
  return objc_msgSendSuper2(&v10, "initWithFrame:", a2, a3, a4, a5);
}

id sub_10010B364()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeaderButton(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010B3A8(uint64_t a1, uint64_t a2, double a3)
{
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750534();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  (*(v5 + 104))(v7, enum case for FontSource.useCase(_:), v4);
  v12[3] = v4;
  v12[4] = &protocol witness table for FontSource;
  v9 = sub_10000D134(v12);
  (*(v5 + 16))(v9, v7, v4);
  sub_10074FC54();
  (*(v5 + 8))(v7, v4);
  sub_10000C620(v12);
  return JUScreenClassGetMain();
}

char *sub_10010B548(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_pageView;
  type metadata accessor for ArcadeDownloadPackCategoriesPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_continueButton;
  *&v2[v6] = [objc_opt_self() boldButton];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_skipButton;
  *&v2[v7] = [objc_opt_self() linkButton];
  *&v2[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_presenter] = a1;
  v8 = *&v2[v5];
  swift_retain_n();
  v9 = v8;

  v11 = sub_100167D8C(a1, v9, a2, v2, v10);
  sub_10010BF38(&qword_100928B70, &unk_1007AC50C);
  v12 = v11;

  sub_10074E114();

  [*&v12[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_continueButton] addTarget:v12 action:"didTapContinueButton" forControlEvents:64];
  [*&v12[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_skipButton] addTarget:v12 action:"didTapSkipButton" forControlEvents:64];

  return v12;
}

void sub_10010B87C(uint64_t a1)
{
  v2 = v1;
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1000B281C(a1, v17, sub_10010BF30, v4);

  v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_continueButton];
  sub_10074D504();
  sub_10074ECB4();
  v7 = v6;

  if (v7)
  {
    v8 = sub_100753064();
  }

  else
  {
    v8 = 0;
  }

  [v5 setTitle:v8 forState:0];

  v9 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_skipButton];
  sub_10074D4F4();
  sub_10074ECB4();
  v11 = v10;

  if (v11)
  {
    v12 = sub_100753064();
  }

  else
  {
    v12 = 0;
  }

  [v9 setTitle:v12 forState:0];

  v13 = sub_100753064();
  [v5 setAccessibilityIdentifier:v13];

  v14 = sub_100753064();
  [v9 setAccessibilityIdentifier:v14];

  v15 = [v2 buttonTray];
  [v15 addButton:v5];

  v16 = [v2 buttonTray];
  [v16 addButton:v9];

  sub_10019B200();
}

double sub_10010BB1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    sub_10074E124();
  }

  return result;
}

id sub_10010BB9C()
{
  v1 = [v0 buttonTray];
  sub_10074E674();
  v2 = sub_100753064();

  [v1 setCaptionText:v2 style:2];

  v3 = sub_10074E694();
  sub_1004B1408(v3 & 1);
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_continueButton];
  v5 = sub_10074E684() & 1;

  return [v4 setEnabled:v5];
}

double sub_10010BC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackViewController_objectGraph];
  sub_10074E1F4();
  swift_allocObject();
  swift_retain_n();

  sub_10074E1A4();
  v6 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackSuggestionsViewController());

  v8 = sub_100166A64(v7, v5);
  v9 = [v4 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 pushViewController:v8 animated:1];
  }

  return result;
}

void sub_10010BD94()
{

  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension42ArcadeDownloadPackCategoriesViewController_skipButton);
}

uint64_t sub_10010BEF8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010BF38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArcadeDownloadPackCategoriesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AppPromotionFormattedDateLayout.Metrics.textTopSpace.setter(__int128 *a1)
{
  sub_10000C620(v1);

  return sub_100012160(a1, v1);
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = sub_1007504F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppEventCardLayout.Metrics.artworkAspectRatio.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 20);
  v4 = sub_1007504F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppEventCardLayout.Metrics.notifyMePadding.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 24);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.kindTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 28);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 32);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.subtitleTopSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 36);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.textBottomSpace.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for AppEventCardLayout.Metrics(0) + 40);
  sub_10000C620((v1 + v3));

  return sub_100012160(a1, v1 + v3);
}

uint64_t AppEventCardLayout.Metrics.init(contentHorizontalMargin:artworkAspectRatio:notifyMePadding:kindTopSpace:titleTopSpace:subtitleTopSpace:textBottomSpace:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X8>)
{
  sub_100012160(a1, a8);
  v15 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v16 = v15[5];
  v17 = sub_1007504F4();
  (*(*(v17 - 8) + 32))(a8 + v16, a2, v17);
  sub_100012160(a3, a8 + v15[6]);
  sub_100012160(a4, a8 + v15[7]);
  sub_100012160(a5, a8 + v15[8]);
  sub_100012160(a6, a8 + v15[9]);
  v18 = a8 + v15[10];

  return sub_100012160(a7, v18);
}

uint64_t sub_10010C610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 AppEventCardLayout.init(metrics:shadowView:contentView:borderView:mediaContentView:artworkView:videoView:gradientBlurView:notifyMeButton:kindLabel:titleLabel:subtitleLabel:separatorView:lockupContainerView:lockupView:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 *a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10010CC50(a1, a9);
  v22 = type metadata accessor for AppEventCardLayout(0);
  sub_100012160(a2, a9 + v22[5]);
  sub_100012160(a3, a9 + v22[6]);
  sub_100012160(a4, a9 + v22[7]);
  sub_100012160(a5, a9 + v22[8]);
  sub_100012160(a6, a9 + v22[9]);
  v23 = a9 + v22[10];
  v24 = *(a7 + 16);
  *v23 = *a7;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a7 + 32);
  v25 = a9 + v22[11];
  v26 = *(a8 + 16);
  *v25 = *a8;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a8 + 32);
  v27 = a9 + v22[12];
  v28 = *(a10 + 16);
  *v27 = *a10;
  *(v27 + 16) = v28;
  *(v27 + 32) = *(a10 + 32);
  sub_100012160(a11, a9 + v22[13]);
  sub_100012160(a12, a9 + v22[14]);
  v29 = a9 + v22[15];
  v30 = *(a13 + 16);
  *v29 = *a13;
  *(v29 + 16) = v30;
  *(v29 + 32) = *(a13 + 32);
  v31 = a9 + v22[16];
  v32 = *(a14 + 16);
  *v31 = *a14;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a14 + 32);
  v33 = a9 + v22[17];
  v34 = *(a15 + 16);
  *v33 = *a15;
  *(v33 + 16) = v34;
  *(v33 + 32) = *(a15 + 32);
  v35 = a9 + v22[18];
  result = *a16;
  v37 = *(a16 + 16);
  *v35 = *a16;
  *(v35 + 16) = v37;
  *(v35 + 32) = *(a16 + 32);
  return result;
}

uint64_t sub_10010CC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEventCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void static AppEventCardLayout.estimatedMeasurementsNonAXLayout(fitting:using:shelfItems:asPartOf:in:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  ObjectType = swift_getObjectType();

  sub_10010F91C(a1, a2, a3, a4, ObjectType, a5, a6);
}

void AppEventCardLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();

  sub_10010E438(a1, v3, ObjectType, a2, a3);
}

uint64_t static AppPromotionCardLayout.prefersAccessibilityLayout(with:)(void *a1)
{
  v1 = [a1 preferredContentSizeCategory];
  v2 = sub_100753954();

  return v2 & 1;
}

uint64_t AppEventCardLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v150 = a2;
  v147 = COERCE_DOUBLE(sub_100747064());
  v146 = *(*&v147 - 8);
  __chkstk_darwin(*&v147);
  v144 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100754724();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AppEventCardLayout(0);
  sub_10000C888((v6 + v18[5]), *(v6 + v18[5] + 24));
  sub_100750394();
  sub_10000C888((v7 + v18[6]), *(v7 + v18[6] + 24));
  sub_100750394();
  sub_10000C888((v7 + v18[7]), *(v7 + v18[7] + 24));
  sub_100750394();
  v19 = v6[3];
  sub_10000C888(v7, v7[3]);
  sub_100536120(v19);
  sub_100750564();
  v151 = v20;
  v152 = *(v15 + 8);
  (*&v152)(v17, v14);
  v21 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v163.origin.x = 0.0;
  v163.origin.y = 0.0;
  v163.size.width = a5;
  v163.size.height = a6;
  CGRectGetWidth(v163);
  sub_1007504C4();
  Height = round(v22);
  v164.origin.x = 0.0;
  v164.origin.y = 0.0;
  v164.size.width = a5;
  v156 = a6;
  v164.size.height = a6;
  if (vabdd_f64(Height, CGRectGetHeight(v164)) < 1.0)
  {
    v165.origin.x = 0.0;
    v165.origin.y = 0.0;
    v165.size.width = a5;
    v165.size.height = v156;
    Height = CGRectGetHeight(v165);
  }

  v166.origin.x = 0.0;
  v166.origin.y = 0.0;
  v166.size.width = a5;
  v166.size.height = v156;
  Width = CGRectGetWidth(v166);
  sub_10000C888((v6 + v18[8]), *(v6 + v18[8] + 24));
  sub_100753B24();
  sub_100750394();
  v167.origin.x = 0.0;
  v167.origin.y = 0.0;
  v167.size.width = Width;
  v167.size.height = Height;
  v25 = CGRectGetWidth(v167);
  sub_10000C888((v6 + v18[9]), *(v6 + v18[9] + 24));
  sub_100753B24();
  sub_100750394();
  sub_100016B4C(v6 + v18[10], v161, &unk_100928A00, &qword_1007A5AB0);
  if (v162)
  {
    sub_10000C888(v161, v162);
    sub_100750394();
    sub_10000C620(v161);
  }

  else
  {
    sub_10000C8CC(v161, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C(v6 + v18[11], v161, &unk_100928A00, &qword_1007A5AB0);
  if (v162)
  {
    sub_10000C888(v161, v162);
    sub_100750394();
    sub_10000C620(v161);
  }

  else
  {
    sub_10000C8CC(v161, &unk_100928A00, &qword_1007A5AB0);
  }

  sub_100016B4C(v6 + v18[17], &v159, &unk_100928A00, &qword_1007A5AB0);
  v153 = a4;
  v154 = a3;
  if (!v160)
  {
    sub_10000C8CC(&v159, &unk_100928A00, &qword_1007A5AB0);
LABEL_17:
    LODWORD(v146) = 1;
    MinX = 0.0;
    v142 = 0.0;
    v141 = 0.0;
    v143 = 0.0;
    goto LABEL_18;
  }

  sub_100012160(&v159, v161);
  sub_10000C888(v161, v162);
  if (sub_1007503A4())
  {
LABEL_16:
    sub_10000C620(v161);
    goto LABEL_17;
  }

  sub_100016B4C(v6 + v18[18], &v157, &unk_100928A00, &qword_1007A5AB0);
  if (!v158)
  {
    sub_10000C8CC(&v157, &unk_100928A00, &qword_1007A5AB0);
    goto LABEL_16;
  }

  sub_100012160(&v157, &v159);
  sub_10000C888(&v159, v160);
  if (sub_1007503A4())
  {
    sub_10000C620(&v159);
    goto LABEL_16;
  }

  MaxY = v25;
  v114 = sub_10010FD98(0.0, 0.0, a5, v156, 0.0, v151);
  v116 = v115;
  v143 = v117;
  v139 = v118;
  MinX = COERCE_DOUBLE(swift_getObjectType());
  v119 = [a1 traitCollection];
  v120 = [v119 preferredContentSizeCategory];
  v142 = *&UIContentSizeCategoryExtraExtraExtraLarge;
  v121 = sub_100753954();

  v149 = Height;
  v140 = Width;
  v138 = v21;
  if (v121)
  {
    if (qword_100920450 != -1)
    {
      swift_once();
    }

    v122 = qword_10097E0C0;
  }

  else
  {
    if (qword_100920448 != -1)
    {
      swift_once();
    }

    v122 = qword_10097E0A8;
  }

  v123 = v147;
  v124 = sub_10000D0FC(*&v147, v122);
  v125 = v144;
  (*(*&v146 + 16))(v144, v124, COERCE_DOUBLE(*&v123));
  v126 = [a1 traitCollection];
  v127 = [v126 preferredContentSizeCategory];
  sub_100753954();

  type metadata accessor for SmallLockupView(0);
  v128 = v143;
  v129 = v139;
  sub_1001CF184(v125, a1, v143, v139);
  v131 = ceil(v130);
  v186.origin.x = 0.0;
  v186.origin.y = 0.0;
  v186.size.width = a5;
  v132 = v156;
  v186.size.height = v156;
  MinX = CGRectGetMinX(v186);
  v187.origin.x = v114;
  v187.origin.y = v116;
  v187.size.width = v128;
  v187.size.height = v129;
  v133 = v116;
  v134 = v114;
  v135 = CGRectGetHeight(v187) - v131;
  v188.origin.x = 0.0;
  v188.origin.y = 0.0;
  v188.size.width = a5;
  v188.size.height = v132;
  v136 = CGRectGetWidth(v188);
  sub_10000C888(v161, v162);
  v142 = v135;
  v141 = v136;
  sub_100750394();
  v189.origin.x = v134;
  v189.origin.y = v133;
  v189.size.width = v128;
  v189.size.height = v129;
  v137 = CGRectGetMinX(v189);
  v190.origin.x = v134;
  v190.origin.y = v133;
  v190.size.width = v128;
  v190.size.height = v129;
  CGRectGetMinY(v190);
  v191.origin.x = v134;
  v191.origin.y = v133;
  v191.size.width = v128;
  v191.size.height = v129;
  CGRectGetWidth(v191);
  sub_10000C888(&v159, v160);
  v143 = v131;
  sub_100750394();
  (*(*&v146 + 8))(v125, COERCE_DOUBLE(*&v147));
  sub_10000C620(&v159);
  sub_10000C620(v161);
  LODWORD(v146) = 0;
  Height = v149;
  Width = v140;
  v25 = MaxY;
  a4 = v153;
  a3 = v154;
  v21 = v138;
LABEL_18:
  sub_100016B4C(v7 + v18[12], &v159, &unk_100928A00, &qword_1007A5AB0);
  v155 = a5;
  if (v160)
  {
    sub_100012160(&v159, v161);
    sub_10000C888(v161, v162);
    v26 = v156;
    sub_100750404();
    v149 = Height;
    v147 = v27;
    v28 = (v7 + v21[6]);
    v29 = v28[3];
    sub_10000C888(v28, v29);
    sub_100536120(v29);
    sub_100750564();
    MaxY = v25;
    (*&v152)(v17, v14);
    v168.origin.x = a3;
    v168.origin.y = a4;
    v168.size.width = a5;
    v168.size.height = v26;
    CGRectGetMaxX(v168);
    v169.origin.x = a3;
    v169.origin.y = a4;
    v169.size.width = a5;
    v169.size.height = v26;
    CGRectGetMinY(v169);
    sub_10000C888(v161, v162);
    v25 = MaxY;
    Height = v149;
    sub_100753B24();
    sub_100750394();
    sub_10000C620(v161);
  }

  else
  {
    sub_10000C8CC(&v159, &unk_100928A00, &qword_1007A5AB0);
  }

  v30 = [a1 traitCollection];
  v31 = [v30 preferredContentSizeCategory];
  v32 = sub_100753954();

  if (v32)
  {
    v33 = sub_10010FD98(0.0, 0.0, v155, v156, 0.0, v151);
    v152 = v33;
    v35 = v34;
    v151 = v34;
    v37 = v36;
    v39 = v38;
    v170.origin.x = 0.0;
    v170.origin.y = 0.0;
    v170.size.width = v25;
    v170.size.height = Height;
    MaxY = CGRectGetMaxY(v170);
    v40 = (v7 + v18[13]);
    sub_10000C888(v40, v40[3]);
    sub_100750404();
    v42 = v41;
    v44 = v43;
    v149 = v45;
    sub_10000C888((v7 + v21[7]), *(v7 + v21[7] + 24));
    sub_100750584();
    v47 = v46;
    v171.origin.x = v33;
    v171.origin.y = v35;
    v171.size.width = v37;
    v171.size.height = v39;
    v48 = CGRectGetMinX(v171);
    v49 = MaxY + v47;
    sub_10000C888(v40, v40[3]);
    sub_100753B24();
    sub_100750394();
    v172.origin.x = v48;
    v172.origin.y = v49;
    v172.size.width = v42;
    v172.size.height = v44;
    v50 = CGRectGetMaxY(v172) - v149;
    v51 = (v7 + v18[14]);
    sub_10000C888(v51, v51[3]);
    v52 = v39;
    sub_100750404();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    sub_10000C888((v7 + v21[8]), *(v7 + v21[8] + 24));
    v147 = v58;
    sub_100750584();
    v60 = v59;
    v173.origin.x = v152;
    v173.origin.y = v151;
    v149 = v37;
    v173.size.width = v37;
    MaxY = v52;
    v173.size.height = v52;
    v61 = CGRectGetMinX(v173);
    sub_10000C888(v51, v51[3]);
    sub_100753B24();
    sub_100750394();
    v174.origin.x = v61;
    v174.origin.y = v50 + v60;
    v174.size.width = v54;
    v174.size.height = v56;
    v62 = CGRectGetMaxY(v174);
    sub_100016B4C(v7 + v18[15], &v159, &qword_10092BC30, &qword_1007AD5C0);
    if (v160)
    {
      sub_100012160(&v159, v161);
      sub_10000C888(v161, v162);
      if (sub_100750364())
      {
        v63 = v62 - v147;
        sub_10000C888(v161, v162);
        v64 = v149;
        v65 = MaxY;
        sub_100750404();
        v67 = v66;
        v69 = v68;
        sub_10000C888((v7 + v21[9]), *(v7 + v21[9] + 24));
        sub_100750584();
        v71 = v70;
        v175.origin.x = v152;
        v175.origin.y = v151;
        v175.size.width = v64;
        v175.size.height = v65;
        v72 = CGRectGetMinX(v175);
        sub_10000C888(v161, v162);
        sub_100753B24();
        sub_100750394();
        v176.origin.x = v72;
        v176.origin.y = v63 + v71;
        v176.size.width = v67;
        v176.size.height = v69;
        CGRectGetMaxY(v176);
      }

      sub_10000C620(v161);
    }

    else
    {
      sub_10000C8CC(&v159, &qword_10092BC30, &qword_1007AD5C0);
    }

    sub_100016B4C(v7 + v18[16], &v159, &unk_100928A00, &qword_1007A5AB0);
    if (v160)
    {
      sub_100012160(&v159, v161);
      sub_10000C888(v161, v162);
      if ((sub_1007503A4() & 1) == 0 && (LOBYTE(v146) & 1) == 0)
      {
        sub_10000C888(v161, v162);
        v107 = v149;
        v108 = MaxY;
        sub_100750404();
        v110 = v109;
        v183.origin.x = MinX;
        v183.origin.y = v142;
        v183.size.width = v141;
        v183.size.height = v143;
        v147 = CGRectGetMinY(v183) - v110;
        v111 = v152;
        v184.origin.x = v152;
        v112 = v151;
        v184.origin.y = v151;
        v184.size.width = v107;
        v184.size.height = v108;
        v146 = CGRectGetMinX(v184);
        v185.origin.x = v111;
        v185.origin.y = v112;
        v185.size.width = v107;
        v185.size.height = v108;
        CGRectGetWidth(v185);
        sub_10000C888(v161, v162);
        sub_100750394();
      }

      sub_10000C620(v161);
    }

    else
    {
      sub_10000C8CC(&v159, &unk_100928A00, &qword_1007A5AB0);
    }
  }

  else
  {
    v73 = sub_10010FD98(0.0, 0.0, Width, Height, 0.0, v151);
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = (v7 + v21[10]);
    v81 = v80[3];
    sub_10000C888(v80, v81);
    sub_100536120(v81);
    sub_100750564();
    v83 = v82;
    (*&v152)(v17, v14);
    v151 = v73;
    v177.origin.x = v73;
    v149 = v75;
    v177.origin.y = v75;
    v177.size.width = v77;
    v177.size.height = v79;
    v84 = CGRectGetHeight(v177) - v83;
    sub_100016B4C(v7 + v18[15], &v159, &qword_10092BC30, &qword_1007AD5C0);
    if (v160)
    {
      sub_100012160(&v159, v161);
      sub_10000C888(v161, v162);
      if (sub_100750364())
      {
        sub_10000C888(v161, v162);
        sub_100750404();
        v86 = v85;
        v88 = v87;
        v152 = *&v89;
        MaxY = v90;
        v91 = v90 + v84 - v87;
        v178.origin.x = v151;
        v178.origin.y = v149;
        v178.size.width = v77;
        v178.size.height = v79;
        v92 = CGRectGetMinX(v178);
        sub_10000C888(v161, v162);
        sub_100753B24();
        sub_100750394();
        sub_10000C888((v7 + v21[9]), *(v7 + v21[9] + 24));
        sub_100750584();
        v94 = v93;
        v179.origin.x = v92;
        v179.origin.y = v91;
        v179.size.width = v86;
        v179.size.height = v88;
        v84 = CGRectGetMinY(v179) - v94;
      }

      sub_10000C620(v161);
    }

    else
    {
      sub_10000C8CC(&v159, &qword_10092BC30, &qword_1007AD5C0);
    }

    v95 = (v7 + v18[14]);
    sub_10000C888(v95, v95[3]);
    sub_100750404();
    v97 = v96;
    v99 = v98;
    v152 = *&v100;
    v101 = v79;
    v102 = v77;
    MaxY = v103;
    v104 = v103 + v84 - v98;
    v180.origin.x = v151;
    v180.origin.y = v149;
    v180.size.width = v102;
    v180.size.height = v101;
    v105 = CGRectGetMinX(v180);
    sub_10000C888(v95, v95[3]);
    sub_100753B24();
    sub_100750394();
    sub_10000C888((v7 + v21[8]), *(v7 + v21[8] + 24));
    sub_100750584();
    v181.origin.x = v105;
    v181.origin.y = v104;
    v181.size.width = v97;
    v181.size.height = v99;
    CGRectGetMinY(v181);
    v106 = (v7 + v18[13]);
    sub_10000C888(v106, v106[3]);
    sub_100750404();
    v182.origin.x = v151;
    v182.origin.y = v149;
    v182.size.width = v102;
    v182.size.height = v101;
    CGRectGetMinX(v182);
    sub_10000C888(v106, v106[3]);
    sub_100753B24();
    sub_100750394();
  }

  return sub_100750314();
}

void sub_10010E438(void *a1, void *a2, int *a3, double a4, double a5)
{
  v89 = a3;
  v87 = sub_100754724();
  v91 = *(v87 - 8);
  __chkstk_darwin(v87);
  v90 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_100750A94();
  v84 = *(v86 - 8);
  __chkstk_darwin(v86);
  v82 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_100750AB4();
  v83 = *(v85 - 8);
  __chkstk_darwin(v85);
  v81 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100750FD4();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1007479B4();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v73 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v74 = &v68 - v15;
  v16 = sub_100747064();
  v79 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AppEventCardLayout(0);
  sub_100016B4C(a2 + v19[18], &v94, &unk_100928A00, &qword_1007A5AB0);
  v20 = v95;
  sub_10000C8CC(&v94, &unk_100928A00, &qword_1007A5AB0);
  v21 = [a1 traitCollection];
  v22 = [v21 preferredContentSizeCategory];
  v23 = sub_100753954();

  if (v23)
  {
    v68 = v20;
    v88 = a2;
    v25 = v19[13];
    v26 = v19[14];
    v27 = v19[16];
    v71 = v19[15];
    v72 = v27;
    if (qword_100920450 != -1)
    {
      swift_once();
    }

    v69 = (v88 + v25);
    v70 = (v88 + v26);
    v28 = sub_10000D0FC(v16, qword_10097E0C0);
    v89 = type metadata accessor for AppEventCardLayout.Metrics(0);
    sub_1007504C4();
    v30 = v29;
    v31 = [a1 traitCollection];
    v32 = v79;
    (*(v79 + 16))(v18, v28, v16);
    v33 = sub_100746FD4();
    v35 = v80;
    if ((v36 & 1) == 0 && ((v33 | v34) & 0x7FFFFFFFFFFFFFFFLL) == 0)
    {
      if (sub_100753804())
      {
        if (qword_100921988 != -1)
        {
          swift_once();
        }

        v37 = qword_10093FF40;
      }

      else
      {
        if (qword_100921990 != -1)
        {
          swift_once();
        }

        v37 = qword_10093FF58;
      }

      v38 = v76;
      v39 = sub_10000D0FC(v76, v37);
      v40 = v75;
      v41 = v73;
      (*(v75 + 16))(v73, v39, v38);
      v42 = v74;
      (*(v40 + 32))(v74, v41, v38);
      sub_100747964();
      sub_100747994();
      sub_100746FE4();
      (*(v40 + 8))(v42, v38);
    }

    sub_100746F14();
    v44 = v43;

    (*(v32 + 8))(v18, v16);
    *&v92 = _swiftEmptyArrayStorage;
    sub_10000C518(&qword_100946760, &unk_1007A63A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007A5A00;
    v95 = &type metadata for CGFloat;
    v96 = &protocol witness table for CGFloat;
    *&v94 = v30;
    *(inited + 56) = v35;
    *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
    sub_10000D134((inited + 32));
    sub_100750FE4();
    sub_10049FB8C(inited);
    v46 = v88;
    v47 = v87;
    if (v68)
    {
      v95 = &type metadata for CGFloat;
      v96 = &protocol witness table for CGFloat;
      *&v94 = ceil(v44 + 16.0 + 16.0);
      v48 = v77;
      sub_100750FE4();
      v49 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1002548C4(0, v49[2] + 1, 1, v49);
      }

      v51 = v49[2];
      v50 = v49[3];
      if (v51 >= v50 >> 1)
      {
        v49 = sub_1002548C4((v50 > 1), v51 + 1, 1, v49);
      }

      v95 = v35;
      v96 = &protocol witness table for VerticalSpaceMeasurable;
      v52 = sub_10000D134(&v94);
      v53 = v78;
      (*(v78 + 16))(v52, v48, v35);
      v49[2] = v51 + 1;
      sub_100012160(&v94, &v49[5 * v51 + 4]);
      (*(v53 + 8))(v48, v35);
      *&v92 = v49;
    }

    (*(v84 + 104))(v82, enum case for StackMeasurable.Axis.vertical(_:), v86);
    v54 = v81;
    sub_100750AA4();
    sub_100750A84();
    (*(v83 + 8))(v54, v85);
    v55 = v46[3];
    sub_10000C888(v46, v55);
    v56 = v90;
    sub_100536120(v55);
    sub_100750564();
    v57 = *(v91 + 8);
    v91 += 8;
    v57(v56, v47);
    sub_100753BA4();
    sub_10000C888(v69, v69[3]);
    sub_100750404();
    v59 = v58;
    v60 = v89;
    sub_10000C888((v46 + v89[7]), *(v46 + v89[7] + 24));
    sub_100750584();
    *&v94 = v59;
    sub_100750554();
    sub_10000C888(v70, v70[3]);
    sub_100750404();
    v62 = v61;
    sub_10000C888((v46 + v60[8]), *(v46 + v60[8] + 24));
    sub_100750584();
    *&v94 = v62;
    sub_100750554();
    sub_100016B4C(v46 + v71, &v92, &qword_10092BC30, &qword_1007AD5C0);
    if (v93)
    {
      sub_100012160(&v92, &v94);
      sub_10000C888(&v94, v95);
      if (sub_100750364())
      {
        sub_10000C888(&v94, v95);
        sub_100750404();
        v64 = v63;
        sub_10000C888((v46 + v89[9]), *(v46 + v89[9] + 24));
        sub_100750584();
        *&v92 = v64;
        sub_100750554();
      }

      sub_10000C620(&v94);
    }

    else
    {
      sub_10000C8CC(&v92, &qword_10092BC30, &qword_1007AD5C0);
    }

    v65 = (v46 + v89[10]);
    v66 = v65[3];
    sub_10000C888(v65, v66);
    v67 = v90;
    sub_100536120(v66);
    sub_100750564();
    v57(v67, v47);
    sub_100016B4C(v46 + v72, &v92, &unk_100928A00, &qword_1007A5AB0);
    if (v93)
    {
      sub_100012160(&v92, &v94);
      sub_10000C888(&v94, v95);
      if ((sub_1007503A4() & 1) == 0)
      {
        sub_10000C888(&v94, v95);
        sub_100750404();
      }

      sub_10000C620(&v94);
    }

    else
    {
      sub_10000C8CC(&v92, &unk_100928A00, &qword_1007A5AB0);
    }
  }

  else
  {
    v24.n128_f64[0] = a4;
    sub_10010F1F0(v24, a5, a2, v20 != 0, a1);
  }
}

double sub_10010F1F0(__n128 a1, double a2, uint64_t a3, int a4, void *a5)
{
  v47 = a4;
  v52 = sub_100750A94();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100750AB4();
  v51 = *(v53 - 8);
  __chkstk_darwin(v53);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100750FD4();
  v46 = *(v48 - 8);
  __chkstk_darwin(v48);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1007479B4();
  v44 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v43 - v14;
  v16 = sub_100747064();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920448 != -1)
  {
    swift_once();
  }

  v20 = sub_10000D0FC(v16, qword_10097E0A8);
  type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_1007504C4();
  v22 = v21;
  v54 = a5;
  v23 = [a5 traitCollection];
  (*(v17 + 16))(v19, v20, v16);
  v24 = sub_100746FD4();
  if ((v26 & 1) == 0 && ((v24 | v25) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (sub_100753804())
    {
      if (qword_100921988 != -1)
      {
        swift_once();
      }

      v27 = qword_10093FF40;
    }

    else
    {
      if (qword_100921990 != -1)
      {
        swift_once();
      }

      v27 = qword_10093FF58;
    }

    v28 = sub_10000D0FC(v10, v27);
    v29 = v44;
    (*(v44 + 16))(v12, v28, v10);
    (*(v29 + 32))(v15, v12, v10);
    sub_100747964();
    sub_100747994();
    sub_100746FE4();
    (*(v29 + 8))(v15, v10);
  }

  sub_100746F14();
  v31 = v30;

  (*(v17 + 8))(v19, v16);
  v58 = _swiftEmptyArrayStorage;
  sub_10000C518(&qword_100946760, &unk_1007A63A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A5A00;
  v56 = &type metadata for CGFloat;
  v57 = &protocol witness table for CGFloat;
  *&v55 = v22;
  v33 = v48;
  *(inited + 56) = v48;
  *(inited + 64) = &protocol witness table for VerticalSpaceMeasurable;
  sub_10000D134((inited + 32));
  sub_100750FE4();
  sub_10049FB8C(inited);
  if (v47)
  {
    v56 = &type metadata for CGFloat;
    v57 = &protocol witness table for CGFloat;
    *&v55 = ceil(v31 + 4.0 + 4.0);
    v34 = v45;
    sub_100750FE4();
    v35 = v58;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1002548C4(0, v35[2] + 1, 1, v35);
    }

    v37 = v35[2];
    v36 = v35[3];
    if (v37 >= v36 >> 1)
    {
      v35 = sub_1002548C4((v36 > 1), v37 + 1, 1, v35);
    }

    v56 = v33;
    v57 = &protocol witness table for VerticalSpaceMeasurable;
    v38 = sub_10000D134(&v55);
    v39 = v46;
    (*(v46 + 16))(v38, v34, v33);
    v35[2] = v37 + 1;
    sub_100012160(&v55, &v35[5 * v37 + 4]);
    (*(v39 + 8))(v34, v33);
    v58 = v35;
  }

  (*(v50 + 104))(v49, enum case for StackMeasurable.Axis.vertical(_:), v52);
  sub_100750AA4();
  sub_100750A84();
  v41 = v40;
  (*(v51 + 8))(v8, v53);
  return v41;
}

void sub_10010F91C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7)
{
  v26 = a5;
  v25 = a4;
  v32 = a3;
  v24 = a1;
  v31 = sub_100742284();
  v10 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10074ED34();
  v12 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _swiftEmptyArrayStorage;
  v39 = _swiftEmptyArrayStorage;
  v15 = *(a2 + 16);
  if (v15)
  {
    v16 = a2 + 32;
    do
    {
      sub_10000C824(v16, v38);
      sub_100012160(v38, v36);
      sub_10000C518(&qword_1009242A0, &qword_1007A6400);
      sub_1007428B4();
      if ((swift_dynamicCast() & 1) != 0 && v37)
      {
        sub_100753284();
        if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        sub_100753344();
        v14 = v39;
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  if (v14 >> 62)
  {
LABEL_25:
    v33 = v14 & 0xFFFFFFFFFFFFFF8;
    v35 = sub_100754664();
  }

  else
  {
    v33 = v14 & 0xFFFFFFFFFFFFFF8;
    v35 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v34 = v14 & 0xC000000000000001;
  v27 = (v12 + 8);
  ++v10;
  do
  {
    v18 = v17;
    if (v35 == v17)
    {
      break;
    }

    if (v34)
    {
      sub_100754574();
      if (__OFADD__(v18, 1))
      {
LABEL_21:
        __break(1u);
LABEL_22:

        break;
      }
    }

    else
    {
      if (v17 >= *(v33 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (__OFADD__(v18, 1))
      {
        goto LABEL_21;
      }
    }

    if ((sub_100742854() & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_10000C518(&unk_100925780, qword_1007AC630);
    sub_100752764();
    sub_100752D34();
    swift_getObjectType();
    sub_100742894();
    v19 = v28;
    sub_10074EF44();

    sub_1007424E4();
    (*v27)(v19, v29);
    swift_getObjectType();
    sub_100742894();
    sub_10074EE44();

    v12 = v30;
    sub_1007423E4();
    v20 = sub_100742234();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*v10)(v12, v31);
    v17 = v18 + 1;
  }

  while ((v20 & 1) == 0);
  v21 = v35 != v18;

  v22.n128_f64[0] = a6;
  sub_10010F1F0(v22, a7, v24, v21, v25);
}

uint64_t sub_10010FDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppEventCardLayout.Metrics(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10010FE9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AppEventCardLayout.Metrics(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_10010FF58(uint64_t a1)
{
  type metadata accessor for AppEventCardLayout.Metrics(319);
  if (v1 <= 0x3F)
  {
    sub_100110300(319, &unk_10092C900, &protocol descriptor for LayoutView);
    if (v2 <= 0x3F)
    {
      sub_100110090(319, &qword_10092C920, &qword_100926520, &qword_1007A9F00);
      if (v3 <= 0x3F)
      {
        sub_100110300(319, &qword_10092D510, &protocol descriptor for LayoutTextView);
        if (v4 <= 0x3F)
        {
          sub_100110090(319, &unk_10092C910, &unk_10092D520, &unk_1007A5C80);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100110090(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000C724(a3, a4);
    v5 = sub_100754284();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1001100F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1007504F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001101B8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1007504F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10011025C(uint64_t a1)
{
  result = sub_100110300(319, &qword_1009289A0, &protocol descriptor for AnyDimension);
  if (v2 <= 0x3F)
  {
    result = sub_1007504F4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100110300(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1001104A0()
{
  sub_100746334();
  v0 = sub_10074ECC4();

  if (!v0)
  {
    goto LABEL_10;
  }

  if ((sub_10074F1A4() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (sub_10074F1D4())
  {
    v1 = sub_100743AC4();
    goto LABEL_7;
  }

  if ((sub_10074F1C4() & 1) == 0)
  {
LABEL_9:

    goto LABEL_10;
  }

  v1 = sub_10056028C(v2, v0, 0);
LABEL_7:
  v3 = v1;

  if (v3)
  {
    return v3;
  }

LABEL_10:
  v5 = objc_allocWithZone(UIImage);

  return [v5 init];
}

id sub_100110634()
{
  v1 = sub_10000C518(&unk_100923960, &qword_1007A6240);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_932442DA714B10A6559014343396A9F814ActionActivity_objectGraph];
  v5 = sub_10000C518(&unk_100923210, &unk_1007A5C60);
  sub_1007526C4();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_100052F00(v3);
  }

  else
  {
    v7 = sub_100746334();
    sub_1003C0E00(v7, 1, v4, v3);

    (*(v6 + 8))(v3, v5);
  }

  return [v0 activityDidFinish:1];
}

uint64_t type metadata accessor for ActionActivity(uint64_t a1)
{
  result = qword_100928D20;
  if (!qword_100928D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100110914(uint64_t a1, uint64_t a2)
{
  result = sub_100746344();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1001109B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v45 = a3;
  v9 = sub_100746344();
  v52 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v43 - v13;
  sub_1007442C4();
  sub_100752764();
  sub_100752D34();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension22ActivityViewController_artworkLoader;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension22ActivityViewController_artworkLoader] = v55;
  sub_100744AC4();
  sub_100752D34();
  v16 = v55;
  v17 = *&v5[v15];

  v46 = v16;
  v18 = sub_1007449C4();
  v47 = a1;
  v19 = sub_100446780(v17, v18 & 1);

  v20 = *(a2 + 16);
  v51 = a4;
  if (v20)
  {
    v43[0] = v19;
    v44 = v5;
    v55 = _swiftEmptyArrayStorage;
    sub_1007545C4();
    v21 = *(v52 + 16);
    v22 = *(v52 + 80);
    v43[1] = a2;
    v23 = (a2 + ((v22 + 32) & ~v22));
    v49 = *(v52 + 72);
    v50 = v21;
    v52 += 16;
    v48 = (v52 - 8);
    do
    {
      v24 = v50;
      v50(v14, v23, v9);
      v24(v11, v14, v9);
      v25 = type metadata accessor for ActionActivity(0);
      v26 = objc_allocWithZone(v25);
      v24(&v26[OBJC_IVAR____TtC22SubscribePageExtensionP33_932442DA714B10A6559014343396A9F814ActionActivity_activity], v11, v9);
      *&v26[OBJC_IVAR____TtC22SubscribePageExtensionP33_932442DA714B10A6559014343396A9F814ActionActivity_objectGraph] = a4;
      v54.receiver = v26;
      v54.super_class = v25;

      objc_msgSendSuper2(&v54, "init");
      v27 = *v48;
      (*v48)(v11, v9);
      v27(v14, v9);
      sub_1007545A4();
      sub_1007545D4();
      a4 = v51;
      sub_1007545E4();
      sub_1007545B4();
      v23 += v49;
      --v20;
    }

    while (v20);

    v5 = v44;
    v28 = v45;
    v19 = v43[0];
  }

  else
  {

    v28 = v45;
  }

  sub_100157BCC(v19);

  isa = sub_100753294().super.isa;

  sub_100110F20();
  v30 = sub_100753294().super.isa;

  v31 = type metadata accessor for ActivityViewController();
  v53.receiver = v5;
  v53.super_class = v31;
  v32 = objc_msgSendSuper2(&v53, "initWithActivityItems:applicationActivities:", isa, v30);

  v33 = v32;
  [v33 setSharingStyle:v28];
  sub_10000C518(&unk_10093E480, qword_1007BEDF0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1007A7250;
  *(v34 + 32) = UIActivityTypeAddToReadingList;
  *(v34 + 40) = UIActivityTypeAssignToContact;
  *(v34 + 48) = UIActivityTypePostToFlickr;
  *(v34 + 56) = UIActivityTypePrint;
  *(v34 + 64) = UIActivityTypeSaveToCameraRoll;
  *(v34 + 72) = UIActivityTypeCopyToPasteboard;
  type metadata accessor for ActivityType(0);
  v35 = UIActivityTypeAddToReadingList;
  v36 = UIActivityTypeAssignToContact;
  v37 = UIActivityTypePostToFlickr;
  v38 = UIActivityTypePrint;
  v39 = UIActivityTypeSaveToCameraRoll;
  v40 = UIActivityTypeCopyToPasteboard;
  v41 = sub_100753294().super.isa;

  [v33 setExcludedActivityTypes:v41];

  return v33;
}

id sub_100110EB4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_100110F20()
{
  result = qword_100928D60;
  if (!qword_100928D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100928D60);
  }

  return result;
}

double sub_100110F6C(uint64_t a1, double result)
{
  v3 = v2;
  v4 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media) = a1;
  if (a1)
  {
    v8 = a1;
    if (v4)
    {
      v7 = v4;
      sub_100743FA4();
      sub_100116ABC(&qword_100928E70, &type metadata accessor for ProductMedia, &protocol conformance descriptor for ProductMedia);
      swift_retain_n();
      v5 = sub_100753014();

      if (v5)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

LABEL_8:
    [*(v3 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView) reloadData];
LABEL_9:

    return v6;
  }

  if (v4)
  {
    goto LABEL_8;
  }

  return v6;
}

void sub_100111078(uint64_t a1)
{
  if (a1)
  {
    sub_10074B184();
    sub_100752764();

    sub_100752D34();
    sub_10074C4B4();
    swift_allocObject();
    v2 = v6;
    sub_10074C4C4();
    sub_100749AC4();
  }

  if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph])
  {
    sub_10074B184();
    sub_100752764();

    sub_100752D34();
    v3 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_compoundScrollObserver];
    sub_10074C4B4();
    swift_allocObject();
    v4 = v6;
    sub_10074C4C4();
    sub_100749AD4();

    v5 = [v1 window];
    if (v5)
    {

      [v3 scrollViewDidScroll:*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView]];
    }
  }
}

uint64_t sub_100111240()
{
  if (qword_100921710 != -1)
  {
    swift_once();
  }

  v0 = sub_100750B04();
  v1 = sub_10000D0FC(v0, qword_1009820B0);
  qword_100928D88 = v0;
  unk_100928D90 = &protocol witness table for StaticDimension;
  v2 = sub_10000D134(qword_100928D70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_100111338(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_flowLayout;
  *&v4[v11] = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v12 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_compoundScrollObserver;
  v13 = objc_allocWithZone(sub_100749AF4());
  *&v4[v12] = sub_100749AE4();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin] = 0x4020000000000000;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits] = 0;
  v14 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  v15 = sub_1007469A4();
  (*(*(v15 - 8) + 56))(&v5[v14], 1, 1, v15);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView] = 0;
  v16 = &v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler];
  *v16 = 0;
  v16[1] = 0;
  v17 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v5[v11] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView] = v17;
  v36.receiver = v5;
  v36.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView;
  [*&v18[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView] setDecelerationRate:UIScrollViewDecelerationRateFast];
  v21 = *&v18[v20];
  v22 = objc_opt_self();
  v23 = v21;
  v24 = [v22 clearColor];
  [v23 setBackgroundColor:v24];

  [*&v18[v20] setAllowsSelection:1];
  [*&v18[v20] setAlwaysBounceHorizontal:1];
  [*&v18[v20] setShowsHorizontalScrollIndicator:0];
  [*&v18[v20] setDataSource:v18];
  v25 = *&v18[v20];
  [v25 setDelegate:v18];

  v26 = *&v18[v20];
  type metadata accessor for VideoCollectionViewCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = v26;
  sub_1007539D4();
  v29 = sub_100753064();

  [v28 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v29];

  v30 = *&v18[v20];
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v31 = swift_getObjCClassFromMetadata();
  v32 = v30;
  sub_1007539D4();
  v33 = sub_100753064();

  [v32 registerClass:v31 forCellWithReuseIdentifier:v33];

  v34 = [v18 contentView];
  [v34 addSubview:*&v18[v20]];

  return v18;
}

id sub_1001117B0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  *&v96 = COERCE_DOUBLE(type metadata accessor for DividerView.Style(0));
  __chkstk_darwin(v96);
  v4 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108.receiver = v1;
  v108.super_class = ObjectType;
  objc_msgSendSuper2(&v108, "layoutSubviews", v7);
  v10 = [v1 contentView];
  sub_100016C60(0, &qword_100922300, UIView_ptr);
  sub_1007477B4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v104 = v17;

  v95 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView];
  v105 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v21 = 0.0;
  if (v18)
  {
    v22 = v18;
    [v22 frame];
    v19 = v23;
    v20 = v24;
    if (qword_1009202C0 != -1)
    {
      swift_once();
    }

    v25 = qword_10097DB50;
    sub_10000C888(qword_10097DB38, qword_10097DB50);
    sub_100536120(v25);
    sub_100750564();
    v21 = v26;

    (*(v6 + 8))(v9, v5);
  }

  v98 = v20;
  v94 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v27 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView];
  v107 = 0.0;
  v28 = 0.0;
  if (v27)
  {
    v29 = v27;
    [v29 frame];
    v105 = v30;
    v107 = v31;
    if (qword_1009202B8 != -1)
    {
      swift_once();
    }

    v32 = qword_100928DD8;
    sub_10000C888(qword_100928DC0, qword_100928DD8);
    sub_100536120(v32);
    sub_100750564();
    v28 = v33;

    (*(v6 + 8))(v9, v5);
  }

  v90 = v19;
  v99 = v28;
  v93 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView;
  v34 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView];
  v35 = 0.0;
  v103 = 0.0;
  v36 = 0.0;
  MinY = 0.0;
  v38 = 0.0;
  if (v34)
  {
    v39 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style;
    swift_beginAccess();
    sub_1001154F8(v34 + v39, v4);
    v40 = qword_100920D68;
    v41 = v34;
    if (v40 != -1)
    {
      swift_once();
    }

    v42 = floor(*&qword_100980620);
    sub_1007502D4();
    sub_100750B04();
    sub_100750564();
    v44 = v43;
    (*(v6 + 8))(v9, v5);
    v38 = v42 + v44;
    sub_1001155C0(v4, type metadata accessor for DividerView.Style);
    v109.origin.x = v12;
    v109.origin.y = v14;
    v109.size.width = v16;
    v45 = v104;
    v109.size.height = v104;
    v36 = CGRectGetMaxX(v109) - v16;
    v110.origin.x = v12;
    v110.origin.y = v14;
    v110.size.width = v16;
    v110.size.height = v45;
    MinY = CGRectGetMinY(v110);

    v35 = v16;
  }

  v97 = v35;
  v106 = MinY;
  v46 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView;
  v47 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView];
  v101 = 0.0;
  v100 = 0.0;
  v102 = 0.0;
  if (v47)
  {
    v48 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style;
    swift_beginAccess();
    sub_1001154F8(v47 + v48, v4);
    v49 = qword_100920D68;
    v50 = v47;
    if (v49 != -1)
    {
      swift_once();
    }

    v51 = floor(*&qword_100980620);
    sub_1007502D4();
    sub_100750B04();
    sub_100750564();
    v53 = v52;
    (*(v6 + 8))(v9, v5);
    v54 = v51 + v53;
    sub_1001155C0(v4, type metadata accessor for DividerView.Style);
    v111.origin.x = v12;
    v111.origin.y = v14;
    v111.size.width = v16;
    v55 = v104;
    v111.size.height = v104;
    v103 = CGRectGetMaxX(v111) - v16;
    v112.origin.x = v12;
    v112.origin.y = v14;
    v112.size.width = v16;
    v112.size.height = v55;
    MaxY = CGRectGetMaxY(v112);

    v102 = v54;
    v101 = MaxY - ceil(v54);
    v100 = v16;
  }

  *&v96 = v16;
  v57 = v14;
  v58 = v94;
  if (*&v1[v94])
  {
    v59 = v12;
    if (qword_1009202A8 != -1)
    {
      swift_once();
    }

    v60 = qword_100928D88;
    sub_10000C888(qword_100928D70, qword_100928D88);
    sub_100536120(v60);
    sub_100750564();
    v62 = v61;
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    v59 = v12;
    v62 = 0.0;
  }

  if (qword_1009202B0 != -1)
  {
    swift_once();
  }

  v63 = qword_100928DB0;
  sub_10000C888(qword_100928D98, qword_100928DB0);
  sub_100536120(v63);
  sub_100750564();
  v65 = v64;
  (*(v6 + 8))(v9, v5);
  v91 = v62;
  v89 = v21;
  v66 = v98 + v107 + v21 + v99 + v62 + v65;
  v67 = v36;
  v113.origin.x = v36;
  v113.origin.y = v106;
  v68 = v97;
  v113.size.width = v97;
  v69 = v38;
  v113.size.height = v38;
  v70 = CGRectGetHeight(v113) + v66;
  v114.origin.x = v103;
  v114.origin.y = v101;
  v114.size.width = v100;
  v114.size.height = v102;
  v92 = CGRectGetHeight(v114) + v70;
  v115.origin.x = v59;
  v115.origin.y = v57;
  v71 = *&v96;
  *&v115.size.width = v96;
  v72 = v104;
  v115.size.height = v104;
  MinX = CGRectGetMinX(v115);
  v87 = v67;
  v116.origin.x = v67;
  v116.origin.y = v106;
  v116.size.width = v68;
  v88 = v69;
  v116.size.height = v69;
  v74 = v91 + CGRectGetMaxY(v116);
  v117.origin.x = v59;
  v117.origin.y = v57;
  v117.size.width = v71;
  v117.size.height = v72;
  v75 = CGRectGetMinX(v117);
  v91 = MinX;
  v118.origin.x = MinX;
  v86 = v74;
  v118.origin.y = v74;
  v118.size.width = v105;
  v118.size.height = v107;
  v76 = v99 + CGRectGetMaxY(v118);
  v119.origin.x = v59;
  v119.origin.y = v57;
  v119.size.width = v71;
  v119.size.height = v72;
  Width = CGRectGetWidth(v119);
  v120.origin.x = v59;
  v120.origin.y = v57;
  v120.size.width = v71;
  v120.size.height = v72;
  v78 = CGRectGetHeight(v120) - v92;
  v121.origin.x = v59;
  v121.origin.y = v57;
  v121.size.width = v71;
  v121.size.height = v72;
  v79 = CGRectGetMinX(v121);
  v122.origin.x = v75;
  v122.origin.y = v76;
  v122.size.width = Width;
  v122.size.height = v78;
  v80 = CGRectGetMaxY(v122);
  v81 = *&v1[v93];
  if (v81)
  {
    [v81 setFrame:{v87, v106, v97, v88}];
  }

  v82 = *&v1[v58];
  if (v82)
  {
    [v82 setFrame:{v91, v86, v105, v107}];
  }

  [*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView] setFrame:{v75, v76, Width, v78}];
  v83 = *&v1[v95];
  if (v83)
  {
    [v83 setFrame:{v79, v89 + v80, v90, v98}];
  }

  result = *&v1[v46];
  if (result)
  {
    return [result setFrame:{v103, v101, v100, v102}];
  }

  return result;
}

void sub_10011220C(void *a1, uint64_t *a2)
{
  if (*(v2 + *a1) == 1)
  {
    v4 = [objc_allocWithZone(type metadata accessor for DividerView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *a2;
    v6 = *(v2 + *a2);
    if (v6)
    {
      [v6 removeFromSuperview];
      v7 = *(v2 + v5);
    }

    else
    {
      v7 = 0;
    }

    *(v2 + v5) = v4;
    v11 = v4;

    sub_10011231C(a2);
  }

  else
  {
    v8 = *a2;
    v9 = *(v2 + *a2);
    if (v9)
    {
      [v9 removeFromSuperview];
      v10 = *(v2 + v8);
    }

    else
    {
      v10 = 0;
    }

    *(v2 + v8) = 0;

    sub_10011231C(a2);
  }
}

id sub_10011231C(void *a1)
{
  v3 = type metadata accessor for DividerView.Style(0);
  *&v4 = __chkstk_darwin(v3).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[*a1];
  if (!v7)
  {
    return [v1 setNeedsLayout];
  }

  v8 = qword_100920D78;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v3, qword_100980640);
  sub_1001154F8(v10, v6);
  v11 = &v9[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style];
  swift_beginAccess();
  sub_10011555C(v6, v11);
  swift_endAccess();
  v12 = &v9[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v13 = *(v11 + 1);
  *v12 = *v11;
  *(v12 + 1) = v13;
  [v9 setNeedsLayout];
  [v9 setNeedsLayout];
  sub_1001155C0(v6, type metadata accessor for DividerView.Style);
  result = *&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits];
  if (result)
  {
    [result pageMarginInsets];
    *v12 = v15;
    *(v12 + 1) = v16;
    *(v12 + 2) = v17;
    *(v12 + 3) = v18;
    [v9 setNeedsLayout];
    v19 = [v1 contentView];
    [v19 addSubview:v9];

    return [v1 setNeedsLayout];
  }

  __break(1u);
  return result;
}

unint64_t sub_100112544(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media))
  {
LABEL_9:
    type metadata accessor for VideoCollectionViewCell(0);
    sub_1007539D4();
    v10 = sub_100753064();

    isa = sub_100741704().super.isa;
    v12 = [a1 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:isa];

    return v12;
  }

  v3 = sub_100743F84();
  result = sub_100741774();
  if ((v3 & 0xC000000000000001) != 0)
  {
    sub_100754574();
    goto LABEL_6;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_6:

    v5 = sub_100746004();

    if (v5)
    {

      type metadata accessor for ScreenshotCollectionViewCell(0);
      sub_1007539D4();
      v6 = sub_100753064();

      v7 = sub_100741704().super.isa;
      v8 = [a1 dequeueReusableCellWithReuseIdentifier:v6 forIndexPath:v7];

      v9 = swift_dynamicCastClassUnconditional();
      *(*(v9 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_platform) = sub_100743F94();

      sub_10028864C();

      return v9;
    }

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1001129B8(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, char *))
{
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  a6(v15, v13);

  return (*(v11 + 8))(v13, v10);
}

void sub_100112AD4(void *a1)
{
  if (!*(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  v3 = sub_100743F84();

  v4 = sub_100741774();
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  sub_100754574();
LABEL_6:

  v5 = sub_100746004();
  if (v5)
  {
    v6 = v5;
    v7 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
    if (v7)
    {
      v8 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler + 8);

      v9 = sub_100741774();
      v7(v6, v9);
      sub_1000164A8(v7, v8);
    }

    isa = sub_100741704().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];
  }

  else
  {
  }
}

uint64_t type metadata accessor for ProductMediaCollectionViewCell(uint64_t a1)
{
  result = qword_100928E50;
  if (!qword_100928E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100112FC4(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1001130AC(uint64_t a1, int a2, int a3, void *a4, double a5, double a6, double a7, double a8, double a9)
{
  v165 = a9;
  v155 = a8;
  v151 = a3;
  v150 = a2;
  v149 = sub_100754724();
  v152 = *(v149 - 8);
  __chkstk_darwin(v149);
  v15 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = COERCE_DOUBLE(sub_1007428D4());
  v147 = *(*&v148 - 8);
  __chkstk_darwin(*&v148);
  v156 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1007504F4();
  v160 = *(v17 - 8);
  __chkstk_darwin(v17);
  ObjectType = &v147 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v157 = &v147 - v20;
  __chkstk_darwin(v21);
  v23 = &v147 - v22;
  __chkstk_darwin(v24);
  v26 = &v147 - v25;
  v27 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v27 - 8);
  v162 = &v147 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v167 = &v147 - v30;
  __chkstk_darwin(v31);
  v168 = &v147 - v32;
  v33 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v33 - 8);
  v153 = &v147 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_100743F94();
  v159 = a1;
  v35 = sub_100743F84();
  v36 = v35;
  if (v35 >> 62)
  {
LABEL_106:
    v37 = sub_100754664();
  }

  else
  {
    v37 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v170 = v26;
  v154 = v15;
  v169 = v23;
  v163 = a4;
  if (v37)
  {
    v26 = 0;
    v164 = (v36 & 0xC000000000000001);
    a4 = (v36 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v164)
      {
        sub_100754574();
        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
LABEL_16:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v26 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_106;
        }

        v39 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_16;
        }
      }

      if (sub_100746004())
      {
        v38 = sub_10074F114();

        if (v38)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (!sub_100746014())
        {

          v161 = 1;
          a4 = v163;
          v15 = v154;
          goto LABEL_21;
        }

        sub_10074EC14();
        v40 = sub_10074F114();

        v15 = v154;
        if (v40)
        {
LABEL_18:
          v161 = 1;
          a4 = v163;
LABEL_21:
          v23 = v169;
          goto LABEL_22;
        }
      }

      ++v26;
      v23 = v169;
      if (v39 == v37)
      {
        v161 = 0;
        a4 = v163;
        goto LABEL_22;
      }
    }
  }

  v161 = 0;
LABEL_22:

  sub_100743864();

  sub_1002898DC(v41, v153, v42);

  v43 = sub_100743F84();
  if (v43 >> 62)
  {
    v37 = v43;
    v44 = sub_100754664();
  }

  else
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v45 = v160;

  if (v44 >= 1)
  {
    v46 = sub_100743F84();
    v47 = v46;
    if (v46 >> 62)
    {
      v44 = v46;
      v110 = sub_100754664();
      v47 = v44;
      v48 = v110;
      if (v110)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v48 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v48)
      {
LABEL_27:
        if (v48 >= 1)
        {
          v147 = a5;
          v148 = a6;
          v49 = v47;
          ObjectType = swift_getObjectType();
          v50 = 0;
          v157 = (v49 & 0xC000000000000001);
          v51 = (v45 + 56);
          v52 = 0.0;
          v164 = (v45 + 32);
          v53 = (v45 + 48);
          v156 = (v45 + 16);
          v54 = (v45 + 8);
          v160 = v49;
          v159 = v48;
          do
          {
            if (v157)
            {
              sub_100754574();
            }

            else
            {
            }

            if (sub_100746004())
            {
              sub_10074F2A4();
              v58 = v167;
              sub_100750504();

              v59 = *v51;
              (*v51)(v58, 0, 1, v17);
              v60 = v168;
              (*v164)();
              v59(v60, 0, 1, v17);
            }

            else
            {
              v61 = *v51;
              v62 = 1;
              (*v51)(v167, 1, 1, v17);
              if (sub_100746014())
              {
                sub_10074EC14();

                sub_10074F2A4();
                v60 = v168;
                sub_100750504();

                v62 = 0;
              }

              else
              {
                v60 = v168;
              }

              v61(v60, v62, 1, v17);
              v63 = (*v53)(v167, 1, v17);
              v23 = v169;
              if (v63 != 1)
              {
                sub_10000C8CC(v167, &unk_1009281D0, qword_1007A82B0);
              }
            }

            v64 = sub_1007444C4();
            v65 = v60;
            v66 = v162;
            sub_100115488(v65, v162);
            v67 = *v53;
            if ((*v53)(v66, 1, v17) == 1)
            {
              sub_100750504();
              if (v67(v66, 1, v17) != 1)
              {
                sub_10000C8CC(v66, &unk_1009281D0, qword_1007A82B0);
              }
            }

            else
            {
              (*v164)(v170, v66, v17);
            }

            a4 = v163;
            if ((v161 & v64) != 0)
            {
              v68 = v170;
              if (sub_100750444())
              {
                (*v156)(v23, v68, v17);
              }

              else
              {
                sub_100750484();
              }

              v69 = 1;
            }

            else
            {
              (*v156)(v23, v170, v17);
              v69 = sub_100750444();
            }

            v70 = [a4 traitCollection];
            v71 = sub_1007537B4();

            if (v71)
            {
              if (v155 >= a7)
              {
                JUScreenClassGetPortraitWidth();
                v72 = 4.0;
                v73 = 2.0;
                v23 = v169;
                if (v85 < a7)
                {
                  JUScreenClassGetPortraitWidth();
                  if (v86 < a7)
                  {
                    v72 = 5.0;
                  }

                  else
                  {
                    v72 = 4.0;
                  }
                }
              }

              else
              {
                JUScreenClassGetLandscapeWidth();
                v72 = 5.0;
                v73 = 2.0;
                v23 = v169;
                if (v74 < a7)
                {
                  JUScreenClassGetLandscapeWidth();
                  if (v75 < a7)
                  {
                    v72 = 6.0;
                  }

                  else
                  {
                    v72 = 5.0;
                  }
                }
              }
            }

            else
            {
              if (v69)
              {
                v73 = 2.0;
              }

              else
              {
                v73 = 1.0;
              }

              if (v69)
              {
                v72 = 3.0;
              }

              else
              {
                v72 = 1.0;
              }

              v23 = v169;
            }

            [a4 pageMarginInsets];
            v77 = v76;
            [a4 pageMarginInsets];
            v79 = v77 + v78;
            PageTraitEnvironment.pageColumnMargin.getter();
            v81 = (v73 + -1.0) * v80 + v73 / v72 * (v165 - (v79 + (v72 + -1.0) * v80));
            v82 = [a4 traitCollection];
            v83 = sub_1007537B4();

            if ((v83 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_1007504B4(), v81 < v84))
            {
              sub_1007504C4();
            }

            ++v50;
            sub_1007504C4();
            v56 = v55;

            v57 = *v54;
            (*v54)(v23, v17);
            v57(v170, v17);
            sub_10000C8CC(v168, &unk_1009281D0, qword_1007A82B0);
            if (v56 > v52)
            {
              v52 = v56;
            }
          }

          while (v159 != v50);

          v15 = v154;
          a6 = v148;
          a5 = v147;
          goto LABEL_110;
        }

        __break(1u);
        goto LABEL_141;
      }
    }

    v52 = 0.0;
    goto LABEL_110;
  }

  v87 = v156;
  sub_1007444B4();
  v88 = v147;
  v89 = v148;
  v90 = (*(*&v147 + 88))(v87, COERCE_DOUBLE(*&v148));
  v44 = ObjectType;
  v37 = v157;
  if (v90 == enum case for AppPlatform.phone(_:) || v90 == enum case for AppPlatform.pad(_:) || v90 == enum case for AppPlatform.messages(_:))
  {
    goto LABEL_77;
  }

  if (v90 == enum case for AppPlatform.watch(_:))
  {
    if (qword_100920770 == -1)
    {
LABEL_86:
      v92 = sub_10000D0FC(v17, qword_10097ECE0);
      (*(v45 + 16))(v37, v92, v17);
      goto LABEL_78;
    }

LABEL_141:
    swift_once();
    goto LABEL_86;
  }

  if (v90 == enum case for AppPlatform.tv(_:) || v90 == enum case for AppPlatform.mac(_:))
  {
LABEL_77:
    sub_100750504();
    goto LABEL_78;
  }

  sub_100750504();
  (*(*&v88 + 8))(v156, COERCE_DOUBLE(*&v89));
LABEL_78:
  if (sub_1007444C4() & 1) != 0 && (sub_100750444())
  {
    if (sub_100750444())
    {
      (*(v45 + 16))(v44, v37, v17);
    }

    else
    {
      sub_100750484();
    }

    v91 = 1;
  }

  else
  {
    (*(v45 + 16))(v44, v37, v17);
    v91 = sub_100750444();
  }

  swift_getObjectType();
  v93 = [a4 traitCollection];
  v94 = sub_1007537B4();

  if (v94)
  {
    v95 = sub_10063C440(a7, v155);
    v97 = v96;
  }

  else
  {
    if (v91)
    {
      v95 = 2.0;
    }

    else
    {
      v95 = 1.0;
    }

    if (v91)
    {
      v97 = 3.0;
    }

    else
    {
      v97 = 1.0;
    }
  }

  [a4 pageMarginInsets];
  v99 = v98;
  [a4 pageMarginInsets];
  v101 = v99 + v100;
  PageTraitEnvironment.pageColumnMargin.getter();
  v103 = (v95 + -1.0) * v102 + v95 / v97 * (v165 - (v101 + (v97 + -1.0) * v102));
  v104 = [a4 traitCollection];
  v105 = sub_1007537B4();

  v106 = ObjectType;
  if ((v105 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_1007504B4(), v103 < v107))
  {
    sub_1007504C4();
  }

  sub_1007504C4();
  v52 = v108;
  v109 = *(v45 + 8);
  v109(v106, v17);
  v109(v157, v17);
LABEL_110:
  sub_10000C518(&unk_10092F780, &qword_1007A6320);
  inited = swift_initStackObject();
  v170 = xmmword_1007A5A00;
  *(inited + 16) = xmmword_1007A5A00;
  *(inited + 32) = v52;
  v171 = inited;
  v112 = v149;
  if (a5 >= COERCE_DOUBLE(1))
  {
    v113 = swift_initStackObject();
    *(v113 + 16) = xmmword_1007A5620;
    if (qword_1009202A8 != -1)
    {
      swift_once();
    }

    v114 = qword_100928D88;
    sub_10000C888(qword_100928D70, qword_100928D88);
    sub_100536120(v114);
    sub_100750564();
    v116 = v115;
    v117 = *(v152 + 8);
    v117(v15, v112);
    *(v113 + 32) = v116;
    *(v113 + 40) = a5;
    if (qword_1009202B8 != -1)
    {
      swift_once();
    }

    v118 = qword_100928DD8;
    sub_10000C888(qword_100928DC0, qword_100928DD8);
    sub_100536120(v118);
    sub_100750564();
    v120 = v119;
    v117(v15, v112);
    *(v113 + 48) = v120;
    sub_10049FD08(v113);
  }

  if (a6 >= COERCE_DOUBLE(1))
  {
    v121 = swift_initStackObject();
    *(v121 + 16) = xmmword_1007A6580;
    *(v121 + 32) = a6;
    if (qword_1009202C0 != -1)
    {
      swift_once();
    }

    v122 = qword_10097DB50;
    sub_10000C888(qword_10097DB38, qword_10097DB50);
    sub_100536120(v122);
    sub_100750564();
    v124 = v123;
    (*(v152 + 8))(v15, v112);
    *(v121 + 40) = v124;
    sub_10049FD08(v121);
  }

  v125 = swift_initStackObject();
  *(v125 + 16) = v170;
  if (qword_1009202B0 != -1)
  {
    swift_once();
  }

  v126 = qword_100928DB0;
  sub_10000C888(qword_100928D98, qword_100928DB0);
  swift_getObjectType();
  v127 = v154;
  sub_100536120(v126);
  sub_100750564();
  v129 = v128;
  (*(v152 + 8))(v127, v112);
  *(v125 + 32) = v129;
  sub_10049FD08(v125);
  v130 = swift_initStackObject();
  *(v130 + 16) = xmmword_1007A6580;
  v131 = 0.0;
  v132 = 0.0;
  if (v150)
  {
    type metadata accessor for DividerView(0);
    if (qword_100920D78 != -1)
    {
      swift_once();
    }

    v133 = type metadata accessor for DividerView.Style(0);
    v134 = sub_10000D0FC(v133, qword_100980640);
    v132 = sub_1004CB0AC(v134, a4);
  }

  *(v130 + 32) = v132;
  if (v151)
  {
    type metadata accessor for DividerView(0);
    if (qword_100920D78 != -1)
    {
      swift_once();
    }

    v135 = type metadata accessor for DividerView.Style(0);
    v136 = sub_10000D0FC(v135, qword_100980640);
    v131 = sub_1004CB0AC(v136, a4);
  }

  *(v130 + 40) = v131;
  sub_10049FD08(v130);
  v137 = *(v171 + 16);
  if (!v137)
  {
    v138 = v153;
    goto LABEL_139;
  }

  v138 = v153;
  if (v137 <= 3)
  {
    v139 = 0;
    v140 = 0.0;
LABEL_137:
    v143 = v137 - v139;
    v144 = (v171 + 8 * v139 + 32);
    do
    {
      v145 = *v144++;
      v140 = v140 + v145;
      --v143;
    }

    while (v143);
    goto LABEL_139;
  }

  v139 = v137 & 0x7FFFFFFFFFFFFFFCLL;
  v141 = (v171 + 48);
  v140 = 0.0;
  v142 = v137 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v140 = v140 + *(v141 - 2) + *(v141 - 1) + *v141 + v141[1];
    v141 += 4;
    v142 -= 4;
  }

  while (v142);
  if (v137 != v139)
  {
    goto LABEL_137;
  }

LABEL_139:
  sub_1001155C0(v138, type metadata accessor for ScreenshotDisplayConfiguration);

  return v165;
}

unint64_t sub_100114558(uint64_t a1, void *a2, double a3)
{
  v6 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v6 - 8);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1007504F4();
  v8 = *(v69 - 8);
  __chkstk_darwin(v69);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v60 - v12;
  v67 = a1;
  result = sub_100743F84();
  v15 = result;
  if (result >> 62)
  {
    result = sub_100754664();
    v16 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_46:

    return _swiftEmptyArrayStorage;
  }

  v16 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_46;
  }

LABEL_3:
  if (v16 >= 1)
  {
    v17 = 0;
    v68 = v15 & 0xC000000000000001;
    v60 = (v8 + 16);
    v61 = (v8 + 8);
    v18 = _swiftEmptyArrayStorage;
    v64 = v13;
    v65 = v10;
    v62 = v16;
    v63 = v15;
    while (1)
    {
      if (v68)
      {
        v19 = sub_100754574();
        v20 = sub_100746004();
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v19 = *(v15 + 8 * v17 + 32);

        v20 = sub_100746004();
        if (v20)
        {
LABEL_9:
          v21 = v20;
          v70 = v19;
LABEL_13:
          sub_10074F2A4();
          sub_100750504();
          v22 = sub_100743F24();
          sub_100743864();
          v23 = sub_100743F94();
          v24 = v66;
          sub_1002898DC(v23, v66, v25);

          v26 = *(v24 + 64);
          v27 = *(v24 + 80);
          sub_1001155C0(v24, type metadata accessor for ScreenshotDisplayConfiguration);
          swift_getObjectType();
          [a2 pageContainerSize];
          v29 = v28;
          v31 = v30;
          if (v22)
          {
            v32 = sub_100750444();
            v33 = v65;
            if (v32)
            {
              (*v60)(v65, v13, v69);
            }

            else
            {
              sub_100750484();
            }

            v34 = 1;
          }

          else
          {
            v33 = v65;
            (*v60)(v65, v13, v69);
            v34 = sub_100750444();
          }

          v35 = [a2 traitCollection];
          v36 = sub_1007537B4();

          if (v36)
          {
            if (v31 >= v29)
            {
              JUScreenClassGetPortraitWidth();
              v37 = 4.0;
              v38 = 2.0;
              v13 = v64;
              if (v29 > v58)
              {
                JUScreenClassGetPortraitWidth();
                if (v29 > v59)
                {
                  v37 = 5.0;
                }

                else
                {
                  v37 = 4.0;
                }
              }
            }

            else
            {
              JUScreenClassGetLandscapeWidth();
              v37 = 5.0;
              v38 = 2.0;
              v13 = v64;
              if (v29 > v39)
              {
                JUScreenClassGetLandscapeWidth();
                if (v29 > v40)
                {
                  v37 = 6.0;
                }

                else
                {
                  v37 = 5.0;
                }
              }
            }
          }

          else
          {
            if (v34)
            {
              v38 = 2.0;
            }

            else
            {
              v38 = 1.0;
            }

            if (v34)
            {
              v37 = 3.0;
            }

            else
            {
              v37 = 1.0;
            }

            v13 = v64;
          }

          [a2 pageMarginInsets];
          v42 = v41;
          [a2 pageMarginInsets];
          v44 = v42 + v43;
          PageTraitEnvironment.pageColumnMargin.getter();
          v46 = (v38 + -1.0) * v45 + v38 / v37 * (a3 - (v44 + (v37 + -1.0) * v45));
          v47 = [a2 traitCollection];
          v48 = sub_1007537B4();

          if ((v48 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_1007504B4(), v46 < v49))
          {
            sub_1007504C4();
            v49 = v46;
          }

          v50 = v49 - (v26 + v27);
          sub_1007504C4();
          v52 = v51;
          v53 = *v61;
          v54 = v69;
          (*v61)(v33, v69);
          v53(v13, v54);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_100254FF4(0, v18[2] + 1, 1, v18);
          }

          v16 = v62;
          v15 = v63;
          v56 = v18[2];
          v55 = v18[3];
          if (v56 >= v55 >> 1)
          {
            v18 = sub_100254FF4((v55 > 1), v56 + 1, 1, v18);
          }

          v18[2] = v56 + 1;
          v57 = &v18[3 * v56];
          *(v57 + 4) = v21;
          v57[5] = v50;
          *(v57 + 6) = v52;
          goto LABEL_6;
        }
      }

      if (sub_100746014())
      {
        v70 = v19;
        v21 = sub_10074EC14();

        goto LABEL_13;
      }

LABEL_6:
      if (v16 == ++v17)
      {

        return v18;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_100114B04(uint64_t a1)
{
  v2 = v1;
  sub_10000C824(a1, v25);
  sub_10000C518(&unk_100923100, &unk_1007A5F30);
  sub_100743FA4();
  if (swift_dynamicCast())
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher;
    if (!*&v1[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher])
    {
      type metadata accessor for ScreenshotFetcher();
      v4 = swift_allocObject();
      *(v4 + 16) = sub_10041434C(_swiftEmptyArrayStorage);
      *(v4 + 32) = 0;
      swift_unknownObjectWeakInit();
      *(v4 + 32) = &off_100868388;
      swift_unknownObjectWeakAssign();
      *&v1[v3] = v4;
      swift_retain_n();

      v5 = *&v1[v3];
      if (v5)
      {
        *(v5 + 32) = &off_100868388;
        swift_unknownObjectWeakAssign();
      }
    }

    swift_retain_n();
    v6 = [v1 traitCollection];
    sub_1007537B4();

    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media];
    if (v7)
    {
      v8 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits];
      if (!v8)
      {
LABEL_26:
        __break(1u);
        return;
      }

      swift_unknownObjectRetain();
      [v2 bounds];
      v10 = sub_100114558(v7, v8, v9);

      swift_unknownObjectRelease();
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
    }

    v24 = sub_100743F24() & 1;
    v11 = sub_1004C7000(v10, v24);
    v12 = v11;
    v23 = v10[2];
    if (v23)
    {
      v13 = 0;
      v14 = v10 + 6;
      v21 = v11 & 0xC000000000000001;
      v22 = v11 >> 62;
      while (v13 < v10[2])
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        if (v22)
        {
          v18 = sub_100754664();
        }

        else
        {
          v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v13 == v18)
        {
          goto LABEL_22;
        }

        if (v21)
        {

          sub_100754574();
        }

        else
        {
          if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }
        }

        v26 = 0;
        memset(v25, 0, sizeof(v25));
        v19 = swift_allocObject();
        swift_weakInit();
        v20 = swift_allocObject();
        *(v20 + 16) = v24;
        *(v20 + 24) = v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v16;
        *(v20 + 48) = v17;
        *(v20 + 56) = v13;

        sub_1007441F4();

        sub_10000C8CC(v25, &unk_1009276E0, &unk_1007A5C70);

        v14 += 3;
        if (v23 == ++v13)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_22:
  }
}

void sub_100114EC8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_flowLayout;
  *(v1 + v2) = [objc_allocWithZone(type metadata accessor for NestedHorizontalShelfCollectionViewFlowLayout()) init];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_compoundScrollObserver;
  v4 = objc_allocWithZone(sub_100749AF4());
  *(v1 + v3) = sub_100749AE4();
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_fallbackHorizontalViewMargin) = 0x4020000000000000;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits) = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  v6 = sub_1007469A4();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryDividerView) = 0;
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryDividerView) = 0;
  v7 = (v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotSelectionHandler);
  *v7 = 0;
  v7[1] = 0;
  sub_100754644();
  __break(1u);
}

void sub_10011505C(objc_class *a1, uint64_t a2)
{
  v5 = sub_1007417F4();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v2 window];
  if (v10)
  {

    if (*&v2[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media])
    {
      v11 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_collectionView];

      if ([v11 numberOfSections] >= 1 && objc_msgSend(v11, "numberOfItemsInSection:", 0) > a2)
      {
        v12 = sub_100743F84();
        v13 = v12 >> 62 ? sub_100754664() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v13 > a2)
        {
          v14 = sub_100743F84();
          if ((v14 & 0xC000000000000001) == 0)
          {
            if (a2 < 0)
            {
              __break(1u);
            }

            else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
            {

              goto LABEL_12;
            }

            __break(1u);
            return;
          }

          sub_100754574();
LABEL_12:

          sub_10000C518(&qword_1009253E0, &qword_1007A6970);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1007A6580;
          *(v15 + 32) = 0;
          *(v15 + 40) = a2;
          sub_1007416F4();
          isa = sub_100741704().super.isa;
          (*(v6 + 8))(v9, v5);
          v17 = [v11 cellForItemAtIndexPath:isa];

          if (v17)
          {
            type metadata accessor for ScreenshotCollectionViewCell(0);
            v18 = swift_dynamicCastClass();
            if (v18)
            {
              v19 = v18;
              v20 = v17;
              if (sub_100746004())
              {

                v21 = *(*(v19 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
                v27.value.super.isa = a1;
                v27.is_nil = 1;
                sub_1007432F4(v27, v22);

                goto LABEL_26;
              }
            }

            type metadata accessor for VideoCollectionViewCell(0);
            if (swift_dynamicCastClass())
            {
              v17 = v17;
              if (sub_100746014())
              {

                Strong = swift_unknownObjectWeakLoadStrong();
                if (Strong)
                {
                  v24 = Strong;
                  [*(Strong + qword_10093CB50) setImage:a1];
                }
              }
            }
          }

LABEL_26:

          return;
        }
      }
    }
  }
}

uint64_t sub_1001153FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100115434()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100115488(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001154F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011555C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DividerView.Style(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001155C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100115620()
{
  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits) || !*(v0 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media))
  {
    return 0;
  }

  v1 = sub_100743F84();

  if (v1 >> 62)
  {
    v2 = sub_100754664();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2;
}

void sub_1001156BC(void *a1)
{
  v3 = type metadata accessor for ScreenshotDisplayConfiguration(0);
  __chkstk_darwin(v3 - 8);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v12 = sub_1007504F4();
  v59 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  if (!*(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media))
  {
    return;
  }

  [a1 frame];
  if (v18 <= 0.0 || v19 <= 0.0)
  {

    return;
  }

  v57 = v1;
  v20 = v18;
  v21 = sub_100743F84();
  v22 = sub_100741774();
  if ((v21 & 0xC000000000000001) == 0)
  {
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v22 < *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v23 = *(v21 + 8 * v22 + 32);

      goto LABEL_8;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    return;
  }

  v23 = sub_100754574();
LABEL_8:

  v24 = sub_100746004();
  v58 = v23;
  if (v24)
  {
    sub_10074F2A4();
    sub_100750504();

    v25 = v59;
    v26 = *(v59 + 56);
    v26(v8, 0, 1, v12);
    (*(v25 + 32))(v11, v8, v12);
    v26(v11, 0, 1, v12);
    v27 = (*(v25 + 48))(v11, 1, v12);
  }

  else
  {
    v56 = *(v59 + 56);
    v56(v8, 1, 1, v12);
    if (sub_100746014())
    {
      sub_10074EC14();

      sub_10074F2A4();
      sub_100750504();

      v28 = 0;
    }

    else
    {
      v28 = 1;
    }

    v56(v11, v28, 1, v12);
    v25 = v59;
    v29 = *(v59 + 48);
    if (v29(v8, 1, v12) != 1)
    {
      sub_10000C8CC(v8, &unk_1009281D0, qword_1007A82B0);
    }

    v27 = v29(v11, 1, v12);
  }

  if (v27 == 1)
  {

    sub_10000C8CC(v11, &unk_1009281D0, qword_1007A82B0);
    return;
  }

  (*(v25 + 32))(v17, v11, v12);
  sub_100743864();
  v30 = sub_100743F94();
  sub_1002898DC(v30, v5, v31);

  v32 = sub_100743F24();
  v33 = *(v57 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits);
  if (!v33)
  {
    goto LABEL_42;
  }

  v34 = v32;
  [swift_unknownObjectRetain() pageContainerSize];
  v36 = v35;
  v38 = v37;
  if (v34)
  {
    if (sub_100750444())
    {
      (*(v25 + 16))(v14, v17, v12);
    }

    else
    {
      sub_100750484();
    }

    v39 = 1;
  }

  else
  {
    (*(v25 + 16))(v14, v17, v12);
    v39 = sub_100750444();
  }

  swift_getObjectType();
  v40 = [v33 traitCollection];
  v41 = sub_1007537B4();

  if (v41)
  {
    v42 = sub_10063C440(v36, v38);
    v44 = v43;
  }

  else
  {
    if (v39)
    {
      v42 = 2.0;
    }

    else
    {
      v42 = 1.0;
    }

    if (v39)
    {
      v44 = 3.0;
    }

    else
    {
      v44 = 1.0;
    }
  }

  v45 = v59;
  [v33 pageMarginInsets];
  v47 = v46;
  [v33 pageMarginInsets];
  v49 = v47 + v48;
  PageTraitEnvironment.pageColumnMargin.getter();
  v51 = (v42 + -1.0) * v50 + v42 / v44 * (v20 - (v49 + (v44 + -1.0) * v50));
  v52 = [v33 traitCollection];
  v53 = sub_1007537B4();

  if ((v53 & 1) == 0 || (JUScreenClassGetPortraitWidth(), JUScreenClassGetLandscapeWidth(), sub_1007504B4(), v51 < v54))
  {
    sub_1007504C4();
  }

  sub_1007504C4();
  swift_unknownObjectRelease();

  v55 = *(v45 + 8);
  v55(v14, v12);
  sub_1001155C0(v5, type metadata accessor for ScreenshotDisplayConfiguration);
  v55(v17, v12);
}

void sub_100115D84(void *a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_1009281C0, qword_1007ABBB0);
  __chkstk_darwin(v4 - 8);
  v6 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v80 = v70 - v8;
  v9 = sub_10000C518(&unk_100923970, &qword_1007A6B90);
  __chkstk_darwin(v9 - 8);
  v79 = v70 - v10;
  v11 = sub_100744864();
  __chkstk_darwin(v11 - 8);
  __chkstk_darwin(v12);
  v13 = sub_10000C518(&unk_1009281D0, qword_1007A82B0);
  __chkstk_darwin(v13 - 8);
  v15 = v70 - v14;
  v16 = sub_100744894();
  v78 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100747D94();
  __chkstk_darwin(v19);
  v23 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_media);
  if (!v23)
  {
    return;
  }

  v74 = v6;
  v75 = v22;
  v76 = v20;
  v77 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v81 = v23;
  v24 = sub_100743F84();
  v25 = sub_100741774();
  if ((v24 & 0xC000000000000001) == 0)
  {
    if ((v25 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v25 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v26 = *(v24 + 8 * v25 + 32);

      goto LABEL_6;
    }

    __break(1u);
    return;
  }

  v26 = sub_100754574();
LABEL_6:

  type metadata accessor for ScreenshotCollectionViewCell(0);
  v27 = swift_dynamicCastClass();
  if (v27)
  {
    v28 = v27;
    v29 = a1;
    v30 = sub_100746004();
    if (v30)
    {
      v31 = v30;
      v32 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher);
      if (v32)
      {
        swift_beginAccess();
        v33 = *(v32 + 16);

        v35 = sub_10030C758(v31, v33, v34);

        if (v35)
        {
          v36 = *(*(v28 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
          v37 = v35;
          v38 = v36;
          v39 = sub_100743334();

          if (v39)
          {
            sub_100016C60(0, &qword_10092B280, UIImage_ptr);
            v41 = v37;
            v42 = sub_100753FC4();

            v43 = v42 ^ 1;
          }

          else
          {
            v43 = 1;
          }

          v84.is_nil = v43 & 1;
          v84.value.super.isa = v35;
          sub_100743384(v84, v40);
        }

        else
        {
        }

        return;
      }

      goto LABEL_25;
    }

    goto LABEL_24;
  }

  type metadata accessor for VideoCollectionViewCell(0);
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
LABEL_24:

LABEL_25:

    return;
  }

  v73 = v44;
  v45 = a1;
  v46 = sub_100746014();
  if (!v46)
  {

    goto LABEL_24;
  }

  v47 = v46;
  v72 = v26;
  if (!*(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph))
  {

    goto LABEL_25;
  }

  v70[1] = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph);
  v71 = v45;
  v48 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_screenshotFetcher);
  if (v48)
  {

    v49 = sub_10074EC14();
    swift_beginAccess();
    v50 = *(v48 + 16);

    v52 = sub_10030C758(v49, v50, v51);

    if (v52)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v54 = Strong;
        [*(Strong + qword_10093CB50) setImage:v52];
      }
    }
  }

  else
  {
  }

  (*(v78 + 104))(v18, enum case for VideoFillMode.scaleAspectFit(_:), v16);
  sub_10074EC14();
  sub_10074F2A4();
  sub_100750504();

  v55 = sub_1007504F4();
  (*(*(v55 - 8) + 56))(v15, 0, 1, v55);
  sub_10074EBB4();
  sub_10074EBF4();
  LODWORD(v78) = sub_10074EBC4();
  sub_10074EBA4();
  sub_10074EC04();
  sub_100743F94();
  sub_100744504();
  v56 = v47;

  sub_100747D74();
  sub_1007464C4();
  sub_1007526E4();
  sub_10074EB94();
  v57 = v79;
  sub_10074EC24();
  v58 = sub_100741264();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
  v59 = v80;
  sub_10074EBE4();
  v60 = v74;
  v78 = v56;
  sub_10074EBD4();
  type metadata accessor for VideoView(0);
  sub_100116ABC(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
  v61 = sub_1007464A4();
  sub_10000C8CC(v60, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v59, &unk_1009281C0, qword_1007ABBB0);
  sub_10000C8CC(v57, &unk_100923970, &qword_1007A6B90);
  sub_10000C8CC(&v82, &unk_1009276E0, &unk_1007A5C70);
  v62 = v61;
  v63 = v73;
  sub_1003F89C8();
  swift_unknownObjectWeakAssign();
  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v65 = v64;
    v66 = [v63 contentView];
    [v66 addSubview:v65];

    [v63 setNeedsLayout];
  }

  sub_10074B184();
  sub_100752764();
  sub_100752D34();
  v67 = v82;
  v68 = swift_unknownObjectWeakLoadStrong();
  sub_100116ABC(&qword_100928E78, type metadata accessor for VideoCollectionViewCell, &unk_1007BF260);
  v69 = v71;
  sub_10074B164();

  (*(v75 + 8))(v77, v76);
}

void sub_1001167AC(void *a1)
{
  type metadata accessor for ScreenshotCollectionViewCell(0);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = *(*(v3 + OBJC_IVAR____TtC22SubscribePageExtension28ScreenshotCollectionViewCell_borderedScreenshotView) + OBJC_IVAR____TtC22SubscribePageExtension22BorderedScreenshotView_artworkView);
    v5 = a1;
    v9 = v4;
    sub_100743344();
  }

  else
  {
    type metadata accessor for VideoCollectionViewCell(0);
    if (swift_dynamicCastClass() && *(v1 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph))
    {
      sub_10074B184();
      sub_100752764();
      v6 = a1;

      sub_100752D34();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_100116ABC(&qword_1009230E0, type metadata accessor for VideoView, &unk_1007C8140);
      }

      sub_100116ABC(&qword_100928E78, type metadata accessor for VideoCollectionViewCell, &unk_1007BF260);
      v8 = v6;
      sub_10074B124();
    }
  }
}

void sub_1001169B8(void *a1, SEL *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v7 = a1;
      swift_unknownObjectRetain();
      PageTraitEnvironment.pageColumnMargin.getter();
      v9 = v8;
      swift_unknownObjectRelease();
    }

    else
    {
      v10 = a1;
      v9 = 8.0;
    }

    [v6 *a2];
  }

  if (*(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    PageTraitEnvironment.pageColumnMargin.getter();
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100116ABC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100116BF8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CollectionViewTableLayout();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100116C50()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100116CAC@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_100747524();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074F6E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v11 = sub_10074F704();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  v15 = v30;
  v16 = sub_1007537E4();

  if (v16 & 1) != 0 && (swift_getKeyPath(), sub_100746914(), , v17 = v29, v18 = sub_100753804(), v17, (v18 & 1) == 0) && (swift_getKeyPath(), sub_100746914(), , sub_10074F6F4(), (*(v12 + 8))(v14, v11), (*(v5 + 104))(v7, enum case for PageGrid.Direction.horizontal(_:), v4), v19 = sub_10074F6D4(), v20 = *(v5 + 8), v20(v7, v4), v20(v10, v4), (v19))
  {
    (*(v26 + 104))(v25, enum case for ComponentSeparator.Position.top(_:), v27);
    v21 = v28;
    sub_100747534();
    v22 = 0;
  }

  else
  {
    v22 = 1;
    v21 = v28;
  }

  v23 = sub_100747564();
  return (*(*(v23 - 8) + 56))(v21, v22, 1, v23);
}

Class sub_100117080(double a1, uint64_t a2, Class *a3)
{
  sub_10000D198();
  v5 = objc_opt_self();
  v6 = [v5 blackColor];
  v7 = [v6 colorWithAlphaComponent:a1];

  v8 = [v5 whiteColor];
  v9 = [v8 colorWithAlphaComponent:a1];

  v10.super.isa = v7;
  v11.super.isa = v9;
  result = sub_100753EC4(v10, v11).super.isa;
  *a3 = result;
  return result;
}

char *sub_100117158(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_titleView;
  type metadata accessor for TitleHeaderView(0);
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_currentState;
  v11 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v17.receiver = v4;
  v17.super_class = type metadata accessor for InteractiveTitleHeaderView(0);
  v12 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 clearColor];
  [v14 setBackgroundColor:v15];

  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_titleView]];

  return v14;
}

id sub_10011757C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InteractiveTitleHeaderView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for InteractiveTitleHeaderView(uint64_t a1)
{
  result = qword_100928F78;
  if (!qword_100928F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100117654(uint64_t a1)
{
  sub_1000501F0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001176F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_currentState;
  swift_beginAccess();
  return sub_100117A4C(v3 + v4, a1);
}

id sub_100117774(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&unk_100924290, &qword_1007AC8E0);
  __chkstk_darwin(v4 - 8);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &aBlock[-1] - v8;
  v10 = type metadata accessor for InteractiveSectionBackgroundScrollObserver.State(0);
  v11 = sub_1002EF020();
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_titleView];
  result = [v12 overrideUserInterfaceStyle];
  if (result != v11)
  {
    v14 = OBJC_IVAR____TtC22SubscribePageExtension26InteractiveTitleHeaderView_currentState;
    swift_beginAccess();
    sub_100117A4C(v2 + v14, v9);
    v15 = *(v10 - 8);
    v16 = (*(v15 + 48))(v9, 1, v10);
    sub_100117ABC(v9);
    if (v16 == 1)
    {
      [v12 setOverrideUserInterfaceStyle:v11];
    }

    else
    {
      v17 = objc_opt_self();
      v18 = swift_allocObject();
      *(v18 + 16) = v2;
      *(v18 + 24) = v11;
      aBlock[4] = sub_100117BCC;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_100868438;
      v19 = _Block_copy(aBlock);
      v20 = v2;

      [v17 transitionWithView:v12 duration:5308420 options:v19 animations:0 completion:0.4];
      _Block_release(v19);
    }

    sub_100052C34(a1, v6);
    (*(v15 + 56))(v6, 0, 1, v10);
    swift_beginAccess();
    sub_100117B24(v6, v2 + v14);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100117A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100924290, &qword_1007AC8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100117ABC(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100924290, &qword_1007AC8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100117B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100924290, &qword_1007AC8E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100117B94()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_100117BE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_100117C00(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = sub_10000C518(&qword_100934110, qword_1007B70F0);
  __chkstk_darwin(v4 - 8);
  v35 = &v29 - v5;
  v34 = sub_10074C3E4();
  v6 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10000C518(&unk_100925560, &unk_1007A8E30);
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v29 - v8;
  v10 = sub_10000C518(&unk_1009259B0, &unk_1007B0620);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_10074D734();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100925540, &qword_1007A8140);
  __chkstk_darwin(v17 - 8);
  v19 = &v29 - v18;
  v31 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton);
  v32 = a1;
  v30 = sub_100743DA4();
  v20 = sub_100743DC4();
  v21 = sub_100743DB4();
  (*(v14 + 104))(v16, enum case for OfferButtonPresenterViewAlignment.center(_:), v13);
  (*(v14 + 56))(v12, 1, 1, v13);
  sub_100118364(&unk_100925550, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
  sub_10074A9C4();
  v22 = sub_10000C518(&unk_10092EEA0, qword_1007A8150);
  (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  v23 = v34;
  (*(v6 + 104))(v33, enum case for OfferButtonSubtitlePosition.left(_:), v34);
  (*(v6 + 56))(v35, 1, 1, v23);
  sub_100118364(&qword_1009332C0, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
  sub_10074A9C4();
  sub_10015DE40(v30, v20, v21, v19, v9, v38, 0, 0);

  (*(v36 + 8))(v9, v37);
  sub_10005652C(v19);
  sub_100743D84();
  sub_100743D94();
  sub_10074B294();
  sub_100752764();
  sub_100752D34();
  v24 = sub_10074B1F4();
  swift_allocObject();
  v25 = sub_10074B1D4();
  sub_100118364(&qword_100928F88, type metadata accessor for ArcadeLockupView, &unk_1007AC8E8);
  v26 = swift_unknownObjectRetain();
  sub_10074B1E4();
  v39[3] = v24;
  v39[0] = v25;
  v27 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerLabelPresenter;
  swift_beginAccess();

  sub_1001183AC(v39, v26 + v27);
  swift_endAccess();
  [v26 setNeedsLayout];

  return result;
}

double sub_1001181F0(uint64_t a1, uint64_t a2)
{
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel];
  v6 = [v5 text];
  if (!v6)
  {
    if (!a2)
    {
      return result;
    }

    goto LABEL_10;
  }

  v8 = v6;
  v9 = sub_100753094();
  v11 = v10;

  if (!a2)
  {

    v14 = 0;
    goto LABEL_12;
  }

  if (v9 != a1 || v11 != a2)
  {
    v13 = sub_100754754();

    if (v13)
    {
      return result;
    }

LABEL_10:
    v14 = sub_100753064();
LABEL_12:
    [v5 setText:v14];

    [v5 setHidden:sub_100753114() & 1];

    [v2 setNeedsLayout];
    return result;
  }

  return result;
}

uint64_t sub_100118364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001183AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100923520, &qword_1007A5A70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_10011841C()
{
  v0 = sub_100747C14();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100746884();
  v4 = sub_100118548();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_100118548()
{
  v0 = sub_1007473B4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074F704();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100747B84();
  sub_10074F674();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_100747B84();
  sub_10074F5C4();
  v10 = v9;
  v8(v7, v4);
  v11 = sub_100747B94();
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v20.receiver = v13;
  v20.super_class = v12;
  v15 = objc_msgSendSuper2(&v20, "init");
  if (qword_100921850 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v0, qword_10093E790);
  __chkstk_darwin(v16);
  *(&v20 - 2) = v15;
  sub_10074F4B4();

  sub_100747BA4();
  sub_1007473D4();
  sub_100118888(&qword_100928F98, &type metadata accessor for ArcadeFooterLayout, &protocol conformance descriptor for ArcadeFooterLayout);
  sub_100750D34();
  v18 = v17;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return v18;
}

uint64_t sub_100118888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100118934()
{
  v0 = sub_10000C518(&unk_100925370, &qword_1007ABD10);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10000C518(&unk_100929040, qword_1007ACA98);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - v3;
  sub_1007468F4();
  sub_100752994();
  sub_1000E9564();
  sub_100752954();
  return (*(v2 + 8))(v4, v1);
}

void sub_100118C90(uint64_t a1)
{
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v8 = sub_10074F254();
    (*(v5 + 8))(v7, v4);
    sub_10074F374();
    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView);
    v10 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v11 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v13 = v12;
    sub_100744204();
  }
}

void sub_100118F20(uint64_t a1)
{
  swift_getObjectType();
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v8 = sub_10074F254();
    (*(v5 + 8))(v7, v4);
    if (*(v1 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits))
    {
      swift_getObjectType();
      v9 = swift_unknownObjectRetain();
      sub_100120D24(v9);
      swift_unknownObjectRelease();
    }

    sub_10074F374();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView;
    v11 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView);
    sub_10074F324();
    sub_100743364();
    [v11 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();

    [*(v1 + v10) setContentMode:v8];
    v12 = *(v1 + v10);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v13 = v12;
    sub_100744204();
  }
}

void sub_100119200(uint64_t a1)
{
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v8 = sub_10074F254();
    (*(v5 + 8))(v7, v4);
    v9 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension38TodayCardSmallLockupCollectionViewCell_lockupView);
    swift_beginAccess();
    sub_10074F374();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v11 = *(v9 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v11 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();

    [*(v9 + v10) setContentMode:v8];
    v12 = *(v9 + v10);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v13 = v12;
    sub_100744204();
  }
}

void sub_1001194B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100747064();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F284();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = a2;

    sub_10074F294();
    v15 = v3;
    v16 = sub_10074F254();
    (*(v12 + 8))(v14, v11);
    v17 = OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView;
    v18 = v15;
    v19 = *(*(v15 + OBJC_IVAR____TtC22SubscribePageExtension35TodayCardMarketingLockupOverlayView_lockupView) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_lockupView);
    v20 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v19 + v20, v7);
    sub_100746F34();
    (*(v8 + 8))(v10, v7);
    sub_10074F374();
    v21 = *(*(v18 + v17) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v21 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();

    [*(*(v18 + v17) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView) setContentMode:v16];
    v22 = *(*(v18 + v17) + OBJC_IVAR____TtC22SubscribePageExtension19CrossLinkLockupView_artworkView);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v23 = v22;
    sub_100744204();
  }
}

void sub_100119858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v32 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074A7B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  v15 = sub_10074F284();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v31 = a2;

    sub_10074F294();
    v29 = sub_10074F254();
    (*(v16 + 8))(v18, v15);
    v19 = [v3 traitCollection];
    v30 = v3;
    v20 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize];
    v21 = *&v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize + 8];
    v22 = v3[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkSize + 16];
    if (sub_100753804())
    {
      sub_1001C1510(v19, v11);
    }

    else if (v22)
    {
      sub_1001C1848();
    }

    else
    {
      sub_1001C18E8(v20, v21, 0, v23, v24, v25, v26);
    }

    v27 = v29;

    (*(v9 + 32))(v14, v11, v8);
    sub_10074A794();
    (*(v9 + 8))(v14, v8);
    sub_10074F374();
    v28 = *&v30[OBJC_IVAR____TtC22SubscribePageExtension31RibbonBarItemCollectionViewCell_artworkView];
    sub_10074F324();
    sub_100743364();
    [v28 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    [v28 setContentMode:v27];
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
  }
}

void sub_100119C2C(uint64_t a1)
{
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v8 = sub_10074F254();
    (*(v5 + 8))(v7, v4);
    if (qword_100921960 != -1)
    {
      swift_once();
    }

    v9 = sub_100741E54();
    sub_10000D0FC(v9, qword_100982740);
    sub_100741DC4();
    sub_10074F374();
    v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension37InAppPurchaseLockupCollectionViewCell_lockupView);
    v11 = OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView;
    v12 = *(*(v10 + OBJC_IVAR____TtC22SubscribePageExtension23InAppPurchaseLockupView_iconView) + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v12 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();

    [*(*(v10 + v11) + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView) setContentMode:v8];
    v13 = *(*(v10 + v11) + OBJC_IVAR____TtC22SubscribePageExtension17InAppPurchaseView_artworkView);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v14 = v13;
    sub_100744204();
  }
}

void sub_100119F20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v7 = sub_100747064();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F284();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v23 = a2;

    sub_10074F294();
    v15 = sub_10074F254();
    (*(v12 + 8))(v14, v11);
    v16 = v15;
    v17 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension29SmallLockupCollectionViewCell_lockupView);
    v18 = OBJC_IVAR____TtC22SubscribePageExtension15SmallLockupView_metrics;
    swift_beginAccess();
    (*(v8 + 16))(v10, v17 + v18, v7);
    sub_100746F34();
    (*(v8 + 8))(v10, v7);
    sub_10074F374();
    v19 = OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView;
    v20 = *(v17 + OBJC_IVAR____TtC22SubscribePageExtension14BaseLockupView_artworkView);
    sub_10074F324();
    sub_100743364();
    [v20 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();

    [*(v17 + v19) setContentMode:v16];
    v21 = *(v17 + v19);
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v22 = v21;
    sub_100744204();
  }
}

double sub_10011A2A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = v3;
  ObjectType = swift_getObjectType();
  v6 = sub_10074F314();
  __chkstk_darwin(v6 - 8);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_100747814();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10074F284();
  v16 = *(v15 - 8);
  *&result = __chkstk_darwin(v15).n128_u64[0];
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v26 = a2;

    sub_10074F294();
    v25 = sub_10074F254();
    (*(v16 + 8))(v19, v15);
    v20 = v30;
    v21 = [v30 traitCollection];
    sub_10024BBC0(v14);

    sub_1007477E4();
    (*(v12 + 8))(v14, v11);
    v22 = v25;
    v31 = v20;
    sub_100743464();
    (*(v27 + 8))(v10, v8);
    sub_10074F374();
    v23 = *&v20[OBJC_IVAR____TtC22SubscribePageExtension30MediumLockupCollectionViewCell_artworkView];
    sub_10074F324();
    sub_100743364();
    [v23 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    [v23 setContentMode:v22];
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
  }

  return result;
}

double sub_10011A69C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10074F284();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&result = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v17 - v11;
  if (a1)
  {

    sub_10074F294();
    sub_10074F244();
    sub_10011B4B8(&qword_1009290A0, &type metadata accessor for Artwork.Crop, &protocol conformance descriptor for Artwork.Crop);
    v13 = sub_100753014();
    v14 = *(v6 + 8);
    v14(v8, v5);
    if (v13)
    {
      v15 = 6;
    }

    else
    {
      v15 = sub_10074F254();
    }

    v14(v12, v5);
    sub_10074F374();
    v16 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension29LargeLockupCollectionViewCell_artworkView);
    sub_10074F324();
    sub_100743364();
    [v16 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    [v16 setContentMode:v15];
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
  }

  return result;
}

double sub_10011A99C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10074F314();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10074F284();
  v6 = *(v5 - 8);
  *&result = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v10 = sub_10074F254();
    (*(v6 + 8))(v9, v5);
    v11 = sub_10011B4B8(&qword_1009290A8, type metadata accessor for BrickCollectionViewCell, &unk_1007BA548);
    (*(v11 + 24))(ObjectType, v11);
    sub_10074F374();
    v12 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension23BrickCollectionViewCell_artworkView);
    sub_10074F324();
    sub_100743364();
    [v12 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    [v12 setContentMode:v10];
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
  }

  return result;
}

double sub_10011AC50(uint64_t a1)
{
  v3 = sub_10074F314();
  __chkstk_darwin(v3 - 8);
  v4 = sub_10074F284();
  v5 = *(v4 - 8);
  *&result = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    sub_10074F294();
    v9 = sub_10074F254();
    (*(v5 + 8))(v8, v4);
    sub_10074F374();
    v10 = *(v1 + qword_1009805D0);
    sub_10074F324();
    sub_100743364();
    [v10 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500, UIColor_ptr);
      sub_100753E34();
    }

    sub_100743224();
    [v10 setContentMode:v9];
    sub_1007433C4();
    sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_100744204();
  }

  return result;
}

char *sub_10011AEB8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_preferredArtworkSize];
  type metadata accessor for QuoteView(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v12 = 0;
  *(v12 + 1) = 0;
  v14 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView] = v14;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
  v16 = [v15 contentView];
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v17 = [v15 contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView]];

  return v15;
}

uint64_t type metadata accessor for QuoteCollectionViewCell(uint64_t a1)
{
  result = qword_100929078;
  if (!qword_100929078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011B29C(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10011B37C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension23QuoteCollectionViewCell_quoteView);
  v4 = OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC22SubscribePageExtension9QuoteView_artworkView);
  sub_100743204();

  v6 = *(v3 + v4);
  sub_1007433C4();
  sub_10011B4B8(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_100744274();
}

uint64_t sub_10011B460(uint64_t a1)
{
  result = sub_10011B4B8(&unk_100929090, type metadata accessor for QuoteCollectionViewCell, &unk_1007ACAF0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10011B4B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_10011B550(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  isEscapingClosureAtFileLocation = sub_10074AB44();
  v7 = *(isEscapingClosureAtFileLocation - 8);
  __chkstk_darwin(isEscapingClosureAtFileLocation);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100750534();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C518(&unk_100928A40, qword_1007A6630);
  __chkstk_darwin(v14 - 8);
  v16 = &v35 - v15;
  v4[OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_size] = a1 & 1;
  if ((a1 & 1) == 0)
  {
    if (qword_100921540 != -1)
    {
      swift_once();
    }

    v17 = qword_100981CF8;
    goto LABEL_7;
  }

  if (qword_100921548 != -1)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v17 = qword_100981D10;
LABEL_7:
    v18 = sub_10000D0FC(v10, v17);
    (*(v11 + 16))(v13, v18, v10);
    (*(v11 + 32))(v16, v13, v10);
    v19 = *(v11 + 56);
    v11 += 56;
    v19(v16, 0, 1, v10);
    v20 = *(v7 + 104);
    v7 += 104;
    v20(v9, enum case for DirectionalTextAlignment.none(_:), isEscapingClosureAtFileLocation);
    v21 = objc_allocWithZone(sub_100745C84());
    *&v4[OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel] = sub_100745C74();
    v22 = type metadata accessor for CountBadgeView();
    v39.receiver = v4;
    v39.super_class = v22;
    v23 = objc_msgSendSuper2(&v39, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v35);
    v24 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 2) = v23;
    v9[24] = a1 & 1;
    v10 = swift_allocObject();
    *(v10 + 16) = sub_10011C108;
    *(v10 + 24) = v9;
    aBlock[4] = sub_10011C13C;
    v38 = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10011B528;
    aBlock[3] = &unk_100868568;
    v16 = _Block_copy(aBlock);
    v13 = v38;
    v4 = v23;

    [v24 performWithoutAnimation:v16];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_13:
    swift_once();
  }

  v25 = objc_opt_self();
  v26 = [v25 redColor];
  [v4 setBackgroundColor:v26];

  v27 = OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel;
  v28 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel];
  if (v36)
  {
    v29 = v28;
    v30 = sub_100753064();
  }

  else
  {
    v31 = v28;
    v30 = 0;
  }

  [v28 setText:v30];

  v32 = *&v4[v27];
  v33 = [v25 whiteColor];
  [v32 setTextColor:v33];

  [v4 addSubview:*&v4[v27]];
  [v4 setUserInteractionEnabled:0];

  return v4;
}

id sub_10011BB14(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel];
  v5 = [v4 text];
  if (a2)
  {
    if (v5)
    {

      v6 = sub_100753064();

LABEL_9:
      [v4 setText:v6];

      return [v2 setNeedsLayout];
    }

    v14 = sub_100753064();

    [v4 setText:v14];

    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v2;
    v23 = sub_10011C1DC;
    v24 = v16;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1000CF7B0;
    v22 = &unk_100868658;
    v9 = _Block_copy(&v19);
    v17 = v2;

    [v15 animateWithDuration:4 delay:v9 options:0 animations:0.2 completion:0.0];
  }

  else
  {
    if (!v5)
    {
      v6 = 0;
      goto LABEL_9;
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v2;
    v23 = sub_10011C1B4;
    v24 = v8;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_1000CF7B0;
    v22 = &unk_1008685B8;
    v9 = _Block_copy(&v19);
    v10 = v2;

    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v23 = sub_10011C1BC;
    v24 = v11;
    v19 = _NSConcreteStackBlock;
    v20 = 1107296256;
    v21 = sub_100144DD8;
    v22 = &unk_100868608;
    v12 = _Block_copy(&v19);
    v13 = v10;

    [v7 animateWithDuration:4 delay:v9 options:v12 animations:0.2 completion:0.0];
    _Block_release(v12);
  }

  _Block_release(v9);
  return [v2 setNeedsLayout];
}

id sub_10011C000(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CountBadgeView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_10011C07C()
{
  result = qword_1009290E8;
  if (!qword_1009290E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009290E8);
  }

  return result;
}

uint64_t sub_10011C0D0()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_10011C108()
{
  v1 = 9.0;
  if (*(v0 + 24))
  {
    v1 = 12.0;
  }

  return [*(v0 + 16) _setContinuousCornerRadius:v1];
}

double sub_10011C164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_10011C17C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10011C1DC()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

void sub_10011C21C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension14CountBadgeView_countLabel);
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    sub_100753094();

    v4 = sub_100753194();

    if (v4 >= 2)
    {
      [v1 sizeThatFits:{0.0, 0.0}];
    }
  }
}

uint64_t sub_10011C328(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  if ((sub_1007544C4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for InfoDebugSetting();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  if (v2[7] != v1[7] || v2[8] != v1[8])
  {
    v4 = v2;
    v5 = sub_100754754();
    v2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = v2[10];
  v7 = v1[10];
  v8 = (v6 | v7) == 0;
  if (!v6 || !v7)
  {
    return v8;
  }

  if (v2[9] == v1[9] && v6 == v7)
  {
    return 1;
  }

  return sub_100754754();
}

void sub_10011C454(uint64_t a1, __n128 a2)
{
  sub_1007544D4();
  sub_100753174();
  if (*(v2 + 80))
  {
    sub_100754854(1u);

    sub_100753174();
  }

  else
  {
    sub_100754854(0);
  }
}

double sub_10011C4E4()
{

  return result;
}

uint64_t sub_10011C514()
{
  sub_100016994(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_10011C5B4()
{
  result = qword_1009291C0;
  if (!qword_1009291C0)
  {
    sub_100749B24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009291C0);
  }

  return result;
}

uint64_t sub_10011C60C(uint64_t a1, uint64_t a2)
{
  v2 = sub_100752624();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100742AB4();
  sub_100752764();
  sub_100752D34();
  v6 = sub_100749B04();
  v8 = v7;
  v9 = sub_100749B14() & 1;
  v13._countAndFlagsBits = v6;
  v13._object = v8;
  sub_100742A84(v13, v9);

  sub_10000C518(&qword_100930CA0, &unk_1007A58A0);
  (*(v3 + 104))(v5, enum case for ActionOutcome.performed(_:), v2);
  v10 = sub_100752D84();

  return v10;
}

uint64_t sub_10011C77C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      LOBYTE(v4) = 1;
      return v4 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v4 = v12 - 4;
        v13 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          sub_100754574();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          if (!v11)
          {
LABEL_24:
            if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v14 = *(a2 + 8 * v12);

            goto LABEL_26;
          }
        }

        v14 = sub_100754574();
LABEL_26:
        LOBYTE(v4) = sub_10007A834(v14);

        if (v4)
        {
          ++v12;
          if (v13 != v5)
          {
            continue;
          }
        }

        return v4 & 1;
      }
    }

    v15 = (v3 + 32);
    v16 = (a2 + 32);
    v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v5 - 1;
    while (1)
    {
      if (!v17)
      {
        goto LABEL_40;
      }

      if (!v18)
      {
        break;
      }

      v20 = *v15++;
      a2 = v20;
      v21 = *v16++;
      v3 = v21;

      v4 = sub_10007A834(v22);

      v24 = v19-- != 0;
      if (v4)
      {
        --v18;
        --v17;
        if (v24)
        {
          continue;
        }
      }

      return v4 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_100754664();
  }

  result = sub_100754664();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  LOBYTE(v4) = 0;
  return v4 & 1;
}

uint64_t sub_10011C9B8(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_100754664();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_100754664();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = sub_100754574();
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = sub_100754574();
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 96))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10011CB8C(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_46;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      return 0;
    }

LABEL_5:
    if (!v5)
    {
      return 1;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
      return 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v16 = i - 4;
        v17 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = sub_100754574();
          if (!v11)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v4 = *(a1 + 8 * i);

          if (!v11)
          {
LABEL_29:
            if (v16 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_45;
            }

            v13 = *(a2 + 8 * i);

            goto LABEL_19;
          }
        }

        v13 = sub_100754574();
LABEL_19:
        v14 = *(v4 + 16);

        v4 = *(v13 + 16);

        result = v14 == v4;
        if (v14 != v4 || v17 == v5)
        {
          return result;
        }
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v5 - 1;
    while (1)
    {
      if (!v20)
      {
        goto LABEL_42;
      }

      if (!v21)
      {
        break;
      }

      v24 = *v18++;
      v23 = v24;
      v25 = *v19++;
      v26 = *(v23 + 16);
      v27 = *(v25 + 16);
      v29 = v22-- != 0;
      result = v26 == v27;
      if (v26 == v27)
      {
        --v21;
        --v20;
        if (v29)
        {
          continue;
        }
      }

      return result;
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v5 = sub_100754664();
  }

  result = sub_100754664();
  if (v5 == result)
  {
    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_10011CDF0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_10000D198();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_100754574();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_100754574();
LABEL_26:
        v17 = v16;
        v18 = sub_100753FC4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_100753FC4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_100754664();
  }

  result = sub_100754664();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_10011D030(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4;
      if (v6 == 6)
      {
        if (v7 != 6)
        {
          return 0;
        }
      }

      else if (v5 == 5)
      {
        if (v7 != 5)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v7 != 4)
        {
          return 0;
        }
      }

      else if ((v7 - 7) > 0xFFFFFFFC || v5 != v7)
      {
        return 0;
      }

      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10011D0CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10074ED34();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_10011D844(&qword_100929298, 255, &type metadata accessor for AdamId, &protocol conformance descriptor for AdamId);
    v22 = sub_100753014();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10011D32C(unint64_t a1, unint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    v22 = a3;
    result = sub_100754664();
    a3 = v22;
    if (v9 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v19 = 0;
    return v19 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v9)
  {
    goto LABEL_28;
  }

  v11 = a1 & 0xFFFFFFFFFFFFFF8;
  v12 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v11 = a1;
  }

  if (v8)
  {
    v12 = v11;
  }

  v13 = a2 & 0xFFFFFFFFFFFFFF8;
  v14 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v13 = a2;
  }

  if (a2 >> 62)
  {
    v14 = v13;
  }

  if (v12 == v14)
  {
LABEL_28:
    v19 = 1;
    return v19 & 1;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    a3(0);
    v15 = a2 & 0xC000000000000001;
    v16 = 4;
    v8 = v9;
    while (1)
    {
      v17 = v16 - 4;
      v18 = v16 - 3;
      if (__OFADD__(v16 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v20 = a3;
        v21 = sub_100754664();
        a3 = v20;
        v9 = v21;
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        sub_100754574();
        if (v15)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v15)
        {
LABEL_20:
          sub_100754574();
          goto LABEL_25;
        }
      }

      if (v17 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_10011D844(a4, 255, a5, a6);
      v19 = sub_100753014();

      if (v19)
      {
        ++v16;
        if (v18 != v8)
        {
          continue;
        }
      }

      return v19 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_10011D53C(uint64_t a1)
{
  sub_100753174();
  sub_100753174();
  v3 = *(v1 + 48);
  if (v3 >> 62)
  {
    v7 = sub_100754664();
    sub_100754844(v7);
    v4 = sub_100754664();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    sub_100754844(*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_100754574();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      (*(*v6 + 104))(a1);
    }
  }
}

uint64_t sub_10011D64C()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_10011D6B8()
{
  sub_100754834();
  sub_10011D53C(v1);
  return sub_100754884();
}

Swift::Int sub_10011D720(uint64_t a1)
{
  sub_100754834();
  sub_10011D53C(v2);
  return sub_100754884();
}

uint64_t sub_10011D7B4(void *a1, void *a2)
{
  v4 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v4 && (sub_100754754() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v5 && (sub_100754754() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6];
  v7 = a2[6];

  return sub_10011C9B8(v6, v7);
}

uint64_t sub_10011D844(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_10011D9C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_100754724();
  v11 = *(v10 - 8);
  v112 = v10;
  v113 = v11;
  __chkstk_darwin(v10);
  v13 = v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100743B04();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for StarRatingControl();
  v114.receiver = v4;
  v114.super_class = v18;
  objc_msgSendSuper2(&v114, "drawRect:", a1, a2, a3, a4);
  v19 = UIGraphicsGetCurrentContext();
  v20 = [v4 tintColor];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 CGColor];

    if (v19)
    {
      CGContextSetFillColorWithColor(v19, v22);
    }

    v104 = v13;
    v105 = v22;
    v106 = v19;
    [v5 bounds];
    CGRectGetMidY(v120);
    v24 = [v5 traitCollection];
    v109 = v5;
    if (qword_1009202D8 != -1)
    {
      swift_once();
    }

    v115.is_nil = qword_1009292A0;
    v103 = qword_1009292A0;
    v115.value._rawValue = 0;
    isa = sub_1007537C4(v115, v23).super.isa;
    v102[1] = sub_100016C60(0, &qword_1009448C0, UIImageSymbolConfiguration_ptr);
    v111 = UIFontTextStyleTitle2;
    v26 = sub_100753A64();
    v27 = enum case for SystemImage.starFill(_:);
    v28 = *(v15 + 104);
    v108 = v15 + 104;
    v28(v17, enum case for SystemImage.starFill(_:), v14);
    v29 = [v26 configurationWithTraitCollection:{isa, v28}];
    v30 = v14;
    v107 = v14;
    v31 = v29;
    v32 = sub_100743AE4();

    v110 = *(v15 + 8);
    v110(v17, v30);
    v33 = [v32 imageWithRenderingMode:2];

    [v33 size];
    v34 = [v109 traitCollection];
    v116.value._rawValue = 0;
    LOBYTE(v33) = v103;
    v116.is_nil = v103;
    v35 = sub_1007537C4(v116, v118).super.isa;
    v36 = sub_100753A64();
    v37 = v27;
    v38 = v107;
    v28(v17, v37, v107);
    v39 = [v36 configurationWithTraitCollection:v35];
    v40 = sub_100743AE4();

    v110(v17, v38);
    v41 = [v40 imageWithRenderingMode:2];

    v42 = [v109 traitCollection];
    v117.value._rawValue = 0;
    v117.is_nil = v33;
    v43 = sub_1007537C4(v117, v119).super.isa;
    v44 = sub_100753A64();
    v45 = v107;
    (v102[0])(v17, enum case for SystemImage.star(_:), v107);
    v46 = [v44 configurationWithTraitCollection:v43];
    v47 = sub_100743AE4();

    v110(v17, v45);
    v110 = [v47 imageWithRenderingMode:2];

    v111 = v41;
    v48 = v41;
    v49 = v109;
    [(NSString *)v48 size];
    v51 = v50;
    v52 = [v49 traitCollection];
    LOBYTE(v42) = sub_1007537F4();

    if (v42)
    {
      v121.origin.x = a1;
      v121.origin.y = a2;
      v121.size.width = a3;
      v121.size.height = a4;
      v53.n128_f64[0] = CGRectGetMaxX(v121);
    }

    else
    {
      v53.n128_f64[0] = v51 + 12.0;
      v54.n128_u64[0] = 0;
    }

    v55 = v104;
    v56 = enum case for FloatingPointRoundingRule.down(_:);
    v57 = v112;
    v58 = v113;
    v59 = *(v113 + 104);
    (v59)(v104, enum case for FloatingPointRoundingRule.down(_:), v112, v53, v54);
    sub_100753D84();
    v61 = v60;
    v63 = v62;
    v64 = *(v58 + 8);
    v113 = v58 + 8;
    v64(v55, v57);
    v65 = OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating;
    if (*&v49[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating])
    {
      v66 = v111;
    }

    else
    {
      v66 = v110;
    }

    [(NSString *)v66 drawAtPoint:v61, v63];
    v67 = [v49 traitCollection];
    v68 = sub_1007537F4();

    if (v68)
    {
      v122.origin.x = a1;
      v122.origin.y = a2;
      v122.size.width = a3;
      v122.size.height = a4;
      CGRectGetMaxX(v122);
    }

    v69 = v112;
    v59(v55, v56, v112);
    sub_100753D84();
    v71 = v70;
    v73 = v72;
    v64(v55, v69);
    if (*&v49[v65] <= 1uLL)
    {
      v74 = v110;
    }

    else
    {
      v74 = v111;
    }

    [(NSString *)v74 drawAtPoint:v71, v73];
    v75 = [v49 traitCollection];
    v76 = sub_1007537F4();

    if (v76)
    {
      v123.origin.x = a1;
      v123.origin.y = a2;
      v123.size.width = a3;
      v123.size.height = a4;
      CGRectGetMaxX(v123);
    }

    v77 = v112;
    v59(v55, v56, v112);
    sub_100753D84();
    v79 = v78;
    v81 = v80;
    v64(v55, v77);
    if (*&v49[v65] <= 2uLL)
    {
      v82 = v110;
    }

    else
    {
      v82 = v111;
    }

    [(NSString *)v82 drawAtPoint:v79, v81];
    v83 = [v49 traitCollection];
    v84 = sub_1007537F4();

    if (v84)
    {
      v124.origin.x = a1;
      v124.origin.y = a2;
      v124.size.width = a3;
      v124.size.height = a4;
      CGRectGetMaxX(v124);
    }

    v85 = v112;
    v59(v55, v56, v112);
    sub_100753D84();
    v87 = v86;
    v89 = v88;
    v64(v55, v85);
    if (*&v49[v65] <= 3uLL)
    {
      v90 = v110;
    }

    else
    {
      v90 = v111;
    }

    [(NSString *)v90 drawAtPoint:v87, v89];
    v91 = [v49 traitCollection];
    v92 = sub_1007537F4();

    if (v92)
    {
      v125.origin.x = a1;
      v125.origin.y = a2;
      v125.size.width = a3;
      v125.size.height = a4;
      CGRectGetMaxX(v125);
    }

    v93 = v112;
    v59(v55, v56, v112);
    sub_100753D84();
    v95 = v94;
    v97 = v96;
    v64(v55, v93);
    v98 = *&v49[v65];
    v100 = v110;
    v99 = v111;
    if (v98 <= 4)
    {
      v101 = v110;
    }

    else
    {
      v101 = v111;
    }

    [(NSString *)v101 drawAtPoint:v95, v97];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10011E440(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  [v4 locationInView:v5];
  sub_10011E5CC(v6);
  v7 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating] = v8;
  if (v7 != v8)
  {
    [v5 setNeedsDisplay];
  }

  return 1;
}

void sub_10011E5CC(double a1)
{
  v2 = v1;
  v4 = sub_100743B04();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 traitCollection];
  if (qword_1009202D8 != -1)
  {
    swift_once();
  }

  v26.is_nil = qword_1009292A0;
  v26.value._rawValue = 0;
  isa = sub_1007537C4(v26, v9).super.isa;
  sub_100016C60(0, &qword_1009448C0, UIImageSymbolConfiguration_ptr);
  v12 = sub_100753A64();
  (*(v5 + 104))(v8, enum case for SystemImage.starFill(_:), v4);
  v13 = [v12 configurationWithTraitCollection:isa];
  v14 = sub_100743AE4();

  (*(v5 + 8))(v8, v4);
  v15 = [v14 imageWithRenderingMode:2];

  [v15 size];
  v17 = v16;

  v18 = (v17 + 12.0) * 5.0;
  v19 = [v2 traitCollection];
  LOBYTE(v15) = sub_1007537F4();

  [v2 bounds];
  MidX = CGRectGetMidX(v27);
  v21 = a1 - (MidX - v18 * 0.5);
  v22 = v18 * 0.5 + MidX - a1;
  if ((v15 & 1) == 0)
  {
    v22 = v21;
  }

  v23 = v22 / (v18 / 5.0);
  if (v23 > 5.0)
  {
    v23 = 5.0;
  }

  if (v23 <= 1.0)
  {
    v23 = 1.0;
  }

  v24 = ceil(v23);
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v24 <= -1.0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v24 >= 1.84467441e19)
  {
LABEL_15:
    __break(1u);
  }
}

void sub_10011EB30(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_100753094();
    v6 = a1;
    v7 = sub_100753064();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for StarRatingControl();
  objc_msgSendSuper2(&v9, *a4, v7);
}

void *sub_10011EC40()
{
  v1 = v0;
  v2 = 0;
  v3 = _swiftEmptyArrayStorage;
  v21 = _swiftEmptyArrayStorage;
  do
  {
    if (v2 >= 5)
    {
      v4 = &selRef_accessibilitySetStarRatingFive;
      if (v2 != 5)
      {
        v22._object = 0x800000010076C240;
        v22._countAndFlagsBits = 0xD00000000000001ALL;
        v24._countAndFlagsBits = 0;
        v24._object = 0xE000000000000000;
        sub_10074B194(v22, v2, v24);
LABEL_2:

        goto LABEL_3;
      }
    }

    else
    {
      v4 = off_1008686F0[v2];
    }

    v5 = *v4;
    v23._object = 0x800000010076C240;
    v23._countAndFlagsBits = 0xD00000000000001ALL;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_10074B194(v23, v2, v25);
    if (!v5)
    {
      goto LABEL_2;
    }

    v20 = type metadata accessor for StarRatingControl();
    v19[0] = v1;
    v6 = v1;
    v7 = sub_100753064();

    v8 = v20;
    if (v20)
    {
      v9 = sub_10000C888(v19, v20);
      v10 = *(v8 - 8);
      v11 = __chkstk_darwin(v9);
      v13 = &v19[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_100754734();
      (*(v10 + 8))(v13, v8);
      sub_10000C620(v19);
    }

    else
    {
      v14 = 0;
    }

    v15 = [objc_allocWithZone(UIAccessibilityCustomAction) initWithName:v7 target:v14 selector:v5];

    swift_unknownObjectRelease();
    v16 = v15;
    sub_100753284();
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100753304();
    }

    sub_100753344();

    v3 = v21;
LABEL_3:
    ++v2;
  }

  while (v2 != 6);
  return v3;
}

uint64_t sub_10011EF74(uint64_t a1)
{
  v3 = sub_1007521E4();
  v37 = *(v3 - 8);
  v38 = v3;
  __chkstk_darwin(v3);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100752224();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752244();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v33 - v14;
  v16 = OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating;
  v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating] = a1;
  if (v17 != a1)
  {
    [v1 setNeedsDisplay];
    a1 = *&v1[v16];
  }

  v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_lastSentRating];
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_lastSentRating] = a1;
  if (v18 != a1)
  {
    [v1 sendActionsForControlEvents:4096];
  }

  v45._object = 0x800000010076C1D0;
  v45._countAndFlagsBits = 0xD000000000000017;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v19 = sub_1007458B4(v45, v48);
  v21 = v20;
  v46._countAndFlagsBits = 0xD00000000000001DLL;
  v46._object = 0x800000010076C1F0;
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  v22 = sub_1007458B4(v46, v49);
  v24 = v23;
  aBlock = v19;
  v40 = v21;

  v47._countAndFlagsBits = v22;
  v47._object = v24;
  sub_1007531B4(v47);

  v26 = aBlock;
  v25 = v40;
  sub_100016C60(0, &qword_100926D00, OS_dispatch_queue_ptr);
  v27 = sub_100753774();
  sub_100752234();
  sub_1007522B4();
  v33 = *(v9 + 8);
  v33(v11, v8);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v25;
  v43 = sub_10011F6D8;
  v44 = v28;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_1000CF7B0;
  v42 = &unk_1008686C8;
  v29 = _Block_copy(&aBlock);

  sub_100752204();
  aBlock = _swiftEmptyArrayStorage;
  sub_10002DCDC();
  sub_10000C518(&unk_10092F750, &qword_1007A6920);
  sub_1000A8054();
  v30 = v34;
  v31 = v38;
  sub_1007543A4();
  sub_100753734();
  _Block_release(v29);

  (*(v37 + 8))(v30, v31);
  (*(v35 + 8))(v7, v36);
  return (v33)(v15, v8);
}

void sub_10011F3DC(uint64_t a1, uint64_t a2)
{
  v2 = UIAccessibilityAnnouncementNotification;
  v3 = sub_100753064();
  UIAccessibilityPostNotification(v2, v3);
}

id sub_10011F644(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StarRatingControl();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10011F6A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_10011F6E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_10011F6F8(char a1)
{
  v2 = sub_100743B04();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009202D8 != -1)
  {
    swift_once();
  }

  v15.is_nil = qword_1009292A0;
  v15.value._rawValue = 0;
  v7.super.isa = sub_1007537C4(v15, v4).super.isa;
  sub_100016C60(0, &qword_1009448C0, UIImageSymbolConfiguration_ptr);
  v8 = sub_100753A64();
  v9 = &enum case for SystemImage.starFill(_:);
  if ((a1 & 1) == 0)
  {
    v9 = &enum case for SystemImage.star(_:);
  }

  (*(v3 + 104))(v6, *v9, v2);
  v10 = [v8 configurationWithTraitCollection:v7.super.isa];
  v11 = sub_100743AE4();

  (*(v3 + 8))(v6, v2);
  v12 = [v11 imageWithRenderingMode:2];

  return v12;
}

void sub_10011F8E8(void *a1)
{
  if (a1)
  {
    [a1 locationInView:v1];
    sub_10011E5CC(v2);
    v4 = OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating;
    v5 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating];
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_rating] = v3;
    if (v5 != v3)
    {
      [v1 setNeedsDisplay];
      v3 = *&v1[v4];
    }

    v6 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_lastSentRating];
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension17StarRatingControl_lastSentRating] = v3;
    if (v6 != v3)
    {

      [v1 sendActionsForControlEvents:4096];
    }
  }
}

uint64_t sub_10011F99C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a2;
  v4 = sub_100749154();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100754724();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SmallBreakoutCollectionViewCell(0);
  swift_getObjectType();
  v12 = sub_100120D24(a1);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v13 = [a1 traitCollection];
  v14 = sub_1007537D4();

  if (v14)
  {
    [a1 pageMarginInsets];
    if (JUScreenClassGetMain() == 1)
    {
      v15 = 160.0;
    }

    else
    {
      sub_100753994();
      sub_100753BA4();
      v20 = v19 + -10.0;
      v33[0] = 156.0;
      sub_1007502D4();
      sub_100750564();
      v22 = v21;
      (*(v9 + 8))(v11, v8);
      v15 = v20 - v22;
    }

    v34 = &type metadata for CGFloat;
    v35 = &protocol witness table for CGFloat;
    v33[0] = v15;
    sub_10000C8CC(&v30, &qword_100931390, &qword_1007ABDE0);
    *&v30 = 0x4014000000000000;
    *(&v31 + 1) = &type metadata for CGFloat;
    v32 = &protocol witness table for CGFloat;
  }

  else
  {
    [a1 pageContainerSize];
    v17 = v16;
    [a1 pageContainerSize];
    if (v18 >= v17)
    {
      PageTraitEnvironment.pageColumnWidth.getter();
    }

    else
    {
      [a1 pageMarginInsets];
      [a1 pageMarginInsets];
    }

    sub_1007486D4();
    v24 = v12 + v23 + v23;
    sub_100753994();
    sub_100753BA4();
    v34 = &type metadata for CGFloat;
    v35 = &protocol witness table for CGFloat;
    v33[0] = v25 + -10.0 - v24;
    sub_10000C8CC(&v30, &qword_100931390, &qword_1007ABDE0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
  }

  sub_100120E28(&v30, v29);
  v28[12] = &protocol witness table for CGFloat;
  v28[11] = &type metadata for CGFloat;
  v28[8] = 0x4024000000000000;
  sub_10000C824(v33, v7);
  (*(v5 + 104))(v7, enum case for BreakoutDetailsLayout.DetailDimension.static(_:), v4);
  if (qword_1009202E8 != -1)
  {
    swift_once();
  }

  v26 = sub_10000C518(&qword_100929350, &unk_1007ACE60);
  sub_10000D0FC(v26, qword_10097DBD0);
  v28[2] = a1;
  swift_unknownObjectRetain();
  sub_100743464();
  swift_unknownObjectRelease();
  sub_1007486E4();
  sub_10000C8CC(&v30, &qword_100931390, &qword_1007ABDE0);
  return sub_10000C620(v33);
}

uint64_t sub_10011FE8C()
{
  v0 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  sub_100039C50(v0, qword_1009292F0);
  sub_10000D0FC(v0, qword_1009292F0);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  type metadata accessor for CGSize(0);
  return sub_100743484();
}

uint64_t sub_10011FF3C()
{
  v0 = sub_10000C518(&qword_100929350, &unk_1007ACE60);
  sub_100039C50(v0, qword_10097DBD0);
  sub_10000D0FC(v0, qword_10097DBD0);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_10000C518(&qword_100929358, &unk_1007C9F70);
  return sub_100743484();
}

char *sub_10012000C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000C518(&qword_100932560, qword_1007A7BB0);
  __chkstk_darwin(v11 - 8);
  v13 = &v39 - v12;
  v14 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  __chkstk_darwin(v17 - 8);
  v19 = &v39 - v18;
  v20 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v21 = sub_1007469A4();
  (*(*(v21 - 8) + 56))(&v5[v20], 1, 1, v21);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_backgroundArtwork] = 0;
  v22 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_100921BB8 != -1)
  {
    swift_once();
  }

  v23 = sub_10000D0FC(v14, qword_100982C08);
  sub_100121090(v23, v16, v24);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_1007434A4();
  v25 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *&v5[v22] = sub_10058E048(v19);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits] = 0;
  sub_1007433C4();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView] = sub_1007431D4();
  v40.receiver = v5;
  v40.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v40, "initWithFrame:", a1, a2, a3, a4);
  v27 = [v26 contentView];
  [v27 setClipsToBounds:1];

  v28 = [v26 contentView];
  [v28 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v29 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView;
  v30 = qword_100920480;
  v31 = *&v26[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView];
  if (v30 != -1)
  {
    swift_once();
  }

  v32 = sub_10074F0C4();
  v33 = sub_10000D0FC(v32, qword_10097E140);
  v34 = *(v32 - 8);
  (*(v34 + 16))(v13, v33, v32);
  (*(v34 + 56))(v13, 0, 1, v32);
  sub_100743374();

  v35 = *&v26[v29];
  CGAffineTransformMakeRotation(&v39, -0.523598776);
  [v35 setTransform:&v39];
  v36 = [v26 contentView];
  [v36 addSubview:*&v26[v29]];

  v37 = [v26 contentView];
  [v37 addSubview:*&v26[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_detailsView]];

  return v26;
}

id sub_1001205CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100750354();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1007486F4();
  __chkstk_darwin(v7 - 8);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100748714();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  result = objc_msgSendSuper2(&v21, "layoutSubviews", v12);
  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits];
  if (v16)
  {
    swift_unknownObjectRetain();
    sub_1007477B4();
    sub_10011F99C(v16, v9);
    v17 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView];
    sub_100753C84();

    v18 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_detailsView];
    v20[3] = type metadata accessor for BreakoutDetailsView(0);
    v20[4] = &protocol witness table for UIView;
    v20[0] = v18;
    v19 = v18;
    sub_100748704();
    [v1 bounds];
    sub_1007486C4();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v3);
    return (*(v11 + 8))(v14, v10);
  }

  return result;
}

double sub_10012089C()
{
  ObjectType = swift_getObjectType();
  v13.receiver = v0;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_detailsView];
  sub_10058CDC4(v3);
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "setBackgroundColor:", 0);
  v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView];
  v11.receiver = v0;
  v11.super_class = ObjectType;
  v5 = v4;
  v6 = objc_msgSendSuper2(&v11, "backgroundColor");
  sub_100743224();

  v7 = (v2 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler);
  v8 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler);
  v9 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension19BreakoutDetailsView_callToActionButtonHandler + 8);
  *v7 = 0;
  v7[1] = 0;
  return sub_1000164A8(v8, v9);
}

uint64_t type metadata accessor for SmallBreakoutCollectionViewCell(uint64_t a1)
{
  result = qword_100929330;
  if (!qword_100929330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100120AA8(uint64_t a1)
{
  sub_100016898(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_100120B64()
{
  if (!*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits))
  {
    return 0.0;
  }

  swift_getObjectType();
  swift_getObjectType();
  v1 = swift_unknownObjectRetain();
  v2 = sub_100120D24(v1);
  swift_unknownObjectRelease();
  return v2;
}

void sub_100120BF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView;
  v5 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_iconView);
  sub_100743204();

  v6 = *(v3 + v4);
  sub_1007433C4();
  sub_100120DE0(&qword_100925570, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  sub_100744274();
}

uint64_t sub_100120CCC(uint64_t a1)
{
  result = sub_100120DE0(&qword_100929348, type metadata accessor for SmallBreakoutCollectionViewCell, &unk_1007ACE10);
  *(a1 + 8) = result;
  return result;
}

double sub_100120D24(uint64_t a1)
{
  if (JUScreenClassGetMain() == 1)
  {
    return 194.0;
  }

  if (qword_1009202E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C518(&qword_100928550, &unk_1007B4B20);
  sub_10000D0FC(v2, qword_1009292F0);
  sub_100743464();
  return v3;
}

uint64_t sub_100120DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100120E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100931390, &qword_1007ABDE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100120E98(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for BreakoutDetailsView.Config(0);
  __chkstk_darwin(v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&qword_100929360, &unk_1007ACE70);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - v7;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_itemLayoutContext;
  v10 = sub_1007469A4();
  (*(*(v10 - 8) + 56))(v2 + v9, 1, 1, v10);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_backgroundArtwork) = 0;
  v11 = OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_detailsView;
  if (qword_100921BB8 != -1)
  {
    swift_once();
  }

  v12 = sub_10000D0FC(v3, qword_100982C08);
  sub_100121090(v12, v5, v13);
  sub_10000C518(&unk_100923AE0, &qword_1007A8370);
  sub_1007434A4();
  v14 = objc_allocWithZone(type metadata accessor for BreakoutDetailsView(0));
  *(v2 + v11) = sub_10058E048(v8);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension31SmallBreakoutCollectionViewCell_pageTraits) = 0;
  sub_100754644();
  __break(1u);
}