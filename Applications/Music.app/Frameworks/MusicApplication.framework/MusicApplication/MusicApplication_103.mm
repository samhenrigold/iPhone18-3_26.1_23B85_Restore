void sub_94049C(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  Width = CGRectGetWidth(*(a1 + 176));
  if (*(a2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == 1)
  {
    v9 = *(a3 + 24);
    if (*(v9 + 16))
    {
      v10 = Width;
      v11 = sub_8E0BA4(a4);
      Width = v10;
      if (v12)
      {
        v13 = CGRectGetWidth(*(*(v9 + 56) + 32 * v11));
        Width = v10 + vabdd_f64(v13, CGRectGetWidth(*(a4 + 80)));
      }
    }

    Width = -Width;
  }

  v14 = *(a1 + 208);
  if (v14)
  {
    CGAffineTransformMakeTranslation(&v16, Width, 0.0);
    [v14 setTransform:&v16];
    v15 = *(a1 + 208);
    if (v15)
    {
      [v15 setAlpha:0.0];
    }
  }
}

void sub_9405A0(uint64_t a1, uint64_t a2)
{
  v4 = Int.seconds.getter(50);
  v5 = *(a2 + 208);
  if (v5)
  {
    if (*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction))
    {
      v4 = -v4;
    }

    CGAffineTransformMakeTranslation(&v6, v4, 0.0);
    [v5 setTransform:&v6];
  }
}

void sub_940624(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    v2 = *(a1 + 144);
    v3 = *(a1 + 152);
    v4 = *(a1 + 160);
    v5 = *(a1 + 168);
    v7 = v1;
    v11.origin.x = v2;
    v11.origin.y = v3;
    v11.size.width = v4;
    v11.size.height = v5;
    MinX = CGRectGetMinX(v11);
    v9 = CGRectGetMinX(*(a1 + 176));
    CGAffineTransformMakeTranslation(&v10, MinX - v9, 0.0);
    [v7 setTransform:&v10];
  }
}

id sub_9406D4(char a1, double *a2)
{
  v3 = *(a2 + 14);
  if (a1)
  {
    if (v3)
    {
      v4 = a2[10];
      v5 = a2[11];
      v6 = a2[12];
      v7 = a2[13];
      v8 = v3;
      v12.origin.x = v4;
      v12.origin.y = v5;
      v12.size.width = v6;
      v12.size.height = v7;
      Height = CGRectGetHeight(v12);
      CGAffineTransformMakeTranslation(&v11, 0.0, -Height);
      [v8 setTransform:&v11];
    }
  }

  else if (v3)
  {
    CGAffineTransformMakeTranslation(&v11, 0.0, 20.0);
    [v3 setTransform:&v11];
  }

  result = *(a2 + 14);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

void *sub_9407C8(void *result, CGFloat a2)
{
  v2 = result[14];
  if (v2)
  {
    CGAffineTransformMakeTranslation(&v3, 0.0, a2);
    return [v2 setTransform:&v3];
  }

  return result;
}

void sub_940828(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = swift_beginAccess();
    *(a2 + 16) = 1;
    a3(v5);
  }
}

id *sub_9408A0(double a1, double a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90, &unk_B38CF0);
  __chkstk_darwin();
  v102 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v100 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EC0, &qword_B38D20);
  __chkstk_darwin();
  v9 = &v100 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88, &qword_B38CE8);
  __chkstk_darwin();
  v108 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = (&v100 - v11);
  __chkstk_darwin();
  v13 = &v100 - v12;
  v14 = sub_AB35A0();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v101 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v100 - v17;
  __chkstk_darwin();
  v110 = &v100 - v18;
  v19 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v19 setAlignment:*&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];
  v111 = v19;
  [v19 setLineBreakStrategy:3];
  v20 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
  v21 = v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 216];
  v103 = v15;
  if ((v21 & 1) == 0)
  {
    v22 = *(v20 + 26);
    v23 = v14;
    v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind;
    if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
    {
      v25 = 224;
    }

    else
    {
      v25 = 200;
    }

    [*&v20[v25] ascender];
    v27 = v3[v24];
    v14 = v23;
    v15 = v103;
    if (v27)
    {
      v28 = 224;
    }

    else
    {
      v28 = 200;
    }

    v29 = v22 - v26;
    [*&v20[v28] descender];
    [v111 setLineSpacing:v29 + v30];
  }

  v31 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v33 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v32 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];

  LOBYTE(v33) = String.containsExcessiveHeightCharacters.getter(v33, v32);

  if (v33)
  {
    v113 = Int.seconds.getter(0);
    v112[0] = v113;
    CTFontGetLanguageAwareOutsets();
    v34 = v113 + v112[0];
    v35 = v111;
    [v111 lineSpacing];
    [v35 setLineSpacing:v34 + v36];
  }

  v37 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  swift_beginAccess();
  sub_15F84(&v3[v37], v13, &qword_E21E88, &qword_B38CE8);
  v109 = *(v15 + 48);
  v38 = v109(v13, 1, v14);
  v107 = v37;
  v106 = v15 + 48;
  if (v38 == 1)
  {
    v39 = &qword_E21E88;
    v40 = &qword_B38CE8;
    v41 = v13;
LABEL_17:
    sub_12E1C(v41, v39, v40);
    goto LABEL_20;
  }

  v42 = v110;
  (*(v15 + 32))(v110, v13, v14);
  sub_AB3590();
  v43 = sub_AB3530();
  if ((*(*(v43 - 8) + 48))(v9, 1, v43) != 1)
  {
    (*(v15 + 8))(v42, v14);
    v39 = &qword_E21EC0;
    v40 = &qword_B38D20;
    v41 = v9;
    goto LABEL_17;
  }

  sub_12E1C(v9, &qword_E21EC0, &qword_B38D20);
  v44 = v105;
  sub_15F84(&v3[v37], v105, &qword_E21E88, &qword_B38CE8);
  if (v109(v44, 1, v14))
  {
    sub_12E1C(v44, &qword_E21E88, &qword_B38CE8);
    (*(v15 + 8))(v42, v14);
LABEL_20:
    v49 = v14;
    goto LABEL_21;
  }

  v45 = v100;
  (*(v15 + 16))(v100, v44, v14);
  sub_12E1C(v44, &qword_E21E88, &qword_B38CE8);
  v46 = v104;
  sub_AB3570();
  v47 = *(v15 + 8);
  (v47)(v45, v14);
  v48 = sub_AB34C0();
  v49 = v14;
  v50 = *(v48 - 8);
  if ((*(v50 + 48))(v46, 1, v48) == 1)
  {
    sub_12E1C(v46, &qword_E21E90, &unk_B38CF0);
    v14 = v49;
    (v47)(v42, v49);
    goto LABEL_20;
  }

  v105 = v47;
  sub_AB34A0();
  (*(v50 + 8))(v46, v48);

  (v105)(v42, v49);
LABEL_21:
  v105 = *v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E23D50, &unk_B3A600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF85D0;
  *(inited + 32) = NSFontAttributeName;
  v104 = (inited + 32);
  v52 = 200;
  if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
  {
    v52 = 224;
  }

  v53 = *&v20[v52];
  v54 = sub_13C80(0, &qword_E23D60, UIFont_ptr);
  *(inited + 40) = v53;
  v110 = v3;
  *(inited + 64) = v54;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v55 = sub_13C80(0, &qword_E229A0, NSMutableParagraphStyle_ptr);
  v56 = v111;
  *(inited + 80) = v111;
  *(inited + 104) = v55;
  *(inited + 112) = NSForegroundColorAttributeName;
  v57 = objc_opt_self();
  v58 = v53;

  v59 = NSFontAttributeName;
  v60 = NSParagraphStyleAttributeName;
  v61 = v110;
  v111 = v56;
  v62 = NSForegroundColorAttributeName;
  v63 = [v57 whiteColor];
  v64 = sub_13C80(0, &unk_E23820, UIColor_ptr);
  *(inited + 120) = v63;
  *(inited + 144) = v64;
  *(inited + 152) = NSLanguageIdentifierAttributeName;
  v65 = v108;
  sub_15F84(&v61[v107], v108, &qword_E21E88, &qword_B38CE8);
  if (v109(v65, 1, v49))
  {
    v66 = NSLanguageIdentifierAttributeName;
    v67 = &qword_E21E88;
    v68 = &qword_B38CE8;
LABEL_27:
    sub_12E1C(v65, v67, v68);
    v74 = (inited + 160);
    *(inited + 184) = &type metadata for String;
LABEL_28:
    *v74 = 0;
    v75 = 0xE000000000000000;
    goto LABEL_29;
  }

  v69 = v103;
  v70 = v101;
  (*(v103 + 16))(v101, v65, v49);
  v71 = NSLanguageIdentifierAttributeName;
  sub_12E1C(v65, &qword_E21E88, &qword_B38CE8);
  v65 = v102;
  sub_AB3570();
  (*(v69 + 8))(v70, v49);
  v72 = sub_AB34C0();
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(v65, 1, v72) == 1)
  {
    v67 = &qword_E21E90;
    v68 = &unk_B38CF0;
    goto LABEL_27;
  }

  v98 = sub_AB34A0();
  v75 = v99;
  (*(v73 + 8))(v65, v72);
  v74 = (inited + 160);
  *(inited + 184) = &type metadata for String;
  if (!v75)
  {
    goto LABEL_28;
  }

  *v74 = v98;
LABEL_29:
  *(inited + 168) = v75;
  sub_92CF00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224C0, &unk_B396E0);
  swift_arrayDestroy();
  v76 = objc_allocWithZone(NSAttributedString);
  v77 = sub_AB9260();

  _s3__C3KeyVMa_2(0);
  sub_954D9C(&qword_E23D70, _s3__C3KeyVMa_2, &unk_B38C10);
  isa = sub_AB8FD0().super.isa;

  v79 = [v76 initWithString:v77 attributes:isa];

  v80 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager;
  v81 = *&v61[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager];
  if (v81)
  {
    v82 = v81[3];

    v83 = [v82 attributedString];
    if (!v83 || (v84 = v83, sub_13C80(0, &qword_E229A8, NSAttributedString_ptr), v85 = v79, v86 = sub_ABA790(), v84, v85, v87 = v81, (v86 & 1) == 0))
    {
      v87 = v81;
      (*(*v81 + 176))(v79);
    }
  }

  else
  {
    type metadata accessor for TextKitManager();
    swift_allocObject();
    TextKitManager.init(text:size:)(v79, a1);
    v87 = v88;
    *&v61[v80] = v88;
    swift_retain_n();
  }

  v89 = *(*v87 + 112);

  v91 = v89(v90);

  [v91 size];
  v93 = v92;

  if (v93 == a1)
  {
  }

  else
  {
    (*(*v87 + 184))(a1, a2);
    v94 = sub_92D028(_swiftEmptyArrayStorage);

    v95 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v96 = v110;
    swift_beginAccess();
    *&v96[v95] = v94;
  }

  return v87;
}

void sub_941670(char a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
  v11 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v11)
  {
    v12 = *(v11 + 48);
    v13 = *(v11 + 56);
  }

  else
  {
    v13 = sub_9529FC(_swiftEmptyArrayStorage, sub_952A98);
    v12 = 0;
  }

  v153 = v12;
  v154 = v13;
  v151 = 0;
  v152 = sub_9529FC(_swiftEmptyArrayStorage, sub_952A98);
  v132 = v10;
  if (a2)
  {
    goto LABEL_48;
  }

  v14 = *(v5 + v10);
  if (!v14)
  {
    goto LABEL_48;
  }

  v15 = v14[3];
  *&v137[0] = v14[2];
  *(&v137[0] + 1) = v15;
  v140 = 10;
  v141 = 0xE100000000000000;
  v138 = 0;
  v139 = 0xE000000000000000;
  sub_931F14();

  if (sub_ABAAB0() == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text) && v16 == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8))
  {
  }

  else
  {
    v17 = sub_ABB3C0();

    if ((v17 & 1) == 0)
    {
      v21 = sub_92D028(_swiftEmptyArrayStorage);
      v22 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
      swift_beginAccess();
      *(v5 + v22) = v21;

      sub_95B160();

      *(v5 + v10) = 0;

      v153 = 0;
      v154 = _swiftEmptyArrayStorage;
      goto LABEL_48;
    }
  }

  v18 = v14[5];
  v19 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  if (v18)
  {
    if (!v19 || (v14[4] != *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText) || v18 != v19) && (sub_ABB3C0() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    if ((a1 & 1) == 0)
    {
      sub_945384(a1 & 1, a3);

      goto LABEL_84;
    }

    goto LABEL_19;
  }

  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_19:
  v20 = v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata;
  swift_beginAccess();
  if (*(v20 + 8))
  {

    goto LABEL_48;
  }

  v126 = v20;
  v127 = v13;
  v128 = v12;
  v23 = sub_92D028(_swiftEmptyArrayStorage);
  v129 = v14;
  v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  swift_beginAccess();
  *(v5 + v24) = v23;
  v25 = v129;

  v26 = sub_92D2A0(_swiftEmptyArrayStorage);
  v27 = sub_92D3C4(_swiftEmptyArrayStorage);
  v28 = v129[7];
  v130 = *(v28 + 16);
  if (!v130)
  {
    goto LABEL_47;
  }

  v125 = v5;

  v29 = 0;
  while (1)
  {
    if (v29 >= *(v28 + 16))
    {
      goto LABEL_87;
    }

    v30 = *(v28 + 8 * v29 + 32);
    swift_beginAccess();
    swift_retain_n();

    v33 = sub_952FD0(v31, v32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v137[0] = v26;
    v36 = sub_8E0BA4(v30);
    v37 = v26[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v26[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = *&v137[0];
        if ((v35 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        sub_92B790();
        v26 = *&v137[0];
        if ((v40 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      sub_929B04(v39, isUniquelyReferenced_nonNull_native);
      v41 = sub_8E0BA4(v30);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_91;
      }

      v36 = v41;
      v26 = *&v137[0];
      if ((v40 & 1) == 0)
      {
LABEL_31:
        sub_92AA80(v36, v30, v33, v26);
        goto LABEL_35;
      }
    }

    *(v26[7] + 8 * v36) = v33;

LABEL_35:
    v133 = *(v30 + 80);
    v135 = *(v30 + 96);

    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v137[0] = v27;
    v44 = sub_8E0BA4(v30);
    v46 = v27[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_89;
    }

    v50 = v45;
    if (v27[3] < v49)
    {
      sub_929870(v49, v43);
      v44 = sub_8E0BA4(v30);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_91;
      }

LABEL_40:
      v27 = *&v137[0];
      if (v50)
      {
        goto LABEL_41;
      }

      goto LABEL_24;
    }

    if (v43)
    {
      goto LABEL_40;
    }

    v53 = v44;
    sub_92B628();
    v44 = v53;
    v27 = *&v137[0];
    if (v50)
    {
LABEL_41:
      v52 = (v27[7] + 32 * v44);
      *v52 = v133;
      v52[1] = v135;

      goto LABEL_25;
    }

LABEL_24:
    sub_92AA34(v44, v30, v27, *&v133, *(&v133 + 1), *&v135, *(&v135 + 1));
LABEL_25:
    ++v29;

    if (v130 == v29)
    {

      v5 = v125;
      v25 = v129;
LABEL_47:

      v54 = sub_9529FC(_swiftEmptyArrayStorage, sub_952A98);
      v55 = v25[5];
      v136 = v25[4];

      v134 = *(v25 + 5);
      v131 = *(v25 + 4);

      v56 = *(v126 + 48);
      v137[2] = *(v126 + 32);
      v137[3] = v56;
      v57 = *(v126 + 80);
      v137[4] = *(v126 + 64);
      v137[5] = v57;
      v58 = *(v126 + 16);
      v137[0] = *v126;
      v137[1] = v58;
      *v126 = v128;
      *(v126 + 8) = v127;
      *(v126 + 16) = v26;
      *(v126 + 24) = v27;
      *(v126 + 32) = 0;
      *(v126 + 40) = v54;
      *(v126 + 48) = v131;
      *(v126 + 64) = v134;
      *(v126 + 80) = v136;
      *(v126 + 88) = v55;
      sub_12E1C(v137, &qword_E22980, &unk_B39CC0);
LABEL_48:
      v150 = 0;
      v148 = Int.seconds.getter(0);
      v149 = v148;
      v146 = 0;
      v147 = 0;
      if (*(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords))
      {

        sub_9429AC(v59);
        v146 = v60;
        v147 = v61;
      }

      v145 = 0;
      v62 = sub_9529FC(_swiftEmptyArrayStorage, sub_952A98);
      v143 = 0;
      v144 = v62;
      v142 = _swiftEmptyArrayStorage;
      v63 = v5;
      v64 = sub_9408A0(a3, a4);
      v65 = [v64[2] usageBoundsForTextContainer];
      v67 = v66;
      MaxY = v68;
      v70 = (*(*v64 + 24))(v65);
      v71 = (v70 + 80);
      v72 = -*(v70 + 16);
      v73 = -1;
      while (v72 + v73 != -1)
      {
        if (++v73 >= *(v70 + 16))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v74 = *(v71 - 5);
        v75 = *(v71 - 4);
        v76 = *(v71 - 3);
        v77 = *(v71 - 2);
        v78 = *(v71 - 1);
        v79 = *v71;
        v80 = *(v71 - 6);
        v81 = [v80 lineRef];
        if (!v81)
        {
          goto LABEL_90;
        }

        v82 = v81;
        v71 += 7;
        sub_942BBC(v80, v81, v78, v79, 0, &v149, v63, &v153, v74, v75, v76, v77, a3, a4, &v143, &v150, &v142, &v146, &v148, &v145, &v151);
        v84 = v83;

        if ((v84 & 1) == 0)
        {

          sub_7E8334(v146, v147);

          goto LABEL_84;
        }
      }

      v85 = v63;
      v86 = (v63 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
      if (*(v63 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
      {
        swift_beginAccess();
        if (v148 > v67)
        {
          v87 = v148;
        }

        else
        {
          v87 = v67;
        }

        v88 = v132;
        if (*(v63 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) == 2)
        {
          swift_beginAccess();
          v89 = v144;
          v90 = v144[2];
          if (v90)
          {
            v91 = 0;
            v92 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
            do
            {
              if (v91 >= v89[2])
              {
                goto LABEL_86;
              }

              v93 = v89[v91 + 4];
              if (*(v93 + 56) == 1)
              {
                v94 = *(v93 + 58) ^ v85[v92];
                v95 = *(v93 + 104);
                if (!v85[v92])
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v94 = 0;
                v95 = *(v93 + 104);
                if (!v85[v92])
                {
                  goto LABEL_71;
                }
              }

              if (v94)
              {
LABEL_71:
                v96 = *(v93 + 88);
                v98 = *(v93 + 96);
                v99 = v87 - v98;
                v97 = *(v93 + 80);
                goto LABEL_72;
              }

              v97 = *(v93 + 80);
              v96 = *(v93 + 88);
              v98 = *(v93 + 96);
              v99 = v87 - v67 + v97;
LABEL_72:
              *(v93 + 80) = v99;
              v100 = v96;
              v101 = v98;
              v102 = v95;
              if (!CGRectEqualToRect(*(&v95 - 3), *&v97))
              {
                *(v93 + 128) = 0;
              }

              ++v91;
            }

            while (v90 != v91);
          }
        }

        swift_beginAccess();
        v103 = v144[2];
        if (v103)
        {
          v104 = v144[v103 + 3];

          if (v104)
          {
            MaxY = CGRectGetMaxY(*(v104 + 80));

            v67 = v87;
          }
        }

        v105 = *&v85[v132];
        if (v105)
        {
LABEL_78:
          v106 = v105[8];
          v107 = v105[9];
          v108 = v105[10];
          v109 = v105[11];
          v110 = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
          v105[2] = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
          *(v105 + 3) = v110;

          v111 = *(v86 + 1);
          v105[4] = *v86;
          *(v105 + 5) = v111;

          swift_beginAccess();
          v112 = v144;
          *(v105 + 6) = v143;
          *(v105 + 7) = v112;

          v105[8] = 0.0;
          v105[9] = 0.0;
          v105[10] = v67;
          v105[11] = MaxY;
          v156.origin.x = 0.0;
          v156.origin.y = 0.0;
          v155.origin.x = v106;
          v155.origin.y = v107;
          v155.size.width = v108;
          v155.size.height = v109;
          v156.size.width = v67;
          v156.size.height = MaxY;
          v113 = CGRectEqualToRect(v155, v156);
          sub_945384(!v113, a3);

          goto LABEL_81;
        }
      }

      else
      {
        v88 = v132;
        v105 = *(v63 + v132);
        if (v105)
        {
          goto LABEL_78;
        }
      }

      v114 = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
      v115 = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
      v116 = *v86;
      v117 = *(v86 + 1);
      swift_beginAccess();
      v118 = v143;
      v119 = v144;
      _s13TextContainerCMa();
      v120 = swift_allocObject();
      *(v120 + 96) = 0;
      *(v120 + 16) = v114;
      *(v120 + 24) = v115;
      *(v120 + 32) = v116;
      *(v120 + 40) = v117;
      *(v120 + 48) = v118;
      *(v120 + 56) = v119;
      *(v120 + 64) = 0;
      *(v120 + 72) = 0;
      *(v120 + 80) = v67;
      *(v120 + 88) = MaxY;
      *&v85[v88] = v120;

      sub_945384(1, a3);
LABEL_81:
      v122 = sub_941610(v137);
      if (*(v121 + 8))
      {
        v123 = v121;
        swift_beginAccess();
        v124 = v152;
        *(v123 + 32) = v151;
        *(v123 + 40) = v124;
      }

      (v122)(v137, 0);
      [v85 setNeedsLayout];

      sub_7E8334(v146, v147);

LABEL_84:

      return;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  _s4LineCMa();
  sub_ABB4C0();
  __break(1u);
}

uint64_t sub_94227C(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  v7 = sub_94E220(&v32, a1, 0, 1, v5, sub_955568, sub_952A98, v6);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = sub_ABB060();
  }

  else
  {
    v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v10 = v32;
  if (v32 == v9)
  {
    sub_94E450(a1, sub_952A98);
    return v7;
  }

  if (v32 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v8)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_ABB060() < 0)
    {
      goto LABEL_52;
    }

    v11 = sub_ABB060();
  }

  else
  {
    v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v11 < v10)
  {
    goto LABEL_48;
  }

  v12 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v10)
  {
    _s4LineCMa();

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_ABAE00(v13);
      v13 = v14;
    }

    while (v10 != v14);
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = sub_ABB070();
    i = v16;
    v3 = v17;
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v8)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v10) | 1;
LABEL_23:
  v30 = v15;
  v31 = a1 & 0xC000000000000001;
  sub_ABB3F0();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v20 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v12 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v18)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v33 = v7;
    v34 = i;
    if (v9 < v10)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v8)
    {
      v21 = sub_ABB060();
    }

    else
    {
      v21 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    if (v21 < v9)
    {
      goto LABEL_50;
    }

    if (!v12)
    {

      goto LABEL_41;
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v15 = v30;
    v12 = v31;
LABEL_22:
    sub_94CE20(v1, v15, i, v3, _s4LineCMa);
  }

  _s4LineCMa();

  v22 = v10;
  do
  {
    v23 = v22 + 1;
    sub_ABAE00(v22);
    v22 = v23;
  }

  while (v9 != v23);
LABEL_41:

  if (v8)
  {
    sub_ABB070();
    v24 = v26;
    v10 = v27;
    v25 = v28;
  }

  else
  {
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v9) | 1;
  }

  sub_954A6C(v24, v10, v25);
  swift_unknownObjectRelease();

  return v33;
}

uint64_t sub_942614(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  v7 = sub_94E220(&v32, a1, 0, 1, v5, sub_9559A0, sub_952C28, v6);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = sub_ABB060();
  }

  else
  {
    v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v10 = v32;
  if (v32 == v9)
  {
    sub_94E450(a1, sub_952C28);
    return v7;
  }

  if (v32 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v8)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_ABB060() < 0)
    {
      goto LABEL_52;
    }

    v11 = sub_ABB060();
  }

  else
  {
    v11 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (v11 < v10)
  {
    goto LABEL_48;
  }

  v12 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v10)
  {
    _s4WordCMa();

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      sub_ABAE00(v13);
      v13 = v14;
    }

    while (v10 != v14);
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = sub_ABB070();
    i = v16;
    v3 = v17;
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v8)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v10) | 1;
LABEL_23:
  v30 = v15;
  v31 = a1 & 0xC000000000000001;
  sub_ABB3F0();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v20 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v12 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v18)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v33 = v7;
    v34 = i;
    if (v9 < v10)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v8)
    {
      v21 = sub_ABB060();
    }

    else
    {
      v21 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    if (v21 < v9)
    {
      goto LABEL_50;
    }

    if (!v12)
    {

      goto LABEL_41;
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v15 = v30;
    v12 = v31;
LABEL_22:
    sub_94CE20(v1, v15, i, v3, _s4WordCMa);
  }

  _s4WordCMa();

  v22 = v10;
  do
  {
    v23 = v22 + 1;
    sub_ABAE00(v22);
    v22 = v23;
  }

  while (v9 != v23);
LABEL_41:

  if (v8)
  {
    sub_ABB070();
    v24 = v26;
    v10 = v27;
    v25 = v28;
  }

  else
  {
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v9) | 1;
  }

  sub_954A6C(v24, v10, v25);
  swift_unknownObjectRelease();

  return v33;
}

void sub_9429AC(uint64_t a1)
{
  v2 = static MPMediaLibraryFilteringOptions.none.getter();
  v4 = sub_94E36C(&v20, a1, 0, 1, v2, v3);
  v5 = *(a1 + 16);
  v6 = v20;
  if (v20 != v5)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (v5 < v20)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      sub_94CFA8(a1, a1 + 32, 0, (2 * v20) | 1);
      v21 = v4;
      v22 = v7;
      if (*(a1 + 16) >= v5)
      {

        for (i = a1 + 56 * v6 + 48; ; i += 56)
        {
          if (v6 >= v5)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          v9 = *(i + 16);
          v24 = *i;
          v25 = v9;
          v23 = *(i - 16);
          v26 = *(i + 32);
          v27 = v24;
          v28 = v9;
          v10 = v21;
          v11 = v22;
          v12 = *(v22 + 16);
          if (v21)
          {
            sub_C8C3C(&v27, v19);
            sub_15F84(&v28, v19, &qword_E224E0, &unk_B39710);

            sub_92BBC4(&v23, v11 + 32, v12, (v10 + 16), v10 + 32);
            v14 = v13;
            v16 = v15;

            if ((v14 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_94D468(v23.n128_f64, v22 + 32, v12);
            v18 = v17;
            sub_C8C3C(&v27, v19);
            sub_15F84(&v28, v19, &qword_E224E0, &unk_B39710);
            if ((v18 & 1) == 0)
            {
              goto LABEL_7;
            }

            v16 = 0;
          }

          sub_92C1E4(&v23, v16);
LABEL_7:
          ++v6;
          sub_E17A4(&v27);
          sub_12E1C(&v28, &qword_E224E0, &unk_B39710);
          if (v5 == v6)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

void sub_942BBC(void *a1, uint64_t a2, CFIndex a3, NSObject *a4, char a5, double *a6, int64_t a7, uint64_t a8, double a9, double a10, double MaxX, double y, double a13, CGFloat a14, uint64_t a15, uint64_t *a16, unint64_t *a17, uint64_t *a18, double *a19, void *a20, uint64_t a21)
{
  rect = *&a17;
  swift_beginAccess();
  v209 = a6;
  width = *a6 + a10;
  v216 = a7;
  v212 = (a7 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);

  v33 = sub_AB9260();

  v213 = a1;
  v34 = [a1 characterRange];
  v36 = [v33 substringWithRange:{v34, v35}];

  v37 = sub_AB92A0();
  v39 = v38;

  v224 = v37;
  v225 = v39;
  v222 = 10;
  v223 = 0xE100000000000000;
  v220 = 0;
  v221 = 0xE000000000000000;
  v186 = sub_931F14();
  sub_ABAAB0();

  v40 = String.trim()();

  swift_beginAccess();
  v41 = *(a8 + 8);
  v42 = *(v41 + 16);
  swift_beginAccess();
  v43 = 32;
  while (v42)
  {
    v44 = *(v41 + v43);
    if (*(*(a15 + 8) + 16))
    {
      if (*(v44 + 24) != v40._countAndFlagsBits || *(v44 + 32) != v40._object)
      {
        v43 += 8;
        --v42;
        if ((sub_ABB3C0() & 1) == 0)
        {
          continue;
        }
      }
    }

    swift_beginAccess();

    v46 = swift_retain_n();
    sub_9445B4(v46);
    swift_endAccess();

    goto LABEL_11;
  }

  v44 = 0;
LABEL_11:
  [v213 boundsWithType:0 options:{0, &type metadata for String, v186, v186, v186}];
  MinX = v47;
  v50 = v49;
  v51 = v216;
  v52 = *(v216 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v54 = *v212;
  v53 = v212[1];
  swift_beginAccess();
  v55 = *a16;
  v211 = a5;
  v206 = a3;
  if (a5)
  {
    v56 = 0;
  }

  else
  {
    v56 = a3;
  }

  if (v44)
  {
    swift_beginAccess();
    v57 = *(v44 + 16);
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

  sub_9533CC(a9, width, MaxX, y, MinX, v50, a2, v52, v54, v53, v55, v56, v57);
  v59 = v58;
  v61 = v60;

  swift_beginAccess();
  *a17 = v59;

  v62 = a16;
  swift_beginAccess();
  *a16 = v61;
  v219 = _swiftEmptyArrayStorage;
  v63 = sub_AB9370();
  v65 = v64;
  v66 = v216 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
  if (*(v216 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    if (v63 == sub_AB9370() && v65 == v67)
    {

LABEL_133:
      v69 = _swiftEmptyArrayStorage;
LABEL_134:
      if (*(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) != 2)
      {
        goto LABEL_196;
      }

      v81 = *(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager);
      if (*&v81 == 0.0)
      {
        goto LABEL_196;
      }

      v83 = width;
      v197 = y;
      v134 = *(v81 + 16);

      [v134 usageBoundsForTextContainer];
      x = v232.origin.x;
      y = v232.origin.y;
      width = v232.size.width;
      height = v232.size.height;
      MinX = CGRectGetWidth(v232);
      if ((v59 & 0x8000000000000000) != 0 || (v59 & 0x4000000000000000) != 0)
      {
LABEL_164:
        v135 = sub_ABB060();
        if (!v135)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v135 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
        if (!v135)
        {
LABEL_146:
          if (vabdd_f64(a13, MinX) < 1.0)
          {
            y = v197;
            width = v83;
            goto LABEL_195;
          }

          goto LABEL_180;
        }
      }

      v90 = __OFSUB__(v135, 1);
      v136 = v135 - 1;
      if (v90)
      {
        goto LABEL_169;
      }

      if ((v59 & 0xC000000000000001) != 0)
      {
        goto LABEL_170;
      }

      if ((v136 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v136 < *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8)))
      {
        v137 = *(v59 + 8 * v136 + 32);

        goto LABEL_144;
      }

      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v68 = sub_ABB3C0();

    if (v68)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  if (!*(v66 + 8))
  {
    goto LABEL_133;
  }

  swift_beginAccess();
  v69 = _swiftEmptyArrayStorage;
  v198 = a18[1];
  if (!v198)
  {
    goto LABEL_134;
  }

  v70 = *a18;
  v199 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v189 = *(v216 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection);
  if (v189 == 2)
  {

    sub_7E8378(v70, v198);

    goto LABEL_133;
  }

  swift_beginAccess();
  v71 = v70;
  v72 = *a17;

  v187 = v71;
  sub_7E8378(v71, v198);

  v73 = a3;
  v74 = a4;
  if (v211)
  {
    v73 = CTLineRef.stringRange.getter();
    v74 = v75;
  }

  swift_beginAccess();
  sub_945824(v187, v198, v72, v59, v73, v74, *a16, &v224, a13, a14);

  v76 = v225;
  if (!v225)
  {

    sub_941670(0, 1, a13, a14);

    return;
  }

  if (v225 == 1)
  {

    goto LABEL_133;
  }

  MinX = v227;
  v77 = v226;
  v78 = v224;
  swift_beginAccess();
  v69 = *a18;
  v79 = a18[1];
  *a18 = v78;
  a18[1] = v76;

  sub_7E8334(v69, v79);
  v196 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment;
  if (!*(v216 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) || *(v216 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == (v189 & 1))
  {
    MaxX = MinX + MaxX;
  }

  v80 = *(v77 + 16);
  if (!v80)
  {

    sub_12E1C(&v224, &qword_E22988, &qword_B39CD0);
    goto LABEL_133;
  }

  v191 = v80 != 1;
  v195 = v216 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v188 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
  v194 = v77 + 32;
  swift_beginAccess();
  v81 = a19;
  swift_beginAccess();
  swift_beginAccess();
  v82 = 0;
  v83 = a9;
  v190 = width;
  x = width;
  rect = MaxX;
  height = y;
  v192 = v80;
  v193 = v77;
  v197 = y;
  while (1)
  {
    if (v82 >= *(v77 + 16))
    {
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v86 = (v194 + 16 * v82);
    v81 = *v86;
    v87 = v86[1];

    v205 = v87;
    v228.origin.x = CTLineRef.bounds.getter();
    width = CGRectGetHeight(v228) + *(v195 + 328);
    *v209 = *v209 + width;
    v88 = v81 >> 62;
    if (*(v51 + v196) != 2 || *(v51 + v188) == (v189 & 1))
    {
LABEL_52:
      v230.origin.x = a9;
      v230.origin.y = v190;
      v230.size.width = MaxX;
      v230.size.height = y;
      MinX = CGRectGetMinX(v230);
      v231.origin.x = v83;
      v231.origin.y = x;
      v231.size.width = rect;
      v231.size.height = height;
      x = CGRectGetMaxY(v231);
      height = MinX;
      rect = MaxX;
      goto LABEL_53;
    }

    if (v88)
    {
      v89 = sub_ABB060();
      if (!v89)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v89 = *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8));
      if (!v89)
      {
        goto LABEL_52;
      }
    }

    v90 = __OFSUB__(v89, 1);
    v91 = v89 - 1;
    if (v90)
    {
      goto LABEL_173;
    }

    if ((v81 & 0xC000000000000001) != 0)
    {
      v92 = sub_ABAE20();
    }

    else
    {
      if ((v91 & 0x8000000000000000) != 0)
      {
        goto LABEL_174;
      }

      if (v91 >= *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_175;
      }

      v92 = *(v81 + 8 * v91 + 32);
    }

    MinX = CGRectGetMaxX(*(v92 + 176));
    v229.origin.x = v83;
    v229.origin.y = x;
    v229.size.width = rect;
    v229.size.height = height;
    x = CGRectGetMaxY(v229);

    if (*a19 < MinX)
    {
      *a19 = MinX;
    }

    height = a13 - MinX;
    rect = MinX;
    y = v197;
LABEL_53:
    v218[0] = v81;
    v93 = *(v51 + v199);
    v204 = v82;
    if (v93 == 2)
    {

      v94 = v81;
    }

    else
    {

      v94 = v81;
      if (v93)
      {
        sub_944640();
        v94 = v218[0];
      }
    }

    if (v94 >> 62)
    {
      break;
    }

    if (*(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_59;
    }

LABEL_76:

    v98 = 0;
    v102 = 0;
LABEL_77:
    v103 = sub_AB9260();
    v202 = v98;
    v203 = v102;
    v69 = [v103 substringWithRange:{v102, v98}];

    v104 = sub_AB92A0();
    v200 = v105;
    v201 = v104;

    _s4LineCMa();
    v51 = swift_allocObject();
    *(v51 + 112) = 0;
    *(v51 + 120) = 0;
    *(v51 + 128) = 0;
    *(v51 + 16) = *&v81;
    if (v88)
    {
      v106 = sub_ABB060();
    }

    else
    {
      v106 = *(&dword_10 + (v81 & 0xFFFFFFFFFFFFFF8));
    }

    v107 = _swiftEmptyArrayStorage;
    v108 = v106 & ~(v106 >> 63);
    if (v106)
    {
      v217[0] = _swiftEmptyArrayStorage;

      sub_9276C0(0, v106 & ~(v106 >> 63), 0);
      if (v106 < 0)
      {
        goto LABEL_162;
      }

      v107 = v217[0];
      if ((v81 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v106; ++i)
        {
          v110 = *(sub_ABAE20() + 48);
          if (*(v110 + 16))
          {
            v111 = *(v110 + 32);
          }

          else
          {
            v111 = 0;
          }

          swift_unknownObjectRelease();
          v217[0] = v107;
          v113 = *(v107 + 2);
          v112 = *(v107 + 3);
          if (v113 >= v112 >> 1)
          {
            sub_9276C0((v112 > 1), v113 + 1, 1);
            v107 = v217[0];
          }

          *(v107 + 2) = v113 + 1;
          *&v107[8 * v113 + 32] = v111;
        }
      }

      else
      {
        v114 = v81 + 32;
        v115 = v106;
        do
        {
          v116 = *(*v114 + 48);
          if (*(v116 + 16))
          {
            v117 = *(v116 + 32);
          }

          else
          {
            v117 = 0;
          }

          v217[0] = v107;
          v119 = *(v107 + 2);
          v118 = *(v107 + 3);
          if (v119 >= v118 >> 1)
          {
            sub_9276C0((v118 > 1), v119 + 1, 1);
            v107 = v217[0];
          }

          *(v107 + 2) = v119 + 1;
          *&v107[8 * v119 + 32] = v117;
          v114 += 8;
          --v115;
        }

        while (v115);
      }

      v62 = a16;
      v108 = v106 & ~(v106 >> 63);
    }

    else
    {
    }

    v217[0] = v107;

    v69 = 0;
    sub_951770(v217);

    if (*(v217[0] + 2))
    {
      MinX = *(v217[0] + 4);
    }

    else
    {
      MinX = 0.0;
    }

    *(v51 + 64) = MinX;
    if (v106)
    {
      v217[0] = _swiftEmptyArrayStorage;
      sub_9276C0(0, v108, 0);
      if (v106 < 0)
      {
        goto LABEL_163;
      }

      v120 = v217[0];
      if ((v81 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v106; ++j)
        {
          v122 = *(sub_ABAE20() + 48);
          v123 = *(v122 + 16);
          if (v123)
          {
            v124 = *(v122 + 56 * v123 - 16);
          }

          else
          {
            v124 = 0;
          }

          swift_unknownObjectRelease();
          v217[0] = v120;
          v126 = *(v120 + 2);
          v125 = *(v120 + 3);
          if (v126 >= v125 >> 1)
          {
            sub_9276C0((v125 > 1), v126 + 1, 1);
            v120 = v217[0];
          }

          *(v120 + 2) = v126 + 1;
          *&v120[8 * v126 + 32] = v124;
        }
      }

      else
      {
        v127 = v81 + 32;
        do
        {
          v128 = *(*v127 + 48);
          v129 = *(v128 + 16);
          if (v129)
          {
            v130 = *(v128 + 56 * v129 - 16);
          }

          else
          {
            v130 = 0;
          }

          v217[0] = v120;
          v132 = *(v120 + 2);
          v131 = *(v120 + 3);
          if (v132 >= v131 >> 1)
          {
            sub_9276C0((v131 > 1), v132 + 1, 1);
            v120 = v217[0];
          }

          *(v120 + 2) = v132 + 1;
          *&v120[8 * v132 + 32] = v130;
          v127 += 8;
          --v106;
        }

        while (v106);
      }

      v62 = a16;
    }

    else
    {
      v120 = _swiftEmptyArrayStorage;
    }

    v217[0] = v120;

    sub_951770(v217);
    v77 = v193;

    v133 = *(v217[0] + 2);
    if (v133)
    {
      MinX = *&v217[0][8 * v133 + 24];
    }

    else
    {
      MinX = 0.0;
    }

    v69 = v201;

    *(v51 + 24) = v201;
    *(v51 + 32) = v200;
    *(v51 + 40) = v203;
    *(v51 + 48) = v202;
    *(v51 + 72) = MinX;
    *(v51 + 80) = height;
    v83 = height;
    *(v51 + 88) = x;
    *(v51 + 96) = rect;
    *(v51 + 104) = width;
    *(v51 + 56) = 1;
    *(v51 + 57) = v191;
    *(v51 + 58) = v189 & 1;
    sub_AB9730();
    if (*(&dword_10 + (v219 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v219 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v69 = *(&dword_10 + (v219 & 0xFFFFFFFFFFFFFF8));
      sub_AB97A0();
    }

    v82 = v204 + 1;
    sub_AB97F0();

    height = width;
    v51 = v216;
    if (v204 + 1 == v192)
    {
      v69 = v219;

      sub_12E1C(&v224, &qword_E22988, &qword_B39CD0);
      width = v190;
      goto LABEL_134;
    }
  }

  if (!sub_ABB060())
  {
    goto LABEL_76;
  }

LABEL_59:
  v69 = v94 & 0xC000000000000001;
  if ((v94 & 0xC000000000000001) != 0)
  {
    v95 = v62;

    v51 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_161;
    }

    v95 = v62;
    v51 = *(v94 + 32);
  }

  v62 = *(v51 + 88);
  if (!(v94 >> 62))
  {
    v96 = *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8));
    if (v96)
    {
      goto LABEL_64;
    }

LABEL_68:

    v98 = 0;
LABEL_74:
    v102 = v62;
    v62 = v95;
    v88 = v81 >> 62;
    goto LABEL_77;
  }

  v96 = sub_ABB060();
  if (!v96)
  {
    goto LABEL_68;
  }

LABEL_64:
  v90 = __OFSUB__(v96, 1);
  v97 = v96 - 1;
  if (!v90)
  {
    if (v69)
    {
      v69 = sub_ABAE20();
    }

    else
    {
      if ((v97 & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      if (v97 >= *(&dword_10 + (v94 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_177;
      }

      v69 = *(v94 + 8 * v97 + 32);
    }

    v99 = *(v69 + 88);
    v100 = *(v69 + 96);

    v90 = __OFADD__(v99, v100);
    v101 = v99 + v100;
    if (v90)
    {
      goto LABEL_167;
    }

    v69 = *(v51 + 88);

    v98 = v101 - v69;
    if (__OFSUB__(v101, v69))
    {
      goto LABEL_168;
    }

    goto LABEL_74;
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  v137 = sub_ABAE20();
LABEL_144:
  if (vabdd_f64(CGRectGetMaxX(*(v137 + 176)), MaxX) < 1.0)
  {

    goto LABEL_146;
  }

  MaxX = CGRectGetMaxX(*(v137 + 176));
  if (v69 >> 62)
  {
LABEL_178:
    v138 = sub_ABB060();
    if (!v138)
    {
      goto LABEL_179;
    }

LABEL_150:
    rect = *&v81;
    if (v138 < 1)
    {
      goto LABEL_266;
    }

    v139 = 0;
    v140 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
    v141 = v69 & 0xC000000000000001;
    v142 = v69;
    do
    {
      if (v141)
      {
        v143 = sub_ABAE20();
      }

      else
      {
        v143 = *(v69 + 8 * v139 + 32);
      }

      if (*(v143 + 58) == *(v216 + v140))
      {
        v233.origin.x = *(v143 + 80);
        v233.origin.y = *(v143 + 88);
        v241.size.width = *(v143 + 96);
        v233.size.height = *(v143 + 104);
        *(v143 + 96) = MaxX;
        v233.size.width = MaxX;
        v241.origin.x = v233.origin.x;
        v241.origin.y = v233.origin.y;
        v241.size.height = v233.size.height;
        if (!CGRectEqualToRect(v233, v241))
        {
          *(v143 + 128) = 0;
        }
      }

      ++v139;
      v69 = v142;
    }

    while (v138 != v139);

    v62 = a16;
    v51 = v216;
    *&v81 = rect;
    goto LABEL_180;
  }

  v138 = *(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8));
  if (v138)
  {
    goto LABEL_150;
  }

LABEL_179:

  v51 = v216;
LABEL_180:
  v234.origin.x = x;
  v234.origin.y = y;
  v234.size.width = width;
  v234.size.height = height;
  v144 = CGRectGetWidth(v234);
  v235.origin.x = a9;
  width = v83;
  v235.origin.y = v83;
  v235.size.width = MaxX;
  y = v197;
  v235.size.height = v197;
  v145 = CGRectGetWidth(v235);
  v236.origin.x = a9;
  v236.origin.y = v83;
  v236.size.width = MaxX;
  v236.size.height = v197;
  v146 = CGRectGetMaxX(v236) - a13;
  if (v146 > 0.0)
  {
    a9 = v146;
  }

  else
  {
    a9 = 0.0;
  }

  MinX = v144 - v145;
  if (v69 >> 62)
  {
    goto LABEL_263;
  }

  v147 = *(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8));
  a9 = MinX + a9;
  if (v147)
  {
    goto LABEL_185;
  }

LABEL_195:
  while (2)
  {
    while (2)
    {

LABEL_196:
      CTLineRef.stringRange.getter();
      v81 = v153;
      v154 = a20;
      swift_beginAccess();
      if (__OFADD__(*a20, v81))
      {
        __break(1u);
        goto LABEL_259;
      }

      *a20 += v81;
      if (!v44)
      {
        v213 = [v213 characterRange];
        rect = v157;
        v154 = *(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction);
        _s4LineCMa();
        *&v81 = COERCE_DOUBLE(swift_allocObject());
        *(v81 + 112) = 0;
        *(v81 + 120) = 0;
        *(v81 + 128) = 0;
        *(v81 + 16) = v59;
        if (!(v59 >> 62))
        {
          v62 = *(&dword_10 + (v59 & 0xFFFFFFFFFFFFFF8));
          goto LABEL_203;
        }

LABEL_259:
        v62 = sub_ABB060();
LABEL_203:
        v215 = v154;
        v216 = v69;
        if (v62)
        {
          v217[0] = _swiftEmptyArrayStorage;

          sub_9276C0(0, v62 & ~(v62 >> 63), 0);
          if (v62 < 0)
          {
            goto LABEL_261;
          }

          v158 = v217[0];
          if ((v59 & 0xC000000000000001) != 0)
          {
            for (k = 0; k != v62; ++k)
            {
              v160 = *(sub_ABAE20() + 48);
              if (*(v160 + 16))
              {
                v161 = *(v160 + 32);
              }

              else
              {
                v161 = 0;
              }

              swift_unknownObjectRelease();
              v217[0] = v158;
              v163 = *(v158 + 2);
              v162 = *(v158 + 3);
              if (v163 >= v162 >> 1)
              {
                sub_9276C0((v162 > 1), v163 + 1, 1);
                v158 = v217[0];
              }

              *(v158 + 2) = v163 + 1;
              *&v158[8 * v163 + 32] = v161;
            }
          }

          else
          {
            v171 = v59 + 32;
            v51 = v62;
            do
            {
              v172 = *(*v171 + 48);
              if (*(v172 + 16))
              {
                v173 = *(v172 + 32);
              }

              else
              {
                v173 = 0;
              }

              v217[0] = v158;
              v175 = *(v158 + 2);
              v174 = *(v158 + 3);
              if (v175 >= v174 >> 1)
              {
                sub_9276C0((v174 > 1), v175 + 1, 1);
                v158 = v217[0];
              }

              *(v158 + 2) = v175 + 1;
              *&v158[8 * v175 + 32] = v173;
              v171 += 8;
              --v51;
            }

            while (v51);
          }
        }

        else
        {

          v158 = _swiftEmptyArrayStorage;
        }

        v217[0] = v158;

        v69 = 0;
        sub_951770(v217);

        if (*(v217[0] + 2))
        {
          MinX = *(v217[0] + 4);
        }

        else
        {
          MinX = 0.0;
        }

        *(v81 + 64) = MinX;
        if (v62)
        {
          v217[0] = _swiftEmptyArrayStorage;
          sub_9276C0(0, v62 & ~(v62 >> 63), 0);
          if (v62 < 0)
          {
            goto LABEL_262;
          }

          v164 = v217[0];
          if ((v59 & 0xC000000000000001) != 0)
          {
            v165 = 0;
            v51 = 56;
            do
            {
              v166 = *(sub_ABAE20() + 48);
              v167 = *(v166 + 16);
              if (v167)
              {
                v168 = *(v166 + 56 * v167 - 16);
              }

              else
              {
                v168 = 0;
              }

              swift_unknownObjectRelease();
              v217[0] = v164;
              v170 = *(v164 + 2);
              v169 = *(v164 + 3);
              if (v170 >= v169 >> 1)
              {
                sub_9276C0((v169 > 1), v170 + 1, 1);
                v164 = v217[0];
              }

              ++v165;
              *(v164 + 2) = v170 + 1;
              *&v164[8 * v170 + 32] = v168;
            }

            while (v62 != v165);
          }

          else
          {
            v51 = 32;
            do
            {
              v176 = *(*(v59 + v51) + 48);
              v177 = *(v176 + 16);
              if (v177)
              {
                v178 = *(v176 + 56 * v177 - 16);
              }

              else
              {
                v178 = 0;
              }

              v217[0] = v164;
              v180 = *(v164 + 2);
              v179 = *(v164 + 3);
              if (v180 >= v179 >> 1)
              {
                sub_9276C0((v179 > 1), v180 + 1, 1);
                v164 = v217[0];
              }

              *(v164 + 2) = v180 + 1;
              *&v164[8 * v180 + 32] = v178;
              v51 += 8;
              --v62;
            }

            while (v62);
          }
        }

        else
        {

          v164 = _swiftEmptyArrayStorage;
        }

        v217[0] = v164;

        sub_951770(v217);
        v62 = a16;
        v156 = a19;

        v181 = *(v217[0] + 2);
        if (v181)
        {
          v182 = *&v217[0][8 * v181 + 24];
        }

        else
        {
          v182 = 0;
        }

        v69 = v216;

        *(v81 + 24) = v40;
        *(v81 + 40) = v213;
        *(v81 + 48) = rect;
        *(v81 + 72) = v182;
        *(v81 + 80) = a9;
        *(v81 + 88) = width;
        *(v81 + 96) = MaxX;
        *(v81 + 104) = y;
        *(v81 + 56) = 0;
        *(v81 + 58) = v215;
        swift_beginAccess();
        sub_94D098(v81);
        swift_endAccess();

        goto LABEL_250;
      }

      swift_beginAccess();
      *(v44 + 16) = v59;

      sub_956F64();
      *(v44 + 24) = v40;

      v243 = *(v44 + 80);
      *(v44 + 80) = a9;
      *(v44 + 88) = width;
      *(v44 + 96) = MaxX;
      *(v44 + 104) = y;
      v238.origin.x = a9;
      v238.origin.y = width;
      v238.size.width = MaxX;
      v238.size.height = y;
      if (!CGRectEqualToRect(v238, v243))
      {
        *(v44 + 128) = 0;
      }

      *(v44 + 40) = [v213 characterRange];
      *(v44 + 48) = v155;
      swift_beginAccess();
      sub_94D098(v44);
      swift_endAccess();
      swift_beginAccess();
      sub_94D098(v44);
      swift_endAccess();

      v156 = a19;
LABEL_250:
      v239.origin.x = a9;
      v239.origin.y = width;
      v239.size.width = MaxX;
      v239.size.height = y;
      MinX = CGRectGetWidth(v239);
      swift_beginAccess();
      if (*v156 < MinX)
      {
        v240.origin.x = a9;
        v240.origin.y = width;
        v240.size.width = MaxX;
        v240.size.height = y;
        MinX = CGRectGetWidth(v240);
        swift_beginAccess();
        *v156 = MinX;
      }

      swift_beginAccess();
      sub_944B10(v69);
      swift_endAccess();

      if (v211)
      {

        return;
      }

      v183 = sub_AB9260();

      v184 = [v183 substringWithRange:{v206, a4}];

      sub_AB92A0();
      v69 = v185;

      *&v81 = COERCE_DOUBLE(sub_ABAB20());

      if ((v81 & 1) == 0)
      {
        return;
      }

      swift_beginAccess();
      if (!__OFADD__(*v62, 1))
      {
        ++*v62;
        return;
      }

      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      v147 = sub_ABB060();
      a9 = MinX + a9;
      if (!v147)
      {
        continue;
      }

      break;
    }

LABEL_185:
    rect = *&v81;
    if (v147 >= 1)
    {
      v148 = 0;
      v149 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
      v150 = v69 & 0xC000000000000001;
      v151 = v69;
      do
      {
        if (v150)
        {
          v152 = sub_ABAE20();
        }

        else
        {
          v152 = *(v69 + 8 * v148 + 32);
        }

        if (*(v152 + 58) == *(v216 + v149))
        {
          v237.size.width = *(v152 + 96);
          v237.size.height = *(v152 + 104);
          v242.origin.x = *(v152 + 80);
          v237.origin.y = *(v152 + 88);
          *(v152 + 80) = a9;
          v237.origin.x = a9;
          v242.origin.y = v237.origin.y;
          v242.size.width = v237.size.width;
          v242.size.height = v237.size.height;
          if (!CGRectEqualToRect(v237, v242))
          {
            *(v152 + 128) = 0;
          }
        }

        ++v148;
        v69 = v151;
      }

      while (v147 != v148);
      v51 = v216;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_266:
  __break(1u);

  __break(1u);
}

void sub_9445B4(uint64_t a1)
{
  v3 = v1[1];
  v4 = *(v3 + 16);
  if (*v1)
  {
    v5 = sub_933FBC();
    if ((v7 & 1) == 0)
    {
LABEL_9:
      sub_950328(v5, v6, sub_1643F4);
    }
  }

  else
  {
    v5 = 0;
    if (v4)
    {
      while (*(v3 + 32 + 8 * v5) != a1)
      {
        if (v4 == ++v5)
        {
          return;
        }
      }

      v6 = 0;
      goto LABEL_9;
    }
  }
}

void sub_944640()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = sub_ABAE20();
          v9 = sub_ABAE20();
          goto LABEL_10;
        }

        v7 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v4 + 32);
        v9 = *(v1 + 8 * v2 + 24);

LABEL_10:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_933FC4();
          v10 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v10) = 0;
        }

        v11 = v1 & 0xFFFFFFFFFFFFFF8;
        *(&stru_20.cmd + 8 * v4 + (v1 & 0xFFFFFFFFFFFFFF8)) = v9;

        if ((v1 & 0x8000000000000000) != 0 || v10)
        {
          v1 = sub_933FC4();
          v11 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v11 + 16))
        {
          goto LABEL_24;
        }

        *(v11 + 8 * v2 + 24) = v8;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v12 = v2 - 2;
        --v2;
        if (v4 >= v12)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!sub_ABB060())
      {
        return;
      }

      v2 = sub_ABB060();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

void sub_9447F4()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (v1 - 1);
  if (v1 == &dword_0 + 1)
  {
    return;
  }

  v3 = *v0;
  v20 = v0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = v3;
  }

  else
  {
LABEL_18:
    v4 = sub_92C710(v3);
  }

  v5 = 0;
  v6 = 56 * v1;
  v7 = 1;
  while (1)
  {
    if (v7 - 1 == v2)
    {
      goto LABEL_7;
    }

    v9 = *(v4 + 2);
    if (v7 - 1 >= v9)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v2 >= v9)
    {
      goto LABEL_17;
    }

    v10 = &v4[v5];
    v11 = *&v4[v5 + 48];
    v21 = *&v4[v5 + 56];
    v22 = *&v4[v5 + 32];
    v12 = *&v4[v5 + 72];
    v13 = v4[v5 + 80];
    v1 = &v4[v6];
    v15 = *&v4[v6 - 8];
    v14 = *&v4[v6];
    v17 = *&v4[v6 + 8];
    v16 = *&v4[v6 + 16];
    v18 = v4[v6 + 24];
    *(v10 + 2) = *&v4[v6 - 24];
    *(v10 + 6) = v15;
    *(v10 + 7) = v14;
    *(v10 + 8) = v17;
    *(v10 + 9) = v16;
    v10[80] = v18;
    v19 = v4;
    v23 = *(v4 + 2);

    if (v2 >= v23)
    {
      break;
    }

    v3 = *v1;
    *(v1 - 24) = v22;
    *(v1 - 1) = v11;
    *v1 = v21;
    *(v1 + 2) = v12;
    v1[24] = v13;

    v4 = v19;
LABEL_7:
    --v2;
    v6 -= 56;
    v5 += 56;
    if (v7++ >= v2)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v20 = v4;
}

void sub_944964()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2 >= 2)
  {
    v3 = v2 - 1;
    v4 = 56 * v2 - 24;
    v5 = 80;
    v6 = 1;
    while (1)
    {
      v7 = *(v1 + 2);
      if (v6 - 1 >= v7)
      {
        break;
      }

      if (v3 >= v7)
      {
        goto LABEL_12;
      }

      v21 = *&v1[v5 - 48];
      v8 = *&v1[v5 - 24];
      v9 = *&v1[v5 - 16];
      v19 = *&v1[v5 - 8];
      v20 = *&v1[v5 - 32];
      v18 = v1[v5];
      v10 = *&v1[v4];
      v11 = *&v1[v4 + 8];
      v12 = *&v1[v4 + 24];
      v13 = *&v1[v4 + 32];
      v23 = *&v1[v4 + 40];
      v24 = *&v1[v4 + 16];
      v22 = v1[v4 + 48];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_9515F8(v1);
      }

      if ((v6 - 1) >= *(v1 + 2))
      {
        goto LABEL_13;
      }

      v14 = &v1[v5];
      *(v14 - 6) = v10;
      *(v14 - 5) = v11;
      *(v14 - 4) = v24;
      *(v14 - 3) = v12;
      *(v14 - 2) = v13;
      *(v14 - 1) = v23;
      *v14 = v22;

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_14;
      }

      v15 = &v1[v4];
      *v15 = v21;
      *(v15 + 2) = v20;
      *(v15 + 3) = v8;
      *(v15 + 4) = v9;
      *(v15 + 5) = v19;
      v15[48] = v18;

      *v17 = v1;
      --v3;
      v4 -= 56;
      v5 += 56;
      if (v6++ >= v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_944B10(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
LABEL_35:
    v3 = sub_ABB060();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_ABAE20();
      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v4 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_34;
      }

      v5 = *(a1 + 32 + 8 * v4);

      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v8 = *v2;
    v7 = v2[1];
    v9 = (v7 + 32);
    v10 = *(v7 + 16);
    if (*v2)
    {
      sub_933FBC();
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v10)
    {
      while (*v9 != v5)
      {
        ++v9;
        if (!--v10)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_6;
    }

LABEL_17:

    sub_ABAE90();
    sub_ABAED0();
    sub_ABAEE0();
    sub_ABAEA0();
    v12 = v2[1];
    v13 = *(v12 + 16);
    if (!v8)
    {
      if (v13 > 0xF)
      {
        v14 = 0;
LABEL_24:
        v15 = sub_AB49E0();
        if (v14 <= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v14;
        }

        v18 = sub_94D838(v12, v17, 0, v14, v16);

        *v2 = v18;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    swift_beginAccess();
    if (sub_AB49B0() >= v13)
    {
      break;
    }

    v14 = *(v8 + 24) & 0x3FLL;
    if (v13 > 0xF || v14)
    {
      goto LABEL_24;
    }

    *v2 = 0;
LABEL_7:
    if (v4 == v3)
    {
      return;
    }
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v20 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v20)
    {
      goto LABEL_38;
    }

    v21 = sub_AB49D0();

    *v2 = v21;
    v20 = v21;
  }

  if (v20)
  {
    sub_AB4970();
LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

id sub_944DA4(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v54 = a1;
  v3 = sub_AB35A0();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88, &qword_B38CE8);
  __chkstk_darwin();
  v7 = &v47 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90, &unk_B38CF0);
  __chkstk_darwin();
  v9 = &v47 - v8;
  v10 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v12 = 264;
  if (!*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    v12 = 272;
  }

  v13 = *(v10 + v12);
  v14 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v52 = v14;
  if (!v11)
  {
    if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) == 1)
    {
      v15 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v15 = 384;
      }
    }

    else
    {
      v15 = 368;
    }

    v14 = *(v10 + v15);
    v16 = v14;
  }

  v50 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E23D50, &unk_B3A600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8820;
  v51 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v53 = inited + 32;
  v18 = sub_13C80(0, &qword_E23D60, UIFont_ptr);
  *(inited + 40) = v13;
  *(inited + 64) = v18;
  *(inited + 72) = NSForegroundColorAttributeName;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22978, &qword_B39CB8);
  *(inited + 80) = v14;
  *(inited + 104) = v19;
  *(inited + 112) = NSLanguageIdentifierAttributeName;
  v20 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  sub_15F84(v2 + v20, v7, &qword_E21E88, &qword_B38CE8);
  if ((*(v4 + 48))(v7, 1, v3))
  {
    v21 = v14;
    v22 = NSLanguageIdentifierAttributeName;
    v23 = v13;
    v24 = v52;
    v25 = v51;
    v26 = NSForegroundColorAttributeName;
    sub_12E1C(v7, &qword_E21E88, &qword_B38CE8);
    v27 = v13;
LABEL_14:
    v38 = (inited + 120);
    *(inited + 144) = &type metadata for String;
    goto LABEL_15;
  }

  v28 = v49;
  (*(v4 + 16))(v49, v7, v3);
  v48 = v14;
  v29 = NSLanguageIdentifierAttributeName;
  v30 = v13;
  v31 = v13;
  v32 = v52;
  v33 = v51;
  v34 = NSForegroundColorAttributeName;
  sub_12E1C(v7, &qword_E21E88, &qword_B38CE8);
  v35 = v50;
  sub_AB3570();
  (*(v4 + 8))(v28, v3);
  v36 = sub_AB34C0();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_12E1C(v35, &qword_E21E90, &unk_B38CF0);
    v27 = v30;
    v21 = v48;
    goto LABEL_14;
  }

  v45 = sub_AB34A0();
  v39 = v46;
  (*(v37 + 8))(v35, v36);
  v38 = (inited + 120);
  *(inited + 144) = &type metadata for String;
  if (v39)
  {
    *v38 = v45;
    v27 = v30;
    v21 = v48;
    goto LABEL_16;
  }

  v27 = v30;
  v21 = v48;
LABEL_15:
  *v38 = 0;
  v39 = 0xE000000000000000;
LABEL_16:
  *(inited + 128) = v39;
  sub_92CF00(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224C0, &unk_B396E0);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(NSAttributedString);
  v41 = sub_AB9260();
  _s3__C3KeyVMa_2(0);
  sub_954D9C(&qword_E23D70, _s3__C3KeyVMa_2, &unk_B38C10);
  isa = sub_AB8FD0().super.isa;

  v43 = [v40 initWithString:v41 attributes:isa];

  return v43;
}

void sub_945384(char a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  v5 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8];
  if (!v5)
  {
    goto LABEL_11;
  }

  v8 = *v4;
  v9 = sub_AB9370();
  v11 = v10;
  if (v9 == sub_AB9370() && v11 == v12)
  {

    goto LABEL_10;
  }

  v14 = sub_ABB3C0();

  if (v14)
  {

LABEL_10:

LABEL_11:
    v15 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v16 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v15 = 1;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
LABEL_12:

    sub_954DE4(v16);
    return;
  }

  v17 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
  v18 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (!v18 || (v19 = [v18 attributedText]) == 0)
  {
    v25 = v4[1];
LABEL_24:
    if (v25)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v20 = v19;
  v21 = [v19 string];

  v22 = sub_AB92A0();
  v24 = v23;

  v25 = v4[1];
  if (!v24)
  {
    goto LABEL_24;
  }

  if (!v25)
  {

    goto LABEL_30;
  }

  if (v22 == *v4 && v25 == v24)
  {

    if (a1)
    {
      goto LABEL_30;
    }

LABEL_26:

    return;
  }

  v44 = sub_ABB3C0();

  if ((v44 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((a1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_30:
  v26 = *&v2[v17];
  if (v26)
  {
    v27 = *&v2[v17];
  }

  else
  {
    v27 = [objc_allocWithZone(UILabel) init];
    [v27 setNumberOfLines:0];
    [v27 setClipsToBounds:0];
    [v2 addSubview:v27];
    v28 = *&v2[v17];
    *&v2[v17] = v27;

    v29 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v30 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v29 = 0u;
    *(v29 + 1) = 0u;
    *(v29 + 4) = 0;
    sub_954DE4(v30);
    v26 = 0;
  }

  v31 = 264;
  if (!*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8])
  {
    v31 = 272;
  }

  v32 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + v31];
  v33 = v26;
  v45 = v32;
  v34 = sub_944DA4(v8, v5);

  [v34 boundingRectWithSize:1 options:0 context:{a2, INFINITY}];
  v36 = v35;
  v38 = v37;
  Height = CGRectGetHeight(v3[2]);
  v40 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 296];
  Width = CGRectGetWidth(v3[2]);
  if (v36 <= Width)
  {
    v36 = Width;
  }

  v42 = Height + v40;
  [v27 setTextAlignment:*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];

  v43 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  if (*v43)
  {

    v16 = *v43;
    *v43 = v34;
    *(v43 + 1) = 0;
    *(v43 + 2) = v42;
    *(v43 + 3) = v36;
    *(v43 + 4) = v38;
    goto LABEL_12;
  }

  [v27 setAttributedText:v34];
  [v27 setFrame:{0.0, v42, v36, v38}];
}

void sub_945824(NSObject *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X5>, uint64_t a7@<X6>, double *a8@<X8>, double a9@<D0>, CGFloat a10@<D1>)
{
  v743 = a6;
  v744 = a5;
  v741 = a3;
  v18 = sub_AB35A0();
  v745 = *(v18 - 1);
  __chkstk_darwin();
  v20 = (&v699 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88, &qword_B38CE8);
  __chkstk_darwin();
  v742 = &v699 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90, &unk_B38CF0);
  __chkstk_darwin();
  object = &v699 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EB8, &qword_B38D18);
  __chkstk_darwin();
  v25 = &v699 - v24;
  v26 = *&v10[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8];
  v27 = 0.0;
  if (*&v26 == 0.0)
  {
    goto LABEL_178;
  }

  v28 = *&v10[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  v751 = a4;
  if (a4 >> 62)
  {
    goto LABEL_177;
  }

  v29 = *(&dword_10 + (a4 & 0xFFFFFFFFFFFFFF8));
  v30 = v29 - 1;
  if (v29 < 1)
  {
LABEL_178:
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 1;
    goto LABEL_179;
  }

LABEL_4:
  v738 = v25;
  v739 = v28;
  v721 = v30;
  v722 = v29;
  v733 = a7;
  v728 = a8;
  v746 = v10;
  v725 = &v10[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v740 = v26;

  v732 = sub_AB9260();

  v768 = a1;
  v769 = a2;
  v766 = a1;
  v767 = a2;
  swift_retain_n();
  swift_retain_n();

  v764 = sub_942614(v31);
  v765 = v32;
  isa = v32[2].isa;
  v736 = object;
  v737 = v18;
  v735 = v20;
  if (!isa)
  {
    goto LABEL_9;
  }

  v34 = v32[4].isa;
  v35 = v32[isa + 3].isa;

  if (!v35)
  {
    goto LABEL_9;
  }

  if (*(v35 + 11) >= *(v34 + 11))
  {

LABEL_9:
    v731 = 0;
    v18 = a2;
    goto LABEL_10;
  }

  sub_944964();
  sub_94D700(sub_94DA90, v36);

  v731 = 1;
  v18 = v767;
LABEL_10:
  v20 = &v777;
  a2 = _swiftEmptyArrayStorage;
  v763 = _swiftEmptyArrayStorage;
  v762 = sub_92D160(_swiftEmptyArrayStorage);
  v748 = *(v18 + 2);
  v749 = v18;
  if (!v748)
  {
    v753 = 0;
    object = _swiftEmptyArrayStorage;
    v91 = _swiftEmptyArrayStorage[2];
    if (!v91)
    {
      goto LABEL_114;
    }

    goto LABEL_100;
  }

  v753 = 0;
  v37 = 0;
  v747 = v18 + 4;
  object = _swiftEmptyArrayStorage;
  do
  {
    if (v37 >= *(v18 + 2))
    {
      __break(1u);
      goto LABEL_160;
    }

    location = object;
    v10 = (&stru_20 + 24);
    v38 = &v747[7 * v37];
    v39 = *(v38 + 2);
    v824 = *(v38 + 1);
    v825 = v39;
    v823 = *v38;
    v826 = *(v38 + 48);
    v827 = v824;
    v40 = v39;
    v828 = v39;
    *&v816 = _swiftEmptyArrayStorage;
    a7 = v765;
    if (v765[2].isa)
    {
      v41 = v764;
      a1 = v765 + 4;
      v42 = *&v823;
      v43 = *(v825 + 16);
      sub_C8C3C(&v827, v820);
      sub_15F84(&v828, v820, &qword_E224E0, &unk_B39710);
      object = v40 + 56 * v43 - 16;
      v10 = *(a7 + 16);
      v750 = v41;

      *&v45 = 0.0;
      while (1)
      {
        if (v45 >= v10)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:

          a7 = v37;
          goto LABEL_139;
        }

        v41 = a1[v45].isa;
        if (v43)
        {
          if (v43 > *(v40 + 16))
          {
            __break(1u);
            goto LABEL_123;
          }

          v44 = *object;
          if (v42 > *object)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v44 = 0.0;
          if (v42 > 0.0)
          {
            goto LABEL_119;
          }
        }

        v47 = *&v41[2].isa;
        v48 = *&v41[3].isa;
        if (v47 > v48)
        {
          goto LABEL_120;
        }

        v49 = v47 == v48 || v42 == v44;
        v50 = !v49 && v44 > v47;
        if (v50 && v48 > v42)
        {
          break;
        }

LABEL_21:
        if (++v45 == v10)
        {

          a2 = v816;
          v18 = v749;
          v20 = &v777;
          goto LABEL_52;
        }
      }

      swift_retain_n();
      sub_AB9730();
      if (*(&dword_10 + (v816 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v816 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v734 = *(&dword_10 + (v816 & 0xFFFFFFFFFFFFFF8));
        sub_AB97A0();
      }

      sub_AB97F0();
      v52 = v765[2].isa;
      if (v764)
      {
        v53 = sub_933FBC();
        if (v54)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!v52)
        {
          goto LABEL_20;
        }

        v53 = 0;
        while (v765[v53 + 4].isa != v41)
        {
          if (v52 == ++v53)
          {
            goto LABEL_20;
          }
        }

        v46 = 0;
      }

      sub_950328(v53, v46, sub_1643F4);

LABEL_20:

      v10 = *(a7 + 16);
      v753 = v41;
      goto LABEL_21;
    }

    sub_C8C3C(&v827, v820);
    sub_15F84(&v828, v820, &qword_E224E0, &unk_B39710);
LABEL_52:
    a8 = (a2 >> 62);
    if (!(a2 >> 62))
    {
      object = location;
      if (!*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_79;
      }

LABEL_54:
      v10 = (a2 & 0xC000000000000001);
      if ((a2 & 0xC000000000000001) != 0)
      {
        a7 = sub_ABAE20();
        v55 = a2 & 0xFFFFFFFFFFFFFF8;
        if (!a8)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (!*(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          goto LABEL_162;
        }

        a7 = *(a2 + 32);

        v55 = a2 & 0xFFFFFFFFFFFFFF8;
        if (!a8)
        {
LABEL_57:
          v56 = *(v55 + 16);
          if (v56)
          {
            goto LABEL_58;
          }

LABEL_78:

          goto LABEL_79;
        }
      }

      v56 = sub_ABB060();
      if (v56)
      {
LABEL_58:
        v57 = __OFSUB__(v56, 1);
        v58 = v56 - 1;
        if (v57)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          if (v10 == *(a8 + 5))
          {
LABEL_167:
            v183 = a1;
            v184 = v741;
            v185 = sub_934014(v741);
            if (v185)
            {
              v186 = v185 - 1;
              if (__OFSUB__(v185, 1))
              {
                __break(1u);
              }

              else
              {
                sub_9275DC(v185 - 1, (v184 & 0xC000000000000001) == 0, v184);
                if ((v184 & 0xC000000000000001) == 0)
                {
                  v187 = *(v184 + 8 * v186 + 32);

                  goto LABEL_171;
                }
              }

              v187 = sub_ABAE20();
LABEL_171:
              v188 = sub_92D774(a7);

              a1 = v183;
              if (v188 > 0)
              {
                v750 = v187;
                if (qword_E21CC0 != -1)
                {
                  goto LABEL_569;
                }

                goto LABEL_173;
              }
            }

            else
            {

              a1 = v183;
            }

LABEL_153:
            if (qword_E21CC0 != -1)
            {
              swift_once();
            }

            v159 = sub_AB4BC0();
            __swift_project_value_buffer(v159, static Logger.lyrics);
            v160 = swift_allocObject();
            v161 = v746;
            *(v160 + 16) = v746;
            v162 = v161;
            v163 = sub_AB4BA0();
            v164 = sub_AB9F50();
            v165 = swift_allocObject();
            *(v165 + 16) = 34;
            v166 = swift_allocObject();
            *(v166 + 16) = 8;
            v167 = swift_allocObject();
            *(v167 + 16) = sub_955A34;
            *(v167 + 24) = v160;
            v168 = swift_allocObject();
            *(v168 + 16) = sub_955A24;
            *(v168 + 24) = v167;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F18, &qword_B38D30);
            v169 = swift_allocObject();
            *(v169 + 16) = xmmword_AF8820;
            *(v169 + 32) = sub_955AB0;
            *(v169 + 40) = v165;
            *(v169 + 48) = sub_955AB0;
            *(v169 + 56) = v166;
            *(v169 + 64) = sub_955904;
            *(v169 + 72) = v168;
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520, &qword_B39750);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v163, v164))
            {
              v170 = swift_slowAlloc();
              v751 = swift_slowAlloc();
              *&v788 = v751;
              *v170 = 136446210;
              v171 = v725[1];
              v802._countAndFlagsBits = *v725;
              v802._object = v171;
              v795 = 10519010;
              v796 = 0xA300000000000000;
              *&v792[0] = 44226;
              *(&v792[0] + 1) = 0xA200000000000000;
              sub_931F14();
              v172 = sub_ABAAB0();
              location = v162;
              v802._countAndFlagsBits = v172;
              v802._object = v173;
              v174 = String.nonBreakingSpace.unsafeMutableAddressor();
              v175 = v174[1];
              v795 = *v174;
              v796 = v175;
              *&v792[0] = 0x3B7073626E26;
              *(&v792[0] + 1) = 0xE600000000000000;
              v176 = sub_ABAAB0();
              v178 = v177;

              v802._countAndFlagsBits = v176;
              v802._object = v178;
              v795 = 10;
              v796 = 0xE100000000000000;
              *&v792[0] = 28252;
              *(&v792[0] + 1) = 0xE200000000000000;
              v179 = sub_ABAAB0();
              v181 = v180;

              v182 = sub_927078(v179, v181, &v788);

              *(v170 + 4) = v182;
              _os_log_impl(&dword_0, v163, v164, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to make it fit with the previous line by forcing a line break after it. New text: %{public}s", v170, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v751);
            }

            a8 = v728;
            sub_94C684(a1[11].isa, a1[12].isa);

            goto LABEL_158;
          }

LABEL_152:

          goto LABEL_153;
        }

        if (v10)
        {
          sub_ABAE20();
        }

        else
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_164;
          }

          if (v58 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_165;
          }
        }

        v59 = v768;
        v60 = v769;
        a1 = *(v769 + 16);
        if (v768)
        {

          v61 = sub_92BBC4(&v823, v60 + 32, a1, (v59 + 16), v59 + 32);
          v63 = v62;
          a1 = v64;

          if (v63)
          {
            goto LABEL_69;
          }

LABEL_68:
          sub_950180(v61, a1, &v770);
          v779 = v771;
          sub_E17A4(&v779);
          v778 = v772;
          sub_12E1C(&v778, &qword_E224E0, &unk_B39710);
        }

        else
        {
          v65 = sub_94D468(&v823, v769 + 32, *(v769 + 16));
          if ((v66 & 1) == 0)
          {
            v61 = v65;
            a1 = 0;
            goto LABEL_68;
          }
        }

LABEL_69:
        sub_C8C3C(&v827, v820);
        sub_15F84(&v828, v820, &qword_E224E0, &unk_B39710);
        object = location;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          object = sub_92617C(0, *(object + 16) + 1, 1, object);
        }

        v68 = *(object + 16);
        v67 = *(object + 24);
        v20 = &v777;
        if (v68 >= v67 >> 1)
        {
          object = sub_92617C((v67 > 1), v68 + 1, 1, object);
        }

        *(object + 16) = v68 + 1;
        v69 = object + 56 * v68;
        v70 = v823;
        v71 = v824;
        v72 = v825;
        *(v69 + 80) = v826;
        *(v69 + 48) = v71;
        *(v69 + 64) = v72;
        *(v69 + 32) = v70;
        sub_939C64(a2, &v823);

        v18 = v749;
        goto LABEL_13;
      }

      goto LABEL_78;
    }

    v73 = sub_ABB060();
    object = location;
    if (v73)
    {
      goto LABEL_54;
    }

LABEL_79:

    if (!v753)
    {
      sub_E17A4(&v827);
      sub_12E1C(&v828, &qword_E224E0, &unk_B39710);
LABEL_13:
      a2 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    a2 = _swiftEmptyArrayStorage;
    if (*&v823 > *(&v823 + 1))
    {
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      v739 = v28;
      v740 = v26;
      v213 = v25;
      v29 = sub_ABB060();
      v28 = v739;
      v26 = v740;
      v25 = v213;
      v30 = v29 - 1;
      if (v29 < 1)
      {
        goto LABEL_178;
      }

      goto LABEL_4;
    }

    v75 = *&v753[2].isa;
    v74 = *&v753[3].isa;
    if (v75 > v74)
    {
      goto LABEL_176;
    }

    if (v75 == v74 || *&v823 == *(&v823 + 1) || *(&v823 + 1) <= v75 || v74 <= *&v823)
    {
      sub_E17A4(&v827);
      sub_12E1C(&v828, &qword_E224E0, &unk_B39710);
      goto LABEL_14;
    }

    sub_C8C3C(&v827, v820);
    sub_15F84(&v828, v820, &qword_E224E0, &unk_B39710);

    sub_939C64(_swiftEmptyArrayStorage, &v823);
    v76 = v768;
    v77 = v769;
    v78 = *(v769 + 16);
    if (v768)
    {

      v79 = sub_92BBC4(&v823, v77 + 32, v78, (v76 + 16), v76 + 32);
      v81 = v80;
      a1 = v82;

      if (v81)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    v83 = sub_94D468(&v823, v769 + 32, *(v769 + 16));
    if ((v84 & 1) == 0)
    {
      v79 = v83;
      a1 = 0;
LABEL_92:
      sub_950180(v79, a1, &v773);
      v777 = v774;
      sub_E17A4(&v777);
      v776 = v775;
      sub_12E1C(&v776, &qword_E224E0, &unk_B39710);
    }

LABEL_93:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = sub_92617C(0, *(object + 16) + 1, 1, object);
    }

    v86 = *(object + 16);
    v85 = *(object + 24);
    if (v86 >= v85 >> 1)
    {
      object = sub_92617C((v85 > 1), v86 + 1, 1, object);
    }

    *(object + 16) = v86 + 1;
    v87 = object + 56 * v86;
    v88 = v823;
    v89 = v824;
    v90 = v825;
    *(v87 + 80) = v826;
    *(v87 + 48) = v89;
    *(v87 + 64) = v90;
    *(v87 + 32) = v88;
LABEL_14:
    ++v37;
  }

  while (v37 != v748);
  v763 = object;
  v91 = *(object + 16);
  if (!v91)
  {
LABEL_114:

LABEL_115:

    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 1;
    goto LABEL_116;
  }

LABEL_100:
  v92 = *(object + 48);
  v93 = *(object + 56);
  v45 = *(object + 64);
  v94 = *(object + 72);
  v95 = *(object + 80);
  v806 = *(object + 32);
  v807 = v92;
  v808 = v93;
  v809 = v45;
  v810 = v94;
  v811 = v95;
  v96 = v91 - 1;
  sub_9275BC(v91 - 1, 1, object);
  v97 = object + 32 + 56 * v96;
  v98 = *(v97 + 16);
  v99 = *(v97 + 24);
  v41 = *(v97 + 32);
  v100 = *(v97 + 40);
  v101 = *(v97 + 48);
  v780 = *v97;
  v781 = v98;
  v782 = v99;
  v783 = v41;
  v784 = v100;
  v785 = v101;
  a7 = v762;
  v747 = v93;

  v734 = v99;

  sub_939BBC(&v780, a7);
  v748 = v41;
  v750 = v45;
  if (!v102)
  {
    goto LABEL_139;
  }

  v103 = v102;
  *&v792[0] = v102;
  if (v731)
  {
    sub_944640();
    v103 = *&v792[0];
  }

  if (!sub_934014(v103))
  {

    goto LABEL_139;
  }

  v104 = v103 & 0xC000000000000001;
  sub_9275DC(0, (v103 & 0xC000000000000001) == 0, v103);
  v37 = a7;
  if ((v103 & 0xC000000000000001) != 0)
  {
    v40 = sub_ABAE20();
  }

  else
  {
    v40 = *(v103 + 32);
  }

  v105 = sub_934014(v103);
  if (!v105)
  {
    goto LABEL_121;
  }

  if (__OFSUB__(v105, 1))
  {
    goto LABEL_544;
  }

  sub_9275DC(v105 - 1, v104 == 0, v103);
  if (v104)
  {
    goto LABEL_545;
  }

  while (2)
  {

    sub_95C138();
    v106 = v41[2].isa;
    a7 = v37;
    if (!v106)
    {
LABEL_123:
      if (v44 != 0.0)
      {
        v107 = 0.0;
        goto LABEL_125;
      }

      goto LABEL_138;
    }

    v107 = *&v41[7 * v106 - 2].isa;
    if (v44 == v107)
    {
LABEL_138:

      goto LABEL_139;
    }

LABEL_125:
    v20 = a7;
    v112 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words];
    v113 = *(v112 + 16);
    if (!v113)
    {

      a7 = v20;
      goto LABEL_139;
    }

    sub_9275BC(v113 - 1, 1, *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words]);
    v114 = *(v112 + 56 * v113 + 8);
    v115 = *(v114 + 16);
    if (v115)
    {
      v116 = v107 == *(v114 + 56 * v115 - 16);
    }

    else
    {
      v116 = v107 == 0.0;
    }

    a7 = v20;
    if (!v116 || *(v40 + 88) < 1)
    {
      goto LABEL_138;
    }

    location = object;
    v821 = *(v40 + 48);
    v117 = *(v40 + 32);
    v820[0] = *(v40 + 16);
    v820[1] = v117;
    v822 = *(v40 + 64);
    v829 = v117;
    v830 = v821;
    v118 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v119 = v746;
    swift_beginAccess();
    v120 = *&v119[v118];
    sub_C8C3C(&v829, &v816);
    sub_15F84(&v830, &v816, &qword_E224E0, &unk_B39710);

    sub_939C0C(v820, v120);
    v122 = v121;

    sub_E17A4(&v829);
    sub_12E1C(&v830, &qword_E224E0, &unk_B39710);
    if (v122)
    {

      v123 = *(v40 + 32);
      v816 = *(v40 + 16);
      v817 = v123;
      v818 = *(v40 + 48);
      v819 = *(v40 + 64);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v802._countAndFlagsBits = *&v119[v118];
      *&v119[v118] = 0x8000000000000000;
      sub_92A524(1, &v816, isUniquelyReferenced_nonNull_native);
      *&v119[v118] = v802._countAndFlagsBits;
      swift_endAccess();
      sub_94C50C(v40);
      if (qword_E21CC0 != -1)
      {
        swift_once();
      }

      v125 = sub_AB4BC0();
      __swift_project_value_buffer(v125, static Logger.lyrics);
      v126 = swift_allocObject();
      *(v126 + 16) = v119;
      v127 = v119;
      v37 = sub_AB4BA0();
      v128 = sub_AB9F50();
      v129 = swift_allocObject();
      *(v129 + 16) = 34;
      v130 = swift_allocObject();
      *(v130 + 16) = 8;
      v131 = swift_allocObject();
      *(v131 + 16) = sub_955A34;
      *(v131 + 24) = v126;
      v132 = swift_allocObject();
      *(v132 + 16) = sub_955A24;
      *(v132 + 24) = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F18, &qword_B38D30);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_AF8820;
      *(v133 + 32) = sub_955AB0;
      *(v133 + 40) = v129;
      *(v133 + 48) = sub_955AB0;
      *(v133 + 56) = v130;
      *(v133 + 64) = sub_955904;
      *(v133 + 72) = v132;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520, &qword_B39750);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v37, v128))
      {
        v134 = swift_slowAlloc();
        location = swift_slowAlloc();
        *&v788 = location;
        *v134 = 136446210;
        v135 = v725[1];
        *&v812 = *v725;
        *(&v812 + 1) = v135;
        v802._countAndFlagsBits = 10519010;
        v802._object = 0xA300000000000000;
        v795 = 44226;
        v796 = 0xA200000000000000;
        sub_931F14();
        *&v812 = sub_ABAAB0();
        *(&v812 + 1) = v136;
        v137 = String.nonBreakingSpace.unsafeMutableAddressor();
        v138 = v137[1];
        v802._countAndFlagsBits = *v137;
        v802._object = v138;
        v795 = 0x3B7073626E26;
        v796 = 0xE600000000000000;
        v139 = sub_ABAAB0();
        LODWORD(v751) = v128;
        v141 = v140;

        *&v812 = v139;
        *(&v812 + 1) = v141;
        v802._countAndFlagsBits = 10;
        v802._object = 0xE100000000000000;
        v795 = 28252;
        v796 = 0xE200000000000000;
        v142 = sub_ABAAB0();
        v144 = v143;

        v145 = sub_927078(v142, v144, &v788);

        *(v134 + 4) = v145;
        _os_log_impl(&dword_0, v37, v751, "[Transliteration] Last transliterated word in this line has more original words to match in the next line, and the next line only contains words that match this transliteration. Insert a line break before this word to make sure they are all in the same line. New text: %{public}s", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(location);

        goto LABEL_220;
      }

LABEL_162:

LABEL_219:

LABEL_220:

      goto LABEL_410;
    }

LABEL_160:

    a7 = v20;
    v41 = v748;
    v45 = v750;
LABEL_139:
    v146 = v765[2].isa;
    v712 = v764;
    v713 = v765;
    v720 = a7;
    if (!v146)
    {
      goto LABEL_188;
    }

    v147 = v765[4].isa;
    if (!sub_934014(v751))
    {
      goto LABEL_188;
    }

    v148 = v751;
    v149 = v751 & 0xC000000000000001;
    sub_9275DC(0, (v751 & 0xC000000000000001) == 0, v751);
    if (v149)
    {

      v214 = sub_ABAE20();
      swift_unknownObjectRelease();
      if (v147 == v214)
      {
LABEL_144:
        v150 = v746;
        if (v744 >= 1)
        {
          v818 = *(v147 + 48);
          v151 = *(v147 + 32);
          v816 = *(v147 + 16);
          v817 = v151;
          v819 = *(v147 + 64);
          v831 = v151;
          v832 = v818;
          v152 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
          swift_beginAccess();
          v153 = *&v150[v152];
          sub_C8C3C(&v831, &v812);
          sub_15F84(&v832, &v812, &qword_E224E0, &unk_B39710);

          sub_939C0C(&v816, v153);
          v155 = v154;

          sub_E17A4(&v831);
          sub_12E1C(&v832, &qword_E224E0, &unk_B39710);
          if (v155)
          {

            v156 = *(v147 + 32);
            v812 = *(v147 + 16);
            v813 = v156;
            v814 = *(v147 + 48);
            v815 = *(v147 + 64);
            swift_beginAccess();
            v157 = swift_isUniquelyReferenced_nonNull_native();
            v795 = *&v150[v152];
            *&v150[v152] = 0x8000000000000000;
            sub_92A524(1, &v812, v157);
            *&v150[v152] = v795;
            swift_endAccess();
            a1 = v147;
            if (v713[2].isa >= (&dword_0 + 2))
            {
              a7 = v748;
              if (v722 != 1)
              {
                v10 = v713[5].isa;
                a8 = v751;
                sub_9275DC(1uLL, v149 == 0, v751);
                if (!v149)
                {
                  goto LABEL_166;
                }

                v158 = sub_ABAE20();
                swift_unknownObjectRelease();

                if (v10 == v158)
                {
                  goto LABEL_167;
                }
              }
            }

            goto LABEL_152;
          }

          v41 = v748;
          goto LABEL_187;
        }
      }

LABEL_187:
      v45 = v750;
      goto LABEL_188;
    }

    if (v147 == *(v148 + 32))
    {

      goto LABEL_144;
    }

LABEL_188:
    v215 = sub_92D774(v45);
    v217 = v216;
    v840.location = sub_92D774(v41);
    v840.length = v218;
    v839.location = v215;
    v839.length = v217;
    v219 = NSUnionRange(v839, v840);
    v220 = sub_AB9260();
    location = v219.location;
    v221 = [v220 substringWithRange:{v219.location, v219.length}];

    sub_AB92A0();
    v730 = String.trim()();

    v45 = v743;
    v37 = v744;
    v222 = [v732 substringWithRange:{v744, v743}];
    v223 = sub_AB92A0();
    v40 = v224;

    v225 = String.trim()();
    object = v225._object;
    *&v812 = v223;
    *(&v812 + 1) = v40;
    countAndFlagsBits = v225._countAndFlagsBits;
    v802 = v225;
    v226 = sub_AB35C0();
    v227 = v738;
    (*(*(v226 - 8) + 56))(v738, 1, 1, v226);
    v228 = sub_931F14();

    v711 = v228;
    v229 = sub_ABAAE0();
    v231 = v230;
    v41 = v232;
    sub_12E1C(v227, &qword_E21EB8, &qword_B38D18);
    v724 = v225._object;

    if ((v41 & 1) == 0)
    {
      v233 = _NSRange.init(range:in:)(v229, v231, v223, v40);
      v57 = __OFADD__(v37, v233);
      v37 += v233;
      if (!v57)
      {
        v45 = v234;
        goto LABEL_192;
      }

LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
LABEL_544:
      __break(1u);
LABEL_545:
      sub_ABAE20();
      continue;
    }

    break;
  }

LABEL_192:
  if (qword_E21CC8 != -1)
  {
    goto LABEL_530;
  }

  while (2)
  {
    v235 = sub_923E94(3, *(static LyricsOptionsManager.shared + 40));
    v710 = a10;
    v741 = v45;
    v739 = v37;
    if (!v235)
    {
      goto LABEL_199;
    }

    v236 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
    v237 = v746;
    swift_beginAccess();
    v238 = v742;
    sub_15F84(&v237[v236], v742, &qword_E21E88, &qword_B38CE8);
    v239 = v745;
    v240 = v737;
    if ((*(*&v745 + 48))(v238, 1, v737))
    {
      v241 = &qword_E21E88;
      v242 = &qword_B38CE8;
      v243 = v238;
      goto LABEL_198;
    }

    v244 = v735;
    (*(*&v239 + 16))(v735, v238, v240);
    sub_12E1C(v238, &qword_E21E88, &qword_B38CE8);
    v245 = v736;
    sub_AB3570();
    (*(*&v239 + 8))(v244, v240);
    v246 = sub_AB34C0();
    v247 = *(v246 - 8);
    if ((*(v247 + 48))(v245, 1, v246) == 1)
    {
      v241 = &qword_E21E90;
      v242 = &unk_B38CF0;
      v243 = v245;
LABEL_198:
      sub_12E1C(v243, v241, v242);
LABEL_199:
      v248 = 0;
      v249 = 0xE000000000000000;
    }

    else
    {
      v248 = sub_AB34A0();
      v249 = v315;
      (*(v247 + 8))(v245, v246);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E23D50, &unk_B3A600);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_AF85F0;
    *(v250 + 32) = NSFontAttributeName;
    v251 = v746;
    object = &v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
    v252 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 312];
    v253 = sub_13C80(0, &qword_E23D60, UIFont_ptr);
    *(v250 + 40) = v252;
    *(v250 + 64) = v253;
    *(v250 + 72) = NSLanguageIdentifierAttributeName;
    *(v250 + 104) = &type metadata for String;
    *(v250 + 80) = v248;
    *(v250 + 88) = v249;
    v254 = NSFontAttributeName;
    v255 = v252;
    v256 = NSLanguageIdentifierAttributeName;

    sub_92CF00(v250);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224C0, &unk_B396E0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v257 = objc_allocWithZone(NSAttributedString);
    v258 = *&v730._object;
    v259 = sub_AB9260();
    _s3__C3KeyVMa_2(0);
    sub_954D9C(&qword_E23D70, _s3__C3KeyVMa_2, &unk_B38C10);
    v260 = sub_AB8FD0().super.isa;

    *&v261 = COERCE_DOUBLE([v257 initWithString:v259 attributes:v260]);

    *&v45 = COERCE_DOUBLE(CTLineCreateWithAttributedString(v261));
    v27 = CTLineRef.bounds.getter();
    a10 = v262;
    v264 = v263;
    v266 = v265;
    v267 = v251[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection];
    v714 = v261;
    if (v267 != 2 && v251[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == (v267 & 1))
    {
      v302 = _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(&v806, &v780);
      v41 = v720;
      if (v302)
      {
        v842.origin.x = v27;
        v842.origin.y = a10;
        v842.size.width = v264;
        v842.size.height = v266;
        if (CGRectGetWidth(v842) > a9)
        {
          v27 = Int.seconds.getter(0);
          sub_939BBC(&v780, v762);
          MaxX = v27;
          if (!v303)
          {
            goto LABEL_428;
          }

          v305 = v303;
          v306 = sub_934014(v303);
          if (!v306)
          {

            MaxX = v27;
            goto LABEL_428;
          }

          v307 = v306 - 1;
          if (__OFSUB__(v306, 1))
          {
            __break(1u);
          }

          else
          {
            v258 = *&v261;
            sub_9275DC(v306 - 1, (v305 & 0xC000000000000001) == 0, v305);
            if ((v305 & 0xC000000000000001) == 0)
            {
              v308 = *(v305 + 8 * v307 + 32);

              goto LABEL_229;
            }
          }

          v308 = sub_ABAE20();
LABEL_229:

          MaxX = CGRectGetMaxX(*(v308 + 176));
          v309 = sub_92D774(*(v308 + 48));
          v311 = v310;

          v312 = v309 + v733;
          if (__OFADD__(v309, v733))
          {
            __break(1u);
          }

          else if (!__OFADD__(v739, v741))
          {
            v57 = __OFADD__(v312, v311);
            v313 = v312 + v311;
            if (!v57)
            {
              *&v261 = v258;
              if (v739 + v741 != v313)
              {

LABEL_383:
                v108 = 0;
                v109 = 0;
                v110 = 0;
                v111 = 1;
                a8 = v728;
                v27 = 0.0;
                goto LABEL_179;
              }

LABEL_428:
              v703 = v45;
              type metadata accessor for TextKitManager();
              swift_allocObject();
              v743 = v261;
              TextKitManager.init(text:size:)(v743, a9);
              v540 = *(*v539 + 192);
              v744 = v539;
              v541 = v540();
              v751 = v541[2];
              if (v751)
              {
                v542 = 0;
                v749 = (v541 + 4);
                *&v745 = -location;
                v746 = v541;
                v543 = __OFSUB__(0, location);
                LODWORD(location) = v543;
                v109 = _swiftEmptyArrayStorage;
                while (v542 < v541[2])
                {
                  v544 = &v749[7 * v542];
                  v545 = *(v544 + 1);
                  v546 = *(v544 + 2);
                  v547 = *(v544 + 3);
                  v548 = *(v544 + 4);
                  v549 = *(v544 + 5);
                  v258 = COERCE_DOUBLE(*v544);
                  v550 = [*&v258 lineRef];
                  if (!v550)
                  {
                    __break(1u);
LABEL_569:
                    swift_once();
LABEL_173:
                    v189 = sub_AB4BC0();
                    __swift_project_value_buffer(v189, static Logger.lyrics);
                    v190 = swift_allocObject();
                    v191 = v746;
                    *(v190 + 16) = v746;
                    v751 = v191;
                    v192 = sub_AB4BA0();
                    v193 = sub_AB9F50();
                    v194 = swift_allocObject();
                    *(v194 + 16) = 34;
                    v195 = swift_allocObject();
                    *(v195 + 16) = 8;
                    v196 = swift_allocObject();
                    *(v196 + 16) = sub_954D80;
                    *(v196 + 24) = v190;
                    v197 = swift_allocObject();
                    *(v197 + 16) = sub_955A24;
                    *(v197 + 24) = v196;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F18, &qword_B38D30);
                    v198 = swift_allocObject();
                    *(v198 + 16) = xmmword_AF8820;
                    *(v198 + 32) = sub_955AB0;
                    *(v198 + 40) = v194;
                    *(v198 + 48) = sub_955AB0;
                    *(v198 + 56) = v195;
                    *(v198 + 64) = sub_955904;
                    *(v198 + 72) = v197;
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520, &qword_B39750);
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    LODWORD(v749) = v193;
                    location = v192;
                    if (os_log_type_enabled(v192, v193))
                    {
                      v199 = swift_slowAlloc();
                      v200 = swift_slowAlloc();
                      *&v788 = v200;
                      *v199 = 136446210;
                      v201 = v725[1];
                      v802._countAndFlagsBits = *v725;
                      v802._object = v201;
                      v795 = 10519010;
                      v796 = 0xA300000000000000;
                      *&v792[0] = 44226;
                      *(&v792[0] + 1) = 0xA200000000000000;
                      sub_931F14();
                      v802._countAndFlagsBits = sub_ABAAB0();
                      v802._object = v202;
                      v203 = String.nonBreakingSpace.unsafeMutableAddressor();
                      v204 = v203[1];
                      v795 = *v203;
                      v796 = v204;
                      *&v792[0] = 0x3B7073626E26;
                      *(&v792[0] + 1) = 0xE600000000000000;
                      v205 = sub_ABAAB0();
                      v207 = v206;

                      v802._countAndFlagsBits = v205;
                      v802._object = v207;
                      v795 = 10;
                      v796 = 0xE100000000000000;
                      *&v792[0] = 28252;
                      *(&v792[0] + 1) = 0xE200000000000000;
                      v208 = sub_ABAAB0();
                      v210 = v209;

                      v211 = sub_927078(v208, v210, &v788);

                      *(v199 + 4) = v211;
                      v212 = location;
                      _os_log_impl(&dword_0, location, v749, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to bring the previous line's last word into this line by forcing a line break before it. New text: %{public}s", v199, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0(v200);
                    }

                    else
                    {
                    }

                    sub_94C50C(v750);

                    a8 = v728;
LABEL_158:

LABEL_511:

                    v108 = 0;
                    v111 = 0;
                    v109 = 0;
                    v110 = 0;
                    goto LABEL_179;
                  }

                  v551 = v550;
                  v552 = _swiftEmptyArrayStorage[2];
                  if (v552)
                  {
                    v553 = 0;
                    v554 = &_swiftEmptyArrayStorage[4];
                    do
                    {
                      v556 = *v554++;
                      v555 = v556;
                      if ((v556 & ~v553) == 0)
                      {
                        v555 = 0;
                      }

                      v553 |= v555;
                      --v552;
                    }

                    while (v552);
                  }

                  else
                  {
                    v553 = 0;
                  }

                  [*&v258 boundsWithType:0 options:v553];
                  if (location)
                  {
                    goto LABEL_532;
                  }

                  sub_9533CC(v545, v546, v547, v548, v557, v558, v551, v763, v730._countAndFlagsBits, v730._object, *&v745, v549, _swiftEmptyArrayStorage);
                  v560 = v559;
                  v844.origin.x = v545;
                  v844.origin.y = v546;
                  v844.size.width = v547;
                  v844.size.height = v548;
                  Width = CGRectGetWidth(v844);
                  if (Width > v27)
                  {
                    v27 = Width;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v109 = sub_926DB4(0, *(v109 + 2) + 1, 1, v109);
                  }

                  v563 = *(v109 + 2);
                  v562 = *(v109 + 3);
                  if (v563 >= v562 >> 1)
                  {
                    v109 = sub_926DB4((v562 > 1), v563 + 1, 1, v109);
                  }

                  ++v542;

                  *(v109 + 2) = v563 + 1;
                  v564 = &v109[16 * v563];
                  *(v564 + 4) = v560;
                  *(v564 + 5) = v551;
                  v541 = v746;
                  if (v542 == v751)
                  {
                    goto LABEL_452;
                  }
                }

                __break(1u);
LABEL_532:
                __break(1u);
LABEL_533:
                __break(1u);
                goto LABEL_534;
              }

              v109 = _swiftEmptyArrayStorage;
LABEL_452:

              if (v27 - MaxX > 0.0)
              {
                v27 = v27 - MaxX;
              }

              else
              {
                v27 = 0.0;
              }

              sub_939BBC(&v780, v762);
              v566 = v565;

              if (v566)
              {
                v567 = sub_934014(v566);
                if (v567)
                {
                  v568 = v567 - 1;
                  if (__OFSUB__(v567, 1))
                  {
                    __break(1u);
                  }

                  else
                  {
                    sub_9275DC(v567 - 1, (v566 & 0xC000000000000001) == 0, v566);
                    if ((v566 & 0xC000000000000001) == 0)
                    {
                      v569 = *(v566 + 8 * v568 + 32);

                      goto LABEL_460;
                    }
                  }

                  v569 = sub_ABAE20();
LABEL_460:

                  sub_95BF60(v569[22], v569[23], v27 + v569[24], v569[25]);
                }

                else
                {
                }
              }

              else
              {
              }

              v108 = v768;
              v111 = v769;

LABEL_401:
              a8 = v728;
              v110 = v731;
              goto LABEL_179;
            }

LABEL_557:
            __break(1u);
LABEL_558:
            swift_once();
LABEL_425:
            v516 = sub_AB4BC0();
            __swift_project_value_buffer(v516, static Logger.lyrics);
            v517 = swift_allocObject();
            *(v517 + 16) = v249;
            v518 = v249;
            v519 = sub_AB4BA0();
            v520 = sub_AB9F50();
            v521 = swift_allocObject();
            *(v521 + 16) = 34;
            v522 = swift_allocObject();
            *(v522 + 16) = 8;
            v523 = swift_allocObject();
            *(v523 + 16) = sub_955A34;
            *(v523 + 24) = v517;
            v524 = swift_allocObject();
            *(v524 + 16) = sub_955A24;
            *(v524 + 24) = v523;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F18, &qword_B38D30);
            v525 = swift_allocObject();
            *(v525 + 16) = xmmword_AF8820;
            *(v525 + 32) = sub_955AB0;
            *(v525 + 40) = v521;
            *(v525 + 48) = sub_955AB0;
            *(v525 + 56) = v522;
            *(v525 + 64) = sub_955904;
            *(v525 + 72) = v524;
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520, &qword_B39750);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v519, v520))
            {
              v526 = swift_slowAlloc();
              v527 = swift_slowAlloc();
              v756 = v527;
              *v526 = 136446210;
              v528 = v725[1];
              v757 = *v725;
              v758 = v528;
              v759 = 10519010;
              v760 = 0xA300000000000000;
              v754 = 44226;
              v755 = 0xA200000000000000;
              LODWORD(v751) = v520;
              v757 = sub_ABAAB0();
              v758 = v529;
              v530 = String.nonBreakingSpace.unsafeMutableAddressor();
              v531 = v530[1];
              v759 = *v530;
              v760 = v531;
              v754 = 0x3B7073626E26;
              v755 = 0xE600000000000000;
              v532 = sub_ABAAB0();
              v534 = v533;

              v757 = v532;
              v758 = v534;
              v759 = 10;
              v760 = 0xE100000000000000;
              v754 = 28252;
              v755 = 0xE200000000000000;
              v535 = sub_ABAAB0();
              v537 = v536;

              v538 = sub_927078(v535, v537, &v756);

              *(v526 + 4) = v538;
              _os_log_impl(&dword_0, v519, v751, "[Transliteration][Last word timing check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v526, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v527);

LABEL_507:

              goto LABEL_510;
            }

LABEL_509:

LABEL_510:

            a8 = v728;
            goto LABEL_511;
          }

          __break(1u);
          goto LABEL_557;
        }
      }

      v249 = (&dword_0 + 1);
      v314 = 1;
      if (v731)
      {
        goto LABEL_241;
      }

      goto LABEL_242;
    }

    v841.origin.x = v27;
    v841.origin.y = a10;
    v841.size.width = v264;
    v841.size.height = v266;
    v268 = CGRectGetWidth(v841);
    v41 = v720;
    if (v268 <= a9)
    {

      goto LABEL_239;
    }

    v41 = v762;
    sub_939BBC(&v806, v762);
    v270 = v269;

    if (!v270)
    {
LABEL_238:

      goto LABEL_239;
    }

    if (!sub_934014(v270))
    {

      goto LABEL_238;
    }

    sub_9275DC(0, (v270 & 0xC000000000000001) == 0, v270);
    if ((v270 & 0xC000000000000001) != 0)
    {
      v40 = sub_ABAE20();
    }

    else
    {
      v40 = *(v270 + 32);
    }

    sub_939BBC(&v780, v41);
    v272 = v271;

    if (v272)
    {
      v273 = sub_934014(v272);
      if (v273)
      {
        v274 = v273;
        v703 = v45;

        v57 = __OFSUB__(v274, 1);
        v275 = v274 - 1;
        if (!v57)
        {
          sub_9275DC(v275, (v272 & 0xC000000000000001) == 0, v272);
          v27 = 0.0;
          if ((v272 & 0xC000000000000001) == 0)
          {
            v276 = *(v272 + 8 * v275 + 32);

LABEL_212:

            if (v731)
            {
              v277 = v40;
            }

            else
            {
              v277 = v276;
            }

            v278 = v746;
            sub_94C50C(v277);
            if (qword_E21CC0 != -1)
            {
              swift_once();
            }

            v279 = sub_AB4BC0();
            __swift_project_value_buffer(v279, static Logger.lyrics);
            v280 = swift_allocObject();
            *(v280 + 16) = v278;
            v281 = v278;
            v282 = sub_AB4BA0();
            v283 = sub_AB9F50();
            v284 = swift_allocObject();
            *(v284 + 16) = 34;
            v285 = swift_allocObject();
            *(v285 + 16) = 8;
            v286 = swift_allocObject();
            *(v286 + 16) = sub_955A34;
            *(v286 + 24) = v280;
            v287 = swift_allocObject();
            *(v287 + 16) = sub_955A24;
            *(v287 + 24) = v286;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F18, &qword_B38D30);
            v288 = swift_allocObject();
            *(v288 + 16) = xmmword_AF8820;
            *(v288 + 32) = sub_955AB0;
            *(v288 + 40) = v284;
            *(v288 + 48) = sub_955AB0;
            *(v288 + 56) = v285;
            *(v288 + 64) = sub_955904;
            *(v288 + 72) = v287;
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520, &qword_B39750);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v282, v283))
            {
              v289 = swift_slowAlloc();
              v290 = swift_slowAlloc();
              *&v792[0] = v290;
              *v289 = 136446210;
              v291 = v725[1];
              *&v812 = *v725;
              *(&v812 + 1) = v291;
              v802._countAndFlagsBits = 10519010;
              v802._object = 0xA300000000000000;
              v795 = 44226;
              v796 = 0xA200000000000000;
              location = v276;
              LODWORD(v751) = v283;
              *&v812 = sub_ABAAB0();
              *(&v812 + 1) = v292;
              v293 = String.nonBreakingSpace.unsafeMutableAddressor();
              v294 = v293[1];
              v802._countAndFlagsBits = *v293;
              v802._object = v294;
              v795 = 0x3B7073626E26;
              v796 = 0xE600000000000000;
              v295 = sub_ABAAB0();
              v297 = v296;

              *&v812 = v295;
              *(&v812 + 1) = v297;
              v802._countAndFlagsBits = 10;
              v802._object = 0xE100000000000000;
              v795 = 28252;
              v796 = 0xE200000000000000;
              v298 = sub_ABAAB0();
              v300 = v299;

              v301 = sub_927078(v298, v300, v792);

              *(v289 + 4) = v301;
              _os_log_impl(&dword_0, v282, v751, "[Transliteration] Directions don't match and transliterated line goes beyond view bounds. Inserting line break. New text: %{public}s", v289, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v290);

              goto LABEL_219;
            }

LABEL_410:

LABEL_411:

            goto LABEL_477;
          }

LABEL_552:
          v276 = sub_ABAE20();
          goto LABEL_212;
        }

LABEL_551:
        __break(1u);
        goto LABEL_552;
      }

LABEL_239:
    }

    else
    {
    }

    v249 = 0;
    v314 = 0;
    if (v731)
    {
LABEL_241:
      sub_9447F4();
      v314 = v249;
    }

LABEL_242:
    if (__OFSUB__(0, location))
    {
      goto LABEL_533;
    }

    v316 = v763;
    sub_9533CC(v27, a10, v264, v266, v27, a10, v45, v763, v730._countAndFlagsBits, *&v258, -location, 0, _swiftEmptyArrayStorage);
    v318 = v317;
    v761 = v317;
    v319 = sub_934014(v317);
    v37 = v749;
    if (v319 < 1)
    {

      goto LABEL_383;
    }

    v320 = Int.seconds.getter(0);
    v27 = 0.0;
    if (!v314)
    {

      v108 = v768;
      v111 = v769;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224D8, &qword_B39708);
      v109 = swift_allocObject();
      *(v109 + 1) = xmmword_AF4EC0;
      *(v109 + 4) = v318;
      *(v109 + 5) = *&v45;

      goto LABEL_400;
    }

    if (v731)
    {
      sub_944640();
    }

    v699 = v316;
    v40 = v761;
    v716 = sub_934014(v761);
    if (!v716)
    {

      location = 0;
      v444 = v320;
      v445 = v40;
      goto LABEL_392;
    }

    v736 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v707 = v40 + 32;
    v708 = v40 & 0xFFFFFFFFFFFFFF8;
    v321 = v751;
    v717 = v40 & 0xC000000000000001;
    v718 = v751 & 0xC000000000000001;
    v719 = v40;

    v745 = 0.0;
    *&v740 = 0.0;
    v258 = 0.0;
    v322 = 0;
    v323 = 0;
    v704 = v321 + 40;
    LODWORD(v748) = 1;
    *&v324 = 136446466;
    v705 = v324;
    *&v324 = 136315394;
    v706 = v324;
    v700 = v320;
    v701 = v320;
    LODWORD(v738) = 1;
    v703 = v45;
    v723 = object;
LABEL_252:
    if (v717)
    {
      v325 = object;
      v326 = v322;
      location = sub_ABAE20();
      v57 = __OFADD__(v326, 1);
      v327 = v326 + 1;
      if (v57)
      {
        goto LABEL_528;
      }

      break;
    }

    if (v322 >= *(v708 + 16))
    {
      __break(1u);
      goto LABEL_541;
    }

    v325 = object;
    location = *(v707 + 8 * v322);
    v328 = v322;

    v57 = __OFADD__(v328, 1);
    v327 = v328 + 1;
    if (v57)
    {
LABEL_528:
      __break(1u);
LABEL_529:
      __break(1u);
LABEL_530:
      swift_once();
      continue;
    }

    break;
  }

  v727 = v327;
  v329 = *(location + 32);
  v812 = *(location + 16);
  v813 = v329;
  v814 = *(location + 48);
  v815 = *(location + 64);
  v41 = v762;
  if (!v762[2].isa)
  {
    goto LABEL_269;
  }

  v833 = *(location + 32);
  v834 = v814;
  sub_C8C3C(&v833, &v788);
  v37 = &qword_E224E0;
  sub_15F84(&v834, &v788, &qword_E224E0, &unk_B39710);
  v330 = sub_92809C(&v812);
  v40 = v331;
  sub_E17A4(&v833);
  sub_12E1C(&v834, &qword_E224E0, &unk_B39710);
  if ((v40 & 1) == 0)
  {
    goto LABEL_269;
  }

  v40 = *(v41[7].isa + v330);
  if (!(v40 >> 62))
  {
    object = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
    if (object)
    {
      goto LABEL_262;
    }

LABEL_269:
    if (v748)
    {

      LODWORD(v748) = 1;
    }

    else
    {
      if (v258 != 0.0)
      {
        object = v325;
        if (v323)
        {
          a10 = v745;
          v339 = v323[18];
          v340 = v323[19];
          v341 = v323[20];
          v342 = v323[21];

          v843.origin.x = v339;
          v843.origin.y = v340;
          v843.size.width = v341;
          v843.size.height = v342;
          v343 = CGRectGetMaxX(v843);
          v344 = location;
          *(location + 144) = v343 + *(v325 + 336);
          sub_95BF60(*(v344 + 176) + a10, *(v344 + 184), *(v344 + 192), *(v344 + 200));
          v345 = CGRectGetMaxX(*(v344 + 176));
          v346 = v345 - CGRectGetMinX(*(*&v258 + 176));
          if (CGRectGetWidth(*(*&v258 + 176)) >= v346)
          {

            LODWORD(v748) = 0;
            v27 = 0.0;
          }

          else
          {
            v347 = *(*&v258 + 192);
            v348 = v346 - v347 + *(v325 + 336);
            sub_95BF60(*(*&v258 + 176), *(*&v258 + 184), v347 + v348, *(*&v258 + 200));
            v320 = v320 + v348;
            v27 = 0.0;
            if (CGRectGetMaxX(*(*&v258 + 176)) > a9)
            {
              v349 = *(v323 + 2);
              v786[0] = *(v323 + 1);
              v786[1] = v349;
              v786[2] = *(v323 + 3);
              v787 = *(v323 + 64);
              if (v41[2].isa)
              {
                v350 = sub_92809C(v786);
                if (v351)
                {
                  v352 = *(v41[7].isa + v350);
                  if (v352 >> 62)
                  {
                    if (sub_ABB060())
                    {
LABEL_378:
                      v702 = v323;
                      v720 = v41;

                      swift_bridgeObjectRelease_n();
                      sub_9275DC(0, (v352 & 0xC000000000000001) == 0, v352);
                      if ((v352 & 0xC000000000000001) != 0)
                      {
                        v249 = sub_ABAE20();
                      }

                      else
                      {
                        v249 = *(v352 + 32);
                      }

                      if (v731)
                      {
                        sub_94C684(v249[11], v249[12]);
                        goto LABEL_535;
                      }

LABEL_534:
                      sub_94C50C(v249);
LABEL_535:
                      if (qword_E21CC0 != -1)
                      {
                        swift_once();
                      }

                      v680 = sub_AB4BC0();
                      __swift_project_value_buffer(v680, static Logger.lyrics);
                      v681 = v746;

                      v682 = sub_AB4BA0();
                      v683 = sub_AB9F50();

                      if (os_log_type_enabled(v682, v683))
                      {
                        v684 = swift_slowAlloc();
                        v751 = swift_slowAlloc();
                        v754 = v751;
                        *v684 = v706;
                        v685 = *(*&v258 + 72);
                        v686 = *(*&v258 + 80);

                        v687 = sub_927078(v685, v686, &v754);

                        *(v684 + 4) = v687;
                        *(v684 + 12) = 2082;
                        v688 = v725[1];
                        *&v788 = *v725;
                        *(&v788 + 1) = v688;
                        v757 = 10519010;
                        v758 = 0xA300000000000000;
                        v759 = 44226;
                        v760 = 0xA200000000000000;
                        *&v788 = sub_ABAAB0();
                        *(&v788 + 1) = v689;
                        v690 = String.nonBreakingSpace.unsafeMutableAddressor();
                        v691 = v690[1];
                        v757 = *v690;
                        v758 = v691;
                        v759 = 0x3B7073626E26;
                        v760 = 0xE600000000000000;
                        v692 = sub_ABAAB0();
                        v726 = v258;
                        v694 = v693;

                        *&v788 = v692;
                        *(&v788 + 1) = v694;
                        v757 = 10;
                        v758 = 0xE100000000000000;
                        v759 = 28252;
                        v760 = 0xE200000000000000;
                        v695 = sub_ABAAB0();
                        v697 = v696;

                        v698 = sub_927078(v695, v697, &v754);

                        *(v684 + 14) = v698;
                        _os_log_impl(&dword_0, v682, v683, "[Transliteration][Empty Map Entry] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v684, 0x16u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }

LABEL_521:

                      goto LABEL_475;
                    }
                  }

                  else if (*(&dword_10 + (v352 & 0xFFFFFFFFFFFFFF8)))
                  {
                    goto LABEL_378;
                  }
                }
              }
            }

            LODWORD(v748) = 0;
          }
        }

        else
        {
          LODWORD(v748) = 0;
        }

LABEL_251:
        v323 = location;
        v322 = v727;
        if (v727 == v716)
        {

          v445 = v719;

          if (v258 != 0.0)
          {
            v446 = *(*&v258 + 112);
            if (v446 < v721)
            {

              v447 = v722;
              v448 = v751;
              if (v446 + 1 != v722)
              {
                v614 = v751 & 0xFFFFFFFFFFFFFF8;
                v615 = v446;
                while (1)
                {
                  if (v615 < v446 || v615 + 1 >= v447)
                  {
                    __break(1u);
LABEL_548:
                    __break(1u);
LABEL_549:
                    __break(1u);
                    goto LABEL_550;
                  }

                  if (v718)
                  {
                    v40 = sub_ABAE20();
                  }

                  else
                  {
                    if (v615 < -1)
                    {
                      goto LABEL_548;
                    }

                    if ((v615 + 1) >= *(v614 + 16))
                    {
                      goto LABEL_549;
                    }

                    v40 = *(v448 + 8 * v615 + 40);
                  }

                  sub_95BF60(v320 + *(v40 + 176), *(v40 + 184), *(v40 + 192), *(v40 + 200));
                  if (CGRectGetMaxX(*(v40 + 176)) > a9)
                  {
                    break;
                  }

                  ++v615;
                  v447 = v722;
                  v448 = v751;
                  if (v721 == v615)
                  {
                    goto LABEL_390;
                  }
                }

                if (!v731)
                {
                  goto LABEL_515;
                }

                sub_94C684(*(v40 + 88), *(v40 + 96));
LABEL_516:
                if (qword_E21CC0 != -1)
                {
                  swift_once();
                }

                v659 = sub_AB4BC0();
                __swift_project_value_buffer(v659, static Logger.lyrics);
                v660 = v746;

                v661 = sub_AB4BA0();
                v662 = sub_AB9F50();

                if (os_log_type_enabled(v661, v662))
                {
                  v663 = swift_slowAlloc();
                  v664 = swift_slowAlloc();
                  v750 = v661;
                  v751 = v664;
                  v754 = v664;
                  *v663 = v706;
                  v665 = *(v40 + 72);
                  v666 = *(v40 + 80);

                  v667 = sub_927078(v665, v666, &v754);

                  *(v663 + 4) = v667;
                  *(v663 + 12) = 2082;
                  v668 = v725[1];
                  *&v788 = *v725;
                  *(&v788 + 1) = v668;
                  v757 = 10519010;
                  v758 = 0xA300000000000000;
                  v759 = 44226;
                  v760 = 0xA200000000000000;
                  LODWORD(v748) = v662;
                  *&v788 = sub_ABAAB0();
                  *(&v788 + 1) = v669;
                  v670 = String.nonBreakingSpace.unsafeMutableAddressor();
                  v671 = v670[1];
                  v757 = *v670;
                  v758 = v671;
                  v759 = 0x3B7073626E26;
                  v760 = 0xE600000000000000;
                  v672 = sub_ABAAB0();
                  v726 = v258;
                  v674 = v673;

                  *&v788 = v672;
                  *(&v788 + 1) = v674;
                  v757 = 10;
                  v758 = 0xE100000000000000;
                  v759 = 28252;
                  v760 = 0xE200000000000000;
                  v675 = sub_ABAAB0();
                  v677 = v676;

                  v678 = sub_927078(v675, v677, &v754);

                  *(v663 + 14) = v678;
                  v679 = v750;
                  _os_log_impl(&dword_0, v750, v748, "[Transliteration] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v663, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {
                }

                goto LABEL_521;
              }

LABEL_390:
            }
          }

          v444 = v701;
LABEL_392:
          v449 = sub_934014(v445);
          if (v449)
          {
            v450 = v449;
            if (v449 < 1)
            {
LABEL_550:
              __break(1u);
              goto LABEL_551;
            }

            for (i = 0; i != v450; ++i)
            {
              if ((v445 & 0xC000000000000001) != 0)
              {
                v452 = sub_ABAE20();
              }

              else
              {
              }

              *(v452 + 224) = v444 + *(v452 + 224);
            }
          }

          v453 = v714;
          v108 = v768;
          v111 = v769;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224D8, &qword_B39708);
          v109 = swift_allocObject();
          *(v109 + 1) = xmmword_AF4EC0;

          *&v788 = sub_9529FC(v454, sub_952C28);
          sub_951620(&v788);

          *(v109 + 4) = v788;
          *(v109 + 5) = *&v45;

LABEL_400:

          v27 = v320;
          goto LABEL_401;
        }

        goto LABEL_252;
      }

      LODWORD(v748) = 0;
    }

    object = v325;
    goto LABEL_251;
  }

  object = sub_ABB060();
  if (!object)
  {
    goto LABEL_269;
  }

LABEL_262:
  v37 = v40 & 0xC000000000000001;
  if ((v40 & 0xC000000000000001) != 0)
  {

    v332 = sub_ABAE20();
  }

  else
  {
    if (!*(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_542;
    }

    v332 = *(v40 + 32);
  }

  v735 = object;
  v741 = v40 & 0xC000000000000001;
  v742 = v40;
  v737 = v332;
  v720 = v41;
  v702 = v323;
  v726 = v258;
  if (!v323)
  {
    LODWORD(v750) = 0;
    v747 = 0;
    v739 = 0;
    v734 = 0;
    v37 = 0;
    v353 = location;
    v354 = *(location + 32);
    v802 = *(location + 16);
    v803 = v354;
    v804 = *(location + 48);
    v805 = *(location + 64);
LABEL_285:
    object = *(v353 + 64);
    v355 = *(v353 + 48);
    v356 = *(v353 + 32);
    v40 = *(v353 + 40);
    v45 = *(v353 + 16);
    v357 = *(v353 + 24);
    v835 = v803;
    v836 = v804;
    sub_C8C3C(&v835, &v788);
    sub_15F84(&v836, &v788, &qword_E224E0, &unk_B39710);
    sub_954914(v37, v734, v739, 0, v323);
    sub_954914(v45, v357, v356, v40, v355);
    goto LABEL_286;
  }

  v334 = *(v323 + 2);
  v333 = *(v323 + 3);
  v40 = *(v323 + 4);
  object = *(v323 + 5);
  v335 = v323;
  v323 = *(v323 + 6);
  v336 = *(v335 + 7);
  v37 = *(v335 + 64);
  v337 = *(location + 32);
  v802 = *(location + 16);
  v803 = v337;
  v804 = *(location + 48);
  v805 = *(location + 64);

  if (!object)
  {
    v353 = location;
    LODWORD(v750) = v37;
    v747 = v336;
    v739 = v40;
    v734 = v333;
    v37 = v334;
    goto LABEL_285;
  }

  v795 = v334;
  v796 = v333;
  v797 = v40;
  v798 = object;
  v799 = v323;
  v800 = v336;
  v801 = v37;
  v338 = _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(&v795, &v802);
  sub_954914(v334, v333, v40, object, v323);
  if (v338)
  {

    v323 = v702;
    v45 = v703;
    v258 = v726;
    v41 = v720;
    v325 = v723;
    goto LABEL_269;
  }

LABEL_286:
  v734 = v735 - 1;
  v41 = v737;
  if (__OFSUB__(v735, 1))
  {
    goto LABEL_543;
  }

  swift_beginAccess();
  v358 = 0;
  v359 = v741;
  v37 = v742;
  v729 = v742 & 0xFFFFFFFFFFFFFF8;
  v739 = v742 + 32;
  a10 = v700;
  *&v45 = v726;
  v258 = *&v740;
  while (2)
  {
    if (v359)
    {
      v360 = sub_ABAE20();
      v57 = __OFADD__(v358, 1);
      v361 = (v358 + 1);
      if (v57)
      {
        goto LABEL_514;
      }
    }

    else
    {
      if (v358 >= *(v729 + 16))
      {
        goto LABEL_525;
      }

      v360 = *(v739 + 8 * v358);

      v57 = __OFADD__(v358, 1);
      v361 = (v358 + 1);
      if (v57)
      {
LABEL_514:
        __break(1u);
LABEL_515:
        sub_94C50C(v40);
        goto LABEL_516;
      }
    }

    v362 = CGRectGetWidth(*(v360 + 176));

    if (v359)
    {
      sub_ABAE20();
    }

    else
    {
    }

    v363 = sub_ABB480();

    v364 = *(v360 + 176);
    if (v363)
    {
      *(location + 144) = v364;
    }

    sub_95BF60(v320 + v364, *(v360 + 184), *(v360 + 192), *(v360 + 200));
    v750 = v360;
    v747 = v361;
    if (*&v45 == 0.0)
    {
LABEL_322:
      swift_retain_n();
      if (v359)
      {
        sub_ABAE20();
      }

      else
      {
      }

      v385 = sub_ABB480();

      if (v385)
      {
        v386 = v750[22].isa;
        v258 = *&v386 - *(location + 176);
        sub_95BF60(*&v386, *&v750[23].isa, *(location + 192), *(location + 200));
        LODWORD(v748) = 0;
        LODWORD(v738) = 0;
        v745 = v258;
      }
    }

    else
    {
      v365 = v41;
      v366 = *(v45 + 112);
      v367 = *(v360 + 112);
      if (v367 <= v366)
      {
        v37 = *(v45 + 112);
      }

      else
      {
        v37 = *(v360 + 112);
      }

      if (v367 >= v366)
      {
        v368 = *(v45 + 112);
      }

      else
      {
        v368 = *(v360 + 112);
      }

      if (__OFADD__(v368, 1))
      {
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
        goto LABEL_528;
      }

      if (v368 + 1 < v37)
      {
        *&v740 = v258;
        v369 = v718;
        v370 = v751;
        sub_9275DC(v368 + 1, v718 == 0, v751);
        sub_9275DC(v37 - 1, v369 == 0, v370);

        v371 = (v368 + 1);
        if (v369)
        {
          do
          {
            v372 = v371 + 1;
            v373 = sub_ABAE20();
            sub_95BF60(v320 + v373[22], v373[23], v373[24], v373[25]);
            swift_unknownObjectRelease();
            v371 = v372;
          }

          while (v37 != v372);
        }

        else
        {
          v374 = ~v368 + v37;
          v375 = (v704 + 8 * v368);
          do
          {
            v376 = *v375++;
            v27 = v376[23];
            v377 = v376[24];
            v378 = v376[25];
            v379 = v320 + v376[22];

            sub_95BF60(v379, v27, v377, v378);

            --v374;
          }

          while (v374);
        }

        v365 = v737;
        v258 = *&v740;
        v359 = v741;
      }

      v380 = v745;
      if (v360 == v45)
      {
        v380 = v258;
      }

      v745 = v380;
      v381 = v748;
      if (v360 == v45)
      {
        v381 = v738;
      }

      if ((v360 != v45) | v738 & 1)
      {
        LODWORD(v748) = v381;
        v37 = v742;
        v41 = v365;
        goto LABEL_322;
      }

      v382 = *(location + 184);
      v383 = *(location + 192);
      v384 = *(location + 200);
      v27 = *(location + 176) + v258;

      sub_95BF60(v27, v382, v383, v384);
      LODWORD(v748) = 0;
      LODWORD(v738) = 0;
      v745 = v258;
      v37 = v742;
      v41 = v365;
    }

    v387 = *&v41[4].isa;
    v792[0] = *&v41[2].isa;
    v792[1] = v387;
    v793 = *&v41[6].isa;
    v794 = v41[8].isa;
    v388 = *&v746[v736];
    if (*(v388 + 16))
    {
      v389 = v41;
      v837 = *&v41[4].isa;
      v838[0] = v793;
      sub_C8C3C(&v837, &v788);
      sub_15F84(v838, &v788, &qword_E224E0, &unk_B39710);

      v390 = sub_92809C(v792);
      v392 = v391;
      sub_E17A4(&v837);
      sub_12E1C(v838, &qword_E224E0, &unk_B39710);
      if (v392)
      {
        v740 = *(*(v388 + 56) + 8 * v390);
      }

      else
      {

        *&v740 = 0.0;
      }

      v359 = v741;
      v37 = v742;
      v41 = v389;
      if (v741)
      {
LABEL_337:
        v393 = v750;

        sub_ABAE20();
        v358 = v747;
        goto LABEL_338;
      }
    }

    else
    {
      *&v740 = 0.0;
      if (v359)
      {
        goto LABEL_337;
      }
    }

    v358 = v747;
    if ((v734 & 0x8000000000000000) != 0)
    {
      goto LABEL_526;
    }

    if (v734 >= *(v729 + 16))
    {
      goto LABEL_527;
    }

    v393 = v750;

LABEL_338:
    a10 = a10 + v362;
    v40 = sub_ABB480();

    if ((v40 & 1) == 0)
    {
      goto LABEL_362;
    }

    v394 = v393[6].isa;
    v395 = *(v394 + 2);
    if (v395)
    {
      v396 = v394 + 56 * v395;
      v398 = *(v396 + 1);
      v397 = *(v396 + 2);
      v57 = __OFADD__(v398, v397);
      v395 = v398 + v397;
      if (v57)
      {
        goto LABEL_529;
      }

      v399 = *(v394 + 8);
    }

    else
    {
      v399 = 0;
    }

    v400 = v395 - v399;
    if (__OFSUB__(v395, v399))
    {
      goto LABEL_523;
    }

    v401 = v399 + v733;
    if (__OFADD__(v399, v733))
    {
      goto LABEL_524;
    }

    v402.location = v399 + v733;
    v402.length = v395 - v399;
    if (_NSRange.contains(_:)(v402))
    {
      goto LABEL_359;
    }

    if (v740 == 1)
    {

      v455 = v736;
      v456 = *&v737[4].isa;
      v788 = *&v737[2].isa;
      v789 = v456;
      v790 = *&v737[6].isa;
      v791 = v737[8].isa;
      v457 = v746;
      swift_beginAccess();
      v458 = swift_isUniquelyReferenced_nonNull_native();
      v759 = *&v457[v455];
      *&v457[v455] = 0x8000000000000000;
      sub_92A524(2, &v788, v458);
      *&v457[v455] = v759;
      swift_endAccess();
      if (v741)
      {
        v459 = sub_ABAE20();

        v460 = *(v459 + 88);
        swift_unknownObjectRelease();
      }

      else
      {
        v505 = *(v742 + 32);

        v460 = *(v505 + 88);
      }

      v27 = 0.0;
      if (v460 != v744)
      {
        v726 = *&v45;
        v249 = v746;
        v514 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8];
        v515 = v725;
        *v725 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v515[1] = v514;

        if (qword_E21CC0 != -1)
        {
          goto LABEL_558;
        }

        goto LABEL_425;
      }

      v506 = sub_AB9260();

      v507 = sub_AB9260();
      v508 = sub_AB9260();
      v509 = _swiftEmptyArrayStorage[2];
      if (v509)
      {
        v510 = 0;
        v511 = &_swiftEmptyArrayStorage[4];
        do
        {
          v513 = *v511++;
          v512 = v513;
          if ((v513 & ~v510) == 0)
          {
            v512 = 0;
          }

          v510 |= v512;
          --v509;
        }

        while (v509);
      }

      else
      {
        v510 = 0;
      }

      v616 = [v506 stringByReplacingOccurrencesOfString:v507 withString:v508 options:v510 range:{v401, v400}];

      v617 = sub_AB92A0();
      v619 = v618;

      v620 = v725;
      *v725 = v617;
      v620[1] = v619;

      v621 = [v506 length];
      v463 = v620[1];

      v622 = sub_AB9420();

      v57 = __OFSUB__(v621, v622);
      v470 = &v621[-v622];
      if (v57)
      {
        __break(1u);
      }

      else
      {
        v623 = sub_92D774(v393[6].isa);
        if (!__OFSUB__(v733, v470))
        {
          v625 = (v733 - v470) & ~((v733 - v470) >> 63);
          v470 = (v623 + v625);
          if (!__OFADD__(v623, v625))
          {
            v626 = v624;
            v627 = &v470[v624];
            if (!__OFADD__(v470, v624))
            {

              v628 = sub_AB9420();

              if (v627 == v628)
              {

                goto LABEL_115;
              }

              v749 = v506;
              v726 = *&v45;
              v629 = v626;
              v630 = v746;
              sub_94C684(v470, v629);
              if (qword_E21CC0 != -1)
              {
                swift_once();
              }

              v631 = sub_AB4BC0();
              __swift_project_value_buffer(v631, static Logger.lyrics);
              v632 = swift_allocObject();
              *(v632 + 16) = v630;
              v633 = v630;

              v748 = sub_AB4BA0();
              LODWORD(v751) = sub_AB9F50();
              v634 = swift_allocObject();
              *(v634 + 16) = 32;
              v635 = swift_allocObject();
              *(v635 + 16) = 8;
              v636 = swift_allocObject();
              *(v636 + 16) = sub_954D50;
              *(v636 + 24) = *&v393;
              v637 = swift_allocObject();
              *(v637 + 16) = sub_955A24;
              *(v637 + 24) = v636;
              v638 = swift_allocObject();
              *(v638 + 16) = 34;
              v639 = swift_allocObject();
              *(v639 + 16) = 8;
              v640 = swift_allocObject();
              *(v640 + 16) = sub_955A34;
              *(v640 + 24) = v632;
              v641 = swift_allocObject();
              *(v641 + 16) = sub_955A24;
              *(v641 + 24) = v640;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F18, &qword_B38D30);
              v642 = swift_allocObject();
              *(v642 + 16) = xmmword_B00DA0;
              *(v642 + 32) = sub_955AB0;
              *(v642 + 40) = v634;
              *(v642 + 48) = sub_955AB0;
              *(v642 + 56) = v635;
              *(v642 + 64) = sub_955904;
              *(v642 + 72) = v637;
              *(v642 + 80) = sub_955AB0;
              *(v642 + 88) = v638;
              *(v642 + 96) = sub_955AB0;
              *(v642 + 104) = v639;
              *(v642 + 112) = sub_955904;
              *(v642 + 120) = v641;
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520, &qword_B39750);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v643 = v748;
              if (os_log_type_enabled(v748, v751))
              {
                v644 = swift_slowAlloc();
                v756 = swift_slowAlloc();
                *v644 = v706;
                v645 = v393[9].isa;
                v646 = v393[10].isa;

                v647 = sub_927078(v645, v646, &v756);

                *(v644 + 4) = v647;
                *(v644 + 12) = 2082;
                v648 = v725[1];
                v757 = *v725;
                v758 = v648;
                v759 = 10519010;
                v760 = 0xA300000000000000;
                v754 = 44226;
                v755 = 0xA200000000000000;
                v757 = sub_ABAAB0();
                v758 = v649;
                v650 = String.nonBreakingSpace.unsafeMutableAddressor();
                v651 = v650[1];
                v759 = *v650;
                v760 = v651;
                v754 = 0x3B7073626E26;
                v755 = 0xE600000000000000;
                v652 = sub_ABAAB0();
                v654 = v653;

                v757 = v652;
                v758 = v654;
                v759 = 10;
                v760 = 0xE100000000000000;
                v754 = 28252;
                v755 = 0xE200000000000000;
                v655 = sub_ABAAB0();
                v657 = v656;

                v658 = sub_927078(v655, v657, &v756);

                *(v644 + 14) = v658;
                _os_log_impl(&dword_0, v643, v751, "[Transliteration] Word %s is not fully contained in this line, and it's the only word in this line. Adding line break after it and trying again. New text: %{public}s", v644, 0x16u);
                swift_arrayDestroy();

                goto LABEL_507;
              }

              goto LABEL_509;
            }

LABEL_562:
            __break(1u);
            goto LABEL_563;
          }

LABEL_561:
          __break(1u);
          goto LABEL_562;
        }
      }

      __break(1u);
      goto LABEL_561;
    }

    if (v740 >= 2)
    {
      if (qword_E21CC0 != -1)
      {
        swift_once();
      }

      v414 = sub_AB4BC0();
      __swift_project_value_buffer(v414, static Logger.lyrics);
      v415 = v724;

      v416 = v730._object;

      v407 = sub_AB4BA0();
      v417 = sub_AB9F50();

      if (os_log_type_enabled(v407, v417))
      {
        v409 = swift_slowAlloc();
        v418 = swift_slowAlloc();
        v726 = *&v45;
        *&v788 = v418;
        *v409 = v705;
        *(v409 + 4) = sub_927078(countAndFlagsBits, v415, &v788);
        *(v409 + 12) = 2082;
        *(v409 + 14) = sub_927078(v730._countAndFlagsBits, v416, &v788);
        v411 = v417;
        v412 = v407;
        v413 = "[Transliteration] Trying to insert a line break for the third time. The view might be too small to fulfill the layout requirements. Not doing any more adjustments. Line: %{public}s transliterated line: %{public}s";
LABEL_357:
        _os_log_impl(&dword_0, v412, v411, v413, v409, 0x16u);
        swift_arrayDestroy();
        *&v45 = v726;
      }
    }

    else
    {
      v403 = v737;
      if (v737[14].isa)
      {
        v500 = v740;

        v501 = *(v403 + 32);
        v788 = *(v403 + 16);
        v789 = v501;
        v790 = *(v403 + 48);
        v791 = *(v403 + 64);
        v502 = v746;
        v503 = v736;
        swift_beginAccess();
        v504 = swift_isUniquelyReferenced_nonNull_native();
        v759 = *&v502[v503];
        *&v502[v503] = 0x8000000000000000;
        sub_92A524(v500 + 1, &v788, v504);
        *&v502[v503] = v759;
        swift_endAccess();
        if (v731)
        {
          sub_94C684(*(v403 + 88), *(v403 + 96));
        }

        else
        {
          sub_94C50C(v403);
        }

        v27 = 0.0;
        v726 = *&v45;
        if (qword_E21CC0 != -1)
        {
          swift_once();
        }

        v590 = sub_AB4BC0();
        __swift_project_value_buffer(v590, static Logger.lyrics);
        v591 = swift_allocObject();
        v592 = v746;
        *(v591 + 16) = v746;
        v593 = v592;
        v594 = sub_AB4BA0();
        v595 = sub_AB9F50();
        v596 = swift_allocObject();
        *(v596 + 16) = 34;
        v597 = swift_allocObject();
        *(v597 + 16) = 8;
        v598 = swift_allocObject();
        *(v598 + 16) = sub_955A34;
        *(v598 + 24) = v591;
        v599 = swift_allocObject();
        *(v599 + 16) = sub_955A24;
        *(v599 + 24) = v598;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F18, &qword_B38D30);
        v600 = swift_allocObject();
        *(v600 + 16) = xmmword_AF8820;
        *(v600 + 32) = sub_955AB0;
        *(v600 + 40) = v596;
        *(v600 + 48) = sub_955AB0;
        *(v600 + 56) = v597;
        *(v600 + 64) = sub_955904;
        *(v600 + 72) = v599;
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520, &qword_B39750);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (os_log_type_enabled(v594, v595))
        {
          v601 = swift_slowAlloc();
          v602 = swift_slowAlloc();
          v756 = v602;
          *v601 = 136446210;
          v603 = v725[1];
          v757 = *v725;
          v758 = v603;
          v759 = 10519010;
          v760 = 0xA300000000000000;
          v754 = 44226;
          v755 = 0xA200000000000000;
          LODWORD(v751) = v595;
          v757 = sub_ABAAB0();
          v758 = v604;
          v605 = String.nonBreakingSpace.unsafeMutableAddressor();
          v606 = v605[1];
          v759 = *v605;
          v760 = v606;
          v754 = 0x3B7073626E26;
          v755 = 0xE600000000000000;
          v607 = sub_ABAAB0();
          v609 = v608;

          v757 = v607;
          v758 = v609;
          v759 = 10;
          v760 = 0xE100000000000000;
          v754 = 28252;
          v755 = 0xE200000000000000;
          v610 = sub_ABAAB0();
          v612 = v611;

          v613 = sub_927078(v610, v612, &v756);

          *(v601 + 4) = v613;
          _os_log_impl(&dword_0, v594, v751, "[Transliteration] Word is incomplete in this line, adding line break. New text: %{public}s", v601, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v602);
        }

        else
        {
        }

        goto LABEL_411;
      }

      if (qword_E21CC0 != -1)
      {
        swift_once();
      }

      v404 = sub_AB4BC0();
      __swift_project_value_buffer(v404, static Logger.lyrics);
      v405 = v724;

      v406 = v730._object;

      v407 = sub_AB4BA0();
      v408 = sub_AB9F50();

      if (os_log_type_enabled(v407, v408))
      {
        v409 = swift_slowAlloc();
        v410 = swift_slowAlloc();
        v726 = *&v45;
        *&v788 = v410;
        *v409 = v705;
        *(v409 + 4) = sub_927078(countAndFlagsBits, v405, &v788);
        *(v409 + 12) = 2082;
        *(v409 + 14) = sub_927078(v730._countAndFlagsBits, v406, &v788);
        v411 = v408;
        v412 = v407;
        v413 = "[Transliteration] Word is incomplete in this line, but the current view size will not accomodate all of it. Not doing any adjustments. Line: %{public}s transliterated line: %{public}s";
        goto LABEL_357;
      }
    }

    v37 = v742;
LABEL_359:
    v40 = location;
    v419 = CGRectGetWidth(*(location + 176));
    v420 = v723;
    if (a10 < v419 + *(v723 + 336))
    {
      v421 = CGRectGetWidth(*(v40 + 176)) - a10 + *(v420 + 336);
      v320 = v320 + v421;
      sub_95BF60(*&v393[22].isa, *&v393[23].isa, v421 + *&v393[24].isa, *&v393[25].isa);
    }

    v41 = v737;
    v359 = v741;
LABEL_362:
    v422 = CGRectGetMaxX(*&v393[22].isa);
    *&v788 = v422;
    v757 = *&a9;
    if ((sub_AB38C0() & 1) != 0 || v422 <= a9)
    {

      goto LABEL_289;
    }

    if (v740 > 1)
    {
      v40 = v41;
      if (qword_E21CC0 != -1)
      {
        swift_once();
      }

      v423 = sub_AB4BC0();
      __swift_project_value_buffer(v423, static Logger.lyrics);
      v424 = v746;
      v425 = sub_AB4BA0();
      v426 = sub_AB9F50();

      v715 = v426;
      if (os_log_type_enabled(v425, v426))
      {
        v427 = swift_slowAlloc();
        v754 = swift_slowAlloc();
        *v427 = v706;
        v428 = sub_ABA500();
        v40 = v425;
        v430 = sub_927078(v428, v429, &v754);

        *(v427 + 4) = v430;
        *(v427 + 12) = 2082;
        v431 = v725[1];
        *&v788 = *v725;
        *(&v788 + 1) = v431;
        v757 = 10519010;
        v758 = 0xA300000000000000;
        v759 = 44226;
        v760 = 0xA200000000000000;
        v726 = *&v45;
        *&v740 = v258;
        *&v788 = sub_ABAAB0();
        *(&v788 + 1) = v432;
        v433 = String.nonBreakingSpace.unsafeMutableAddressor();
        v434 = v433[1];
        v757 = *v433;
        v758 = v434;
        v759 = 0x3B7073626E26;
        v760 = 0xE600000000000000;
        v435 = sub_ABAAB0();
        v437 = v436;

        *&v788 = v435;
        *(&v788 + 1) = v437;
        v757 = 10;
        v758 = 0xE100000000000000;
        v759 = 28252;
        v760 = 0xE200000000000000;
        v258 = *&v740;
        v37 = v742;
        v438 = sub_ABAAB0();
        v440 = v439;

        v441 = sub_927078(v438, v440, &v754);

        *(v427 + 14) = v441;
        _os_log_impl(&dword_0, v40, v715, "[Transliteration][Width check] Tried too many times to add a line break before the same word. This layout might be impossible, usually when the width is too narrow. Give up on adjustments. Size: %s Text: %{public}s", v427, 0x16u);
        swift_arrayDestroy();

        v359 = v741;
        v41 = v737;
      }

      else
      {

        v41 = v40;
      }

      v393 = v750;
LABEL_289:
      v45 = v393;
      if (v358 == v735)
      {
        v40 = v41;
        *&v740 = v258;

        v442 = location;
        v443 = CGRectGetMaxX(*(location + 176));
        v41 = v720;
        if (v701 < v443)
        {
          v701 = CGRectGetMaxX(*(v442 + 176));
        }

        v258 = *&v393;
        v27 = 0.0;
        v45 = v703;
        object = v723;
        goto LABEL_251;
      }

      continue;
    }

    break;
  }

  if (v740 == 1)
  {
    v726 = *&v45;
    v461 = v725;
    v462 = v725[1];
    *&v788 = *v725;
    *(&v788 + 1) = v462;

    v463 = String.nonBreakingSpace.unsafeMutableAddressor();
    v464 = v463[1];
    v757 = *v463;
    v758 = v464;
    v759 = 0;
    v760 = 0xE000000000000000;
    v465 = sub_ABAAB0();
    v466 = v41;
    v468 = v467;

    *v461 = v465;
    v461[1] = v468;

    v469 = *&v466[4].isa;
    v788 = *&v466[2].isa;
    v789 = v469;
    v790 = *&v466[6].isa;
    v791 = v466[8].isa;
    v470 = v746;
    v471 = v736;
    swift_beginAccess();
    v472 = swift_isUniquelyReferenced_nonNull_native();
    v759 = *&v470[v471];
    *&v470[v471] = 0x8000000000000000;
    sub_92A524(2, &v788, v472);
    *&v470[v471] = v759;
    swift_endAccess();
    v27 = 0.0;
    if (qword_E21CC0 == -1)
    {
LABEL_406:
      v473 = sub_AB4BC0();
      __swift_project_value_buffer(v473, static Logger.lyrics);
      v474 = swift_allocObject();
      *(v474 + 16) = v470;
      v475 = v470;
      v476 = sub_AB4BA0();
      v477 = sub_AB9F50();
      v478 = swift_allocObject();
      *(v478 + 16) = 34;
      v479 = swift_allocObject();
      *(v479 + 16) = 8;
      v480 = swift_allocObject();
      *(v480 + 16) = sub_955A34;
      *(v480 + 24) = v474;
      v481 = swift_allocObject();
      *(v481 + 16) = sub_9549E0;
      *(v481 + 24) = v480;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21F18, &qword_B38D30);
      v482 = swift_allocObject();
      *(v482 + 16) = xmmword_AF8820;
      *(v482 + 32) = sub_954990;
      *(v482 + 40) = v478;
      *(v482 + 48) = sub_955AB0;
      *(v482 + 56) = v479;
      *(v482 + 64) = sub_9549E8;
      *(v482 + 72) = v481;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22520, &qword_B39750);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v476, v477))
      {
        v483 = swift_slowAlloc();
        v484 = swift_slowAlloc();
        v756 = v484;
        *v483 = 136446210;
        v485 = v725[1];
        v757 = *v725;
        v758 = v485;
        v759 = 10519010;
        v760 = 0xA300000000000000;
        v754 = 44226;
        v755 = 0xA200000000000000;
        LODWORD(v751) = v477;
        v757 = sub_ABAAB0();
        v758 = v486;
        v487 = v463[1];
        v759 = *v463;
        v760 = v487;
        v754 = 0x3B7073626E26;
        v755 = 0xE600000000000000;
        v488 = sub_ABAAB0();
        v490 = v489;

        v757 = v488;
        v758 = v490;
        v759 = 10;
        v760 = 0xE100000000000000;
        v754 = 28252;
        v755 = 0xE200000000000000;
        v491 = sub_ABAAB0();
        v493 = v492;

        v494 = sub_927078(v491, v493, &v756);

        *(v483 + 4) = v494;
        _os_log_impl(&dword_0, v476, v751, "[Transliteration][Width check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v483, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v484);
      }

      else
      {
      }

      goto LABEL_476;
    }

LABEL_563:
    swift_once();
    goto LABEL_406;
  }

  v495 = *&v41[4].isa;
  v788 = *&v41[2].isa;
  v789 = v495;
  v790 = *&v41[6].isa;
  v791 = v41[8].isa;
  v496 = v746;
  v497 = v736;
  v498 = v740;
  swift_beginAccess();
  v499 = swift_isUniquelyReferenced_nonNull_native();
  v759 = *&v496[v497];
  *&v496[v497] = 0x8000000000000000;
  sub_92A524(v498 + 1, &v788, v499);
  *&v496[v497] = v759;
  swift_endAccess();
  v27 = 0.0;
  if (v731)
  {
    sub_94C684(v41[11].isa, v41[12].isa);
  }

  else
  {
    sub_94C50C(v41);
  }

  v570 = location;
  if (qword_E21CC0 != -1)
  {
    swift_once();
  }

  v571 = sub_AB4BC0();
  __swift_project_value_buffer(v571, static Logger.lyrics);
  v572 = v746;

  v573 = sub_AB4BA0();
  v574 = sub_AB9F50();

  if (os_log_type_enabled(v573, v574))
  {
    v575 = swift_slowAlloc();
    v751 = swift_slowAlloc();
    location = v570;
    v756 = v751;
    *v575 = v706;
    v576 = v570[9];
    v577 = v570[10];

    v578 = sub_927078(v576, v577, &v756);

    *(v575 + 4) = v578;
    *(v575 + 12) = 2082;
    v579 = v725[1];
    v757 = *v725;
    v758 = v579;
    v759 = 10519010;
    v760 = 0xA300000000000000;
    v754 = 44226;
    v755 = 0xA200000000000000;
    v726 = *&v45;
    v757 = sub_ABAAB0();
    v758 = v580;
    v581 = String.nonBreakingSpace.unsafeMutableAddressor();
    v582 = v581[1];
    v759 = *v581;
    v760 = v582;
    v754 = 0x3B7073626E26;
    v755 = 0xE600000000000000;
    v583 = sub_ABAAB0();
    v585 = v584;

    v757 = v583;
    v758 = v585;
    v759 = 10;
    v760 = 0xE100000000000000;
    v754 = 28252;
    v755 = 0xE200000000000000;
    v586 = sub_ABAAB0();
    v588 = v587;

    v589 = sub_927078(v586, v588, &v756);

    *(v575 + 14) = v589;
    _os_log_impl(&dword_0, v573, v574, "[Transliteration] Word %s crossed view bounds after adjustment, adding line break. New text: %{public}s", v575, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_475:

LABEL_476:

LABEL_477:
  v108 = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0;
LABEL_116:
  a8 = v728;
LABEL_179:
  *a8 = v108;
  *(a8 + 1) = v111;
  *(a8 + 2) = v109;
  a8[3] = v27;
  *(a8 + 32) = v110;
}

uint64_t sub_94C39C(uint64_t a1)
{
  sub_931F14();
  sub_ABAAB0();
  String.nonBreakingSpace.unsafeMutableAddressor();
  sub_ABAAB0();

  v1 = sub_ABAAB0();

  return v1;
}

void sub_94C50C(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v4 = objc_allocWithZone(NSMutableString);

  v5 = sub_AB9260();

  v6 = [v4 initWithString:v5];

  v7 = *(a1 + 88);
  v8 = v6;
  v9 = [v8 substringWithRange:{v7, 1}];
  v10 = sub_AB92A0();
  v12 = v11;

  if (v10 == 32 && v12 == 0xE100000000000000)
  {
  }

  else
  {
    v14 = sub_ABB3C0();

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (__OFADD__(v7++, 1))
  {
    __break(1u);
    return;
  }

LABEL_9:
  v16 = sub_AB9260();
  [v8 insertString:v16 atIndex:v7];

  v17 = sub_AB92A0();
  v19 = v18;

  *v3 = v17;
  v3[1] = v19;
}

void sub_94C684(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v6 = objc_allocWithZone(NSMutableString);

  v7 = sub_AB9260();

  v8 = [v6 initWithString:v7];

  v9 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v8;
  v11 = [v10 substringWithRange:{v9, 1}];
  v12 = sub_AB92A0();
  v14 = v13;

  if (v12 == 32 && v14 == 0xE100000000000000)
  {
  }

  else
  {
    v16 = sub_ABB3C0();

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (__OFADD__(v9++, 1))
  {
LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
  v18 = sub_AB9260();
  [v10 insertString:v18 atIndex:v9];

  v19 = sub_AB92A0();
  v21 = v20;

  *v5 = v19;
  v5[1] = v21;
}

id sub_94C840()
{
  v2.receiver = v0;
  v2.super_class = _s8TextViewCMa(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s8TextViewCMa(uint64_t a1)
{
  result = qword_E22948;
  if (!qword_E22948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_94CA80(uint64_t a1)
{
  sub_94CBA4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_94CBA4(uint64_t a1)
{
  if (!qword_E22000)
  {
    sub_AB35A0();
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E22000);
    }
  }
}

__n128 __swift_memcpy96_8_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C22TranslationLabelUpdateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_94CC40(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_94CC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_94CCF8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 24) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_94CD44()
{
  result = qword_E22958;
  if (!qword_E22958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E22958);
  }

  return result;
}

void *sub_94CD98(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23960, &qword_B3A800);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_94CE20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E23960, &qword_B3A800);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_94CF0C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_94CD98(v1, 0);

    sub_ABADF0();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = sub_ABB060();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void sub_94CFA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224D0, &qword_B39700);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_94D098(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v2 + 16);
  if (*v1)
  {
    v4 = a1;
    sub_933FBC();
    if (v5)
    {
      a1 = v4;
LABEL_9:
      sub_92C0AC(a1, v3);
      return 1;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    v6 = 0;
    while (*(v2 + 32 + 8 * v6) != a1)
    {
      if (v3 == ++v6)
      {
        v3 = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

void sub_94D12C(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v40 = a2 + 64;
    v38 = (sub_ABABD0() + 1) & ~v5;
    v39 = v7;
    do
    {
      v45 = v3;
      v43 = 56 * v6;
      v8 = *(v2 + 48) + 56 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 32);
      v42 = *(v8 + 40);
      v44 = *(v8 + 48);
      sub_ABB5C0();
      if (v9 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v9;
      }

      sub_ABB600(*&v12);
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      sub_ABB600(*&v13);

      sub_AB93F0();
      sub_ABB5D0(*(v11 + 16));
      v14 = *(v11 + 16);
      if (v14)
      {
        v15 = (v11 + 80);
        do
        {
          v16 = *(v15 - 6);
          v17 = *(v15 - 5);
          v19 = *(v15 - 2);
          v18 = *(v15 - 1);
          v21 = *v15;
          v15 += 7;
          v20 = *&v21;
          if (v16 == 0.0)
          {
            v16 = 0.0;
          }

          sub_ABB600(*&v16);
          if (v17 == 0.0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = v17;
          }

          sub_ABB600(*&v22);

          sub_AB93F0();
          sub_ABB5D0(v19);
          sub_ABB5D0(v18);
          sub_ABB5D0(v20);

          --v14;
        }

        while (v14);
      }

      if (v44)
      {
        sub_ABB5D0(0);
      }

      else
      {
        sub_ABB5D0(1uLL);
        if ((v42 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = v42;
        }

        else
        {
          v23 = 0;
        }

        sub_ABB600(v23);
      }

      v2 = a2;
      v3 = v45;
      v24 = sub_ABB610();

      v25 = v24 & v39;
      if (v45 >= v38)
      {
        v4 = v40;
        if (v25 < v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v40;
        if (v25 >= v38)
        {
          goto LABEL_30;
        }
      }

      if (v45 >= v25)
      {
LABEL_30:
        v26 = *(a2 + 48);
        v27 = v26 + 56 * v45;
        v28 = (v26 + v43);
        if (56 * v45 < v43 || v27 >= v28 + 56 || v45 != v6)
        {
          v29 = *v28;
          v30 = v28[1];
          v31 = v28[2];
          *(v27 + 48) = *(v28 + 6);
          *(v27 + 16) = v30;
          *(v27 + 32) = v31;
          *v27 = v29;
        }

        v32 = *(a2 + 56);
        v33 = (v32 + 8 * v45);
        v34 = (v32 + 8 * v6);
        if (v45 != v6 || v33 >= v34 + 1)
        {
          *v33 = *v34;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v39;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v35 = *(v2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v37;
    ++*(v2 + 36);
  }
}

uint64_t sub_94D468(double *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = 0;
    v7 = *a1;
    do
    {
      v8 = v4 + 56 * v6;
      if (*v8 == v7 && *(v8 + 8) == v5[1])
      {
        result = *(v8 + 16);
        v10 = *(v8 + 32);
        v11 = *(v8 + 40);
        v25 = *(v8 + 48);
        v12 = result == *(v5 + 2) && *(v8 + 24) == *(v5 + 3);
        if (v12 || (result = sub_ABB3C0(), v5 = a1, v4 = a2, v3 = a3, (result & 1) != 0))
        {
          v13 = *(v5 + 4);
          v14 = *(v10 + 16);
          if (v14 == *(v13 + 16))
          {
            if (v14)
            {
              v15 = v10 == v13;
            }

            else
            {
              v15 = 1;
            }

            if (!v15)
            {
              v16 = (v10 + 80);
              v17 = v13 + 40;
              while (v14)
              {
                if (*(v16 - 6) != *(v17 - 8) || *(v16 - 5) != *v17)
                {
                  goto LABEL_4;
                }

                result = *(v16 - 4);
                v19 = *(v16 - 2);
                v20 = *(v16 - 1);
                v21 = *v16;
                v23 = *(v17 + 24);
                v22 = *(v17 + 32);
                v24 = *(v17 + 40);
                if (result != *(v17 + 8) || *(v16 - 3) != *(v17 + 16))
                {
                  result = sub_ABB3C0();
                  v5 = a1;
                  v4 = a2;
                  v3 = a3;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_4;
                  }
                }

                if (v19 != v23 || v20 != v22 || *&v21 != v24)
                {
                  goto LABEL_4;
                }

                v16 += 7;
                v17 += 56;
                if (!--v14)
                {
                  goto LABEL_18;
                }
              }

              __break(1u);
              return result;
            }

LABEL_18:
            if (v25)
            {
              if (v5[6])
              {
                return v6;
              }
            }

            else if ((v5[6] & 1) == 0 && v11 == v5[5])
            {
              return v6;
            }
          }
        }
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v3);
  }

  return 0;
}

void sub_94D648(__n128 a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  if (v3 || *(v4 + 16) >= 0x10uLL)
  {
    v6 = sub_AB49E0();
    if (v3 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v5 = sub_94D838(v4, v8, 0, v3, v7);
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
}

void sub_94D700(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t), __n128 a2)
{
  v4 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v5 = *(v4 + 24) & 0x3FLL;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  if (v5 || *(v6 + 16) >= 0x10uLL)
  {
    v8 = sub_AB49E0();
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v7 = sub_94D7B0(v6, v10, 0, v5, a1, v9);
  }

  else
  {
    v7 = 0;
  }

  *v2 = v7;
}

uint64_t sub_94D7B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t), __n128 a6)
{
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = sub_AB49E0();
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = sub_AB49F0();
    sub_94D908(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

uint64_t sub_94D838(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_AB49E0();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = sub_AB49F0();
    sub_94D8B8(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

Swift::Int sub_94D960(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_ABB5C0();

        sub_AB93F0();
        v7 = sub_ABB610();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_AB4950();

        if (v8)
        {
          while (1)
          {
            sub_AB49A0();
          }
        }

        v7 = sub_AB4990();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int sub_94DA90(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v23 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v23 + 56 * v4;
        v6 = *v5;
        v7 = *(v5 + 8);
        v8 = *(v5 + 32);
        v25 = *(v5 + 40);
        v26 = *(v5 + 48);
        sub_ABB5C0();
        if (v6 == 0.0)
        {
          v9 = 0.0;
        }

        else
        {
          v9 = v6;
        }

        sub_ABB600(*&v9);
        if (v7 == 0.0)
        {
          v10 = 0.0;
        }

        else
        {
          v10 = v7;
        }

        sub_ABB600(*&v10);

        sub_AB93F0();
        v11 = *(v8 + 16);
        sub_ABB5D0(v11);
        if (v11)
        {
          v12 = (v8 + 80);
          do
          {
            v13 = *(v12 - 6);
            v14 = *(v12 - 5);
            v15 = *(v12 - 2);
            v16 = *(v12 - 1);
            v18 = *v12;
            v12 += 7;
            v17 = *&v18;
            if (v13 == 0.0)
            {
              v13 = 0.0;
            }

            sub_ABB600(*&v13);
            if (v14 == 0.0)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = v14;
            }

            sub_ABB600(*&v19);

            sub_AB93F0();
            sub_ABB5D0(v15);
            sub_ABB5D0(v16);
            sub_ABB5D0(v17);

            --v11;
          }

          while (v11);
        }

        if (v26)
        {
          sub_ABB5D0(0);
        }

        else
        {
          sub_ABB5D0(1uLL);
          v20 = (v25 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v25 : 0;
          sub_ABB600(v20);
        }

        result = sub_ABB610();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v21 = sub_AB4950();

        if (v21)
        {
          while (1)
          {
            sub_AB49A0();
          }
        }

        result = sub_AB4990();
        if (++v4 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_94DD14(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        v8 = *(v6 + 8 * v7);
        sub_ABB5C0();
        sub_ABB5D0(v8);
        result = sub_ABB610();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_AB4950())
        {
          while (1)
          {
            sub_AB49A0();
          }
        }

        result = sub_AB4990();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_94DE1C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22560, &qword_B39790);
  result = sub_ABAD50();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_ABA780(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_94E010(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22870, &unk_B39A10);
      v8 = sub_ABAD50();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
        sub_ABB5C0();
        sub_ABB5D0(v16);
        v17 = sub_ABB610();
        v18 = -1 << *(v9 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          v22 = 0;
          v23 = (63 - v18) >> 6;
          while (++v20 != v23 || (v22 & 1) == 0)
          {
            v24 = v20 == v23;
            if (v20 == v23)
            {
              v20 = 0;
            }

            v22 |= v24;
            v25 = *(v12 + 8 * v20);
            if (v25 != -1)
            {
              v21 = __clz(__rbit64(~v25)) + (v20 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v9 + 48) + 8 * v21) = v16;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_94E220(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, void *, uint64_t, __n128), uint64_t (*a7)(void *, uint64_t, uint64_t), __n128 a8)
{
  v13 = a2 >> 62;
  if (a2 >> 62)
  {
    v23 = a3;
    v24 = a4;
    sub_ABB060();
    a4 = v24;
    a3 = v23;
  }

  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v15 = sub_AB49E0();
  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= 4)
  {
    if (v13)
    {
      if (sub_ABB060() >= 2)
      {
        sub_952DB8(a2, a7);
        goto LABEL_21;
      }

      v18 = sub_ABB060();
    }

    else
    {
      v18 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
      if (v18 >= 2)
      {
        sub_94E4EC((a2 & 0xFFFFFFFFFFFFFF8) + 32, v18, a7);
LABEL_21:
        v22 = v19;
        result = 0;
        goto LABEL_22;
      }
    }

    result = 0;
    *a1 = v18;
    return result;
  }

  v20 = sub_AB49F0();
  sub_94E964(&v25, a2, (v20 + 16), v20 + 32, a6);
  result = v20;
  v22 = v25;
LABEL_22:
  *a1 = v22;
  return result;
}

uint64_t sub_94E36C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, __n128 a6)
{
  v9 = *(a2 + 16);
  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v11 = sub_AB49E0();
  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v12;
  }

  if (v13 > 4)
  {
    v15 = sub_AB49F0();
    sub_94EB3C(a2 + 32, v9, (v15 + 16), v15 + 32);
    *a1 = v16;
    return v15;
  }

  else if (v9 >= 2)
  {
    v17 = sub_94E600((a2 + 32), v9);
    result = 0;
    *a1 = v17;
  }

  else
  {
    result = 0;
    *a1 = v9;
  }

  return result;
}

void *sub_94E450(unint64_t a1, uint64_t (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_ABB060();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_94CD98(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_94E4EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v10 = sub_9529FC(_swiftEmptyArrayStorage, a3);
  sub_ABAEC0();
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v7 = v10[2];
        v8 = v10 + 4;
        while (v7)
        {
          v9 = *v8++;
          --v7;
          if (*(a1 + 8 * v5) == v9)
          {
            goto LABEL_10;
          }
        }

        swift_retain_n();
        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();

        ++v5;
        if (v6 == a2)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

char *sub_94E600(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v16 = _swiftEmptyArrayStorage;
  result = sub_927640(0, a2 & ~(a2 >> 63), 0);
  v5 = _swiftEmptyArrayStorage;
  if (!v2)
  {
LABEL_12:

    return v2;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = a1[1];
      v17 = *a1;
      v18 = v7;
      v19 = a1[2];
      v20 = *(a1 + 48);
      if (sub_94E7A0(&v17, v5))
      {
        break;
      }

      v21 = v18;
      v22 = v19;
      sub_C8C3C(&v21, v15);
      sub_15F84(&v22, v15, &qword_E224E0, &unk_B39710);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_927640(0, v5[2] + 1, 1);
        v5 = v16;
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_927640((v9 > 1), v10 + 1, 1);
        v5 = v16;
      }

      ++v6;
      v5[2] = v10 + 1;
      v11 = &v5[7 * v10];
      v12 = v17;
      v13 = v18;
      v14 = v19;
      *(v11 + 80) = v20;
      *(v11 + 3) = v13;
      *(v11 + 4) = v14;
      *(v11 + 2) = v12;
      a1 = (a1 + 56);
      if (v2 == v6)
      {
        goto LABEL_12;
      }
    }

    v2 = v6;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_94E7A0(double *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = a1;
  v4 = 0;
  v5 = a2 + 32;
  v6 = *a1;
  v27 = *(a2 + 16);
  v26 = a2 + 32;
  while (1)
  {
    v8 = v5 + 56 * v4;
    if (v6 != *v8 || v3[1] != *(v8 + 8))
    {
      goto LABEL_6;
    }

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v25 = *(v8 + 48);
    result = *(v3 + 2);
    if (result != *(v8 + 16) || *(v3 + 3) != *(v8 + 24))
    {
      result = sub_ABB3C0();
      v5 = v26;
      v2 = v27;
      v3 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v13 = *(v3 + 4);
    v14 = *(v13 + 16);
    if (v14 != *(v9 + 16))
    {
      goto LABEL_6;
    }

    if (v14 && v13 != v9)
    {
      break;
    }

LABEL_20:
    if (v3[6])
    {
      if (v25)
      {
        return 1;
      }
    }

    else
    {
      v7 = v25;
      if (v3[5] != v10)
      {
        v7 = 1;
      }

      if (v7 != 1)
      {
        return 1;
      }
    }

LABEL_6:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v16 = (v13 + 80);
  v17 = v9 + 40;
  while (v14)
  {
    if (*(v16 - 6) != *(v17 - 8) || *(v16 - 5) != *v17)
    {
      goto LABEL_6;
    }

    result = *(v16 - 4);
    v19 = *(v16 - 2);
    v20 = *(v16 - 1);
    v21 = *v16;
    v22 = *(v17 + 24);
    v23 = *(v17 + 32);
    v24 = *(v17 + 40);
    if (result != *(v17 + 8) || *(v16 - 3) != *(v17 + 16))
    {
      result = sub_ABB3C0();
      v5 = v26;
      v2 = v27;
      v3 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v19 != v22 || v20 != v23 || *&v21 != v24)
    {
      goto LABEL_6;
    }

    v16 += 7;
    v17 += 56;
    if (!--v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_94E964(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *, uint64_t, __n128))
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v6 = sub_9549F0(a2, a5);
  }

  else
  {
    v6 = sub_94E9D4((a2 & 0xFFFFFFFFFFFFFF8) + 32, *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)), a3, a4);
  }

  *a1 = v7;
  return v6 & 1;
}

Swift::Int sub_94E9D4(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = result;
    for (i = 0; ; ++i)
    {
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = *(v6 + 8 * i);
      sub_ABB5C0();
      sub_ABB5D0(v9);
      result = sub_ABB610();
      if (__OFSUB__(1 << *a3, 1))
      {
        goto LABEL_15;
      }

      sub_AB4950();
      while (1)
      {
        v10 = sub_AB4980();
        if (v11)
        {
          break;
        }

        if (*(v6 + 8 * v10) == *(v6 + 8 * i))
        {
          return 0;
        }

        sub_AB49A0();
      }

      result = sub_AB4990();
      if (v8 == a2)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_94EB3C(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = result;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_52;
  }

  v4 = a3;
  v5 = 0;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v6 = v44 + 56 * v5;
    v7 = *(v6 + 32);
    v57 = *(v6 + 16);
    v58 = v7;
    v56 = *v6;
    v45 = v6;
    v59 = *(v6 + 48);
    v60[0] = v57;
    v61 = v7;
    sub_ABB5C0();
    sub_C8C3C(v60, v46);
    sub_15F84(&v61, v46, &qword_E224E0, &unk_B39710);
    Lyrics.Word.hash(into:)(v47);
    result = sub_ABB610();
    v8 = 1 << *v4;
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    v41 = v5 + 1;
    v11 = v10 & result;
    v12 = sub_AB4950();
    v14 = v13;
    v16 = v15;
    sub_E17A4(v60);
    sub_12E1C(&v61, &qword_E224E0, &unk_B39710);
    *&v48 = v4;
    *(&v48 + 1) = a4;
    *&v49 = v11;
    *(&v49 + 1) = v12;
    *&v50 = v14;
    *(&v50 + 1) = v16;
    v51 = 0;
    v55 = 0;
    v52 = v48;
    v53 = v49;
    v54 = v50;
    while (1)
    {
      v17 = sub_AB4980();
      if (v18)
      {
        break;
      }

      v19 = v44 + 56 * v17;
      if (*v19 == *v45 && *(v19 + 8) == *(v45 + 8))
      {
        result = *(v19 + 16);
        v21 = *(v19 + 32);
        v22 = *(v19 + 40);
        v23 = *(v45 + 32);
        v24 = *(v45 + 40);
        v42 = *(v45 + 48);
        v43 = *(v19 + 48);
        v25 = result == *(v45 + 16) && *(v19 + 24) == *(v45 + 24);
        if (v25 || (result = sub_ABB3C0(), (result & 1) != 0))
        {
          v26 = *(v21 + 16);
          if (v26 == *(v23 + 16))
          {
            if (v26)
            {
              v27 = v21 == v23;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              v29 = (v21 + 80);
              v30 = v23 + 40;
              while (v26)
              {
                if (*(v29 - 6) != *(v30 - 8) || *(v29 - 5) != *v30)
                {
                  goto LABEL_9;
                }

                result = *(v29 - 4);
                v32 = *(v29 - 2);
                v33 = *(v29 - 1);
                v34 = *v29;
                v36 = *(v30 + 24);
                v35 = *(v30 + 32);
                v37 = *(v30 + 40);
                if (result != *(v30 + 8) || *(v29 - 3) != *(v30 + 16))
                {
                  result = sub_ABB3C0();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_9;
                  }
                }

                if (v32 != v36 || v33 != v35 || *&v34 != v37)
                {
                  goto LABEL_9;
                }

                v29 += 7;
                v30 += 56;
                if (!--v26)
                {
                  goto LABEL_27;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

LABEL_27:
            if (v43)
            {
              if (v42)
              {
                return 0;
              }
            }

            else
            {
              v28 = v42;
              if (v22 != v24)
              {
                v28 = 1;
              }

              if ((v28 & 1) == 0)
              {
                return 0;
              }
            }
          }
        }
      }

LABEL_9:
      sub_AB49A0();
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v55 = v51;
    }

    result = sub_AB4990();
    v5 = v41;
    v4 = a3;
    if (v41 != a2)
    {
      continue;
    }

    return 1;
  }
}

void sub_94EE78(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_ABAC50())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_ABAC10();
    _s4WordCMa();
    sub_954D9C(&qword_E22970, _s4WordCMa, &unk_B3A318);
    sub_AB9BC0();
    a1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v13 = (v11 - 1) & v11;
    v14 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_22:
      sub_2BB88(a1);
      return;
    }

    while (1)
    {
      sub_9389DC(v14);

      v5 = v12;
      v6 = v13;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_ABAC90())
      {
        _s4WordCMa();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_94F0B0(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_ABAC10();
    _s4WordCMa();
    sub_954D9C(&qword_E22970, _s4WordCMa, &unk_B3A318);
    sub_AB9BC0();
    v4 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
    v9 = v66;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);

    v8 = 0;
  }

  v57 = v4;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v53 = v7;
  v14 = (v7 + 64) >> 6;
  v15 = (v3 + 56);
  v61 = v9;
  v54 = v3;
  while (1)
  {
    if (v4 < 0)
    {
      v21 = sub_ABAC90();
      if (!v21)
      {
        goto LABEL_65;
      }

      v55 = v21;
      _s4WordCMa();
      swift_dynamicCast();
      v2 = v56;
      v19 = v8;
      v3 = v9;
      if (!v56)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v16 = v9;
      v17 = v8;
      if (v9)
      {
LABEL_20:
        v3 = (v16 - 1) & v16;
        v2 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        v19 = v17;
      }

      else
      {
        if (v14 <= (v8 + 1))
        {
          v18 = v8 + 1;
        }

        else
        {
          v18 = v14;
        }

        v19 = v18 - 1;
        v20 = v8;
        while (1)
        {
          v17 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_67;
          }

          if (v17 >= v14)
          {
            break;
          }

          v16 = *(v6 + 8 * v17);
          ++v20;
          if (v16)
          {
            goto LABEL_20;
          }
        }

        v2 = 0;
        v3 = 0;
      }

      v57 = v4;
      v58 = v6;
      v59 = v53;
      v60 = v19;
      v61 = v3;
      if (!v2)
      {
LABEL_65:
        sub_2BB88(v4);
        return v54;
      }
    }

    sub_ABB5C0();
    sub_ABB5D0(v2);
    v22 = sub_ABB610();
    v23 = -1 << *(v54 + 32);
    v9 = v22 & ~v23;
    v8 = v9 >> 6;
    v17 = 1 << v9;
    if (((1 << v9) & v15[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v19;
    v9 = v3;
  }

  v24 = *(v54 + 48);
  if (*(v24 + 8 * v9) != v2)
  {
    v25 = ~v23;
    do
    {
      v9 = (v9 + 1) & v25;
      v8 = v9 >> 6;
      v17 = 1 << v9;
      if (((1 << v9) & v15[v9 >> 6]) == 0)
      {
        goto LABEL_10;
      }
    }

    while (*(v24 + 8 * v9) != v2);
  }

  v2 = v54;
  v26 = *(v54 + 32);
  v49 = ((1 << v26) + 63) >> 6;
  v5 = 8 * v49;
  if ((v26 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v50 = &v48;
    __chkstk_darwin();
    v9 = &v48 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v15, v27);
    v28 = *(v9 + 8 * v8) & ~v17;
    v29 = *(v2 + 16);
    v51 = v9;
    *(v9 + 8 * v8) = v28;
    v30 = v29 - 1;
    v2 = 1;
LABEL_34:
    v52 = v30;
    while (1)
    {
      if (v4 < 0)
      {
        v31 = sub_ABAC90();
        if (!v31)
        {
          goto LABEL_62;
        }

        v55 = v31;
        _s4WordCMa();
        swift_dynamicCast();
        v8 = v56;
        if (!v56)
        {
          goto LABEL_62;
        }

        goto LABEL_51;
      }

      if (!v3)
      {
        break;
      }

      v17 = v19;
LABEL_49:
      v34 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v8 = *(*(v4 + 48) + ((v17 << 9) | (8 * v34)));

      v33 = v17;
LABEL_50:
      v57 = v4;
      v58 = v6;
      v59 = v53;
      v60 = v33;
      v19 = v33;
      v61 = v3;
      if (!v8)
      {
LABEL_62:
        sub_94E010(v51, v49, v52, v54);
        v10 = v43;
        goto LABEL_63;
      }

LABEL_51:
      v35 = v54;
      sub_ABB5C0();
      sub_ABB5D0(v8);
      v36 = sub_ABB610();
      v37 = -1 << *(v35 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      v9 = 1 << v38;
      if (((1 << v38) & v15[v38 >> 6]) == 0)
      {
        goto LABEL_35;
      }

      v40 = *(v54 + 48);
      if (*(v40 + 8 * v38) != v8)
      {
        v41 = ~v37;
        while (1)
        {
          v38 = (v38 + 1) & v41;
          v39 = v38 >> 6;
          v9 = 1 << v38;
          if (((1 << v38) & v15[v38 >> 6]) == 0)
          {
            break;
          }

          if (*(v40 + 8 * v38) == v8)
          {
            goto LABEL_56;
          }
        }

LABEL_35:

        continue;
      }

LABEL_56:

      v42 = v51[v39];
      v51[v39] = v42 & ~v9;
      if ((v42 & v9) != 0)
      {
        v30 = v52 - 1;
        if (__OFSUB__(v52, 1))
        {
          __break(1u);
        }

        if (v52 == 1)
        {

          v10 = &_swiftEmptySetSingleton;
          goto LABEL_63;
        }

        goto LABEL_34;
      }
    }

    if (v14 <= (v19 + 1))
    {
      v32 = v19 + 1;
    }

    else
    {
      v32 = v14;
    }

    v33 = v32 - 1;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v8 = 0;
        v3 = 0;
        goto LABEL_50;
      }

      v3 = *(v6 + 8 * v17);
      ++v19;
      if (v3)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v52 = v5;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v45 = v52;
  v46 = swift_slowAlloc();
  memcpy(v46, v15, v45);
  sub_94F758(v46, v49, v2, v9, &v57);
  v10 = v47;

LABEL_63:
  sub_2BB88(v57);
  return v10;
}