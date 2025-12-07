id sub_1001A41C8(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4210(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4258(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A42A0(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A42E8(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

id sub_1001A4330(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1001A4378()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

void sub_1001A43A4()
{
  v3 = v0;
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() nibWithNibName:v4 bundle:0];

  v6 = [v5 instantiateWithOwner:v3 options:0];
  v7 = &type metadata for Any;
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8[2])
  {
    sub_10000FE60((v8 + 4), v144);

    sub_100018630(0, &qword_1004A7550, UIView_ptr);
    v9 = swift_dynamicCast();
    v10 = v143;
    if (!v9)
    {
      v10 = 0;
    }

    v11 = qword_1004AE610;
    v12 = *&v3[qword_1004AE610];
    *&v3[qword_1004AE610] = v10;

    v13 = *&v3[v11];
    if (!v13)
    {
      goto LABEL_77;
    }

    v14 = v13;
    [v3 bounds];
    [v14 setFrame:?];

    if (!*&v3[v11])
    {
      goto LABEL_77;
    }

    [v3 addSubview:?];
    v15 = [objc_opt_self() sharedApplication];
    v16 = [v15 preferredContentSizeCategory];

    LOBYTE(v15) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v2 = &off_100494000;
    if (v15)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v18 = Strong;
      [Strong setConstant:50.0];

      v19 = swift_unknownObjectWeakLoadStrong();
      if (!v19)
      {
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v20 = v19;
      [v19 setConstant:69.5];
    }

    [v3 setNeedsLayout];
    [v3 layoutIfNeeded];
    v21 = swift_unknownObjectWeakLoadStrong();
    if (!v21)
    {
      goto LABEL_78;
    }

    v22 = v21;
    v7 = objc_opt_self();
    v23 = [v7 systemFontOfSize:60.0 weight:UIFontWeightRegular];
    v1 = &selRef_runAction_completion_;
    [v22 setFont:v23];

    v24 = swift_unknownObjectWeakLoadStrong();
    if (!v24)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v8 = v24;
    if (qword_1004A0548 == -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_13:
  [v8 setTextColor:qword_1004D50B8];

  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v26 = v25;
  v27 = [v25 font];

  if (!v27)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  [v27 descender];
  v29 = v28;

  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v31 = v30;
  v32 = [v30 font];

  if (!v32)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  [v32 leading];
  v34 = v33;

  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v36 = v35;
  [v35 v2[333]];

  v37 = swift_unknownObjectWeakLoadStrong();
  if (!v37)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v38 = v37;
  sub_10019FCB8();
  v40 = v39;
  v41 = [v7 fontWithDescriptor:v39 size:0.0];

  [v38 v1[511]];
  v42 = swift_unknownObjectWeakLoadStrong();
  if (!v42)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v43 = v42;
  if (qword_1004A0550 != -1)
  {
    swift_once();
  }

  [v43 setTextColor:qword_1004D50C0];

  v44 = swift_unknownObjectWeakLoadStrong();
  if (!v44)
  {
    goto LABEL_87;
  }

  v45 = v44;
  v46 = [v44 font];

  if (!v46)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  [v46 descender];
  v48 = v47;

  v49 = swift_unknownObjectWeakLoadStrong();
  if (!v49)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v50 = v49;
  v51 = [v49 font];

  if (!v51)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  [v51 leading];
  v53 = v52;

  v54 = swift_unknownObjectWeakLoadStrong();
  if (!v54)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v55 = v54;
  [v54 v2[333]];

  v56 = swift_unknownObjectWeakLoadStrong();
  if (!v56)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v57 = v56;
  sub_10019FCB8();
  v59 = v58;
  v60 = [v7 fontWithDescriptor:v58 size:0.0];

  [v57 v1[511]];
  v61 = swift_unknownObjectWeakLoadStrong();
  if (!v61)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v62 = v61;
  [v61 setTextColor:qword_1004D50C0];

  v63 = swift_unknownObjectWeakLoadStrong();
  if (!v63)
  {
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v64 = v63;
  sub_10019FCB8();
  v66 = v65;
  v67 = [v7 fontWithDescriptor:v65 size:0.0];

  [v64 v1[511]];
  v68 = swift_unknownObjectWeakLoadStrong();
  if (!v68)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v69 = v68;
  [v68 setTextColor:qword_1004D50C0];

  v70 = swift_unknownObjectWeakLoadStrong();
  if (!v70)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v71 = v70;
  [v70 setAdjustsFontForContentSizeCategory:0];

  v72 = swift_unknownObjectWeakLoadStrong();
  if (!v72)
  {
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v73 = v72;
  [v72 setAdjustsFontSizeToFitWidth:0];

  v74 = swift_unknownObjectWeakLoadStrong();
  if (!v74)
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v75 = v74;
  sub_10019FCB8();
  v77 = v76;
  v78 = [v7 fontWithDescriptor:v76 size:0.0];

  [v75 setFont:v78];
  v79 = swift_unknownObjectWeakLoadStrong();
  if (!v79)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v80 = v79;
  [v79 setTextColor:qword_1004D50C0];

  v81 = swift_unknownObjectWeakLoadStrong();
  if (!v81)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v82 = v81;
  [v81 setAdjustsFontForContentSizeCategory:0];

  v83 = swift_unknownObjectWeakLoadStrong();
  if (!v83)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v84 = v83;
  [v83 setAdjustsFontSizeToFitWidth:0];

  v85 = swift_unknownObjectWeakLoadStrong();
  if (!v85)
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v86 = v85;
  v87 = swift_unknownObjectWeakLoadStrong();
  if (!v87)
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  v88 = v87;
  [v87 bounds];
  v90 = v89;

  v91 = swift_unknownObjectWeakLoadStrong();
  if (!v91)
  {
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v92 = v91;
  v93 = [v91 font];

  if (!v93)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v94 = v90 * 0.5;
  [v93 leading];
  v96 = v95;

  [v86 setConstant:v94 - v96 * 0.5];
  v97 = swift_unknownObjectWeakLoadStrong();
  if (!v97)
  {
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v98 = v97;
  v99 = swift_unknownObjectWeakLoadStrong();
  if (!v99)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  v100 = v99;
  [v99 bounds];
  v102 = v101;

  v103 = swift_unknownObjectWeakLoadStrong();
  if (!v103)
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v104 = v103;
  v105 = [v103 font];

  if (!v105)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v106 = v102 * 0.5;
  [v105 leading];
  v108 = v107;

  [v98 setConstant:v106 - v108 * 0.5];
  v109 = objc_allocWithZone(type metadata accessor for PlatterCopyButton());
  v110 = sub_1001A14D0();
  v111 = qword_1004AE690;
  v112 = *&v3[qword_1004AE690];
  *&v3[qword_1004AE690] = v110;

  v113 = *&v3[v111];
  if (v113)
  {
    v114 = objc_opt_self();
    v115 = v113;
    v116 = [v114 mainBundle];
    v145._object = 0xE000000000000000;
    v117._object = 0x8000000100404380;
    v117._countAndFlagsBits = 0xD000000000000010;
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    v145._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v117, 0, v116, v118, v145);

    v119 = String._bridgeToObjectiveC()();

    [v115 setTitle:v119 forState:0];

    v120 = *&v3[v111];
    if (v120)
    {
      v121 = objc_opt_self();
      v122 = v120;
      v123 = [v121 whiteColor];
      [v122 setTitleColor:v123 forState:0];
    }
  }

  v124 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
  v125 = *&v3[v111];
  if (v125)
  {
    v126 = [v125 titleLabel];
    if (v126)
    {
      v127 = v126;
      v128 = [v7 preferredFontForTextStyle:UIFontTextStyleHeadline];
      v129 = [v128 fontDescriptor];

      v130 = [v129 fontDescriptorWithSymbolicTraits:2];
      if (!v130)
      {
LABEL_116:
        __break(1u);
        return;
      }

      v131 = [v7 fontWithDescriptor:v130 size:0.0];

      v132 = [v124 scaledFontForFont:v131 maximumPointSize:28.0];
      [v127 setFont:v132];
    }

    v133 = *&v3[v111];
    if (v133)
    {
      [v133 addTarget:v3 action:"copyMeasurement:" forControlEvents:64];
    }
  }

  v134 = swift_unknownObjectWeakLoadStrong();
  if (!v134)
  {
    goto LABEL_110;
  }

  if (!*&v3[v111])
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v135 = v134;
  [v134 addSubview:?];

  v136 = *&v3[qword_1004AE680];
  if (!v136)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  if (v136 >> 62)
  {
    v137 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v137 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v137)
  {
    goto LABEL_69;
  }

  if (v137 < 1)
  {
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  for (i = 0; i != v137; ++i)
  {
    if ((v136 & 0xC000000000000001) != 0)
    {
      v139 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v139 = *(v136 + 8 * i + 32);
    }

    v140 = v139;
    if (qword_1004A0558 != -1)
    {
      swift_once();
    }

    [v140 setBackgroundColor:qword_1004D50C8];
  }

LABEL_69:
  v141 = swift_unknownObjectWeakLoadStrong();
  if (!v141)
  {
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v142 = v141;
  if (qword_1004A0558 != -1)
  {
    swift_once();
  }

  [v142 setBackgroundColor:qword_1004D50C8];

  [v3 setAlpha:0.0];
  sub_100092530();
  sub_1000DB8D4();
  sub_1001A512C();
}

void sub_1001A512C()
{
  v1 = v0;
  v2 = *&v0[qword_1004AE610];
  if (!v2)
  {
    return;
  }

  v3 = *&v1[qword_1004AE690];
  if (!v3)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = v3;
  v7 = v2;
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = v6;
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v9;
  v55 = v7;
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003DE030;
  v12 = [v8 centerXAnchor];
  v13 = [v5 centerXAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v11 + 32) = v14;
  v15 = [v8 centerYAnchor];
  v16 = [v5 centerYAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v11 + 40) = v17;
  v18 = [v8 leadingAnchor];
  v19 = [v5 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];

  *(v11 + 48) = v20;
  v21 = [v8 trailingAnchor];

  v22 = [v5 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v11 + 56) = v23;
  v24 = [v5 leadingAnchor];
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v26 = v25;
  v27 = [v25 leadingAnchor];

  v28 = [v24 constraintEqualToAnchor:v27 constant:28.0];
  *(v11 + 64) = v28;
  v29 = [v5 trailingAnchor];
  v30 = swift_unknownObjectWeakLoadStrong();
  if (!v30)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v29 constraintEqualToAnchor:v32 constant:-28.0];
  *(v11 + 72) = v33;
  v34 = [v5 topAnchor];
  v35 = swift_unknownObjectWeakLoadStrong();
  if (!v35)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v36 = v35;
  v37 = [v35 bottomAnchor];

  v38 = [v34 constraintEqualToAnchor:v37 constant:28.0];
  *(v11 + 80) = v38;
  v39 = [v5 bottomAnchor];
  v40 = [v1 bottomAnchor];
  v41 = [v39 constraintEqualToAnchor:v40 constant:-28.0];

  *(v11 + 88) = v41;
  v42 = [v1 topAnchor];
  v43 = [v55 topAnchor];
  v44 = [v42 constraintEqualToAnchor:v43];

  *(v11 + 96) = v44;
  v45 = [v1 bottomAnchor];
  v46 = [v55 bottomAnchor];
  v47 = [v45 constraintEqualToAnchor:v46];

  *(v11 + 104) = v47;
  v48 = [v1 leadingAnchor];
  v49 = [v55 leadingAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v11 + 112) = v50;
  v51 = [v1 trailingAnchor];
  v52 = [v55 trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52];

  *(v11 + 120) = v53;
  v54 = objc_opt_self();
  sub_100018630(0, &qword_1004A1838, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v54 activateConstraints:isa];
}

void sub_1001A57A4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_31;
  }

  v2 = Strong;
  if (qword_1004A0548 != -1)
  {
    swift_once();
  }

  [v2 setTextColor:qword_1004D50B8];

  v3 = swift_unknownObjectWeakLoadStrong();
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = v3;
  if (qword_1004A0550 != -1)
  {
    swift_once();
  }

  [v4 setTextColor:qword_1004D50C0];

  v5 = swift_unknownObjectWeakLoadStrong();
  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = v5;
  [v5 setTextColor:qword_1004D50C0];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = v7;
  [v7 setTextColor:qword_1004D50C0];

  v9 = swift_unknownObjectWeakLoadStrong();
  if (!v9)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v10 = v9;
  [v9 setTextColor:qword_1004D50C0];

  v11 = *(v0 + qword_1004AE680);
  if (!v11)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v11 >> 62)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v12)
  {
    goto LABEL_23;
  }

  if (v12 < 1)
  {
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  for (i = 0; i != v12; ++i)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v11 + 8 * i + 32);
    }

    v15 = v14;
    if (qword_1004A0558 != -1)
    {
      swift_once();
    }

    [v15 setBackgroundColor:qword_1004D50C8];
  }

LABEL_23:
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v17 = v16;
  if (qword_1004A0558 != -1)
  {
    swift_once();
    v16 = v17;
  }

  [v16 setBackgroundColor:qword_1004D50C8];
}

void sub_1001A5A88(void *a1)
{
  v3 = [a1 navigationItem];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:24 target:v1 action:"close"];
  [v3 setRightBarButtonItem:v4];

  v5 = [objc_allocWithZone(UILabel) init];
  v6 = [objc_opt_self() whiteColor];
  [v5 setTextColor:v6];

  v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleHeadline];
  v8 = objc_opt_self();
  v9 = [v8 preferredFontForTextStyle:UIFontTextStyleHeadline];
  v10 = [v9 fontDescriptor];

  v11 = [v10 fontDescriptorWithSymbolicTraits:2];
  if (v11)
  {
    v12 = [v8 fontWithDescriptor:v11 size:0.0];

    v13 = [v7 scaledFontForFont:v12 maximumPointSize:28.0];
    [v5 setFont:v13];

    v14 = [objc_opt_self() mainBundle];
    v20._object = 0xE000000000000000;
    v15._object = 0x800000010040C6A0;
    v15._countAndFlagsBits = 0xD000000000000022;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    v20._countAndFlagsBits = 0;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v20);

    v17 = String._bridgeToObjectiveC()();

    [v5 setText:v17];

    v18 = [a1 navigationItem];
    [v18 setTitleView:v5];
  }

  else
  {
    __break(1u);
  }
}

void *sub_1001A5D6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[qword_1004AE610] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v5[qword_1004AE680] = 0;
  swift_unknownObjectWeakInit();
  *&v5[qword_1004AE690] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v11 = &v5[qword_1004AE700];
  *v11 = 0;
  *(v11 + 1) = 0xE000000000000000;
  v12 = &v5[qword_1004AE708];
  *v12 = 0;
  *(v12 + 1) = 0xE000000000000000;
  v13 = &v5[qword_1004AE710];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  v14 = &v5[qword_1004AE718];
  *v14 = 0;
  *(v14 + 1) = 0xE000000000000000;
  *&v5[qword_1004AE720] = 0x4038000000000000;
  *&v5[qword_1004AE728] = 1136361472;
  *&v5[qword_1004AE730] = 0x403C000000000000;
  *&v5[qword_1004A5B30 + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = &v5[qword_1004A5B40];
  *v15 = a4;
  *(v15 + 1) = a5;
  v16 = &v5[qword_1004A5B38];
  *v16 = a2;
  *(v16 + 1) = a3;
  sub_100038EBC(a4, a5);
  v21.receiver = v5;
  v21.super_class = type metadata accessor for GenericPlatter(0);
  v17 = objc_msgSendSuper2(&v21, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v18 = *((swift_isaMask & *v17) + 0x138);
  v19 = v17;
  v18();
  sub_1000223C4(a4, a5);

  return v19;
}

id sub_1001A6150(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[qword_1004AE610] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v1[qword_1004AE680] = 0;
  swift_unknownObjectWeakInit();
  *&v1[qword_1004AE690] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = &v1[qword_1004AE700];
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  v5 = &v1[qword_1004AE708];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = &v1[qword_1004AE710];
  *v6 = 0;
  *(v6 + 1) = 0xE000000000000000;
  v7 = &v1[qword_1004AE718];
  *v7 = 0;
  *(v7 + 1) = 0xE000000000000000;
  *&v1[qword_1004AE720] = 0x4038000000000000;
  *&v1[qword_1004AE728] = 1136361472;
  *&v1[qword_1004AE730] = 0x403C000000000000;
  v10.receiver = v1;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

double sub_1001A64A0()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return result;
}

double sub_1001A66F0(uint64_t a1)
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  return result;
}

uint64_t type metadata accessor for RectangleLabelDetailsPlatter(uint64_t a1)
{
  result = qword_1004AE760;
  if (!qword_1004AE760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001A6A5C()
{
  v1 = v0 + qword_1004A5B30;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 32))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v24 = [objc_opt_self() generalPasteboard];
  v4 = [objc_opt_self() mainBundle];
  v25._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0x4C414E4F47414944;
  v5._object = 0xE800000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v25);

  sub_10000F974(&unk_1004AF710, &qword_1003D7CA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1003D8D20;
  v10 = *(v0 + qword_1004AE700);
  v9 = *(v0 + qword_1004AE700 + 8);
  *(v8 + 56) = &type metadata for String;
  v11 = sub_1000192D0();
  *(v8 + 32) = v10;
  *(v8 + 40) = v9;
  v12 = *(v0 + qword_1004AE708);
  v13 = *(v0 + qword_1004AE708 + 8);
  *(v8 + 96) = &type metadata for String;
  *(v8 + 104) = v11;
  *(v8 + 64) = v11;
  *(v8 + 72) = v12;
  *(v8 + 80) = v13;
  v14 = *(v0 + qword_1004AE710);
  v15 = *(v0 + qword_1004AE710 + 8);
  *(v8 + 136) = &type metadata for String;
  *(v8 + 144) = v11;
  *(v8 + 112) = v14;
  *(v8 + 120) = v15;
  v16 = *(v0 + qword_1004AE718);
  v17 = *(v0 + qword_1004AE718 + 8);
  *(v8 + 176) = &type metadata for String;
  *(v8 + 184) = v11;
  *(v8 + 152) = v16;
  *(v8 + 160) = v17;
  *(v8 + 216) = &type metadata for String;
  *(v8 + 224) = v11;
  *(v8 + 192) = v7;

  String.init(format:_:)();
  v18 = String._bridgeToObjectiveC()();

  [v24 setString:v18];

  if (swift_unknownObjectWeakLoadStrong())
  {
    v19 = *(v1 + 8);
    v20 = swift_getObjectType();
    (*(v19 + 24))(v20, v19);
    swift_unknownObjectRelease();
  }

  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v21 = qword_1004D4F08;

  v22 = v21 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  result = *(v22 + 56) + 1.0;
  *(v22 + 56) = result;
  return result;
}

uint64_t sub_1001A6DA8(__n128 a1)
{
  result = Contexts.UIKit.init()();
  qword_1004D5410 = result;
  return result;
}

id sub_1001A6DC8@<X0>(void *a1@<X8>)
{
  if (qword_1004A0818 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D5410;
  *a1 = qword_1004D5410;

  return v2;
}

unint64_t sub_1001A6E38(uint64_t a1)
{
  result = sub_1001A6E60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001A6E60()
{
  result = qword_1004AEA48;
  if (!qword_1004AEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AEA48);
  }

  return result;
}

void sub_1001A6EB4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_1001A7118(v7);
}

uint64_t sub_1001A6F2C(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = qword_1004AEA50;
  sub_10000F974(&unk_1004AEBF0, &qword_1003E1B70);
  swift_getKeyPath();
  *&v3[v4] = MutableStateValue.__allocating_init(_:_:)();
  sub_1000336B4(a1, v7);
  v5 = StateObservingNSObject.init(configuration:)();
  sub_10000FF00(a1);
  return v5;
}

id sub_1001A6FD4(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = qword_1004AEA50;
  sub_10000F974(&unk_1004AEBF0, &qword_1003E1B70);
  swift_getKeyPath();
  *&a1[v3] = MutableStateValue.__allocating_init(_:_:)();
  v5.receiver = a1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t type metadata accessor for TabBarControllerDelegate(uint64_t a1)
{
  result = qword_1004AEAE0;
  if (!qword_1004AEAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001A7118(uint64_t a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = 0xD000000000000018;
    v3 = *(**(v1 + qword_1004AEA50) + 400);

    v4 = v3(v13);
    *(v5 + 1) = 1;
    v4(v13, 0);

    v6 = qword_1004A0280;
    v7 = "App will switch to Level";
  }

  else
  {
    type metadata accessor for ViewController(0);
    if (!swift_dynamicCastClass())
    {
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
        return;
      }
    }

    v8 = *(**(v1 + qword_1004AEA50) + 400);

    v9 = v8(v13);
    *(v10 + 1) = 0;
    v9(v13, 0);

    v6 = qword_1004A0280;
    v2 = 0xD00000000000001ALL;
    v7 = "App will switch to Measure";
  }

  v11 = v7 - 32;
  if (v6 != -1)
  {
    swift_once();
  }

  v12._object = (v11 | 0x8000000000000000);
  v12._countAndFlagsBits = v2;
  Log.debug(_:isPrivate:)(v12, 0);
}

void sub_1001A72FC(unint64_t a1, uint64_t a2)
{
  v12 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1001CA5D4(v5);
      v8 = swift_modifyAtWritableKeyPath();
      sub_1000550C8(v6, *v9);
      if ((v10 & 1) == 0)
      {
      }

      v8(v11, 0);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1001A7448(void *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1000A527C(a1, v3);
  v6 = __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1001AD148(v8, v2, v3, v4);
  sub_10000FF00(a1);
  return v10;
}

uint64_t sub_1001A7578()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v4 = *(v10 - 8);
  __chkstk_darwin(v10);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  StateValue.ifUpdated(_:)();

  StateValue.ifUpdated(_:)();

  v12 = sub_1001AD574;
  v13 = v0;

  StateValue.ifUpdated(_:)();

  sub_10004D9B4();
  v7 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1001AD5A4;
  v15 = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100471CA0;
  v8 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001AD700(&qword_1004A30C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v8);

  (*(v11 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v10);
}

double sub_1001A78FC(uint64_t a1, uint64_t a2)
{
  sub_1001A7C30();
  sub_1001A7ED4();
  v3 = *(**(a2 + 120) + 144);

  v3(v22, v4);

  v5 = v22[0];
  if (!(v22[0] >> 62))
  {
    sub_1001A81A0();
LABEL_21:
    sub_10001B360(v5);
    return result;
  }

  if (v22[0] >> 62 != 2 || (v22[0] | 8) != 0x8000000000000008)
  {
    goto LABEL_21;
  }

  v7 = *(**(a2 + 112) + 144);

  v7(v22, v8);

  v9 = sub_1001C9E48(v22[0], v22[1], v22[2]);

  v22[0] = _swiftEmptyArrayStorage;
  if (v9 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if ((*((swift_isaMask & *v12) + 0xD0))() == 9)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v11;
        if (v14 == i)
        {
          v16 = v22[0];
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v16 = _swiftEmptyArrayStorage;
LABEL_24:

    if ((v16 & 0x8000000000000000) == 0 && (v16 & 0x4000000000000000) == 0)
    {
      v9 = *(v16 + 16);
      if (!v9)
      {
        break;
      }

      goto LABEL_27;
    }

    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      break;
    }

LABEL_27:
    v17 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v17 >= *(v16 + 16))
        {
          goto LABEL_38;
        }

        v18 = *(v16 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v21 = (*((swift_isaMask & *v18) + 0x160))();
      v21();

      ++v17;
      if (v20 == v9)
      {
        goto LABEL_41;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

LABEL_41:

  return result;
}

void sub_1001A7C30()
{
  v1 = *(**(v0 + 104) + 144);

  v1(__dst, v2);

  v24[0] = __dst[0];
  v24[1] = __dst[1];
  v24[2] = __dst[2];
  v25 = __dst[3].n128_u64[0];
  v3 = *(v0 + 168);
  v22[0] = *(v0 + 152);
  v22[1] = v3;
  v22[2] = *(v0 + 184);
  v23 = *(v0 + 200);
  sub_1001AD5C4(v22, __dst);
  v4 = sub_10008EAE0(v22);
  sub_1001AD634(v22);
  sub_1001AD69C(v24);
  v5 = *(v4 + 2);
  if (v5)
  {

    v6 = 0;
    while (v6 < *(v4 + 2))
    {
      v7 = v6 + 1;
      sub_1001A9F84(*(v4 + v6 + 32));
      v6 = v7;
      if (v5 == v7)
      {

        v8 = *(**(v0 + 104) + 144);

        v8(__dst, v9);

        v10 = __dst[0];
        v12 = __dst[1].n128_u64[1];
        v11 = __dst[1].n128_u64[0];
        v13 = __dst[2].n128_u32[0];
        v14 = *(&__dst[2] + 8);
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    if (qword_1004A0180 == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  if (qword_1004D4B08)
  {

    StateValue.wrappedValue.getter();

    memcpy(__dst, v20, sizeof(__dst));
    sub_1000F673C(_swiftEmptyArrayStorage, __dst);
    sub_100013C4C(__dst);

    sub_1001A923C();
    sub_1001A9A34();
    sub_1001A9E40();
    v15 = *(**(v0 + 104) + 144);

    v15(v20, v16);

    v10 = v20[0];
    v12 = *(&v20[1] + 1);
    v11 = *&v20[1];
    v13 = v20[2];
    v14 = *(&v20[2] + 8);
LABEL_9:
    v17 = *(v0 + 152);
    v18 = *(v0 + 160);
    v19 = *(v0 + 168);
    *(v0 + 152) = v10;
    *(v0 + 168) = v11;
    *(v0 + 176) = v12;
    *(v0 + 184) = v13;
    *(v0 + 192) = v14;
    sub_1001A91F0(v17, v18, v19);
  }

  else
  {
    __break(1u);
  }
}

double sub_1001A7ED4()
{
  v1 = v0;
  v2 = *(**(v0 + 112) + 144);

  v2(&v23, v3);

  v4 = sub_1001C98F0(v23, v24, v25);

  if (v4)
  {
    v5 = *(**(v0 + 96) + 144);

    v5(&v23, v6);

    v8 = v23;
    v7 = v24;

    if (!v7)
    {
      v16 = *(v1 + 120);
      v17 = 0x8000000000000000;
LABEL_14:
      v23 = v17;
      v22 = *(*v16 + 392);

      v22(&v23);

      return result;
    }
  }

  v9 = *(**(v1 + 120) + 144);

  v9(&v23, v10);

  if ((v23 >> 62) <= 1)
  {
    sub_10001B360(v23);
    return result;
  }

  if (v23 == 0x8000000000000000)
  {
    v12 = *(**(v1 + 96) + 144);

    v12(&v23, v13);

    v15 = v23;
    v14 = v24;

    if (v14)
    {

LABEL_13:
      v16 = *(v1 + 120);
      v17 = 0x8000000000000008;
      goto LABEL_14;
    }

    v18 = *(**(v1 + 112) + 144);

    v18(&v23, v19);

    v20 = sub_1001C9E48(v23, v24, v25);

    if (v20 >> 62)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21)
    {
      goto LABEL_13;
    }
  }

  return result;
}

double sub_1001A81A0()
{
  v1 = *(**(v0 + 112) + 144);

  v1(v20, v2);

  v3 = sub_1001C9E48(v20[0], v20[1], v20[2]);

  v20[0] = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = (*((swift_isaMask & *v6) + 0xD0))();
      if (v9 == 5 || v9 == 0 || v9 == 2)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        v12 = v20[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_24:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    goto LABEL_37;
  }

  for (j = *(v12 + 16); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v12 + 16))
        {
          goto LABEL_36;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = (*((swift_isaMask & *v15) + 0x148))();
      v18();

      ++v14;
      if (v17 == j)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

LABEL_38:

  return result;
}

double sub_1001A846C(uint64_t a1, uint64_t a2)
{
  v2 = *(**(a2 + 112) + 144);

  v2(v19, v3);

  v4 = sub_1001C9E48(v19[0], v19[1], v19[2]);

  if (v4 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = (*((swift_isaMask & *v7) + 0x178))();
      v10();

      v11 = *(**(a2 + 112) + 400);

      v12 = v11(v19);
      sub_1001CA5D4(v8);
      v13 = swift_modifyAtWritableKeyPath();
      sub_1000550C8(v8, *v14);
      if ((v15 & 1) == 0)
      {
      }

      v13(v18, 0);

      v12(v19, 0);

      ++v6;
      if (v9 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  return result;
}

void sub_1001A86F8(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v46 = v5;
  v47 = v1;
  if (!v4)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_8:
    v50 = v6;
    v8 = (*(a1 + 48) + ((v6 << 10) | (16 * __clz(__rbit64(v4)))));
    v52 = *v8;
    v9 = *(**(v49 + 112) + 144);
    v53 = v8[1];

    v9(v55, v10);

    v11 = sub_1001C9E48(v55[0], v55[1], v55[2]);

    if (v11 >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = (v4 - 1) & v4;
    if (v12)
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_55;
        }

        if ((*((swift_isaMask & *v14) + 0xB8))() == v52 && v17 == v53)
        {
          break;
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_26;
        }

        ++v13;
        if (v16 == v12)
        {
          goto LABEL_24;
        }
      }

LABEL_26:

      type metadata accessor for WorldRectangle();
      if (!swift_dynamicCastClass())
      {

        goto LABEL_50;
      }

      v20 = (*((swift_isaMask & *v15) + 0x178))();
      v20();

      v21 = *(**(v49 + 112) + 400);

      v22 = v21(v55);
      sub_1001CA5D4(v15);
      v23 = swift_modifyAtWritableKeyPath();
      sub_1000550C8(v15, *v24);
      if ((v25 & 1) == 0)
      {
      }

      v23(v54, 0);

      v22(v55, 0);

      v26 = *(**(v49 + 88) + 144);

      v26(v55, v27);

      v28 = v55[0];
      if (v55[0] >> 62)
      {
        v29 = _CocoaArrayWrapper.endIndex.getter();
        if (v29)
        {
LABEL_31:
          v30 = 0;
          do
          {
            if ((v28 & 0xC000000000000001) != 0)
            {
              v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_58;
              }

              v31 = *(v28 + 8 * v30 + 32);
            }

            v32 = v31;
            v33 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_57;
            }

            v34 = *((swift_isaMask & *v31) + 0xB8);
            if (v34() == v52 && v35 == v53)
            {

LABEL_46:

              v38 = *(**(v49 + 88) + 400);

              v39 = v38(v55);
              v40 = v34();
              sub_100028A7C(v40, v41);

              v39(v55, 0);

              v43 = (*((swift_isaMask & *v32) + 0x178))(v42);
              v43();

              v44 = *(v49 + 120);
              v55[0] = 0x8000000000000008;
              v45 = *(*v44 + 392);

              v45(v55);

              goto LABEL_51;
            }

            v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v37)
            {
              goto LABEL_46;
            }

            ++v30;
          }

          while (v33 != v29);
        }
      }

      else
      {
        v29 = *((v55[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_50;
    }

LABEL_24:

LABEL_50:

LABEL_51:
    v5 = v46;
    v1 = v47;
    v6 = v50;
    v4 = v51;
  }

  while (v51);
LABEL_4:
  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

void sub_1001A8DB8(uint64_t a1)
{
  if (qword_1004A0180 != -1)
  {
    v19 = a1;
    swift_once();
    a1 = v19;
  }

  if (!qword_1004D4AC8)
  {
    __break(1u);
    return;
  }

  v1 = *(qword_1004D4AC8 + 24);
  if (v1)
  {
    v2 = *(v1 + qword_1004AA5B0);
    v20[1] = 2895028208;
    v20[2] = 0xA400000000000000;
    v3 = *(**(a1 + 120) + 144);
    v4 = v2;

    v3(v20, v5);

    v6 = v20[0];
    if (v20[0] >> 62)
    {
      if (v20[0] >> 62 != 1)
      {
        v10 = __ROR8__(v20[0] ^ 0x8000000000000000, 3);
        v11 = 0xE400000000000000;
        v12 = 1701602377;
        v13 = 0xEB00000000656E69;
        v14 = 0x4C20676E69646441;
        v15 = 0xEC000000746E696FLL;
        v16 = 0x5020676E69766F4DLL;
        if (v10 != 3)
        {
          v16 = 0xD000000000000028;
          v15 = 0x8000000100403EA0;
        }

        if (v10 != 2)
        {
          v14 = v16;
          v13 = v15;
        }

        if (v10)
        {
          v12 = 0x6E69686372616553;
          v11 = 0xE900000000000067;
        }

        if (v10 <= 1)
        {
          v7 = v12;
        }

        else
        {
          v7 = v14;
        }

        if (v10 <= 1)
        {
          v9 = v11;
        }

        else
        {
          v9 = v13;
        }

        goto LABEL_22;
      }

      v7 = 0xD000000000000010;
      v8 = "Measuring Person";
    }

    else
    {
      v7 = 0xD000000000000010;
      v8 = "Adding Rectangle";
    }

    v9 = (v8 - 32) | 0x8000000000000000;
LABEL_22:
    v17 = v9;
    String.append(_:)(*&v7);

    sub_10001B360(v6);
    v18 = String._bridgeToObjectiveC()();

    [v4 setText:v18];
  }
}

double sub_1001A8FE0()
{

  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[21];

  return sub_1001A91F0(v1, v2, v3);
}

uint64_t *sub_1001A906C(uint64_t a1)
{
  v1 = StateObserver.deinit();

  sub_1001A91F0(v1[19], v1[20], v1[21]);
  return v1;
}

uint64_t sub_1001A9100(uint64_t a1)
{
  sub_1001A906C(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MeasurementsStateReducer(uint64_t a1)
{
  result = qword_1004AEC28;
  if (!qword_1004AEC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001A91F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

BOOL sub_1001A923C()
{
  v1 = *(**(v0 + 120) + 144);

  v1(v57, v2);

  if (v57[0] >> 62)
  {
    if (v57[0] >> 62 == 1)
    {
      sub_10001B360(v57[0]);
      return 0;
    }

    if (__ROR8__(v57[0] ^ 0x8000000000000000, 3) >= 2uLL)
    {
      return 0;
    }
  }

  else
  {
    sub_10001B360(v57[0]);
  }

  v3 = *(**(v55 + 112) + 144);

  v3(v57, v4);

  v5 = sub_1001C9E48(v57[0], v57[1], v57[2]);

  v57[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ((*((swift_isaMask & *v8) + 0xD0))() == 6)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v7;
        if (v10 == i)
        {
          v12 = v57[0];
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v12 = _swiftEmptyArrayStorage;
LABEL_22:

    v57[0] = _swiftEmptyArrayStorage;
    v13 = (v12 >> 62) & 1;
    if (v12 < 0)
    {
      LODWORD(v13) = 1;
    }

    v50 = v13;
    if (v13 == 1)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *(v12 + 16);
    }

    if (v5)
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *(v12 + 16))
          {
            goto LABEL_54;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v18 = (*((swift_isaMask & *v15) + 0x100))();
        v19 = v18();

        if (v19)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v14;
        if (v17 == v5)
        {
          v20 = v57[0];
          if ((v57[0] & 0x8000000000000000) == 0)
          {
            goto LABEL_40;
          }

          goto LABEL_59;
        }
      }

LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v20 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
    {
LABEL_40:
      if ((v20 & 0x4000000000000000) == 0)
      {
        v5 = *(v20 + 16);
        if (!v5)
        {
          break;
        }

        goto LABEL_42;
      }
    }

LABEL_59:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      break;
    }

LABEL_42:
    v21 = 0;
    v53 = v12;
    v54 = v20 & 0xC000000000000001;
    v51 = v5;
    v52 = v20;
    while (1)
    {
      if (v54)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(v20 + 16))
        {
          goto LABEL_56;
        }

        v22 = *(v20 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      v25 = *(**(v55 + 88) + 400);

      v26 = v25(v57);
      v27 = (*((swift_isaMask & *v23) + 0xB8))();
      sub_100028A7C(v27, v28);

      v26(v57, 0);

      v30 = *((swift_isaMask & *v23) + 0x178);
      v31 = v30(v29);
      v31();

      v32 = *(v55 + 120);
      v57[0] = 0x8000000000000008;
      v33 = *(*v32 + 392);

      v33(v57);

      v35 = v30(v34);
      v35();

      v36 = *(**(v55 + 112) + 400);

      v37 = v36(v57);
      sub_1001CA5D4(v23);
      v38 = swift_modifyAtWritableKeyPath();
      sub_1000550C8(v23, *v39);
      if ((v40 & 1) == 0)
      {
      }

      v38(v56, 0);

      v37(v57, 0);

      ++v21;
      v5 = v51;
      v20 = v52;
      v12 = v53;
      if (v24 == v51)
      {
        goto LABEL_60;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

LABEL_60:

  v57[0] = _swiftEmptyArrayStorage;
  if (v50)
  {
    v41 = _CocoaArrayWrapper.endIndex.getter();
    if (v41)
    {
LABEL_62:
      v42 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v43 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v42 >= *(v12 + 16))
          {
            goto LABEL_80;
          }

          v43 = *(v12 + 8 * v42 + 32);
        }

        v44 = v43;
        v45 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        v46 = (*((swift_isaMask & *v43) + 0x100))();
        v47 = v46();

        if (v47)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v42;
        if (v45 == v41)
        {
          v48 = v57[0];
          goto LABEL_75;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      v49 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_78;
    }
  }

  else
  {
    v41 = *(v12 + 16);
    if (v41)
    {
      goto LABEL_62;
    }
  }

  v48 = _swiftEmptyArrayStorage;
LABEL_75:

  if ((v48 & 0x8000000000000000) != 0 || (v48 & 0x4000000000000000) != 0)
  {
    goto LABEL_81;
  }

  v49 = *(v48 + 16);
LABEL_78:

  return v49 != 0;
}

double sub_1001A9A34()
{
  v1 = *(**(v0 + 112) + 144);

  v1(v27, v2);

  v3 = sub_1001C9E48(v27[0], v27[1], v27[2]);

  v27[0] = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *((swift_isaMask & *v6) + 0xD0);
      if (v9() == 5 || v9() == 9 || (v10 = (*((swift_isaMask & *v7) + 0x100))(), v11 = v10(), , (v11 & 1) != 0))
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v5;
      if (v8 == i)
      {
        v12 = v27[0];
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    goto LABEL_34;
  }

  for (j = *(v12 + 16); j; j = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v12 + 16))
        {
          goto LABEL_33;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v18 = (*((swift_isaMask & *v15) + 0x178))();
      v18();

      v19 = *(**(v25 + 112) + 400);

      v20 = v19(v27);
      sub_1001CA5D4(v16);
      v21 = swift_modifyAtWritableKeyPath();
      sub_1000550C8(v16, *v22);
      if ((v23 & 1) == 0)
      {
      }

      v21(v26, 0);

      v20(v27, 0);

      ++v14;
      if (v17 == j)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  return result;
}

void sub_1001A9E40()
{
  v1 = *(**(v0 + 120) + 144);

  v1(&v9, v2);

  v3 = v9;
  if (!(v9 >> 62))
  {
    sub_1001AC5AC();
    if (v6)
    {
      v5 = v6;
      type metadata accessor for MeasureObject();
      if (static NSObject.== infix(_:_:)())
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v9 >> 62 == 1)
  {
    sub_1001AC5AC();
    if (v4)
    {
      v5 = v4;
      type metadata accessor for MeasureObject();
      if (static NSObject.== infix(_:_:)())
      {
LABEL_6:
        sub_10001B360(v3);

        return;
      }

LABEL_5:
      sub_1001AC7C0(v5);
      goto LABEL_6;
    }

LABEL_13:
    sub_10001B360(v3);
    return;
  }

  if (__ROR8__(v9 ^ 0x8000000000000000, 3) < 2uLL)
  {
    sub_1001AC5AC();
    if (v7)
    {
      v8 = v7;

      sub_1001AC7C0(v8);
    }
  }
}

void sub_1001A9F84(uint64_t a1)
{
  v3 = v1;
  v4 = a1;
  v5 = *(*v1[15] + 144);

  v5(__dst, v6);

  v7 = __dst[0].n128_u64[0];
  sub_10000F974(&qword_1004AED90, &unk_1003E1E70);
  v120 = v1;
  if (v4 > 5u)
  {
    if (v4 <= 7u)
    {
      if (v4 != 6)
      {
        if (v4 == 7)
        {
          goto LABEL_5;
        }

LABEL_30:
        *(swift_allocObject() + 16) = v4;

        StateValue.mutateImmediatelyNotifyAsync(_:)();
        sub_10001B360(v7);

        return;
      }

      v33 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v33 == 3)
        {
LABEL_63:
          v72 = v1;
          v73 = v4;
LABEL_64:
          sub_1001AB510(v72, v73);
          goto LABEL_65;
        }

LABEL_5:
        if (v7 == 0x8000000000000000)
        {
          return;
        }

        goto LABEL_63;
      }

      if (!v33)
      {
        v34 = *((swift_isaMask & *v7) + 0x178);
        sub_100071684(v7);
        v35 = v7;
        v36 = v7;
        v37 = v34();
        v37();

        v38 = *(*v1[14] + 400);

        v39 = v38(__dst);
        sub_1001CA5D4(v36);
        v40 = swift_modifyAtWritableKeyPath();
        sub_1000550C8(v36, *v41);
        if ((v42 & 1) == 0)
        {
        }

        v40(__src, 0);

        v39(__dst, 0);

        sub_1001AB510(v1, 6);
        sub_10001B360(v35);
        v43 = v35;
LABEL_61:
        sub_10001B360(v43);

        return;
      }

      goto LABEL_65;
    }

    if (v4 != 8)
    {
      if (v4 != 9)
      {
        goto LABEL_30;
      }

      v17 = *(*v1[11] + 400);

      v18 = v17(__dst);
      sub_100028C00();
      v18(__dst, 0);

      v19 = *(*v1[14] + 144);

      v19(__dst, v20);

      v21 = sub_1001C9E48(__dst[0].n128_i64[0], __dst[0].n128_i64[1], __dst[1].n128_i64[0]);

      v118 = v7;
      if (v21 >> 62)
      {
        v22 = _CocoaArrayWrapper.endIndex.getter();
        if (v22)
        {
LABEL_18:
          v7 = 0;
          while (1)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v7 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_96;
              }

              v23 = *(v21 + 8 * v7 + 32);
            }

            v24 = v23;
            v25 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              break;
            }

            v26 = v22;
            v27 = (*((swift_isaMask & *v23) + 0x178))();
            v27();

            v28 = *(**(v3 + 112) + 400);

            v29 = v28(__dst);
            sub_1001CA5D4(v24);
            v30 = swift_modifyAtWritableKeyPath();
            sub_1000550C8(v24, *v31);
            if ((v32 & 1) == 0)
            {
            }

            v30(__src, 0);

            v29(__dst, 0);

            ++v7;
            v22 = v26;
            v3 = v1;
            if (v25 == v26)
            {
              goto LABEL_103;
            }
          }

          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22)
        {
          goto LABEL_18;
        }
      }

LABEL_103:

      v91 = *(**(v3 + 112) + 400);

      v92 = v91(__dst);
      v94 = v93;
      v95 = sub_1001C9E48(*v93, v93[1], v93[2]);
      sub_1001A72FC(v95, v94);

      v92(__dst, 0);

      if (qword_1004A0180 != -1)
      {
        swift_once();
      }

      if (qword_1004D4AD8)
      {

        sub_100104278();

        v96 = *(v3 + 120);
        __dst[0].n128_u64[0] = 0x8000000000000000;
        v97 = *(*v96 + 392);

        v97(__dst);
        sub_10001B360(v118);

        return;
      }

LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
      return;
    }

    if (v7 == 0x8000000000000000)
    {
      return;
    }

    v44 = *(*v1[14] + 144);
    sub_100071684(v7);

    v44(__dst, v45);

    v2 = sub_1001C95B8(1, __dst[0].n128_i64[0], __dst[0].n128_i64[1], __dst[1].n128_i64[0]);

    if (!v2)
    {
      sub_10001B360(v7);
      goto LABEL_65;
    }

    type metadata accessor for WorldLine();
    v117 = v7;
    if (swift_dynamicCastClass())
    {
      if (qword_1004A0180 != -1)
      {
        swift_once();
      }

      if (!qword_1004D4B08)
      {
        goto LABEL_147;
      }

      sub_10000F974(&qword_1004A3E70, &qword_1003D7FD8);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1003D5360;
      *(v46 + 32) = 8;

      StateValue.wrappedValue.getter();

      memcpy(__dst, __src, 0x200uLL);
      sub_1000F673C(v46, __dst);

      sub_100013C4C(__dst);
      swift_setDeallocating();
      v47 = swift_deallocClassInstance();
      v48 = (*((swift_isaMask & *v2) + 0x178))(v47);
      v48();

      v49 = *(*v1[14] + 400);

      v50 = v49(__src);
      sub_1001CA5D4(v2);
      v51 = swift_modifyAtWritableKeyPath();
      sub_1000550C8(v2, *v52);
      if ((v53 & 1) == 0)
      {
      }

      v51(v122, 0);

      v50(__src, 0);

      v54 = *(*v1[14] + 144);

      v54(__src, v55);

      v56 = sub_1001C9E48(__src[0], __src[1], __src[2]);

      __src[0] = _swiftEmptyArrayStorage;
      if (v56 >> 62)
      {
        v7 = _CocoaArrayWrapper.endIndex.getter();
        if (v7)
        {
LABEL_46:
          v57 = 0;
          while (1)
          {
            if ((v56 & 0xC000000000000001) != 0)
            {
              v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v57 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_98;
              }

              v58 = *(v56 + 8 * v57 + 32);
            }

            v59 = v58;
            v60 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_97;
            }

            if ((*((swift_isaMask & *v58) + 0xD0))() == 9)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            ++v57;
            if (v60 == v7)
            {
              v82 = __src[0];
              goto LABEL_109;
            }
          }
        }
      }

      else
      {
        v7 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v7)
        {
          goto LABEL_46;
        }
      }

      v82 = _swiftEmptyArrayStorage;
LABEL_109:

      if ((v82 & 0x8000000000000000) != 0 || (v82 & 0x4000000000000000) != 0)
      {
        goto LABEL_122;
      }

      for (i = *(v82 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v99 = 0;
        while (1)
        {
          if ((v82 & 0xC000000000000001) != 0)
          {
            v100 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v99 >= *(v82 + 16))
            {
              goto LABEL_121;
            }

            v100 = *(v82 + 8 * v99 + 32);
          }

          v101 = v100;
          v102 = v99 + 1;
          if (__OFADD__(v99, 1))
          {
            break;
          }

          v103 = (*((swift_isaMask & *v100) + 0x160))();
          v103();

          ++v99;
          if (v102 == i)
          {
            goto LABEL_123;
          }
        }

        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        ;
      }

LABEL_123:

      v3 = v1;
    }

    else
    {
      type metadata accessor for WorldRectangle();
      v83 = swift_dynamicCastClass();
      if (v83)
      {
        v84 = (*((swift_isaMask & *v2) + 0x178))();
        v84();

        v85 = *(*v1[14] + 400);

        v86 = v85(__dst);
        sub_1001CA5D4(v2);
        v87 = swift_modifyAtWritableKeyPath();
        sub_1000550C8(v2, *v88);
        if ((v89 & 1) == 0)
        {
        }

        v87(__src, 0);

        v86(__dst, 0);
      }
    }

    goto LABEL_124;
  }

  if (v4 == 3)
  {
    if (qword_1004A0180 == -1)
    {
LABEL_28:
      if (qword_1004D4B08)
      {

        StateValue.wrappedValue.getter();

        memcpy(__dst, __src, 0x200uLL);
        sub_1000F673C(_swiftEmptyArrayStorage, __dst);
        sub_100013C4C(__dst);

        sub_1001A923C();
        sub_1001A9A34();
        sub_1001A9E40();
        goto LABEL_65;
      }

      __break(1u);
      goto LABEL_146;
    }

LABEL_101:
    swift_once();
    goto LABEL_28;
  }

  if (v4 != 4)
  {
    if (v4 == 5)
    {
      if (!(v7 >> 62))
      {
        v8 = *((swift_isaMask & *v7) + 0x118);
        v9 = v7;
        v10 = v8();
        v11 = *(*v1[13] + 144);

        v11(__dst, v12);

        v13 = __dst[2].n128_f64[1];
        v14 = __dst[3].n128_f64[0];

        LOBYTE(v10) = (v10)(v15, v13, v14);

        if (v10)
        {
          sub_1001ABECC(v9);
        }

        sub_10001B360(v7);
        v16 = v7;
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    goto LABEL_30;
  }

  v61 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v61)
    {
      v62 = *((swift_isaMask & *v7) + 0x100);
      sub_100071684(v7);
      v36 = v7;
      v63 = v62();
      LOBYTE(v62) = v63();

      if ((v62 & 1) == 0)
      {
        v64 = *(*v1[11] + 400);

        v65 = v64(__dst);
        v66 = (*((swift_isaMask & *v36) + 0xB8))();
        sub_100028A7C(v66, v67);

        v65(__dst, 0);

        v69 = (*((swift_isaMask & *v36) + 0x178))(v68);
        v69();

        v70 = v1[15];
        __dst[0].n128_u64[0] = 0x8000000000000008;
        v71 = *(*v70 + 392);

        v71(__dst);

        sub_1001AB510(v120, 4);
      }

      sub_1001ABECC(v36);
      sub_10001B360(v7);
      v43 = v7;
      goto LABEL_61;
    }

LABEL_65:
    v16 = v7;
LABEL_66:
    sub_10001B360(v16);
    return;
  }

  if (v61 != 2)
  {
    goto LABEL_92;
  }

  v74 = __ROR8__(v7 ^ 0x8000000000000000, 3);
  if ((v74 - 2) < 2)
  {
    sub_100071684(v7);
    sub_1001AB654(0);
    v72 = v1;
    v73 = 4;
    goto LABEL_64;
  }

  if (v74)
  {
    if (v74 == 1)
    {
      v75 = *(*v1[14] + 144);

      v75(__dst, v76);

      v77 = sub_1001C9E48(__dst[0].n128_i64[0], __dst[0].n128_i64[1], __dst[1].n128_i64[0]);

      __dst[0].n128_u64[0] = _swiftEmptyArrayStorage;
      if (v77 >> 62)
      {
        v78 = _CocoaArrayWrapper.endIndex.getter();
        v119 = v7;
        if (v78)
        {
LABEL_74:
          v7 = 0;
          while (1)
          {
            if ((v77 & 0xC000000000000001) != 0)
            {
              v79 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v7 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_100;
              }

              v79 = *(v77 + 8 * v7 + 32);
            }

            v80 = v79;
            v81 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_99;
            }

            if ((*((swift_isaMask & *v79) + 0xD0))() == 5)
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            ++v7;
            if (v81 == v78)
            {
              v90 = __dst[0].n128_u64[0];
              v3 = v1;
              goto LABEL_130;
            }
          }
        }
      }

      else
      {
        v78 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v119 = v7;
        if (v78)
        {
          goto LABEL_74;
        }
      }

      v90 = _swiftEmptyArrayStorage;
LABEL_130:

      if ((v90 & 0x8000000000000000) != 0 || (v90 & 0x4000000000000000) != 0)
      {
        goto LABEL_143;
      }

      for (j = *(v90 + 16); j; j = _CocoaArrayWrapper.endIndex.getter())
      {
        v112 = 0;
        while (1)
        {
          if ((v90 & 0xC000000000000001) != 0)
          {
            v113 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v112 >= *(v90 + 16))
            {
              goto LABEL_142;
            }

            v113 = *(v90 + 8 * v112 + 32);
          }

          v114 = v113;
          v115 = v112 + 1;
          if (__OFADD__(v112, 1))
          {
            break;
          }

          v116 = (*((swift_isaMask & *v113) + 0x148))();
          v116();

          ++v112;
          if (v115 == j)
          {
            goto LABEL_144;
          }
        }

        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        ;
      }

LABEL_144:

      sub_1001AB654(&off_1004656A8);
      sub_1001AB510(v3, 4);
      v110 = v119;
      sub_10001B360(v119);
      goto LABEL_127;
    }

    if (v7 != 0x8000000000000020)
    {
LABEL_92:
      v83 = _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
LABEL_124:
      v104 = (*((swift_isaMask & *v2) + 0x178))(v83);
      v104();

      v105 = *(**(v3 + 112) + 400);

      v106 = v105(__src);
      sub_1001CA5D4(v2);
      v107 = swift_modifyAtWritableKeyPath();
      sub_1000550C8(v2, *v108);
      if ((v109 & 1) == 0)
      {
      }

      v107(v122, 0);

      v106(__src, 0);

      v110 = v117;
      sub_10001B360(v117);

LABEL_127:
      v16 = v110;
      goto LABEL_66;
    }
  }
}

void sub_1001AB510(uint64_t a1, char a2)
{

  StateValue.wrappedValue.getter();

  if (__dst[0].n128_u8[0] <= 1u)
  {
    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    if (qword_1004D4B08)
    {
      sub_10000F974(&qword_1004A3E70, &qword_1003D7FD8);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_1003D5360;
      *(v3 + 32) = a2;

      StateValue.wrappedValue.getter();

      memcpy(__dst, v4, sizeof(__dst));
      sub_1000F673C(v3, __dst);

      sub_100013C4C(__dst);
      swift_setDeallocating();
      swift_deallocClassInstance();
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1001AB654(unint64_t a1)
{
  v3 = *(**(v1 + 112) + 144);

  v3(v60, v4);

  v5 = sub_1001C9E48(v60[0], v60[1], v60[2]);

  v60[0] = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    if (i)
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_49;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        type metadata accessor for WorldLine();
        if (swift_dynamicCastClass())
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v7;
        if (v10 == i)
        {
          v11 = v60[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v11 = _swiftEmptyArrayStorage;
LABEL_16:

    v60[0] = _swiftEmptyArrayStorage;
    if ((v11 & 0x8000000000000000) != 0 || (v11 & 0x4000000000000000) != 0)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *(v11 + 16);
    }

    if (v5)
    {
      v12 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v11 + 16))
          {
            goto LABEL_51;
          }

          v13 = *(v11 + 32 + 8 * v12);
        }

        v14 = v13;
        if (__OFADD__(v12++, 1))
        {
          break;
        }

        if (a1)
        {
          v16 = (*((swift_isaMask & *v13) + 0xD0))();
          v17 = *(a1 + 16);
          v18 = (a1 + 32);
          while (v17)
          {
            v19 = *v18++;
            --v17;
            if (v19 == v16)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
LABEL_21:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        if (v12 == v5)
        {
          a1 = v60[0];
          goto LABEL_36;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    a1 = _swiftEmptyArrayStorage;
LABEL_36:

    if ((a1 & 0x8000000000000000) == 0 && (a1 & 0x4000000000000000) == 0)
    {
      v20 = *(a1 + 16);
      if (!v20)
      {
        break;
      }

      goto LABEL_39;
    }

    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (!v20)
    {
      break;
    }

LABEL_39:
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *(a1 + 16))
        {
          goto LABEL_53;
        }

        v21 = *(a1 + 8 * v5 + 32);
      }

      v22 = v21;
      v23 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v24 = (*((swift_isaMask & *v21) + 0x178))();
      v24();

      v25 = *(**(v58 + 112) + 400);

      v26 = v25(v60);
      sub_1001CA5D4(v22);
      v27 = swift_modifyAtWritableKeyPath();
      sub_1000550C8(v22, *v28);
      if ((v29 & 1) == 0)
      {
      }

      v27(v59, 0);

      v26(v60, 0);

      ++v5;
      if (v23 == v20)
      {
        goto LABEL_57;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

LABEL_57:

  v30 = *(**(v58 + 88) + 144);

  v30(v60, v31);

  if (v60[0] >> 62)
  {
    goto LABEL_75;
  }

  for (j = *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!j)
    {
      break;
    }

    v34 = *(**(v58 + 88) + 144);

    v34(v60, v35);

    v36 = v60[0];
    v60[0] = _swiftEmptyArrayStorage;
    if (v36 >> 62)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
      if (!v37)
      {
LABEL_77:
        v42 = _swiftEmptyArrayStorage;
LABEL_78:

        if ((v42 & 0x8000000000000000) != 0 || (v42 & 0x4000000000000000) != 0)
        {
          goto LABEL_91;
        }

        for (k = *(v42 + 16); k; k = _CocoaArrayWrapper.endIndex.getter())
        {
          v44 = 0;
          v56 = v42;
          v57 = v42 & 0xC000000000000001;
          while (1)
          {
            if (v57)
            {
              v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v44 >= *(v42 + 16))
              {
                goto LABEL_90;
              }

              v45 = *(v42 + 8 * v44 + 32);
            }

            v46 = v45;
            v47 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              break;
            }

            v48 = *(**(v58 + 88) + 400);

            v49 = v48(v60);
            v50 = (*((swift_isaMask & *v46) + 0xB8))();
            sub_100028A7C(v50, v51);

            v49(v60, 0);

            v53 = (*((swift_isaMask & *v46) + 0x178))(v52);
            v53();

            v54 = *(v58 + 120);
            v60[0] = 0x8000000000000008;
            v55 = *(*v54 + 392);

            v55(v60);
            v42 = v56;

            ++v44;
            if (v47 == k)
            {
              goto LABEL_92;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          ;
        }

LABEL_92:

        return result;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v37)
      {
        goto LABEL_77;
      }
    }

    v38 = 0;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      v41 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      type metadata accessor for WorldLine();
      if (swift_dynamicCastClass())
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v38;
      if (v41 == v37)
      {
        v42 = v60[0];
        goto LABEL_78;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    ;
  }

  return result;
}

void sub_1001ABECC(void *a1)
{
  v46 = a1;
  v2 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v2);
  v4 = (&v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = v1;
  v5 = *(*v1[15] + 144);

  v5(v51, v6);

  v7 = v51[0];
  if (v51[0] >> 62)
  {
    sub_10001B360(v51[0]);
  }

  else
  {
    if (qword_1004A0180 != -1)
    {
      swift_once();
    }

    v8 = qword_1004D4AD0;
    if (!qword_1004D4AD0)
    {
      __break(1u);
      return;
    }

    v9 = qword_1004ACA08;
    swift_beginAccess();
    sub_100085F70(v8 + v9, v4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10 = *v4;
      v11 = v8;
      v12 = sub_1000E0CE8();

      sub_100072394(2, 0, 0, 1);
      sub_10001B360(v7);
    }

    else
    {
      sub_10001B360(v7);
      sub_100085FD4(v4);
    }
  }

  v13 = *(*v49[14] + 144);

  v13(v51, v14);

  v15 = sub_1001C9E48(v51[0], v51[1], v51[2]);

  v50[0] = v15;
  v51[4] = v46;
  sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
  sub_10001D47C(&qword_1004AED98, &qword_1004A1648, &unk_1003D7F10, &protocol conformance descriptor for [A]);
  sub_1001AD700(&qword_1004AEDA0, &type metadata accessor for MeasureObject, &protocol conformance descriptor for NSObject);
  RangeReplaceableCollection<>.removingFirst(_:)();

  v16 = v51[0];
  if (v51[0] >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v18 = 0;
    v47 = v16 & 0xFFFFFFFFFFFFFF8;
    v48 = v16 & 0xC000000000000001;
    while (1)
    {
      if (v48)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *(v47 + 16))
        {
          goto LABEL_21;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = (*((swift_isaMask & *v19) + 0x178))();
      v22();

      v23 = *(*v49[14] + 400);

      v24 = v23(v51);
      sub_1001CA5D4(v20);
      v25 = swift_modifyAtWritableKeyPath();
      sub_1000550C8(v20, *v26);
      if ((v27 & 1) == 0)
      {
      }

      v25(v50, 0);

      v24(v51, 0);

      ++v18;
      if (v21 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  v28 = v49;
  v29 = *(*v49[11] + 400);

  v30 = v29(v51);
  v31 = v46;
  v32 = (*((swift_isaMask & *v46) + 0xB8))();
  v33 = v31;
  sub_100028A7C(v32, v34);

  v30(v51, 0);

  v36 = (*((swift_isaMask & *v31) + 0x130))(v35);
  v36();

  v37 = v28[15];
  v51[0] = 0x8000000000000008;
  v38 = *(*v37 + 392);

  v38(v51);

  if ([objc_opt_self() jasperAvailable])
  {
    type metadata accessor for WorldRectangle();
    v39 = swift_dynamicCastClass();
    if (v39)
    {
      v40 = v39;
      v41 = *(*v49[17] + 400);
      v42 = v33;

      v43 = v41(v51);
      v45 = *v44;
      *v44 = v40;

      v43(v51, 0);
    }
  }
}

void sub_1001AC5AC()
{
  v1 = *(**(v0 + 88) + 144);

  v1(&v11, v2);

  v3 = v11;
  v11 = _swiftEmptyArrayStorage;
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *&v3[v5 + 4];
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((*((swift_isaMask & *v6) + 0xD0))() == 6)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v5;
      if (v8 == i)
      {
        v9 = v11;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_18:

  if ((v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_25;
    }
  }

  else if (!*(v9 + 2))
  {
LABEL_25:

    return;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (*(v9 + 2))
  {
    v10 = *(v9 + 4);
    goto LABEL_25;
  }

  __break(1u);
}

void sub_1001AC7C0(void *a1)
{
  v2 = v1;
  v4 = [objc_opt_self() jasperAvailable];
  v5 = *(**(v1 + 112) + 144);
  if (v4)
  {

    v5(&v56, v6);

    v7 = v58;

    v8 = *(**(v1 + 112) + 144);

    v8(&v56, v9);

    v10 = v57;

    v56 = v7;
    sub_100103C70(v10);
    v11 = v56;
  }

  else
  {

    v5(&v56, v12);

    v11 = v57;
  }

  v51 = a1;
  v56 = _swiftEmptyArrayStorage;
  if (v11 >> 62)
  {
LABEL_20:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (v13)
    {
LABEL_6:
      v14 = 0;
      do
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v14 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v15 = *(v11 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

        if ((*((swift_isaMask & *v15) + 0xD0))() == 6)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v14;
      }

      while (v17 != v13);
      v18 = v56;
      if ((v56 & 0x8000000000000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }
  }

  else
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }
  }

  v18 = _swiftEmptyArrayStorage;
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0)
  {
LABEL_22:
    if ((v18 & 0x4000000000000000) == 0)
    {
      v19 = *(v18 + 16);
      if (v19)
      {
        goto LABEL_24;
      }

      goto LABEL_35;
    }
  }

LABEL_34:
  while (1)
  {
    v19 = _CocoaArrayWrapper.endIndex.getter();
    if (!v19)
    {
      break;
    }

LABEL_24:
    v20 = 0;
    v53 = v18;
    v54 = v18 & 0xC000000000000001;
    v52 = v19;
    while (1)
    {
      if (v54)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v20 >= *(v18 + 16))
        {
          goto LABEL_33;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = *(**(v2 + 88) + 400);

      v25 = v2;
      v26 = v24(&v56);
      v27 = (*((swift_isaMask & *v22) + 0xB8))();
      sub_100028A7C(v27, v28);

      v26(&v56, 0);
      v2 = v25;

      v30 = (*((swift_isaMask & *v22) + 0x178))(v29);
      v30();

      v31 = *(v25 + 120);
      v56 = 0x8000000000000008;
      v32 = *(*v31 + 392);

      v32(&v56);
      v18 = v53;

      ++v20;
      if (v23 == v52)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

LABEL_35:

  type metadata accessor for WorldRectangle();
  if (swift_dynamicCastClass())
  {

    v34 = (*((swift_isaMask & *v51) + 0xE8))(v33);
    v34();

    v35 = *(**(v2 + 112) + 400);
    v36 = v51;

    v37 = v35(&v56);

    sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
    sub_10000F974(&qword_1004A28B0, &qword_1003D7068);
    swift_dynamicCast();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    swift_dynamicCast();
    v37(&v56, 0);
    goto LABEL_45;
  }

  type metadata accessor for WorldLine();
  if (swift_dynamicCastClass())
  {

    v38 = *(v2 + 120);
    v56 = 0x8000000000000008;
    v39 = *(*v38 + 392);

    v39(&v56);
LABEL_45:

    *(v2 + 208) = CACurrentMediaTime();
    return;
  }

  type metadata accessor for WorldPerson();
  v40 = swift_dynamicCastClass();
  if (v40)
  {
    v41 = v40;

    v42 = *(v2 + 120);
    v56 = v41 | 0x4000000000000000;
    v43 = *(*v42 + 392);
    v44 = v51;

    v43(&v56);

    v45 = *(**(v2 + 112) + 400);
    v46 = v44;

    v47 = v45(&v56);

    sub_10000F974(&qword_1004A1648, &unk_1003D7F10);
    sub_10000F974(&qword_1004A3DA0, &unk_1003E1E60);
    swift_dynamicCast();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    swift_dynamicCast();
    v47(&v56, 0);

    v49 = (*((swift_isaMask & *v46) + 0xE8))(v48);
    v49();
    goto LABEL_45;
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(24);

  v56 = 0xD000000000000016;
  v57 = 0x800000010040C800;
  swift_getObjectType();
  v50._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v50);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double sub_1001AD138@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 248);

  return result;
}

uint64_t sub_1001AD148(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v27[3] = a3;
  v27[4] = a4;
  v7 = sub_1000315D4(v27);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  v8 = sub_10000F974(&qword_1004A2890, &qword_1003D6FD0);
  KeyPath = swift_getKeyPath();
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v10 = qword_1004D5058;
  v11 = *(v8 + 272);
  swift_retain_n();
  a2[8] = v11(KeyPath, v10);
  v12 = sub_10000F974(&qword_1004A1638, &qword_1003D8080);
  v13 = swift_getKeyPath();
  v14 = *(v12 + 272);

  a2[9] = v14(v13, v10);
  v15 = sub_10000F974(&unk_1004AFC00, &qword_1003DCE40);
  v16 = swift_getKeyPath();
  v17 = *(v15 + 272);

  a2[10] = v17(v16, v10);
  sub_10000F974(&qword_1004A9380, &qword_1003DCE70);
  swift_getKeyPath();
  a2[11] = MutableStateValue.__allocating_init(_:_:)();
  v18 = swift_getKeyPath();
  v19 = *(sub_10000F974(&qword_1004A11D0, &unk_1003D54E0) + 272);

  a2[12] = v19(v18, v10);
  v20 = swift_getKeyPath();
  v21 = sub_10000F974(&unk_1004A72D0, &qword_1003D5850);
  a2[13] = (*(v21 + 272))(v20, v10);
  sub_10000F974(&qword_1004A9388, &qword_1003DCED0);
  swift_getKeyPath();
  a2[14] = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A9390, &qword_1003DCF00);
  swift_getKeyPath();
  a2[15] = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A9398, &qword_1003DCF08);
  swift_getKeyPath();
  a2[16] = MutableStateValue.__allocating_init(_:_:)();
  sub_10000F974(&qword_1004A93A0, &qword_1003DCF10);
  swift_getKeyPath();
  a2[17] = MutableStateValue.__allocating_init(_:_:)();
  v22 = sub_10000F974(&qword_1004A93A8, &qword_1003DCF18);
  v23 = swift_getKeyPath();
  a2[18] = (*(v22 + 272))(v23, v10);
  *(a2 + 19) = 0u;
  *(a2 + 21) = 0u;
  *(a2 + 23) = 0u;
  *(a2 + 25) = 0u;
  sub_1000336B4(v27, &v26);
  v24 = StateObserver.init(configuration:)();
  sub_10000FF00(v27);
  return v24;
}

double sub_1001AD550@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(*a1 + 248);

  return result;
}

double sub_1001AD5AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001AD5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000F974(&qword_1004AED88, &unk_1003E1E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001AD634(uint64_t a1)
{
  v2 = sub_10000F974(&qword_1004AED88, &unk_1003E1E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001AD700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001AD748()
{
  sub_10000F974(&qword_1004A3E68, &qword_1003D7FD0);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1003D5720;
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  result = URLQueryItem.init(name:value:)();
  qword_1004AEDA8 = v0;
  return result;
}

uint64_t sub_1001AD8B0()
{
  v0 = type metadata accessor for URLQueryItem();
  sub_10001D4FC(v0, qword_1004AEDB0);
  sub_10001D4C4(v0, qword_1004AEDB0);
  return URLQueryItem.init(name:value:)();
}

uint64_t sub_1001AD934()
{
  v0 = type metadata accessor for URLQueryItem();
  sub_10001D4FC(v0, qword_1004AEDC8);
  sub_10001D4C4(v0, qword_1004AEDC8);
  return URLQueryItem.init(name:value:)();
}

void sub_1001AD9B8()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_10000F974(&qword_1004A11F8, &qword_1003D55D0);
  if (qword_1004A04D8 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5058;
  v3 = *(v1 + 272);

  v3(KeyPath, v2);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1001ADAA0()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  v4 = String._bridgeToObjectiveC()();
  v15 = sub_1001AF414;
  v16 = v0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000508F8;
  v14 = &unk_100471D00;
  v5 = _Block_copy(&v11);

  v6 = objc_opt_self();
  v7 = [v6 actionWithTitle:v4 style:0 handler:v5];
  _Block_release(v5);

  [v3 addAction:v7];

  v8 = String._bridgeToObjectiveC()();
  v15 = sub_1001AF464;
  v16 = v0;
  v11 = _NSConcreteStackBlock;
  v12 = 1107296256;
  v13 = sub_1000508F8;
  v14 = &unk_100471D28;
  v9 = _Block_copy(&v11);

  v10 = [v6 actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v3 addAction:v10];
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (*(&xmmword_1004D4AB8 + 1))
  {
    [*(&xmmword_1004D4AB8 + 1) presentViewController:v3 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1001ADD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v9 = *(v16 - 8);
  __chkstk_darwin(v16);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004D9B4();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = a3;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = a4;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v17 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v16);
}

double sub_1001AE00C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a2();
  }

  return result;
}

uint64_t sub_1001AE06C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v29 = a2;
  v33 = a1;
  v37 = type metadata accessor for DispatchWorkItemFlags();
  v40 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = type metadata accessor for DispatchTime();
  v32 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  sub_10004D9B4();
  v30 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v31 = *(v12 + 8);
  v31(v14, v11);
  (*(v9 + 16))(&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v8);
  v18 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v19 = swift_allocObject();
  v20 = v33;
  *(v19 + 16) = v33;
  (*(v9 + 32))(v19 + v18, &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v21 = (v19 + ((v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  v22 = v35;
  *v21 = v34;
  v21[1] = v22;
  aBlock[4] = sub_1001B0984;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100041180;
  aBlock[3] = &unk_100471E40;
  v23 = _Block_copy(aBlock);
  v24 = v20;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10003180C();
  sub_10000F974(&unk_1004A3D80, &unk_1003D6CF0);
  sub_10001D47C(&qword_1004A30D0, &unk_1004A3D80, &unk_1003D6CF0, &protocol conformance descriptor for [A]);
  v25 = v36;
  v26 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v27 = v30;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v40 + 8))(v25, v26);
  (*(v38 + 8))(v7, v39);
  return (v31)(v17, v32);
}

uint64_t sub_1001AE4F8(void *a1, uint64_t a2, double (*a3)(char *, char *, uint64_t), uint64_t a4)
{
  v121 = a3;
  v122 = a4;
  v124 = a2;
  v5 = type metadata accessor for URLComponents();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v106 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000F974(&qword_1004A28B8, &qword_1003D7078);
  __chkstk_darwin(v8 - 8);
  v111 = &v103 - v9;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v105 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v123 = &v103 - v14;
  __chkstk_darwin(v15);
  v120 = &v103 - v16;
  __chkstk_darwin(v17);
  v114 = &v103 - v18;
  v19 = type metadata accessor for URLQueryItem();
  v110 = *(v19 - 8);
  __chkstk_darwin(v19);
  v104 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v103 - v22;
  v24 = sub_10000F974(&qword_1004AEF18, &qword_1003E1ED0);
  __chkstk_darwin(v24 - 8);
  v26 = &v103 - v25;
  URLComponents.init(string:)();
  v107 = v6;
  v29 = *(v6 + 48);
  v27 = v6 + 48;
  v28 = v29;
  if (!v29(v26, 1, v5))
  {
    if (qword_1004A0820 != -1)
    {
      swift_once();
    }

    URLComponents.queryItems.setter();
  }

  v116 = v11;
  v30 = v28(v26, 1, v5);
  v113 = v26;
  if (!v30)
  {
    v119 = a1;
    v32 = v27;
    v34 = URLComponents.queryItems.modify();
    if (*v33)
    {
      v35 = v33;
      v112 = v5;
      if (qword_1004A0830 != -1)
      {
        swift_once();
      }

      v36 = sub_10001D4C4(v19, qword_1004AEDC8);
      v37 = v19;
      (*(v110 + 16))(v23, v36, v19);
      v38 = *v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v35 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_100068DF8(0, *(v38 + 2) + 1, 1, v38);
        *v35 = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        v38 = sub_100068DF8((v40 > 1), v41 + 1, 1, v38);
        *v35 = v38;
      }

      *(v38 + 2) = v41 + 1;
      v42 = v38 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v41;
      v19 = v37;
      (*(v110 + 32))(v42, v23, v37);
      v34(v128, 0);
      v31 = &v129;
      v5 = v112;
      v27 = v32;
    }

    else
    {
      v34(v128, 0);
    }

    a1 = v119;
  }

  URL._bridgeToObjectiveC()(v31);
  v44 = v43;
  v128[0]._countAndFlagsBits = 0;
  v45 = [a1 contentsOfDirectoryAtURL:v43 includingPropertiesForKeys:0 options:0 error:v128];

  countAndFlagsBits = v128[0]._countAndFlagsBits;
  if (!v45)
  {
    v76 = v128[0]._countAndFlagsBits;
    v77 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_1004A02C8 != -1)
    {
      swift_once();
    }

    v128[0]._countAndFlagsBits = 0;
    v128[0]._object = 0xE000000000000000;
    _StringGuts.grow(_:)(53);
    v78._countAndFlagsBits = 0xD000000000000033;
    v78._object = 0x800000010040CA40;
    String.append(_:)(v78);
    v125 = v77;
    sub_10000F974(&qword_1004A46B8, &qword_1003D8850);
    _print_unlocked<A, B>(_:_:)();
    Log.error(_:isPrivate:)(v128[0], 0);

    v53 = v113;
    return sub_100018F04(v53, &qword_1004AEF18, &qword_1003E1ED0);
  }

  v108 = v28;
  v109 = v27;
  v103 = v19;
  v112 = v5;
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = countAndFlagsBits;

  v49 = *(v47 + 16);
  v50 = _swiftEmptyArrayStorage;
  v124 = v10;
  v119 = v49;
  if (v49)
  {
    v51 = 0;
    v52 = v116;
    v115 = (v116 + 8);
    v117 = (v116 + 32);
    v118 = v116 + 16;
    v53 = v114;
    while (v51 < *(v47 + 16))
    {
      v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v55 = *(v52 + 72);
      (*(v52 + 16))(v53, v47 + v54 + v55 * v51, v10);
      v128[0]._countAndFlagsBits = URL.path.getter();
      v128[0]._object = v56;
      v125 = v121;
      v126 = v122;
      sub_1000748A4();
      v57 = StringProtocol.contains<A>(_:)();

      if (v57)
      {
        v58 = *v117;
        (*v117)(v120, v53, v10);
        v59 = swift_isUniquelyReferenced_nonNull_native();
        v127 = v50;
        if ((v59 & 1) == 0)
        {
          sub_1000A248C(0, *(v50 + 2) + 1, 1);
          v53 = v114;
          v50 = v127;
        }

        v61 = *(v50 + 2);
        v60 = *(v50 + 3);
        if (v61 >= v60 >> 1)
        {
          sub_1000A248C((v60 > 1), v61 + 1, 1);
          v53 = v114;
          v50 = v127;
        }

        *(v50 + 2) = v61 + 1;
        v62 = v50 + v54 + v61 * v55;
        v10 = v124;
        v58(v62, v120, v124);
        v52 = v116;
      }

      else
      {
        (*v115)(v53, v10);
      }

      if (v119 == ++v51)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

LABEL_28:

  v63 = *(v50 + 2);
  if (v63)
  {
    v128[0]._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_1000A27B4(0, v63, 0);
    v64 = v128[0]._countAndFlagsBits;
    v65 = *(v116 + 16);
    v66 = v50 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
    v120 = *(v116 + 72);
    v121 = v65;
    v122 = v116 + 16;
    v67 = (v116 + 8);
    do
    {
      v68 = v123;
      v121(v123, v66, v10);
      v69 = URL.path.getter();
      v70 = v10;
      v72 = v71;
      (*v67)(v68, v70);
      v128[0]._countAndFlagsBits = v64;
      v74 = *(v64 + 2);
      v73 = *(v64 + 3);
      if (v74 >= v73 >> 1)
      {
        sub_1000A27B4((v73 > 1), v74 + 1, 1);
        v64 = v128[0]._countAndFlagsBits;
      }

      *(v64 + 2) = v74 + 1;
      v75 = &v64[2 * v74];
      *(v75 + 4) = v69;
      *(v75 + 5) = v72;
      v66 = &v120[v66];
      --v63;
      v10 = v124;
    }

    while (v63);
  }

  else
  {

    v64 = _swiftEmptyArrayStorage;
  }

  v128[0]._countAndFlagsBits = v64;
  sub_10000F974(&qword_1004AC008, &qword_1003DFBB0);
  sub_10001D47C(&qword_1004AEF20, &qword_1004AC008, &qword_1003DFBB0, &protocol conformance descriptor for [A]);
  v79 = BidirectionalCollection<>.joined(separator:)();
  v81 = v80;

  v50 = 0xD000000000000012;
  v82 = v111;
  if (v79 || v81 != 0xE000000000000000)
  {
    v84 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v83 = v116;
    if ((v84 & 1) != 0 || v108(v113, 1, v112))
    {

      goto LABEL_45;
    }

    v97 = URLComponents.queryItems.modify();
    if (*v96)
    {
      v98 = v96;
      URLQueryItem.init(name:value:)();

      v99 = *v98;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      *v98 = v99;
      if ((v100 & 1) == 0)
      {
        v99 = sub_100068DF8(0, *(v99 + 2) + 1, 1, v99);
        *v98 = v99;
      }

      v102 = *(v99 + 2);
      v101 = *(v99 + 3);
      if (v102 >= v101 >> 1)
      {
        v99 = sub_100068DF8((v101 > 1), v102 + 1, 1, v99);
        *v98 = v99;
      }

      *(v99 + 2) = v102 + 1;
      (*(v110 + 32))(v99 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v102, v104, v103);
      v97(v128, 0);
    }

    else
    {

      v97(v128, 0);
    }
  }

  else
  {
  }

  v83 = v116;
LABEL_45:
  v53 = v113;
  v85 = v112;
  if (v108(v113, 1, v112))
  {
    (*(v83 + 56))(v82, 1, 1, v10);
    goto LABEL_48;
  }

  v86 = v107;
  v87 = v106;
  (*(v107 + 16))(v106, v53, v85);
  URLComponents.url.getter();
  (*(v86 + 8))(v87, v85);
  if ((*(v83 + 48))(v82, 1, v10) == 1)
  {
LABEL_48:
    sub_100018F04(v82, &qword_1004A28B8, &qword_1003D7078);
    if (qword_1004A02C8 == -1)
    {
LABEL_49:
      v88._countAndFlagsBits = v50 + 21;
      v88._object = 0x800000010040C8B0;
      Log.error(_:isPrivate:)(v88, 0);
      return sub_100018F04(v53, &qword_1004AEF18, &qword_1003E1ED0);
    }

LABEL_62:
    swift_once();
    goto LABEL_49;
  }

  v90 = v105;
  (*(v83 + 32))(v105, v82, v10);
  v91 = [objc_opt_self() defaultWorkspace];
  if (v91)
  {
    v93 = v91;
    URL._bridgeToObjectiveC()(v92);
    v95 = v94;
    [v93 openURL:v94 configuration:0 completionHandler:0];
  }

  (*(v116 + 8))(v90, v10);
  return sub_100018F04(v53, &qword_1004AEF18, &qword_1003E1ED0);
}

void sub_1001AF2E8()
{

  v1 = *(v0 + 72);
}

uint64_t sub_1001AF318(uint64_t a1)
{
  v1 = StateObserver.deinit();

  v2 = *(v1 + 72);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TapToRadarController(uint64_t a1)
{
  result = qword_1004AEE08;
  if (!qword_1004AEE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1001AF44C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001AF49C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001AF504()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v45 - v5;
  __chkstk_darwin(v6);
  v48 = (&v45 - v7);
  __chkstk_darwin(v8);
  v10 = (&v45 - v9);
  v11 = [objc_opt_self() defaultManager];
  if (qword_1004A01D8 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v12 = sub_10001D4C4(v0, qword_1004D4B88);
    v54 = *(v1 + 16);
    v55 = v1 + 16;
    v54(v10, v12, v0);
    URL.path.getter();
    v13 = String._bridgeToObjectiveC()();

    v14 = [v11 fileExistsAtPath:v13];

    if (!v14)
    {
      (*(v1 + 8))(v10, v0);

      return;
    }

    URL._bridgeToObjectiveC()(v15);
    v17 = v16;
    v58[0] = 0;
    v18 = [v11 contentsOfDirectoryAtURL:v16 includingPropertiesForKeys:0 options:0 error:v58];

    v19 = v58[0];
    if (!v18)
    {
      break;
    }

    v47 = v11;
    v52 = v1;
    v45 = v10;
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v19;

    v50 = *(v20 + 16);
    v51 = v0;
    if (v50)
    {
      v22 = 0;
      v46 = (v52 + 8);
      v49 = (v52 + 32);
      v11 = _swiftEmptyArrayStorage;
      v10 = v48;
      while (v22 < *(v20 + 16))
      {
        v23 = v3;
        v24 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v1 = *(v52 + 72);
        v54(v10, v20 + v24 + v1 * v22, v0);
        v58[0] = URL.path.getter();
        v58[1] = v25;
        v56 = 0x6461726F74706174;
        v57 = 0xEA00000000007261;
        sub_1000748A4();
        v26 = StringProtocol.contains<A>(_:)();

        if (v26)
        {
          v27 = v10;
          v28 = *v49;
          (*v49)(v53, v27, v0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59 = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1000A248C(0, *(v11 + 2) + 1, 1);
            v11 = v59;
          }

          v31 = *(v11 + 2);
          v30 = *(v11 + 3);
          if (v31 >= v30 >> 1)
          {
            sub_1000A248C((v30 > 1), v31 + 1, 1);
            v11 = v59;
          }

          *(v11 + 2) = v31 + 1;
          v32 = v11 + v24 + v31 * v1;
          v0 = v51;
          v28(v32, v53, v51);
          v10 = v48;
        }

        else
        {
          (*v46)(v10, v0);
        }

        ++v22;
        v3 = v23;
        if (v50 == v22)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = _swiftEmptyArrayStorage;
LABEL_18:

      v1 = *(v11 + 2);
      if (!v1)
      {
        (*(v52 + 8))(v45, v0);
LABEL_25:

        return;
      }

      v0 = 0;
      v34 = v52;
      v35 = (v52 + 8);
      v10 = &selRef_runAction_completion_;
      while (v0 < *(v11 + 2))
      {
        v36 = v51;
        v54(v3, v11 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v0, v51);
        URL._bridgeToObjectiveC()(v37);
        v39 = v38;
        v58[0] = 0;
        v40 = [v47 removeItemAtURL:v38 error:v58];

        if (!v40)
        {
          v43 = v58[0];

          _convertNSErrorToError(_:)();

          swift_willThrow();
          v44 = *v35;
          (*v35)(v3, v36);
          v44(v45, v36);
          goto LABEL_27;
        }

        ++v0;
        v41 = *v35;
        v42 = v58[0];
        v41(v3, v36);
        if (v1 == v0)
        {
          v41(v45, v51);
          goto LABEL_25;
        }
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  v33 = v58[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v1 + 8))(v10, v0);
LABEL_27:
}

void sub_1001AFB18()
{
  v0 = type metadata accessor for DebugSessionCoordinator.RecordReplayState(0);
  __chkstk_darwin(v0);
  v2 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for URL();
  v57 = *(v7 - 8);
  v8 = *(v57 + 64);
  __chkstk_darwin(v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v49 - v11;
  __chkstk_darwin(v13);
  v15 = &v49 - v14;
  if (qword_1004A0180 != -1)
  {
    swift_once();
  }

  if (!qword_1004D4AD0)
  {
    goto LABEL_18;
  }

  if (*(qword_1004D4AD0 + qword_1004D4F70) == 1)
  {
    v16 = String._bridgeToObjectiveC()();
    v17 = String._bridgeToObjectiveC()();
    v18 = [objc_opt_self() alertControllerWithTitle:v16 message:v17 preferredStyle:1];

    v19 = String._bridgeToObjectiveC()();
    v62 = nullsub_1;
    v63 = 0;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1000508F8;
    v61 = &unk_100471DF0;
    v20 = _Block_copy(&aBlock);

    v21 = [objc_opt_self() actionWithTitle:v19 style:0 handler:v20];
    _Block_release(v20);

    [v18 addAction:v21];
    if (*(&xmmword_1004D4AB8 + 1))
    {
      [*(&xmmword_1004D4AB8 + 1) presentViewController:v18 animated:1 completion:0];
LABEL_14:

      return;
    }

    goto LABEL_19;
  }

  v54 = v0;
  v55 = [objc_opt_self() defaultManager];
  if (qword_1004A01D8 != -1)
  {
    swift_once();
  }

  v22 = sub_10001D4C4(v7, qword_1004D4B88);
  v23 = *(v57 + 16);
  v56 = v15;
  v53 = v23;
  v23(v15, v22, v7);
  aBlock = 0;
  v59 = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  aBlock = 0x6461726F74706174;
  v59 = 0xEA00000000007261;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v25 = v24;
  v26 = v24;
  (*(v4 + 8))(v6, v3);
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v52 = v2;
  v64 = v25;
  v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 1987013934;
  v28._object = 0xE400000000000000;
  String.append(_:)(v28);
  v29 = aBlock;
  v30 = v59;
  v31 = v56;
  URL.appendingPathComponent(_:)();
  v50 = qword_1004D4AD0;
  v51 = v12;
  if (qword_1004D4AD0)
  {
    v32 = v53;
    v53(v9, v31, v7);
    v33 = v7;
    v34 = v57;
    v35 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v36 = (v8 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = v55;
    (*(v34 + 32))(v37 + v35, v9, v33);
    v38 = (v37 + v36);
    *v38 = v29;
    v38[1] = v30;
    v39 = sub_10000F974(&qword_1004A9310, &unk_1003DCB60);
    v40 = *(v39 + 48);
    v42 = v51;
    v41 = v52;
    v43 = &v52[*(v39 + 64)];
    v32(v52, v51, v33);
    *(v41 + v40) = 1;
    *v43 = sub_1001B0890;
    v43[1] = v37;
    swift_storeEnumTagMultiPayload();
    v44 = qword_1004ACA08;
    v45 = v50;
    swift_beginAccess();
    v18 = v45;
    v46 = v55;

    sub_10018243C(v41, v45 + v44);
    swift_endAccess();
    sub_10017FAF8();
    v47 = sub_100085FD4(v41);
    (*&v18[qword_1004ACA38])(v47);

    v48 = *(v34 + 8);
    v48(v42, v33);
    v48(v56, v33);
    goto LABEL_14;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1001B020C()
{
  v0 = type metadata accessor for URLComponents();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v40 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000F974(&qword_1004A28B8, &qword_1003D7078);
  __chkstk_darwin(v3 - 8);
  v5 = &v36 - v4;
  v6 = type metadata accessor for URL();
  v43 = *(v6 - 8);
  __chkstk_darwin(v6);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URLQueryItem();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000F974(&qword_1004AEF18, &qword_1003E1ED0);
  __chkstk_darwin(v11 - 8);
  v13 = &v36 - v12;
  URLComponents.init(string:)();
  v41 = v1;
  v14 = *(v1 + 48);
  if (!v14(v13, 1, v0))
  {
    if (qword_1004A0820 != -1)
    {
      swift_once();
    }

    URLComponents.queryItems.setter();
  }

  if (!v14(v13, 1, v0))
  {
    v38 = v6;
    v15 = URLComponents.queryItems.modify();
    if (*v16)
    {
      v17 = v16;
      v37 = v15;
      if (qword_1004A0828 != -1)
      {
        swift_once();
      }

      v18 = sub_10001D4C4(v8, qword_1004AEDB0);
      (*(v42 + 16))(v10, v18, v8);
      v19 = *v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v17 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_100068DF8(0, *(v19 + 2) + 1, 1, v19);
        *v17 = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v36 = v22 + 1;
        v35 = sub_100068DF8((v21 > 1), v22 + 1, 1, v19);
        v23 = v36;
        v19 = v35;
        *v17 = v35;
      }

      v6 = v38;
      *(v19 + 2) = v23;
      (*(v42 + 32))(v19 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v22, v10, v8);
      v37(v44, 0);
    }

    else
    {
      v15(v44, 0);
      v6 = v38;
    }
  }

  if (v14(v13, 1, v0))
  {
    (*(v43 + 56))(v5, 1, 1, v6);
LABEL_18:
    sub_100018F04(v5, &qword_1004A28B8, &qword_1003D7078);
    if (qword_1004A02C8 != -1)
    {
      swift_once();
    }

    v27._countAndFlagsBits = 0xD000000000000027;
    v27._object = 0x800000010040C8B0;
    Log.error(_:isPrivate:)(v27, 0);
    return sub_100018F04(v13, &qword_1004AEF18, &qword_1003E1ED0);
  }

  v25 = v40;
  v24 = v41;
  (*(v41 + 16))(v40, v13, v0);
  URLComponents.url.getter();
  (*(v24 + 8))(v25, v0);
  v26 = v43;
  if ((*(v43 + 48))(v5, 1, v6) == 1)
  {
    goto LABEL_18;
  }

  v29 = v39;
  (*(v26 + 32))(v39, v5, v6);
  v30 = [objc_opt_self() defaultWorkspace];
  if (v30)
  {
    v32 = v30;
    URL._bridgeToObjectiveC()(v31);
    v34 = v33;
    [v32 openURL:v33 configuration:0 completionHandler:0];
  }

  (*(v26 + 8))(v29, v6);
  return sub_100018F04(v13, &qword_1004AEF18, &qword_1003E1ED0);
}

uint64_t sub_1001B08A8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1001B099C(uint64_t (*a1)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for URL() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return a1(v4, v1 + v3, v6, v7);
}

uint64_t sub_1001B0A88(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000F974(&unk_1004ABAD0, &qword_1003D7070);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001B0B58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10000F974(&unk_1004ABAD0, &qword_1003D7070);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MeasurementHistoryItem(uint64_t a1)
{
  result = qword_1004AEF80;
  if (!qword_1004AEF80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B0C54(uint64_t a1)
{
  sub_1001B0CE8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1001B0CE8(uint64_t a1)
{
  if (!qword_1004AEF90)
  {
    type metadata accessor for MeasurementCapture(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1004AEF90);
    }
  }
}

uint64_t sub_1001B0D40(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1001B0D6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 838))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 33) & 0x7F | (*(a1 + 32) >> 41) & 0x7FFF80 | (*(a1 + 72) >> 18) & 0xC0000000 | (*(a1 + 72) >> 10) & 0x3F800000;
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

void sub_1001B0DE4(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 824) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 836) = 0;
    *(a1 + 832) = 0;
    *(a1 + 808) = 0u;
    *(a1 + 792) = 0u;
    *(a1 + 776) = 0u;
    *(a1 + 760) = 0u;
    *(a1 + 744) = 0u;
    *(a1 + 728) = 0u;
    *(a1 + 712) = 0u;
    *(a1 + 696) = 0u;
    *(a1 + 680) = 0u;
    *(a1 + 664) = 0u;
    *(a1 + 648) = 0u;
    *(a1 + 632) = 0u;
    *(a1 + 616) = 0u;
    *(a1 + 600) = 0u;
    *(a1 + 584) = 0u;
    *(a1 + 568) = 0u;
    *(a1 + 552) = 0u;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 838) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      v3 = -a2;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (v3 << 41) & 0xFFFF000000000000 | ((v3 & 0x7F) << 33);
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = (v3 << 18) & 0x3000000000000 | (((v3 >> 23) & 0x7F) << 33);
      bzero((a1 + 80), 0x2F6uLL);
      return;
    }

    *(a1 + 838) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_1001B0F40(uint64_t result, char a2)
{
  v2 = a2 & 3;
  v3 = *(result + 72) & 0xFF01FFFFFFFFLL;
  v4 = *(result + 112) & 0xFF01FFFFFFFFLL;
  v5 = *(result + 272) & 0xFF01FFFFFFFFLL;
  v6 = *(result + 312) & 0xFF01FFFFFFFFLL;
  v7 = *(result + 352) & 0xFF01FFFFFFFFLL;
  v8 = *(result + 392) & 0xFF01FFFFFFFFLL;
  v9 = *(result + 432) & 0xFF01FFFFFFFFLL;
  v10 = *(result + 472) & 0xFF01FFFFFFFFLL;
  v11 = *(result + 512) & 0xFF01FFFFFFFFLL;
  v12 = *(result + 552) & 0xFF01FFFFFFFFLL;
  v13 = *(result + 592) & 0xFF01FFFFFFFFLL;
  v14 = *(result + 632) & 0xFF01FFFFFFFFLL;
  v15 = *(result + 672) & 0xFF01FFFFFFFFLL;
  v16 = *(result + 712) & 0xFF01FFFFFFFFLL;
  v17 = *(result + 752) & 0xFF01FFFFFFFFLL;
  v18 = *(result + 792) & 0xFF01FFFFFFFFLL;
  v19 = (*(result + 832) | (*(result + 836) << 32)) & 0xFFFFFF01FFFFFFFFLL;
  *(result + 32) &= 0xFF01FFFFFFFFuLL;
  *(result + 72) = v3;
  *(result + 112) = v4;
  *(result + 272) = v5;
  *(result + 312) = v6;
  *(result + 352) = v7;
  *(result + 392) = v8;
  *(result + 432) = v9;
  *(result + 472) = v10;
  *(result + 512) = v11;
  *(result + 552) = v12;
  *(result + 592) = v13;
  *(result + 632) = v14;
  *(result + 672) = v15;
  *(result + 712) = v16;
  *(result + 752) = v17;
  *(result + 792) = v18;
  *(result + 832) = v19;
  *(result + 836) = (v19 | (v2 << 38)) >> 32;
  return result;
}

uint64_t sub_1001B105C(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x346uLL);
  memcpy(__dst, a2, sizeof(__dst));
  return sub_1001B1C78(v4) & 1;
}

uint64_t sub_1001B10B8(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v13[0] = *(a1 + 96);
  *(v13 + 14) = *(a1 + 110);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  *&v15[14] = *(a2 + 110);
  v14[5] = v9;
  *v15 = v10;
  v14[4] = v8;
  return sub_1001B1244(v12, v14) & 1;
}

BOOL sub_1001B113C(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x10DuLL);
  memcpy(__dst, a2, 0x10DuLL);
  return sub_1001B13C4(v4, __dst);
}

uint64_t sub_1001B1194(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x1DEuLL);
  memcpy(__dst, a2, 0x1DEuLL);
  return sub_1001B22B0(v4, __dst) & 1;
}

uint64_t sub_1001B11EC(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x346uLL);
  memcpy(__dst, a2, 0x346uLL);
  return sub_1001B182C(v4, __dst) & 1;
}

uint64_t sub_1001B1244(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 8);
  v7 = *(a1 + 36);
  v8 = *(a1 + 37);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 36);
  v13 = *(a2 + 37);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_22;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v9)
  {
    goto LABEL_22;
  }

  if (v7)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v14 = 0;
  if ((v12 & 1) == 0 && v6 == v11)
  {
LABEL_16:
    if (v8 == 4)
    {
      if (v13 != 4)
      {
        goto LABEL_22;
      }
    }

    else if (v8 != v13)
    {
      goto LABEL_22;
    }

    v15 = *(a1 + 7);
    v26 = *(a1 + 5);
    v27[0] = v15;
    *(v27 + 14) = *(a1 + 70);
    v16 = *(a2 + 56);
    v24 = *(a2 + 40);
    v25[0] = v16;
    *(v25 + 14) = *(a2 + 70);
    if (sub_10010DD4C(&v26, &v24))
    {
      v17 = *(a1 + 6);
      v22 = *(a1 + 5);
      v23[0] = v17;
      *(v23 + 14) = *(a1 + 110);
      v18 = *(a2 + 96);
      v20 = *(a2 + 80);
      v21[0] = v18;
      *(v21 + 14) = *(a2 + 110);
      v14 = sub_10010DD4C(&v22, &v20);
      return v14 & 1;
    }

LABEL_22:
    v14 = 0;
  }

  return v14 & 1;
}

BOOL sub_1001B13C4(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 8);
  v7 = *(a1 + 36);
  v8 = *(a1 + 37);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 36);
  v13 = *(a2 + 37);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
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
    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if ((v12 & 1) != 0 || v6 != v11)
    {
      return result;
    }
  }

  if (v8 == 4)
  {
    if (v13 != 4)
    {
      return 0;
    }
  }

  else if (v8 != v13)
  {
    return 0;
  }

  v15 = *(a1 + 7);
  v79 = *(a1 + 5);
  *v80 = v15;
  *&v80[14] = *(a1 + 70);
  v16 = *(a2 + 56);
  v75 = *(a2 + 40);
  v76[0] = v16;
  *(v76 + 14) = *(a2 + 70);
  if ((sub_10010DD4C(&v79, &v75) & 1) == 0)
  {
    return 0;
  }

  v17 = *(a1 + 6);
  v77 = *(a1 + 5);
  v78[0] = v17;
  *(v78 + 14) = *(a1 + 110);
  v18 = *(a2 + 96);
  v73 = *(a2 + 80);
  v74[0] = v18;
  *(v74 + 14) = *(a2 + 110);
  if ((sub_10010DD4C(&v77, &v73) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  v19 = vmovn_s32(vceqq_f32(*(a1 + 8), *(a2 + 128)));
  if (v19.i8[0] & 1) != 0 && (v19.i8[2] & 1) != 0 && (v19.i8[4])
  {
    v20 = *(a1 + 14);
    v71[4] = *(a1 + 13);
    v71[5] = v20;
    v72[0] = *(a1 + 15);
    *(v72 + 14) = *(a1 + 254);
    v21 = *(a1 + 10);
    v71[0] = *(a1 + 9);
    v71[1] = v21;
    v22 = *(a1 + 12);
    v71[2] = *(a1 + 11);
    v71[3] = v22;
    v23 = *(a2 + 144);
    v24 = *(a2 + 160);
    v25 = *(a2 + 192);
    v69[2] = *(a2 + 176);
    v69[3] = v25;
    v69[0] = v23;
    v69[1] = v24;
    v26 = *(a2 + 208);
    v27 = *(a2 + 224);
    v28 = *(a2 + 240);
    *(v70 + 14) = *(a2 + 254);
    v69[5] = v27;
    v70[0] = v28;
    v69[4] = v26;
    v29 = v71[0];
    if (*(&v71[0] + 1))
    {
      if (*(&v69[0] + 1))
      {
        v52 = v69[0];
        *&v58[14] = *(a2 + 254);
        v30 = *(a2 + 240);
        v57 = *(a2 + 224);
        *v58 = v30;
        v31 = *(a2 + 176);
        v53 = *(a2 + 160);
        v54 = v31;
        v32 = *(a2 + 208);
        v55 = *(a2 + 192);
        v56 = v32;
        v63 = v31;
        v64 = v55;
        v61 = v69[0];
        v62 = v53;
        *(&v67[1] + 6) = *&v58[14];
        v66 = v57;
        *v67 = v30;
        v65 = v32;
        v33 = *(a1 + 10);
        v34 = *(a1 + 11);
        v35 = *(a1 + 13);
        v81[3] = *(a1 + 12);
        v81[2] = v34;
        v81[1] = v33;
        v36 = *(a1 + 14);
        v37 = *(a1 + 15);
        *(v82 + 14) = *(a1 + 254);
        v81[5] = v36;
        v82[0] = v37;
        v81[4] = v35;
        v81[0] = v71[0];
        v38 = sub_1001B1244(v81, &v61);
        sub_10006C92C(v71, v59, &qword_1004A4C58, &unk_1003D9030);
        sub_10006C92C(v69, v59, &qword_1004A4C58, &unk_1003D9030);
        sub_100018F04(&v52, &qword_1004A4C58, &unk_1003D9030);
        v59[0] = v29;
        v39 = *(a1 + 15);
        v59[5] = *(a1 + 14);
        *v60 = v39;
        *&v60[14] = *(a1 + 254);
        v40 = *(a1 + 11);
        v59[1] = *(a1 + 10);
        v59[2] = v40;
        v41 = *(a1 + 13);
        v59[3] = *(a1 + 12);
        v59[4] = v41;
        sub_100018F04(v59, &qword_1004A4C58, &unk_1003D9030);
        if ((v38 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_34;
      }
    }

    else if (!*(&v69[0] + 1))
    {
      v61 = *&v71[0];
      v48 = *(a1 + 15);
      v66 = *(a1 + 14);
      *v67 = v48;
      *(&v67[1] + 6) = *(a1 + 254);
      v49 = *(a1 + 11);
      v62 = *(a1 + 10);
      v63 = v49;
      v50 = *(a1 + 13);
      v64 = *(a1 + 12);
      v65 = v50;
      sub_10006C92C(v71, v81, &qword_1004A4C58, &unk_1003D9030);
      sub_10006C92C(v69, v81, &qword_1004A4C58, &unk_1003D9030);
      sub_100018F04(&v61, &qword_1004A4C58, &unk_1003D9030);
LABEL_34:
      v51 = *(a2 + 268);
      if ((*(a1 + 268) & 1) == 0)
      {
        if (*(a1 + 66) != *(a2 + 264))
        {
          v51 = 1;
        }

        return (v51 & 1) == 0;
      }

      return (*(a2 + 268) & 1) != 0;
    }

    *&v68[14] = *(a2 + 254);
    v42 = *(a1 + 15);
    v66 = *(a1 + 14);
    *v67 = v42;
    v43 = *(a1 + 11);
    v62 = *(a1 + 10);
    v63 = v43;
    v44 = *(a1 + 13);
    v64 = *(a1 + 12);
    v65 = v44;
    v45 = *(a2 + 224);
    *v68 = *(a2 + 240);
    *&v67[13] = v45;
    v46 = *(a2 + 192);
    *&v67[11] = *(a2 + 208);
    v47 = *(a2 + 176);
    *&v67[5] = *(a2 + 160);
    *&v67[7] = v47;
    v61 = v71[0];
    *(&v67[1] + 6) = *(a1 + 254);
    *&v67[3] = v69[0];
    *&v67[9] = v46;
    sub_10006C92C(v71, v81, &qword_1004A4C58, &unk_1003D9030);
    sub_10006C92C(v69, v81, &qword_1004A4C58, &unk_1003D9030);
    sub_100018F04(&v61, &qword_1004AEFD0, &qword_1003E2288);
    return 0;
  }

  return result;
}

uint64_t sub_1001B182C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 8);
  v7 = *(a1 + 36);
  v8 = *(a1 + 37);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 36);
  v13 = *(a2 + 37);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_28;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v9)
  {
    goto LABEL_28;
  }

  if (v7)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v14 = 0;
    if ((v12 & 1) != 0 || v6 != v11)
    {
      return v14 & 1;
    }
  }

  if (v8 != 4)
  {
    if (v8 == v13)
    {
      goto LABEL_20;
    }

LABEL_28:
    v14 = 0;
    return v14 & 1;
  }

  if (v13 != 4)
  {
    goto LABEL_28;
  }

LABEL_20:
  v15 = *(a1 + 7);
  v104 = *(a1 + 5);
  v105[0] = v15;
  *(v105 + 14) = *(a1 + 70);
  v16 = *(a2 + 56);
  v100 = *(a2 + 40);
  v101[0] = v16;
  *(v101 + 14) = *(a2 + 70);
  if ((sub_10010DD4C(&v104, &v100) & 1) == 0)
  {
    goto LABEL_28;
  }

  v17 = *(a1 + 6);
  v102 = *(a1 + 5);
  v103[0] = v17;
  *(v103 + 14) = *(a1 + 110);
  v18 = *(a2 + 96);
  v98 = *(a2 + 80);
  v99[0] = v18;
  *(v99 + 14) = *(a2 + 110);
  if ((sub_10010DD4C(&v102, &v98) & 1) == 0)
  {
    goto LABEL_28;
  }

  v19 = *(a1 + 25);
  v96[4] = *(a1 + 23);
  v96[5] = v19;
  v97[0] = *(a1 + 27);
  *(v97 + 14) = *(a1 + 230);
  v20 = *(a1 + 17);
  v96[0] = *(a1 + 15);
  v96[1] = v20;
  v21 = *(a1 + 21);
  v96[2] = *(a1 + 19);
  v96[3] = v21;
  v22 = *(a2 + 120);
  v23 = *(a2 + 136);
  v24 = *(a2 + 152);
  v94[3] = *(a2 + 168);
  v94[2] = v24;
  v94[1] = v23;
  v94[0] = v22;
  v25 = *(a2 + 184);
  v26 = *(a2 + 200);
  v27 = *(a2 + 216);
  *(v95 + 14) = *(a2 + 230);
  v95[0] = v27;
  v94[5] = v26;
  v94[4] = v25;
  if ((sub_1001B1244(v96, v94) & 1) == 0)
  {
    goto LABEL_28;
  }

  v28 = *(a1 + 20);
  v92[4] = *(a1 + 19);
  v92[5] = v28;
  v93[0] = *(a1 + 21);
  v29 = *(a1 + 16);
  v92[0] = *(a1 + 15);
  v92[1] = v29;
  v30 = *(a1 + 18);
  v92[2] = *(a1 + 17);
  v92[3] = v30;
  *(v93 + 14) = *(a1 + 350);
  v31 = *(a2 + 240);
  v32 = *(a2 + 256);
  v33 = *(a2 + 272);
  v90[3] = *(a2 + 288);
  v90[2] = v33;
  v90[1] = v32;
  v90[0] = v31;
  v34 = *(a2 + 304);
  v35 = *(a2 + 320);
  v36 = *(a2 + 336);
  *(v91 + 14) = *(a2 + 350);
  v91[0] = v36;
  v90[5] = v35;
  v90[4] = v34;
  if ((sub_1001B1244(v92, v90) & 1) == 0)
  {
    goto LABEL_28;
  }

  v37 = *(a1 + 55);
  v88[4] = *(a1 + 53);
  v88[5] = v37;
  v89[0] = *(a1 + 57);
  *(v89 + 14) = *(a1 + 470);
  v38 = *(a1 + 47);
  v88[0] = *(a1 + 45);
  v88[1] = v38;
  v39 = *(a1 + 51);
  v88[2] = *(a1 + 49);
  v88[3] = v39;
  v40 = *(a2 + 360);
  v41 = *(a2 + 376);
  v42 = *(a2 + 408);
  v86[2] = *(a2 + 392);
  v86[3] = v42;
  v86[0] = v40;
  v86[1] = v41;
  v43 = *(a2 + 424);
  v44 = *(a2 + 440);
  v45 = *(a2 + 456);
  *(v87 + 14) = *(a2 + 470);
  v86[5] = v44;
  v87[0] = v45;
  v86[4] = v43;
  if ((sub_1001B1244(v88, v86) & 1) == 0)
  {
    goto LABEL_28;
  }

  v46 = *(a1 + 35);
  v84[4] = *(a1 + 34);
  v84[5] = v46;
  v85[0] = *(a1 + 36);
  v47 = *(a1 + 31);
  v84[0] = *(a1 + 30);
  v84[1] = v47;
  v48 = *(a1 + 33);
  v84[2] = *(a1 + 32);
  v84[3] = v48;
  *(v85 + 14) = *(a1 + 590);
  v49 = *(a2 + 480);
  v50 = *(a2 + 496);
  v51 = *(a2 + 528);
  v82[2] = *(a2 + 512);
  v82[3] = v51;
  v82[0] = v49;
  v82[1] = v50;
  v52 = *(a2 + 544);
  v53 = *(a2 + 560);
  v54 = *(a2 + 576);
  *(v83 + 14) = *(a2 + 590);
  v82[5] = v53;
  v83[0] = v54;
  v82[4] = v52;
  if ((sub_1001B1244(v84, v82) & 1) == 0)
  {
    goto LABEL_28;
  }

  v55 = *(a1 + 85);
  v80[4] = *(a1 + 83);
  v80[5] = v55;
  v81[0] = *(a1 + 87);
  *(v81 + 14) = *(a1 + 710);
  v56 = *(a1 + 77);
  v80[0] = *(a1 + 75);
  v80[1] = v56;
  v57 = *(a1 + 81);
  v80[2] = *(a1 + 79);
  v80[3] = v57;
  v58 = *(a2 + 600);
  v59 = *(a2 + 616);
  v60 = *(a2 + 648);
  v78[2] = *(a2 + 632);
  v78[3] = v60;
  v78[0] = v58;
  v78[1] = v59;
  v61 = *(a2 + 664);
  v62 = *(a2 + 680);
  v63 = *(a2 + 696);
  *(v79 + 14) = *(a2 + 710);
  v78[5] = v62;
  v79[0] = v63;
  v78[4] = v61;
  if ((sub_1001B1244(v80, v78) & 1) == 0)
  {
    goto LABEL_28;
  }

  v64 = *(a1 + 50);
  v76[4] = *(a1 + 49);
  v76[5] = v64;
  v77[0] = *(a1 + 51);
  v65 = *(a1 + 46);
  v76[0] = *(a1 + 45);
  v76[1] = v65;
  v66 = *(a1 + 48);
  v76[2] = *(a1 + 47);
  v76[3] = v66;
  *(v77 + 14) = *(a1 + 830);
  v67 = *(a2 + 720);
  v68 = *(a2 + 736);
  v69 = *(a2 + 768);
  v74[2] = *(a2 + 752);
  v74[3] = v69;
  v74[0] = v67;
  v74[1] = v68;
  v70 = *(a2 + 784);
  v71 = *(a2 + 800);
  v72 = *(a2 + 816);
  *&v75[14] = *(a2 + 830);
  v74[5] = v71;
  *v75 = v72;
  v74[4] = v70;
  v14 = sub_1001B1244(v76, v74);
  return v14 & 1;
}

uint64_t sub_1001B1C78(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  memcpy(__dst, v3, 0x346uLL);
  v4 = sub_1000218D8(__dst);
  v5 = sub_1000218E4(__dst);
  if (v4)
  {
    if (v4 == 1)
    {
      v6 = *v5;
      v7 = *(v5 + 1);
      v8 = *(v5 + 2);
      v9 = *(v5 + 3);
      v10 = *(v5 + 8);
      v11 = v5[36];
      v12 = v5[37];
      v13 = *(v5 + 54);
      *v52 = *(v5 + 38);
      *&v52[16] = v13;
      *&v52[32] = *(v5 + 70);
      *&v51[32] = *(v5 + 110);
      v14 = *(v5 + 78);
      *&v51[16] = *(v5 + 94);
      *v51 = v14;
      v15 = *(v5 + 150);
      v48[3] = *(v5 + 166);
      v48[2] = v15;
      v16 = *(v5 + 118);
      v48[1] = *(v5 + 134);
      v48[0] = v16;
      *&v48[7] = *(v5 + 230);
      v48[6] = *(v5 + 214);
      v17 = *(v5 + 182);
      v48[5] = *(v5 + 198);
      v48[4] = v17;
      v18 = *(v5 + 238);
      v19 = *(v5 + 254);
      v20 = *(v5 + 286);
      v47[2] = *(v5 + 270);
      v47[3] = v20;
      v47[0] = v18;
      v47[1] = v19;
      v21 = *(v5 + 302);
      v22 = *(v5 + 318);
      v23 = *(v5 + 334);
      *&v47[7] = *(v5 + 350);
      v47[5] = v22;
      v47[6] = v23;
      v47[4] = v21;
      v24 = *(v5 + 358);
      v25 = *(v5 + 374);
      v26 = *(v5 + 390);
      *&v50[48] = *(v5 + 406);
      *&v50[32] = v26;
      *&v50[16] = v25;
      *v50 = v24;
      v27 = *(v5 + 422);
      v28 = *(v5 + 438);
      v29 = *(v5 + 454);
      *&v50[112] = *(v5 + 470);
      *&v50[96] = v29;
      *&v50[80] = v28;
      *&v50[64] = v27;
      memcpy(v53, v2, 0x346uLL);
      if (sub_1000218D8(v53) != 1)
      {
        goto LABEL_33;
      }

      v30 = sub_1000218E4(v53);
      v31 = *v30;
      v32 = *(v30 + 8);
      v34 = *(v30 + 16);
      v33 = *(v30 + 24);
      v35 = *(v30 + 32);
      v36 = *(v30 + 36);
      v37 = *(v30 + 37);
      v38 = *(v30 + 54);
      *v65 = *(v30 + 38);
      *&v65[16] = v38;
      *&v65[32] = *(v30 + 70);
      *&v64[32] = *(v30 + 110);
      v39 = *(v30 + 78);
      *&v64[16] = *(v30 + 94);
      *v64 = v39;
      *&v46[112] = *(v30 + 230);
      *&v46[80] = *(v30 + 198);
      *&v46[96] = *(v30 + 214);
      *&v46[48] = *(v30 + 166);
      *&v46[64] = *(v30 + 182);
      *&v46[16] = *(v30 + 134);
      *&v46[32] = *(v30 + 150);
      *v46 = *(v30 + 118);
      *&v45[32] = *(v30 + 270);
      *&v45[48] = *(v30 + 286);
      *v45 = *(v30 + 238);
      *&v45[16] = *(v30 + 254);
      *&v45[112] = *(v30 + 350);
      *&v45[80] = *(v30 + 318);
      *&v45[96] = *(v30 + 334);
      *&v45[64] = *(v30 + 302);
      *&v44[32] = *(v30 + 390);
      *&v44[48] = *(v30 + 406);
      *v44 = *(v30 + 358);
      *&v44[16] = *(v30 + 374);
      *&v44[112] = *(v30 + 470);
      *&v44[80] = *(v30 + 438);
      *&v44[96] = *(v30 + 454);
      *&v44[64] = *(v30 + 422);
      if ((v6 != v31 || v7 != v32) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_33;
      }

      if (v9)
      {
        if (!v33 || (v8 != v34 || v9 != v33) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if (v33)
      {
        goto LABEL_33;
      }

      if (v11)
      {
        if ((v36 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else if ((v36 & 1) != 0 || v10 != v35)
      {
        goto LABEL_33;
      }

      if (v12 == 4)
      {
        if (v37 != 4)
        {
          goto LABEL_33;
        }
      }

      else if (v12 != v37)
      {
        goto LABEL_33;
      }

      v56 = *&v52[2];
      v57[0] = *&v52[18];
      *(v57 + 14) = *&v52[32];
      v68 = *&v65[2];
      v69[0] = *&v65[18];
      *(v69 + 14) = *&v65[32];
      if (sub_10010DD4C(&v56, &v68))
      {
        v54 = *&v51[2];
        v55[0] = *&v51[18];
        *(v55 + 14) = *&v51[32];
        v66 = *&v64[2];
        v67[0] = *&v64[18];
        *(v67 + 14) = *&v64[32];
        if (sub_10010DD4C(&v54, &v66))
        {
          v58[4] = *(&v48[4] + 2);
          v58[5] = *(&v48[5] + 2);
          v59[0] = *(&v48[6] + 2);
          *(v59 + 14) = *&v48[7];
          v58[0] = *(v48 + 2);
          v58[1] = *(&v48[1] + 2);
          v58[2] = *(&v48[2] + 2);
          v58[3] = *(&v48[3] + 2);
          v70[3] = *&v46[50];
          v70[2] = *&v46[34];
          v70[1] = *&v46[18];
          v70[0] = *&v46[2];
          *(v71 + 14) = *&v46[112];
          v71[0] = *&v46[98];
          v70[5] = *&v46[82];
          v70[4] = *&v46[66];
          if (sub_1001B1244(v58, v70))
          {
            v60[4] = *(&v47[4] + 2);
            v60[5] = *(&v47[5] + 2);
            v61[0] = *(&v47[6] + 2);
            *(v61 + 14) = *&v47[7];
            v60[0] = *(v47 + 2);
            v60[1] = *(&v47[1] + 2);
            v60[2] = *(&v47[2] + 2);
            v60[3] = *(&v47[3] + 2);
            v72[3] = *&v45[50];
            v72[2] = *&v45[34];
            v72[1] = *&v45[18];
            v72[0] = *&v45[2];
            *(v73 + 14) = *&v45[112];
            v73[0] = *&v45[98];
            v72[5] = *&v45[82];
            v72[4] = *&v45[66];
            if (sub_1001B1244(v60, v72))
            {
              v62[4] = *&v50[66];
              v62[5] = *&v50[82];
              v63[0] = *&v50[98];
              *(v63 + 14) = *&v50[112];
              v62[0] = *&v50[2];
              v62[1] = *&v50[18];
              v62[2] = *&v50[34];
              v62[3] = *&v50[50];
              v74[2] = *&v44[34];
              v74[3] = *&v44[50];
              v74[0] = *&v44[2];
              v74[1] = *&v44[18];
              *&v75[14] = *&v44[112];
              v74[5] = *&v44[82];
              *v75 = *&v44[98];
              v74[4] = *&v44[66];
              if (sub_1001B1244(v62, v74))
              {
                v41 = 1;
                return v41 & 1;
              }
            }
          }
        }
      }

LABEL_33:
      v41 = 0;
      return v41 & 1;
    }

    memcpy(v53, v5, 0x346uLL);
    memcpy(v47, v2, 0x346uLL);
    if (sub_1000218D8(v47) != 2)
    {
      goto LABEL_33;
    }

    v42 = sub_1000218E4(v47);
    memcpy(v48, v42, 0x346uLL);
    v41 = sub_1001B182C(v53, v48);
  }

  else
  {
    memcpy(v48, v5, 0x10DuLL);
    memcpy(v53, v2, 0x346uLL);
    if (sub_1000218D8(v53))
    {
      goto LABEL_33;
    }

    v40 = sub_1000218E4(v53);
    memcpy(v47, v40, 0x10DuLL);
    v41 = sub_1001B13C4(v48, v47);
  }

  return v41 & 1;
}

uint64_t sub_1001B22B0(uint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 8);
  v7 = *(a1 + 36);
  v8 = *(a1 + 37);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 36);
  v13 = *(a2 + 37);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_25;
  }

  if (v5)
  {
    if (!v9 || (v4 != v10 || v5 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v9)
  {
    goto LABEL_25;
  }

  if (v7)
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v14 = 0;
    if ((v12 & 1) != 0 || v6 != v11)
    {
      return v14 & 1;
    }
  }

  if (v8 != 4)
  {
    if (v8 == v13)
    {
      goto LABEL_20;
    }

LABEL_25:
    v14 = 0;
    return v14 & 1;
  }

  if (v13 != 4)
  {
    goto LABEL_25;
  }

LABEL_20:
  v15 = *(a1 + 7);
  v65 = *(a1 + 5);
  v66[0] = v15;
  *(v66 + 14) = *(a1 + 70);
  v16 = *(a2 + 56);
  v61 = *(a2 + 40);
  v62[0] = v16;
  *(v62 + 14) = *(a2 + 70);
  if ((sub_10010DD4C(&v65, &v61) & 1) == 0)
  {
    goto LABEL_25;
  }

  v17 = *(a1 + 6);
  v63 = *(a1 + 5);
  v64[0] = v17;
  *(v64 + 14) = *(a1 + 110);
  v18 = *(a2 + 96);
  v59 = *(a2 + 80);
  v60[0] = v18;
  *(v60 + 14) = *(a2 + 110);
  if ((sub_10010DD4C(&v63, &v59) & 1) == 0)
  {
    goto LABEL_25;
  }

  v19 = *(a1 + 25);
  v57[4] = *(a1 + 23);
  v57[5] = v19;
  v58[0] = *(a1 + 27);
  *(v58 + 14) = *(a1 + 230);
  v20 = *(a1 + 17);
  v57[0] = *(a1 + 15);
  v57[1] = v20;
  v21 = *(a1 + 21);
  v57[2] = *(a1 + 19);
  v57[3] = v21;
  v22 = *(a2 + 120);
  v23 = *(a2 + 136);
  v24 = *(a2 + 168);
  v55[2] = *(a2 + 152);
  v55[3] = v24;
  v55[0] = v22;
  v55[1] = v23;
  v25 = *(a2 + 184);
  v26 = *(a2 + 200);
  v27 = *(a2 + 216);
  *(v56 + 14) = *(a2 + 230);
  v55[5] = v26;
  v56[0] = v27;
  v55[4] = v25;
  if ((sub_1001B1244(v57, v55) & 1) == 0)
  {
    goto LABEL_25;
  }

  v28 = *(a1 + 20);
  v53[4] = *(a1 + 19);
  v53[5] = v28;
  v54[0] = *(a1 + 21);
  v29 = *(a1 + 16);
  v53[0] = *(a1 + 15);
  v53[1] = v29;
  v30 = *(a1 + 18);
  v53[2] = *(a1 + 17);
  v53[3] = v30;
  *(v54 + 14) = *(a1 + 350);
  v31 = *(a2 + 240);
  v32 = *(a2 + 256);
  v33 = *(a2 + 288);
  v51[2] = *(a2 + 272);
  v51[3] = v33;
  v51[0] = v31;
  v51[1] = v32;
  v34 = *(a2 + 304);
  v35 = *(a2 + 320);
  v36 = *(a2 + 336);
  *(v52 + 14) = *(a2 + 350);
  v51[5] = v35;
  v52[0] = v36;
  v51[4] = v34;
  if ((sub_1001B1244(v53, v51) & 1) == 0)
  {
    goto LABEL_25;
  }

  v37 = *(a1 + 55);
  v49[4] = *(a1 + 53);
  v49[5] = v37;
  v50[0] = *(a1 + 57);
  *(v50 + 14) = *(a1 + 470);
  v38 = *(a1 + 47);
  v49[0] = *(a1 + 45);
  v49[1] = v38;
  v39 = *(a1 + 51);
  v49[2] = *(a1 + 49);
  v49[3] = v39;
  v40 = *(a2 + 360);
  v41 = *(a2 + 376);
  v42 = *(a2 + 408);
  v47[2] = *(a2 + 392);
  v47[3] = v42;
  v47[0] = v40;
  v47[1] = v41;
  v43 = *(a2 + 424);
  v44 = *(a2 + 440);
  v45 = *(a2 + 456);
  *&v48[14] = *(a2 + 470);
  v47[5] = v44;
  *v48 = v45;
  v47[4] = v43;
  v14 = sub_1001B1244(v49, v47);
  return v14 & 1;
}

uint64_t sub_1001B2584(void *a1, void *a2)
{
  v4 = type metadata accessor for MeasurementCapture(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000F974(&unk_1004ABAD0, &qword_1003D7070);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_10000F974(&qword_1004A4AF0, &qword_1003D8EF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_15;
  }

  v29 = v10;
  v27 = v7;
  v28 = type metadata accessor for MeasurementHistoryItem(0);
  v14 = *(v28 + 24);
  v15 = *(v11 + 48);
  sub_10006C92C(a1 + v14, v13, &unk_1004ABAD0, &qword_1003D7070);
  sub_10006C92C(a2 + v14, &v13[v15], &unk_1004ABAD0, &qword_1003D7070);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_100018F04(v13, &unk_1004ABAD0, &qword_1003D7070);
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  v19 = v29;
  sub_10006C92C(v13, v29, &unk_1004ABAD0, &qword_1003D7070);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1001B2928(v19);
LABEL_13:
    v20 = &qword_1004A4AF0;
    v21 = &qword_1003D8EF0;
LABEL_14:
    sub_100018F04(v13, v20, v21);
    goto LABEL_15;
  }

  v23 = &v13[v15];
  v24 = v27;
  sub_1000390F0(v23, v27);
  if ((static URL.== infix(_:_:)() & 1) == 0)
  {
    sub_1001B2928(v24);
    sub_1001B2928(v19);
    v20 = &unk_1004ABAD0;
    v21 = &qword_1003D7070;
    goto LABEL_14;
  }

  v25 = static URL.== infix(_:_:)();
  sub_1001B2928(v24);
  sub_1001B2928(v19);
  sub_100018F04(v13, &unk_1004ABAD0, &qword_1003D7070);
  if ((v25 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  v17 = v28;
  memcpy(v30, a1 + *(v28 + 28), 0x346uLL);
  memcpy(v31, a2 + *(v28 + 28), sizeof(v31));
  if ((sub_1001B1C78(v30) & 1) == 0)
  {
LABEL_15:
    v18 = 0;
    return v18 & 1;
  }

  v18 = *(a1 + *(v17 + 32)) ^ *(a2 + *(v17 + 32)) ^ 1;
  return v18 & 1;
}

uint64_t sub_1001B2928(uint64_t a1)
{
  v2 = type metadata accessor for MeasurementCapture(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1001B2984(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1001B29B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 118))
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

uint64_t sub_1001B29F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 116) = 0;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 118) = 1;
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

    *(result + 118) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B2A74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 838))
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

uint64_t sub_1001B2ABC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 824) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 836) = 0;
    *(result + 832) = 0;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 838) = 1;
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

    *(result + 838) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B2BF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 478))
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

uint64_t sub_1001B2C40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 476) = 0;
    *(result + 472) = 0;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 478) = 1;
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

    *(result + 478) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B2D18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 269))
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

uint64_t sub_1001B2D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 268) = 0;
    *(result + 264) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 269) = 1;
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

    *(result + 269) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B2E08(__n128 a1)
{
  result = Contexts.UIKit.init()();
  qword_1004D5418 = result;
  return result;
}

id sub_1001B2E28@<X0>(void *a1@<X8>)
{
  if (qword_1004A0838 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_1004D5418;
  *a1 = qword_1004D5418;

  return v2;
}

unint64_t sub_1001B2E98(uint64_t a1)
{
  result = sub_1001B2EC0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001B2EC0()
{
  result = qword_1004AF000;
  if (!qword_1004AF000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF000);
  }

  return result;
}

id sub_1001B2F18(id result)
{
  v2 = OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled;
  v3 = *(v1 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled);
  *(v1 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled) = result;
  if (v3 != (result & 1))
  {
    if (*(v1 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton))
    {
      [*(v1 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton) setEnabled:result & 1];
    }

    result = *(v1 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoBarButtonItem);
    if (result)
    {
      v4 = *(v1 + v2);

      return [result setEnabled:v4];
    }
  }

  return result;
}

char *sub_1001B2FB4(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for _Glass();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton] = 0;
  *&v4[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoBarButtonItem] = 0;
  v4[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled] = 0;
  v60.receiver = v4;
  v60.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v60, "init");
  if ([objc_opt_self() jasperAvailable] & 1) != 0 || (sub_100018630(0, &qword_1004A1930, UIDevice_ptr), (static UIDevice.isIPad()()))
  {
    v57 = v12;
    v58 = v11;
    v16 = [objc_allocWithZone(UIButton) initWithFrame:{a1, a2, a3, a4}];
    v17 = OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton;
    v18 = *&v15[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
    *&v15[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton] = v16;

    v19 = *&v15[v17];
    if (v19)
    {
      v20 = v19;
      v21 = String._bridgeToObjectiveC()();
      v22 = [objc_opt_self() systemImageNamed:v21];

      [v20 setImage:v22 forState:0];
      v23 = *&v15[v17];
      if (v23)
      {
        [v23 addTarget:v15 action:"undoFrom:" forControlEvents:64];
        v24 = *&v15[v17];
        if (v24)
        {
          v59[0] = ObjectType;
          swift_getMetatypeMetadata();
          v25 = v24;
          String.init<A>(describing:)();
          v26 = String._bridgeToObjectiveC()();

          [v25 setAccessibilityIdentifier:v26];

          v27 = *&v15[v17];
          if (v27)
          {
            v28 = [v27 layer];
            [v28 setMasksToBounds:1];

            v29 = *&v15[v17];
            if (v29)
            {
              v30 = [v29 layer];
              v61.origin.x = a1;
              v61.origin.y = a2;
              v61.size.width = a3;
              v61.size.height = a4;
              [v30 setCornerRadius:CGRectGetWidth(v61) * 0.5];

              v31 = *&v15[v17];
              if (v31)
              {
                v32 = objc_opt_self();
                v33 = v31;
                v34 = [v32 whiteColor];
                [v33 setTintColor:v34];

                v35 = *&v15[v17];
                if (v35)
                {
                  v36 = v35;
                  static _Glass._GlassVariant.regular.getter();
                  _Glass.init(_:smoothness:)();
                  v37 = v58;
                  v59[3] = v58;
                  v59[4] = &protocol witness table for _Glass;
                  sub_1000315D4(v59);
                  _Glass.flexible(_:)();
                  (*(v57 + 8))(v14, v37);
                  UIView._background.setter();

                  v38 = *&v15[v17];
                  if (v38)
                  {
                    v39 = objc_allocWithZone(UIPointerInteraction);
                    v40 = v38;
                    v41 = [v39 initWithDelegate:v15];
                    [v40 addInteraction:v41];
LABEL_16:
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v42 = String._bridgeToObjectiveC()();
    v43 = [objc_opt_self() systemImageNamed:v42];

    v44 = [objc_allocWithZone(UIBarButtonItem) initWithImage:v43 style:0 target:v15 action:"undoFrom:"];
    v45 = OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoBarButtonItem;
    v46 = *&v15[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoBarButtonItem];
    *&v15[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoBarButtonItem] = v44;

    v47 = *&v15[v45];
    if (v47)
    {
      v59[0] = ObjectType;
      swift_getMetatypeMetadata();
      v48 = v47;
      String.init<A>(describing:)();
      v49 = String._bridgeToObjectiveC()();

      [v48 setAccessibilityIdentifier:v49];

      v50 = *&v15[v45];
      if (v50)
      {
        [v50 setEnabled:0];
        v51 = *&v15[v45];
        if (v51)
        {
          v52 = objc_opt_self();
          v40 = v51;
          v41 = [v52 whiteColor];
          [v40 setTintColor:v41];
          goto LABEL_16;
        }
      }
    }
  }

  v53 = *&v15[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton];
  if (v53)
  {
    [v53 setEnabled:v15[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled]];
  }

  v54 = *&v15[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoBarButtonItem];
  if (v54)
  {
    [v54 setEnabled:v15[OBJC_IVAR____TtC7Measure18UndoButtonSolarium_isEnabled]];
  }

  return v15;
}

double sub_1001B3778()
{
  v1 = v0 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  if (qword_1004A02A8 != -1)
  {
    swift_once();
  }

  v4._object = 0x800000010040CBA0;
  v4._countAndFlagsBits = 0xD000000000000013;
  Log.default(_:isPrivate:)(v4, 0);
  if (qword_1004A0350 != -1)
  {
    swift_once();
  }

  v5 = qword_1004D4F08 + OBJC_IVAR____TtC7Measure14MetricsManager_measurementState;
  swift_beginAccess();
  result = *(v5 + 8) + 1.0;
  *(v5 + 8) = result;
  return result;
}

uint64_t sub_1001B38A8()
{
  v1 = sub_10000F974(&qword_1004A2D60, &unk_1003DEA40);
  __chkstk_darwin(v1 - 8);
  v3 = &v22 - v2;
  v4 = type metadata accessor for UIPointerEffect();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC7Measure18UndoButtonSolarium_undoButton);
  if (!v8)
  {
    return 0;
  }

  v9 = objc_allocWithZone(UIPreviewParameters);
  v10 = v8;
  v11 = [v9 init];
  v12 = v10;
  [v12 bounds];
  CGRect.center.getter();
  [v12 bounds];
  CGRect.init(centerPoint:size:)();
  v17 = [objc_opt_self() bezierPathWithOvalInRect:{v13, v14, v15, v16}];
  [v11 setVisiblePath:v17];

  sub_100018630(0, &qword_1004AF060, UIPointerStyle_ptr);
  v18 = [objc_allocWithZone(UITargetedPreview) initWithView:v12 parameters:v11];

  *v7 = v18;
  (*(v5 + 104))(v7, enum case for UIPointerEffect.lift(_:), v4);
  v19 = type metadata accessor for UIPointerShape();
  (*(*(v19 - 8) + 56))(v3, 1, 1, v19);
  v20 = UIPointerStyle.init(effect:shape:)();

  return v20;
}

void sub_1001B3B54(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7Measure14TapToRadarView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC7Measure14TapToRadarView_rtlFormat;
  v11 = [objc_opt_self() sharedApplication];
  v12 = [v11 userInterfaceLayoutDirection];

  v4[v10] = v12 == 1;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v14 = String._bridgeToObjectiveC()();
  v15 = [objc_opt_self() imageNamed:v14];

  if (v15)
  {
    [v13 setImage:v15 forState:0];
  }

  v16 = v13;
  [v16 addTarget:v16 action:"fileRadar" forControlEvents:64];
  [v16 sizeToFit];
  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1001B454C;
  *(v19 + 24) = v18;
  v23[4] = sub_100031688;
  v23[5] = v19;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 1107296256;
  v23[2] = sub_1000DC708;
  v23[3] = &unk_100472258;
  v20 = _Block_copy(v23);
  v21 = v16;

  [v17 performWithoutAnimation:v20];
  _Block_release(v20);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v22 = [objc_opt_self() defaultCenter];
    [v22 addObserver:v21 selector:"updateForCurrentOrientation" name:UIDeviceOrientationDidChangeNotification object:0];
  }
}

void sub_1001B3E78()
{
  v1 = v0;
  v2 = [v0 superview];
  if (!v2)
  {
    return;
  }

  v3 = v2;
  [v2 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (qword_1004A0528 != -1)
  {
    swift_once();
  }

  v12 = *&qword_1004D5098;
  v13 = [objc_opt_self() currentDevice];
  v14 = [v13 orientation];

  v15 = 0.0;
  if (v14 > 2)
  {
    if (v14 != 3)
    {
      v16 = 0.0;
      v17 = 0.0;
      if (v14 == 4)
      {
        [v1 frame];
        v17 = v9 + v19 * -0.5 - (v12 + v12);
        if (*(v1 + OBJC_IVAR____TtC7Measure14TapToRadarView_rtlFormat))
        {
          v16 = v9 + v12;
        }

        else
        {
          v16 = v12;
        }

        v15 = -*CGFloat.piDiv2.unsafeMutableAddressor();
      }

      goto LABEL_22;
    }

    v16 = v12;
    if ((*(v1 + OBJC_IVAR____TtC7Measure14TapToRadarView_rtlFormat) & 1) == 0)
    {
      [v1 frame];
      v16 = v11 + v23 * -0.5 - (v12 + v12);
    }

    v15 = *CGFloat.piDiv2.unsafeMutableAddressor();
    goto LABEL_21;
  }

  if (v14 == 1)
  {
    v30.origin.x = v5;
    v30.origin.y = v7;
    v30.size.width = v9;
    v30.size.height = v11;
    Height = CGRectGetHeight(v30);
    [v1 frame];
    v16 = Height + v21 * -0.5 - (v12 + v12);
    if ((*(v1 + OBJC_IVAR____TtC7Measure14TapToRadarView_rtlFormat) & 1) == 0)
    {
      [v1 frame];
      v17 = v9 + v22 * -0.5 - (v12 + v12);
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v16 = 0.0;
  v17 = 0.0;
  if (v14 == 2)
  {
    v15 = 3.14159265;
    if (*(v1 + OBJC_IVAR____TtC7Measure14TapToRadarView_rtlFormat) == 1)
    {
      [v1 frame];
      v17 = v9 + v18 * -0.5 - (v12 + v12);
      v16 = v12;
      goto LABEL_22;
    }

    v16 = v12;
LABEL_21:
    v17 = v12;
  }

LABEL_22:
  sub_10000FB70();
  if (static UIDevice.isIPhone()())
  {
    if (*(v1 + OBJC_IVAR____TtC7Measure14TapToRadarView_rtlFormat) == 1)
    {
      [v1 frame];
      v12 = v9 - v24 - v12;
    }

    [v1 frame];
    [v1 setFrame:{v12, v11 + -500.0}];
  }

  else
  {
    [v1 frame];
    [v1 setFrame:{v17, v16}];
  }

  v25 = objc_opt_self();
  v26 = swift_allocObject();
  *(v26 + 16) = v1;
  *(v26 + 24) = v15;
  v29[4] = sub_1001B44F0;
  v29[5] = v26;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1107296256;
  v29[2] = sub_100041180;
  v29[3] = &unk_1004721E0;
  v27 = _Block_copy(v29);
  v28 = v1;

  [v25 animateWithDuration:0 delay:v27 options:0 animations:0.25 completion:0.25];
  _Block_release(v27);
}

void sub_1001B43B4(void *a1, CGFloat a2)
{
  v3 = [a1 layer];
  CGAffineTransformMakeRotation(&v4, a2);
  *&m.a = *&v4.m11;
  *&m.c = *&v4.m13;
  *&m.tx = *&v4.m21;
  CATransform3DMakeAffineTransform(&v4, &m);
  [v3 setTransform:&v4];
}

uint64_t sub_1001B44B8()
{

  return _swift_deallocObject(v0, 32, 7);
}

double sub_1001B44FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1001B4514()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1001B4588()
{
  v1 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_sketchView];
  v2 = objc_opt_self();
  v3 = [v2 lightGrayColor];
  [v1 setBackgroundColor:v3];

  v4 = [objc_opt_self() currentTraitCollection];
  v5 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = UIContentSizeCategory.isAccessibilityCategory.getter();
  v125 = v1;
  v126 = v0;
  if ((v4 & 1) == 0)
  {
    v87 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_cellTitle];
    v88 = objc_opt_self();
    v89 = [v88 preferredFontForTextStyle:UIFontTextStyleBody];
    v90 = [v89 fontDescriptor];

    v91 = [v90 fontDescriptorWithSymbolicTraits:2];
    if (!v91)
    {
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v92 = [v88 fontWithDescriptor:v91 size:0.0];

    [v87 setFont:v92];
    v93 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_lengthLabels];
    v94 = &unk_1004A6000;
    v95 = OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_marginConstraints;
    swift_beginAccess();
    v124 = v93;
    v96 = *(v93 + v95);
    if (v96 >> 62)
    {
      goto LABEL_53;
    }

    for (i = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {

      if (i)
      {
        break;
      }

LABEL_24:

      v96 = *&v126[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_widthLabels];
      v102 = v94[22];
      swift_beginAccess();
      v103 = *(v96 + v102);
      v104 = v94;
      if (v103 >> 62)
      {
        v105 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v105 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v105)
      {
        v106 = 0;
        v94 = (v103 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v103 & 0xC000000000000001) != 0)
          {
            v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v106 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_50;
            }

            v107 = *(v103 + 8 * v106 + 32);
          }

          v108 = v107;
          v109 = v106 + 1;
          if (__OFADD__(v106, 1))
          {
            break;
          }

          [v107 setConstant:0.0];

          ++v106;
          if (v109 == v105)
          {
            goto LABEL_35;
          }
        }

LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

LABEL_35:

      v110 = *&v126[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_heightLabels];
      v111 = v104[22];
      swift_beginAccess();
      v112 = *(v110 + v111);
      if (v112 >> 62)
      {
        v113 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v113 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v113)
      {
LABEL_46:

        v117 = [v126 contentView];
        [v117 addSubview:v125];

        v118 = [v126 contentView];
        [v118 addSubview:v87];

        v119 = [v126 contentView];
        [v119 addSubview:v124];

        v120 = [v126 contentView];
        [v120 addSubview:v96];

        v121 = [v126 contentView];
        [v121 addSubview:v110];

        return;
      }

      v114 = 0;
      while (1)
      {
        if ((v112 & 0xC000000000000001) != 0)
        {
          v115 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v114 >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v115 = *(v112 + 8 * v114 + 32);
        }

        v94 = v115;
        v116 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          break;
        }

        [v115 setConstant:0.0];

        ++v114;
        if (v116 == v113)
        {
          goto LABEL_46;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      ;
    }

    v98 = 0;
    while (1)
    {
      if ((v96 & 0xC000000000000001) != 0)
      {
        v99 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v98 >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v99 = *(v96 + 8 * v98 + 32);
      }

      v100 = v99;
      v101 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      [v99 setConstant:0.0];

      ++v98;
      if (v101 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v6 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleCellTitle];
  v7 = OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label;
  v8 = *(v6 + OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label);
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
  v12 = [v11 fontDescriptor];

  v13 = [v12 fontDescriptorWithSymbolicTraits:2];
  if (!v13)
  {
    __break(1u);
    goto LABEL_57;
  }

  v14 = [v9 fontWithDescriptor:v13 size:0.0];

  [v10 setFont:v14];
  v123 = v6;
  v15 = *(v6 + v7);
  v16 = [v2 labelColor];
  [v15 setTextColor:v16];

  v17 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleLengthLabel];
  v18 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
  v19 = *(v17 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v20 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
  v21 = [v20 fontDescriptor];

  v22 = [v21 fontDescriptorWithSymbolicTraits:2];
  if (!v22)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v23 = [v9 fontWithDescriptor:v22 size:0.0];

  [v19 setFont:v23];
  v24 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
  v25 = *(v17 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v26 = [v9 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v25 setFont:v26];

  v27 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
  v28 = *(v17 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v29 = [v9 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v30 = [v29 fontDescriptor];

  v31 = [v30 fontDescriptorWithSymbolicTraits:2];
  if (!v31)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v32 = [v9 fontWithDescriptor:v31 size:0.0];

  [v28 setFont:v32];
  v33 = *(v17 + v18);
  v34 = [v2 secondaryLabelColor];
  [v33 setTextColor:v34];

  v35 = *(v17 + v24);
  v36 = [v2 labelColor];
  [v35 setTextColor:v36];

  v122 = v17;
  v37 = *(v17 + v27);
  v38 = [v2 secondaryLabelColor];
  [v37 setTextColor:v38];

  v39 = *&v126[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleWidthLabel];
  v40 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
  v41 = *(v39 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v42 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
  v43 = [v42 fontDescriptor];

  v44 = [v43 fontDescriptorWithSymbolicTraits:2];
  if (!v44)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v45 = [v9 fontWithDescriptor:v44 size:0.0];

  [v41 setFont:v45];
  v46 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
  v47 = *(v39 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v48 = [v9 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v47 setFont:v48];

  v49 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
  v50 = *(v39 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v51 = [v9 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v52 = [v51 fontDescriptor];

  v53 = [v52 fontDescriptorWithSymbolicTraits:2];
  if (!v53)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v54 = [v9 fontWithDescriptor:v53 size:0.0];

  [v50 setFont:v54];
  v55 = *(v39 + v40);
  v56 = [v2 secondaryLabelColor];
  [v55 setTextColor:v56];

  v57 = *(v39 + v46);
  v58 = [v2 labelColor];
  [v57 setTextColor:v58];

  v59 = *(v39 + v49);
  v60 = [v2 secondaryLabelColor];
  [v59 setTextColor:v60];

  v61 = *&v126[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleHeightLabel];
  v62 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
  v63 = *(v61 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
  v64 = [v9 preferredFontForTextStyle:UIFontTextStyleBody];
  v65 = [v64 fontDescriptor];

  v66 = [v65 fontDescriptorWithSymbolicTraits:2];
  if (!v66)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v67 = [v9 fontWithDescriptor:v66 size:0.0];

  [v63 setFont:v67];
  v68 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
  v69 = *(v61 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
  v70 = [v9 preferredFontForTextStyle:UIFontTextStyleLargeTitle];
  [v69 setFont:v70];

  v71 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
  v72 = *(v61 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
  v73 = [v9 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v74 = [v73 fontDescriptor];

  v75 = [v74 fontDescriptorWithSymbolicTraits:2];
  if (!v75)
  {
LABEL_63:
    __break(1u);
    return;
  }

  v76 = [v9 fontWithDescriptor:v75 size:0.0];

  [v72 setFont:v76];
  v77 = *(v61 + v62);
  v78 = [v2 secondaryLabelColor];
  [v77 setTextColor:v78];

  v79 = *(v61 + v68);
  v80 = [v2 labelColor];
  [v79 setTextColor:v80];

  v81 = *(v61 + v71);
  v82 = [v2 secondaryLabelColor];
  [v81 setTextColor:v82];

  v83 = [v126 contentView];
  [v83 addSubview:v125];

  v84 = [v126 contentView];
  [v84 addSubview:v123];

  v85 = [v126 contentView];
  [v85 addSubview:v122];

  v86 = [v126 contentView];
  [v86 addSubview:v39];

  v127 = [v126 contentView];
  [v127 addSubview:v61];
}

void sub_1001B54F0()
{
  v1 = [objc_opt_self() currentTraitCollection];
  v2 = [v1 preferredContentSizeCategory];

  LOBYTE(v1) = UIContentSizeCategory.isAccessibilityCategory.getter();
  if (v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_sketchView];
    [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
    v4 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleCellTitle];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v115 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleLengthLabel];
    [v115 setTranslatesAutoresizingMaskIntoConstraints:0];
    v117 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleWidthLabel];
    [v117 setTranslatesAutoresizingMaskIntoConstraints:0];
    v120 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleHeightLabel];
    [v120 setTranslatesAutoresizingMaskIntoConstraints:0];
    v119 = objc_opt_self();
    sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1003E27D0;
    v6 = [v3 leadingAnchor];
    v7 = [v0 contentView];
    v8 = [v7 leadingAnchor];

    v9 = [v6 constraintEqualToAnchor:v8 constant:16.0];
    *(v5 + 32) = v9;
    v10 = [v3 topAnchor];
    v11 = [v0 contentView];
    v12 = [v11 topAnchor];

    v13 = [v10 constraintEqualToAnchor:v12 constant:16.0];
    *(v5 + 40) = v13;
    v14 = [v3 widthAnchor];
    v15 = [v14 constraintEqualToConstant:56.0];

    *(v5 + 48) = v15;
    v16 = [v3 heightAnchor];
    v17 = [v3 widthAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];

    *(v5 + 56) = v18;
    v19 = [v4 leadingAnchor];
    v20 = [v0 contentView];
    v21 = [v20 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor:v21 constant:16.0];
    *(v5 + 64) = v22;
    v23 = [v4 topAnchor];
    v24 = [v3 bottomAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:16.0];

    *(v5 + 72) = v25;
    v26 = [v4 trailingAnchor];
    v27 = [v0 contentView];
    v28 = [v27 trailingAnchor];

    v29 = [v26 constraintEqualToAnchor:v28];
    *(v5 + 80) = v29;
    v30 = [v115 leadingAnchor];
    v31 = [v0 contentView];
    v32 = [v31 leadingAnchor];

    v33 = [v30 constraintEqualToAnchor:v32 constant:16.0];
    *(v5 + 88) = v33;
    v34 = [v115 topAnchor];
    v35 = [v4 bottomAnchor];
    v36 = 20.0;
    v37 = [v34 constraintEqualToAnchor:v35 constant:20.0];

    *(v5 + 96) = v37;
    v38 = [v115 trailingAnchor];
    v39 = [v0 contentView];
    v40 = [v39 trailingAnchor];

    v41 = [v38 constraintEqualToAnchor:v40];
    *(v5 + 104) = v41;
    v42 = v117;
    v43 = [v117 leadingAnchor];
    v44 = [v0 contentView];
    v45 = [v44 leadingAnchor];

    v46 = [v43 constraintEqualToAnchor:v45 constant:16.0];
    v47 = v120;
    *(v5 + 112) = v46;
    v48 = [v117 topAnchor];
    v49 = [v115 bottomAnchor];
    v50 = [v48 constraintEqualToAnchor:v49 constant:20.0];

    *(v5 + 120) = v50;
    v51 = [v117 trailingAnchor];
    v52 = [v0 contentView];
    v53 = [v52 trailingAnchor];

    v54 = [v51 constraintEqualToAnchor:v53];
    *(v5 + 128) = v54;
    v55 = [v120 leadingAnchor];
    v56 = [v0 contentView];
    v57 = [v56 leadingAnchor];
  }

  else
  {
    v58 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_cellTitle];
    [v58 setTranslatesAutoresizingMaskIntoConstraints:0];
    v59 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_sketchView];
    [v59 setTranslatesAutoresizingMaskIntoConstraints:0];
    v116 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_lengthLabels];
    [v116 setTranslatesAutoresizingMaskIntoConstraints:0];
    v118 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_widthLabels];
    [v118 setTranslatesAutoresizingMaskIntoConstraints:0];
    v121 = *&v0[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_heightLabels];
    [v121 setTranslatesAutoresizingMaskIntoConstraints:0];
    v119 = objc_opt_self();
    sub_10000F974(&unk_1004A3F10, &unk_1003D6230);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1003E27D0;
    v60 = [v59 leadingAnchor];
    v61 = [v0 contentView];
    v62 = [v61 leadingAnchor];

    v36 = 16.0;
    v63 = [v60 constraintEqualToAnchor:v62 constant:16.0];

    *(v5 + 32) = v63;
    v64 = [v59 topAnchor];
    v65 = [v0 contentView];
    v66 = [v65 topAnchor];

    v67 = [v64 constraintEqualToAnchor:v66 constant:16.0];
    *(v5 + 40) = v67;
    v68 = [v59 widthAnchor];
    v69 = [v68 constraintEqualToConstant:56.0];

    *(v5 + 48) = v69;
    v70 = [v59 heightAnchor];
    v71 = [v59 widthAnchor];
    v72 = [v70 constraintEqualToAnchor:v71];

    *(v5 + 56) = v72;
    v73 = [v58 leadingAnchor];
    v74 = [v59 trailingAnchor];
    v75 = [v73 constraintEqualToAnchor:v74 constant:16.0];

    *(v5 + 64) = v75;
    v76 = [v58 topAnchor];
    v77 = [v0 contentView];
    v78 = [v77 topAnchor];

    v79 = [v76 constraintEqualToAnchor:v78 constant:12.0];
    *(v5 + 72) = v79;
    v80 = [v58 trailingAnchor];
    v81 = [*&v116[OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels] leadingAnchor];
    v82 = [v80 constraintEqualToAnchor:v81 constant:-16.0];

    *(v5 + 80) = v82;
    v83 = [v116 leadingAnchor];
    v84 = [v59 trailingAnchor];
    v85 = [v83 constraintEqualToAnchor:v84 constant:16.0];

    *(v5 + 88) = v85;
    v86 = [v116 topAnchor];
    v87 = [v58 bottomAnchor];
    v88 = [v86 constraintEqualToAnchor:v87 constant:16.0];

    *(v5 + 96) = v88;
    v89 = [v116 trailingAnchor];
    v90 = [v0 contentView];
    v91 = [v90 trailingAnchor];

    v92 = [v89 constraintEqualToAnchor:v91];
    *(v5 + 104) = v92;
    v42 = v118;
    v93 = [v118 leadingAnchor];
    v94 = [v59 trailingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94 constant:16.0];

    *(v5 + 112) = v95;
    v96 = [v118 topAnchor];
    v97 = [v116 bottomAnchor];
    v98 = [v96 constraintEqualToAnchor:v97 constant:16.0];

    *(v5 + 120) = v98;
    v99 = [v118 trailingAnchor];
    v100 = [v0 contentView];
    v101 = [v100 trailingAnchor];

    v102 = [v99 constraintEqualToAnchor:v101];
    v47 = v121;
    *(v5 + 128) = v102;
    v55 = [v121 leadingAnchor];
    v57 = [v59 trailingAnchor];
  }

  v103 = [v55 constraintEqualToAnchor:v57 constant:16.0];

  *(v5 + 136) = v103;
  v104 = [v47 topAnchor];
  v105 = [v42 bottomAnchor];
  v106 = [v104 constraintEqualToAnchor:v105 constant:v36];

  *(v5 + 144) = v106;
  v107 = [v47 trailingAnchor];
  v108 = [v0 contentView];
  v109 = [v108 trailingAnchor];

  v110 = [v107 constraintEqualToAnchor:v109];
  *(v5 + 152) = v110;
  v111 = [v47 bottomAnchor];
  v112 = [v0 contentView];
  v113 = [v112 bottomAnchor];

  v114 = [v111 constraintEqualToAnchor:v113 constant:-16.0];
  *(v5 + 160) = v114;
  sub_100022180();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v119 activateConstraints:isa];
}

id sub_1001B64C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_sketchView;
  type metadata accessor for SketchObject();
  *&v3[v7] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_cellTitle;
  *&v3[v8] = [objc_allocWithZone(UILabel) init];
  v9 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_lengthLabels;
  v10 = type metadata accessor for MeasureTableViewCellCommonContentView();
  *&v3[v9] = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_widthLabels;
  *&v3[v11] = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_heightLabels;
  *&v3[v12] = [objc_allocWithZone(v10) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleCellTitle;
  *&v3[v13] = [objc_allocWithZone(type metadata accessor for AccessibilitySingleStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleLengthLabel;
  v15 = type metadata accessor for AccessibilityTripleStack();
  *&v3[v14] = [objc_allocWithZone(v15) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v16 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleWidthLabel;
  *&v3[v16] = [objc_allocWithZone(v15) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v17 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleHeightLabel;
  *&v3[v17] = [objc_allocWithZone(v15) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (a3)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v22.receiver = v3;
  v22.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v22, "initWithStyle:reuseIdentifier:", a1, v18);

  v20 = v19;
  sub_1001B4588();
  sub_1001B54F0();

  return v20;
}

id sub_1001B6754(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_sketchView;
  type metadata accessor for SketchObject();
  *&v1[v4] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_cellTitle;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_lengthLabels;
  v7 = type metadata accessor for MeasureTableViewCellCommonContentView();
  *&v1[v6] = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v8 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_widthLabels;
  *&v1[v8] = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v9 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_heightLabels;
  *&v1[v9] = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleCellTitle;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for AccessibilitySingleStack()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleLengthLabel;
  v12 = type metadata accessor for AccessibilityTripleStack();
  *&v1[v11] = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v13 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleWidthLabel;
  *&v1[v13] = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleHeightLabel;
  *&v1[v14] = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v19.receiver = v1;
  v19.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v19, "initWithCoder:", a1);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    sub_1001B4588();
    sub_1001B54F0();
  }

  return v16;
}

uint64_t sub_1001B6990(uint64_t a1)
{
  v3 = type metadata accessor for MeasurementHistoryItem(0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v139 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100023338(a1, v6);
  memcpy(v157, &v6[*(v4 + 36)], 0x346uLL);
  if (sub_1000218D8(v157) == 2)
  {
    v7 = sub_10007CD94(v157);
    v8 = [objc_opt_self() currentTraitCollection];
    v9 = [v8 preferredContentSizeCategory];

    LOBYTE(v8) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v150 = v6;
    if (v8)
    {
      v10 = *&v1[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleCellTitle];
      v11 = OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label;
      v12 = *(v10 + OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label);
      v13 = String._bridgeToObjectiveC()();
      [v12 setText:v13];

      v14 = *(v10 + v11);
      v15 = String._bridgeToObjectiveC()();
      [v14 setAccessibilityLabel:v15];

      v149 = v1;
      v16 = *&v1[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleLengthLabel];
      v17 = objc_opt_self();
      v18 = [v17 mainBundle];
      v158._object = 0xE000000000000000;
      v19._countAndFlagsBits = 0x4C5F5443454A424FLL;
      v19._object = 0xED00004854474E45;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v158._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v19, 0, v18, v20, v158);

      v148 = v17;
      v21 = [v17 mainBundle];
      v159._object = 0xE000000000000000;
      v22._countAndFlagsBits = 0x4C5F5443454A424FLL;
      v22._object = 0xED00004854474E45;
      v23._countAndFlagsBits = 0;
      v23._object = 0xE000000000000000;
      v159._countAndFlagsBits = 0;
      object = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v159)._object;

      v25 = *(v7 + 40);
      v142 = *(v7 + 48);
      v143 = v25;
      v26 = *(v7 + 56);
      v27 = *(v7 + 64);
      v28 = *(v7 + 80);
      v144 = *(v7 + 88);
      v145 = v28;
      v30 = *(v7 + 96);
      v29 = *(v7 + 104);
      v140 = v26;
      v141 = v30;
      v146 = v29;
      v31 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v32 = *(v16 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
      v33 = String._bridgeToObjectiveC()();

      [v32 setText:v33];

      v34 = *(v16 + v31);
      v147 = object;
      v35 = String._bridgeToObjectiveC()();
      [v34 setAccessibilityLabel:v35];

      v36 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v37 = *(v16 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
      v38 = String._bridgeToObjectiveC()();
      [v37 setText:v38];

      v39 = *(v16 + v36);
      if (v27)
      {
        v27 = String._bridgeToObjectiveC()();
      }

      [v39 setAccessibilityLabel:v27];

      v40 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v41 = *(v16 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
      v42 = String._bridgeToObjectiveC()();
      [v41 setText:v42];

      v43 = *(v16 + v40);
      if (v146)
      {
        v44 = String._bridgeToObjectiveC()();
      }

      else
      {
        v44 = 0;
      }

      v77 = v149;
      [v43 setAccessibilityLabel:v44];

      v78 = *&v77[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleWidthLabel];
      v79 = v148;
      v80 = [v148 mainBundle];
      v163._object = 0xE000000000000000;
      v81._countAndFlagsBits = 0x575F5443454A424FLL;
      v81._object = 0xEC00000048544449;
      v82._countAndFlagsBits = 0;
      v82._object = 0xE000000000000000;
      v163._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v81, 0, v80, v82, v163);

      v83 = [v79 mainBundle];
      v164._object = 0xE000000000000000;
      v84._countAndFlagsBits = 0x4C5F5443454A424FLL;
      v84._object = 0xED00004854474E45;
      v85._countAndFlagsBits = 0;
      v85._object = 0xE000000000000000;
      v164._countAndFlagsBits = 0;
      v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, v83, v85, v164)._object;

      v87 = *(v7 + 160);
      v142 = *(v7 + 168);
      v143 = v87;
      v88 = *(v7 + 176);
      v89 = *(v7 + 184);
      v90 = *(v7 + 200);
      v144 = *(v7 + 208);
      v145 = v90;
      v92 = *(v7 + 216);
      v91 = *(v7 + 224);
      v140 = v88;
      v141 = v92;
      v146 = v91;
      v93 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v94 = *(v78 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
      v95 = String._bridgeToObjectiveC()();

      [v94 setText:v95];

      v96 = *(v78 + v93);
      v147 = v86;
      v97 = String._bridgeToObjectiveC()();
      [v96 setAccessibilityLabel:v97];

      v98 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v99 = *(v78 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
      v100 = String._bridgeToObjectiveC()();
      [v99 setText:v100];

      v101 = *(v78 + v98);
      if (v89)
      {
        v89 = String._bridgeToObjectiveC()();
      }

      [v101 setAccessibilityLabel:v89];

      v102 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v103 = *(v78 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
      v104 = String._bridgeToObjectiveC()();
      [v103 setText:v104];

      v105 = *(v78 + v102);
      if (v146)
      {
        v106 = String._bridgeToObjectiveC()();
      }

      else
      {
        v106 = 0;
      }

      v107 = v149;
      [v105 setAccessibilityLabel:v106];

      v108 = *&v107[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleHeightLabel];
      v109 = v148;
      v110 = [v148 mainBundle];
      v165._object = 0xE000000000000000;
      v111._countAndFlagsBits = 0x485F5443454A424FLL;
      v111._object = 0xED00005448474945;
      v112._countAndFlagsBits = 0;
      v112._object = 0xE000000000000000;
      v165._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v111, 0, v110, v112, v165);

      v113 = [v109 mainBundle];
      v166._object = 0xE000000000000000;
      v114._countAndFlagsBits = 0x485F5443454A424FLL;
      v114._object = 0xED00005448474945;
      v115._countAndFlagsBits = 0;
      v115._object = 0xE000000000000000;
      v166._countAndFlagsBits = 0;
      v116 = NSLocalizedString(_:tableName:bundle:value:comment:)(v114, 0, v113, v115, v166)._object;

      v117 = *(v7 + 296);
      v118 = *(v7 + 304);
      v120 = *(v7 + 320);
      v119 = *(v7 + 328);
      v145 = *(v7 + 288);
      v146 = v119;
      v122 = *(v7 + 336);
      v121 = *(v7 + 344);
      v143 = v117;
      v144 = v122;
      v147 = v120;
      v148 = v121;
      v123 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel;
      v124 = *(v108 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel);
      v125 = String._bridgeToObjectiveC()();

      [v124 setText:v125];

      v126 = *(v108 + v123);
      v149 = v116;
      v127 = String._bridgeToObjectiveC()();
      [v126 setAccessibilityLabel:v127];

      v128 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel;
      v129 = *(v108 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel);
      v130 = String._bridgeToObjectiveC()();
      [v129 setText:v130];

      v131 = *(v108 + v128);
      if (v118)
      {
        v132 = String._bridgeToObjectiveC()();
      }

      else
      {
        v132 = 0;
      }

      [v131 setAccessibilityLabel:v132];

      v133 = OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel;
      v134 = *(v108 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);
      v135 = String._bridgeToObjectiveC()();
      [v134 setText:v135];

      v136 = *(v108 + v133);
      if (v148)
      {
        v137 = String._bridgeToObjectiveC()();
      }

      else
      {
        v137 = 0;
      }

      [v136 setAccessibilityLabel:v137];
    }

    else
    {
      v45 = *&v1[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_cellTitle];
      v46 = String._bridgeToObjectiveC()();
      [v45 setText:v46];

      v47 = *&v1[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_lengthLabels];
      v48 = *(v47 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v49 = v1;
      v50 = objc_opt_self();
      v51 = v48;
      v52 = [v50 mainBundle];
      v160._object = 0xE000000000000000;
      v53._countAndFlagsBits = 0x4C5F5443454A424FLL;
      v53._object = 0xED00004854474E45;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      v160._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v160);

      v55 = String._bridgeToObjectiveC()();

      [v51 setText:v55];

      v56 = *(v7 + 80);
      v155[4] = *(v7 + 64);
      v155[5] = v56;
      v156[0] = *(v7 + 96);
      *(v156 + 14) = *(v7 + 110);
      v57 = *(v7 + 16);
      v155[0] = *v7;
      v155[1] = v57;
      v58 = *(v7 + 48);
      v155[2] = *(v7 + 32);
      v155[3] = v58;
      sub_1001B79A0(v155, v47);
      v59 = *&v49[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_widthLabels];
      v60 = *(v59 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v61 = [v50 mainBundle];
      v161._object = 0xE000000000000000;
      v62._countAndFlagsBits = 0x575F5443454A424FLL;
      v62._object = 0xEC00000048544449;
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      v161._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v62, 0, v61, v63, v161);

      v64 = String._bridgeToObjectiveC()();

      [v60 setText:v64];

      v65 = *(v7 + 200);
      v153[4] = *(v7 + 184);
      v153[5] = v65;
      v154[0] = *(v7 + 216);
      *(v154 + 14) = *(v7 + 230);
      v66 = *(v7 + 136);
      v153[0] = *(v7 + 120);
      v153[1] = v66;
      v67 = *(v7 + 168);
      v153[2] = *(v7 + 152);
      v153[3] = v67;
      sub_1001B79A0(v153, v59);
      v68 = *&v49[OBJC_IVAR____TtC7Measure17ObjectHistoryCell_heightLabels];
      v69 = *(v68 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_title);
      v70 = [v50 mainBundle];
      v162._object = 0xE000000000000000;
      v71._countAndFlagsBits = 0x485F5443454A424FLL;
      v71._object = 0xED00005448474945;
      v72._countAndFlagsBits = 0;
      v72._object = 0xE000000000000000;
      v162._countAndFlagsBits = 0;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v162);

      v73 = String._bridgeToObjectiveC()();

      [v69 setText:v73];

      v74 = *(v7 + 320);
      v151[4] = *(v7 + 304);
      v151[5] = v74;
      v152[0] = *(v7 + 336);
      *(v152 + 14) = *(v7 + 350);
      v75 = *(v7 + 256);
      v151[0] = *(v7 + 240);
      v151[1] = v75;
      v76 = *(v7 + 288);
      v151[2] = *(v7 + 272);
      v151[3] = v76;
      sub_1001B79A0(v151, v68);
    }

    return sub_10002339C(v150);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1001B76B0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Measure17ObjectHistoryCell_lengthLabels);
  [*(v1 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits) setSelectedRange:{0, 0}];
  v2 = *(v1 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
  [*(*(v2 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];
  [*(*(v2 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];
  v3 = *(v0 + OBJC_IVAR____TtC7Measure17ObjectHistoryCell_widthLabels);
  [*(v3 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits) setSelectedRange:{0, 0}];
  v4 = *(v3 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
  [*(*(v4 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];
  [*(*(v4 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];
  v5 = *(v0 + OBJC_IVAR____TtC7Measure17ObjectHistoryCell_heightLabels);
  [*(v5 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits) setSelectedRange:{0, 0}];
  v6 = *(v5 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
  [*(*(v6 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];
  [*(*(v6 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label) setSelectedRange:{0, 0}];
  [*(*(v0 + OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleCellTitle) + OBJC_IVAR____TtC7Measure24AccessibilitySingleStack_label) setSelectedRange:{0, 0}];
  v7 = *(v0 + OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleLengthLabel);
  [*(v7 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel) setSelectedRange:{0, 0}];
  [*(v7 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel) setSelectedRange:{0, 0}];
  [*(v7 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel) setSelectedRange:{0, 0}];
  v8 = *(v0 + OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleWidthLabel);
  [*(v8 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel) setSelectedRange:{0, 0}];
  [*(v8 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel) setSelectedRange:{0, 0}];
  [*(v8 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel) setSelectedRange:{0, 0}];
  v9 = *(v0 + OBJC_IVAR____TtC7Measure17ObjectHistoryCell_accessibleHeightLabel);
  [*(v9 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_topLabel) setSelectedRange:{0, 0}];
  [*(v9 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_middleLabel) setSelectedRange:{0, 0}];
  v10 = *(v9 + OBJC_IVAR____TtC7Measure24AccessibilityTripleStack_bottomLabel);

  return [v10 setSelectedRange:{0, 0}];
}

void sub_1001B79A0(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_mainUnits);
  v5 = *a1;
  v6 = a1[1];
  v7 = String._bridgeToObjectiveC()();
  [v4 setText:v7];

  v8 = *(a2 + OBJC_IVAR____TtC7Measure37MeasureTableViewCellCommonContentView_secondaryLabels);
  v9 = a1[8];
  v22 = a1[7];
  if (__PAIR128__(v6, v5) == *(a1 + 5))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v11 = a1[13];
  v12 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel;
  [*(v8 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_topLabel) setHidden:{v10 & 1, v22}];
  if ((v10 & 1) == 0)
  {
    v13 = *(*(v8 + v12) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
    v14 = String._bridgeToObjectiveC()();
    [v13 setText:v14];

    v15 = *(v8 + v12);
    if (v9)
    {
      v16 = String._bridgeToObjectiveC()();
    }

    else
    {
      v16 = 0;
    }

    [v15 setAccessibilityLabel:v16];
  }

  v17 = OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel;
  v18 = *(*(v8 + OBJC_IVAR____TtC7Measure22NewSecondaryLabelStack_bottomLabel) + OBJC_IVAR____TtC7Measure24ViewWithInteractiveLabel_label);
  v19 = String._bridgeToObjectiveC()();
  [v18 setText:v19];

  v20 = *(v8 + v17);
  if (v11)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  v23 = v21;
  [v20 setAccessibilityLabel:?];
}

Swift::Int sub_1001B7C30()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001B7BF0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001B7C80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1001B7BF0(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_1001B7CC4@<X0>(double *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001B7D60(*a1);
  *a2 = result;
  return result;
}

double sub_1001B7CF0@<D0>(double *a1@<X8>)
{
  result = dbl_1003E2948[*v1];
  *a1 = result;
  return result;
}

unint64_t sub_1001B7D0C()
{
  result = qword_1004AF110;
  if (!qword_1004AF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004AF110);
  }

  return result;
}

uint64_t sub_1001B7D60(double a1)
{
  if (a1 == 1.0)
  {
    return 0;
  }

  if (a1 == 2.0)
  {
    return 1;
  }

  if (a1 == 3.0)
  {
    return 2;
  }

  if (a1 == 4.0)
  {
    return 3;
  }

  if (a1 == 5.0)
  {
    return 4;
  }

  if (a1 == 6.0)
  {
    return 5;
  }

  if (a1 == 7.0)
  {
    return 6;
  }

  if (a1 == 8.0)
  {
    return 7;
  }

  if (a1 == 9.0)
  {
    return 8;
  }

  if (a1 == 10.0)
  {
    return 9;
  }

  if (a1 == 11.0)
  {
    return 10;
  }

  if (a1 == 12.0)
  {
    return 11;
  }

  if (a1 == 14.0)
  {
    v2 = 13;
  }

  else
  {
    v2 = 14;
  }

  if (a1 == 13.0)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

void sub_1001B7ED0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC7Measure12DeleteButton_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC7Measure12DeleteButton_isEnabled] = 1;
  v11 = static Locale.preferredLanguages.getter();
  if (v11[2])
  {
    v13 = v11[4];
    v12 = v11[5];

    v39 = v13;
    v40 = v12;
    v37 = 28261;
    v38 = 0xE200000000000000;
    sub_1001B8B60();
    sub_1001B8BB4();
    v14 = BidirectionalCollection<>.starts<A>(with:)();

    if (v14)
    {
      if (qword_1004A0568 != -1)
      {
        swift_once();
      }

      v15 = objc_allocWithZone(ASVRoundedButton);
      v16 = String._bridgeToObjectiveC()();
      v17 = [v15 initWithTitle:v16 buttonStyle:0 textStyle:1 controlStyle:1];

      *&v5[OBJC_IVAR____TtC7Measure12DeleteButton_deleteButton] = v17;
LABEL_16:
      v36.receiver = v5;
      v36.super_class = ObjectType;
      v34 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
      sub_1001B82C4();
      sub_1001B83F0();
      sub_1001B854C();
      v39 = ObjectType;
      swift_getMetatypeMetadata();
      String.init<A>(describing:)();
      v35 = String._bridgeToObjectiveC()();

      [v34 setAccessibilityIdentifier:v35];

      return;
    }

    type metadata accessor for ViewController(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v20 = String._bridgeToObjectiveC()();
    v21 = [objc_opt_self() imageNamed:v20 inBundle:v19 compatibleWithTraitCollection:0];

    if (v21)
    {
      v22 = [v21 imageWithRenderingMode:2];

      v23 = [objc_allocWithZone(ASVRoundedButton) initWithImage:v22 buttonStyle:0 textStyle:0 controlStyle:1];
      *&v5[OBJC_IVAR____TtC7Measure12DeleteButton_deleteButton] = v23;
      v24 = qword_1004A0808;
      v25 = v23;
      if (v24 != -1)
      {
        swift_once();
      }

      v26 = qword_1004D53C0;
      v27 = *algn_1004D53C8;
      if (byte_1004D53D0)
      {
        v28 = byte_1004D53E0;
        v29 = qword_1004D53D8;
        v30 = byte_1004AF8C0;
        v31 = qword_1004D53C0;
        v32 = sub_10007836C(v30, v29, v28);
        sub_10009F954(v26, v27, 1);
      }

      else
      {
        if (byte_1004AF8C0)
        {
          v33 = *algn_1004D53C8;
        }

        else
        {
          v33 = qword_1004D53C0;
        }

        v32 = v33;
      }

      [v25 setTintColor:v32];

      goto LABEL_16;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

void sub_1001B82C4()
{
  v1 = OBJC_IVAR____TtC7Measure12DeleteButton_deleteButton;
  [*&v0[OBJC_IVAR____TtC7Measure12DeleteButton_deleteButton] addTarget:v0 action:"tapDeleteFrom:" forControlEvents:64];
  [v0 addSubview:*&v0[v1]];
  v2 = [*&v0[v1] widthAnchor];
  v3 = [v2 constraintEqualToConstant:80.0];

  [v3 setActive:1];
  v4 = [*&v0[v1] heightAnchor];
  v5 = [v4 constraintEqualToConstant:47.0];

  [v5 setActive:1];
}

void sub_1001B83F0()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_1004A0858 != -1)
  {
    swift_once();
  }

  v2 = qword_1004D5430;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v7[4] = sub_1001B8C40;
  v7[5] = v3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1000DB768;
  v7[3] = &unk_100472368;
  v4 = _Block_copy(v7);
  v5 = v0;

  v6 = [v1 addObserverForName:v2 object:0 queue:0 usingBlock:v4];
  _Block_release(v4);
  swift_unknownObjectRelease();
}

id sub_1001B854C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Measure12DeleteButton_deleteButton;
  v3 = *(v0 + OBJC_IVAR____TtC7Measure12DeleteButton_deleteButton);
  v4 = qword_1004A0808;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_1004D53C0;
  v7 = *algn_1004D53C8;
  if (byte_1004D53D0)
  {
    v8 = byte_1004D53E0;
    v9 = qword_1004D53D8;
    v10 = byte_1004AF8C0;
    v11 = qword_1004D53C0;
    v12 = sub_10007836C(v10, v9, v8);
    sub_10009F954(v6, v7, 1);
  }

  else
  {
    if (byte_1004AF8C0)
    {
      v13 = *algn_1004D53C8;
    }

    else
    {
      v13 = qword_1004D53C0;
    }

    v12 = v13;
  }

  [v5 setTintColor:v12];

  v14 = *(v1 + v2);
  if (byte_1004AF8C0)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  return [v14 setControlStyle:v15];
}